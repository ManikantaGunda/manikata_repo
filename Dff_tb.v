//
//1st commit
//
module Dff_tb;
reg a,rst,c;
wire d;
parameter k=5;
MultiConfigDFlipFlop #(k)M(rst,c,a,d);
always #5 c=~c;
always #3 a=~a;
always #6 rst=~rst;
initial begin
c=0;
rst=1; a=0;

#80 $finish;
end
endmodule

