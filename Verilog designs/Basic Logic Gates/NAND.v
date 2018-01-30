/**************************************************************************************************
*                  <2019> Interceptor
*          Please refer to license.txt for the 
*          legal contents of this software build
***************************************************************************************************
*Project:          Verilog Modules
*File Name:        NAND.v
*Description:      This file takes two inputs and outputs the NAND output of them
***************************************************************************************************
*Change History:
*   Version        Date            Author          Description
*   -------        ----            ------          -----------
*   1.0            29/01/18        Rubber-Duck-999 Creation of file
*
***************************************************************************************************
*Logic table:
*   Input 1  |     Input 2    |    Output
*   -----    |     -----      |    ------
*     0      |       0        |       1
*     0      |       1        |       1
*     1      |       0        |       1
*     1      |       1        |       0
*
***************************************************************************************************
*Parameters:
*   Name           Direction       Description
*   ----           ---------       ----
*   inputSignalOne Input           This is the first  input signal
*   inputSignalTwo Input           This is the second input signal
*   outputSignal   Output          This is the output boolean signal 
*
***************************************************************************************************/
module NAND
(
    inputSignalOne,
    inputSignalTwo,
    outputSignal
);

input  inputSignalOne;
input  inputSignalTwo;

output outputSignal;

assign outputSignal = (inputSignalOne ~& inputSignalTwo);

endmodule
