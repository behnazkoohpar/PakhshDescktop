unit untRequest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, untdmPakhsh, msgs, EhLibUniDAC,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, AdvSmoothButton,
  Data.DB, DBAccess, Uni, MemDS, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, AdvSmoothPanel, dateproc,
  AdvGDIP, Soap.EncdDecd, cxRadioGroup, SolarCalendarPackage, frxExportImage, frxExportPDF, frxClass, frxExportXLS,
  frxDBSet, untSendStuff;

type
  TfrmRequest = class(TForm)
    pnlEdit: TAdvSmoothPanel;
    pnlImage: TAdvSmoothPanel;
    pnlGrid: TAdvSmoothPanel;
    grd: TDBGridEh;
    AdvSmoothPanel4: TAdvSmoothPanel;
    DBGridEh1: TDBGridEh;
    qry: TUniQuery;
    ds: TUniDataSource;
    qryID: TFloatField;
    qryRequestDateTime: TDateTimeField;
    qryUserID: TFloatField;
    qryStuffCount: TSmallintField;
    qrySumPrice: TIntegerField;
    qryAccepted: TBooleanField;
    qryAcceptedDatetime: TDateTimeField;
    qrySended: TBooleanField;
    qrySendedDateTime: TDateTimeField;
    qryMobileNumber: TWideStringField;
    qryUserName: TWideStringField;
    qryDetailes: TUniQuery;
    dsDetailes: TUniDataSource;
    qryDetailesID: TFloatField;
    qryDetailesRequestID: TFloatField;
    qryDetailesStuffBrandID: TFloatField;
    qryDetailesCount: TSmallintField;
    qryDetailesStuffBrandCode: TWideStringField;
    qryDetailesStuffName: TWideStringField;
    qryDetailesBrandName: TWideStringField;
    qryDetailesPrice: TFloatField;
    qryDetailesOffer: TSmallintField;
    qryDetailesunitName: TWideStringField;
    qryDetailesStuffBrandName: TWideStringField;
    qryDetailessumPrice: TFloatField;
    AdvSmoothPanel1: TAdvSmoothPanel;
    btnAccept: TAdvSmoothButton;
    btnNoAccept: TAdvSmoothButton;
    btnSend: TAdvSmoothButton;
    Label2: TLabel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    Label3: TLabel;
    Label1: TLabel;
    edtFromDate: TSolarDatePicker;
    edtToDate: TSolarDatePicker;
    rb1: TcxRadioButton;
    rb2: TcxRadioButton;
    rb3: TcxRadioButton;
    rb4: TcxRadioButton;
    btnOK: TAdvSmoothButton;
    cxRadioButton4: TcxRadioButton;
    pnlReceiptItemAction: TAdvSmoothPanel;
    Label14: TLabel;
    lblLastStock: TLabel;
    Label16: TLabel;
    lblMinimum: TLabel;
    Label4: TLabel;
    lblDescription: TLabel;
    Label6: TLabel;
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure qryRequestDateTimeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryAcceptedDatetimeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qrySendedDateTimeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure grdSelectionChanged(Sender: TObject);
    procedure btnAcceptClick(Sender: TObject);
    procedure btnNoAcceptClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsDetailesDataChange(Sender: TObject; Field: TField);
    procedure qryDetailesPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryDetailessumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryStuffCountGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qrySumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    procedure SetDetailesData(aMasterID: string);
    function GetPictureDecoded(aUserID: string): string;
    function GetPicture(aImageString: AnsiString): TStream;
    function SetQuryString: string;
  public
    { Public declarations }
  end;

var
  frmRequest: TfrmRequest;

implementation

{$R *.dfm}

procedure TfrmRequest.btnAcceptClick(Sender: TObject);
var
  myDate: TDateTime;
begin
  if ConfirmMessage(Format('آیا برای تایید درخواست مشتری به شماره %s اطمینان دارید؟', [qryMobileNumber.AsString])) then
  begin
    myDate := Now;

    qry.Edit;
    qryAccepted.AsBoolean := True;
    qryAcceptedDatetime.AsDateTime := myDate;
    qry.Post;
    dmPakhsh.SendNotificationChangeState(qryUserID.AsString);
  end;
end;


procedure TfrmRequest.btnNoAcceptClick(Sender: TObject);
var
  myDate: TDateTime;
