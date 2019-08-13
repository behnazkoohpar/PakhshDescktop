unit untBannerApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, untDmPakhsh,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox, Vcl.StdCtrls, msgs,
  SolarCalendarPackage, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, AdvSmoothButton, AdvSmoothPanel, Data.DB, DBAccess,
  Uni, MemDS, AdvGDIP, Vcl.ExtDlgs, sDialogs, EhLibUniDAC;

type
  TfrmBannerApp = class(TForm)
    pnlHeader: TAdvSmoothPanel;
    btnAdd: TAdvSmoothButton;
    btnEdit: TAdvSmoothButton;
    btnDelete: TAdvSmoothButton;
    pnlGrid: TAdvSmoothPanel;
    AdvSmoothPanel4: TAdvSmoothPanel;
    grd: TDBGridEh;
    pnlBottom: TAdvSmoothPanel;
    btnOK: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    pnlEdit: TAdvSmoothPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    pnlImage: TAdvSmoothPanel;
    edtFromDate: TSolarDatePicker;
    edtToDate: TSolarDatePicker;
    cmbStuffBrand: TComboBox;
    chkActive: TcxCheckBox;
    Label7: TLabel;
    qry: TUniQuery;
    ds: TUniDataSource;
    qryID: TFloatField;
    qryActivated: TBooleanField;
    qryStuffBrandID: TFloatField;
    qryFromDate: TWideStringField;
    qryToDate: TWideStringField;
    qryStuffBrandName: TWideStringField;
    openPicDlg1: TsOpenPictureDialog;
    Label10: TLabel;
    Label11: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure dsStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlImageDblClick(Sender: TObject);
  private
    FEditMode: Boolean;
    FStuffBrandIDList: array Of Integer;
    FPictureAddress: string;
    function  AreValidFields: Boolean;
    procedure EditMode(AEditMode: Boolean);
    procedure ShowImageFromDB(ImageID: Integer);
    Procedure InsertImageToDB;
  public
    { Public declarations }
  end;

var
  frmBannerApp: TfrmBannerApp;

implementation

{$R *.dfm}

function TfrmBannerApp.AreValidFields: Boolean;
begin
  if edtFromDate.Text = '' then
  begin
    AreValidFields := False;
    ErrorMessage('تاریخ شروع وارد نشده است');
    edtFromDate.SetFocus;
  end
  else if edtToDate.Text = '' then
  begin
    AreValidFields := False;
    ErrorMessage('تاریخ پایان وارد نشده است');
    edtToDate.SetFocus;
  end
  else if edtFromDate.Text > edtToDate.Text  then
  begin
    AreValidFields := False;
    ErrorMessage('محدوده زمانی وارد شده صحیح نیست');
    edtToDate.SetFocus;
  end
  else
    AreValidFields := True;
end;

procedure TfrmBannerApp.btnAddClick(Sender: TObject);
begin
  qry.Append;
  chkActive.Checked := true;
  FPictureAddress := '';
  edtFromDate.SetFocus;
end;

procedure TfrmBannerApp.btnDeleteClick(Sender: TObject);
var
  lRecordCount: integer;
begin
  lRecordCount := dmPakhsh.GetCountActiveRecord('app.Banner');
  if lRecordCount <= 5 then
  begin
    if ConfirmMessage('آيا براي حذف اطمينان داريد؟') then
    begin
      qry.Delete;
    end;
  end
  else
    InformationMessage('حداقل 5 بنر باید در حال نمایش باشد');

end;

procedure TfrmBannerApp.btnEditClick(Sender: TObject);
begin
  ds.Edit;
  FPictureAddress := '';
  edtFromDate.SetFocus;
end;

procedure TfrmBannerApp.btnOKClick(Sender: TObject);
var
  lFromDate, lToDate: string;
  lStuffBrandID, lInsertID: integer;
  lActivated, lInserted: boolean;
begin
  lFromDate := edtFromDate.text;
  lToDate := edtToDate.Text;
  lStuffBrandID := FStuffBrandIDList[cmbStuffBrand.ItemIndex+1];
  lActivated := chkActive.Checked;

  if AreValidFields then
  begin
    lInserted := qry.State = dsInsert;
    if qry.State in [dsInsert, dsEdit] then
    begin
      if (qry.State = dsInsert) AND (Length(FPictureAddress)<3) then
      begin
        ErrorMessage('تصویر انتخاب نشده است');
        EditMode(False);
        exit
      end;
      if (FPictureAddress <> '') AND (NOT lInserted) then
      begin
        qry.Delete;
        qry.Insert;
      end;

      qryFromDate.AsString := lFromDate;
      qryToDate.AsString := lToDate;
      qryStuffBrandID.AsInteger := lStuffBrandID;
      qryActivated.AsBoolean := lActivated;

      qry.Post;
      lInsertID := qryID.AsInteger;

      if (FPictureAddress <> '') then
        InsertImageToDB;

      qry.Refresh;
      qry.Locate('ID', lInsertID,[]);
    end;
    EditMode(False);
  end;

