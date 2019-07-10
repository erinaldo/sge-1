unit UGeVendaGerarNFe;

interface

uses
  UGrPadrao,

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, cxGraphics, cxLookAndFeels,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLookAndFeelPainters, Menus, cxButtons, cxSpinEdit,
  cxTimeEdit, cxTextEdit,

  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,

  dxSkinsCore, cxControls, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinMcSkin,
  dxSkinOffice2007Green, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TfrmGeVendaGerarNFe = class(TfrmGrPadrao)
    dtsVenda: TDataSource;
    GrpBxControle: TGroupBox;
    lblCodigo: TLabel;
    lblDataHora: TLabel;
    lblSerie: TLabel;
    lblNFe: TLabel;
    lblDataEmissao: TLabel;
    dbCodigo: TDBEdit;
    dbDataHora: TDBEdit;
    dbSerie: TDBEdit;
    dbNFe: TDBEdit;
    dbDataEmissao: TDBEdit;
    lblHoraEmissao: TLabel;
    dbHoraEmissao: TDBEdit;
    Bevel1: TBevel;
    GrpBxImposto: TGroupBox;
    Bevel2: TBevel;
    lblBaseICMS: TLabel;
    dbBaseICMS: TDBEdit;
    lblValorICMS: TLabel;
    dbValorICMS: TDBEdit;
    lblBaseICMSSubs: TLabel;
    dbBaseICMSSubs: TDBEdit;
    lblValorICMSSubs: TLabel;
    dbValorICMSSubs: TDBEdit;
    lblValorPIS: TLabel;
    dbValorPIS: TDBEdit;
    lblTotalProduto: TLabel;
    dbTotalProduto: TDBEdit;
    lblFrete: TLabel;
    dbFrete: TDBEdit;
    lblSeguro: TLabel;
    dbSeguro: TDBEdit;
    lblDesconto: TLabel;
    dbDesconto: TDBEdit;
    lblOutrasDespesas: TLabel;
    dbOutrasDespesas: TDBEdit;
    lblValorIPI: TLabel;
    dbValorIPI: TDBEdit;
    lblValorCOFINS: TLabel;
    dbValorCOFINS: TDBEdit;
    lblTotalNota: TLabel;
    dbTotalNota: TDBEdit;
    lblInforme: TLabel;
    TmrAlerta: TTimer;
    lblDataHoraSaida: TLabel;
    btnCalcular: TcxButton;
    btnConfirmar: TcxButton;
    btnCancelar: TcxButton;
    chkNaoInformarVencimento: TCheckBox;
    edDataSaida: TcxDateEdit;
    edHoraSaida: TcxTimeEdit;
    cdsVenda: TFDQuery;
    updVenda: TFDUpdateSQL;
    cdsVendaANO: TSmallintField;
    cdsVendaCODCONTROL: TIntegerField;
    cdsVendaCODEMP: TStringField;
    cdsVendaCODCLIENTE: TIntegerField;
    cdsVendaCODCLI: TStringField;
    cdsVendaDTVENDA: TSQLTimeStampField;
    cdsVendaDTFINALIZACAO_VENDA: TDateField;
    cdsVendaDATAEMISSAO: TDateField;
    cdsVendaHORAEMISSAO: TTimeField;
    cdsVendaTOTALVENDA_BRUTA: TBCDField;
    cdsVendaDESCONTO: TBCDField;
    cdsVendaTOTALVENDA: TBCDField;
    cdsVendaSERIE: TStringField;
    cdsVendaNFE: TLargeintField;
    cdsVendaCFOP: TIntegerField;
    cdsVendaNFE_DENEGADA: TSmallintField;
    cdsVendaNFE_DENEGADA_MOTIVO: TStringField;
    cdsVendaSTATUS: TSmallintField;
    cdsVendaNFE_VALOR_BASE_ICMS: TBCDField;
    cdsVendaNFE_VALOR_ICMS: TBCDField;
    cdsVendaNFE_VALOR_BASE_ICMS_SUBST: TBCDField;
    cdsVendaNFE_VALOR_ICMS_SUBST: TBCDField;
    cdsVendaNFE_VALOR_TOTAL_PRODUTO: TBCDField;
    cdsVendaNFE_VALOR_FRETE: TBCDField;
    cdsVendaNFE_VALOR_SEGURO: TBCDField;
    cdsVendaNFE_VALOR_DESCONTO: TBCDField;
    cdsVendaNFE_VALOR_TOTAL_II: TBCDField;
    cdsVendaNFE_VALOR_TOTAL_IPI: TBCDField;
    cdsVendaNFE_VALOR_PIS: TBCDField;
    cdsVendaNFE_VALOR_COFINS: TBCDField;
    cdsVendaNFE_VALOR_OUTROS: TBCDField;
    cdsVendaNFE_VALOR_TOTAL_NOTA: TBCDField;
    cdsVendaVALOR_TOTAL_IPI: TBCDField;
    cdsVendaVALOR_TOTAL_BRUTO: TBCDField;
    cdsVendaVALOR_TOTAL_DESCONTO: TBCDField;
    cdsVendaVALOR_TOTAL_LIQUIDO: TBCDField;
    cdsVendaVALOR_BASE_ICMS_NORMAL_ENTRADA: TFMTBCDField;
    cdsVendaVALOR_TOTAL_ICMS_NORMAL_ENTRADA: TFMTBCDField;
    cdsVendaVALOR_BASE_ICMS_NORMAL_SAIDA: TBCDField;
    cdsVendaVALOR_TOTAL_ICMS_NORMAL_SAIDA: TFMTBCDField;
    cdsVendaVALOR_TOTAL_ICMS_NORMAL_DEVIDO: TFMTBCDField;
    cdsVendaVALOR_TOTAL_PIS: TBCDField;
    cdsVendaVALOR_TOTAL_COFINS: TBCDField;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TmrAlertaTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    iSerieNFe,
    iNumeroNFe  : Integer;
    sFileNameXML ,
    sChaveNFE    ,
    sProtocoloNFE,
    sReciboNFE   : String;
    iNumeroLote  : Int64;
    bRetornoErro ,
    bDenegada    : Boolean;
    sDenegadaMotivo : String;
    procedure RecalcularTotalNota;
  public
    { Public declarations }
    procedure RegistrarRotinaSistema; override;
  end;

