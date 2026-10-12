program Soal6;
var
  tugas, uts, uas, akhir, hadir: real;
  huruf: char;
begin
  write('Tugas (0-100): '); readln(tugas);
  write('UTS (0-100): '); readln(uts);
  write('UAS (0-100): '); readln(uas);
  write('Kehadiran (%): '); readln(hadir);

  akhir := (tugas * 0.3) + (uts * 0.3) + (uas * 0.4);

  if akhir >= 85 then huruf := 'A'
  else if akhir >= 75 then huruf := 'B'
  else if akhir >= 60 then huruf := 'C'
  else if akhir >= 50 then huruf := 'D'
  else huruf := 'E';

  writeln('Nilai Akhir: ', akhir:0:2);
  writeln('Indeks: ', huruf);
  
  if (akhir >= 60) and (hadir >= 80) then
    writeln('Status: LULUS')
  else
    writeln('Status: TIDAK LULUS');
end.