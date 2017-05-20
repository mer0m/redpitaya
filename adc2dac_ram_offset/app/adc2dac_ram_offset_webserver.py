#!/usr/bin/env python

import liboscimp_fpga
import remi.gui as gui
from remi import start, App

class MyApp(App):
	def __init__(self, *args):
		super(MyApp, self).__init__(*args)

	def main(self):
		self.w = gui.VBox()

		self.hbox_dac1_offset = gui.HBox(margin="10px")
		self.lb_dac1_offset = gui.Label("/dev/dac1_offset", width="20%", margin="10px")
		self.sd_dac1_offset = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dac1_offset.set_oninput_listener(self.sd_dac1_offset_changed)
		self.sd_dac1_offset = gui.SpinBox(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sb_dac1_offset.set_on_change_listener(self.sb_dac1_offset_changed)
		self.sd_dac1_offset_changed(self.sd_dac1_offset, self.sd_dac1_offset.get_value())
		self.hbox_dac1_offset.append(self.lb_dac1_offset)
		self.hbox_dac1_offset.append(self.sd_dac1_offset)
		self.hbox_dac1_offset.append(self.sb_dac1_offset)
		self.w.append(self.hbox_dac1_offset)

		self.hbox_dac2_offset = gui.HBox(margin="10px")
		self.lb_dac2_offset = gui.Label("/dev/dac2_offset", width="20%", margin="10px")
		self.sd_dac2_offset = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dac2_offset.set_oninput_listener(self.sd_dac2_offset_changed)
		self.sd_dac2_offset = gui.SpinBox(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sb_dac2_offset.set_on_change_listener(self.sb_dac2_offset_changed)
		self.sd_dac2_offset_changed(self.sd_dac2_offset, self.sd_dac2_offset.get_value())
		self.hbox_dac2_offset.append(self.lb_dac2_offset)
		self.hbox_dac2_offset.append(self.sd_dac2_offset)
		self.hbox_dac2_offset.append(self.sb_dac2_offset)
		self.w.append(self.hbox_dac2_offset)

		return self.w

	def sd_dac1_offset_changed(self, widget, value):
		print("/dev/dac1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dac1_offset", int(value))
		self.sb_dac1_offset.set_value(value)

	def sb_dac1_offset_changed(self, widget, value):
		print("/dev/dac1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dac1_offset", int(value))
		self.sd_dac1_offset.set_value(value)

	def sd_dac2_offset_changed(self, widget, value):
		print("/dev/dac2_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dac2_offset", int(value))
		self.sb_dac2_offset.set_value(value)

	def sb_dac2_offset_changed(self, widget, value):
		print("/dev/dac2_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dac2_offset", int(value))
		self.sd_dac2_offset.set_value(value)

start(MyApp, address="0.0.0.0", port=80)
