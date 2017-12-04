module basic_mux ( select, d, q )

input[1:0] select;
input[3:0] d;
output q;

always @( select or d )
begin
   if( select == 0)
      q = d[0];

   if( select == 1)
      q = d[1];

   if( select == 2)
      q = d[2];

   if( select == 3)
      q = d[3];
end

endmodule