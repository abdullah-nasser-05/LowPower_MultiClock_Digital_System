
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP_dft

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "../../DFT/$top_module.svf"


set SSLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

######################### Reference Container ############################

## Read Reference technology libraries
read_verilog -container Ref "/home/IC/Projects/System/RTL/ALU/ALU.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/ASYNC_FIFO/DATA_SYNC_FIFO.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/ASYNC_FIFO/FIFO_MEMORY.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/ASYNC_FIFO/FIFO_RPTR_EMPTY.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/ASYNC_FIFO/FIFO_TOP.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/ASYNC_FIFO/FIFO_WPTR_FULL.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/CLKDIV_MUX/CLKDIV_MUX.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/Clock_Divider/ClkDiv.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/Clock_Gating/CLK_GATE_dft.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/DATA_SYNC/DATA_SYNC.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/PULSE_GEN/PULSE_GEN.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/RegFile/RegFile.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/RST_SYNC/RST_SYNC.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/SYS_CTRL/SYS_CTRL.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/SYS_TOP/SYS_TOP_dft.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/UART/UART_RX/data_sampling.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/UART/UART_RX/deserializer.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/UART/UART_RX/edge_bit_counter.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/UART/UART_RX/par_chk.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/UART/UART_RX/stp_chk.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/UART/UART_RX/strt_chk.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/UART/UART_RX/UART_RX.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/UART/UART_RX/uart_rx_fsm.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/UART/UART_TX/FSM.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/UART/UART_TX/MUX.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/UART/UART_TX/Parity_Calc.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/UART/UART_TX/Serializer.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/UART/UART_TX/UART_TX.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/UART/UART_TOP/UART.v"
read_verilog -container Ref "/home/IC/Projects/System/RTL/mux2X1/mux2X1.v"


## Read Reference Design Files

read_db -container Ref $TTLIB

## set the top Reference Design 

set_reference_design $top_module
set_top $top_module

######################## Implementation Container #########################

# Read Implementation Design Files

read_verilog -netlist -container Imp "/home/IC/Projects/System/DFT/netlists/SYS_TOP_dft.v"

# Read Implementation technology libraries

read_db -container Imp $TTLIB

# set the top Implementation Design

set_implementation_design $top_module
set_top $top_module


############################### Don't verify #################################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in
set_dont_verify_points -type port Ref:/WORK/*/*SI*
set_dont_verify_points -type port Imp:/WORK/*/*SI*

#scan_out
set_dont_verify_points -type port Ref:/WORK/*/*SO*
set_dont_verify_points -type port Imp:/WORK/*/*SO*


############################### constants #####################################

# all atpg enable(test_mode, scan_enable) are zero during formal compare

#test_mode
set_constant Ref:/WORK/*/test_mode 0
set_constant Imp:/WORK/*/test_mode 0

#scan_enable
set_constant Ref:/WORK/*/SE 0
set_constant Imp:/WORK/*/SE 0



########################### matching Compare points ##########################

match

################################# verify #####################################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui
