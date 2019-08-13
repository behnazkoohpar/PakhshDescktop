unit untMarcketer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, msgs,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCheckBox, Vcl.StdCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, AdvSmoothButton, AdvSmoothPanel, untDmPakhsh, Data.DB, DBAccess, Uni, MemDS, EhLibUniDAC,
  SolarCalendarPackage, DateProc;

type
  TfrmMarcketer = class(TForm)
    pnlHeader: TAdvSmoothPanel;
    btnAdd: TAdvSmoothButton;
    btnEdit: TAdvSmoothButton;
    btnDelete: TAdvSmoothButton;
    AdvSmoothPanel2: TAdvSmoothPanel;
    pnlGrid: TAdvSmoothPanel;
    grd: TDBGridEh;
    pnlEdit: TAdvSmoothPanel;
    Label1: TLabel;
    edtCode: TEdit;
    pnlBottom: TAdvSmoothPanel;
    btnOK: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    Label3: TLabel;
    edtFirstName: TEdit;
    qry: TUniQuery;
    ds: TUniDataSource;
    Label2: TLabel;
    edtLastName: TEdit;
    edtStartDate: TSolarDatePicker;
    Label4: TLabel;
    edtEndDate: TSolarDatePicker;
    Label5: TLabel;
    Label6: TLabel;
    edtMobile: TEdit;
    chkActivated: TcxCheckBox;
    qryID: TFloatField;
    qryFirstName: TWideStringField;
    qryLastName: TWideStringField;
    qryPhoneNumber: TStringField;
    qryCode: TStringField;
    qryStartDate: TStringField;
    qryEndDate: TStringField;
    qryActivated: TBooleanField;
    qryCreatedDate: TDateTimeField;
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
    function NewCode: string;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

function TfrmMarcketer.AreValidFields: Boolean;
begin
  AreValidFields := False;

  if edtFirstName.Text = '' then
  begin
    ErrorMessage('نام بازاریاب وارد نشده است');
    edtFirstName.SetFocus;
    Exit
  end;

  if edtLastName.Text = '' then
  begin
    ErrorMessage('نام خانوادگی بازاریاب وارد نشده است');
    edtLastName.SetFocus;
    exit
  end;

  if edtMobile.Text = '' then
  begin
    ErrorMessage('تلفن همراه بازاریاب وارد نشده است');
    edtMobile.SetFocus;
    exit
  end;

  if (edtStartDate.Text >= edtEndDate.Text) and
     ((edtStartDate.Text <> '') or (edtEndDate.Text <> '')) then
  begin
    ErrorMessage('تاریخ شروع کار نمیتواند بزرگتر و یا مساوی تاریخ پایان کار باشد');
    edtStartDate.SetFocus;
    exit
  end;

  AreValidFields := True;
end;

procedure TfrmMarcketer.btnAddClick(Sender: TObject);
begin
  qry.Append;
  edtCode.Text := NewCode;
  edtStartDate.Text := CurrentDate;
  edtEndDate.Text := AddDate(edtStartDate.Text, 365);
  edtFirstName.SetFocus;
end;

procedure TfrmMarcketer.btnDeleteClick(Sender: TObject);
var
  lExist: boolean;
begin
  lExist := not dmpakhsh.IsExistsRec_num('app.users', 'MarketerID', qryID.AsInteger);
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

procedure TfrmMarcketer.btnEditClick(Sender: TObject);
begin
  qry.Edit;
  edtFirstName.SetFocus;
end;

procedure TfrmMarcketer.btnOKClick(Sender: TObject);
var
  lCode, lFirstName, lLastName, lPhoneNumber, lStartDate, lEndDate, lCreateDate: string;
  lActivated: Boolean;
  lDate: TDateTime;
begin
  lCode := edtCode.text;
  lFirstName := edtFirstName.Text;
  lLastName := edtLastName.Text;
  lPhoneNumber := edtMobile.Text;
  lStartDate := edtStartDate.Text;
  lEndDate := edtEndDate.Text;

  lActivated := chkActivated.Checked;

  if AreValidFields then
  begin
    if qry.State in [dsInsert, dsEdit] then
    begin
      qryCode.AsString := lCode;
      qryFirstName.AsString := lFirstName;
      qryLastName.AsString := lLastName;
      qryPhoneNumber.AsString := lPhoneNumber;
      qryStartDate.AsString := lStartDate;
      qryEndDate.AsString := lEndDate;
      qryActivated.AsBoolean := lActivated;
      if qry.State = dsInsert then
        qryCreatedDate.AsDateTime:= now();

      qry.Post;
    end;
    EditMode(False);
  end;
end;

procedure TfrmMarcketer.dsDataChange(Sender: TObject; Field: TField);
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

  edtFirstName.Text := qryFirstName.AsString;
  edtCode.Text := qryCode.AsString;
  edtLastName.Text := qryLastName.AsString;
  edtMobile.Text := qryPhoneNumber.AsString;
  edtStartDate.Text := qryStartDate.AsString;
  edtEndDate.Text := qryEndDate.AsString;
  chkActivated.Checked := qryActivated.AsBoolean;
end;

procedure TfrmMarcketer.dsStateChange(Sender: TObject);
begin
  if qry.State in [dsEdit, dsInsert] then
    EditMode(True)
  else
    EditMode(False);
end;

procedure TfrmMarcketer.EditMode(AEditMode: Boolean);
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

procedure TfrmMarcketer.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmMarcketer.FormCreate(Sender: TObject);
begin
  qry.Connection := dmPakhsh.Con;
  qry.Active := True;
end;

function TfrmMarcketer.NewCode: string;
var
  lqr: TUniQuery;
begin
  lqr := TUniQuery.Create(self);
  try
    lqr.Connection := dmPakhsh.Con;
    lqr.SQL.Clear;
    lqr.SQL.Add('  SELECT MAX(ISNULL(Code, 0)) + 1 AS Code FROM Marketer');
    lqr.Open;
    Result := lqr.FieldByName('Code').AsString;
  finally
    lqr.Close;
    lqr.Free;
  end;
end;

procedure TfrmMarcketer.pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) and (qry.State in [dsInsert, dsEdit]) then
  begin
    qry.Cancel;
    dsStateChange(self);
  end;
end;

end.
