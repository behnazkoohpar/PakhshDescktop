unit untDelivery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  cxCheckBox, Vcl.StdCtrls, AdvSmoothButton, AdvSmoothPanel, SolarCalendarPackage, untDmPakhsh, Data.DB, DBAccess, Uni,
  MemDS, VirtualTable, DateProc, UniProvider, SQLServerUniProvider, MSGs, untDeliveryItem;

type
  TfrmDelivery = class(TForm)
    pnlHeader: TAdvSmoothPanel;
    btnAdd: TAdvSmoothButton;
    btnEdit: TAdvSmoothButton;
    btnDelete: TAdvSmoothButton;
    pnlEdit: TAdvSmoothPanel;
    Label1: TLabel;
    edtDeliveryNumber: TEdit;
    pnlGrid: TAdvSmoothPanel;
    pnlBottom: TAdvSmoothPanel;
    btnOK: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    edtDeliveryDate: TSolarDatePicker;
    Label2: TLabel;
    Label3: TLabel;
    edtDeliveryRequestNumber: TEdit;
    Label4: TLabel;
    edtDeliveryPrice: TEdit;
    Label5: TLabel;
    edtDescription: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edtViewCount: TEdit;
    edtViewDeliveryPrice: TEdit;
    Label8: TLabel;
    edtDeliveryRequestDate: TSolarDatePicker;
    Label9: TLabel;
    qrDelivery: TUniQuery;
    qrDeliveryItem: TUniQuery;
    dsDelivery: TUniDataSource;
    dsDeliveryItem: TUniDataSource;
    AdvSmoothPanel3: TAdvSmoothPanel;
    Label10: TLabel;
    edtFromDate: TSolarDatePicker;
    edtToDate: TSolarDatePicker;
    Label11: TLabel;
    btnRefresh: TAdvSmoothButton;
    qrDeliveryID: TFloatField;
    qrDeliveryDescription: TWideStringField;
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
    qrDeliveryItemCode: TWideStringField;
    qrDeliveryItemStuffBrandName: TWideStringField;
    qrDeliveryItemUnitName: TWideStringField;
    qrDeliveryItemValue: TFloatField;
    qrDeliveryItemPrice: TFloatField;
    qrDeliveryItemSumPrice: TFloatField;
    qrDeliveryDeliveryDate: TWideStringField;
    qrDeliveryDeliveryNumber: TWideStringField;
    qrDeliveryRequestDate: TWideStringField;
    qrDeliveryRequestNumber: TWideStringField;
    qrDeliveryDeliveryPrice: TFloatField;
    pnlDeliveryItemAction: TAdvSmoothPanel;
    btnItems: TAdvSmoothButton;
    grdReceipt: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dsDeliveryDataChange(Sender: TObject; Field: TField);
    procedure btnOKClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnItemsClick(Sender: TObject);
    procedure pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qrDeliveryDeliveryPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qrDeliveryItemValueGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qrDeliveryItemPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qrDeliveryItemSumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    FEditMode: Boolean;
    fInsertedID: string;
    fMode: byte;

    procedure SetDetailesData(aMasterID: string);
    procedure EditMode(AEditMode: Boolean);
    function InsertDelivery: boolean;
    function InsertDeliveryItems: boolean;
    function InsertToStockTransaction: boolean;
    function EditDelivery: boolean;
    function EditDeliveryItems: boolean;
    function EditStockTransaction: boolean;
    function DeleteDelivery: boolean;
    function DeleteDeliveryItems: boolean;
    function DeleteFromStockTransaction: boolean;
    function AreValidFields: Boolean;
    function GetDetailesQuery: string;
    function GetStockTransactionQuery: string;
    function GetLastStock(aStuffBrandID: string): integer;
  public
    { Public declarations }
  end;

var
  frmDelivery: TfrmDelivery;

implementation

{$R *.dfm}

procedure TfrmDelivery.btnRefreshClick(Sender: TObject);
begin
  qrDelivery.Active := False;
  qrDelivery.SQL.Clear;
  qrDelivery.SQL.Add('SELECT [ID], [DeliveryDate], [DeliveryNumber], [RequestDate], [RequestNumber], [DeliveryPrice], [Description] ');
  qrDelivery.SQL.Add('FROM [Pakhsh].[dbo].[Delivery] ');
  qrDelivery.SQL.Add(format('WHERE (DeliveryDate >= ''%s'') AND (DeliveryDate <= ''%s'') ',
                   [edtFromDate.text, edtToDate.Text]));
  qrDelivery.Active := True;
end;

function TfrmDelivery.DeleteFromStockTransaction: Boolean;
begin

end;

function TfrmDelivery.DeleteDelivery: Boolean;
begin

end;

function TfrmDelivery.DeleteDeliveryItems: Boolean;
begin

end;

