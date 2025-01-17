unit View.ContaAPagar;

interface

uses
  System.SysUtils,
  System.StrUtils,
  System.ImageList,
  System.Classes,
  System.Variants,
  Winapi.Windows,

  Vcl.Forms,
  Vcl.Menus,
  Vcl.ImgList,
  Vcl.Controls,
  Vcl.Mask,
  Vcl.DBCtrls,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ComCtrls,
  Vcl.Graphics,
  Vcl.Buttons,
  Vcl.Dialogs,
  Vcl.ExtDlgs,

  Data.DB,
  Datasnap.DBClient,

  JvExMask,
  JvToolEdit,
  JvDBControls,
  JvMaskEdit,

  frxClass,
  cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxButtons,
  dxSkinsCore,

  View.PadraoCadastro,
  SGE.Controller.Interfaces,
  UObserverInterface,
  UCliente,
  UGrPadraoCadastro,
  Interacao.Tabela,
  Controller.Tabela,
  UConstantesDGE,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, ACBrBase, ACBrExtenso, Datasnap.Provider,
  frxDBSet, FireDAC.Comp.Client, FireDAC.Comp.DataSet, IBX.IBCustomDataSet, IBX.IBUpdateSQL;

type
  TViewContaAPagar = class(TViewPadraoCadastro)
    lblEmpresa: TLabel;
    dbEmpresa: TDBEdit;
    Bevel5: TBevel;
    GrpBxDadosValores: TGroupBox;
    lblNotaFiscal: TLabel;
    dbNotaFiscal: TDBEdit;
    lblFornecedor: TLabel;
    lblParcela: TLabel;
    dbParcela: TDBEdit;
    dbQuitado: TDBEdit;
    lblEmissao: TLabel;
    lblVencimento: TLabel;
    lblValorAPagar: TLabel;
    dbValorAPagar: TDBEdit;
    dtsEmpresa: TDataSource;
    dtsFormaPagto: TDataSource;
    dtsCondicaoPagto: TDataSource;
    lblFormaPagto: TLabel;
    dbFormaPagto: TDBLookupComboBox;
    lblCondicaoPagto: TLabel;
    dbCondicaoPagto: TDBLookupComboBox;
    pgcMaisDados: TPageControl;
    tbsHistorico: TTabSheet;
    dbObservacao: TDBMemo;
    lblQuitado: TLabel;
    Bevel6: TBevel;
    dbgPagamentos: TDBGrid;
    Bevel7: TBevel;
    dtsPagamentos: TDataSource;
    lblTipoDespesa: TLabel;
    dbTipoDespesa: TDBLookupComboBox;
    dtsTpDespesa: TDataSource;
    lblData: TLabel;
    FrdRecibo: TfrxDBDataset;
    FrReciboA5: TfrxReport;
    DspRecibo: TDataSetProvider;
    CdsRecibo: TClientDataSet;
    CdsReciboVALOR_BAIXA_EXTENSO: TStringField;
    popImprimir: TPopupMenu;
    popGerarReciboA4: TMenuItem;
    ACBrExtenso: TACBrExtenso;
    lblSaldoAPagar: TLabel;
    dbSaldoAPagar: TDBEdit;
    btbtnEfetuarPagto: TcxButton;
    dbEmissao: TJvDBDateEdit;
    dbVencimento: TJvDBDateEdit;
    dbFornecedor: TJvDBComboEdit;
    e1Data: TJvDateEdit;
    e2Data: TJvDateEdit;
    Bevel9: TBevel;
    btbtnIncluirLote: TcxButton;
    dtsCompetencia: TDataSource;
    lblCompetenciaApuracao: TLabel;
    dbCompetenciaApuracao: TDBLookupComboBox;
    daCompra: TDBEdit;
    dnCompra: TDBEdit;
    lblCompra: TLabel;
    FrReciboA4: TfrxReport;
    popGerarReciboA5: TMenuItem;
    fdQryRecibo: TFDQuery;
    CdsReciboANOLANC: TSmallintField;
    CdsReciboNUMLANC: TIntegerField;
    CdsReciboPARCELA: TSmallintField;
    CdsReciboCODFORN: TSmallintField;
    CdsReciboNOMEEMP: TStringField;
    CdsReciboNOMEFORN: TStringField;
    CdsReciboPESSOA_FISICA: TSmallintField;
    CdsReciboCNPJ: TStringField;
    CdsReciboNOTFISC: TStringField;
    CdsReciboTIPPAG: TStringField;
    CdsReciboDTEMISS: TDateField;
    CdsReciboDTVENC: TDateField;
    CdsReciboDTPAG: TDateField;
    CdsReciboBANCO: TSmallintField;
    CdsReciboBCO_NOME: TStringField;
    CdsReciboNUMCHQ: TStringField;
    CdsReciboPAGO_: TStringField;
    CdsReciboDOCBAIX: TStringField;
    CdsReciboQUITADO: TSmallintField;
    CdsReciboCODTPDESP: TSmallintField;
    CdsReciboSEQ: TSmallintField;
    CdsReciboDATA_PAGTO: TDateField;
    CdsReciboFORMA_PAGTO: TSmallintField;
    CdsReciboFORMA_PAGTO_DESC: TStringField;
    CdsReciboHISTORICO: TMemoField;
    cdsPagamentos: TFDQuery;
    cdsPagamentosANOLANC: TSmallintField;
    cdsPagamentosNUMLANC: TIntegerField;
    cdsPagamentosSEQ: TSmallintField;
    cdsPagamentosHISTORICO: TMemoField;
    cdsPagamentosDATA_PAGTO: TDateField;
    cdsPagamentosFORMA_PAGTO: TSmallintField;
    cdsPagamentosFORMA_PAGTO_DESC: TStringField;
    cdsPagamentosNUMERO_CHEQUE: TStringField;
    cdsPagamentosBANCO: TSmallintField;
    cdsPagamentosBANCO_FEBRABAN: TStringField;
    cdsPagamentosBCO_NOME: TStringField;
    cdsPagamentosDOCUMENTO_BAIXA: TStringField;
    CdsReciboVALORPAG: TFMTBCDField;
    CdsReciboVALOR_BAIXA: TFMTBCDField;
    cdsPagamentosVALOR_BAIXA: TFMTBCDField;
    pnlStatus: TPanel;
    pnlSatusColor: TPanel;
    shpOperacaoCancelado: TShape;
    shpOperacaoVendido: TShape;
    shpOperacaoAberta: TShape;
    pnlStatusText: TPanel;
    lblOperacaoAberta: TLabel;
    lblOperacaoVencido: TLabel;
    lblOperacaoCancelado: TLabel;
    procedure DtSrcTabelaAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dbFornecedorButtonClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btbtnEfetuarPagtoClick(Sender: TObject);
    procedure btbtnSalvarClick(Sender: TObject);
    procedure pgcGuiasChange(Sender: TObject);
    procedure btbtnAlterarClick(Sender: TObject);
    procedure btbtnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure popGerarReciboClick(Sender: TObject);
    procedure btbtnListaClick(Sender: TObject);
    procedure CdsReciboCalcFields(DataSet: TDataSet);
    procedure FrReciboGetValue(const VarName: String; var Value: Variant);
    procedure DtSrcTabelaStateChange(Sender: TObject);
    procedure btbtnCancelarClick(Sender: TObject);
    procedure btbtnIncluirClick(Sender: TObject);
    procedure btbtnIncluirLoteClick(Sender: TObject);
    procedure DtSrcTabelaDataChange(Sender: TObject; Field: TField);
    procedure fdQryTabelaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FControllerEmpresaView ,
    FControllerCompetencia ,
    FControllerFormaPagto  ,
    FControllerCondicaoPagtoView,
    FControllerTipoDespesa : IControllerCustom;

    FDataAtual     : TDateTime;
    sGeneratorName ,
    FLoteParcelas  : String;
    FImprimirCabecalho : Boolean;
    procedure AbrirPagamentos;
    procedure HabilitarDesabilitar_Btns;
    procedure RecarregarRegistro;
    procedure CarregarFormaPagto(const pEmpresa : String);
    procedure CarregarTipoDespesa(const ApenasAtivos : Boolean);

    function Controller : IControllerContaAPagar;
    function Pagamentos : IControllerCustom;

    function GetRotinaEfetuarPagtoID : String;
    function GetRotinaCancelarPagtosID : String;

    procedure RegistrarNovaRotinaSistema;
  public
    { Public declarations }
    property RotinaEfetuarPagtoID : String read GetRotinaEfetuarPagtoID;
    property RotinaCancelarPagtosID : String read GetRotinaCancelarPagtosID;
    property DataAtual : TDateTime read FDataAtual;
  end;

