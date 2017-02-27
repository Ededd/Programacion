WITH Ada.Text_Io, Ada.Integer_Text_Io;
USE Ada.Text_Io, Ada.Integer_Text_Io;
WITH Es_Capicua;
WITH Contar_Digitos;

PROCEDURE Prueba_Posicion_Valor_Ultimo_Capicua_De_N_Digitos IS

   TYPE T_Vector IS ARRAY (1 .. 10) OF Integer;

   PROCEDURE Posicion_Valor_Ultimo_Capicua_De_N_Digitos (
                                                         V   : IN     T_Vector;
                                                         N   :        Natural;
                                                         Pos,
                                                         Val :    OUT Integer) IS
      -- Pre: Todos los elementos de V son mayores que 0
      -- Post: Pos = posicion del ultimo elemento capicua de V de N dígitos,
      --       Val = valor del ultimo capicua de V de N dígitos.
      --Si no hay capicuas,o no hay capicuas de N digitos Pos=0 y Val=0.

      --> Añadir las declaraciones locales del subprograma (si es necesario)
      Num,cont:Integer;

   BEGIN
      -------------------------------------------------------------
      Pos:=0;
      val:=0;
      cont:=0;

      -->    AÑADIR AQUI VUESTRO CODIGO - Diseño del subprograma

      FOR I IN V'RANGE LOOP
         Contar_Digitos(V(I),cont);
         IF cont=N THEN
            IF Es_Capicua(V(I)) THEN
               Val:=V(I);
               Pos:=I;
            END IF;
         END IF;
      END LOOP;

   END Posicion_Valor_Ultimo_Capicua_De_N_Digitos;

   PROCEDURE Escribir (
                       V : T_Vector) IS
      -- salida: secuencia de 10 numeros S (SE)
      -- post: los 10 números son los elementos de V
   BEGIN
      Put('(');
      FOR I IN V'RANGE LOOP
         Put(V(I), 6);
      END LOOP;
      Put_Line(")");
   END Escribir;

   V   : T_Vector;
   Pos,
   Val : Integer;

BEGIN
   New_Line;
   V:= (505, 111, 202, 898, 343, 45654, 676, 6776, 99, 1001);
   Put_Line("CASO 1: Todos los elementos son capicuas");
   New_Line;
   Put("V = ");
   Escribir(V);
   New_Line;
   Posicion_Valor_Ultimo_Capicua_de_N_Digitos(V,4,Pos,Val);
   Put("--> El ultimo capicua de 4 digitos esta en la posicion ");
   Put(Pos,0);
   Put(" y es el ");
   Put(Val,0);
   New_Line;
   New_Line;
   V:= (54, 187, 256, 89, 343, 45654, 6666, 6776, 98, 1004);
   Put_Line(
            "CASO 2: El ultimo capicua de 3 digitos esta en una posicion intermedia");
   New_Line;
   Put("V = ");
   Escribir(V);
   New_Line;
   Posicion_Valor_Ultimo_Capicua_de_N_Digitos(V,3,Pos,Val);
   Put("--> El ultimo capicua de 3 digitos esta en la posicion ");
   Put(Pos,0);
   Put("  y es el ");
   Put(Val,0);
   New_Line;
   New_Line;
   V:= (55, 187, 256, 89, 3430, 45684, 675, 6770, 98, 1004);
   Put_Line(
            "CASO 3: El unico capicua de 2 digitos esta en la primera posicion");
   New_Line;
   Put("V = ");
   Escribir(V);
   New_Line;
   Posicion_Valor_Ultimo_Capicua_de_N_Digitos(V,2,Pos,Val);
   Put("--> El ultimo capicua de 2 digitos esta en la posicion ");
   Put(Pos,0);
   Put(" y es el ");
   Put(Val,0);
   New_Line;
   New_Line;
   --HAZ UNA PRUEBA DONDE NO HAY NINGÚN ELEMENTO CAPICUA



   Put_Line("CASO 4: No hay ningun elemento capicua");




   Put_Line("EL CASO DE PRUEBA NO ESTA HECHO");









END Prueba_Posicion_Valor_Ultimo_Capicua_De_N_Digitos;
