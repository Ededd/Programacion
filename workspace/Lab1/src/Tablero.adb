with tablero.Interfaz, matrices_casillas, casillas, ids_grupo_casillas;
package body Tablero is

   Tablero_De_Juego: Matrices_Casillas.Matriz;
   Sudoku_Actual: Sudokus.Sudoku;

   procedure Cargar_Sudoku (S: in Sudokus.Sudoku) is
   begin
      Sudokus.Copiar(Sudoku_Actual, S);
   end Cargar_Sudoku;

   procedure Jugar (Nombre_Jugador: in String; Fin_Correcto: out Boolean) is
      begin
        Interfaz.Visualizar(Nombre_Jugador, sudokus.Identificador(sudoku_actual), sudokus.Dificultad(sudoku_actual);
         end if;
         Tablero.Interfaz.Liberar;
   end Jugar;

   function Solucion_Correcta return Boolean is
      Contador: Integer := 0;
      Cas_Tab, Cas_Sud: Casillas.Casilla;
   begin
      for Fila in Indices.Indice loop
         for Columna in Indices.Indice loop
            if not Casillas.Esta.Libre(Matrices_Casillas.Casilla(Tablero_De_Juego, Fila, Columna) then
                                       Cas_Tab := matrices_casillas.Casilla(Tablero_De_Juego, Fila, Columna);Cas_Sud := matrices_casillas.casilla(Sudokus.Matriz(Sudoku_actual),Fila,Columna);
                                       if casillas.Valor(cas_t) = casillas.Valor(cas_s) then
                                       cont := cont +1;
                                       end if;

                                       end if;
                                       end loop;
                                       end loop;

                            if cont = 81 then
                              return true;
                              else
                              return false;
                                       end if;
                                       end Solucion_Correcta;
