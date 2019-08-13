unit untReceipt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  cxCheckBox, Vcl.StdCtrls, AdvSmoothButton, AdvSmoothPanel, SolarCalendarPackage, untDmPakhsh, Data.DB, DBAccess, Uni,
  MemDS, VirtualTable, DateProc, UniProvider, SQLServerUniProvider, MSGs, untReceiptItem;

type
  TfrmReceipt = class(TForm)
    pnlHeader: TAdvSmoothPanel;
    btnAdd: TAdvSmoothButton;
    btnEdit: TAdvSmoothButton;
    btnDelete: TAdvSmoothButton;
    pnlEdit: TAdvSmoothPanel;
    Label1: TLabel;
    edtReceiptNumber: TEdit;
    pnlGrid: TAdvSmoothPanel;
    grdReceipt: TDBGridEh;
    pnlBottom: TAdvSmoothPanel;
    btnOK: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    edtReceiptDate: TSolarDatePicker;
    Label2: TLabel;
    Label3: TLabel;
    edtReceiptFactorNumber: TEdit;
    Label4: TLabel;
    edtReceiptPrice: TEdit;
    Label5: TLabel;
    edtDescription: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edtViewCount: TEdit;
    edtViewReceiptPrice: TEdit;
    pnlReceiptItemAction: TAdvSmoothPanel;
    btnItems: TAdvSmoothButton;
    pnlReceiptItem: TAdvSmoothPanel;
    grdReceiptItem: TDBGridEh;
    Label8: TLabel;
    edtReceiptFactorDate: TSolarDatePicker;
    Label9: TLabel;
    qrReceipt: TUniQuery;
    qrReceiptItem: TUniQuery;
    dsReceipt: TUniDataSource;
    dsReceiptItem: TUniDataSource;
    AdvSmoothPanel3: TAdvSmoothPanel;
    Label10: TLabel;
    edtFromDate: TSolarDatePicker;
    edtToDate: TSolarDatePicker;
    Label11: TLabel;
    btnRefresh: TAdvSmoothButton;
    qrReceiptID: TFloatField;
    qrReceiptReceiptDate: TWideStringField;
    qrReceiptReceiptNumber: TWideStringField;
    qrReceiptFactorDate: TWideStringField;
    qrReceiptFactorNumber: TWideStringField;
    qrReceiptReceiptPrice: TFloatField;
    qrReceiptDescription: TWideStringField;
    vt: TVirtualTable;
    vtStuffBrandID: TLargeintField;
    vtStuffBrandUnitID: TLargeintField;
    vtStuffBrandConsumerPrice: TLargeintField;
    vtStuffBrandPrice: TLargeintField;
    vtValue: TIntegerField;
    vtPrice: TLargeintField;
    vtSumPrice: TLargeintField;
    vtStuffBrandName: TStringField;
    vtUnitName: TStringField;
    vtStuffBrandCode: TStringField;
    qrReceiptItemCode: TWideStringField;
    qrReceiptItemStuffBrandName: TWideStringField;
    qrReceiptItemUnitName: TWideStringField;
    qrReceiptItemValue: TFloatField;
    qrReceiptItemPrice: TFloatField;
    qrReceiptItemSumPrice: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dsReceiptDataChange(Sender: TObject; Field: TField);
    procedure btnOKClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnItemsClick(Sender: TObject);
    procedure pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qrReceiptReceiptPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qrReceiptItemValueGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qrReceiptItemPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qrReceiptItemSumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    FEditMode: Boolean;
    fInsertedID: string;
    fMode: byte;

    procedure SetDetailesData(aMasterID: string);
    procedure EditMode(AEditMode: Boolean);
    function InsertReceipt: boolean;
    function InsertReceiptItems: boolean;
    function InsertToStockTransaction: boolean;
    function EditReceipt: boolean;
    function EditReceiptItems: boolean;
    function EditStockTransaction: boolean;
    function DeleteReceipt: boolean;
    function DeleteReceiptItems: boolean;
    function DeleteFromStockTransaction: boolean;
    function AreValidFields: Boolean;
    function GetDetailesQuery: string;
    function GetStockTransactionQuery: string;
    function GetLastStock(aStuffBrandID: string): integer;
  public
    { Public declarations }
  end;

var
  frmReceipt: TfrmReceipt;

