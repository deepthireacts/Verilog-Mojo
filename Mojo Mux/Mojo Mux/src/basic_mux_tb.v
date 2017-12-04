module basic_mux_tb;

reg[3:0] d;
reg[1:0] select;
wire     q;

integer  i;

basic_mux my_mux( select, d, q ); 
//Like C I input the three parameteres which are my local variables

initial
begin
   #1 $monitor("d = %b", d, "  |  select = ", select, "  |  q = ", q );
   //Prints out 

   for( i = 0; i <= 15; i = i + 1)
   begin
      d = i;
      select = 0;  #1;
      select = 1;  #1;
      select = 2;  #1;
      select = 3;  #1;
      $display("-----------------------------------------");
    end

end
endmodule