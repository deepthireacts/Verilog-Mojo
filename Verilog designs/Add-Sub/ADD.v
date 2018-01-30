/**************************************************************************************************
*                  <2019> Interceptor
*          Please refer to license.txt for the 
*          legal contents of this software build
***************************************************************************************************
*Project:          Verilog Modules
*File Name:        ADD.v
*Description:      This file takes two inputs and ADDs them to create a output
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
*   0        |       0        |    00
*   0        |       1        |    01
*   1        |       0        |    01
*   1        |       1        |    11
*
***************************************************************************************************
*Parameters:
*   Name              Direction       Description
*   ----              ---------       ----
*   inputSignalAddOne Input           This is the first input signal
*   inputSignalAddTwo Input           This is the second input signal
*   outputSignal      Output          This is the output signal 
*
***************************************************************************************************/
module ADD
(
    inputSignalAddOne,
	inputSignalAddTwo,
    outputSignal
);

input           inputSignalAddOne;
input           inputSignalAddTwo;

output   [1:0]  outputSignal;

assign outputSignal = inputSignalAddOne + inputSignalAddTwo;

endmodule
