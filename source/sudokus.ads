with Ada.Text_Io, Niveles_Dificultad;
with Matrices_Casillas; use Matrices_Casillas;

package Sudokus is

   type Sudoku is private;

   procedure Leer (Fich: in out Ada.Text_Io.File_Type; S: out Sudoku);
   -- entrada: fichero fich
   -- salida: sudoku S
   -- efecto: se crea un sudoku S con el fichero fich

   function Identificador(S: in Sudoku) return String;
   -- entrada: sudoku S
   -- salida: identificador

   function Dificultad (S: in Sudoku) return Niveles_Dificultad.Nivel;
   -- entrada: sudoku S
   -- salida: nivel de dificultad

   function matriz(S: in sudoku) return matrices_casillas.Matriz;
   --salida: matriz del sudoku S

   procedure Copiar (S1: out Sudoku; S2: in Sudoku);
   -- entrada: sudoku S2
   -- salida: sudoku S1
   -- efecto: S1 es una copia del sudoku S2

   Error_De_Lectura: exception;
   Numero_Erroneo: exception;

private
   type Sudoku is
      record
	     Ident : String(1..4);
	     Nivel_Dif : Niveles_Dificultad.Nivel;
         Mat : Matrices_Casillas.Matriz;
      end record;

end Sudokus;
