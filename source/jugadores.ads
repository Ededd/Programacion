with Palabras;

package Jugadores is

   type Jugador is limited private;

   procedure Crear (J: out Jugador; S: String);
   -- Entrada: string S
   -- Salida: jugador J
   -- Efecto : crea jugador con 0 puntos

   function Nombre (J: in Jugador) return string;
   -- entrada: jugador J
   -- salida: string S
   -- efecto: S es el nombre del jugador J

   function Puntos (J: Jugador) return Integer;
   -- entrada: jugador J
   -- salida: integer
   -- efecto: devuelve los puntos del jugador J

   procedure Actualiza_Puntos (J: in out Jugador; V: in Integer);
   -- entrada: jugador J e integer V
   -- salida: jugador J
   -- efecto: se actualizan los puntos de J a V

   function Mas_Puntos (J1, J2: in Jugador) return Boolean;
   -- entrada: jugador J1 Y J2
   -- salida: boolean
   -- efecto: return true si J1 tiene mas puntos que J2

   function Igual (J1, J2: in Jugador) return Boolean;
   -- entrada: jugador J1 y J2
   -- salida: boolean
   -- efecto: return true si J1 y J2 tiene el mismo nombre y mismos puntos

   procedure Copiar (J1: out Jugador; J2: in Jugador);
   -- entrada: jugador J2
   -- salida: jugador J1
   -- efecto: crear un nuevo jugador J1 con los mismos parametros que J2

   Sin_Inicializar: exception;

private

   type Jugador is
      limited record
	 Nombre:Palabras.palabra;
	 Puntos:Integer;
      end record;

end Jugadores;
