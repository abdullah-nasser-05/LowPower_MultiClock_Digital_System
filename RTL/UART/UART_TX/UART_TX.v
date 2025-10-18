
module UART_TX (
input     wire    [7:0]   P_DATA,
input     wire            DATA_VALID,
input     wire            PAR_EN,
input     wire            PAR_TYP,
input     wire            CLK,
input     wire            RST,
output    wire            TX_OUT,
output    wire            busy
);

wire         ser_done ;
wire         ser_en ;
wire  [1:0]  mux_sel ;
wire         ser_data ;
wire         par_bit ;




FSM  U1 (
.DATA_VALID(DATA_VALID),
.PAR_EN(PAR_EN),
.ser_done(ser_done),
.CLK(CLK),
.RST(RST),
.mux_sel(mux_sel),
.ser_en(ser_en),
.busy(busy)
);


MUX  U2 (
.mux_sel(mux_sel),
.start_bit(1'b0),
.stop_bit(1'b1),
.ser_data(ser_data),
.par_bit(par_bit),
.TX_OUT(TX_OUT)
);


Parity_Calc  U3 (
.P_DATA(P_DATA),
.DATA_VALID(DATA_VALID),
.PAR_TYP(PAR_TYP),
.busy(busy),
.CLK(CLK),
.RST(RST),
.par_bit(par_bit)
);


Serializer  U4 (
.P_DATA(P_DATA),
.DATA_VALID(DATA_VALID),
.ser_en(ser_en),
.CLK(CLK),
.RST(RST),
.ser_done(ser_done),
.ser_data(ser_data)
);



endmodule