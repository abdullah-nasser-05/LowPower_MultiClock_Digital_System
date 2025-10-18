
module FIFO_TOP #(parameter DATA_WIDTH = 8 )
(
input       wire    [DATA_WIDTH-1:0]     WR_DATA,
input       wire                         W_INC,
input       wire                         W_CLK,
input       wire                         W_RST,
input       wire                         R_INC,
input       wire                         R_CLK,
input       wire                         R_RST,
output      wire    [DATA_WIDTH-1:0]     RD_DATA,
output      wire                         FULL,
output      wire                         EMPTY
);


wire    [2:0]    w_addr;
wire    [2:0]    r_addr;
wire    [3:0]    w_ptr_async;
wire    [3:0]    r_ptr_async;
wire    [3:0]    w_ptr_sync;
wire    [3:0]    r_ptr_sync;



FIFO_MEMORY  U1 (
.WR_DATA(WR_DATA),
.W_INC(W_INC),
.W_FULL(FULL),
.W_ADDR(w_addr),
.R_ADDR(r_addr),
.CLK(W_CLK),
.RST(W_RST),
.RD_DATA(RD_DATA)
);


FIFO_RPTR_EMPTY U2 (
.W_PTR(w_ptr_sync),
.R_INC(R_INC),
.R_CLK(R_CLK),
.R_RST(R_RST),
.R_ADDR(r_addr),
.R_PTR(r_ptr_async),
.R_EMPTY(EMPTY)
);


DATA_SYNC_FIFO U3 (
.ASYNC_DATA(w_ptr_async),
.CLK(R_CLK),
.RST(R_RST),
.SYNC_DATA(w_ptr_sync)
);


FIFO_WPTR_FULL U4 (
.R_PTR(r_ptr_sync),
.W_INC(W_INC),
.W_CLK(W_CLK),
.W_RST(W_RST),
.W_ADDR(w_addr),
.W_PTR(w_ptr_async),
.W_FULL(FULL)
);


DATA_SYNC_FIFO U5 (
.ASYNC_DATA(r_ptr_async),
.CLK(W_CLK),
.RST(W_RST),
.SYNC_DATA(r_ptr_sync)
);


endmodule