
module Serializer (
input    wire    [7:0]   P_DATA,
input    wire            DATA_VALID,
input    wire            ser_en,
input    wire            CLK,
input    wire            RST,
output   reg             ser_done,
output   reg             ser_data
);

reg   [7:0]    para_data ;
reg   [2:0]    ser_counter ;

always  @ (posedge CLK or negedge RST)
 begin
   if (!RST)
     begin
       para_data <= 'b0 ;
       ser_data <= 'b0 ;
       ser_done <= 'b0 ;
       ser_counter <= 'b0 ;
     end  
   else
     begin
       if (DATA_VALID && ~ser_en)
        begin
          para_data <= P_DATA ; 
        end 
       else if (ser_en)
        begin
          ser_data <= para_data[ser_counter] ;
          ser_counter <= ser_counter + 'b1 ;
		      if (ser_counter == 'b111)
			     begin
			      ser_done <= 'b1 ;
			      ser_counter <= 'b0 ;
			     end
        end 
       else
        begin
			      ser_done <= 'b0 ;
			      ser_counter <= 'b0 ;
			  end 
     end
  end   
endmodule  
