onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group SYS_TOP -radix binary /SYS_TB/DUT/RST_N
add wave -noupdate -expand -group SYS_TOP -radix binary /SYS_TB/DUT/UART_CLK
add wave -noupdate -expand -group SYS_TOP -radix binary /SYS_TB/DUT/REF_CLK
add wave -noupdate -expand -group SYS_TOP -radix binary /SYS_TB/DUT/UART_RX_IN
add wave -noupdate -expand -group SYS_TOP -radix binary /SYS_TB/DUT/UART_TX_O
add wave -noupdate -expand -group SYS_TOP -radix binary /SYS_TB/DUT/parity_error
add wave -noupdate -expand -group SYS_TOP -radix binary /SYS_TB/DUT/framing_error
add wave -noupdate -expand -group UART_RX -radix binary /SYS_TB/DUT/U0_UART/U0_UART_RX/CLK
add wave -noupdate -expand -group UART_RX -radix binary /SYS_TB/DUT/U0_UART/U0_UART_RX/RST
add wave -noupdate -expand -group UART_RX -radix binary /SYS_TB/DUT/U0_UART/U0_UART_RX/RX_IN
add wave -noupdate -expand -group UART_RX -radix binary /SYS_TB/DUT/U0_UART/U0_UART_RX/P_DATA
add wave -noupdate -expand -group UART_RX -radix binary /SYS_TB/DUT/U0_UART/U0_UART_RX/data_valid
add wave -noupdate -expand -group UART_RX -radix binary /SYS_TB/DUT/U0_UART/U0_UART_RX/parity_error
add wave -noupdate -expand -group UART_RX -radix binary /SYS_TB/DUT/U0_UART/U0_UART_RX/framing_error
add wave -noupdate -group DATA_SYNC /SYS_TB/DUT/U0_ref_sync/unsync_bus
add wave -noupdate -group DATA_SYNC -radix binary /SYS_TB/DUT/U0_ref_sync/bus_enable
add wave -noupdate -group DATA_SYNC -radix binary /SYS_TB/DUT/U0_ref_sync/CLK
add wave -noupdate -group DATA_SYNC -radix binary /SYS_TB/DUT/U0_ref_sync/RST
add wave -noupdate -group DATA_SYNC /SYS_TB/DUT/U0_ref_sync/sync_bus
add wave -noupdate -group DATA_SYNC /SYS_TB/DUT/U0_ref_sync/enable_pulse
add wave -noupdate -expand -group SYS_CTRL -radix binary /SYS_TB/DUT/U0_SYS_CTRL/CLK
add wave -noupdate -expand -group SYS_CTRL -radix binary /SYS_TB/DUT/U0_SYS_CTRL/RST
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/RF_RdData
add wave -noupdate -expand -group SYS_CTRL -radix binary /SYS_TB/DUT/U0_SYS_CTRL/RF_RdData_VLD
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/UART_RX_DATA
add wave -noupdate -expand -group SYS_CTRL -radix binary /SYS_TB/DUT/U0_SYS_CTRL/UART_RX_VLD
add wave -noupdate -expand -group SYS_CTRL -radix binary /SYS_TB/DUT/U0_SYS_CTRL/FIFO_FULL
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/ALU_OUT
add wave -noupdate -expand -group SYS_CTRL -radix binary /SYS_TB/DUT/U0_SYS_CTRL/ALU_OUT_VLD
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/RF_WrEn
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/RF_RdEn
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/RF_Address
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/RF_WrData
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/ALU_FUN
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/ALU_EN
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/UART_TX_DATA
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/UART_TX_VLD
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/CLKG_EN
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/CLKDIV_EN
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/C_S
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/N_S
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/stored_out
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/out_flag
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/stored_addr
add wave -noupdate -expand -group SYS_CTRL /SYS_TB/DUT/U0_SYS_CTRL/stored_flag
add wave -noupdate -expand -group REG_FILE -radix binary /SYS_TB/DUT/U0_RegFile/CLK
add wave -noupdate -expand -group REG_FILE -radix binary /SYS_TB/DUT/U0_RegFile/RST
add wave -noupdate -expand -group REG_FILE -radix binary /SYS_TB/DUT/U0_RegFile/WrEn
add wave -noupdate -expand -group REG_FILE -radix binary /SYS_TB/DUT/U0_RegFile/RdEn
add wave -noupdate -expand -group REG_FILE /SYS_TB/DUT/U0_RegFile/Address
add wave -noupdate -expand -group REG_FILE /SYS_TB/DUT/U0_RegFile/WrData
add wave -noupdate -expand -group REG_FILE /SYS_TB/DUT/U0_RegFile/RdData
add wave -noupdate -expand -group REG_FILE /SYS_TB/DUT/U0_RegFile/RdData_VLD
add wave -noupdate -expand -group REG_FILE -radix unsigned -childformat {{{/SYS_TB/DUT/U0_RegFile/regArr[15]} -radix unsigned} {{/SYS_TB/DUT/U0_RegFile/regArr[14]} -radix unsigned} {{/SYS_TB/DUT/U0_RegFile/regArr[13]} -radix unsigned} {{/SYS_TB/DUT/U0_RegFile/regArr[12]} -radix unsigned} {{/SYS_TB/DUT/U0_RegFile/regArr[11]} -radix unsigned} {{/SYS_TB/DUT/U0_RegFile/regArr[10]} -radix unsigned} {{/SYS_TB/DUT/U0_RegFile/regArr[9]} -radix unsigned} {{/SYS_TB/DUT/U0_RegFile/regArr[8]} -radix unsigned} {{/SYS_TB/DUT/U0_RegFile/regArr[7]} -radix unsigned} {{/SYS_TB/DUT/U0_RegFile/regArr[6]} -radix unsigned} {{/SYS_TB/DUT/U0_RegFile/regArr[5]} -radix unsigned} {{/SYS_TB/DUT/U0_RegFile/regArr[4]} -radix unsigned} {{/SYS_TB/DUT/U0_RegFile/regArr[3]} -radix unsigned} {{/SYS_TB/DUT/U0_RegFile/regArr[2]} -radix unsigned} {{/SYS_TB/DUT/U0_RegFile/regArr[1]} -radix unsigned} {{/SYS_TB/DUT/U0_RegFile/regArr[0]} -radix unsigned}} -expand -subitemconfig {{/SYS_TB/DUT/U0_RegFile/regArr[15]} {-height 15 -radix unsigned} {/SYS_TB/DUT/U0_RegFile/regArr[14]} {-height 15 -radix unsigned} {/SYS_TB/DUT/U0_RegFile/regArr[13]} {-height 15 -radix unsigned} {/SYS_TB/DUT/U0_RegFile/regArr[12]} {-height 15 -radix unsigned} {/SYS_TB/DUT/U0_RegFile/regArr[11]} {-height 15 -radix unsigned} {/SYS_TB/DUT/U0_RegFile/regArr[10]} {-height 15 -radix unsigned} {/SYS_TB/DUT/U0_RegFile/regArr[9]} {-height 15 -radix unsigned} {/SYS_TB/DUT/U0_RegFile/regArr[8]} {-height 15 -radix unsigned} {/SYS_TB/DUT/U0_RegFile/regArr[7]} {-height 15 -radix unsigned} {/SYS_TB/DUT/U0_RegFile/regArr[6]} {-height 15 -radix unsigned} {/SYS_TB/DUT/U0_RegFile/regArr[5]} {-height 15 -radix unsigned} {/SYS_TB/DUT/U0_RegFile/regArr[4]} {-height 15 -radix unsigned} {/SYS_TB/DUT/U0_RegFile/regArr[3]} {-height 15 -radix unsigned} {/SYS_TB/DUT/U0_RegFile/regArr[2]} {-height 15 -radix unsigned} {/SYS_TB/DUT/U0_RegFile/regArr[1]} {-height 15 -radix unsigned} {/SYS_TB/DUT/U0_RegFile/regArr[0]} {-height 15 -radix unsigned}} /SYS_TB/DUT/U0_RegFile/regArr
add wave -noupdate -expand -group ALU /SYS_TB/DUT/U0_ALU/A
add wave -noupdate -expand -group ALU /SYS_TB/DUT/U0_ALU/B
add wave -noupdate -expand -group ALU -radix binary /SYS_TB/DUT/U0_ALU/EN
add wave -noupdate -expand -group ALU /SYS_TB/DUT/U0_ALU/ALU_FUN
add wave -noupdate -expand -group ALU -radix binary /SYS_TB/DUT/U0_ALU/CLK
add wave -noupdate -expand -group ALU -radix binary /SYS_TB/DUT/U0_ALU/RST
add wave -noupdate -expand -group ALU /SYS_TB/DUT/U0_ALU/ALU_OUT
add wave -noupdate -expand -group ALU /SYS_TB/DUT/U0_ALU/OUT_VALID
add wave -noupdate -expand -group FIFO /SYS_TB/DUT/U0_UART_FIFO/WR_DATA
add wave -noupdate -expand -group FIFO -radix binary /SYS_TB/DUT/U0_UART_FIFO/W_INC
add wave -noupdate -expand -group FIFO -radix binary /SYS_TB/DUT/U0_UART_FIFO/W_CLK
add wave -noupdate -expand -group FIFO -radix binary /SYS_TB/DUT/U0_UART_FIFO/W_RST
add wave -noupdate -expand -group FIFO -radix binary /SYS_TB/DUT/U0_UART_FIFO/R_INC
add wave -noupdate -expand -group FIFO -radix binary /SYS_TB/DUT/U0_UART_FIFO/R_CLK
add wave -noupdate -expand -group FIFO -radix binary /SYS_TB/DUT/U0_UART_FIFO/R_RST
add wave -noupdate -expand -group FIFO /SYS_TB/DUT/U0_UART_FIFO/RD_DATA
add wave -noupdate -expand -group FIFO -radix binary /SYS_TB/DUT/U0_UART_FIFO/FULL
add wave -noupdate -expand -group FIFO -radix binary /SYS_TB/DUT/U0_UART_FIFO/EMPTY
add wave -noupdate -expand -group UART_TX /SYS_TB/DUT/U0_UART/U0_UART_TX/P_DATA
add wave -noupdate -expand -group UART_TX -radix binary /SYS_TB/DUT/U0_UART/U0_UART_TX/DATA_VALID
add wave -noupdate -expand -group UART_TX -radix binary /SYS_TB/DUT/U0_UART/U0_UART_TX/PAR_EN
add wave -noupdate -expand -group UART_TX -radix binary /SYS_TB/DUT/U0_UART/U0_UART_TX/PAR_TYP
add wave -noupdate -expand -group UART_TX -radix binary /SYS_TB/DUT/U0_UART/U0_UART_TX/CLK
add wave -noupdate -expand -group UART_TX -radix binary /SYS_TB/DUT/U0_UART/U0_UART_TX/RST
add wave -noupdate -expand -group UART_TX -radix binary /SYS_TB/DUT/U0_UART/U0_UART_TX/TX_OUT
add wave -noupdate -expand -group UART_TX -radix binary /SYS_TB/DUT/U0_UART/U0_UART_TX/busy
add wave -noupdate -group PULSE_GEN -radix binary /SYS_TB/DUT/U0_PULSE_GEN/clk
add wave -noupdate -group PULSE_GEN -radix binary /SYS_TB/DUT/U0_PULSE_GEN/rst
add wave -noupdate -group PULSE_GEN -radix binary /SYS_TB/DUT/U0_PULSE_GEN/lvl_sig
add wave -noupdate -group PULSE_GEN -radix binary /SYS_TB/DUT/U0_PULSE_GEN/pulse_sig
add wave -noupdate -group CLK_GATE -radix binary /SYS_TB/DUT/U0_CLK_GATE/CLK_EN
add wave -noupdate -group CLK_GATE -radix binary /SYS_TB/DUT/U0_CLK_GATE/CLK
add wave -noupdate -group CLK_GATE -radix binary /SYS_TB/DUT/U0_CLK_GATE/GATED_CLK
add wave -noupdate -group CLK_GATE /SYS_TB/DUT/U0_CLK_GATE/Latch_Out
add wave -noupdate -group U0_RST_SYNC -radix binary /SYS_TB/DUT/U0_RST_SYNC/CLK
add wave -noupdate -group U0_RST_SYNC -radix binary /SYS_TB/DUT/U0_RST_SYNC/RST
add wave -noupdate -group U0_RST_SYNC -radix binary /SYS_TB/DUT/U0_RST_SYNC/SYNC_RST
add wave -noupdate -group U0_RST_SYNC /SYS_TB/DUT/U0_RST_SYNC/sync_reg
add wave -noupdate -group U1_RST_SYNC -radix binary /SYS_TB/DUT/U1_RST_SYNC/CLK
add wave -noupdate -group U1_RST_SYNC -radix binary /SYS_TB/DUT/U1_RST_SYNC/RST
add wave -noupdate -group U1_RST_SYNC -radix binary /SYS_TB/DUT/U1_RST_SYNC/SYNC_RST
add wave -noupdate -group U1_RST_SYNC /SYS_TB/DUT/U1_RST_SYNC/sync_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9401714292 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {9495207576 ps} {9657884312 ps}
