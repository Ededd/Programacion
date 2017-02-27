
-- PROGRAMA DE PRUEBAS para el subprograma (función) Contar_Digitos
-- PB -- Laboratorio 2 -- curso 2016-17


WITH Contar_Digitos;

WITH Ada.Text_Io, Ada.Integer_Text_Io;
USE Ada.Text_Io, Ada.Integer_Text_Io;

PROCEDURE Probando_Contar_Digitos IS
   Num : Integer := 1;
   N: Integer;
BEGIN
   New_Line;
   Put_Line("Probando Contar_Digitos de varias formas"); New_Line;
   FOR I IN 1..10 LOOP
      Put("--> caso ");
      Put(I,2);
      Put(": ");
      Put(Num, 0);
      Put("-- tiene ---> ");
      Put(Contar_Digitos(Num), 0); Put(" digito/s");
      New_Line(2);
      Num:= Num+ 10**I;
   END LOOP;

   Put("Escribe un numero entero positivo : "); Get(N);
   Put("Tiene "); Put(Contar_Digitos(N), 0); Put(" digito/s");
   New_Line(2);
   Put("Escribe un numero entero negativo : "); Get(N);
   Put("Tiene "); Put(Contar_Digitos(N), 0); Put(" digito/s");
   New_Line(2);
   Put("Por ultimo, el numero 0 tiene "); Put(Contar_Digitos(0), 0); Put(" digito/s");
   New_Line(2);
   Put("Fin de las pruebas.");

END Probando_Contar_Digitos;


