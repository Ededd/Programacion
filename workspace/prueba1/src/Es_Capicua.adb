
FUNCTION Es_Capicua(N: Integer) RETURN Boolean IS
   -- pre: N >0
-- post: devuelve True si y solo si N es un número capicúa
   Reves: Integer:= 0;
   Aux: Integer:=N;
BEGIN
   WHILE Aux/=0 LOOP
      Reves:= Reves*10 + Aux mod 10;
      Aux:= Aux / 10;
   END LOOP;
   RETURN (Reves=N);
END Es_Capicua;

