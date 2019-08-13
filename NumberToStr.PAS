unit NumberToStr;

interface
  function Number2Str(Nm: string): string;

implementation
uses SysUtils;

function Number2Str;
const
  Main: array[1..3, 0..9]of string = (('', 'Ìﬂ’œ Ê', 'œÊÌ”  Ê', '”Ì’œ Ê', 'çÂ«—’œ Ê', 'Å«‰’œ Ê', '‘‘’œ Ê', 'Â› ’œ Ê', 'Â‘ ’œ Ê', '‰Â’œ Ê'),
                                      ('', '', '»Ì”  Ê', '”Ì Ê', 'çÂ· Ê', 'Å‰Ã«Â Ê', '‘’  Ê', 'Â› «œ Ê', 'Â‘ «œ Ê', '‰Êœ Ê'),
                                      ('', 'Ìﬂ', 'œÊÊ', '”Â', 'çÂ«—', 'Å‰Ã', '‘‘', 'Â› ', 'Â‘ ', '‰Â'));
  NPos: array[1..4]of string = ('„Ì·Ì«—œ Ê', '„Ì·ÌÊ‰ Ê', 'Â“«— Ê', '');
  _10_19: array[10..19]of string = ('œÂ', 'Ì«“œÂ', 'œÊ«“œÂ', '”Ì“œÂ', 'çÂ«—œÂ', 'Å«‰“œÂ', '‘«‰“œÂ', 'Â›œÂ', 'ÂÃœÂ', '‰Ê“œÂ');
var
  TMP2, TMP: string;
  Cntr2, Cntr: Integer;
begin
  case Length(Nm) mod 3 of
    1: TMP := '00';
    2: TMP := '0';
  end;
  Nm := TMP + Nm;
  TMP := '';
  if Length(Nm) <=3 then begin
    for Cntr := 1 to 3 do
      if (Cntr = 2) and (Nm[Cntr] = '1') then begin
        TMP := TMP + _10_19[StrToInt(Copy(Nm, 2, 2))] + ' ';
        Break;
      end else
            TMP := TMP + Main[Cntr, StrToInt(Nm[Cntr])] + ' ';
    TMP := Trim(TMP);
    Cntr := Length(TMP);
    if TMP <> '' then
      if TMP[Cntr] = 'Ê' then
        Delete(TMP, Cntr, 1);
    Result := TMP + ' ';
    Exit;
  end;
  Cntr2 := 0;
  for Cntr := (4 - (Length(Nm) div 3)) + 1 to 4 do begin
    TMP2 := Number2Str(Copy(Nm, (Cntr2 * 3) + 1, 3));
    if Trim(TMP2) <> '' then
      TMP := TMP + TMP2 + NPos[Cntr] + ' ';
    Inc(Cntr2);
  end;
  TMP := Trim(TMP);
  Cntr := Length(TMP);
  If not (Nm[length(NM)]='2') then
    if TMP <> '' then
      if TMP[Cntr] = 'Ê' then
        Delete(TMP, Cntr, 1);
  Result := TMP;
end;

end.
