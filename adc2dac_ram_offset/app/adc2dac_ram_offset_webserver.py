#!/usr/bin/env python

import liboscimp_fpga
import remi.gui as gui
from remi import start, App

class MyApp(App):
	def __init__(self, *args):
		super(MyApp, self).__init__(*args)

	def main(self):
		w = gui.VBox()

		self.lb_dac1_offset = gui.Label("/dev/dac1_offset")
		self.sd_dac1_offset = gui.Slider(0, -8192, 8191, 1)
		self.sd_dac1_offset.set_oninput_listener(self.dac1_offset_changed)
		w.append(self.lb_dac1_offset)
		w.append(self.sd_dac1_offset)

		self.lb_dac2_offset = gui.Label("/dev/dac2_offset")
		self.sd_dac2_offset = gui.Slider(0, -8192, 8191, 1)
		self.sd_dac2_offset.set_oninput_listener(self.dac2_offset_changed)
		w.append(self.lb_dac2_offset)
		w.append(self.sd_dac2_offset)

		return w

	def dac1_offset_changed(self, widget, value):
		liboscimp_fpga.add_const_set_offset("/dev/dac1_offset", int(value))

	def dac2_offset_changed(self, widget, value):
		liboscimp_fpga.add_const_set_offset("/dev/dac2_offset", int(value))

start(MyApp, address="0.0.0.0")
