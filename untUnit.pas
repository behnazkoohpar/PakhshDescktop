unit untUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, msgs,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox, Vcl.StdCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, AdvSmoothButton, AdvSmoothPanel, untDmPakhsh, Data.DB, DBAccess, Uni, MemDS, EhLibUniDAC;

type
  TfrmUnit = class(TForm)
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
    btnOK: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    Label3: TLabel;
    edtEnglish: TEdit;
    qry: TUniQuery;
    ds: TUniDataSource;
    qryID: TFloatField;
    qryName: TWideStringField;
    qryEnglishName: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dsStateChange(Sender: TObject);
  private
    FEditMode: Boolean;
    function  AreValidFields: Boolean;
    procedure EditMode(AEditMode: Boolean);
  public
    { Public declarations }
  end;

var
  frmUnit: TfrmUnit;

implementation

{$R *.dfm}

function TfrmUnit.AreValidFields: Boolean;
begin
  if edtName.Text = '' then
  begin
    AreValidFields := False;
    ErrorMessage('نام واحد اندازه گیری وارد نشده است.');
    edtName.SetFocus;
  end
  else
    AreValidFields := True;
end;

procedure TfrmUnit.btnAddClick(Sender: TObject);
begin
  qry.Append;
  edtName.SetFocus;
end;

procedure TfrmUnit.btnDeleteClick(Sender: TObject);
var
  lExist: boolean;
begin
  lExist := not dmpakhsh.IsExistsRec_num('StuffBrandPrice', 'UnitID', qryID.AsInteger);
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

procedure TfrmUnit.btnEditClick(Sender: TObject);
begin
  ds.Edit;
  edtName.SetFocus;
end;

procedure TfrmUnit.btnOKClick(Sender: TObject);
var
  lName, lEnglishName: string;
begin
  lName := edtName.text;
  lEnglishName := edtEnglish.Text;
  if AreValidFields then
  begin
    if qry.State in [dsInsert, dsEdit] then
    begin
      qryName.AsString := lName;
      qryEnglishName.AsString := lEnglishName;

      qry.Post;
    end;
    EditMode(False);
  end;
end;

procedure TfrmUnit.dsDataChange(Sender: TObject; Field: TField);
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
  edtEnglish.Text := qryEnglishName.AsString;
end;

procedure TfrmUnit.dsStateChange(Sender: TObject);
begin
  if qry.State in [dsEdit, dsInsert] then
    EditMode(True)
  else
    EditMode(False);
end;

procedure TfrmUnit.EditMode(AEditMode: Boolean);
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

procedure TfrmUnit.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmUnit.FormCreate(Sender: TObject);
begin
  qry.Connection := dmPakhsh.Con;
  qry.Active := True;
end;

procedure TfrmUnit.pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) and (qry.State in [dsInsert, dsEdit]) then
  begin
    qry.Cancel;
    dsStateChange(self);
  end;
end;

end.
