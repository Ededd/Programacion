with Sudokus, Indices, Numeros;
package Tablero is

   procedure Cargar_Sudoku(S: in Sudokus.Sudoku);
   -- entrada: sudoku S
   -- efecto: se carga el sudoku S como sudoku actual

   procedure Jugar (Nombre_Jugador: in String; Fin_Correcto: out Boolean);
   -- entrada: string Nombre_Jugador
   -- salida: boolean Fin_Correcto
   -- efecto: (1) visualiza nombre, el sudoku y dificultad
   --         (2) iniciar tablero_de juego y interfaz visializa numeros iniciales
   --         (3) comenzar, la interfaz toma el control. al acabar se devuelve el control
   --         (4) felicitar al jugador si valores coinciden con sudoku_actual, y Fin_correcto := true
   --         (5) liberar los recursos graficos

   function Solucion_Correcta return Boolean;
   -- salida: boolean
   -- efecto: true si tablero_de_juego coindice con sudoku_actual

   procedure Anotar_Numero (F, C: in Indices.Indice; N: in Numeros.Numero);
   -- entrada: indices de tablero y numero
   -- efecto: se coloca N el la posicion de los indices

   procedure Borrar_Numero (F, C: in Indices.Indice);
   -- entrada: indices del tablero
   -- efecto: se borra el numero en esos indices

   procedure Ayudar;
   -- efecto: (1) refresca interfaz
   --         (2) calcula numero de elementos no coincidentes con solucion
   --         (3) si hay errores indica a traves de la interfaz
   --         (4) examina inconsistencias y las muestra con un mensaje
   --         (5) si no encuentra error indica que todo va bien

end Tablero;
