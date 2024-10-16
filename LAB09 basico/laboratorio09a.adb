package body Laboratorio09a is

   ----------
   -- Esta --
   ----------

   function Esta (L: in T_Lista_Dinamica; N: in Integer) return Boolean is
      Esta:Boolean:=False;
      auxil:T_Lista_dinamica:=L;
   BEGIN
      WHILE Auxil /=NULL and not esta LOOP
         IF Auxil.info=N THEN
            Esta:=True;
            end if;
         Auxil:=Auxil.Sig;
         end loop;
      return esta;
   end Esta;

   --------------
   -- Posicion --
   --------------

   function Posicion (L: in T_Lista_Dinamica; N: in Integer) return Natural is
      Pos:Integer:=0;
      Parar:Boolean:=False;
      auxil:T_Lista_dinamica:=L;
   begin
      WHILE auxil/=null and not parar LOOP
         IF Auxil.info=N THEN
            parar:=True;
            end if;
         Auxil:=Auxil.Sig;
         pos:=pos+1;
      END LOOP;
      IF NOT Parar THEN
         Pos:=Integer'Last;
      END IF;
         return pos;
   end Posicion;

   ----------------------
   -- Insertar_Delante --
   ----------------------

   PROCEDURE Insertar_Delante (L: IN OUT T_Lista_Dinamica; Num: Integer) IS
   BEGIN
      L:=new T_Nodo_enteros'(num,l);
   end Insertar_Delante;

   ---------------------
   -- Insertar_Detras --
   ---------------------

   procedure Insertar_Detras (L: in out T_Lista_Dinamica; Num: Integer) is
      Auxil:T_Lista_Dinamica:=L;
      nuevo:T_Lista_Dinamica;
   BEGIN
      Nuevo:=NEW T_Nodo_Enteros'(Num,NULL);
      IF Auxil=NULL THEN
         L:=nuevo;
         else
       WHILE Auxil.sig /=NULL LOOP
         Auxil:=Auxil.Sig;
      END LOOP;
         Auxil.Sig:=Nuevo;
         end if;
      end Insertar_Detras;

   ------------------------------
   -- Insertar_Elemento_En_Pos --
   ------------------------------

   procedure Insertar_Elemento_En_Pos
     (L: in out T_Lista_Dinamica;
      Num: in Integer;
      Pos: in Integer)
         IS
      Auxil:T_Lista_Dinamica:=L;
      Length:Integer:=0;
      Mov:Integer:=1;
      nuevo:T_Lista_dinamica;
   begin
      WHILE Auxil /=NULL LOOP
         Auxil:=Auxil.Sig;
         length:=length+1;
      END LOOP;
      IF Pos <= 1 THEN
         Insertar_Delante(L,num);
      ELSIF Pos >= Length THEN
         Insertar_Detras(L,num);
      ELSE
         nuevo:=new T_Nodo_enteros'(num,null);
         auxil:=L;
         WHILE Mov/=Pos LOOP
            Auxil:=Auxil.Sig;
            mov:=mov+1;
         END LOOP;
         nuevo.sig:=auxil.sig;
         auxil.sig:=nuevo;
         end if;
   end Insertar_Elemento_En_Pos;

   ------------
   -- Borrar --
   ------------

   procedure Borrar (L: in out T_Lista_Dinamica; Num: in Integer) is
      Auxil:T_LIsta_Dinamica:=L;
      esta:boolean:=false;
   BEGIN
      IF auxil/=null and then Auxil.Info=Num THEN
         IF Auxil.Sig /=NULL then
            l:=l.sig;
         ELSE
            Auxil:=NULL;
         END IF;
         end if;
      WHILE (Auxil/=NULL and not esta) and then auxil.sig /=null LOOP
         IF Auxil.sig.Info=Num THEN
            Esta:=True;
         else
            Auxil:=Auxil.Sig;
            end if;
      END LOOP;
      IF Esta THEN
         auxil.sig:=auxil.sig.sig;
         end if;
   end Borrar;

   ----------------
   -- Concatenar --
   ----------------

   procedure Concatenar (L1, L2: in out T_Lista_Dinamica) is
   Auxil:T_LIsta_Dinamica:=L1;
   BEGIN
      IF L1=NULL THEN
         L1:=L2;
            else
      WHILE Auxil.Sig /= NULL loop
         Auxil:=Auxil.Sig;
      END LOOP;
         Auxil.Sig:=L2;
         end if;
        end Concatenar;

   --------------
   -- Invertir --
   --------------

   PROCEDURE Invertir (L: IN OUT T_Lista_Dinamica) IS
      Curr:T_Lista_Dinamica:=L;
      prev,next:T_LIsta_Dinamica:=null;
   begin
      IF L/= NULL THEN
         WHILE Curr/=NULL Loop
            Next:=Curr.Sig;
            Curr.Sig:=Prev;
            Prev:=Curr;
            curr:=next;
         END LOOP;
         l:=prev;
         end if;
   end Invertir;

   -----------------
   -- Simplificar --
   -----------------

   procedure Simplificar (L: in out T_Lista_Puntos; Cuantos: out Natural) is
      Auxil:T_Lista_Puntos:=L;
   begin
      WHILE Auxil /=NULL and then auxil.sig /=null and then auxil.sig.sig /=null LOOP
         IF Auxil.Sig.Info.X-Auxil.Info.X < 0.001 AND Auxil.Sig.Info.X-Auxil.Info.X > -0.001
        and Auxil.Sig.Info.y-Auxil.Info.y < 0.001 AND Auxil.Sig.Info.y-Auxil.Info.y > -0.001 THEN
            Auxil.sig:=Auxil.Sig.sig;
         else
            Auxil:=Auxil.Sig;
            end if;
      END LOOP;
      Cuantos:=0;
      auxil:=l;
      WHILE Auxil/=NULL LOOP
         Cuantos:=Cuantos+1;
         Auxil:=Auxil.Sig;
         end loop;
      end simplificar;
end Laboratorio09a;
