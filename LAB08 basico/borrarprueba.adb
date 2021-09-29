WITH Ada.Integer_Text_IO, Laboratorio08;
USE Ada.Integer_Text_IO, Laboratorio08;
PROCEDURE Borrarprueba IS
   L:T_Lista_Estatica;
BEGIN
   L:=((1,2,3,others=>0),(3));
   Borrar_Intermedio(L);
   FOR I IN 1..L.Cont LOOP
      Put(L.Dato(I));
      end loop;
   end borrarprueba;
