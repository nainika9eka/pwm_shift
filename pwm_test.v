`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2025 19:29:15
// Design Name: 
// Module Name: pwm_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pwm_test;
   reg clk;

	// Outputs
	wire [7:0] pwm;

	// Instantiate the Unit Under Test (UUT)
	pwm_generator uut (
		.clk(clk), 
		.pwm(pwm)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		#5000000 $finish;
	end
 always
 #5 clk=~clk; 
endmodule
