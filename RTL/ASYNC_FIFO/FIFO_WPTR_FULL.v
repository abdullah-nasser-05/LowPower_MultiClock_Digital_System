
module FIFO_WPTR_FULL (
input     wire    [3:0]    R_PTR,  
input     wire             W_INC,
input     wire             W_CLK,
input     wire             W_RST,
output    wire    [2:0]    W_ADDR,
output    wire    [3:0]    W_PTR,
output    wire             W_FULL
);

reg   [3:0]   W_COUNTER ;

always @ (posedge W_CLK or negedge W_RST)
 begin
   if (!W_RST)
     begin
       W_COUNTER <= 'b0 ;
     end
   else if (W_INC && ~W_FULL) 
     begin
       W_COUNTER <= W_COUNTER + 'b1 ;
     end    
 end

assign W_ADDR = W_COUNTER[2:0] ;
assign W_PTR = (W_COUNTER >> 1)^W_COUNTER ;
assign W_FULL = (W_PTR[3] != R_PTR[3]) && (W_PTR[2] != R_PTR[2]) && (W_PTR[1:0] == R_PTR[1:0]) ; 
endmodule

