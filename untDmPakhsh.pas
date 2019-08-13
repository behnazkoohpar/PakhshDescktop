unit untDmPakhsh;

interface

uses
  System.SysUtils, System.Classes, UniProvider, SQLServerUniProvider, Data.DB, DBAccess, Uni, MemDS, IPPeerClient,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, REST.JSON, System.JSON,  REST.Types, msgs;

resourceString
  StrURLBase = 'http://%s:%s/';
  StrGetLastLogDevice = 'WS/change_state';

Const
  MB_NEW       = 1;
  MB_EDIT      = 2;
  MB_DELETE    = 4;
  MB_VIEW      = 8;

type
  TdmPakhsh = class(TDataModule)
    Con: TUniConnection;
    SqlServerProv: TSQLServerUniProvider;
    qrySetting: TUniQuery;
    RESTClient: TRESTClient;
    RESTResponse: TRESTResponse;
    RESTRequest: TRESTRequest;
  private
    procedure ResetRest;
  public
    GUserName: string;
    function SendNotificationChangeState(aUserID: string): boolean;
    function getFileSizeInBytes(const fn: string): integer;
    function GetAllCustommerCount: integer;
    function GetAllRequestCount: integer;
    function GetCountActiveRecord(tblName: string): integer;
    function IsExistsRec_Num(tblName, fldName: String; fldValue: integer): boolean;
    function IsExistsRec_Val(tblName, fldName, fldValue: string): boolean;

    function GetSettingValue(Aname: String): string;
    procedure SetSettingValue(Aname, AValue: string);
    Procedure ReadAllSettings;

    function GetLastStock(aStuffBrandID: string): Integer;
    procedure GetLastReceiptInfo(aStuffBrandID: string; var aLastDate: string; var aLastValue: integer);
    procedure GetLastDeliveryInfo(aStuffBrandID: string; var aLastDate: string; var aLastValue: integer);
    procedure GetStuffBrandInfo(aStuffBrandID: string; var aMinimum, aMaximum: Integer; var aDescription: string);
  end;

const
  SETTING_IP_ADDRESS_FROM_SERVER = 'IpAddressFromServer';
  SETTING_IP_ADDRESS_FROM_CLIENT = 'IpAddressFromClient';
  SETTING_IP_ADDRESS_FROM_INTERNET = 'IpAddressFromInternet';

  SETTING_PORT_NUMBER_FROM_SERVER = 'PortNumberFromServer';
  SETTING_PORT_NUMBER_FROM_CLIENT = 'PortNumberFromClient';
  SETTING_PORT_NUMBER_FROM_INTERNET = 'PortNumberFromInternet';

  SETTING_NOTIFY_BY_ACCEPT = 'NotifyByAccept';
  SETTING_NOTIFY_BY_UNACCEPT = 'NotifyByUnAccept';
  SETTING_NOTIFY_BY_SEND = 'NotifyBySend';

var
  dmPakhsh: TdmPakhsh;

implementation

uses
  untSetting;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmPakhsh }

procedure TdmPakhsh.ResetRest;
begin
  RESTRequest.ResetToDefaults;
  RESTClient.ResetToDefaults;
  RESTResponse.ResetToDefaults;

  if GSetting.StatusType = 1 then
    RESTClient.BaseURL := format(StrURLBase, [GSetting.IPAddressFromServer, GSetting.PortAddressFromServer]);

  if GSetting.StatusType = 2 then
    RESTClient.BaseURL := format(StrURLBase, [GSetting.IPAddressFromClient, GSetting.PortAddressFromClient]);

  if GSetting.StatusType = 3 then
    RESTClient.BaseURL := format(StrURLBase, [GSetting.IPAddressFromInternet, GSetting.PortAddressFromInternet]);
end;

function TdmPakhsh.getFileSizeInBytes(const fn: string): integer;
var
  f: File of byte;
begin
  Result := -1;
  if (FileExists(fn)) then
  begin
    try
      {$I-}
      AssignFile(f, fn);
      Reset(f);
      {$I+}
      if (IOResult = 0) then
      begin
        Result := FileSize(f);
      end
      else
      begin
        Result := 0;
      end;
    finally
      {$I-}CloseFile(f);{$I+}
    end;
  end;
end;

function TdmPakhsh.GetAllCustommerCount: integer;
var
  qry: TUniQuery;
