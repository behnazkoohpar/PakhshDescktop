unit untRpStockTransactionHistory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, untDmPakhsh,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  AdvSmoothButton, cxCheckBox, Vcl.StdCtrls, AdvSmoothPanel, cxRadioGroup, Data.DB, DBAccess, Uni, MemDS, Vcl.FileCtrl,
  DateProc, MSGs, frxClass, frxDBSet, frxExportXLS, frxExportPDF, frxExportImage, SolarCalendarPackage,
  frxExportBaseDialog;

Const
  qrString =
  'SELECT [StuffBrandID] ' +
  '      ,[StuffBrandCode] ' +
  '      ,[StuffBrandName] '  +
  '      ,[MinimumStuck] ' +
  '      ,[MaximumStuck] ' +
  '      ,[OrderPoint] ' +
  '      ,[Activated] ' +
  '      ,[Deleted] ' +
  '      ,[Description] ' +
  '      ,[IsSpecial] ' +
  '      ,[StuffID] ' +
  '      ,[StuffName] ' +
  '      ,[StuffCode] ' +
  '      ,[StuffCategoryID] '  +
  '      ,[StuffCategoryName] '  +
  '      ,[BrandID] ' +
  '      ,[BrandName] ' +
  '      ,[Internal] ' +
  '      ,[SellerName] ' +
  '      ,[SellerPhone] ' +
  '      ,[UnitID] ' +
  '      ,[UnitName] ' +
  '      ,[EnglishName] ' +
  '      ,[StockTransactionID] ' +
  '      ,[DateTime] ' +
  '      ,[TransactionCount] ' +
  '      ,[TransactionType] ' +
  '      ,[LastStock] ' +
  'FROM [Pakhsh].[dbo].[StuffBrandInfo] WHERE 1=1 ';


type
  TfrmRpStockTransactionHistory = class(TForm)
    pnlEdit: TAdvSmoothPanel;
    pnlBottom: TAdvSmoothPanel;
    btnOK: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    pnlGrid: TAdvSmoothPanel;
    grd: TDBGridEh;
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
    frxDBDetailes: TfrxDBDataset;
    pnlStufInfo: TAdvSmoothPanel;
    lblStuffBrandCode: TLabel;
    lblStuffBrandName: TLabel;
    lblBrandName: TLabel;
    lblStuffCode: TLabel;
    lblStuffName: TLabel;
    rbAll: TcxRadioButton;
    rbBrand: TcxRadioButton;
    rbStuff: TcxRadioButton;
    cmbStuffBrandCode: TComboBox;
    cmbStuffBrandName: TComboBox;
    cmbBrandName: TComboBox;
    cmbStuffCode: TComboBox;
    cmbStuffName: TComboBox;
    cmbIsStuffBrand: TComboBox;
    cmbIsStuff: TComboBox;
    cmbIsBrand: TComboBox;
    pnlStock: TAdvSmoothPanel;
    Label7: TLabel;
    cmbLastStockSign: TComboBox;
    edtLastStock: TEdit;
    cmbIsLastStock: TComboBox;
    pnlActive: TAdvSmoothPanel;
    Label9: TLabel;
    cmbActive: TComboBox;
    chkSpecial: TcxCheckBox;
    AdvSmoothPanel3: TAdvSmoothPanel;
    Label1: TLabel;
    CmbTransactionDateSign: TComboBox;
    cmbIsTransactionDate: TComboBox;
    edtTransactionDate: TSolarDatePicker;
    AdvSmoothPanel1: TAdvSmoothPanel;
    Label4: TLabel;
    cmbTransactionType: TComboBox;
    qryStuffBrandID: TFloatField;
    qryStuffBrandCode: TWideStringField;
    qryStuffBrandName: TWideStringField;
    qryMinimumStuck: TIntegerField;
    qryMaximumStuck: TIntegerField;
    qryOrderPoint: TIntegerField;
    qryActivated: TBooleanField;
    qryDeleted: TBooleanField;
    qryIsSpecial: TBooleanField;
    qryStuffID: TFloatField;
    qryStuffName: TWideStringField;
    qryStuffCode: TWideStringField;
    qryStuffCategoryID: TFloatField;
    qryStuffCategoryName: TWideStringField;
    qryBrandID: TFloatField;
    qryBrandName: TWideStringField;
    qryInternal: TBooleanField;
    qryUnitID: TFloatField;
    qryUnitName: TWideStringField;
    qryEnglishName: TStringField;
    qryStockTransactionID: TFloatField;
    qryDateTime: TDateTimeField;
    qryTransactionCount: TIntegerField;
    qryTransactionType: TSmallintField;
    qryLastStock: TIntegerField;
    qryDetailesID: TFloatField;
    qryDetailesDateTime: TDateTimeField;
    qryDetailesTransactionType: TSmallintField;
    qryDetailesStuffBrandID: TFloatField;
    qryDetailesTransactionCount: TIntegerField;
    qryDetailesLastStock: TIntegerField;
    qryDetailesTransactionSign: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure qryDetailesTransactionSignGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryDetailesTransactionTypeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryDetailesDateTimeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryDateTimeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryTransactionTypeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cmbStuffBrandCodeExit(Sender: TObject);
    procedure cmbStuffBrandNameExit(Sender: TObject);
    procedure cmbStuffCodeExit(Sender: TObject);
    procedure cmbStuffNameExit(Sender: TObject);
    procedure rbAllClick(Sender: TObject);
    procedure rbStuffClick(Sender: TObject);
    procedure rbBrandClick(Sender: TObject);
  private
    qryStr: String;
    FStuffBrandIDList: array Of Integer;
    FStuffIDList: array Of Integer;
    FBrandIDList: array Of Integer;
    procedure SetEnabeldItem;

    procedure SetValues;
  public
    { Public declarations }
  end;

