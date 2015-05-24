
program menghitug_hari;
(*Menghitug jumlah hai yang terlewati dari tanggal awal hingga tanggal akhir masukan dari user *)

type date = record
        h, b, t : integer;
        end;

var
        d, l : date;
        n : integer;
        s : string;

procedure hr;
begin
write('Masukkan tanggal : '); read(d.h);
while d.h < 1 do begin write('Masukkan tanggal : '); read(d.h); end;
end;

procedure bl;
begin
write('Masukkan bulan : '); read(d.b);
while d.b < 1 do begin write('Masukkan bulan : '); read(d.b); end;
end;

procedure th;
begin
write('Masukkan tahun : '); read(d.t);
end;

procedure hra;
begin
write('Masukkan tanggal : '); read(l.h);
while l.h < 1 do begin write('Masukkan tanggal : '); read(l.h); end;
end;

procedure bla;
begin
write('Masukkan bulan : '); read(l.b);
while l.b < 1 do begin write('Masukkan bulan : '); read(l.b); end;
end;

procedure tha;
begin
write('Masukkan tahun : '); read(l.t);
end;

procedure d31;
begin
repeat
if d.h = 31 then begin end else
begin
n := n + 1;
d.h := d.h + 1;
end;
until
(d.h = 31) or ((d.b = l.b) and (d.h = l.h) and (d.t = l.t));
if (d.h = 31) and (d.b = l.b) and (d.t = l.t) then begin end
else if (d.h = 31) then
begin
d.b := d.b + 1;
n := n + 1;
d.h := 1;
end
else begin end;
end;

procedure d30;
begin
repeat
if d.h = 30 then begin end else
begin
n := n + 1;
d.h := d.h + 1;
end;
until
(d.h = 30) or ((d.b = l.b) and (d.h = l.h) and (d.t = l.t));
if (d.h = 30) and (d.b = l.b) and (d.t = l.t) then begin end
else if (d.h = 30) then
begin
d.b := d.b + 1;
n := n + 1;
d.h := 1;
end
else begin end;
end;

procedure d29;
begin
repeat
if d.h = 29 then begin end else
begin
n := n + 1;
d.h := d.h + 1;
end;
until
(d.h = 29) or ((d.b = l.b) and (d.h = l.h) and (d.t = l.t));
if (d.h = 29) and (d.b = l.b) and (d.t = l.t) then begin end
else if (d.h = 29) then
begin
d.b := d.b + 1;
n := n + 1;
d.h := 1;
end
else begin end;
end;

procedure d28;
begin
repeat
if d.h = 28 then begin end else
begin
n := n + 1;
d.h := d.h + 1;
end;
until
(d.h = 28) or ((d.b = l.b) and (d.h = l.h) and (d.t = l.t));
if (d.h = 28) and (d.b = l.b) and (d.t = l.t) then begin end
else if (d.h = 28) then
begin
d.b := d.b + 1;
n := n + 1;
d.h := 1;
end
else begin end;
end;

procedure gt;
begin
repeat
if d.h = 31 then begin end else
begin
n := n + 1;
d.h := d.h + 1;
end;
until
(d.h = 31) or ((d.b = l.b) and (d.h = l.h) and (d.t = l.t));
if (d.h = 31) and (d.b = l.b) and (d.t = l.t) then begin end
else if (d.h = 31) then
begin
d.b := 1;
n := n + 1;
d.h := 1;
d.t := d.t + 1;
end
else begin end;
end;

function kab(x : integer) : boolean;
begin
if (x mod 4 = 0) and (x mod 100 <> 0) then kab := true else kab := false;
end;

begin
writeln('Masukkan tanggal awal');
hr; while d.h > 31 do hr;
bl; while d.b > 12 do bl;
if ((d.b=4) or (d.b=6) or (d.b=9) or (d.b=11)) and (d.h=31) then
        while d.h > 30 do hr
else if d.b = 2 then while d.h > 29 do hr else begin end;
th;
if (kab(d.t) = false) and (d.b=2) and (d.h > 28) then while d.h >28 do hr else begin end;
writeln('Tanggal awal yang dimasukkan tercatat : ', d.h, '-', d.b, '-', d.t);
writeln('Masukkan tanggal akhir');
hra; while l.h > 31 do hra;
bla; while l.b > 12 do bla;
if ((l.b=4) or (l.b=6) or (l.b=9) or (l.b=11)) and (l.h=31) then
        while l.h > 30 do hra
else if l.b = 2 then while l.h > 29 do hra else begin end;
tha;
if (kab(l.t) = false) and (l.b=2) and (l.h > 28) then while l.h >28 do hra else begin end;
writeln('Tanggal akhir yang dimasukkan tercatat : ', l.h, '-', l.b, '-', l.t);
n := 0;
repeat
begin
case d.b of
        1, 3, 5, 7, 8, 10 : d31;
        2 : if kab(l.t) = true then d29 else d28;
        4, 6, 9, 11 : d30;
        else gt;
        end;
end;
until (d.b = l.b) and (d.t = l.t) and (d.h = l.h);
writeln('Jumlah hari antara dua tanggal itu adalah : ', n);
read(n);
end.
