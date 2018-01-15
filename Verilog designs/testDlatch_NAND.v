`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:09:11 03/06/2017
// Design Name:   Dlatch_NAND
// Module Name:   D:/Projects/XilinxISE/HW1/Homework1/testDlatch_NAND.v
// Project Name:  Homework1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dlatch_NAND
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testDlatch_NAND;

	// Inputs
	reg En;
	reg D;

	// Outputs
	wire Q;
	wire not_Q;

	// Instantiate the DESIGN Under Test (DUT)
	Dlatch_NAND dut (
		.En(En), 
		.D(D), 
		.Q(Q), 
		.not_Q(not_Q)
	);

	initial begin
		// Initialize Inputs
		En = 0;
		D = 0;

		// Wait 100 ns for global reset to finish
		#50;	
		En = 1;
		D = 0;
		
		
		#50;	
		En = 1;
		D = 1;
		
		
		#50;	
		En = 1;
		D = 0;   
		 
		
		#50;	
		En = 0;
		D = 0;
		
		
		#50;	
		En = 0;
		D = 1;
		
		#50;	
		En = 1;
		D = 1;
		
		#50;	
		En = 0;
		D = 0;
		
		#50;	
		En = 0;
		D = 1;
		
        
		// Add stimulus here

	end
      
endmodule