procedure TfrmDelivery.btnItemsClick(Sender: TObject);
var
  frm: TfrmDeliveryItem;
  fs: TFileStream;
  begin
  try
    frm := TfrmDeliveryItem.Create(Self);
    frm.ShowModal;
    fs := TFileStream.Create('vt', fmCreate);
    frm.vt.SaveToStream(fs);

    edtViewCount.Text := IntToStr(frm.vt.RecordCount);
    edtViewDeliveryPrice.Text := frm.lblAllPrice.Caption;
    if  (edtDeliveryPrice.Text = '') OR (edtDeliveryPrice.Text = '0') then
      edtDeliveryPrice.Text :=  edtViewDeliveryPrice.Text;
  finally
    frm.Free;
    fs.Free;
  end;
end;

function TfrmDelivery.AreValidFields: Boolean;
begin
  AreValidFields := False;
  if (edtDeliveryNumber.Text = '0') or (edtDeliveryNumber.Text = '') then
  begin
    ErrorMessage('شماره حواله مشخص نشده است');
    edtDeliveryNumber.SetFocus;
    Exit
  end
  else if dmPakhsh.IsExistsRec_Val('Delivery', 'DeliveryNumber', edtDeliveryNumber.Text) then
  begin
    ErrorMessage('شماره حواله وارد شده تکراری است');
    edtDeliveryNumber.SetFocus;
    Exit
  end
  else if (edtDeliveryDate.Text = '') then
  begin
    ErrorMessage('تاریخ حواله مشخص نیست');
    edtDeliveryDate.SetFocus;
    Exit
  end
  else if (edtDeliveryPrice.Text = '') then
  begin
    ErrorMessage('مبلغ حواله وارد نشده است');
    edtDeliveryPrice.SetFocus;
    Exit
  end
  else if (edtViewCount.Text = '') or (edtViewCount.Text = '0') then
  begin
    ErrorMessage('اقلام حواله وارد نشده است');
    btnItems.SetFocus;
    exit
  end
  else if (edtDeliveryPrice.Text <> edtViewDeliveryPrice.text) then
  begin
    ErrorMessage('مبلغ حواله با سرجمع مبالغ اقلام مغایر است');
    btnItems.SetFocus;
    exit
  end
  else
    AreValidFields := True;
end;

procedure TfrmDelivery.btnAddClick(Sender: TObject);
begin
  EditMode(True);
  fMode := MB_NEW;
  edtDeliveryNumber.Text := '';
  edtDeliveryDate.Text := CurrentDate;
  edtDeliveryPrice.Text := '0';
  edtDeliveryRequestNumber.Text := '';
  edtDeliveryRequestDate.Text := '';
  edtDescription.Text := '';
  edtViewCount.Text := '';
  edtViewDeliveryPrice.Text := '';
  edtDeliveryNumber.SetFocus;
end;

procedure TfrmDelivery.btnDeleteClick(Sender: TObject);
begin
  InformationMessage('فعلا هیچ یک از تراکنش های انبار قابل حذف نیست');
  DeleteDelivery;
  DeleteDeliveryItems;
  DeleteFromStockTransaction;
end;

procedure TfrmDelivery.btnEditClick(Sender: TObject);
begin
  EditMode(True);
  fMode := MB_EDIT;
  edtDeliveryNumber.SetFocus;
end;

procedure TfrmDelivery.btnOKClick(Sender: TObject);
var
  fs: TFileStream;
begin
  if edtDeliveryPrice.Text = '' then
    edtDeliveryPrice.Text := '0';

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
      If InsertDelivery AND InsertDeliveryItems AND InsertToStockTransaction then
        InformationMessage('حواله با موفقیت ثبت شد')
      else
        ErrorMessage('خطایی در ثبت حواله رخ داد');
    end
    else if fMode = MB_Edit  then
    begin
      EditDelivery;
      EditDeliveryItems;
      EditStockTransaction;
    end;

    if fMode = MB_NEW then
    begin
      btnRefreshClick(self);
      qrDelivery.Last;
    end;

    EditMode(False);
    fMode := MB_VIEW;
  end;
end;

procedure TfrmDelivery.dsDeliveryDataChange(Sender: TObject; Field: TField);
begin
  if (qrDelivery.RecordCount > 0) and (not FEditMode) then
  begin
    btnDelete.Enabled := True;
    btnEdit.Enabled := True;
  end
  else
  begin
    btnDelete.Enabled := false;
    btnEdit.Enabled := false;
  end;
  edtDescription.Text := qrDeliveryDescription.AsString;
  edtDeliveryDate.Text := qrDeliveryDeliveryDate.AsString;
  edtDeliveryRequestDate.Text := qrDeliveryRequestDate.AsString;
  edtDeliveryNumber.Text := qrDeliveryDeliveryNumber.AsString;
  edtDeliveryRequestNumber.Text := qrDeliveryRequestNumber.AsString;
  edtDeliveryPrice.Text := qrDeliveryDeliveryPrice.AsString;

  SetDetailesData(qrDeliveryID.AsString);
end;

