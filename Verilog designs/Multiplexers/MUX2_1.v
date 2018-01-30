/**************************************************************************************************
*                  <2019> Interceptor
*          Please refer to license.txt for the 
*          legal contents of this software build
***************************************************************************************************
*Project:          Verilog Modules
*File Name:        MUX2_1.v
*Description:      This file takes two inputs, one bus and one select to select a bus output
***************************************************************************************************
*Change History:
*   Version        Date            Author          Description
*   -------        ----            ------          -----------
*   1.0            29/01/18        Rubber-Duck-999 Creation of file
*
***************************************************************************************************
*Logic table:
*   Input 1  |     Select     |    Output
*   -----    |     -----      |    ------
*   00       |       0        |    0
*   01       |       0        |    1
*   10       |       0        |    0
*   11       |       1        |    1
*
***************************************************************************************************
*Parameters:
*   Name              Direction       Description
*   ----              ---------       ----
*   inputSignalBusOne Input           This is the first input signal
*   inputSignalSelect Input           This is the select input signal
*   outputSignal      Output          This is the output boolean signal 
*
***************************************************************************************************/
module MUX2_1
(
    inputSignalBusOne,
	inputSignalSelect,
    outputSignal
);

input  [1:0]  inputSignalBusOne;
input         inputSignalSelect;

output        outputSignal;

assign outputSignal = inputSignalBusOne[inputSignalSelect];

endmodule
