Program Zidan_ananda_Konversi_Decimal_Ke_Romawi_Pakai_Array;
Uses Crt;
Const
Romawi : array [1..13] of String =
('M','CM','D','CD','C','XC','L','XL','X','IX','V','IV','I');
Desimal : array [1..13] of integer =
(1000,900,500,400,100,90,50,40,10,9,5,4,1);
Var
B,B1,i : Integer;
jaw:Char;
Rom : String;
Begin
clrscr;
Repeat
Clrscr;
Writeln('Program Konversi Desimal Menjadi Romawi');
Writeln('=======================================');
Writeln;
Write('Masukkan Bilangan Antara [1..9999] : ');Readln(B);
Writeln;
Rom:='';
B1:=B;
If (B>0) And (B<10000) Then
  Begin
   For i:=1 To 13 Do
    Begin
    While (B>=Desimal[i]) Do
     Begin
      B:=B-Desimal[i];
      Rom:=Rom+Romawi[i]
     End;
    End;
    Writeln('Desimal ',B1,' = ',Rom,' Romawi');
  End Else
  Writeln('Tidak Diketahui Simbol Romawinya!');
  Writeln;

Write('Mau Ulang Lagi? [Y/T]: ');Readln(jaw);
Until (Upcase(jaw)<>'Y');
end.