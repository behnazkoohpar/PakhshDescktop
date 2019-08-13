unit untDeliveryItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, MSGs,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, AdvSmoothButton, AdvSmoothPanel, Data.DB, DBAccess, Uni, MemDS,
  untStuffBrand, untStuffBrandPrice, VirtualTable, untDmPakhsh, DateProc;

type
  TfrmDeliveryItem = class(TForm)
    pnlHeader: TAdvSmoothPanel;
    btnAdd: TAdvSmoothButton;
    btnEdit: TAdvSmoothButton;
    btnDelete: TAdvSmoothButton;
    pnlEdit: TAdvSmoothPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cmbStuffBrandName: TComboBox;
    edtValue: TEdit;
    edtDeliveryPrice: TEdit;
    edtDeliverySumPrice: TEdit;
    pnlBottom: TAdvSmoothPanel;
    btnOk: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    pnlGrid: TAdvSmoothPanel;
    grd: TDBGridEh;
    cmbStuffBrandCode: TComboBox;
    vt: TVirtualTable;
    ds: TUniDataSource;
    pnlReceiptItemAction: TAdvSmoothPanel;
    Label8: TLabel;
    Label4: TLabel;
    lblForosh: TLabel;
    lblPakhsh: TLabel;
    Label9: TLabel;
    lblUnit: TLabel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    Label12: TLabel;
    Label13: TLabel;
    lblStuffBrandCount: TLabel;
    lblAllPrice: TLabel;
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
    AdvSmoothButton3: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure btnOkClick(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure AdvSmoothButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbStuffBrandCodeExit(Sender: TObject);
    procedure cmbStuffBrandNameExit(Sender: TObject);
    procedure dsStateChange(Sender: TObject);
    procedure edtDeliveryPriceExit(Sender: TObject);
    procedure pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure vtSumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure vtPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure vtValueGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    FStuffBrandIDList: array Of Integer;
    FUnitIDList: array Of Integer;
    FEditMode: Boolean;
    procedure EditMode(AEditMode: Boolean);
    procedure SetInfoStuffBrand;
    procedure SetCalculateOfrecords;
    function AreValidFields: Boolean;
  public
    { Public declarations }
  end;

var
  frmDeliveryItem: TfrmDeliveryItem;

implementation

uses
  untReceipt;

{$R *.dfm}

procedure TfrmDeliveryItem.AdvSmoothButton2Click(Sender: TObject);
var
  frm: TFrmStuffBrand;
begin
  try
    frm := TfrmStuffBrand.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmDeliveryItem.AdvSmoothButton3Click(Sender: TObject);
var
  frm: TFrmStuffBrandPrice;
begin
  try
    frm := TfrmStuffBrandPrice.Create(Self);
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

function TfrmDeliveryItem.AreValidFields: Boolean;
begin
  Result := false;
  if (cmbStuffBrandName.ItemIndex < 0) or (cmbStuffBrandName.Text = '') then
  begin
    ErrorMessage('ãÍÕæá ÇäÊÎÇÈ äÔÏå ÇÓÊ');
    cmbStuffBrandName.SetFocus;
    exit
  end
  else if (cmbStuffBrandCode.ItemIndex < 0) or (cmbStuffBrandCode.Text = '') then
  begin
    ErrorMessage('ãÍÕæá ÇäÊÎÇÈ äÔÏå ÇÓÊ');
    cmbStuffBrandCode.SetFocus;
    exit
  end
  else if (edtValue.Text = '0') or (edtValue.Text = '') then
  begin
    ErrorMessage('ãÞÏÇÑ æÇÑÏ äÔÏå ÇÓÊ');
    edtValue.SetFocus;
    exit
  end
  else if (edtDeliverySumPrice.Text = '0') or (edtDeliverySumPrice.Text = '') then
  begin
    ErrorMessage('ãÞÏÇÑ æÇÑÏ äÔÏå ÇÓÊ');
    edtDeliverySumPrice.SetFocus;
    exit
  end;

  Result := True;
end;

procedure TfrmDeliveryItem.btnAddClick(Sender: TObject);
begin
  vt.Append;
  cmbStuffBrandCode.SetFocus;
end;

procedure TfrmDeliveryItem.btnDeleteClick(Sender: TObject);
begin
  if ConfirmMessage('ÂíÇ ÈÑÇí ÍÐÝ ÇØãíäÇä ÏÇÑíÏ¿') then
  begin
    vt.Delete;
  end;
end;

procedure TfrmDeliveryItem.btnEditClick(Sender: TObject);
begin
  ds.Edit;
  cmbStuffBrandCode.SetFocus;
end;

procedure TfrmDeliveryItem.btnOkClick(Sender: TObject);
var
  lStuffBrandCode, lStuffBrandName, lUnitName: string;
  lStuffBrandID, lValue, lPrice, lSumPrice, lUnitID, lForosh, lPakhsh, lIndex: Largeint;
begin
  if edtValue.Text = '' then
    edtValue.Text := '0';
  if edtDeliveryPrice.Text = '' then
    edtDeliveryPrice.Text := '0';
  if edtDeliverySumPrice.Text = '' then
    edtDeliverySumPrice.Text := '0';

  if vt.State = dsEdit then
    lIndex := vt.RecNo;

  lStuffBrandID := FStuffBrandIDList[cmbStuffBrandCode.ItemIndex+1];
  lUnitID := FUnitIDList[cmbStuffBrandCode.ItemIndex+1];
  lUnitName := lblUnit.Caption;
  lStuffBrandCode := cmbStuffBrandCode.text;
  lStuffBrandName := cmbStuffBrandName.text;
  lValue := StrToInt(edtValue.Text);
  lPrice := StrToInt(edtDeliveryPrice.Text);
  lSumPrice := StrToInt(edtDeliverySumPrice.Text);
  lForosh := StrToInt(lblForosh.Caption);
  lPakhsh := StrToInt(lblPakhsh.Caption);

  if AreValidFields then
  begin
    if vt.State in [dsInsert, dsEdit] then
    begin
      vtStuffBrandID.AsLargeInt := lStuffBrandID;
      vtStuffBrandUnitID.AsLargeInt := lUnitID;
      vtStuffBrandConsumerPrice.AsLargeInt := lForosh;
      vtStuffBrandPrice.AsLargeInt := lPakhsh;
      vtValue.AsLargeInt := lValue;
      vtPrice.AsLargeInt := lPrice;
      vtSumPrice.AsLargeInt := lSumPrice;
      vtStuffBrandName.AsString := lStuffBrandName;
      vtStuffBrandCode.AsString := lStuffBrandCode;
      vtUnitName.AsString := lUnitName;

      vt.Post;
    end;
    EditMode(False);
  end;
  vt.Active := False;
  vt.Active := True;

  SetCalculateOfRecords;
end;

procedure TfrmDeliveryItem.cmbStuffBrandCodeExit(Sender: TObject);
begin
  if cmbStuffBrandCode.ItemIndex = -1 then
    cmbStuffBrandName.text := '';
  cmbStuffBrandName.ItemIndex := cmbStuffBrandCode.ItemIndex;
  SetInfoStuffBrand;
end;

procedure TfrmDeliveryItem.cmbStuffBrandNameExit(Sender: TObject);
begin
  if cmbStuffBrandName.ItemIndex = -1 then
    cmbStuffBrandCode.text := '';
  cmbStuffBrandCode.ItemIndex := cmbStuffBrandName.ItemIndex;
  SetInfoStuffBrand;
end;

procedure TfrmDeliveryItem.dsDataChange(Sender: TObject; Field: TField);
begin
  if (vt.RecordCount > 0) and (not FEditMode) then
  begin
    btnDelete.Enabled := True;
    btnEdit.Enabled := True;
  end
  else
  begin
    btnDelete.Enabled := false;
    btnEdit.Enabled := false;
  end;

  cmbStuffBrandCode.Text := vtStuffBrandCode.AsString;
  cmbStuffBrandName.Text := vtStuffBrandName.AsString;
  edtValue.Text := vtValue.AsString;
  edtDeliveryPrice.Text := vtPrice.AsString;
  edtDeliverySumPrice.Text := vtSumPrice.AsString;
end;

procedure TfrmDeliveryItem.dsStateChange(Sender: TObject);
begin
  if vt.State in [dsEdit, dsInsert] then
    EditMode(True)
  else
    EditMode(False);
end;

procedure TfrmDeliveryItem.EditMode(AEditMode: Boolean);
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

procedure TfrmDeliveryItem.edtDeliveryPriceExit(Sender: TObject);
begin
  if (edtValue.Text <> '') And (edtDeliveryPrice.Text <> '') then
    edtDeliverySumPrice.Text := IntToStr(strtoint(edtValue.Text) *  strtoint(edtDeliveryPrice.Text));
end;

procedure TfrmDeliveryItem.FormCreate(Sender: TObject);
var
  qr: TUniQuery;
  K: Integer;
begin
  vt.Active := True;
  qr := TUniQuery.Create(Application);
  with qr do
  begin
    connection := dmPakhsh.Con;
    SQL.Clear;
    SQL.Add('SELECT sb.ID, s.Name + '' '' + b.Name AS StuffBrandName, sb.Code AS StuffBrandCode, sb.UnitID FROM stuffBrand AS sb ');
    SQL.Add('LEFT JOIN Stuff AS s ON(sb.StuffID = s.ID) ');
    SQL.Add('LEFT JOIN Brand AS b ON(sb.BrandID = b.ID) ');
    SQL.Add('WHERE sb.Activated = 1 AND sb.Deleted = 0 ');
    SQL.Add('ORDER BY StuffBrandName ');
    Open;
    SetLength(FStuffBrandIDList, qr.RecordCount + 1);
    SetLength(FUnitIDList, qr.RecordCount + 1);
    k := 1;
    cmbStuffBrandName.Items.Clear;
    cmbStuffBrandCode.Items.Clear;
    while not EOF do
    begin
      cmbStuffBrandName.Items.Add(FieldByName('StuffBrandName').AsString);
      cmbStuffBrandCode.Items.Add(FieldByName('StuffBrandCode').AsString);
      FStuffBrandIDList[k] := FieldByName('ID').AsInteger;
      FUnitIDList[K] := FieldByName('UnitID').AsInteger;
      k := k +1;
      Next;
    end;
    Close;

  end;
  qr.Free;

end;

procedure TfrmDeliveryItem.pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) and (vt.State in [dsInsert, dsEdit]) then
  begin
    vt.Cancel;
    dsStateChange(self);
  end;
