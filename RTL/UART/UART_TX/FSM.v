
module FSM (
input     wire         DATA_VALID,
input     wire         PAR_EN,
input     wire         ser_done,
input     wire         CLK,
input     wire         RST,
output    reg   [1:0]  mux_sel,
output    reg          ser_en,
output    reg          busy
);

localparam     IDLE = 'b000,
               STR = 'b001,
               DATA = 'b011,
               PAR = 'b010,
               STP = 'b110;
               
reg    [2:0]    C_S ;
reg    [2:0]    N_S ;


always  @ (posedge CLK or negedge RST)
 begin
   if (!RST)
     begin
       C_S <= IDLE ;
     end  
   else
     begin
       C_S <= N_S ;
     end
 end  
 
 
always @ (*)
 begin
  case (C_S)
   IDLE : begin
           if (DATA_VALID)
            begin
             N_S = STR ;
            end
           else 
            begin
             N_S = IDLE ;
            end       
          end
   STR  : begin
            N_S = DATA ;   
          end       
   DATA : begin
           if (ser_done)
            begin 
             if (PAR_EN)
              begin
               N_S = PAR ;
              end
             else 
              begin
               N_S = STP ;
              end       
            end
           else
            begin
              N_S = DATA ;
            end 
          end
   PAR  : begin
            N_S = STP ;   
          end                
   STP  : begin
            N_S = IDLE ;       
          end   
   default :  begin
               N_S = IDLE ;   
              end
  endcase
 end  


always @ (*)
 begin
  case (C_S)
   IDLE : begin
           ser_en = 'b0 ;   
           mux_sel = 'b01 ;
           busy = 'b0 ;
          end
   STR  : begin
           ser_en = 'b1 ;
           mux_sel = 'b00 ;
           busy = 'b1 ;     
          end       
   DATA : begin
           ser_en = 'b1 ;
           mux_sel = 'b10 ;
           busy = 'b1 ; 
          end  
   PAR  : begin
           ser_en = 'b0 ;
           mux_sel = 'b11 ;
           busy = 'b1 ;    
          end              
   STP  : begin
           ser_en = 'b0 ;
           mux_sel = 'b01 ;
           busy = 'b1 ;      
          end 
   default :  begin
               ser_en = 'b0 ;
               mux_sel = 'b01 ;
               busy = 'b0 ;   
              end         
  endcase
 end   
endmodule             