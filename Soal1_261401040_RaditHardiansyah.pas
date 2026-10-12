program Soal1;
var
  n, i: integer;
  harga, total, diskon, bayar: real;
begin
  write('Masukkan jumlah barang: '); readln(n);
  total := 0;
  
  for i := 1 to n do begin
    write('Harga barang ke-', i, ': ');
    readln(harga);
    total := total + harga;
  end;

  if total >= 500000 then diskon := total * 0.2
  else if total >= 100000 then diskon := total * 0.1
  else diskon := 0;

  bayar := total - diskon;
  
  writeln('--- Rincian ---');
  writeln('Total Sblm Diskon: Rp', total:0:2);
  writeln('Besar Diskon     : Rp', diskon:0:2);
  writeln('Total Bayar      : Rp', bayar:0:2);
end.