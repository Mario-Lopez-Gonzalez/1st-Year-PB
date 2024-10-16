package body Laboratorio09b is

   -----------
   -- Media --
   -----------

   FUNCTION Media (L: IN T_Lista_Dinamica) RETURN Float IS
      L2:T_Lista_Dinamica:=L;
      cant,suma,media:float:=0.0;
   begin
      WHILE L2 /=NULL LOOP
         Cant:=Cant+1.0;
         Suma:=Suma+float(L2.Info);
         l2:=l2.sig;
      END LOOP;
      IF suma= 0.0 THEN
         Media:=Float'Last;
      ELSE
         media:=suma/cant;
      END IF;
         return media;
   end Media;

   ------------
   -- Maximo --
   ------------

   PROCEDURE Maximo (L: IN T_Lista_Dinamica; Max, Pos: OUT Integer) IS
      L2:T_Lista_Dinamica:=L;
      pos_act:integer:=0;
   BEGIN
      Pos:=0;
      max:=integer'first;
      WHILE L2 /=NULL LOOP
         pos_act:=pos_act+1;
         IF L2.Info>Max THEN
            Max:=L2.Info;
            pos:=pos_act;
            end if;
         l2:=l2.sig;
      END LOOP;
   end Maximo;

   --------------
   -- Insertar --
   --------------

   procedure Insertar (L: in out T_Lista_Dinamica; Num: in Integer) is
      L2:T_Lista_Dinamica:=L;
      nodo:T_lista_dinamica:=new t_nodo_enteros'(num,null);
   BEGIN
      IF L2=NULL THEN
         L:=nodo;
       elsIF L2.Info > Num THEN
         L:=NEW T_Nodo_Enteros'(Num,L);
            ELSE
      WHILE L2.sig /= NULL and then L2.Sig.Info <= Num loop
               l2:=l2.sig;
         END LOOP;
         l2.sig:=new t_nodo_enteros'(num,l2.sig);
         END IF;
   end Insertar;

   -------------------------
   -- Clonar_y_Concatenar --
   -------------------------

   procedure Clonar_y_Concatenar
     (L1,L2: in T_Lista_Dinamica;
      L: out T_Lista_Dinamica)
         IS
      L1a:T_Lista_Dinamica:=L1;
      L1b:T_Lista_Dinamica:=L1;
      L2a:T_Lista_Dinamica:=L2;
   BEGIN
      IF L1=NULL THEN
         L:=L2;
            else
      WHILE L1b.sig/=NULL LOOP
         L1b:=L1b.Sig;
      END LOOP;
      L1b.sig:=L2a;
         L:=L1a;
         end if;
   end Clonar_y_Concatenar;

   ------------
   -- Borrar --
   ------------

   procedure Borrar (L: in out T_Lista_Dinamica; Num: Integer) is
   l1,l2:t_lista_dinamica:=l;
   BEGIN
      WHILE l1/=null and then L1.Info=Num LOOP
         if l1.sig/=null then
            L:=L1.Sig;
         ELSE
            L:=NULL;
         END IF;
         l1:=l1.sig;
      END LOOP;
      l2:=l;
      WHILE l2/=null and then L2.Sig/=NULL LOOP
         IF L2.Sig.Info=Num THEN
            If l2.Sig.Sig = NULL THEN
               L2.Sig:=NULL;
               ELSE
               L2.Sig:=L2.Sig.Sig;
            END IF;
         END IF;
         L2:=L2.Sig;
      END LOOP;
   end Borrar;

   ------------------
   -- Interseccion --
   ------------------

   procedure Interseccion
     (L1,L2: in out T_Lista_Dinamica;
      Comunes, NoComunes: out T_Lista_Dinamica)
   is
   begin
      null;
   end Interseccion;

   -----------------
   -- Son_iguales --
   -----------------

   function Son_iguales (L1,L2: in T_Lista_Dinamica) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Son_iguales unimplemented");
      raise Program_Error with "Unimplemented function Son_iguales";
      return Son_iguales (L1, L2);
   end Son_iguales;

   -----------------
   -- Simplificar --
   -----------------

   procedure Simplificar (L: in out T_lista_Puntos; Cuantos: out Natural) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Simplificar unimplemented");
      raise Program_Error with "Unimplemented procedure Simplificar";
   end Simplificar;

   -------------------------
   -- Crear_Arbol_Binario --
   -------------------------

   procedure Crear_Arbol_Binario
     (V:in T_Vector_Enteros;
      A:out T_Arbol_Binario)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Crear_Arbol_Binario unimplemented");
      raise Program_Error with "Unimplemented procedure Crear_Arbol_Binario";
   end Crear_Arbol_Binario;

end Laboratorio09b;
