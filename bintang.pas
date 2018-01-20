program Zidan_Bintang2;
uses crt;
var
i,n,l,k:integer;
j:array [0..100] of string;

begin
clrscr;
writeln;
writeln;
writeln;

write(' Masukkan nilai n = ');readln(n);
j[0]:='';
for i := 1 to n do
 begin
 j[i]:=j[i-1] +' *';
 l:=Trunc(n-(i-1));
 gotoxy(l,i+5);writeln(j[i]);
 gotoxy(l+2*n,i+5);writeln(j[i]);
 gotoxy(l+4*n,i+5);writeln(j[i]);
 end;

for i:= n-1 downto 1 do
begin
 l:=Trunc(n-(i-1));
 k:=n+n-(i-2);
 gotoxy(l,k+3);writeln(j[i]);
 gotoxy(l+2*n,k+3);writeln(j[i]);
 gotoxy(l+4*n,k+3);writeln(j[i]);
end;
readln;
end.