unit UGeFluxoCaixaImpressao;

interface

uses
  UGrPadraoImpressao,

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, dxGDIPlusClasses, Vcl.ExtCtrls, Datasnap.DBClient, Datasnap.Provider,
  Data.DB, Vcl.Mask, JvExMask, JvToolEdit, frxClass, frxDBSet,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,

  dxSkinsCore, dxSkinMcSkin, dxSkinOffice2007Green, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TfrmGeFluxoCaixaImpressao = class(TfrmGrPadraoImpressao)
    lblEmpresa: TLabel;
    edEmpresa: TComboBox;
    lblContaCorrente: TLabel;
    edContaCorrente: TComboBox;
    lblData: TLabel;
    e1Data: TJvDateEdit;
    e2Data: TJvDateEdit;
    frRelacaoSaldoConsolidadoDia: TfrxReport;
    DspRelacaoSaldoConsolidadoDia: TDataSetProvider;
    CdsRelacaoSaldoConsolidadoDia: TClientDataSet;
    FrdsRelacaoSaldoConsolidadoDia: TfrxDBDataset;
    frRelacaoMovimentoCaixa: TfrxReport;
    DspRelacaoMovimentoCaixa: TDataSetProvider;
    CdsRelacaoMovimentoCaixa: TClientDataSet;
    FrdsRelacaoMovimentoCaixa: TfrxDBDataset;
    fdQryEmpresas: TFDQuery;
    DspEmpresas: TDataSetProvider;
    CdsEmpresas: TClientDataSet;
    fdQryContaCorrente: TFDQuery;
    DspContaCorrente: TDataSetProvider;
    CdsContaCorrente: TClientDataSet;
    QryRelacaoSaldoConsolidadoDia: TFDQuery;
    QryRelacaoMovimentoCaixa: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edEmpresaChange(Sender: TObject);
  private
    { Private declarations }
    FSQL_RelacaoSaldoConsolidadoDia ,
    FSQL_RelacaoMovimentoCaixaConta : TStringList;
    IEmpresa : Array of String;
    IConta   : Array of Integer;
    procedure CarregarDadosEmpresa; override;
    procedure CarregarEmpresa;
    procedure CarregarContaCorrente(const pEmpresa : String);

    procedure MontarRelacaoSaldoConsolidadoDia;
    procedure MontarRelacaoMovimentoCaixaConta;
  public
    { Public declarations }
  end;

(*
  Tabelas:
  - TBCAIXA_MOVIMENTO
  - TBCONTA_CORRENTE_SALDO
  - TBCONTA_CORRENTE
  - TBBANCO_BOLETO

  Procedures:
  - VW_EMPRESA
  - GET_CAIXA_MOVIMENTO
*)

var
  frmGeFluxoCaixaImpressao: TfrmGeFluxoCaixaImpressao;

const
  REPORT_RELACAO_SALDO_CONSOLIDADO_DIA  = 0;
  REPORT_RELACAO_MOVIMENTO_CAIXA_CONTA  = 1; // Movimenta��o na Conta (Fluxo de Caixa)

implementation

uses
  UConstantesDGE, UDMBusiness, UDMRecursos, DateUtils, UDMNFe;

{$R *.dfm}

{ TfrmGeFluxoCaixaImpressao }

procedure TfrmGeFluxoCaixaImpressao.btnVisualizarClick(Sender: TObject);
begin
  Filtros := 'FILTROS APLICADOS AO MONTAR O RELAT�RIO: '       + #13 +
    Format('- Per�odo  : %s a %s', [e1Data.Text, e2Data.Text]) + #13 +
    Format('- C/C Sist.: %s', [edContaCorrente.Text]);

  Screen.Cursor         := crSQLWait;
  btnVisualizar.Enabled := False;

  Case edRelatorio.ItemIndex of
    REPORT_RELACAO_SALDO_CONSOLIDADO_DIA:
      begin
        MontarRelacaoSaldoConsolidadoDia;
        frReport := frRelacaoSaldoConsolidadoDia;
      end;

    REPORT_RELACAO_MOVIMENTO_CAIXA_CONTA:
      begin
        MontarRelacaoMovimentoCaixaConta;
        frReport := frRelacaoMovimentoCaixa;
      end;
  end;

  inherited;

  Screen.Cursor         := crDefault;
  btnVisualizar.Enabled := True;
end;

procedure TfrmGeFluxoCaixaImpressao.CarregarContaCorrente(
  const pEmpresa: String);
var
  I : Integer;
begin
  with CdsContaCorrente do
  begin
    Close;
    ParamByName('empresa').AsString := pEmpresa;
    Open;

    edContaCorrente.Clear;
    SetLength(IConta, RecordCount + 1);

    edContaCorrente.Items.Add( '(Todas)' );
    IConta[0] := 0;
    I := 1;

    while not Eof do
    begin
      edContaCorrente.Items.Add( FieldByName('descricao').AsString + ' [' + Trim(FieldByName('tipo_desc').AsString) + ']' );
      IConta[I] := FieldByName('codigo').AsInteger;

      Inc(I);
      Next;
    end;

    Close;
  end;

  edContaCorrente.ItemIndex := 0;
