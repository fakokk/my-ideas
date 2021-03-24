const
 max=100;
type
 matr = array[1..max, 1..max] of real;
var
 a:matr;
 s: integer; //кол-во эл-тов больше нуля
 n,m: integer;  //размерность матрицы

procedure zap(var a:matr; var n,m: integer);
begin
  writeln('Введите размерность матрицы');
  write('Строки:');
  readln(n);
  write('Столбцы:');
  readln(m);
   for var i := 1 to n do
    for var j := 1 to m do
      begin
      a[i,j] := sin((sqr(i)-sqr(j))/n);
      end;
end;

procedure vivod(var a:matr; var n,m: integer);
begin
  begin
  for var i:=1 to n do
   begin
   writeln('');
    for var j:=1 to m do
      write(a[i,j]:8:3);
    end;
  end;
end;

procedure positive(var a: matr; var n,m,s: integer);
begin
  for var i:=1 to n do
    for var j:=1 to m do
    begin
      if a[i,j] > 0 then inc(s);
    end;
      
end;

begin
  zap(a,n,m);
  vivod(a,n,m);
  positive(a,n,m,s);
  writeln();
  writeln('Количество положительных элементов матрицы: ',s);
end.