begin
  if ConfirmMessage(Format('آیا برای رد درخواست مشتری به شماره %s اطمینان دارید؟', [qryMobileNumber.AsString])) then
  begin
    myDate := Now;

    qry.Edit;
    qryAccepted.AsBoolean := False;
    qryAcceptedDatetime.AsDateTime := myDate;
    qry.Post;
    dmPakhsh.SendNotificationChangeState(qryUserID.AsString);
  end;
end;

procedure TfrmRequest.btnOKClick(Sender: TObject);
begin
  try
    qry.SQL.Clear;
    qry.SQL.Add(SetQuryString);
    qry.Active := True;
    qryDetailes.Connection := dmPakhsh.Con;
  except

  end;
end;

procedure TfrmRequest.btnSendClick(Sender: TObject);
var
  myDate: TDateTime;
  frmSendStuff: TfrmSendStuff;
  lStatus: boolean;
begin
  try
    frmSendStuff := TfrmSendStuff.Create(self);
    frmSendStuff.fStuffRequestID := qryID.AsString;
    frmSendStuff.ShowModal;
    lStatus := frmSendStuff.ModalResult = mrOk;
  finally
    frmSendStuff.Free;
  end;

  if lStatus then
  begin
    myDate := Now;
    qry.Edit;
    qrySended.AsBoolean := True;
    qrySendedDateTime.AsDateTime := myDate;
    qry.Post;
    dmPakhsh.SendNotificationChangeState(qryUserID.AsString);
  end;
end;

procedure TfrmRequest.dsDataChange(Sender: TObject; Field: TField);
begin
  btnAccept.Enabled := (not qrySended.AsBoolean) AND ( Length(qryAcceptedDatetime.AsString)< 5);
  btnNoAccept.Enabled := btnAccept.Enabled;
  btnSend.Enabled := qryAccepted.AsBoolean;

  SetDetailesData(qryID.AsString);
end;

procedure TfrmRequest.dsDetailesDataChange(Sender: TObject; Field: TField);
var
  lLastStock, lMinimumStock, lMaximumStock: Integer;
  lDescription: string;
begin
  lLastStock := dmPakhsh.GetLastStock(qryDetailesStuffBrandID.AsString);
  lblLastStock.Caption := IntToStr(lLastStock);

  dmPakhsh.GetStuffBrandInfo(qryDetailesStuffBrandID.AsString, lMinimumStock, lMaximumStock, lDescription);
  lblDescription.Caption := lDescription;
  lblMinimum.Caption := IntToStr(lMinimumStock);
end;

procedure TfrmRequest.FormShow(Sender: TObject);
begin
  qry.Connection := dmPakhsh.Con;
  qry.SQL.Clear;
  qry.SQL.Add(SetQuryString);
  qry.Active := True;
  qryDetailes.Connection := dmPakhsh.Con;
end;

procedure TfrmRequest.grdSelectionChanged(Sender: TObject);
var
  lImageDecode: string;
begin
  lImageDecode := '';
  pnlImage.Fill.GradientType := gtTexture;
  lImageDecode := GetPictureDecoded(qryUserID.AsString);
  pnlImage.Fill.GradientType := TAdvGradientType.gtNone;
  if Length(lImageDecode) > 1 then
  begin
    pnlImage.Fill.GradientType := gttexture;
    pnlImage.Fill.BackGroundPicture.LoadFromStream(GetPicture(lImageDecode));
  end;

end;

function TfrmRequest.GetPicture(aImageString: AnsiString): TStream;
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


function TfrmRequest.GetPictureDecoded(aUserID: string): string;
var
  qr: TUniQuery;
begin
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
end;

procedure TfrmRequest.qryAcceptedDatetimeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  lDate, lTime: string;
begin
  if Length(sender.AsString) > 5 then
  begin
    lDate := FormatDateTime('yyyy/mm/dd', sender.AsDateTime);
    lDate := Milady2Shamsi(lDate);
    lTime := FormatDateTime('t', sender.AsDateTime);
    text := lDate + ' * ' + lTime;
  end;
end;

procedure TfrmRequest.qryDetailesPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmRequest.qryDetailessumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmRequest.qryRequestDateTimeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  lDate, lTime: string;
begin
  if Length(sender.AsString) > 5 then
  begin
    lDate := FormatDateTime('yyyy/mm/dd', sender.AsDateTime);
    lDate := Milady2Shamsi(lDate);
    lTime := FormatDateTime('t', sender.AsDateTime);
    text := lDate + ' * ' + lTime;
  end;
