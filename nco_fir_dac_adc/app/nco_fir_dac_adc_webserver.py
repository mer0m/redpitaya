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
vals.config = "nco_fir_dac_adc_defconf.xml"
vals.pinc_nco1 = 0
vals.poff_nco1 = 0
vals.cb_pinc_nco1 = True
vals.cb_poff_nco1 = True
vals.pinc_nco2 = 0
vals.poff_nco2 = 0
vals.cb_pinc_nco2 = True
vals.cb_poff_nco2 = True

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

		self.hbox_nco1 = gui.HBox(margin="10px")
		self.lb_nco1 = gui.Label("/dev/nco1", width="20%", margin="10px")
		self.sd_pinc_nco1 = gui.Slider(vals.pinc_nco1, 0, samp_freq/2, 1, width="25%", margin="10px")
		self.sd_pinc_nco1.set_on_change_listener(self.sd_pinc_nco1_changed)
		self.sb_pinc_nco1 = gui.SpinBox(vals.pinc_nco1, 0, samp_freq/2, 0.02, width="10%", margin="10px")
		self.sb_pinc_nco1.set_on_change_listener(self.sb_pinc_nco1_changed)
		self.sd_poff_nco1 = gui.Slider(vals.poff_nco1, -8192, 8191, 1, width="25%", margin="10px")
		self.sd_poff_nco1.set_on_change_listener(self.sd_poff_nco1_changed)
		self.sb_poff_nco1 = gui.SpinBox(vals.poff_nco1, -8192, 8191, 1, width="10%", margin="10px")
		self.sb_poff_nco1.set_on_change_listener(self.sb_poff_nco1_changed)
		self.cb_pinc_nco1 = gui.CheckBoxLabel("pinc", vals.cb_pinc_nco1, width="5%", margin="10px")
		self.cb_pinc_nco1.set_on_change_listener(self.cb_pinc_nco1_changed)
		self.cb_poff_nco1 = gui.CheckBoxLabel("poff", vals.cb_poff_nco1, width="5%", margin="10px")
		self.cb_poff_nco1.set_on_change_listener(self.cb_poff_nco1_changed)
		self.hbox_nco1.append(self.lb_nco1)
		self.hbox_nco1.append(self.sd_pinc_nco1)
		self.hbox_nco1.append(self.sb_pinc_nco1)
		self.hbox_nco1.append(self.sd_poff_nco1)
		self.hbox_nco1.append(self.sb_poff_nco1)
		self.hbox_nco1.append(self.cb_pinc_nco1)
		self.hbox_nco1.append(self.cb_poff_nco1)
		self.w.append(self.hbox_nco1)

		self.hbox_nco2 = gui.HBox(margin="10px")
		self.lb_nco2 = gui.Label("/dev/nco2", width="20%", margin="10px")
		self.sd_pinc_nco2 = gui.Slider(vals.pinc_nco2, 0, samp_freq/2, 1, width="25%", margin="10px")
		self.sd_pinc_nco2.set_on_change_listener(self.sd_pinc_nco2_changed)
		self.sb_pinc_nco2 = gui.SpinBox(vals.pinc_nco2, 0, samp_freq/2, 0.02, width="10%", margin="10px")
		self.sb_pinc_nco2.set_on_change_listener(self.sb_pinc_nco2_changed)
		self.sd_poff_nco2 = gui.Slider(vals.poff_nco2, -8192, 8191, 1, width="25%", margin="10px")
		self.sd_poff_nco2.set_on_change_listener(self.sd_poff_nco2_changed)
		self.sb_poff_nco2 = gui.SpinBox(vals.poff_nco2, -8192, 8191, 1, width="10%", margin="10px")
		self.sb_poff_nco2.set_on_change_listener(self.sb_poff_nco2_changed)
		self.cb_pinc_nco2 = gui.CheckBoxLabel("pinc", vals.cb_pinc_nco2, width="5%", margin="10px")
		self.cb_pinc_nco2.set_on_change_listener(self.cb_pinc_nco2_changed)
		self.cb_poff_nco2 = gui.CheckBoxLabel("poff", vals.cb_poff_nco2, width="5%", margin="10px")
		self.cb_poff_nco2.set_on_change_listener(self.cb_poff_nco2_changed)
		self.hbox_nco2.append(self.lb_nco2)
		self.hbox_nco2.append(self.sd_pinc_nco2)
		self.hbox_nco2.append(self.sb_pinc_nco2)
		self.hbox_nco2.append(self.sd_poff_nco2)
		self.hbox_nco2.append(self.sb_poff_nco2)
		self.hbox_nco2.append(self.cb_pinc_nco2)
		self.hbox_nco2.append(self.cb_poff_nco2)
		self.w.append(self.hbox_nco2)

		return self.w

	def dtext_conf_file_changed(self, widget, value):
		print(value)
		vals.config=value

	def bt_load_changed(self, widget):
		with open(str(vals.config), "r") as f:
			 lf = objectify.fromstring(f.read())

		self.sd_pinc_nco1_changed(self.sd_pinc_nco1, lf.pinc_nco1)
		self.sb_pinc_nco1_changed(self.sb_pinc_nco1, lf.pinc_nco1)
		self.sd_poff_nco1_changed(self.sd_poff_nco1, lf.poff_nco1)
		self.sb_poff_nco1_changed(self.sb_poff_nco1, lf.poff_nco1)
		self.cb_pinc_nco1_changed(self.cb_pinc_nco1, lf.cb_pinc_nco1)
		self.cb_poff_nco1_changed(self.cb_poff_nco1, lf.cb_poff_nco1)
		self.sd_pinc_nco2_changed(self.sd_pinc_nco2, lf.pinc_nco2)
		self.sb_pinc_nco2_changed(self.sb_pinc_nco2, lf.pinc_nco2)
		self.sd_poff_nco2_changed(self.sd_poff_nco2, lf.poff_nco2)
		self.sb_poff_nco2_changed(self.sb_poff_nco2, lf.poff_nco2)
		self.cb_pinc_nco2_changed(self.cb_pinc_nco2, lf.cb_pinc_nco2)
		self.cb_poff_nco2_changed(self.cb_poff_nco2, lf.cb_poff_nco2)
		print("Configuration loaded")

	def bt_save_changed(self, widget):
		try:
			os.remove(str(vals.config))
		except:
			pass
		with open(str(vals.config), "wb") as f:
			f.write(lxml.etree.tostring(vals, pretty_print=True))
		print("Saved")

	def sd_pinc_nco1_changed(self, widget, value):
		vals.pinc_nco1=value
		print("/dev/nco1", samp_freq, float(value), 40, int(self.sb_poff_nco1.get_value()), int(self.cb_pinc_nco1.get_value()), int(self.cb_poff_nco1.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco1", samp_freq, ctypes.c_double(float(value)), 40, int(self.sb_poff_nco1.get_value()), int(self.cb_pinc_nco1.get_value()), int(self.cb_poff_nco1.get_value()))
		self.sb_pinc_nco1.set_value(float(value))

	def sb_pinc_nco1_changed(self, widget, value):
		vals.pinc_nco1=value
		print("/dev/nco1", samp_freq, value, 40, int(self.sb_poff_nco1.get_value()), int(self.cb_pinc_nco1.get_value()), int(self.cb_poff_nco1.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco1", samp_freq, ctypes.c_double(float(value)), 40, int(self.sb_poff_nco1.get_value()), int(self.cb_pinc_nco1.get_value()), int(self.cb_poff_nco1.get_value()))
		self.sd_pinc_nco1.set_value(value)

	def sd_poff_nco1_changed(self, widget, value):
		vals.poff_nco1=value
		print("/dev/nco1", samp_freq, self.sb_pinc_nco1.get_value(), 40, int(value), int(self.cb_pinc_nco1.get_value()), int(self.cb_poff_nco1.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco1", samp_freq, ctypes.c_double(float(self.sb_pinc_nco1.get_value())), 40, int(value), int(self.cb_pinc_nco1.get_value()), int(self.cb_poff_nco1.get_value()))
		self.sb_poff_nco1.set_value(value)

	def sb_poff_nco1_changed(self, widget, value):
		vals.poff_nco1=value
		print("/dev/nco1", samp_freq, self.sb_pinc_nco1.get_value(), 40, int(value), int(self.cb_pinc_nco1.get_value()), int(self.cb_poff_nco1.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco1", samp_freq, ctypes.c_double(float(self.sb_pinc_nco1.get_value())), 40, int(value), int(self.cb_pinc_nco1.get_value()), int(self.cb_poff_nco1.get_value()))
		self.sd_poff_nco1.set_value(value)

	def cb_pinc_nco1_changed(self, widget, value):
		vals.cb_pinc_nco1=value
		print("/dev/nco1", samp_freq, self.sb_pinc_nco1.get_value(), 40, int(self.sb_poff_nco1.get_value()), int(value==True), int(self.cb_poff_nco1.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco1", samp_freq, ctypes.c_double(float(self.sb_pinc_nco1.get_value())), 40, int(self.sb_poff_nco1.get_value()), int(value == True), int(self.cb_poff_nco1.get_value()))
		self.cb_pinc_nco1.set_value(int(value==True))

	def cb_poff_nco1_changed(self, widget, value):
		vals.cb_poff_nco1=value
		print("/dev/nco1", samp_freq, self.sb_pinc_nco1.get_value(), 40, int(self.sb_poff_nco1.get_value()), int(self.cb_pinc_nco1.get_value()), int(value==True))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco1", samp_freq, ctypes.c_double(float(self.sb_pinc_nco1.get_value())), 40, int(self.sb_poff_nco1.get_value()), int(self.cb_pinc_nco1.get_value()), int(value==True))
		self.cb_poff_nco1.set_value(int(value==True))

	def sd_pinc_nco2_changed(self, widget, value):
		vals.pinc_nco2=value
		print("/dev/nco2", samp_freq, float(value), 40, int(self.sb_poff_nco2.get_value()), int(self.cb_pinc_nco2.get_value()), int(self.cb_poff_nco2.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco2", samp_freq, ctypes.c_double(float(value)), 40, int(self.sb_poff_nco2.get_value()), int(self.cb_pinc_nco2.get_value()), int(self.cb_poff_nco2.get_value()))
		self.sb_pinc_nco2.set_value(float(value))

	def sb_pinc_nco2_changed(self, widget, value):
		vals.pinc_nco2=value
		print("/dev/nco2", samp_freq, value, 40, int(self.sb_poff_nco2.get_value()), int(self.cb_pinc_nco2.get_value()), int(self.cb_poff_nco2.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco2", samp_freq, ctypes.c_double(float(value)), 40, int(self.sb_poff_nco2.get_value()), int(self.cb_pinc_nco2.get_value()), int(self.cb_poff_nco2.get_value()))
		self.sd_pinc_nco2.set_value(value)

	def sd_poff_nco2_changed(self, widget, value):
		vals.poff_nco2=value
		print("/dev/nco2", samp_freq, self.sb_pinc_nco2.get_value(), 40, int(value), int(self.cb_pinc_nco2.get_value()), int(self.cb_poff_nco2.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco2", samp_freq, ctypes.c_double(float(self.sb_pinc_nco2.get_value())), 40, int(value), int(self.cb_pinc_nco2.get_value()), int(self.cb_poff_nco2.get_value()))
		self.sb_poff_nco2.set_value(value)

	def sb_poff_nco2_changed(self, widget, value):
		vals.poff_nco2=value
		print("/dev/nco2", samp_freq, self.sb_pinc_nco2.get_value(), 40, int(value), int(self.cb_pinc_nco2.get_value()), int(self.cb_poff_nco2.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco2", samp_freq, ctypes.c_double(float(self.sb_pinc_nco2.get_value())), 40, int(value), int(self.cb_pinc_nco2.get_value()), int(self.cb_poff_nco2.get_value()))
		self.sd_poff_nco2.set_value(value)

	def cb_pinc_nco2_changed(self, widget, value):
		vals.cb_pinc_nco2=value
		print("/dev/nco2", samp_freq, self.sb_pinc_nco2.get_value(), 40, int(self.sb_poff_nco2.get_value()), int(value==True), int(self.cb_poff_nco2.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco2", samp_freq, ctypes.c_double(float(self.sb_pinc_nco2.get_value())), 40, int(self.sb_poff_nco2.get_value()), int(value == True), int(self.cb_poff_nco2.get_value()))
		self.cb_pinc_nco2.set_value(int(value==True))

	def cb_poff_nco2_changed(self, widget, value):
		vals.cb_poff_nco2=value
		print("/dev/nco2", samp_freq, self.sb_pinc_nco2.get_value(), 40, int(self.sb_poff_nco2.get_value()), int(self.cb_pinc_nco2.get_value()), int(value==True))
		liboscimp_fpga.nco_counter_send_conf("/dev/nco2", samp_freq, ctypes.c_double(float(self.sb_pinc_nco2.get_value())), 40, int(self.sb_poff_nco2.get_value()), int(self.cb_pinc_nco2.get_value()), int(value==True))
		self.cb_poff_nco2.set_value(int(value==True))

start(MyApp, address="0.0.0.0", port=80, title="nco_fir_dac_adc_webserver")
