unit untBrand;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, untDmPakhsh, AdvGDIP,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox, Vcl.StdCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, AdvSmoothButton, AdvSmoothPanel, cxRadioGroup, Data.DB, DBAccess, Uni, MemDS, msgs,
  Vcl.ExtDlgs, sDialogs, EhLibUniDAC;

type
  TfrmBrand = class(TForm)
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
    edtName: TEdit;
    edtSeller: TEdit;
    pnlBottom: TAdvSmoothPanel;
    btnOK: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    chkActive: TcxCheckBox;
    Label2: TLabel;
    edtPhoneSeller: TEdit;
    Label4: TLabel;
    edtDescription: TEdit;
    rbInternal: TcxRadioButton;
    rbExternal: TcxRadioButton;
    qry: TUniQuery;
    ds: TUniDataSource;
    qryID: TFloatField;
    qryName: TWideStringField;
    qryInternal: TBooleanField;
    qryActivated: TBooleanField;
    qrySellerName: TWideStringField;
    qrySellerPhone: TWideStringField;
    qryDescription: TWideMemoField;
    openPicDlg1: TsOpenPictureDialog;
    pnlImage: TAdvSmoothPanel;
    Label10: TLabel;
    Label11: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure dsStateChange(Sender: TObject);
    procedure pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlImageDblClick(Sender: TObject);
  private
    FEditMode: Boolean;
    FPictureAddress: string;
    function  AreValidFields: Boolean;
    procedure EditMode(AEditMode: Boolean);
    procedure ShowImageFromDB(ImageID: Integer);
    Procedure InsertImageToDB;
    procedure UpdateImageToDB(StuffBrandID: integer);
  public
    { Public declarations }
  end;

var
  frmBrand: TfrmBrand;

implementation

{$R *.dfm}

function TfrmBrand.AreValidFields: Boolean;
begin
  if edtName.Text = '' then
  begin
    AreValidFields := False;
    ErrorMessage('نام برند وارد نشده است.');
    edtName.SetFocus;
  end
  else
    AreValidFields := True;
end;

procedure TfrmBrand.btnAddClick(Sender: TObject);
begin
  qry.Append;
  chkActive.Checked := true;
  rbInternal.Checked := true;
  edtName.SetFocus;
end;

procedure TfrmBrand.btnDeleteClick(Sender: TObject);
var
  lExist: boolean;
begin
  lExist := not dmpakhsh.IsExistsRec_num('StuffBrand', 'BrandID', qryID.AsInteger);
  if lExist then
  begin
    if ConfirmMessage('آيا براي حذف اطمينان داريد؟') then
    begin
      qry.Delete;
    end;
  end
  else
    InformationMessage('اين  رکورد ‏در گردش بوده و حذف آن امكان پذير نيست.');

end;

procedure TfrmBrand.btnEditClick(Sender: TObject);
begin
  ds.Edit;
  edtName.SetFocus;
end;

procedure TfrmBrand.btnOKClick(Sender: TObject);
var
  lName, lSellerName, lSellerPhone, lDescription: string;
  lInternal, lActive, lInserted: boolean;
begin
  lName := edtName.text;
  lSellerName := edtSeller.Text;
  lSellerPhone := edtPhoneSeller.Text;
  lDescription := edtDescription.Text;
  lInternal := rbInternal.Checked;
  lActive := chkActive.Checked;

  if AreValidFields then
  begin
    lInserted := qry.State = dsInsert;
    if qry.State in [dsInsert, dsEdit] then
    begin
      qryName.AsString := lName;
      qrySellerName.AsString := lSellerName;
      qrySellerPhone.AsString := lSellerPhone;
      qryDescription.AsString := lDescription;
      qryInternal.AsBoolean := lInternal;
      qryActivated.AsBoolean := lActive;

      qry.Post;

      if (FPictureAddress <> '') AND lInserted then
        InsertImageToDB;

      if (FPictureAddress <> '') AND (NOT lInserted) then
        UpdateImageToDB(qryID.AsInteger);
    end;
    EditMode(False);
  end;

end;