end;

procedure TfrmDeliveryItem.SetCalculateOfrecords;
var
  I: integer;
  lPriceAll: Largeint;
begin
  lblStuffBrandCount.Caption := IntToStr(vt.RecordCount);
  vt.First;
  lPriceAll := 0;
  for I := 1 to vt.RecordCount do
  begin
    lPriceAll := lPriceAll + vtSumPrice.AsLargeInt;
    vt.Next;
  end;

  lblAllPrice.Caption := IntToStr(lPriceAll);
end;

procedure TfrmDeliveryItem.SetInfoStuffBrand;
var
  qr: TUniQuery;
begin
  qr := TUniQuery.Create(Self);
  try
    qr.Connection := dmPakhsh.Con;
    qr.SQL.Clear;
    qr.SQL.Add(format('SELECT TOP 1 Name FROM unit WHERE ID = %d ', [FUnitIDList[cmbStuffBrandCode.ItemIndex+1]]));
    qr.Open;
    lblUnit.Caption := qr.FieldByName('Name').AsString;
    qr.Close;
    qr.SQL.Clear;
    qr.SQL.Add('SELECT top 1 ');
    qr.SQL.Add('   sbp.ConsumerPrice, ');
    qr.SQL.Add('   sbp.Price, ');
    qr.SQL.Add('   sbp.Offer ');
    qr.SQL.Add('FROM StuffBrandPrice AS sbp ');
    qr.SQL.Add('LEFT JOIN StuffBrand AS sb ON (sbp.StuffBrandID = sb.ID) ');
    qr.SQL.Add('WHERE sb.Activated = 1 AND sb.Deleted = 0  And ');
		qr.SQL.Add('	            sbp.ID IN (SELECT MAX(id) AS ID FROM StuffBrandPrice ');
		qr.SQL.Add(format('					                WHERE FromDate <= ''%s'' ', [CurrentDate]));
		qr.SQL.Add('					                GROUP BY StuffBrandID) ');
	  qr.SQL.Add(format('    AND sbp.StuffBrandID = %d ', [FStuffBrandIDList[cmbStuffBrandCode.ItemIndex+1]]));
    qr.Open;
    lblForosh.Caption := qr.FieldByName('ConsumerPrice').AsString;
    lblPakhsh.Caption := qr.FieldByName('Price').AsString;
    qr.Close;
  finally
    qr.Free;
  end;
end;

procedure TfrmDeliveryItem.vtPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmDeliveryItem.vtSumPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmDeliveryItem.vtValueGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

end.
