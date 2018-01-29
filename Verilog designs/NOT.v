/**************************************************************************************************
*                  <2019> Interceptor
*          Please refer to license.txt for the 
*          legal contents of this software build
***************************************************************************************************
*Project:          Verilog Modules
*File Name:        NOT.v
*Description:      This file takes one input and outputs the inverted output of it
***************************************************************************************************
*Change History:
*   Version        Date            Author          Description
*   -------        ----            ------          -----------
*   1.0            29/01/18        Rubber-Duck-999 Creation of file
*
***************************************************************************************************
*Logic table:
*   Input 1   |    Output
*   -----     |    ------
*     0       |       1
*     0       |       0
*     1       |       0
*     1       |       0
*
***************************************************************************************************
*Parameters:
*   Name           Direction       Description
*   ----           ---------       ----
*   inputSignalOne Input           This is the first input signal
*   outputSignal   Output          This is the output boolean signal 
*
***************************************************************************************************/
module NAND
(
    inputSignalOne,
    outputSignal
);

input  inputSignalOne;
input  inputSignalTwo;

output outputSignal;

assign outputSignal = (!inputSignalOne);

endmodule
