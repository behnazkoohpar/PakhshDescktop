unit untStuffBrandPrice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, untDmPakhsh, msgs,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, AdvSmoothButton, AdvSmoothPanel, SolarCalendarPackage, Data.DB, DBAccess,
  Uni, MemDS, EhLibUniDAC, cxRadioGroup, dateproc;

type
  TfrmStuffBrandPrice = class(TForm)
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
    edtPrice: TEdit;
    pnlBottom: TAdvSmoothPanel;
    btnOK: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    cmbStuffBrand: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    edtOffer: TEdit;
    Label6: TLabel;
    edtDescription: TEdit;
    edtFromDate: TSolarDatePicker;
    qry: TUniQuery;
    ds: TUniDataSource;
    qryID: TFloatField;
    qryFromDate: TWideStringField;
    qryStuffBrandID: TFloatField;
    qryCode: TWideStringField;
    qrystuffBrandName: TWideStringField;
    qryPrice: TFloatField;
    qryOffer: TSmallintField;
    qryDescription: TWideStringField;
    AdvSmoothPanel1: TAdvSmoothPanel;
    DBGridEh1: TDBGridEh;
    Label7: TLabel;
    edtConsumerPrice: TEdit;
    Label8: TLabel;
    qryConsumerPrice: TFloatField;
    AdvSmoothPanel3: TAdvSmoothPanel;
    rbNowMode: TcxRadioButton;
    rbPrevMode: TcxRadioButton;
    rbNextMode: TcxRadioButton;
    Label2: TLabel;
    qrHistory: TUniQuery;
    dsHistory: TUniDataSource;
    qrHistoryFromDate: TWideStringField;
    qrHistoryConsumerPrice: TFloatField;
    qrHistoryPrice: TFloatField;
    qrHistoryOffer: TSmallintField;
    qrHistoryDescription: TWideStringField;
    qryUnitName: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure dsStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rbNowModeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdSelectionChanged(Sender: TObject);
    procedure qryPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryOfferGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qryConsumerPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qrHistoryConsumerPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qrHistoryPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    FStuffBrandIDList: array Of Integer;

    FEditMode: Boolean;
    function  AreValidFields: Boolean;
    procedure EditMode(AEditMode: Boolean);
    procedure RecordsViewMode;
    procedure SetHistoryPriceList(aStuffBrandID: string);
  public
    { Public declarations }
  end;

var
  frmStuffBrandPrice: TfrmStuffBrandPrice;

implementation

{$R *.dfm}

function TfrmStuffBrandPrice.AreValidFields: Boolean;
begin
  if edtFromDate.Text = '' then
  begin
    AreValidFields := False;
    ErrorMessage('تاریخ قیمت گذاری مشخص نشده است');
    edtFromDate.SetFocus;
  end
  else if edtPrice.Text = '' then
  begin
    AreValidFields := False;
    ErrorMessage('قیمت عرضه پخش کالا مشخص نشده است');
    edtPrice.SetFocus;
  end
  else if edtConsumerPrice.Text = '' then
  begin
    AreValidFields := False;
    ErrorMessage('فی مصرف کننده مشخص نشده است');
    edtConsumerPrice.SetFocus;
  end
  else if (cmbStuffBrand.ItemIndex < 0) or (cmbStuffBrand.Text = '') then
  begin
    AreValidFields := False;
    ErrorMessage('محصول مشخص نشده است');
    cmbStuffBrand.SetFocus;
  end
  else
    AreValidFields := True;
end;

procedure TfrmStuffBrandPrice.btnAddClick(Sender: TObject);
begin
  qry.Append;
  edtPrice.Text := '0';
  edtOffer.Text := '0';
  edtFromDate.ShowDefaultDate := false;
  edtFromDate.ShowDefaultDate := True;
  edtFromDate.SetFocus;
end;

procedure TfrmStuffBrandPrice.btnDeleteClick(Sender: TObject);
begin
  if ConfirmMessage('آيا براي حذف اطمينان داريد؟') then
  begin
    qry.Delete;
  end;
end;

procedure TfrmStuffBrandPrice.btnEditClick(Sender: TObject);
begin
  ds.Edit;
  edtFromDate.SetFocus;
end;

procedure TfrmStuffBrandPrice.btnOKClick(Sender: TObject);
var
  lFromDate, lDescription: string;
  lStuffBrandID, lUnitID, lPrice, lOffer, lInsertID, lConsumerPrice: integer;
begin
  lFromDate := edtFromDate.Text;
  lStuffBrandID := FStuffBrandIDList[cmbStuffBrand.ItemIndex+1];
  lConsumerPrice := strtoint(edtConsumerPrice.Text);
  lPrice := strtoint(edtPrice.text);
  lOffer := strtoint(edtOffer.Text);
  lDescription := edtDescription.Text;

  if AreValidFields then
  begin
    if qry.State in [dsInsert, dsEdit] then
    begin
      qryFromDate.AsString := lFromDate;
      qryStuffBrandID.AsInteger := lStuffBrandID;
      qryConsumerPrice.AsInteger := lConsumerPrice;
      qryPrice.AsInteger := lPrice;
      qryOffer.AsInteger := lOffer;
      qryDescription.AsString := lDescription;
      qry.Post;
      lInsertID := qryID.AsInteger;
      qry.Refresh;
      qry.Locate('ID', lInsertID,[]);
    end;
    EditMode(False);
  end;
