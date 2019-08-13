unit untSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, untdmPakhsh, msgs,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvSmoothButton, AdvSmoothPanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox, cxRadioGroup, Vcl.Mask, AdvEdit, AdvIPEdit;

Type
  TSetting = Record
    StatusType: byte;
    IPAddressFromServer: string[15];
    PortAddressFromServer: string[5];
    IPAddressFromClient: string[15];
    PortAddressFromClient: String[5];
    IPAddressFromInternet: string[15];
    PortAddressFromInternet: String[5];

    NotifyByAcceptReqest: Boolean;
    NotifyByUnAcceptRequest: Boolean;
    NotifyByStuffSend: Boolean;

  End;

Var
  GSetting: Tsetting;


type
  TfrmSetting = class(TForm)
    AdvSmoothPanel1: TAdvSmoothPanel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    btnClose: TAdvSmoothButton;
    btnOK: TAdvSmoothButton;
    pnlStatusVersion: TAdvSmoothPanel;
    pnlNotify: TAdvSmoothPanel;
    Label3: TLabel;
    pnlServer: TAdvSmoothPanel;
    lblServerAddress: TLabel;
    lblPortServer: TLabel;
    Label6: TLabel;
    edtPortServer: TEdit;
    IpAddressServer: TAdvIPEdit;
    rbServer: TcxRadioButton;
    rbClient: TcxRadioButton;
    Label7: TLabel;
    pnlInternet: TAdvSmoothPanel;
    lblInternetAddress: TLabel;
    lblPortInternet: TLabel;
    Label10: TLabel;
    edtPortInternet: TEdit;
    IpAddressInternet: TAdvIPEdit;
    chkNotifyAccept: TcxCheckBox;
    chkUnAccept: TcxCheckBox;
    chkSended: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    rbInternet: TcxRadioButton;
    pnlClient: TAdvSmoothPanel;
    lblClientAddress: TLabel;
    lblPortClient: TLabel;
    Label11: TLabel;
    edtPortClient: TEdit;
    IpAddressClient: TAdvIPEdit;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbServerClick(Sender: TObject);
    procedure rbClientClick(Sender: TObject);
    procedure rbInternetClick(Sender: TObject);
  private
    procedure SeaveStatusInFile;
    procedure SaveAllSettingInDB;
    procedure SetSettingOnForm;
    procedure SetAccessContol;
  public
    procedure GetStatusFromFile;
    procedure GetAllSettingFromDB;
  end;


implementation

{$R *.dfm}

procedure TfrmSetting.btnOKClick(Sender: TObject);
begin
  SeaveStatusInFile;
  SaveAllSettingInDB;

  InformationMessage('تنظیمات با موفقیت ثبت شد');
  GetStatusFromFile;
  GetAllSettingFromDB;
  SetSettingOnForm;
end;

procedure TfrmSetting.FormShow(Sender: TObject);
begin
  GetStatusFromFile;
  GetAllSettingFromDB;

  SetSettingOnForm;
  SetAccessContol;
end;

procedure TfrmSetting.GetAllSettingFromDB;
begin
  try
    with GSetting do
    begin
      IPAddressFromServer := dmPakhsh.GetSettingValue(SETTING_IP_ADDRESS_FROM_SERVER);
      IPAddressFromClient := dmPakhsh.GetSettingValue(SETTING_IP_ADDRESS_FROM_CLIENT);
      IPAddressFromInternet :=  dmPakhsh.GetSettingValue(SETTING_IP_ADDRESS_FROM_INTERNET);

      PortAddressFromServer := dmPakhsh.GetSettingValue(SETTING_PORT_NUMBER_FROM_SERVER);
      PortAddressFromClient := dmPakhsh.GetSettingValue(SETTING_PORT_NUMBER_FROM_CLIENT);
      PortAddressFromInternet := dmPakhsh.GetSettingValue(SETTING_PORT_NUMBER_FROM_INTERNET);

      NotifyByAcceptReqest := strtobool(dmPakhsh.GetSettingValue(SETTING_NOTIFY_BY_ACCEPT));
      NotifyByUnAcceptRequest := strtobool(dmPakhsh.GetSettingValue(SETTING_NOTIFY_BY_UNACCEPT));
      NotifyByStuffSend := strtobool(dmPakhsh.GetSettingValue(SETTING_NOTIFY_BY_SEND));
    end;
  except
    ErrorMessage('تنظیمات ثبت نشده است');
  end;

end;

procedure TfrmSetting.GetStatusFromFile;
var
  myFile: TextFile;
  lCurDir, lData: string;
