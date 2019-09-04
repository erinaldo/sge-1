unit UDMCupom;

interface

uses
  UInfoVersao,
  UFuncoes,
  UEcfFactory,
  UGeConfigurarNFeACBr,
  SHDocVw,

  Windows, SysUtils, Classes, ACBrNFeDANFEClass, ACBrNFe, DB,
  frxExportPDF, frxExportMail, frxDesgn, frxRich, frxCross, frxChart, frxExportImage,
  IBCustomDataSet, IBQuery, IBUpdateSQL, IBSQL,

  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,

  ACBrUtil, pcnConversao, pcnNFeW, pcnNFeRTXT, pcnAuxiliar, ACBrBase, ACBrBoleto, ACBrBoletoFCFR,
  ACBrValidador;

type
  TDMCupom = class(TDataModule)
    cdsVenda: TIBDataSet;
    cdsVendaANO: TSmallintField;
    cdsVendaCODCONTROL: TIntegerField;
    cdsVendaCODEMP: TIBStringField;
    cdsVendaCODCLIENTE: TIntegerField;
    cdsVendaCODCLI: TIBStringField;
    cdsVendaDTVENDA: TDateTimeField;
    cdsVendaSTATUS: TSmallintField;
    cdsVendaTOTALVENDA_BRUTA: TIBBCDField;
    cdsVendaDESCONTO: TIBBCDField;
    cdsVendaTOTALVENDA: TIBBCDField;
    cdsVendaDTFINALIZACAO_VENDA: TDateField;
    cdsVendaOBS: TMemoField;
    cdsVendaFORMAPAG: TIBStringField;
    cdsVendaFATDIAS: TSmallintField;
    cdsVendaSERIE: TIBStringField;
    cdsVendaNFE: TLargeintField;
    cdsVendaLOTE_NFE_ANO: TSmallintField;
    cdsVendaLOTE_NFE_NUMERO: TIntegerField;
    cdsVendaLOTE_NFE_RECIBO: TIBStringField;
    cdsVendaNFE_ENVIADA: TSmallintField;
    cdsVendaDATAEMISSAO: TDateField;
    cdsVendaHORAEMISSAO: TTimeField;
    cdsVendaCFOP: TIntegerField;
    cdsVendaCANCEL_DATAHORA: TDateTimeField;
    cdsVendaCANCEL_MOTIVO: TMemoField;
    cdsVendaVERIFICADOR_NFE: TIBStringField;
    cdsVendaXML_NFE_FILENAME: TIBStringField;
    cdsVendaXML_NFE: TMemoField;
    cdsVendaVENDEDOR_COD: TIntegerField;
    cdsVendaUSUARIO: TIBStringField;
    cdsVendaFORMAPAGTO_COD: TSmallintField;
    cdsVendaCONDICAOPAGTO_COD: TSmallintField;
    cdsVendaVENDA_PRAZO: TSmallintField;
    cdsVendaPRAZO_01: TSmallintField;
    cdsVendaPRAZO_02: TSmallintField;
    cdsVendaPRAZO_03: TSmallintField;
    cdsVendaPRAZO_04: TSmallintField;
    cdsVendaPRAZO_05: TSmallintField;
    cdsVendaPRAZO_06: TSmallintField;
    cdsVendaPRAZO_07: TSmallintField;
    cdsVendaPRAZO_08: TSmallintField;
    cdsVendaPRAZO_09: TSmallintField;
    cdsVendaPRAZO_10: TSmallintField;
    cdsVendaPRAZO_11: TSmallintField;
    cdsVendaPRAZO_12: TSmallintField;
    cdsVendaNFE_MODALIDADE_FRETE: TSmallintField;
    cdsVendaNFE_TRANSPORTADORA: TIntegerField;
    cdsVendaNFE_PLACA_VEICULO: TIBStringField;
    cdsVendaNFE_PLACA_UF: TIBStringField;
    cdsVendaNFE_PLACA_RNTC: TIBStringField;
    cdsVendaGERAR_ESTOQUE_CLIENTE: TSmallintField;
    cdsVendaTRANSP_NOME: TIBStringField;
    cdsVendaTRANSP_CNPJ: TIBStringField;
    cdsVendaTRANSP_IEST: TIBStringField;
    cdsVendaTRANSP_ENDERECO: TIBStringField;
    cdsVendaNOME: TIBStringField;
    cdsVendaBLOQUEADO: TSmallintField;
    cdsVendaBLOQUEADO_MOTIVO: TMemoField;
    cdsVendaLUCRO_CALCULADO: TIBBCDField;
    updVenda: TIBUpdateSQL;
    cdsVendaItem: TIBDataSet;
    cdsVendaItemANO: TSmallintField;
    cdsVendaItemCODCONTROL: TIntegerField;
    cdsVendaItemSEQ: TSmallintField;
    cdsVendaItemCODPROD: TIBStringField;
    cdsVendaItemCODEMP: TIBStringField;
    cdsVendaItemCODCLI: TIBStringField;
    cdsVendaItemCODCLIENTE: TIntegerField;
    cdsVendaItemDTVENDA: TDateTimeField;
    cdsVendaItemQTDE: TIBBCDField;
    cdsVendaItemPUNIT: TIBBCDField;
    cdsVendaItemPUNIT_PROMOCAO: TIBBCDField;
    cdsVendaItemDESCONTO: TIBBCDField;
    cdsVendaItemDESCONTO_VALOR: TIBBCDField;
    cdsVendaItemPFINAL: TIBBCDField;
    cdsVendaItemQTDEFINAL: TIBBCDField;
    cdsVendaItemUNID_COD: TSmallintField;
    cdsVendaItemCFOP_COD: TIntegerField;
    cdsVendaItemCST: TIBStringField;
    cdsVendaItemALIQUOTA: TIBBCDField;
    cdsVendaItemALIQUOTA_CSOSN: TIBBCDField;
    cdsVendaItemALIQUOTA_PIS: TIBBCDField;
    cdsVendaItemALIQUOTA_COFINS: TIBBCDField;
    cdsVendaItemVALOR_IPI: TIBBCDField;
    cdsVendaItemPERCENTUAL_REDUCAO_BC: TIBBCDField;
    cdsVendaItemTOTAL_BRUTO: TIBBCDField;
    cdsVendaItemTOTAL_DESCONTO: TIBBCDField;
    cdsVendaItemTOTAL_LIQUIDO: TIBBCDField;
    cdsVendaItemDESCRI: TIBStringField;
    cdsVendaItemUNP_SIGLA: TIBStringField;
    cdsVendaItemCFOP_DESCRICAO: TIBStringField;
    cdsVendaItemCSOSN: TIBStringField;
    cdsVendaItemESTOQUE: TIBBCDField;
    cdsVendaItemRESERVA: TIBBCDField;
    cdsVendaItemMOVIMENTA_ESTOQUE: TSmallintField;
    updVendaItem: TIBUpdateSQL;
    cdsVendaFormaPagto: TIBDataSet;
    cdsVendaFormaPagtoANO_VENDA: TSmallintField;
    cdsVendaFormaPagtoCONTROLE_VENDA: TIntegerField;
    cdsVendaFormaPagtoFORMAPAGTO_COD: TSmallintField;
    cdsVendaFormaPagtoCONDICAOPAGTO_COD: TSmallintField;
    cdsVendaFormaPagtoVENDA_PRAZO: TSmallintField;
    cdsVendaFormaPagtoVALOR_FPAGTO: TIBBCDField;
    cdsVendaFormaPagtoPRAZO_01: TSmallintField;
    cdsVendaFormaPagtoPRAZO_02: TSmallintField;
    cdsVendaFormaPagtoPRAZO_03: TSmallintField;
    cdsVendaFormaPagtoPRAZO_04: TSmallintField;
    cdsVendaFormaPagtoPRAZO_05: TSmallintField;
    cdsVendaFormaPagtoPRAZO_06: TSmallintField;
    cdsVendaFormaPagtoPRAZO_07: TSmallintField;
    cdsVendaFormaPagtoPRAZO_08: TSmallintField;
    cdsVendaFormaPagtoPRAZO_09: TSmallintField;
    cdsVendaFormaPagtoPRAZO_10: TSmallintField;
    cdsVendaFormaPagtoPRAZO_11: TSmallintField;
    cdsVendaFormaPagtoPRAZO_12: TSmallintField;
    updVendaFormaPagto: TIBUpdateSQL;
    cdsVendaVolumexxx: TIBDataSet;
    updVendaVolumexxx: TIBUpdateSQL;
    qryCFOPxxx: TIBDataSet;
    qryProdutoxxx: TIBDataSet;
    cdsVendaDESCONTO_CUPOM: TIBBCDField;
    cdsVendaDESCONTO_TOTAL: TCurrencyField;
    qryUltimoVendaxxx: TIBDataSet;
    cdsVendaNFE_DENEGADA: TSmallintField;
    cdsVendaNFE_DENEGADA_MOTIVO: TIBStringField;
    cdsVendaTituloxxx: TIBDataSet;
    cdsVendaFormaPagtoVALOR_RECEBIDO: TIBBCDField;
    cdsVendaFormaPagtoValorTroco: TCurrencyField;
    cdsVendaNFCexxx: TIBDataSet;
    updVendaNFCexxxx: TIBUpdateSQL;
    cdsVendaNFE_VALOR_TOTAL_PRODUTO: TIBBCDField;
    cdsVendaNFE_VALOR_DESCONTO: TIBBCDField;
    cdsVendaNFE_VALOR_TOTAL_NOTA: TIBBCDField;
    cdsVendaItemCODVENDEDOR: TIntegerField;
    cdsVendaFormaPagtoFORMAPAGTO_DESCRICAO: TIBStringField;
    cdsVendaFormaPagtoCONDICAOPAGTO_DESCRICAO: TIBStringField;
    qryCFOP: TFDQuery;
    FDQuery2: TFDQuery;
    qryProduto: TFDQuery;
    qryUltimoVenda: TFDQuery;
    cdsVendaTitulo: TFDQuery;
    cdsVendaNFCe: TFDQuery;
    updVendaNFCe: TFDUpdateSQL;
    cdsVendaVolume: TFDQuery;
    updVendaVolume: TFDUpdateSQL;
    cdsVendaNFCeEMPRESA: TStringField;
    cdsVendaNFCeANOVENDA: TSmallintField;
    cdsVendaNFCeNUMVENDA: TIntegerField;
    cdsVendaNFCeDATAEMISSAO: TDateField;
    cdsVendaNFCeHORAEMISSAO: TTimeField;
    cdsVendaNFCeSERIE: TStringField;
    cdsVendaNFCeNUMERO: TIntegerField;
    cdsVendaNFCeNFC_NUMERO: TIntegerField;
    cdsVendaNFCeMODELO: TSmallintField;
    cdsVendaNFCeVERSAO: TSmallintField;
    cdsVendaNFCeCHAVE: TStringField;
    cdsVendaNFCePROTOCOLO: TStringField;
    cdsVendaNFCeRECIBO: TStringField;
    cdsVendaNFCeXML_FILENAME: TStringField;
    cdsVendaNFCeXML_FILE: TMemoField;
    cdsVendaNFCeLOTE_ANO: TSmallintField;
    cdsVendaNFCeLOTE_NUM: TIntegerField;
    cdsVendaVolumeANO_VENDA: TSmallintField;
    cdsVendaVolumeCONTROLE_VENDA: TIntegerField;
    cdsVendaVolumeSEQUENCIAL: TSmallintField;
    cdsVendaVolumeNUMERO: TStringField;
    cdsVendaVolumeQUANTIDADE: TSmallintField;
    cdsVendaVolumeESPECIE: TStringField;
    cdsVendaVolumeMARCA: TStringField;
    cdsVendaVolumePESO_BRUTO: TBCDField;
    cdsVendaVolumePESO_LIQUIDO: TBCDField;
    procedure cdsVendaCalcFields(DataSet: TDataSet);
    procedure cdsVendaFormaPagtoCalcFields(DataSet: TDataSet);
    procedure cdsVendaItemSEQGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetUltimaVenda(const Empresa, Usuario : String; const Ano, Status : Smallint) : Integer;
  end;