end;

procedure TfrmStuffBrandPrice.dsDataChange(Sender: TObject; Field: TField);
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
  edtConsumerPrice.Text := qryConsumerPrice.AsString;
  edtFromDate.Text := qryFromDate.AsString;
  edtPrice.Text := qryPrice.AsString;
  edtOffer.Text := qryOffer.AsString;
  edtDescription.Text := qryDescription.AsString;
  cmbStuffBrand.ItemIndex := cmbStuffBrand.Items.IndexOf(qrystuffBrandName.AsString);

  //SetHistoryPriceList(qryStuffBrandID.AsString);
end;

procedure TfrmStuffBrandPrice.dsStateChange(Sender: TObject);
begin
  if qry.State in [dsEdit, dsInsert] then
    EditMode(True)
  else
    EditMode(False);
end;

procedure TfrmStuffBrandPrice.EditMode(AEditMode: Boolean);
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

procedure TfrmStuffBrandPrice.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmStuffBrandPrice.FormCreate(Sender: TObject);
var
  qr: TUniQuery;
  K: Integer;
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


end;

procedure TfrmStuffBrandPrice.FormShow(Sender: TObject);
begin
  RecordsViewMode;
end;

procedure TfrmStuffBrandPrice.grdSelectionChanged(Sender: TObject);
begin
  SetHistoryPriceList(qryStuffBrandID.AsString);
end;

procedure TfrmStuffBrandPrice.pnlEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) and (qry.State in [dsInsert, dsEdit]) then
  begin
    qry.Cancel;
    dsStateChange(self);
  end;
end;

procedure TfrmStuffBrandPrice.qrHistoryConsumerPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmStuffBrandPrice.qrHistoryPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmStuffBrandPrice.qryConsumerPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmStuffBrandPrice.qryOfferGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmStuffBrandPrice.qryPriceGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := formatfloat('###,###',(Sender.AsInteger));
end;

procedure TfrmStuffBrandPrice.rbNowModeClick(Sender: TObject);
begin
  RecordsViewMode;
end;

procedure TfrmStuffBrandPrice.RecordsViewMode;
Const
  qrString =  'SELECT sbp.ID, ' +
              '       sbp.FromDate, ' +
              '       sbp.StuffBrandID, ' +
              '       sbp.ConsumerPrice, ' +
              '       sb.Code, ' +
              '	      s.Name + '' '' + b.Name AS stuffBrandName, ' +
              '	      u.Name AS UnitName, '+
              '       sb.UnitID, ' +
              '       sbp.Price, ' +
              '       sbp.Offer, ' +
              '       sbp.Description ' +
              'FROM StuffBrandPrice AS sbp ' +
              'LEFT JOIN StuffBrand AS sb ON (sbp.StuffBrandID = sb.ID) ' +
              'LEFT JOIN Stuff AS s ON (sb.StuffID = s.ID) ' +
              'LEFT JOIN Brand AS b ON (sb.BrandID = b.ID) ' +
              'LEFT JOIN Unit AS u ON (sb.UnitID = u.ID) ' +
              'WHERE sb.Activated = 1 AND sb.Deleted = 0 AND s.Activated = 1 AND b.Activated = 1 And ' +
			        '                    sbp.ID IN (SELECT MAX(id) AS ID FROM StuffBrandPrice ' +
							'                               WHERE FromDate %s ' +
							'                               GROUP BY StuffBrandID) ' +
              'ORDER BY stuffBrandName ' ;

var
  lModeStr, lDateNow: string;
begin
  qry.Connection := dmPakhsh.Con;
  lDateNow := CurrentDate;

  if rbNowMode.Checked then
    lModeStr := format(' <= %s ',[quotedstr(lDateNow)])
  else if rbPrevMode.Checked then
    lModeStr := format(' < %s ',[quotedstr(lDateNow)])
  else if rbNextMode.Checked then
    lModeStr := format(' > %s ',[quotedstr(lDateNow)]);

  qry.SQL.Clear;
  qry.SQL.Add(format(qrString, [lModeStr]));
  qry.Active := True;
end;

procedure TfrmStuffBrandPrice.SetHistoryPriceList(aStuffBrandID: string);
Const
  qrString =  'SELECT FromDate, ConsumerPrice, Price, Offer, Description FROM StuffBrandPrice  ' +
              'WHERE StuffBrandID = %s ' +
              'ORDER BY FromDate Desc ';
begin
  if aStuffBrandID <> '' then
  begin
    qrHistory.Connection := dmPakhsh.Con;


    qrHistory.SQL.Clear;
    qrHistory.SQL.Add(format(qrString, [aStuffBrandID]));
    qrHistory.Active := True;
  end;
end;

end.