end;

procedure TfrmGeFluxoCaixaImpressao.CarregarDadosEmpresa;
begin
  with frReport do
    try
      DMNFe.AbrirEmitente(IEmpresa[edEmpresa.ItemIndex]);
      DMBusiness.ConfigurarEmail(IEmpresa[edEmpresa.ItemIndex], EmptyStr, TituloRelario, EmptyStr);
    except
    end;
end;

procedure TfrmGeFluxoCaixaImpressao.CarregarEmpresa;
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

procedure TfrmGeFluxoCaixaImpressao.edEmpresaChange(Sender: TObject);
begin
  if ( edEmpresa.ItemIndex > -1 ) then
    CarregarContaCorrente(IEmpresa[edEmpresa.ItemIndex]);
end;

procedure TfrmGeFluxoCaixaImpressao.FormCreate(Sender: TObject);
begin
  e1Data.Date := StrToDate('01/' + FormatDateTime('mm/yyyy', GetDateDB));
  e2Data.Date := GetDateDB;

  inherited;

  FSQL_RelacaoSaldoConsolidadoDia := TStringList.Create;
  FSQL_RelacaoSaldoConsolidadoDia.AddStrings( QryRelacaoSaldoConsolidadoDia.SQL );

  FSQL_RelacaoMovimentoCaixaConta := TStringList.Create;
  FSQL_RelacaoMovimentoCaixaConta.AddStrings( QryRelacaoMovimentoCaixa.SQL );
end;

procedure TfrmGeFluxoCaixaImpressao.FormShow(Sender: TObject);
begin
  inherited;
  CarregarEmpresa;
  CarregarContaCorrente(gUsuarioLogado.Empresa);
end;

procedure TfrmGeFluxoCaixaImpressao.MontarRelacaoMovimentoCaixaConta;
begin
  try
    SubTituloRelario := edContaCorrente.Text;
    PeriodoRelatorio := Format('Movimentos do per�odo de %s a %s.', [e1Data.Text, e2Data.Text]);

    CdsRelacaoMovimentoCaixa.Close;

    with CdsRelacaoMovimentoCaixa, Params do
    begin
      ParamByName('empresa').AsString := IEmpresa[edEmpresa.ItemIndex];
      ParamByName('conta').AsInteger  := IConta[edContaCorrente.ItemIndex];
      ParamByName('data_inicial').AsDateTime := e1Data.Date;
      ParamByName('data_final').AsDateTime   := e2Data.Date;
    end;
  except
    On E : Exception do
    begin
      ShowError('Erro ao tentar montar a relat�rio de movimenta��es na(s) conta(s).' + #13#13 + E.Message);

      Screen.Cursor         := crDefault;
      btnVisualizar.Enabled := True;
    end;
  end;
end;

procedure TfrmGeFluxoCaixaImpressao.MontarRelacaoSaldoConsolidadoDia;
begin
  try
    SubTituloRelario := edContaCorrente.Text;
    PeriodoRelatorio := Format('Consolida��o no per�odo de %s a %s.', [e1Data.Text, e2Data.Text]);

    CdsRelacaoSaldoConsolidadoDia.Close;

    with QryRelacaoSaldoConsolidadoDia do
    begin
      SQL.Clear;
      SQL.AddStrings( FSQL_RelacaoSaldoConsolidadoDia );
      SQL.Add('where (cx.situacao = 1)'); // Apenas movimentos ativos
      SQL.Add('  and (cx.empresa  = ' + QuotedStr(IEmpresa[edEmpresa.ItemIndex]) + ')');

      if ( edContaCorrente.ItemIndex > 0 ) then
        SQL.Add('  and (cx.conta_corrente = ' + IntToStr(IConta[edContaCorrente.ItemIndex]) + ')');

      if StrIsDateTime(e1Data.Text) then
        SQL.Add('  and (cast(cx.datahora as date) >= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e1Data.Date)) + ')');

      if StrIsDateTime(e2Data.Text) then
        SQL.Add('  and (cast(cx.datahora as date) <= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e2Data.Date)) + ')');

      SQL.Add('');
      SQL.Add('group by');
      SQL.Add('    cx.conta_corrente');
      SQL.Add('  , cc.descricao');
      SQL.Add('  , cast(cx.datahora as date)');
      SQL.Add('  , bb.bco_nome');
      SQL.Add('  , bb.bco_agencia');
      SQL.Add('  , bb.bco_cc');
      SQL.Add(' ');
      SQL.Add('order by');
      SQL.Add('    cx.conta_corrente');
      SQL.Add('  , cast(cx.datahora as date)');
    end;
  except
    On E : Exception do
    begin
      ShowError('Erro ao tentar montar a relat�rio de saldo consolidado por dia.' + #13#13 + E.Message);

      Screen.Cursor         := crDefault;
      btnVisualizar.Enabled := True;
    end;
  end;
end;

initialization
  FormFunction.RegisterForm('frmGeFluxoCaixaImpressao', TfrmGeFluxoCaixaImpressao);

end.
