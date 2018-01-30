/**************************************************************************************************
*                  <2019> Interceptor
*          Please refer to license.txt for the 
*          legal contents of this software build
***************************************************************************************************
*Project:          Verilog Modules
*File Name:        tb_MUX2_1.v
*Description:      This file takes two inputs, one bus and one select to select a bus output and creates 
                   a test bench which simulates certain values for the multiplexer instance
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

module tb_MUX2_1;

reg   [1:0] inputSignalBusOne;
reg         inputSignalSelect;
wire        outputSignal;

integer     Loop_Integer;

MUX2_1      MUX2_1_Instance( inputSignalBusOne, inputSignalSelect, outputSignal );

initial
begin
   #1 $monitor("Bus = %b", inputSignalBusOne, 
               "  |  Select = ", inputSignalSelect, 
               "  |  Output = ", outputSignal );

   for( i = 0; i <= 3; i = i + 1)
   begin
      inputSignalBusOne = i;
      select = 0;  #1;
      select = 1;  #1;
      $display("-----------------------------------------");
    end

end
endmodule