implementation

{$R *.dfm}

procedure TfrmReceipt.btnRefreshClick(Sender: TObject);
begin
  qrReceipt.Active := False;
  qrReceipt.SQL.Clear;
  qrReceipt.SQL.Add('SELECT [ID], [ReceiptDate], [ReceiptNumber], [FactorDate], [FactorNumber], [ReceiptPrice], [Description] ');
  qrReceipt.SQL.Add('FROM [Pakhsh].[dbo].[Receipt] ');
  qrReceipt.SQL.Add(format('WHERE (ReceiptDate >= ''%s'') AND (ReceiptDate <= ''%s'') ',
                   [edtFromDate.text, edtToDate.Text]));
  qrReceipt.Active := True;
end;

function TfrmReceipt.DeleteFromStockTransaction: Boolean;
begin

end;

function TfrmReceipt.DeleteReceipt: Boolean;
begin

end;

function TfrmReceipt.DeleteReceiptItems: Boolean;
begin

end;

procedure TfrmReceipt.btnItemsClick(Sender: TObject);
var
  frm: TfrmReceiptItem;
  fs: TFileStream;
begin
  try
    frm := TfrmReceiptItem.Create(Self);
    frm.ShowModal;
    fs := TFileStream.Create('vt', fmCreate);
    frm.vt.SaveToStream(fs);

    edtViewCount.Text := IntToStr(frm.vt.RecordCount);
    edtViewReceiptPrice.Text := frm.lblAllPrice.Caption;
    if  (edtReceiptPrice.Text = '') OR (edtReceiptPrice.Text = '0') then
      edtReceiptPrice.Text :=  edtViewReceiptPrice.Text;
  finally
    frm.Free;
    fs.Free;
  end;
end;

function TfrmReceipt.AreValidFields: Boolean;
begin
  AreValidFields := False;
  if (edtReceiptNumber.Text = '0') or (edtReceiptNumber.Text = '') then
  begin
    ErrorMessage('شماره رسید مشخص نشده است');
    edtReceiptNumber.SetFocus;
    Exit
  end
  else if dmPakhsh.IsExistsRec_Val('Receipt', 'ReceiptNumber', edtReceiptNumber.Text) then
  begin
    ErrorMessage('شماره رسید وارد شده تکراری است');
    edtReceiptNumber.SetFocus;
    Exit
  end
  else if (edtReceiptDate.Text = '') then
  begin
    ErrorMessage('تاریخ رسید مشخص نیست');
    edtReceiptDate.SetFocus;
    Exit
  end
  else if (edtReceiptPrice.Text = '') then
  begin
    ErrorMessage('مبلغ رسید وارد نشده است');
    edtReceiptPrice.SetFocus;
    Exit
  end
  else if (edtViewCount.Text = '') or (edtViewCount.Text = '0') then
  begin
    ErrorMessage('اقلام رسید وارد نشده است');
    btnItems.SetFocus;
    exit
  end
  else if (edtReceiptPrice.Text <> edtViewReceiptPrice.text) then
  begin
    ErrorMessage('مبلغ رسید با سرجمع مبالغ اقلام مغایر است');
    btnItems.SetFocus;
    exit
  end
  else
    AreValidFields := True;
end;

procedure TfrmReceipt.btnAddClick(Sender: TObject);
begin
  EditMode(True);
  fMode := MB_NEW;
  edtReceiptNumber.Text := '';
  edtReceiptDate.Text := CurrentDate;
  edtReceiptPrice.Text := '0';
  edtReceiptFactorNumber.Text := '';
  edtReceiptFactorDate.Text := '';
  edtDescription.Text := '';
  edtViewCount.Text := '';
  edtViewReceiptPrice.Text := '';
  edtReceiptNumber.SetFocus;
end;

procedure TfrmReceipt.btnDeleteClick(Sender: TObject);
begin
  InformationMessage('فعلا هیچ یک از تراکنش های انبار قابل حذف نیست');
  DeleteReceipt;
  DeleteReceiptItems;
  DeleteFromStockTransaction;
end;

procedure TfrmReceipt.btnEditClick(Sender: TObject);
begin
  EditMode(True);
  fMode := MB_EDIT;
  edtReceiptNumber.SetFocus;
end;

