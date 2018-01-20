PROGRAM zidan_ananda_pengurutan;
uses wincrt;

CONST
ukuranarray = 6;
TYPE
Range = 1..ukuranarray;
bilangan = ARRAY[Range] OF INTEGER;
VAR
bil :bilangan;
i, j , Pot :INTEGER;
BEGIN
FOR i := 1 TO ukuranarray DO
BEGIN
WRITE('Masukkan bilangan ke ', i,': ');
READLN(bil[i])
END;
FOR i := 1 TO ukuranarray-1 DO
BEGIN 
FOR j := i+1 TO ukuranarray DO
BEGIN
IF bil[i] > bil[j] THEN
BEGIN 
Pot := bil[j];
bil[j] := bil[i];
bil[i] := Pot
END
END 
END;
WRITELN;
WRITELN('DATA SETELAH DIURUTKAN : ');
FOR i := 1 TO ukuranarray DO
WRITELN(bil[i]);
WRITELN('Tekan ENTER untuk melanjutkan..');
READLN
END.