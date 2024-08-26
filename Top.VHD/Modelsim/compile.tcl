vcom -work work -O0 {C:/ENSAF/after/Semestre2 Ensa SEII1/VHDL/TP4_ensa/FREQ_DIV.VHD/Src/freq_div.vhd}
vcom -work work -O0 {C:/ENSAF/after/Semestre2 Ensa SEII1/VHDL/TP4_ensa/CMPT_BCD.VHD/Src/CMPT_BCD.vhd}
vcom -work work -O0 {C:/ENSAF/after/Semestre2 Ensa SEII1/VHDL/TP4_ensa/Temp_MUX.VHD/Src/Temp_MUX.vhd}
vcom -work work -O0 {C:/ENSAF/after/Semestre2 Ensa SEII1/VHDL/TP4_ensa/SEVEN_SEG.VHD/Src/seven_seg.vhd}
vcom -work work -O0 {C:/ENSAF/after/Semestre2 Ensa SEII1/VHDL/TP4_ensa/Top.VHD/Src/top.vhd}
vcom -work work -O0 {C:/ENSAF/after/Semestre2 Ensa SEII1/VHDL/TP4_ensa/Top.VHD/Testbench/top_tb.vhd}
vsim work.top_tb
add wave sim:/top_tb/*
run -all