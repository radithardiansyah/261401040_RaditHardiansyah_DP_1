program Soal2;
var
  pass: string;
  coba: integer;
begin
  coba := 0;
  repeat
    write('Masukkan password: '); readln(pass);
    coba := coba + 1;
    
    if pass = 'pascal123' then begin
      writeln('Login Berhasil! Selamat Datang');
      break;
    end;
  until coba = 3;

  if pass <> 'pascal123' then
    writeln('Akses Ditolak! Akun Terkunci.');
end.