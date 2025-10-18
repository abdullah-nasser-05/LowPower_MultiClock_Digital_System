/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sat Sep 27 11:37:55 2025
/////////////////////////////////////////////////////////////


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0, n1, n2;
  assign N0 = SEL;

  MX2X2M U1 ( .A(n2), .B(IN_1), .S0(N0), .Y(OUT) );
  INVXLM U2 ( .A(IN_0), .Y(n1) );
  INVXLM U3 ( .A(n1), .Y(n2) );
endmodule


module RST_SYNC_NUM_STAGES2_test_0 ( CLK, RST, SYNC_RST, test_si, test_se );
  input CLK, RST, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
  SDFFRQX1M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module RST_SYNC_NUM_STAGES2_test_1 ( CLK, RST, SYNC_RST, test_si, test_se );
  input CLK, RST, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
  SDFFRQX1M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 ( unsync_bus, bus_enable, CLK, 
        RST, sync_bus, enable_pulse, test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse;
  wire   enable_out, n1, n3, n5, n7, n9, n11, n13, n15, n17, n34;
  wire   [1:0] bit_sync;

  SDFFRQX1M \bit_sync_reg[1]  ( .D(bit_sync[0]), .SI(bit_sync[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(bit_sync[1]) );
  SDFFRQX1M enable_out_reg ( .D(bit_sync[1]), .SI(bit_sync[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(enable_out) );
  SDFFRQX1M enable_pulse_reg ( .D(n34), .SI(enable_out), .SE(test_se), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  SDFFRQX1M \bit_sync_reg[0]  ( .D(bus_enable), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(bit_sync[0]) );
  SDFFRQX1M \sync_bus_reg[7]  ( .D(n3), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX1M \sync_bus_reg[6]  ( .D(n5), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX1M \sync_bus_reg[5]  ( .D(n7), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX1M \sync_bus_reg[4]  ( .D(n9), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX1M \sync_bus_reg[3]  ( .D(n11), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX1M \sync_bus_reg[2]  ( .D(n13), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX1M \sync_bus_reg[1]  ( .D(n15), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX1M \sync_bus_reg[0]  ( .D(n17), .SI(enable_pulse), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[0]) );
  INVX2M U27 ( .A(n1), .Y(n34) );
  NAND2BX2M U28 ( .AN(enable_out), .B(bit_sync[1]), .Y(n1) );
  AO22X1M U29 ( .A0(unsync_bus[7]), .A1(n34), .B0(sync_bus[7]), .B1(n1), .Y(n3) );
  AO22X1M U30 ( .A0(unsync_bus[6]), .A1(n34), .B0(sync_bus[6]), .B1(n1), .Y(n5) );
  AO22X1M U31 ( .A0(unsync_bus[5]), .A1(n34), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U32 ( .A0(unsync_bus[4]), .A1(n34), .B0(sync_bus[4]), .B1(n1), .Y(n9) );
  AO22X1M U33 ( .A0(unsync_bus[3]), .A1(n34), .B0(sync_bus[3]), .B1(n1), .Y(
        n11) );
  AO22X1M U34 ( .A0(unsync_bus[2]), .A1(n34), .B0(sync_bus[2]), .B1(n1), .Y(
        n13) );
  AO22X1M U35 ( .A0(unsync_bus[1]), .A1(n34), .B0(sync_bus[1]), .B1(n1), .Y(
        n15) );
  AO22X1M U36 ( .A0(unsync_bus[0]), .A1(n34), .B0(sync_bus[0]), .B1(n1), .Y(
        n17) );
endmodule


module FIFO_MEMORY_test_1 ( WR_DATA, W_INC, W_FULL, W_ADDR, R_ADDR, CLK, RST, 
        RD_DATA, test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] WR_DATA;
  input [2:0] W_ADDR;
  input [2:0] R_ADDR;
  output [7:0] RD_DATA;
  input W_INC, W_FULL, CLK, RST, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N10, N11, N12, \MEM[7][7] , \MEM[7][6] , \MEM[7][5] , \MEM[7][4] ,
         \MEM[7][3] , \MEM[7][2] , \MEM[7][1] , \MEM[7][0] , \MEM[6][7] ,
         \MEM[6][6] , \MEM[6][5] , \MEM[6][4] , \MEM[6][3] , \MEM[6][2] ,
         \MEM[6][1] , \MEM[6][0] , \MEM[5][7] , \MEM[5][6] , \MEM[5][5] ,
         \MEM[5][4] , \MEM[5][3] , \MEM[5][2] , \MEM[5][1] , \MEM[5][0] ,
         \MEM[4][7] , \MEM[4][6] , \MEM[4][5] , \MEM[4][4] , \MEM[4][3] ,
         \MEM[4][2] , \MEM[4][1] , \MEM[4][0] , \MEM[3][7] , \MEM[3][6] ,
         \MEM[3][5] , \MEM[3][4] , \MEM[3][3] , \MEM[3][2] , \MEM[3][1] ,
         \MEM[3][0] , \MEM[2][7] , \MEM[2][6] , \MEM[2][5] , \MEM[2][4] ,
         \MEM[2][3] , \MEM[2][2] , \MEM[2][1] , \MEM[2][0] , \MEM[1][7] ,
         \MEM[1][6] , \MEM[1][5] , \MEM[1][4] , \MEM[1][3] , \MEM[1][2] ,
         \MEM[1][1] , \MEM[1][0] , \MEM[0][7] , \MEM[0][6] , \MEM[0][5] ,
         \MEM[0][4] , \MEM[0][3] , \MEM[0][2] , \MEM[0][1] , \MEM[0][0] , n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n184;
  assign N10 = R_ADDR[0];
  assign N11 = R_ADDR[1];
  assign N12 = R_ADDR[2];
  assign test_so2 = \MEM[7][7] ;
  assign test_so1 = \MEM[3][0] ;

  SDFFRQX2M \MEM_reg[5][7]  ( .D(n133), .SI(\MEM[5][6] ), .SE(n184), .CK(CLK), 
        .RN(n166), .Q(\MEM[5][7] ) );
  SDFFRQX2M \MEM_reg[5][6]  ( .D(n132), .SI(\MEM[5][5] ), .SE(n184), .CK(CLK), 
        .RN(n166), .Q(\MEM[5][6] ) );
  SDFFRQX2M \MEM_reg[5][5]  ( .D(n131), .SI(\MEM[5][4] ), .SE(n184), .CK(CLK), 
        .RN(n166), .Q(\MEM[5][5] ) );
  SDFFRQX2M \MEM_reg[5][4]  ( .D(n130), .SI(\MEM[5][3] ), .SE(n184), .CK(CLK), 
        .RN(n166), .Q(\MEM[5][4] ) );
  SDFFRQX2M \MEM_reg[5][3]  ( .D(n129), .SI(\MEM[5][2] ), .SE(n184), .CK(CLK), 
        .RN(n166), .Q(\MEM[5][3] ) );
  SDFFRQX2M \MEM_reg[5][2]  ( .D(n128), .SI(\MEM[5][1] ), .SE(n184), .CK(CLK), 
        .RN(n166), .Q(\MEM[5][2] ) );
  SDFFRQX2M \MEM_reg[5][1]  ( .D(n127), .SI(\MEM[5][0] ), .SE(n184), .CK(CLK), 
        .RN(n166), .Q(\MEM[5][1] ) );
  SDFFRQX2M \MEM_reg[5][0]  ( .D(n126), .SI(\MEM[4][7] ), .SE(n184), .CK(CLK), 
        .RN(n166), .Q(\MEM[5][0] ) );
  SDFFRQX2M \MEM_reg[1][7]  ( .D(n101), .SI(\MEM[1][6] ), .SE(n184), .CK(CLK), 
        .RN(n169), .Q(\MEM[1][7] ) );
  SDFFRQX2M \MEM_reg[1][6]  ( .D(n100), .SI(\MEM[1][5] ), .SE(n184), .CK(CLK), 
        .RN(n169), .Q(\MEM[1][6] ) );
  SDFFRQX2M \MEM_reg[1][5]  ( .D(n99), .SI(\MEM[1][4] ), .SE(n184), .CK(CLK), 
        .RN(n169), .Q(\MEM[1][5] ) );
  SDFFRQX2M \MEM_reg[1][4]  ( .D(n98), .SI(\MEM[1][3] ), .SE(n184), .CK(CLK), 
        .RN(n169), .Q(\MEM[1][4] ) );
  SDFFRQX2M \MEM_reg[1][3]  ( .D(n97), .SI(\MEM[1][2] ), .SE(n184), .CK(CLK), 
        .RN(n169), .Q(\MEM[1][3] ) );
  SDFFRQX2M \MEM_reg[1][2]  ( .D(n96), .SI(\MEM[1][1] ), .SE(n184), .CK(CLK), 
        .RN(n169), .Q(\MEM[1][2] ) );
  SDFFRQX2M \MEM_reg[1][1]  ( .D(n95), .SI(\MEM[1][0] ), .SE(n184), .CK(CLK), 
        .RN(n169), .Q(\MEM[1][1] ) );
  SDFFRQX2M \MEM_reg[1][0]  ( .D(n94), .SI(\MEM[0][7] ), .SE(n184), .CK(CLK), 
        .RN(n169), .Q(\MEM[1][0] ) );
  SDFFRQX2M \MEM_reg[7][7]  ( .D(n149), .SI(\MEM[7][6] ), .SE(n184), .CK(CLK), 
        .RN(n165), .Q(\MEM[7][7] ) );
  SDFFRQX2M \MEM_reg[7][6]  ( .D(n148), .SI(\MEM[7][5] ), .SE(n184), .CK(CLK), 
        .RN(n165), .Q(\MEM[7][6] ) );
  SDFFRQX2M \MEM_reg[7][5]  ( .D(n147), .SI(\MEM[7][4] ), .SE(n184), .CK(CLK), 
        .RN(n165), .Q(\MEM[7][5] ) );
  SDFFRQX2M \MEM_reg[7][4]  ( .D(n146), .SI(\MEM[7][3] ), .SE(n184), .CK(CLK), 
        .RN(n165), .Q(\MEM[7][4] ) );
  SDFFRQX2M \MEM_reg[7][3]  ( .D(n145), .SI(\MEM[7][2] ), .SE(n184), .CK(CLK), 
        .RN(n165), .Q(\MEM[7][3] ) );
  SDFFRQX2M \MEM_reg[7][2]  ( .D(n144), .SI(\MEM[7][1] ), .SE(n184), .CK(CLK), 
        .RN(n165), .Q(\MEM[7][2] ) );
  SDFFRQX2M \MEM_reg[7][1]  ( .D(n143), .SI(\MEM[7][0] ), .SE(n184), .CK(CLK), 
        .RN(n165), .Q(\MEM[7][1] ) );
  SDFFRQX2M \MEM_reg[7][0]  ( .D(n142), .SI(\MEM[6][7] ), .SE(n184), .CK(CLK), 
        .RN(n165), .Q(\MEM[7][0] ) );
  SDFFRQX2M \MEM_reg[3][7]  ( .D(n117), .SI(\MEM[3][6] ), .SE(n184), .CK(CLK), 
        .RN(n167), .Q(\MEM[3][7] ) );
  SDFFRQX2M \MEM_reg[3][6]  ( .D(n116), .SI(\MEM[3][5] ), .SE(n184), .CK(CLK), 
        .RN(n167), .Q(\MEM[3][6] ) );
  SDFFRQX2M \MEM_reg[3][5]  ( .D(n115), .SI(\MEM[3][4] ), .SE(n184), .CK(CLK), 
        .RN(n167), .Q(\MEM[3][5] ) );
  SDFFRQX2M \MEM_reg[3][4]  ( .D(n114), .SI(\MEM[3][3] ), .SE(n184), .CK(CLK), 
        .RN(n167), .Q(\MEM[3][4] ) );
  SDFFRQX2M \MEM_reg[3][3]  ( .D(n113), .SI(\MEM[3][2] ), .SE(n184), .CK(CLK), 
        .RN(n168), .Q(\MEM[3][3] ) );
  SDFFRQX2M \MEM_reg[3][2]  ( .D(n112), .SI(\MEM[3][1] ), .SE(n184), .CK(CLK), 
        .RN(n168), .Q(\MEM[3][2] ) );
  SDFFRQX2M \MEM_reg[3][1]  ( .D(n111), .SI(test_si2), .SE(n184), .CK(CLK), 
        .RN(n168), .Q(\MEM[3][1] ) );
  SDFFRQX2M \MEM_reg[3][0]  ( .D(n110), .SI(\MEM[2][7] ), .SE(n184), .CK(CLK), 
        .RN(n168), .Q(\MEM[3][0] ) );
  SDFFRQX2M \MEM_reg[6][7]  ( .D(n141), .SI(\MEM[6][6] ), .SE(n184), .CK(CLK), 
        .RN(n165), .Q(\MEM[6][7] ) );
  SDFFRQX2M \MEM_reg[6][6]  ( .D(n140), .SI(\MEM[6][5] ), .SE(test_se), .CK(
        CLK), .RN(n165), .Q(\MEM[6][6] ) );
  SDFFRQX2M \MEM_reg[6][5]  ( .D(n139), .SI(\MEM[6][4] ), .SE(test_se), .CK(
        CLK), .RN(n165), .Q(\MEM[6][5] ) );
  SDFFRQX2M \MEM_reg[6][4]  ( .D(n138), .SI(\MEM[6][3] ), .SE(test_se), .CK(
        CLK), .RN(n165), .Q(\MEM[6][4] ) );
  SDFFRQX2M \MEM_reg[6][3]  ( .D(n137), .SI(\MEM[6][2] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\MEM[6][3] ) );
  SDFFRQX2M \MEM_reg[6][2]  ( .D(n136), .SI(\MEM[6][1] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\MEM[6][2] ) );
  SDFFRQX2M \MEM_reg[6][1]  ( .D(n135), .SI(\MEM[6][0] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\MEM[6][1] ) );
  SDFFRQX2M \MEM_reg[6][0]  ( .D(n134), .SI(\MEM[5][7] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\MEM[6][0] ) );
  SDFFRQX2M \MEM_reg[2][7]  ( .D(n109), .SI(\MEM[2][6] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\MEM[2][7] ) );
  SDFFRQX2M \MEM_reg[2][6]  ( .D(n108), .SI(\MEM[2][5] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\MEM[2][6] ) );
  SDFFRQX2M \MEM_reg[2][5]  ( .D(n107), .SI(\MEM[2][4] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\MEM[2][5] ) );
  SDFFRQX2M \MEM_reg[2][4]  ( .D(n106), .SI(\MEM[2][3] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\MEM[2][4] ) );
  SDFFRQX2M \MEM_reg[2][3]  ( .D(n105), .SI(\MEM[2][2] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\MEM[2][3] ) );
  SDFFRQX2M \MEM_reg[2][2]  ( .D(n104), .SI(\MEM[2][1] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\MEM[2][2] ) );
  SDFFRQX2M \MEM_reg[2][1]  ( .D(n103), .SI(\MEM[2][0] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\MEM[2][1] ) );
  SDFFRQX2M \MEM_reg[2][0]  ( .D(n102), .SI(\MEM[1][7] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\MEM[2][0] ) );
  SDFFRQX2M \MEM_reg[4][7]  ( .D(n125), .SI(\MEM[4][6] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\MEM[4][7] ) );
  SDFFRQX2M \MEM_reg[4][6]  ( .D(n124), .SI(\MEM[4][5] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\MEM[4][6] ) );
  SDFFRQX2M \MEM_reg[4][5]  ( .D(n123), .SI(\MEM[4][4] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\MEM[4][5] ) );
  SDFFRQX2M \MEM_reg[4][4]  ( .D(n122), .SI(\MEM[4][3] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\MEM[4][4] ) );
  SDFFRQX2M \MEM_reg[4][3]  ( .D(n121), .SI(\MEM[4][2] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\MEM[4][3] ) );
  SDFFRQX2M \MEM_reg[4][2]  ( .D(n120), .SI(\MEM[4][1] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\MEM[4][2] ) );
  SDFFRQX2M \MEM_reg[4][1]  ( .D(n119), .SI(\MEM[4][0] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\MEM[4][1] ) );
  SDFFRQX2M \MEM_reg[4][0]  ( .D(n118), .SI(\MEM[3][7] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\MEM[4][0] ) );
  SDFFRQX2M \MEM_reg[0][7]  ( .D(n93), .SI(\MEM[0][6] ), .SE(test_se), .CK(CLK), .RN(n169), .Q(\MEM[0][7] ) );
  SDFFRQX2M \MEM_reg[0][6]  ( .D(n92), .SI(\MEM[0][5] ), .SE(test_se), .CK(CLK), .RN(n169), .Q(\MEM[0][6] ) );
  SDFFRQX2M \MEM_reg[0][5]  ( .D(n91), .SI(\MEM[0][4] ), .SE(test_se), .CK(CLK), .RN(n169), .Q(\MEM[0][5] ) );
  SDFFRQX2M \MEM_reg[0][4]  ( .D(n90), .SI(\MEM[0][3] ), .SE(test_se), .CK(CLK), .RN(n169), .Q(\MEM[0][4] ) );
  SDFFRQX2M \MEM_reg[0][3]  ( .D(n89), .SI(\MEM[0][2] ), .SE(test_se), .CK(CLK), .RN(n170), .Q(\MEM[0][3] ) );
  SDFFRQX2M \MEM_reg[0][2]  ( .D(n88), .SI(\MEM[0][1] ), .SE(test_se), .CK(CLK), .RN(n170), .Q(\MEM[0][2] ) );
  SDFFRQX2M \MEM_reg[0][1]  ( .D(n87), .SI(\MEM[0][0] ), .SE(test_se), .CK(CLK), .RN(n170), .Q(\MEM[0][1] ) );
  SDFFRQX2M \MEM_reg[0][0]  ( .D(n86), .SI(test_si1), .SE(test_se), .CK(CLK), 
        .RN(n170), .Q(\MEM[0][0] ) );
  BUFX2M U66 ( .A(n83), .Y(n159) );
  BUFX2M U67 ( .A(n77), .Y(n162) );
  BUFX2M U68 ( .A(n78), .Y(n161) );
  BUFX2M U69 ( .A(n79), .Y(n160) );
  BUFX2M U70 ( .A(n84), .Y(n158) );
  BUFX2M U71 ( .A(n85), .Y(n157) );
  BUFX2M U72 ( .A(n164), .Y(n169) );
  BUFX2M U73 ( .A(n164), .Y(n168) );
  BUFX2M U74 ( .A(n163), .Y(n167) );
  BUFX2M U75 ( .A(n163), .Y(n166) );
  BUFX2M U76 ( .A(n163), .Y(n165) );
  BUFX2M U77 ( .A(n164), .Y(n170) );
  NOR2BX2M U78 ( .AN(W_INC), .B(W_FULL), .Y(n80) );
  BUFX2M U79 ( .A(RST), .Y(n164) );
  BUFX2M U80 ( .A(RST), .Y(n163) );
  NAND3X2M U81 ( .A(n179), .B(n180), .C(n82), .Y(n81) );
  NAND3X2M U82 ( .A(n179), .B(n180), .C(n76), .Y(n75) );
  NOR2BX2M U83 ( .AN(n80), .B(W_ADDR[2]), .Y(n76) );
  OAI2BB2X1M U84 ( .B0(n75), .B1(n178), .A0N(\MEM[0][0] ), .A1N(n75), .Y(n86)
         );
  OAI2BB2X1M U85 ( .B0(n75), .B1(n177), .A0N(\MEM[0][1] ), .A1N(n75), .Y(n87)
         );
  OAI2BB2X1M U86 ( .B0(n75), .B1(n176), .A0N(\MEM[0][2] ), .A1N(n75), .Y(n88)
         );
  OAI2BB2X1M U87 ( .B0(n75), .B1(n175), .A0N(\MEM[0][3] ), .A1N(n75), .Y(n89)
         );
  OAI2BB2X1M U88 ( .B0(n75), .B1(n174), .A0N(\MEM[0][4] ), .A1N(n75), .Y(n90)
         );
  OAI2BB2X1M U89 ( .B0(n75), .B1(n173), .A0N(\MEM[0][5] ), .A1N(n75), .Y(n91)
         );
  OAI2BB2X1M U90 ( .B0(n75), .B1(n172), .A0N(\MEM[0][6] ), .A1N(n75), .Y(n92)
         );
  OAI2BB2X1M U91 ( .B0(n75), .B1(n171), .A0N(\MEM[0][7] ), .A1N(n75), .Y(n93)
         );
  OAI2BB2X1M U92 ( .B0(n178), .B1(n81), .A0N(\MEM[4][0] ), .A1N(n81), .Y(n118)
         );
  OAI2BB2X1M U93 ( .B0(n177), .B1(n81), .A0N(\MEM[4][1] ), .A1N(n81), .Y(n119)
         );
  OAI2BB2X1M U94 ( .B0(n176), .B1(n81), .A0N(\MEM[4][2] ), .A1N(n81), .Y(n120)
         );
  OAI2BB2X1M U95 ( .B0(n175), .B1(n81), .A0N(\MEM[4][3] ), .A1N(n81), .Y(n121)
         );
  OAI2BB2X1M U96 ( .B0(n174), .B1(n81), .A0N(\MEM[4][4] ), .A1N(n81), .Y(n122)
         );
  OAI2BB2X1M U97 ( .B0(n173), .B1(n81), .A0N(\MEM[4][5] ), .A1N(n81), .Y(n123)
         );
  OAI2BB2X1M U98 ( .B0(n172), .B1(n81), .A0N(\MEM[4][6] ), .A1N(n81), .Y(n124)
         );
  OAI2BB2X1M U99 ( .B0(n171), .B1(n81), .A0N(\MEM[4][7] ), .A1N(n81), .Y(n125)
         );
  OAI2BB2X1M U100 ( .B0(n178), .B1(n162), .A0N(\MEM[1][0] ), .A1N(n162), .Y(
        n94) );
  OAI2BB2X1M U101 ( .B0(n177), .B1(n162), .A0N(\MEM[1][1] ), .A1N(n162), .Y(
        n95) );
  OAI2BB2X1M U102 ( .B0(n176), .B1(n162), .A0N(\MEM[1][2] ), .A1N(n162), .Y(
        n96) );
  OAI2BB2X1M U103 ( .B0(n175), .B1(n162), .A0N(\MEM[1][3] ), .A1N(n162), .Y(
        n97) );
  OAI2BB2X1M U104 ( .B0(n174), .B1(n162), .A0N(\MEM[1][4] ), .A1N(n162), .Y(
        n98) );
  OAI2BB2X1M U105 ( .B0(n173), .B1(n162), .A0N(\MEM[1][5] ), .A1N(n162), .Y(
        n99) );
  OAI2BB2X1M U106 ( .B0(n172), .B1(n162), .A0N(\MEM[1][6] ), .A1N(n162), .Y(
        n100) );
  OAI2BB2X1M U107 ( .B0(n171), .B1(n162), .A0N(\MEM[1][7] ), .A1N(n162), .Y(
        n101) );
  OAI2BB2X1M U108 ( .B0(n178), .B1(n161), .A0N(\MEM[2][0] ), .A1N(n161), .Y(
        n102) );
  OAI2BB2X1M U109 ( .B0(n177), .B1(n161), .A0N(\MEM[2][1] ), .A1N(n161), .Y(
        n103) );
  OAI2BB2X1M U110 ( .B0(n176), .B1(n161), .A0N(\MEM[2][2] ), .A1N(n161), .Y(
        n104) );
  OAI2BB2X1M U111 ( .B0(n175), .B1(n161), .A0N(\MEM[2][3] ), .A1N(n161), .Y(
        n105) );
  OAI2BB2X1M U112 ( .B0(n174), .B1(n161), .A0N(\MEM[2][4] ), .A1N(n161), .Y(
        n106) );
  OAI2BB2X1M U113 ( .B0(n173), .B1(n161), .A0N(\MEM[2][5] ), .A1N(n161), .Y(
        n107) );
  OAI2BB2X1M U114 ( .B0(n172), .B1(n161), .A0N(\MEM[2][6] ), .A1N(n161), .Y(
        n108) );
  OAI2BB2X1M U115 ( .B0(n171), .B1(n161), .A0N(\MEM[2][7] ), .A1N(n161), .Y(
        n109) );
  OAI2BB2X1M U116 ( .B0(n178), .B1(n160), .A0N(\MEM[3][0] ), .A1N(n160), .Y(
        n110) );
  OAI2BB2X1M U117 ( .B0(n177), .B1(n160), .A0N(\MEM[3][1] ), .A1N(n160), .Y(
        n111) );
  OAI2BB2X1M U118 ( .B0(n176), .B1(n160), .A0N(\MEM[3][2] ), .A1N(n160), .Y(
        n112) );
  OAI2BB2X1M U119 ( .B0(n175), .B1(n160), .A0N(\MEM[3][3] ), .A1N(n160), .Y(
        n113) );
  OAI2BB2X1M U120 ( .B0(n174), .B1(n160), .A0N(\MEM[3][4] ), .A1N(n160), .Y(
        n114) );
  OAI2BB2X1M U121 ( .B0(n173), .B1(n160), .A0N(\MEM[3][5] ), .A1N(n160), .Y(
        n115) );
  OAI2BB2X1M U122 ( .B0(n172), .B1(n160), .A0N(\MEM[3][6] ), .A1N(n160), .Y(
        n116) );
  OAI2BB2X1M U123 ( .B0(n171), .B1(n160), .A0N(\MEM[3][7] ), .A1N(n160), .Y(
        n117) );
  OAI2BB2X1M U124 ( .B0(n178), .B1(n159), .A0N(\MEM[5][0] ), .A1N(n159), .Y(
        n126) );
  OAI2BB2X1M U125 ( .B0(n177), .B1(n159), .A0N(\MEM[5][1] ), .A1N(n159), .Y(
        n127) );
  OAI2BB2X1M U126 ( .B0(n176), .B1(n159), .A0N(\MEM[5][2] ), .A1N(n159), .Y(
        n128) );
  OAI2BB2X1M U127 ( .B0(n175), .B1(n159), .A0N(\MEM[5][3] ), .A1N(n159), .Y(
        n129) );
  OAI2BB2X1M U128 ( .B0(n174), .B1(n159), .A0N(\MEM[5][4] ), .A1N(n159), .Y(
        n130) );
  OAI2BB2X1M U129 ( .B0(n173), .B1(n159), .A0N(\MEM[5][5] ), .A1N(n159), .Y(
        n131) );
  OAI2BB2X1M U130 ( .B0(n172), .B1(n159), .A0N(\MEM[5][6] ), .A1N(n159), .Y(
        n132) );
  OAI2BB2X1M U131 ( .B0(n171), .B1(n159), .A0N(\MEM[5][7] ), .A1N(n159), .Y(
        n133) );
  OAI2BB2X1M U132 ( .B0(n178), .B1(n158), .A0N(\MEM[6][0] ), .A1N(n158), .Y(
        n134) );
  OAI2BB2X1M U133 ( .B0(n177), .B1(n158), .A0N(\MEM[6][1] ), .A1N(n158), .Y(
        n135) );
  OAI2BB2X1M U134 ( .B0(n176), .B1(n158), .A0N(\MEM[6][2] ), .A1N(n158), .Y(
        n136) );
  OAI2BB2X1M U135 ( .B0(n175), .B1(n158), .A0N(\MEM[6][3] ), .A1N(n158), .Y(
        n137) );
  OAI2BB2X1M U136 ( .B0(n174), .B1(n158), .A0N(\MEM[6][4] ), .A1N(n158), .Y(
        n138) );
  OAI2BB2X1M U137 ( .B0(n173), .B1(n158), .A0N(\MEM[6][5] ), .A1N(n158), .Y(
        n139) );
  OAI2BB2X1M U138 ( .B0(n172), .B1(n158), .A0N(\MEM[6][6] ), .A1N(n158), .Y(
        n140) );
  OAI2BB2X1M U139 ( .B0(n171), .B1(n158), .A0N(\MEM[6][7] ), .A1N(n158), .Y(
        n141) );
  OAI2BB2X1M U140 ( .B0(n178), .B1(n157), .A0N(\MEM[7][0] ), .A1N(n157), .Y(
        n142) );
  OAI2BB2X1M U141 ( .B0(n177), .B1(n157), .A0N(\MEM[7][1] ), .A1N(n157), .Y(
        n143) );
  OAI2BB2X1M U142 ( .B0(n176), .B1(n157), .A0N(\MEM[7][2] ), .A1N(n157), .Y(
        n144) );
  OAI2BB2X1M U143 ( .B0(n175), .B1(n157), .A0N(\MEM[7][3] ), .A1N(n157), .Y(
        n145) );
  OAI2BB2X1M U144 ( .B0(n174), .B1(n157), .A0N(\MEM[7][4] ), .A1N(n157), .Y(
        n146) );
  OAI2BB2X1M U145 ( .B0(n173), .B1(n157), .A0N(\MEM[7][5] ), .A1N(n157), .Y(
        n147) );
  OAI2BB2X1M U146 ( .B0(n172), .B1(n157), .A0N(\MEM[7][6] ), .A1N(n157), .Y(
        n148) );
  OAI2BB2X1M U147 ( .B0(n171), .B1(n157), .A0N(\MEM[7][7] ), .A1N(n157), .Y(
        n149) );
  AND2X2M U148 ( .A(W_ADDR[2]), .B(n80), .Y(n82) );
  NAND3X2M U149 ( .A(n76), .B(n180), .C(W_ADDR[0]), .Y(n77) );
  NAND3X2M U150 ( .A(n76), .B(n179), .C(W_ADDR[1]), .Y(n78) );
  NAND3X2M U151 ( .A(W_ADDR[0]), .B(n76), .C(W_ADDR[1]), .Y(n79) );
  NAND3X2M U152 ( .A(W_ADDR[1]), .B(W_ADDR[0]), .C(n82), .Y(n85) );
  NAND3X2M U153 ( .A(W_ADDR[0]), .B(n180), .C(n82), .Y(n83) );
  NAND3X2M U154 ( .A(W_ADDR[1]), .B(n179), .C(n82), .Y(n84) );
  BUFX4M U155 ( .A(N10), .Y(n156) );
  INVX2M U156 ( .A(WR_DATA[0]), .Y(n178) );
  INVX2M U157 ( .A(WR_DATA[1]), .Y(n177) );
  INVX2M U158 ( .A(WR_DATA[2]), .Y(n176) );
  INVX2M U159 ( .A(WR_DATA[3]), .Y(n175) );
  INVX2M U160 ( .A(WR_DATA[4]), .Y(n174) );
  INVX2M U161 ( .A(WR_DATA[5]), .Y(n173) );
  INVX2M U162 ( .A(WR_DATA[6]), .Y(n172) );
  INVX2M U163 ( .A(WR_DATA[7]), .Y(n171) );
  MX2X2M U164 ( .A(n155), .B(n154), .S0(N12), .Y(RD_DATA[7]) );
  MX4X1M U165 ( .A(\MEM[0][7] ), .B(\MEM[1][7] ), .C(\MEM[2][7] ), .D(
        \MEM[3][7] ), .S0(n156), .S1(N11), .Y(n155) );
  MX4X1M U166 ( .A(\MEM[4][7] ), .B(\MEM[5][7] ), .C(\MEM[6][7] ), .D(
        \MEM[7][7] ), .S0(n156), .S1(N11), .Y(n154) );
  MX2X2M U167 ( .A(n153), .B(n152), .S0(N12), .Y(RD_DATA[6]) );
  MX4X1M U168 ( .A(\MEM[0][6] ), .B(\MEM[1][6] ), .C(\MEM[2][6] ), .D(
        \MEM[3][6] ), .S0(n156), .S1(N11), .Y(n153) );
  MX4X1M U169 ( .A(\MEM[4][6] ), .B(\MEM[5][6] ), .C(\MEM[6][6] ), .D(
        \MEM[7][6] ), .S0(n156), .S1(N11), .Y(n152) );
  MX2X2M U170 ( .A(n70), .B(n69), .S0(N12), .Y(RD_DATA[2]) );
  MX4X1M U171 ( .A(\MEM[0][2] ), .B(\MEM[1][2] ), .C(\MEM[2][2] ), .D(
        \MEM[3][2] ), .S0(n156), .S1(N11), .Y(n70) );
  MX4X1M U172 ( .A(\MEM[4][2] ), .B(\MEM[5][2] ), .C(\MEM[6][2] ), .D(
        \MEM[7][2] ), .S0(n156), .S1(N11), .Y(n69) );
  MX2X2M U173 ( .A(n72), .B(n71), .S0(N12), .Y(RD_DATA[3]) );
  MX4X1M U174 ( .A(\MEM[0][3] ), .B(\MEM[1][3] ), .C(\MEM[2][3] ), .D(
        \MEM[3][3] ), .S0(n156), .S1(N11), .Y(n72) );
  MX4X1M U175 ( .A(\MEM[4][3] ), .B(\MEM[5][3] ), .C(\MEM[6][3] ), .D(
        \MEM[7][3] ), .S0(n156), .S1(N11), .Y(n71) );
  MX2X2M U176 ( .A(n74), .B(n73), .S0(N12), .Y(RD_DATA[4]) );
  MX4X1M U177 ( .A(\MEM[0][4] ), .B(\MEM[1][4] ), .C(\MEM[2][4] ), .D(
        \MEM[3][4] ), .S0(n156), .S1(N11), .Y(n74) );
  MX4X1M U178 ( .A(\MEM[4][4] ), .B(\MEM[5][4] ), .C(\MEM[6][4] ), .D(
        \MEM[7][4] ), .S0(n156), .S1(N11), .Y(n73) );
  MX2X2M U179 ( .A(n66), .B(n65), .S0(N12), .Y(RD_DATA[0]) );
  MX4X1M U180 ( .A(\MEM[0][0] ), .B(\MEM[1][0] ), .C(\MEM[2][0] ), .D(
        \MEM[3][0] ), .S0(n156), .S1(N11), .Y(n66) );
  MX4X1M U181 ( .A(\MEM[4][0] ), .B(\MEM[5][0] ), .C(\MEM[6][0] ), .D(
        \MEM[7][0] ), .S0(n156), .S1(N11), .Y(n65) );
  MX2X2M U182 ( .A(n151), .B(n150), .S0(N12), .Y(RD_DATA[5]) );
  MX4X1M U183 ( .A(\MEM[0][5] ), .B(\MEM[1][5] ), .C(\MEM[2][5] ), .D(
        \MEM[3][5] ), .S0(n156), .S1(N11), .Y(n151) );
  MX4X1M U184 ( .A(\MEM[4][5] ), .B(\MEM[5][5] ), .C(\MEM[6][5] ), .D(
        \MEM[7][5] ), .S0(n156), .S1(N11), .Y(n150) );
  MX2X2M U185 ( .A(n68), .B(n67), .S0(N12), .Y(RD_DATA[1]) );
  MX4X1M U186 ( .A(\MEM[0][1] ), .B(\MEM[1][1] ), .C(\MEM[2][1] ), .D(
        \MEM[3][1] ), .S0(n156), .S1(N11), .Y(n68) );
  MX4X1M U187 ( .A(\MEM[4][1] ), .B(\MEM[5][1] ), .C(\MEM[6][1] ), .D(
        \MEM[7][1] ), .S0(n156), .S1(N11), .Y(n67) );
  INVX2M U188 ( .A(W_ADDR[0]), .Y(n179) );
  INVX2M U189 ( .A(W_ADDR[1]), .Y(n180) );
  DLY1X1M U190 ( .A(test_se), .Y(n184) );
endmodule


module FIFO_RPTR_EMPTY_test_1 ( W_PTR, R_INC, R_CLK, R_RST, R_ADDR, R_PTR, 
        R_EMPTY, test_si, test_se );
  input [3:0] W_PTR;
  output [2:0] R_ADDR;
  output [3:0] R_PTR;
  input R_INC, R_CLK, R_RST, test_si, test_se;
  output R_EMPTY;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  SDFFRX1M \R_COUNTER_reg[0]  ( .D(n18), .SI(test_si), .SE(test_se), .CK(R_CLK), .RN(R_RST), .Q(R_ADDR[0]), .QN(n5) );
  SDFFRQX1M \R_COUNTER_reg[2]  ( .D(n16), .SI(R_ADDR[1]), .SE(test_se), .CK(
        R_CLK), .RN(R_RST), .Q(R_ADDR[2]) );
  SDFFRQX1M \R_COUNTER_reg[1]  ( .D(n17), .SI(n5), .SE(test_se), .CK(R_CLK), 
        .RN(R_RST), .Q(R_ADDR[1]) );
  SDFFRQX1M \R_COUNTER_reg[3]  ( .D(n15), .SI(R_ADDR[2]), .SE(test_se), .CK(
        R_CLK), .RN(R_RST), .Q(R_PTR[3]) );
  INVX2M U11 ( .A(n10), .Y(R_EMPTY) );
  XNOR2X2M U12 ( .A(R_PTR[1]), .B(W_PTR[1]), .Y(n11) );
  NAND4X2M U13 ( .A(n11), .B(n12), .C(n13), .D(n14), .Y(n10) );
  XNOR2X2M U14 ( .A(R_PTR[3]), .B(W_PTR[3]), .Y(n13) );
  XNOR2X2M U15 ( .A(R_PTR[2]), .B(W_PTR[2]), .Y(n14) );
  XNOR2X2M U16 ( .A(R_PTR[0]), .B(W_PTR[0]), .Y(n12) );
  XNOR2X2M U17 ( .A(n5), .B(R_ADDR[1]), .Y(R_PTR[0]) );
  NOR2X2M U18 ( .A(n9), .B(n5), .Y(n8) );
  XNOR2X2M U19 ( .A(R_ADDR[2]), .B(n7), .Y(n16) );
  XNOR2X2M U20 ( .A(R_PTR[3]), .B(n6), .Y(n15) );
  NAND2BX2M U21 ( .AN(n7), .B(R_ADDR[2]), .Y(n6) );
  NAND2X2M U22 ( .A(n8), .B(R_ADDR[1]), .Y(n7) );
  NAND2X2M U23 ( .A(R_INC), .B(n10), .Y(n9) );
  CLKXOR2X2M U24 ( .A(R_ADDR[1]), .B(R_ADDR[2]), .Y(R_PTR[1]) );
  CLKXOR2X2M U25 ( .A(R_PTR[3]), .B(R_ADDR[2]), .Y(R_PTR[2]) );
  CLKXOR2X2M U26 ( .A(n8), .B(R_ADDR[1]), .Y(n17) );
  CLKXOR2X2M U27 ( .A(n5), .B(n9), .Y(n18) );
endmodule


module DATA_SYNC_FIFO_test_0 ( ASYNC_DATA, CLK, RST, SYNC_DATA, test_si, 
        test_se );
  input [3:0] ASYNC_DATA;
  output [3:0] SYNC_DATA;
  input CLK, RST, test_si, test_se;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  SDFFRQX1M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC_DATA[3]) );
  SDFFRQX1M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC_DATA[2]) );
  SDFFRQX1M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC_DATA[1]) );
  SDFFRQX1M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC_DATA[0]) );
  SDFFRQX1M \sync_reg_reg[3][0]  ( .D(ASYNC_DATA[3]), .SI(SYNC_DATA[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[3][0] ) );
  SDFFRQX1M \sync_reg_reg[0][0]  ( .D(ASYNC_DATA[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[0][0] ) );
  SDFFRQX1M \sync_reg_reg[2][0]  ( .D(ASYNC_DATA[2]), .SI(SYNC_DATA[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[2][0] ) );
  SDFFRQX1M \sync_reg_reg[1][0]  ( .D(ASYNC_DATA[1]), .SI(SYNC_DATA[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[1][0] ) );
endmodule


module FIFO_WPTR_FULL_test_1 ( R_PTR, W_INC, W_CLK, W_RST, W_ADDR, W_PTR, 
        W_FULL, test_si, test_se );
  input [3:0] R_PTR;
  output [2:0] W_ADDR;
  output [3:0] W_PTR;
  input W_INC, W_CLK, W_RST, test_si, test_se;
  output W_FULL;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  SDFFRQX2M \W_COUNTER_reg[3]  ( .D(n15), .SI(W_ADDR[2]), .SE(test_se), .CK(
        W_CLK), .RN(W_RST), .Q(W_PTR[3]) );
  SDFFRQX2M \W_COUNTER_reg[2]  ( .D(n16), .SI(W_ADDR[1]), .SE(test_se), .CK(
        W_CLK), .RN(W_RST), .Q(W_ADDR[2]) );
  SDFFRX1M \W_COUNTER_reg[0]  ( .D(n18), .SI(test_si), .SE(test_se), .CK(W_CLK), .RN(W_RST), .Q(W_ADDR[0]), .QN(n5) );
  SDFFRQX2M \W_COUNTER_reg[1]  ( .D(n17), .SI(W_ADDR[0]), .SE(test_se), .CK(
        W_CLK), .RN(W_RST), .Q(W_ADDR[1]) );
  INVX2M U7 ( .A(n10), .Y(W_FULL) );
  NAND2X2M U8 ( .A(W_INC), .B(n10), .Y(n9) );
  XNOR2X2M U9 ( .A(W_PTR[1]), .B(R_PTR[1]), .Y(n11) );
  XNOR2X2M U10 ( .A(n5), .B(W_ADDR[1]), .Y(W_PTR[0]) );
  NAND4X2M U11 ( .A(n11), .B(n12), .C(n13), .D(n14), .Y(n10) );
  CLKXOR2X2M U12 ( .A(W_PTR[3]), .B(R_PTR[3]), .Y(n14) );
  XNOR2X2M U13 ( .A(W_PTR[0]), .B(R_PTR[0]), .Y(n12) );
  CLKXOR2X2M U14 ( .A(R_PTR[2]), .B(W_PTR[2]), .Y(n13) );
  CLKXOR2X2M U15 ( .A(W_PTR[3]), .B(W_ADDR[2]), .Y(W_PTR[2]) );
  CLKXOR2X2M U16 ( .A(W_ADDR[1]), .B(W_ADDR[2]), .Y(W_PTR[1]) );
  NOR2X2M U17 ( .A(n9), .B(n5), .Y(n8) );
  XNOR2X2M U18 ( .A(W_ADDR[2]), .B(n7), .Y(n16) );
  XNOR2X2M U19 ( .A(W_PTR[3]), .B(n6), .Y(n15) );
  NAND2BX2M U20 ( .AN(n7), .B(W_ADDR[2]), .Y(n6) );
  NAND2X2M U21 ( .A(n8), .B(W_ADDR[1]), .Y(n7) );
  CLKXOR2X2M U22 ( .A(W_ADDR[1]), .B(n8), .Y(n17) );
  CLKXOR2X2M U23 ( .A(n5), .B(n9), .Y(n18) );
endmodule


module DATA_SYNC_FIFO_test_1 ( ASYNC_DATA, CLK, RST, SYNC_DATA, test_si, 
        test_se );
  input [3:0] ASYNC_DATA;
  output [3:0] SYNC_DATA;
  input CLK, RST, test_si, test_se;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  SDFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC_DATA[1]) );
  SDFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC_DATA[0]) );
  SDFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC_DATA[3]) );
  SDFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC_DATA[2]) );
  SDFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC_DATA[3]), .SI(SYNC_DATA[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[3][0] ) );
  SDFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC_DATA[2]), .SI(SYNC_DATA[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[2][0] ) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC_DATA[1]), .SI(SYNC_DATA[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[1][0] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC_DATA[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[0][0] ) );
endmodule


module FIFO_TOP_DATA_WIDTH8_test_1 ( WR_DATA, W_INC, W_CLK, W_RST, R_INC, 
        R_CLK, R_RST, RD_DATA, FULL, EMPTY, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_INC, W_CLK, W_RST, R_INC, R_CLK, R_RST, test_si2, test_si1, test_se;
  output FULL, EMPTY, test_so2, test_so1;
  wire   n1, n2, n3;
  wire   [2:0] w_addr;
  wire   [2:0] r_addr;
  wire   [3:0] w_ptr_sync;
  wire   [3:0] r_ptr_async;
  wire   [3:0] w_ptr_async;
  wire   [3:0] r_ptr_sync;
  assign test_so2 = r_ptr_sync[3];

  INVX2M U6 ( .A(n2), .Y(n1) );
  INVX2M U7 ( .A(W_RST), .Y(n2) );
  FIFO_MEMORY_test_1 U1 ( .WR_DATA(WR_DATA), .W_INC(W_INC), .W_FULL(FULL), 
        .W_ADDR(w_addr), .R_ADDR(r_addr), .CLK(W_CLK), .RST(n1), .RD_DATA(
        RD_DATA), .test_si2(test_si2), .test_si1(test_si1), .test_so2(n3), 
        .test_so1(test_so1), .test_se(test_se) );
  FIFO_RPTR_EMPTY_test_1 U2 ( .W_PTR(w_ptr_sync), .R_INC(R_INC), .R_CLK(R_CLK), 
        .R_RST(R_RST), .R_ADDR(r_addr), .R_PTR(r_ptr_async), .R_EMPTY(EMPTY), 
        .test_si(n3), .test_se(test_se) );
  DATA_SYNC_FIFO_test_0 U3 ( .ASYNC_DATA(w_ptr_async), .CLK(R_CLK), .RST(R_RST), .SYNC_DATA(w_ptr_sync), .test_si(r_ptr_async[3]), .test_se(test_se) );
  FIFO_WPTR_FULL_test_1 U4 ( .R_PTR(r_ptr_sync), .W_INC(W_INC), .W_CLK(W_CLK), 
        .W_RST(n1), .W_ADDR(w_addr), .W_PTR(w_ptr_async), .W_FULL(FULL), 
        .test_si(w_ptr_sync[3]), .test_se(test_se) );
  DATA_SYNC_FIFO_test_1 U5 ( .ASYNC_DATA(r_ptr_async), .CLK(W_CLK), .RST(n1), 
        .SYNC_DATA(r_ptr_sync), .test_si(w_ptr_async[3]), .test_se(test_se) );
endmodule


module PULSE_GEN_test_1 ( clk, rst, lvl_sig, pulse_sig, test_si, test_so, 
        test_se );
  input clk, rst, lvl_sig, test_si, test_se;
  output pulse_sig, test_so;
  wire   pls_flop, rcv_flop;
  assign test_so = rcv_flop;

  SDFFRQX1M pls_flop_reg ( .D(rcv_flop), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(pls_flop) );
  SDFFRQX1M rcv_flop_reg ( .D(lvl_sig), .SI(pls_flop), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(rcv_flop) );
  NOR2BX2M U7 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module ClkDiv_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_test_0 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n1, n2, n3, n4, n5, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so = odd_edge_tog;

  SDFFRQX2M div_clk_reg ( .D(n27), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  SDFFSQX2M odd_edge_tog_reg ( .D(n26), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(odd_edge_tog) );
  SDFFRQX2M \count_reg[6]  ( .D(n28), .SI(count[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M \count_reg[0]  ( .D(n34), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[0]) );
  SDFFRQX2M \count_reg[5]  ( .D(n29), .SI(count[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n30), .SI(count[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n31), .SI(count[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n32), .SI(count[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n33), .SI(count[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[1]) );
  OR2X2M U5 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  NAND2BX2M U6 ( .AN(n50), .B(i_clk_en), .Y(n16) );
  INVX2M U11 ( .A(i_div_ratio[5]), .Y(n15) );
  MX2X2M U15 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U16 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U17 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U18 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U20 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U21 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U22 ( .A(n3), .B(n15), .Y(n4) );
  OAI21X1M U23 ( .A0(n3), .A1(n15), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U24 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U25 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U26 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U27 ( .A0(n16), .A1(count[0]), .B0(N16), .B1(n17), .Y(n34) );
  AO22X1M U28 ( .A0(n16), .A1(count[1]), .B0(N17), .B1(n17), .Y(n33) );
  AO22X1M U29 ( .A0(n16), .A1(count[2]), .B0(N18), .B1(n17), .Y(n32) );
  AO22X1M U30 ( .A0(n16), .A1(count[3]), .B0(N19), .B1(n17), .Y(n31) );
  AO22X1M U31 ( .A0(n16), .A1(count[4]), .B0(N20), .B1(n17), .Y(n30) );
  AO22X1M U32 ( .A0(n16), .A1(count[5]), .B0(N21), .B1(n17), .Y(n29) );
  AO22X1M U33 ( .A0(n16), .A1(count[6]), .B0(N22), .B1(n17), .Y(n28) );
  AND3X1M U34 ( .A(n18), .B(n19), .C(N2), .Y(n17) );
  CLKXOR2X2M U35 ( .A(div_clk), .B(n20), .Y(n27) );
  AOI21X1M U36 ( .A0(n19), .A1(n18), .B0(n16), .Y(n20) );
  OR2X1M U37 ( .A(n21), .B(i_div_ratio[0]), .Y(n18) );
  XNOR2X1M U38 ( .A(odd_edge_tog), .B(n22), .Y(n26) );
  OR2X1M U39 ( .A(n19), .B(n16), .Y(n22) );
  CLKNAND2X2M U40 ( .A(n23), .B(i_div_ratio[0]), .Y(n19) );
  MXI2X1M U41 ( .A(n24), .B(n21), .S0(odd_edge_tog), .Y(n23) );
  NAND4X1M U42 ( .A(n25), .B(n35), .C(n36), .D(n37), .Y(n21) );
  NOR4X1M U43 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n37) );
  CLKXOR2X2M U44 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n41) );
  CLKXOR2X2M U45 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n40) );
  CLKXOR2X2M U46 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n39) );
  CLKXOR2X2M U47 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n38) );
  XNOR2X1M U48 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n36) );
  XNOR2X1M U49 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n35) );
  XNOR2X1M U50 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n25) );
  NAND4X1M U51 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n24) );
  NOR4X1M U52 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  CLKXOR2X2M U53 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n49) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n48) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n47) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n46) );
  XNOR2X1M U57 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n44) );
  XNOR2X1M U58 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n43) );
  XNOR2X1M U59 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n42) );
  CLKINVX1M U60 ( .A(n16), .Y(N2) );
  NOR4BX1M U61 ( .AN(n51), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n50) );
  NOR4X1M U62 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n51) );
  ClkDiv_0_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NAND4BX1M U11 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U12 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  NOR3X2M U13 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR3X2M U14 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  INVX2M U15 ( .A(IN[2]), .Y(n15) );
  INVX2M U16 ( .A(IN[5]), .Y(n14) );
  NOR4X1M U17 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U18 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  INVX2M U19 ( .A(IN[0]), .Y(n17) );
  INVX2M U20 ( .A(IN[1]), .Y(n16) );
  OAI211X2M U21 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NOR4X1M U22 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  NAND2X2M U23 ( .A(n7), .B(n6), .Y(n9) );
  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
