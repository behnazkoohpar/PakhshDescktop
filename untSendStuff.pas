unit untSendStuff;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, AdvSmoothButton, AdvSmoothPanel, Data.DB, DBAccess, Uni, MemDS, frxClass,
  frxDBSet, NumberToStr, untdmPakhsh, dateproc;

Type
  TRequestInfo = Record
    RequestDateTime: string;
    UserID: string;
    StuffCount: string;
    SumPrice: string;
    Accepted: Boolean;
    AcceptedDatetime: string;
    Sended: Boolean;
    SendedDateTime: string;
  End;

Type
  TUserInfo = Record
    FirstName: string;
    LastName: string;
    StoreName: string;
    MobileNumber: string;
    PhoneNumber: string;
    Address: string;
    PostalCode: string;
    LastLoginDate: string;
  End;

type
  TfrmSendStuff = class(TForm)
    AdvSmoothPanel1: TAdvSmoothPanel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    Label2: TLabel;
    AdvSmoothPanel3: TAdvSmoothPanel;
    Label3: TLabel;
    AdvSmoothPanel4: TAdvSmoothPanel;
    Label4: TLabel;
    AdvSmoothButton2: TAdvSmoothButton;
    AdvSmoothButton3: TAdvSmoothButton;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtMobile: TEdit;
    edtStoreName: TEdit;
    edtFirstName: TEdit;
    edtPosttalCode: TEdit;
    edtLastName: TEdit;
    edtPhoneNumber: TEdit;
    edtAddress: TEdit;
    Label11: TLabel;
    edtRequestID: TEdit;
    Label12: TLabel;
    edtRequestCount: TEdit;
    edtRequestAcceptedStatus: TEdit;
    Label13: TLabel;
    edtRequestSumPrice: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    edtRequestAcceptedDateTime: TEdit;
    Label18: TLabel;
    edtPriceLitter: TEdit;
    DBGridEh1: TDBGridEh;
    qryDetailes: TUniQuery;
    qryDetailesID: TFloatField;
    qryDetailesRequestID: TFloatField;
    qryDetailesStuffBrandID: TFloatField;
    qryDetailesCount: TSmallintField;
    qryDetailesStuffBrandCode: TWideStringField;
    qryDetailesStuffName: TWideStringField;
    qryDetailesBrandName: TWideStringField;
    qryDetailesPrice: TFloatField;
    qryDetailesOffer: TSmallintField;
    qryDetailesunitName: TWideStringField;
    qryDetailesStuffBrandName: TWideStringField;
    qryDetailessumPrice: TFloatField;
    dsDetailes: TUniDataSource;
    btnAccept: TAdvSmoothButton;
    btnNoAccept: TAdvSmoothButton;
    frxRp: TfrxReport;
    frxDB: TfrxDBDataset;
    Label16: TLabel;
    edtRequestDateTime: TEdit;
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvSmoothButton3Click(Sender: TObject);
  private
    fRequestInfo: TRequestInfo;
    fUserInfo: TUserInfo;

    procedure SetValueReport;
    procedure SetDetailesData(aMasterID: string);
    procedure SetRequestInfo(aMasterID: string);
    procedure SetUserInfo(aUserID: string);
    procedure SetRequestInfoInController;
    procedure SetUserInfoInController;
    function ConvertDateTime(aMiladiDateTime: TDateTime): string;
  public
    fStuffRequestID: string;
  end;


implementation

{$R *.dfm}

procedure TfrmSendStuff.AdvSmoothButton2Click(Sender: TObject);
begin
  SetValueReport;
  frxRp.ShowReport();
end;

procedure TfrmSendStuff.SetValueReport;
var
  lDateRp, lRequestID, lRequestDateTime, lAcceptedDateTime, lCustommerName, lCustommerMobile, lStoreName,
  lFactorPrice, lFactorPricel, lAddress: TfrxMemoView;
