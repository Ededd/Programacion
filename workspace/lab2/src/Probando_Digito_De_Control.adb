
-- PROGRAMA DE PRUEBAS para el subprograma (procedure) Digito_De_Control
-- PB -- Laboratorio 2 -- curso 2016-17


WITH Ada.Text_IO, Digito_de_control;
USE Ada.Text_IO;

PROCEDURE Probando_Digito_De_Control IS

Dig: Character;

BEGIN
   New_Line;
   Put_Line("Tres casos de prueba: ");  New_Line;

   Digito_De_Control (842053211, Dig);
   Put_line("Para N = 842053211 -->  el digito de control ha de ser 8");
   Put("                   -->  y tu resultado es ");
   Put(Dig); New_Line; New_Line;

   Digito_De_Control (843654201, Dig);
   Put_Line("Para N = 843654201 -->  el digito de control ha de ser 0");
   Put("                   -->  y tu resultado es ");
   Put(Dig); New_Line; New_Line;

   Digito_De_Control (853654211, Dig);
   Put_Line("Para N = 853654211 -->  el digito de control ha de ser X");
   Put("                   -->  y tu resultado es ");
   Put(Dig); New_Line; New_Line;

END Probando_Digito_De_Control;