endmodule


module ClkDiv_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_test_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n2, n3,
         n4, n5, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so = odd_edge_tog;

  SDFFRQX2M div_clk_reg ( .D(n60), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  SDFFRQX2M \count_reg[6]  ( .D(n59), .SI(count[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M \count_reg[0]  ( .D(n53), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[0]) );
  SDFFRQX2M \count_reg[5]  ( .D(n58), .SI(count[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n57), .SI(count[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n56), .SI(count[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n55), .SI(count[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n54), .SI(count[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst), .Q(count[1]) );
  SDFFSQX1M odd_edge_tog_reg ( .D(n61), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(odd_edge_tog) );
  OR2X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  NAND2BX2M U11 ( .AN(n51), .B(i_clk_en), .Y(n17) );
  INVX2M U15 ( .A(i_div_ratio[5]), .Y(n16) );
  MX2X2M U16 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U17 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U18 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(
        edge_flip_half[1]) );
  OR2X1M U19 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U20 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(
        edge_flip_half[2]) );
  NOR2X1M U21 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  AO21XLM U22 ( .A0(n3), .A1(i_div_ratio[4]), .B0(n4), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U23 ( .A(n4), .B(n16), .Y(n5) );
  OAI21X1M U24 ( .A0(n4), .A1(n16), .B0(n5), .Y(edge_flip_half[4]) );
  XNOR2X1M U25 ( .A(i_div_ratio[6]), .B(n5), .Y(edge_flip_half[5]) );
  NOR2X1M U26 ( .A(i_div_ratio[6]), .B(n5), .Y(n15) );
  CLKXOR2X2M U27 ( .A(i_div_ratio[7]), .B(n15), .Y(edge_flip_half[6]) );
  AO22X1M U28 ( .A0(n17), .A1(count[0]), .B0(N16), .B1(n18), .Y(n53) );
  AO22X1M U29 ( .A0(n17), .A1(count[1]), .B0(N17), .B1(n18), .Y(n54) );
  AO22X1M U30 ( .A0(n17), .A1(count[2]), .B0(N18), .B1(n18), .Y(n55) );
  AO22X1M U31 ( .A0(n17), .A1(count[3]), .B0(N19), .B1(n18), .Y(n56) );
  AO22X1M U32 ( .A0(n17), .A1(count[4]), .B0(N20), .B1(n18), .Y(n57) );
  AO22X1M U33 ( .A0(n17), .A1(count[5]), .B0(N21), .B1(n18), .Y(n58) );
  AO22X1M U34 ( .A0(n17), .A1(count[6]), .B0(N22), .B1(n18), .Y(n59) );
  AND3X1M U35 ( .A(n19), .B(n20), .C(N2), .Y(n18) );
  CLKXOR2X2M U36 ( .A(div_clk), .B(n21), .Y(n60) );
  AOI21X1M U37 ( .A0(n20), .A1(n19), .B0(n17), .Y(n21) );
  OR2X1M U38 ( .A(n22), .B(i_div_ratio[0]), .Y(n19) );
  XNOR2X1M U39 ( .A(odd_edge_tog), .B(n23), .Y(n61) );
  OR2X1M U40 ( .A(n20), .B(n17), .Y(n23) );
  CLKNAND2X2M U41 ( .A(n24), .B(i_div_ratio[0]), .Y(n20) );
  MXI2X1M U42 ( .A(n25), .B(n22), .S0(odd_edge_tog), .Y(n24) );
  NAND4X1M U43 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n22) );
  NOR4X1M U44 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n38) );
  CLKXOR2X2M U45 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n42) );
  CLKXOR2X2M U46 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n41) );
  CLKXOR2X2M U47 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n40) );
  CLKXOR2X2M U48 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n39) );
  XNOR2X1M U49 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n37) );
  XNOR2X1M U50 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n36) );
  XNOR2X1M U51 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n35) );
  NAND4X1M U52 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n25) );
  NOR4X1M U53 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n46) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n50) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n49) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n48) );
  CLKXOR2X2M U57 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n47) );
  XNOR2X1M U58 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n45) );
  XNOR2X1M U59 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n44) );
  XNOR2X1M U60 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n43) );
  CLKINVX1M U61 ( .A(n17), .Y(N2) );
  NOR4BX1M U62 ( .AN(n52), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n51) );
  NOR4X1M U63 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n52) );
  ClkDiv_1_DW01_inc_0 add_49 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module FSM_test_1 ( DATA_VALID, PAR_EN, ser_done, CLK, RST, mux_sel, ser_en, 
        busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input DATA_VALID, PAR_EN, ser_done, CLK, RST, test_si, test_se;
  output ser_en, busy, test_so;
  wire   n7, n8, n10, n11;
  wire   [2:0] C_S;
  wire   [2:0] N_S;
  assign test_so = C_S[2];

  SDFFRQX1M \C_S_reg[2]  ( .D(N_S[2]), .SI(n11), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(C_S[2]) );
  SDFFRQX1M \C_S_reg[1]  ( .D(N_S[1]), .SI(n10), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(C_S[1]) );
  SDFFRQX1M \C_S_reg[0]  ( .D(N_S[0]), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(C_S[0]) );
  INVX2M U9 ( .A(ser_en), .Y(mux_sel[0]) );
  NOR2X2M U10 ( .A(n10), .B(C_S[2]), .Y(ser_en) );
  INVX2M U11 ( .A(C_S[0]), .Y(n10) );
  OAI21X2M U12 ( .A0(C_S[0]), .A1(n11), .B0(mux_sel[0]), .Y(busy) );
  OAI22X1M U13 ( .A0(ser_done), .A1(mux_sel[0]), .B0(C_S[1]), .B1(n8), .Y(
        N_S[0]) );
  AOI2B1X1M U14 ( .A1N(C_S[2]), .A0(DATA_VALID), .B0(ser_en), .Y(n8) );
  NOR2X2M U15 ( .A(n11), .B(C_S[2]), .Y(mux_sel[1]) );
  OAI21X2M U16 ( .A0(C_S[2]), .A1(n11), .B0(mux_sel[0]), .Y(N_S[1]) );
  NOR2BX2M U17 ( .AN(mux_sel[1]), .B(n7), .Y(N_S[2]) );
  AOI2B1X1M U18 ( .A1N(PAR_EN), .A0(ser_done), .B0(n10), .Y(n7) );
  INVX2M U19 ( .A(C_S[1]), .Y(n11) );
endmodule


module MUX ( mux_sel, start_bit, stop_bit, ser_data, par_bit, TX_OUT );
  input [1:0] mux_sel;
  input start_bit, stop_bit, ser_data, par_bit;
  output TX_OUT;
  wire   n2, n3, n1;

  OAI2B2X4M U1 ( .A1N(mux_sel[1]), .A0(n2), .B0(mux_sel[1]), .B1(n3), .Y(
        TX_OUT) );
  AOI22X1M U2 ( .A0(start_bit), .A1(n1), .B0(stop_bit), .B1(mux_sel[0]), .Y(n3) );
  AOI22X1M U3 ( .A0(ser_data), .A1(n1), .B0(par_bit), .B1(mux_sel[0]), .Y(n2)
         );
  INVX2M U4 ( .A(mux_sel[0]), .Y(n1) );
endmodule


module Parity_Calc_test_1 ( P_DATA, DATA_VALID, PAR_TYP, busy, CLK, RST, 
        par_bit, test_si, test_se );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_TYP, busy, CLK, RST, test_si, test_se;
  output par_bit;
  wire   n1, n2, n3, n4, n5, n6, n8;

  SDFFRQX2M par_bit_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(par_bit) );
  XNOR2X2M U2 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  XOR3XLM U3 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U4 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n8) );
  NAND2BX2M U6 ( .AN(busy), .B(DATA_VALID), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
endmodule


module Serializer_test_1 ( P_DATA, DATA_VALID, ser_en, CLK, RST, ser_done, 
        ser_data, test_si, test_se );
  input [7:0] P_DATA;
  input DATA_VALID, ser_en, CLK, RST, test_si, test_se;
  output ser_done, ser_data;
  wire   N3, N4, N5, N11, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n55, n56;
  wire   [7:0] para_data;

  SDFFRQX2M \ser_counter_reg[2]  ( .D(n34), .SI(n50), .SE(n56), .CK(CLK), .RN(
        n45), .Q(N5) );
  SDFFRQX1M ser_data_reg ( .D(n37), .SI(N5), .SE(n56), .CK(CLK), .RN(RST), .Q(
        ser_data) );
  SDFFRQX1M ser_done_reg ( .D(n33), .SI(ser_data), .SE(n56), .CK(CLK), .RN(n45), .Q(ser_done) );
  SDFFRQX1M \ser_counter_reg[0]  ( .D(n36), .SI(para_data[7]), .SE(n56), .CK(
        CLK), .RN(n45), .Q(N3) );
  SDFFRQX1M \ser_counter_reg[1]  ( .D(n35), .SI(n49), .SE(n56), .CK(CLK), .RN(
        n45), .Q(N4) );
  SDFFRQX1M \para_data_reg[7]  ( .D(n32), .SI(para_data[6]), .SE(n56), .CK(CLK), .RN(n45), .Q(para_data[7]) );
  SDFFRQX1M \para_data_reg[6]  ( .D(n31), .SI(para_data[5]), .SE(n56), .CK(CLK), .RN(n45), .Q(para_data[6]) );
  SDFFRQX1M \para_data_reg[5]  ( .D(n30), .SI(para_data[4]), .SE(n56), .CK(CLK), .RN(n45), .Q(para_data[5]) );
  SDFFRQX1M \para_data_reg[4]  ( .D(n29), .SI(para_data[3]), .SE(n56), .CK(CLK), .RN(n45), .Q(para_data[4]) );
  SDFFRQX1M \para_data_reg[3]  ( .D(n28), .SI(para_data[2]), .SE(n56), .CK(CLK), .RN(n45), .Q(para_data[3]) );
  SDFFRQX1M \para_data_reg[2]  ( .D(n27), .SI(para_data[1]), .SE(n56), .CK(CLK), .RN(n45), .Q(para_data[2]) );
  SDFFRQX1M \para_data_reg[1]  ( .D(n26), .SI(para_data[0]), .SE(n56), .CK(CLK), .RN(n45), .Q(para_data[1]) );
  SDFFRQX1M \para_data_reg[0]  ( .D(n25), .SI(test_si), .SE(n56), .CK(CLK), 
        .RN(n45), .Q(para_data[0]) );
  INVX2M U28 ( .A(n19), .Y(n51) );
  NAND2X2M U29 ( .A(DATA_VALID), .B(n52), .Y(n19) );
  BUFX2M U30 ( .A(RST), .Y(n45) );
  AOI21X2M U31 ( .A0(n49), .A1(n22), .B0(n51), .Y(n24) );
  INVX2M U32 ( .A(ser_en), .Y(n52) );
  NOR2X2M U33 ( .A(n50), .B(n49), .Y(n21) );
  INVX2M U34 ( .A(n22), .Y(n48) );
  OAI32X1M U35 ( .A0(n48), .A1(N4), .A2(n49), .B0(n24), .B1(n50), .Y(n35) );
  AO22X1M U36 ( .A0(n21), .A1(n22), .B0(N5), .B1(n44), .Y(n34) );
  NAND2X2M U37 ( .A(n24), .B(n48), .Y(n44) );
  AO22X1M U38 ( .A0(P_DATA[0]), .A1(n51), .B0(para_data[0]), .B1(n19), .Y(n25)
         );
  AO22X1M U39 ( .A0(P_DATA[1]), .A1(n51), .B0(para_data[1]), .B1(n19), .Y(n26)
         );
  AO22X1M U40 ( .A0(P_DATA[2]), .A1(n51), .B0(para_data[2]), .B1(n19), .Y(n27)
         );
  AO22X1M U41 ( .A0(P_DATA[3]), .A1(n51), .B0(para_data[3]), .B1(n19), .Y(n28)
         );
  AO22X1M U42 ( .A0(P_DATA[4]), .A1(n51), .B0(para_data[4]), .B1(n19), .Y(n29)
         );
  AO22X1M U43 ( .A0(P_DATA[5]), .A1(n51), .B0(para_data[5]), .B1(n19), .Y(n30)
         );
  AO22X1M U44 ( .A0(P_DATA[6]), .A1(n51), .B0(para_data[6]), .B1(n19), .Y(n31)
         );
  AO22X1M U45 ( .A0(P_DATA[7]), .A1(n51), .B0(para_data[7]), .B1(n19), .Y(n32)
         );
  AOI21X2M U46 ( .A0(n21), .A1(N5), .B0(n52), .Y(n22) );
  OAI22X1M U47 ( .A0(n19), .A1(n49), .B0(N3), .B1(n48), .Y(n36) );
  OAI2BB2X1M U48 ( .B0(n20), .B1(n52), .A0N(DATA_VALID), .A1N(ser_done), .Y(
        n33) );
  AOI21X2M U49 ( .A0(N5), .A1(n21), .B0(ser_done), .Y(n20) );
  INVX2M U50 ( .A(N3), .Y(n49) );
  INVX2M U51 ( .A(N4), .Y(n50) );
  AO22X1M U52 ( .A0(ser_data), .A1(n52), .B0(N11), .B1(ser_en), .Y(n37) );
  MX2X2M U53 ( .A(n47), .B(n46), .S0(N5), .Y(N11) );
  MX4X1M U54 ( .A(para_data[0]), .B(para_data[1]), .C(para_data[2]), .D(
        para_data[3]), .S0(N3), .S1(N4), .Y(n47) );
  MX4X1M U55 ( .A(para_data[4]), .B(para_data[5]), .C(para_data[6]), .D(
        para_data[7]), .S0(N3), .S1(N4), .Y(n46) );
  INVXLM U56 ( .A(test_se), .Y(n55) );
  INVXLM U57 ( .A(n55), .Y(n56) );
endmodule


module UART_TX_test_1 ( P_DATA, DATA_VALID, PAR_EN, PAR_TYP, CLK, RST, TX_OUT, 
        busy, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_EN, PAR_TYP, CLK, RST, test_si, test_se;
  output TX_OUT, busy, test_so;
  wire   ser_done, ser_en, ser_data, par_bit, n1;
  wire   [1:0] mux_sel;
  assign test_so = ser_done;

  FSM_test_1 U1 ( .DATA_VALID(DATA_VALID), .PAR_EN(PAR_EN), .ser_done(ser_done), .CLK(CLK), .RST(RST), .mux_sel(mux_sel), .ser_en(ser_en), .busy(busy), 
        .test_si(test_si), .test_so(n1), .test_se(test_se) );
  MUX U2 ( .mux_sel(mux_sel), .start_bit(1'b0), .stop_bit(1'b1), .ser_data(
        ser_data), .par_bit(par_bit), .TX_OUT(TX_OUT) );
  Parity_Calc_test_1 U3 ( .P_DATA(P_DATA), .DATA_VALID(DATA_VALID), .PAR_TYP(
        PAR_TYP), .busy(busy), .CLK(CLK), .RST(RST), .par_bit(par_bit), 
        .test_si(n1), .test_se(test_se) );
  Serializer_test_1 U4 ( .P_DATA(P_DATA), .DATA_VALID(DATA_VALID), .ser_en(
        ser_en), .CLK(CLK), .RST(RST), .ser_done(ser_done), .ser_data(ser_data), .test_si(par_bit), .test_se(test_se) );
endmodule


module uart_rx_fsm_DATA_WIDTH8_test_1 ( CLK, RST, S_DATA, Prescale, 
        parity_enable, bit_count, edge_count, par_err, stp_err, strt_glitch, 
        strt_chk_en, edge_bit_en, deser_en, par_chk_en, stp_chk_en, 
        dat_samp_en, data_valid, test_so, test_se );
  input [5:0] Prescale;
  input [3:0] bit_count;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, parity_enable, par_err, stp_err, strt_glitch,
         test_se;
  output strt_chk_en, edge_bit_en, deser_en, par_chk_en, stp_chk_en,
         dat_samp_en, data_valid, test_so;
  wire   \sub_40/carry[5] , \sub_40/carry[4] , \sub_40/carry[3] , n2, n3, n4,
         n5, n6, n7, n8, n9, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51;
  wire   [5:0] check_edge;
  wire   [5:0] error_check_edge;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign error_check_edge[0] = Prescale[0];
  assign test_so = n26;

  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n25), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(strt_glitch), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX1M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[1]) );
  NOR3XLM U4 ( .A(n22), .B(stp_err), .C(par_err), .Y(data_valid) );
  OR2X2M U6 ( .A(Prescale[1]), .B(error_check_edge[0]), .Y(n2) );
  INVX2M U9 ( .A(Prescale[3]), .Y(n6) );
  XNOR2X2M U10 ( .A(Prescale[1]), .B(edge_count[1]), .Y(n38) );
  XNOR2X1M U11 ( .A(Prescale[5]), .B(\sub_40/carry[5] ), .Y(
        error_check_edge[5]) );
  OR2X1M U12 ( .A(Prescale[4]), .B(\sub_40/carry[4] ), .Y(\sub_40/carry[5] )
         );
  XNOR2X1M U13 ( .A(\sub_40/carry[4] ), .B(Prescale[4]), .Y(
        error_check_edge[4]) );
  OR2X1M U14 ( .A(Prescale[3]), .B(\sub_40/carry[3] ), .Y(\sub_40/carry[4] )
         );
  XNOR2X1M U15 ( .A(\sub_40/carry[3] ), .B(Prescale[3]), .Y(
        error_check_edge[3]) );
  OR2X1M U16 ( .A(Prescale[2]), .B(Prescale[1]), .Y(\sub_40/carry[3] ) );
  XNOR2X1M U17 ( .A(Prescale[1]), .B(Prescale[2]), .Y(error_check_edge[2]) );
  CLKINVX1M U18 ( .A(error_check_edge[0]), .Y(check_edge[0]) );
  OAI2BB1X1M U19 ( .A0N(error_check_edge[0]), .A1N(Prescale[1]), .B0(n2), .Y(
        check_edge[1]) );
  NOR2X1M U20 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  AO21XLM U21 ( .A0(n2), .A1(Prescale[2]), .B0(n3), .Y(check_edge[2]) );
  CLKNAND2X2M U22 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U23 ( .A0(n3), .A1(n6), .B0(n4), .Y(check_edge[3]) );
  XNOR2X1M U24 ( .A(Prescale[4]), .B(n4), .Y(check_edge[4]) );
  NOR2X1M U25 ( .A(Prescale[4]), .B(n4), .Y(n5) );
  CLKXOR2X2M U26 ( .A(Prescale[5]), .B(n5), .Y(check_edge[5]) );
  NOR2X1M U27 ( .A(current_state[1]), .B(n7), .Y(strt_chk_en) );
  NOR2X1M U28 ( .A(current_state[2]), .B(n8), .Y(par_chk_en) );
  OAI31X1M U29 ( .A0(n9), .A1(parity_enable), .A2(n13), .B0(n14), .Y(
        next_state[2]) );
  AOI31X1M U30 ( .A0(n15), .A1(n16), .A2(n17), .B0(stp_chk_en), .Y(n14) );
  NOR2X1M U31 ( .A(n18), .B(n19), .Y(n17) );
  CLKINVX1M U32 ( .A(bit_count[3]), .Y(n19) );
  CLKINVX1M U33 ( .A(n8), .Y(n16) );
  OAI21X1M U34 ( .A0(current_state[2]), .A1(n20), .B0(n8), .Y(next_state[1])
         );
  AOI31X1M U35 ( .A0(current_state[0]), .A1(n15), .A2(n21), .B0(
        current_state[1]), .Y(n20) );
  NOR3X1M U36 ( .A(bit_count[0]), .B(strt_glitch), .C(bit_count[3]), .Y(n21)
         );
  OAI221X1M U37 ( .A0(S_DATA), .A1(n22), .B0(n23), .B1(n9), .C0(n24), .Y(
        next_state[0]) );
  AOI31X1M U38 ( .A0(n25), .A1(n26), .A2(n27), .B0(n28), .Y(n24) );
  NOR4X1M U39 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n28) );
  CLKXOR2X2M U40 ( .A(error_check_edge[5]), .B(edge_count[5]), .Y(n32) );
  CLKXOR2X2M U41 ( .A(error_check_edge[4]), .B(edge_count[4]), .Y(n31) );
  NAND3BX1M U42 ( .AN(bit_count[2]), .B(bit_count[3]), .C(stp_chk_en), .Y(n30)
         );
  NOR2X1M U43 ( .A(n26), .B(n8), .Y(stp_chk_en) );
  NAND4X1M U44 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n29) );
  XNOR2X1M U45 ( .A(edge_count[2]), .B(error_check_edge[2]), .Y(n36) );
  NOR2X1M U46 ( .A(n37), .B(n38), .Y(n35) );
  CLKXOR2X2M U47 ( .A(error_check_edge[0]), .B(edge_count[0]), .Y(n37) );
  XNOR2X1M U48 ( .A(edge_count[3]), .B(error_check_edge[3]), .Y(n34) );
  MXI2X1M U49 ( .A(n39), .B(n40), .S0(parity_enable), .Y(n33) );
  CLKNAND2X2M U50 ( .A(bit_count[1]), .B(n18), .Y(n40) );
  OR2X1M U51 ( .A(bit_count[1]), .B(n18), .Y(n39) );
  MXI2X1M U52 ( .A(S_DATA), .B(n41), .S0(current_state[0]), .Y(n27) );
  NOR4BX1M U53 ( .AN(strt_glitch), .B(bit_count[3]), .C(bit_count[0]), .D(n42), 
        .Y(n41) );
  CLKINVX1M U54 ( .A(n13), .Y(n23) );
  NAND3X1M U55 ( .A(n15), .B(n18), .C(bit_count[3]), .Y(n13) );
  CLKINVX1M U56 ( .A(bit_count[0]), .Y(n18) );
  CLKINVX1M U57 ( .A(n42), .Y(n15) );
  CLKNAND2X2M U58 ( .A(n43), .B(n44), .Y(n42) );
  NOR4X1M U59 ( .A(bit_count[2]), .B(bit_count[1]), .C(n45), .D(n46), .Y(n44)
         );
  CLKXOR2X2M U60 ( .A(edge_count[0]), .B(check_edge[0]), .Y(n46) );
  CLKXOR2X2M U61 ( .A(edge_count[4]), .B(check_edge[4]), .Y(n45) );
  NOR4X1M U62 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n43) );
  CLKXOR2X2M U63 ( .A(edge_count[3]), .B(check_edge[3]), .Y(n50) );
  CLKXOR2X2M U64 ( .A(edge_count[2]), .B(check_edge[2]), .Y(n49) );
  CLKXOR2X2M U65 ( .A(edge_count[5]), .B(check_edge[5]), .Y(n48) );
  CLKXOR2X2M U66 ( .A(edge_count[1]), .B(check_edge[1]), .Y(n47) );
  CLKNAND2X2M U67 ( .A(n7), .B(n8), .Y(edge_bit_en) );
  CLKNAND2X2M U68 ( .A(current_state[1]), .B(n51), .Y(n8) );
  CLKINVX1M U69 ( .A(n9), .Y(deser_en) );
  NAND3X1M U70 ( .A(current_state[1]), .B(n26), .C(current_state[0]), .Y(n9)
         );
  CLKINVX1M U71 ( .A(current_state[2]), .Y(n26) );
  NAND3X1M U72 ( .A(current_state[2]), .B(current_state[1]), .C(
        current_state[0]), .Y(n22) );
  CLKNAND2X2M U73 ( .A(n25), .B(n7), .Y(dat_samp_en) );
  AO21XLM U74 ( .A0(n51), .A1(S_DATA), .B0(current_state[2]), .Y(n7) );
  CLKINVX1M U75 ( .A(current_state[0]), .Y(n51) );
  CLKINVX1M U76 ( .A(current_state[1]), .Y(n25) );
