program Soal5;
var
  m, n, i, j, lulus, gagal: integer;
  nilai, tot_nilai, rata: real;
begin
  write('Jml Mahasiswa: '); readln(m);
  write('Jml Tugas: '); readln(n);

  lulus := 0; gagal := 0;

  for i := 1 to m do begin
    tot_nilai := 0;
    writeln('Mahasiswa ke-', i);
    
    for j := 1 to n do begin
      write('  Nilai tugas ', j, ': '); readln(nilai);
      tot_nilai := tot_nilai + nilai;
    end;

    rata := tot_nilai / n;
    write('  Rata-rata: ', rata:0:2, ' -> ');
    if rata >= 65 then begin
      writeln('LULUS');
      lulus := lulus + 1;
    end else begin
      writeln('TIDAK LULUS');
      gagal := gagal + 1;
    end;
  end;

  writeln('Total LULUS: ', lulus);
  writeln('Total TIDAK LULUS: ', gagal);
end.