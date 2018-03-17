/**************************************************************************************************
*                  <2019> Interceptor
*          Please refer to license.txt for the 
*          legal contents of this software build
***************************************************************************************************
*Project:          Verilog Modules
*File Name:        dFlip_Flop1.v
*Description:      This file takes one input, a clock and outputs one signal
***************************************************************************************************
*Change History:
*   Version        Date            Author          Description
*   -------        ----            ------          -----------
*   1.0            29/01/18        Rubber-Duck-999 Creation of file
*
***************************************************************************************************
*Logic table:
*   Input 1    |    Clock      |    Output
*   -----      |    -----      |    ------
*   0          |    0          |    0
*   0          |    1          |    0
*   1          |    0          |    0
*   1          |    1          |    1
*   0          |    0          |    1
*   0          |    1          |    0
*
***************************************************************************************************
*Parameters:
*   Name              Direction       Description
*   ----              ---------       ----
*   inputSignal       Input           This is the input signal
*   clk               Input           This is the clock signal
*   outputSignal      Output          This is the output boolean signal 
*
***************************************************************************************************/
module MUX8_1
(
    inputSignal,
	clk,
    outputSignal
);

input  inputSignal;
input  clk;

output outputSignal;

reg    outputSignal;

always @(posedge clk)
  begin
    outputSignal = inputSignal;
  end
endmodule