(*
  Tabelas:
  - TBVENDAS
  - TVENDASITENS
  - TBPRODUTO

  Views:

  Procedures:

*)

var
  frmGeVendaGerarNFe: TfrmGeVendaGerarNFe;

  function GerarNFe(const AOwer : TComponent; Ano : Smallint; Numero : Integer;
    var SerieNFe, NumeroNFe  : Integer; var FileNameXML, ChaveNFE, ProtocoloNFE, ReciboNFE   : String; var NumeroLote  : Int64;
    var Mensagem   : String;
    var ReturnErro : Boolean) : Boolean;

implementation

uses UDMBusiness, UDMNFe, UFuncoes, UGeConsultarLoteNFe_v2;

{$R *.dfm}

function GerarNFe(const AOwer : TComponent; Ano : Smallint; Numero : Integer;
  var SerieNFe, NumeroNFe  : Integer; var FileNameXML, ChaveNFE, ProtocoloNFE, ReciboNFE   : String; var NumeroLote  : Int64;
  var Mensagem   : String;
  var ReturnErro : Boolean) : Boolean;
var
  frm : TfrmGeVendaGerarNFe;
begin
  frm := TfrmGeVendaGerarNFe.Create(AOwer);
  try
    with frm do
    begin
      cdsVenda.Close;
      cdsVenda.ParamByName('anovenda').AsInteger := Ano;
      cdsVenda.ParamByName('numvenda').AsInteger := Numero;
      cdsVenda.Open;

      chkNaoInformarVencimento.Checked := not GetCfopGerarTitulo(cdsVenda.FieldByName('CFOP').AsInteger);

      lblDataEmissao.Visible   := not GetSolicitaDHSaidaNFe( cdsVendaCODEMP.AsString );
      dbDataEmissao.Visible    := not GetSolicitaDHSaidaNFe( cdsVendaCODEMP.AsString );
      lblHoraEmissao.Visible   := not GetSolicitaDHSaidaNFe( cdsVendaCODEMP.AsString );
      dbHoraEmissao.Visible    := not GetSolicitaDHSaidaNFe( cdsVendaCODEMP.AsString );

      lblDataHoraSaida.Visible := GetSolicitaDHSaidaNFe( cdsVendaCODEMP.AsString );
      edDataSaida.Visible      := GetSolicitaDHSaidaNFe( cdsVendaCODEMP.AsString );
      edHoraSaida.Visible      := GetSolicitaDHSaidaNFe( cdsVendaCODEMP.AsString );

      if edDataSaida.Visible then
      begin
        edDataSaida.EditValue := FormatDateTime('dd/mm/yyyy', GetDateTimeDB);
        edHoraSaida.EditValue := FormatDateTime('hh:mm:ss', GetDateTimeDB);
      end;

      if ( not cdsVenda.IsEmpty ) then
      begin
        cdsVenda.Edit;

        cdsVendaNFE_VALOR_BASE_ICMS.Value := cdsVendaVALOR_BASE_ICMS_NORMAL_SAIDA.AsCurrency;
        cdsVendaNFE_VALOR_ICMS.Value      := cdsVendaVALOR_TOTAL_ICMS_NORMAL_SAIDA.AsCurrency;
        cdsVendaNFE_VALOR_BASE_ICMS_SUBST.Value := 0;
        cdsVendaNFE_VALOR_ICMS_SUBST.Value      := 0;
        cdsVendaNFE_VALOR_TOTAL_PRODUTO.Value   := cdsVendaTOTALVENDA_BRUTA.AsCurrency;
        cdsVendaNFE_VALOR_FRETE.Value      := 0;
        cdsVendaNFE_VALOR_SEGURO.Value     := 0;
        cdsVendaNFE_VALOR_DESCONTO.Value   := cdsVendaVALOR_TOTAL_DESCONTO.AsCurrency;
        cdsVendaNFE_VALOR_OUTROS.Value     := 0;
        cdsVendaNFE_VALOR_TOTAL_IPI.Value  := cdsVendaVALOR_TOTAL_IPI.AsCurrency;
        cdsVendaNFE_VALOR_PIS.Value        := cdsVendaVALOR_TOTAL_PIS.AsCurrency;
        cdsVendaNFE_VALOR_COFINS.Value     := cdsVendaVALOR_TOTAL_COFINS.AsCurrency;
        cdsVendaNFE_VALOR_TOTAL_II.Value   := 0;

        RecalcularTotalNota;
      end;

      Result := (ShowModal = mrOk);

      if ( Result ) then
      begin
        SerieNFe     := iSerieNFe;
        NumeroNFe    := iNumeroNFe;
        FileNameXML  := sFileNameXML;
        ChaveNFE     := sChaveNFE;
        ProtocoloNFE := sProtocoloNFE;
        ReciboNFE    := sReciboNFE;
        NumeroLote   := iNumeroLote;
        Mensagem     := Trim(sDenegadaMotivo);
      end;

      ReturnErro := bRetornoErro;
    end;
  finally
    frm.Free;
  end;
