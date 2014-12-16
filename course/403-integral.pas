// Разбираемся с нисходящим программированием.
// Идея: разбивать задачу сверху вниз, в отличие от того, как обычно пишутся программы.
// Используем формулу прямоугольников и функцию а)

// в этом шаге пробуем использовать другую формула приближенного вычисления (формула трапеций)
program integral_step_5;
const
  a = 0;
  b = PI/4;
  n = 10000;
var
  i: Integer;
  h, x_i, y_i, y_0, y_n, sum, Result: Double;

BEGIN
  Result := 0;
  sum := 0;

  h := (b - a) / n;
  writeln('h: ', h: 10:5);

  x_i := a + (0 * h);
  y_0 := sqrt(1 - sqr(sin(x_i)) / 2);

  x_i := a + (n * h);
  y_n := sqrt(1 - sqr(sin(x_i)) / 2);

  for i := 1 to n - 1 do // видим, что последовательность начинается с нулевого члена и заканчивается предпоследним, исправляем.
  begin
    x_i := a + (i * h);
    y_i := sqrt(1 - sqr(sin(x_i)) / 2);
    sum := sum + y_i;
    write('x_i: ', x_i: 10:5);
    write('; ');
    writeln('y_i: ', y_i: 10:5);
  end;

  Result := h * ((y_0 + y_n) / 2 + sum);
  writeln('Result: ', Result: 10:5);
END.

// далеем мы видим, что I(n) - всего навсего сумма всех поссчитаных в предыдущем варианте прораммы y (игреков)
// помноженных на h.
program integral_step_4;
const
  a = 0;
  b = PI/4;
  n = 10000;
var
  i: Integer;
  h, x_i, y_i, Result: Double;

BEGIN
  Result := 0;

  h := (b - a) / n;
  writeln('h: ', h: 10:5);

  for i := 0 to n - 1 do // видим, что последовательность начинается с нулевого члена и заканчивается предпоследним, исправляем.
  begin
    x_i := a + (i * h);
    y_i := sqrt(1 - sqr(sin(x_i)) / 2);
    Result := Result + y_i;
    write('x_i: ', x_i: 10:5);
    write('; ');
    writeln('y_i: ', y_i: 10:5);
  end;

  Result := h * Result;
  writeln('Result: ', Result: 10:5);
END.

program integral_step_3;
const
  a = 0;
  b = PI/4;
  n = 100;
var
  i: Integer;
  h, x_i, y_i: Double;

BEGIN

  h := (b - a) / n;
  writeln('h: ', h: 10:5);

  // пробуем посчитать функцию в конкретных точках и посмотреть на результат
  for i := 1 to n do
  begin
    x_i := a + (i * h);
    y_i := sqrt(1 - sqr(sin(x_i)) / 2);
    write('x_i: ', x_i: 10:5);
    write('; ');
    writeln('y_i: ', y_i: 10:5);
  end;

END.

// на данном этапе уже можно сказать о первом черновике программы, которую уже можно попробовать запустить
program integral_step_2;
const
  a = 0;
  b = PI/4;
  n = 100;
var
  h, x_1, y_1: Double;

BEGIN

  h   := (b - a) / n;
  x_1 := a + (1 * h); //обратите внимание, я намеренно заменил название переменной
  y_1 := x_1;

  writeln('h: ', h: 10:5);
  writeln('x_1: ', x_1: 10:5);
  writeln('y_1: ', y_1: 10:5);

END.


// Обратите внимание, на данном этапе ни о какой программе речи еще не идет.
// На данном шаге задача - перевести весь текст, написанный в задаче в какие-либо кусочки кода,
// которые могут подсказать, какие нам необходимо выделить константы, переменные, подпрограммы.
program integral_step_1;
BEGIN

  h   := (b - a) / n; // мы видим, что в этой задаче присутствуют константы/переменные с начальными значениями
  x_i := a + (i * h); // похоже, речь пойдет о циклах
  y_i := f(x_i); // будут какие-то функции

END.