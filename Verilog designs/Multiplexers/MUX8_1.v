/**************************************************************************************************
*                  <2019> Interceptor
*          Please refer to license.txt for the 
*          legal contents of this software build
***************************************************************************************************
*Project:          Verilog Modules
*File Name:        MUX8_1.v
*Description:      This file takes two inputs, one bus and one select to select a bus output
***************************************************************************************************
*Change History:
*   Version        Date            Author          Description
*   -------        ----            ------          -----------
*   1.0            29/01/18        Rubber-Duck-999 Creation of file
*
***************************************************************************************************
*Logic table:
*   Input 1    |     Select    |    Output
*   -----      |     -----     |    ------
*   0000 0001  |     000       |    1
*   0000 0010  |     001       |    1
*   0000 0100  |     010       |    1
*   0000 1000  |     011       |    1
*   0001 0000  |     100       |    1
*   0010 0000  |     101       |    1
*   0100 0000  |     110       |    1
*   1000 0000  |     111       |    1
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
module MUX8_1
(
    inputSignalBusOne,
	inputSignalSelect,
    outputSignal
);

input  [7:0]  inputSignalBusOne;
input  [2:0]  inputSignalSelect;

output        outputSignal;

assign outputSignal = inputSignalBusOne[inputSignalSelect];

endmodule