implementation

uses
  DBGridEhImpExp;

{$R *.dfm}

procedure TfrmRpStockTransactionHistory.btnExcelClick(Sender: TObject);
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
    ExportDBGridEhToXlsx(grd,Path+'\TransactionHistory' + '.xlsx',[]);
    InformationMessage(' فایل اکسل با موفقیت ایجاد شد')
  end;
end;

procedure TfrmRpStockTransactionHistory.btnOKClick(Sender: TObject);
var
  lNotEmpty: boolean;
  l1, l2, lMiladi: string;
  s: string;
begin
  qryStr := format(qrString, [CurrentDate]);
  qry.SQL.Clear;
  qry.SQL.Add(qryStr);

  if rbAll.Checked then
  begin
    if (cmbStuffBrandCode.ItemIndex > -1) and (cmbIsStuffBrand.ItemIndex = 0) then
      qry.SQL.Add(format('AND StuffBrandID = %d', [FStuffBrandIDList[cmbStuffBrandCode.ItemIndex+1]]))
    else if (cmbStuffBrandCode.ItemIndex > -1) and (cmbIsStuffBrand.ItemIndex = 1) then
      qry.SQL.Add(format('AND StuffBrandID <> %d', [FStuffBrandIDList[cmbStuffBrandCode.ItemIndex+1]]));
  end
  else if rbStuff.Checked then
  begin
    if (cmbStuffCode.ItemIndex > -1) and (cmbIsStuff.ItemIndex = 0) then
      qry.SQL.Add(format('AND StuffID = %d', [FStuffIDList[cmbStuffCode.ItemIndex+1]]))
    else if (cmbStuffCode.ItemIndex > -1) and (cmbIsStuff.ItemIndex = 1) then
      qry.SQL.Add(format('AND StuffID <> %d', [FStuffIDList[cmbStuffCode.ItemIndex+1]]));
  end
  else if rbBrand.Checked then
  begin
    if (cmbBrandName.ItemIndex > -1) and (cmbIsBrand.ItemIndex = 0) then
      qry.SQL.Add(format('AND BrandID = %d ' , [FBrandIDList[cmbBrandName.ItemIndex+1]]))
    else if (cmbBrandName.ItemIndex > -1) and (cmbIsBrand.ItemIndex = 1) then
      qry.SQL.Add(format('AND BrandID <> %d ' , [FBrandIDList[cmbBrandName.ItemIndex+1]]));
  end;

  if edtLastStock.Text <> '' then
  begin
    l1 := '';
    case cmbLastStockSign.itemIndex of
      0: l1 := ' > ';
      1: l1 := ' >= ';
      2: l1 := ' = ';
      3: l1 := ' <= ';
      4: l1 := ' < ';
    end;

    l2 := '';
    if cmbIsLastStock.ItemIndex = 1 then
      l2 := 'NOT ';

    qry.SQL.Add(format('AND (%s([LastStock] %s %s))', [l2, l1, edtLastStock.Text]));
  end;

  if edtTransactionDate.Text <> '' then
  begin
    l1 := '';
    case cmbTransactionDateSign.itemIndex of
      0: l1 := ' > ';
      1: l1 := ' >= ';
      2: l1 := ' = ';
      3: l1 := ' <= ';
      4: l1 := ' < ';
    end;

    l2 := '';
    if cmbIsTransactionDate.ItemIndex = 1 then
      l2 := 'NOT ';
    lMiladi := Shamsi2MiladySQL(edtTransactionDate.Text);
    qry.SQL.Add(format('AND (%s(Cast([DateTime] AS Date) %s ''%s''))', [l2, l1, lMiladi]));
  end;



  case cmbActive.ItemIndex of
    0: qry.SQL.Add('AND Activated = 1 ');
    1: qry.SQL.Add('AND Activated = 0 ');
  end;

  case cmbTransactionType.ItemIndex of
    1: qry.SQL.Add('AND TransactionType = 1 ');
    2: qry.SQL.Add('AND TransactionType = 2 ');
    3: qry.SQL.Add('AND TransactionType = 3 ');
    4: qry.SQL.Add('AND TransactionType = 4 ');
    5: qry.SQL.Add('AND TransactionType = 5 ');
  end;

  if chkSpecial.Checked then
    qry.SQL.Add('AND IsSpecial = 1 ');



  qry.Active := True;
  qryDetailes.Active := True;
  lNotEmpty := qry.RecordCount > 0;
  btnExcel.Enabled := lNotEmpty;
  btnPreview.Enabled := lNotEmpty;
