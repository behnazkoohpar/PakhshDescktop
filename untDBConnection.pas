unit UntDBConnection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, untDmPakhsh,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvSmoothButton, Vcl.StdCtrls, AdvSmoothPanel, msgs;

resourcestring
  Can_Not_Open_DataBase ='بازگشایی پایگاه داده میسر نیست.';

type
  TfrmDBConnection = class(TForm)
    AdvSmoothPanel2: TAdvSmoothPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtServer: TEdit;
    edtDB: TEdit;
    AdvSmoothPanel3: TAdvSmoothPanel;
    btnOk: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    edtPass: TEdit;
    edtUser: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnTest: TAdvSmoothButton;
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
  private

    FPath: string;
  public
    Connected: Boolean;
  end;

var
  frmDBConnection: TfrmDBConnection;

implementation

{$R *.dfm}

{ TfrmDBConnection }

procedure TfrmDBConnection.AdvSmoothButton1Click(Sender: TObject);
begin
  if not Connected then
    Application.Terminate
  else
    ModalResult := mrClose;
end;

procedure TfrmDBConnection.btnTestClick(Sender: TObject);
begin
  try
    dmPakhsh.con.Close;
    dmPakhsh.con.Server :=  edtServer.Text;
    dmPakhsh.con.Database := edtDB.Text;
    dmPakhsh.con.Username := edtUser.Text;
    dmPakhsh.con.Password := edtPass.Text;

    dmPakhsh.con.Open();
  except
    btnTest.Caption := 'خطا در برقراری ارتباط';
  end;

  if dmPakhsh.Con.Connected  then
  begin
    btnTest.Caption := 'ارتباط برقرار است';

  end;
  btnOk.Enabled := dmPakhsh.Con.Connected;
end;

procedure TfrmDBConnection.btnOkClick(Sender: TObject);
var
  strError: string;
  MyText: TStringlist;
begin
  strError := '';

  try
    dmPakhsh.con.Close;
    dmPakhsh.con.Server :=  edtServer.Text;
    dmPakhsh.con.Database := edtDB.Text;
    dmPakhsh.con.Username := edtUser.Text;
    dmPakhsh.con.Password := edtPass.Text;

    dmPakhsh.con.Open();
  except
    strError := Can_Not_Open_DataBase;
  end;

  if strError = Can_Not_Open_DataBase then
  begin
    InformationMessage(Can_Not_Open_DataBase);
    Connected := False;
    Exit;
  end
  else
  begin
    if FPath <> '' then
    MyText:= TStringlist.create;
    try
      MyText.Clear;
      MyText.Add(edtServer.Text);
      MyText.Add(edtDB.Text);
      MyText.Add(edtUser.Text);
      MyText.Add(edtPass.Text);
      MyText.SaveToFile(FPath + '\connectionStr.ini');
    finally
      MyText.Free
    end;
    Connected := True;
    ModalResult := mrClose;
  end;
end;

procedure TfrmDBConnection.FormCreate(Sender: TObject);
var
  MyText: TStringlist;
begin
  FPath := ExtractFilePath(Application.ExeName);
  if FileExists(FPath + '\connectionStr.ini') then
  begin
    MyText:= TStringlist.create;
    try
      MyText.LoadFromFile(FPath + '\connectionStr.ini');
      edtServer.Text := MyText.Strings[0];
      edtDB.Text := MyText.Strings[1];
      edtUser.Text := MyText.Strings[2];
      edtPass.Text := MyText.Strings[3];
    finally
      MyText.Free
    end;
    btnOkClick(nil);
  end;

end;

end.
