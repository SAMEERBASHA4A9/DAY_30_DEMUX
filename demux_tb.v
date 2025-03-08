module demux_tb;

reg a; reg [1:0]sel;
wire [3:0] y;

demux_rtl INTERFACE( a,sel,y);

initial
begin
a=1'b1;
sel=2'b10;
#10;
a=1'b1;
sel=2'b00;
#10;
a=1'b1;
sel=2'b11;
end

initial
$monitor("A=%0b | SEL=%0b | Y=%0b",a,sel,y);

endmodule
