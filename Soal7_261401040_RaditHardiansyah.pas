program Soal7;
var
  kode: char;
  jam: integer;
  tarif, max_tarif: longint;
begin
  write('Kode (M/K/B): '); readln(kode);
  write('Lama parkir (jam): '); readln(jam);
  
  case upcase(kode) of
    'M': begin tarif := 5000 + (jam-1)*3000; max_tarif := 30000; end;
    'K': begin tarif := 2000 + (jam-1)*1000; max_tarif := 10000; end;
    'B': begin tarif := 10000 + (jam-1)*5000; max_tarif := 50000; end;
  end;

  if jam > 10 then tarif := max_tarif;

  writeln('Total Tarif: Rp', tarif);
end.