end;

procedure TfrmRpStockTransactionHistory.btnPreviewClick(Sender: TObject);
begin
  SetValues;
  frxReport.ShowReport()
end;

procedure TfrmRpStockTransactionHistory.cmbStuffBrandCodeExit(Sender: TObject);
begin
  if cmbStuffBrandCode.ItemIndex = -1 then
    cmbStuffBrandName.text := '';
  cmbStuffBrandName.ItemIndex := cmbStuffBrandCode.ItemIndex;
end;

procedure TfrmRpStockTransactionHistory.cmbStuffBrandNameExit(Sender: TObject);
begin
  if cmbStuffBrandName.ItemIndex = -1 then
    cmbStuffBrandCode.text := '';
  cmbStuffBrandCode.ItemIndex := cmbStuffBrandName.ItemIndex;
end;

procedure TfrmRpStockTransactionHistory.cmbStuffCodeExit(Sender: TObject);
begin
  if cmbStuffCode.ItemIndex = -1 then
    cmbStuffName.text := '';
  cmbStuffName.ItemIndex := cmbStuffCode.ItemIndex;
end;

procedure TfrmRpStockTransactionHistory.cmbStuffNameExit(Sender: TObject);
begin
  if cmbStuffName.ItemIndex = -1 then
    cmbStuffCode.text := '';
  cmbStuffCode.ItemIndex := cmbStuffName.ItemIndex;
end;

procedure TfrmRpStockTransactionHistory.FormCreate(Sender: TObject);
var
  qr: TUniQuery;
  K: Integer;
begin
  qry.Connection := dmPakhsh.Con;
  qryDetailes.Connection := dmPakhsh.Con;

  qr := TUniQuery.Create(Application);
  try
    with qr do
    begin
      connection := dmPakhsh.Con;
      SQL.Clear;
      SQL.Add('SELECT sb.ID, s.Name + '' '' + b.Name AS StuffBrandName, sb.Code AS StuffBrandCode FROM stuffBrand AS sb ');
      SQL.Add('LEFT JOIN Stuff AS s ON(sb.StuffID = s.ID) ');
      SQL.Add('LEFT JOIN Brand AS b ON(sb.BrandID = b.ID) ');
      SQL.Add('WHERE sb.Activated = 1 AND sb.Deleted = 0 ');
      SQL.Add('ORDER BY StuffBrandName ');
      Open;
      SetLength(FStuffBrandIDList, qr.RecordCount + 1);
      k := 1;
      cmbStuffBrandName.Items.Clear;
      cmbStuffBrandCode.Items.Clear;
      while not EOF do
      begin
        cmbStuffBrandName.Items.Add(FieldByName('StuffBrandName').AsString);
        cmbStuffBrandCode.Items.Add(FieldByName('StuffBrandCode').AsString);
        FStuffBrandIDList[k] := FieldByName('ID').AsInteger;
        k := k +1;
        Next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT ID AS StuffID, Name AS StuffName, Code AS StuffCode FROM stuff ');
      SQL.Add('WHERE Activated = 1 ');
      SQL.Add('ORDER BY Name ');
      Open;
      SetLength(FStuffIDList, qr.RecordCount + 1);
      K := 1;
      cmbStuffName.Items.Clear;
      cmbStuffCode.Items.Clear;
      while not EOF do
      begin
        cmbStuffName.Items.Add(FieldByName('StuffName').AsString);
        cmbStuffCode.Items.Add(FieldByName('StuffCode').AsString);
        FStuffIDList[k] := FieldByName('StuffID').AsInteger;
        k := k +1;
        Next;
      end;

      Close;
      SQL.Clear;
      SQL.Add('SELECT ID AS BrandID, Name AS BrandName FROM Brand ');
      SQL.Add('WHERE Activated = 1 ');
      SQL.Add('ORDER BY Name ');
      Open;
      SetLength(FBrandIDList, qr.RecordCount + 1);
      K := 1;
      cmbBrandName.Items.Clear;
      while not EOF do
      begin
        cmbBrandName.Items.Add(FieldByName('BrandName').AsString);
        FBrandIDList[k] := FieldByName('BrandID').AsInteger;
        k := k +1;
        Next;
      end;
    end;
  finally
    qr.Free;
  end;
