program Soal9;
var
  thn, bln, hari: integer;
begin
  write('Tahun: '); readln(thn);
  write('Bulan (1-12): '); readln(bln);

  if (bln=1) or (bln=3) or (bln=5) or (bln=7) or (bln=8) or (bln=10) or (bln=12) then
    hari := 31
  else if (bln=4) or (bln=6) or (bln=9) or (bln=11) then
    hari := 30
  else if bln = 2 then begin
    if (thn mod 400 = 0) or ((thn mod 4 = 0) and (thn mod 100 <> 0)) then
      hari := 29
    else
      hari := 28;
  end;

  writeln('Jumlah hari: ', hari);
end.