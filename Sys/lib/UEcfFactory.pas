unit UEcfFactory;

interface

Uses
  Classes, UEcfAgil, UEcfWindowsPrinter{$IFDEF PDV}, UEcfBematechNaoFiscal{$ENDIF}, Printers;

  Type
    TFonteImpressao = record
      Nome    : String;
      Tamanho : Integer;
    end;

    TEcfConfiguracao = record
      Impressora       : String;
      ModeloEspecifico : Integer;
      Dll       ,
      Porta     ,
      Empresa   ,
      Endereco  ,
      Bairro    ,
      Fone      ,
      Cep       ,
      Cidade    ,
      Cnpj      ,
      InscEstadual,
      ID       : String;
      ImprimirGliche : Boolean;
      ArquivoLogo   ,
      ArquivoQRCode ,
      SoftHouse ,
      Sistema   ,
      Versao    : String;
      NumeroLinhas : Integer;
      FonteImpressao : TFonteImpressao;
    end;

    TEcfTipo = (ecfPadraoWindows, ecfLPTX, ecfTEXTO, ecfDaruma, ecfBematech, ecfBematechMp2032DLL);
    TEcfBematech = (
        ecfBema_Nenhum
      , ecfBema_MP_20_CI      // 1
      , ecfBema_MP_20_MI      // 2
      , ecfBema_MP_20_TH      // 3
      , ecfBema_MP_2000_CI    // 4
      , ecfBema_MP_2000_TH    // 5
      , ecfBema_MP_2100_TH    // 6
      , ecfBema_MP_4000_TH    // 7
      , ecfBema_MP_4200_TH    // 8
      , ecfBema_MP_2500_TH);  // 9

    TEcfFactory = class
    private
      aEcf : TEcfAgil;
      aConfiguracao : TEcfConfiguracao;
    protected
      constructor Create;
    public
      constructor CriarEcf(const aEcfTipo: TEcfTipo; const aEcfConfiguracao : TEcfConfiguracao);
      destructor Destroy; override;

      property Ecf : TEcfAgil read aEcf;
      property Configuracao : TEcfConfiguracao read aConfiguracao;
    end;

implementation

uses
  UEcfGenerico, SysUtils, Math, Interacao.Versao, Controller.Versao;

{ TEcfFactory }

constructor TEcfFactory.Create;
var
  ver : IVersao;
begin
  inherited Create;

  ver := TVersaoController.GetInstance();

  with aConfiguracao do
  begin
    Impressora       := Printer.Printers.Strings[Printer.PrinterIndex];
    ModeloEspecifico := 0;
    Dll            := EmptyStr;
    Porta          := 'C:\CUPOM.TXT';
    Empresa        := '�GIL SOLU��ES EM SOFTWARES';
    Endereco       := 'Rua Santa Maria, 68';
    Bairro         := 'Icu�-Guajar�';
    Fone           := '(91) 9146.0444';
    Cep            := '67.000-000';
    Cidade         := 'ANANINDEUA / PA';
    Cnpj           := '00.000.000/0000-00';
    InscEstadual   := 'ISENTO';
    ID             := FormatFloat('##00000', RandomRange(1, 99999));
    ImprimirGliche := False;
    ArquivoLogo    := EmptyStr;
    ArquivoQRCode  := EmptyStr;
    SoftHouse      := ver.getPropertyValue(ivCOMPANY_NAME);
    Sistema        := ver.getPropertyValue(ivPRODUCT_NAME);
    Versao         := ver.getPropertyValue(ivPRODUCT_VERSION);
  end;
end;

constructor TEcfFactory.CriarEcf(const aEcfTipo: TEcfTipo; const aEcfConfiguracao : TEcfConfiguracao);
begin
  Self.Create;
  aConfiguracao := aEcfConfiguracao;

  Case aEcfTipo of
    ecfPadraoWindows:
      aEcf := TEcfWindowsPrinter.Criar(
        aConfiguracao.Dll,
        aConfiguracao.Impressora,
        aConfiguracao.ModeloEspecifico,
        aConfiguracao.NumeroLinhas,
        aConfiguracao.FonteImpressao.Nome,
        aConfiguracao.FonteImpressao.Tamanho,
        aConfiguracao.Porta,
        aConfiguracao.Empresa,
        aConfiguracao.Endereco,
        aConfiguracao.Bairro,
        aConfiguracao.Fone,
        aConfiguracao.Cep,
        aConfiguracao.Cidade,
        aConfiguracao.Cnpj,
        aConfiguracao.InscEstadual,
        aConfiguracao.ID,
        aConfiguracao.ArquivoLogo,
        aConfiguracao.ImprimirGliche);

    ecfLPTX, ecfTEXTO:
      aEcf := TEcfGenerico.Criar(
        aConfiguracao.Dll,
        aConfiguracao.Impressora,
        aConfiguracao.ModeloEspecifico,
        aConfiguracao.NumeroLinhas,
        aConfiguracao.FonteImpressao.Nome,
        aConfiguracao.FonteImpressao.Tamanho,
        aConfiguracao.Porta,
        aConfiguracao.Empresa,
        aConfiguracao.Endereco,
        aConfiguracao.Bairro,
        aConfiguracao.Fone,
        aConfiguracao.Cep,
        aConfiguracao.Cidade,
        aConfiguracao.Cnpj,
        aConfiguracao.InscEstadual,
        aConfiguracao.ID,
        aConfiguracao.ArquivoLogo,
        aConfiguracao.ImprimirGliche);

    {$IFDEF PDV}
    ecfBematech, ecfBematechMp2032DLL:
      aEcf := TEcfBematechNaoFiscal.Criar(
        aConfiguracao.Dll,
        aConfiguracao.Impressora,
        aConfiguracao.ModeloEspecifico,
        aConfiguracao.NumeroLinhas,
        aConfiguracao.FonteImpressao.Nome,
        aConfiguracao.FonteImpressao.Tamanho,
        aConfiguracao.Porta,
        aConfiguracao.Empresa,
        aConfiguracao.Endereco,
        aConfiguracao.Bairro,
        aConfiguracao.Fone,
        aConfiguracao.Cep,
        aConfiguracao.Cidade,
        aConfiguracao.Cnpj,
        aConfiguracao.InscEstadual,
        aConfiguracao.ID,
        aConfiguracao.ArquivoLogo,
        aConfiguracao.ImprimirGliche);
    {$ENDIF}

    else
      aEcf := TEcfWindowsPrinter.Criar(
        aConfiguracao.Dll,
        aConfiguracao.Impressora,
        aConfiguracao.ModeloEspecifico,
        aConfiguracao.NumeroLinhas,
        aConfiguracao.FonteImpressao.Nome,
        aConfiguracao.FonteImpressao.Tamanho,
        aConfiguracao.Porta,
        aConfiguracao.Empresa,
        aConfiguracao.Endereco,
        aConfiguracao.Bairro,
        aConfiguracao.Fone,
        aConfiguracao.Cep,
        aConfiguracao.Cidade,
        aConfiguracao.Cnpj,
        aConfiguracao.InscEstadual,
        aConfiguracao.ID,
        aConfiguracao.ArquivoLogo,
        aConfiguracao.ImprimirGliche);
  end;

  aEcf.QRCode   := aConfiguracao.ArquivoQRCode;
end;

destructor TEcfFactory.Destroy;
begin
  if (aEcf <> nil) then
    aEcf.Free;
  inherited;
end;

end.
