unit UGeVendaDevolucaoNF;

interface

uses
  UGrPadrao,

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxButtons, Data.DB, JvExMask, JvToolEdit, JvDBControls, Datasnap.DBClient,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,

  dxSkinsCore, dxSkinMcSkin, dxSkinOffice2007Green, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TfrmGeVendaDevolucaoNF = class(TfrmGrPadrao)
    GrpBxControle: TGroupBox;
    lblCodigo: TLabel;
    dbCodigo: TDBEdit;
    Bevel1: TBevel;
    btnConfirmar: TcxButton;
    btFechar: TcxButton;
    dtsVenda: TDataSource;
    lblCompra: TLabel;
    dbCompra: TJvDBComboEdit;
    dtsFormaDevolucao: TDataSource;
    dbFormaDevolucao: TDBLookupComboBox;
    lblFormaDevolucao: TLabel;
    GrpBxDados: TGroupBox;
    lblNFeChave: TLabel;
    dbNFeChave: TDBEdit;
    lblNFSerie: TLabel;
    dbNFSerie: TDBEdit;
    lblNF: TLabel;
    lblNFNumero: TLabel;
    dbNFNumero: TDBEdit;
    lblNFModelo: TLabel;
    dbNFModelo: TDBEdit;
    lblNFe: TLabel;
    dtsUF: TDataSource;
    lblNFUF: TLabel;
    dbNFUF: TDBLookupComboBox;
    dtsCompetencia: TDataSource;
    lblNFCompetencia: TLabel;
    dbNFCompetencia: TDBLookupComboBox;
    lblNFCnpjCpf: TLabel;
    dbNFCnpjCpf: TDBEdit;
    lblCupomFiscal: TLabel;
    lblCPModelo: TLabel;
    dbCPModelo: TDBLookupComboBox;
    lblCPNumeroECF: TLabel;
    dbCPNumeroECF: TDBEdit;
    lblCPNumeroCOO: TLabel;
    dbCPNumeroCOO: TDBEdit;
    lblNFIE: TLabel;
    dbNFIE: TDBEdit;
    dtsModeloCupom: TDataSource;
    fdQryFormaDevolucao: TFDQuery;
    fdQryUF: TFDQuery;
    fdQryCompetencia: TFDQuery;
    fdQryModeloCupom: TFDQuery;
    cdsVenda: TFDQuery;
    updVenda: TFDUpdateSQL;
    cdsVendaANO: TSmallintField;
    cdsVendaCODCONTROL: TIntegerField;
    cdsVendaCODEMP: TStringField;
    cdsVendaDNFE_COMPRA_ANO: TSmallintField;
    cdsVendaDNFE_COMPRA_COD: TIntegerField;
    cdsVendaDNFE_FORMA: TSmallintField;
    cdsVendaDNFE_CHAVE: TStringField;
    cdsVendaDNFE_UF: TStringField;
    cdsVendaDNFE_CNPJ_CPF: TStringField;
    cdsVendaDNFE_IE: TStringField;
    cdsVendaDNFE_COMPETENCIA: TStringField;
    cdsVendaDNFE_SERIE: TStringField;
    cdsVendaDNFE_NUMERO: TIntegerField;
    cdsVendaDNFE_MODELO: TSmallintField;
    cdsVendaDECF_MODELO: TSmallintField;
    cdsVendaDECF_NUMERO: TIntegerField;
    cdsVendaDECF_COO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure dtsVendaDataChange(Sender: TObject; Field: TField);
    procedure btFecharClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure dbCompraButtonClick(Sender: TObject);
    procedure cdsVendaCODCONTROLGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsVendaDNFE_COMPRA_CODGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RegistrarRotinaSistema; override;
  end;

  function InformarDocumentoReferenciado(const AOwer : TComponent; Ano : Smallint; Numero : Integer) : Boolean;

(*
  Tabelas:
  - TBVENDAS
  - TBESTADO
  - TBCOMPETENCIA

  Views:
  - VW_FORMA_DEVOLUCAO
  - VW_MODELO_CUPOM_FISCAL

  Procedures:

*)

implementation

uses
  UDMBusiness, UDMRecursos, UDMNFe, UFuncoes, UGrCampoRequisitado, UGeEntradaEstoque, UConstantesDGE;

{$R *.dfm}

function InformarDocumentoReferenciado(const AOwer : TComponent; Ano : Smallint; Numero : Integer) : Boolean;
var
  AForm : TfrmGeVendaDevolucaoNF;
begin
  AForm := TfrmGeVendaDevolucaoNF.Create(AOwer);
  try
    with AForm do
    begin
      cdsVenda.Close;
      cdsVenda.ParamByName('anovenda').AsInteger := Ano;
      cdsVenda.ParamByName('numvenda').AsInteger := Numero;
      cdsVenda.Open;

      if not cdsVenda.IsEmpty then
      begin
        cdsVenda.Edit;
        if cdsVendaDNFE_FORMA.IsNull then
          cdsVendaDNFE_FORMA.AsInteger := Ord(fdNFeEletronica);
      end;

      Result := (ShowModal = mrOk);
    end;
  finally
    AForm.Free;
  end;
end;

