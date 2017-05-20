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

		self.hbox_adc2_offset = gui.HBox(margin="10px")
		self.lb_adc2_offset = gui.Label("/dev/adc2_offset", width="20%", margin="10px")
		self.sd_adc2_offset = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_adc2_offset.set_oninput_listener(self.sd_adc2_offset_changed)
		self.sb_adc2_offset = gui.SpinBox(0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_adc2_offset.set_on_change_listener(self.sb_adc2_offset_changed)
		self.sd_adc2_offset_changed(self.sd_adc2_offset, self.sd_adc2_offset.get_value())
		self.hbox_adc2_offset.append(self.lb_adc2_offset)
		self.hbox_adc2_offset.append(self.sd_adc2_offset)
		self.hbox_adc2_offset.append(self.sb_adc2_offset)
		self.w.append(self.hbox_adc2_offset)

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

		self.hbox_dds_freq = gui.HBox(margin="10px")
		self.lb_dds_freq = gui.Label("/dev/dds_freq", width="20%", margin="10px")
		self.sd_dds_freq = gui.Slider(0, 0, 62500000, 1, width="50%", margin="10px")
		self.sd_dds_freq.set_oninput_listener(self.sd_dds_freq_changed)
		self.sb_dds_freq = gui.SpinBox(0, 0, 62500000, 1, width="20%", margin="10px")
		self.sb_dds_freq.set_on_change_listener(self.sb_dds_freq_changed)
		self.cb_pinc_dds_freq = gui.CheckBoxLabel("pinc", True, width="5%", margin="10px")
		self.cb_pinc_dds_freq.set_on_change_listener(self.cb_dds_freq_changed)
		self.cb_poff_dds_freq = gui.CheckBoxLabel("poff", True, width="5%", margin="10px")
		self.cb_poff_dds_freq.set_on_change_listener(self.cb_dds_freq_changed)
		self.sd_dds_freq_changed(self.sd_dds_freq, self.sd_dds_freq.get_value())
		self.hbox_dds_freq.append(self.lb_dds_freq)
		self.hbox_dds_freq.append(self.sd_dds_freq)
		self.hbox_dds_freq.append(self.sb_dds_freq)
		self.hbox_dds_freq.append(self.cb_pinc_dds_freq)
		self.hbox_dds_freq.append(self.cb_poff_dds_freq)
		self.w.append(self.hbox_dds_freq)

		return self.w

	def sd_adc1_offset_changed(self, widget, value):
		print("/dev/adc1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/adc1_offset", int(value))
		self.sb_adc1_offset.set_value(value)

	def sb_adc1_offset_changed(self, widget, value):
		print("/dev/adc1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/adc1_offset", int(value))
		self.sd_adc1_offset.set_value(value)

	def sd_adc2_offset_changed(self, widget, value):
		print("/dev/adc2_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/adc2_offset", int(value))
		self.sb_adc2_offset.set_value(value)

	def sb_adc2_offset_changed(self, widget, value):
		print("/dev/adc2_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/adc2_offset", int(value))
		self.sd_adc2_offset.set_value(value)

	def sd_dds_ampl_changed(self, widget, value):
		print("/dev/dds_ampl", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds_ampl", int(value))
		self.sb_dds_ampl.set_value(value)

	def sb_dds_ampl_changed(self, widget, value):
		print("/dev/dds_ampl", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds_ampl", int(value))
		self.sd_dds_ampl.set_value(value)

	def sd_dds_offset_changed(self, widget, value):
		print("/dev/dds_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds_offset", int(value))
		self.sb_dds_offset.set_value(value)

	def sb_dds_offset_changed(self, widget, value):
		print("/dev/dds_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds_offset", int(value))
		self.sd_dds_offset.set_value(value)

	def sd_dds_freq_changed(self, widget, value):
		print("/dev/dds_freq", 125000000, int(value), 32, 0, int(self.cb_pinc_dds_freq.get_value()), int(self.cb_poff_dds_freq.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds_freq", 125000000, int(value), 32, 0, int(self.cb_pinc_dds_freq.get_value()), int(self.cb_poff_dds_freq.get_value()))
		self.sb_dds_freq.set_value(value)

	def sb_dds_freq_changed(self, widget, value):
		print("/dev/dds_freq", 125000000, int(value), 32, 0, int(self.cb_pinc_dds_freq.get_value()), int(self.cb_poff_dds_freq.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds_freq", 125000000, int(value), 32, 0, int(self.cb_pinc_dds_freq.get_value()), int(self.cb_poff_dds_freq.get_value()))
		self.sd_dds_freq.set_value(value)

	def cb_dds_freq_changed(self, widget, value):
		print("/dev/dds_freq", 125000000, int(self.sb_dds_freq.get_value()), 32, 0, int(self.cb_pinc_dds_freq.get_value()), int(self.cb_poff_dds_freq.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds_freq", 125000000, int(self.sb_dds_freq.get_value()), 32, 0, int(self.cb_pinc_dds_freq.get_value()), int(self.cb_poff_dds_freq.get_value()))

start(MyApp, address="0.0.0.0", port=80)
