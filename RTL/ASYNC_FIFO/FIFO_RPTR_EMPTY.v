
module FIFO_RPTR_EMPTY (
input     wire    [3:0]    W_PTR,  
input     wire             R_INC,
input     wire             R_CLK,
input     wire             R_RST,
output    wire    [2:0]    R_ADDR,
output    wire    [3:0]    R_PTR,
output    wire             R_EMPTY
);

reg   [3:0]   R_COUNTER ;

always @ (posedge R_CLK or negedge R_RST)
 begin
   if (!R_RST)
     begin
       R_COUNTER <= 'b0 ;
     end
   else if (R_INC && ~R_EMPTY) 
     begin
       R_COUNTER <= R_COUNTER + 'b1 ;
     end    
 end

assign R_ADDR = R_COUNTER[2:0] ;
assign R_PTR = (R_COUNTER >> 1)^R_COUNTER ;
assign R_EMPTY = (W_PTR == R_PTR) ; 

endmodule