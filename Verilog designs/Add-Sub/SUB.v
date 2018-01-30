/**************************************************************************************************
*                  <2019> Interceptor
*          Please refer to license.txt for the 
*          legal contents of this software build
***************************************************************************************************
*Project:          Verilog Modules
*File Name:        SUB.v
*Description:      This file takes two inputs and SUBTRACTS them to create a output
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
*   0        |       0        |    0
*   0        |       1        |    1
*   1        |       0        |    1
*   1        |       1        |    0
*
***************************************************************************************************
*Parameters:
*   Name              Direction       Description
*   ----              ---------       ----
*   inputSignalSubOne Input           This is the first input signal
*   inputSignalSubTwo Input           This is the second input signal
*   outputSignal      Output          This is the output signal 
*
***************************************************************************************************/
module SUB
(
    inputSignalSubOne,
	inputSignalSubTwo,
    outputSignal
);

input           inputSignalSUBOne;
input           inputSignalSUBTwo;

output          outputSignal;

assign outputSignal = inputSignalSUBOne - inputSignalSUBTwo;

endmodule
