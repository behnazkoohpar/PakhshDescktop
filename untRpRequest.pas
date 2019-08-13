unit untRpRequest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, untDmPakhsh,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  AdvSmoothButton, cxCheckBox, Vcl.StdCtrls, AdvSmoothPanel, cxRadioGroup, Data.DB, DBAccess, Uni, MemDS, Vcl.FileCtrl,
  DateProc, MSGs, frxClass, frxDBSet, frxExportXLS, frxExportPDF, frxExportImage, SolarCalendarPackage,
  frxExportBaseDialog;


type
  TfrmRpRequest = class(TForm)
    pnlEdit: TAdvSmoothPanel;
    pnlBottom: TAdvSmoothPanel;
    btnOK: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    pnlGrid: TAdvSmoothPanel;
    grd: TDBGridEh;
    pnlStufInfo: TAdvSmoothPanel;
    btnExcel: TAdvSmoothButton;
    btnPreview: TAdvSmoothButton;
    qry: TUniQuery;
    ds: TUniDataSource;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxDB: TfrxDBDataset;
    frxReport: TfrxReport;
    pnlReceiptItem: TAdvSmoothPanel;
    Label8: TLabel;
    grdReceiptItem: TDBGridEh;
    qryDetailes: TUniQuery;
    dsDetailes: TUniDataSource;
    qryID: TFloatField;
    qryRequestDateTime: TDateTimeField;
    qryUserID: TFloatField;
    qryStuffCount: TSmallintField;
    qrySumPrice: TIntegerField;
    qryAccepted: TBooleanField;
    qryAcceptedDateTime: TDateTimeField;
    qrySended: TBooleanField;
    qryLastName: TWideStringField;
    qryFirstName: TWideStringField;
    qryStoreName: TWideStringField;
    qryMobileNumber: TWideStringField;
    edtFromDate: TSolarDatePicker;
    Label3: TLabel;
    Label1: TLabel;
    edtToDate: TSolarDatePicker;
    rb1: TcxRadioButton;
    rb2: TcxRadioButton;
    rb3: TcxRadioButton;
    rb4: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    AdvSmoothPanel2: TAdvSmoothPanel;
    Label6: TLabel;
    cmbPriceSign: TComboBox;
    cmbIsPrice: TComboBox;
    edtPrice: TEdit;
    AdvSmoothPanel1: TAdvSmoothPanel;
    Label2: TLabel;
    cmbCountSign: TComboBox;
    cmbIsCount: TComboBox;
    edtCount: TEdit;
    AdvSmoothPanel3: TAdvSmoothPanel;
    lblStuffBrandCode: TLabel;
    cmbMobileNumber: TComboBox;
    Label4: TLabel;
    qryDetailesID: TFloatField;
    qryDetailesCount: TSmallintField;
    qryDetailesStuffBrandCode: TWideStringField;
    qryDetailesStuffBrandName: TWideStringField;
    qryDetailesPrice: TFloatField;
    qryDetailesOffer: TSmallintField;
    qryDetailessumPrice: TFloatField;
    qryDetailesunitName: TWideStringField;
    qryDetailesStuffName: TWideStringField;
    qryDetailesBrandName: TWideStringField;
    frxDBDetailes: TfrxDBDataset;
    qryDetailesRequestID: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure qryRequestDateTimeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryAcceptedDateTimeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qrySumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryDetailessumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryDetailesPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryDetailesCountGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qrySendedGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    qryStr: String;

    procedure SetValues;
    procedure SetDetailesData(aMasterID, aRequestDate: string);
  public
    { Public declarations }
  end;

Const
  qrString =
  'SELECT ' +
  '   r.ID, '  +
  '   r.RequestDateTime, ' +
  '   r.UserID, ' +
  '   r.StuffCount, '  +
  '   r.SumPrice, ' +
  '   r.Accepted, ' +
  '   r.AcceptedDateTime, ' +
  '   r.Sended, ' +
  '   u.LastName, ' +
  '   u.FirstName, '  +
  '   u.StoreName, ' +
  '   u.MobileNumber ' +
  'FROM Request AS r ' +
  'LEFT JOIN app.Users AS u ON (u.ID = r.UserID) WHERE 1=1 ';

implementation

uses
  DBGridEhImpExp;

{$R *.dfm}

procedure TfrmRpRequest.btnExcelClick(Sender: TObject);
var
  Path:string;
  options : TSelectDirOpts;
  chosenDirectory : string;
begin
  Path := '';
  if Win32MajorVersion >= 6 then
  with TFileOpenDialog.Create(nil) do
  try
    UseLatestCommonDialogs := True;
    Title := 'مجل ذخیره فایل اکسل ' + ' ' + self.Caption;
    Options := [fdoPickFolders];
    if Execute then
      Path:=FileName;
  finally
    Free;
  end
  else
  begin
    chosenDirectory := 'C:\';
    if SelectDirectory(chosenDirectory, options, 0)then
      Path:= chosenDirectory;
  end;
  if Path <> '' then
  begin
    ExportDBGridEhToXlsx(grd,Path+'\Request' + '.xlsx',[]);
    InformationMessage(' فایل اکسل با موفقیت ایجاد شد')
  end;
