with laboratorio08, Ada.Text_IO, Ada.Integer_Text_IO;
use laboratorio08, Ada.Text_IO, Ada.Integer_Text_IO;
procedure lab08pruebasDonadoAlumno is
   V1, V2:T_Vector_Enteros(1..10);
   V10:T_Vector_Enteros(5..15);
   comunesCont:Natural := 0;
   N,Clave,Num:T_Vector_Enteros(1..5);
   N3:T_Vector_Enteros(1..3);
   L: T_Lista_Estatica;
   Num2:Integer;
   J:Integer;
   C: T_Comunidad;
   R: T_Rascacielos;
   Elpepe: T_Vecino;
   E:T_Edificio;
   Consumo_electrico: Float;
   Consumo_gas: T_Consumo_Medio_Manos;
   V: T_Vivienda;
begin

  --------------------
      -- Comunes --
  --------------------

   Put_Line("V1 (1,2,3,4,5,6,7,8,9,10) y V2 (1,2,3,4,5,6,7,8,9,10) tienen 10 comunes");
   V1:= (1,2,3,4,5,6,7,8,9,10);
   V2:= (1,2,3,4,5,6,7,8,9,10);
   comunesCont:= Comunes(V1, V2);
   Put("Comunes contados: "); put(comunesCont'Image);
   New_Line;

   Put_Line("V1 (0,2,3,4,5,6,7,8,9,10) y V2 (1,2,3,4,5,6,7,8,9,10) tienen 9 comunes");
   V1:= (0,2,3,4,5,6,7,8,9,10);
   V2:= (1,2,3,4,5,6,7,8,9,10);
   comunesCont:= Comunes(V1, V2);
   Put("Comunes contados: "); put(comunesCont'Image);
   New_Line;

   Put_Line("V1 (1,2,3,4,5,6,7,8,9,10) y V2 (0,2,3,4,5,6,7,8,9,10) tienen 9 comunes");
   V1:= (1,2,3,4,5,6,7,8,9,10);
   V2:= (0,2,3,4,5,6,7,8,9,10);
   comunesCont:= Comunes(V1, V2);
   Put("Comunes contados: "); put(comunesCont'Image);
   New_Line;

   Put_Line("V1 (0,0,0,0,0,0,0,0,0,0) y V2 (0,2,3,4,5,6,7,8,9,10) tienen 1 comun");
   V1:= (0,0,0,0,0,0,0,0,0,0);
   V2:= (0,2,3,4,5,6,7,8,9,10);
   comunesCont:= Comunes(V1, V2);
   Put("Comunes contados: "); put(comunesCont'Image);
   New_Line;

   Put_Line("V1 (0,0,0,0,0,0,0,0,0,1) y V2 (1,2,3,4,5,6,7,8,9,10) tienen 1 comun");
   V1:= (0,0,0,0,0,0,0,0,0,1);
   V2:= (1,2,3,4,5,6,7,8,9,10);
   comunesCont:= Comunes(V1, V2);
   Put("Comunes contados: "); put(comunesCont'Image);
   New_Line;

   Put_Line("V10 (1,2,3,4,5,6,7,8,9,10,11) y V2 (1,2,3,4,5,6,7,8,9,10) tienen 10 comunes");
   V10:= (1,2,3,4,5,6,7,8,9,10,11);
   V2:= (1,2,3,4,5,6,7,8,9,10);
   comunesCont:= Comunes(V10, V2);
   Put("Comunes contados: "); put(comunesCont'Image);
   New_Line;

   New_Line;
   --------------------
      -- Encriptar --
   --------------------
   Put_Line("Si N es (8,7,5,3,9) y Clave es (2,4,1,5,3), el resultado es (5,8,9,7,3)");
   N:= (8,7,5,3,9); Clave:= (2,4,1,5,3);
   Encriptar(N, Clave, Num);
   for I in Num'Range loop
      Put(Num(I));
   end loop;
   New_Line;

   Put_Line("Si N es(5,7,6) y Clave es (2,4,1,5,3), el resultado es (5,0,6,0,7)");
   N3:= (5,7,6); Clave:= (2,4,1,5,3);
   Encriptar(N3, Clave, Num);
   for I in Num'Range loop
      Put(Num(I));
   end loop;
   New_Line;

   New_Line;
   -----------------------
   -- Insertar_En_Medio --
   -----------------------
   Put_Line("Si L= [4, 5, 3, 6] y N= 9 debería quedar [4, 5, 9, 3, 6]");
   L.Dato:= (4, 5, 3, 6, others => Integer'First);
   L.cont:= 4;
   Num2:= 9;
   Insertar_En_Medio(L, Num2);
   J:= l.Dato'First;
   while J < (L.cont+l.Dato'First) loop
      Put(L.Dato(J));
      J:= J+1;
   end loop;
   New_Line;

   New_Line;
   -----------------------
   -- Borrar_Intermedio --
   -----------------------
   Put_Line("Si L= [4, 5, 3, 6, 2] debería quedar [4, 5, 6, 2]");
   L.Dato:= (4, 5, 3, 6, 2, others => Integer'First);
   L.cont:= 5;
   Borrar_Intermedio(L);
   J:= l.Dato'First;
   while J < (L.cont+l.Dato'First) loop
      Put(L.Dato(J));
      J:= J+1;
   end loop;
   New_Line;

   New_Line;
   --------------------------------------
   -- Obtener_Num_Vecinos_por_Vivienda --
   --------------------------------------
   Elpepe.nombre:= "El pepe                  ";
   Elpepe.piso:= 1;
   Elpepe.mano:= 'A';
   C:= (others => Elpepe);
   Obtener_Num_Vecinos_por_Vivienda(C,R);
   for i in R'Range(1) loop
      for j in R'Range(2) loop
         put(R(i,j)); put(" ");
      end loop;
      new_line;
   end loop;

   ----------------------
   -- Obtener_Consumos --
   ----------------------
   V.Consumo_Electrico := 1.0; V.Consumo_Gas := 1.0; V.Habitantes := 1;
   E:= (others => (others => V));
   Obtener_Consumos(E,Consumo_electrico,Consumo_gas);
   Put("El consumo electrico medio total es: ");Put(Consumo_electrico'Image);
   Put("Y el consumo de gas medio por mano es: ");
   for I in Consumo_gas'Range loop
         put("Mano ");Put(I);put(": ");put(Consumo_gas(I)'Image); put(" ");
   end loop;

end lab08pruebasDonadoAlumno;
