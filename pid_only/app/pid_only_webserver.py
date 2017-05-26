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

		self.hbox_pid_sp = gui.HBox(margin="10px")
		self.lb_pid_sp = gui.Label("/dev/pid_sp", width="20%", margin="10px")
		self.sd_pid_sp = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid_sp.set_oninput_listener(self.sd_pid_sp_changed)
		self.sb_pid_sp = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid_sp.set_on_change_listener(self.sb_pid_sp_changed)
		self.sd_pid_sp_changed(self.sd_pid_sp, self.sd_pid_sp.get_value())
		self.hbox_pid_sp.append(self.lb_pid_sp)
		self.hbox_pid_sp.append(self.sd_pid_sp)
		self.hbox_pid_sp.append(self.sb_pid_sp)
		self.w.append(self.hbox_pid_sp)

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

		self.hbox_pid_int_rst = gui.HBox(margin="10px")
		self.lb_pid_int_rst = gui.Label("/dev/pid_int_rst", width="20%", margin="10px")
		self.sd_pid_int_rst = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_pid_int_rst.set_oninput_listener(self.sd_pid_int_rst_changed)
		self.sb_pid_int_rst = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_pid_int_rst.set_on_change_listener(self.sb_pid_int_rst_changed)
		self.sd_pid_int_rst_changed(self.sd_pid_int_rst, self.sd_pid_int_rst.get_value())
		self.hbox_pid_int_rst.append(self.lb_pid_int_rst)
		self.hbox_pid_int_rst.append(self.sd_pid_int_rst)
		self.hbox_pid_int_rst.append(self.sb_pid_int_rst)
		self.w.append(self.hbox_pid_int_rst)

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

	def sd_pid_sp_changed(self, widget, value):
		print("/dev/pid_sp", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_sp", int(value))
		self.sb_pid_sp.set_value(value)

	def sb_pid_sp_changed(self, widget, value):
		print("/dev/pid_sp", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_sp", int(value))
		self.sd_pid_sp.set_value(value)

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

	def sd_pid_sign_changed(self, widget, value):
		print("/dev/pid_sign", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_sign", int(value))
		self.sb_pid_sign.set_value(value)

	def sb_pid_sign_changed(self, widget, value):
		print("/dev/pid_sign", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_sign", int(value))
		self.sd_pid_sign.set_value(value)

	def sd_pid_int_rst_changed(self, widget, value):
		print("/dev/pid_int_rst", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_int_rst", int(value))
		self.sb_pid_int_rst.set_value(value)

	def sb_pid_int_rst_changed(self, widget, value):
		print("/dev/pid_int_rst", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/pid_int_rst", int(value))
		self.sd_pid_int_rst.set_value(value)

start(MyApp, address="0.0.0.0", port=80, title="pid_only_webserver")
