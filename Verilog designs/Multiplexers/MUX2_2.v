/**************************************************************************************************
*                  <2019> Interceptor
*          Please refer to license.txt for the 
*          legal contents of this software build
***************************************************************************************************
*Project:          Verilog Modules
*File Name:        MUX2_2.v
*Description:      This file takes three inputs, two buses and one select to select a bus output
***************************************************************************************************
*Change History:
*   Version        Date            Author          Description
*   -------        ----            ------          -----------
*   1.0            29/01/18        Rubber-Duck-999 Creation of file
*
***************************************************************************************************
*Logic table:
*   Input 1  |     Input 2    |     Select     |    Output
*   -----    |     -----      |     -----      |    ------
*   00       |       11       |       0        |    11
*   01       |       10       |       0        |    10
*   10       |       01       |       0        |    01
*   11       |       00       |       1        |    11
*
***************************************************************************************************
*Parameters:
*   Name             Direction       Description
*   ----             ---------       ----
*   inputSignalOne   Input           This is the first input signal
*   inputSignalTwo   Input           This is the second input signal
*   inputSignalThree Input           This is the third input signal
*   outputSignalBus  Output          This is the output boolean signal 
*
***************************************************************************************************/
module MUX2_2
(
    inputSignalBusOne,
    inputSignalBusTwo,
	inputSignalSelect,
    outputSignalBus
);

input  [1:0]  inputSignalBusOne;
input  [1:0]  inputSignalBusTwo;
input         inputSignalSelect;

output [1:0]  outputSignalBus;

assign outputSignalBus = (inputSignalSelect) ? inputSignalBusOne: inputSignalBusTwo;

endmodule
