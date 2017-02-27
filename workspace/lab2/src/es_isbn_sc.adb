WITH Digito_I, Contar_Digitos;

FUNCTION Es_ISBN_SC (
      Num : Integer)
                     RETURN Boolean IS
   pos:integer;
   begin
   IF Contar_Digitos(Num)/=9 THEN
      return false;
   ELSE
      for i in 1..9 loop
         digito_i(num, i, pos);
         if pos=0 then
            return false;
         end if;
      end loop;
      end if;
      return true;
END Es_Isbn_Sc;

