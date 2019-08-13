program Pakhsh;

uses
  Vcl.Forms,
  untMain in 'untMain.pas' {frmMain},
  untDmPakhsh in 'untDmPakhsh.pas' {dmPakhsh: TDataModule},
  untDBConnection in 'untDBConnection.pas' {frmDBConnection},
  untLogin in 'untLogin.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmPakhsh, dmPakhsh);
  Application.CreateForm(TfrmDBConnection, frmDBConnection);
  if not(frmDBConnection.connected) then
  begin
    frmDBConnection.ShowModal;
    frmDBConnection.free;
    if not(frmDBConnection.connected) then
      Application.Terminate;
  end;

  Application.Run;
end.
