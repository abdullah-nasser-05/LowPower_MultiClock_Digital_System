module SYS_CTRL (
input      wire              CLK, 
input      wire              RST,
input      wire     [7:0]    RF_RdData,
input      wire              RF_RdData_VLD,
input      wire     [7:0]    UART_RX_DATA,
input      wire              UART_RX_VLD,
input      wire              FIFO_FULL,
input      wire     [15:0]   ALU_OUT,
input      wire              ALU_OUT_VLD,
output     reg               RF_WrEn,
output     reg               RF_RdEn,
output     reg      [3:0]    RF_Address,
output     reg      [7:0]    RF_WrData,
output     reg      [3:0]    ALU_FUN,
output     reg               ALU_EN,
output     reg      [7:0]    UART_TX_DATA,
output     reg               UART_TX_VLD,
output     reg               CLKG_EN,
output     reg               CLKDIV_EN
);

localparam       IDLE          = 4'b0000,
		             WR_ADDR       = 4'b0001,
		             WR_DATA       = 4'b0011,
	              	RD_ADDR       = 4'b0010,
	              	RF_TO_FIFO    = 4'b0110,
               		OPERAND_A     = 4'b0100,
               		OPERAND_B     = 4'b1100,
               		ALU_OP        = 4'b1000,
               		ALU_TO_FIFO_L = 4'b1010,
	              	ALU_TO_FIFO_M = 4'b1011;
               
reg    [3:0]    C_S ;
reg    [3:0]    N_S ;



reg    [15:0]  stored_out ;
reg            out_flag ;
reg    [3:0]   stored_addr ;
reg            stored_flag ;

always  @ (posedge CLK or negedge RST)
 begin
   if (!RST)
     begin
       stored_addr <= 'b0 ;
     end  
   else if (stored_flag)
     begin
       stored_addr <= UART_RX_DATA[3:0] ;
     end 
 end  
 
 always  @ (posedge CLK or negedge RST)
 begin
   if (!RST)
     begin
       stored_out <= 'b0 ;
     end  
   else if (out_flag)
     begin
       stored_out <= ALU_OUT ;
     end 
 end  


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
   IDLE         : begin
                    if (UART_RX_VLD)
                      begin
                        case (UART_RX_DATA)
                          8'hAA :    begin
                                       N_S = WR_ADDR ; 
                                     end
                          8'hBB :    begin
                                       N_S = RD_ADDR ;
                                     end
                          8'hCC :    begin
                                       N_S = OPERAND_A ;
                                     end  
                          8'hDD   :  begin
                                       N_S = ALU_OP ;
                                     end                  
                          default :  begin
                                       N_S = IDLE ; 
                                     end         
                        endcase
                      end
                    else
                      begin
                        N_S = IDLE ;
                      end  
                  end
   WR_ADDR      : begin
                    if (UART_RX_VLD)
                      begin
                        N_S = WR_DATA ;
                      end
                    else
                      begin
                        N_S = WR_ADDR ;
                      end   
                  end       
   WR_DATA      : begin
				           	if (UART_RX_VLD)
                      begin
                        N_S = IDLE ;
                      end
                    else
                      begin
                        N_S = WR_DATA ;
                      end 
                  end 
   RD_ADDR      : begin
                    if (UART_RX_VLD)
                      begin
                        N_S = RF_TO_FIFO ;
                      end
                    else
                      begin
                        N_S = RD_ADDR ;
                      end 
                  end             
   RF_TO_FIFO   : begin
                    if (RF_RdData_VLD)
                      begin
                        N_S = IDLE ;
                      end
                    else
                      begin
                        N_S = RF_TO_FIFO ;
                      end
                  end 
   OPERAND_A    : begin
                    if (UART_RX_VLD)
                      begin
                        N_S = OPERAND_B ;
                      end
                    else
                      begin
                        N_S = OPERAND_A ;
                      end
                  end
   OPERAND_B    : begin
                    if (UART_RX_VLD)
                      begin
                        N_S = ALU_OP ;
                      end
                    else
                      begin
                        N_S = OPERAND_B ;
                      end
                  end
   ALU_OP       : begin
                    if (ALU_OUT_VLD)
                      begin
                        N_S = ALU_TO_FIFO_L ;
                      end
                    else
                      begin
                        N_S = ALU_OP ;
                      end
                  end
   ALU_TO_FIFO_L  : begin
                      N_S = ALU_TO_FIFO_M ;
                    end
   ALU_TO_FIFO_M  : begin
                      N_S = IDLE ;
                    end                                                               
   default      : begin
                    N_S = IDLE ;   
                  end
  endcase
 end  