end;

procedure TfrmGeVendaGerarNFe.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmGeVendaGerarNFe.RecalcularTotalNota;
begin
  if ( not cdsVenda.IsEmpty ) then
  begin
    if ( cdsVenda.State <> dsEdit ) then
      cdsVenda.Edit;

      cdsVendaDATAEMISSAO.Value := Date;
      cdsVendaHORAEMISSAO.Value := Time;

    cdsVendaNFE_VALOR_TOTAL_NOTA.AsCurrency :=
      cdsVendaTOTALVENDA.AsCurrency           + // <- TOTAL VENDA = (TOTAL VENDA BRUTA - TOTAL DESCONTOS)
      cdsVendaNFE_VALOR_TOTAL_IPI.AsCurrency  +
      cdsVendaNFE_VALOR_ICMS_SUBST.AsCurrency +
      cdsVendaNFE_VALOR_FRETE.AsCurrency      +
      cdsVendaNFE_VALOR_SEGURO.AsCurrency     +
      cdsVendaNFE_VALOR_OUTROS.AsCurrency;
  end;
end;

procedure TfrmGeVendaGerarNFe.btnCalcularClick(Sender: TObject);
begin
  RecalcularTotalNota;
  if ( (dbTotalNota.Visible) and (dbTotalNota.Enabled) ) then
    dbTotalNota.SetFocus;
end;

procedure TfrmGeVendaGerarNFe.btnConfirmarClick(Sender: TObject);
var
  bRT ,
  bOK : Boolean;
  sDH ,
  sSD ,
  sVN ,
  sRecibo   ,
  sVendaID  : String;
  aDataHora : TDateTime;
  aTipoMovimento : TTipoMovimento;
  aFileXML       : TStringList;
