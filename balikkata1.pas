Program Zidan_membalik_kata;
Uses wincrt;

var kata : string[50];
var i, k : integer;

Begin
writeln(' Masukkan Kalimat yang akan dibalik! ');
readln(kata);
k := length(kata); 
for i := k downto 1 do
begin
  write(kata[i]);
end;

End.