always @ (*)
 begin
   RF_WrEn      = 'b0 ;     
   RF_RdEn      = 'b0 ;     
   RF_Address   = 'b0 ; 
   stored_flag  = 'b0 ; 
   RF_WrData    = 'b0 ;   
   ALU_FUN      = 'b0 ;     
   ALU_EN       = 'b0 ;      
   UART_TX_DATA = 'b0 ;
   UART_TX_VLD  = 'b0 ;
   out_flag     = 'b0 ; 
   CLKG_EN      = 'b0 ;    
   CLKDIV_EN    = 'b1 ; 
  case (C_S)
   IDLE         : begin
                    RF_WrEn      = 'b0 ;     
                    RF_RdEn      = 'b0 ;     
                    RF_Address   = 'b0 ;
                    stored_flag  = 'b0 ;  
                    RF_WrData    = 'b0 ;   
                    ALU_FUN      = 'b0 ;     
                    ALU_EN       = 'b0 ;      
                    UART_TX_DATA = 'b0 ;
                    UART_TX_VLD  = 'b0 ;
                    out_flag     = 'b0 ; 
                    CLKG_EN      = 'b0 ;    
                    CLKDIV_EN    = 'b1 ;   
                  end
   WR_ADDR      : begin
                    RF_WrEn      = 'b0 ;     
                    RF_RdEn      = 'b0 ; 
                    RF_Address   = 'b0 ; 
                    RF_WrData    = 'b0 ;   
                    ALU_FUN      = 'b0 ;     
                    ALU_EN       = 'b0 ;      
                    UART_TX_DATA = 'b0 ;
                    UART_TX_VLD  = 'b0 ;
                    out_flag     = 'b0 ; 
                    CLKG_EN      = 'b0 ;    
                    CLKDIV_EN    = 'b1 ;
					          if (UART_RX_VLD)
                      begin
                        stored_flag  = 'b1 ;
                      end
                    else
                      begin
                        stored_flag  = 'b0 ;
                      end
                  end       
   WR_DATA      : begin     
                    RF_RdEn      = 'b0 ;     
                    stored_flag  = 'b0 ;   
                    ALU_FUN      = 'b0 ;     
                    ALU_EN       = 'b0 ;      
                    UART_TX_DATA = 'b0 ;
                    UART_TX_VLD  = 'b0 ;
                    out_flag     = 'b0 ; 
                    CLKG_EN      = 'b0 ;    
                    CLKDIV_EN    = 'b1 ;
					          if (UART_RX_VLD)
                      begin
					              RF_Address   = stored_addr ;
					              RF_WrData    = UART_RX_DATA ;
                        RF_WrEn      = 'b1 ;
                      end
                    else
                      begin
                        RF_Address   = 'b0 ;
					              RF_WrData    = 'b0 ;
                        RF_WrEn      = 'b0 ;
                      end
                  end 
   RD_ADDR      : begin
                    RF_WrEn      = 'b0 ;     
                    RF_RdEn      = 'b0 ; 
                    RF_Address   = 'b0 ;  
                    RF_WrData    = 'b0 ;   
                    ALU_FUN      = 'b0 ;     
                    ALU_EN       = 'b0 ;      
                    UART_TX_DATA = 'b0 ;
                    UART_TX_VLD  = 'b0 ;
                    out_flag     = 'b0 ; 
                    CLKG_EN      = 'b0 ;    
                    CLKDIV_EN    = 'b1 ;
					          if (UART_RX_VLD)
                      begin
                        stored_flag  = 'b1 ;
                      end
                    else
                      begin
                        stored_flag  = 'b0 ;
                      end
                  end                
   RF_TO_FIFO   : begin
                    RF_Address   = stored_addr ;
				           	RF_RdEn      = 'b1 ;
                    RF_WrEn      = 'b0 ;          
                    stored_flag  = 'b0 ; 
                    RF_WrData    = 'b0 ;   
                    ALU_FUN      = 'b0 ;     
                    ALU_EN       = 'b0 ;      
                    out_flag     = 'b0 ; 
                    CLKG_EN      = 'b0 ;    
                    CLKDIV_EN    = 'b1 ;
                    if (RF_RdData_VLD && !FIFO_FULL)
                      begin 
                        UART_TX_DATA = RF_RdData ;
                        UART_TX_VLD  = 'b1 ;
                      end
                    else
                      begin 
                        UART_TX_DATA = 'b0 ;
                        UART_TX_VLD  = 'b0 ;
                      end
                  end 
   OPERAND_A    : begin
                    RF_RdEn      = 'b0 ;     
                    RF_Address   = 'b0 ; 
                    stored_flag  = 'b0 ; 
                    ALU_FUN      = 'b0 ;     
                    ALU_EN       = 'b0 ;      
                    UART_TX_DATA = 'b0 ;
                    UART_TX_VLD  = 'b0 ;
                    out_flag     = 'b0 ; 
                    CLKG_EN      = 'b0 ;    
                    CLKDIV_EN    = 'b1 ;
                    if (UART_RX_VLD)
                      begin
                        RF_WrEn      = 'b1 ; 
					             	RF_WrData    = UART_RX_DATA ;
                      end
                    else
                      begin
                        RF_WrEn      = 'b0 ; 
					             	RF_WrData    = 'b0 ;
                      end
                  end
   OPERAND_B    : begin     
                    RF_RdEn      = 'b0 ;    
                    RF_Address   = 'b1 ; 
                    stored_flag  = 'b0 ;   
                    ALU_FUN      = 'b0 ;     
                    ALU_EN       = 'b0 ;      
                    UART_TX_DATA = 'b0 ;
                    UART_TX_VLD  = 'b0 ;
                    out_flag     = 'b0 ; 
                    CLKG_EN      = 'b0 ;    
                    CLKDIV_EN    = 'b1 ;
                    if (UART_RX_VLD)
                      begin
                        RF_WrEn      = 'b1 ; 
                        RF_WrData    = UART_RX_DATA ;
                      end
                    else
                      begin
                        RF_WrEn      = 'b0 ; 
                        RF_WrData    = 'b0 ;
                      end
                  end
   ALU_OP       : begin
                    RF_WrEn      = 'b0 ;     
                    RF_RdEn      = 'b0 ;     
                    RF_Address   = 'b0 ; 
                    stored_flag  = 'b0 ; 
                    RF_WrData    = 'b0 ;   
                    UART_TX_DATA = 'b0 ;
                    UART_TX_VLD  = 'b0 ;      
                    CLKG_EN      = 'b1 ;    
                    CLKDIV_EN    = 'b1 ;
                    if (UART_RX_VLD)
                      begin
                        ALU_FUN      = UART_RX_DATA[3:0] ;     
                        ALU_EN       = 'b1 ;
                      end
                    else
                      begin
                        ALU_FUN      = 'b1111 ;     
                        ALU_EN       = 'b0 ;
                      end
                    if (ALU_OUT_VLD)
                      begin    
                        out_flag     = 'b1 ;
                      end
                    else
                      begin    
                        out_flag     = 'b0 ;
                      end
                  end
   ALU_TO_FIFO_L  : begin
                      RF_WrEn      = 'b0 ;     
                      RF_RdEn      = 'b0 ;     
                      RF_Address   = 'b0 ;
                      stored_flag  = 'b0 ;  
                      RF_WrData    = 'b0 ;   
                      ALU_FUN      = 'b0 ;     
                      ALU_EN       = 'b0 ;
                      out_flag     = 'b0 ; 
                      CLKG_EN      = 'b0 ;    
                      CLKDIV_EN    = 'b1 ;
                      if (!FIFO_FULL)
                       begin
                        UART_TX_DATA = stored_out[7:0] ;
                        UART_TX_VLD  = 'b1 ;
                       end
                      else
                       begin
                        UART_TX_DATA = 'b0 ;
                        UART_TX_VLD  = 'b0 ;
                       end
                    end
   ALU_TO_FIFO_M  : begin
                      RF_WrEn      = 'b0 ;     
                      RF_RdEn      = 'b0 ;     
                      RF_Address   = 'b0 ;
                      stored_flag  = 'b0 ;  
                      RF_WrData    = 'b0 ;   
                      ALU_FUN      = 'b0 ;     
                      ALU_EN       = 'b0 ;
                      out_flag     = 'b0 ; 
                      CLKG_EN      = 'b0 ;    
                      CLKDIV_EN    = 'b1 ;
                      if (!FIFO_FULL)
                       begin
                        UART_TX_DATA = stored_out[15:8] ;
                        UART_TX_VLD  = 'b1 ;
                       end
                      else
                       begin
                        UART_TX_DATA = 'b0 ;
                        UART_TX_VLD  = 'b0 ;
                       end 
                    end                                                                 
   default        : begin
                      RF_WrEn      = 'b0 ;     
                      RF_RdEn      = 'b0 ;     
                      RF_Address   = 'b0 ;
                      stored_flag  = 'b0 ;  
                      RF_WrData    = 'b0 ;   
                      ALU_FUN      = 'b0 ;     
                      ALU_EN       = 'b0 ;      
                      UART_TX_DATA = 'b0 ;
                      UART_TX_VLD  = 'b0 ;
                      out_flag     = 'b0 ; 
                      CLKG_EN      = 'b0 ;    
                      CLKDIV_EN    = 'b1 ;   
                    end
  endcase
 end   
endmodule             
