unit untStuff;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, msgs,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvSmoothButton, AdvSmoothPanel, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox, Vcl.StdCtrls, untStuffCategory, untDmPakhsh, Data.DB,
  DBAccess, Uni, MemDS, EhLibUniDAC;

type
  TfrmStuff = class(TForm)
    pnlBottom: TAdvSmoothPanel;
    btnOK: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    pnlHeader: TAdvSmoothPanel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    btnAdd: TAdvSmoothButton;
    btnEdit: TAdvSmoothButton;
    btnDelete: TAdvSmoothButton;
    pnlGrid: TAdvSmoothPanel;
    pnlEdit: TAdvSmoothPanel;
    grd: TDBGridEh;
    AdvSmoothButton4: TAdvSmoothButton;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    edtCode: TEdit;
    edtName: TEdit;
    cmbCategory: TComboBox;
    chkActive: TcxCheckBox;
    ds: TUniDataSource;
    qry: TUniQuery;
    qryID: TFloatField;
    qryStuffName: TWideStringField;
    qryCode: TWideStringField;
    qryStuffCategoryID: TFloatField;
    qryStuffCategoryName: TWideStringField;
    qryActivated: TBooleanField;
    Label3: TLabel;
    procedure AdvSmoothButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure dsStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FStuffCategoryIDList: array Of Integer;
    FUnitIDList: array Of Integer;
    FEditMode: Boolean;
    function  AreValidFields: Boolean;
    procedure EditMode(AEditMode: Boolean);
    procedure SetData;
  public
    { Public declarations }
  end;

var
  frmStuff: TfrmStuff;

implementation

{$R *.dfm}

procedure TfrmStuff.AdvSmoothButton4Click(Sender: TObject);
var
  frm: TFrmStuffCategory;
begin
  try
    frm := TFrmStuffCategory.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
    SetData;
  end;
end;

function TfrmStuff.AreValidFields: Boolean;
begin
  if edtName.Text = '' then
  begin
    AreValidFields := False;
    ErrorMessage('نام کالا وارد نشده است');
    edtName.SetFocus;
  end
  else if edtCode.Text = '' then
  begin
    AreValidFields := False;
    ErrorMessage('کد کالا وارد نشده است');
    edtCode.SetFocus;
  end
  else if (cmbCategory.ItemIndex < 0) or (cmbCategory.Text = '') then
  begin
    AreValidFields := False;
    ErrorMessage('دسته بندی کالا مشخص نشده است');
    cmbCategory.SetFocus;
  end
  else
    AreValidFields := True;
end;

procedure TfrmStuff.btnAddClick(Sender: TObject);
begin
  qry.Append;
  chkActive.Checked := true;
  edtName.SetFocus;
end;

procedure TfrmStuff.btnDeleteClick(Sender: TObject);
var
  lExist: boolean;
begin
  lExist := not dmpakhsh.IsExistsRec_num('StuffBrand', 'StuffID', qryID.AsInteger);
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

procedure TfrmStuff.btnEditClick(Sender: TObject);
begin
  ds.Edit;
  edtName.SetFocus;
end;

procedure TfrmStuff.btnOKClick(Sender: TObject);
var
  lName, lCode: string;
  lActive, lEdited: boolean;
  lStuffCategory, lRecNo, lInsertID: integer;
begin
  lRecNo := qry.RecNo;
  lName := edtName.text;
  lCode := edtCode.Text;

  lStuffCategory := FStuffCategoryIDList[cmbCategory.ItemIndex+1];
  lActive := chkActive.Checked;

  if AreValidFields then
  begin
    if qry.State in [dsInsert, dsEdit] then
    begin
      qryStuffName.AsString := lName;
      qryCode.AsString := lCode;

      qryStuffCategoryID.AsInteger := lStuffCategory;
      qryActivated.AsBoolean := lActive;
      qry.Post;
      lInsertID := qryID.AsInteger;
      qry.Refresh;
      qry.Locate('ID', lInsertID,[]);

    end;
    EditMode(False);
  end;

end;

procedure TfrmStuff.dsDataChange(Sender: TObject; Field: TField);
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
  edtName.Text := qryStuffName.AsString;
  edtCode.Text := qryCode.AsString;
  chkActive.Checked := qryActivated.AsBoolean;
  cmbCategory.ItemIndex := cmbCategory.Items.IndexOf(qryStuffCategoryName.AsString);
end;

procedure TfrmStuff.dsStateChange(Sender: TObject);
begin
  if qry.State in [dsEdit, dsInsert] then
    EditMode(True)
  else
    EditMode(False);
end;

procedure TfrmStuff.EditMode(AEditMode: Boolean);
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

procedure TfrmStuff.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmStuff.FormCreate(Sender: TObject);

begin
  qry.Connection := dmPakhsh.Con;
  SetData;
  qry.Active := True;
end;

procedure TfrmStuff.pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) and (qry.State in [dsInsert, dsEdit]) then
  begin
    qry.Cancel;
    dsStateChange(self);
  end;
end;

procedure TfrmStuff.SetData;
var
  qr: TUniQuery;
  k: integer;
begin
  qr := TUniQuery.Create(Application);
  with qr do
  begin
    connection := dmPakhsh.Con;
    SQL.Clear;
    SQL.Add('SELECT ID, Name FROM StuffCategory ');
    SQL.Add('WHERE ParentID IS NOT NULL And Activated = 1 ');
    SQL.Add('ORDER BY Name ');
    Open;
    SetLength(FStuffCategoryIDList, qr.RecordCount + 1);
    k := 1;
    cmbCategory.Items.Clear;
    while not EOF do
    begin
      cmbCategory.Items.Add(FieldByName('Name').AsString);
      FStuffCategoryIDList[k] := FieldByName('ID').AsInteger;
      k := k +1;
      Next;
    end;
    Close;
  end;
  qr.Free;
end;

end.
