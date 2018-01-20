Program zidan_ananda_find_primes;
uses crt;
var
prime: array [1..100] of integer;
i,j,n:integer;
num: integer;
begin
clrscr;
write('   Input the upper bound of prime numbers = ');readln(n);
for i:=2 to n do
  begin
   prime[i]:=i;
   for j:=2 to i-1 do
    begin
    num:=i mod j;
    if num=0 then prime[i]:=0;
    end;
  if prime[i]<>0 then write (prime[i],' ');
  end;
readln;
end.