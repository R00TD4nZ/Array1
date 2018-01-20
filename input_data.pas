program zidan_ananda_larik1D_1;
uses Crt;
var N,i,jum,pos:integer;jumvar,med:real;
Rata,varian,SD:real;
data:array[1..100] of integer; jaw:char;

begin
repeat;
clrscr;
writeln('  PROGRAM INPUT DATA (HARUS URUT)');
Writeln(' ================================');
write(' Banyak data : ');readln(N);
writeln(' ================================');
i:=1;
while i<=N do
 begin
  write('       Data ke ',i,' = ');readln(data[i]);
  jum:=jum+data[i];
  i:=i+1;
 end;
rata:=jum/N;
jumvar:=0;
for i:=1 to N do  jumvar:=jumvar+sqr(data[i]-rata);
varian:=jumvar/N;
SD:=sqrt(varian);

if N mod 2 = 1 then
 begin
  pos:= (N div 2)+1;
  med:=data[POS];
 end else
begin
 pos:=N div 2 ;
 med:=1/2*(data[pos]+data[pos+1]);
end;

clrscr;
writeln('  TAMPILAN DATA');
Writeln(' ================================');
for i:=1 to N do write('  ',data[i],' ');
writeln;
Writeln(' ================================');
writeln('  Banyak data     ',N);
writeln('  Jumlah data     ',Jum:4);
writeln('  Rata-rata       ',rata:4:2);
writeln('  Variansi        ',varian:4:2);
writeln('  Standar Dev     ',SD:4:2);
writeln('  Median          ',med:4:2);
Writeln(' ================================');
write(' Mau diulang input datanya (Y/T)? ');readln(jaw);
until upcase(jaw)<>'Y';
end.