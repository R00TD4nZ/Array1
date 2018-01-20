Program Zidan_ananda_membalik_kata;
Uses wincrt;
var baru : ARRAY[1..200] of char;
var kata : string[50];
var i, j, k, l, m, n : integer;
var x, y : char;

Begin
writeln(' Masukkan Kalimat yang akan dibalik! ');
gotoxy(5,2);readln(kata);
k := length(kata);
m := 1;
for i := k downto 1 do
begin
baru[m] := kata[i];m := m+1;
end;
Writeln('====================================');
writeln('    KATA SETELAH DI BALIK ');
writeln('====================================');
write('      ');
for i:= 1 to k do write(baru[i]);
readln;
End.