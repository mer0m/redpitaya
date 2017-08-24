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

		self.hbox_dds1_ampl = gui.HBox(margin="10px")
		self.lb_dds1_ampl = gui.Label("/dev/dds1_ampl", width="20%", margin="10px")
		self.sd_dds1_ampl = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds1_ampl.set_oninput_listener(self.sd_dds1_ampl_changed)
		self.sb_dds1_ampl = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_dds1_ampl.set_on_change_listener(self.sb_dds1_ampl_changed)
		self.sd_dds1_ampl_changed(self.sd_dds1_ampl, self.sd_dds1_ampl.get_value())
		self.hbox_dds1_ampl.append(self.lb_dds1_ampl)
		self.hbox_dds1_ampl.append(self.sd_dds1_ampl)
		self.hbox_dds1_ampl.append(self.sb_dds1_ampl)
		self.w.append(self.hbox_dds1_ampl)

		self.hbox_dds1_f0 = gui.HBox(margin="10px")
		self.lb_dds1_f0 = gui.Label("/dev/dds1_f0", width="20%", margin="10px")
		self.sd_dds1_f0 = gui.Slider(0, 0, 62500000, 1, width="60%", margin="10px")
		self.sd_dds1_f0.set_oninput_listener(self.sd_dds1_f0_changed)
		self.sb_dds1_f0 = gui.SpinBox(0, 0, 62500000, 1, width="20%", margin="10px")
		self.sb_dds1_f0.set_on_change_listener(self.sb_dds1_f0_changed)
		self.sd_dds1_f0_changed(self.sd_dds1_f0, self.sd_dds1_f0.get_value())
		self.hbox_dds1_f0.append(self.lb_dds1_f0)
		self.hbox_dds1_f0.append(self.sd_dds1_f0)
		self.hbox_dds1_f0.append(self.sb_dds1_f0)
		self.w.append(self.hbox_dds1_f0)

		self.hbox_dds1_offset = gui.HBox(margin="10px")
		self.lb_dds1_offset = gui.Label("/dev/dds1_offset", width="20%", margin="10px")
		self.sd_dds1_offset = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds1_offset.set_oninput_listener(self.sd_dds1_offset_changed)
		self.sb_dds1_offset = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_dds1_offset.set_on_change_listener(self.sb_dds1_offset_changed)
		self.sd_dds1_offset_changed(self.sd_dds1_offset, self.sd_dds1_offset.get_value())
		self.hbox_dds1_offset.append(self.lb_dds1_offset)
		self.hbox_dds1_offset.append(self.sd_dds1_offset)
		self.hbox_dds1_offset.append(self.sb_dds1_offset)
		self.w.append(self.hbox_dds1_offset)

		self.hbox_dds1_range = gui.HBox(margin="10px")
		self.lb_dds1_range = gui.Label("/dev/dds1_range", width="20%", margin="10px")
		self.sd_dds1_range = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds1_range.set_oninput_listener(self.sd_dds1_range_changed)
		self.sb_dds1_range = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_dds1_range.set_on_change_listener(self.sb_dds1_range_changed)
		self.sd_dds1_range_changed(self.sd_dds1_range, self.sd_dds1_range.get_value())
		self.hbox_dds1_range.append(self.lb_dds1_range)
		self.hbox_dds1_range.append(self.sd_dds1_range)
		self.hbox_dds1_range.append(self.sb_dds1_range)
		self.w.append(self.hbox_dds1_range)

		self.hbox_pid2_offset = gui.HBox(margin="10px")
		self.lb_pid2_offset = gui.Label("/dev/pid2_offset", width="20%", margin="10px")
		self.sd_pid2_offset = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid2_offset.set_oninput_listener(self.sd_pid2_offset_changed)
		self.sb_pid2_offset = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid2_offset.set_on_change_listener(self.sb_pid2_offset_changed)
		self.sd_pid2_offset_changed(self.sd_pid2_offset, self.sd_pid2_offset.get_value())
		self.hbox_pid2_offset.append(self.lb_pid2_offset)
		self.hbox_pid2_offset.append(self.sd_pid2_offset)
		self.hbox_pid2_offset.append(self.sb_pid2_offset)
		self.w.append(self.hbox_pid2_offset)

		self.hbox_pid1_kp = gui.HBox(margin="10px")
		self.lb_pid1_kp = gui.Label("/dev/pid1_kp", width="20%", margin="10px")
		self.sd_pid1_kp = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid1_kp.set_oninput_listener(self.sd_pid1_kp_changed)
		self.sb_pid1_kp = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid1_kp.set_on_change_listener(self.sb_pid1_kp_changed)
		self.sd_pid1_kp_changed(self.sd_pid1_kp, self.sd_pid1_kp.get_value())
		self.hbox_pid1_kp.append(self.lb_pid1_kp)
		self.hbox_pid1_kp.append(self.sd_pid1_kp)
		self.hbox_pid1_kp.append(self.sb_pid1_kp)
		self.w.append(self.hbox_pid1_kp)

		self.hbox_pid1_ki = gui.HBox(margin="10px")
		self.lb_pid1_ki = gui.Label("/dev/pid1_ki", width="20%", margin="10px")
		self.sd_pid1_ki = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid1_ki.set_oninput_listener(self.sd_pid1_ki_changed)
		self.sb_pid1_ki = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid1_ki.set_on_change_listener(self.sb_pid1_ki_changed)
		self.sd_pid1_ki_changed(self.sd_pid1_ki, self.sd_pid1_ki.get_value())
		self.hbox_pid1_ki.append(self.lb_pid1_ki)
		self.hbox_pid1_ki.append(self.sd_pid1_ki)
		self.hbox_pid1_ki.append(self.sb_pid1_ki)
		self.w.append(self.hbox_pid1_ki)

		self.hbox_pid1_kd = gui.HBox(margin="10px")
		self.lb_pid1_kd = gui.Label("/dev/pid1_kd", width="20%", margin="10px")
		self.sd_pid1_kd = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid1_kd.set_oninput_listener(self.sd_pid1_kd_changed)
		self.sb_pid1_kd = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid1_kd.set_on_change_listener(self.sb_pid1_kd_changed)
		self.sd_pid1_kd_changed(self.sd_pid1_kd, self.sd_pid1_kd.get_value())
		self.hbox_pid1_kd.append(self.lb_pid1_kd)
		self.hbox_pid1_kd.append(self.sd_pid1_kd)
		self.hbox_pid1_kd.append(self.sb_pid1_kd)
		self.w.append(self.hbox_pid1_kd)

		self.hbox_pid1_rst_int = gui.HBox(margin="10px")
		self.lb_pid1_rst_int = gui.Label("/dev/pid1_rst_int", width="20%", margin="10px")
		self.sd_pid1_rst_int = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid1_rst_int.set_oninput_listener(self.sd_pid1_rst_int_changed)
		self.sb_pid1_rst_int = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid1_rst_int.set_on_change_listener(self.sb_pid1_rst_int_changed)
		self.sd_pid1_rst_int_changed(self.sd_pid1_rst_int, self.sd_pid1_rst_int.get_value())
		self.hbox_pid1_rst_int.append(self.lb_pid1_rst_int)
		self.hbox_pid1_rst_int.append(self.sd_pid1_rst_int)
		self.hbox_pid1_rst_int.append(self.sb_pid1_rst_int)
		self.w.append(self.hbox_pid1_rst_int)

		self.hbox_pid1_sign = gui.HBox(margin="10px")
		self.lb_pid1_sign = gui.Label("/dev/pid1_sign", width="20%", margin="10px")
		self.sd_pid1_sign = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid1_sign.set_oninput_listener(self.sd_pid1_sign_changed)
		self.sb_pid1_sign = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid1_sign.set_on_change_listener(self.sb_pid1_sign_changed)
		self.sd_pid1_sign_changed(self.sd_pid1_sign, self.sd_pid1_sign.get_value())
		self.hbox_pid1_sign.append(self.lb_pid1_sign)
		self.hbox_pid1_sign.append(self.sd_pid1_sign)
		self.hbox_pid1_sign.append(self.sb_pid1_sign)
		self.w.append(self.hbox_pid1_sign)

		self.hbox_pid1_setpoint = gui.HBox(margin="10px")
		self.lb_pid1_setpoint = gui.Label("/dev/pid1_setpoint", width="20%", margin="10px")
		self.sd_pid1_setpoint = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid1_setpoint.set_oninput_listener(self.sd_pid1_setpoint_changed)
		self.sb_pid1_setpoint = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid1_setpoint.set_on_change_listener(self.sb_pid1_setpoint_changed)
		self.sd_pid1_setpoint_changed(self.sd_pid1_setpoint, self.sd_pid1_setpoint.get_value())
		self.hbox_pid1_setpoint.append(self.lb_pid1_setpoint)
		self.hbox_pid1_setpoint.append(self.sd_pid1_setpoint)
		self.hbox_pid1_setpoint.append(self.sb_pid1_setpoint)
		self.w.append(self.hbox_pid1_setpoint)

		self.hbox_pid2_kp = gui.HBox(margin="10px")
		self.lb_pid2_kp = gui.Label("/dev/pid2_kp", width="20%", margin="10px")
		self.sd_pid2_kp = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid2_kp.set_oninput_listener(self.sd_pid2_kp_changed)
		self.sb_pid2_kp = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid2_kp.set_on_change_listener(self.sb_pid2_kp_changed)
		self.sd_pid2_kp_changed(self.sd_pid2_kp, self.sd_pid2_kp.get_value())
		self.hbox_pid2_kp.append(self.lb_pid2_kp)
		self.hbox_pid2_kp.append(self.sd_pid2_kp)
		self.hbox_pid2_kp.append(self.sb_pid2_kp)
		self.w.append(self.hbox_pid2_kp)

		self.hbox_pid2_ki = gui.HBox(margin="10px")
		self.lb_pid2_ki = gui.Label("/dev/pid2_ki", width="20%", margin="10px")
		self.sd_pid2_ki = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid2_ki.set_oninput_listener(self.sd_pid2_ki_changed)
		self.sb_pid2_ki = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid2_ki.set_on_change_listener(self.sb_pid2_ki_changed)
		self.sd_pid2_ki_changed(self.sd_pid2_ki, self.sd_pid2_ki.get_value())
		self.hbox_pid2_ki.append(self.lb_pid2_ki)
		self.hbox_pid2_ki.append(self.sd_pid2_ki)
		self.hbox_pid2_ki.append(self.sb_pid2_ki)
		self.w.append(self.hbox_pid2_ki)

		self.hbox_pid2_kd = gui.HBox(margin="10px")
		self.lb_pid2_kd = gui.Label("/dev/pid2_kd", width="20%", margin="10px")
		self.sd_pid2_kd = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid2_kd.set_oninput_listener(self.sd_pid2_kd_changed)
		self.sb_pid2_kd = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid2_kd.set_on_change_listener(self.sb_pid2_kd_changed)
		self.sd_pid2_kd_changed(self.sd_pid2_kd, self.sd_pid2_kd.get_value())
		self.hbox_pid2_kd.append(self.lb_pid2_kd)
		self.hbox_pid2_kd.append(self.sd_pid2_kd)
		self.hbox_pid2_kd.append(self.sb_pid2_kd)
		self.w.append(self.hbox_pid2_kd)

		self.hbox_pid2_rst_int = gui.HBox(margin="10px")
		self.lb_pid2_rst_int = gui.Label("/dev/pid2_rst_int", width="20%", margin="10px")
		self.sd_pid2_rst_int = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid2_rst_int.set_oninput_listener(self.sd_pid2_rst_int_changed)
		self.sb_pid2_rst_int = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid2_rst_int.set_on_change_listener(self.sb_pid2_rst_int_changed)
		self.sd_pid2_rst_int_changed(self.sd_pid2_rst_int, self.sd_pid2_rst_int.get_value())
		self.hbox_pid2_rst_int.append(self.lb_pid2_rst_int)
		self.hbox_pid2_rst_int.append(self.sd_pid2_rst_int)
		self.hbox_pid2_rst_int.append(self.sb_pid2_rst_int)
		self.w.append(self.hbox_pid2_rst_int)

		self.hbox_pid2_sign = gui.HBox(margin="10px")
		self.lb_pid2_sign = gui.Label("/dev/pid2_sign", width="20%", margin="10px")
		self.sd_pid2_sign = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid2_sign.set_oninput_listener(self.sd_pid2_sign_changed)
		self.sb_pid2_sign = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid2_sign.set_on_change_listener(self.sb_pid2_sign_changed)
		self.sd_pid2_sign_changed(self.sd_pid2_sign, self.sd_pid2_sign.get_value())
		self.hbox_pid2_sign.append(self.lb_pid2_sign)
		self.hbox_pid2_sign.append(self.sd_pid2_sign)
		self.hbox_pid2_sign.append(self.sb_pid2_sign)
		self.w.append(self.hbox_pid2_sign)

		self.hbox_pid2_setpoint = gui.HBox(margin="10px")
		self.lb_pid2_setpoint = gui.Label("/dev/pid2_setpoint", width="20%", margin="10px")
		self.sd_pid2_setpoint = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid2_setpoint.set_oninput_listener(self.sd_pid2_setpoint_changed)
		self.sb_pid2_setpoint = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid2_setpoint.set_on_change_listener(self.sb_pid2_setpoint_changed)
		self.sd_pid2_setpoint_changed(self.sd_pid2_setpoint, self.sd_pid2_setpoint.get_value())
		self.hbox_pid2_setpoint.append(self.lb_pid2_setpoint)
		self.hbox_pid2_setpoint.append(self.sd_pid2_setpoint)
		self.hbox_pid2_setpoint.append(self.sb_pid2_setpoint)
		self.w.append(self.hbox_pid2_setpoint)

		self.hbox_dds1_nco = gui.HBox(margin="10px")
		self.lb_dds1_nco = gui.Label("/dev/dds1_nco", width="20%", margin="10px")
		self.sd_dds1_nco = gui.Slider(0, 0, 62500000, 1, width="50%", margin="10px")
		self.sd_dds1_nco.set_oninput_listener(self.sd_dds1_nco_changed)
		self.sb_dds1_nco = gui.SpinBox(0, 0, 62500000, 1, width="20%", margin="10px")
		self.sb_dds1_nco.set_on_change_listener(self.sb_dds1_nco_changed)
		self.cb_pinc_dds1_nco = gui.CheckBoxLabel("pinc", True, width="5%", margin="10px")
		self.cb_pinc_dds1_nco.set_on_change_listener(self.cb_dds1_nco_changed)
		self.cb_poff_dds1_nco = gui.CheckBoxLabel("poff", True, width="5%", margin="10px")
		self.cb_poff_dds1_nco.set_on_change_listener(self.cb_dds1_nco_changed)
		self.sd_dds1_nco_changed(self.sd_dds1_nco, self.sd_dds1_nco.get_value())
		self.hbox_dds1_nco.append(self.lb_dds1_nco)
		self.hbox_dds1_nco.append(self.sd_dds1_nco)
		self.hbox_dds1_nco.append(self.sb_dds1_nco)
		self.hbox_dds1_nco.append(self.cb_pinc_dds1_nco)
		self.hbox_dds1_nco.append(self.cb_poff_dds1_nco)
		self.w.append(self.hbox_dds1_nco)

		self.hbox_switchComplex_O = gui.HBox(margin="10px")
		self.cb_switchComplex_O = gui.CheckBoxLabel(switchComplex_O, True, width="5%", margin="10px")
		self.cb_switchComplex_O.set_on_change_listener(self.cb_switchComplex_O_changed)
		self.hbox_switchComplex_O.append(self.cb_switchComplex_O)
		self.w.append(self.hbox_switchComplex_O)

		return self.w

	def sd_adc1_offset_changed(self, widget, value):
		print("/dev/adc1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/adc1_offset", int(value))
		self.sb_adc1_offset.set_value(value)

	def sb_adc1_offset_changed(self, widget, value):
		print("/dev/adc1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/adc1_offset", int(value))
		self.sd_adc1_offset.set_value(value)

	def sd_dds1_ampl_changed(self, widget, value):
		print("/dev/dds1_ampl", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_ampl", int(value))
		self.sb_dds1_ampl.set_value(value)

	def sb_dds1_ampl_changed(self, widget, value):
		print("/dev/dds1_ampl", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_ampl", int(value))
		self.sd_dds1_ampl.set_value(value)

	def sd_dds1_f0_changed(self, widget, value):
		print("/dev/dds1_f0", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_f0", int(int(value)/(125e6/2**32)))
		self.sb_dds1_f0.set_value(value)

	def sb_dds1_f0_changed(self, widget, value):
		print("/dev/dds1_f0", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_f0", int(int(value)/(125e6/2**32)))
		self.sd_dds1_f0.set_value(value)

	def sd_dds1_offset_changed(self, widget, value):
		print("/dev/dds1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_offset", int(value))
		self.sb_dds1_offset.set_value(value)

	def sb_dds1_offset_changed(self, widget, value):
		print("/dev/dds1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_offset", int(value))
		self.sd_dds1_offset.set_value(value)

	def sd_dds1_range_changed(self, widget, value):
		print("/dev/dds1_range", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_range", int(value))
		self.sb_dds1_range.set_value(value)

	def sb_dds1_range_changed(self, widget, value):
		print("/dev/dds1_range", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_range", int(value))
		self.sd_dds1_range.set_value(value)

	def sd_pid2_offset_changed(self, widget, value):
		print("/dev/pid2_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid2_offset", int(value))
		self.sb_pid2_offset.set_value(value)

	def sb_pid2_offset_changed(self, widget, value):
		print("/dev/pid2_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid2_offset", int(value))
		self.sd_pid2_offset.set_value(value)

	def sd_pid1_kp_changed(self, widget, value):
		print("/dev/pid1_kp", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid1_kp", int(value))
		self.sb_pid1_kp.set_value(value)

	def sb_pid1_kp_changed(self, widget, value):
		print("/dev/pid1_kp", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid1_kp", int(value))
		self.sd_pid1_kp.set_value(value)

	def sd_pid1_ki_changed(self, widget, value):
		print("/dev/pid1_ki", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid1_ki", int(value))
		self.sb_pid1_ki.set_value(value)

	def sb_pid1_ki_changed(self, widget, value):
		print("/dev/pid1_ki", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid1_ki", int(value))
		self.sd_pid1_ki.set_value(value)

	def sd_pid1_kd_changed(self, widget, value):
		print("/dev/pid1_kd", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid1_kd", int(value))
		self.sb_pid1_kd.set_value(value)

	def sb_pid1_kd_changed(self, widget, value):
		print("/dev/pid1_kd", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid1_kd", int(value))
		self.sd_pid1_kd.set_value(value)

	def sd_pid1_rst_int_changed(self, widget, value):
		print("/dev/pid1_rst_int", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid1_rst_int", int(value))
		self.sb_pid1_rst_int.set_value(value)

	def sb_pid1_rst_int_changed(self, widget, value):
		print("/dev/pid1_rst_int", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid1_rst_int", int(value))
		self.sd_pid1_rst_int.set_value(value)

	def sd_pid1_sign_changed(self, widget, value):
		print("/dev/pid1_sign", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid1_sign", int(value))
		self.sb_pid1_sign.set_value(value)

	def sb_pid1_sign_changed(self, widget, value):
		print("/dev/pid1_sign", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid1_sign", int(value))
		self.sd_pid1_sign.set_value(value)

	def sd_pid1_setpoint_changed(self, widget, value):
		print("/dev/pid1_setpoint", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid1_setpoint", int(value))
		self.sb_pid1_setpoint.set_value(value)

	def sb_pid1_setpoint_changed(self, widget, value):
		print("/dev/pid1_setpoint", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid1_setpoint", int(value))
		self.sd_pid1_setpoint.set_value(value)

	def sd_pid2_kp_changed(self, widget, value):
		print("/dev/pid2_kp", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid2_kp", int(value))
		self.sb_pid2_kp.set_value(value)

	def sb_pid2_kp_changed(self, widget, value):
		print("/dev/pid2_kp", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid2_kp", int(value))
		self.sd_pid2_kp.set_value(value)

	def sd_pid2_ki_changed(self, widget, value):
		print("/dev/pid2_ki", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid2_ki", int(value))
		self.sb_pid2_ki.set_value(value)

	def sb_pid2_ki_changed(self, widget, value):
		print("/dev/pid2_ki", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid2_ki", int(value))
		self.sd_pid2_ki.set_value(value)

	def sd_pid2_kd_changed(self, widget, value):
		print("/dev/pid2_kd", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid2_kd", int(value))
		self.sb_pid2_kd.set_value(value)

	def sb_pid2_kd_changed(self, widget, value):
		print("/dev/pid2_kd", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid2_kd", int(value))
		self.sd_pid2_kd.set_value(value)

	def sd_pid2_rst_int_changed(self, widget, value):
		print("/dev/pid2_rst_int", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid2_rst_int", int(value))
		self.sb_pid2_rst_int.set_value(value)

	def sb_pid2_rst_int_changed(self, widget, value):
		print("/dev/pid2_rst_int", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid2_rst_int", int(value))
		self.sd_pid2_rst_int.set_value(value)

	def sd_pid2_sign_changed(self, widget, value):
		print("/dev/pid2_sign", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid2_sign", int(value))
		self.sb_pid2_sign.set_value(value)

	def sb_pid2_sign_changed(self, widget, value):
		print("/dev/pid2_sign", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid2_sign", int(value))
		self.sd_pid2_sign.set_value(value)

	def sd_pid2_setpoint_changed(self, widget, value):
		print("/dev/pid2_setpoint", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid2_setpoint", int(value))
		self.sb_pid2_setpoint.set_value(value)

	def sb_pid2_setpoint_changed(self, widget, value):
		print("/dev/pid2_setpoint", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid2_setpoint", int(value))
		self.sd_pid2_setpoint.set_value(value)

	def sd_dds1_nco_changed(self, widget, value):
		print("/dev/dds1_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds1_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		self.sb_dds1_nco.set_value(value)

	def sb_dds1_nco_changed(self, widget, value):
		print("/dev/dds1_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds1_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		self.sd_dds1_nco.set_value(value)

	def cb_dds1_nco_changed(self, widget, value):
		print("/dev/dds1_nco", 125000000, int(self.sb_dds1_nco.get_value()), 32, 0, int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds1_nco", 125000000, int(self.sb_dds1_nco.get_value()), 32, 0, int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))

	def cb_switchComplex_O_changed(self, widget, value):
		print("/dev/switchComplex_O", int(self.cb_switchComplex_O.get_value()))
		liboscimp_fpga.swC_send_conf("/dev/switchComplex_O", int(self.cb_switchComplex_O.get_value()))

start(MyApp, address="0.0.0.0", port=80, title="pid_vco_pid_only_webserver")
