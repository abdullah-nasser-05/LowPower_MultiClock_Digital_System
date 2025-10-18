
module FIFO_MEMORY #(parameter DATA_WIDTH = 8)
(
input      wire    [DATA_WIDTH-1:0]     WR_DATA,
input      wire                         W_INC,
input      wire                         W_FULL,
input      wire    [2:0]                W_ADDR,
input      wire    [2:0]                R_ADDR,
input      wire                         CLK,
input      wire                         RST,
output     wire    [DATA_WIDTH-1:0]     RD_DATA
);

wire   W_EN;

reg   [DATA_WIDTH-1:0] MEM [7:0];

integer I; 

always @ (posedge CLK or negedge RST)
 begin
   if (!RST)
     begin
       for (I=0; I<8; I=I+1)
         MEM[I] <= 'b0 ;
     end
   else if (W_EN)
     begin
       MEM[W_ADDR] <= WR_DATA ;
     end
 end
   

assign RD_DATA = MEM[R_ADDR];
assign W_EN = (W_INC && ~W_FULL);  

endmodule