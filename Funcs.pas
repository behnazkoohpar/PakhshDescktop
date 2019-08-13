unit Funcs;


interface

uses Windows, shellapi;

(* ***************** Constant Definition ***************** *)
const
  MB_NONE = 0;

  MB_NEW = 1;
  MB_EDIT = 2;
  MB_DELETE = 4;
  MB_VIEW = 8;
  MB_NEW_GRP = 16;
  MB_NEW_GRP1 = 32;

  MB_BACKUP = 'BackUp';
  MB_RESTORE = 'Restore';

var
{$IFDEF Network}
  MB_FALSE: Integer = 0;
  MB_TRUE: Integer = 1;
{$ELSE}
  MB_FALSE: Integer = 0;
  MB_TRUE: Integer = -1;
{$ENDIF}
  FLD_CURRENCY: String = 'Currency';
  WinSysType: Byte;

type
  TWinVersion = (wvUnknown, wvWin95, wvWin98, wvWin98SE, wvWinNT, wvWinME,
    wvWin2000, wvWinXP, wvWinServer2003, wvWinVista);

  (* ***************** SubRoutine Definition ***************** *)
procedure Mouse_Wait;
procedure Mouse_NoWait;

function CodingPassWord(Pass: String): String;
function GetRandom: LongInt;
function Coma(txt: String): String;
function DelComa(txt: String): String;
function DelColon(txt: String): String;

function Str_PBCD(ST: ansiString; l: Integer): String;
function PBCD_Str(ST: String; l: Integer): String;
function Str2PBCD(ST: String): String;
function PBCD2Str(ST: String): String;
function BCDToInt(n: Byte): Byte;
function IntToBCD(n: Byte): Byte;
function BCDToStr(ch: AnsiChar): ansiString;
function StrToBCD(ST: String; from: Byte): Char;
function BarCode4(BarCode: String): String;
function BarCode8(BarCode: String): String;
function HexToChar(hx: Byte): Char;
function ByteToHex(i: Byte): String;
Function HexToInt(s: string): Integer;

function FixLen(ST: String; ch: Char; Len: Byte): String;
function FixLeft(ST: ansiString; ch: Char; Len: Integer): String;
function FixRight(ST: String; ch: Char; Len: Byte): String;
function DelLeftZero(txt: String): String;
function DelShortCut(s: String): String;

function IsNumeric(ST: String): Boolean;
function IsDosNumeric(ST: String): Boolean;
function StrRev(txt: String): String;
function NumReverse(ST: String): String;
function AlphaReverse(ST: String): String;
function NumDosToWin(ST: String): String;
function Pow2(n: Byte): Integer;

function Str2Int(str: String): LongInt;

function BDEInstalled: Boolean;

function GetSerialNo(drv: Char): String;
PROCEDURE ShellEXECandWait(path: string);

function GetWinVersion: TWinVersion;

implementation

uses
  Forms, Controls, SysUtils, msgs;

(* ***************** SubRoutine Body ***************** *)

(* **********************************************************************
  Change Mouse Cursor to Glass
  ********************************************************************** *)
procedure Mouse_Wait;
begin
  Screen.Cursor := crHourGlass;
end;

(* **********************************************************************
  Change Mouse Cursor to Arrow
  ********************************************************************** *)
procedure Mouse_NoWait;
begin
  Screen.Cursor := crArrow;
end;

(* **********************************************************************
  Coding Password
  ********************************************************************** *)
function CodingPassWord(Pass: String): String;
var
  i: Integer;
begin
  for i := 1 to Length(Pass) do
    if Pass[i] <> 'v' then
      Pass[i] := Chr(Ord(Pass[i]) xor 118);
  CodingPassWord := Pass;
end;

(* ******************************************************
  Coding Password
  ********************************************************************** *)
function GetRandom: LongInt;
begin
  Randomize;
  GetRandom := (Random(9000) + 1000) * 10000 + Random(10000);
end;

(* **********************************************************************
  Set Coma in string
  ********************************************************************** *)
function Coma(txt: String): String;
var
  t: String;
begin
  t := '';
  while Length(txt) > 3 do
  begin
    t := ',' + Copy(txt, Length(txt) - 2, 3) + t;
    Delete(txt, Length(txt) - 2, 3);
  end;
  Coma := txt + t;
end;

(* **********************************************************************
  Delete Coma from string
  ********************************************************************** *)
function DelComa(txt: String): String;
var
  t: String;
  i: Byte;
begin
  t := '';
  if Length(txt) > 0 then
    for i := 1 to Length(txt) do
      if txt[i] <> ',' then
        t := t + txt[i];
  DelComa := t;
