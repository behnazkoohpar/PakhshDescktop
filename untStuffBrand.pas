unit untStuffBrand;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, untDmPakhsh, msgs,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, AdvSmoothButton, AdvSmoothPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox , untBrand, Data.DB, DBAccess, Uni, MemDS, AdvGDIP,
  Vcl.ExtDlgs, sDialogs, EhLibUniDAC, untUnit, dateproc;

type
  TfrmStuffBrand = class(TForm)
    pnlHeader: TAdvSmoothPanel;
    btnAdd: TAdvSmoothButton;
    btnEdit: TAdvSmoothButton;
    btnDelete: TAdvSmoothButton;
    AdvSmoothPanel2: TAdvSmoothPanel;
    pnlGrid: TAdvSmoothPanel;
    grd: TDBGridEh;
    pnlEdit: TAdvSmoothPanel;
    Label1: TLabel;
    Label3: TLabel;
    edtCode: TEdit;
    pnlBottom: TAdvSmoothPanel;
    btnOk: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    Label2: TLabel;
    cmbStuff: TComboBox;
    Label4: TLabel;
    cmbBrand: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    edtMin: TEdit;
    edtMax: TEdit;
    edtPoint: TEdit;
    Label7: TLabel;
    edtDescription: TEdit;
    chkActive: TcxCheckBox;
    qry: TUniQuery;
    ds: TUniDataSource;
    qryID: TFloatField;
    qryStuffID: TFloatField;
    qryStuffName: TWideStringField;
    qryBrandID: TFloatField;
    qryBrandName: TWideStringField;
    qryStuffBrandName: TWideStringField;
    qryCode: TWideStringField;
    qryMinimumStuck: TIntegerField;
    qryMaximumStuck: TIntegerField;
    qryOrderPoint: TIntegerField;
    qryActivated: TBooleanField;
    qryDeleted: TBooleanField;
    qryLastChargeDate: TDateTimeField;
    qryDescription: TWideMemoField;
    pnlImage: TAdvSmoothPanel;
    openPicDlg1: TsOpenPictureDialog;
    chkIsSpecial: TcxCheckBox;
    qryIsSpecial: TBooleanField;
    Label8: TLabel;
    edtStock: TEdit;
    cmbUnit: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    AdvSmoothButton3: TAdvSmoothButton;
    qryUnitID: TFloatField;
    qryUnitName: TWideStringField;
    pnlReceiptItemAction: TAdvSmoothPanel;
    Label12: TLabel;
    lblLastStock: TLabel;
    Label14: TLabel;
    lblLastReceiptDate: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    lblLastReceiptValue: TLabel;
    Label19: TLabel;
    lblLastDeliveryValue: TLabel;
    lblLastDeliveryDate: TLabel;
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure dsStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlImageDblClick(Sender: TObject);
    procedure AdvSmoothButton3Click(Sender: TObject);
  private
    FStuffIDList: array Of Integer;
    FBrandIDList: array Of Integer;
    FUnitIDList: array Of Integer;
    FEditMode: Boolean;
    FPictureAddress: string;
    function  AreValidFields: Boolean;
    function countIsSpecial: integer;
    procedure EditMode(AEditMode: Boolean);
    procedure SetData;
    procedure ShowImageFromDB(ImageID: Integer);
    Procedure InsertImageToDB;
    procedure UpdateImageToDB(StuffBrandID: integer);
    function GetFirstStock(aStuffBrandID: integer): integer;
    function Inserted(aStuffBrandID: Integer): Boolean;
    procedure SetStockTransaction(aStuffBrandID, aFirstStock: integer);
  public
    { Public declarations }
  end;

var
  frmStuffBrand: TfrmStuffBrand;

implementation

{$R *.dfm}

procedure TfrmStuffBrand.AdvSmoothButton2Click(Sender: TObject);
var
  frm: TFrmBrand;
begin
  try
    frm := TfrmBrand.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
    SetData
  end;
end;

procedure TfrmStuffBrand.AdvSmoothButton3Click(Sender: TObject);
var
  frm: TFrmUnit;
begin
  try
    frm := TfrmUnit.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
    SetData;
  end;
end;