endmodule


module edge_bit_counter_test_1 ( CLK, RST, Enable, Prescale, bit_count, 
        edge_count, test_si, test_se );
  input [5:0] Prescale;
  output [3:0] bit_count;
  output [5:0] edge_count;
  input CLK, RST, Enable, test_si, test_se;
  wire   N8, N9, N10, N11, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28,
         N29, N30, N31, n14, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, \add_31/carry[5] , \add_31/carry[4] , \add_31/carry[3] ,
         \add_31/carry[2] , n17, n18, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48;

  SDFFRX1M \bit_count_reg[3]  ( .D(n27), .SI(n47), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_count[3]), .QN(n14) );
  SDFFRQX2M \bit_count_reg[2]  ( .D(n28), .SI(n46), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_count[2]) );
  SDFFRQX2M \bit_count_reg[1]  ( .D(n29), .SI(n45), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_count[1]) );
  SDFFRQX2M \bit_count_reg[0]  ( .D(n30), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_count[0]) );
  SDFFRQX2M \edge_count_reg[0]  ( .D(N19), .SI(n14), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(edge_count[0]) );
  SDFFRQX1M \edge_count_reg[4]  ( .D(N23), .SI(edge_count[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[4]) );
  SDFFRQX1M \edge_count_reg[3]  ( .D(N22), .SI(edge_count[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[3]) );
  SDFFRQX1M \edge_count_reg[2]  ( .D(N21), .SI(edge_count[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[2]) );
  SDFFRQX1M \edge_count_reg[1]  ( .D(N20), .SI(edge_count[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[1]) );
  SDFFRQX1M \edge_count_reg[5]  ( .D(N24), .SI(edge_count[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[5]) );
  INVX2M U18 ( .A(n23), .Y(n44) );
  INVX2M U19 ( .A(Enable), .Y(n48) );
  NOR2X2M U20 ( .A(n48), .B(N31), .Y(n23) );
  AOI21X2M U21 ( .A0(n45), .A1(Enable), .B0(n23), .Y(n26) );
  NOR2BX2M U22 ( .AN(N8), .B(n44), .Y(N20) );
  NOR2BX2M U23 ( .AN(N9), .B(n44), .Y(N21) );
  NOR2BX2M U24 ( .AN(N10), .B(n44), .Y(N22) );
  NOR2BX2M U25 ( .AN(N11), .B(n44), .Y(N23) );
  OAI32X1M U26 ( .A0(n48), .A1(bit_count[0]), .A2(n23), .B0(n45), .B1(n44), 
        .Y(n30) );
  OAI32X1M U27 ( .A0(n24), .A1(bit_count[2]), .A2(n46), .B0(n25), .B1(n47), 
        .Y(n28) );
  AOI21BX2M U28 ( .A0(Enable), .A1(n46), .B0N(n26), .Y(n25) );
  OAI32X1M U29 ( .A0(n19), .A1(n20), .A2(n48), .B0(n21), .B1(n14), .Y(n27) );
  NAND3X2M U30 ( .A(N31), .B(n14), .C(bit_count[2]), .Y(n19) );
  NOR2X2M U31 ( .A(n22), .B(n23), .Y(n21) );
  AOI2BB1X2M U32 ( .A0N(n20), .A1N(n47), .B0(n48), .Y(n22) );
  NAND3X2M U33 ( .A(bit_count[0]), .B(n44), .C(Enable), .Y(n24) );
  OAI22X1M U34 ( .A0(n26), .A1(n46), .B0(bit_count[1]), .B1(n24), .Y(n29) );
  OR2X2M U35 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n18) );
  NOR2X2M U36 ( .A(n17), .B(n44), .Y(N24) );
  XNOR2X2M U37 ( .A(\add_31/carry[5] ), .B(edge_count[5]), .Y(n17) );
  NOR2X2M U38 ( .A(edge_count[0]), .B(n44), .Y(N19) );
  INVX2M U39 ( .A(Prescale[3]), .Y(n34) );
  NAND2X2M U40 ( .A(bit_count[1]), .B(bit_count[0]), .Y(n20) );
  INVX2M U41 ( .A(bit_count[0]), .Y(n45) );
  INVX2M U42 ( .A(bit_count[1]), .Y(n46) );
  ADDHX1M U43 ( .A(edge_count[1]), .B(edge_count[0]), .CO(\add_31/carry[2] ), 
        .S(N8) );
  ADDHX1M U44 ( .A(edge_count[2]), .B(\add_31/carry[2] ), .CO(
        \add_31/carry[3] ), .S(N9) );
  ADDHX1M U45 ( .A(edge_count[3]), .B(\add_31/carry[3] ), .CO(
        \add_31/carry[4] ), .S(N10) );
  INVX2M U46 ( .A(bit_count[2]), .Y(n47) );
  ADDHX1M U47 ( .A(edge_count[4]), .B(\add_31/carry[4] ), .CO(
        \add_31/carry[5] ), .S(N11) );
  CLKINVX1M U48 ( .A(Prescale[0]), .Y(N25) );
  OAI2BB1X1M U49 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n18), .Y(N26) );
  NOR2X1M U50 ( .A(n18), .B(Prescale[2]), .Y(n31) );
  AO21XLM U51 ( .A0(n18), .A1(Prescale[2]), .B0(n31), .Y(N27) );
  CLKNAND2X2M U52 ( .A(n31), .B(n34), .Y(n32) );
  OAI21X1M U53 ( .A0(n31), .A1(n34), .B0(n32), .Y(N28) );
  XNOR2X1M U54 ( .A(Prescale[4]), .B(n32), .Y(N29) );
  NOR2X1M U55 ( .A(Prescale[4]), .B(n32), .Y(n33) );
  CLKXOR2X2M U56 ( .A(Prescale[5]), .B(n33), .Y(N30) );
  NOR2BX1M U57 ( .AN(edge_count[0]), .B(N25), .Y(n35) );
  OAI2B2X1M U58 ( .A1N(N26), .A0(n35), .B0(edge_count[1]), .B1(n35), .Y(n39)
         );
  NOR2BX1M U59 ( .AN(N25), .B(edge_count[0]), .Y(n36) );
  OAI2B2X1M U60 ( .A1N(edge_count[1]), .A0(n36), .B0(N26), .B1(n36), .Y(n38)
         );
  XNOR2X1M U61 ( .A(N30), .B(edge_count[5]), .Y(n37) );
  NAND3X1M U62 ( .A(n39), .B(n38), .C(n37), .Y(n43) );
  CLKXOR2X2M U63 ( .A(N29), .B(edge_count[4]), .Y(n42) );
  CLKXOR2X2M U64 ( .A(N27), .B(edge_count[2]), .Y(n41) );
  CLKXOR2X2M U65 ( .A(N28), .B(edge_count[3]), .Y(n40) );
  NOR4X1M U66 ( .A(n43), .B(n42), .C(n41), .D(n40), .Y(N31) );
endmodule


module data_sampling_test_1 ( CLK, RST, S_DATA, Prescale, edge_count, Enable, 
        sampled_bit, test_si, test_se );
  input [5:0] Prescale;
  input [5:0] edge_count;
  input CLK, RST, S_DATA, Enable, test_si, test_se;
  output sampled_bit;
  wire   N58, n23, n24, n25, \add_21/carry[4] , \add_21/carry[3] ,
         \add_21/carry[2] , n2, n3, n4, n5, n6, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46;
  wire   [4:0] half_edges;
  wire   [4:0] half_edges_p1;
  wire   [4:0] half_edges_n1;
  wire   [2:0] Samples;

  SDFFRQX2M \Samples_reg[2]  ( .D(n25), .SI(Samples[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Samples[2]) );
  SDFFRQX2M \Samples_reg[1]  ( .D(n24), .SI(Samples[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Samples[1]) );
  SDFFRQX2M \Samples_reg[0]  ( .D(n23), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Samples[0]) );
  SDFFRQX1M sampled_bit_reg ( .D(N58), .SI(Samples[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sampled_bit) );
  INVX2M U5 ( .A(half_edges[2]), .Y(n13) );
  ADDHX1M U6 ( .A(half_edges[2]), .B(\add_21/carry[2] ), .CO(\add_21/carry[3] ), .S(half_edges_p1[2]) );
  ADDHX1M U10 ( .A(half_edges[1]), .B(half_edges[0]), .CO(\add_21/carry[2] ), 
        .S(half_edges_p1[1]) );
  ADDHX1M U11 ( .A(half_edges[3]), .B(\add_21/carry[3] ), .CO(
        \add_21/carry[4] ), .S(half_edges_p1[3]) );
  INVX2M U12 ( .A(Prescale[3]), .Y(n5) );
  CLKINVX1M U13 ( .A(Prescale[1]), .Y(half_edges[0]) );
  NOR2X1M U14 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n2) );
  AO21XLM U15 ( .A0(Prescale[1]), .A1(Prescale[2]), .B0(n2), .Y(half_edges[1])
         );
  CLKNAND2X2M U16 ( .A(n2), .B(n5), .Y(n3) );
  OAI21X1M U17 ( .A0(n2), .A1(n5), .B0(n3), .Y(half_edges[2]) );
  XNOR2X1M U18 ( .A(Prescale[4]), .B(n3), .Y(half_edges[3]) );
  NOR2X1M U19 ( .A(Prescale[4]), .B(n3), .Y(n4) );
  CLKXOR2X2M U20 ( .A(Prescale[5]), .B(n4), .Y(half_edges[4]) );
  CLKXOR2X2M U21 ( .A(\add_21/carry[4] ), .B(half_edges[4]), .Y(
        half_edges_p1[4]) );
  NOR2X1M U22 ( .A(half_edges[1]), .B(half_edges[0]), .Y(n6) );
  AO21XLM U23 ( .A0(half_edges[0]), .A1(half_edges[1]), .B0(n6), .Y(
        half_edges_n1[1]) );
  CLKNAND2X2M U24 ( .A(n6), .B(n13), .Y(n11) );
  OAI21X1M U25 ( .A0(n6), .A1(n13), .B0(n11), .Y(half_edges_n1[2]) );
  XNOR2X1M U26 ( .A(half_edges[3]), .B(n11), .Y(half_edges_n1[3]) );
  NOR2X1M U27 ( .A(half_edges[3]), .B(n11), .Y(n12) );
  CLKXOR2X2M U28 ( .A(half_edges[4]), .B(n12), .Y(half_edges_n1[4]) );
  MXI2X1M U29 ( .A(n14), .B(n15), .S0(n16), .Y(n25) );
  NOR2X1M U30 ( .A(n17), .B(n18), .Y(n16) );
  NAND4X1M U31 ( .A(n19), .B(n20), .C(n21), .D(n22), .Y(n18) );
  CLKXOR2X2M U32 ( .A(n26), .B(half_edges_p1[1]), .Y(n22) );
  XNOR2X1M U33 ( .A(edge_count[2]), .B(half_edges_p1[2]), .Y(n21) );
  XNOR2X1M U34 ( .A(edge_count[3]), .B(half_edges_p1[3]), .Y(n20) );
  CLKXOR2X2M U35 ( .A(n27), .B(half_edges_p1[4]), .Y(n19) );
  NAND4BX1M U36 ( .AN(edge_count[5]), .B(n28), .C(n29), .D(n30), .Y(n17) );
  XNOR2X1M U37 ( .A(edge_count[0]), .B(Prescale[1]), .Y(n28) );
  CLKNAND2X2M U38 ( .A(Samples[2]), .B(Enable), .Y(n14) );
  MXI2X1M U39 ( .A(n15), .B(n31), .S0(n29), .Y(n24) );
  NAND4X1M U40 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n29) );
  NOR4BX1M U41 ( .AN(n30), .B(edge_count[5]), .C(n36), .D(n37), .Y(n35) );
  CLKXOR2X2M U42 ( .A(half_edges[1]), .B(edge_count[1]), .Y(n37) );
  CLKXOR2X2M U43 ( .A(half_edges[0]), .B(edge_count[0]), .Y(n36) );
  XNOR2X1M U44 ( .A(edge_count[3]), .B(half_edges[3]), .Y(n34) );
  CLKXOR2X2M U45 ( .A(n27), .B(half_edges[4]), .Y(n33) );
  CLKINVX1M U46 ( .A(edge_count[4]), .Y(n27) );
  XNOR2X1M U47 ( .A(edge_count[2]), .B(half_edges[2]), .Y(n32) );
  CLKNAND2X2M U48 ( .A(Samples[1]), .B(Enable), .Y(n31) );
  MXI2X1M U49 ( .A(n15), .B(n38), .S0(n30), .Y(n23) );
  NAND4X1M U50 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n30) );
  NOR3X1M U51 ( .A(n43), .B(edge_count[5]), .C(n44), .Y(n42) );
  CLKXOR2X2M U52 ( .A(Prescale[1]), .B(edge_count[0]), .Y(n44) );
  CLKXOR2X2M U53 ( .A(half_edges_n1[4]), .B(edge_count[4]), .Y(n43) );
  XNOR2X1M U54 ( .A(edge_count[2]), .B(half_edges_n1[2]), .Y(n41) );
  XNOR2X1M U55 ( .A(edge_count[3]), .B(half_edges_n1[3]), .Y(n40) );
  CLKXOR2X2M U56 ( .A(n26), .B(half_edges_n1[1]), .Y(n39) );
  CLKINVX1M U57 ( .A(edge_count[1]), .Y(n26) );
  CLKNAND2X2M U58 ( .A(Samples[0]), .B(Enable), .Y(n38) );
  CLKNAND2X2M U59 ( .A(S_DATA), .B(Enable), .Y(n15) );
  AOI21BX1M U60 ( .A0(n45), .A1(n46), .B0N(Enable), .Y(N58) );
  OAI21X1M U61 ( .A0(Samples[0]), .A1(Samples[1]), .B0(Samples[2]), .Y(n46) );
  CLKNAND2X2M U62 ( .A(Samples[0]), .B(Samples[1]), .Y(n45) );
