unit untRpCustommer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, untDmPakhsh,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  AdvSmoothButton, cxCheckBox, Vcl.StdCtrls, AdvSmoothPanel, cxRadioGroup, Data.DB, DBAccess, Uni, MemDS, Vcl.FileCtrl,
  DateProc, MSGs, frxClass, frxDBSet, frxExportXLS, frxExportPDF, frxExportImage, SolarCalendarPackage,
  frxExportBaseDialog;


type
  TfrmRpCustommer = class(TForm)
    pnlEdit: TAdvSmoothPanel;
    pnlBottom: TAdvSmoothPanel;
    btnOK: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    pnlGrid: TAdvSmoothPanel;
    grd: TDBGridEh;
    pnlStufInfo: TAdvSmoothPanel;
    cmbMobileNumber: TComboBox;
    lblStuffBrandCode: TLabel;
    lblStuffBrandName: TLabel;
    cmbLastName: TComboBox;
    cmbStoreName: TComboBox;
    btnExcel: TAdvSmoothButton;
    btnPreview: TAdvSmoothButton;
    ds: TUniDataSource;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxDB: TfrxDBDataset;
    frxReport: TfrxReport;
    Label1: TLabel;
    cmbFirstName: TComboBox;
    Label2: TLabel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    Label3: TLabel;
    cmbCreateDateSign: TComboBox;
    cmbIsCreateDate: TComboBox;
    AdvSmoothPanel2: TAdvSmoothPanel;
    Label4: TLabel;
    cmbLastUsedSign: TComboBox;
    cmbIsLastUsed: TComboBox;
    Label5: TLabel;
    cmbLastRequestSign: TComboBox;
    cmbIsLastRequest: TComboBox;
    Label6: TLabel;
    cmbCntRequestSign: TComboBox;
    cmbIsCntRequest: TComboBox;
    AdvSmoothPanel3: TAdvSmoothPanel;
    Label9: TLabel;
    CmbBirthDateSign: TComboBox;
    cmbIsBirthDate: TComboBox;
    edtCntRequest: TEdit;
    edtBirthDate: TSolarDatePicker;
    edtCreateDate: TSolarDatePicker;
    edtLastUsed: TSolarDatePicker;
    edtLastRequest: TSolarDatePicker;
    qry: TUniQuery;
    qryID: TFloatField;
    qryFirstName: TWideStringField;
    qryLastName: TWideStringField;
    qryStoreName: TWideStringField;
    qryMobileNumber: TWideStringField;
    qryPhoneNumber: TWideStringField;
    qryAddress: TWideStringField;
    qryBirthDate: TWideStringField;
    qryCreatedate: TDateField;
    qryLastLoginDate: TDateField;
    qryCntRequest: TIntegerField;
    qryLastRequest: TDateField;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure cmbMobileNumberExit(Sender: TObject);
    procedure cmbLastNameExit(Sender: TObject);
    procedure cmbFirstNameExit(Sender: TObject);
    procedure cmbStoreNameExit(Sender: TObject);
    procedure qryCreatedateGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryLastLoginDateGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryLastRequestGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    FUserIDList: array Of Integer;

    procedure SetValues;
  public
    { Public declarations }
  end;

Const
  qrString =
  'SELECT [ID] ' +
  '      ,[FirstName] ' +
  '      ,[LastName] ' +
  '      ,[StoreName] ' +
  '      ,[MobileNumber] ' +
  '      ,[PhoneNumber] ' +
  '      ,[Address] ' +
  '      ,[BirthDate] ' +
  '      ,[Description] ' +
  '      ,Cast([CreatedDate] AS Date) AS Createdate ' +
  '      ,Cast([LastLoginDate] AS Date) AS LastLoginDate ' +
  '      ,[CntRequest] ' +
  '      ,Cast(LastRequest AS Date) AS LastRequest ' +
  'FROM [Pakhsh].[dbo].[CustommerInfo] ' +
  'WHERE 1 = 1 ';



implementation

uses
  DBGridEhImpExp;

{$R *.dfm}

procedure TfrmRpCustommer.btnExcelClick(Sender: TObject);
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
    ExportDBGridEhToXlsx(grd,Path+'\Customer' + '.xlsx',[]);
    InformationMessage(' فایل اکسل با موفقیت ایجاد شد')
  end;
end;

procedure TfrmRpCustommer.btnOKClick(Sender: TObject);
var
  lNotEmpty: boolean;
  l1, l2, lYear, lMonth, lDay, lMiladi: string;