function TfrmStuffBrand.AreValidFields: Boolean;
begin
  if edtCode.Text = '' then
  begin
    AreValidFields := False;
    ErrorMessage('کد محصول وارد نشده است');
    edtCode.SetFocus;
  end
  else if (cmbStuff.ItemIndex < 0) or (cmbStuff.Text = '') then
  begin
    AreValidFields := False;
    ErrorMessage('نوع کالا مشخص نشده است');
    cmbStuff.SetFocus;
  end
  else if (cmbBrand.ItemIndex < 0) or (cmbBrand.Text = '') then
  begin
    AreValidFields := False;
    ErrorMessage('برند محصول مشخص نشده است');
    cmbBrand.SetFocus;
  end
  else if (cmbUnit.ItemIndex < 0) or (cmbUnit.Text = '') then
  begin
    AreValidFields := False;
    ErrorMessage('واحد اندازه گیری مشخص نشده است');
    cmbUnit.SetFocus;
  end
  else if (chkIsSpecial.Checked) And (countIsSpecial >= 10) then
  begin
    AreValidFields := False;
    ErrorMessage('تعداد مجاز لیست محصول ویژه به پایان رسیده است' );

    chkIsSpecial.SetFocus;
  end
  else
    AreValidFields := True;
end;

procedure TfrmStuffBrand.btnAddClick(Sender: TObject);
begin
  qry.Append;
  chkActive.Checked := true;
  chkIsSpecial.Checked := False;
  edtMin.Text := '0';
  edtMax.Text := '0';
  edtPoint.Text := '0';
  cmbStuff.SetFocus;
end;

procedure TfrmStuffBrand.btnDeleteClick(Sender: TObject);
var
  lExist: boolean;
  qr: TUniQuery;
  lDeletedID: integer;
begin
  lExist := not dmpakhsh.IsExistsRec_num('StuffBrandPrice', 'StuffBrandID', qryID.AsInteger);
  if lExist then
  begin
    if ConfirmMessage('آيا براي حذف اطمينان داريد؟') then
    begin
      qr := TUniQuery.Create(self);
      qr.Connection := DmPakhsh.con;
      lDeletedID := qryID.AsInteger;
      with qr do
      begin
        sql.Clear;
        sql.Add(format('DELETE FROM StuffBrandImage WHERE StuffBrandID = %d ', [lDeletedID]));
        Execute;
        close;
      end;
      qr.Free;
      qry.Delete;
    end;
  end
  else
    InformationMessage('اين  رکورد ‏در گردش بوده و حذف آن امكان پذير نيست.');

end;

procedure TfrmStuffBrand.btnEditClick(Sender: TObject);
begin
  ds.Edit;
  cmbStuff.SetFocus;
end;

procedure TfrmStuffBrand.btnOkClick(Sender: TObject);
var
  lCode, lDescription: string;
  lActive, lInserted, lIsSpecial: boolean;
  lStuffID, lBrandID, lRecNo, lInsertID, lMin, lMax, lOrderPoint, lUnitID, lStock: integer;
begin
  if edtStock.Text = '' then
    edtStock.Text := '0';

  lRecNo := qry.RecNo;
  lCode := edtCode.Text;
  lStuffID := FStuffIDList[cmbStuff.ItemIndex+1];
  lBrandID := FBrandIDList[cmbBrand.ItemIndex+1];
  lUnitID := FUnitIDList[cmbUnit.ItemIndex+1];
  lActive := chkActive.Checked;
  lIsSpecial := chkIsSpecial.Checked;
  lMin := strtoint(edtMin.Text);
  lMax := strtoint(edtMax.Text);
  lOrderPoint := strtoint(edtPoint.Text);
  lStock := strtoint(edtStock.Text);

  if AreValidFields then
  begin
    if qry.State in [dsInsert, dsEdit] then
    begin
      lInserted := qry.State = dsInsert;
      if (lInserted) AND (Length(FPictureAddress)<3) then
      begin
        ErrorMessage('تصویر انتخاب نشده است');
        EditMode(False);
        exit
      end;
      qryCode.AsString := lCode;
      qryDescription.AsString := lDescription;
      qryMinimumStuck.AsInteger := lmin;
      qryMaximumStuck.AsInteger := lMax;
      qryOrderPoint.AsInteger := lOrderPoint;
      qryStuffID.AsInteger := lStuffID;
      qryBrandID.AsInteger := lBrandID;
      qryUnitID.AsInteger := lUnitID;
      qryActivated.AsBoolean := lActive;
      qryIsSpecial.AsBoolean := lIsSpecial;
      qryDeleted.AsBoolean := false;
      qry.Post;
      lInsertID := qryID.AsInteger;

      if (FPictureAddress <> '') AND lInserted then
        InsertImageToDB;

      if (FPictureAddress <> '') AND (NOT lInserted) then
        UpdateImageToDB(qryID.AsInteger);

      if (lStock <> 0)  AND (NOT Inserted(lInsertID)) then
        SetStockTransaction(lInsertID, lStock);

      qry.Refresh;
      qry.Locate('ID', lInsertID,[]);


    end;
    EditMode(False);
  end;

