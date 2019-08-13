unit untCustommer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, untdmPakhsh, msgs,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, AdvSmoothButton,
  Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, AdvSmoothPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxMapControlTypes, dxMapControl, Data.DB, MemDS, DBAccess, Uni, AdvGDIP, Dateproc, Soap.EncdDecd,
  shellAPI, EhLibUniDAC, untMarcketer;

type
  TfrmCustommer = class(TForm)
    AdvSmoothPanel2: TAdvSmoothPanel;
    pnlGrid: TAdvSmoothPanel;
    grd: TDBGridEh;
    pnlEdit: TAdvSmoothPanel;
    Label1: TLabel;
    Label3: TLabel;
    edtCityName: TEdit;
    edtCreateDate: TEdit;
    pnlBottom: TAdvSmoothPanel;
    btnResetPass: TAdvSmoothButton;
    pnlImage: TAdvSmoothPanel;
    ds: TUniDataSource;
    qry: TUniQuery;
    qryID: TFloatField;
    qryFirstName: TWideStringField;
    qryLastName: TWideStringField;
    qryStoreName: TWideStringField;
    qryMobileNumber: TWideStringField;
    qryPhoneNumber: TWideStringField;
    qryAddress: TWideStringField;
    qryLatitude: TFloatField;
    qryLongitude: TFloatField;
    qryPostalCode: TWideStringField;
    qryCityID: TFloatField;
    qryZoneNumber: TFloatField;
    qryPassword: TWideStringField;
    qryEmailAddress: TWideStringField;
    qryTelegramAddress: TWideStringField;
    qryInstagramAddress: TWideStringField;
    qryBirthDate: TWideStringField;
    qryActivated: TBooleanField;
    qryDeleted: TBooleanField;
    qryDescription: TBooleanField;
    qryCreatedDate: TDateTimeField;
    qryReCreatedDate: TDateTimeField;
    qryModifiedDate: TDateTimeField;
    qryLastLoginDate: TDateTimeField;
    Label2: TLabel;
    edtZoneNumber: TEdit;
    Label4: TLabel;
    edtAddress: TEdit;
    Label5: TLabel;
    edtPostalCode: TEdit;
    Label6: TLabel;
    edtLastLogin: TEdit;
    AdvSmoothPanel1: TAdvSmoothPanel;
    btnTelegram: TAdvSmoothButton;
    Label9: TLabel;
    btnMap: TAdvSmoothButton;
    Label7: TLabel;
    Label8: TLabel;
    btnEmail: TAdvSmoothButton;
    btnInstagram: TAdvSmoothButton;
    Label10: TLabel;
    AdvSmoothButton1: TAdvSmoothButton;
    btnActivated: TAdvSmoothButton;
    btnDeleted: TAdvSmoothButton;
    qryCode: TStringField;
    btnMarcketer: TAdvSmoothButton;
    procedure FormCreate(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure grdSelectionChanged(Sender: TObject);
    procedure btnTelegramClick(Sender: TObject);
    procedure btnInstagramClick(Sender: TObject);
    procedure btnEmailClick(Sender: TObject);
    procedure btnMapClick(Sender: TObject);
    procedure btnResetPassClick(Sender: TObject);
    procedure btnDeletedClick(Sender: TObject);
    procedure btnActivatedClick(Sender: TObject);
    procedure btnMarcketerClick(Sender: TObject);
  private
    function GetPicture(aImageString: AnsiString): TStream;
    function GetPictureDecoded(aUserID: string): string;
  public
    { Public declarations }
  end;

var
  frmCustommer: TfrmCustommer;

implementation

{$R *.dfm}

procedure TfrmCustommer.btnActivatedClick(Sender: TObject);
var
  qr: TUniQuery;
begin
  if ConfirmMessage(Format('آیا برای غیر فعالسازی کاربر به شماره %s اطمینان دارید؟', [qryMobileNumber.AsString])) then
  begin
    qr := TUniQuery.Create(self);
    qr.Connection := dmPakhsh.Con;

    with qr Do
    begin
      sql.Clear;
      sql.Add('UPDATE app.Users ');
      sql.Add('SET Activated = 0 ');
      sql.Add(format('WHERE ID = %s ', [qryID.AsString]));

      Execute;
      Close;
      Free;
    end;

    InformationMessage('عملیات با موفقیت انجام شد');
    qry.Refresh;
  end;

end;

procedure TfrmCustommer.btnDeletedClick(Sender: TObject);
var
  qr: TUniQuery;
begin
  if qryID.AsString <> '' then
    if ConfirmMessage(Format('آیا برای حذف کاربر به شماره %s اطمینان دارید؟ ', [qryMobileNumber.AsString])) then
    begin
      qr := TUniQuery.Create(self);
      qr.Connection := dmPakhsh.Con;

      with qr Do
      begin
        sql.Clear;
        sql.Add('UPDATE app.Users ');
        sql.Add('SET Deleted = 1 ');
        sql.Add(format('WHERE ID = %s ', [qryID.AsString]));

        Execute;
        Close;
        Free;
      end;
      InformationMessage('عملیات با موفقیت انجام شد');
      qry.Refresh;
    end;

end;

procedure TfrmCustommer.btnEmailClick(Sender: TObject);
begin
if Length(qryEmailAddress.AsString) > 5 then
  InformationMessage(qryEmailAddress.AsString);
end;

procedure TfrmCustommer.btnInstagramClick(Sender: TObject);
begin
  if copy(qryInstagramAddress.AsString, 1, 4) = 'http' then
    ShellExecute(Handle,'open', pwidechar(qryInstagramAddress.AsString) , nil, nil, SW_SHOW)
  else
    ErrorMessage('آدرس اینستاگرام مشتری تنظیم نشده و یا اشتباه می باشد');
end;

procedure TfrmCustommer.btnMapClick(Sender: TObject);
var
  lstr, lLat, lLon: string;
begin
  if (Length(qryLatitude.AsString) > 1) and (Length(qryLongitude.AsString) > 1) then
  begin
    lLat := copy(qryLatitude.AsString, 1, 11);
    lLat := stringreplace(lLat, '/', '.', [rfReplaceAll, rfIgnoreCase]);
    lLon := copy(qryLongitude.AsString, 1, 11);
    lLon := stringreplace(lLon, '/', '.', [rfReplaceAll, rfIgnoreCase]);

    lstr := 'https://www.google.com/maps/@' + lLon + ',' + lLat + ',17z';
    ShellExecute(Handle,'open', pwidechar(lstr) , nil, nil, SW_SHOW);
  end;
end;

procedure TfrmCustommer.btnMarcketerClick(Sender: TObject);
var
  frm: TFrmMarcketer;
begin
  try
    frm := TFrmMarcketer.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmCustommer.btnResetPassClick(Sender: TObject);
var
  qr: TUniQuery;
begin
  if qryID.AsString <> '' then
    if ConfirmMessage(Format('آیا برای ریست کردن رمز ورود کاربری %s  اطمینان دارید؟ ', [qryMobileNumber.AsString])) then
    begin
      qr := TUniQuery.Create(self);
      qr.Connection := dmPakhsh.Con;

      with qr Do
      begin
        sql.Clear;
        sql.Add('UPDATE app.Users ');
        sql.Add('SET Password = ''123456'' ');
        sql.Add(format('WHERE ID = %s ', [qryID.AsString]));

        Execute;
        Close;
        Free;
      end;
      InformationMessage('عملیات با موفقیت انجام شد');
      qry.Refresh;
    end;

end;

procedure TfrmCustommer.btnTelegramClick(Sender: TObject);
begin
  if copy(qryTelegramAddress.AsString, 1, 5) = 'https' then
    ShellExecute(Handle,'open', pwidechar(qryTelegramAddress.AsString) , nil, nil, SW_SHOW)
  else
    ErrorMessage('آدرس تلگرام مشتری تنظیم نشده و یا اشتباه می باشد');
end;

procedure TfrmCustommer.dsDataChange(Sender: TObject; Field: TField);
begin
  try
    edtCityName.Text := 'تهران';
    edtZoneNumber.Text := qryZoneNumber.AsString;
    edtAddress.Text := qryAddress.AsString;
    edtPostalCode.Text := qryPostalCode.AsString;
    edtLastLogin.Text :=  Milady2Shamsi(FormatDateTime('yyyy/mm/dd', qryLastLoginDate.AsDateTime));;
    edtCreateDate.Text := Milady2Shamsi(FormatDateTime('yyyy/mm/dd', qryCreatedDate.AsDateTime));

    btnTelegram.Enabled := Length(qryTelegramAddress.AsString) > 5;
    btnInstagram.Enabled := Length(qryInstagramAddress.AsString) > 5;
    btnEmail.Enabled := Length(qryEmailAddress.AsString) > 5;
    btnMap.Enabled := Length(qryLatitude.AsString) > 1;
  except

  end;
end;

procedure TfrmCustommer.FormCreate(Sender: TObject);
begin
  qry.Connection := dmPakhsh.Con;
  qry.Active := True;
end;

function TfrmCustommer.GetPicture(aImageString: AnsiString): TStream;
var
  Input: TStringStream;
  Output: TBytesStream;
begin
  Input := TStringStream.Create(aImageString, TEncoding.ASCII);
  try
    Output := TBytesStream.Create;
    try
      Soap.EncdDecd.DecodeStream(Input, Output);
      Output.Position := 0;
      Result := Output;
    finally
     // Output.Free;
    end;
  finally
    Input.Free;
  end;
end;

function TfrmCustommer.GetPictureDecoded(aUserID: string): string;
var
  qr: TUniQuery;
begin
  try
    Result := '';
    qr := TUniQuery.Create(self);
    qr.Connection := dmPakhsh.Con;
    with qr do
    begin
      sql.Clear;
      sql.Add(format('SELECT Image FROM app.UserImage WHERE userID = %s', [aUserID]));
      open;
      Result := FieldByName('Image').AsString;
      close;
    end;
    qr.Free;
  except

  end;
end;

procedure TfrmCustommer.grdSelectionChanged(Sender: TObject);
var
  lImageDecode: string;
begin
  lImageDecode := '';
  pnlImage.Fill.GradientType := gtTexture;
  lImageDecode := GetPictureDecoded(qryID.AsString);
  pnlImage.Fill.GradientType := TAdvGradientType.gtNone;
  if Length(lImageDecode) > 1 then
  begin
    pnlImage.Fill.GradientType := gttexture;
    pnlImage.Fill.BackGroundPicture.LoadFromStream(GetPicture(lImageDecode));
  end;


end;

end.
