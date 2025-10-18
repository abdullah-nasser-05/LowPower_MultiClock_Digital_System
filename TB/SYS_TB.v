`timescale 1ns/1ps 

module SYS_TB ();


real DATA_WIDTH = 8 ;  
real RF_ADDR    = 4 ;  
  
real REF_CLK_PERIOD = 20 ;
real UART_CLK_PERIOD = 271.27 ;
real RX_CLK_PERIOD = 271.27 ;
real TX_CLK_PERIOD = 8680.56 ;


reg            RST_N_TB;
reg            UART_CLK_TB;
reg            REF_CLK_TB;
reg            UART_RX_IN_TB;
wire           UART_TX_O_TB;
wire           parity_error_TB;
wire           framing_error_TB;

// Clock Generator 
always #(REF_CLK_PERIOD/2)      REF_CLK_TB = ~REF_CLK_TB ;
always #(UART_CLK_PERIOD/2.0)   UART_CLK_TB = ~UART_CLK_TB ;

// DUT Instantation 
SYS_TOP DUT (
.RST_N(RST_N_TB),
.UART_CLK(UART_CLK_TB),
.REF_CLK(REF_CLK_TB),
.UART_RX_IN(UART_RX_IN_TB),
.UART_TX_O(UART_TX_O_TB),
.parity_error(parity_error_TB),
.framing_error(framing_error_TB)
);   


// initial block
initial 
 begin
   
 // Save Waveform
   $dumpfile("SYS.vcd") ;       
   $dumpvars; 
 
 
 // initialization
   initialize();

 // Reset
   reset();
 
   $display ("for solve enum problem") ;  
  send_frame('b10101010100,'b1) ;
  send_frame('b11000001000,'b1) ;
  send_frame('b11000001110,'b1) ;
 
  // Reset
   reset();
  
  // write operations with parity enable
  
  $display ("write operations (1) with parity enable (even parity)") ;  
  send_frame('b1_0_10101010_0,'b1) ;
  send_frame('b1_0_00000000_0,'b1) ;
  send_frame('b1_1_00000111_0,'b1) ;
  
  $display ("write operations (2) with parity enable (even parity)") ;  
  send_frame('b1_0_10101010_0,'b1) ;
  send_frame('b1_1_00000001_0,'b1) ;
  send_frame('b1_0_00001111_0,'b1) ;
  
  $display ("write operations (3) with parity enable (even parity)") ;  
  send_frame('b1_0_10101010_0,'b1) ;
  send_frame('b1_1_00000100_0,'b1) ;
  send_frame('b1_0_00010100_0,'b1) ;
  
  $display ("write operations (4) with parity enable (even parity)") ;  
  send_frame('b1_0_10101010_0,'b1) ;
  send_frame('b1_0_00000101_0,'b1) ;
  send_frame('b1_1_00100000_0,'b1) ;
  
  $display ("write operations (5) with parity enable (even parity)") ;  
  send_frame('b1_0_10101010_0,'b1) ;
  send_frame('b1_0_00000110_0,'b1) ;
  send_frame('b1_0_01100101_0,'b1) ;
  
  $display ("write operations (6) with parity enable (even parity)") ;  
  send_frame('b1_0_10101010_0,'b1) ;
  send_frame('b1_1_00000111_0,'b1) ;
  send_frame('b1_0_11111100_0,'b1) ;
  
  //Test Cases with parity enable (even parity)
  
  $display ("TEST CASE 1 read operation with parity enable (even parity)") ;  
  send_frame('b1_0_10111011_0,'b1) ;
  send_frame('b1_1_00000100_0,'b1) ;
  CHECK_OUT_EN('b1_0_00010100_0,'d1) ;
  
  $display ("TEST CASE 2 read operation with parity enable (even parity)") ;  
  send_frame('b1_0_10111011_0,'b1) ;
  send_frame('b1_0_00000110_0,'b1) ;
  CHECK_OUT_EN('b1_0_01100101_0,'d2) ;
  
  $display ("TEST CASE 3 ALU Operation with operands and with parity enable (even parity)") ;  
  send_frame('b1_0_11001100_0,'b1) ;
  send_frame('b1_0_00001100_0,'b1) ;
  send_frame('b1_0_00001010_0,'b1) ;
  send_frame('b1_0_00000000_0,'b1) ;
  CHECK_OUT_EN('b1_1_00010110_0,'d3) ;
  
  $display ("TEST CASE 4 ALU Operation without operands and with parity enable (even parity)") ;  
  send_frame('b1_0_11011101_0,'b1) ;
  send_frame('b1_1_00000010_0,'b1) ;
  CHECK_OUT_EN('b1_0_01111000_0,'d4) ;
  
  // Reset
  reset();
  
  
  $display ("write operation (7) (change configuration (odd parity))") ;  
  send_frame('b1_0_10101010_0,'b1) ;
  send_frame('b1_1_00000010_0,'b1) ;
  send_frame('b1_1_100000_11_0,'b1) ;
   
  
  $display ("write operation (8) with parity enable (odd parity)") ;  
  send_frame('b1_1_10101010_0,'b1) ;
  send_frame('b1_1_00000000_0,'b1) ;
  send_frame('b1_1_00001111_0,'b1) ;
  
  $display ("write operation (9) with parity enable (odd parity)") ;  
  send_frame('b1_1_10101010_0,'b1) ;
  send_frame('b1_0_00000001_0,'b1) ;
  send_frame('b1_1_00010100_0,'b1) ;
  
  $display ("write operation (10) with parity enable (odd parity)") ;  
  send_frame('b1_1_10101010_0,'b1) ;
  send_frame('b1_0_00000100_0,'b1) ;
  send_frame('b1_0_00100000_0,'b1) ;
  
  $display ("write operation (11) with parity enable (odd parity)") ;  
  send_frame('b1_1_10101010_0,'b1) ;
  send_frame('b1_1_00000110_0,'b1) ;
  send_frame('b1_1_01100101_0,'b1) ;
  
  $display ("write operation (12) with parity enable (odd parity)") ;  
  send_frame('b1_1_10101010_0,'b1) ;
  send_frame('b1_0_00000111_0,'b1) ;
  send_frame('b1_1_11111100_0,'b1) ;
  
  //Test Cases with parity enable (odd parity)
  
  $display ("TEST CASE 5 read operation with parity enable (odd parity)") ;  
  send_frame('b1_1_10111011_0,'b1) ;
  send_frame('b1_0_00000100_0,'b1) ;
  CHECK_OUT_DIS('b1_0_00100000_0,'d5) ;
  
  $display ("TEST CASE 6 read operation with parity enable (odd parity)") ;  
  send_frame('b1_1_10111011_0,'b1) ;
  send_frame('b1_1_00000110_0,'b1) ;
  CHECK_OUT_DIS('b1_1_01100101_0,'d6) ;
  
  $display ("TEST CASE 7 ALU Operation with operands and with parity enable (odd parity)") ;  
  send_frame('b1_1_11001100_0,'b1) ;
  send_frame('b1_1_00001100_0,'b1) ;
  send_frame('b1_1_00001010_0,'b1) ;
  send_frame('b1_1_00000000_0,'b1) ;
  CHECK_OUT_DIS('b1_0_00010110_0,'d7) ;
  
  $display ("TEST CASE 8 ALU Operation without operands and with parity enable (odd parity)") ;  
  send_frame('b1_1_11011101_0,'b1) ;
  send_frame('b1_0_00000010_0,'b1) ;
  CHECK_OUT_DIS('b1_1_01111000_0,'d8) ;
  
  // Reset
  reset();
  
  
  $display ("write operation (13) (change configuration (parity disable ))") ;  
  send_frame('b1_0_10101010_0,'b1) ;
  send_frame('b1_1_00000010_0,'b1) ;
  send_frame('b1_1_100000_00_0,'b1) ;
   
  
  $display ("write operation (14) with parity disable") ;  
  send_frame('b1_10101010_0,'b0) ;
  send_frame('b1_00000000_0,'b0) ;
  send_frame('b1_00001111_0,'b0) ;
  
  $display ("write operation (15) with parity disable") ;  
  send_frame('b1_10101010_0,'b0) ;
  send_frame('b1_00000001_0,'b0) ;
  send_frame('b1_00010100_0,'b0) ;
  
  $display ("write operation (16) with parity disable") ;  
  send_frame('b1_10101010_0,'b0) ;
  send_frame('b1_00000100_0,'b0) ;
  send_frame('b1_00100000_0,'b0) ;
  
  $display ("write operation (17) with parity disable") ;  
  send_frame('b1_10101010_0,'b0) ;
  send_frame('b1_00000110_0,'b0) ;
  send_frame('b1_01100101_0,'b0) ;
  
  $display ("write operation (18) with parity disable") ;  
  send_frame('b1_10101010_0,'b0) ;
  send_frame('b1_00000111_0,'b0) ;
  send_frame('b1_11111100_0,'b0) ;
  
  //Test Cases with parity enable (odd parity)
  
  $display ("TEST CASE 9 read operation with parity disable") ;  
  send_frame('b1_10111011_0,'b0) ;
  send_frame('b1_00000100_0,'b0) ;
  CHECK_OUT_DIS('b1_00100000_0,'d9) ;
  
  $display ("TEST CASE 10 read operation with parity disable") ;  
  send_frame('b1_10111011_0,'b0) ;
  send_frame('b1_00000110_0,'b0) ;
  CHECK_OUT_DIS('b1_01100101_0,'d10) ;
  
  $display ("TEST CASE 11 ALU Operation with operands and with parity disable") ;  
  send_frame('b1_11001100_0,'b0) ;
  send_frame('b1_00001100_0,'b0) ;
  send_frame('b1_00001010_0,'b0) ;
  send_frame('b1_00000000_0,'b0) ;
  CHECK_OUT_DIS('b1_00010110_0,'d11) ;
  
  $display ("TEST CASE 12 ALU Operation without operands and with parity disable") ;  
  send_frame('b1_11011101_0,'b0) ;
  send_frame('b1_00000010_0,'b0) ;
  CHECK_OUT_DIS('b1_01111000_0,'d12) ;
  
  #(TX_CLK_PERIOD*20)
  $stop ;
 
 end  




task initialize ;
  begin
	RST_N_TB         = 'b1 ;
	UART_CLK_TB      = 'b0 ;
	REF_CLK_TB       = 'b0 ;    
	UART_RX_IN_TB    = 'b1 ;    
  end
endtask


task reset ;
  begin
	#(TX_CLK_PERIOD)
	RST_N_TB  = 'b0;           
	#(TX_CLK_PERIOD)
	RST_N_TB  = 'b1;
	#(TX_CLK_PERIOD) ;
  end
endtask

task send_frame;
input  reg   [10:0]   DATA_IN ;
input  reg            PAR_EN ;

reg     [10:0]    IN_EN; 
reg     [9:0]     IN_DIS; 
integer    i;

  begin
   if (PAR_EN) 
     begin
       IN_EN = DATA_IN ;
       // Print info at the beginning of the frame
       $display("TIME = %0t ps : Sending frame (PAR_EN=1) = %b",$time, IN_EN);

       for (i=0 ; i<11 ; i=i+1)
		     begin
		       @(posedge DUT.U0_UART.TX_CLK)
		       UART_RX_IN_TB = IN_EN[i] ;
		     end
     end 
   else
     begin
       IN_DIS = DATA_IN[9:0] ;
       // Print info at the beginning of the frame
       $display("TIME = %0t ps : Sending frame (PAR_EN=0) = %b",$time, IN_DIS);

       for (i=0 ; i<10 ; i=i+1)
		     begin
		       @(posedge DUT.U0_UART.TX_CLK)
		       UART_RX_IN_TB = IN_DIS[i] ;
		     end
     end  
  end
endtask


task CHECK_OUT_EN ;
 input   reg   [10:0]  EXPEC_TX_OUT;
 input   integer       OP_N;         // operation number 
 
 reg     [10:0]    CHK_OUT_EN;   // PAR_EN = 1 
 integer      i;

 begin  
     @(posedge DUT.U0_UART.TX_OUT_V)
      begin
       for (i=0 ; i<11 ; i=i+1)
		    begin
		     @(negedge DUT.U0_UART.TX_CLK)
		     begin
		     CHK_OUT_EN[i] = UART_TX_O_TB ;
		     end
		    end
		    if(CHK_OUT_EN == EXPEC_TX_OUT) 
          begin
           $display("TEST CASE %0d is Passed",OP_N);
          end
        else
          begin
           $display("TEST CASE %0d is failed",OP_N);
          end
        end 
 end
endtask 

task CHECK_OUT_DIS ;
 input   reg   [9:0]  EXPEC_TX_OUT;
 input   integer       OP_N;         // operation number 
 
 reg     [9:0]    CHK_OUT_DIS;   // PAR_EN = 0 
 integer      i;

 begin  
     @(posedge DUT.U0_UART.TX_OUT_V)
      begin
       for (i=0 ; i<10 ; i=i+1)
		    begin
		     @(negedge DUT.U0_UART.TX_CLK)
		     begin
		     CHK_OUT_DIS[i] = UART_TX_O_TB ;
		     end
		    end
		    if(CHK_OUT_DIS == EXPEC_TX_OUT) 
          begin
           $display("TEST CASE %0d is Passed",OP_N);
          end
        else
          begin
           $display("TEST CASE %0d is failed",OP_N);
          end
        end  
 end
endtask 

endmodule

