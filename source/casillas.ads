with Numeros;

Package Casillas is

   type Casilla is private;

   procedure Crear (C: out Casilla);
   -- contruye un tipo de valor casilla (sin valor asignado)

   function Esta_Libre (C: Casilla) return Boolean;
   -- dada una casillla C la operacion devuelve true si esta libre

   function Es_Inicial (C: Casilla) return Boolean;
   -- dada una casilla c la operacion devuelve true si el valor es inicial

   function Valor (C: Casilla) return Numeros.Numero;
   -- dada una casillla c devuelve su valor

   procedure Asignar_Valor (C: in out Casilla; V: in Numeros.Numero);
   -- dada ina casilla c un valor V, incluye V en C como no incial
   -- la casilla deja de estar libre ya que tiene un valor asignado

   procedure Asignar_Valor_Inicial (C: in out Casilla; V: in Numeros.Numero);
   -- dada una casilla c y un valor v, asigna v a c como valor inicial

   procedure Quitar_Valor (C: in out Casilla);
   -- dada una casilla c modifica su estado a libre

   Sin_Numero:exception;

private

   type Casilla is
      record
	     Inicial:Boolean;
	     Libre:Boolean;
	     Valor:Numeros.Numero;
      end record;

end Casillas;