begin
  GSetting.StatusType := 0;
  lCurDir := GetCurrentDir;
  AssignFile(myFile,  lCurDir + '/RunStatusType.Ini');
  try
    Reset(myFile);
    Readln(myFile, lData);
    CloseFile(myFile);
  except

  end;
  if (lData = '1') or (lData = '2') or (lData = '3') then
    GSetting.StatusType := strtoint(lData);
end;

procedure TfrmSetting.rbClientClick(Sender: TObject);
begin
  SetAccessContol;
end;

procedure TfrmSetting.rbInternetClick(Sender: TObject);
begin
  SetAccessContol;
end;

procedure TfrmSetting.rbServerClick(Sender: TObject);
begin
  SetAccessContol;
end;

procedure TfrmSetting.SaveAllSettingInDB;
begin
  if rbServer.Checked then
  begin
    dmPakhsh.SetSettingValue(SETTING_IP_ADDRESS_FROM_SERVER, IpAddressServer.IPAddress);
    dmPakhsh.SetSettingValue(SETTING_PORT_NUMBER_FROM_SERVER, edtPortServer.Text);
  end
  else if rbClient.Checked then
  begin
    dmPakhsh.SetSettingValue(SETTING_IP_ADDRESS_FROM_CLIENT, IPAddressClient.IPAddress);
    dmPakhsh.SetSettingValue(SETTING_PORT_NUMBER_FROM_CLIENT, edtPortClient.Text);
  end
  else if rbInternet.Checked then
  begin
    dmPakhsh.SetSettingValue(SETTING_IP_ADDRESS_FROM_INTERNET, IPAddressInternet.IPAddress);
    dmPakhsh.SetSettingValue(SETTING_PORT_NUMBER_FROM_INTERNET, edtPortInternet.Text);
  end;

  dmPakhsh.SetSettingValue(SETTING_NOTIFY_BY_ACCEPT, boolToStr(chkNotifyAccept.Checked));
  dmPakhsh.SetSettingValue(SETTING_NOTIFY_BY_UNACCEPT, boolToStr(chkUnAccept.Checked));
  dmPakhsh.SetSettingValue(SETTING_NOTIFY_BY_SEND, boolToStr(chkSended.Checked));
end;

procedure TfrmSetting.SeaveStatusInFile;
var
  lStatusTypeNumber: byte;
  myFile: TextFile;
  lCurDir: string;
begin
  if rbServer.Checked then
    lStatusTypeNumber := 1
  else if rbClient.Checked then
    lStatusTypeNumber := 2
  else
    lStatusTypeNumber := 3;

  lCurDir := GetCurrentDir;
  AssignFile(myFile,  lCurDir + '/RunStatusType.Ini');
  ReWrite(myFile);
  WriteLn(myFile, inttostr(lStatusTypeNumber));
  CloseFile(myFile);

  GSetting.StatusType := lStatusTypeNumber;
end;

procedure TfrmSetting.SetAccessContol;
begin
  pnlServer.Enabled := rbServer.Checked;
  IpAddressServer.Enabled := rbServer.Checked;
  edtPortServer.Enabled := rbServer.Checked;
  lblServerAddress.Enabled := rbServer.Checked;
  lblPortServer.Enabled := rbServer.Checked;

  pnlClient.Enabled := rbClient.Checked;
  IpAddressClient.Enabled := rbClient.Checked;
  edtPortClient.Enabled := rbClient.Checked;
  lblClientAddress.Enabled := rbClient.Checked;
  lblPortInternet.Enabled := rbClient.Checked;

  pnlInternet.Enabled := rbInternet.Checked;
  IpAddressInternet.Enabled := rbInternet.Checked;
  edtPortInternet.Enabled := rbInternet.Checked;
  lblInternetAddress.Enabled := rbInternet.Checked;
  lblPortInternet.Enabled := rbInternet.Checked;
end;

procedure TfrmSetting.SetSettingOnForm;
begin
  with GSetting do
  begin
    rbServer.Checked := StatusType = 1;
    rbClient.Checked := StatusType = 2;
    rbInternet.Checked := StatusType = 3;

    ipAddressServer.IPAddress := IPAddressFromServer;
    ipAddressClient.IPAddress := IPAddressFromClient;
    ipAddressInternet.IPAddress := IPAddressFromInternet;

    edtPortServer.Text := PortAddressFromServer;
    edtPortClient.Text := PortAddressFromClient;
    edtPortInternet.Text := PortAddressFromInternet;

    chkNotifyAccept.Checked := NotifyByAcceptReqest;
    chkUnAccept.Checked := NotifyByUnAcceptRequest;
    chkSended.Checked := NotifyByStuffSend;
  end;
end;

end.