endmodule


module deserializer_DATA_WIDTH8_test_1 ( CLK, RST, sampled_bit, Enable, 
        edge_count, Prescale, P_DATA, test_so, test_se );
  input [5:0] edge_count;
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, sampled_bit, Enable, test_se;
  output test_so;
  wire   N1, N2, N3, N4, N5, N6, N7, n1, n11, n13, n15, n17, n19, n21, n23,
         n25, n3, n4, n5, n6, n7, n8, n9, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40;
  assign test_so = n33;

  SDFFRQX2M \P_DATA_reg[5]  ( .D(n21), .SI(n36), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n13), .SI(P_DATA[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n19), .SI(n37), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[7]  ( .D(n25), .SI(n34), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[7]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n17), .SI(n38), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n23), .SI(n35), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[6]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n15), .SI(n39), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[2]) );
  SDFFRQX1M \P_DATA_reg[0]  ( .D(n11), .SI(sampled_bit), .SE(test_se), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  OAI22X1M U4 ( .A0(n40), .A1(n39), .B0(n1), .B1(n38), .Y(n13) );
  OAI22X1M U5 ( .A0(n40), .A1(n38), .B0(n1), .B1(n37), .Y(n15) );
  OAI22X1M U6 ( .A0(n40), .A1(n37), .B0(n1), .B1(n36), .Y(n17) );
  OAI22X1M U7 ( .A0(n40), .A1(n36), .B0(n1), .B1(n35), .Y(n19) );
  OAI22X1M U8 ( .A0(n40), .A1(n35), .B0(n1), .B1(n34), .Y(n21) );
  OAI22X1M U9 ( .A0(n40), .A1(n34), .B0(n1), .B1(n33), .Y(n23) );
  INVX2M U10 ( .A(n1), .Y(n40) );
  NAND2X2M U11 ( .A(N7), .B(Enable), .Y(n1) );
  OAI2BB2X1M U12 ( .B0(n1), .B1(n39), .A0N(P_DATA[0]), .A1N(n1), .Y(n11) );
  OAI2BB2X1M U13 ( .B0(n40), .B1(n33), .A0N(sampled_bit), .A1N(n40), .Y(n25)
         );
  OR2X2M U14 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n3) );
  INVX2M U15 ( .A(Prescale[3]), .Y(n7) );
  INVX2M U16 ( .A(P_DATA[2]), .Y(n38) );
  INVX2M U17 ( .A(P_DATA[6]), .Y(n34) );
  INVX2M U18 ( .A(P_DATA[7]), .Y(n33) );
  INVX2M U19 ( .A(P_DATA[3]), .Y(n37) );
  INVX2M U28 ( .A(P_DATA[4]), .Y(n36) );
  INVX2M U29 ( .A(P_DATA[5]), .Y(n35) );
  INVX2M U30 ( .A(P_DATA[1]), .Y(n39) );
  CLKINVX1M U31 ( .A(Prescale[0]), .Y(N1) );
  OAI2BB1X1M U32 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n3), .Y(N2) );
  NOR2X1M U33 ( .A(n3), .B(Prescale[2]), .Y(n4) );
  AO21XLM U34 ( .A0(n3), .A1(Prescale[2]), .B0(n4), .Y(N3) );
  CLKNAND2X2M U35 ( .A(n4), .B(n7), .Y(n5) );
  OAI21X1M U36 ( .A0(n4), .A1(n7), .B0(n5), .Y(N4) );
  XNOR2X1M U37 ( .A(Prescale[4]), .B(n5), .Y(N5) );
  NOR2X1M U38 ( .A(Prescale[4]), .B(n5), .Y(n6) );
  CLKXOR2X2M U39 ( .A(Prescale[5]), .B(n6), .Y(N6) );
  NOR2BX1M U40 ( .AN(edge_count[0]), .B(N1), .Y(n8) );
  OAI2B2X1M U41 ( .A1N(N2), .A0(n8), .B0(edge_count[1]), .B1(n8), .Y(n28) );
  NOR2BX1M U42 ( .AN(N1), .B(edge_count[0]), .Y(n9) );
  OAI2B2X1M U43 ( .A1N(edge_count[1]), .A0(n9), .B0(N2), .B1(n9), .Y(n27) );
  XNOR2X1M U44 ( .A(N6), .B(edge_count[5]), .Y(n26) );
  NAND3X1M U45 ( .A(n28), .B(n27), .C(n26), .Y(n32) );
  CLKXOR2X2M U46 ( .A(N5), .B(edge_count[4]), .Y(n31) );
  CLKXOR2X2M U47 ( .A(N3), .B(edge_count[2]), .Y(n30) );
  CLKXOR2X2M U48 ( .A(N4), .B(edge_count[3]), .Y(n29) );
  NOR4X1M U49 ( .A(n32), .B(n31), .C(n30), .D(n29), .Y(N7) );
endmodule


module strt_chk_test_1 ( CLK, RST, sampled_bit, Enable, strt_glitch, test_si, 
        test_se );
  input CLK, RST, sampled_bit, Enable, test_si, test_se;
  output strt_glitch;
  wire   n2;

  SDFFRQX1M strt_glitch_reg ( .D(n2), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(strt_glitch) );
  AO2B2X2M U4 ( .B0(sampled_bit), .B1(Enable), .A0(strt_glitch), .A1N(Enable), 
        .Y(n2) );
endmodule


module par_chk_DATA_WIDTH8_test_1 ( CLK, RST, parity_type, sampled_bit, Enable, 
        P_DATA, par_err, test_si, test_se );
  input [7:0] P_DATA;
  input CLK, RST, parity_type, sampled_bit, Enable, test_si, test_se;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n9, n10;

  SDFFRQX2M par_err_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(par_err) );
  XNOR2X2M U3 ( .A(sampled_bit), .B(parity_type), .Y(n5) );
  XOR3XLM U4 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X2M U5 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XOR3XLM U6 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U7 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
  OAI2BB2X1M U8 ( .B0(n1), .B1(n10), .A0N(par_err), .A1N(n10), .Y(n9) );
  INVX2M U9 ( .A(Enable), .Y(n10) );
  XOR3XLM U11 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
endmodule


module stp_chk_test_1 ( CLK, RST, sampled_bit, Enable, stp_err, test_si, 
        test_se );
  input CLK, RST, sampled_bit, Enable, test_si, test_se;
  output stp_err;
  wire   n3, n4, n7, n8;

  OAI2BB2X1M U3 ( .B0(sampled_bit), .B1(n4), .A0N(n8), .A1N(n4), .Y(n3) );
  INVX2M U5 ( .A(Enable), .Y(n4) );
  INVXLM U7 ( .A(n7), .Y(n8) );
  SDFFRX2M stp_err_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST), .Q(stp_err), .QN(n7) );
endmodule


module UART_RX_test_1 ( CLK, RST, RX_IN, parity_enable, parity_type, Prescale, 
        P_DATA, data_valid, parity_error, framing_error, test_si2, test_si1, 
        test_so1, test_se );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, parity_enable, parity_type, test_si2, test_si1,
         test_se;
  output data_valid, parity_error, framing_error, test_so1;
  wire   strt_glitch, strt_chk_en, edge_bit_en, deser_en, par_chk_en,
         stp_chk_en, dat_samp_en, sampled_bit, n1, n2, n4, n8, n9;
  wire   [3:0] bit_count;
  wire   [5:0] edge_count;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  INVXLM U3 ( .A(framing_error), .Y(n8) );
  INVXLM U4 ( .A(n8), .Y(n9) );
  uart_rx_fsm_DATA_WIDTH8_test_1 U0_uart_fsm ( .CLK(CLK), .RST(n1), .S_DATA(
        RX_IN), .Prescale(Prescale), .parity_enable(parity_enable), 
        .bit_count(bit_count), .edge_count(edge_count), .par_err(parity_error), 
        .stp_err(n9), .strt_glitch(strt_glitch), .strt_chk_en(strt_chk_en), 
        .edge_bit_en(edge_bit_en), .deser_en(deser_en), .par_chk_en(par_chk_en), .stp_chk_en(stp_chk_en), .dat_samp_en(dat_samp_en), .data_valid(data_valid), 
        .test_so(test_so1), .test_se(test_se) );
  edge_bit_counter_test_1 U0_edge_bit_counter ( .CLK(CLK), .RST(n1), .Enable(
        edge_bit_en), .Prescale(Prescale), .bit_count(bit_count), .edge_count(
        edge_count), .test_si(n4), .test_se(test_se) );
  data_sampling_test_1 U0_data_sampling ( .CLK(CLK), .RST(n1), .S_DATA(RX_IN), 
        .Prescale(Prescale), .edge_count(edge_count), .Enable(dat_samp_en), 
        .sampled_bit(sampled_bit), .test_si(test_si1), .test_se(test_se) );
  deserializer_DATA_WIDTH8_test_1 U0_deserializer ( .CLK(CLK), .RST(n1), 
        .sampled_bit(sampled_bit), .Enable(deser_en), .edge_count(edge_count), 
        .Prescale(Prescale), .P_DATA(P_DATA), .test_so(n4), .test_se(test_se)
         );
  strt_chk_test_1 U0_strt_chk ( .CLK(CLK), .RST(n1), .sampled_bit(sampled_bit), 
        .Enable(strt_chk_en), .strt_glitch(strt_glitch), .test_si(parity_error), .test_se(test_se) );
  par_chk_DATA_WIDTH8_test_1 U0_par_chk ( .CLK(CLK), .RST(n1), .parity_type(
        parity_type), .sampled_bit(sampled_bit), .Enable(par_chk_en), .P_DATA(
        P_DATA), .par_err(parity_error), .test_si(edge_count[5]), .test_se(
        test_se) );
  stp_chk_test_1 U0_stp_chk ( .CLK(CLK), .RST(n1), .sampled_bit(sampled_bit), 
        .Enable(stp_chk_en), .stp_err(framing_error), .test_si(test_si2), 
        .test_se(test_se) );
endmodule