begin
  qry.SQL.Clear;
  qry.SQL.Add(qrString);

  if (cmbMobileNumber.ItemIndex > -1)  then
      qry.SQL.Add(format('AND ID = %d', [FUserIDList[cmbMobileNumber.ItemIndex+1]]));

  if edtCntRequest.Text <> '' then
  begin
    l1 := '';
    case cmbCntRequestSign.itemIndex of
      0: l1 := ' > ';
      1: l1 := ' >= ';
      2: l1 := ' = ';
      3: l1 := ' <= ';
      4: l1 := ' < ';
    end;

    l2 := '';
    if cmbIsCntRequest.ItemIndex = 1 then
      l2 := 'NOT ';

    qry.SQL.Add(format('AND (%s(CntRequest %s %s))', [l2, l1, edtCntRequest.Text]));
  end;

  if edtBirthDate.Text <> '' then
  begin
    l1 := '';
    case cmbBirthDateSign.itemIndex of
      0: l1 := ' > ';
      1: l1 := ' >= ';
      2: l1 := ' = ';
      3: l1 := ' <= ';
      4: l1 := ' < ';
    end;

    l2 := '';
    if cmbIsBirthDate.ItemIndex = 1 then
      l2 := 'NOT ';

    qry.SQL.Add(format('AND (%s(BirthDate %s ''%s''))', [l2, l1, edtBirthDate.Text]));
  end;

  if edtCreateDate.Text <> '' then
  begin
    l1 := '';
    case cmbCreateDateSign.itemIndex of
      0: l1 := ' > ';
      1: l1 := ' >= ';
      2: l1 := ' = ';
      3: l1 := ' <= ';
      4: l1 := ' < ';
    end;

    l2 := '';
    if cmbIsCreateDate.ItemIndex = 1 then
      l2 := 'NOT ';
    lMiladi := Shamsi2MiladySQL(edtCreateDate.Text);
    qry.SQL.Add(format('AND (%s(Cast(CreatedDate AS Date) %s ''%s''))', [l2, l1, lMiladi]));
  end;

  if edtLastUsed.Text <> '' then
  begin
    l1 := '';
    case cmbLastUsedSign.itemIndex of
      0: l1 := ' > ';
      1: l1 := ' >= ';
      2: l1 := ' = ';
      3: l1 := ' <= ';
      4: l1 := ' < ';
    end;

    l2 := '';
    if cmbIsLastUsed.ItemIndex = 1 then
      l2 := 'NOT ';
    lMiladi := Shamsi2MiladySQL(edtLastUsed.Text);
    qry.SQL.Add(format('AND (%s(Cast(LastLoginDate AS Date) %s ''%s''))', [l2, l1, lMiladi]));
  end;

  if edtLastRequest.Text <> '' then
  begin
    l1 := '';
    case cmbLastRequestSign.itemIndex of
      0: l1 := ' > ';
      1: l1 := ' >= ';
      2: l1 := ' = ';
      3: l1 := ' <= ';
      4: l1 := ' < ';
    end;

    l2 := '';
    if cmbIsLastRequest.ItemIndex = 1 then
      l2 := 'NOT ';
    lMiladi := Shamsi2MiladySQL(edtLastRequest.Text);
    qry.SQL.Add(format('AND (%s(Cast(LastRequest AS Date) %s ''%s''))', [l2, l1, lMiladi]));
  end;


  qry.Active := True;
  lNotEmpty := qry.RecordCount > 0;
  btnExcel.Enabled := lNotEmpty;
  btnPreview.Enabled := lNotEmpty;
end;

procedure TfrmRpCustommer.btnPreviewClick(Sender: TObject);
begin
  SetValues;
  frxReport.ShowReport()
end;

procedure TfrmRpCustommer.cmbFirstNameExit(Sender: TObject);
begin
  if (cmbFirstName.ItemIndex = -1) Or (cmbFirstName.Text = '')  then
  begin
    cmbLastName.text := '';
    cmbMobileNumber.text := '';
    cmbStoreName.text := '';

    cmbLastName.ItemIndex := -1;
    cmbMobileNumber.ItemIndex := -1;
    cmbStoreName.ItemIndex := -1;
  end
  else
  begin
    cmbLastName.ItemIndex := cmbFirstName.ItemIndex;
    cmbMobileNumber.ItemIndex := cmbFirstName.ItemIndex;
    cmbStoreName.ItemIndex := cmbFirstName.ItemIndex;
  end;
end;

