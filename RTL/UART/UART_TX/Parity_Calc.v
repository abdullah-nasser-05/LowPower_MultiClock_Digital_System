
module Parity_Calc (
input    wire    [7:0]   P_DATA,
input    wire            DATA_VALID,
input    wire            PAR_TYP,
input    wire            busy,
input    wire            CLK,
input    wire            RST,
output   reg             par_bit
);


always  @ (posedge CLK or negedge RST)
 begin
   if (!RST)
     begin
       par_bit <= 'b0 ;
     end  
   else
     begin
       if (DATA_VALID && ~busy)
         begin
          if (PAR_TYP)
           begin
             par_bit <= ~^P_DATA ;
           end
          else
           begin
             par_bit <= ^P_DATA ;
           end
         end
     end
 end  
endmodule
