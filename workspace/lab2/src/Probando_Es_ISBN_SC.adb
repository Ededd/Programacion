
-- PROGRAMA DE PRUEBAS para el subprograma (funcion) ES_ISBN_SC
-- PB -- Laboratorio 2 -- curso 2016-17

WITH   ES_ISBN_SC;
WITH Ada.Text_IO;
USE Ada.Text_IO;

PROCEDURE Probando_ES_ISBN_SC IS

BEGIN
   New_Line;
   Put_Line("Probamos cuatro casos");
   New_Line; New_Line;
   Put(" --> CASO 1, no es ISBN por ser corto: 1234");
   IF ES_ISBN_SC(1234) THEN
      Put(" ---> Tu solucion: Correcto");
   ELSE
      Put(" ---> Tu solucion: INCORRECTO");
   END IF;
   New_Line; New_Line;
   Put(" --> CASO 2, no es ISBN por ser largo: 1034561892");
   IF ES_ISBN_SC(1034561892) THEN
      Put(" ---> Tu solucion: Correcto");
   ELSE
      Put(" ---> Tu solucion: INCORRECTO");
   END IF;
   New_Line; New_Line;
   Put(" --> CASO 3, correcto: 123434567");
   IF ES_ISBN_SC(123434567) THEN
      Put(" ---> Tu solucion: CORRECTO");
   ELSE
      Put(" ---> Tu solucion: INCORRECTO");
   END IF;
   New_Line; New_Line;
    Put(" --> CASO 4, ISBN pero contiene ceros: 123434507");
   IF ES_ISBN_SC(123434507) THEN
      Put(" ---> Tu solucion: Correcto");
   ELSE
      Put(" ---> Tu solucion: INCORRECTO");
   END IF;
   New_Line;

END Probando_ES_ISBN_SC;

