unit UGeAutorizacaoCompraImpressao;

interface

uses
  UGrPadraoImpressao,

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  frxClass, frxDBSet, Datasnap.DBClient, Datasnap.Provider, Data.DB, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, cxButtons, dxGDIPlusClasses, Vcl.ExtCtrls,

  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Intf,

  dxSkinsCore, dxSkinMcSkin, dxSkinOffice2007Green, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TfrmGeAutorizacaoCompraImpressao = class(TfrmGrPadraoImpressao)
    lblEmpresa: TLabel;
    edEmpresa: TComboBox;
    lblData: TLabel;
    e1Data: TJvDateEdit;
    e2Data: TJvDateEdit;
    lblSituacao: TLabel;
    edSituacao: TComboBox;
    DspEmpresas: TDataSetProvider;
    CdsEmpresas: TClientDataSet;
    frRelacaoAutorizacaoGeralSintetico: TfrxReport;
    dspRelacaoAutorizacaoGeralSintetico: TDataSetProvider;
    cdsRelacaoAutorizacaoGeralSintetico: TClientDataSet;
    frdsRelacaoAutorizacaoGeralSintetico: TfrxDBDataset;
    frRelacaoAutorizacaoGeralAnalitico: TfrxReport;
    DspRelacaoAutorizacaoGeralAnalitico: TDataSetProvider;
    CdsRelacaoAutorizacaoGeralAnalitico: TClientDataSet;
    frdsRelacaoAutorizacaoGeralAnalitico: TfrxDBDataset;
    frRelacaoAutorizacaoLista: TfrxReport;
    fdQryEmpresas: TFDQuery;
    qryRelacaoAutorizacaoGeralSintetico: TFDQuery;
    QryRelacaoAutorizacaoGeralAnalitico: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
    FSQL_AutorizacaoGeralS ,
    FSQL_AutorizacaoGeralA : TStringList;
    IEmpresa : Array of String;
  public
    { Public declarations }
    procedure CarregarDadosEmpresa; override;
    procedure CarregarEmpresa;
    procedure MontarAutotizacaoGeralSintetico;
    procedure MontarAutotizacaoGeralAnalitico;
    procedure MontarAutotizacaoLista;
  end;

(*
  Tabelas:
  - TBAUTORIZA_COMPRA
  - VW_TIPO_AUTORIZACAO
  - TBCOMPETENCIA

  Views:
  - VW_EMPRESA

  Procedures:

*)

var
  frmGeAutorizacaoCompraImpressao: TfrmGeAutorizacaoCompraImpressao;

implementation

uses
  UConstantesDGE, UDMRecursos, UDMBusiness, UDMNFe;

{$R *.dfm}

const
  REPORT_RELACAO_AUTORIZACAO_SINTETICO = 0;
  REPORT_RELACAO_AUTORIZACAO_ANALITICO = 1;
  REPORT_RELACAO_AUTORIZACAO_LISTA     = 2;

  SITUACAO_AUTORIACAO_PADRAO = 0; // (Todas)

procedure TfrmGeAutorizacaoCompraImpressao.btnVisualizarClick(Sender: TObject);
begin
  Filtros := 'FILTROS APLICADOS AO MONTAR O RELAT�RIO: ' + #13 +
    Format('- Empresa  : %s', [edEmpresa.Text])          + #13 +
    Format('- Per�odo  : %s a %s', [e1Data.Text, e2Data.Text]) + #13 +
    Format('- Situa��o : %s', [edSituacao.Text]);

  Screen.Cursor         := crSQLWait;
  btnVisualizar.Enabled := False;

  Case edRelatorio.ItemIndex of
    // Geral por Data de Emiss�o

    REPORT_RELACAO_AUTORIZACAO_SINTETICO:
      begin
        MontarAutotizacaoGeralSintetico;
        frReport := frRelacaoAutorizacaoGeralSintetico;

      end;

    REPORT_RELACAO_AUTORIZACAO_ANALITICO:
      begin
        MontarAutotizacaoGeralAnalitico;
        frReport := frRelacaoAutorizacaoGeralAnalitico;
      end;

    REPORT_RELACAO_AUTORIZACAO_LISTA:
      begin
        MontarAutotizacaoLista;
        frReport := frRelacaoAutorizacaoLista;
      end;
 end;

  inherited;

  Screen.Cursor         := crDefault;
  btnVisualizar.Enabled := True;
end;

procedure TfrmGeAutorizacaoCompraImpressao.CarregarDadosEmpresa;
begin
  with frReport do
    try
      DMNFe.AbrirEmitente(IEmpresa[edEmpresa.ItemIndex]);
      DMBusiness.ConfigurarEmail(IEmpresa[edEmpresa.ItemIndex], EmptyStr, TituloRelario, EmptyStr);
    except
    end;
