program Soal4;
var
  menu, a, b: integer;
  lagi: char;
begin
  repeat
    writeln('1:Tambah 2:Kurang 3:Kali 4:Bagi Real 5:DIV & MOD');
    write('Pilih operasi: '); readln(menu);
    write('Angka 1: '); readln(a);
    write('Angka 2: '); readln(b);

    case menu of
      1: writeln('Hasil: ', a + b);
      2: writeln('Hasil: ', a - b);
      3: writeln('Hasil: ', a * b);
      4: writeln('Hasil: ', a / b :0:2);
      5: writeln('DIV: ', a div b, ' | MOD: ', a mod b);
    end;

    write('Hitung lagi? (Y/T): '); readln(lagi);
  until upcase(lagi) = 'T';
end.