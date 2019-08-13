unit MSGs;

interface

uses
  Winapi.Windows, Winapi.Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, AdvAppStyler, AdvSmoothPanel, AdvSmoothButton, AdvSmoothLabel;

type
  TfrmMsgBox = class(TForm)
    Panel1: TAdvSmoothPanel;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    imgIcon: TImage;
    lblMsg: TAdvSmoothLabel;
    cmds0: TBitBtn;
    cmds1: TBitBtn;
    cmds2: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure cmds21Click(Sender: TObject);
    procedure cmds11Click(Sender: TObject);
    procedure cmds01Click(Sender: TObject);
  private
    { Private declarations }
    RetVals : array[0..2] of Integer;
    btnNo : Integer;

    procedure IconSet;
    procedure MsgSet;
    procedure ButtnsSet;

  public
    { Public declarations }
    RetVal,
    Btns,
    Icns : Integer;
  end;

const
  MBOKOnly           = 0;
  MBOKCancel         = 1;
  MBAbortRetryIgnore = 2;
  MBYesNoCancel	     = 3;
  MBYesNo            = 4;
  MBRetryCancel      = 5;

  MBCritical         = 16;
  MBQuestion         = 32;
  MBExclamation      = 48;
  MBInformation      = 64;

  MBOK               = 1;
  MBCancel           = 2;
  MBAbort            = 3;
  MBRetry            = 4;
  MBIgnore           = 5;
  MBYes              = 6;
  MBNo               = 7;


procedure ErrorMessage(Msg : String);
function  ConfirmMessage(Msg : String) : Boolean;
function  InformationMessage(msg : String) : Integer;
procedure Msg_Wait(msg : String);
procedure Msg_NoWait;

function  FMsgBox(Msg : String; aBtns, aIcns : Integer; Titl : string) : Integer;


var frmMsgBox : TfrmMsgBox;


implementation


{$R *.DFM}


procedure ErrorMessage(Msg : String);
begin
  FMsgBox((msg), MBOKOnly, MBCritical, ('���'));
end;

function ConfirmMessage(Msg : String) : Boolean;
begin
  Result := false;
  if FMsgBox((Msg), MBYesNo, MBQuestion, ('�����')) = MBYes then
    Result := True;
end;

function InformationMessage(msg : String) : Integer;
begin
  InformationMessage := FMsgBox((msg), MBOKOnly, MBInformation, ('�����'));
end;

procedure Msg_Wait(msg : String);
begin
  Application.CreateForm(TfrmMsgBox, frmMsgBox);
  frmMsgBox.Caption := (Msg) + #254;
  frmMsgBox.Width := frmMsgBox.Canvas.TextWidth(frmMsgBox.Caption) + 50;
  frmMsgBox.Height := 5;
  frmMsgBox.BorderStyle := bsDialog;
  frmMsgBox.BorderIcons := [];
  frmMsgBox.Show;
end;

procedure Msg_NoWait;
begin
  frmMsgBox.Close;
  frmMsgBox.Free;
end;

function FMsgBox(Msg : String; aBtns, aIcns : Integer; Titl : string) : Integer;
var
  frmMessageBox : TfrmMsgBox;
begin
  Application.CreateForm(TfrmMsgBox, frmMessageBox);
  frmMessageBox.Caption := Titl;
  frmMessageBox.lblMsg.Caption.text := Msg + #254;
  frmMessageBox.Btns := aBtns;
  frmMessageBox.Icns := aIcns;
  frmMessageBox.IconSet;
  frmMessageBox.MsgSet;
  frmMessageBox.ButtnsSet;
  frmMessageBox.Top := (Screen.Height - frmMessageBox.Height) div 2;
  frmMessageBox.Left := (Screen.Width - frmMessageBox.Width) div 2;
  frmMessageBox.BorderStyle := bsDialog;
  frmMessageBox.ShowModal;
  FMsgBox := frmMessageBox.RetVal;
  frmMessageBox.Free;
end;


procedure TfrmMsgBox.IconSet;
begin
  if Icns = MBCritical then
  begin
    imgIcon.Picture := img1.Picture;
    lblMsg.Left := imgIcon.Left + imgIcon.Width + 16;
  end
  else if Icns = MBQuestion then
  begin
    imgIcon.Picture := img2.Picture;
    lblMsg.Left := imgIcon.Left + imgIcon.Width + 16;
  end
  else if Icns = MBExclamation then
  begin
    imgIcon.Picture := img3.Picture;
    lblMsg.Left := imgIcon.Left + imgIcon.Width + 16;
  end
  else if Icns = MBInformation then
  begin
    imgIcon.Picture := img4.Picture;
    lblMsg.Left := imgIcon.Left + imgIcon.Width + 16;
  end
  else
    lblMsg.Left := 16;

  lblmsg.Width := Width - lblmsg.Left - 20;