var
  DMCupom: TDMCupom;

implementation

uses
  UDMBusiness, UDMNFe;

{$R *.dfm}

procedure TDMCupom.cdsVendaCalcFields(DataSet: TDataSet);
begin
  cdsVendaDESCONTO_TOTAL.AsCurrency := cdsVendaDESCONTO.AsCurrency + (cdsVendaDESCONTO_CUPOM.AsCurrency * -1);
end;

function TDMCupom.GetUltimaVenda(const Empresa, Usuario : String; const Ano, Status: Smallint): Integer;
begin
  with qryUltimoVenda do
  begin
    Close;
    ParamByName('empresa').AsString := Empresa;
    ParamByName('usuario').AsString := Usuario;
    ParamByName('ano').AsInteger    := Ano;
    ParamByName('status').AsInteger := Status;
    Open;

    Result := FieldByName('orcamento').AsInteger;
  end;
end;

procedure TDMCupom.cdsVendaFormaPagtoCalcFields(DataSet: TDataSet);
begin
  if ( cdsVendaFormaPagtoVALOR_RECEBIDO.AsCurrency > cdsVendaFormaPagtoVALOR_FPAGTO.AsCurrency ) then
    cdsVendaFormaPagtoValorTroco.AsCurrency := cdsVendaFormaPagtoVALOR_RECEBIDO.AsCurrency - cdsVendaFormaPagtoVALOR_FPAGTO.AsCurrency
  else
    cdsVendaFormaPagtoValorTroco.AsCurrency := 0.0;
end;

procedure TDMCupom.cdsVendaItemSEQGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if not Sender.IsNull then
    Text := IntToStr(Sender.DataSet.RecNo);
end;

end.