procedure TfrmReceipt.btnOKClick(Sender: TObject);
var
  fs: TFileStream;
begin
  if edtReceiptPrice.Text = '' then
    edtReceiptPrice.Text := '0';

  if AreValidFields then
  begin
    fs := TFileStream.Create('vt', fmOpenRead);
    try
      vt.Open;
      vt.LoadFromStream(fs);
    finally
      fs.Free;
    end;

    if fMode = MB_NEW then
    begin
      If InsertReceipt AND InsertReceiptItems AND InsertToStockTransaction then
        InformationMessage('رسید با موفقیت ثبت شد')
      else
        ErrorMessage('خطایی در ثبت رسید رخ داد');
    end
    else if fMode = MB_Edit  then
    begin
      EditReceipt;
      EditReceiptItems;
      EditStockTransaction;
    end;

    if fMode = MB_NEW then
    begin
      btnRefreshClick(self);
      qrReceipt.Last;
    end;

    EditMode(False);
    fMode := MB_VIEW;
  end;
end;

procedure TfrmReceipt.dsReceiptDataChange(Sender: TObject; Field: TField);
begin
  if (qrReceipt.RecordCount > 0) and (not FEditMode) then
  begin
    btnDelete.Enabled := True;
    btnEdit.Enabled := True;
  end
  else
  begin
    btnDelete.Enabled := false;
    btnEdit.Enabled := false;
  end;
  edtDescription.Text := qrReceiptDescription.AsString;
  edtReceiptDate.Text := qrReceiptReceiptDate.AsString;
  edtReceiptFactorDate.Text := qrReceiptFactorDate.AsString;
  edtReceiptNumber.Text := qrReceiptReceiptNumber.AsString;
  edtReceiptFactorNumber.Text := qrReceiptFactorNumber.AsString;
  edtReceiptPrice.Text := qrReceiptReceiptPrice.AsString;

  SetDetailesData(qrReceiptID.AsString);
end;

procedure TfrmReceipt.EditMode(AEditMode: Boolean);
begin
  btnEdit.Enabled :=   not AEditMode;
  btnAdd.Enabled :=    not AEditMode;
  btnDelete.Enabled := not AEditMode;
  pnlEdit.Enabled := AEditMode;

  if AEditMode then
  begin
    pnlEdit.Fill.Color := $0056A4FA;
    pnlReceiptItemAction.Fill.Color := $0056A4FA;
  end
  else
  begin
    pnlEdit.Fill.Color := clWhite;
    pnlReceiptItemAction.Fill.Color := clWhite;
  end;

  FEditMode := AEditMode;
  pnlGrid.Enabled := not AEditMode ;
  btnOK.Enabled := AEditMode;
end;

function TfrmReceipt.EditReceipt: Boolean;
begin

end;

function TfrmReceipt.EditReceiptItems: Boolean;
begin

end;

function TfrmReceipt.EditStockTransaction: Boolean;
begin

end;

procedure TfrmReceipt.FormCreate(Sender: TObject);
begin
  fMode := MB_VIEW;
  EditMode(False);
  qrReceipt.Connection := dmPakhsh.Con;
  qrReceiptItem.Connection := dmPakhsh.Con;

  edtFromDate.text := Copy(CurrentDate, 1, 4) + '/01/01';
  edtToDate.Text := CurrentDate;
  btnRefreshClick(self);
end;

function TfrmReceipt.GetDetailesQuery: string;
var
  lStr: TStringList;
  I: Integer;
  lCount: Integer;
begin
  vt.First;
  lCount := vt.RecordCount;
  lStr := TStringList.Create;
  try
    lStr.Clear;
    lStr.add('INSERT INTO dbo.ReceiptItem ');
    lStr.add('  (StuffBrandID, UnitID, Value, Price, SumPrice, ReceiptID) ');
    lStr.add('VALUES ');
    for I := 1 to lCount do
    begin
      lStr.Add(format('(%s ', [vt.FieldByName('StuffBrandID').AsString]));
      lStr.Add(format(',%s ', [vt.FieldByName('StuffBrandUnitID').Asstring]));
      lStr.Add(format(',%s ', [vt.FieldByName('Value').AsString]));
      lStr.Add(format(',%s ', [vt.FieldByName('Price').AsString]));
      lStr.Add(format(',%s ', [vt.FieldByName('SumPrice').AsString]));
      lStr.Add(format(',%s) ', [fInsertedID]));
      if I <> lCount then
        lStr.Add(', ');
      vt.next;
    end;

  finally
    Result := lStr.text;
    lStr.Free;
  end;