end;

procedure TfrmMsgBox.MsgSet;
begin
  lblmsg.AutoSize := True;
  if (lblMsg.Left + lblMsg.Width) < (Width - 30) then
    Width := lblMsg.Left + lblMsg.Width + 30
  else
  begin
    lblMsg.WordWrap := False;
    lblMsg.AutoSize := False;
    lblMsg.Width := Width - lblmsg.Left - 30;
    lblMsg.Height := 16;
    lblMsg.Caption.Location := plCenterRight;
    lblMsg.WordWrap := True;
    lblMsg.AutoSize := True;
  end;
end;

procedure TfrmMsgBox.ButtnsSet;
var i, w : Integer;
begin
  if (lblmsg.Top + lblmsg.Height + 15) > cmds1.Top then
  begin
    cmds0.Top := lblMsg.Top + lblMsg.Height + 15;
    cmds1.Top := cmds0.Top;
    cmds2.Top := cmds1.Top;
    Height := cmds0.Top + cmds0.Height + 35;
  end;

  case Btns of
    MBOKCancel:
    begin
      cmds0.Kind := bkOK;
      cmds0.Caption := '�����';
      RetVals[0] := MBOK;

      cmds1.Visible := True;
      cmds1.Kind := bkCancel;
      cmds1.Caption := '������';
      RetVals[1] := MBCancel;
      btnNo := 2;
    end;

    MBAbortRetryIgnore:
    begin
      cmds0.Kind := bkAbort;
      cmds0.Caption := '��� ���';
      RetVals[0] := MBAbort;

      cmds1.Visible := True;
      cmds1.Kind := bkRetry;
      cmds1.Caption := '��� ����';
      RetVals[1] := MBRetry;

      cmds2.Visible := True;
      cmds2.Kind := bkIgnore;
      cmds2.Caption := '&���';
      RetVals[1] := MBIgnore;
      btnNo := 3;
    end;

    MBYesNoCancel:
    begin
      cmds0.Kind := bkYes;
      cmds0.Caption := '���';
      RetVals[0] := MBYes;

      cmds1.Visible := True;
      cmds1.Kind := bkNo;
      cmds1.Caption := '���';
      RetVals[1] := MBNo;

      cmds2.Visible := True;
      cmds2.Kind := bkCancel;
      cmds2.Caption := '������';
      RetVals[2] := MBCancel;
      btnNo := 3;
    end;

    MBYesNo:
    begin
      cmds0.Kind := bkYes;
      cmds0.Caption := '���';
      RetVals[0] := MBYes;

      cmds1.Visible := True;
      cmds1.Kind := bkNo;
      cmds1.Caption := '���';
      RetVals[1] := MBNo;
      btnNo := 2;
    end;

    MBRetryCancel:
    begin
      cmds0.Kind := bkRetry;
      cmds0.Caption := '��� ����';
      RetVals[0] := MBRetry;

      cmds1.Visible := True;
      cmds1.Kind := bkCancel;
      cmds1.Caption := '������';
      RetVals[1] := MBCancel;
      btnNo := 2
    end;

    else
    begin
      cmds0.Kind := bkOK;
      cmds0.Caption := ('�����');
      RetVals[0] := MBOK;
      btnNo := 1;
    end;
  end;

  w := 8;
  for i := 0 to btnNo - 1 do
  begin
    if i > 0 then
      w := w + 7;

    case i of
      0 : cmds0.Left := w;
      1 : cmds1.Left := w;
      2 : cmds2.Left := w;
    end;
    w := w + cmds0.Width;
  end;
  w := w + 16;
  case btnNo of
    2 :
    begin
      cmds0.Left := cmds1.Left;
      cmds1.Left := 8;
    end;
    3 :
    begin
      cmds0.Left := cmds2.Left;
      cmds2.Left := 8;
    end;

  end;

  if Width < w then
  begin
    Width := w;
    lblMsg.Left := Width - lblMsg.Width - 20;
  end
  else
  begin
    w := (Width - w + 16) div 2;
    for i := 0 to btnNo - 1 do
      case i of
        0 : cmds0.Left := cmds0.Left + w;
        1 : cmds1.Left := cmds1.Left + w;
        2 : cmds2.Left := cmds2.Left + w;
      end;
  end;
end;

procedure TfrmMsgBox.cmds01Click(Sender: TObject);
begin
  RetVal := RetVals[0];
end;

procedure TfrmMsgBox.cmds11Click(Sender: TObject);
begin
  RetVal := RetVals[1];
end;

procedure TfrmMsgBox.cmds21Click(Sender: TObject);
begin
  RetVal := RetVals[2];
end;

procedure TfrmMsgBox.FormActivate(Sender: TObject);
begin
  cmds0.SetFocus;
end;

end.
