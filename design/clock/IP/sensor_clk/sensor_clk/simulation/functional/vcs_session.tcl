gui_open_window Wave
gui_sg_create sensor_clk_group
gui_list_add_group -id Wave.1 {sensor_clk_group}
gui_sg_addsignal -group sensor_clk_group {sensor_clk_tb.test_phase}
gui_set_radix -radix {ascii} -signals {sensor_clk_tb.test_phase}
gui_sg_addsignal -group sensor_clk_group {{Input_clocks}} -divider
gui_sg_addsignal -group sensor_clk_group {sensor_clk_tb.CLK_IN1}
gui_sg_addsignal -group sensor_clk_group {{Output_clocks}} -divider
gui_sg_addsignal -group sensor_clk_group {sensor_clk_tb.dut.clk}
gui_list_expand -id Wave.1 sensor_clk_tb.dut.clk
gui_sg_addsignal -group sensor_clk_group {{Status_control}} -divider
gui_sg_addsignal -group sensor_clk_group {sensor_clk_tb.RESET}
gui_sg_addsignal -group sensor_clk_group {sensor_clk_tb.LOCKED}
gui_sg_addsignal -group sensor_clk_group {{Counters}} -divider
gui_sg_addsignal -group sensor_clk_group {sensor_clk_tb.COUNT}
gui_sg_addsignal -group sensor_clk_group {sensor_clk_tb.dut.counter}
gui_list_expand -id Wave.1 sensor_clk_tb.dut.counter
gui_zoom -window Wave.1 -full