end;

function TfrmStuffBrand.countIsSpecial: integer;
var
  qr: TUniQuery;
begin
  try
    qr := TUniQuery.Create(self);
    qr.Connection := dmPakhsh.Con;

    qr.SQL.Clear;
    qr.SQL.Add('SELECT COUNT(ID)AS cnt FROM StuffBrand WHERE Activated = 1 AND Deleted = 0  AND IsSpecial = 1');
    qr.Open;
    Result := qr.FieldByName('cnt').AsInteger;
  finally
    qr.Close;
    qr.Free;
  end;
end;

procedure TfrmStuffBrand.dsDataChange(Sender: TObject; Field: TField);
var
  lLastStock, lLastReceiptValue, lLastDeliveryValue: integer;
  lLastReceiptDate, lLastDeliveryDate: string;
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
  edtDescription.Text := qryDescription.AsString;
  edtCode.Text := qryCode.AsString;
  chkActive.Checked := qryActivated.AsBoolean;
  chkIsSpecial.Checked := qryIsSpecial.AsBoolean;
  edtMin.Text := qryMinimumStuck.AsString;
  edtMax.Text := qryMaximumStuck.AsString;
  edtPoint.Text := qryOrderPoint.AsString;
  cmbStuff.ItemIndex := cmbStuff.Items.IndexOf(qryStuffName.AsString);
  cmbBrand.ItemIndex := cmbBrand.Items.IndexOf(qryBrandName.AsString);
  cmbUnit.ItemIndex := cmbUnit.Items.IndexOf(qryUnitName.AsString);

  edtStock.Text := inttostr(GetFirstStock(qryID.AsInteger));
  edtStock.Enabled := not(Inserted(qryID.AsInteger));

  if qryID.AsString <> '' then
  begin
    lLastStock := dmPakhsh.GetLastStock(qryID.AsString);
    lblLastStock.Caption := IntToStr(lLastStock);


    dmPakhsh.GetLastReceiptInfo(qryID.AsString, lLastReceiptDate, lLastReceiptValue);
    lblLastReceiptDate.Caption := '';
    if (lLastReceiptDate <> '') and (lLastReceiptDate > '2005/12/30') then
    begin
      lLastReceiptDate := Milady2Shamsi(lLastReceiptDate);
      lblLastReceiptDate.Caption := lLastReceiptDate;
    end;

    lblLastReceiptValue.Caption := IntToStr(lLastReceiptValue);

    dmPakhsh.GetLastDeliveryInfo(qryID.AsString, lLastDeliveryDate, lLastDeliveryValue);
    lblLastDeliveryDate.Caption := '';
    if (lLastDeliveryDate <> '') and (lLastDeliveryDate > '2005/12/30') then
    begin
      lLastDeliveryDate := Milady2Shamsi(lLastDeliveryDate);
      lblLastDeliveryDate.Caption := lLastDeliveryDate;
    end;
  end;


  lblLastDeliveryValue.Caption := IntToStr(lLastDeliveryValue);

  pnlImage.Fill.GradientType := TAdvGradientType.gtNone;
  if qryID.AsInteger > 0 then
    ShowImageFromDB(qryID.AsInteger);
end;

procedure TfrmStuffBrand.dsStateChange(Sender: TObject);
begin
  if qry.State in [dsEdit, dsInsert] then
    EditMode(True)
  else
    EditMode(False);
end;

procedure TfrmStuffBrand.EditMode(AEditMode: Boolean);
begin
  btnEdit.Enabled :=   not AEditMode;
  btnAdd.Enabled :=    not AEditMode;
  btnDelete.Enabled := not AEditMode;
  pnlEdit.Enabled := AEditMode;

  if AEditMode then
    pnlEdit.Fill.Color := $0056A4FA
  else
   pnlEdit.Fill.Color := clWhite;

  FEditMode := AEditMode;
  pnlGrid.Enabled := not AEditMode ;
  btnOK.Enabled := AEditMode;
end;

procedure TfrmStuffBrand.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmStuffBrand.FormCreate(Sender: TObject);
begin
  qry.Connection := dmPakhsh.Con;
  SetData;
  qry.Active := True;
end;

