unit untStuffCategory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, msgs,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, AdvSmoothButton, AdvSmoothPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox, untMainStuffCategory, untDmPakhsh, Data.DB, DBAccess, Uni,
  MemDS, EhLibUniDAC;

type
  TfrmStuffCategory = class(TForm)
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
    edtSubCategoryName: TEdit;
    pnlBottom: TAdvSmoothPanel;
    btnOK: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    cmbCategory: TComboBox;
    AdvSmoothButton4: TAdvSmoothButton;
    chkActive: TcxCheckBox;
    qry: TUniQuery;
    ds: TUniDataSource;
    qryID: TFloatField;
    qryParentID: TFloatField;
    qryParentName: TWideStringField;
    qryName: TWideStringField;
    qryActivated: TBooleanField;
    procedure AdvSmoothButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure dsStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FStuffCategoryIDList: array Of Integer;
    FEditMode: Boolean;
    function  AreValidFields: Boolean;
    procedure EditMode(AEditMode: Boolean);
    procedure SetData;
  public
    { Public declarations }
  end;

var
  frmStuffCategory: TfrmStuffCategory;

implementation

{$R *.dfm}

procedure TfrmStuffCategory.AdvSmoothButton4Click(Sender: TObject);
var
  frm: TFrmMainStuffCategory;
begin
  try
    frm := TFrmMainStuffCategory.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
    SetData
  end;
end;

function TfrmStuffCategory.AreValidFields: Boolean;
begin
  if edtSubCategoryName.Text = '' then
  begin
    AreValidFields := False;
    ErrorMessage('نام کالا وارد نشده است');
    edtSubCategoryName.SetFocus;
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

procedure TfrmStuffCategory.btnAddClick(Sender: TObject);
begin
  qry.Append;
  chkActive.Checked := true;
  edtSubCategoryName.SetFocus;
end;

procedure TfrmStuffCategory.btnDeleteClick(Sender: TObject);
var
  lExist: boolean;
begin
  lExist := not dmpakhsh.IsExistsRec_num('Stuff', 'StuffCategoryID', qryID.AsInteger);
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

procedure TfrmStuffCategory.btnEditClick(Sender: TObject);
begin
  ds.Edit;
  edtSubCategoryName.SetFocus;
end;

procedure TfrmStuffCategory.btnOKClick(Sender: TObject);
var
  lName: string;
  lActive: boolean;
  lStuffCategoryID: integer;
begin
  lName := edtSubCategoryName.text;
  lStuffCategoryID := FStuffCategoryIDList[cmbCategory.ItemIndex+1];
  lActive := chkActive.Checked;

  if AreValidFields then
  begin
    if qry.State in [dsInsert, dsEdit] then
    begin
      qryName.AsString := lName;
      qryParentID.AsInteger := lStuffCategoryID;
      qryActivated.AsBoolean := lActive;
      qry.Post;
    end;
    EditMode(False);
  end;
end;

procedure TfrmStuffCategory.dsDataChange(Sender: TObject; Field: TField);
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
  edtSubCategoryName.Text := qryName.AsString;
  chkActive.Checked := qryActivated.AsBoolean;
  cmbCategory.ItemIndex := cmbCategory.Items.IndexOf(qryParentName.AsString);
end;

procedure TfrmStuffCategory.dsStateChange(Sender: TObject);
begin
  if qry.State in [dsEdit, dsInsert] then
    EditMode(True)
  else
    EditMode(False);
end;

procedure TfrmStuffCategory.EditMode(AEditMode: Boolean);
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

procedure TfrmStuffCategory.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmStuffCategory.FormCreate(Sender: TObject);
begin
  qry.Connection := dmPakhsh.Con;
  SetData;
  qry.Active := True;
end;

procedure TfrmStuffCategory.pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) and (qry.State in [dsInsert, dsEdit]) then
  begin
    qry.Cancel;
    dsStateChange(self);
  end;
end;

procedure TfrmStuffCategory.SetData;
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
    SQL.Add('WHERE ParentID IS NULL And Activated = 1 ');
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