end;

procedure TfrmRpStockTransactionHistory.qryDateTimeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TfrmRpStockTransactionHistory.qryDetailesDateTimeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
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

procedure TfrmRpStockTransactionHistory.qryDetailesTransactionSignGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.AsInteger = 1 then
    Text := 'افزاینده'
  else if Sender.AsInteger = -1 then
    Text := 'کاهنده';
end;

procedure TfrmRpStockTransactionHistory.qryDetailesTransactionTypeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    1: Text := 'تخصیص موجودی اولیه';
    2: Text := 'رسید به انبار';
    3: Text := 'حواله از انبار';
    4: Text := 'مرجوع به فروشنده';
    5: Text := 'برگشت به انبار';
  end;
end;

procedure TfrmRpStockTransactionHistory.qryTransactionTypeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    1: Text := 'تخصیص موجودی اولیه';
    2: Text := 'رسید به انبار';
    3: Text := 'حواله از انبار';
    4: Text := 'مرجوع به فروشنده';
    5: Text := 'برگشت به انبار';
  end;
end;

procedure TfrmRpStockTransactionHistory.rbAllClick(Sender: TObject);
begin
  SetEnabeldItem;
  cmbStuffCode.ItemIndex := -1;
  cmbStuffName.ItemIndex := -1;
  cmbBrandName.ItemIndex := -1;
  cmbIsStuff.ItemIndex := 0;
  cmbIsBrand.ItemIndex := 0;
end;

procedure TfrmRpStockTransactionHistory.rbBrandClick(Sender: TObject);
begin
  SetEnabeldItem;
  cmbStuffCode.ItemIndex := -1;
  cmbStuffName.ItemIndex := -1;
  cmbStuffBrandCode.ItemIndex := -1;
  cmbStuffBrandName.ItemIndex := -1;
  cmbIsStuff.ItemIndex := 0;
  cmbIsStuffBrand.ItemIndex := 0;
end;

procedure TfrmRpStockTransactionHistory.rbStuffClick(Sender: TObject);
begin
  SetEnabeldItem;
  cmbStuffBrandCode.ItemIndex := -1;
  cmbStuffBrandName.ItemIndex := -1;
  cmbBrandName.ItemIndex := -1;
  cmbIsBrand.ItemIndex := 0;
  cmbIsStuffBrand.ItemIndex := 0;
end;

procedure TfrmRpStockTransactionHistory.SetEnabeldItem;
begin
  lblStuffBrandCode.Enabled := rbAll.Checked;
  lblStuffBrandName.Enabled := rbAll.Checked;
  cmbStuffBrandCode.Enabled := rbAll.Checked;
  cmbStuffBrandName.Enabled := rbAll.Checked;
  cmbIsStuffBrand.Enabled := rbAll.Checked;

  lblStuffCode.Enabled := rbStuff.Checked;
  lblStuffName.Enabled := rbStuff.Checked;
  cmbStuffCode.Enabled := rbStuff.Checked;
  cmbStuffName.Enabled := rbStuff.Checked;
  cmbIsStuff.Enabled := rbStuff.Checked;

  lblBrandName.Enabled := rbBrand.Checked;
  cmbBrandName.Enabled := rbBrand.Checked;
  cmbIsBrand.Enabled := rbBrand.Checked;
end;

procedure TfrmRpStockTransactionHistory.SetValues;
var
  lblReportDate: TfrxMemoView;
begin
  lblReportDate := frxReport.FindObject('lblDate') as TfrxMemoView;
  lblReportDate.Text := CurrentDate;
end;

end.
