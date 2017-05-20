#!/usr/bin/env python

import liboscimp_fpga
import remi.gui as gui
from remi import start, App

class MyApp(App):
	def __init__(self, *args):
		super(MyApp, self).__init__(*args)

	def main(self):
		w = gui.VBox()

		self.lb_adc1_offset = gui.Label("/dev/adc1_offset")
		self.sd_adc1_offset = gui.Slider(0, -8192, 8191, 1)
		self.sd_adc1_offset.set_oninput_listener(self.adc1_offset_changed)
		w.append(self.lb_adc1_offset)
		w.append(self.sd_adc1_offset)

		self.lb_dac1_offset = gui.Label("/dev/dac1_offset")
		self.sd_dac1_offset = gui.Slider(0, -8192, 8191, 1)
		self.sd_dac1_offset.set_oninput_listener(self.dac1_offset_changed)
		w.append(self.lb_dac1_offset)
		w.append(self.sd_dac1_offset)

		self.lb_pid_sp = gui.Label("/dev/pid_sp")
		self.sd_pid_sp = gui.Slider(0, -8192, 8191, 1)
		self.sd_pid_sp.set_oninput_listener(self.pid_sp_changed)
		w.append(self.lb_pid_sp)
		w.append(self.sd_pid_sp)

		self.lb_pid_kp = gui.Label("/dev/pid_kp")
		self.sd_pid_kp = gui.Slider(0, -8192, 8191, 1)
		self.sd_pid_kp.set_oninput_listener(self.pid_kp_changed)
		w.append(self.lb_pid_kp)
		w.append(self.sd_pid_kp)

		self.lb_pid_ki = gui.Label("/dev/pid_ki")
		self.sd_pid_ki = gui.Slider(0, -8192, 8191, 1)
		self.sd_pid_ki.set_oninput_listener(self.pid_ki_changed)
		w.append(self.lb_pid_ki)
		w.append(self.sd_pid_ki)

		self.lb_pid_kd = gui.Label("/dev/pid_kd")
		self.sd_pid_kd = gui.Slider(0, -8192, 8191, 1)
		self.sd_pid_kd.set_oninput_listener(self.pid_kd_changed)
		w.append(self.lb_pid_kd)
		w.append(self.sd_pid_kd)

		self.lb_pid_sign = gui.Label("/dev/pid_sign")
		self.sd_pid_sign = gui.Slider(0, -8192, 8191, 1)
		self.sd_pid_sign.set_oninput_listener(self.pid_sign_changed)
		w.append(self.lb_pid_sign)
		w.append(self.sd_pid_sign)

		self.lb_pid_int_rst = gui.Label("/dev/pid_int_rst")
		self.sd_pid_int_rst = gui.Slider(0, -8192, 8191, 1)
		self.sd_pid_int_rst.set_oninput_listener(self.pid_int_rst_changed)
		w.append(self.lb_pid_int_rst)
		w.append(self.sd_pid_int_rst)

		return w

	def adc1_offset_changed(self, widget, value):
		liboscimp_fpga.add_const_set_offset("/dev/adc1_offset", int(value))

	def dac1_offset_changed(self, widget, value):
		liboscimp_fpga.add_const_set_offset("/dev/dac1_offset", int(value))

	def pid_sp_changed(self, widget, value):
		liboscimp_fpga.add_const_set_offset("/dev/pid_sp", int(value))

	def pid_kp_changed(self, widget, value):
		liboscimp_fpga.add_const_set_offset("/dev/pid_kp", int(value))

	def pid_ki_changed(self, widget, value):
		liboscimp_fpga.add_const_set_offset("/dev/pid_ki", int(value))

	def pid_kd_changed(self, widget, value):
		liboscimp_fpga.add_const_set_offset("/dev/pid_kd", int(value))

	def pid_sign_changed(self, widget, value):
		liboscimp_fpga.add_const_set_offset("/dev/pid_sign", int(value))

	def pid_int_rst_changed(self, widget, value):
		liboscimp_fpga.add_const_set_offset("/dev/pid_int_rst", int(value))

start(MyApp, address="0.0.0.0")
