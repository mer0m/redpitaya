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

		self.lb_adc2_offset = gui.Label("/dev/adc2_offset")
		self.sd_adc2_offset = gui.Slider(0, -8192, 8191, 1)
		self.sd_adc2_offset.set_oninput_listener(self.adc2_offset_changed)
		w.append(self.lb_adc2_offset)
		w.append(self.sd_adc2_offset)

		self.lb_dds_ampl = gui.Label("/dev/dds_ampl")
		self.sd_dds_ampl = gui.Slider(0, -8192, 8191, 1)
		self.sd_dds_ampl.set_oninput_listener(self.dds_ampl_changed)
		w.append(self.lb_dds_ampl)
		w.append(self.sd_dds_ampl)

		self.lb_dds_offset = gui.Label("/dev/dds_offset")
		self.sd_dds_offset = gui.Slider(0, -8192, 8191, 1)
		self.sd_dds_offset.set_oninput_listener(self.dds_offset_changed)
		w.append(self.lb_dds_offset)
		w.append(self.sd_dds_offset)

		self.lb_dds_freq = gui.Label("/dev/dds_freq")
		self.sd_dds_freq = gui.Slider(0, 0, 62500000, 1)
		self.sd_dds_freq.set_oninput_listener(self.dds_freq_changed)
		w.append(self.lb_dds_freq)
		w.append(self.sd_dds_freq)

		return w

	def adc1_offset_changed(self, widget, value):
		liboscimp_fpga.add_const_set_offset("/dev/adc1_offset", int(value))

	def adc2_offset_changed(self, widget, value):
		liboscimp_fpga.add_const_set_offset("/dev/adc2_offset", int(value))

	def dds_ampl_changed(self, widget, value):
		liboscimp_fpga.add_const_set_offset("/dev/dds_ampl", int(value))

	def dds_offset_changed(self, widget, value):
		liboscimp_fpga.add_const_set_offset("/dev/dds_offset", int(value))

	def dds_freq_changed(self, widget, value):
		liboscimp_fpga.nco_counter_send_conf("/dev/dds_freq", 125000000, int(value), 32, 0, 1, 0)

start(MyApp, address="0.0.0.0")