begin
  lDateRp := frxRp.FindObject('lblDateRp') as TfrxMemoView;
  lRequestID := frxRp.FindObject('lblRequestID') as TfrxMemoView;
  lRequestDateTime := frxRp.FindObject('lblRequestDateTime') as TfrxMemoView;
  lAcceptedDateTime := frxRp.FindObject('lblAcceptedDateTime') as TfrxMemoView;
  lCustommerName := frxRp.FindObject('lblCustommerName') as TfrxMemoView;
  lCustommerMobile := frxRp.FindObject('lblCustommerMobile') as TfrxMemoView;
  lStoreName := frxRp.FindObject('lblStoreName') as TfrxMemoView;
  lFactorPrice := frxRp.FindObject('lblFactorPrice') as TfrxMemoView;
  lFactorPricel := frxRp.FindObject('lblFactorPricel') as TfrxMemoView;
  lAddress := frxRp.FindObject('lblAddress') as TfrxMemoView;

  lDateRp.Text := CurrentDate;
  lRequestID.Text := edtRequestID.Text;
  lRequestDateTime.Text := edtRequestDateTime.Text;
  lAcceptedDateTime.Text := edtRequestAcceptedDateTime.Text;
  lCustommerName.Text := edtFirstName.Text + ' ' + edtLastName.Text;
  lCustommerMobile.Text := edtMobile.Text;
  lStoreName.Text := edtStoreName.Text;
  lFactorPrice.Text :=  edtRequestSumPrice.Text;
  lFactorPricel.Text := edtPriceLitter.Text;
  lAddress.Text := edtAddress.Text;
end;

procedure TfrmSendStuff.AdvSmoothButton3Click(Sender: TObject);
var
  lVersion: TfrxMemoView;
  i: integer;
begin
  try
    for I := 1 to 4 do
    begin
      SetValueReport;
      lVersion := frxRp.FindObject('lblVersion') as TfrxMemoView;

      if i = 1 then
        lVersion.Text := 'نسخه حسابداری'

      else if i = 2 then
        lVersion.Text := 'نسخه انبار'

      else if i = 3 then
        lVersion.Text := 'نسخه مشتری'

      else if i = 4 then
        lVersion.Text := 'نسخه تحویل کالا';

      frxRp.PrepareReport;
      frxRp.Print;
    end;
  except

  end;
end;

function TfrmSendStuff.ConvertDateTime(aMiladiDateTime: TDateTime): string;
var
  lDate, lTime: string;
begin
  //if Length(aMiladiDateTime) > 5 then
  begin
    lDate := FormatDateTime('yyyy/mm/dd', aMiladiDateTime);
    lDate := Milady2Shamsi(lDate);
    lTime := FormatDateTime('t', aMiladiDateTime);
    Result := lDate + ' * ' + lTime;
  end;
end;

procedure TfrmSendStuff.FormShow(Sender: TObject);
begin
  SetDetailesData(fStuffRequestID);
  SetRequestInfo(fStuffRequestID);
  SetRequestInfoInController;
  SetUserInfo(fRequestInfo.UserID);
  SetUserInfoInController;
end;

procedure TfrmSendStuff.SetDetailesData(aMasterID: string);
begin
  qryDetailes.Connection := dmPakhsh.Con;
  if (aMasterID <> '') AND (aMasterID <> '0') then
  begin
    try
      qryDetailes.Active := false;
      with qryDetailes do
      begin
        sql.Clear;
        sql.Add('SELECT ri.ID, ');
        sql.Add('ri.RequestID, ');
        sql.Add('ri.StuffBrandID, ');
        sql.Add('ISNULL(ri.Count, 0) AS Count, ');
        sql.Add('sb.Code AS StuffBrandCode, ');
        sql.Add('s.Name AS StuffName, ');
        sql.Add('b.Name AS BrandName, ');
        sql.Add('s.Name + '' '' + b.Name AS StuffBrandName,  ');
        sql.Add('ISNULL(sbp.Price, 0) AS Price, ');
        sql.Add('ISNULL(sbp.Offer, 0) AS Offer, ');
        sql.Add('(sbp.Price * ri.Count) - ((sbp.Price * ri.Count) * sbp.Offer) /100 as sumPrice, ');
        sql.Add('u.Name AS unitName ');
        sql.Add('FROM RequestItem AS ri ');
        sql.Add('LEFT JOIN StuffBrand AS sb ON (ri.StuffBrandID = sb.ID) ');
        sql.Add('LEFT JOIN Stuff AS s ON (sb.StuffID = s.ID) ');
        sql.Add('LEFT JOIN Brand AS b ON (sb.BrandID = b.ID) ');
        sql.Add('LEFT JOIN StuffBrandPrice AS sbp ON (ri.StuffBrandID = sbp.StuffBrandID)  ');
        sql.Add('LEFT JOIN Unit AS u ON (sb.UnitID = u.ID) ');
        sql.Add(format('WHERE ri.RequestID = %s ', [aMasterID]));
        qryDetailes.Active := True;
      end;
    except

    end;
  end;