(*
  Tabelas:
  - TBCONTPAG
  - TBEMPRESA
  - TBFORNECEDOR
  - TBCONTPAG_BAIXA
  - TBBANCO_BOLETO
  - TBFORMPAGTO
  - TBCOMPETENCIA

  Views:
  - VW_EMPRESA
  - VW_CONDICAOPAGTO

  Procedures:

*)

var
  ViewContaAPagar: TViewContaAPagar;

  { DONE -oIsaque -cContas A Pagar : 22/05/2014 - Corre��o de BUG porque a rotina estava permitindo a grava��o de um lan�amento sem FORNECEDOR, DATAS e VALOR }

  procedure MostrarControleContasAPagar(const AOwner : TComponent);

implementation

uses
  System.DateUtils,
  UGrPadrao,
  UDMBusiness,
  UDMRecursos,
  SGE.Controller.Factory,
  SGE.Controller,
  SGE.Controller.Helper,
  Controller.Tabela,
  View.Fornecedor,
  UGeEfetuarPagtoPAG,
  UGeContasAPagarLoteParcela;

{$R *.dfm}

procedure MostrarControleContasAPagar(const AOwner : TComponent);
var
  AForm  : TViewContaAPagar;
  aWhere : String;
  aDataInicio,
  aDataFinal : String;
