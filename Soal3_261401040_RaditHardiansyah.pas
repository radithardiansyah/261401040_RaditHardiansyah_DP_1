program Soal3;
var
  n, pil, i: integer;
begin
  write('Masukkan nilai N: '); readln(n);
  write('Pilih deret (1: Ganjil, 2: Genap): '); readln(pil);

  i := 0;
  while i < n do begin
    i := i + 1;
    
    if i mod 5 = 0 then continue;
    
    if (pil = 1) and (i mod 2 = 0) then continue;
    if (pil = 2) and (i mod 2 <> 0) then continue;

    write(i, ' ');
  end;
  writeln;
end.