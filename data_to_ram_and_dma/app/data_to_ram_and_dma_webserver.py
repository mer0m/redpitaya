#!/usr/bin/env python

import liboscimp_fpga
import ctypes
import os
import time
from lxml import objectify
import lxml.etree
import remi.gui as gui
from remi import start, App

#Sampling frequency
samp_freq = 125000000

vals = objectify.Element("item")
vals.config = "data_to_ram_and_dma_defconf.xml"
vals.adc1_offset = 0
vals.adc2_offset = 0
vals.dds1_offset = 0
vals.dds2_offset = 0
vals.ch1_dds_ampl = 0
vals.ch2_dds_ampl = 0
vals.pinc_nco_counter_1 = 0
vals.poff_nco_counter_1 = 0
vals.cb_pinc_nco_counter_1 = True
vals.cb_poff_nco_counter_1 = True
vals.pinc_nco_counter_2 = 0
vals.poff_nco_counter_2 = 0
vals.cb_pinc_nco_counter_2 = True
vals.cb_poff_nco_counter_2 = True

class MyApp(App):
	def __init__(self, *args):
		super(MyApp, self).__init__(*args)

	def main(self):
		self.w = gui.VBox()

		self.hbox_save_load = gui.HBox(margin="10px")
		self.dtext_conf_file = gui.TextInput(width=200, height=30)
		self.dtext_conf_file.set_value(str(vals.config))
		self.dtext_conf_file.set_on_change_listener(self.dtext_conf_file_changed)
		self.bt_load = gui.Button("Load", width=200, height=30, margin="10px")
		self.bt_load.set_on_click_listener(self.bt_load_changed)
		self.bt_save = gui.Button("Save", width=200, height=30, margin="10px")
		self.bt_save.set_on_click_listener(self.bt_save_changed)
		self.hbox_save_load.append(self.dtext_conf_file)
		self.hbox_save_load.append(self.bt_load)
		self.hbox_save_load.append(self.bt_save)
		self.w.append(self.hbox_save_load)

		self.hbox_adc1_offset = gui.HBox(margin="10px")
		self.lb_adc1_offset = gui.Label("/dev/adc1_offset", width="20%", margin="10px")
		self.sd_adc1_offset = gui.Slider(vals.adc1_offset, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_adc1_offset.set_on_change_listener(self.sd_adc1_offset_changed)
		self.sb_adc1_offset = gui.SpinBox(vals.adc1_offset, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_adc1_offset.set_on_change_listener(self.sb_adc1_offset_changed)
		self.sd_adc1_offset_changed(self.sd_adc1_offset, self.sd_adc1_offset.get_value())
		self.hbox_adc1_offset.append(self.lb_adc1_offset)
		self.hbox_adc1_offset.append(self.sd_adc1_offset)
		self.hbox_adc1_offset.append(self.sb_adc1_offset)
		self.w.append(self.hbox_adc1_offset)

		self.hbox_adc2_offset = gui.HBox(margin="10px")
		self.lb_adc2_offset = gui.Label("/dev/adc2_offset", width="20%", margin="10px")
		self.sd_adc2_offset = gui.Slider(vals.adc2_offset, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_adc2_offset.set_on_change_listener(self.sd_adc2_offset_changed)
		self.sb_adc2_offset = gui.SpinBox(vals.adc2_offset, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_adc2_offset.set_on_change_listener(self.sb_adc2_offset_changed)
		self.sd_adc2_offset_changed(self.sd_adc2_offset, self.sd_adc2_offset.get_value())
		self.hbox_adc2_offset.append(self.lb_adc2_offset)
		self.hbox_adc2_offset.append(self.sd_adc2_offset)
		self.hbox_adc2_offset.append(self.sb_adc2_offset)
		self.w.append(self.hbox_adc2_offset)

		self.hbox_dds1_offset = gui.HBox(margin="10px")
		self.lb_dds1_offset = gui.Label("/dev/dds1_offset", width="20%", margin="10px")
		self.sd_dds1_offset = gui.Slider(vals.dds1_offset, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds1_offset.set_on_change_listener(self.sd_dds1_offset_changed)
		self.sb_dds1_offset = gui.SpinBox(vals.dds1_offset, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_dds1_offset.set_on_change_listener(self.sb_dds1_offset_changed)
		self.sd_dds1_offset_changed(self.sd_dds1_offset, self.sd_dds1_offset.get_value())
		self.hbox_dds1_offset.append(self.lb_dds1_offset)
		self.hbox_dds1_offset.append(self.sd_dds1_offset)
		self.hbox_dds1_offset.append(self.sb_dds1_offset)
		self.w.append(self.hbox_dds1_offset)

		self.hbox_dds2_offset = gui.HBox(margin="10px")
		self.lb_dds2_offset = gui.Label("/dev/dds2_offset", width="20%", margin="10px")
		self.sd_dds2_offset = gui.Slider(vals.dds2_offset, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds2_offset.set_on_change_listener(self.sd_dds2_offset_changed)
		self.sb_dds2_offset = gui.SpinBox(vals.dds2_offset, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_dds2_offset.set_on_change_listener(self.sb_dds2_offset_changed)
		self.sd_dds2_offset_changed(self.sd_dds2_offset, self.sd_dds2_offset.get_value())
		self.hbox_dds2_offset.append(self.lb_dds2_offset)
		self.hbox_dds2_offset.append(self.sd_dds2_offset)
		self.hbox_dds2_offset.append(self.sb_dds2_offset)
		self.w.append(self.hbox_dds2_offset)

		self.hbox_ch1_dds_ampl = gui.HBox(margin="10px")
		self.lb_ch1_dds_ampl = gui.Label("/dev/dds_ampl/1", width="20%", margin="10px")
		self.sd_ch1_dds_ampl = gui.Slider(vals.ch1_dds_ampl, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_ch1_dds_ampl.set_on_change_listener(self.sd_ch1_dds_ampl_changed)
		self.sb_ch1_dds_ampl = gui.SpinBox(vals.ch1_dds_ampl, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_ch1_dds_ampl.set_on_change_listener(self.sb_ch1_dds_ampl_changed)
		self.sd_ch1_dds_ampl_changed(self.sd_ch1_dds_ampl, self.sd_ch1_dds_ampl.get_value())
		self.hbox_ch1_dds_ampl.append(self.lb_ch1_dds_ampl)
		self.hbox_ch1_dds_ampl.append(self.sd_ch1_dds_ampl)
		self.hbox_ch1_dds_ampl.append(self.sb_ch1_dds_ampl)
		self.w.append(self.hbox_ch1_dds_ampl)

		self.hbox_ch2_dds_ampl = gui.HBox(margin="10px")
		self.lb_ch2_dds_ampl = gui.Label("/dev/dds_ampl/2", width="20%", margin="10px")
		self.sd_ch2_dds_ampl = gui.Slider(vals.ch2_dds_ampl, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_ch2_dds_ampl.set_on_change_listener(self.sd_ch2_dds_ampl_changed)
		self.sb_ch2_dds_ampl = gui.SpinBox(vals.ch2_dds_ampl, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_ch2_dds_ampl.set_on_change_listener(self.sb_ch2_dds_ampl_changed)
		self.sd_ch2_dds_ampl_changed(self.sd_ch2_dds_ampl, self.sd_ch2_dds_ampl.get_value())
		self.hbox_ch2_dds_ampl.append(self.lb_ch2_dds_ampl)
		self.hbox_ch2_dds_ampl.append(self.sd_ch2_dds_ampl)
		self.hbox_ch2_dds_ampl.append(self.sb_ch2_dds_ampl)
		self.w.append(self.hbox_ch2_dds_ampl)

		self.hbox_nco_counter_1 = gui.HBox(margin="10px")
		self.lb_nco_counter_1 = gui.Label("/dev/nco_counter_1", width="20%", margin="10px")
		self.sd_pinc_nco_counter_1 = gui.Slider(vals.pinc_nco_counter_1, 0, samp_freq/2, 1, width="25%", margin="10px")
		self.sd_pinc_nco_counter_1.set_on_change_listener(self.sd_pinc_nco_counter_1_changed)
		self.sb_pinc_nco_counter_1 = gui.SpinBox(vals.pinc_nco_counter_1, 0, samp_freq/2, 0.02, width="10%", margin="10px")
		self.sb_pinc_nco_counter_1.set_on_change_listener(self.sb_pinc_nco_counter_1_changed)
		self.sd_poff_nco_counter_1 = gui.Slider(vals.poff_nco_counter_1, -8192, 8191, 1, width="25%", margin="10px")
		self.sd_poff_nco_counter_1.set_on_change_listener(self.sd_poff_nco_counter_1_changed)
		self.sb_poff_nco_counter_1 = gui.SpinBox(vals.poff_nco_counter_1, -8192, 8191, 1, width="10%", margin="10px")
		self.sb_poff_nco_counter_1.set_on_change_listener(self.sb_poff_nco_counter_1_changed)
		self.cb_pinc_nco_counter_1 = gui.CheckBoxLabel("pinc", vals.cb_pinc_nco_counter_1, width="5%", margin="10px")
		self.cb_pinc_nco_counter_1.set_on_change_listener(self.cb_pinc_nco_counter_1_changed)
		self.cb_poff_nco_counter_1 = gui.CheckBoxLabel("poff", vals.cb_poff_nco_counter_1, width="5%", margin="10px")
		self.cb_poff_nco_counter_1.set_on_change_listener(self.cb_poff_nco_counter_1_changed)
		self.hbox_nco_counter_1.append(self.lb_nco_counter_1)
		self.hbox_nco_counter_1.append(self.sd_pinc_nco_counter_1)
		self.hbox_nco_counter_1.append(self.sb_pinc_nco_counter_1)
		self.hbox_nco_counter_1.append(self.sd_poff_nco_counter_1)
		self.hbox_nco_counter_1.append(self.sb_poff_nco_counter_1)
		self.hbox_nco_counter_1.append(self.cb_pinc_nco_counter_1)
		self.hbox_nco_counter_1.append(self.cb_poff_nco_counter_1)
		self.w.append(self.hbox_nco_counter_1)

		self.hbox_nco_counter_2 = gui.HBox(margin="10px")
		self.lb_nco_counter_2 = gui.Label("/dev/nco_counter_2", width="20%", margin="10px")
		self.sd_pinc_nco_counter_2 = gui.Slider(vals.pinc_nco_counter_2, 0, samp_freq/2, 1, width="25%", margin="10px")
		self.sd_pinc_nco_counter_2.set_on_change_listener(self.sd_pinc_nco_counter_2_changed)
		self.sb_pinc_nco_counter_2 = gui.SpinBox(vals.pinc_nco_counter_2, 0, samp_freq/2, 0.02, width="10%", margin="10px")
		self.sb_pinc_nco_counter_2.set_on_change_listener(self.sb_pinc_nco_counter_2_changed)
		self.sd_poff_nco_counter_2 = gui.Slider(vals.poff_nco_counter_2, -8192, 8191, 1, width="25%", margin="10px")
		self.sd_poff_nco_counter_2.set_on_change_listener(self.sd_poff_nco_counter_2_changed)
		self.sb_poff_nco_counter_2 = gui.SpinBox(vals.poff_nco_counter_2, -8192, 8191, 1, width="10%", margin="10px")
		self.sb_poff_nco_counter_2.set_on_change_listener(self.sb_poff_nco_counter_2_changed)
		self.cb_pinc_nco_counter_2 = gui.CheckBoxLabel("pinc", vals.cb_pinc_nco_counter_2, width="5%", margin="10px")
		self.cb_pinc_nco_counter_2.set_on_change_listener(self.cb_pinc_nco_counter_2_changed)
		self.cb_poff_nco_counter_2 = gui.CheckBoxLabel("poff", vals.cb_poff_nco_counter_2, width="5%", margin="10px")
		self.cb_poff_nco_counter_2.set_on_change_listener(self.cb_poff_nco_counter_2_changed)
		self.hbox_nco_counter_2.append(self.lb_nco_counter_2)
		self.hbox_nco_counter_2.append(self.sd_pinc_nco_counter_2)
		self.hbox_nco_counter_2.append(self.sb_pinc_nco_counter_2)
		self.hbox_nco_counter_2.append(self.sd_poff_nco_counter_2)
		self.hbox_nco_counter_2.append(self.sb_poff_nco_counter_2)
		self.hbox_nco_counter_2.append(self.cb_pinc_nco_counter_2)
		self.hbox_nco_counter_2.append(self.cb_poff_nco_counter_2)
		self.w.append(self.hbox_nco_counter_2)

		return self.w

	def dtext_conf_file_changed(self, widget, value):
		print(value)
		vals.config=value

	def bt_load_changed(self, widget):
		with open(str(vals.config), "r") as f:
			 lf = objectify.fromstring(f.read())

		self.sd_adc1_offset_changed(self.sd_adc1_offset, lf.adc1_offset)
		self.sb_adc1_offset_changed(self.sb_adc1_offset, lf.adc1_offset)
		self.sd_adc2_offset_changed(self.sd_adc2_offset, lf.adc2_offset)
		self.sb_adc2_offset_changed(self.sb_adc2_offset, lf.adc2_offset)
		self.sd_dds1_offset_changed(self.sd_dds1_offset, lf.dds1_offset)
		self.sb_dds1_offset_changed(self.sb_dds1_offset, lf.dds1_offset)
		self.sd_dds2_offset_changed(self.sd_dds2_offset, lf.dds2_offset)
		self.sb_dds2_offset_changed(self.sb_dds2_offset, lf.dds2_offset)
		self.sd_ch1_dds_ampl_changed(self.sd_ch1_dds_ampl, lf.ch1_dds_ampl)
		self.sb_ch1_dds_ampl_changed(self.sd_ch1_dds_ampl, lf.ch1_dds_ampl)
		self.sd_ch2_dds_ampl_changed(self.sb_ch2_dds_ampl, lf.ch2_dds_ampl)
		self.sb_ch2_dds_ampl_changed(self.sb_ch2_dds_ampl, lf.ch2_dds_ampl)
		self.sd_pinc_nco_counter_1_changed(self.sd_pinc_nco_counter_1, lf.pinc_nco_counter_1)
		self.sb_pinc_nco_counter_1_changed(self.sb_pinc_nco_counter_1, lf.pinc_nco_counter_1)
		self.sd_poff_nco_counter_1_changed(self.sd_poff_nco_counter_1, lf.poff_nco_counter_1)
		self.sb_poff_nco_counter_1_changed(self.sb_poff_nco_counter_1, lf.poff_nco_counter_1)
		self.cb_pinc_nco_counter_1_changed(self.cb_pinc_nco_counter_1, lf.cb_pinc_nco_counter_1)
		self.cb_poff_nco_counter_1_changed(self.cb_poff_nco_counter_1, lf.cb_poff_nco_counter_1)
		self.sd_pinc_nco_counter_2_changed(self.sd_pinc_nco_counter_2, lf.pinc_nco_counter_2)
		self.sb_pinc_nco_counter_2_changed(self.sb_pinc_nco_counter_2, lf.pinc_nco_counter_2)
		self.sd_poff_nco_counter_2_changed(self.sd_poff_nco_counter_2, lf.poff_nco_counter_2)
		self.sb_poff_nco_counter_2_changed(self.sb_poff_nco_counter_2, lf.poff_nco_counter_2)
		self.cb_pinc_nco_counter_2_changed(self.cb_pinc_nco_counter_2, lf.cb_pinc_nco_counter_2)
		self.cb_poff_nco_counter_2_changed(self.cb_poff_nco_counter_2, lf.cb_poff_nco_counter_2)
		print("Configuration loaded")

	def bt_save_changed(self, widget):
		try:
			os.remove(str(vals.config))
		except:
			pass
		with open(str(vals.config), "wb") as f:
			f.write(lxml.etree.tostring(vals, pretty_print=True))
		print("Saved")

	def sd_adc1_offset_changed(self, widget, value):
		vals.adc1_offset=value
		print("/dev/adc1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/adc1_offset", int(value))
		self.sb_adc1_offset.set_value(int(value))

	def sb_adc1_offset_changed(self, widget, value):
		vals.adc1_offset=value
		print("/dev/adc1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/adc1_offset", int(value))
		self.sd_adc1_offset.set_value(int(float(value)))

	def sd_adc2_offset_changed(self, widget, value):
		vals.adc2_offset=value
		print("/dev/adc2_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/adc2_offset", int(value))
		self.sb_adc2_offset.set_value(int(value))

	def sb_adc2_offset_changed(self, widget, value):
		vals.adc2_offset=value
		print("/dev/adc2_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/adc2_offset", int(value))
		self.sd_adc2_offset.set_value(int(float(value)))

	def sd_dds1_offset_changed(self, widget, value):
		vals.dds1_offset=value
		print("/dev/dds1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_offset", int(value))
		self.sb_dds1_offset.set_value(int(value))

	def sb_dds1_offset_changed(self, widget, value):
		vals.dds1_offset=value
		print("/dev/dds1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_offset", int(value))
		self.sd_dds1_offset.set_value(int(float(value)))

	def sd_dds2_offset_changed(self, widget, value):
		vals.dds2_offset=value
		print("/dev/dds2_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds2_offset", int(value))
		self.sb_dds2_offset.set_value(int(value))

	def sb_dds2_offset_changed(self, widget, value):
		vals.dds2_offset=value
		print("/dev/dds2_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds2_offset", int(value))
		self.sd_dds2_offset.set_value(int(float(value)))

	def sd_ch1_dds_ampl_changed(self, widget, value):
		vals.ch1_dds_ampl=value
		liboscimp_fpga.axi_to_dac_conf_enable("/dev/dds_ampl", liboscimp_fpga.BOTH_ALWAYS_HIGH)
		print("/dev/dds_ampl ch1", int(value))
		liboscimp_fpga.axi_to_dac_set_chan("/dev/dds_ampl", liboscimp_fpga.CHANA, int(value))
		self.sb_ch1_dds_ampl.set_value(int(value))

	def sb_ch1_dds_ampl_changed(self, widget, value):
		vals.ch1_dds_ampl=value
		liboscimp_fpga.axi_to_dac_conf_enable("/dev/dds_ampl", liboscimp_fpga.BOTH_ALWAYS_HIGH)
		print("/dev/dds_ampl ch1", int(value))
		liboscimp_fpga.axi_to_dac_set_chan("/dev/dds_ampl", liboscimp_fpga.CHANA, int(value))
		self.sd_ch1_dds_ampl.set_value(int(float(value)))

	def sd_ch2_dds_ampl_changed(self, widget, value):
		vals.ch2_dds_ampl=value
		liboscimp_fpga.axi_to_dac_conf_enable("/dev/dds_ampl", liboscimp_fpga.BOTH_ALWAYS_HIGH)
		print("/dev/dds_ampl ch2", int(value))
		liboscimp_fpga.axi_to_dac_set_chan("/dev/dds_ampl", liboscimp_fpga.CHANB, int(value))
		self.sb_ch2_dds_ampl.set_value(int(value))

	def sb_ch2_dds_ampl_changed(self, widget, value):
		vals.ch2_dds_ampl=value
		liboscimp_fpga.axi_to_dac_conf_enable("/dev/dds_ampl", liboscimp_fpga.BOTH_ALWAYS_HIGH)
		print("/dev/dds_ampl ch2", int(value))
		liboscimp_fpga.axi_to_dac_set_chan("/dev/dds_ampl", liboscimp_fpga.CHANB, int(value))
		self.sd_ch2_dds_ampl.set_value(int(float(value)))

	def sd_pinc_nco_counter_1_changed(self, widget, value):
		vals.pinc_nco_counter_1=value
		print("/dev/nco_counter_1", samp_freq, float(value), 40, int(self.sb_poff_nco_counter_1.get_value()), int(self.cb_pinc_nco_counter_1.get_value()), int(self.cb_poff_nco_counter_1.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco_counter_1", samp_freq, ctypes.c_double(float(value)), 40, int(self.sb_poff_nco_counter_1.get_value()), int(self.cb_pinc_nco_counter_1.get_value()), int(self.cb_poff_nco_counter_1.get_value()))
		self.sb_pinc_nco_counter_1.set_value(float(value))

	def sb_pinc_nco_counter_1_changed(self, widget, value):
		vals.pinc_nco_counter_1=value
		print("/dev/nco_counter_1", samp_freq, value, 40, int(self.sb_poff_nco_counter_1.get_value()), int(self.cb_pinc_nco_counter_1.get_value()), int(self.cb_poff_nco_counter_1.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco_counter_1", samp_freq, ctypes.c_double(float(value)), 40, int(self.sb_poff_nco_counter_1.get_value()), int(self.cb_pinc_nco_counter_1.get_value()), int(self.cb_poff_nco_counter_1.get_value()))
		self.sd_pinc_nco_counter_1.set_value(value)

	def sd_poff_nco_counter_1_changed(self, widget, value):
		vals.poff_nco_counter_1=value
		print("/dev/nco_counter_1", samp_freq, self.sb_pinc_nco_counter_1.get_value(), 40, int(value), int(self.cb_pinc_nco_counter_1.get_value()), int(self.cb_poff_nco_counter_1.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco_counter_1", samp_freq, ctypes.c_double(float(self.sb_pinc_nco_counter_1.get_value())), 40, int(value), int(self.cb_pinc_nco_counter_1.get_value()), int(self.cb_poff_nco_counter_1.get_value()))
		self.sb_poff_nco_counter_1.set_value(value)

	def sb_poff_nco_counter_1_changed(self, widget, value):
		vals.poff_nco_counter_1=value
		print("/dev/nco_counter_1", samp_freq, self.sb_pinc_nco_counter_1.get_value(), 40, int(value), int(self.cb_pinc_nco_counter_1.get_value()), int(self.cb_poff_nco_counter_1.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco_counter_1", samp_freq, ctypes.c_double(float(self.sb_pinc_nco_counter_1.get_value())), 40, int(value), int(self.cb_pinc_nco_counter_1.get_value()), int(self.cb_poff_nco_counter_1.get_value()))
		self.sd_poff_nco_counter_1.set_value(value)

	def cb_pinc_nco_counter_1_changed(self, widget, value):
		vals.cb_pinc_nco_counter_1=value
		print("/dev/nco_counter_1", samp_freq, self.sb_pinc_nco_counter_1.get_value(), 40, int(self.sb_poff_nco_counter_1.get_value()), int(value==True), int(self.cb_poff_nco_counter_1.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco_counter_1", samp_freq, ctypes.c_double(float(self.sb_pinc_nco_counter_1.get_value())), 40, int(self.sb_poff_nco_counter_1.get_value()), int(value == True), int(self.cb_poff_nco_counter_1.get_value()))
		self.cb_pinc_nco_counter_1.set_value(int(value==True))

	def cb_poff_nco_counter_1_changed(self, widget, value):
		vals.cb_poff_nco_counter_1=value
		print("/dev/nco_counter_1", samp_freq, self.sb_pinc_nco_counter_1.get_value(), 40, int(self.sb_poff_nco_counter_1.get_value()), int(self.cb_pinc_nco_counter_1.get_value()), int(value==True))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco_counter_1", samp_freq, ctypes.c_double(float(self.sb_pinc_nco_counter_1.get_value())), 40, int(self.sb_poff_nco_counter_1.get_value()), int(self.cb_pinc_nco_counter_1.get_value()), int(value==True))
		self.cb_poff_nco_counter_1.set_value(int(value==True))

	def sd_pinc_nco_counter_2_changed(self, widget, value):
		vals.pinc_nco_counter_2=value
		print("/dev/nco_counter_2", samp_freq, float(value), 40, int(self.sb_poff_nco_counter_2.get_value()), int(self.cb_pinc_nco_counter_2.get_value()), int(self.cb_poff_nco_counter_2.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco_counter_2", samp_freq, ctypes.c_double(float(value)), 40, int(self.sb_poff_nco_counter_2.get_value()), int(self.cb_pinc_nco_counter_2.get_value()), int(self.cb_poff_nco_counter_2.get_value()))
		self.sb_pinc_nco_counter_2.set_value(float(value))

	def sb_pinc_nco_counter_2_changed(self, widget, value):
		vals.pinc_nco_counter_2=value
		print("/dev/nco_counter_2", samp_freq, value, 40, int(self.sb_poff_nco_counter_2.get_value()), int(self.cb_pinc_nco_counter_2.get_value()), int(self.cb_poff_nco_counter_2.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco_counter_2", samp_freq, ctypes.c_double(float(value)), 40, int(self.sb_poff_nco_counter_2.get_value()), int(self.cb_pinc_nco_counter_2.get_value()), int(self.cb_poff_nco_counter_2.get_value()))
		self.sd_pinc_nco_counter_2.set_value(value)

	def sd_poff_nco_counter_2_changed(self, widget, value):
		vals.poff_nco_counter_2=value
		print("/dev/nco_counter_2", samp_freq, self.sb_pinc_nco_counter_2.get_value(), 40, int(value), int(self.cb_pinc_nco_counter_2.get_value()), int(self.cb_poff_nco_counter_2.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco_counter_2", samp_freq, ctypes.c_double(float(self.sb_pinc_nco_counter_2.get_value())), 40, int(value), int(self.cb_pinc_nco_counter_2.get_value()), int(self.cb_poff_nco_counter_2.get_value()))
		self.sb_poff_nco_counter_2.set_value(value)

	def sb_poff_nco_counter_2_changed(self, widget, value):
		vals.poff_nco_counter_2=value
		print("/dev/nco_counter_2", samp_freq, self.sb_pinc_nco_counter_2.get_value(), 40, int(value), int(self.cb_pinc_nco_counter_2.get_value()), int(self.cb_poff_nco_counter_2.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco_counter_2", samp_freq, ctypes.c_double(float(self.sb_pinc_nco_counter_2.get_value())), 40, int(value), int(self.cb_pinc_nco_counter_2.get_value()), int(self.cb_poff_nco_counter_2.get_value()))
		self.sd_poff_nco_counter_2.set_value(value)

	def cb_pinc_nco_counter_2_changed(self, widget, value):
		vals.cb_pinc_nco_counter_2=value
		print("/dev/nco_counter_2", samp_freq, self.sb_pinc_nco_counter_2.get_value(), 40, int(self.sb_poff_nco_counter_2.get_value()), int(value==True), int(self.cb_poff_nco_counter_2.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco_counter_2", samp_freq, ctypes.c_double(float(self.sb_pinc_nco_counter_2.get_value())), 40, int(self.sb_poff_nco_counter_2.get_value()), int(value == True), int(self.cb_poff_nco_counter_2.get_value()))
		self.cb_pinc_nco_counter_2.set_value(int(value==True))

	def cb_poff_nco_counter_2_changed(self, widget, value):
		vals.cb_poff_nco_counter_2=value
		print("/dev/nco_counter_2", samp_freq, self.sb_pinc_nco_counter_2.get_value(), 40, int(self.sb_poff_nco_counter_2.get_value()), int(self.cb_pinc_nco_counter_2.get_value()), int(value==True))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco_counter_2", samp_freq, ctypes.c_double(float(self.sb_pinc_nco_counter_2.get_value())), 40, int(self.sb_poff_nco_counter_2.get_value()), int(self.cb_pinc_nco_counter_2.get_value()), int(value==True))
		self.cb_poff_nco_counter_2.set_value(int(value==True))

start(MyApp, address="0.0.0.0", port=80, title="data_to_ram_and_dma_webserver")