begin
  AForm := TViewContaAPagar.Create(AOwner);
  try
    aDataInicio := FormatDateTime('yyyy-mm-dd', AForm.e1Data.Date);
    aDataFinal  := FormatDateTime('yyyy-mm-dd', AForm.e2Data.Date);

    aWhere :=
      '(p.quitado = 0 and (p.dtvenc between (current_date - 30) and (current_date - 1))) or (' +
      '  (cast(p.dtvenc as date) between ' + aDataInicio.QuotedString + ' and ' + aDataFinal.QuotedString + ') and ' +
      '  (p.empresa = ' + AForm.FController.DAO.Usuario.Empresa.CNPJ + ') and ' +
      '  (p.empresa in ( ' +
      '    Select      ' +
      '      vw.cnpj   ' +
      '    from VW_EMPRESA vw' +
      '  ))' +
      ')';

    AForm.FController.DAO.ClearWhere;
    AForm.FController.DAO.Where(aWhere);
    AForm.FController.DAO.Open;

    AForm.ShowModal;
  finally
    AForm.Destroy;
  end;
end;

procedure TViewContaAPagar.FormCreate(Sender: TObject);
var
  aDataInicio,
  aDataFinal : String;
begin
  FController := TControllerFactory.New.ContaAPagar;

  FControllerEmpresaView := TControllerFactory.New.EmpresaView;
  FControllerCompetencia := TControllerFactory.New.Competencia;
  FControllerTipoDespesa := TControllerFactory.New.TipoDespesa;
  FControllerFormaPagto        := TControllerFactory.New.FormaPagto;
  FControllerCondicaoPagtoView := TControllerFactory.New.CondicaoPagtoView;

  dtsPagamentos.DataSet := Pagamentos.DAO.DataSet;
  dtsEmpresa.DataSet    := FControllerEmpresaView.DAO.DataSet;

  inherited;

  AbrirTabelaAuto := True;
  FDataAtual      := Now;
  FLoteParcelas   := EmptyStr;

  e1Data.Date := Date;
  e2Data.Date := EncodeDate(YearOf(Date), MonthOf(Date), DayOfTheMonth(Date));

  ControlFirstEdit := dbFornecedor;

  CarregarFormaPagto(gUsuarioLogado.Empresa);
  CarregarTipoDespesa(False);

  RotinaID            := ROTINA_FIN_CONTA_APAGAR_ID;
  DisplayFormatCodigo := '###0000000';

  NomeTabela     := 'TBCONTPAG';
  CampoCodigo    := 'numlanc';
  CampoDescricao := 'NomeForn';
  CampoOrdenacao := 'p.dtvenc, f.NomeForn';

  aDataInicio := FormatDateTime('yyyy-mm-dd', e1Data.Date);
  aDataFinal  := FormatDateTime('yyyy-mm-dd', e2Data.Date);

  WhereAdditional :=
    '(p.quitado = 0 and (p.dtvenc between (current_date - 30) and (current_date - 1))) or (' +
    '  (cast(p.dtvenc as date) between ' + aDataInicio.QuotedString + ' and ' + aDataFinal.QuotedString + ') and ' +
    '  (p.empresa = ' + FController.DAO.Usuario.Empresa.CNPJ + ') and ' +
    '  (p.empresa in ( ' +
    '    Select      ' +
    '      vw.cnpj   ' +
    '    from VW_EMPRESA vw' +
    '  ))' +
    ')';

  Tabela
    .Display('NUMLANC', 'C�digo', DisplayFormatCodigo, TAlignment.taCenter, True)
    .Display('DTEMISS', 'Data de Emiss�o', 'dd/mm/yyyy', TAlignment.taCenter, True)
    .Display('DTVENC', 'Data de Venvimento', 'dd/mm/yyyy', TAlignment.taCenter, True)
    .Display('COMPETENCIA_APURACAO', 'Compet�ncia da Apura��o', True)
    .Display('VALORPAG', 'Valor A Pagar (R$)', ',0.00', TAlignment.taRightJustify, True)
    .Display('CODTPDESP',      'Tipo de Despesa', True)
    .Display('FORMA_PAGTO',    'Forma de Pagamento', True)
    .Display('CONDICAO_PAGTO', 'Condi��o de Pagamento', True)
    .Display('VALORSALDO', 'Saldo A Pagar (R$)', ',0.00', TAlignment.taRightJustify, False);

  TTabelaController
    .New
    .Tabela( cdsPagamentos )
    .Display('VALOR_BAIXA', 'Valor Pago (R$)', ',0.00', TAlignment.taRightJustify, False)
    .Configurar( cdsPagamentos );

  TController(FControllerCompetencia)
    .LookupComboBox(dbCompetenciaApuracao, dtsCompetencia, 'competencia_apuracao', 'cmp_num', 'cmp_desc');

  TController(FControllerFormaPagto)
    .LookupComboBox(dbFormaPagto, dtsFormaPagto, 'forma_pagto', 'codigo', 'codigo_descricao');

  TController(FControllerCondicaoPagtoView)
    .LookupComboBox(dbCondicaoPagto, dtsCondicaoPagto, 'condicao_pagto', 'cond_cod', 'cond_descricao');

  TController(FControllerTipoDespesa)
    .LookupComboBox(dbTipoDespesa, dtsTpDespesa, 'codtpdesp', 'codigo', 'descricao');

  FController.DAO.DataSet.AfterScroll := DtSrcTabelaAfterScroll;