end;

function TfrmReceipt.GetLastStock(aStuffBrandID: string): integer;
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

function TfrmReceipt.GetStockTransactionQuery: string;
var
  lStr: TStringList;
  I: Integer;
  lCount, lLastStock: Integer;
begin
  vt.First;
  lCount := vt.RecordCount;
  lStr := TStringList.Create;
  try
    lStr.Clear;
    lStr.add('INSERT INTO dbo.StockTransaction ');
    lStr.add('  ([DateTime], TransactionType, TransactionID, TransactionSign, StuffBrandID, TransactionCount, LastStock) ');
    lStr.add('VALUES ');
    for I := 1 to lCount do
    begin
      lStr.Add(format('( GETDATE(), 2, %s, ', [fInsertedID]));
      lStr.Add(format('1, %s ', [vt.FieldByName('StuffBrandID').Asstring]));
      lStr.Add(format(',%s ', [vt.FieldByName('Value').AsString]));
      lLastStock := GetLastStock(vt.FieldByName('StuffBrandID').Asstring);
      lStr.Add(format(',%d) ', [lLastStock + vt.FieldByName('Value').AsInteger]));

      if I <> lCount then
        lStr.Add(', ');
      vt.next;
    end;

  finally
    Result := lStr.text;
    lStr.Free;
  end;
end;

function TfrmReceipt.InsertReceipt: boolean;
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

        SQL.Add('INSERT INTO dbo.Receipt ');
        SQL.Add('(ReceiptDate, ReceiptNumber, FactorDate, FactorNumber, ReceiptPrice, Description) ');
        SQL.Add('VALUES ');
        SQL.Add(format('(''%s'' ', [edtReceiptDate.Text]));
        SQL.Add(format(',''%s'' ', [edtReceiptNumber.Text]));
        SQL.Add(format(',''%s'' ', [edtReceiptFactorDate.Text]));
        SQL.Add(format(',''%s'' ', [edtReceiptFactorNumber.text]));
        SQL.Add(format(',%s ', [edtReceiptPrice.text]));
        SQL.Add(format(',N''%s'' ) ', [edtDescription.Text]));

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

function TfrmReceipt.InsertReceiptItems: Boolean;
var
  qr: TUniQuery;
  lqrStr: string;
begin
  Result := False;
  if fInsertedID <> '' then
  begin
    try
      lqrStr := GetDetailesQuery;
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

function TfrmReceipt.InsertToStockTransaction: Boolean;
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

procedure TfrmReceipt.pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
  begin
    fMode := MB_VIEW;
    EditMode(False);
  end;
end;

procedure TfrmReceipt.qrReceiptItemPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmReceipt.qrReceiptItemSumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmReceipt.qrReceiptItemValueGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmReceipt.qrReceiptReceiptPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmReceipt.SetDetailesData(aMasterID: string);
begin
 qrReceiptItem.Active := false;
 if (aMasterID <> '') AND (aMasterID <> '0') then
  begin
    try
      with qrReceiptItem do
      begin
        SQL.Clear;

        SQL.Add('SELECT sb.Code, ');
        SQL.Add('s.Name + '' '' + b.Name AS StuffBrandName, ');
        SQL.Add('u.Name AS UnitName, ');
        SQL.Add('ri.Value, ');
        SQL.Add('ri.Price, ');
        SQL.Add('ri.SumPrice ');
        SQL.Add('FROM ReceiptItem AS ri ');
        SQL.Add('LEFT JOIN StuffBrand AS sb ON (sb.ID = ri.StuffBrandID) ');
        SQL.Add('LEFT JOIN Stuff AS s ON (sb.StuffID = s.ID) ');
        SQL.Add('LEFT JOIN Brand As b ON (sb.BrandID = b.ID) ');
        SQL.Add('LEFT JOIN Unit AS u ON (u.ID = ri.UnitID) ');
        SQL.Add(format('WHERE ri.ReceiptID = %s ', [aMasterID]));

        Active := True;
      end;
    Except

    end;
  end;
end;

end.