function TfrmStuffBrand.GetFirstStock(aStuffBrandID: integer): integer;
var
  qr: TUniQuery;
begin
  qr :=  TUniQuery.Create(self);
  qr.Connection := dmPakhsh.Con;
  with qr do
  begin
    sql.Clear;
    sql.Add('SELECT TOP 1 ISNULL(LastStock, 0) AS FirstStock FROM stockTransaction ');
    sql.Add(format('WHERE StuffBrandID = %d and TransactionType = 1 ', [aStuffBrandID]));
    sql.Add('ORDER BY [DateTime] ');
    open;
    Result := FieldByName('FirstStock').AsInteger;
    close;
    free;
  end;
end;

function TfrmStuffBrand.Inserted(aStuffBrandID: Integer): Boolean;
var
  qr: TUniQuery;
begin
  qr :=  TUniQuery.Create(self);
  qr.Connection := dmPakhsh.Con;
  with qr do
  begin
    sql.Clear;
    sql.Add('SELECT TOP 1 ISNULL(LastStock, 0) AS FirstStock FROM stockTransaction ');
    sql.Add(format('WHERE StuffBrandID = %d ', [aStuffBrandID]));
    open;
    Result := RecordCount > 0;
    close;
    free;
  end;

end;

procedure TfrmStuffBrand.InsertImageToDB;
var
  qr1: TUniQuery;
  lInsertedID : integer;
  k: integer;
begin
  qr1 :=  TUniQuery.Create(self);
  qr1.Connection := dmPakhsh.Con;
  with qr1 do
  begin
    sql.Clear;
    sql.Add('SELECT TOP(1) sb.ID FROM StuffBrand AS sb ');
    sql.Add('LEFT JOIN StuffBrandImage AS sbi ON (sb.id = sbi.StuffBrandID) ');
    sql.Add('WHERE Image IS NULL ORDER BY sb.ID DESC ');
    open;
    lInsertedID := FieldByName('ID').AsInteger;
    close;

    sql.Clear;
    sql.Add('INSERT INTO StuffBrandImage(StuffBrandID, Image) ');
    sql.Add(format('Values (%d, (SELECT * FROM OPENROWSET(BULK N''%s'', SINGLE_BLOB) AS CategoryImage)) ',
           [lInsertedID, FPictureAddress]));
    Execute;
    close;


    SQL.Clear;
    SQL.Add('SELECT ID, Name FROM Unit');
    SQL.Add('ORDER BY Name ');
    Open;
    SetLength(FUnitIDList, qr1.RecordCount + 1);
    k := 1;
    cmbUnit.Items.Clear;
    while not EOF do
    begin
      cmbUnit.Items.Add(FieldByName('Name').AsString);
      FUnitIDList[k] := FieldByName('ID').AsInteger;
      k := k +1;
      Next;
    end;
    Close;
    free;

  end;

end;

procedure TfrmStuffBrand.pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) and (qry.State in [dsInsert, dsEdit]) then
  begin
    qry.Cancel;
    dsStateChange(self);
  end;
end;

procedure TfrmStuffBrand.pnlImageDblClick(Sender: TObject);
var
  opnDlg: TsOpenPictureDialog;
  i: Integer;
  lX, lY: integer;
  lFileSize: integer;
  pic: TPicture;
begin
  opnDlg := TsOpenPictureDialog.Create(Self);
  if opnDlg.Execute then
  begin
    FPictureAddress := opnDlg.FileName;

    pic := TPicture.Create;
    pic.LoadFromFile(FPictureAddress);
    lX := pic.Width;
    lY := Pic.Height;
    Pic.Free;
    lFileSize := dmpakhsh.getFileSizeInBytes(FPictureAddress);

    if (lX <> lY) and (lX > 256) then
    begin
      ErrorMessage('تعداد پیکسل های سطر و ستون تصویر برابر نیست'+ sLineBreak +
                   'اندازه تصویر 250*250 باید باشد');
      Exit
    end;

    if lFileSize > 7520 then
    begin
      ErrorMessage('حجم فایل انتخاب شده زیاد است و قابل استفاده در این قسمت نیست' + sLineBreak +
                   '(حداکثر اندازه فایل تصویر 7 کیلوبایت باید باشد)');
      Exit
    end;

    pnlImage.Fill.GradientType := gtTexture;
    pnlImage.Fill.BackGroundPicture.LoadFromFile(FPictureAddress);

  end;

end;

procedure TfrmStuffBrand.SetData;
var
  qr: TUniQuery;
  k: integer;