end;

procedure TViewContaAPagar.dbFornecedorButtonClick(Sender: TObject);
var
  iCodigo : Integer;
  sCNPJ   ,
  sNome   : String;
begin
  with DtSrcTabela.DataSet do
  begin
    if ( State in [dsEdit, dsInsert] ) then
      if ( SelecionarFornecedor(Self, iCodigo, sCNPJ, sNome) ) then
      begin
        FieldByName('CODFORN').AsInteger := iCodigo;
        FieldByName('CNPJ').AsString     := sCNPJ;
        FieldByName('NOMEFORN').AsString := sNome;
      end;
  end;
end;

procedure TViewContaAPagar.btnFiltrarClick(Sender: TObject);
var
  aDataInicio,
  aDataFinal : String;
begin
  aDataInicio := FormatDateTime('yyyy-mm-dd', e1Data.Date);
  aDataFinal  := FormatDateTime('yyyy-mm-dd', e2Data.Date);

  if FLoteParcelas.Trim.IsEmpty then
    WhereAdditional :=
      '(p.quitado = 0 and (p.dtvenc between (current_date - 30) and (current_date - 1))) or (' +
      '  (cast(p.dtvenc as date) between ' + aDataInicio.QuotedString + ' and ' + aDataFinal.QuotedString + ') and ' +
      '  (p.empresa = ' + FController.DAO.Usuario.Empresa.CNPJ + ') and ' +
      '  (p.empresa in ( ' +
      '    Select      ' +
      '      vw.cnpj   ' +
      '    from VW_EMPRESA vw' +
      '  ))' +
      ')'
  else
    WhereAdditional :=
      '(p.empresa = ' + FController.DAO.Usuario.Empresa.CNPJ + ') and ' +
      '(p.lote = ' + FLoteParcelas.QuotedString + ')';

  inherited;
end;

procedure TViewContaAPagar.btbtnIncluirLoteClick(Sender: TObject);
var
  sEmpresa,
  sLote   : String;
  iFornecedor : Integer;
  dDataEmissao    ,
  dVencimentoFirst,
  dVencimentoLast : TDateTime;
begin
  if btbtnIncluir.Enabled then
  begin
    sEmpresa     := FController.DAO.Usuario.Empresa.CNPJ;
    sLote        := EmptyStr;
    iFornecedor  := 0;
    dDataEmissao := GetDateDB;
    dVencimentoFirst := dDataEmissao + 30;
    dVencimentoLast  := dDataEmissao + 60;

    if GerarLoteParcelas(Self, sEmpresa, sLote, iFornecedor, dDataEmissao, dVencimentoFirst, dVencimentoLast)  then
    begin
      pgcGuias.ActivePage := tbsTabela;
      edtFiltrar.Text := GetFornecedorRazao(iFornecedor);
      FLoteParcelas   := sLote;
      btnFiltrar.Click;

      FLoteParcelas := EmptyStr;
    end;
  end;
end;

procedure TViewContaAPagar.btbtnEfetuarPagtoClick(Sender: TObject);
var
//  sSenha   : String;
  CxContaCorrente : Integer;
  DataPagto : TDateTime;
  cAPagar   : Currency;
