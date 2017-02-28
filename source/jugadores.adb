package body Jugadores is

   procedure Crear (J: out Jugador; S: String) is
   begin
      Palabras.Crear(J.Nombre, S);
      J.Puntos:= 0;
   exception
      when Constraint_Error => raise Sin_Inicializar;
   end Crear;

   function Nombre (J: in Jugador) return string is
   begin
      return palabras.valor(J.Nombre);
   exception
      when Constraint_Error => raise Sin_Inicializar;
   end Nombre;

   function Puntos (J:Jugador) return Integer is
   begin
      return J.Puntos;
   end Puntos;

   procedure Actualiza_Puntos (J: in out Jugador; V: in Integer) is
   begin
      J.Puntos:=V;
   end Actualiza_Puntos;

   function Mas_Puntos (J1, J2: in Jugador) return Boolean is
   begin
      return J1.Puntos<J2.Puntos;
   end Mas_Puntos;

   function Igual (J1, J2: in Jugador) return Boolean is
   begin
      return J1.Puntos=J2.Puntos;
   exception
      when Constraint_Error => raise Sin_Inicializar;
   end Igual;

   procedure Copiar (J1: out Jugador; J2: in Jugador) is
   begin
      palabras.copiar(J1.Nombre, J2.Nombre);
      J1.Puntos := J2.Puntos;
   exception
      when Constraint_Error => raise Sin_Inicializar;
   end Copiar;

end Jugadores;
