unit untRpStuffBrand;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, untDmPakhsh,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  AdvSmoothButton, cxCheckBox, Vcl.StdCtrls, AdvSmoothPanel, cxRadioGroup, Data.DB, DBAccess, Uni, MemDS, Vcl.FileCtrl,
  DateProc, MSGs, frxClass, frxDBSet, frxExportXLS, frxExportPDF, frxExportImage, SolarCalendarPackage,
  frxExportBaseDialog;


type
  TfrmRpStuffBrand = class(TForm)
    pnlEdit: TAdvSmoothPanel;
    pnlBottom: TAdvSmoothPanel;
    btnOK: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    pnlGrid: TAdvSmoothPanel;
    grd: TDBGridEh;
    pnlStufInfo: TAdvSmoothPanel;
    rbAll: TcxRadioButton;
    rbBrand: TcxRadioButton;
    rbStuff: TcxRadioButton;
    cmbStuffBrandCode: TComboBox;
    lblStuffBrandCode: TLabel;
    lblStuffBrandName: TLabel;
    cmbStuffBrandName: TComboBox;
    lblBrandName: TLabel;
    cmbBrandName: TComboBox;
    lblStuffCode: TLabel;
    cmbStuffCode: TComboBox;
    lblStuffName: TLabel;
    cmbStuffName: TComboBox;
    cmbIsStuffBrand: TComboBox;
    cmbIsStuff: TComboBox;
    cmbIsBrand: TComboBox;
    pnlStock: TAdvSmoothPanel;
    Label7: TLabel;
    cmbLastStockSign: TComboBox;
    cmbIsLastStock: TComboBox;
    pnlActive: TAdvSmoothPanel;
    Label9: TLabel;
    cmbActive: TComboBox;
    chkSpecial: TcxCheckBox;
    pnlPrice: TAdvSmoothPanel;
    Label8: TLabel;
    cmbConsumerPriceSign: TComboBox;
    cmbIsConsumerPrice: TComboBox;
    Label10: TLabel;
    cmbPakhshPriceSign: TComboBox;
    cmbIsPakhshPrice: TComboBox;
    Label11: TLabel;
    Label12: TLabel;
    edtLastStock: TEdit;
    edtConsumerPrice: TEdit;
    edtPakhshPrice: TEdit;
    btnExcel: TAdvSmoothButton;
    btnPreview: TAdvSmoothButton;
    qry: TUniQuery;
    ds: TUniDataSource;
    qryStuffBrandID: TFloatField;
    qryStuffBrandCode: TWideStringField;
    qryStuffBrandName: TWideStringField;
    qryMinimumStuck: TIntegerField;
    qryMaximumStuck: TIntegerField;
    qryOrderPoint: TIntegerField;
    qryActivated: TBooleanField;
    qryDescription: TWideMemoField;
    qryIsSpecial: TBooleanField;
    qryStuffID: TFloatField;
    qryStuffName: TWideStringField;
    qryStuffCode: TWideStringField;
    qryStuffCategoryID: TFloatField;
    qryStuffCategoryName: TWideStringField;
    qryBrandID: TFloatField;
    qryBrandName: TWideStringField;
    qryInternal: TBooleanField;
    qrySellerName: TWideStringField;
    qrySellerPhone: TWideStringField;
    qryUnitID: TFloatField;
    qryUnitName: TWideStringField;
    qryEnglishName: TStringField;
    qryStockTransactionID: TFloatField;
    qryDateTime: TDateTimeField;
    qryTransactionCount: TIntegerField;
    qryTransactionType: TSmallintField;
    qryLastStock: TIntegerField;
    qryFromDate: TWideStringField;
    qryPrice: TFloatField;
    qryConsumerPrice: TFloatField;
    qryOffer: TSmallintField;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxDB: TfrxDBDataset;
    frxReport: TfrxReport;
    procedure rbAllClick(Sender: TObject);
    procedure rbStuffClick(Sender: TObject);
    procedure rbBrandClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbStuffBrandCodeExit(Sender: TObject);
    procedure cmbStuffBrandNameExit(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cmbStuffCodeExit(Sender: TObject);
    procedure cmbStuffNameExit(Sender: TObject);
    procedure qryDateTimeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnExcelClick(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure qryPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryConsumerPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryMinimumStuckGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryMaximumStuckGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryLastStockGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

Const
  qrString =
  'SELECT sbi.[StuffBrandID] ' +
  '    ,sbi.[StuffBrandCode] ' +
  '    ,sbi.[StuffBrandName] ' +
  '    ,sbi.[MinimumStuck] ' +
  '    ,sbi.[MaximumStuck] ' +
  '    ,sbi.[OrderPoint] ' +
  '    ,sbi.[Activated] '  +
  '    ,sbi.[Deleted] ' +
  '    ,sbi.[Description] '  +
  '    ,sbi.[IsSpecial] ' +
  '    ,sbi.[StuffID] '  +
  '    ,sbi.[StuffName] ' +
  '    ,sbi.[StuffCode] '  +
  '    ,sbi.[StuffCategoryID] '  +
  '    ,sbi.[StuffCategoryName] ' +
  '    ,sbi.[BrandID] ' +
  '    ,sbi.[BrandName] '  +
  '    ,sbi.[Internal] ' +
  '    ,sbi.[SellerName] ' +
  '    ,sbi.[SellerPhone] ' +
  '    ,sbi.[UnitID] '  +
  '    ,sbi.[UnitName] ' +
  '    ,sbi.[EnglishName] ' +
  '    ,sbi.[StockTransactionID] ' +
  '    ,sbi.[DateTime] ' +
  '    ,sbi.[TransactionCount] '  +
  '    ,sbi.[TransactionType] ' +
  '    ,sbi.[LastStock] ' +
	'    ,sbp.FromDate ' +
	'    ,sbp.Price '  +
	'    ,sbp.ConsumerPrice  ' +
	'    ,sbp.Offer  '  +
  'FROM [Pakhsh].[dbo].[StuffBrandInfo] AS sbi '  +
  'LEFT JOIN StuffBrandPrice AS sbp ON (sbi.StuffBrandID = sbp.StuffBrandID) ' +
  'WHERE sbi.Deleted = 0 ' +
  '      AND sbp.ID IN (SELECT MAX(id) AS ID FROM StuffBrandPrice ' +
  '                     WHERE FromDate <= ''%s'' ' +
  '                     GROUP BY StuffBrandID) ';



implementation

uses
  DBGridEhImpExp;

{$R *.dfm}

procedure TfrmRpStuffBrand.btnExcelClick(Sender: TObject);
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
    ExportDBGridEhToXlsx(grd,Path+'\StuffBrand' + '.xlsx',[]);
    InformationMessage(' فایل اکسل با موفقیت ایجاد شد')
  end;
end;

procedure TfrmRpStuffBrand.btnOKClick(Sender: TObject);
var
  lNotEmpty: boolean;
  l1, l2: string;
begin
  qryStr := format(qrString, [CurrentDate]);
  qry.SQL.Clear;
  qry.SQL.Add(qryStr);

  if rbAll.Checked then
  begin
    if (cmbStuffBrandCode.ItemIndex > -1) and (cmbIsStuffBrand.ItemIndex = 0) then
      qry.SQL.Add(format('AND sbi.StuffBrandID = %d', [FStuffBrandIDList[cmbStuffBrandCode.ItemIndex+1]]))
    else if (cmbStuffBrandCode.ItemIndex > -1) and (cmbIsStuffBrand.ItemIndex = 1) then
      qry.SQL.Add(format('AND sbi.StuffBrandID <> %d', [FStuffBrandIDList[cmbStuffBrandCode.ItemIndex+1]]));
  end
  else if rbStuff.Checked then
  begin
    if (cmbStuffCode.ItemIndex > -1) and (cmbIsStuff.ItemIndex = 0) then
      qry.SQL.Add(format('AND sbi.StuffID = %d', [FStuffIDList[cmbStuffCode.ItemIndex+1]]))
    else if (cmbStuffCode.ItemIndex > -1) and (cmbIsStuff.ItemIndex = 1) then
      qry.SQL.Add(format('AND sbi.StuffID <> %d', [FStuffIDList[cmbStuffCode.ItemIndex+1]]));
  end
  else if rbBrand.Checked then
  begin
    if (cmbBrandName.ItemIndex > -1) and (cmbIsBrand.ItemIndex = 0) then
      qry.SQL.Add(format('AND sbi.BrandID = %d ' , [FBrandIDList[cmbBrandName.ItemIndex+1]]))
    else if (cmbBrandName.ItemIndex > -1) and (cmbIsBrand.ItemIndex = 1) then
      qry.SQL.Add(format('AND sbi.BrandID <> %d ' , [FBrandIDList[cmbBrandName.ItemIndex+1]]));
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

    qry.SQL.Add(format('AND (%s(sbi.[LastStock] %s %s))', [l2, l1, edtLastStock.Text]));
  end;

  if edtConsumerPrice.Text <> '' then
  begin
    l1 := '';
    case cmbConsumerPriceSign.itemIndex of
      0: l1 := ' > ';
      1: l1 := ' >= ';
      2: l1 := ' = ';
      3: l1 := ' <= ';
      4: l1 := ' < ';
    end;

    l2 := '';
    if cmbIsConsumerPrice.ItemIndex = 1 then
      l2 := 'NOT ';

    qry.SQL.Add(format('AND (%s(sbp.ConsumerPrice %s %s))', [l2, l1, edtConsumerPrice.Text]));
  end;

  if edtPakhshPrice.Text <> '' then
  begin
    l1 := '';
    case cmbPakhshPriceSign.itemIndex of
      0: l1 := ' > ';
      1: l1 := ' >= ';
      2: l1 := ' = ';
      3: l1 := ' <= ';
      4: l1 := ' < ';
    end;

    l2 := '';
    if cmbIsPakhshPrice.ItemIndex = 1 then
      l2 := 'NOT ';

    qry.SQL.Add(format('AND (%s(sbp.Price %s %s))', [l2, l1, edtPakhshPrice.Text]));
  end;

  case cmbActive.ItemIndex of
    0: qry.SQL.Add('AND sbi.Activated = 1 ');
    1: qry.SQL.Add('AND sbi.Activated = 0 ');
  end;

  if chkSpecial.Checked then
    qry.SQL.Add('AND sbi.IsSpecial = 1 ');


  qry.Active := True;
  lNotEmpty := qry.RecordCount > 0;
  btnExcel.Enabled := lNotEmpty;
  btnPreview.Enabled := lNotEmpty;
end;

procedure TfrmRpStuffBrand.btnPreviewClick(Sender: TObject);
begin
  SetValues;
  frxReport.ShowReport()
end;

procedure TfrmRpStuffBrand.cmbStuffBrandCodeExit(Sender: TObject);
begin
  if cmbStuffBrandCode.ItemIndex = -1 then
    cmbStuffBrandName.text := '';
  cmbStuffBrandName.ItemIndex := cmbStuffBrandCode.ItemIndex;
end;

procedure TfrmRpStuffBrand.cmbStuffBrandNameExit(Sender: TObject);
begin
  if cmbStuffBrandName.ItemIndex = -1 then
    cmbStuffBrandCode.text := '';
  cmbStuffBrandCode.ItemIndex := cmbStuffBrandName.ItemIndex;
end;

procedure TfrmRpStuffBrand.cmbStuffCodeExit(Sender: TObject);
begin
  if cmbStuffCode.ItemIndex = -1 then
    cmbStuffName.text := '';
  cmbStuffName.ItemIndex := cmbStuffCode.ItemIndex;
end;

procedure TfrmRpStuffBrand.cmbStuffNameExit(Sender: TObject);
begin
  if cmbStuffName.ItemIndex = -1 then
    cmbStuffCode.text := '';
  cmbStuffCode.ItemIndex := cmbStuffName.ItemIndex;
end;

procedure TfrmRpStuffBrand.FormCreate(Sender: TObject);
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

procedure TfrmRpStuffBrand.qryConsumerPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmRpStuffBrand.qryDateTimeGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TfrmRpStuffBrand.qryLastStockGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmRpStuffBrand.qryMaximumStuckGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmRpStuffBrand.qryMinimumStuckGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmRpStuffBrand.qryPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmRpStuffBrand.rbAllClick(Sender: TObject);
begin
  SetEnabeldItem;
  cmbStuffCode.ItemIndex := -1;
  cmbStuffName.ItemIndex := -1;
  cmbBrandName.ItemIndex := -1;
  cmbIsStuff.ItemIndex := 0;
  cmbIsBrand.ItemIndex := 0;
end;

procedure TfrmRpStuffBrand.rbBrandClick(Sender: TObject);
begin
  SetEnabeldItem;
  cmbStuffCode.ItemIndex := -1;
  cmbStuffName.ItemIndex := -1;
  cmbStuffBrandCode.ItemIndex := -1;
  cmbStuffBrandName.ItemIndex := -1;
  cmbIsStuff.ItemIndex := 0;
  cmbIsStuffBrand.ItemIndex := 0;
end;

procedure TfrmRpStuffBrand.rbStuffClick(Sender: TObject);
begin
  SetEnabeldItem;
  cmbStuffBrandCode.ItemIndex := -1;
  cmbStuffBrandName.ItemIndex := -1;
  cmbBrandName.ItemIndex := -1;
  cmbIsBrand.ItemIndex := 0;
  cmbIsStuffBrand.ItemIndex := 0;
end;

procedure TfrmRpStuffBrand.SetEnabeldItem;
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

procedure TfrmRpStuffBrand.SetValues;
var
  lblReportDate: TfrxMemoView;
begin
  lblReportDate := frxReport.FindObject('lblDate') as TfrxMemoView;
  lblReportDate.Text := CurrentDate;
end;

end.
