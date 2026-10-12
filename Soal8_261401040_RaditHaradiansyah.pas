program Soal8;
var
  gol: char;
  jam: integer;
  pokok, lembur, bonus, total: longint;
begin
  write('Golongan (A/B/C): '); readln(gol);
  write('Total Jam Kerja: '); readln(jam);

  case upcase(gol) of
    'A': pokok := 1500000;
    'B': pokok := 2000000;
    'C': pokok := 2500000;
  end;

  lembur := 0;
  if jam > 40 then lembur := (jam - 40) * 20000;

  bonus := 0;
  if (upcase(gol) = 'C') and (jam > 50) then bonus := 100000;

  total := pokok + lembur + bonus;

  writeln('Gaji Pokok : Rp', pokok);
  writeln('Lembur     : Rp', lembur);
  writeln('Bonus      : Rp', bonus);
  writeln('Total Gaji : Rp', total);
end.