begin
  if ( DtSrcTabela.DataSet.IsEmpty ) then
    Exit;

  if not GetPermissaoRotinaInterna(Sender, True) then
    Abort;

  CxContaCorrente := 0;

  RecarregarRegistro;

  if ( not DtSrcTabela.DataSet.Active ) then
    Exit;

  with DtSrcTabela.DataSet do
  begin
    if ( FieldByName('QUITADO').AsInteger = 1 ) then
    begin
      ShowWarning('Registro de despesa selecionada j� se encontra quitado!' + #13 + 'Favor pesquisar novamente.');
      Abort;
    end;

  {  sSenha := InputBox('Favor informar a senha de autoriza��o', 'Senha de Autoriza��o:', '');

    if ( Trim(sSenha) = EmptyStr ) then
      Exit;

    if ( sSenha <> GetSenhaAutorizacao ) then
    begin
      ShowWarning('Senha de autoriza��o inv�lida');
      Exit;
    end;
   }
    cAPagar := FieldByName('VALORSALDO').AsCurrency;

    if PagamentoConfirmado(Self, FieldByName('EMPRESA').AsString,
      FieldByName('ANOLANC').AsInteger, FieldByName('NUMLANC').AsInteger,
      FieldByName('FORMA_PAGTO').AsInteger, FieldByName('NOMEFORN').AsString,
      CxContaCorrente, DataPagto, cAPagar) then
    begin
      if ( CxContaCorrente > 0 ) then
        GerarSaldoContaCorrente(CxContaCorrente, DataPagto);

      RecarregarRegistro;
      AbrirPagamentos;
    end;
  end;
end;

procedure TViewContaAPagar.HabilitarDesabilitar_Btns;
begin
  with DtSrcTabela.DataSet do
  begin
    if ( pgcGuias.ActivePage = tbsCadastro ) then
    begin
      btbtnEfetuarPagto.Enabled := (FieldByName('SITUACAO').AsInteger = 1) and (FieldByName('QUITADO').AsInteger = STATUS_APAGAR_PENDENTE) and (not IsEmpty) and (State = dsBrowse);
      popGerarReciboA4.Enabled  := (FieldByName('SITUACAO').AsInteger = 1) and (not cdsPagamentos.IsEmpty);
      popGerarReciboA5.Enabled  := (FieldByName('SITUACAO').AsInteger = 1) and (not cdsPagamentos.IsEmpty);
    end
    else
    begin
      btbtnEfetuarPagto.Enabled := False;
      popGerarReciboA4.Enabled  := False;
      popGerarReciboA5.Enabled  := False;
    end;
  end;
end;

function TViewContaAPagar.Pagamentos: IControllerCustom;
begin
  Result := Controller.Pagamentos;
end;

procedure TViewContaAPagar.btbtnSalvarClick(Sender: TObject);
begin
  inherited;
  HabilitarDesabilitar_Btns;
end;

procedure TViewContaAPagar.pgcGuiasChange(Sender: TObject);
begin
  inherited;
  if (pgcGuias.ActivePage = tbsCadastro) then
    AbrirPagamentos;
end;

procedure TViewContaAPagar.AbrirPagamentos;
begin
  Controller.CarregarPagamentos;

  // Configurar tabela dos itens
  TTabelaController
    .New
    .Tabela( dtsPagamentos.DataSet )
    .Display('SEQ', '#', '00', TAlignment.taCenter, False)
    .Display('DATA_PAGTO', 'Data Pagto.', 'dd/mm/yyyy', TAlignment.taCenter, False)
    .Display('VALOR_BAIXA', 'Valor Pago (R$) ', ',0.00', TAlignment.taRightJustify, False)
    .Configurar;

  HabilitarDesabilitar_Btns;
end;

procedure TViewContaAPagar.btbtnAlterarClick(Sender: TObject);
begin
  with DtSrcTabela.DataSet do
  begin
    if ( FieldByName('QUITADO').AsInteger = STATUS_APAGAR_PAGO ) then
    begin
      ShowWarning('O Lan�amento n�o poder� ser alterado pois este j� est� quitado!');
      Abort;
    end
    else
    begin
      inherited;
      if ( not OcorreuErro ) then
      begin
        if (Trim(FieldByName('NOMEEMP').AsString) = EmptyStr) then
          FieldByName('NOMEEMP').AsString := Copy(GetEmpresaNome(gUsuarioLogado.Empresa), 1, FieldByName('NOMEEMP').Size);

        AbrirPagamentos;
      end;
    end;
  end;
end;

procedure TViewContaAPagar.btbtnExcluirClick(Sender: TObject);
begin
  if ( DtSrcTabela.DataSet.FieldByName('QUITADO').AsInteger = STATUS_APAGAR_PAGO ) then
  begin
    ShowWarning('O Lan�amento n�o poder� ser exclu�do pois este j� est� quitado!');
    Abort;
  end
  else
  if ( DtSrcTabela.DataSet.FieldByName('ANOCOMPRA').AsInteger > 0 ) then
  begin
    ShowWarning('Registros de Contas A Pagar atrelados � entradas de produtos/servi�os n�o podem ser exclu�dos!');
    Abort;
  end
  else
  begin
    // Eliminar Movimento do Caixa quando o lan�amento for exclu�do pelo SYSTEM ADM

    if (FController.DAO.Usuario.Funcao.Codigo in [FUNCTION_USER_ID_DIRETORIA, FUNCTION_USER_ID_SYSTEM_ADM]) then
    begin

      with DMBusiness, fdQryBusca do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Delete from TBCAIXA_MOVIMENTO');
        SQL.Add('where APAGAR_ANO = ' + DtSrcTabela.DataSet.FieldByName('ANOLANC').AsString);
        SQL.Add('  and APAGAR_NUM = ' + DtSrcTabela.DataSet.FieldByName('NUMLANC').AsString);
        ExecSQL;

        CommitTransaction;
      end;

    end
    else
    begin

      with DMBusiness, fdQryBusca do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Update TBCAIXA_MOVIMENTO Set');
        SQL.Add('    APAGAR_ANO = null');
        SQL.Add('  , APAGAR_NUM = null');
        SQL.Add('where APAGAR_ANO = ' + DtSrcTabela.DataSet.FieldByName('ANOLANC').AsString);
        SQL.Add('  and APAGAR_NUM = ' + DtSrcTabela.DataSet.FieldByName('NUMLANC').AsString);
        ExecSQL;

        CommitTransaction;
      end;

    end;

    inherited;

    if ( not OcorreuErro ) then
      AbrirPagamentos;
  end;
end;

procedure TViewContaAPagar.FormShow(Sender: TObject);
begin
  inherited;
  RegistrarNovaRotinaSistema;
  Self.Caption := Self.Caption + ' - (' + GetNomeFantasiaEmpresa(gUsuarioLogado.Empresa) + ')';
end;

procedure TViewContaAPagar.dbgDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if ( Sender = dbgDados ) then
  begin
    with DtSrcTabela.DataSet do
    begin
      // Destacar T�tulos A Pagar cancelados
      if (FieldByName('SITUACAO').AsInteger = 0) then
        dbgDados.Canvas.Font.Color := shpOperacaoCancelado.Brush.Color
      else
      // Destacar T�tulos A Pagar em aberto
      if (not FieldByName('QUITADO').IsNull) then
        if ( FieldByName('QUITADO').AsInteger = STATUS_APAGAR_PENDENTE ) then
          if FieldByName('DTVENC').AsDateTime >= DataAtual then
            dbgDados.Canvas.Font.Color := shpOperacaoAberta.Brush.Color
          else
          begin
            dbgDados.Canvas.Font.Color  := shpOperacaoAberta.Brush.Color;
            dbgDados.Canvas.Brush.Color := shpOperacaoVendido.Brush.Color;
          end;
    end;

    dbgDados.DefaultDrawDataCell(Rect, dbgDados.Columns[DataCol].Field, State);
  end;
end;

procedure TViewContaAPagar.dbgDadosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  CxAno    ,
  CxNumero ,
  CxContaCorrente : Integer;
  DataPagto : TDateTime;
begin
  if (Shift = [ssCtrl]) and (Key = 46) Then
  begin
  
    if not LiberarUso then
      Exit;

    if not GetPermissaoRotinaInterna(Sender, True) then
      Abort;

    if ( not cdsPagamentos.IsEmpty ) then
    begin
      CxAno    := 0;
      CxNumero := 0;
      CxContaCorrente := 0;

      if ( fdQryFormaPagto.Locate('cod', DtSrcTabela.DataSet.FieldByName('FORMA_PAGTO').AsInteger, []) ) then
        if ( fdQryFormaPagto.FieldByName('Conta_corrente').AsInteger > 0 ) then
          if ( not CaixaAberto(DtSrcTabela.DataSet.FieldByName('EMPRESA').AsString, GetUserApp, GetDateDB, DtSrcTabela.DataSet.FieldByName('FORMA_PAGTO').AsInteger, CxAno, CxNumero, CxContaCorrente) ) then
          begin
            ShowWarning('N�o existe caixa aberto para o usu�rio na forma de pagamento deste movimento.');
            Exit;
          end;

//    sSenha := InputBox('Favor informar a senha de autoriza��o', 'Senha de Autoriza��o:', '');
//
//    if ( Trim(sSenha) = EmptyStr ) then
//      Exit;
//
//    if ( sSenha <> GetSenhaAutorizacao ) then
//    begin
//      ShowWarning('Senha de autoriza��o inv�lida');
//      Exit;
//    end;

      DataPagto := cdsPagamentosDATA_PAGTO.AsDateTime;

      if ShowConfirm('Confirma a exclus�o do(s) registro(s) de pagamento(s)?') then
      begin

        // Registrar Estorno
        
        if ( CxContaCorrente > 0 ) then
        begin
          cdsPagamentos.First;

          while not cdsPagamentos.Eof do
          begin
            SetMovimentoCaixaEstorno(
              GetUserApp,
              cdsPagamentosDATA_PAGTO.AsDateTime + Time,
              cdsPagamentosFORMA_PAGTO.AsInteger,
              cdsPagamentosANOLANC.AsInteger,
              cdsPagamentosNUMLANC.AsInteger,
              cdsPagamentosSEQ.AsInteger,
              cdsPagamentosVALOR_BAIXA.AsCurrency,
              tmcxDebito);

            cdsPagamentos.Next;
          end;
        end;

        with DMBusiness, fdQryBusca do
        begin
          Close;
          SQL.Clear;
          SQL.Add('Delete from TBCONTPAG_BAIXA');
          SQL.Add('where ANOLANC = ' + cdsPagamentosANOLANC.AsString);
          SQL.Add('  and NUMLANC = ' + cdsPagamentosNUMLANC.AsString);
          ExecSQL;

          CommitTransaction;
        end;

        with DMBusiness, fdQryBusca do
        begin
          Close;
          SQL.Clear;
          SQL.Add('Update TBCONTPAG Set');
          SQL.Add('    QUITADO      = 0');
          SQL.Add('  , VALORMULTA   = 0.0');
          SQL.Add('  , VALORPAGTOT  = 0.0');
          SQL.Add('  , VALORSALDO   = VALORPAG');
          SQL.Add('  , HISTORIC = ''''');
          SQL.Add('  , DTPAG    = null');
          SQL.Add('  , DOCBAIX  = null');
          SQL.Add('  , TIPPAG   = null');
          SQL.Add('  , NUMCHQ   = null');
          SQL.Add('  , BANCO    = null');
          SQL.Add('where ANOLANC = ' + cdsPagamentosANOLANC.AsString);
          SQL.Add('  and NUMLANC = ' + cdsPagamentosNUMLANC.AsString);
          ExecSQL;

          CommitTransaction;
        end;

        if ( CxContaCorrente > 0 ) then
          GerarSaldoContaCorrente(CxContaCorrente, DataPagto);
          
        RecarregarRegistro;
        AbrirPagamentos;
      end;
    end;
  end;
end;

procedure TViewContaAPagar.popGerarReciboClick(Sender: TObject);
begin
  if ( DtSrcTabela.DataSet.IsEmpty ) then
    Exit;

  with CdsRecibo, Params do
  begin
    Close;
    ParamByName('ano').AsInteger    := cdsPagamentosANOLANC.AsInteger;
    ParamByName('numero').AsInteger := cdsPagamentosNUMLANC.AsInteger;
    ParamByName('baixa').AsInteger  := cdsPagamentosSEQ.AsInteger;
    Open;

    if IsEmpty then
      Exit;
  end;

  FImprimirCabecalho := ShowConfirmation('Recibo', 'Deseja imprimir no recibo o Cabe�alho com informa��es da empresa?');

  if ( Sender = popGerarReciboA4 ) then
    frReport := FrReciboA4
  else
  if ( Sender = popGerarReciboA5 ) then
    frReport := FrReciboA5;

  SetVariablesDefault(frReport);

  frReport.PrepareReport;
  frReport.ShowReport;
end;

procedure TViewContaAPagar.btbtnListaClick(Sender: TObject);
begin
  popImprimir.Popup(btbtnLista.ClientOrigin.X, btbtnLista.ClientOrigin.Y + btbtnLista.Height);
end;

procedure TViewContaAPagar.CarregarFormaPagto(const pEmpresa: String);
begin
  with fdQryFormaPagto, Params do
  begin
    Close;
    ParamByName('empresa').AsString := Trim(pEmpresa);
    Open;

    Prior;
    Last;
  end;
end;

procedure TViewContaAPagar.CarregarTipoDespesa(const ApenasAtivos: Boolean);
begin
  with fdQryTipoDespesa, Params do
  begin
    Close;
    ParamByName('ativo').AsInteger := IfThen(ApenasAtivos, 1, 0);
    ParamByName('todos').AsInteger := IfThen(ApenasAtivos, 0, 1);
    Open;

    Prior;
    Last;
  end;
end;

procedure TViewContaAPagar.CdsReciboCalcFields(DataSet: TDataSet);
begin
  CdsReciboVALOR_BAIXA_EXTENSO.AsString := AnsiUpperCase(ACBrExtenso.ValorToTexto(CdsReciboVALOR_BAIXA.AsCurrency, ACBrExtenso.Formato));
end;

function TViewContaAPagar.Controller: IControllerContaAPagar;
begin
  Result := (FController as IControllerContaAPagar);
end;

procedure TViewContaAPagar.FrReciboGetValue(const VarName: String;
  var Value: Variant);
begin
  if ( VarName = VAR_TITLE ) then
    Value := 'RECIBO';

  if ( VarName = VAR_EMPRESA ) then
    Value := GetEmpresaNomeDefault;

  if ( VarName = VAR_USER ) then
    Value := GetUserApp;

  if ( VarName = VAR_SYSTEM ) then
    Value := Application.Title + ' - vers�o ' + ver.FileVersion;

  if ( VarName = 'Imprimir_Cabecalho' ) then
    Value := IfThen(FImprimirCabecalho, 1, 0);
end;

procedure TViewContaAPagar.RecarregarRegistro;
begin
  with DtSrcTabela.DataSet do
  begin
    if (not FieldByName('DTVENC').IsNull) then
    begin
      if ( FieldByName('DTVENC').AsDateTime < e1Data.Date ) then
        e1Data.Date := FieldByName('DTVENC').AsDateTime;

      if (FieldByName('DTVENC').AsDateTime > e2Data.Date) then
        e2Data.Date := FieldByName('DTVENC').AsDateTime;
    end;

    FController.DAO.RefreshRecord;
  end;
end;

procedure TViewContaAPagar.DtSrcTabelaAfterScroll(DataSet: TDataSet);
begin
  if (pgcGuias.ActivePage = tbsCadastro) then
  begin
    if (not (DtSrcTabela.DataSet.State in [dsEdit, dsInsert])) then
    begin
//      AbrirTabelaPagamentos;
//
//      FControllerFormaPagto.DAO.ClearWhere;
//      FControllerFormaPagto
//        .DAO
//        .Where('c.Cfop_cod = ' + StrToIntDef(DtSrcTabela.DataSet.FieldByName('NFCFOP').AsString, 0).ToString)
//        .Open;
    end;
  end;
end;

procedure TViewContaAPagar.DtSrcTabelaDataChange(Sender: TObject;
  Field: TField);
var
  iCompetencia : Integer;
begin
  with DtSrcTabela.DataSet do
  begin
    if ( Field = FieldByName('EMPRESA') ) then
      CarregarFormaPagto(FieldByName('EMPRESA').AsString)
    else
    if ( Field = FieldByName('DTEMISS') ) then
      if ( State in [dsEdit, dsInsert] ) then
        if not FieldByName('DTEMISS').IsNull then
        begin
          iCompetencia := GetCompetenciaID(FieldByName('DTEMISS').AsDateTime);
          fdQryCompetencia.Close;
          fdQryCompetencia.Open;

          FieldByName('COMPETENCIA_APURACAO').AsInteger := iCompetencia;
        end;
  end;
end;

procedure TViewContaAPagar.DtSrcTabelaStateChange(Sender: TObject);
begin
  inherited;
  dbValorAPagar.ReadOnly   := (not cdsPagamentos.IsEmpty);
  btbtnIncluirLote.Enabled := btbtnIncluir.Enabled;
  HabilitarDesabilitar_Btns;

  CarregarFormaPagto(DtSrcTabela.DataSet.FieldByName('EMPRESA').AsString);
  CarregarTipoDespesa( (DtSrcTabela.DataSet.State in [dsEdit, dsInsert]) );
end;

procedure TViewContaAPagar.fdQryTabelaBeforePost(DataSet: TDataSet);
begin
  with DtSrcTabela.DataSet do
  begin
    if FieldByName('COMPETENCIA_APURACAO').IsNull then
      FieldByName('COMPETENCIA_APURACAO').AsInteger := GetCompetenciaID(FieldByName('DTEMISS').AsDateTime);

    if ( (FieldByName('ANOCOMPRA').AsInteger = 0) and (FieldByName('PARCELA').AsInteger <= 0) ) then
      FieldByName('PARCELA').AsInteger := 1;

    FieldByName('VALORSALDO').AsCurrency := FieldByName('VALORPAG').AsCurrency;
  end;

  inherited;
end;

procedure TViewContaAPagar.btbtnCancelarClick(Sender: TObject);
begin
  inherited;
  if (not OcorreuErro) then
    AbrirPagamentos;
end;

procedure TViewContaAPagar.btbtnIncluirClick(Sender: TObject);
begin
  inherited;
  if (not OcorreuErro) then
  begin
    AbrirPagamentos;
    DtSrcTabelaStateChange( DtSrcTabela );
  end;
end;

function TViewContaAPagar.GetRotinaCancelarPagtosID: String;
begin
  Result := GetRotinaInternaID(dbgPagamentos);
end;

function TViewContaAPagar.GetRotinaEfetuarPagtoID: String;
begin
  Result := GetRotinaInternaID(btbtnEfetuarPagto);
end;

procedure TViewContaAPagar.RegistrarNovaRotinaSistema;
begin
  if ( Trim(RotinaID) <> EmptyStr ) then
  begin
    if btbtnEfetuarPagto.Visible then
      SetRotinaSistema(ROTINA_TIPO_FUNCAO, RotinaEfetuarPagtoID, btbtnEfetuarPagto.Hint, RotinaID);

    if dbgPagamentos.Visible then
      SetRotinaSistema(ROTINA_TIPO_FUNCAO, RotinaCancelarPagtosID, 'Cancelar Pagamentos', RotinaID);
  end;
end;

initialization
  FormFunction.RegisterForm('ViewContaAPagar', TViewContaAPagar);

end.
