
-- PROGRAMA DE PRUEBAS para el subprograma (procedure) Digito_I
-- PB -- Laboratorio 2 -- curso 2016-17

WITH Digito_I;

WITH Ada.Text_Io, Ada.Integer_Text_Io;
USE Ada.Text_Io, Ada.Integer_Text_Io;

PROCEDURE Probando_Digito_I IS
   D: Integer;
BEGIN
   New_line;
   Put_Line("Probando Digito_i con el numero de nueve cifras 357243187");
   New_Line;
   FOR I IN 1..9 LOOP
      Put("- Digito "); put(i,0); put(": ");
      Digito_I(357243187, I,D); Put(D,0);
      New_Line;
   END LOOP;
   New_Line;
   Put_Line("Probando Digito_i con el numero de nueve cifras 111550888");
   New_Line;
   FOR I IN 1..9 LOOP
      Put("- Digito "); put(i,0); put(": ");
      Digito_I(111550888, I,D);  Put(D,0);
      New_Line;
   END LOOP;

   New_Line; Put_Line("Fin de la prueba.");
END Probando_Digito_I;