end;

procedure TfrmBannerApp.dsDataChange(Sender: TObject; Field: TField);
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
  edtFromDate.Text := qryFromDate.AsString;
  edtToDate.Text := qryToDate.AsString;
  cmbStuffBrand.ItemIndex := cmbStuffBrand.Items.IndexOf(qryStuffBrandName.AsString);
  chkActive.Checked := qryActivated.AsBoolean;

  pnlImage.Fill.GradientType := TAdvGradientType.gtNone;
  if qryID.AsInteger > 0 then
    ShowImageFromDB(qryID.AsInteger);
end;

procedure TfrmBannerApp.dsStateChange(Sender: TObject);
begin
  if qry.State in [dsEdit, dsInsert] then
    EditMode(True)
  else
    EditMode(False);
end;

procedure TfrmBannerApp.EditMode(AEditMode: Boolean);
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

procedure TfrmBannerApp.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmBannerApp.FormCreate(Sender: TObject);
var
  qr: TUniQuery;
  k: integer;
begin
  qry.Connection := dmPakhsh.Con;

  qr := TUniQuery.Create(Application);
  with qr do
  begin
    connection := dmPakhsh.Con;
    SQL.Clear;
    SQL.Add('SELECT sb.ID, s.Name + '' '' + b.Name AS StuffBrandName FROM stuffBrand AS sb ');
    SQL.Add('LEFT JOIN Stuff AS s ON(sb.StuffID = s.ID) ');
    SQL.Add('LEFT JOIN Brand AS b ON(sb.BrandID = b.ID) ');
    SQL.Add('WHERE sb.Activated = 1 AND sb.Deleted = 0 ');
    SQL.Add('ORDER BY StuffBrandName ');
    Open;
    SetLength(FStuffBrandIDList, qr.RecordCount + 1);
    k := 1;
    cmbStuffBrand.Items.Clear;
    while not EOF do
    begin
      cmbStuffBrand.Items.Add(FieldByName('StuffBrandName').AsString);
      FStuffBrandIDList[k] := FieldByName('ID').AsInteger;
      k := k +1;
      Next;
    end;
    Close;
  end;
  qr.Free;
  qry.Active := True;
end;

procedure TfrmBannerApp.InsertImageToDB;
var
  qr1: TUniQuery;
  lInsertedID : integer;
begin
  qr1 :=  TUniQuery.Create(self);
  qr1.Connection := dmPakhsh.Con;
  with qr1 do
  begin
    sql.Clear;
    sql.Add('SELECT TOP(1) ID FROM app.Banner WHERE Picture IS NULL ORDER BY ID DESC ');
    open;
    lInsertedID := FieldByName('ID').AsInteger;
    close;

    sql.Clear;
    sql.Add('Update app.Banner SET Picture =  ');
    sql.Add(format('(SELECT * FROM OPENROWSET(BULK N''%s'', SINGLE_BLOB) AS CategoryImage) ', [FPictureAddress]));
    sql.Add(format('WHERE ID = %d',[lInsertedID]));
    Execute;
    close;
    free;
  end;
end;

procedure TfrmBannerApp.pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) and (qry.State in [dsInsert, dsEdit]) then
  begin
    qry.Cancel;
    dsStateChange(self);
  end;
end;

procedure TfrmBannerApp.pnlImageDblClick(Sender: TObject);
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

    if (lX <= lY) OR (lX > 400) then
    begin
      ErrorMessage('تعداد پیکسل های سطر تصویر باید بیشتر از ستون آن باشد'+ sLineBreak +
                   '(اندازه مناسب سطر و ستون تصویر بنر 400*200 میباشد)');
      Exit
    end;

    if lFileSize > 9500 then
    begin
      ErrorMessage('حجم فایل انتخاب شده زیاد است و قابل استفاده در این قسمت نیست' + sLineBreak +
                   '(حداکثر اندازه فایل تصویر 9 کیلوبایت باید باشد)');
      Exit
    end;

    pnlImage.Fill.GradientType := gtTexture;
    pnlImage.Fill.BackGroundPicture.LoadFromFile(FPictureAddress);

  end;

end;

procedure TfrmBannerApp.ShowImageFromDB(ImageID: Integer);
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
    sql.Add('SELECT TOP (1) Picture FROM app.Banner ');
    sql.Add(format('WHERE ID = %d', [ImageID]));
    open;
  end;
  if qr.RecordCount > 0 then
  begin
    qr.GetBlob(qr.FieldByName('Picture')).SaveToStream(BlobStream);
    Blobstream.Position := 0;
    pnlImage.Fill.GradientType := gttexture;
    pnlImage.Fill.BackGroundPicture.loadfromstream(blobstream);
  end;
  //pnlImage.Fill. .bitmap.loadfromstream(blobstream);
  BlobStream.Free;
end;

end.