end;

procedure TfrmGeAutorizacaoCompraImpressao.CarregarEmpresa;
var
  P ,
  I : Integer;
begin
  with CdsEmpresas do
  begin
    Open;

    edEmpresa.Clear;
    SetLength(IEmpresa, RecordCount);

    P := 0;
    I := 0;

    while not Eof do
    begin
      edEmpresa.Items.Add( FieldByName('razao').AsString );
      IEmpresa[I] := Trim(FieldByName('cnpj').AsString);

      if ( IEmpresa[I] = gUsuarioLogado.Empresa ) then
        P := I;

      Inc(I);
      Next;
    end;

    Close;
  end;

  edEmpresa.ItemIndex := P;
end;

procedure TfrmGeAutorizacaoCompraImpressao.FormCreate(Sender: TObject);
begin
  e1Data.Date := StrToDate('01/' + FormatDateTime('mm/yyyy', GetDateDB));
  e2Data.Date := GetDateDB;
  edSituacao.ItemIndex := SITUACAO_AUTORIACAO_PADRAO; // Entradas finalizadas e com NF-e emitidas

  inherited;
  RotinaID := ROTINA_REL_AUTORIZACAO_ID;

  CarregarEmpresa;

  FSQL_AutorizacaoGeralS := TStringList.Create;
  FSQL_AutorizacaoGeralS.AddStrings( qryRelacaoAutorizacaoGeralSintetico.SQL );

  FSQL_AutorizacaoGeralA := TStringList.Create;
  FSQL_AutorizacaoGeralA.AddStrings( qryRelacaoAutorizacaoGeralAnalitico.SQL );
end;