end;

procedure TfrmRequest.qrySendedDateTimeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  lDate, lTime: string;
begin
  if Length(sender.AsString) > 5 then
  begin
    lDate := FormatDateTime('yyyy/mm/dd', sender.AsDateTime);
    lDate := Milady2Shamsi(lDate);
    lTime := FormatDateTime('t', sender.AsDateTime);
    text := lDate + ' * ' + lTime;
  end;
end;

procedure TfrmRequest.qryStuffCountGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmRequest.qrySumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmRequest.SetDetailesData(aMasterID: string);
begin
  if (aMasterID <> '') AND (aMasterID <> '0') then
  begin
    try
      qryDetailes.Active := false;
      with qryDetailes do
      begin
        sql.Clear;
        sql.Add('SELECT ri.ID, ');
        sql.Add('ri.RequestID, ');
        sql.Add('ri.StuffBrandID, ');
        sql.Add('ISNULL(ri.Count, 0) AS Count, ');
        sql.Add('sb.Code AS StuffBrandCode, ');
        sql.Add('s.Name AS StuffName, ');
        sql.Add('b.Name AS BrandName, ');
        sql.Add('s.Name + '' '' + b.Name AS StuffBrandName,  ');
        sql.Add('ISNULL(sbp.Price, 0) AS Price, ');
        sql.Add('ISNULL(sbp.Offer, 0) AS Offer, ');
        sql.Add('(sbp.Price * ri.Count) - ((sbp.Price * ri.Count) * sbp.Offer) /100 as sumPrice, ');
        sql.Add('u.Name AS unitName ');
        sql.Add('FROM RequestItem AS ri ');
        sql.Add('LEFT JOIN StuffBrand AS sb ON (ri.StuffBrandID = sb.ID) ');
        sql.Add('LEFT JOIN Stuff AS s ON (sb.StuffID = s.ID) ');
        sql.Add('LEFT JOIN Brand AS b ON (sb.BrandID = b.ID) ');
        sql.Add('LEFT JOIN StuffBrandPrice AS sbp ON (ri.StuffBrandID = sbp.StuffBrandID)  ');
        sql.Add('LEFT JOIN Unit AS u ON (sb.UnitID = u.ID) ');
        sql.Add(format('WHERE ri.RequestID = %s ', [aMasterID]));
        qryDetailes.Active := True;
      end;
    except

    end;
  end;
end;

function TfrmRequest.SetQuryString: string;
var
  s: string;
begin
  s := 'SELECT  r.ID, ';
	s := s + 'r.RequestDateTime, ';
	s := s + 'r.UserID, ';
	s := s + 'r.StuffCount, ';
	s := s + 'r.SumPrice, ';
	s := s + 'r.Accepted, ';
	s := s + 'r.AcceptedDatetime, ';
	s := s + 'r.Sended, ';
	s := s + 'r.SendedDateTime, ';
	s := s + 'u.MobileNumber, ';
	s := s + 'u.FirstName + '' '' + LastName AS UserName ';
  s := s + 'FROM Request AS r ';
  s := s + 'LEFT JOIN app.Users AS u ON(r.UserID = u.ID) ';
  s := s + 'WHERE 1 = 1 ';

  if edtFromDate.Text <> '' then
    s := s + format('AND   r.RequestDateTime >= %s AND  r.RequestDateTime <= %s',
            [quotedstr(Shamsi2Milady(edtFromDate.Text) + ' 00:00:00'),
             quotedstr(Shamsi2Milady(edttodate.Text) + ' 23:59:00')]);

  if rb1.Checked then
    s := s + 'AND (r.Accepted is null) and (r.AcceptedDatetime is null) and (r.SendedDateTime is null) '
  else if rb2.Checked then
    s := s + 'AND (r.Accepted = 1 ) and (r.AcceptedDatetime is not null) '
  else if rb3.Checked then
    s := s + 'AND (r.Accepted = 0 ) and (r.AcceptedDatetime is not null) '
  else if rb4.Checked then
    s := s + 'AND (r.Sended = 1 ) and (r.SendedDateTime is not null) ';

  s := s + 'ORDER BY r.RequestDateTime ';

  result := s
end;

end.
