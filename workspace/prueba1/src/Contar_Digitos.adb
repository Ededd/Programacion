
Procedure Contar_Digitos (Num : in Integer;Cont: out integer)  IS
   -- Post: devuelve el número de dígitos de Num

  Tot, Aux  : Integer;
BEGIN
   Tot:=1;
   Aux:=abs(Num);
   WHILE Aux>9 LOOP
      Aux:=Aux/10;
     Tot:=Tot+1;
   END LOOP;
Cont:=Tot;
END Contar_Digitos;


