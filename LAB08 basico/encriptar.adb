WITH Ada.Integer_Text_IO, Ada.Text_IO, Laboratorio08;
USE Ada.Integer_Text_IO, Ada.Text_IO, Laboratorio08;
PROCEDURE Encriptar IS
   N:T_Vector_Enteros:=(1,2,3,4,5);
   Clave:T_Vector_Enteros:=(1,2,3,4,5);
   num:T_Vector_Enteros:=(0,0,0,0,0);
   BEGIN
      Encriptar(N,Clave,Num);
         FOR I IN Num'RANGE LOOP
         Put(Num(I));
      END LOOP;
   END Encriptar;