begin
  Result := 0;
  qry := TUniQuery.Create(self);
  with qry do
  begin
    try
      Connection := con;
      sql.Clear;
      sql.Add('SELECT COUNT(ID) AS cnt FROM app.Users ');
      open;
      Result := FieldByName('cnt').AsInteger;
    finally
      close;
      free;
    end;
  end;
end;

function TdmPakhsh.GetAllRequestCount: integer;
var
  qry: TUniQuery;
begin
  Result := 0;
  qry := TUniQuery.Create(self);
  with qry do
  begin
    try
      Connection := con;
      sql.Clear;
      sql.Add('SELECT COUNT(ID) AS cnt FROM Request WHERE AcceptedDatetime IS NULL ');
      open;
      Result := FieldByName('cnt').AsInteger;
    finally
      close;
      free;
    end;
  end;

end;

procedure TdmPakhsh.GetStuffBrandInfo(aStuffBrandID: string; var aMinimum, aMaximum: Integer; var aDescription: string);
var
  qry: TUniQuery;
begin
  qry := TUniQuery.Create(self);
  with qry do
  begin
    try
      Connection := con;
      sql.Clear;
      sql.Add('SELECT Top 1 MinimumStuck, MaximumStuck, Description From StuffBrand ');
      sql.Add(format('WHERE ID = %s ', [aStuffBrandID]));
      Open;
      aMinimum := FieldByName('MinimumStuck').AsInteger;
      aMaximum := FieldByName('MaximumStuck').AsInteger;
      aDescription := FieldByName('Description').AsString;
    finally
      close;
      free;
    end;
  end;
end;

function TdmPakhsh.IsExistsRec_Num(tblName, fldName: String; fldValue: integer): boolean;
var
  qry: TUniQuery;
begin
  Result := false;
  qry := TUniQuery.Create(self);
  with qry do
  begin
    try
      Connection := con;
      sql.Clear;
      sql.Add('SELECT ' + fldName + ' FROM ' + tblName);
      sql.Add('WHERE ' + fldName + ' = ' + inttostr(fldValue));
      Open;
      Result := (RecordCount > 0);
    finally
      close;
      free;
    end;
  end;
end;

function TdmPakhsh.IsExistsRec_Val(tblName, fldName, fldValue: string): boolean;
var
  qry: TUniQuery;
begin
  Result := false;
  qry := TUniQuery.Create(self);
  with qry do
  begin
    try
      Connection := con;
      sql.Clear;
      sql.Add('SELECT ' + fldName + ' FROM ' + tblName);
      sql.Add('WHERE ' + fldName + ' = ' + Quotedstr(fldValue));
      Open;
      Result := (RecordCount > 0);
    finally
      close;
      free;
    end;
  end;

end;

procedure TdmPakhsh.ReadAllSettings;
var
  frmSetting: TfrmSetting;
begin
  Try
    frmSetting := TfrmSetting.Create(self);
    frmSetting.GetStatusFromFile;
    frmSetting.GetAllSettingFromDB;
  Finally
    frmSetting.Free;
  End;
end;

function TdmPakhsh.GetCountActiveRecord(tblName: string): integer;
var
  qry: TUniQuery;
begin
  Result := 0;
  qry := TUniQuery.Create(self);
  with qry do
  begin
    try
      Connection := con;
      sql.Clear;
      sql.Add('SELECT Count(ID) AS cnt FROM ' + tblName);
      sql.Add(' WHERE Activated = 1');
      Open;
      Result := FieldByName('cnt').AsInteger;;
    finally
      close;
      free;
    end;
  end;

end;

procedure TdmPakhsh.GetLastDeliveryInfo(aStuffBrandID: string; var aLastDate: string; var aLastValue: integer);
var
  qr: TUniQuery;
begin
  qr := TUniQuery.Create(Self);
  try
    qr.Connection := Con;
    qr.SQL.Clear;
    qr.SQL.Add('SELECT TOP 1 ISNULL(TransactionCount, 0) AS Value, [DateTime] FROM stockTransaction ');
    qr.SQL.Add(format('WHERE StuffBrandID = %s AND TransactionType = 3', [aStuffBrandID]));
    qr.SQL.Add('ORDER BY [DateTime] Desc');
    qr.Open;
    aLastDate := FormatDateTime('yyyy/mm/dd',qr.FieldByName('DateTime').AsDateTime);
    aLastValue := qr.FieldByName('Value').AsInteger;
    qr.Close;
  finally
    qr.Free;
  end;
end;

procedure TdmPakhsh.GetLastReceiptInfo(aStuffBrandID: string; var aLastDate: string; var aLastValue: integer);
var
  qr: TUniQuery;
