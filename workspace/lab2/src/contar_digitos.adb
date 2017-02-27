FUNCTION Contar_Digitos (
      Num: Integer)
  RETURN Integer IS
   Cont : Integer:=0;
   aux: integer:= num;
BEGIN
   WHILE aux/=0 LOOP
      aux:=aux rem 10;
         Cont:=Cont+1;
   END LOOP;
   return cont;

END Contar_Digitos;

