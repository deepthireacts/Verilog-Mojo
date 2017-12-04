module basic_or_tb();
   
  reg [3:0] a, b;
  wire [3:0] out;
   
  basic_or #(.WIDTH(4)) DUT (
    .a(a),
    .b(b),
    .out(out)
  );
   
  initial begin
    a = 4'b0000;
    b = 4'b0000;
	//out = 0000
    #20
    a = 4'b1101;
    b = 4'b0101;
    //out = 1101
    #20
    a = 4'b1100;
    b = 4'b1110;
	//out = 1110
    #20
    a = 4'b1100;
    b = 4'b0011;
	//out = 1111
    #20
    a = 4'b1100;
    b = 4'b1000;
    //out = 1100
    #20
    $finish;
  end
   
endmodule