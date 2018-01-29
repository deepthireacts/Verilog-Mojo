/**************************************************************************************************
*                  <2019> Interceptor
*          Please refer to license.txt for the 
*          legal contents of this software build
***************************************************************************************************
*Project:          Verilog Modules
*File Name:        MUX4.v
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
*   0000     |     1111       |       0        |       0
*   0001     |     1000       |       0        |       1
*   0010     |     0100       |       0        |       1
*   0100     |     0010       |       0        |       1
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
    inputSignalBusOne,
    inputSignalBusTwo,
	inputSignalSelect,
    outputSignalBus
);

input  [3:0]  inputSignalBusOne;
input  [3:0]  inputSignalBusTwo;
input         inputSignalSelect;

output outputSignalBus;

assign outputSignalBus = (inputSignalSelect) ? inputSignalBusOne: inputSignalBusTwo;

endmodule
