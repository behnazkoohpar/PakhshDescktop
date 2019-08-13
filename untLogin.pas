unit untLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, untDmPakhsh,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvSmoothButton, Vcl.StdCtrls, AdvSmoothPanel;

type
  TfrmLogin = class(TForm)
    AdvSmoothPanel1: TAdvSmoothPanel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    AdvSmoothPanel3: TAdvSmoothPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtUserName: TEdit;
    edtPassword: TEdit;
    btnOK: TAdvSmoothButton;
    AdvSmoothButton1: TAdvSmoothButton;
    procedure AdvSmoothButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.AdvSmoothButton1Click(Sender: TObject);
begin
  application.Terminate;
end;

end.
