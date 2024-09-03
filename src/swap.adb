package body Swap with SPARK_Mode is

   ----------
   -- Swap --
   ----------

   procedure Swap (List : in out List_Type; I, J : Integer)
   is
      Temp : Integer;
   begin
      Temp     := List (I);
      List (I) := List (J);
      List (J) := Temp;
   end Swap;

end Swap;