module UART_test_1 ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P, 
        TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, parity_type, 
        parity_error, framing_error, test_si2, test_si1, test_so1, test_se );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type,
         test_si2, test_si1, test_se;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error, test_so1;
  wire   n1, n2, n4;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_TX_test_1 U0_UART_TX ( .P_DATA(TX_IN_P), .DATA_VALID(TX_IN_V), .PAR_EN(
        parity_enable), .PAR_TYP(parity_type), .CLK(TX_CLK), .RST(n1), 
        .TX_OUT(TX_OUT_S), .busy(TX_OUT_V), .test_si(n4), .test_so(test_so1), 
        .test_se(test_se) );
  UART_RX_test_1 U0_UART_RX ( .CLK(RX_CLK), .RST(n1), .RX_IN(RX_IN_S), 
        .parity_enable(parity_enable), .parity_type(parity_type), .Prescale(
        Prescale), .P_DATA(RX_OUT_P), .data_valid(RX_OUT_V), .parity_error(
        parity_error), .framing_error(framing_error), .test_si2(test_si2), 
        .test_si1(test_si1), .test_so1(n4), .test_se(test_se) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, RF_RdData, RF_RdData_VLD, UART_RX_DATA, 
        UART_RX_VLD, FIFO_FULL, ALU_OUT, ALU_OUT_VLD, RF_WrEn, RF_RdEn, 
        RF_Address, RF_WrData, ALU_FUN, ALU_EN, UART_TX_DATA, UART_TX_VLD, 
        CLKG_EN, CLKDIV_EN, test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] RF_RdData;
  input [7:0] UART_RX_DATA;
  input [15:0] ALU_OUT;
  output [3:0] RF_Address;
  output [7:0] RF_WrData;
  output [3:0] ALU_FUN;
  output [7:0] UART_TX_DATA;
  input CLK, RST, RF_RdData_VLD, UART_RX_VLD, FIFO_FULL, ALU_OUT_VLD, test_si2,
         test_si1, test_se;
  output RF_WrEn, RF_RdEn, ALU_EN, UART_TX_VLD, CLKG_EN, CLKDIV_EN, test_so2,
         test_so1;
  wire   n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n52, n53, n54, n55, n56, n57, n125, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n149, n150;
  wire   [15:0] stored_out;
  wire   [3:0] C_S;
  wire   [3:0] N_S;
  assign test_so2 = stored_out[15];

  SDFFRX1M \stored_out_reg[7]  ( .D(n113), .SI(n140), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n139), .QN(n29) );
  SDFFRX1M \stored_out_reg[6]  ( .D(n114), .SI(n141), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n140), .QN(n30) );
  SDFFRX1M \stored_out_reg[5]  ( .D(n115), .SI(n142), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n141), .QN(n31) );
  SDFFRX1M \stored_out_reg[4]  ( .D(n116), .SI(n143), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n142), .QN(n32) );
  SDFFRX1M \stored_out_reg[3]  ( .D(n117), .SI(n144), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n143), .QN(n33) );
  SDFFRX1M \stored_out_reg[2]  ( .D(n118), .SI(n145), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n144), .QN(n34) );
  SDFFRX1M \stored_out_reg[1]  ( .D(n119), .SI(n146), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n145), .QN(n35) );
  SDFFRX1M \stored_out_reg[0]  ( .D(n120), .SI(n147), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n146), .QN(n36) );
  SDFFRX1M \stored_addr_reg[0]  ( .D(n124), .SI(n133), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n150), .QN(n28) );
  SDFFRX1M \stored_addr_reg[3]  ( .D(n121), .SI(test_si2), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(n147), .QN(n25) );
  SDFFRX1M \stored_addr_reg[1]  ( .D(n123), .SI(n150), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n149), .QN(n27) );
  SDFFRQX1M \C_S_reg[3]  ( .D(N_S[3]), .SI(n131), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(C_S[3]) );
  SDFFRQX1M \C_S_reg[1]  ( .D(N_S[1]), .SI(n125), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(C_S[1]) );
  SDFFRQX1M \C_S_reg[2]  ( .D(N_S[2]), .SI(n130), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(C_S[2]) );
  SDFFRQX1M \C_S_reg[0]  ( .D(N_S[0]), .SI(test_si1), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(C_S[0]) );
  SDFFRQX1M \stored_out_reg[15]  ( .D(n105), .SI(stored_out[14]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(stored_out[15]) );
  SDFFRQX1M \stored_out_reg[14]  ( .D(n106), .SI(stored_out[13]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(stored_out[14]) );
  SDFFRQX1M \stored_out_reg[13]  ( .D(n107), .SI(stored_out[12]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(stored_out[13]) );
  SDFFRQX1M \stored_out_reg[12]  ( .D(n108), .SI(stored_out[11]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(stored_out[12]) );
  SDFFRQX1M \stored_out_reg[11]  ( .D(n109), .SI(stored_out[10]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(stored_out[11]) );
  SDFFRQX1M \stored_out_reg[10]  ( .D(n110), .SI(stored_out[9]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(stored_out[10]) );
  SDFFRQX1M \stored_out_reg[9]  ( .D(n111), .SI(stored_out[8]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(stored_out[9]) );
  SDFFRQX1M \stored_out_reg[8]  ( .D(n112), .SI(n139), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(stored_out[8]) );
  OAI21X2M U42 ( .A0(n103), .A1(n137), .B0(n104), .Y(ALU_FUN[2]) );
  OAI21X2M U43 ( .A0(n103), .A1(n135), .B0(n104), .Y(ALU_FUN[0]) );
  NOR2X2M U44 ( .A(n78), .B(n26), .Y(RF_Address[2]) );
  INVX2M U45 ( .A(RF_WrEn), .Y(n57) );
  NAND2X2M U46 ( .A(n127), .B(n53), .Y(n64) );
  INVX2M U47 ( .A(n103), .Y(CLKG_EN) );
  INVX2M U48 ( .A(FIFO_FULL), .Y(n53) );
  INVX2M U49 ( .A(n77), .Y(n129) );
  AOI31X2M U50 ( .A0(n75), .A1(n76), .A2(n77), .B0(n134), .Y(RF_WrEn) );
  NOR3X2M U51 ( .A(n74), .B(FIFO_FULL), .C(n55), .Y(n62) );
  OA21X2M U52 ( .A0(n76), .A1(n134), .B0(n74), .Y(n78) );
  NAND3BX2M U53 ( .AN(n62), .B(n63), .C(n64), .Y(UART_TX_VLD) );
  NAND2X2M U54 ( .A(n80), .B(n130), .Y(n77) );
  NAND2X2M U55 ( .A(n73), .B(n133), .Y(n76) );
  NOR2X2M U56 ( .A(n135), .B(n57), .Y(RF_WrData[0]) );
  NOR2X2M U57 ( .A(n136), .B(n57), .Y(RF_WrData[1]) );
  NOR2X2M U58 ( .A(n137), .B(n57), .Y(RF_WrData[2]) );
  NOR2X2M U59 ( .A(n138), .B(n57), .Y(RF_WrData[3]) );
  NAND2X2M U60 ( .A(n101), .B(n130), .Y(n103) );
  INVX2M U61 ( .A(n58), .Y(n54) );
  INVX2M U62 ( .A(n63), .Y(n52) );
  INVX2M U63 ( .A(n74), .Y(RF_RdEn) );
  INVX2M U64 ( .A(n83), .Y(n127) );
  NOR2X2M U65 ( .A(n134), .B(n130), .Y(n91) );
  INVX2M U66 ( .A(n59), .Y(n56) );
  INVX2M U67 ( .A(n60), .Y(n132) );
  INVX2M U68 ( .A(n94), .Y(n128) );
  OAI21X2M U69 ( .A0(n103), .A1(n136), .B0(n104), .Y(ALU_FUN[1]) );
  NOR2X2M U70 ( .A(n103), .B(n134), .Y(ALU_EN) );
  NAND2X2M U71 ( .A(CLKG_EN), .B(n134), .Y(n104) );
  OAI21X2M U72 ( .A0(n103), .A1(n138), .B0(n104), .Y(ALU_FUN[3]) );
  NOR2X4M U73 ( .A(n78), .B(n25), .Y(RF_Address[3]) );
  NOR3X2M U74 ( .A(C_S[0]), .B(C_S[3]), .C(n131), .Y(n80) );
  NOR3X2M U75 ( .A(n125), .B(C_S[2]), .C(n130), .Y(n73) );
  INVX2M U76 ( .A(C_S[1]), .Y(n130) );
  NAND2X2M U77 ( .A(n80), .B(C_S[1]), .Y(n74) );
  INVX2M U78 ( .A(C_S[3]), .Y(n133) );
  INVX2M U79 ( .A(C_S[0]), .Y(n125) );
  INVX2M U80 ( .A(C_S[2]), .Y(n131) );
  OAI21X2M U81 ( .A0(n78), .A1(n28), .B0(n75), .Y(RF_Address[0]) );
  NOR2X2M U82 ( .A(n78), .B(n27), .Y(RF_Address[1]) );
  NOR3X2M U83 ( .A(C_S[0]), .B(C_S[2]), .C(n133), .Y(n101) );
  NAND2X2M U84 ( .A(ALU_OUT_VLD), .B(CLKG_EN), .Y(n58) );
  NOR2X2M U85 ( .A(C_S[0]), .B(C_S[1]), .Y(n79) );
  NAND2X2M U86 ( .A(C_S[1]), .B(n101), .Y(n83) );
  INVX2M U87 ( .A(UART_RX_VLD), .Y(n134) );
  OAI21X2M U88 ( .A0(n36), .A1(n64), .B0(n72), .Y(UART_TX_DATA[0]) );
  AOI22X1M U89 ( .A0(RF_RdData[0]), .A1(n62), .B0(n52), .B1(stored_out[8]), 
        .Y(n72) );
  OAI21X2M U90 ( .A0(n35), .A1(n64), .B0(n71), .Y(UART_TX_DATA[1]) );
  AOI22X1M U91 ( .A0(RF_RdData[1]), .A1(n62), .B0(n52), .B1(stored_out[9]), 
        .Y(n71) );
  OAI21X2M U92 ( .A0(n34), .A1(n64), .B0(n70), .Y(UART_TX_DATA[2]) );
  AOI22X1M U93 ( .A0(RF_RdData[2]), .A1(n62), .B0(n52), .B1(stored_out[10]), 
        .Y(n70) );
  OAI21X2M U94 ( .A0(n33), .A1(n64), .B0(n69), .Y(UART_TX_DATA[3]) );
  AOI22X1M U95 ( .A0(RF_RdData[3]), .A1(n62), .B0(n52), .B1(stored_out[11]), 
        .Y(n69) );
  OAI21X2M U96 ( .A0(n32), .A1(n64), .B0(n68), .Y(UART_TX_DATA[4]) );
  AOI22X1M U97 ( .A0(RF_RdData[4]), .A1(n62), .B0(n52), .B1(stored_out[12]), 
        .Y(n68) );
  OAI21X2M U98 ( .A0(n31), .A1(n64), .B0(n67), .Y(UART_TX_DATA[5]) );
  AOI22X1M U99 ( .A0(RF_RdData[5]), .A1(n62), .B0(n52), .B1(stored_out[13]), 
        .Y(n67) );
  OAI21X2M U100 ( .A0(n30), .A1(n64), .B0(n66), .Y(UART_TX_DATA[6]) );
  AOI22X1M U101 ( .A0(RF_RdData[6]), .A1(n62), .B0(n52), .B1(stored_out[14]), 
        .Y(n66) );
  OAI21X2M U102 ( .A0(n29), .A1(n64), .B0(n65), .Y(UART_TX_DATA[7]) );
  AOI22X1M U103 ( .A0(RF_RdData[7]), .A1(n62), .B0(n52), .B1(stored_out[15]), 
        .Y(n65) );
  NAND3X2M U104 ( .A(C_S[3]), .B(n53), .C(n73), .Y(n63) );
  OAI2BB2X1M U105 ( .B0(n54), .B1(n36), .A0N(ALU_OUT[0]), .A1N(n54), .Y(n120)
         );
  OAI2BB2X1M U106 ( .B0(n54), .B1(n35), .A0N(ALU_OUT[1]), .A1N(n54), .Y(n119)
         );
  OAI2BB2X1M U107 ( .B0(n54), .B1(n34), .A0N(ALU_OUT[2]), .A1N(n54), .Y(n118)
         );
  OAI2BB2X1M U108 ( .B0(n54), .B1(n33), .A0N(ALU_OUT[3]), .A1N(n54), .Y(n117)
         );
  OAI2BB2X1M U109 ( .B0(n54), .B1(n32), .A0N(ALU_OUT[4]), .A1N(n54), .Y(n116)
         );
  OAI2BB2X1M U110 ( .B0(n54), .B1(n31), .A0N(ALU_OUT[5]), .A1N(n54), .Y(n115)
         );
  OAI2BB2X1M U111 ( .B0(n54), .B1(n30), .A0N(ALU_OUT[6]), .A1N(n54), .Y(n114)
         );
  OAI2BB2X1M U112 ( .B0(n54), .B1(n29), .A0N(ALU_OUT[7]), .A1N(n54), .Y(n113)
         );
  NAND3X2M U113 ( .A(C_S[2]), .B(C_S[3]), .C(n79), .Y(n75) );
  AND2X2M U114 ( .A(UART_RX_DATA[4]), .B(RF_WrEn), .Y(RF_WrData[4]) );
  AND2X2M U115 ( .A(UART_RX_DATA[5]), .B(RF_WrEn), .Y(RF_WrData[5]) );
  AND2X2M U116 ( .A(UART_RX_DATA[6]), .B(RF_WrEn), .Y(RF_WrData[6]) );
  AND2X2M U117 ( .A(UART_RX_DATA[7]), .B(RF_WrEn), .Y(RF_WrData[7]) );
  INVX2M U118 ( .A(RF_RdData_VLD), .Y(n55) );
  AO22X1M U119 ( .A0(n58), .A1(stored_out[8]), .B0(ALU_OUT[8]), .B1(n54), .Y(
        n112) );
  AO22X1M U120 ( .A0(n58), .A1(stored_out[9]), .B0(ALU_OUT[9]), .B1(n54), .Y(
        n111) );
  AO22X1M U121 ( .A0(n58), .A1(stored_out[10]), .B0(ALU_OUT[10]), .B1(n54), 
        .Y(n110) );
  AO22X1M U122 ( .A0(n58), .A1(stored_out[11]), .B0(ALU_OUT[11]), .B1(n54), 
        .Y(n109) );
  AO22X1M U123 ( .A0(n58), .A1(stored_out[12]), .B0(ALU_OUT[12]), .B1(n54), 
        .Y(n108) );
  AO22X1M U124 ( .A0(n58), .A1(stored_out[13]), .B0(ALU_OUT[13]), .B1(n54), 
        .Y(n107) );
  AO22X1M U125 ( .A0(n58), .A1(stored_out[14]), .B0(ALU_OUT[14]), .B1(n54), 
        .Y(n106) );
  AO22X1M U126 ( .A0(n58), .A1(stored_out[15]), .B0(ALU_OUT[15]), .B1(n54), 
        .Y(n105) );
  NOR3X2M U127 ( .A(n135), .B(UART_RX_DATA[6]), .C(UART_RX_DATA[2]), .Y(n98)
         );
  OAI31X1M U128 ( .A0(n132), .A1(n91), .A2(n125), .B0(n99), .Y(N_S[0]) );
  AOI31X2M U129 ( .A0(n97), .A1(n135), .A2(n100), .B0(n127), .Y(n99) );
  NOR3X2M U130 ( .A(UART_RX_DATA[2]), .B(UART_RX_DATA[6]), .C(UART_RX_DATA[4]), 
        .Y(n100) );
  NOR2X2M U131 ( .A(C_S[2]), .B(C_S[3]), .Y(n60) );
  OAI22X1M U132 ( .A0(n59), .A1(n135), .B0(n56), .B1(n28), .Y(n124) );
  OAI22X1M U133 ( .A0(n59), .A1(n136), .B0(n56), .B1(n27), .Y(n123) );
  OAI22X1M U134 ( .A0(n59), .A1(n137), .B0(n56), .B1(n26), .Y(n122) );
  OAI22X1M U135 ( .A0(n59), .A1(n138), .B0(n56), .B1(n25), .Y(n121) );
  NAND3X2M U136 ( .A(n60), .B(n61), .C(UART_RX_VLD), .Y(n59) );
  OAI21X2M U137 ( .A0(C_S[1]), .A1(n125), .B0(n128), .Y(n61) );
  NOR3X2M U138 ( .A(UART_RX_DATA[1]), .B(UART_RX_DATA[5]), .C(UART_RX_DATA[4]), 
        .Y(n88) );
  OAI2B11X2M U139 ( .A1N(n79), .A0(n81), .B0(n82), .C0(n83), .Y(N_S[3]) );
  AOI21X2M U140 ( .A0(C_S[2]), .A1(UART_RX_VLD), .B0(C_S[3]), .Y(n81) );
  NAND3X2M U141 ( .A(n84), .B(UART_RX_DATA[4]), .C(n85), .Y(n82) );
  NOR3X2M U142 ( .A(n135), .B(UART_RX_DATA[5]), .C(UART_RX_DATA[1]), .Y(n85)
         );
  NOR2X2M U143 ( .A(n130), .B(C_S[0]), .Y(n94) );
  INVX2M U144 ( .A(UART_RX_DATA[0]), .Y(n135) );
  AND3X2M U145 ( .A(UART_RX_DATA[6]), .B(UART_RX_DATA[2]), .C(n89), .Y(n84) );
  AND3X2M U146 ( .A(UART_RX_DATA[5]), .B(UART_RX_DATA[1]), .C(n89), .Y(n97) );
  NAND3X2M U147 ( .A(C_S[0]), .B(n130), .C(UART_RX_VLD), .Y(n96) );
  NAND2X2M U148 ( .A(n86), .B(n87), .Y(N_S[2]) );
  AOI33X2M U149 ( .A0(C_S[2]), .A1(n134), .A2(n79), .B0(n125), .B1(n133), .B2(
        n90), .Y(n86) );
  AOI31X2M U150 ( .A0(n84), .A1(n135), .A2(n88), .B0(n129), .Y(n87) );
  OAI2BB2X1M U151 ( .B0(RF_RdData_VLD), .B1(n131), .A0N(n131), .A1N(n91), .Y(
        n90) );
  NAND4X2M U152 ( .A(n83), .B(n58), .C(n92), .D(n93), .Y(N_S[1]) );
  AOI32X1M U153 ( .A0(n133), .A1(n55), .A2(n94), .B0(n60), .B1(n95), .Y(n93)
         );
  NAND3X2M U154 ( .A(n97), .B(UART_RX_DATA[4]), .C(n98), .Y(n92) );
  OAI211X2M U155 ( .A0(UART_RX_VLD), .A1(n130), .B0(n96), .C0(n128), .Y(n95)
         );
  INVX2M U156 ( .A(UART_RX_DATA[1]), .Y(n136) );
  INVX2M U157 ( .A(UART_RX_DATA[2]), .Y(n137) );
  INVX2M U158 ( .A(UART_RX_DATA[3]), .Y(n138) );
  AND4X2M U159 ( .A(UART_RX_DATA[7]), .B(n79), .C(n102), .D(UART_RX_DATA[3]), 
        .Y(n89) );
  NOR2X2M U160 ( .A(n132), .B(n134), .Y(n102) );
  SDFFRX2M \stored_addr_reg[2]  ( .D(n122), .SI(n149), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(test_so1), .QN(n26) );
  INVX2M U3 ( .A(1'b0), .Y(CLKDIV_EN) );
endmodule


module RegFile_test_1 ( CLK, RST, WrEn, RdEn, Address, WrData, RdData, 
        RdData_VLD, REG0, REG1, REG2, REG3, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn, test_si2, test_si1, test_se;
  output RdData_VLD, test_so2, test_so1;
  wire   N11, N12, N13, N14, \regArr[15][7] , \regArr[15][6] , \regArr[15][5] ,
         \regArr[15][4] , \regArr[15][3] , \regArr[15][2] , \regArr[15][1] ,
         \regArr[15][0] , \regArr[14][7] , \regArr[14][6] , \regArr[14][5] ,
         \regArr[14][4] , \regArr[14][3] , \regArr[14][2] , \regArr[14][1] ,
         \regArr[14][0] , \regArr[13][7] , \regArr[13][6] , \regArr[13][5] ,
         \regArr[13][4] , \regArr[13][3] , \regArr[13][2] , \regArr[13][1] ,
         \regArr[13][0] , \regArr[12][7] , \regArr[12][6] , \regArr[12][5] ,
         \regArr[12][4] , \regArr[12][3] , \regArr[12][2] , \regArr[12][1] ,
         \regArr[12][0] , \regArr[11][7] , \regArr[11][6] , \regArr[11][5] ,
         \regArr[11][4] , \regArr[11][3] , \regArr[11][2] , \regArr[11][1] ,
         \regArr[11][0] , \regArr[10][7] , \regArr[10][6] , \regArr[10][5] ,
         \regArr[10][4] , \regArr[10][3] , \regArr[10][2] , \regArr[10][1] ,
         \regArr[10][0] , \regArr[9][7] , \regArr[9][6] , \regArr[9][5] ,
         \regArr[9][4] , \regArr[9][3] , \regArr[9][2] , \regArr[9][1] ,
         \regArr[9][0] , \regArr[8][7] , \regArr[8][6] , \regArr[8][5] ,
         \regArr[8][4] , \regArr[8][3] , \regArr[8][2] , \regArr[8][1] ,
         \regArr[8][0] , \regArr[7][7] , \regArr[7][6] , \regArr[7][5] ,
         \regArr[7][4] , \regArr[7][3] , \regArr[7][2] , \regArr[7][1] ,
         \regArr[7][0] , \regArr[6][7] , \regArr[6][6] , \regArr[6][5] ,
         \regArr[6][4] , \regArr[6][3] , \regArr[6][2] , \regArr[6][1] ,
         \regArr[6][0] , \regArr[5][7] , \regArr[5][6] , \regArr[5][5] ,
         \regArr[5][4] , \regArr[5][3] , \regArr[5][2] , \regArr[5][1] ,
         \regArr[5][0] , \regArr[4][7] , \regArr[4][6] , \regArr[4][5] ,
         \regArr[4][4] , \regArr[4][3] , \regArr[4][2] , \regArr[4][1] ,
         \regArr[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n371, n372, n373, n374;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so2 = \regArr[15][7] ;
  assign test_so1 = \regArr[5][7] ;

  SDFFSQX2M \regArr_reg[2][0]  ( .D(n202), .SI(REG1[7]), .SE(test_se), .CK(CLK), .SN(n344), .Q(REG2[0]) );
  SDFFRQX2M \regArr_reg[13][7]  ( .D(n297), .SI(\regArr[13][6] ), .SE(n371), 
        .CK(CLK), .RN(n352), .Q(\regArr[13][7] ) );
  SDFFRQX2M \regArr_reg[13][6]  ( .D(n296), .SI(\regArr[13][5] ), .SE(n374), 
        .CK(CLK), .RN(n352), .Q(\regArr[13][6] ) );
  SDFFRQX2M \regArr_reg[13][5]  ( .D(n295), .SI(\regArr[13][4] ), .SE(n373), 
        .CK(CLK), .RN(n352), .Q(\regArr[13][5] ) );
  SDFFRQX2M \regArr_reg[13][4]  ( .D(n294), .SI(\regArr[13][3] ), .SE(n372), 
        .CK(CLK), .RN(n352), .Q(\regArr[13][4] ) );
  SDFFRQX2M \regArr_reg[13][3]  ( .D(n293), .SI(\regArr[13][2] ), .SE(n371), 
        .CK(CLK), .RN(n352), .Q(\regArr[13][3] ) );
  SDFFRQX2M \regArr_reg[13][2]  ( .D(n292), .SI(\regArr[13][1] ), .SE(n374), 
        .CK(CLK), .RN(n352), .Q(\regArr[13][2] ) );
  SDFFRQX2M \regArr_reg[13][1]  ( .D(n291), .SI(\regArr[13][0] ), .SE(n373), 
        .CK(CLK), .RN(n352), .Q(\regArr[13][1] ) );
  SDFFRQX2M \regArr_reg[13][0]  ( .D(n290), .SI(\regArr[12][7] ), .SE(n372), 
        .CK(CLK), .RN(n352), .Q(\regArr[13][0] ) );
  SDFFRQX2M \regArr_reg[9][7]  ( .D(n265), .SI(\regArr[9][6] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\regArr[9][7] ) );
  SDFFRQX2M \regArr_reg[9][6]  ( .D(n264), .SI(\regArr[9][5] ), .SE(n374), 
        .CK(CLK), .RN(n350), .Q(\regArr[9][6] ) );
  SDFFRQX2M \regArr_reg[9][5]  ( .D(n263), .SI(\regArr[9][4] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\regArr[9][5] ) );
  SDFFRQX2M \regArr_reg[9][4]  ( .D(n262), .SI(\regArr[9][3] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\regArr[9][4] ) );
  SDFFRQX2M \regArr_reg[9][3]  ( .D(n261), .SI(\regArr[9][2] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\regArr[9][3] ) );
  SDFFRQX2M \regArr_reg[9][2]  ( .D(n260), .SI(\regArr[9][1] ), .SE(n374), 
        .CK(CLK), .RN(n350), .Q(\regArr[9][2] ) );
  SDFFRQX2M \regArr_reg[9][1]  ( .D(n259), .SI(\regArr[9][0] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\regArr[9][1] ) );
  SDFFRQX2M \regArr_reg[9][0]  ( .D(n258), .SI(\regArr[8][7] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\regArr[9][0] ) );
  SDFFRQX2M \regArr_reg[5][7]  ( .D(n233), .SI(\regArr[5][6] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\regArr[5][7] ) );
  SDFFRQX2M \regArr_reg[5][6]  ( .D(n232), .SI(\regArr[5][5] ), .SE(n374), 
        .CK(CLK), .RN(n348), .Q(\regArr[5][6] ) );
  SDFFRQX2M \regArr_reg[5][5]  ( .D(n231), .SI(\regArr[5][4] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regArr[5][5] ) );
  SDFFRQX2M \regArr_reg[5][4]  ( .D(n230), .SI(\regArr[5][3] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\regArr[5][4] ) );
  SDFFRQX2M \regArr_reg[5][3]  ( .D(n229), .SI(\regArr[5][2] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\regArr[5][3] ) );
  SDFFRQX2M \regArr_reg[5][2]  ( .D(n228), .SI(\regArr[5][1] ), .SE(n374), 
        .CK(CLK), .RN(n347), .Q(\regArr[5][2] ) );
  SDFFRQX2M \regArr_reg[5][1]  ( .D(n227), .SI(\regArr[5][0] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regArr[5][1] ) );
  SDFFRQX2M \regArr_reg[5][0]  ( .D(n226), .SI(\regArr[4][7] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\regArr[5][0] ) );
  SDFFRQX2M \regArr_reg[15][7]  ( .D(n313), .SI(\regArr[15][6] ), .SE(n371), 
        .CK(CLK), .RN(n344), .Q(\regArr[15][7] ) );
  SDFFRQX2M \regArr_reg[15][6]  ( .D(n312), .SI(\regArr[15][5] ), .SE(n374), 
        .CK(CLK), .RN(n353), .Q(\regArr[15][6] ) );
  SDFFRQX2M \regArr_reg[15][5]  ( .D(n311), .SI(\regArr[15][4] ), .SE(n373), 
        .CK(CLK), .RN(n353), .Q(\regArr[15][5] ) );
  SDFFRQX2M \regArr_reg[15][4]  ( .D(n310), .SI(\regArr[15][3] ), .SE(n372), 
        .CK(CLK), .RN(n353), .Q(\regArr[15][4] ) );
  SDFFRQX2M \regArr_reg[15][3]  ( .D(n309), .SI(\regArr[15][2] ), .SE(n371), 
        .CK(CLK), .RN(n353), .Q(\regArr[15][3] ) );
  SDFFRQX2M \regArr_reg[15][2]  ( .D(n308), .SI(\regArr[15][1] ), .SE(n374), 
        .CK(CLK), .RN(n353), .Q(\regArr[15][2] ) );
  SDFFRQX2M \regArr_reg[15][1]  ( .D(n307), .SI(\regArr[15][0] ), .SE(n373), 
        .CK(CLK), .RN(n353), .Q(\regArr[15][1] ) );
  SDFFRQX2M \regArr_reg[15][0]  ( .D(n306), .SI(\regArr[14][7] ), .SE(n372), 
        .CK(CLK), .RN(n353), .Q(\regArr[15][0] ) );
  SDFFRQX2M \regArr_reg[11][7]  ( .D(n281), .SI(\regArr[11][6] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\regArr[11][7] ) );
  SDFFRQX2M \regArr_reg[11][6]  ( .D(n280), .SI(\regArr[11][5] ), .SE(n374), 
        .CK(CLK), .RN(n351), .Q(\regArr[11][6] ) );
  SDFFRQX2M \regArr_reg[11][5]  ( .D(n279), .SI(\regArr[11][4] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\regArr[11][5] ) );
  SDFFRQX2M \regArr_reg[11][4]  ( .D(n278), .SI(\regArr[11][3] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\regArr[11][4] ) );
  SDFFRQX2M \regArr_reg[11][3]  ( .D(n277), .SI(\regArr[11][2] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\regArr[11][3] ) );
  SDFFRQX2M \regArr_reg[11][2]  ( .D(n276), .SI(\regArr[11][1] ), .SE(n374), 
        .CK(CLK), .RN(n351), .Q(\regArr[11][2] ) );
  SDFFRQX2M \regArr_reg[11][1]  ( .D(n275), .SI(\regArr[11][0] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\regArr[11][1] ) );
  SDFFRQX2M \regArr_reg[11][0]  ( .D(n274), .SI(\regArr[10][7] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\regArr[11][0] ) );
  SDFFRQX2M \regArr_reg[7][7]  ( .D(n249), .SI(\regArr[7][6] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\regArr[7][7] ) );
  SDFFRQX2M \regArr_reg[7][6]  ( .D(n248), .SI(\regArr[7][5] ), .SE(n374), 
        .CK(CLK), .RN(n349), .Q(\regArr[7][6] ) );
  SDFFRQX2M \regArr_reg[7][5]  ( .D(n247), .SI(\regArr[7][4] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\regArr[7][5] ) );
  SDFFRQX2M \regArr_reg[7][4]  ( .D(n246), .SI(\regArr[7][3] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\regArr[7][4] ) );
  SDFFRQX2M \regArr_reg[7][3]  ( .D(n245), .SI(\regArr[7][2] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\regArr[7][3] ) );
  SDFFRQX2M \regArr_reg[7][2]  ( .D(n244), .SI(\regArr[7][1] ), .SE(n374), 
        .CK(CLK), .RN(n348), .Q(\regArr[7][2] ) );
  SDFFRQX2M \regArr_reg[7][1]  ( .D(n243), .SI(\regArr[7][0] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\regArr[7][1] ) );
  SDFFRQX2M \regArr_reg[7][0]  ( .D(n242), .SI(\regArr[6][7] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\regArr[7][0] ) );
  SDFFRQX2M \regArr_reg[14][7]  ( .D(n305), .SI(\regArr[14][6] ), .SE(n371), 
        .CK(CLK), .RN(n353), .Q(\regArr[14][7] ) );
  SDFFRQX2M \regArr_reg[14][6]  ( .D(n304), .SI(\regArr[14][5] ), .SE(n374), 
        .CK(CLK), .RN(n353), .Q(\regArr[14][6] ) );
  SDFFRQX2M \regArr_reg[14][5]  ( .D(n303), .SI(\regArr[14][4] ), .SE(n373), 
        .CK(CLK), .RN(n353), .Q(\regArr[14][5] ) );
  SDFFRQX2M \regArr_reg[14][4]  ( .D(n302), .SI(\regArr[14][3] ), .SE(n372), 
        .CK(CLK), .RN(n353), .Q(\regArr[14][4] ) );
  SDFFRQX2M \regArr_reg[14][3]  ( .D(n301), .SI(\regArr[14][2] ), .SE(n371), 
        .CK(CLK), .RN(n353), .Q(\regArr[14][3] ) );
  SDFFRQX2M \regArr_reg[14][2]  ( .D(n300), .SI(\regArr[14][1] ), .SE(n374), 
        .CK(CLK), .RN(n352), .Q(\regArr[14][2] ) );
  SDFFRQX2M \regArr_reg[14][1]  ( .D(n299), .SI(\regArr[14][0] ), .SE(n373), 
        .CK(CLK), .RN(n352), .Q(\regArr[14][1] ) );
  SDFFRQX2M \regArr_reg[14][0]  ( .D(n298), .SI(\regArr[13][7] ), .SE(n372), 
        .CK(CLK), .RN(n352), .Q(\regArr[14][0] ) );
  SDFFRQX2M \regArr_reg[10][7]  ( .D(n273), .SI(\regArr[10][6] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\regArr[10][7] ) );
  SDFFRQX2M \regArr_reg[10][6]  ( .D(n272), .SI(\regArr[10][5] ), .SE(n374), 
        .CK(CLK), .RN(n350), .Q(\regArr[10][6] ) );
  SDFFRQX2M \regArr_reg[10][5]  ( .D(n271), .SI(\regArr[10][4] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\regArr[10][5] ) );
  SDFFRQX2M \regArr_reg[10][4]  ( .D(n270), .SI(\regArr[10][3] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\regArr[10][4] ) );
  SDFFRQX2M \regArr_reg[10][3]  ( .D(n269), .SI(\regArr[10][2] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\regArr[10][3] ) );
  SDFFRQX2M \regArr_reg[10][2]  ( .D(n268), .SI(\regArr[10][1] ), .SE(n374), 
        .CK(CLK), .RN(n350), .Q(\regArr[10][2] ) );
  SDFFRQX2M \regArr_reg[10][1]  ( .D(n267), .SI(\regArr[10][0] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\regArr[10][1] ) );
  SDFFRQX2M \regArr_reg[10][0]  ( .D(n266), .SI(\regArr[9][7] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\regArr[10][0] ) );
  SDFFRQX2M \regArr_reg[6][7]  ( .D(n241), .SI(\regArr[6][6] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\regArr[6][7] ) );
  SDFFRQX2M \regArr_reg[6][6]  ( .D(n240), .SI(\regArr[6][5] ), .SE(n374), 
        .CK(CLK), .RN(n348), .Q(\regArr[6][6] ) );
  SDFFRQX2M \regArr_reg[6][5]  ( .D(n239), .SI(\regArr[6][4] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\regArr[6][5] ) );
  SDFFRQX2M \regArr_reg[6][4]  ( .D(n238), .SI(\regArr[6][3] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\regArr[6][4] ) );
  SDFFRQX2M \regArr_reg[6][3]  ( .D(n237), .SI(\regArr[6][2] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\regArr[6][3] ) );
  SDFFRQX2M \regArr_reg[6][2]  ( .D(n236), .SI(\regArr[6][1] ), .SE(n374), 
        .CK(CLK), .RN(n348), .Q(\regArr[6][2] ) );
  SDFFRQX2M \regArr_reg[6][1]  ( .D(n235), .SI(\regArr[6][0] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\regArr[6][1] ) );
  SDFFRQX2M \regArr_reg[6][0]  ( .D(n234), .SI(test_si2), .SE(n372), .CK(CLK), 
        .RN(n348), .Q(\regArr[6][0] ) );
  SDFFRQX2M \regArr_reg[12][7]  ( .D(n289), .SI(\regArr[12][6] ), .SE(n371), 
        .CK(CLK), .RN(n352), .Q(\regArr[12][7] ) );
  SDFFRQX2M \regArr_reg[12][6]  ( .D(n288), .SI(\regArr[12][5] ), .SE(n374), 
        .CK(CLK), .RN(n352), .Q(\regArr[12][6] ) );
  SDFFRQX2M \regArr_reg[12][5]  ( .D(n287), .SI(\regArr[12][4] ), .SE(n373), 
        .CK(CLK), .RN(n352), .Q(\regArr[12][5] ) );
  SDFFRQX2M \regArr_reg[12][4]  ( .D(n286), .SI(\regArr[12][3] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\regArr[12][4] ) );
  SDFFRQX2M \regArr_reg[12][3]  ( .D(n285), .SI(\regArr[12][2] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\regArr[12][3] ) );
  SDFFRQX2M \regArr_reg[12][2]  ( .D(n284), .SI(\regArr[12][1] ), .SE(n374), 
        .CK(CLK), .RN(n351), .Q(\regArr[12][2] ) );
  SDFFRQX2M \regArr_reg[12][1]  ( .D(n283), .SI(\regArr[12][0] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\regArr[12][1] ) );
  SDFFRQX2M \regArr_reg[12][0]  ( .D(n282), .SI(\regArr[11][7] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\regArr[12][0] ) );
  SDFFRQX2M \regArr_reg[8][7]  ( .D(n257), .SI(\regArr[8][6] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\regArr[8][7] ) );
  SDFFRQX2M \regArr_reg[8][6]  ( .D(n256), .SI(\regArr[8][5] ), .SE(n374), 
        .CK(CLK), .RN(n349), .Q(\regArr[8][6] ) );
  SDFFRQX2M \regArr_reg[8][5]  ( .D(n255), .SI(\regArr[8][4] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\regArr[8][5] ) );
  SDFFRQX2M \regArr_reg[8][4]  ( .D(n254), .SI(\regArr[8][3] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\regArr[8][4] ) );
  SDFFRQX2M \regArr_reg[8][3]  ( .D(n253), .SI(\regArr[8][2] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\regArr[8][3] ) );
  SDFFRQX2M \regArr_reg[8][2]  ( .D(n252), .SI(\regArr[8][1] ), .SE(n374), 
        .CK(CLK), .RN(n349), .Q(\regArr[8][2] ) );
  SDFFRQX2M \regArr_reg[8][1]  ( .D(n251), .SI(\regArr[8][0] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\regArr[8][1] ) );
  SDFFRQX2M \regArr_reg[8][0]  ( .D(n250), .SI(\regArr[7][7] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\regArr[8][0] ) );
  SDFFRQX2M \regArr_reg[4][7]  ( .D(n225), .SI(\regArr[4][6] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\regArr[4][7] ) );
  SDFFRQX2M \regArr_reg[4][6]  ( .D(n224), .SI(\regArr[4][5] ), .SE(n374), 
        .CK(CLK), .RN(n347), .Q(\regArr[4][6] ) );
  SDFFRQX2M \regArr_reg[4][5]  ( .D(n223), .SI(\regArr[4][4] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regArr[4][5] ) );
  SDFFRQX2M \regArr_reg[4][4]  ( .D(n222), .SI(\regArr[4][3] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\regArr[4][4] ) );
  SDFFRQX2M \regArr_reg[4][3]  ( .D(n221), .SI(\regArr[4][2] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\regArr[4][3] ) );
  SDFFRQX2M \regArr_reg[4][2]  ( .D(n220), .SI(\regArr[4][1] ), .SE(n374), 
        .CK(CLK), .RN(n347), .Q(\regArr[4][2] ) );
  SDFFRQX2M \regArr_reg[4][1]  ( .D(n219), .SI(\regArr[4][0] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\regArr[4][1] ) );
  SDFFRQX2M \regArr_reg[4][0]  ( .D(n218), .SI(REG3[7]), .SE(n372), .CK(CLK), 
        .RN(n347), .Q(\regArr[4][0] ) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n184), .SI(RdData[6]), .SE(n371), .CK(CLK), 
        .RN(n345), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n183), .SI(RdData[5]), .SE(n374), .CK(CLK), 
        .RN(n344), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n182), .SI(RdData[4]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n181), .SI(RdData[3]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n180), .SI(RdData[2]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n179), .SI(RdData[1]), .SE(n374), .CK(CLK), 
        .RN(n344), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n178), .SI(RdData[0]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n177), .SI(RdData_VLD), .SE(n372), .CK(CLK), 
        .RN(n348), .Q(RdData[0]) );
  SDFFRQX2M \regArr_reg[3][0]  ( .D(n210), .SI(REG2[7]), .SE(n371), .CK(CLK), 
        .RN(n346), .Q(REG3[0]) );
  SDFFRQX2M \regArr_reg[1][6]  ( .D(n200), .SI(REG1[5]), .SE(n374), .CK(CLK), 
        .RN(n345), .Q(REG1[6]) );
  SDFFRQX2M \regArr_reg[0][7]  ( .D(n193), .SI(REG0[6]), .SE(n373), .CK(CLK), 
        .RN(n345), .Q(REG0[7]) );
  SDFFRQX2M \regArr_reg[0][6]  ( .D(n192), .SI(REG0[5]), .SE(n372), .CK(CLK), 
        .RN(n345), .Q(REG0[6]) );
  SDFFRQX2M \regArr_reg[0][5]  ( .D(n191), .SI(REG0[4]), .SE(n371), .CK(CLK), 
        .RN(n345), .Q(REG0[5]) );
  SDFFRQX2M \regArr_reg[0][4]  ( .D(n190), .SI(REG0[3]), .SE(n374), .CK(CLK), 
        .RN(n345), .Q(REG0[4]) );
  SDFFRQX2M \regArr_reg[0][3]  ( .D(n189), .SI(REG0[2]), .SE(n373), .CK(CLK), 
        .RN(n345), .Q(REG0[3]) );
  SDFFRQX2M \regArr_reg[0][2]  ( .D(n188), .SI(REG0[1]), .SE(n372), .CK(CLK), 
        .RN(n345), .Q(REG0[2]) );
  SDFFRQX2M \regArr_reg[0][1]  ( .D(n187), .SI(REG0[0]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG0[1]) );
  SDFFRQX2M \regArr_reg[0][0]  ( .D(n186), .SI(RdData[7]), .SE(n374), .CK(CLK), 
        .RN(n344), .Q(REG0[0]) );
  SDFFRQX2M \regArr_reg[2][1]  ( .D(n203), .SI(REG2[0]), .SE(n373), .CK(CLK), 
        .RN(n346), .Q(REG2[1]) );
  SDFFRQX2M \regArr_reg[1][1]  ( .D(n195), .SI(REG1[0]), .SE(n372), .CK(CLK), 
        .RN(n345), .Q(REG1[1]) );
  SDFFRQX2M \regArr_reg[1][5]  ( .D(n199), .SI(REG1[4]), .SE(n371), .CK(CLK), 
        .RN(n346), .Q(REG1[5]) );
  SDFFRQX2M \regArr_reg[1][4]  ( .D(n198), .SI(REG1[3]), .SE(n374), .CK(CLK), 
        .RN(n345), .Q(REG1[4]) );
  SDFFRQX2M \regArr_reg[1][7]  ( .D(n201), .SI(REG1[6]), .SE(n373), .CK(CLK), 
        .RN(n345), .Q(REG1[7]) );
  SDFFRQX2M \regArr_reg[1][3]  ( .D(n197), .SI(REG1[2]), .SE(n372), .CK(CLK), 
        .RN(n345), .Q(REG1[3]) );
  SDFFRQX2M \regArr_reg[1][2]  ( .D(n196), .SI(REG1[1]), .SE(n371), .CK(CLK), 
        .RN(n345), .Q(REG1[2]) );
  SDFFRQX2M \regArr_reg[1][0]  ( .D(n194), .SI(REG0[7]), .SE(n374), .CK(CLK), 
        .RN(n345), .Q(REG1[0]) );
  SDFFRQX2M \regArr_reg[3][6]  ( .D(n216), .SI(REG3[5]), .SE(n373), .CK(CLK), 
        .RN(n346), .Q(REG3[6]) );
  SDFFRQX2M \regArr_reg[3][7]  ( .D(n217), .SI(REG3[6]), .SE(n372), .CK(CLK), 
        .RN(n346), .Q(REG3[7]) );
  SDFFSQX2M \regArr_reg[3][5]  ( .D(n215), .SI(REG3[4]), .SE(n374), .CK(CLK), 
        .SN(n344), .Q(REG3[5]) );
  SDFFRQX2M \regArr_reg[3][4]  ( .D(n214), .SI(REG3[3]), .SE(n371), .CK(CLK), 
        .RN(n346), .Q(REG3[4]) );
  SDFFRQX2M \regArr_reg[3][2]  ( .D(n212), .SI(REG3[1]), .SE(n371), .CK(CLK), 
        .RN(n346), .Q(REG3[2]) );
  SDFFRQX2M \regArr_reg[3][3]  ( .D(n213), .SI(REG3[2]), .SE(n374), .CK(CLK), 
        .RN(n346), .Q(REG3[3]) );
  SDFFRQX2M \regArr_reg[3][1]  ( .D(n211), .SI(REG3[0]), .SE(n373), .CK(CLK), 
        .RN(n346), .Q(REG3[1]) );
  SDFFRQX2M \regArr_reg[2][2]  ( .D(n204), .SI(REG2[1]), .SE(n372), .CK(CLK), 
        .RN(n346), .Q(REG2[2]) );
  SDFFRQX2M \regArr_reg[2][4]  ( .D(n206), .SI(REG2[3]), .SE(n371), .CK(CLK), 
        .RN(n346), .Q(REG2[4]) );
  SDFFRQX2M \regArr_reg[2][3]  ( .D(n205), .SI(REG2[2]), .SE(n374), .CK(CLK), 
        .RN(n346), .Q(REG2[3]) );
  SDFFRQX2M \regArr_reg[2][6]  ( .D(n208), .SI(REG2[5]), .SE(n373), .CK(CLK), 
        .RN(n346), .Q(REG2[6]) );
  SDFFRQX2M \regArr_reg[2][5]  ( .D(n207), .SI(REG2[4]), .SE(n372), .CK(CLK), 
        .RN(n346), .Q(REG2[5]) );
  SDFFSQX1M \regArr_reg[2][7]  ( .D(n209), .SI(REG2[6]), .SE(n373), .CK(CLK), 
        .SN(RST), .Q(REG2[7]) );
  SDFFRQX1M RdData_VLD_reg ( .D(n185), .SI(test_si1), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(RdData_VLD) );
  NOR2BX2M U142 ( .AN(n175), .B(n342), .Y(n169) );
  NOR2BX2M U143 ( .AN(N13), .B(N12), .Y(n160) );
  NOR2BX2M U144 ( .AN(N13), .B(n343), .Y(n163) );
  NOR2BX2M U145 ( .AN(n164), .B(n342), .Y(n155) );
  NOR2X2M U146 ( .A(n343), .B(N13), .Y(n157) );
  NOR2X2M U147 ( .A(N12), .B(N13), .Y(n152) );
  INVX2M U148 ( .A(WrData[4]), .Y(n364) );
  INVX2M U149 ( .A(WrData[5]), .Y(n365) );
  INVX2M U150 ( .A(WrData[6]), .Y(n366) );
  INVX2M U151 ( .A(WrData[7]), .Y(n367) );
  INVX2M U152 ( .A(n339), .Y(n341) );
  INVX2M U153 ( .A(n339), .Y(n340) );
  INVX2M U154 ( .A(n337), .Y(n338) );
  BUFX2M U155 ( .A(n342), .Y(n339) );
  BUFX2M U156 ( .A(n343), .Y(n337) );
  INVX2M U157 ( .A(n149), .Y(n359) );
  NOR2BX2M U158 ( .AN(n164), .B(n340), .Y(n153) );
  NOR2BX2M U159 ( .AN(n175), .B(n340), .Y(n167) );
  NAND2X2M U160 ( .A(n155), .B(n152), .Y(n154) );
  NAND2X2M U161 ( .A(n167), .B(n152), .Y(n166) );
  NAND2X2M U162 ( .A(n169), .B(n152), .Y(n168) );
  NAND2X2M U163 ( .A(n167), .B(n157), .Y(n170) );
  NAND2X2M U164 ( .A(n169), .B(n157), .Y(n171) );
  NAND2X2M U165 ( .A(n157), .B(n153), .Y(n156) );
  NAND2X2M U166 ( .A(n157), .B(n155), .Y(n158) );
  NAND2X2M U167 ( .A(n160), .B(n153), .Y(n159) );
  NAND2X2M U168 ( .A(n160), .B(n155), .Y(n161) );
  NAND2X2M U169 ( .A(n163), .B(n153), .Y(n162) );
  NAND2X2M U170 ( .A(n163), .B(n155), .Y(n165) );
  NAND2X2M U171 ( .A(n167), .B(n160), .Y(n172) );
  NAND2X2M U172 ( .A(n169), .B(n160), .Y(n173) );
  NAND2X2M U173 ( .A(n167), .B(n163), .Y(n174) );
  NAND2X2M U174 ( .A(n169), .B(n163), .Y(n176) );
  NAND2X2M U175 ( .A(n152), .B(n153), .Y(n151) );
  NOR2BX2M U176 ( .AN(WrEn), .B(RdEn), .Y(n150) );
  NAND2BX2M U177 ( .AN(WrEn), .B(RdEn), .Y(n149) );
  BUFX2M U178 ( .A(n358), .Y(n345) );
  BUFX2M U179 ( .A(n357), .Y(n346) );
  BUFX2M U180 ( .A(n357), .Y(n347) );
  BUFX2M U181 ( .A(n356), .Y(n348) );
  BUFX2M U182 ( .A(n356), .Y(n349) );
  BUFX2M U183 ( .A(n355), .Y(n350) );
  BUFX2M U184 ( .A(n355), .Y(n351) );
  BUFX2M U185 ( .A(n354), .Y(n352) );
  BUFX2M U186 ( .A(n358), .Y(n344) );
  BUFX2M U187 ( .A(n354), .Y(n353) );
  NOR2BX2M U188 ( .AN(n150), .B(N14), .Y(n164) );
  AND2X2M U189 ( .A(N14), .B(n150), .Y(n175) );
  INVX2M U190 ( .A(WrData[0]), .Y(n363) );
  INVX2M U191 ( .A(WrData[1]), .Y(n362) );
  INVX2M U192 ( .A(WrData[2]), .Y(n361) );
  INVX2M U193 ( .A(WrData[3]), .Y(n360) );
  BUFX2M U194 ( .A(RST), .Y(n357) );
  BUFX2M U195 ( .A(RST), .Y(n356) );
  BUFX2M U196 ( .A(RST), .Y(n355) );
  BUFX2M U197 ( .A(RST), .Y(n354) );
  BUFX2M U198 ( .A(RST), .Y(n358) );
  OAI2BB2X1M U199 ( .B0(n151), .B1(n363), .A0N(REG0[0]), .A1N(n151), .Y(n186)
         );
  OAI2BB2X1M U200 ( .B0(n151), .B1(n362), .A0N(REG0[1]), .A1N(n151), .Y(n187)
         );
  OAI2BB2X1M U201 ( .B0(n151), .B1(n361), .A0N(REG0[2]), .A1N(n151), .Y(n188)
         );
  OAI2BB2X1M U202 ( .B0(n151), .B1(n360), .A0N(REG0[3]), .A1N(n151), .Y(n189)
         );
  OAI2BB2X1M U203 ( .B0(n151), .B1(n364), .A0N(REG0[4]), .A1N(n151), .Y(n190)
         );
  OAI2BB2X1M U204 ( .B0(n151), .B1(n365), .A0N(REG0[5]), .A1N(n151), .Y(n191)
         );
  OAI2BB2X1M U205 ( .B0(n151), .B1(n366), .A0N(REG0[6]), .A1N(n151), .Y(n192)
         );
  OAI2BB2X1M U206 ( .B0(n151), .B1(n367), .A0N(REG0[7]), .A1N(n151), .Y(n193)
         );
  OAI2BB2X1M U207 ( .B0(n363), .B1(n154), .A0N(REG1[0]), .A1N(n154), .Y(n194)
         );
  OAI2BB2X1M U208 ( .B0(n362), .B1(n154), .A0N(REG1[1]), .A1N(n154), .Y(n195)
         );
  OAI2BB2X1M U209 ( .B0(n361), .B1(n154), .A0N(REG1[2]), .A1N(n154), .Y(n196)
         );
  OAI2BB2X1M U210 ( .B0(n360), .B1(n154), .A0N(REG1[3]), .A1N(n154), .Y(n197)
         );
  OAI2BB2X1M U211 ( .B0(n364), .B1(n154), .A0N(REG1[4]), .A1N(n154), .Y(n198)
         );
  OAI2BB2X1M U212 ( .B0(n365), .B1(n154), .A0N(REG1[5]), .A1N(n154), .Y(n199)
         );
  OAI2BB2X1M U213 ( .B0(n366), .B1(n154), .A0N(REG1[6]), .A1N(n154), .Y(n200)
         );
  OAI2BB2X1M U214 ( .B0(n367), .B1(n154), .A0N(REG1[7]), .A1N(n154), .Y(n201)
         );
  OAI2BB2X1M U215 ( .B0(n363), .B1(n159), .A0N(\regArr[4][0] ), .A1N(n159), 
        .Y(n218) );
  OAI2BB2X1M U216 ( .B0(n362), .B1(n159), .A0N(\regArr[4][1] ), .A1N(n159), 
        .Y(n219) );
  OAI2BB2X1M U217 ( .B0(n361), .B1(n159), .A0N(\regArr[4][2] ), .A1N(n159), 
        .Y(n220) );
  OAI2BB2X1M U218 ( .B0(n360), .B1(n159), .A0N(\regArr[4][3] ), .A1N(n159), 
        .Y(n221) );
  OAI2BB2X1M U219 ( .B0(n364), .B1(n159), .A0N(\regArr[4][4] ), .A1N(n159), 
        .Y(n222) );
  OAI2BB2X1M U220 ( .B0(n365), .B1(n159), .A0N(\regArr[4][5] ), .A1N(n159), 
        .Y(n223) );
  OAI2BB2X1M U221 ( .B0(n366), .B1(n159), .A0N(\regArr[4][6] ), .A1N(n159), 
        .Y(n224) );
  OAI2BB2X1M U222 ( .B0(n367), .B1(n159), .A0N(\regArr[4][7] ), .A1N(n159), 
        .Y(n225) );
  OAI2BB2X1M U223 ( .B0(n363), .B1(n161), .A0N(\regArr[5][0] ), .A1N(n161), 
        .Y(n226) );
  OAI2BB2X1M U224 ( .B0(n362), .B1(n161), .A0N(\regArr[5][1] ), .A1N(n161), 
        .Y(n227) );
  OAI2BB2X1M U225 ( .B0(n361), .B1(n161), .A0N(\regArr[5][2] ), .A1N(n161), 
        .Y(n228) );
  OAI2BB2X1M U226 ( .B0(n360), .B1(n161), .A0N(\regArr[5][3] ), .A1N(n161), 
        .Y(n229) );
  OAI2BB2X1M U227 ( .B0(n364), .B1(n161), .A0N(\regArr[5][4] ), .A1N(n161), 
        .Y(n230) );
  OAI2BB2X1M U228 ( .B0(n365), .B1(n161), .A0N(\regArr[5][5] ), .A1N(n161), 
        .Y(n231) );
  OAI2BB2X1M U229 ( .B0(n366), .B1(n161), .A0N(\regArr[5][6] ), .A1N(n161), 
        .Y(n232) );
  OAI2BB2X1M U230 ( .B0(n367), .B1(n161), .A0N(\regArr[5][7] ), .A1N(n161), 
        .Y(n233) );
  OAI2BB2X1M U231 ( .B0(n363), .B1(n162), .A0N(\regArr[6][0] ), .A1N(n162), 
        .Y(n234) );
  OAI2BB2X1M U232 ( .B0(n362), .B1(n162), .A0N(\regArr[6][1] ), .A1N(n162), 
        .Y(n235) );
  OAI2BB2X1M U233 ( .B0(n361), .B1(n162), .A0N(\regArr[6][2] ), .A1N(n162), 
        .Y(n236) );
  OAI2BB2X1M U234 ( .B0(n360), .B1(n162), .A0N(\regArr[6][3] ), .A1N(n162), 
        .Y(n237) );
  OAI2BB2X1M U235 ( .B0(n364), .B1(n162), .A0N(\regArr[6][4] ), .A1N(n162), 
        .Y(n238) );
  OAI2BB2X1M U236 ( .B0(n365), .B1(n162), .A0N(\regArr[6][5] ), .A1N(n162), 
        .Y(n239) );
  OAI2BB2X1M U237 ( .B0(n366), .B1(n162), .A0N(\regArr[6][6] ), .A1N(n162), 
        .Y(n240) );
  OAI2BB2X1M U238 ( .B0(n367), .B1(n162), .A0N(\regArr[6][7] ), .A1N(n162), 
        .Y(n241) );
  OAI2BB2X1M U239 ( .B0(n363), .B1(n165), .A0N(\regArr[7][0] ), .A1N(n165), 
        .Y(n242) );
  OAI2BB2X1M U240 ( .B0(n362), .B1(n165), .A0N(\regArr[7][1] ), .A1N(n165), 
        .Y(n243) );
  OAI2BB2X1M U241 ( .B0(n361), .B1(n165), .A0N(\regArr[7][2] ), .A1N(n165), 
        .Y(n244) );
  OAI2BB2X1M U242 ( .B0(n360), .B1(n165), .A0N(\regArr[7][3] ), .A1N(n165), 
        .Y(n245) );
  OAI2BB2X1M U243 ( .B0(n364), .B1(n165), .A0N(\regArr[7][4] ), .A1N(n165), 
        .Y(n246) );
  OAI2BB2X1M U244 ( .B0(n365), .B1(n165), .A0N(\regArr[7][5] ), .A1N(n165), 
        .Y(n247) );
  OAI2BB2X1M U245 ( .B0(n366), .B1(n165), .A0N(\regArr[7][6] ), .A1N(n165), 
        .Y(n248) );
  OAI2BB2X1M U246 ( .B0(n367), .B1(n165), .A0N(\regArr[7][7] ), .A1N(n165), 
        .Y(n249) );
  OAI2BB2X1M U247 ( .B0(n363), .B1(n166), .A0N(\regArr[8][0] ), .A1N(n166), 
        .Y(n250) );
  OAI2BB2X1M U248 ( .B0(n362), .B1(n166), .A0N(\regArr[8][1] ), .A1N(n166), 
        .Y(n251) );
  OAI2BB2X1M U249 ( .B0(n361), .B1(n166), .A0N(\regArr[8][2] ), .A1N(n166), 
        .Y(n252) );
  OAI2BB2X1M U250 ( .B0(n360), .B1(n166), .A0N(\regArr[8][3] ), .A1N(n166), 
        .Y(n253) );
  OAI2BB2X1M U251 ( .B0(n364), .B1(n166), .A0N(\regArr[8][4] ), .A1N(n166), 
        .Y(n254) );
  OAI2BB2X1M U252 ( .B0(n365), .B1(n166), .A0N(\regArr[8][5] ), .A1N(n166), 
        .Y(n255) );
  OAI2BB2X1M U253 ( .B0(n366), .B1(n166), .A0N(\regArr[8][6] ), .A1N(n166), 
        .Y(n256) );
  OAI2BB2X1M U254 ( .B0(n367), .B1(n166), .A0N(\regArr[8][7] ), .A1N(n166), 
        .Y(n257) );
  OAI2BB2X1M U255 ( .B0(n363), .B1(n168), .A0N(\regArr[9][0] ), .A1N(n168), 
        .Y(n258) );
  OAI2BB2X1M U256 ( .B0(n362), .B1(n168), .A0N(\regArr[9][1] ), .A1N(n168), 
        .Y(n259) );
  OAI2BB2X1M U257 ( .B0(n361), .B1(n168), .A0N(\regArr[9][2] ), .A1N(n168), 
        .Y(n260) );
  OAI2BB2X1M U258 ( .B0(n360), .B1(n168), .A0N(\regArr[9][3] ), .A1N(n168), 
        .Y(n261) );
  OAI2BB2X1M U259 ( .B0(n364), .B1(n168), .A0N(\regArr[9][4] ), .A1N(n168), 
        .Y(n262) );
  OAI2BB2X1M U260 ( .B0(n365), .B1(n168), .A0N(\regArr[9][5] ), .A1N(n168), 
        .Y(n263) );
  OAI2BB2X1M U261 ( .B0(n366), .B1(n168), .A0N(\regArr[9][6] ), .A1N(n168), 
        .Y(n264) );
  OAI2BB2X1M U262 ( .B0(n367), .B1(n168), .A0N(\regArr[9][7] ), .A1N(n168), 
        .Y(n265) );
  OAI2BB2X1M U263 ( .B0(n363), .B1(n170), .A0N(\regArr[10][0] ), .A1N(n170), 
        .Y(n266) );
  OAI2BB2X1M U264 ( .B0(n362), .B1(n170), .A0N(\regArr[10][1] ), .A1N(n170), 
        .Y(n267) );
  OAI2BB2X1M U265 ( .B0(n361), .B1(n170), .A0N(\regArr[10][2] ), .A1N(n170), 
        .Y(n268) );
  OAI2BB2X1M U266 ( .B0(n360), .B1(n170), .A0N(\regArr[10][3] ), .A1N(n170), 
        .Y(n269) );
  OAI2BB2X1M U267 ( .B0(n364), .B1(n170), .A0N(\regArr[10][4] ), .A1N(n170), 
        .Y(n270) );
  OAI2BB2X1M U268 ( .B0(n365), .B1(n170), .A0N(\regArr[10][5] ), .A1N(n170), 
        .Y(n271) );
  OAI2BB2X1M U269 ( .B0(n366), .B1(n170), .A0N(\regArr[10][6] ), .A1N(n170), 
        .Y(n272) );
  OAI2BB2X1M U270 ( .B0(n367), .B1(n170), .A0N(\regArr[10][7] ), .A1N(n170), 
        .Y(n273) );
  OAI2BB2X1M U271 ( .B0(n363), .B1(n171), .A0N(\regArr[11][0] ), .A1N(n171), 
        .Y(n274) );
  OAI2BB2X1M U272 ( .B0(n362), .B1(n171), .A0N(\regArr[11][1] ), .A1N(n171), 
        .Y(n275) );
  OAI2BB2X1M U273 ( .B0(n361), .B1(n171), .A0N(\regArr[11][2] ), .A1N(n171), 
        .Y(n276) );
  OAI2BB2X1M U274 ( .B0(n360), .B1(n171), .A0N(\regArr[11][3] ), .A1N(n171), 
        .Y(n277) );
  OAI2BB2X1M U275 ( .B0(n364), .B1(n171), .A0N(\regArr[11][4] ), .A1N(n171), 
        .Y(n278) );
  OAI2BB2X1M U276 ( .B0(n365), .B1(n171), .A0N(\regArr[11][5] ), .A1N(n171), 
        .Y(n279) );
  OAI2BB2X1M U277 ( .B0(n366), .B1(n171), .A0N(\regArr[11][6] ), .A1N(n171), 
        .Y(n280) );
  OAI2BB2X1M U278 ( .B0(n367), .B1(n171), .A0N(\regArr[11][7] ), .A1N(n171), 
        .Y(n281) );
  OAI2BB2X1M U279 ( .B0(n363), .B1(n172), .A0N(\regArr[12][0] ), .A1N(n172), 
        .Y(n282) );
  OAI2BB2X1M U280 ( .B0(n362), .B1(n172), .A0N(\regArr[12][1] ), .A1N(n172), 
        .Y(n283) );
  OAI2BB2X1M U281 ( .B0(n361), .B1(n172), .A0N(\regArr[12][2] ), .A1N(n172), 
        .Y(n284) );
  OAI2BB2X1M U282 ( .B0(n360), .B1(n172), .A0N(\regArr[12][3] ), .A1N(n172), 
        .Y(n285) );
  OAI2BB2X1M U283 ( .B0(n364), .B1(n172), .A0N(\regArr[12][4] ), .A1N(n172), 
        .Y(n286) );
  OAI2BB2X1M U284 ( .B0(n365), .B1(n172), .A0N(\regArr[12][5] ), .A1N(n172), 
        .Y(n287) );
  OAI2BB2X1M U285 ( .B0(n366), .B1(n172), .A0N(\regArr[12][6] ), .A1N(n172), 
        .Y(n288) );
  OAI2BB2X1M U286 ( .B0(n367), .B1(n172), .A0N(\regArr[12][7] ), .A1N(n172), 
        .Y(n289) );
  OAI2BB2X1M U287 ( .B0(n363), .B1(n173), .A0N(\regArr[13][0] ), .A1N(n173), 
        .Y(n290) );
  OAI2BB2X1M U288 ( .B0(n362), .B1(n173), .A0N(\regArr[13][1] ), .A1N(n173), 
        .Y(n291) );
  OAI2BB2X1M U289 ( .B0(n361), .B1(n173), .A0N(\regArr[13][2] ), .A1N(n173), 
        .Y(n292) );
  OAI2BB2X1M U290 ( .B0(n360), .B1(n173), .A0N(\regArr[13][3] ), .A1N(n173), 
        .Y(n293) );
  OAI2BB2X1M U291 ( .B0(n364), .B1(n173), .A0N(\regArr[13][4] ), .A1N(n173), 
        .Y(n294) );
  OAI2BB2X1M U292 ( .B0(n365), .B1(n173), .A0N(\regArr[13][5] ), .A1N(n173), 
        .Y(n295) );
  OAI2BB2X1M U293 ( .B0(n366), .B1(n173), .A0N(\regArr[13][6] ), .A1N(n173), 
        .Y(n296) );
  OAI2BB2X1M U294 ( .B0(n367), .B1(n173), .A0N(\regArr[13][7] ), .A1N(n173), 
        .Y(n297) );
  OAI2BB2X1M U295 ( .B0(n363), .B1(n174), .A0N(\regArr[14][0] ), .A1N(n174), 
        .Y(n298) );
  OAI2BB2X1M U296 ( .B0(n362), .B1(n174), .A0N(\regArr[14][1] ), .A1N(n174), 
        .Y(n299) );
  OAI2BB2X1M U297 ( .B0(n361), .B1(n174), .A0N(\regArr[14][2] ), .A1N(n174), 
        .Y(n300) );
  OAI2BB2X1M U298 ( .B0(n360), .B1(n174), .A0N(\regArr[14][3] ), .A1N(n174), 
        .Y(n301) );
  OAI2BB2X1M U299 ( .B0(n364), .B1(n174), .A0N(\regArr[14][4] ), .A1N(n174), 
        .Y(n302) );
  OAI2BB2X1M U300 ( .B0(n365), .B1(n174), .A0N(\regArr[14][5] ), .A1N(n174), 
        .Y(n303) );
  OAI2BB2X1M U301 ( .B0(n366), .B1(n174), .A0N(\regArr[14][6] ), .A1N(n174), 
        .Y(n304) );
  OAI2BB2X1M U302 ( .B0(n367), .B1(n174), .A0N(\regArr[14][7] ), .A1N(n174), 
        .Y(n305) );
  OAI2BB2X1M U303 ( .B0(n363), .B1(n176), .A0N(\regArr[15][0] ), .A1N(n176), 
        .Y(n306) );
  OAI2BB2X1M U304 ( .B0(n362), .B1(n176), .A0N(\regArr[15][1] ), .A1N(n176), 
        .Y(n307) );
  OAI2BB2X1M U305 ( .B0(n361), .B1(n176), .A0N(\regArr[15][2] ), .A1N(n176), 
        .Y(n308) );
  OAI2BB2X1M U306 ( .B0(n360), .B1(n176), .A0N(\regArr[15][3] ), .A1N(n176), 
        .Y(n309) );
  OAI2BB2X1M U307 ( .B0(n364), .B1(n176), .A0N(\regArr[15][4] ), .A1N(n176), 
        .Y(n310) );
  OAI2BB2X1M U308 ( .B0(n365), .B1(n176), .A0N(\regArr[15][5] ), .A1N(n176), 
        .Y(n311) );
  OAI2BB2X1M U309 ( .B0(n366), .B1(n176), .A0N(\regArr[15][6] ), .A1N(n176), 
        .Y(n312) );
  OAI2BB2X1M U310 ( .B0(n367), .B1(n176), .A0N(\regArr[15][7] ), .A1N(n176), 
        .Y(n313) );
  OAI2BB2X1M U311 ( .B0(n362), .B1(n156), .A0N(REG2[1]), .A1N(n156), .Y(n203)
         );
  OAI2BB2X1M U312 ( .B0(n361), .B1(n156), .A0N(REG2[2]), .A1N(n156), .Y(n204)
         );
  OAI2BB2X1M U313 ( .B0(n360), .B1(n156), .A0N(REG2[3]), .A1N(n156), .Y(n205)
         );
  OAI2BB2X1M U314 ( .B0(n364), .B1(n156), .A0N(REG2[4]), .A1N(n156), .Y(n206)
         );
  OAI2BB2X1M U315 ( .B0(n365), .B1(n156), .A0N(REG2[5]), .A1N(n156), .Y(n207)
         );
  OAI2BB2X1M U316 ( .B0(n366), .B1(n156), .A0N(REG2[6]), .A1N(n156), .Y(n208)
         );
  OAI2BB2X1M U317 ( .B0(n363), .B1(n158), .A0N(REG3[0]), .A1N(n158), .Y(n210)
         );
  OAI2BB2X1M U318 ( .B0(n362), .B1(n158), .A0N(REG3[1]), .A1N(n158), .Y(n211)
         );
  OAI2BB2X1M U319 ( .B0(n361), .B1(n158), .A0N(REG3[2]), .A1N(n158), .Y(n212)
         );
  OAI2BB2X1M U320 ( .B0(n360), .B1(n158), .A0N(REG3[3]), .A1N(n158), .Y(n213)
         );
  OAI2BB2X1M U321 ( .B0(n364), .B1(n158), .A0N(REG3[4]), .A1N(n158), .Y(n214)
         );
  OAI2BB2X1M U322 ( .B0(n366), .B1(n158), .A0N(REG3[6]), .A1N(n158), .Y(n216)
         );
  OAI2BB2X1M U323 ( .B0(n367), .B1(n158), .A0N(REG3[7]), .A1N(n158), .Y(n217)
         );
  OAI2BB2X1M U324 ( .B0(n363), .B1(n156), .A0N(REG2[0]), .A1N(n156), .Y(n202)
         );
  OAI2BB2X1M U325 ( .B0(n367), .B1(n156), .A0N(REG2[7]), .A1N(n156), .Y(n209)
         );
  OAI2BB2X1M U326 ( .B0(n365), .B1(n158), .A0N(REG3[5]), .A1N(n158), .Y(n215)
         );
  MX4X1M U327 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n341), 
        .S1(N12), .Y(n147) );
  MX4X1M U328 ( .A(\regArr[4][0] ), .B(\regArr[5][0] ), .C(\regArr[6][0] ), 
        .D(\regArr[7][0] ), .S0(n340), .S1(N12), .Y(n142) );
  MX4X1M U329 ( .A(\regArr[4][1] ), .B(\regArr[5][1] ), .C(\regArr[6][1] ), 
        .D(\regArr[7][1] ), .S0(n341), .S1(N12), .Y(n146) );
  MX4X1M U330 ( .A(\regArr[4][2] ), .B(\regArr[5][2] ), .C(\regArr[6][2] ), 
        .D(\regArr[7][2] ), .S0(n341), .S1(n338), .Y(n315) );
  MX4X1M U331 ( .A(\regArr[4][3] ), .B(\regArr[5][3] ), .C(\regArr[6][3] ), 
        .D(\regArr[7][3] ), .S0(n341), .S1(n338), .Y(n319) );
  MX4X1M U332 ( .A(\regArr[4][4] ), .B(\regArr[5][4] ), .C(\regArr[6][4] ), 
        .D(\regArr[7][4] ), .S0(n341), .S1(n338), .Y(n323) );
  MX4X1M U333 ( .A(\regArr[4][5] ), .B(\regArr[5][5] ), .C(\regArr[6][5] ), 
        .D(\regArr[7][5] ), .S0(n340), .S1(N12), .Y(n327) );
  MX4X1M U334 ( .A(\regArr[4][6] ), .B(\regArr[5][6] ), .C(\regArr[6][6] ), 
        .D(\regArr[7][6] ), .S0(n340), .S1(N12), .Y(n331) );
  MX4X1M U335 ( .A(\regArr[4][7] ), .B(\regArr[5][7] ), .C(\regArr[6][7] ), 
        .D(\regArr[7][7] ), .S0(n340), .S1(N12), .Y(n335) );
  MX4X1M U336 ( .A(\regArr[12][0] ), .B(\regArr[13][0] ), .C(\regArr[14][0] ), 
        .D(\regArr[15][0] ), .S0(n340), .S1(n338), .Y(n140) );
  MX4X1M U337 ( .A(\regArr[12][2] ), .B(\regArr[13][2] ), .C(\regArr[14][2] ), 
        .D(\regArr[15][2] ), .S0(n341), .S1(n338), .Y(n148) );
  MX4X1M U338 ( .A(\regArr[12][3] ), .B(\regArr[13][3] ), .C(\regArr[14][3] ), 
        .D(\regArr[15][3] ), .S0(n341), .S1(n338), .Y(n317) );
  MX4X1M U339 ( .A(\regArr[12][4] ), .B(\regArr[13][4] ), .C(\regArr[14][4] ), 
        .D(\regArr[15][4] ), .S0(n341), .S1(n338), .Y(n321) );
  MX4X1M U340 ( .A(\regArr[12][5] ), .B(\regArr[13][5] ), .C(\regArr[14][5] ), 
        .D(\regArr[15][5] ), .S0(n340), .S1(N12), .Y(n325) );
  MX4X1M U341 ( .A(\regArr[12][6] ), .B(\regArr[13][6] ), .C(\regArr[14][6] ), 
        .D(\regArr[15][6] ), .S0(n340), .S1(N12), .Y(n329) );
  MX4X1M U342 ( .A(\regArr[12][7] ), .B(\regArr[13][7] ), .C(\regArr[14][7] ), 
        .D(\regArr[15][7] ), .S0(n340), .S1(N12), .Y(n333) );
  AO22X1M U343 ( .A0(N43), .A1(n359), .B0(RdData[0]), .B1(n149), .Y(n177) );
  MX4X1M U344 ( .A(n143), .B(n141), .C(n142), .D(n140), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U345 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n340), 
        .S1(N12), .Y(n143) );
  MX4X1M U346 ( .A(\regArr[8][0] ), .B(\regArr[9][0] ), .C(\regArr[10][0] ), 
        .D(\regArr[11][0] ), .S0(n340), .S1(N12), .Y(n141) );
  AO22X1M U347 ( .A0(N42), .A1(n359), .B0(RdData[1]), .B1(n149), .Y(n178) );
  MX4X1M U348 ( .A(n147), .B(n145), .C(n146), .D(n144), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U349 ( .A(\regArr[8][1] ), .B(\regArr[9][1] ), .C(\regArr[10][1] ), 
        .D(\regArr[11][1] ), .S0(n340), .S1(N12), .Y(n145) );
  MX4X1M U350 ( .A(\regArr[12][1] ), .B(\regArr[13][1] ), .C(\regArr[14][1] ), 
        .D(\regArr[15][1] ), .S0(n340), .S1(n338), .Y(n144) );
  AO22X1M U351 ( .A0(N41), .A1(n359), .B0(RdData[2]), .B1(n149), .Y(n179) );
  MX4X1M U352 ( .A(n316), .B(n314), .C(n315), .D(n148), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U353 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n341), 
        .S1(n338), .Y(n316) );
  MX4X1M U354 ( .A(\regArr[8][2] ), .B(\regArr[9][2] ), .C(\regArr[10][2] ), 
        .D(\regArr[11][2] ), .S0(n341), .S1(n338), .Y(n314) );
  AO22X1M U355 ( .A0(N40), .A1(n359), .B0(RdData[3]), .B1(n149), .Y(n180) );
  MX4X1M U356 ( .A(n320), .B(n318), .C(n319), .D(n317), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U357 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n341), 
        .S1(n338), .Y(n320) );
  MX4X1M U358 ( .A(\regArr[8][3] ), .B(\regArr[9][3] ), .C(\regArr[10][3] ), 
        .D(\regArr[11][3] ), .S0(n341), .S1(n338), .Y(n318) );
  AO22X1M U359 ( .A0(N39), .A1(n359), .B0(RdData[4]), .B1(n149), .Y(n181) );
  MX4X1M U360 ( .A(n324), .B(n322), .C(n323), .D(n321), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U361 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(N11), 
        .S1(n338), .Y(n324) );
  MX4X1M U362 ( .A(\regArr[8][4] ), .B(\regArr[9][4] ), .C(\regArr[10][4] ), 
        .D(\regArr[11][4] ), .S0(n341), .S1(n338), .Y(n322) );
  AO22X1M U363 ( .A0(N38), .A1(n359), .B0(RdData[5]), .B1(n149), .Y(n182) );
  MX4X1M U364 ( .A(n328), .B(n326), .C(n327), .D(n325), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U365 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(N11), 
        .S1(N12), .Y(n328) );
  MX4X1M U366 ( .A(\regArr[8][5] ), .B(\regArr[9][5] ), .C(\regArr[10][5] ), 
        .D(\regArr[11][5] ), .S0(n340), .S1(N12), .Y(n326) );
  AO22X1M U367 ( .A0(N37), .A1(n359), .B0(RdData[6]), .B1(n149), .Y(n183) );
  MX4X1M U368 ( .A(n332), .B(n330), .C(n331), .D(n329), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U369 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(N11), 
        .S1(N12), .Y(n332) );
  MX4X1M U370 ( .A(\regArr[8][6] ), .B(\regArr[9][6] ), .C(\regArr[10][6] ), 
        .D(\regArr[11][6] ), .S0(n341), .S1(N12), .Y(n330) );
  AO22X1M U371 ( .A0(N36), .A1(n359), .B0(RdData[7]), .B1(n149), .Y(n184) );
  MX4X1M U372 ( .A(n336), .B(n334), .C(n335), .D(n333), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U373 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(N11), 
        .S1(N12), .Y(n336) );
  MX4X1M U374 ( .A(\regArr[8][7] ), .B(\regArr[9][7] ), .C(\regArr[10][7] ), 
        .D(\regArr[11][7] ), .S0(N11), .S1(N12), .Y(n334) );
  INVX2M U375 ( .A(N11), .Y(n342) );
  INVX2M U376 ( .A(N12), .Y(n343) );
  OAI2BB1X2M U377 ( .A0N(RdData_VLD), .A1N(n150), .B0(n149), .Y(n185) );
  DLY1X1M U378 ( .A(test_se), .Y(n371) );
  DLY1X1M U379 ( .A(test_se), .Y(n372) );
  DLY1X1M U380 ( .A(test_se), .Y(n373) );
  DLY1X1M U381 ( .A(test_se), .Y(n374) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n18), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n18), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n18), .Y(n6) );
  NAND2X2M U19 ( .A(n2), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n6), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n4), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n10) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U23 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n32) );
  INVX2M U38 ( .A(A[6]), .Y(n33) );
  INVX2M U39 ( .A(A[1]), .Y(n38) );
  INVX2M U40 ( .A(A[0]), .Y(n39) );
  INVX2M U41 ( .A(A[3]), .Y(n36) );
  INVX2M U42 ( .A(A[2]), .Y(n37) );
  INVX2M U43 ( .A(A[5]), .Y(n34) );
  INVX2M U44 ( .A(A[4]), .Y(n35) );
  INVX2M U45 ( .A(B[6]), .Y(n25) );
  INVX2M U46 ( .A(B[0]), .Y(n31) );
  INVX2M U47 ( .A(B[2]), .Y(n29) );
  INVX2M U48 ( .A(B[3]), .Y(n28) );
  INVX2M U49 ( .A(B[7]), .Y(n24) );
  INVX2M U50 ( .A(B[4]), .Y(n27) );
  INVX2M U51 ( .A(B[5]), .Y(n26) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_test_1 ( A, B, EN, ALU_FUN, CLK, RST, ALU_OUT, OUT_VALID, test_si, 
        test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST, test_si, test_se;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n3, n4, n5, n6,
         n7, n8, n9, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157;
  wire   [15:0] ALU_OUT_Comb;

  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .SI(ALU_OUT[6]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .SI(ALU_OUT[5]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .SI(ALU_OUT[4]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .SI(ALU_OUT[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .SI(ALU_OUT[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .SI(ALU_OUT[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .SI(ALU_OUT[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .SI(ALU_OUT[14]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .SI(ALU_OUT[13]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .SI(ALU_OUT[12]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .SI(ALU_OUT[11]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .SI(ALU_OUT[10]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .SI(ALU_OUT[9]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .SI(ALU_OUT[8]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .SI(ALU_OUT[7]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX2M OUT_VALID_reg ( .D(EN), .SI(ALU_OUT[15]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(OUT_VALID) );
  BUFX2M U7 ( .A(A[6]), .Y(n28) );
  OAI2BB1X2M U23 ( .A0N(n156), .A1N(n122), .B0(n118), .Y(n64) );
  OAI2BB1X2M U24 ( .A0N(n117), .A1N(n116), .B0(n118), .Y(n65) );
  NOR2BX2M U25 ( .AN(n123), .B(n153), .Y(n54) );
  AND2X2M U26 ( .A(n116), .B(n122), .Y(n59) );
  NOR2BX2M U27 ( .AN(n52), .B(n157), .Y(n48) );
  AND2X2M U28 ( .A(n123), .B(n122), .Y(n67) );
  INVX2M U29 ( .A(n117), .Y(n153) );
  BUFX2M U30 ( .A(n58), .Y(n30) );
  NOR2X2M U31 ( .A(n124), .B(n153), .Y(n58) );
  INVX2M U32 ( .A(n108), .Y(n154) );
  INVX2M U33 ( .A(n124), .Y(n156) );
  OAI2BB1X2M U34 ( .A0N(N118), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U35 ( .A0N(N119), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U36 ( .A0N(N120), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U37 ( .A0N(N121), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U38 ( .A0N(N122), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U39 ( .A0N(N123), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U40 ( .A0N(N124), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[15]) );
  NOR3BX2M U41 ( .AN(n122), .B(n155), .C(ALU_FUN[2]), .Y(n66) );
  NOR3X2M U42 ( .A(n153), .B(ALU_FUN[2]), .C(n155), .Y(n52) );
  NOR2X2M U43 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  NAND2X2M U44 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  AND3X2M U45 ( .A(n123), .B(n152), .C(n3), .Y(n63) );
  INVX2M U46 ( .A(ALU_FUN[0]), .Y(n152) );
  NAND3X2M U47 ( .A(n156), .B(n152), .C(n3), .Y(n53) );
  NAND3X2M U48 ( .A(n3), .B(ALU_FUN[0]), .C(n116), .Y(n108) );
  INVX2M U49 ( .A(ALU_FUN[1]), .Y(n155) );
  NOR2X2M U50 ( .A(n3), .B(ALU_FUN[0]), .Y(n117) );
  NOR2X2M U51 ( .A(n152), .B(n3), .Y(n122) );
  NAND3X2M U52 ( .A(n123), .B(ALU_FUN[0]), .C(n3), .Y(n118) );
  INVX2M U53 ( .A(EN), .Y(n157) );
  NAND2X2M U54 ( .A(EN), .B(n140), .Y(n49) );
  AND2X2M U55 ( .A(ALU_FUN[2]), .B(n155), .Y(n116) );
  AND4X2M U56 ( .A(N159), .B(n116), .C(n3), .D(n152), .Y(n107) );
  INVX2M U57 ( .A(n4), .Y(n139) );
  OAI222X1M U58 ( .A0(n72), .A1(n139), .B0(n4), .B1(n73), .C0(n53), .C1(n146), 
        .Y(n71) );
  AOI221XLM U59 ( .A0(n28), .A1(n63), .B0(n64), .B1(n145), .C0(n30), .Y(n73)
         );
  AOI221XLM U60 ( .A0(n63), .A1(n145), .B0(n28), .B1(n65), .C0(n59), .Y(n72)
         );
  AOI31X2M U61 ( .A0(n92), .A1(n93), .A2(n94), .B0(n157), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U62 ( .A0(N102), .A1(n67), .B0(N93), .B1(n54), .Y(n92) );
  AOI221XLM U63 ( .A0(n8), .A1(n154), .B0(n30), .B1(n149), .C0(n95), .Y(n94)
         );
  AOI222X1M U64 ( .A0(N111), .A1(n52), .B0(n7), .B1(n59), .C0(N127), .C1(n66), 
        .Y(n93) );
  AOI31X2M U65 ( .A0(n86), .A1(n87), .A2(n88), .B0(n157), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U66 ( .A0(N103), .A1(n67), .B0(N94), .B1(n54), .Y(n86) );
  AOI221XLM U67 ( .A0(n9), .A1(n154), .B0(n30), .B1(n148), .C0(n89), .Y(n88)
         );
  AOI222X1M U68 ( .A0(N112), .A1(n52), .B0(n8), .B1(n59), .C0(N128), .C1(n66), 
        .Y(n87) );
  AOI31X2M U69 ( .A0(n80), .A1(n81), .A2(n82), .B0(n157), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U70 ( .A0(N104), .A1(n67), .B0(N95), .B1(n54), .Y(n80) );
  AOI221XLM U71 ( .A0(n154), .A1(n27), .B0(n30), .B1(n147), .C0(n83), .Y(n82)
         );
  AOI222X1M U72 ( .A0(N113), .A1(n52), .B0(n9), .B1(n59), .C0(N129), .C1(n66), 
        .Y(n81) );
  AOI31X2M U73 ( .A0(n74), .A1(n75), .A2(n76), .B0(n157), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U74 ( .A0(N105), .A1(n67), .B0(N96), .B1(n54), .Y(n74) );
  AOI221XLM U75 ( .A0(n154), .A1(n28), .B0(n30), .B1(n146), .C0(n77), .Y(n76)
         );
  AOI222X1M U76 ( .A0(N114), .A1(n52), .B0(n27), .B1(n59), .C0(N130), .C1(n66), 
        .Y(n75) );
  AOI31X2M U77 ( .A0(n68), .A1(n69), .A2(n70), .B0(n157), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U78 ( .A0(N106), .A1(n67), .B0(N97), .B1(n54), .Y(n68) );
  AOI221XLM U79 ( .A0(n154), .A1(n29), .B0(n30), .B1(n145), .C0(n71), .Y(n70)
         );
  AOI222X1M U80 ( .A0(N115), .A1(n52), .B0(n59), .B1(n28), .C0(N131), .C1(n66), 
        .Y(n69) );
  AOI31X2M U81 ( .A0(n55), .A1(n56), .A2(n57), .B0(n157), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U82 ( .A0(N132), .A1(n66), .B0(N116), .B1(n52), .Y(n56) );
  AOI22X1M U83 ( .A0(N107), .A1(n67), .B0(N98), .B1(n54), .Y(n55) );
  AOI221XLM U84 ( .A0(n30), .A1(n144), .B0(n59), .B1(n29), .C0(n60), .Y(n57)
         );
  AOI31X2M U85 ( .A0(n110), .A1(n111), .A2(n112), .B0(n157), .Y(
        ALU_OUT_Comb[0]) );
  AOI22X1M U86 ( .A0(N100), .A1(n67), .B0(N91), .B1(n54), .Y(n110) );
  AOI211X2M U87 ( .A0(n30), .A1(n151), .B0(n113), .C0(n114), .Y(n112) );
  AOI222X1M U88 ( .A0(N109), .A1(n52), .B0(n5), .B1(n59), .C0(N125), .C1(n66), 
        .Y(n111) );
  AOI31X2M U89 ( .A0(n98), .A1(n99), .A2(n100), .B0(n157), .Y(ALU_OUT_Comb[1])
         );
  AOI211X2M U90 ( .A0(n7), .A1(n154), .B0(n101), .C0(n102), .Y(n100) );
  AOI222X1M U91 ( .A0(N126), .A1(n66), .B0(n30), .B1(n150), .C0(n6), .C1(n59), 
        .Y(n99) );
  AOI222X1M U92 ( .A0(N92), .A1(n54), .B0(N110), .B1(n52), .C0(N101), .C1(n67), 
        .Y(n98) );
  INVX2M U93 ( .A(n109), .Y(n140) );
  AOI211X2M U94 ( .A0(N108), .A1(n67), .B0(n30), .C0(n64), .Y(n109) );
  AOI21X2M U95 ( .A0(n50), .A1(n51), .B0(n157), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U96 ( .A0(N99), .A1(n54), .B0(n140), .Y(n50) );
  AOI2BB2XLM U97 ( .B0(N117), .B1(n52), .A0N(n144), .A1N(n53), .Y(n51) );
  BUFX2M U98 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U99 ( .A(n6), .Y(n150) );
  INVX2M U100 ( .A(n5), .Y(n151) );
  INVX2M U101 ( .A(n28), .Y(n145) );
  INVX2M U102 ( .A(n29), .Y(n144) );
  INVX2M U103 ( .A(n8), .Y(n148) );
  INVX2M U104 ( .A(n7), .Y(n149) );
  INVX2M U105 ( .A(n27), .Y(n146) );
  INVX2M U106 ( .A(n9), .Y(n147) );
  OAI222X1M U107 ( .A0(n96), .A1(n136), .B0(B[2]), .B1(n97), .C0(n53), .C1(
        n150), .Y(n95) );
  AOI221XLM U108 ( .A0(n7), .A1(n63), .B0(n64), .B1(n149), .C0(n30), .Y(n97)
         );
  AOI221XLM U109 ( .A0(n63), .A1(n149), .B0(n7), .B1(n65), .C0(n59), .Y(n96)
         );
  OAI222X1M U110 ( .A0(n90), .A1(n138), .B0(B[3]), .B1(n91), .C0(n53), .C1(
        n149), .Y(n89) );
  AOI221XLM U111 ( .A0(n8), .A1(n63), .B0(n64), .B1(n148), .C0(n30), .Y(n91)
         );
  AOI221XLM U112 ( .A0(n63), .A1(n148), .B0(n8), .B1(n65), .C0(n59), .Y(n90)
         );
  OAI222X1M U113 ( .A0(n84), .A1(n143), .B0(B[4]), .B1(n85), .C0(n53), .C1(
        n148), .Y(n83) );
  INVX2M U114 ( .A(B[4]), .Y(n143) );
  AOI221XLM U115 ( .A0(n9), .A1(n63), .B0(n64), .B1(n147), .C0(n30), .Y(n85)
         );
  AOI221XLM U116 ( .A0(n63), .A1(n147), .B0(n9), .B1(n65), .C0(n59), .Y(n84)
         );
  OAI222X1M U117 ( .A0(n78), .A1(n142), .B0(B[5]), .B1(n79), .C0(n53), .C1(
        n147), .Y(n77) );
  INVX2M U118 ( .A(B[5]), .Y(n142) );
  AOI221XLM U119 ( .A0(n27), .A1(n63), .B0(n64), .B1(n146), .C0(n30), .Y(n79)
         );
  AOI221XLM U120 ( .A0(n63), .A1(n146), .B0(n27), .B1(n65), .C0(n59), .Y(n78)
         );
  OAI222X1M U121 ( .A0(n61), .A1(n141), .B0(B[7]), .B1(n62), .C0(n53), .C1(
        n145), .Y(n60) );
  INVX2M U122 ( .A(B[7]), .Y(n141) );
  AOI221XLM U123 ( .A0(n63), .A1(n29), .B0(n64), .B1(n144), .C0(n30), .Y(n62)
         );
  AOI221XLM U124 ( .A0(n63), .A1(n144), .B0(n29), .B1(n65), .C0(n59), .Y(n61)
         );
  INVX2M U125 ( .A(n31), .Y(n135) );
  OAI2B2X1M U126 ( .A1N(B[0]), .A0(n115), .B0(n108), .B1(n150), .Y(n114) );
  AOI221XLM U127 ( .A0(n63), .A1(n151), .B0(n5), .B1(n65), .C0(n59), .Y(n115)
         );
  OAI2B2X1M U128 ( .A1N(B[1]), .A0(n103), .B0(n53), .B1(n151), .Y(n102) );
  AOI221XLM U129 ( .A0(n63), .A1(n150), .B0(n6), .B1(n65), .C0(n59), .Y(n103)
         );
  INVX2M U130 ( .A(n42), .Y(n137) );
  OAI21X2M U131 ( .A0(B[0]), .A1(n119), .B0(n120), .Y(n113) );
  AOI31X2M U132 ( .A0(N157), .A1(n3), .A2(n121), .B0(n107), .Y(n120) );
  AOI221XLM U133 ( .A0(n5), .A1(n63), .B0(n64), .B1(n151), .C0(n30), .Y(n119)
         );
  NOR3X2M U134 ( .A(n155), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  OAI21X2M U135 ( .A0(B[1]), .A1(n104), .B0(n105), .Y(n101) );
  AOI31X2M U136 ( .A0(N158), .A1(n3), .A2(n106), .B0(n107), .Y(n105) );
  AOI221XLM U137 ( .A0(n6), .A1(n63), .B0(n64), .B1(n150), .C0(n30), .Y(n104)
         );
  NOR3X2M U138 ( .A(n152), .B(ALU_FUN[2]), .C(n155), .Y(n106) );
  BUFX2M U139 ( .A(A[7]), .Y(n29) );
  BUFX2M U140 ( .A(A[1]), .Y(n6) );
  BUFX2M U141 ( .A(A[0]), .Y(n5) );
  BUFX2M U142 ( .A(A[3]), .Y(n8) );
  BUFX2M U143 ( .A(A[2]), .Y(n7) );
  BUFX2M U144 ( .A(A[5]), .Y(n27) );
  BUFX2M U145 ( .A(A[4]), .Y(n9) );
  BUFX2M U146 ( .A(B[6]), .Y(n4) );
  INVX2M U147 ( .A(B[0]), .Y(n134) );
  INVX2M U148 ( .A(B[2]), .Y(n136) );
  INVX2M U149 ( .A(B[3]), .Y(n138) );
  NOR2X1M U150 ( .A(n144), .B(B[7]), .Y(n130) );
  NAND2BX1M U151 ( .AN(B[4]), .B(n9), .Y(n46) );
  NAND2BX1M U152 ( .AN(n9), .B(B[4]), .Y(n35) );
  CLKNAND2X2M U153 ( .A(n46), .B(n35), .Y(n125) );
  NOR2X1M U154 ( .A(n138), .B(n8), .Y(n43) );
  NOR2X1M U155 ( .A(n136), .B(n7), .Y(n34) );
  NOR2X1M U156 ( .A(n134), .B(n5), .Y(n31) );
  CLKNAND2X2M U157 ( .A(n7), .B(n136), .Y(n45) );
  NAND2BX1M U158 ( .AN(n34), .B(n45), .Y(n40) );
  AOI21X1M U159 ( .A0(n31), .A1(n150), .B0(B[1]), .Y(n32) );
  AOI211X1M U160 ( .A0(n6), .A1(n135), .B0(n40), .C0(n32), .Y(n33) );
  CLKNAND2X2M U161 ( .A(n8), .B(n138), .Y(n44) );
  OAI31X1M U162 ( .A0(n43), .A1(n34), .A2(n33), .B0(n44), .Y(n36) );
  NAND2BX1M U163 ( .AN(n27), .B(B[5]), .Y(n128) );
  OAI211X1M U164 ( .A0(n125), .A1(n36), .B0(n35), .C0(n128), .Y(n37) );
  NAND2BX1M U165 ( .AN(B[5]), .B(n27), .Y(n47) );
  XNOR2X1M U166 ( .A(n28), .B(n4), .Y(n127) );
  AOI32X1M U167 ( .A0(n37), .A1(n47), .A2(n127), .B0(n4), .B1(n145), .Y(n38)
         );
  CLKNAND2X2M U168 ( .A(B[7]), .B(n144), .Y(n131) );
  OAI21X1M U169 ( .A0(n130), .A1(n38), .B0(n131), .Y(N159) );
  CLKNAND2X2M U170 ( .A(n5), .B(n134), .Y(n41) );
  OA21X1M U171 ( .A0(n41), .A1(n150), .B0(B[1]), .Y(n39) );
  AOI211X1M U172 ( .A0(n41), .A1(n150), .B0(n40), .C0(n39), .Y(n42) );
  AOI31X1M U173 ( .A0(n137), .A1(n45), .A2(n44), .B0(n43), .Y(n126) );
  OAI2B11X1M U174 ( .A1N(n126), .A0(n125), .B0(n47), .C0(n46), .Y(n129) );
  AOI32X1M U175 ( .A0(n129), .A1(n128), .A2(n127), .B0(n28), .B1(n139), .Y(
        n132) );
  AOI2B1X1M U176 ( .A1N(n132), .A0(n131), .B0(n130), .Y(n133) );
  CLKINVX1M U177 ( .A(n133), .Y(N158) );
  NOR2X1M U178 ( .A(N159), .B(N158), .Y(N157) );
  ALU_DW_div_uns_0 div_52 ( .a({n29, n28, n27, n9, n8, n7, n6, n5}), .b({B[7], 
        n4, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, N126, 
        N125}) );
  ALU_DW01_sub_0 sub_46 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  ALU_DW01_add_0 add_43 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_DW02_mult_0 mult_49 ( .A({n29, n28, n27, n9, n8, n7, n6, n5}), .B({B[7], 
        n4, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
endmodule


module CLK_GATE ( test_en, CLK_EN, CLK, GATED_CLK );
  input test_en, CLK_EN, CLK;
  output GATED_CLK;
  wire   _0_net_;

  TLATNCAX12M U0_TLATNCAX12M ( .E(_0_net_), .CK(CLK), .ECK(GATED_CLK) );
  OR2X2M U1 ( .A(CLK_EN), .B(test_en), .Y(_0_net_) );
endmodule


module SYS_TOP_dft ( SE, test_mode, scan_clk, scan_rst, SI, SO, RST_N, 
        UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, framing_error
 );
  input [3:0] SI;
  output [3:0] SO;
  input SE, test_mode, scan_clk, scan_rst, RST_N, UART_CLK, REF_CLK,
         UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   REF_CLK_M, UART_CLK_M, UART_RX_CLK, RX_CLK_M, UART_TX_CLK, TX_CLK_M,
         RST_M, SYNC_UART_RST, UART_RST_M, SYNC_REF_RST, REF_RST_M,
         UART_RX_V_OUT, UART_RX_V_SYNC, UART_TX_VLD, UART_TX_Busy_PULSE,
         FIFO_FULL, UART_TX_V_SYNC, UART_TX_Busy, RF_RdData_VLD, RF_WrEn,
         RF_RdEn, ALU_EN, ALU_OUT_VLD, CLKG_EN, ALU_CLK, n1, n2, n3, n4, n5,
         n6, n7, n8, n10, n11, n13, n14, n15, n18, n21, n22, n25, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44;
  wire   [7:0] UART_RX_OUT;
  wire   [7:0] UART_RX_SYNC;
  wire   [7:0] UART_TX_IN;
  wire   [7:0] UART_TX_SYNC;
  wire   [7:0] DIV_RATIO;
  wire   [7:0] UART_Config;
  wire   [7:0] DIV_RATIO_RX;
  wire   [7:0] RF_RdData;
  wire   [3:0] RF_Address;
  wire   [7:0] RF_WrData;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [7:0] Operand_A;
  wire   [7:0] Operand_B;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  INVX2M U2 ( .A(n8), .Y(n7) );
  INVX2M U3 ( .A(UART_TX_V_SYNC), .Y(n1) );
  BUFX2M U4 ( .A(RF_Address[0]), .Y(n3) );
  BUFX2M U5 ( .A(RF_Address[1]), .Y(n4) );
  INVX4M U6 ( .A(n6), .Y(n5) );
  INVX2M U7 ( .A(REF_RST_M), .Y(n6) );
  INVX2M U8 ( .A(UART_RST_M), .Y(n8) );
  BUFX2M U9 ( .A(test_mode), .Y(n2) );
  DLY1X1M U16 ( .A(SYNC_REF_RST), .Y(n25) );
  DLY1X1M U18 ( .A(n28), .Y(n27) );
  INVXLM U19 ( .A(n41), .Y(n28) );
  DLY1X1M U20 ( .A(n31), .Y(n29) );
  INVXLM U21 ( .A(n42), .Y(n30) );
  INVXLM U22 ( .A(n30), .Y(n31) );
  INVXLM U23 ( .A(n30), .Y(n32) );
  INVXLM U24 ( .A(n43), .Y(n33) );
  INVXLM U25 ( .A(n33), .Y(n34) );
  INVXLM U26 ( .A(n33), .Y(n35) );
  INVXLM U27 ( .A(n32), .Y(n36) );
  INVXLM U28 ( .A(n36), .Y(n37) );
  INVXLM U29 ( .A(n36), .Y(n38) );
  INVXLM U30 ( .A(n44), .Y(n39) );
  INVXLM U31 ( .A(n39), .Y(n40) );
  INVXLM U32 ( .A(SE), .Y(n41) );
  INVXLM U33 ( .A(n41), .Y(n42) );
  INVXLM U34 ( .A(n41), .Y(n43) );
  INVXLM U35 ( .A(n41), .Y(n44) );
  mux2X1_0 mux_ref_clk ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        REF_CLK_M) );
  mux2X1_6 mux_uart_clk ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        UART_CLK_M) );
  mux2X1_5 mux_rx_clk ( .IN_0(UART_RX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        RX_CLK_M) );
  mux2X1_4 mux_tx_clk ( .IN_0(UART_TX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        TX_CLK_M) );
  mux2X1_3 mux_rst_n ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(n2), .OUT(RST_M) );
  mux2X1_2 mux_uart_rst ( .IN_0(SYNC_UART_RST), .IN_1(scan_rst), .SEL(n2), 
        .OUT(UART_RST_M) );
  mux2X1_1 mux_ref_rst ( .IN_0(n25), .IN_1(scan_rst), .SEL(n2), .OUT(REF_RST_M) );
  RST_SYNC_NUM_STAGES2_test_0 U0_RST_SYNC ( .CLK(UART_CLK_M), .RST(RST_M), 
        .SYNC_RST(SYNC_UART_RST), .test_si(n21), .test_se(n40) );
  RST_SYNC_NUM_STAGES2_test_1 U1_RST_SYNC ( .CLK(REF_CLK_M), .RST(RST_M), 
        .SYNC_RST(SYNC_REF_RST), .test_si(n10), .test_se(n40) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 U0_ref_sync ( .unsync_bus(
        UART_RX_OUT), .bus_enable(UART_RX_V_OUT), .CLK(REF_CLK_M), .RST(n5), 
        .sync_bus(UART_RX_SYNC), .enable_pulse(UART_RX_V_SYNC), .test_si(n11), 
        .test_se(n38) );
  FIFO_TOP_DATA_WIDTH8_test_1 U0_UART_FIFO ( .WR_DATA(UART_TX_IN), .W_INC(
        UART_TX_VLD), .W_CLK(REF_CLK_M), .W_RST(n5), .R_INC(UART_TX_Busy_PULSE), .R_CLK(TX_CLK_M), .R_RST(n7), .RD_DATA(UART_TX_SYNC), .FULL(FIFO_FULL), 
        .EMPTY(UART_TX_V_SYNC), .test_si2(SI[0]), .test_si1(n14), .test_so2(
        n11), .test_so1(n13), .test_se(SE) );
  PULSE_GEN_test_1 U0_PULSE_GEN ( .clk(TX_CLK_M), .rst(n7), .lvl_sig(
        UART_TX_Busy), .pulse_sig(UART_TX_Busy_PULSE), .test_si(n22), 
        .test_so(n21), .test_se(n44) );
  ClkDiv_test_0 U0_ClkDiv ( .i_ref_clk(UART_CLK_M), .i_rst(n7), .i_clk_en(1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(UART_TX_CLK), .test_si(ALU_OUT_VLD), 
        .test_so(n22), .test_se(n34) );
  CLKDIV_MUX U0_CLKDIV_MUX ( .IN(UART_Config[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, DIV_RATIO_RX[3:0]})
         );
  ClkDiv_test_1 U1_ClkDiv ( .i_ref_clk(UART_CLK_M), .i_rst(n7), .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, DIV_RATIO_RX[3:0]}), .o_div_clk(
        UART_RX_CLK), .test_si(UART_RX_SYNC[7]), .test_so(n10), .test_se(n37)
         );
  UART_test_1 U0_UART ( .RST(n7), .TX_CLK(TX_CLK_M), .RX_CLK(RX_CLK_M), 
        .RX_IN_S(UART_RX_IN), .RX_OUT_P(UART_RX_OUT), .RX_OUT_V(UART_RX_V_OUT), 
        .TX_IN_P(UART_TX_SYNC), .TX_IN_V(n1), .TX_OUT_S(UART_TX_O), .TX_OUT_V(
        UART_TX_Busy), .Prescale(UART_Config[7:2]), .parity_enable(
        UART_Config[0]), .parity_type(UART_Config[1]), .parity_error(
        parity_error), .framing_error(SO[1]), .test_si2(n13), .test_si1(n15), 
        .test_so1(n14), .test_se(n27) );
  SYS_CTRL_test_1 U0_SYS_CTRL ( .CLK(REF_CLK_M), .RST(n5), .RF_RdData(
        RF_RdData), .RF_RdData_VLD(RF_RdData_VLD), .UART_RX_DATA(UART_RX_SYNC), 
        .UART_RX_VLD(UART_RX_V_SYNC), .FIFO_FULL(FIFO_FULL), .ALU_OUT(ALU_OUT), 
        .ALU_OUT_VLD(ALU_OUT_VLD), .RF_WrEn(RF_WrEn), .RF_RdEn(RF_RdEn), 
        .RF_Address(RF_Address), .RF_WrData(RF_WrData), .ALU_FUN(ALU_FUN), 
        .ALU_EN(ALU_EN), .UART_TX_DATA(UART_TX_IN), .UART_TX_VLD(UART_TX_VLD), 
        .CLKG_EN(CLKG_EN), .test_si2(SI[1]), .test_si1(n18), .test_so2(n15), 
        .test_so1(SO[2]), .test_se(n29) );
  RegFile_test_1 U0_RegFile ( .CLK(REF_CLK_M), .RST(n5), .WrEn(RF_WrEn), 
        .RdEn(RF_RdEn), .Address({RF_Address[3:2], n4, n3}), .WrData(RF_WrData), .RdData(RF_RdData), .RdData_VLD(RF_RdData_VLD), .REG0(Operand_A), .REG1(
        Operand_B), .REG2(UART_Config), .REG3(DIV_RATIO), .test_si2(SI[2]), 
        .test_si1(SYNC_UART_RST), .test_so2(n18), .test_so1(SO[3]), .test_se(
        SE) );
  ALU_test_1 U0_ALU ( .A(Operand_A), .B(Operand_B), .EN(ALU_EN), .ALU_FUN(
        ALU_FUN), .CLK(ALU_CLK), .RST(n5), .ALU_OUT(ALU_OUT), .OUT_VALID(
        ALU_OUT_VLD), .test_si(SI[3]), .test_se(n35) );
  CLK_GATE U0_CLK_GATE ( .test_en(n2), .CLK_EN(CLKG_EN), .CLK(REF_CLK_M), 
        .GATED_CLK(ALU_CLK) );
  BUFX2M U15 ( .A(SYNC_REF_RST), .Y(SO[0]) );
  BUFX2M U17 ( .A(SO[1]), .Y(framing_error) );
endmodule

