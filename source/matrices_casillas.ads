   with Ids_Grupo_Casillas, Ada.Text_Io, Indices, Casillas;

package Matrices_Casillas is

   type Matriz is private;

   procedure Leer_Inicial (Fich: in out Ada.Text_Io.File_Type; MC: out Matriz);
   -- contruye matriz con numeros de 0 a 9 el 0 significa libre

   procedure Leer_Final (Fich:in out Ada.Text_Io.File_Type; MC: out Matriz);
   -- Entrada: Fich, fichero de texto con una serie de numeros. incluye 9 numeros dde Indices.Indice'range
   -- Salida: MC, matriz de casillas
   -- Efecto contruye la matriz de casilllas MC a partir del fichero Fich

   function Casilla (MC: in Matriz; F, C: in Indices.Indice) return Casillas.Casilla;
   -- dada un matriz y dos indices devuelve la casilla correspondiente

   procedure Copiar_Casilla (MC: in out Matriz; F, C: in Indices.Indice; Cas: in Casillas.Casilla);
   -- copia en M la casilla cas en los indices dados

   function Hay_Inconsistencias (M: Matriz; IG: Ids_Grupo_Casillas.Id_Grupo) return Boolean;
   -- Entrada: una matriz M y un objeto IG del tipo Id_Grupo
   -- Salida: un valor booleano
   -- Efecto: Devuelve true si M tiene inconsistencias en el grupo de casillas

   Error_De_Lectura: exception;
   Numero_Erroneo: exception;

private
   type Matriz is array (Indices.Indice, Indices.Indice) of Casillas.Casilla;

end Matrices_Casillas;