end;

procedure TfrmSendStuff.SetRequestInfo(aMasterID: string);
var
  qr: TUniQuery;
begin
  if aMasterID <> '' then
  begin
    qr := TUniQuery.Create(self);
    qr.Connection := dmPakhsh.Con;
    with qr do
    begin
      sql.Clear;
      sql.Add('SELECT TOP (1) RequestDateTime, UserID, StuffCount, SumPrice, Accepted, AcceptedDatetime, Sended, SendedDateTime  FROM Request');
      sql.Add(format(' WHERE ID = %s ', [aMasterID]));
      open;
      with fRequestInfo do
      begin
        RequestDateTime := ConvertDateTime(FieldByName('RequestDateTime').AsDateTime);
        UserID := FieldByName('UserID').AsString;
        StuffCount := FieldByName('StuffCount').AsString;
        SumPrice := FieldByName('SumPrice').AsString;
        Accepted := FieldByName('Accepted').AsBoolean;
        AcceptedDatetime := ConvertDateTime(FieldByName('AcceptedDatetime').AsDateTime);
        Sended := FieldByName('Sended').AsBoolean;
        SendedDateTime := ConvertDateTime(FieldByName('SendedDateTime').AsDateTime);
      end;
      close;
    end;
    qr.Free;
  end;

end;

procedure TfrmSendStuff.SetRequestInfoInController;
var
  lPrice: Int64;
begin
  edtRequestID.Text := fStuffRequestID;
  edtRequestDateTime.Text := fRequestInfo.RequestDateTime;
  edtRequestCount.Text := fRequestInfo.StuffCount;
  if fRequestInfo.Accepted then
    edtRequestAcceptedStatus.Text := 'تایید شده'
  else
    edtRequestAcceptedStatus.Text := 'عدم تایید';

  try
    lPrice := StrToInt64(fRequestInfo.SumPrice);
    edtRequestSumPrice.Text :=  formatfloat('###,###',(lPrice));
  except

  end;

  edtRequestAcceptedDateTime.Text := fRequestInfo.AcceptedDatetime;
  edtPriceLitter.Text := Number2Str(fRequestInfo.SumPrice) + ' ' + 'ریال';
end;

procedure TfrmSendStuff.SetUserInfo(aUserID: string);
var
  qr: TUniQuery;
begin
  if aUserID <> '' then
  begin
    qr := TUniQuery.Create(self);
    qr.Connection := dmPakhsh.Con;
    with qr do
    begin
      sql.Clear;
      sql.Add('SELECT TOP (1) FirstName,LastName,StoreName,MobileNumber,PhoneNumber,Address,PostalCode ');
      sql.Add(format('FROM [app].[Users] WHERE ID = %s ', [aUserID]));
      open;
      with fUserInfo do
      begin
        FirstName := FieldByName('FirstName').AsString;
        LastName := FieldByName('LastName').AsString;
        StoreName := FieldByName('StoreName').AsString;
        MobileNumber := FieldByName('MobileNumber').AsString;
        PhoneNumber := FieldByName('PhoneNumber').AsString;
        Address := FieldByName('Address').AsString;
        PostalCode := FieldByName('PostalCode').AsString;
      end;
      close;
    end;
    qr.Free;
  end;

end;

procedure TfrmSendStuff.SetUserInfoInController;
begin
  with fUserInfo do
  begin
    edtFirstName.Text := FirstName;
    edtLastName.Text := LastName;
    edtStoreName.Text := StoreName;
    edtMobile.Text := MobileNumber;
    edtPhoneNumber.Text := PhoneNumber;
    edtAddress.text := Address;
    edtPosttalCode.text := PostalCode;
  end;

end;

end.
