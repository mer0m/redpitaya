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

		self.hbox_demod_nco = gui.HBox(margin="10px")
		self.lb_demod_nco = gui.Label("/dev/demod_nco", width="20%", margin="10px")
		self.sd_demod_nco = gui.Slider(0, 0, 62500000, 1, width="50%", margin="10px")
		self.sd_demod_nco.set_oninput_listener(self.sd_demod_nco_changed)
		self.sb_demod_nco = gui.SpinBox(0, 0, 62500000, 1, width="20%", margin="10px")
		self.sb_demod_nco.set_on_change_listener(self.sb_demod_nco_changed)
		self.cb_pinc_demod_nco = gui.CheckBoxLabel("pinc", True, width="5%", margin="10px")
		self.cb_pinc_demod_nco.set_on_change_listener(self.cb_demod_nco_changed)
		self.cb_poff_demod_nco = gui.CheckBoxLabel("poff", True, width="5%", margin="10px")
		self.cb_poff_demod_nco.set_on_change_listener(self.cb_demod_nco_changed)
		self.sd_demod_nco_changed(self.sd_demod_nco, self.sd_demod_nco.get_value())
		self.hbox_demod_nco.append(self.lb_demod_nco)
		self.hbox_demod_nco.append(self.sd_demod_nco)
		self.hbox_demod_nco.append(self.sb_demod_nco)
		self.hbox_demod_nco.append(self.cb_pinc_demod_nco)
		self.hbox_demod_nco.append(self.cb_poff_demod_nco)
		self.w.append(self.hbox_demod_nco)

		return self.w

	def sd_adc1_offset_changed(self, widget, value):
		print("/dev/adc1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/adc1_offset", int(value))
		self.sb_adc1_offset.set_value(value)

	def sb_adc1_offset_changed(self, widget, value):
		print("/dev/adc1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/adc1_offset", int(value))
		self.sd_adc1_offset.set_value(value)

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

	def sd_demod_nco_changed(self, widget, value):
		print("/dev/demod_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_demod_nco.get_value()), int(self.cb_poff_demod_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/demod_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_demod_nco.get_value()), int(self.cb_poff_demod_nco.get_value()))
		self.sb_demod_nco.set_value(value)

	def sb_demod_nco_changed(self, widget, value):
		print("/dev/demod_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_demod_nco.get_value()), int(self.cb_poff_demod_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/demod_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_demod_nco.get_value()), int(self.cb_poff_demod_nco.get_value()))
		self.sd_demod_nco.set_value(value)

	def cb_demod_nco_changed(self, widget, value):
		print("/dev/demod_nco", 125000000, int(self.sb_demod_nco.get_value()), 32, 0, int(self.cb_pinc_demod_nco.get_value()), int(self.cb_poff_demod_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/demod_nco", 125000000, int(self.sb_demod_nco.get_value()), 32, 0, int(self.cb_pinc_demod_nco.get_value()), int(self.cb_poff_demod_nco.get_value()))

start(MyApp, address="0.0.0.0", port=80)
