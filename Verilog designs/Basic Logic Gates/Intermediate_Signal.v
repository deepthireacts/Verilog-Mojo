/**************************************************************************************************
*                  <2019> Interceptor
*          Please refer to license.txt for the 
*          legal contents of this software build
***************************************************************************************************
*Project:          Verilog Modules
*File Name:        Intermediate_Signal.v
*Description:      This file takes three inputs, then OR's them, then outputs the AND output of them
***************************************************************************************************
*Change History:
*   Version        Date            Author          Description
*   -------        ----            ------          -----------
*   1.0            29/01/18        Rubber-Duck-999 Creation of file
*
***************************************************************************************************
*Logic table:
*   Input 1  |     Input 2    |     Input 3    |    Output
*   -----    |     -----      |     -----      |    ------
*     0      |       0        |       0        |       0
*     0      |       1        |       1        |       1
*     1      |       0        |       0        |       1
*     1      |       1        |       1        |       1
*
***************************************************************************************************
*Parameters:
*   Name             Direction       Description
*   ----             ---------       ----
*   inputSignalOne   Input           This is the first input signal
*   inputSignalTwo   Input           This is the second input signal
*   inputSignalThree Input           This is the third input signal
*   outputSignal     Output          This is the output boolean signal 
*
***************************************************************************************************/
module NOR
(
    inputSignalOne,
    inputSignalTwo,
	inputSignalThree,
    outputSignal
);

input  inputSignalOne;
input  inputSignalTwo;
input  inputSignalThree;

output outputSignal;

wire   intermediateSignalOne;
wire   intermediateSignalTwo;

assign intermediateSignalOne = (inputSignalOne | inputSignalTwo);
assign intermediateSignalTwo = (inputSignalTwo | inputSignalThree);

assign outputSignal = (intermediateSignalOne & intermediateSignalTwo);

endmodule