begin
(*
  IMR - 29/10/2018 :
    Implementa��o da rotina de tratamento das rejei��es sobre a duplicidade de notas
    fiscais.

  IMR - 09/09/2014 :
    Declara��o dos campos referidos a NF-e DENEGADA para que estas informa��es possam ser gravadas na tabela de venda a apartir dela
    bloquear o cancelamento da venda/nota.
*)

  bOK := False;

  if not GetConectedInternet then
  begin
    ShowWarning('Esta��o de trabalho sem acesso a Internet!');
    Exit;
  end;

  if chkNaoInformarVencimento.Checked then
    sVN := 'Alerta : Os vencimentos n�o ser�o informados na NF-e.' + #13#13
  else
    sVN := EmptyStr;

  DMNFe.LerConfiguracao(cdsVendaCODEMP.AsString, tipoDANFEFast);
  DMNFe.ValidarCnpjDocumento(cdsVendaCODEMP.AsString);
  if (Copy(DMNFe.GetCnpjCertificado, 1, 8) <> Copy(gUsuarioLogado.Empresa, 1, 8)) then
//  if (DMNFe.GetCnpjCertificado <> gUsuarioLogado.Empresa) then
  begin
    ShowWarning('A Empresa selecionada no login do sistema n�o est� de acordo com o Certificado informado!');
    Exit;
  end;

  if ( ShowConfirm(sVN + 'Confirma a gera��o da NF-e?') ) then
  begin
    sDH := FormatDateTime('dd/mm/yyyy', cdsVendaDATAEMISSAO.AsDateTime) + ' ' +
      FormatDateTime('hh:mm:ss', cdsVendaHORAEMISSAO.AsDateTime);
    sSD := FormatDateTime('dd/mm/yyyy', edDataSaida.Date) + ' ' +
      FormatDateTime('hh:mm:ss', edHoraSaida.Time);

    // Validar Data/Hora de sa�da na NF-e
    if edDataSaida.Visible and (Trim(edDataSaida.EditValue) <> EmptyStr) and TryStrToDateTime(Trim(sSD), aDataHora) then
    begin
      if not StrIsDateTime(sSD) then
      begin
        ShowWarning('Data/Hora de sa�da inv�lida!');
        edDataSaida.SetFocus;
        Exit;
      end
      else
      if ( StrToDateTime(sSD) < StrToDateTime(sDH) ) then
      begin
        ShowWarning('Data/Hora de sa�da n�o pode ser menor que da Data/Hora de emiss�o da NF-e!');
        edDataSaida.SetFocus;
        Exit;
      end;
    end;

    if ( cdsVenda.State = dsEdit ) then
    begin
      cdsVenda.Post;
      cdsVenda.ApplyUpdates;
      CommitTransaction;
    end;

    lblInforme.Visible := True;
    lblInforme.Caption := 'Gerando NF-e junto a SEFA. Aguarde . . . ';
    TmrAlerta.Enabled  := True;

    Application.ProcessMessages;

    if edDataSaida.Visible and (Trim(edDataSaida.Text) <> EmptyStr) and TryStrToDateTime(Trim(sSD), aDataHora) then
      sDH := Trim(sSD)
    else
      sDH := EmptyStr;

    bDenegada       := False;
    sDenegadaMotivo := EmptyStr;

    if ( DMNFe.GerarNFeOnLine(cdsVendaCODEMP.AsString) ) then
      bOK := DMNFe.GerarNFeOnLineACBr ( cdsVendaCODEMP.AsString, cdsVendaCODCLIENTE.AsInteger, sDH,
               cdsVendaANO.AsInteger, cdsVendaCODCONTROL.AsInteger,
               iSerieNFe, iNumeroNFe, sFileNameXML,
               sChaveNFE, sProtocoloNFE, sReciboNFE, iNumeroLote, bDenegada, sDenegadaMotivo,
               chkNaoInformarVencimento.Checked, False)
    else
      bOK := DMNFe.GerarNFeOffLineACBr( cdsVendaCODEMP.AsString, cdsVendaCODCLIENTE.AsInteger, sDH,
               cdsVendaANO.AsInteger, cdsVendaCODCONTROL.AsInteger,
               iSerieNFe, iNumeroNFe, sFileNameXML, sChaveNFE,
               chkNaoInformarVencimento.Checked, False);

    if bDenegada then
    begin
      cdsVenda.Edit;

      cdsVendaNFE_DENEGADA.AsInteger       := 1;
      cdsVendaNFE_DENEGADA_MOTIVO.AsString := AnsiUpperCase(Trim(sDenegadaMotivo));

      cdsVenda.Post;
      cdsVenda.ApplyUpdates;
      cdsVenda.CommitUpdates;

      CommitTransaction;
    end;

    if not bOk then
    begin
      // Refei��o: Duplicidade de NF-e [nRec:999999999999999]
      // 1. Verificar se a mensagem de rejei��o � sobre a duplica��o da NF-e.
      // 2. Pegar o n�mero de recibo retornado e buscar na SEFA a NF-e correspondente
      // 3. Identificar a venda nesta NF-e encontrada
      // 4. Comparar a venda encontrada com a venda corrente
      // 5. Se as vendas forem iguais, colocar [nRec:999999999999999] na venda corrente

      if ((DMNFe.MensagemErro) <> EmptyStr) then
      begin
        bRetornoErro := True;
        aFileXML := TStringList.Create;
        try
          if (Pos('Duplicidade', DMNFe.MensagemErro) > 0) then   // Passo 1
          begin
            sRecibo := StrOnlyNumbers( Copy(DMNFe.MensagemErro,  // Passo 2.1
              Pos('[nRec:', DMNFe.MensagemErro),
              Pos(']', DMNFe.MensagemErro)) );
            if ((Trim(sRecibo) <> EmptyStr) and (Trim(sRecibo) <> '000000000000000')) then // Passo 2.2
            begin
              bRT := BuscarRetornoReciboNFe(Self
                , cdsVendaCODEMP.AsString
                , Trim(sRecibo)
                , iSerieNFe
                , iNumeroNFe
                , sFileNameXML
                , sChaveNFE
                , sProtocoloNFE
                , aTipoMovimento);

              if bRT and (aTipoMovimento = tmNFeSaida) then
              begin
                // Analisar o nome do arquivo XML retornado
                if (Trim(sFileNameXML) = EmptyStr) or (not FileExists(sFileNameXML)) then
                  sFileNameXML := DMNFe.GetDiretorioXmlNFe + sChaveNFE + '-nfe.xml';

                if FileExists(sFileNameXML) then                         // Passo 3
                begin
                  aFileXML.LoadFromFile(sFileNameXML);
                  sVendaID := 'Venda: ' + cdsVenda.FieldByName('ANO').AsString + '/' + FormatFloat('###0000000', cdsVenda.FieldByName('CODCONTROL').AsInteger);
                  if (Pos(sVendaID, aFileXML.Text) > 0) then             // Passo 3, 4
                  begin
                    sReciboNFE  := Trim(sRecibo);
                    iNumeroLote := iNumeroNFe;
                    DMNFe.GuardarLoteNFeVenda(
                        cdsVendaCODEMP.AsString
                      , cdsVenda.FieldByName('ANO').AsInteger
                      , cdsVenda.FieldByName('CODCONTROL').AsInteger
                      , iNumeroLote
                      , sReciboNFE);                                     // Passo 5

                    bRetornoErro := False;
                  end;
                end;
              end;
            end;
          end;
        finally
          aFileXML.Free;
        end;
      end;

    end;

    TmrAlerta.Enabled  := False;
    lblInforme.Visible := False;

    if ( bOK ) then
      ModalResult := mrOk
    else
      ModalResult := mrCancel;
  end;
end;

procedure TfrmGeVendaGerarNFe.FormCreate(Sender: TObject);
begin
  inherited;
  iSerieNFe     := 0;
  iNumeroNFe    := 0;
  sFileNameXML  := EmptyStr;
  sChaveNFE     := EmptyStr;
  sProtocoloNFE := EmptyStr;
  sReciboNFE    := EmptyStr;
  iNumeroLote   := 0;
  bRetornoErro  := False;
  lblInforme.Caption := EmptyStr;
end;

procedure TfrmGeVendaGerarNFe.TmrAlertaTimer(Sender: TObject);
begin
  lblInforme.Visible := not lblInforme.Visible;
end;

procedure TfrmGeVendaGerarNFe.FormShow(Sender: TObject);
begin
  inherited;
  if ( edDataSaida.Visible and edDataSaida.Enabled ) then
    edDataSaida.SetFocus;
end;

procedure TfrmGeVendaGerarNFe.RegistrarRotinaSistema;
begin
  ;
end;

end.
