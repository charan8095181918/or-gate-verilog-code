`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:32:59 04/04/2022
// Design Name:   Car_Parking2
// Module Name:   D:/exp/dsd/Charan/or_gate_test.v
// Project Name:  Charan
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Car_Parking2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module or_gate_test();
reg a,b;
wire c;
or_gate DUT(.a(a),.b(b),.c(c));
initial begin
$monitor("a=%b b=%b c=%b",a,b,c);
a=0;
b=0;
#10
a=0;
b=1;
#10
a=1;
b=0;
#10
a=1;
b=1;
#10;
end
endmodule

module or_gate(a,b,c);
input a,b;
output c;
assign c=a|b;
endmodule