end;

(* **********************************************************************
  Delete Colon from string
  ********************************************************************** *)
function DelColon(txt: String): String;
var
  t: String;
  i: Byte;
begin
  t := '';
  if Length(txt) > 0 then
    for i := 1 to Length(txt) do
      if txt[i] <> ':' then
        t := t + txt[i];
  DelColon := t;
end;

(* **********************************************************************
  Change a String to Pack_BCD
  ********************************************************************** *)
function Str_PBCD(ST: ansiString; l: Integer): String;
var
  i, k: Integer;
  s: ansiString;
begin
  s := '';
  if l > 0 then
    ST := FixLeft(ST, '0', l);
  if Odd(Length(ST)) then
    ST := '0' + ST;
  l := Length(ST);
  for i := 1 to l do
    if ST[i] in ['0' .. '9', 'a' .. 'f', 'A' .. 'F'] then
    begin
      if ST[i] in ['a' .. 'f'] then
        ST[i] := AnsiChar(Ord(ST[i]) - 32);
    end
    else
    begin
      Str_PBCD := '';
      Exit;
    end;

  i := 1;
  while i <= l do
  begin
    if ST[i] in ['0' .. '9'] then
      k := (Ord(ST[i]) - 48) * 16
    else
      k := (Ord(ST[i]) - 55) * 16;

    if ST[i + 1] in ['0' .. '9'] then
      k := k + Ord(ST[i + 1]) - 48
    else
      k := k + Ord(ST[i + 1]) - 55;

    s := s + AnsiChar(k);
    Inc(i, 2);
  end;
  Str_PBCD := s;
end;

(* **********************************************************************
  Change  Pack_BCD to String
  ********************************************************************** *)
function PBCD_Str(ST: String; l: Integer): String;
var
  i: Byte;
  s: String;
begin
  s := '';
  for i := 1 to Length(ST) do
    s := s + HexToChar(Ord(ST[i]) div 16) + HexToChar(Ord(ST[i]) mod 16);
  if l > 0 then
    s := FixLeft(s, '0', l);
  PBCD_Str := s;
end;

(* **********************************************************************
  Change a String to Pack_BCD
  ********************************************************************** *)
function Str2PBCD(ST: String): String;
var
  i, k, l: Byte;
  s: String;
begin
  s := '';
  if Odd(Length(ST)) then
    ST := '0' + ST;
  l := Length(ST);
  for i := 1 to l do
    if ST[i] in ['0' .. '9', 'a' .. 'f', 'A' .. 'F'] then
    begin
      if ST[i] in ['a' .. 'f'] then
        ST[i] := Chr(Ord(ST[i]) - 32);
    end
    else
    begin
      Result := '';
      Exit;
    end;

  i := 1;
  while i <= l do
  begin
    if ST[i] in ['0' .. '9'] then
      k := (Ord(ST[i]) - 48) * 16
    else
      k := (Ord(ST[i]) - 55) * 16;

    if ST[i + 1] in ['0' .. '9'] then
      k := k + Ord(ST[i + 1]) - 48
    else
      k := k + Ord(ST[i + 1]) - 55;

    s := s + Chr(k);
    Inc(i, 2);
  end;
  Result := s;
end;

(* **********************************************************************
  Change  Pack_BCD to String
  ********************************************************************** *)
function PBCD2Str(ST: String): String;
var
  i: Byte;
  s: String;
begin
  s := '';
  for i := 1 to Length(ST) do
    s := s + HexToChar(Ord(ST[i]) div 16) + HexToChar(Ord(ST[i]) mod 16);
  Result := s;
end;

(* **********************************************************************
  Change a BCD Number to Decimal
  ********************************************************************** *)
function BCDToInt(n: Byte): Byte;
begin
  BCDToInt := n - (n div 16 * 6);
end;

(* **********************************************************************
  Change a Decimal number to BCD
  ********************************************************************** *)
function IntToBCD(n: Byte): Byte;
begin
  IntToBCD := n div 10 * 6 + n;
end;

(* **********************************************************************
  Change a Character to BCD
  ********************************************************************** *)
function BCDToStr(ch: AnsiChar): ansiString;
begin
  BCDToStr := AnsiChar(Ord(ch) div 16 + 48) + AnsiChar(Ord(ch) mod 16 + 48);
end;

(* **********************************************************************
  Change a BCD to a Character
  ********************************************************************** *)
function StrToBCD(ST: String; from: Byte): Char;
begin
  StrToBCD := Chr((Ord(ST[from]) - 48) * 16 + Ord(ST[from + 1]) - 48);
end;

(* **********************************************************************
  Change a Decimal number to BCD
  ********************************************************************** *)
