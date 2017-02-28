package body Casillas is

   procedure Crear (C:out Casilla) is
   begin
      C.Inicial:= False;
      C.Libre:= True;
   end Crear;

   function Esta_Libre (C:Casilla) return Boolean is
   begin
      return C.Libre;
   end Esta_Libre;

   function Es_Inicial (C:Casilla) return Boolean is
   begin
      return C.Inicial;
   end Es_Inicial;

   function Valor (C:Casilla) return Numeros.numero is
   begin
      if C.Libre then raise Sin_Numero;
      else
	     return C.Valor;
      end if;
   end Valor;

   procedure Asignar_Valor (C:in out Casilla; V:in Numeros.Numero) is
   begin
      C.Valor:=V;
      c.Libre:=false;
   end Asignar_Valor;

   procedure Asignar_Valor_Inicial (C:in out Casilla; V: in Numeros.Numero) is
   begin
      C.Inicial:=True;
      C.Libre:=False;
      C.Valor:=V;
   end Asignar_Valor_Inicial;

   procedure Quitar_Valor(C:in out Casilla) is
   begin
      if C.Libre then raise Sin_Numero;
      else
	     C.Libre:=True;
      end if;

   end Quitar_Valor;

end Casillas;
