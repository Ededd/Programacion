with digito_i;

PROCEDURE Digito_De_Control (Num: IN Integer; Dig: OUT Character) Is
   --Entrada: entero num
   --salida: character dig
   --efecto: mult cada digito por su posicion, sumas cada resultado y mod 11
   cont:Integer:=0;
   pos:integer;
begin
   for i in 1..9 loop
      digito_i(num, i, pos);
      cont:=cont+pos*i;
        end loop;
   if cont mod 11=10 then
      dig:='X';
   else
      dig:=character'val(cont mod 11);
                         end if;

end digito_de_control;


