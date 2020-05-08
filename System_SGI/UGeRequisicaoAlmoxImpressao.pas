unit UGeRequisicaoAlmoxImpressao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UGrPadraoImpressao, cxGraphics, JvToolEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, dxGDIPlusClasses, Vcl.ExtCtrls, frxClass, frxDBSet, Vcl.Mask, JvExMask,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, cxLookAndFeels, cxLookAndFeelPainters,

  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Intf,

  dxSkinsCore, dxSkinMcSkin, dxSkinOffice2007Green, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TfrmGeRequisicaoAlmoxImpressao = class(TfrmGrPadraoImpressao)
    lblEmpresa: TLabel;
    edEmpresa: TComboBox;
    lblCentroCusto: TLabel;
    edCentroCusto: TComboBox;
    DspEmpresas: TDataSetProvider;
    CdsEmpresas: TClientDataSet;
    dspCentroCusto: TDataSetProvider;
    cdsCentroCusto: TClientDataSet;
    frRequsicaoAlmoxSintetico: TfrxReport;
    dspRequsicaoAlmoxSintetico: TDataSetProvider;
    cdsRequsicaoAlmoxSintetico: TClientDataSet;
    frdsRequsicaoAlmoxSintetico: TfrxDBDataset;
    lblGrupo: TLabel;
    edGrupo: TComboBox;
    DspGrupo: TDataSetProvider;
    CdsGrupo: TClientDataSet;
    lblData: TLabel;
    e1Data: TJvDateEdit;
    e2Data: TJvDateEdit;
    lblSituacao: TLabel;
    edSituacao: TComboBox;
    lblTipoRequsicao: TLabel;
    edTipoRequsicao: TComboBox;
    frRequsicaoAlmoxAnalitico: TfrxReport;
    DspRequisicaoAlmoxAnalitico: TDataSetProvider;
    CdsRequisicaoAlmoxAnalitico: TClientDataSet;
    frdsRequisicaoAlmoxAnalitico: TfrxDBDataset;
    frRequisicaoAlmoxProdutoS: TfrxReport;
    DspRequisicaoAlmoxProdutoS: TDataSetProvider;
    CdsRequisicaoAlmoxProdutoS: TClientDataSet;
    frdsRequisicaoAlmoxProdutoS: TfrxDBDataset;
    frRequisicaoAlmoxProdutoE: TfrxReport;
    DspRequisicaoAlmoxProdutoE: TDataSetProvider;
    CdsRequisicaoAlmoxProdutoE: TClientDataSet;
    frdsRequisicaoAlmoxProdutoE: TfrxDBDataset;
    qryEmpresas: TFDQuery;
    qryCentroCusto: TFDQuery;
    qryGrupo: TFDQuery;
    qryTipoRequisicaoAlmox: TFDQuery;
    qryRequsicaoAlmoxSintetico: TFDQuery;
    QryRequisicaoAlmoxAnalitico: TFDQuery;
    QryRequisicaoAlmoxProdutoS: TFDQuery;
    QryRequisicaoAlmoxProdutoE: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure edEmpresaChange(Sender: TObject);
    procedure edRelatorioChange(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
    FSQL_RequisicaoEstoqueS,
    FSQL_RequisicaoEstoqueA,
    FSQL_RequisicaoEstoqueProdutoS,
    FSQL_RequisicaoEstoqueProdutoE,
    FSQL_ConsumoDeptoS     ,
    FSQL_ConsumoDeptoA     : TStringList;
    IEmpresa     : Array of String;
    ICentroCusto ,
    IGrupo       : Array of Integer;
  public
    { Public declarations }
    procedure CarregarDadosEmpresa; override;
    procedure CarregarEmpresa;
    procedure CarregarCentroCusto;
    procedure CarregarGrupo;
    procedure CarregarTipoRequisicaoAlmox;
    procedure MontarRequisicaoEstoqueSintetico;
    procedure MontarRequisicaoEstoqueAnalitico;
    procedure MontarRequisicaoEstoqueProdutoSaida;
    procedure MontarRequisicaoEstoqueProdutoEntrada;
  end;

(*
  Tabelas:
  - TBREQUISICAO_ALMOX
  - TBREQUISICAO_ALMOX_ITEM
  - TBEMPRESA
  - TBCENTRO_CUSTO
  - TBCENTRO_CUSTO_EMPRESA
  - TBCLIENTE
  - TBPRODUTO
  - TBGRUPOPROD
  - TBUNIDADEPROD
  - TBCOMPETENCIA

  Views:
  - VW_EMPRESA
  - VW_TIPO_REQUISICAO_ALMOX
  - VW_STATUS_REQUISICAO_ALMOX

  Procedures:

*)

var
  frmGeRequisicaoAlmoxImpressao: TfrmGeRequisicaoAlmoxImpressao;

const
  IDX_SITUACAO_REQUISICAO_PADRAO = 2;

  REPORT_REQUISICAO_ESTOQUE_SINTETICO = 0;
  REPORT_REQUISICAO_ESTOQUE_ANALITICO = 1;
  REPORT_REQUISICAO_ESTOQUE_PRODUTO_S = 2;
  REPORT_REQUISICAO_ESTOQUE_PRODUTO_E = 3;
  REPORT_CONSUMO_DEPTO_SINTETICO      = 4;
  REPORT_CONSUMO_DEPTO_ANALITICO      = 5;

implementation

uses
  UConstantesDGE, UDMBusiness, UDMNFe, UFuncoes;

{$R *.dfm}

procedure TfrmGeRequisicaoAlmoxImpressao.btnVisualizarClick(Sender: TObject);
begin
  Filtros := 'FILTROS APLICADOS AO MONTAR O RELAT�RIO: '   + #13 +
    Format('- Centro de Custo : %s', [edCentroCusto.Text]) + #13 +
    Format('- Grupo           : %s', [edGrupo.Text]);

  Screen.Cursor         := crSQLWait;
  btnVisualizar.Enabled := False;

  Case edRelatorio.ItemIndex of
    REPORT_REQUISICAO_ESTOQUE_SINTETICO:
      begin
        SubTituloRelario := EmptyStr;
        MontarRequisicaoEstoqueSintetico;
        frReport := frRequsicaoAlmoxSintetico;
      end;

    REPORT_REQUISICAO_ESTOQUE_ANALITICO:
      begin
        SubTituloRelario := EmptyStr;
        MontarRequisicaoEstoqueAnalitico;
        frReport := frRequsicaoAlmoxAnalitico;
      end;

    REPORT_REQUISICAO_ESTOQUE_PRODUTO_S:
      begin
        if ( edEmpresa.ItemIndex = 0 ) then
          edEmpresa.ItemIndex := IndexOfArray(gUsuarioLogado.Empresa, IEmpresa);

        edSituacao.ItemIndex := IDX_SITUACAO_REQUISICAO_PADRAO;

        MontarRequisicaoEstoqueProdutoSaida;
        frReport := frRequisicaoAlmoxProdutoS;
      end;

    REPORT_REQUISICAO_ESTOQUE_PRODUTO_E:
      begin
        if ( edEmpresa.ItemIndex = 0 ) then
          edEmpresa.ItemIndex := IndexOfArray(gUsuarioLogado.Empresa, IEmpresa);

        edSituacao.ItemIndex := IDX_SITUACAO_REQUISICAO_PADRAO;

        MontarRequisicaoEstoqueProdutoEntrada;
        frReport := frRequisicaoAlmoxProdutoE;
      end;
  end;

  inherited;

  Screen.Cursor         := crDefault;
  btnVisualizar.Enabled := True;
end;

procedure TfrmGeRequisicaoAlmoxImpressao.CarregarCentroCusto;
var
  I : Integer;
begin
  with cdsCentroCusto, Params do
  begin
    Close;

    if edEmpresa.ItemIndex = 0 then
    begin
      ParamByName('empresa').AsString := EmptyStr;
      ParamByName('todas').AsSmallInt := 1;
    end
    else
    begin
      ParamByName('empresa').AsString := IEmpresa[edEmpresa.ItemIndex];
      ParamByName('todas').AsSmallInt := 0;
    end;

    Open;

    edCentroCusto.Clear;
    SetLength(ICentroCusto, RecordCount + 1);

    edCentroCusto.Items.Add('(Todos)');
    ICentroCusto[0] := 0;

    I := 1;

    while not Eof do
    begin
      edCentroCusto.Items.Add(FieldByName('descricao').AsString);
      ICentroCusto[I] := FieldByName('codigo').AsInteger;

      Inc(I);
      Next;
    end;

    Close;

    edCentroCusto.ItemIndex := 0;
  end;
end;

procedure TfrmGeRequisicaoAlmoxImpressao.CarregarDadosEmpresa;
begin
  with frReport do
    try
      DMNFe.AbrirEmitente(IEmpresa[edEmpresa.ItemIndex]);
      DMBusiness.ConfigurarEmail(IEmpresa[edEmpresa.ItemIndex], EmptyStr, TituloRelario, EmptyStr);
    except
    end;
end;

procedure TfrmGeRequisicaoAlmoxImpressao.CarregarEmpresa;
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
      edEmpresa.Items.Add(FieldByName('razao').AsString);
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

procedure TfrmGeRequisicaoAlmoxImpressao.CarregarGrupo;
var
  I : Integer;
begin
  with CdsGrupo do
  begin
    Open;

    edGrupo.Clear;
    SetLength(IGrupo, RecordCount + 1);

    edGrupo.Items.Add('(Todos)');
    IGrupo[0] := 0;

    I := 1;

    while not Eof do
    begin
      edGrupo.Items.Add( FieldByName('descri').AsString );
      IGrupo[I] := FieldByName('cod').AsInteger;

      Inc(I);
      Next;
    end;

    Close;
  end;

  edGrupo.ItemIndex := 0;
end;

procedure TfrmGeRequisicaoAlmoxImpressao.CarregarTipoRequisicaoAlmox;
begin
  with edTipoRequsicao, qryTipoRequisicaoAlmox do
  begin
    Items.Clear;
    Items.Add('(Todas)');

    Open;
    while not Eof do
    begin
      Items.Add(FieldByName('codigo').AsString + ' - ' + FieldByName('descricao').AsString);
      Next;
    end;
    Close;

    ItemIndex := 0;
  end;
end;

procedure TfrmGeRequisicaoAlmoxImpressao.edEmpresaChange(Sender: TObject);
begin
  if edEmpresa.Focused then
    CarregarCentroCusto;
end;

procedure TfrmGeRequisicaoAlmoxImpressao.edRelatorioChange(Sender: TObject);
begin
  inherited;
  lblSituacao.Enabled   := not (edRelatorio.ItemIndex in [REPORT_REQUISICAO_ESTOQUE_PRODUTO_S, REPORT_REQUISICAO_ESTOQUE_PRODUTO_E]);
  edSituacao.Enabled    := not (edRelatorio.ItemIndex in [REPORT_REQUISICAO_ESTOQUE_PRODUTO_S, REPORT_REQUISICAO_ESTOQUE_PRODUTO_E]);
  lblGrupo.Enabled      := (edRelatorio.ItemIndex in [REPORT_CONSUMO_DEPTO_SINTETICO, REPORT_CONSUMO_DEPTO_ANALITICO]);
  edGrupo.Enabled       := (edRelatorio.ItemIndex in [REPORT_CONSUMO_DEPTO_SINTETICO, REPORT_CONSUMO_DEPTO_ANALITICO]);

  lblGrupo.Visible := not (edRelatorio.ItemIndex in [REPORT_REQUISICAO_ESTOQUE_PRODUTO_S, REPORT_REQUISICAO_ESTOQUE_PRODUTO_E]);
  edGrupo.Visible  := not (edRelatorio.ItemIndex in [REPORT_REQUISICAO_ESTOQUE_PRODUTO_S, REPORT_REQUISICAO_ESTOQUE_PRODUTO_E]);

  if ( edRelatorio.ItemIndex = REPORT_REQUISICAO_ESTOQUE_PRODUTO_E ) then
    lblCentroCusto.Caption := 'C.C. Requisitante:'
  else
    lblCentroCusto.Caption := 'C.C. Atendente:';
end;

procedure TfrmGeRequisicaoAlmoxImpressao.FormCreate(Sender: TObject);
begin
  e1Data.Date := StrToDate('01/' + FormatDateTime('mm/yyyy', GetDateDB));
  e2Data.Date := GetDateDB;
  edSituacao.ItemIndex := IDX_SITUACAO_REQUISICAO_PADRAO;

  inherited;

  RotinaID := ROTINA_REL_ESTOQUE_REQ_ID;

  CarregarEmpresa;
  CarregarCentroCusto;
  CarregarGrupo;
  CarregarTipoRequisicaoAlmox;

  FSQL_RequisicaoEstoqueS := TStringList.Create;
  FSQL_RequisicaoEstoqueS.AddStrings( qryRequsicaoAlmoxSintetico.SQL );

  FSQL_RequisicaoEstoqueA := TStringList.Create;
  FSQL_RequisicaoEstoqueA.AddStrings( QryRequisicaoAlmoxAnalitico.SQL );

  FSQL_RequisicaoEstoqueProdutoS := TStringList.Create;
  FSQL_RequisicaoEstoqueProdutoS.AddStrings( QryRequisicaoAlmoxProdutoS.SQL );

  FSQL_RequisicaoEstoqueProdutoE := TStringList.Create;
  FSQL_RequisicaoEstoqueProdutoE.AddStrings( QryRequisicaoAlmoxProdutoE.SQL );

  SetAtulizarCustoEstoqueRequisicao(GetDateDB);
end;

procedure TfrmGeRequisicaoAlmoxImpressao.MontarRequisicaoEstoqueAnalitico;
begin
  try
    SubTituloRelario := edSituacao.Text;

    if ( edTipoRequsicao.ItemIndex = 0 ) then
      PeriodoRelatorio := Format('Requisi��es realizadas no per�odo de %s a %s.', [e1Data.Text, e2Data.Text])
    else
      PeriodoRelatorio := Format('Requisi��es realizadas no per�odo de %s a %s, para o tipo %s.', [e1Data.Text, e2Data.Text,
        Trim(Copy(edTipoRequsicao.Text, Pos('-', edTipoRequsicao.Text) + 1, Length(edTipoRequsicao.Text)))]);

    CdsRequisicaoAlmoxAnalitico.Close;

    with QryRequisicaoAlmoxAnalitico do
    begin
      SQL.Clear;
      SQL.AddStrings( FSQL_RequisicaoEstoqueA );
      SQL.Add('where r.empresa = ' + QuotedStr(IEmpresa[edEmpresa.ItemIndex]));

      if ( edCentroCusto.ItemIndex > 0 ) then
        SQL.Add('  and r.ccusto_destino = ' + IntToStr(ICentroCusto[edCentroCusto.ItemIndex]));

      if StrIsDateTime(e1Data.Text) then
        SQL.Add('  and r.data_emissao >= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e1Data.Date)));

      if StrIsDateTime(e2Data.Text) then
        SQL.Add('  and r.data_emissao <= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e2Data.Date)));

      if ( edSituacao.ItemIndex > 0 ) then
        Case edSituacao.ItemIndex of
          1:
            SQL.Add('  and r.status in (' +
              IntToStr(STATUS_REQUISICAO_ALMOX_EDC) + ', ' +
              IntToStr(STATUS_REQUISICAO_ALMOX_ABR) + ')');

          2:
            SQL.Add('  and r.status in (' +
              IntToStr(STATUS_REQUISICAO_ALMOX_ENV) + ', ' +
              IntToStr(STATUS_REQUISICAO_ALMOX_REC) + ', ' +
              IntToStr(STATUS_REQUISICAO_ALMOX_ATD) + ')');

          3:
            SQL.Add('  and r.status = ' + IntToStr(STATUS_REQUISICAO_ALMOX_CAN));
        end;

      if ( edTipoRequsicao.ItemIndex > 0 ) then
        SQL.Add('  and r.tipo = ' + Trim(Copy(edTipoRequsicao.Text, 1, Pos('-', edTipoRequsicao.Text) - 1)));

      SQL.Add('order by');
      SQL.Add('    e.rzsoc');
      SQL.Add('  , r.tipo');
      SQL.Add('  , cd.descricao     -- Atendente');
      SQL.Add('  , r.ccusto_origem');
      SQL.Add('  , co.descricao     -- Solicitante');
      SQL.Add('  , r.ccusto_destino');
    end;
  except
    On E : Exception do
    begin
      ShowError('Erro ao tentar montar o relat�rio anal�tico de Requisi��es ao Estoque.' + #13#13 + E.Message);

      Screen.Cursor         := crDefault;
      btnVisualizar.Enabled := True;
    end;
  end;
end;

procedure TfrmGeRequisicaoAlmoxImpressao.MontarRequisicaoEstoqueProdutoEntrada;
begin
  try
    SubTituloRelario := edSituacao.Text;

    if ( edTipoRequsicao.ItemIndex = 0 ) then
      PeriodoRelatorio := Format('Requisi��es realizadas no per�odo de %s a %s.', [e1Data.Text, e2Data.Text])
    else
      PeriodoRelatorio := Format('Requisi��es realizadas no per�odo de %s a %s, para o tipo %s.', [e1Data.Text, e2Data.Text,
        Trim(Copy(edTipoRequsicao.Text, Pos('-', edTipoRequsicao.Text) + 1, Length(edTipoRequsicao.Text)))]);

    CdsRequisicaoAlmoxProdutoE.Close;

    with QryRequisicaoAlmoxProdutoE do
    begin
      SQL.Clear;
      SQL.AddStrings( FSQL_RequisicaoEstoqueProdutoE );
      SQL.Add('where r.empresa = ' + QuotedStr(IEmpresa[edEmpresa.ItemIndex]));

      if ( edCentroCusto.ItemIndex > 0 ) then
        SQL.Add('  and r.ccusto_origem = ' + IntToStr(ICentroCusto[edCentroCusto.ItemIndex]));

      if StrIsDateTime(e1Data.Text) then
        SQL.Add('  and r.data_emissao >= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e1Data.Date)));

      if StrIsDateTime(e2Data.Text) then
        SQL.Add('  and r.data_emissao <= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e2Data.Date)));

      if ( edSituacao.ItemIndex > 0 ) then
        Case edSituacao.ItemIndex of
          1:
            SQL.Add('  and r.status in (' +
              IntToStr(STATUS_REQUISICAO_ALMOX_EDC) + ', ' +
              IntToStr(STATUS_REQUISICAO_ALMOX_ABR) + ')');

          2:
            SQL.Add('  and r.status in (' +
              IntToStr(STATUS_REQUISICAO_ALMOX_ENV) + ', ' +
              IntToStr(STATUS_REQUISICAO_ALMOX_REC) + ', ' +
              IntToStr(STATUS_REQUISICAO_ALMOX_ATD) + ')');

          3:
            SQL.Add('  and r.status = ' + IntToStr(STATUS_REQUISICAO_ALMOX_CAN));
        end;

      if ( edTipoRequsicao.ItemIndex > 0 ) then
        SQL.Add('  and r.tipo = ' + Trim(Copy(edTipoRequsicao.Text, 1, Pos('-', edTipoRequsicao.Text) - 1)));

      SQL.Add('group by');
      SQL.Add('    r.empresa');
      SQL.Add('  , r.ccusto_origem');
      SQL.Add('  , ca.descricao');
      SQL.Add('  , r.tipo');
      SQL.Add('  , tp.descricao');
      SQL.Add('  , ri.produto');
      SQL.Add('  , pr.descri_apresentacao');
      SQL.Add('  , up.unp_descricao');
      SQL.Add('  , up.unp_sigla');
      SQL.Add(' ');
      SQL.Add('order by');
      SQL.Add('    r.empresa');
      SQL.Add('  , r.ccusto_origem');
      SQL.Add('  , r.tipo');
      SQL.Add('  , pr.descri_apresentacao');
    end;
  except
    On E : Exception do
    begin
      ShowError('Erro ao tentar montar o relat�rio de Requisi��es/Saidas consolidadas de produtos.' + #13#13 + E.Message);

      Screen.Cursor         := crDefault;
      btnVisualizar.Enabled := True;
    end;
  end;
end;

procedure TfrmGeRequisicaoAlmoxImpressao.MontarRequisicaoEstoqueProdutoSaida;
begin
  try
    SubTituloRelario := edSituacao.Text;

    if ( edTipoRequsicao.ItemIndex = 0 ) then
      PeriodoRelatorio := Format('Requisi��es realizadas no per�odo de %s a %s.', [e1Data.Text, e2Data.Text])
    else
      PeriodoRelatorio := Format('Requisi��es realizadas no per�odo de %s a %s, para o tipo %s.', [e1Data.Text, e2Data.Text,
        Trim(Copy(edTipoRequsicao.Text, Pos('-', edTipoRequsicao.Text) + 1, Length(edTipoRequsicao.Text)))]);

    CdsRequisicaoAlmoxProdutoS.Close;

    with QryRequisicaoAlmoxProdutoS do
    begin
      SQL.Clear;
      SQL.AddStrings( FSQL_RequisicaoEstoqueProdutoS );
      SQL.Add('where r.empresa = ' + QuotedStr(IEmpresa[edEmpresa.ItemIndex]));

      if ( edCentroCusto.ItemIndex > 0 ) then
        SQL.Add('  and r.ccusto_destino = ' + IntToStr(ICentroCusto[edCentroCusto.ItemIndex]));

      if StrIsDateTime(e1Data.Text) then
        SQL.Add('  and r.data_emissao >= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e1Data.Date)));

      if StrIsDateTime(e2Data.Text) then
        SQL.Add('  and r.data_emissao <= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e2Data.Date)));

      if ( edSituacao.ItemIndex > 0 ) then
        Case edSituacao.ItemIndex of
          1:
            SQL.Add('  and r.status in (' +
              IntToStr(STATUS_REQUISICAO_ALMOX_EDC) + ', ' +
              IntToStr(STATUS_REQUISICAO_ALMOX_ABR) + ')');

          2:
            SQL.Add('  and r.status in (' +
              IntToStr(STATUS_REQUISICAO_ALMOX_ENV) + ', ' +
              IntToStr(STATUS_REQUISICAO_ALMOX_REC) + ', ' +
              IntToStr(STATUS_REQUISICAO_ALMOX_ATD) + ')');

          3:
            SQL.Add('  and r.status = ' + IntToStr(STATUS_REQUISICAO_ALMOX_CAN));
        end;

      if ( edTipoRequsicao.ItemIndex > 0 ) then
        SQL.Add('  and r.tipo = ' + Trim(Copy(edTipoRequsicao.Text, 1, Pos('-', edTipoRequsicao.Text) - 1)));

      SQL.Add('group by');
      SQL.Add('    r.empresa');
      SQL.Add('  , r.ccusto_destino');
      SQL.Add('  , ca.descricao');
      SQL.Add('  , r.tipo');
      SQL.Add('  , tp.descricao');
      SQL.Add('  , ri.produto');
      SQL.Add('  , pr.descri_apresentacao');
      SQL.Add('  , up.unp_descricao');
      SQL.Add('  , up.unp_sigla');
      SQL.Add(' ');
      SQL.Add('order by');
      SQL.Add('    r.empresa');
      SQL.Add('  , r.ccusto_destino');
      SQL.Add('  , r.tipo');
      SQL.Add('  , pr.descri_apresentacao');
    end;
  except
    On E : Exception do
    begin
      ShowError('Erro ao tentar montar o relat�rio de Requisi��es/Saidas consolidadas de produtos.' + #13#13 + E.Message);

      Screen.Cursor         := crDefault;
      btnVisualizar.Enabled := True;
    end;
  end;
end;

procedure TfrmGeRequisicaoAlmoxImpressao.MontarRequisicaoEstoqueSintetico;
begin
  try
    SubTituloRelario := edSituacao.Text;

    if ( edTipoRequsicao.ItemIndex = 0 ) then
      PeriodoRelatorio := Format('Requisi��es realizadas no per�odo de %s a %s.', [e1Data.Text, e2Data.Text])
    else
      PeriodoRelatorio := Format('Requisi��es realizadas no per�odo de %s a %s, para o tipo %s.', [e1Data.Text, e2Data.Text,
        Trim(Copy(edTipoRequsicao.Text, Pos('-', edTipoRequsicao.Text) + 1, Length(edTipoRequsicao.Text)))]);

    cdsRequsicaoAlmoxSintetico.Close;

    with qryRequsicaoAlmoxSintetico do
    begin
      SQL.Clear;
      SQL.AddStrings( FSQL_RequisicaoEstoqueS );
      SQL.Add('where r.empresa = ' + QuotedStr(IEmpresa[edEmpresa.ItemIndex]));

      if ( edCentroCusto.ItemIndex > 0 ) then
        SQL.Add('  and r.ccusto_destino = ' + IntToStr(ICentroCusto[edCentroCusto.ItemIndex]));

      if StrIsDateTime(e1Data.Text) then
        SQL.Add('  and r.data_emissao >= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e1Data.Date)));

      if StrIsDateTime(e2Data.Text) then
        SQL.Add('  and r.data_emissao <= ' + QuotedStr(FormatDateTime('yyyy.mm.dd', e2Data.Date)));

      if ( edSituacao.ItemIndex > 0 ) then
        Case edSituacao.ItemIndex of
          1:
            SQL.Add('  and r.status in (' +
              IntToStr(STATUS_REQUISICAO_ALMOX_EDC) + ', ' +
              IntToStr(STATUS_REQUISICAO_ALMOX_ABR) + ')');

          2:
            SQL.Add('  and r.status in (' +
              IntToStr(STATUS_REQUISICAO_ALMOX_ENV) + ', ' +
              IntToStr(STATUS_REQUISICAO_ALMOX_REC) + ', ' +
              IntToStr(STATUS_REQUISICAO_ALMOX_ATD) + ')');

          3:
            SQL.Add('  and r.status = ' + IntToStr(STATUS_REQUISICAO_ALMOX_CAN));
        end;

      if ( edTipoRequsicao.ItemIndex > 0 ) then
        SQL.Add('  and r.tipo = ' + Trim(Copy(edTipoRequsicao.Text, 1, Pos('-', edTipoRequsicao.Text) - 1)));

      SQL.Add('group by');
      SQL.Add('    r.empresa');
      SQL.Add('  , e.rzsoc');
      SQL.Add('  , r.tipo');
      SQL.Add('  , tr.descricao');
      SQL.Add('  , r.status');
      SQL.Add('  , sr.descricao');
      SQL.Add('  , r.ccusto_destino');
      SQL.Add('  , cd.descricao');
      SQL.Add('  , r.ccusto_origem');
      SQL.Add('  , co.descricao');
      SQL.Add('  , co.codcliente');
      SQL.Add('  , cc.nome');
      SQL.Add('  , cc.nomefant');
      SQL.Add('  , cc.pessoa_fisica');
      SQL.Add('  , cc.cnpj');

      SQL.Add('order by');
      SQL.Add('    e.rzsoc');
      SQL.Add('  , r.tipo');
      SQL.Add('  , cd.descricao     -- Atendente');
      SQL.Add('  , r.ccusto_origem');
      SQL.Add('  , co.descricao     -- Solicitante');
      SQL.Add('  , r.ccusto_destino');
    end;
  except
    On E : Exception do
    begin
      ShowError('Erro ao tentar montar o relat�rio sint�tico de Requisi��es ao Estoque.' + #13#13 + E.Message);

      Screen.Cursor         := crDefault;
      btnVisualizar.Enabled := True;
    end;
  end;
end;

initialization
  FormFunction.RegisterForm('frmGeRequisicaoAlmoxImpressao', TfrmGeRequisicaoAlmoxImpressao);

end.
