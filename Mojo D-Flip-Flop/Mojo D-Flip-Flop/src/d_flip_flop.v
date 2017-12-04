module d_flip_flop 
( input C,
  input D,
  output Q,
  output not_Q
);


  initial 
    begin
      $display("First Module included in this Verilog Mojo Clock Project");
      $finish ;
    end
endmodule