function BarCode4(BarCode: String): String;
begin
  BarCode4 := Str_PBCD(BarCode, 8);
end;

function BarCode8(BarCode: String): String;
begin
  BarCode8 := DelLeftZero(PBCD_Str(BarCode, 0));
end;

function HexToChar(hx: Byte): Char;
begin
  if hx < 10 then
    HexToChar := Chr(hx + 48)
  else
    HexToChar := Chr(hx + 55);
end;

function ByteToHex(i: Byte): String;
begin
  ByteToHex := HexToChar(i div 16) + HexToChar(i mod 16);
end;

function HexToInt(s: string): Integer;
var
  i: Integer;
begin
  DelLeftZero(s);
  Result := 0;
  for i := 1 to Length(s) do
  begin
    if s[i] in ['A' .. 'F'] then
      s[i] := Chr(Ord(s[i]) - 7);
    if s[i] in ['a' .. 'f'] then
      s[i] := Chr(Ord(s[i]) - 39);
    Result := Result * 16 + (Ord(s[i]) - 48);
  end;
end;

(* **********************************************************************
  Fix a string to len
  ********************************************************************** *)
function FixLen(ST: String; ch: Char; Len: Byte): String;
begin
  if Length(ST) > Len then
    ST := Copy(ST, 1, Len)
  else
    while Length(ST) < Len do
      ST := ST + ch;
  FixLen := ST;
end;

(* **********************************************************************
  Fix a string from left side
  ********************************************************************** *)
function FixLeft(ST: ansiString; ch: Char; Len: Integer): String;
begin
  if Length(ST) > Len then
    ST := Copy(ST, 1, Len)
  else
    while Length(ST) < Len do
      ST := ch + ST;

  FixLeft := ST;
end;

(* **********************************************************************
  Fix Barcode to 8 Byte
  ********************************************************************** *)
function FixRight(ST: String; ch: Char; Len: Byte): String;
begin
  if Length(ST) > Len then
    ST := StrRev(Copy(StrRev(ST), 1, Len))
  else
    while Length(ST) < Len do
      ST := ST + ch;

  Result := ST;
end;

(* **********************************************************************
  Delete zero character from left side a String
  ********************************************************************** *)
function DelLeftZero(txt: String): String;
var
  s: String;
begin
  s := txt;
  if s <> '' then
    while (s <> '') and (s[1] = '0') do
      Delete(s, 1, 1);
  DelLeftZero := s;
end;

(* **********************************************************************
  Delete shortcut sign from a String
  ********************************************************************** *)
function DelShortCut(s: String): String;
begin
  if Pos('&', s) > 0 then
    Delete(s, Pos('&', s), 1);

  Result := s;
end;

(* **********************************************************************
  Return True if st is a numeric field
  ********************************************************************** *)
function IsNumeric(ST: String): Boolean;
var
  i: Byte;
begin
  IsNumeric := True;
  if ST = '' then
    IsNumeric := False
  else
    for i := 1 to Length(ST) do
      if not(ST[i] in ['0' .. '9']) then
      begin
        IsNumeric := False;
        Break;
      end;
end;

(* **********************************************************************
  Return True if st is a dos numeric field
  ********************************************************************** *)
function IsDosNumeric(ST: String): Boolean;
var
  i: Byte;