begin
  qr := TUniQuery.Create(Application);
  with qr do
  begin
    connection := dmPakhsh.Con;
    SQL.Clear;
    SQL.Add('SELECT ID, Name FROM Stuff ');
    SQL.Add('WHERE Activated = 1 ');
    SQL.Add('ORDER BY Name ');
    Open;
    SetLength(FStuffIDList, qr.RecordCount + 1);
    k := 1;
    cmbStuff.Items.Clear;
    while not EOF do
    begin
      cmbStuff.Items.Add(FieldByName('Name').AsString);
      FStuffIDList[k] := FieldByName('ID').AsInteger;
      k := k +1;
      Next;
    end;
    Close;

    SQL.Clear;
    SQL.Add('SELECT ID, Name FROM Brand');
    SQL.Add('ORDER BY Name ');
    Open;
    SetLength(FBrandIDList, qr.RecordCount + 1);
    k := 1;
    cmbBrand.Items.Clear;
    while not EOF do
    begin
      cmbBrand.Items.Add(FieldByName('Name').AsString);
      FBrandIDList[k] := FieldByName('ID').AsInteger;
      k := k +1;
      Next;
    end;
    Close;

    SQL.Clear;
    SQL.Add('SELECT ID, Name FROM Unit');
    SQL.Add('ORDER BY Name ');
    Open;
    SetLength(FUnitIDList, qr.RecordCount + 1);
    k := 1;
    cmbUnit.Items.Clear;
    while not EOF do
    begin
      cmbUnit.Items.Add(FieldByName('Name').AsString);
      FUnitIDList[k] := FieldByName('ID').AsInteger;
      k := k +1;
      Next;
    end;
    Close;
  end;
  qr.Free;
end;

procedure TfrmStuffBrand.SetStockTransaction(aStuffBrandID, aFirstStock: integer);
var
  qr: TUniQuery;
begin
  qr := TUniQuery.Create(self);
  qr.Connection := dmPakhsh.Con;
  with qr do
  begin
    sql.Clear;
    sql.Add('DECLARE @LastStock Int ');
    sql.Add('SELECT Top 1 @LastStock = LastStock ');
    sql.Add('FROM [Pakhsh].[dbo].[StockTransaction] ');
    sql.Add(format('WHERE StuffBrandID = %d ', [aStuffBrandID]));
    sql.Add('ORDER BY [DateTime] Desc ');
    sql.Add('INSERT INTO StockTransaction ([DateTime], TransactionType, TransactionID, TransactionSign, StuffBrandID, TransactionCount, LastStock) ');
    sql.Add(format('Values (GETDATE(), 1, Null, 1, %d, %d, ISNULL(@LastStock, 0) + %d) ', [aStuffBrandID, aFirstStock, aFirstStock]));

    Execute;
    close;
    Free;
  end;
end;

procedure TfrmStuffBrand.ShowImageFromDB(ImageID: Integer);
var
  BlobStream: TStream;
  qr: TUniQuery;
begin
  BlobStream := TMemoryStream.Create;
  qr := TUniQuery.Create(self);
  qr.Connection := dmPakhsh.Con;
  with qr do
  begin
    sql.Clear;
    sql.Add('SELECT TOP (1) Image FROM StuffBrandImage ');
    sql.Add(format('WHERE StuffBrandID = %d', [ImageID]));
    open;
  end;
  if qr.RecordCount > 0 then
  begin
    qr.GetBlob(qr.FieldByName('Image')).SaveToStream(BlobStream);
    Blobstream.Position := 0;
    pnlImage.Fill.GradientType := gttexture;
    pnlImage.Fill.BackGroundPicture.loadfromstream(blobstream);
  end;
  BlobStream.Free;

end;

procedure TfrmStuffBrand.UpdateImageToDB(StuffBrandID: integer);
var
  qr1: TUniQuery;
begin
  qr1 :=  TUniQuery.Create(self);
  qr1.Connection := dmPakhsh.Con;
  with qr1 do
  begin
    sql.Clear;
    sql.Add(format('DELETE StuffBrandImage WHERE StuffBrandID = %d ', [StuffBrandID]));
    Execute;
    close;

    sql.Clear;
    sql.Add('INSERT INTO StuffBrandImage(StuffBrandID, Image) ');
    sql.Add(format('Values (%d, (SELECT * FROM OPENROWSET(BULK N''%s'', SINGLE_BLOB) AS CategoryImage)) ',
           [StuffBrandID, FPictureAddress]));
    Execute;
    close;
    free;

  end;

end;

end.