procedure TfrmRpCustommer.cmbLastNameExit(Sender: TObject);
begin
  if (cmbLastName.ItemIndex = -1) Or (cmbLastName.Text = '')  then
  begin
    cmbFirstName.text := '';
    cmbMobileNumber.text := '';
    cmbStoreName.text := '';

    cmbFirstName.ItemIndex := -1;
    cmbMobileNumber.ItemIndex := -1;
    cmbStoreName.ItemIndex := -1;
  end
  else
  begin
    cmbFirstName.ItemIndex := cmbLastName.ItemIndex;
    cmbMobileNumber.ItemIndex := cmbLastName.ItemIndex;
    cmbStoreName.ItemIndex := cmbLastName.ItemIndex;
  end;
end;

procedure TfrmRpCustommer.cmbMobileNumberExit(Sender: TObject);
begin
  if cmbMobileNumber.ItemIndex = -1 then
  begin
    cmbFirstName.text := '';
    cmbLastName.text := '';
    cmbStoreName.text := '';
  end;
  cmbFirstName.ItemIndex := cmbMobileNumber.ItemIndex;
  cmbLastName.ItemIndex := cmbMobileNumber.ItemIndex;
  cmbStoreName.ItemIndex := cmbMobileNumber.ItemIndex;
end;

procedure TfrmRpCustommer.cmbStoreNameExit(Sender: TObject);
begin
  if (cmbStoreName.ItemIndex = -1) Or (cmbStoreName.Text = '')  then
  begin
    cmbLastName.text := '';
    cmbMobileNumber.text := '';
    cmbFirstName.text := '';

    cmbLastName.ItemIndex := -1;
    cmbMobileNumber.ItemIndex := -1;
    cmbFirstName.ItemIndex := -1;
  end
  else
  begin
    cmbLastName.ItemIndex := cmbStoreName.ItemIndex;
    cmbMobileNumber.ItemIndex := cmbStoreName.ItemIndex;
    cmbFirstName.ItemIndex := cmbStoreName.ItemIndex;
  end;
end;

procedure TfrmRpCustommer.FormCreate(Sender: TObject);
var
  qr: TUniQuery;
  K: Integer;
begin
  qry.Connection := dmPakhsh.Con;

  qr := TUniQuery.Create(Application);
  try
    with qr do
    begin
      connection := dmPakhsh.Con;
      SQL.Clear;
      SQL.Add('SELECT ID, FirstName, LastName, MobileNumber, StoreName FROM app.Users ');
      Open;
      SetLength(FUserIDList, qr.RecordCount + 1);
      k := 1;
      cmbFirstName.Items.Clear;
      cmbLastName.Items.Clear;
      cmbMobileNumber.Items.Clear;
      cmbStoreName.Items.Clear;
      while not EOF do
      begin
        cmbFirstName.Items.Add(FieldByName('FirstName').AsString);
        cmbLastName.Items.Add(FieldByName('LastName').AsString);
        cmbMobileNumber.Items.Add(FieldByName('MobileNumber').AsString);
        cmbStoreName.Items.Add(FieldByName('StoreName').AsString);
        FUserIDList[k] := FieldByName('ID').AsInteger;
        k := k +1;
        Next;
      end;
      Close;
    end;
  finally
    qr.Free;
  end;

end;

procedure TfrmRpCustommer.qryCreatedateGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  lDate, lTime: string;
begin
  if Sender.AsString <> '' then
  begin
    lDate := FormatDateTime('yyyy/mm/dd',Sender.AsDateTime);
    lDate := Milady2Shamsi(lDate);
    text := lDate;
  end;

end;

procedure TfrmRpCustommer.qryLastLoginDateGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  lDate, lTime: string;
begin
  if Sender.AsString <> '' then
  begin
    lDate := FormatDateTime('yyyy/mm/dd',Sender.AsDateTime);
    lDate := Milady2Shamsi(lDate);
    text := lDate;
  end;

end;

procedure TfrmRpCustommer.qryLastRequestGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  lDate, lTime: string;
begin
  if Sender.AsString <> '' then
  begin
    lDate := FormatDateTime('yyyy/mm/dd',Sender.AsDateTime);
    lDate := Milady2Shamsi(lDate);
    text := lDate;
  end;
end;

procedure TfrmRpCustommer.SetValues;
var
  lblReportDate: TfrxMemoView;
begin
  lblReportDate := frxReport.FindObject('lblDate') as TfrxMemoView;
  lblReportDate.Text := CurrentDate;
end;

end.
