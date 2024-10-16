package body Laboratorio08 is

   -------------
   -- Comunes --
   -------------

   FUNCTION Comunes (V1,V2: IN T_Vector_Enteros) RETURN Natural IS
      I:Integer:=V1'First;
      J:Integer:=V2'First;
      iguales:integer:=0;
   begin
      WHILE I <= V1'Last and j <= v2'last LOOP
         IF V1(I)<V2(J) THEN
            I:=I+1;
         ELSIF V1(I)>V2(J) THEN
            J:=J+1;
         ELSE
            Iguales:=Iguales+1;
            I:=I+1;
            J:=J+1;
         END IF;
      END LOOP;
      return iguales;
   end Comunes;

   ---------------
   -- Encriptar --
   ---------------

   procedure Encriptar
     (N,Clave: in T_Vector_Enteros;
      Num: out T_Vector_Enteros)
         IS
   BEGIN
      num:=(others=>0);
      FOR J IN n'RANGE LOOP
         Num(Clave(J)):=n(J);
         end loop;
   end Encriptar;

   -----------------------
   -- Insertar_En_Medio --
   -----------------------

   procedure Insertar_En_Medio (L: in out T_Lista_Estatica; Num: in Integer)
   is
   begin
      IF L.cont rem 2 =0 THEN
         L.dato((L.cont/2+2)..L.dato'Last):=L.dato((L.cont/2+1)..L.dato'Last-1);
         L.Dato((L.Cont/2+1)):=Num;
         l.cont:=l.cont+1;
               end if;
   end Insertar_En_Medio;

   -----------------------
   -- Borrar_Intermedio --
   -----------------------

   procedure Borrar_Intermedio (L: in out T_Lista_Estatica) is
   begin
      IF L.Cont rem 2 /=0 THEN
         L.dato((((l.cont-1)/2)+1)..l.dato'last-1):=L.dato((((l.cont-1)/2)+2)..l.dato'last);
         l.cont:=l.cont-1;
         end if;
   end Borrar_Intermedio;

   --------------------------------------
   -- Obtener_Num_Vecinos_por_Vivienda --
   --------------------------------------

   procedure Obtener_Num_Vecinos_por_Vivienda
     (C: in T_Comunidad;
      R:out T_Rascacielos)
         IS
            vecinos:integer;
   begin
      FOR A IN R'RANGE LOOP --integer
         FOR B IN R'RANGE(2) LOOP --character
            vecinos:=0;
            FOR I IN C'RANGE LOOP --integer to max
               IF C(I).Piso=A AND C(I).Mano=B THEN
                  Vecinos:=Vecinos+1;
                  end if;
               END LOOP;
               R(a,b):=vecinos;
            end loop;
         end loop;
   end Obtener_Num_Vecinos_por_Vivienda;

   ----------------------
   -- Obtener_Consumos --
   ----------------------

   procedure Obtener_Consumos
     (E: in T_Edificio;
      Consumo_electrico: out Float;
      Consumo_gas: out T_Consumo_Medio_Manos)
         IS
      Total_Elec,Total_Gas,Total_Habit,Habit_Mano:Float:=0.0;
   begin
      FOR I IN E'RANGE LOOP
            Total_Gas:=0.0;
            habit_mano:=0.0;
         FOR J IN E'RANGE(2) LOOP
            Total_Elec:=Total_Elec+E((I),(J)).Consumo_Electrico;
            Total_Gas:=Total_Gas+E((I),(J)).Consumo_Gas;
            Total_Habit:=Total_Habit+float(E((I),(J)).Habitantes);
            habit_mano:=habit_mano+float(E((I),(J)).Habitantes);
            consumo_gas(i):=total_gas/habit_mano;
            end loop;
      END LOOP;
      consumo_electrico:=total_elec/total_habit;
   end Obtener_Consumos;

end Laboratorio08;