end;

procedure TfrmRpRequest.btnOKClick(Sender: TObject);
var
  lNotEmpty: boolean;
  l1, l2: string;
  s: string;
begin
  s := '';
  qryStr := format(qrString, [CurrentDate]);
  qry.SQL.Clear;
  qry.SQL.Add(qryStr);

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

  if cmbMobileNumber.ItemIndex > -1 then
    s := s + 'AND u.MobileNumber = ''' + cmbMobileNumber.Text +''' ';

  qry.SQL.Add(s);

  if edtCount.Text <> '' then
  begin
    l1 := '';
    case cmbCountSign.itemIndex of
      0: l1 := ' > ';
      1: l1 := ' >= ';
      2: l1 := ' = ';
      3: l1 := ' <= ';
      4: l1 := ' < ';
    end;

    l2 := '';
    if cmbIsCount.ItemIndex = 1 then
      l2 := 'NOT ';

    qry.SQL.Add(format('AND (%s(r.StuffCount %s %s))', [l2, l1, edtCount.Text]));
  end;

  if edtPrice.Text <> '' then
  begin
    l1 := '';
    case cmbPriceSign.itemIndex of
      0: l1 := ' > ';
      1: l1 := ' >= ';
      2: l1 := ' = ';
      3: l1 := ' <= ';
      4: l1 := ' < ';
    end;

    l2 := '';
    if cmbIsPrice.ItemIndex = 1 then
      l2 := 'NOT ';

    qry.SQL.Add(format('AND (%s(r.SumPrice %s %s))', [l2, l1, edtPrice.Text]));
  end;

  qry.Active := True;
  qryDetailes.Active := True;
  lNotEmpty := qry.RecordCount > 0;
  btnExcel.Enabled := lNotEmpty;
  btnPreview.Enabled := lNotEmpty;
end;

procedure TfrmRpRequest.btnPreviewClick(Sender: TObject);
begin
  SetValues;
  frxReport.ShowReport()
end;

procedure TfrmRpRequest.FormCreate(Sender: TObject);
var
  qr: TUniQuery;
  K: Integer;
begin
  qry.Connection := dmPakhsh.Con;
  qryDetailes.Connection := dmPakhsh.Con;
  qr := TUniQuery.Create(Application);
  with qr do
  begin
    connection := dmPakhsh.Con;
    SQL.Clear;
    SQL.Add('SELECT Distinct MobileNumber From app.Users ');

    Open;
    k := 1;
    cmbMobileNumber.Items.Clear;
    while not EOF do
    begin
      cmbMobileNumber.Items.Add(FieldByName('MobileNumber').AsString);
      k := k +1;
      Next;
    end;
    Close;

  end;
  qr.Free;

end;



procedure TfrmRpRequest.qryAcceptedDateTimeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  lDate, lTime: string;
begin
  if Sender.AsString <> '' then
  begin
    lDate := FormatDateTime('yyyy/mm/dd',Sender.AsDateTime);
    lDate := Milady2Shamsi(lDate);
    lTime := FormatDateTime('t',Sender.AsDateTime);

    text := lDate + ' _ ' + lTime;
  end;
end;

procedure TfrmRpRequest.qryDetailesCountGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmRpRequest.qryDetailesPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmRpRequest.qryDetailessumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmRpRequest.qryRequestDateTimeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  lDate, lTime: string;
begin
  if Sender.AsString <> '' then
  begin
    lDate := FormatDateTime('yyyy/mm/dd',Sender.AsDateTime);
    lDate := Milady2Shamsi(lDate);
    lTime := FormatDateTime('t',Sender.AsDateTime);

    text := lDate + ' _ ' + lTime;
  end;
end;

procedure TfrmRpRequest.qrySendedGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.AsBoolean then
    Text := 'ارسال شده'
  else
    Text := 'ارسال نشده';
end;

procedure TfrmRpRequest.qrySumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmRpRequest.SetDetailesData(aMasterID, aRequestDate: string);
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
        sql.Add('AND sbp.ID IN (SELECT MAX(id) AS ID FROM StuffBrandPrice ');
        sql.Add(format('WHERE FromDate <= ''%s'' ', [aRequestDate]));
        sql.Add(' GROUP BY StuffBrandID) ');
        qryDetailes.Active := True;
      end;
    except

    end;
  end;
end;

procedure TfrmRpRequest.SetValues;
var
  lblReportDate: TfrxMemoView;
begin
  lblReportDate := frxReport.FindObject('lblDate') as TfrxMemoView;
  lblReportDate.Text := CurrentDate;
end;

end.
