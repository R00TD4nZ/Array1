program zidan_ananda;
uses wincrt;
var i,N: integer; x:array[1..5] of integer;

begin
write(' input n ');readln(n);
i:=1;
while i<=N do
begin
write('       The ',i,'th data = ');readln(x[i]);
i:=i+1;
end;
for i:= 1 to N do writeln('x[',i,'] = ',x[i]);
end.