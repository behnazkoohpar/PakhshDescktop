unit untMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvOfficeStatusBar, AdvSmoothPanel, AdvSmoothButton, Vcl.ExtCtrls,
  dxGDIPlusClasses, Vcl.StdCtrls, untStuff, untStuffBrand, untBannerApp, UntStuffBrandPrice, untDmPakhsh,
  SolarCalendarPackage, untCustommer, untRequest, untSetting, AdvSmoothToggleButton, AdvSmoothPopup,
  untReceipt, untDelivery, untReturnToInventory, untReturnToSeller,
  untRpStuffBrand, untRpCustommer, untRpRequest, untRpStockTransactionHistory;

type
  TfrmMain = class(TForm)
    AdvSmoothPanel1: TAdvSmoothPanel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    AdvSmoothPanel3: TAdvSmoothPanel;
    AdvSmoothButton1: TAdvSmoothButton;
    btnBannerApp: TAdvSmoothButton;
    btnRequest: TAdvSmoothButton;
    AdvSmoothButton4: TAdvSmoothButton;
    btnStuffBrand: TAdvSmoothButton;
    btnStuff: TAdvSmoothButton;
    Timer1: TTimer;
    Notify2: TImage;
    Notify1: TImage;
    Notify0: TImage;
    pnlResultCount: TAdvSmoothPanel;
    Label1: TLabel;
    lblCustommerCount: TLabel;
    Label3: TLabel;
    lblRequestCount: TLabel;
    btnStuffBrandPrice: TAdvSmoothButton;
    SolarDate: TSolarDatePicker;
    StatusBar: TAdvOfficeStatusBar;
    Image1: TImage;
    AdvSmoothButton2: TAdvSmoothButton;
    btnInventory: TAdvSmoothButton;
    popupMenuInventory: TAdvSmoothPopup;
    pnlInventory: TAdvSmoothPanel;
    btnKeyNum0: TAdvSmoothToggleButton;
    AdvSmoothToggleButton1: TAdvSmoothToggleButton;
    AdvSmoothToggleButton2: TAdvSmoothToggleButton;
    AdvSmoothToggleButton3: TAdvSmoothToggleButton;
    pnlReport: TAdvSmoothPanel;
    btnRpStuffBrand: TAdvSmoothToggleButton;
    Label2: TLabel;
    Label4: TLabel;
    btnRpStockTransaction: TAdvSmoothToggleButton;
    btnRpRequest: TAdvSmoothToggleButton;
    Label5: TLabel;
    btnRpCustommer: TAdvSmoothToggleButton;
    btnReport: TAdvSmoothButton;
    popupMenuReport: TAdvSmoothPopup;
    procedure Timer1Timer(Sender: TObject);
    procedure btnStuffClick(Sender: TObject);
    procedure btnStuffBrandClick(Sender: TObject);
    procedure btnStuffBrandPriceClick(Sender: TObject);
    procedure btnBannerAppClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvSmoothButton4Click(Sender: TObject);
    procedure btnRequestClick(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure btnInventoryClick(Sender: TObject);
    procedure popupMenuInventoryClose(Sender: TObject);
    procedure AdvSmoothToggleButton1Click(Sender: TObject);
    procedure AdvSmoothToggleButton3Click(Sender: TObject);
    procedure btnKeyNum0Click(Sender: TObject);
    procedure AdvSmoothToggleButton2Click(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure btnRpStuffBrandClick(Sender: TObject);
    procedure btnRpCustommerClick(Sender: TObject);
    procedure btnRpRequestClick(Sender: TObject);
    procedure btnRpStockTransactionClick(Sender: TObject);
  private
    FRecuestCount: integer;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnRequestClick(Sender: TObject);
var
  frm: TfrmRequest;
begin
  try
    frm := TfrmRequest.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
  FRecuestCount := dmPakhsh.GetAllRequestCount;
  lblRequestCount.Caption := inttostr(FRecuestCount);
end;

procedure TfrmMain.btnRpCustommerClick(Sender: TObject);
var
  frm: TfrmRpcustommer;
begin
  popupMenuReport.ClosePopup;
  try
    frm := TfrmRpcustommer.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.btnRpRequestClick(Sender: TObject);
var
  frm: TfrmRpRequest;
begin
  popupMenuReport.ClosePopup;
  try
    frm := TfrmRpRequest.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.btnRpStockTransactionClick(Sender: TObject);
var
  frm: TfrmRpStockTransactionHistory;
begin
  popupMenuReport.ClosePopup;
  try
    frm := TfrmRpStockTransactionHistory.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;

end;

procedure TfrmMain.btnRpStuffBrandClick(Sender: TObject);
var
  frm: TfrmRpStuffBrand;
begin
  popupMenuReport.ClosePopup;
  try
    frm := TfrmRpStuffBrand.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.AdvSmoothButton2Click(Sender: TObject);
var
  frm: TfrmSetting;
begin
  try
    frm := TfrmSetting.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.btnReportClick(Sender: TObject);
begin
  try
    popupMenuReport.Width := pnlReport.Width;
    popupMenuReport.Height := pnlReport.Height;
    popupMenuReport.Control := pnlReport;
    pnlReport.Visible := True;
    popupMenuReport.PopupAtControl(btnReport, pdLeftTop);
  except

  end;
end;

procedure TfrmMain.AdvSmoothButton4Click(Sender: TObject);
var
  frm: TfrmCustommer;
begin
  try
    frm := TfrmCustommer.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.AdvSmoothToggleButton1Click(Sender: TObject);
var
  frm: TfrmReceipt;
begin
  popupMenuInventory.ClosePopup;
  try
    frm := TfrmReceipt.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.AdvSmoothToggleButton2Click(Sender: TObject);
var
  frm: TFrmReturnToSeller;
begin
  popupMenuInventory.ClosePopup;
  try
    frm := TFrmReturnToSeller.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;

end;

procedure TfrmMain.AdvSmoothToggleButton3Click(Sender: TObject);
var
  frm: TfrmDelivery;
begin
  popupMenuInventory.ClosePopup;
  try
    frm := TfrmDelivery.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.btnBannerAppClick(Sender: TObject);
var
  frm: TFrmBannerApp;
begin
  try
    frm := TFrmBannerApp.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.btnInventoryClick(Sender: TObject);
begin
  try
    popupMenuInventory.Width := pnlInventory.Width;
    popupMenuInventory.Height := pnlInventory.Height;
    popupMenuInventory.Control := pnlInventory;
    pnlInventory.Visible := True;
    popupMenuInventory.PopupAtControl(btnInventory, pdLeftCenter);
  except

  end;
end;

procedure TfrmMain.btnKeyNum0Click(Sender: TObject);
var
  frm: TFrmReturnToInventory;
begin
  popupMenuInventory.ClosePopup;
  try
    frm := TFrmReturnToInventory.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.btnStuffBrandClick(Sender: TObject);
var
  frm: TFrmStuffBrand;
begin
  try
    frm := TfrmStuffBrand.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.btnStuffBrandPriceClick(Sender: TObject);
var
  frm: TFrmStuffBrandPrice;
begin
  try
    frm := TfrmStuffBrandPrice.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.btnStuffClick(Sender: TObject);
var
  frm: TFrmStuff;
begin
  try
    frm := TfrmStuff.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  dmPakhsh.GUserName := 'مدیرسیستم';
  lblCustommerCount.Caption :=  inttostr(dmPakhsh.GetAllCustommerCount);
  lblRequestCount.Caption := inttostr(dmPakhsh.GetAllRequestCount);
  StatusBar.Panels.Items[0].Text :=  TimeToStr(Time) + ' : ساعت  ';
  StatusBar.Panels.Items[1].Text :=  SolarDate.Text + ' : تاریخ ';
  StatusBar.Panels.Items[2].Text := dmPakhsh.GUserName +  ' : کاربر ';
  notify0.Visible := True;
  dmPakhsh.ReadAllSettings;
end;

procedure TfrmMain.popupMenuInventoryClose(Sender: TObject);
begin
  pnlInventory.Visible := False;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
var
  myDate : TDateTime;
  myHour, myMin, mySec, myMilli : Word;
begin
  pnlResultCount.Visible := False;
  pnlResultCount.Align := alRight;
  myDate := now;
  StatusBar.Panels.Items[0].Text := ' ساعت : ' + TimeToStr(Time);
  StatusBar.Panels.Items[1].Text := ' تاریخ: ' + SolarDate.Text;
  DecodeTime(myDate, myHour, myMin, mySec, myMilli);

  if mySec = 0 then
  begin
    FRecuestCount := dmPakhsh.GetAllRequestCount;
    lblRequestCount.Caption := inttostr(FRecuestCount);
    lblCustommerCount.Caption :=  inttostr(dmPakhsh.GetAllCustommerCount);
  end;

  if FRecuestCount > 0 then
  begin

    if mySec mod 2 = 0 then
    begin
      notify0.Visible := false;
      notify1.Visible := True;
      notify2.Visible := False
    end
    else
    begin
      notify0.Visible := false;
      notify1.Visible := False;
      notify2.Visible := True
    end;
  end
  else
  begin
    notify0.Visible := True;
    notify1.Visible := false;
    notify2.Visible := false;
  end;

  notify0.Align := alLeft;
  notify1.Align := alLeft;
  notify2.Align := alLeft;

  pnlResultCount.Visible := True;
  pnlResultCount.Align := alLeft;
end;

end.
