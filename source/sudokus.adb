package body Sudokus is

   ----------
   -- Leer --
   ----------

   procedure Leer (Fich: in out Ada.Text_Io.File_Type; S: out Sudoku) is
      Ident: String(1..4);
      Nivel: string(1..1);
      Mat: Matrices_Casillas.Matriz;
   begin
      Ada.Text_Io.Get(Fich, Ident);Ada.Text_Io.Skip_Line(Fich);
      Ada.Text_Io.Get(Fich, Nivel);Ada.Text_Io.Skip_Line(Fich);
      Matrices_Casillas.Leer_Inicial(Fich, Mat);
      Matrices_Casillas.Leer_Final(Fich, Mat);

      S.Ident := Ident;
      S.Nivel_Dif:=integer'value(Nivel);
      S.Mat:=Mat;

   exception
      when Ada.Text_Io.End_Error => raise Error_De_Lectura;
   end Leer;

   -------------------
   -- Identificador --
   -------------------

   function Identificador (S: in Sudoku) return String is
   begin
      return S.Ident;
   end Identificador;

   ----------------
   -- Dificultad --
   ----------------

   function Dificultad (S: in Sudoku) return Niveles_Dificultad.Nivel is
   begin
      return S.Nivel_Dif;
   end Dificultad;

   ------------
   -- Matriz --
   ------------

   function matriz (S : in sudoku) return matrices_casillas.Matriz is
   begin
      return S.Mat;
   end matriz;

   ------------
   -- Copiar --
   ------------

   procedure Copiar (S1: out Sudoku; S2: in Sudoku) is
   begin
      S1.Ident:=S2.Ident;
      S1.Nivel_Dif:=S2.Nivel_Dif;
      S1.Mat:=S2.Mat;
   end Copiar;

end Sudokus;
