unit untReturnToInventory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  cxCheckBox, Vcl.StdCtrls, AdvSmoothButton, AdvSmoothPanel, SolarCalendarPackage, untDmPakhsh, Data.DB, DBAccess, Uni,
  MemDS, VirtualTable, DateProc, UniProvider, SQLServerUniProvider, MSGs;

type
  TfrmReturnToInventory = class(TForm)
    pnlHeader: TAdvSmoothPanel;
    btnAdd: TAdvSmoothButton;
    btnEdit: TAdvSmoothButton;
    btnDelete: TAdvSmoothButton;
    pnlEdit: TAdvSmoothPanel;
    Label1: TLabel;
    edtNumber: TEdit;
    pnlGrid: TAdvSmoothPanel;
    grdReceipt: TDBGridEh;
    pnlBottom: TAdvSmoothPanel;
    btnOK: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    edtDate: TSolarDatePicker;
    Label2: TLabel;
    Label4: TLabel;
    edtSumPrice: TEdit;
    Label5: TLabel;
    edtReason: TEdit;
    qry: TUniQuery;
    ds: TUniDataSource;
    AdvSmoothPanel3: TAdvSmoothPanel;
    Label10: TLabel;
    edtFromDate: TSolarDatePicker;
    edtToDate: TSolarDatePicker;
    Label11: TLabel;
    btnRefresh: TAdvSmoothButton;
    edtValue: TEdit;
    Label3: TLabel;
    Label8: TLabel;
    edtPrice: TEdit;
    Label6: TLabel;
    cmbStuffBrandCode: TComboBox;
    Label7: TLabel;
    cmbStuffBrandName: TComboBox;
    pnlReceiptItemAction: TAdvSmoothPanel;
    Label9: TLabel;
    Label12: TLabel;
    lblForosh: TLabel;
    lblPakhsh: TLabel;
    Label13: TLabel;
    lblUnit: TLabel;
    qryID: TFloatField;
    qryNumber: TWideStringField;
    qryDate: TWideStringField;
    qryStuffBrandID: TFloatField;
    qryUnitID: TFloatField;
    qryValue: TFloatField;
    qryPrice: TFloatField;
    qrySumPrice: TFloatField;
    qryReason: TWideStringField;
    qryStuffBrandCode: TWideStringField;
    qryStuffBrandName: TWideStringField;
    qryUnitName: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure btnOKClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbStuffBrandCodeExit(Sender: TObject);
    procedure cmbStuffBrandNameExit(Sender: TObject);
    procedure edtPriceExit(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure qrySumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryValueGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    FStuffBrandIDList: array Of Integer;
    FUnitIDList: array Of Integer;
    FEditMode: Boolean;
    fInsertedID: string;
    fMode: byte;

    procedure EditMode(AEditMode: Boolean);
    procedure SetInfoStuffBrand;
    function InsertToStockTransaction: boolean;
    function InsertReturnToInventory: boolean;
    function AreValidFields: Boolean;

    function GetStockTransactionQuery: string;
    function GetLastStock(aStuffBrandID: string): integer;
  public
    { Public declarations }
  end;

var
  frmReturnToInventory: TfrmReturnToInventory;

implementation

{$R *.dfm}

procedure TfrmReturnToInventory.btnRefreshClick(Sender: TObject);
begin
  qry.Active := False;
  qry.SQL.Clear;
  qry.SQL.Add('SELECT rti.ID, rti.Number, rti.Date, rti.StuffBrandID, rti.UnitID, rti.Value, rti.Price, rti.SumPrice, rti.Reason, ');
  qry.SQL.Add('sb.Code AS StuffBrandCode, s.Name + '' '' + b.Name AS StuffBrandName, u.Name AS UnitName ');
  qry.SQL.Add('FROM [Pakhsh].[dbo].[ReturnToInventory] AS rti ');
  qry.SQL.Add('LEFT JOIN StuffBrand AS sb ON (rti.StuffBrandID = sb.ID) ');
  qry.SQL.Add('LEFT JOIN Stuff AS s ON (sb.StuffID = s.ID) ');
  qry.SQL.Add('LEFT JOIN Brand AS b ON (sb.BrandID = b.ID) ');
  qry.SQL.Add('LEFT JOIN Unit AS u ON (rti.UnitID = u.ID) ');
  qry.SQL.Add(format('WHERE (rti.Date >= ''%s'') AND (rti.Date <= ''%s'') ',
                   [edtFromDate.text, edtToDate.Text]));
  qry.Active := True;
end;

procedure TfrmReturnToInventory.cmbStuffBrandCodeExit(Sender: TObject);
begin
  if cmbStuffBrandCode.ItemIndex = -1 then
    cmbStuffBrandName.text := '';
  cmbStuffBrandName.ItemIndex := cmbStuffBrandCode.ItemIndex;
  SetInfoStuffBrand;
end;

procedure TfrmReturnToInventory.cmbStuffBrandNameExit(Sender: TObject);
begin
  if cmbStuffBrandName.ItemIndex = -1 then
    cmbStuffBrandCode.text := '';
  cmbStuffBrandCode.ItemIndex := cmbStuffBrandName.ItemIndex;
  SetInfoStuffBrand;
end;

function TfrmReturnToInventory.AreValidFields: Boolean;
begin
  AreValidFields := False;
  if (edtNumber.Text = '0') or (edtNumber.Text = '') then
  begin
    ErrorMessage('شماره برگشت به انبار مشخص نشده است');
    edtNumber.SetFocus;
    Exit
  end
  else if dmPakhsh.IsExistsRec_Val('ReturnToInventory', 'Number', edtNumber.Text) then
  begin
    ErrorMessage('شماره برگشت به انبار وارد شده تکراری است');
    edtNumber.SetFocus;
    Exit
  end
  else if (edtDate.Text = '') then
  begin
    ErrorMessage('تاریخ برگشت به انبار مشخص نیست');
    edtDate.SetFocus;
    Exit
  end
  else if (edtPrice.Text = '') then
  begin
    ErrorMessage('مبلغ برگشت به انبار وارد نشده است');
    edtPrice.SetFocus;
    Exit
  end
  else if (edtReason.Text = '') then
  begin
    ErrorMessage('علت برگشت به انبار وارد نشده است');
    edtReason.SetFocus;
    Exit
  end
  else if (edtValue.Text = '') or (edtValue.Text = '0')then
  begin
    ErrorMessage('میزان برگشت به انبار وارد نشده است');
    edtValue.SetFocus;
    Exit
  end
  else
    AreValidFields := True;
end;

procedure TfrmReturnToInventory.btnAddClick(Sender: TObject);
begin
  EditMode(True);
  fMode := MB_NEW;
  edtDate.Text := CurrentDate;
  edtNumber.Text := '';
  edtSumPrice.Text := '0';
  edtValue.Text := '0';
  edtReason.Text := '';
  edtPrice.Text := '0';
  cmbStuffBrandCode.SetFocus;
end;

procedure TfrmReturnToInventory.btnDeleteClick(Sender: TObject);
begin
  InformationMessage('فعلا هیچ یک از تراکنش های انبار قابل حذف نیست');

end;



procedure TfrmReturnToInventory.btnEditClick(Sender: TObject);
begin
  EditMode(True);
  fMode := MB_EDIT;
  edtNumber.SetFocus;
end;

procedure TfrmReturnToInventory.btnOKClick(Sender: TObject);
var
  lDate, lStuffBrandCode, lNumber, lReason: string;
  lStuffBrandID, lUnitID, lValue, lPrice, lSumPrice: Integer;
begin
  if edtPrice.Text = '' then
    edtPrice.Text := '0';
  if edtSumPrice.Text = '' then
    edtSumPrice.Text := '0';
  if edtValue.Text = '' then
    edtValue.Text := '0';




  if AreValidFields then
  begin
    if fMode = MB_NEW then
    begin
      If InsertReturnToInventory AND  InsertToStockTransaction then
        InformationMessage('برگشت به انبار با موفقیت ثبت شد')
      else
        ErrorMessage('خطایی در ثبت رسید رخ داد');
    end
    else if fMode = MB_Edit  then
    begin

    end;

    if fMode = MB_NEW then
    begin
      btnRefreshClick(self);
      qry.Last;
    end;

    EditMode(False);
    fMode := MB_VIEW;


  end;
end;

procedure TfrmReturnToInventory.dsDataChange(Sender: TObject; Field: TField);
begin
  if (qry.RecordCount > 0) and (not FEditMode) then
  begin
    btnDelete.Enabled := True;
    btnEdit.Enabled := True;
  end
  else
  begin
    btnDelete.Enabled := false;
    btnEdit.Enabled := false;
  end;
  edtDate.Text := qryDate.AsString;
  edtNumber.Text := qryNumber.AsString;
  edtSumPrice.Text := qrySumPrice.AsString;
  edtReason.Text := qryReason.AsString;
  edtValue.Text := qryValue.AsString;
  edtPrice.Text := qryPrice.AsString;
  cmbStuffBrandCode.Text := qryStuffBrandCode.AsString;
  cmbStuffBrandName.Text := qryStuffBrandName.AsString;
  lblUnit.Caption := qryUnitName.AsString;

end;

procedure TfrmReturnToInventory.EditMode(AEditMode: Boolean);
begin
  btnEdit.Enabled :=   not AEditMode;
  btnAdd.Enabled :=    not AEditMode;
  btnDelete.Enabled := not AEditMode;
  pnlEdit.Enabled := AEditMode;

  if AEditMode then
  begin
    pnlEdit.Fill.Color := $0056A4FA;
  end
  else
  begin
    pnlEdit.Fill.Color := clWhite;
  end;

  FEditMode := AEditMode;
  pnlGrid.Enabled := not AEditMode ;
  btnOK.Enabled := AEditMode;
end;

procedure TfrmReturnToInventory.edtPriceExit(Sender: TObject);
begin
  if (edtValue.Text <> '') And (edtPrice.Text <> '') then
    edtSumPrice.Text := IntToStr(strtoint(edtValue.Text) *  strtoint(edtPrice.Text));
end;

procedure TfrmReturnToInventory.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FEditMode then
    if ConfirmMessage('تغییرات ذخیره شود؟') then
      btnOKClick(self)
    else
    begin
      qry.Close;
      ModalResult := mrClose;
    end;
end;

procedure TfrmReturnToInventory.FormCreate(Sender: TObject);
var
  qr: TUniQuery;
  K: Integer;
begin
  fMode := MB_VIEW;
  EditMode(False);
  qry.Connection := dmPakhsh.Con;


  qr := TUniQuery.Create(Application);
  with qr do
  begin
    connection := dmPakhsh.Con;
    SQL.Clear;
    SQL.Add('SELECT sb.ID, s.Name + '' '' + b.Name AS StuffBrandName, sb.Code AS StuffBrandCode, sb.UnitID FROM stuffBrand AS sb ');
    SQL.Add('LEFT JOIN Stuff AS s ON(sb.StuffID = s.ID) ');
    SQL.Add('LEFT JOIN Brand AS b ON(sb.BrandID = b.ID) ');
    SQL.Add('WHERE sb.Activated = 1 AND sb.Deleted = 0 ');
    SQL.Add('ORDER BY StuffBrandName ');
    Open;
    SetLength(FStuffBrandIDList, qr.RecordCount + 1);
    SetLength(FUnitIDList, qr.RecordCount + 1);
    k := 1;
    cmbStuffBrandName.Items.Clear;
    cmbStuffBrandCode.Items.Clear;
    while not EOF do
    begin
      cmbStuffBrandName.Items.Add(FieldByName('StuffBrandName').AsString);
      cmbStuffBrandCode.Items.Add(FieldByName('StuffBrandCode').AsString);
      FStuffBrandIDList[k] := FieldByName('ID').AsInteger;
      FUnitIDList[K] := FieldByName('UnitID').AsInteger;
      k := k +1;
      Next;
    end;
    Close;

  end;
  qr.Free;

  edtFromDate.text := Copy(CurrentDate, 1, 4) + '/01/01';
  edtToDate.Text := CurrentDate;
  btnRefreshClick(self);
end;

function TfrmReturnToInventory.GetLastStock(aStuffBrandID: string): integer;
var
  qr: TUniQuery;
begin
  Result := 0;
  qr := TUniQuery.Create(Self);
  qr.Connection := dmPakhsh.Con;
  try
    try
      with qr do
      begin
        SQL.Clear;
        SQL.Add('SELECT Top 1 ISNULL(LastStock, 0) AS LastStock ');
        SQL.Add('FROM [Pakhsh].[dbo].[StockTransaction] ');
        SQL.Add(format('WHERE StuffBrandID = %s ', [aStuffBrandID]));
        SQL.Add('ORDER BY [DateTime] Desc ');
        Open;
        result := FieldByName('LastStock').AsInteger;
        Close;
      end;
    except
    end;
  finally
    qr.Free;
  end;
end;

function TfrmReturnToInventory.GetStockTransactionQuery: string;
var
  lStr: TStringList;
  I: Integer;
  lCount, lLastStock: Integer;
begin
  lStr := TStringList.Create;
  lCount := StrToInt(edtValue.Text);
  try
    lStr.Clear;
    lStr.add('INSERT INTO dbo.StockTransaction ');
    lStr.add('  ([DateTime], TransactionType, TransactionID, TransactionSign, StuffBrandID, TransactionCount, LastStock) ');
    lStr.add('VALUES ');

    lStr.Add(format('( GETDATE(), 5, %s, ', [fInsertedID]));
    lStr.Add(format('1, %d ',[FStuffBrandIDList[cmbStuffBrandCode.ItemIndex+1]]));
    lStr.Add(format(',%d ', [lCount]));
    lLastStock := GetLastStock(IntToStr(FStuffBrandIDList[cmbStuffBrandCode.ItemIndex+1]));
    lStr.Add(format(',%d) ', [lLastStock + lCount]));

  finally
    Result := lStr.text;
    lStr.Free;
  end;
end;

function TfrmReturnToInventory.InsertReturnToInventory: boolean;
var
  qr: TUniQuery;
begin
  Result := False;
  fInsertedID := '';

  try
    qr := TUniQuery.Create(Self);
    qr.Connection := dmPakhsh.Con;
    try
      with qr do
      begin
        SQL.Clear;
        SQL.Add('');

        SQL.Add('INSERT INTO [dbo].[ReturnToInventory] ');
        SQL.Add('(Number, Date, StuffBrandID, UnitID, Value, Price, SumPrice, Reason) ');
        SQL.Add('VALUES ');
        SQL.Add(format('(''%s'' ', [edtNumber.Text]));
        SQL.Add(format(',''%s'' ', [edtDate.Text]));
        SQL.Add(format(',%d ', [FStuffBrandIDList[cmbStuffBrandCode.ItemIndex+1]]));
        SQL.Add(format(',%d ', [FUnitIDList[cmbStuffBrandCode.ItemIndex+1]]));
        SQL.Add(format(',%s ', [edtValue.text]));
        SQL.Add(format(',%s ', [edtPrice.text]));
        SQL.Add(format(',%s ', [edtSumPrice.text]));
        SQL.Add(format(',N''%s'' ) ', [edtReason.Text]));

        SQL.Add('SELECT SCOPE_IDENTITY() AS InsertedID ');
        Open;
        fInsertedID := FieldByName('InsertedID').AsString;
        Close;
      end;
    finally
      qr.Free;
    end;
    Result := True;
  except
  end;

end;

function TfrmReturnToInventory.InsertToStockTransaction: Boolean;
var
  qr: TUniQuery;
  lqrStr: string;
begin
  Result := False;
  if fInsertedID <> '' then
  begin
    try
      lqrStr := GetStockTransactionQuery;
      qr := TUniQuery.Create(Self);
      qr.Connection := dmPakhsh.Con;
      try

        with qr do
        begin
          SQL.Clear;
          SQL.Add(lqrStr);
          Execute;
        end;
      finally
        qr.Free;
      end;
      Result := True;
    except
    end;
  end;
end;

procedure TfrmReturnToInventory.pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
  begin
    fMode := MB_VIEW;
    EditMode(False);
  end;
end;



procedure TfrmReturnToInventory.qryPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmReturnToInventory.qrySumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmReturnToInventory.qryValueGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmReturnToInventory.SetInfoStuffBrand;
var
  qr: TUniQuery;
begin
  qr := TUniQuery.Create(Self);
  try
    qr.Connection := dmPakhsh.Con;
    qr.SQL.Clear;
    qr.SQL.Add(format('SELECT TOP 1 Name FROM unit WHERE ID = %d ', [FUnitIDList[cmbStuffBrandCode.ItemIndex+1]]));
    qr.Open;
    lblUnit.Caption := qr.FieldByName('Name').AsString;
    qr.Close;
    qr.SQL.Clear;
    qr.SQL.Add('SELECT top 1 ');
    qr.SQL.Add('   sbp.ConsumerPrice, ');
    qr.SQL.Add('   sbp.Price, ');
    qr.SQL.Add('   sbp.Offer ');
    qr.SQL.Add('FROM StuffBrandPrice AS sbp ');
    qr.SQL.Add('LEFT JOIN StuffBrand AS sb ON (sbp.StuffBrandID = sb.ID) ');
    qr.SQL.Add('WHERE sb.Activated = 1 AND sb.Deleted = 0  And ');
		qr.SQL.Add('	            sbp.ID IN (SELECT MAX(id) AS ID FROM StuffBrandPrice ');
		qr.SQL.Add(format('					                WHERE FromDate <= ''%s'' ', [CurrentDate]));
		qr.SQL.Add('					                GROUP BY StuffBrandID) ');
	  qr.SQL.Add(format('    AND sbp.StuffBrandID = %d ', [FStuffBrandIDList[cmbStuffBrandCode.ItemIndex+1]]));
    qr.Open;
    lblForosh.Caption := qr.FieldByName('ConsumerPrice').AsString;
    lblPakhsh.Caption := qr.FieldByName('Price').AsString;
    qr.Close;
  finally
    qr.Free;
  end;

end;

end.