procedure TfrmGeVendaDevolucaoNF.btFecharClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmGeVendaDevolucaoNF.btnConfirmarClick(Sender: TObject);
begin
  cdsVendaDNFE_CHAVE.Required := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeEletronica]);

  cdsVendaDNFE_SERIE.Required  := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
  cdsVendaDNFE_NUMERO.Required := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
  cdsVendaDNFE_MODELO.Required := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
  cdsVendaDNFE_UF.Required     := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
  cdsVendaDNFE_COMPETENCIA.Required := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
  cdsVendaDNFE_CNPJ_CPF.Required    := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
  cdsVendaDNFE_IE.Required          := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFProdutorRural]);

  cdsVendaDECF_MODELO.Required := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdCupomFiscal]);
  cdsVendaDECF_NUMERO.Required := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdCupomFiscal]);
  cdsVendaDECF_COO.Required    := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdCupomFiscal]);

  if not CamposRequiridos(Self, TClientDataSet(dtsVenda.DataSet), GrpBxDados.Caption) then
    if ShowConfirmation('Confirmar', 'Confirma os dados do documento referenciado para devolu��o?') then
      with cdsVenda do
      begin
        Post;
        ApplyUpdates;
        CommitUpdates;
        CommitTransaction;

        ModalResult := mrOk;
      end;
end;

procedure TfrmGeVendaDevolucaoNF.cdsVendaCODCONTROLGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if not Sender.IsNull then
    Text := cdsVendaANO.AsString + '/' + FormatFloat('0000000', Sender.AsInteger);
end;

procedure TfrmGeVendaDevolucaoNF.cdsVendaDNFE_COMPRA_CODGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if not Sender.IsNull then
    Text := cdsVendaDNFE_COMPRA_ANO.AsString + '/' + FormatFloat('0000000', Sender.AsInteger);
end;

procedure TfrmGeVendaDevolucaoNF.dbCompraButtonClick(Sender: TObject);
var
  iAno      ,
  iControle : Integer;
  sEmpresa,
  sSerie  ,
  sNumero ,
  sChave  ,
  sUF  ,
  sCnpj,
  sIE  : String;
  dEmissao  : TDateTime;
begin
  sEmpresa := cdsVendaCODEMP.AsString;
  if ( cdsVenda.State = dsEdit ) then
    if SelecionarNFParaDevolver(Self, iANo, iControle, sEmpresa, dEmissao, sSerie, sNumero, sChave, sUF, sCnpj, sIE) then
    begin
      cdsVendaDNFE_COMPRA_ANO.AsInteger := iAno;
      cdsVendaDNFE_COMPRA_COD.AsInteger := iControle;
      cdsVendaDNFE_COMPETENCIA.AsString := FormatDateTime('yymm', dEmissao);
      cdsVendaDNFE_SERIE.AsString    := sSerie;
      cdsVendaDNFE_NUMERO.AsInteger  := StrToInt(sNumero);
      cdsVendaDNFE_CHAVE.AsString    := sChave;
      cdsVendaDNFE_UF.AsString       := sUF;
      cdsVendaDNFE_CNPJ_CPF.AsString := sCnpj;
      cdsVendaDNFE_IE.AsString       := sIE;
    end;
end;

procedure TfrmGeVendaDevolucaoNF.dtsVendaDataChange(Sender: TObject;
  Field: TField);
begin
  if ( Field = dbFormaDevolucao.Field ) then
  begin
    // T�tulos principais
    lblNFe.Enabled := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeEletronica]);
    lblNF.Enabled  := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
    lblCupomFiscal.Enabled := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdCupomFiscal]);

    if TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) = fdNFProdutorRural then
      lblNF.Caption := 'Nota Fiscal do Produtor Rural:'
    else
      lblNF.Caption := 'Nota Fiscal Modelo 1/1A:';

    // Campos
    lblNFeChave.Enabled := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeEletronica]);
    dbNFeChave.Enabled  := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeEletronica]);

    lblNFSerie.Enabled  := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
    dbNFSerie.Enabled   := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
    lblNFNumero.Enabled := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
    dbNFNumero.Enabled  := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
    lblNFUF.Enabled     := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
    dbNFUF.Enabled      := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
    lblNFCompetencia.Enabled := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
    dbNFCompetencia.Enabled  := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
    lblNFCnpjCpf.Enabled := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
    dbNFCnpjCpf.Enabled  := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFeModelo1_1A, fdNFProdutorRural]);
    lblNFIE.Enabled := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFProdutorRural]);
    dbNFIE.Enabled  := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdNFProdutorRural]);

    lblCPModelo.Enabled := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdCupomFiscal]);
    dbCPModelo.Enabled  := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdCupomFiscal]);
    lblCPNumeroECF.Enabled := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdCupomFiscal]);
    dbCPNumeroECF.Enabled  := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdCupomFiscal]);
    lblCPNumeroCOO.Enabled := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdCupomFiscal]);
    dbCPNumeroCOO.Enabled  := (TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) in [fdCupomFiscal]);

    // Definir modelo de Nota Fiscal
    if ( cdsVenda.State = dsEdit ) then
      Case TFormaNFDevolucao(dbFormaDevolucao.Field.AsInteger) of
        fdNFeModelo1_1A  : dbNFModelo.Field.AsInteger := 1;
        fdNFProdutorRural: dbNFModelo.Field.AsInteger := 4;
        else
          dbNFModelo.Field.Clear;
      end;

  end;
end;

procedure TfrmGeVendaDevolucaoNF.FormCreate(Sender: TObject);
begin
  inherited;
  CarregarListaDB(fdQryFormaDevolucao);
  CarregarListaDB(fdQryUF);
  CarregarListaDB(fdQryCompetencia);
  CarregarListaDB(fdQryModeloCupom);
end;

procedure TfrmGeVendaDevolucaoNF.RegistrarRotinaSistema;
begin
  ;
end;

initialization
  FormFunction.RegisterForm('frmGeVendaDevolucaoNF', TfrmGeVendaDevolucaoNF);

end.
