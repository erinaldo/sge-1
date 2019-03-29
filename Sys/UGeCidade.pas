unit UGeCidade;

interface

uses
  UGrPadraoCadastro,

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, System.ImageList, ImgList, IBCustomDataSet, IBUpdateSQL, DB, JvDBControls,
  Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, JvToolEdit,
  ToolWin, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxButtons, JvExMask,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,


  dxSkinsCore, dxSkinMcSkin, dxSkinOffice2007Green, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TfrmGeCidade = class(TfrmGrPadraoCadastro)
    lblNome: TLabel;
    dbNome: TDBEdit;
    lblBGE: TLabel;
    dbIBGE: TDBEdit;
    lblSIAFI: TLabel;
    dbSIAFI: TDBEdit;
    lblEstado: TLabel;
    lblDDD: TLabel;
    dbDDD: TDBEdit;
    lblCEPInicial: TLabel;
    dbCEPInicial: TDBEdit;
    lblCEPFinal: TLabel;
    dbCEPFinal: TDBEdit;
    GrpBxCustosOper: TGroupBox;
    dbCustoOperacional: TDBCheckBox;
    lblFrete: TLabel;
    dbFrete: TDBEdit;
    lblOutros: TLabel;
    dbOutros: TDBEdit;
    Bevel5: TBevel;
    dbEstado: TJvDBComboEdit;
    fdQryTabelaCID_COD: TIntegerField;
    fdQryTabelaCID_NOME: TStringField;
    fdQryTabelaEST_COD: TSmallintField;
    fdQryTabelaCID_SIAFI: TIntegerField;
    fdQryTabelaCID_IBGE: TIntegerField;
    fdQryTabelaCID_DDD: TSmallintField;
    fdQryTabelaCID_CEP_INICIAL: TIntegerField;
    fdQryTabelaCID_CEP_FINAL: TIntegerField;
    fdQryTabelaCUSTO_OPER_PERCENTUAL: TSmallintField;
    fdQryTabelaCUSTO_OPER_FRETE: TBCDField;
    fdQryTabelaCUSTO_OPER_OUTROS: TBCDField;
    fdQryTabelaEST_NOME: TStringField;
    fdQryTabelaEST_SIGLA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure dbEstadoButtonClick(Sender: TObject);
    procedure IbDtstTabelaNewRecord(DataSet: TDataSet);
    procedure DtSrcTabelaDataChange(Sender: TObject; Field: TField);
    procedure pgcGuiasChange(Sender: TObject);
    procedure btbtnSalvarClick(Sender: TObject);
    procedure btbtnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

(*
  Tabelas:
  - TBCIDADE
  - TBESTADO

  Views:

  Procedures:

*)

var
  frmGeCidade: TfrmGeCidade;

  procedure MostrarTabelaCidades(const AOwner : TComponent);

  function SelecionarCidade(const AOwner : TComponent; var Codigo : Integer; var Nome : String) : Boolean; overload;
  function SelecionarCidade(const AOwner : TComponent; const Estado : Smallint; var Codigo : Integer; var Nome : String) : Boolean; overload;

implementation

uses
  UDMBusiness, UGeEstado, UGrPadrao, UConstantesDGE;

{$R *.dfm}

procedure MostrarTabelaCidades(const AOwner : TComponent);
var
  frm : TfrmGeCidade;
begin
  frm := TfrmGeCidade.Create(AOwner);
  try
    frm.ShowModal;
  finally
    frm.Destroy;
  end;
end;

function SelecionarCidade(const AOwner : TComponent; var Codigo : Integer; var Nome : String) : Boolean;
var
  frm : TfrmGeCidade;
begin
  frm := TfrmGeCidade.Create(AOwner);
  try
    Result := frm.SelecionarRegistro(Codigo, Nome);
  finally
    frm.Destroy;
  end;
end;

function SelecionarCidade(const AOwner : TComponent; const Estado : Smallint; var Codigo : Integer; var Nome : String) : Boolean; overload;
var
  frm : TfrmGeCidade;
  whr : String;
begin
  frm := TfrmGeCidade.Create(AOwner);
  try
    whr    := 'c.est_cod = ' + IntToStr(Estado);

    with frm, fdQryTabela do
    begin
      Close;
      SQL.Add('where ' + whr);
      Open;
    end;

    Result := frm.SelecionarRegistro(Codigo, Nome, whr);
  finally
    frm.Destroy;
  end;
