
module DATA_SYNC #(parameter NUM_STAGES = 2 , parameter BUS_WIDTH = 8)
(
input     wire     [BUS_WIDTH-1:0]    unsync_bus,
input     wire                        bus_enable,
input     wire                        CLK,
input     wire                        RST,
output    reg      [BUS_WIDTH-1:0]    sync_bus,
output    reg                         enable_pulse
);

reg   [NUM_STAGES-1:0]   bit_sync;
reg                      enable_out;
wire                     enable_gen;

// output data
 always @ (posedge CLK or negedge RST)
  begin
   if (!RST)
     begin
       sync_bus <= 'b0;
     end
   else if (enable_gen)
     begin
       sync_bus <= unsync_bus;
     end  
  end
 
 // Pulse Gen
 assign enable_gen = (~enable_out && bit_sync[NUM_STAGES-1]);
 
 
 always @ (posedge CLK or negedge RST)
  begin
   if (!RST)
     begin
       enable_out <= 'b0;
     end
   else
     begin
       enable_out <= bit_sync[NUM_STAGES-1];
     end  
  end
 
 // output enable pulse 
 always @ (posedge CLK or negedge RST)
  begin
   if (!RST)
     begin
       enable_pulse <= 'b0;
     end
   else
     begin
       enable_pulse <= enable_gen;
     end  
  end
 
 // bit sync
 always @ (posedge CLK or negedge RST)
  begin
   if (!RST)
     begin
       bit_sync <= 'b0;
     end
   else
     begin
       bit_sync <= {bit_sync[NUM_STAGES-2:0],bus_enable};
     end  
  end
 endmodule