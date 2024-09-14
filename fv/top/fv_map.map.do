
//input ports
add mapped point a[3] a[3] -type PI PI
add mapped point a[2] a[2] -type PI PI
add mapped point a[1] a[1] -type PI PI
add mapped point a[0] a[0] -type PI PI
add mapped point b[3] b[3] -type PI PI
add mapped point b[2] b[2] -type PI PI
add mapped point b[1] b[1] -type PI PI
add mapped point b[0] b[0] -type PI PI
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI

//output ports
add mapped point mac_out[7] mac_out[7] -type PO PO
add mapped point mac_out[6] mac_out[6] -type PO PO
add mapped point mac_out[5] mac_out[5] -type PO PO
add mapped point mac_out[4] mac_out[4] -type PO PO
add mapped point mac_out[3] mac_out[3] -type PO PO
add mapped point mac_out[2] mac_out[2] -type PO PO
add mapped point mac_out[1] mac_out[1] -type PO PO
add mapped point mac_out[0] mac_out[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point p03/ain[7]/q p03_ain_reg[7]/Q -type DFF DFF
add mapped point p03/ain[6]/q p03_ain_reg[6]/Q -type DFF DFF
add mapped point p03/ain[5]/q p03_ain_reg[5]/Q -type DFF DFF
add mapped point p03/ain[4]/q p03_ain_reg[4]/Q -type DFF DFF
add mapped point p03/ain[3]/q p03_ain_reg[3]/Q -type DFF DFF
add mapped point p03/ain[2]/q p03_ain_reg[2]/Q -type DFF DFF
add mapped point p03/ain[1]/q p03_ain_reg[1]/Q -type DFF DFF
add mapped point p03/ain[0]/q p03_ain_reg[0]/Q -type DFF DFF
add mapped point p02/ain[2]/q p02_ain_reg[2]/Q -type DFF DFF
add mapped point p01/ain[3]/q p01_ain_reg[3]/Q -type DFF DFF
add mapped point p01/ain[0]/q p01_ain_reg[0]/Q -type DFF DFF
add mapped point p02/ain[0]/q p02_ain_reg[0]/Q -type DFF DFF
add mapped point p01/ain[2]/q p01_ain_reg[2]/Q -type DFF DFF
add mapped point p01/ain[1]/q p01_ain_reg[1]/Q -type DFF DFF
add mapped point p02/ain[1]/q p02_ain_reg[1]/Q -type DFF DFF
add mapped point p02/ain[3]/q p02_ain_reg[3]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
