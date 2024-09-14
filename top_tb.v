

module top_tb;
  reg [3:0] a;
  reg [3:0] b;
  reg clk;
  reg rst;
  wire [7:0]mac_out;

  top uut (
    .a(a),
    .b(b),
    .clk(clk),
    .rst(rst),
    .mac_out(mac_out)
  );
  initial
  begin
  clk = 0;
  rst = 1'b1;
  end
  
  always
  forever #1 clk = ~clk;

  initial begin 
    #10;
	 a = 4'b0000;
    b = 4'b0000;
	 rst = 1'b0;
   
    
    #10;
    a = 4'b0001;
    b = 4'b0010;
    
	 #10;
    a = 4'b0011;
    b = 4'b1010;
	 
    
	  #10;
    a = 4'b0001;
    b = 4'b0010;
   
	 $stop;
  end
endmodule
