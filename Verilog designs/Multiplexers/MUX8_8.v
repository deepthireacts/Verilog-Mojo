/**************************************************************************************************
*                  <2019> Interceptor
*          Please refer to license.txt for the 
*          legal contents of this software build
***************************************************************************************************
*Project:          Verilog Modules
*File Name:        MUX8_8.v
*Description:      This file takes three inputs, two buses and one select to select a bus output
***************************************************************************************************
*Change History:
*   Version        Date            Author          Description
*   -------        ----            ------          -----------
*   1.0            29/01/18        Rubber-Duck-999 Creation of file
*
***************************************************************************************************
*Logic table:
*   Input 1     |     Input 2     |     Select     |    Output
*   -----       |     -----       |     -----      |    ------
*   0000 0000   |     0000 1111   |       0        |    0000 1111
*   0001 0000   |     0000 1000   |       0        |    0000 1000
*   0010 0000   |     0000 0100   |       0        |    0000 0100
*   0100 0000   |     0000 0010   |       0        |    0000 0010
*   1000 0000   |     0000 0001   |       0        |    0000 0001
*   1111 0000   |     0000 0000   |       1        |    1111 0000
*
***************************************************************************************************
*Parameters:
*   Name              Direction       Description
*   ----              ---------       ----
*   inputSignalBusOne Input           This is the first input signal
*   inputSignalBusTwo Input           This is the second input signal
*   inputSignalSelect Input           This is the select input signal
*   outputSignalBus   Output          This is the output boolean signal 
*
***************************************************************************************************/
module MUX8_8
(
    inputSignalBusOne,
    inputSignalBusTwo,
	inputSignalSelect,
    outputSignalBus
);

input  [7:0]  inputSignalBusOne;
input  [7:0]  inputSignalBusTwo;
input         inputSignalSelect;

output [7:0]  outputSignalBus;

assign outputSignalBus = (inputSignalSelect) ? inputSignalBusOne: inputSignalBusTwo;

endmodule
