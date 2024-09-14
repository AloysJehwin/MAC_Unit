module top(a,b,clk,rst,mac_out);
input [3:0]a,b;
input clk,rst;
wire [7:0] mac_temp;
wire [3:0]ain,bin;
wire [7:0] m_out;
wire [7:0] mac_out_temp;
output [7:0]mac_out;
pipo4 p01(clk,rst,a,ain);
pipo4 p02(clk,rst,b,bin);
multiplier m01(m_out,ain,bin);
cla c01(m_out,mac_out_temp,mac_temp);
pipo9 p03(clk,rst,mac_temp,mac_out_temp);
assign mac_out=mac_out_temp;
endmodule


module pipo4(clk, reset, a, ain);
  input clk, reset;
  input [3:0] a;
  output reg [3:0] ain;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      ain <= 4'b0;
    end
    else begin
      ain <= a;
    end
  end
endmodule

module pipo9(clk,reset,a,ain);
input clk,reset;
input [7:0] a;
output reg [7:0] ain;
always @(posedge clk or posedge reset) begin
if (reset )begin
	ain<=8'b0;
end
else begin
	ain <=a;
end
end
endmodule

module multiplier(PRODUCT, A, B);
output [7:0] PRODUCT;
input [3:0] A, B;
wire [14:0] W;
wire [10:0] C;
wire [5:0] S;
// Instantiate all the AND functions
and and00 ( W[0], A[0], B[1] );
and and01 ( W[1], A[0], B[2] );
and and02 ( W[2], A[0], B[3] );
and and03 ( W[3], A[1], B[0] );
and and04 ( W[4], A[1], B[1] );
and and05 ( W[5], A[1], B[2] );
and and06 ( W[6], A[1], B[3] );
and and07 ( W[7], A[2], B[0] );
and and08 ( W[8], A[2], B[1] );
and and09 ( W[9], A[2], B[2] );
and and10 ( W[10], A[2], B[3] );
and and11 ( W[11], A[3], B[0] );
and and12 ( W[12], A[3], B[1] );
and and13 ( W[13], A[3], B[2] );
and and14 ( W[14], A[3], B[3] );
// LSB is calculated here
and and15 ( PRODUCT[0], A[0], B[0] );
// First row
// Bit 1 of the product as well
halfadder ha01 ( PRODUCT[1], C[0], W[0], W[3] );
fulladder fa01 ( S[0], C[1], W[1], W[4], C[0] );
fulladder fa02 ( S[1], C[2], W[2], W[5], C[1] );
halfadder ha02 ( S[2], C[3], W[6], C[2] );
// Next row
halfadder ha03 ( PRODUCT[2], C[4], W[7], S[0] );
fulladder fa03 ( S[3], C[5], W[8], S[1], C[4] );
fulladder fa04 ( S[4], C[6], W[9], S[2], C[5] );
fulladder fa05 ( S[5], C[7], W[10], C[3], C[6] );
// Next row
halfadder ha04 ( PRODUCT[3], C[8], W[11], S[3] );
fulladder fa06 ( PRODUCT[4], C[9], W[12], S[4], C[8] );
fulladder fa07 ( PRODUCT[5], C[10], W[13], S[5], C[9] );
fulladder fa08 ( PRODUCT[6], PRODUCT[7], W[14], C[7], C[10] );
endmodule

module fulladder(s,cout,a,b,cin);
input a,b,cin;

output s,cout;
assign s= a^b^cin;
assign cout = (a & b) | ( b & cin) | (cin & a);
endmodule
module halfadder(sum,carry,a,b);
output sum,carry;
input a,b;
assign sum = a^b;
assign carry = a&b;
endmodule

module cla(a, b, s);
  input [7:0] a, b;
  output [7:0] s;
  wire [7:0]c;

  FA fa0(a[0], b[0], c[0], s[0]);
  FA fa1(a[1], b[1], c[1], s[1]);
  FA fa2(a[2], b[2], c[2], s[2]);
  FA fa3(a[3], b[3], c[3], s[3]);
  FA fa4(a[4], b[4], c[4], s[4]);
  FA fa5(a[5], b[5], c[5], s[5]);
  FA fa6(a[6], b[6], c[6], s[6]);
  FA fa7(a[7], b[7], c[7], s[7]);
  cgl c0(a,b,c);
  
endmodule

module FA(a, b, c, s);
  input [7:0] a, b,c;
  output [7:0] s;
  assign s = a ^ b ^ c;
endmodule

module cgl(a,b,c);
input [7:0] a,b;
output [7:0] c;
wire [7:0] p,g;
assign p=a^b;
assign g=a&b;
assign c[0]=1'b0;
assign c[1]=g[0];
assign c[2]=(c[1]&p[1])|g[1];
assign c[3]=(c[2]&p[2])|g[2];
assign c[4]=(c[3]&p[3])|g[3];
assign c[5]=(c[4]&p[4])|g[4];
assign c[6]=(c[5]&p[5])|g[5];
assign c[7]=(c[6]&p[6])|g[6];
endmodule


