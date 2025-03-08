module demux_rtl(input a, input [1:0]sel,output reg [3:0] y=4'd0);

always@(a,sel)
 begin
   if(sel==2'b00)
      y[0]=a;
   else if(sel==2'b01)
      y[1]=a;
   else if(sel==2'b10)
      y[2]=a;
   else if(sel==2'b11)
      y[3]=a;
  end

endmodule
