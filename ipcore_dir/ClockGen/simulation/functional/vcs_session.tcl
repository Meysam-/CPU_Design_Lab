gui_open_window Wave
gui_sg_create ClockGen_group
gui_list_add_group -id Wave.1 {ClockGen_group}
gui_sg_addsignal -group ClockGen_group {ClockGen_tb.test_phase}
gui_set_radix -radix {ascii} -signals {ClockGen_tb.test_phase}
gui_sg_addsignal -group ClockGen_group {{Input_clocks}} -divider
gui_sg_addsignal -group ClockGen_group {ClockGen_tb.CLK_IN1}
gui_sg_addsignal -group ClockGen_group {{Output_clocks}} -divider
gui_sg_addsignal -group ClockGen_group {ClockGen_tb.dut.clk}
gui_list_expand -id Wave.1 ClockGen_tb.dut.clk
gui_sg_addsignal -group ClockGen_group {{Counters}} -divider
gui_sg_addsignal -group ClockGen_group {ClockGen_tb.COUNT}
gui_sg_addsignal -group ClockGen_group {ClockGen_tb.dut.counter}
gui_list_expand -id Wave.1 ClockGen_tb.dut.counter
gui_zoom -window Wave.1 -full