procedure TfrmGeAutorizacaoCompraImpressao.MontarAutotizacaoGeralAnalitico;
begin
  try
    SubTituloRelario := edSituacao.Text;

    PeriodoRelatorio := Format('Autoriza��es emitidas no per�odo de %s a %s.', [e1Data.Text, e2Data.Text]);

    CdsRelacaoAutorizacaoGeralAnalitico.Close;

    with QryRelacaoAutorizacaoGeralAnalitico do
    begin
      SQL.Clear;
      SQL.AddStrings( FSQL_AutorizacaoGeralA );
      SQL.Add('where a.empresa = ' + QuotedStr(IEmpresa[edEmpresa.ItemIndex]));

      if StrIsDateTime(e1Data.Text) then
        SQL.Add('  and a.emissao_data >= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e1Data.Date)));

      if StrIsDateTime(e2Data.Text) then
        SQL.Add('  and a.emissao_data <= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e2Data.Date)));

      Case edSituacao.ItemIndex of
        1: SQL.Add('  and a.status = ' + IntToStr(STATUS_AUTORIZACAO_ABR));
        2: SQL.Add('  and a.status = ' + IntToStr(STATUS_AUTORIZACAO_AUT));
        3: SQL.Add('  and a.status = ' + IntToStr(STATUS_AUTORIZACAO_FAT));
        4: SQL.Add('  and a.status in (' + IntToStr(STATUS_AUTORIZACAO_AUT) + ', ' + IntToStr(STATUS_AUTORIZACAO_FAT) + ')');
        5: SQL.Add('  and a.status = ' + IntToStr(STATUS_AUTORIZACAO_CAN));

        else
          SQL.Add('  and a.status > ' + IntToStr(STATUS_AUTORIZACAO_ABR)); // Todas as autoriza��es, com exces�o das "abertas"
      end;

      SQL.Add('order by');
      SQL.Add('    a.competencia -- Competencia');
      SQL.Add('  , a.tipo        -- Tipo');
      SQL.Add('  , f.nomeforn');
      SQL.Add('  , a.fornecedor  -- Fornecedor');
      SQL.Add('  , a.emissao_data');
    end;
  except
    On E : Exception do
    begin
      ShowError('Erro ao tentar montar a relat�rio anal�tico de autoriza��es (por data de emiss�o).' + #13#13 + E.Message);

      Screen.Cursor         := crDefault;
      btnVisualizar.Enabled := True;
    end;
  end;
end;

procedure TfrmGeAutorizacaoCompraImpressao.MontarAutotizacaoGeralSintetico;
begin
  try
    SubTituloRelario := edSituacao.Text;

    PeriodoRelatorio := Format('Autoriza��es emitidas no per�odo de %s a %s.', [e1Data.Text, e2Data.Text]);

    cdsRelacaoAutorizacaoGeralSintetico.Close;

    with qryRelacaoAutorizacaoGeralSintetico do
    begin
      SQL.Clear;
      SQL.AddStrings( FSQL_AutorizacaoGeralS );
      SQL.Add('where a.empresa = ' + QuotedStr(IEmpresa[edEmpresa.ItemIndex]));

      if StrIsDateTime(e1Data.Text) then
        SQL.Add('  and a.emissao_data >= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e1Data.Date)));

      if StrIsDateTime(e2Data.Text) then
        SQL.Add('  and a.emissao_data <= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e2Data.Date)));

      Case edSituacao.ItemIndex of
        1: SQL.Add('  and a.status = ' + IntToStr(STATUS_AUTORIZACAO_ABR));
        2: SQL.Add('  and a.status = ' + IntToStr(STATUS_AUTORIZACAO_AUT));
        3: SQL.Add('  and a.status = ' + IntToStr(STATUS_AUTORIZACAO_FAT));
        4: SQL.Add('  and a.status in (' + IntToStr(STATUS_AUTORIZACAO_AUT) + ', ' + IntToStr(STATUS_AUTORIZACAO_FAT) + ')');
        5: SQL.Add('  and a.status = ' + IntToStr(STATUS_AUTORIZACAO_CAN));

        else
          SQL.Add('  and a.status > ' + IntToStr(STATUS_AUTORIZACAO_ABR)); // Todas as autoriza��es, com exces�o das "abertas"
      end;

      SQL.Add('group by');
      SQL.Add('    a.tipo');
      SQL.Add('  , ta.descricao');
      SQL.Add('  , a.competencia');
      SQL.Add('  , ca.cmp_desc');
      SQL.Add('  , a.status');
      SQL.Add(' ');
      SQL.Add('order by');
      SQL.Add('    a.tipo');
      SQL.Add('  , a.competencia');
      SQL.Add('  , a.status');
    end;
  except
    On E : Exception do
    begin
      ShowError('Erro ao tentar montar a relat�rio sint�tico de autoriza��es (por data de emiss�o).' + #13#13 + E.Message);

      Screen.Cursor         := crDefault;
      btnVisualizar.Enabled := True;
    end;
  end;
end;

procedure TfrmGeAutorizacaoCompraImpressao.MontarAutotizacaoLista;
begin
  try
    SubTituloRelario := edSituacao.Text;

    PeriodoRelatorio := Format('Autoriza��es emitidas no per�odo de %s a %s.', [e1Data.Text, e2Data.Text]);

    CdsRelacaoAutorizacaoGeralAnalitico.Close;

    with QryRelacaoAutorizacaoGeralAnalitico do
    begin
      SQL.Clear;
      SQL.AddStrings( FSQL_AutorizacaoGeralA );
      SQL.Add('where a.empresa = ' + QuotedStr(IEmpresa[edEmpresa.ItemIndex]));

      if StrIsDateTime(e1Data.Text) then
        SQL.Add('  and a.emissao_data >= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e1Data.Date)));

      if StrIsDateTime(e2Data.Text) then
        SQL.Add('  and a.emissao_data <= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e2Data.Date)));

      Case edSituacao.ItemIndex of
        1: SQL.Add('  and a.status = ' + IntToStr(STATUS_AUTORIZACAO_ABR));
        2: SQL.Add('  and a.status = ' + IntToStr(STATUS_AUTORIZACAO_AUT));
        3: SQL.Add('  and a.status = ' + IntToStr(STATUS_AUTORIZACAO_FAT));
        4: SQL.Add('  and a.status in (' + IntToStr(STATUS_AUTORIZACAO_AUT) + ', ' + IntToStr(STATUS_AUTORIZACAO_FAT) + ')');
        5: SQL.Add('  and a.status = ' + IntToStr(STATUS_AUTORIZACAO_CAN));

        else
          SQL.Add('  and a.status > ' + IntToStr(STATUS_AUTORIZACAO_ABR)); // Todas as autoriza��es, com exces�o das "abertas"
      end;

      SQL.Add('order by');
      SQL.Add('    a.tipo        -- Tipo');
      SQL.Add('  , a.emissao_data');
      SQL.Add('  , f.nomeforn');
      SQL.Add('  , a.fornecedor  -- Fornecedor');
    end;
  except
    On E : Exception do
    begin
      ShowError('Erro ao tentar montar a rela��o (lista) de autoriza��es (por data de emiss�o).' + #13#13 + E.Message);

      Screen.Cursor         := crDefault;
      btnVisualizar.Enabled := True;
    end;
  end;
end;

initialization
  FormFunction.RegisterForm('frmGeAutorizacaoCompraImpressao', TfrmGeAutorizacaoCompraImpressao);

end.
