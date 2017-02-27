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
         Interfaz.Visualizar(Nombre_Jugador, Sudokus.Identificador(Sudoku_Actual), Sudokus.Dificultad(Sudoku_Actual));
         for fila in indices.Indice loop
            for columna in indices.Indice loop
               cas_t := matrices_casillas.Casilla(Sudokus.Matriz(sudoku_actual), fila, columna);
               if casillas.Es_Inicial(cas_t) then
                  matrices_casillas.Copiar_Casilla( Tablero_De_Juego, fila, columna, cas_t);
                  interfaz.Visualizar_Valor_Inicial(fila,columna,casillas.Valor(matrices_casillas.Casilla(Sudokus.Matriz(sudoku_actual), fila, columna)));
               end if;
            end loop;
         end loop;
         Interfaz.Comenzar;
         if solucion_correcta then
            fin_correcto := true;
            Interfaz.Mostrar_Mensaje("Enhorabuena!");
         else
            fin_correcto := false;
            Interfaz.Mostrar_Mensaje("Que mal... :(", Interfaz.Error);
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

