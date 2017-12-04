module basic_mux( select, d, q );

input[1:0] select;
input[3:0] d;
output     q;

wire      q;     //Wire assignment is used for connecting
wire[1:0] select;//different elements
wire[3:0] d;

assign q = d[select];//Sets the d value array selected by select to the output of Q

endmodule