unit untMainStuffCategory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, msgs,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, AdvSmoothButton, AdvSmoothPanel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox, untDmPakhsh, Data.DB, DBAccess, Uni, MemDS, EhLibUniDAC;

type
  TfrmMainStuffCategory = class(TForm)
    pnlHeader: TAdvSmoothPanel;
    btnAdd: TAdvSmoothButton;
    btnEdit: TAdvSmoothButton;
    btnDelete: TAdvSmoothButton;
    AdvSmoothPanel2: TAdvSmoothPanel;
    pnlGrid: TAdvSmoothPanel;
    grd: TDBGridEh;
    pnlEdit: TAdvSmoothPanel;
    Label1: TLabel;
    edtName: TEdit;
    pnlBottom: TAdvSmoothPanel;
    btnOk: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    chkActive: TcxCheckBox;
    qry: TUniQuery;
    ds: TUniDataSource;
    qryID: TFloatField;
    qryName: TWideStringField;
    qryActivated: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure dsStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FEditMode: Boolean;
    function  AreValidFields: Boolean;
    procedure EditMode(AEditMode: Boolean);
  public
    { Public declarations }
  end;

var
  frmMainStuffCategory: TfrmMainStuffCategory;

implementation

{$R *.dfm}

function TfrmMainStuffCategory.AreValidFields: Boolean;
begin
  if edtName.Text = '' then
  begin
    AreValidFields := False;
    ErrorMessage('نام دسته وارد نشده است');
    edtName.SetFocus;
  end
  else
    AreValidFields := True;
end;

procedure TfrmMainStuffCategory.btnAddClick(Sender: TObject);
begin
  qry.Append;
  chkActive.Checked := true;
  edtName.SetFocus;
end;

procedure TfrmMainStuffCategory.btnDeleteClick(Sender: TObject);
var
  lExist: boolean;
begin
  lExist := not dmpakhsh.IsExistsRec_num('StuffCategory', 'ParentID', qryID.AsInteger);
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

procedure TfrmMainStuffCategory.btnEditClick(Sender: TObject);
begin
  ds.Edit;
  edtName.SetFocus;
end;

procedure TfrmMainStuffCategory.btnOkClick(Sender: TObject);
var
  lName: string;
  lActive: boolean;
begin
  lName := edtName.text;
  lActive := chkActive.Checked;

  if AreValidFields then
  begin
    if qry.State in [dsInsert, dsEdit] then
    begin
      qryName.AsString := lName;
      qryActivated.AsBoolean := lActive;

      qry.Post;
    end;
    EditMode(False);
  end;

end;

procedure TfrmMainStuffCategory.dsDataChange(Sender: TObject; Field: TField);
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

  chkActive.Checked := qryActivated.AsBoolean;
end;

procedure TfrmMainStuffCategory.dsStateChange(Sender: TObject);
begin
  if qry.State in [dsEdit, dsInsert] then
    EditMode(True)
  else
    EditMode(False);
end;

procedure TfrmMainStuffCategory.EditMode(AEditMode: Boolean);
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

procedure TfrmMainStuffCategory.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmMainStuffCategory.FormCreate(Sender: TObject);
begin
  qry.Connection := dmPakhsh.Con;
  qry.Active := True;
end;

procedure TfrmMainStuffCategory.pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) and (qry.State in [dsInsert, dsEdit]) then
  begin
    qry.Cancel;
    dsStateChange(self);
  end;
end;

end.
