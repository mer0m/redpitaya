#!/usr/bin/env python

import liboscimp_fpga
import remi.gui as gui
from remi import start, App

class MyApp(App):
	def __init__(self, *args):
		super(MyApp, self).__init__(*args)

	def main(self):
		self.w = gui.VBox()

		self.hbox_adc1_offset = gui.HBox(margin="10px")
		self.lb_adc1_offset = gui.Label("/dev/adc1_offset", width="20%", margin="10px")
		self.sd_adc1_offset = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_adc1_offset.set_oninput_listener(self.sd_adc1_offset_changed)
		self.sb_adc1_offset = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_adc1_offset.set_on_change_listener(self.sb_adc1_offset_changed)
		self.sd_adc1_offset_changed(self.sd_adc1_offset, self.sd_adc1_offset.get_value())
		self.hbox_adc1_offset.append(self.lb_adc1_offset)
		self.hbox_adc1_offset.append(self.sd_adc1_offset)
		self.hbox_adc1_offset.append(self.sb_adc1_offset)
		self.w.append(self.hbox_adc1_offset)

		self.hbox_dac1_offset = gui.HBox(margin="10px")
		self.lb_dac1_offset = gui.Label("/dev/dac1_offset", width="20%", margin="10px")
		self.sd_dac1_offset = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dac1_offset.set_oninput_listener(self.sd_dac1_offset_changed)
		self.sb_dac1_offset = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_dac1_offset.set_on_change_listener(self.sb_dac1_offset_changed)
		self.sd_dac1_offset_changed(self.sd_dac1_offset, self.sd_dac1_offset.get_value())
		self.hbox_dac1_offset.append(self.lb_dac1_offset)
		self.hbox_dac1_offset.append(self.sd_dac1_offset)
		self.hbox_dac1_offset.append(self.sb_dac1_offset)
		self.w.append(self.hbox_dac1_offset)

		self.hbox_dds_ampl = gui.HBox(margin="10px")
		self.lb_dds_ampl = gui.Label("/dev/dds_ampl", width="20%", margin="10px")
		self.sd_dds_ampl = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds_ampl.set_oninput_listener(self.sd_dds_ampl_changed)
		self.sb_dds_ampl = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_dds_ampl.set_on_change_listener(self.sb_dds_ampl_changed)
		self.sd_dds_ampl_changed(self.sd_dds_ampl, self.sd_dds_ampl.get_value())
		self.hbox_dds_ampl.append(self.lb_dds_ampl)
		self.hbox_dds_ampl.append(self.sd_dds_ampl)
		self.hbox_dds_ampl.append(self.sb_dds_ampl)
		self.w.append(self.hbox_dds_ampl)

		self.hbox_dds_f0 = gui.HBox(margin="10px")
		self.lb_dds_f0 = gui.Label("/dev/dds_f0", width="20%", margin="10px")
		self.sd_dds_f0 = gui.Slider(0, 0, 62500000, 1, width="60%", margin="10px")
		self.sd_dds_f0.set_oninput_listener(self.sd_dds_f0_changed)
		self.sb_dds_f0 = gui.SpinBox(0, 0, 62500000, 1, width="20%", margin="10px")
		self.sb_dds_f0.set_on_change_listener(self.sb_dds_f0_changed)
		self.sd_dds_f0_changed(self.sd_dds_f0, self.sd_dds_f0.get_value())
		self.hbox_dds_f0.append(self.lb_dds_f0)
		self.hbox_dds_f0.append(self.sd_dds_f0)
		self.hbox_dds_f0.append(self.sb_dds_f0)
		self.w.append(self.hbox_dds_f0)

		self.hbox_dds_offset = gui.HBox(margin="10px")
		self.lb_dds_offset = gui.Label("/dev/dds_offset", width="20%", margin="10px")
		self.sd_dds_offset = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds_offset.set_oninput_listener(self.sd_dds_offset_changed)
		self.sb_dds_offset = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_dds_offset.set_on_change_listener(self.sb_dds_offset_changed)
		self.sd_dds_offset_changed(self.sd_dds_offset, self.sd_dds_offset.get_value())
		self.hbox_dds_offset.append(self.lb_dds_offset)
		self.hbox_dds_offset.append(self.sd_dds_offset)
		self.hbox_dds_offset.append(self.sb_dds_offset)
		self.w.append(self.hbox_dds_offset)

		self.hbox_dds_range = gui.HBox(margin="10px")
		self.lb_dds_range = gui.Label("/dev/dds_range", width="20%", margin="10px")
		self.sd_dds_range = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds_range.set_oninput_listener(self.sd_dds_range_changed)
		self.sb_dds_range = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_dds_range.set_on_change_listener(self.sb_dds_range_changed)
		self.sd_dds_range_changed(self.sd_dds_range, self.sd_dds_range.get_value())
		self.hbox_dds_range.append(self.lb_dds_range)
		self.hbox_dds_range.append(self.sd_dds_range)
		self.hbox_dds_range.append(self.sb_dds_range)
		self.w.append(self.hbox_dds_range)

		self.hbox_pid_kp = gui.HBox(margin="10px")
		self.lb_pid_kp = gui.Label("/dev/pid_kp", width="20%", margin="10px")
		self.sd_pid_kp = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid_kp.set_oninput_listener(self.sd_pid_kp_changed)
		self.sb_pid_kp = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid_kp.set_on_change_listener(self.sb_pid_kp_changed)
		self.sd_pid_kp_changed(self.sd_pid_kp, self.sd_pid_kp.get_value())
		self.hbox_pid_kp.append(self.lb_pid_kp)
		self.hbox_pid_kp.append(self.sd_pid_kp)
		self.hbox_pid_kp.append(self.sb_pid_kp)
		self.w.append(self.hbox_pid_kp)

		self.hbox_pid_ki = gui.HBox(margin="10px")
		self.lb_pid_ki = gui.Label("/dev/pid_ki", width="20%", margin="10px")
		self.sd_pid_ki = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid_ki.set_oninput_listener(self.sd_pid_ki_changed)
		self.sb_pid_ki = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid_ki.set_on_change_listener(self.sb_pid_ki_changed)
		self.sd_pid_ki_changed(self.sd_pid_ki, self.sd_pid_ki.get_value())
		self.hbox_pid_ki.append(self.lb_pid_ki)
		self.hbox_pid_ki.append(self.sd_pid_ki)
		self.hbox_pid_ki.append(self.sb_pid_ki)
		self.w.append(self.hbox_pid_ki)

		self.hbox_pid_kd = gui.HBox(margin="10px")
		self.lb_pid_kd = gui.Label("/dev/pid_kd", width="20%", margin="10px")
		self.sd_pid_kd = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid_kd.set_oninput_listener(self.sd_pid_kd_changed)
		self.sb_pid_kd = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid_kd.set_on_change_listener(self.sb_pid_kd_changed)
		self.sd_pid_kd_changed(self.sd_pid_kd, self.sd_pid_kd.get_value())
		self.hbox_pid_kd.append(self.lb_pid_kd)
		self.hbox_pid_kd.append(self.sd_pid_kd)
		self.hbox_pid_kd.append(self.sb_pid_kd)
		self.w.append(self.hbox_pid_kd)

		self.hbox_pid_rst_int = gui.HBox(margin="10px")
		self.lb_pid_rst_int = gui.Label("/dev/pid_rst_int", width="20%", margin="10px")
		self.sd_pid_rst_int = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid_rst_int.set_oninput_listener(self.sd_pid_rst_int_changed)
		self.sb_pid_rst_int = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid_rst_int.set_on_change_listener(self.sb_pid_rst_int_changed)
		self.sd_pid_rst_int_changed(self.sd_pid_rst_int, self.sd_pid_rst_int.get_value())
		self.hbox_pid_rst_int.append(self.lb_pid_rst_int)
		self.hbox_pid_rst_int.append(self.sd_pid_rst_int)
		self.hbox_pid_rst_int.append(self.sb_pid_rst_int)
		self.w.append(self.hbox_pid_rst_int)

		self.hbox_pid_sign = gui.HBox(margin="10px")
		self.lb_pid_sign = gui.Label("/dev/pid_sign", width="20%", margin="10px")
		self.sd_pid_sign = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid_sign.set_oninput_listener(self.sd_pid_sign_changed)
		self.sb_pid_sign = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid_sign.set_on_change_listener(self.sb_pid_sign_changed)
		self.sd_pid_sign_changed(self.sd_pid_sign, self.sd_pid_sign.get_value())
		self.hbox_pid_sign.append(self.lb_pid_sign)
		self.hbox_pid_sign.append(self.sd_pid_sign)
		self.hbox_pid_sign.append(self.sb_pid_sign)
		self.w.append(self.hbox_pid_sign)

		self.hbox_pid_setpoint = gui.HBox(margin="10px")
		self.lb_pid_setpoint = gui.Label("/dev/pid_setpoint", width="20%", margin="10px")
		self.sd_pid_setpoint = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid_setpoint.set_oninput_listener(self.sd_pid_setpoint_changed)
		self.sb_pid_setpoint = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid_setpoint.set_on_change_listener(self.sb_pid_setpoint_changed)
		self.sd_pid_setpoint_changed(self.sd_pid_setpoint, self.sd_pid_setpoint.get_value())
		self.hbox_pid_setpoint.append(self.lb_pid_setpoint)
		self.hbox_pid_setpoint.append(self.sd_pid_setpoint)
		self.hbox_pid_setpoint.append(self.sb_pid_setpoint)
		self.w.append(self.hbox_pid_setpoint)

		self.hbox_dds_nco = gui.HBox(margin="10px")
		self.lb_dds_nco = gui.Label("/dev/dds_nco", width="20%", margin="10px")
		self.sd_dds_nco = gui.Slider(0, 0, 62500000, 1, width="50%", margin="10px")
		self.sd_dds_nco.set_oninput_listener(self.sd_dds_nco_changed)
		self.sb_dds_nco = gui.SpinBox(0, 0, 62500000, 1, width="20%", margin="10px")
		self.sb_dds_nco.set_on_change_listener(self.sb_dds_nco_changed)
		self.cb_pinc_dds_nco = gui.CheckBoxLabel("pinc", True, width="5%", margin="10px")
		self.cb_pinc_dds_nco.set_on_change_listener(self.cb_dds_nco_changed)
		self.cb_poff_dds_nco = gui.CheckBoxLabel("poff", True, width="5%", margin="10px")
		self.cb_poff_dds_nco.set_on_change_listener(self.cb_dds_nco_changed)
		self.sd_dds_nco_changed(self.sd_dds_nco, self.sd_dds_nco.get_value())
		self.hbox_dds_nco.append(self.lb_dds_nco)
		self.hbox_dds_nco.append(self.sd_dds_nco)
		self.hbox_dds_nco.append(self.sb_dds_nco)
		self.hbox_dds_nco.append(self.cb_pinc_dds_nco)
		self.hbox_dds_nco.append(self.cb_poff_dds_nco)
		self.w.append(self.hbox_dds_nco)

		return self.w

	def sd_adc1_offset_changed(self, widget, value):
		print("/dev/adc1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/adc1_offset", int(value))
		self.sb_adc1_offset.set_value(value)

	def sb_adc1_offset_changed(self, widget, value):
		print("/dev/adc1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/adc1_offset", int(value))
		self.sd_adc1_offset.set_value(value)

	def sd_dac1_offset_changed(self, widget, value):
		print("/dev/dac1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dac1_offset", int(value))
		self.sb_dac1_offset.set_value(value)

	def sb_dac1_offset_changed(self, widget, value):
		print("/dev/dac1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dac1_offset", int(value))
		self.sd_dac1_offset.set_value(value)

	def sd_dds_ampl_changed(self, widget, value):
		print("/dev/dds_ampl", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds_ampl", int(value))
		self.sb_dds_ampl.set_value(value)

	def sb_dds_ampl_changed(self, widget, value):
		print("/dev/dds_ampl", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds_ampl", int(value))
		self.sd_dds_ampl.set_value(value)

	def sd_dds_f0_changed(self, widget, value):
		print("/dev/dds_f0", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds_f0", int(int(value)/(125e6/2**32)))
		self.sb_dds_f0.set_value(value)

	def sb_dds_f0_changed(self, widget, value):
		print("/dev/dds_f0", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds_f0", int(int(value)/(125e6/2**32)))
		self.sd_dds_f0.set_value(value)

	def sd_dds_offset_changed(self, widget, value):
		print("/dev/dds_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds_offset", int(value))
		self.sb_dds_offset.set_value(value)

	def sb_dds_offset_changed(self, widget, value):
		print("/dev/dds_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds_offset", int(value))
		self.sd_dds_offset.set_value(value)

	def sd_dds_range_changed(self, widget, value):
		print("/dev/dds_range", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds_range", int(value))
		self.sb_dds_range.set_value(value)

	def sb_dds_range_changed(self, widget, value):
		print("/dev/dds_range", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds_range", int(value))
		self.sd_dds_range.set_value(value)

	def sd_pid_kp_changed(self, widget, value):
		print("/dev/pid_kp", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_kp", int(value))
		self.sb_pid_kp.set_value(value)

	def sb_pid_kp_changed(self, widget, value):
		print("/dev/pid_kp", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_kp", int(value))
		self.sd_pid_kp.set_value(value)

	def sd_pid_ki_changed(self, widget, value):
		print("/dev/pid_ki", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_ki", int(value))
		self.sb_pid_ki.set_value(value)

	def sb_pid_ki_changed(self, widget, value):
		print("/dev/pid_ki", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_ki", int(value))
		self.sd_pid_ki.set_value(value)

	def sd_pid_kd_changed(self, widget, value):
		print("/dev/pid_kd", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_kd", int(value))
		self.sb_pid_kd.set_value(value)

	def sb_pid_kd_changed(self, widget, value):
		print("/dev/pid_kd", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_kd", int(value))
		self.sd_pid_kd.set_value(value)

	def sd_pid_rst_int_changed(self, widget, value):
		print("/dev/pid_rst_int", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_rst_int", int(value))
		self.sb_pid_rst_int.set_value(value)

	def sb_pid_rst_int_changed(self, widget, value):
		print("/dev/pid_rst_int", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_rst_int", int(value))
		self.sd_pid_rst_int.set_value(value)

	def sd_pid_sign_changed(self, widget, value):
		print("/dev/pid_sign", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_sign", int(value))
		self.sb_pid_sign.set_value(value)

	def sb_pid_sign_changed(self, widget, value):
		print("/dev/pid_sign", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_sign", int(value))
		self.sd_pid_sign.set_value(value)

	def sd_pid_setpoint_changed(self, widget, value):
		print("/dev/pid_setpoint", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_setpoint", int(value))
		self.sb_pid_setpoint.set_value(value)

	def sb_pid_setpoint_changed(self, widget, value):
		print("/dev/pid_setpoint", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_setpoint", int(value))
		self.sd_pid_setpoint.set_value(value)

	def sd_dds_nco_changed(self, widget, value):
		print("/dev/dds_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds_nco.get_value()), int(self.cb_poff_dds_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds_nco.get_value()), int(self.cb_poff_dds_nco.get_value()))
		self.sb_dds_nco.set_value(value)

	def sb_dds_nco_changed(self, widget, value):
		print("/dev/dds_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds_nco.get_value()), int(self.cb_poff_dds_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds_nco.get_value()), int(self.cb_poff_dds_nco.get_value()))
		self.sd_dds_nco.set_value(value)

	def cb_dds_nco_changed(self, widget, value):
		print("/dev/dds_nco", 125000000, int(self.sb_dds_nco.get_value()), 32, 0, int(self.cb_pinc_dds_nco.get_value()), int(self.cb_poff_dds_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds_nco", 125000000, int(self.sb_dds_nco.get_value()), 32, 0, int(self.cb_pinc_dds_nco.get_value()), int(self.cb_poff_dds_nco.get_value()))

start(MyApp, address="0.0.0.0", port=80, title="pid_vco_webserver")