end;

procedure TfrmGeCidade.FormCreate(Sender: TObject);
begin
  inherited;
  RotinaID         := ROTINA_CAD_CIDADE_ID;
  ControlFirstEdit := dbNome;

  NomeTabela     := 'TBCIDADE';
  CampoCodigo    := 'c.cid_cod';
  CampoDescricao := 'c.cid_nome';
  CampoOrdenacao := 'c.cid_nome';

  UpdateGenerator;

  GrpBxCustosOper.Enabled := GetCalcularCustoOperEmpresa(gUsuarioLogado.Empresa);
end;

procedure TfrmGeCidade.dbEstadoButtonClick(Sender: TObject);
var
  iEstado : Integer;
  sEstado : String;
begin
  with DtSrcTabela.DataSet do
  begin
    if ( State in [dsEdit, dsInsert] ) then
      if ( SelecionarEstado(Self, iEstado, sEstado) ) then
      begin
        FieldByName('EST_COD').AsInteger := iEstado;
        FieldByName('EST_NOME').AsString := sEstado;
      end;
  end;
end;

procedure TfrmGeCidade.IbDtstTabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DtSrcTabela.DataSet do
  begin
    if ( GetEstadoIDDefault > 0 ) then
    begin
      FieldByName('EST_COD').AsInteger := GetEstadoIDDefault;
      FieldByName('EST_NOME').AsString := GetEstadoNomeDefault;
    end;

    FieldByName('CUSTO_OPER_PERCENTUAL').AsInteger := 0; // Ord(False);
    FieldByName('CUSTO_OPER_FRETE').Clear;
    FieldByName('CUSTO_OPER_OUTROS').Clear;
  end;
end;

procedure TfrmGeCidade.DtSrcTabelaDataChange(Sender: TObject;
  Field: TField);
begin
  with DtSrcTabela.DataSet do
  begin
    if ( Field = FieldByName('CUSTO_OPER_PERCENTUAL') ) then
      if ( FieldByName('CUSTO_OPER_PERCENTUAL').AsInteger = 1 ) then
      begin
        lblFrete.Caption  := 'Frete (%):';
        lblOutros.Caption := 'Outros (%):';
      end
      else
      begin
        lblFrete.Caption  := 'Frete (R$):';
        lblOutros.Caption := 'Outros (R$):';
      end;
  end;
end;

procedure TfrmGeCidade.pgcGuiasChange(Sender: TObject);
begin
  inherited;
  with DtSrcTabela.DataSet do
    DtSrcTabelaDataChange(FieldByName('CUSTO_OPER_PERCENTUAL'), FieldByName('CUSTO_OPER_PERCENTUAL'));
end;

procedure TfrmGeCidade.btbtnSalvarClick(Sender: TObject);
begin
  with DtSrcTabela.DataSet do
  begin
    if ( FieldByName('CUSTO_OPER_PERCENTUAL').AsInteger = 1 ) then
    begin
      if ((FieldByName('CUSTO_OPER_FRETE').AsCurrency < 0) or (FieldByName('CUSTO_OPER_FRETE').AsCurrency > 100)) then
      begin
        ShowWarning('Percentual de custo operacional para "Frete" inv�lido!');
        Exit;
      end;

      if ((FieldByName('CUSTO_OPER_OUTROS').AsCurrency < 0) or (FieldByName('CUSTO_OPER_OUTROS').AsCurrency > 100)) then
      begin
        ShowWarning('Percentual de custo operacional para "Outros" inv�lido!');
        Exit;
      end;
    end;

    if FieldByName('CUSTO_OPER_PERCENTUAL').IsNull then
      FieldByName('CUSTO_OPER_PERCENTUAL').AsInteger := 1;
  end;

  inherited;
end;

procedure TfrmGeCidade.btbtnAlterarClick(Sender: TObject);
begin
  inherited;
  with DtSrcTabela.DataSet do
  begin
    if (not btbtnAlterar.Enabled) then
      if FieldByName('CUSTO_OPER_PERCENTUAL').IsNull then
        FieldByName('CUSTO_OPER_PERCENTUAL').AsInteger := 1;
  end;
end;

initialization
  FormFunction.RegisterForm('frmGeCidade', TfrmGeCidade);

end.
