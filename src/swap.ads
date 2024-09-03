package Swap with SPARK_Mode is

   type List_Type is array (Integer range <>) of Integer;

   procedure Swap (List : in out List_Type; I, J : Integer) with
     Pre  => (I in List'Range) and (J in List'Range),
     Post => (for all K in List'Range =>
                (if K = I then List (K) = List'Old (J) else
                (if K = J then List (K) = List'Old (I) else
                               List (K) = List'Old (K))));

end Swap;
