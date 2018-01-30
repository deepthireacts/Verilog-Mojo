/**************************************************************************************************
*                  <2019> Interceptor
*          Please refer to license.txt for the 
*          legal contents of this software build
***************************************************************************************************
*Project:          Verilog Modules
*File Name:        MUX4_1.v
*Description:      This file takes two inputs, one bus and one select to select a bus output
***************************************************************************************************
*Change History:
*   Version        Date            Author          Description
*   -------        ----            ------          -----------
*   1.0            29/01/18        Rubber-Duck-999 Creation of file
*
***************************************************************************************************
*Logic table:
*   Input 1  |     Select    |    Output
*   -----    |     -----     |    ------
*   0001     |     00        |    1
*   0010     |     01        |    1
*   0100     |     10        |    1
*   1000     |     11        |    1
*
***************************************************************************************************
*Parameters:
*   Name              Direction       Description
*   ----              ---------       ----
*   inputSignalBusOne Input           This is the first input signal
*   inputSignalThree  Input           This is the third input signal
*   outputSignal      Output          This is the output boolean signal 
*
***************************************************************************************************/
module MUX4_1
(
    inputSignalBusOne,
	inputSignalSelect,
    outputSignal
);

input  [3:0]  inputSignalBusOne;
input  [1:0]  inputSignalSelect;

output        outputSignal;

assign outputSignal = inputSignalBusOne[inputSignalSelect];

endmodule
