unit UGrAutoUpgrade;

interface

uses
  blcksock,
  Winapi.ShellAPI,
  ACBrBase,
  ACBrDownload,
  ACBrDownloadClass,

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, auHTTP, auAutoUpgrader,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, dxGDIPlusClasses;

type
  TfrmGeAutoUpgrade = class(TForm)
    Label1: TLabel;
    lblProgresso: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    lblURLApp: TLabel;
    lblURLInfo: TLabel;
    btnVerificarUpgrade: TButton;
    prgBrAtualizacao: TProgressBar;
    AutoUpgraderPro: TauAutoUpgrader;
    auHTTP: TauHTTP;
    imgUpgrade: TImage;
    ACBrDownload: TACBrDownload;
    procedure btnVerificarUpgradeClick(Sender: TObject);
    procedure AutoUpgraderProProgress(Sender: TObject; const FileURL: string;
      FileSize, BytesRead, ElapsedTime, EstimatedTimeLeft: Integer;
      PercentsDone, TotalPercentsDone: Byte; TransferRate: Single);
    procedure FormCreate(Sender: TObject);
    procedure AutoUpgraderProAborted(Sender: TObject);
    procedure AutoUpgraderProNoUpdateAvailable(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AutoUpgraderProFileDone(Sender: TObject; const FileName: string);
    procedure FormShow(Sender: TObject);
    procedure AutoUpgraderProEndUpgrade(Sender: TObject; var RestartImediately: Boolean);
    procedure lblURLInfoClick(Sender: TObject);
    procedure lblURLAppClick(Sender: TObject);
    procedure ACBrDownloadHookStatus(Sender: TObject; Reason: THookSocketReason; const BytesToDownload,
      BytesDownloaded: Integer);
    procedure ACBrDownloadHookMonitor(Sender: TObject; const BytesToDownload, BytesDownloaded: Integer;
      const AverageSpeed: Double; const Hour, Min, Sec: Word);
    procedure ACBrDownloadAfterDownload(Sender: TObject);
  private
    { Private declarations }
    aFileInfoVersion : TFileName;
    ArquivosBaixados : TStringList;
    procedure LabelTransparente;
    procedure GerarUpgrade;

    procedure BaixarInfo;
    procedure BaixarArquivo(const aUrl, aFileName : String);
    procedure BaixarAtualizacao;

    function ObterVersaoHTTP : String;
    function ObterMessageHTTP : String;
    function ObterIdVersaoHTTP(const sVersao : String) : Currency;
  public
    { Public declarations }
  end;

var
  frmGeAutoUpgrade : TfrmGeAutoUpgrade;

const
  UPGRADE_AGIL = 'UpgradeAgil.exe';

  procedure AtivarUpgradeAutomatico;

implementation

{$R *.dfm}

uses
  auUtils,
  UFuncoes,
  UConstantesDGE,
  UDMBusiness,
  uDMRecursos;

procedure AtivarUpgradeAutomatico;
var
  aSistema : TFileName;
begin
  if FormFunction.EstaAberto('frmGeAutoUpgrade') or Assigned(frmGeAutoUpgrade) then
    Exit;

  try
    try

      frmGeAutoUpgrade := TfrmGeAutoUpgrade.Create(Application);
      //frmGeAutoUpgrade.AutoUpgraderPro.AutoCheck := True;

      with frmGeAutoUpgrade do
      begin
        BaixarInfo;
        aSistema := ParamStr(0);
        if GetExeVersionID(aSistema) < ObterIdVersaoHTTP(ObterVersaoHTTP) then
          if ShowConfirmation(Caption, ObterMessageHTTP + #13#13 + 'Deseja atualizar agora o sistema?') then
            BaixarAtualizacao;
      end;

    except
    end;
  finally
    if Assigned(frmGeAutoUpgrade) then
      frmGeAutoUpgrade.Free;
  end;
end;

procedure TfrmGeAutoUpgrade.GerarUpgrade;
var
  aFileTMP ,
  aFileNEW ,
  aFileOLD ,
  sCommand : String;
  aCommand : TStringList;
  I : Integer;
begin
  if Assigned(ArquivosBaixados) then
    if (ArquivosBaixados.Count > 0) then
    begin
      sCommand := ExtractFilePath(ParamStr(0)) + 'Upgrades.bat';
      aCommand := TStringList.Create;
      try
        aCommand.Add('pause');              // PROVIS�RIO
        aCommand.Add('attrib /s /d -s -h'); // Desocultar arquivos

        for I := ArquivosBaixados.Count - 1 DownTo 0 do
        begin
          aFileTMP := ExtractFileName(ArquivosBaixados.Strings[I]);
          aFileNEW := StringReplace(aFileTMP, '.uTMP', '', [rfReplaceAll]);
          aFileOLD := aFileNEW + '.old';

          if FileExists(aFileOLD) then aCommand.Add('del ' + aFileOLD + ' /s');             // Deletar arquivo antigo
          if FileExists(aFileNEW) then aCommand.Add('rename ' + aFileNEW + ' ' + aFileOLD); // Renomear arquivo atual para guard�-lo
          if FileExists(aFileTMP) then aCommand.Add('rename ' + aFileTMP + ' ' + aFileNEW); // Renomear novo arquivo para disponibiliz�-lo
        end;

        aCommand.Add('pause');              // PROVIS�RIO
        aCommand.SaveToFile(sCommand);
      finally
        aCommand.Free;
      end;
    end;
end;

procedure TfrmGeAutoUpgrade.AutoUpgraderProAborted(Sender: TObject);
begin
  lblProgresso.Caption      := 'Atualiza��o abortada!';
  prgBrAtualizacao.Position := 0;
end;

procedure TfrmGeAutoUpgrade.AutoUpgraderProEndUpgrade(Sender: TObject; var RestartImediately: Boolean);
begin
  ; //Self.GerarUpgrade;
end;

procedure TfrmGeAutoUpgrade.AutoUpgraderProFileDone(Sender: TObject;
  const FileName: string);
var
  sFileName : String;
begin
  // Artif�cio para baixar arquivos de extens�o *._DLL, pois determinados
  // servidores Web impedem a publica��o de arquivos *.dll.
  // Observa��o: A extens�o "uTMP" pertence ao algor�timo de download dos arquivos.
  if ( Pos('._dll.uTMP', FileName) > 0 ) then
  begin
    sFileName := StringReplace(FileName, '._dll.uTMP', '.dll.uTMP', []);
    RenameFile(FileName, sFileName);
    ArquivosBaixados.Add(sFileName);
  end
  else
    ArquivosBaixados.Add(FileName);

  // Instalar fontes no Windows
  if ( Pos('.TTF.uTMP', FileName) > 0 ) then
    InstalarFonteWindows(SYS_BAUHS93, SYS_BAUHS93_DESCRIPTION);
end;

procedure TfrmGeAutoUpgrade.AutoUpgraderProNoUpdateAvailable(Sender: TObject);
begin
  lblProgresso.Caption := 'Sem atualiza��o!';
end;

procedure TfrmGeAutoUpgrade.AutoUpgraderProProgress(Sender: TObject;
  const FileURL: string; FileSize, BytesRead, ElapsedTime,
  EstimatedTimeLeft: Integer; PercentsDone, TotalPercentsDone: Byte;
  TransferRate: Single);
begin
  lblProgresso.Caption      := 'Baixando de ' + QuotedStr(FileURL) + '...';
  prgBrAtualizacao.Position := PercentsDone;
end;

procedure TfrmGeAutoUpgrade.BaixarArquivo(const aUrl, aFileName: String);
begin
  ACBrDownload.DownloadUrl     := aUrl;
  ACBrDownload.DownloadNomeArq := aFileName + '_v' + ObterVersaoHTTP + Copy(aUrl, Length(aUrl) - 3, 4);
  ACBrDownload.DownloadDest    := '.\';

  DeleteFile('.\' + ACBrDownload.DownloadNomeArq);
  DeleteFile('.\' + ACBrDownload.DownloadNomeArq + '.part');

  ACBrDownload.StartDownload;
end;

procedure TfrmGeAutoUpgrade.BaixarInfo;
begin
  ACBrDownload.DownloadUrl     := lblURLInfo.Caption;
  ACBrDownload.DownloadNomeArq := 'VersaoHTTP_' + GetInternalName + '.inf';
  ACBrDownload.DownloadDest    := '.\';
  ACBrDownload.StartDownload;

  aFileInfoVersion := ExtractFilePath(ParamStr(0)) + ACBrDownload.DownloadNomeArq;
end;

procedure TfrmGeAutoUpgrade.BaixarAtualizacao;
begin
  //ACBrDownload.DownloadUrl     := 'http://' + DOWNLOAD_URL_AGIL_SOFTWARES_UPGRADE + 'AtualizarSistemasAgil.exe';
  ACBrDownload.DownloadUrl     := 'http://' + DOWNLOAD_URL_GERASYS_TI_DRH_UPGRADE + 'AtualizarSistemasAgil.exe';
  ACBrDownload.DownloadNomeArq := UPGRADE_AGIL;
  ACBrDownload.DownloadDest    := '.\';

  DeleteFile('.\' + ACBrDownload.DownloadNomeArq);
  DeleteFile('.\' + ACBrDownload.DownloadNomeArq + '.part');

  ACBrDownload.StartDownload;
end;

procedure TfrmGeAutoUpgrade.btnVerificarUpgradeClick(Sender: TObject);
var
  aSistema : TFileName;
begin
  aSistema := ParamStr(0);

  BaixarInfo;
  if GetExeVersionID(aSistema) > ObterIdVersaoHTTP(ObterVersaoHTTP) then
  begin
    lblProgresso.Caption := 'Nenhuma vers�o nova dispon�vel!';
    ShowInformation(Self.Caption, 'Nenhuma vers�o nova dispon�vel!' + #13 + 'Voc� est� com a vers�o mais atual do sistema.');
  end
  else
  if ShowConfirmation(Self.Caption, ObterMessageHTTP + #13#13 + 'Deseja atualizar agora o sistema?') then
    BaixarAtualizacao;

//  lblProgresso.Caption := 'Verificando atualiza��o...';
//  AutoUpgraderPro.CheckUpdate;
end;

procedure TfrmGeAutoUpgrade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AutoUpgraderPro.AutoCheck := False;
  Action := caFree;
end;

procedure TfrmGeAutoUpgrade.FormCreate(Sender: TObject);
var
  sAppName : String;
const
//  URL_EXE = 'http://' + DOWNLOAD_URL_AGIL_SOFTWARES_UPGRADE + '%s.exe';
//  URL_INF = 'http://' + DOWNLOAD_URL_AGIL_SOFTWARES_UPGRADE + '%s_Upgrade.inf';
//  URL_EXE = 'http://' + DOWNLOAD_URL_HOME_AUTOMACAO_UPGRADE + '%s.exe';
//  URL_INF = 'http://' + DOWNLOAD_URL_HOME_AUTOMACAO_UPGRADE + '%s_Upgrade.inf';
  URL_EXE = 'http://' + DOWNLOAD_URL_GERASYS_TI_DRH_UPGRADE + '%s.exe';
  URL_INF = 'http://' + DOWNLOAD_URL_GERASYS_TI_DRH_UPGRADE + '%s_Upgrade.inf';
begin
  sAppName := GetInternalName;

  lblURLApp.Caption  := Format(URL_EXE, [sAppName]);
  lblURLApp.Hint     := sAppName;
  lblURLInfo.Caption := Format(URL_INF, [sAppName]);
  aFileInfoVersion   := EmptyStr;

  AutoUpgraderPro.InfoFileURL   := lblURLInfo.Caption;
  AutoUpgraderPro.VersionNumber := GetFileVersion;
  AutoUpgraderPro.VersionDate   := GetReleaseDate;

  ArquivosBaixados := TStringList.Create;
  ArquivosBaixados.Clear;
end;

procedure TfrmGeAutoUpgrade.FormShow(Sender: TObject);
begin
  LabelTransparente;
end;

procedure TfrmGeAutoUpgrade.LabelTransparente;
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

procedure TfrmGeAutoUpgrade.lblURLAppClick(Sender: TObject);
begin
  BaixarInfo;
  BaixarArquivo(TLabel(Sender).Caption, TLabel(Sender).Hint);
end;

procedure TfrmGeAutoUpgrade.lblURLInfoClick(Sender: TObject);
begin
  OpenURL(TLabel(Sender).Caption, True);
end;

function TfrmGeAutoUpgrade.ObterIdVersaoHTTP(const sVersao: String): Currency;
var
  I : Integer;
  sVersaoID : String;
  aVersao   : TArray<String>;
  aRetorno  : Currency;
begin
  aVersao   := sVersao.Split(['.'], 4);
  sVersaoID := EmptyStr;

  for I := Low(aVersao) to High(aVersao) do
    sVersaoID := sVersaoID + FormatFloat('00', StrToIntDef(aVersao[I], 0));

  Result := StrToCurrDef(sVersaoID, 0);
end;

function TfrmGeAutoUpgrade.ObterMessageHTTP: String;
var
  aRetorno : String;
  aInfo : TStringList;
  I : Integer;
  aLer : Boolean;
begin
  aRetorno := EmptyStr;

  if FileExists(aFileInfoVersion) then
  begin
    aInfo := TStringList.Create;
    aLer  := False;
    try
      aInfo.LoadFromFile(aFileInfoVersion);
      for I := 0 to aInfo.Count - 1 do
      begin
        if not aLer then
          aLer := (Pos('#message=', aInfo.Strings[I]) > 0);

        if aLer then
        begin
          if (aRetorno = EmptyStr) then
            aRetorno := 'Vers�o ' + ObterVersaoHTTP + #13 + aInfo.Strings[I] + #13
          else
            aRetorno := aRetorno + #13 + aInfo.Strings[I];

          if (Pos('}', aInfo.Strings[I]) > 0) then
            aLer := False;
        end;
      end;

      aRetorno := StringReplace(aRetorno, '#message={', '', [rfReplaceAll]);
      aRetorno := StringReplace(aRetorno, '}', '', [rfReplaceAll]);

    finally
      aInfo.Free;
    end;
  end;

  Result := aRetorno;
end;

function TfrmGeAutoUpgrade.ObterVersaoHTTP : String;
var
  aRetorno : String;
  aInfo : TStringList;
  I : Integer;
begin
  aRetorno := EmptyStr;

  if FileExists(aFileInfoVersion) then
  begin
    aInfo := TStringList.Create;
    try
      aInfo.LoadFromFile(aFileInfoVersion);
      for I := 0 to aInfo.Count - 1 do
      begin
        if (Pos('#version=', aInfo.Strings[I]) > 0) then
        begin
          aRetorno := StringReplace(aInfo.Strings[I], '#version=', '', [rfReplaceAll]);
          Break;
        end;
      end;
    finally
      aInfo.Free;
    end;
  end;

  Result := aRetorno;
end;

procedure TfrmGeAutoUpgrade.ACBrDownloadAfterDownload(Sender: TObject);
var
  aComando : String;
begin
  if (ACBrDownload.DownloadNomeArq = UPGRADE_AGIL) then
  begin
    aComando := UPGRADE_AGIL + ' ' + GetInternalName;
    ShowInformation('Atualiza��o Agil', 'Esta aplica��o ser� fechada para que o processo de atualiza��o seja iniciado.');
    Application.Terminate;

    ShellExecute(Handle, 'Open', PChar(aComando), '', '', SW_NORMAL);
  end;
end;

procedure TfrmGeAutoUpgrade.ACBrDownloadHookMonitor(Sender: TObject; const BytesToDownload,
  BytesDownloaded: Integer; const AverageSpeed: Double; const Hour, Min, Sec: Word);
var
  sConnectionInfo: string;
begin
  lblProgresso.Caption := ACBrDownload.DownloadNomeArq;
  prgBrAtualizacao.Position := BytesDownloaded;

  sConnectionInfo := sConnectionInfo + ' - Tempo Restante: ' +
                     Format('%.2d:%.2d:%.2d', [Sec div 3600, (Sec div 60) mod 60, Sec mod 60]);

  sConnectionInfo := FormatFloat('0.00 KB/s'  , AverageSpeed) + sConnectionInfo;
  sConnectionInfo := FormatFloat('###,###,##0', BytesDownloaded / 1024) + ' / ' +
                     FormatFloat('###,###,##0', BytesToDownload / 1024) + ' KB - Velocidade: ' + sConnectionInfo;

  lblProgresso.Caption := sConnectionInfo;
end;

procedure TfrmGeAutoUpgrade.ACBrDownloadHookStatus(Sender: TObject; Reason: THookSocketReason;
  const BytesToDownload, BytesDownloaded: Integer);
begin
  case Reason of
    HR_Connect :
    begin
      prgBrAtualizacao.Position   := 0;
      btnVerificarUpgrade.Enabled := False;
      lblURLApp.Enabled := False;
    end;

   HR_ReadCount :
     begin
       prgBrAtualizacao.Max        := BytesToDownload;
       prgBrAtualizacao.Position   := BytesDownloaded;
     end;

   HR_SocketClose :
     begin
       case ACBrDownload.DownloadStatus of
         TDownloadStatus.stStop :
           begin
             prgBrAtualizacao.Position := 0;
             lblProgresso.Caption := 'Download Encerrado...';
           end;

         TDownloadStatus.stPause :
           lblProgresso.Caption := 'Download Pausado...';

         TDownloadStatus.stDownload :
           lblProgresso.Caption := 'Download Finalizado - Arquivo: ' + ACBrDownload.DownloadNomeArq;
       end;

       btnVerificarUpgrade.Enabled := True;
       lblURLApp.Enabled := True;
     end;
  end;
end;

initialization
  FormFunction.RegisterForm('frmGeAutoUpgrade', TfrmGeAutoUpgrade);

end.
