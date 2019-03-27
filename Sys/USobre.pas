unit USobre;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxButtons, dxSkinsCore, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TfrmSobre = class(TForm)
    Panel1: TPanel;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    FileDescription: TLabel;
    ImgLogo: TImage;
    Bevel1: TBevel;
    OKButton: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure LabelTransparente;
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

  procedure ShowAbout(const AOwer : TComponent);

implementation

uses UDMBusiness, UFuncoes, UConstantesDGE;

{$R *.dfm}

procedure ShowAbout(const AOwer : TComponent);
var
  frm : TfrmSobre;
begin
  frm := TfrmSobre.Create(AOwer);
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmSobre.FormCreate(Sender: TObject);
var
  sCNPJ : String;
begin
  if ( ImgLogo.Picture.Height = 0 ) then
    ImgLogo.Picture.Icon := Application.Icon;

  Caption := 'Sobre o ' + GetInternalName;

  if ( StrIsCNPJ(gLicencaSistema.CNPJ) ) then
    sCNPJ := StrFormatarCnpj(gLicencaSistema.CNPJ)
  else
    sCNPJ := StrFormatarCpf(gLicencaSistema.CNPJ);

  ProductName.Caption     := GetInternalName;
  FileDescription.Caption := GetFileDescription;
  {$IFDEF DGE}
  Version.Caption     := 'Vers�o ' + VERSION_NUMBER;
  Copyright.Caption   := '� 2012 | 2014 - Masterdados Tecnologia da Informa��o' + #13 + 'Todos os direitos reservados.';
  {$ELSE}
  Version.Caption      := 'Vers�o ' + GetExeVersion;
  Copyright.Caption    := GetCopyright;
  {$ENDIF}
  Comments.Caption    := 'Licenciado a empresa ' + gLicencaSistema.Empresa + ' CPF/CNPJ.: ' + sCNPJ ;
end;

procedure TfrmSobre.FormShow(Sender: TObject);
begin
  LabelTransparente;
end;

procedure TfrmSobre.LabelTransparente;
var
  I : Integer;
begin
  for I := 0 to Self.ComponentCount - 1 do
    if (Components[I] is TLabel) then
    begin
      TLabel(Components[I]).Transparent := False;
      TLabel(Components[I]).Transparent := True;
    end;
end;

end.
 
