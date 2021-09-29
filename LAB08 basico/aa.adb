WITH Ada.Integer_Text_IO, Ada.Text_IO,laboratorio08;
USE Ada.Integer_Text_IO, Ada.Text_IO,laboratorio08;
PROCEDURE Aa IS
   N:T_Vector_Enteros(1..3):=(5,6,7);
   clave:T_Vector_Enteros(1..5):=(2,4,1,5,3);
   Num:T_Vector_Enteros(clave'range):=(others=>0);
   Aux:T_vector_enteros(clave'range):=(others=>0);
BEGIN
   FOR I IN (clave'length-n'length)..n'last LOOP
      put_line("I es " & i'img);
      Aux(I):=N(I);
   END LOOP;

      put_line("Aux es ");
   FOR z IN aux'RANGE LOOP
      Put(Num(z));
      end loop;
new_line;
      FOR J IN Clave'RANGE LOOP
         Num(Clave(J)):=aux(J);
   END LOOP;

   FOR A IN Num'RANGE LOOP
      Put(Num(A));
      end loop;
   end aa;