procedure TfrmBrand.dsDataChange(Sender: TObject; Field: TField);
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
  edtName.Text := qryName.AsString;
  edtSeller.Text := qrySellerName.AsString;
  edtPhoneSeller.text := qrySellerPhone.AsString;
  edtDescription.Text := qryDescription.AsString;
  chkActive.Checked := qryActivated.AsBoolean;
  rbInternal.Checked := qryInternal.AsBoolean;
  rbExternal.Checked := not rbInternal.Checked;

  pnlImage.Fill.GradientType := TAdvGradientType.gtNone;
  if qryID.AsInteger > 0 then
    ShowImageFromDB(qryID.AsInteger);
end;

procedure TfrmBrand.dsStateChange(Sender: TObject);
begin
  if qry.State in [dsEdit, dsInsert] then
    EditMode(True)
  else
    EditMode(False);
end;

procedure TfrmBrand.EditMode(AEditMode: Boolean);
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

procedure TfrmBrand.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmBrand.FormCreate(Sender: TObject);
begin
  qry.Connection := dmPakhsh.Con;
  qry.Active := True;

end;

procedure TfrmBrand.InsertImageToDB;
var
  qr1: TUniQuery;
  lInsertedID : integer;
begin
  qr1 :=  TUniQuery.Create(self);
  qr1.Connection := dmPakhsh.Con;
  with qr1 do
  begin
    sql.Clear;
    sql.Add('SELECT TOP(1) b.ID FROM Brand AS b ');
    sql.Add('LEFT JOIN BrandImage AS bi ON (b.id = bi.BrandID) ');
    sql.Add('WHERE Image IS NULL ORDER BY b.ID DESC ');
    open;
    lInsertedID := FieldByName('ID').AsInteger;
    close;

    sql.Clear;
    sql.Add('INSERT INTO BrandImage(BrandID, Image) ');
    sql.Add(format('Values (%d, (SELECT * FROM OPENROWSET(BULK N''%s'', SINGLE_BLOB) AS CategoryImage)) ',
           [lInsertedID, FPictureAddress]));
    Execute;
    close;
    free;

  end;
end;

procedure TfrmBrand.pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) and (qry.State in [dsInsert, dsEdit]) then
  begin
    qry.Cancel;
    dsStateChange(self);
  end;
end;

procedure TfrmBrand.pnlImageDblClick(Sender: TObject);
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

    if (lX <> lY) and (lX > 250) then
    begin
      ErrorMessage('تعداد پیکسل های سطر و ستون تصویر برابر نیست' + sLineBreak +
                   '(اندازه تصویر 250*250 باید باشد)');
      Exit
    end;

    if lFileSize > 5520 then
    begin
      ErrorMessage('حجم فایل انتخاب شده زیاد است و قابل استفاده در این قسمت نیست' + sLineBreak +
                   '(حداکثر حجم فایل تصویر 7 کیلوبایت باید باشد)');
      Exit
    end;

    pnlImage.Fill.GradientType := gtTexture;
    pnlImage.Fill.BackGroundPicture.LoadFromFile(FPictureAddress);

  end;
end;

procedure TfrmBrand.ShowImageFromDB(ImageID: Integer);
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
    sql.Add('SELECT TOP (1) Image FROM BrandImage ');
    sql.Add(format('WHERE BrandID = %d', [ImageID]));
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

procedure TfrmBrand.UpdateImageToDB(StuffBrandID: integer);
var
  qr1: TUniQuery;
begin
  qr1 :=  TUniQuery.Create(self);
  qr1.Connection := dmPakhsh.Con;
  with qr1 do
  begin
    sql.Clear;
    sql.Add(format('DELETE BrandImage WHERE BrandID = %d ', [StuffBrandID]));
    Execute;
    close;

    sql.Clear;
    sql.Add('INSERT INTO BrandImage(BrandID, Image) ');
    sql.Add(format('Values (%d, (SELECT * FROM OPENROWSET(BULK N''%s'', SINGLE_BLOB) AS CategoryImage)) ',
           [StuffBrandID, FPictureAddress]));
    Execute;
    close;
    free;
  end;
end;

end.