begin
  qr := TUniQuery.Create(Self);
  try
    qr.Connection := Con;
    qr.SQL.Clear;
    qr.SQL.Add('SELECT TOP 1 ISNULL(TransactionCount, 0) AS Value, [DateTime] FROM stockTransaction ');
    qr.SQL.Add(format('WHERE StuffBrandID = %s AND TransactionType = 2', [aStuffBrandID]));
    qr.SQL.Add('ORDER BY [DateTime] Desc');
    qr.Open;
    aLastDate := FormatDateTime('yyyy/mm/dd',qr.FieldByName('DateTime').AsDateTime);
    aLastValue := qr.FieldByName('Value').AsInteger;
    qr.Close;
  finally
    qr.Free;
  end;
end;

function TdmPakhsh.GetLastStock(aStuffBrandID: string): Integer;
var
  qr: TUniQuery;
begin
  qr := TUniQuery.Create(Self);
  try
    qr.Connection := Con;
    qr.SQL.Clear;
    qr.SQL.Add('SELECT TOP 1 ISNULL(LastStock, 0) AS LastStock FROM stockTransaction ');
    qr.SQL.Add(format('WHERE StuffBrandID = %s', [aStuffBrandID]));
    qr.SQL.Add('ORDER BY [DateTime] Desc');
    qr.Open;
    Result := qr.FieldByName('LastStock').AsInteger;
    qr.Close;
  finally
    qr.Free;
  end;
end;

function TdmPakhsh.GetSettingValue(Aname: String): string;
begin
  with qrySetting do
  begin
    try
      SQL.Clear;
      SQL.Add('SELECT * FROM dbo.Setting s ');
      SQL.Add(Format('WHERE s.Name = %s ', [quotedstr(Aname)]));
      Open;
      Result := FieldByName('Value').AsString;
      close;
    except
      Abort;
    end;
  end;
end;

procedure TdmPakhsh.SetSettingValue(Aname, AValue: string);
begin
  with qrySetting do
  begin
    try
      SQL.Clear;
      SQL.Add('SELECT COUNT(NAME) AS Counting from setting ');
      SQL.Add(Format('WHERE NAME =%s  ', [quotedstr(Aname)]));
      Open;
      if FieldByName('Counting').AsInteger > 0 then
      begin
        SQL.Add('update dbo.Setting');
        SQL.Add(Format('SET [Value] = %s', [quotedstr(AValue)]));
        SQL.Add(Format('WHERE Name = %s ',
          [quotedstr(Aname)]));
        ExecSQL;
      end
      else
      begin
        SQL.Add('INSERT INTO Setting (Name, [Value]) ');
        SQL.Add(Format('VALUES(	%s, %s ) ', [quotedstr(Aname),
          quotedstr(AValue)]));
        ExecSQL;
      end;
      Close;
    except
      Abort;
    end;
  end;
end;


function TdmPakhsh.SendNotificationChangeState(aUserID: string): boolean;
var
  lErrorMessage, lStatusText, lContent: string;
  LJsonBody, st : utf8string;
  i: Integer;
  aParam: TRESTRequestParameter;

begin
  Result := False;
  ResetRest;
  RESTRequest.Resource := StrGetLastLogDevice;

  LJsonBody := Format('{"user_id":%s}', [aUserID]);
  aParam := RESTRequest.Params.AddItem();
  aParam.Value := LJsonBody;
  aParam.ContentType := ctAPPLICATION_JSON;
  RESTRequest.Method := TRESTRequestMethod.rmPOST;

  try
    RESTRequest.Execute;
  except
    on e: Exception do
    begin
      lErrorMessage := e.Message;
      lStatusText := RESTResponse.StatusText;
      lContent := RESTResponse.Content;
    end;
  end;

  if (lErrorMessage = 'HTTP/1.1 503 Service Unavailable') or
    (lStatusText = 'Service Unavailable') then
  begin
    ErrorMessage('ارتباط با شبکه قطع است' + sLineBreak +
      'لطفا تنظیمات اینترنت را بررسی نمایید');
    exit
  end;
  if lContent <> '' then
  begin
    ErrorMessage(lContent);
    exit
  end;
  if lStatusText = 'Internal Server Error' then
  begin
    ErrorMessage('سرور موقتا با اشکال مواجه است ');
    exit
  end;

  st := RESTResponse.Content;

  if Length(st) > 20 then
    InformationMessage('اعلان تغییر وضعیت درخواست برای کاربر ارسال شد');
end;


end.