procedure TfrmDelivery.EditMode(AEditMode: Boolean);
begin
  btnEdit.Enabled :=   not AEditMode;
  btnAdd.Enabled :=    not AEditMode;
  btnDelete.Enabled := not AEditMode;
  pnlEdit.Enabled := AEditMode;

  if AEditMode then
  begin
    pnlEdit.Fill.Color := $0056A4FA;
    pnlDeliveryItemAction.Fill.Color := $0056A4FA;
  end
  else
  begin
    pnlEdit.Fill.Color := clWhite;
    pnlDeliveryItemAction.Fill.Color := clWhite;
  end;

  FEditMode := AEditMode;
  pnlGrid.Enabled := not AEditMode ;
  btnOK.Enabled := AEditMode;
end;

function TfrmDelivery.EditDelivery: Boolean;
begin

end;

function TfrmDelivery.EditDeliveryItems: Boolean;
begin

end;

function TfrmDelivery.EditStockTransaction: Boolean;
begin

end;

procedure TfrmDelivery.FormCreate(Sender: TObject);
begin
  fMode := MB_VIEW;
  EditMode(False);
  qrDelivery.Connection := dmPakhsh.Con;
  qrDeliveryItem.Connection := dmPakhsh.Con;

  edtFromDate.text := Copy(CurrentDate, 1, 4) + '/01/01';
  edtToDate.Text := CurrentDate;
  btnRefreshClick(self);
end;

function TfrmDelivery.GetDetailesQuery: string;
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
    lStr.add('INSERT INTO dbo.DeliveryItem ');
    lStr.add('  (StuffBrandID, UnitID, Value, Price, SumPrice, DeliveryID) ');
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

function TfrmDelivery.GetLastStock(aStuffBrandID: string): integer;
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

function TfrmDelivery.GetStockTransactionQuery: string;
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
      lStr.Add(format('( GETDATE(), 3, %s, ', [fInsertedID]));
      lStr.Add(format('-1, %s ', [vt.FieldByName('StuffBrandID').Asstring]));
      lStr.Add(format(',%s ', [vt.FieldByName('Value').AsString]));
      lLastStock := GetLastStock(vt.FieldByName('StuffBrandID').Asstring);
      lStr.Add(format(',%d) ', [lLastStock - vt.FieldByName('Value').AsInteger]));

      if I <> lCount then
        lStr.Add(', ');
      vt.next;
    end;

  finally
    Result := lStr.text;
    lStr.Free;
  end;
end;

function TfrmDelivery.InsertDelivery: boolean;
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

        SQL.Add('INSERT INTO dbo.Delivery ');
        SQL.Add('(DeliveryDate, DeliveryNumber, RequestDate, RequestNumber, DeliveryPrice, Description) ');
        SQL.Add('VALUES ');
        SQL.Add(format('(''%s'' ', [edtDeliveryDate.Text]));
        SQL.Add(format(',''%s'' ', [edtDeliveryNumber.Text]));
        SQL.Add(format(',''%s'' ', [edtDeliveryRequestDate.Text]));
        SQL.Add(format(',''%s'' ', [edtDeliveryRequestNumber.text]));
        SQL.Add(format(',%s ', [edtDeliveryPrice.text]));
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

function TfrmDelivery.InsertDeliveryItems: Boolean;
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

function TfrmDelivery.InsertToStockTransaction: Boolean;
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

procedure TfrmDelivery.pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
  begin
    fMode := MB_VIEW;
    EditMode(False);
  end;
end;

procedure TfrmDelivery.qrDeliveryDeliveryPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmDelivery.qrDeliveryItemPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmDelivery.qrDeliveryItemSumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmDelivery.qrDeliveryItemValueGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmDelivery.SetDetailesData(aMasterID: string);
begin
 qrDeliveryItem.Active := false;
 if (aMasterID <> '') AND (aMasterID <> '0') then
  begin
    try
      with qrDeliveryItem do
      begin
        SQL.Clear;

        SQL.Add('SELECT sb.Code, ');
        SQL.Add('s.Name + '' '' + b.Name AS StuffBrandName, ');
        SQL.Add('u.Name AS UnitName, ');
        SQL.Add('di.Value, ');
        SQL.Add('di.Price, ');
        SQL.Add('di.SumPrice ');
        SQL.Add('FROM DeliveryItem AS di ');
        SQL.Add('LEFT JOIN StuffBrand AS sb ON (sb.ID = di.StuffBrandID) ');
        SQL.Add('LEFT JOIN Stuff AS s ON (sb.StuffID = s.ID) ');
        SQL.Add('LEFT JOIN Brand As b ON (sb.BrandID = b.ID) ');
        SQL.Add('LEFT JOIN Unit AS u ON (u.ID = di.UnitID) ');
        SQL.Add(format('WHERE di.DeliveryID = %s ', [aMasterID]));

        Active := True;
      end;
    Except

    end;
  end;
end;

end.