begin
  IsDosNumeric := True;
  for i := 1 to Length(ST) do
    if not(ST[i] in ['0' .. '9', #128 .. #137]) then
    begin
      IsDosNumeric := False;
      Break;
    end;
end;

(* **********************************************************************
  Return Revert of a String
  ********************************************************************** *)
function StrRev(txt: String): String;
var
  i: Byte;
  s: String;
begin
  s := '';
  for i := Length(txt) downto 1 do
    s := s + txt[i];
  StrRev := s;
end;

(* **********************************************************************
  Revrert number in string
  ********************************************************************** *)
function NumReverse(ST: String): String;
const
  NUMS: set of Char = ['0' .. '9'];
var
  i, k: Byte;
  ST1, ST2: String;
BEGIN
  ST2 := '';
  i := 1;
  while i <= Length(ST) do
  begin
    if ST[i] in NUMS then
    begin
      ST1 := '';
      while (ST[i] in NUMS) and (i <= Length(ST)) do
      begin
        ST1 := ST1 + ST[i];
        Inc(i);
      end;
      for k := Length(ST1) downto 1 do
        ST2 := ST2 + ST1[k];
    end
    else
    begin
      ST2 := ST2 + ST[i];
      Inc(i);
    end;
  end;
  NumReverse := ST2;
end;

(* **********************************************************************
  Revrert alphabeta in string
  ********************************************************************** *)
function AlphaReverse(ST: String): String;
const
  ALPHA: set of Char = [' ' .. '~'];
var
  i, k: Byte;
  ST1, ST2: String;
BEGIN
  ST2 := '';
  i := 1;
  while i <= Length(ST) do
  begin
    if ST[i] in ALPHA then
    begin
      ST1 := '';
      while (ST[i] in ALPHA) and (i <= Length(ST)) do
      begin
        ST1 := ST1 + ST[i];
        Inc(i);
      end;
      for k := Length(ST1) downto 1 do
        ST2 := ST2 + ST1[k];
    end
    else
    begin
      ST2 := ST2 + ST[i];
      Inc(i);
    end;
  end;
  AlphaReverse := ST2;
end;

(* **********************************************************************
  return real number code of ST
  ********************************************************************** *)
function NumDosToWin(ST: String): String;
var
  i: Byte;
  s: String;
begin
  s := '';
  if ST <> '' then
    for i := 1 to Length(ST) do
      if ST[i] in [#48 .. #57] then
        s := s + ST[i]
      else if ST[i] in [#128 .. #137] then
        s := s + Char(Ord(ST[i]) - 80);

  NumDosToWin := s;
end;

(* **********************************************************************

  ********************************************************************** *)
function Pow2(n: Byte): Integer;
var
  i: Byte;
  k: Integer;
begin
  k := 1;
  for i := 1 to n do
    k := k * 2;
  Pow2 := k;
end;

(* **********************************************************************

  ********************************************************************** *)
function Str2Int(str: String): LongInt;
begin
  if (str <> '') and IsNumeric(str) then
    Result := StrToInt(str)
  else
    Result := 0;
end;

(* **********************************************************************
  Get Drive Serial Number
  ********************************************************************** *)
function GetSerialNo(drv: Char): String;
begin
  GetSerialNo := 'Clock';
end;

function BDEInstalled: Boolean;
begin
  // uses BDE unit
 // BDEInstalled := (dbiInit(nil) = 0);
end;

(* **********************************************************************
  Convert text to windows code page
  ********************************************************************** *)

PROCEDURE ShellEXECandWait(path: string);
var
  SEInfo: TShellExecuteInfo;
  ExitCode: dWORD;
  ExecuteFile, ParamString, StartInString: string;
begin
  ExecuteFile := path;

  FillChar(SEInfo, SizeOf(SEInfo), 0);
  SEInfo.cbSize := SizeOf(TShellExecuteInfo);
  with SEInfo do
  begin
    fMask := SEE_MASK_NOCLOSEPROCESS;
    Wnd := Application.Handle;
    lpFile := PChar(ExecuteFile);
    nShow := SW_SHOWNORMAL;
  end;
  if ShellExecuteEx(@SEInfo) then
  begin
    repeat
      GetExitCodeProcess(SEInfo.hProcess, ExitCode);
    until (ExitCode <> STILL_ACTIVE) or Application.Terminated;
  end
  else
    ErrorMessage('Œÿ« œ— «Ã—«Ì »—‰«„Â !');
end;

function GetWinVersion: TWinVersion;
var
  osVerInfo: TOSVersionInfo;
  majorVersion, minorVersion: Integer;
begin
  Result := wvUnknown;
  osVerInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
  if GetVersionEx(osVerInfo) then
  begin
    minorVersion := osVerInfo.dwMinorVersion;
    majorVersion := osVerInfo.dwMajorVersion;
    // InformationMessage(IntToStr(majorVersion) + ':' + IntToStr(minorVersion));

    case osVerInfo.dwPlatformId of
      VER_PLATFORM_WIN32_NT:
        begin
          if majorVersion <= 4 then
            Result := wvWinNT
          else if (majorVersion = 5) and (minorVersion = 0) then
            Result := wvWin2000
          else if (majorVersion = 5) and (minorVersion = 1) then
          else if (majorVersion = 5) and (minorVersion = 2) then
            Result := wvWinServer2003
          else if (majorVersion = 6) then
            Result := wvWinVista;
        end;
      VER_PLATFORM_WIN32_WINDOWS:
        begin
          if (majorVersion = 4) and (minorVersion = 0) then
            Result := wvWin95
          else if (majorVersion = 4) and (minorVersion = 10) then
          begin
            if osVerInfo.szCSDVersion[1] = 'A' then
              Result := wvWin98SE
            else
              Result := wvWin98;
          end
          else if (majorVersion = 4) and (minorVersion = 90) then
            Result := wvWinME
          else
            Result := wvUnknown;
        end;
    end;
  end;
end;

end.
