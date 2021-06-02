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
vals.config = "double_iq_pid_vco_defconf.xml"
vals.adc1_offset = 0
vals.adc2_offset = 0
vals.dds1_f0 = 0
vals.pinc_dds1_nco = 0
vals.poff_dds1_nco = 0
vals.cb_pinc_dds1_nco = True
vals.cb_poff_dds1_nco = True
vals.dds1_offset = 0
vals.dds2_f0 = 0
vals.pinc_dds2_nco = 0
vals.poff_dds2_nco = 0
vals.cb_pinc_dds2_nco = True
vals.cb_poff_dds2_nco = True
vals.dds2_offset = 0
vals.ch1_dds_ampl = 0
vals.ch2_dds_ampl = 0
vals.ch1_dds_range = 0
vals.ch2_dds_range = 0
vals.pinc_demod1_nco = 0
vals.poff_demod1_nco = 0
vals.cb_pinc_demod1_nco = True
vals.cb_poff_demod1_nco = True
vals.pinc_demod2_nco = 0
vals.poff_demod2_nco = 0
vals.cb_pinc_demod2_nco = True
vals.cb_poff_demod2_nco = True
vals.kp_pidv3_axi_0 = 0
vals.ki_pidv3_axi_0 = 0
vals.rst_int_pidv3_axi_0 = True
vals.sp_pidv3_axi_0 = 0
vals.sign_pidv3_axi_0 = 0
vals.kp_pidv3_axi_1 = 0
vals.ki_pidv3_axi_1 = 0
vals.rst_int_pidv3_axi_1 = True
vals.sp_pidv3_axi_1 = 0
vals.sign_pidv3_axi_1 = 0
vals.shifterReal_dyn_0 = 9
vals.shifterReal_dyn_1 = 9

class MyApp(App):
	def __init__(self, *args):
		super(MyApp, self).__init__(*args)

	def main(self):
		self.w = gui.VBox()

		self.hbox_save_load = gui.HBox(margin="10px")
		self.dtext_conf_file = gui.TextInput(width=200, height=30)
		self.dtext_conf_file.set_value(str(vals.config))
		self.dtext_conf_file.onchange.do(self.dtext_conf_file_changed)
		self.bt_load = gui.Button("Load", width=200, height=30, margin="10px")
		self.bt_load.onclick(self.bt_load_changed)
		self.bt_save = gui.Button("Save", width=200, height=30, margin="10px")
		self.bt_save.onclick(self.bt_save_changed)
		self.hbox_save_load.append(self.dtext_conf_file)
		self.hbox_save_load.append(self.bt_load)
		self.hbox_save_load.append(self.bt_save)
		self.w.append(self.hbox_save_load)

		self.hbox_adc1_offset = gui.HBox(margin="10px")
		self.lb_adc1_offset = gui.Label("/dev/adc1_offset", width="20%", margin="10px")
		self.sd_adc1_offset = gui.Slider(vals.adc1_offset, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_adc1_offset.onchange.do(self.sd_adc1_offset_changed)
		self.sb_adc1_offset = gui.SpinBox(vals.adc1_offset, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_adc1_offset.onchange.do(self.sb_adc1_offset_changed)
		self.sd_adc1_offset_changed(self.sd_adc1_offset, self.sd_adc1_offset.get_value())
		self.hbox_adc1_offset.append(self.lb_adc1_offset)
		self.hbox_adc1_offset.append(self.sd_adc1_offset)
		self.hbox_adc1_offset.append(self.sb_adc1_offset)
		self.w.append(self.hbox_adc1_offset)

		self.hbox_adc2_offset = gui.HBox(margin="10px")
		self.lb_adc2_offset = gui.Label("/dev/adc2_offset", width="20%", margin="10px")
		self.sd_adc2_offset = gui.Slider(vals.adc2_offset, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_adc2_offset.onchange.do(self.sd_adc2_offset_changed)
		self.sb_adc2_offset = gui.SpinBox(vals.adc2_offset, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_adc2_offset.onchange.do(self.sb_adc2_offset_changed)
		self.sd_adc2_offset_changed(self.sd_adc2_offset, self.sd_adc2_offset.get_value())
		self.hbox_adc2_offset.append(self.lb_adc2_offset)
		self.hbox_adc2_offset.append(self.sd_adc2_offset)
		self.hbox_adc2_offset.append(self.sb_adc2_offset)
		self.w.append(self.hbox_adc2_offset)

		self.hbox_dds1_f0 = gui.HBox(margin="10px")
		self.lb_dds1_f0 = gui.Label("/dev/dds1_f0", width="20%", margin="10px")
		self.sd_dds1_f0 = gui.Slider(vals.dds1_f0, 0, samp_freq/2, 1, width="60%", margin="10px")
		self.sd_dds1_f0.onchange.do(self.sd_dds1_f0_changed)
		self.sb_dds1_f0 = gui.SpinBox(vals.dds1_f0, 0, samp_freq/2, 0.02, width="20%", margin="10px")
		self.sb_dds1_f0.onchange.do(self.sb_dds1_f0_changed)
		self.sd_dds1_f0_changed(self.sd_dds1_f0, self.sd_dds1_f0.get_value())
		self.hbox_dds1_f0.append(self.lb_dds1_f0)
		self.hbox_dds1_f0.append(self.sd_dds1_f0)
		self.hbox_dds1_f0.append(self.sb_dds1_f0)
		self.w.append(self.hbox_dds1_f0)

		self.hbox_dds1_nco = gui.HBox(margin="10px")
		self.lb_dds1_nco = gui.Label("/dev/dds1_nco", width="20%", margin="10px")
		self.sd_pinc_dds1_nco = gui.Slider(vals.pinc_dds1_nco, 0, samp_freq/2, 1, width="25%", margin="10px")
		self.sd_pinc_dds1_nco.onchange.do(self.sd_pinc_dds1_nco_changed)
		self.sb_pinc_dds1_nco = gui.SpinBox(vals.pinc_dds1_nco, 0, samp_freq/2, 0.02, width="10%", margin="10px")
		self.sb_pinc_dds1_nco.onchange.do(self.sb_pinc_dds1_nco_changed)
		self.sd_poff_dds1_nco = gui.Slider(vals.poff_dds1_nco, -8192, 8191, 1, width="25%", margin="10px")
		self.sd_poff_dds1_nco.onchange.do(self.sd_poff_dds1_nco_changed)
		self.sb_poff_dds1_nco = gui.SpinBox(vals.poff_dds1_nco, -8192, 8191, 1, width="10%", margin="10px")
		self.sb_poff_dds1_nco.onchange.do(self.sb_poff_dds1_nco_changed)
		self.cb_pinc_dds1_nco = gui.CheckBoxLabel("pinc", vals.cb_pinc_dds1_nco, width="5%", margin="10px")
		self.cb_pinc_dds1_nco.onchange.do(self.cb_pinc_dds1_nco_changed)
		self.cb_poff_dds1_nco = gui.CheckBoxLabel("poff", vals.cb_poff_dds1_nco, width="5%", margin="10px")
		self.cb_poff_dds1_nco.onchange.do(self.cb_poff_dds1_nco_changed)
		self.hbox_dds1_nco.append(self.lb_dds1_nco)
		self.hbox_dds1_nco.append(self.sd_pinc_dds1_nco)
		self.hbox_dds1_nco.append(self.sb_pinc_dds1_nco)
		self.hbox_dds1_nco.append(self.sd_poff_dds1_nco)
		self.hbox_dds1_nco.append(self.sb_poff_dds1_nco)
		self.hbox_dds1_nco.append(self.cb_pinc_dds1_nco)
		self.hbox_dds1_nco.append(self.cb_poff_dds1_nco)
		self.w.append(self.hbox_dds1_nco)

		self.hbox_dds1_offset = gui.HBox(margin="10px")
		self.lb_dds1_offset = gui.Label("/dev/dds1_offset", width="20%", margin="10px")
		self.sd_dds1_offset = gui.Slider(vals.dds1_offset, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds1_offset.onchange.do(self.sd_dds1_offset_changed)
		self.sb_dds1_offset = gui.SpinBox(vals.dds1_offset, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_dds1_offset.onchange.do(self.sb_dds1_offset_changed)
		self.sd_dds1_offset_changed(self.sd_dds1_offset, self.sd_dds1_offset.get_value())
		self.hbox_dds1_offset.append(self.lb_dds1_offset)
		self.hbox_dds1_offset.append(self.sd_dds1_offset)
		self.hbox_dds1_offset.append(self.sb_dds1_offset)
		self.w.append(self.hbox_dds1_offset)

		self.hbox_dds2_f0 = gui.HBox(margin="10px")
		self.lb_dds2_f0 = gui.Label("/dev/dds2_f0", width="20%", margin="10px")
		self.sd_dds2_f0 = gui.Slider(vals.dds2_f0, 0, samp_freq/2, 1, width="60%", margin="10px")
		self.sd_dds2_f0.onchange.do(self.sd_dds2_f0_changed)
		self.sb_dds2_f0 = gui.SpinBox(vals.dds2_f0, 0, samp_freq/2, 0.02, width="20%", margin="10px")
		self.sb_dds2_f0.onchange.do(self.sb_dds2_f0_changed)
		self.sd_dds2_f0_changed(self.sd_dds2_f0, self.sd_dds2_f0.get_value())
		self.hbox_dds2_f0.append(self.lb_dds2_f0)
		self.hbox_dds2_f0.append(self.sd_dds2_f0)
		self.hbox_dds2_f0.append(self.sb_dds2_f0)
		self.w.append(self.hbox_dds2_f0)

		self.hbox_dds2_nco = gui.HBox(margin="10px")
		self.lb_dds2_nco = gui.Label("/dev/dds2_nco", width="20%", margin="10px")
		self.sd_pinc_dds2_nco = gui.Slider(vals.pinc_dds2_nco, 0, samp_freq/2, 1, width="25%", margin="10px")
		self.sd_pinc_dds2_nco.onchange.do(self.sd_pinc_dds2_nco_changed)
		self.sb_pinc_dds2_nco = gui.SpinBox(vals.pinc_dds2_nco, 0, samp_freq/2, 0.02, width="10%", margin="10px")
		self.sb_pinc_dds2_nco.onchange.do(self.sb_pinc_dds2_nco_changed)
		self.sd_poff_dds2_nco = gui.Slider(vals.poff_dds2_nco, -8192, 8191, 1, width="25%", margin="10px")
		self.sd_poff_dds2_nco.onchange.do(self.sd_poff_dds2_nco_changed)
		self.sb_poff_dds2_nco = gui.SpinBox(vals.poff_dds2_nco, -8192, 8191, 1, width="10%", margin="10px")
		self.sb_poff_dds2_nco.onchange.do(self.sb_poff_dds2_nco_changed)
		self.cb_pinc_dds2_nco = gui.CheckBoxLabel("pinc", vals.cb_pinc_dds2_nco, width="5%", margin="10px")
		self.cb_pinc_dds2_nco.onchange.do(self.cb_pinc_dds2_nco_changed)
		self.cb_poff_dds2_nco = gui.CheckBoxLabel("poff", vals.cb_poff_dds2_nco, width="5%", margin="10px")
		self.cb_poff_dds2_nco.onchange.do(self.cb_poff_dds2_nco_changed)
		self.hbox_dds2_nco.append(self.lb_dds2_nco)
		self.hbox_dds2_nco.append(self.sd_pinc_dds2_nco)
		self.hbox_dds2_nco.append(self.sb_pinc_dds2_nco)
		self.hbox_dds2_nco.append(self.sd_poff_dds2_nco)
		self.hbox_dds2_nco.append(self.sb_poff_dds2_nco)
		self.hbox_dds2_nco.append(self.cb_pinc_dds2_nco)
		self.hbox_dds2_nco.append(self.cb_poff_dds2_nco)
		self.w.append(self.hbox_dds2_nco)

		self.hbox_dds2_offset = gui.HBox(margin="10px")
		self.lb_dds2_offset = gui.Label("/dev/dds2_offset", width="20%", margin="10px")
		self.sd_dds2_offset = gui.Slider(vals.dds2_offset, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds2_offset.onchange.do(self.sd_dds2_offset_changed)
		self.sb_dds2_offset = gui.SpinBox(vals.dds2_offset, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_dds2_offset.onchange.do(self.sb_dds2_offset_changed)
		self.sd_dds2_offset_changed(self.sd_dds2_offset, self.sd_dds2_offset.get_value())
		self.hbox_dds2_offset.append(self.lb_dds2_offset)
		self.hbox_dds2_offset.append(self.sd_dds2_offset)
		self.hbox_dds2_offset.append(self.sb_dds2_offset)
		self.w.append(self.hbox_dds2_offset)

		self.hbox_ch1_dds_ampl = gui.HBox(margin="10px")
		self.lb_ch1_dds_ampl = gui.Label("/dev/dds_ampl/1", width="20%", margin="10px")
		self.sd_ch1_dds_ampl = gui.Slider(vals.ch1_dds_ampl, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_ch1_dds_ampl.onchange.do(self.sd_ch1_dds_ampl_changed)
		self.sb_ch1_dds_ampl = gui.SpinBox(vals.ch1_dds_ampl, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_ch1_dds_ampl.onchange.do(self.sb_ch1_dds_ampl_changed)
		self.sd_ch1_dds_ampl_changed(self.sd_ch1_dds_ampl, self.sd_ch1_dds_ampl.get_value())
		self.hbox_ch1_dds_ampl.append(self.lb_ch1_dds_ampl)
		self.hbox_ch1_dds_ampl.append(self.sd_ch1_dds_ampl)
		self.hbox_ch1_dds_ampl.append(self.sb_ch1_dds_ampl)
		self.w.append(self.hbox_ch1_dds_ampl)

		self.hbox_ch2_dds_ampl = gui.HBox(margin="10px")
		self.lb_ch2_dds_ampl = gui.Label("/dev/dds_ampl/2", width="20%", margin="10px")
		self.sd_ch2_dds_ampl = gui.Slider(vals.ch2_dds_ampl, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_ch2_dds_ampl.onchange.do(self.sd_ch2_dds_ampl_changed)
		self.sb_ch2_dds_ampl = gui.SpinBox(vals.ch2_dds_ampl, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_ch2_dds_ampl.onchange.do(self.sb_ch2_dds_ampl_changed)
		self.sd_ch2_dds_ampl_changed(self.sd_ch2_dds_ampl, self.sd_ch2_dds_ampl.get_value())
		self.hbox_ch2_dds_ampl.append(self.lb_ch2_dds_ampl)
		self.hbox_ch2_dds_ampl.append(self.sd_ch2_dds_ampl)
		self.hbox_ch2_dds_ampl.append(self.sb_ch2_dds_ampl)
		self.w.append(self.hbox_ch2_dds_ampl)

		self.hbox_ch1_dds_range = gui.HBox(margin="10px")
		self.lb_ch1_dds_range = gui.Label("/dev/dds_range/1", width="20%", margin="10px")
		self.sd_ch1_dds_range = gui.Slider(vals.ch1_dds_range, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_ch1_dds_range.onchange.do(self.sd_ch1_dds_range_changed)
		self.sb_ch1_dds_range = gui.SpinBox(vals.ch1_dds_range, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_ch1_dds_range.onchange.do(self.sb_ch1_dds_range_changed)
		self.sd_ch1_dds_range_changed(self.sd_ch1_dds_range, self.sd_ch1_dds_range.get_value())
		self.hbox_ch1_dds_range.append(self.lb_ch1_dds_range)
		self.hbox_ch1_dds_range.append(self.sd_ch1_dds_range)
		self.hbox_ch1_dds_range.append(self.sb_ch1_dds_range)
		self.w.append(self.hbox_ch1_dds_range)

		self.hbox_ch2_dds_range = gui.HBox(margin="10px")
		self.lb_ch2_dds_range = gui.Label("/dev/dds_range/2", width="20%", margin="10px")
		self.sd_ch2_dds_range = gui.Slider(vals.ch2_dds_range, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_ch2_dds_range.onchange.do(self.sd_ch2_dds_range_changed)
		self.sb_ch2_dds_range = gui.SpinBox(vals.ch2_dds_range, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_ch2_dds_range.onchange.do(self.sb_ch2_dds_range_changed)
		self.sd_ch2_dds_range_changed(self.sd_ch2_dds_range, self.sd_ch2_dds_range.get_value())
		self.hbox_ch2_dds_range.append(self.lb_ch2_dds_range)
		self.hbox_ch2_dds_range.append(self.sd_ch2_dds_range)
		self.hbox_ch2_dds_range.append(self.sb_ch2_dds_range)
		self.w.append(self.hbox_ch2_dds_range)

		self.hbox_demod1_nco = gui.HBox(margin="10px")
		self.lb_demod1_nco = gui.Label("/dev/demod1_nco", width="20%", margin="10px")
		self.sd_pinc_demod1_nco = gui.Slider(vals.pinc_demod1_nco, 0, samp_freq/2, 1, width="25%", margin="10px")
		self.sd_pinc_demod1_nco.onchange.do(self.sd_pinc_demod1_nco_changed)
		self.sb_pinc_demod1_nco = gui.SpinBox(vals.pinc_demod1_nco, 0, samp_freq/2, 0.02, width="10%", margin="10px")
		self.sb_pinc_demod1_nco.onchange.do(self.sb_pinc_demod1_nco_changed)
		self.sd_poff_demod1_nco = gui.Slider(vals.poff_demod1_nco, -8192, 8191, 1, width="25%", margin="10px")
		self.sd_poff_demod1_nco.onchange.do(self.sd_poff_demod1_nco_changed)
		self.sb_poff_demod1_nco = gui.SpinBox(vals.poff_demod1_nco, -8192, 8191, 1, width="10%", margin="10px")
		self.sb_poff_demod1_nco.onchange.do(self.sb_poff_demod1_nco_changed)
		self.cb_pinc_demod1_nco = gui.CheckBoxLabel("pinc", vals.cb_pinc_demod1_nco, width="5%", margin="10px")
		self.cb_pinc_demod1_nco.onchange.do(self.cb_pinc_demod1_nco_changed)
		self.cb_poff_demod1_nco = gui.CheckBoxLabel("poff", vals.cb_poff_demod1_nco, width="5%", margin="10px")
		self.cb_poff_demod1_nco.onchange.do(self.cb_poff_demod1_nco_changed)
		self.hbox_demod1_nco.append(self.lb_demod1_nco)
		self.hbox_demod1_nco.append(self.sd_pinc_demod1_nco)
		self.hbox_demod1_nco.append(self.sb_pinc_demod1_nco)
		self.hbox_demod1_nco.append(self.sd_poff_demod1_nco)
		self.hbox_demod1_nco.append(self.sb_poff_demod1_nco)
		self.hbox_demod1_nco.append(self.cb_pinc_demod1_nco)
		self.hbox_demod1_nco.append(self.cb_poff_demod1_nco)
		self.w.append(self.hbox_demod1_nco)

		self.hbox_demod2_nco = gui.HBox(margin="10px")
		self.lb_demod2_nco = gui.Label("/dev/demod2_nco", width="20%", margin="10px")
		self.sd_pinc_demod2_nco = gui.Slider(vals.pinc_demod2_nco, 0, samp_freq/2, 1, width="25%", margin="10px")
		self.sd_pinc_demod2_nco.onchange.do(self.sd_pinc_demod2_nco_changed)
		self.sb_pinc_demod2_nco = gui.SpinBox(vals.pinc_demod2_nco, 0, samp_freq/2, 0.02, width="10%", margin="10px")
		self.sb_pinc_demod2_nco.onchange.do(self.sb_pinc_demod2_nco_changed)
		self.sd_poff_demod2_nco = gui.Slider(vals.poff_demod2_nco, -8192, 8191, 1, width="25%", margin="10px")
		self.sd_poff_demod2_nco.onchange.do(self.sd_poff_demod2_nco_changed)
		self.sb_poff_demod2_nco = gui.SpinBox(vals.poff_demod2_nco, -8192, 8191, 1, width="10%", margin="10px")
		self.sb_poff_demod2_nco.onchange.do(self.sb_poff_demod2_nco_changed)
		self.cb_pinc_demod2_nco = gui.CheckBoxLabel("pinc", vals.cb_pinc_demod2_nco, width="5%", margin="10px")
		self.cb_pinc_demod2_nco.onchange.do(self.cb_pinc_demod2_nco_changed)
		self.cb_poff_demod2_nco = gui.CheckBoxLabel("poff", vals.cb_poff_demod2_nco, width="5%", margin="10px")
		self.cb_poff_demod2_nco.onchange.do(self.cb_poff_demod2_nco_changed)
		self.hbox_demod2_nco.append(self.lb_demod2_nco)
		self.hbox_demod2_nco.append(self.sd_pinc_demod2_nco)
		self.hbox_demod2_nco.append(self.sb_pinc_demod2_nco)
		self.hbox_demod2_nco.append(self.sd_poff_demod2_nco)
		self.hbox_demod2_nco.append(self.sb_poff_demod2_nco)
		self.hbox_demod2_nco.append(self.cb_pinc_demod2_nco)
		self.hbox_demod2_nco.append(self.cb_poff_demod2_nco)
		self.w.append(self.hbox_demod2_nco)

		self.hbox_kp_pidv3_axi_0 = gui.HBox(margin="10px")
		self.lb_kp_pidv3_axi_0 = gui.Label("/dev/pidv3_axi_0/kp", width="20%", margin="10px")
		self.sd_kp_pidv3_axi_0 = gui.Slider(vals.kp_pidv3_axi_0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_kp_pidv3_axi_0.onchange.do(self.sd_kp_pidv3_axi_0_changed)
		self.sb_kp_pidv3_axi_0 = gui.SpinBox(vals.kp_pidv3_axi_0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_kp_pidv3_axi_0.onchange.do(self.sb_kp_pidv3_axi_0_changed)
		self.sd_kp_pidv3_axi_0_changed(self.sd_kp_pidv3_axi_0, self.sd_kp_pidv3_axi_0.get_value())
		self.hbox_kp_pidv3_axi_0.append(self.lb_kp_pidv3_axi_0)
		self.hbox_kp_pidv3_axi_0.append(self.sd_kp_pidv3_axi_0)
		self.hbox_kp_pidv3_axi_0.append(self.sb_kp_pidv3_axi_0)
		self.w.append(self.hbox_kp_pidv3_axi_0)

		self.hbox_ki_pidv3_axi_0 = gui.HBox(margin="10px")
		self.lb_ki_pidv3_axi_0 = gui.Label("/dev/pidv3_axi_0/ki", width="20%", margin="10px")
		self.sd_ki_pidv3_axi_0 = gui.Slider(vals.ki_pidv3_axi_0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_ki_pidv3_axi_0.onchange.do(self.sd_ki_pidv3_axi_0_changed)
		self.sb_ki_pidv3_axi_0 = gui.SpinBox(vals.ki_pidv3_axi_0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_ki_pidv3_axi_0.onchange.do(self.sb_ki_pidv3_axi_0_changed)
		self.sd_ki_pidv3_axi_0_changed(self.sd_ki_pidv3_axi_0, self.sd_ki_pidv3_axi_0.get_value())
		self.cb_rst_int_pidv3_axi_0 = gui.CheckBoxLabel("rst_int", vals.rst_int_pidv3_axi_0, width="5%", margin="10px")
		self.cb_rst_int_pidv3_axi_0.onchange.do(self.cb_rst_int_pidv3_axi_0_changed)
		self.hbox_ki_pidv3_axi_0.append(self.lb_ki_pidv3_axi_0)
		self.hbox_ki_pidv3_axi_0.append(self.sd_ki_pidv3_axi_0)
		self.hbox_ki_pidv3_axi_0.append(self.sb_ki_pidv3_axi_0)
		self.hbox_ki_pidv3_axi_0.append(self.cb_rst_int_pidv3_axi_0)
		self.w.append(self.hbox_ki_pidv3_axi_0)

		self.hbox_sp_pidv3_axi_0 = gui.HBox(margin="10px")
		self.lb_sp_pidv3_axi_0 = gui.Label("/dev/pidv3_axi_0/setpoint", width="20%", margin="10px")
		self.sd_sp_pidv3_axi_0 = gui.Slider(vals.sp_pidv3_axi_0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_sp_pidv3_axi_0.onchange.do(self.sd_sp_pidv3_axi_0_changed)
		self.sb_sp_pidv3_axi_0 = gui.SpinBox(vals.sp_pidv3_axi_0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_sp_pidv3_axi_0.onchange.do(self.sb_sp_pidv3_axi_0_changed)
		self.sd_sp_pidv3_axi_0_changed(self.sd_sp_pidv3_axi_0, self.sd_sp_pidv3_axi_0.get_value())
		self.hbox_sp_pidv3_axi_0.append(self.lb_sp_pidv3_axi_0)
		self.hbox_sp_pidv3_axi_0.append(self.sd_sp_pidv3_axi_0)
		self.hbox_sp_pidv3_axi_0.append(self.sb_sp_pidv3_axi_0)
		self.w.append(self.hbox_sp_pidv3_axi_0)

		self.hbox_sign_pidv3_axi_0 = gui.HBox(margin="10px")
		self.lb_sign_pidv3_axi_0 = gui.Label("/dev/pidv3_axi_0/sign", width="20%", margin="10px")
		self.sd_sign_pidv3_axi_0 = gui.Slider(vals.sign_pidv3_axi_0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_sign_pidv3_axi_0.onchange.do(self.sd_sign_pidv3_axi_0_changed)
		self.sb_sign_pidv3_axi_0 = gui.SpinBox(vals.sign_pidv3_axi_0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_sign_pidv3_axi_0.onchange.do(self.sb_sign_pidv3_axi_0_changed)
		self.sd_sign_pidv3_axi_0_changed(self.sd_sign_pidv3_axi_0, self.sd_sign_pidv3_axi_0.get_value())
		self.hbox_pidv3_axi_0 = gui.HBox(margin="10px")
		self.hbox_sign_pidv3_axi_0.append(self.lb_sign_pidv3_axi_0)
		self.hbox_sign_pidv3_axi_0.append(self.sd_sign_pidv3_axi_0)
		self.hbox_sign_pidv3_axi_0.append(self.sb_sign_pidv3_axi_0)
		self.w.append(self.hbox_sign_pidv3_axi_0)

		self.hbox_kp_pidv3_axi_1 = gui.HBox(margin="10px")
		self.lb_kp_pidv3_axi_1 = gui.Label("/dev/pidv3_axi_1/kp", width="20%", margin="10px")
		self.sd_kp_pidv3_axi_1 = gui.Slider(vals.kp_pidv3_axi_1, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_kp_pidv3_axi_1.onchange.do(self.sd_kp_pidv3_axi_1_changed)
		self.sb_kp_pidv3_axi_1 = gui.SpinBox(vals.kp_pidv3_axi_1, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_kp_pidv3_axi_1.onchange.do(self.sb_kp_pidv3_axi_1_changed)
		self.sd_kp_pidv3_axi_1_changed(self.sd_kp_pidv3_axi_1, self.sd_kp_pidv3_axi_1.get_value())
		self.hbox_kp_pidv3_axi_1.append(self.lb_kp_pidv3_axi_1)
		self.hbox_kp_pidv3_axi_1.append(self.sd_kp_pidv3_axi_1)
		self.hbox_kp_pidv3_axi_1.append(self.sb_kp_pidv3_axi_1)
		self.w.append(self.hbox_kp_pidv3_axi_1)

		self.hbox_ki_pidv3_axi_1 = gui.HBox(margin="10px")
		self.lb_ki_pidv3_axi_1 = gui.Label("/dev/pidv3_axi_1/ki", width="20%", margin="10px")
		self.sd_ki_pidv3_axi_1 = gui.Slider(vals.ki_pidv3_axi_1, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_ki_pidv3_axi_1.onchange.do(self.sd_ki_pidv3_axi_1_changed)
		self.sb_ki_pidv3_axi_1 = gui.SpinBox(vals.ki_pidv3_axi_1, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_ki_pidv3_axi_1.onchange.do(self.sb_ki_pidv3_axi_1_changed)
		self.sd_ki_pidv3_axi_1_changed(self.sd_ki_pidv3_axi_1, self.sd_ki_pidv3_axi_1.get_value())
		self.cb_rst_int_pidv3_axi_1 = gui.CheckBoxLabel("rst_int", vals.rst_int_pidv3_axi_1, width="5%", margin="10px")
		self.cb_rst_int_pidv3_axi_1.onchange.do(self.cb_rst_int_pidv3_axi_1_changed)
		self.hbox_ki_pidv3_axi_1.append(self.lb_ki_pidv3_axi_1)
		self.hbox_ki_pidv3_axi_1.append(self.sd_ki_pidv3_axi_1)
		self.hbox_ki_pidv3_axi_1.append(self.sb_ki_pidv3_axi_1)
		self.hbox_ki_pidv3_axi_1.append(self.cb_rst_int_pidv3_axi_1)
		self.w.append(self.hbox_ki_pidv3_axi_1)

		self.hbox_sp_pidv3_axi_1 = gui.HBox(margin="10px")
		self.lb_sp_pidv3_axi_1 = gui.Label("/dev/pidv3_axi_1/setpoint", width="20%", margin="10px")
		self.sd_sp_pidv3_axi_1 = gui.Slider(vals.sp_pidv3_axi_1, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_sp_pidv3_axi_1.onchange.do(self.sd_sp_pidv3_axi_1_changed)
		self.sb_sp_pidv3_axi_1 = gui.SpinBox(vals.sp_pidv3_axi_1, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_sp_pidv3_axi_1.onchange.do(self.sb_sp_pidv3_axi_1_changed)
		self.sd_sp_pidv3_axi_1_changed(self.sd_sp_pidv3_axi_1, self.sd_sp_pidv3_axi_1.get_value())
		self.hbox_sp_pidv3_axi_1.append(self.lb_sp_pidv3_axi_1)
		self.hbox_sp_pidv3_axi_1.append(self.sd_sp_pidv3_axi_1)
		self.hbox_sp_pidv3_axi_1.append(self.sb_sp_pidv3_axi_1)
		self.w.append(self.hbox_sp_pidv3_axi_1)

		self.hbox_sign_pidv3_axi_1 = gui.HBox(margin="10px")
		self.lb_sign_pidv3_axi_1 = gui.Label("/dev/pidv3_axi_1/sign", width="20%", margin="10px")
		self.sd_sign_pidv3_axi_1 = gui.Slider(vals.sign_pidv3_axi_1, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_sign_pidv3_axi_1.onchange.do(self.sd_sign_pidv3_axi_1_changed)
		self.sb_sign_pidv3_axi_1 = gui.SpinBox(vals.sign_pidv3_axi_1, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_sign_pidv3_axi_1.onchange.do(self.sb_sign_pidv3_axi_1_changed)
		self.sd_sign_pidv3_axi_1_changed(self.sd_sign_pidv3_axi_1, self.sd_sign_pidv3_axi_1.get_value())
		self.hbox_pidv3_axi_1 = gui.HBox(margin="10px")
		self.hbox_sign_pidv3_axi_1.append(self.lb_sign_pidv3_axi_1)
		self.hbox_sign_pidv3_axi_1.append(self.sd_sign_pidv3_axi_1)
		self.hbox_sign_pidv3_axi_1.append(self.sb_sign_pidv3_axi_1)
		self.w.append(self.hbox_sign_pidv3_axi_1)

		self.hbox_shifterReal_dyn_0 = gui.HBox(margin="10px")
		self.lb_shifterReal_dyn_0 = gui.Label("/dev/shifterReal_dyn_0", width="20%", margin="10px")
		self.sd_shifterReal_dyn_0 = gui.Slider(vals.shifterReal_dyn_0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_shifterReal_dyn_0.onchange.do(self.sd_shifterReal_dyn_0_changed)
		self.sb_shifterReal_dyn_0 = gui.SpinBox(vals.shifterReal_dyn_0, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_shifterReal_dyn_0.onchange.do(self.sb_shifterReal_dyn_0_changed)
		self.sd_shifterReal_dyn_0_changed(self.sd_shifterReal_dyn_0, self.sd_shifterReal_dyn_0.get_value())
		self.hbox_shifterReal_dyn_0.append(self.lb_shifterReal_dyn_0)
		self.hbox_shifterReal_dyn_0.append(self.sd_shifterReal_dyn_0)
		self.hbox_shifterReal_dyn_0.append(self.sb_shifterReal_dyn_0)
		self.w.append(self.hbox_shifterReal_dyn_0)

		self.hbox_shifterReal_dyn_1 = gui.HBox(margin="10px")
		self.lb_shifterReal_dyn_1 = gui.Label("/dev/shifterReal_dyn_1", width="20%", margin="10px")
		self.sd_shifterReal_dyn_1 = gui.Slider(vals.shifterReal_dyn_1, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_shifterReal_dyn_1.onchange.do(self.sd_shifterReal_dyn_1_changed)
		self.sb_shifterReal_dyn_1 = gui.SpinBox(vals.shifterReal_dyn_1, -8192, 8191, 1, width="20%", margin="10px")
		self.sb_shifterReal_dyn_1.onchange.do(self.sb_shifterReal_dyn_1_changed)
		self.sd_shifterReal_dyn_1_changed(self.sd_shifterReal_dyn_1, self.sd_shifterReal_dyn_1.get_value())
		self.hbox_shifterReal_dyn_1.append(self.lb_shifterReal_dyn_1)
		self.hbox_shifterReal_dyn_1.append(self.sd_shifterReal_dyn_1)
		self.hbox_shifterReal_dyn_1.append(self.sb_shifterReal_dyn_1)
		self.w.append(self.hbox_shifterReal_dyn_1)

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
		self.sd_dds1_f0_changed(self.sd_dds1_f0, lf.dds1_f0)
		self.sb_dds1_f0_changed(self.sb_dds1_f0, lf.dds1_f0)
		self.sd_pinc_dds1_nco_changed(self.sd_pinc_dds1_nco, lf.pinc_dds1_nco)
		self.sb_pinc_dds1_nco_changed(self.sb_pinc_dds1_nco, lf.pinc_dds1_nco)
		self.sd_poff_dds1_nco_changed(self.sd_poff_dds1_nco, lf.poff_dds1_nco)
		self.sb_poff_dds1_nco_changed(self.sb_poff_dds1_nco, lf.poff_dds1_nco)
		self.cb_pinc_dds1_nco_changed(self.cb_pinc_dds1_nco, lf.cb_pinc_dds1_nco)
		self.cb_poff_dds1_nco_changed(self.cb_poff_dds1_nco, lf.cb_poff_dds1_nco)
		self.sd_dds1_offset_changed(self.sd_dds1_offset, lf.dds1_offset)
		self.sb_dds1_offset_changed(self.sb_dds1_offset, lf.dds1_offset)
		self.sd_dds2_f0_changed(self.sd_dds2_f0, lf.dds2_f0)
		self.sb_dds2_f0_changed(self.sb_dds2_f0, lf.dds2_f0)
		self.sd_pinc_dds2_nco_changed(self.sd_pinc_dds2_nco, lf.pinc_dds2_nco)
		self.sb_pinc_dds2_nco_changed(self.sb_pinc_dds2_nco, lf.pinc_dds2_nco)
		self.sd_poff_dds2_nco_changed(self.sd_poff_dds2_nco, lf.poff_dds2_nco)
		self.sb_poff_dds2_nco_changed(self.sb_poff_dds2_nco, lf.poff_dds2_nco)
		self.cb_pinc_dds2_nco_changed(self.cb_pinc_dds2_nco, lf.cb_pinc_dds2_nco)
		self.cb_poff_dds2_nco_changed(self.cb_poff_dds2_nco, lf.cb_poff_dds2_nco)
		self.sd_dds2_offset_changed(self.sd_dds2_offset, lf.dds2_offset)
		self.sb_dds2_offset_changed(self.sb_dds2_offset, lf.dds2_offset)
		self.sd_ch1_dds_ampl_changed(self.sd_ch1_dds_ampl, lf.ch1_dds_ampl)
		self.sb_ch1_dds_ampl_changed(self.sd_ch1_dds_ampl, lf.ch1_dds_ampl)
		self.sd_ch2_dds_ampl_changed(self.sb_ch2_dds_ampl, lf.ch2_dds_ampl)
		self.sb_ch2_dds_ampl_changed(self.sb_ch2_dds_ampl, lf.ch2_dds_ampl)
		self.sd_ch1_dds_range_changed(self.sd_ch1_dds_range, lf.ch1_dds_range)
		self.sb_ch1_dds_range_changed(self.sd_ch1_dds_range, lf.ch1_dds_range)
		self.sd_ch2_dds_range_changed(self.sb_ch2_dds_range, lf.ch2_dds_range)
		self.sb_ch2_dds_range_changed(self.sb_ch2_dds_range, lf.ch2_dds_range)
		self.sd_pinc_demod1_nco_changed(self.sd_pinc_demod1_nco, lf.pinc_demod1_nco)
		self.sb_pinc_demod1_nco_changed(self.sb_pinc_demod1_nco, lf.pinc_demod1_nco)
		self.sd_poff_demod1_nco_changed(self.sd_poff_demod1_nco, lf.poff_demod1_nco)
		self.sb_poff_demod1_nco_changed(self.sb_poff_demod1_nco, lf.poff_demod1_nco)
		self.cb_pinc_demod1_nco_changed(self.cb_pinc_demod1_nco, lf.cb_pinc_demod1_nco)
		self.cb_poff_demod1_nco_changed(self.cb_poff_demod1_nco, lf.cb_poff_demod1_nco)
		self.sd_pinc_demod2_nco_changed(self.sd_pinc_demod2_nco, lf.pinc_demod2_nco)
		self.sb_pinc_demod2_nco_changed(self.sb_pinc_demod2_nco, lf.pinc_demod2_nco)
		self.sd_poff_demod2_nco_changed(self.sd_poff_demod2_nco, lf.poff_demod2_nco)
		self.sb_poff_demod2_nco_changed(self.sb_poff_demod2_nco, lf.poff_demod2_nco)
		self.cb_pinc_demod2_nco_changed(self.cb_pinc_demod2_nco, lf.cb_pinc_demod2_nco)
		self.cb_poff_demod2_nco_changed(self.cb_poff_demod2_nco, lf.cb_poff_demod2_nco)
		self.sd_kp_pidv3_axi_0_changed(self.sd_kp_pidv3_axi_0, lf.kp_pidv3_axi_0)
		self.sb_kp_pidv3_axi_0_changed(self.sb_kp_pidv3_axi_0, lf.kp_pidv3_axi_0)
		self.sd_ki_pidv3_axi_0_changed(self.sd_ki_pidv3_axi_0, lf.ki_pidv3_axi_0)
		self.sb_ki_pidv3_axi_0_changed(self.sb_ki_pidv3_axi_0, lf.ki_pidv3_axi_0)
		self.cb_rst_int_pidv3_axi_0_changed(self.cb_rst_int_pidv3_axi_0, lf.rst_int_pidv3_axi_0)
		self.sd_sp_pidv3_axi_0_changed(self.sd_sp_pidv3_axi_0, lf.sp_pidv3_axi_0)
		self.sb_sp_pidv3_axi_0_changed(self.sb_sp_pidv3_axi_0, lf.sp_pidv3_axi_0)
		self.sd_sign_pidv3_axi_0_changed(self.sd_sign_pidv3_axi_0, lf.sign_pidv3_axi_0)
		self.sb_sign_pidv3_axi_0_changed(self.sb_sign_pidv3_axi_0, lf.sign_pidv3_axi_0)
		self.sd_kp_pidv3_axi_1_changed(self.sd_kp_pidv3_axi_1, lf.kp_pidv3_axi_1)
		self.sb_kp_pidv3_axi_1_changed(self.sb_kp_pidv3_axi_1, lf.kp_pidv3_axi_1)
		self.sd_ki_pidv3_axi_1_changed(self.sd_ki_pidv3_axi_1, lf.ki_pidv3_axi_1)
		self.sb_ki_pidv3_axi_1_changed(self.sb_ki_pidv3_axi_1, lf.ki_pidv3_axi_1)
		self.cb_rst_int_pidv3_axi_1_changed(self.cb_rst_int_pidv3_axi_1, lf.rst_int_pidv3_axi_1)
		self.sd_sp_pidv3_axi_1_changed(self.sd_sp_pidv3_axi_1, lf.sp_pidv3_axi_1)
		self.sb_sp_pidv3_axi_1_changed(self.sb_sp_pidv3_axi_1, lf.sp_pidv3_axi_1)
		self.sd_sign_pidv3_axi_1_changed(self.sd_sign_pidv3_axi_1, lf.sign_pidv3_axi_1)
		self.sb_sign_pidv3_axi_1_changed(self.sb_sign_pidv3_axi_1, lf.sign_pidv3_axi_1)
		self.sd_shifterReal_dyn_0_changed(self.sd_shifterReal_dyn_0, lf.shifterReal_dyn_0)
		self.sb_shifterReal_dyn_0_changed(self.sb_shifterReal_dyn_0, lf.shifterReal_dyn_0)
		self.sd_shifterReal_dyn_1_changed(self.sd_shifterReal_dyn_1, lf.shifterReal_dyn_1)
		self.sb_shifterReal_dyn_1_changed(self.sb_shifterReal_dyn_1, lf.shifterReal_dyn_1)
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

	def sd_dds1_f0_changed(self, widget, value):
		vals.dds1_f0=value
		print("/dev/dds1_f0", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_f0", int(round(int(value)/(samp_freq/2**40))))
		self.sb_dds1_f0.set_value(int(value))

	def sb_dds1_f0_changed(self, widget, value):
		vals.dds1_f0=value
		print("/dev/dds1_f0", value)
		liboscimp_fpga.add_const_set_offset("/dev/dds1_f0", int(round(float(value)/(samp_freq/2**40))))
		self.sd_dds1_f0.set_value(int(float(value)))

	def sd_pinc_dds1_nco_changed(self, widget, value):
		vals.pinc_dds1_nco=value
		print("/dev/dds1_nco", samp_freq, int(value), 40, int(self.sb_poff_dds1_nco.get_value()), int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds1_nco", samp_freq, ctypes.c_double(int(value)), 40, int(self.sb_poff_dds1_nco.get_value()), int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		self.sb_pinc_dds1_nco.set_value(int(value))

	def sb_pinc_dds1_nco_changed(self, widget, value):
		vals.pinc_dds1_nco=value
		print("/dev/dds1_nco", samp_freq, value, 40, int(self.sb_poff_dds1_nco.get_value()), int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds1_nco", samp_freq, ctypes.c_double(float(value)), 40, int(self.sb_poff_dds1_nco.get_value()), int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		self.sd_pinc_dds1_nco.set_value(value)

	def sd_poff_dds1_nco_changed(self, widget, value):
		vals.poff_dds1_nco=value
		print("/dev/dds1_nco", samp_freq, self.sb_pinc_dds1_nco.get_value(), 40, int(value), int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds1_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_dds1_nco.get_value())), 40, int(value), int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		self.sb_poff_dds1_nco.set_value(value)

	def sb_poff_dds1_nco_changed(self, widget, value):
		vals.poff_dds1_nco=value
		print("/dev/dds1_nco", samp_freq, self.sb_pinc_dds1_nco.get_value(), 40, int(value), int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds1_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_dds1_nco.get_value())), 40, int(value), int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		self.sd_poff_dds1_nco.set_value(value)

	def cb_pinc_dds1_nco_changed(self, widget, value):
		vals.cb_pinc_dds1_nco=value
		print("/dev/dds1_nco", samp_freq, self.sb_pinc_dds1_nco.get_value(), 40, int(self.sb_poff_dds1_nco.get_value()), int(value==True), int(self.cb_poff_dds1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds1_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_dds1_nco.get_value())), 40, int(self.sb_poff_dds1_nco.get_value()), int(value == True), int(self.cb_poff_dds1_nco.get_value()))
		self.cb_pinc_dds1_nco.set_value(int(value==True))

	def cb_poff_dds1_nco_changed(self, widget, value):
		vals.cb_poff_dds1_nco=value
		print("/dev/dds1_nco", samp_freq, self.sb_pinc_dds1_nco.get_value(), 40, int(self.sb_poff_dds1_nco.get_value()), int(self.cb_pinc_dds1_nco.get_value()), int(value==True))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds1_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_dds1_nco.get_value())), 40, int(self.sb_poff_dds1_nco.get_value()), int(self.cb_pinc_dds1_nco.get_value()), int(value==True))
		self.cb_poff_dds1_nco.set_value(int(value==True))

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

	def sd_dds2_f0_changed(self, widget, value):
		vals.dds2_f0=value
		print("/dev/dds2_f0", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds2_f0", int(round(int(value)/(samp_freq/2**40))))
		self.sb_dds2_f0.set_value(int(value))

	def sb_dds2_f0_changed(self, widget, value):
		vals.dds2_f0=value
		print("/dev/dds2_f0", value)
		liboscimp_fpga.add_const_set_offset("/dev/dds2_f0", int(round(float(value)/(samp_freq/2**40))))
		self.sd_dds2_f0.set_value(int(float(value)))

	def sd_pinc_dds2_nco_changed(self, widget, value):
		vals.pinc_dds2_nco=value
		print("/dev/dds2_nco", samp_freq, int(value), 40, int(self.sb_poff_dds2_nco.get_value()), int(self.cb_pinc_dds2_nco.get_value()), int(self.cb_poff_dds2_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds2_nco", samp_freq, ctypes.c_double(int(value)), 40, int(self.sb_poff_dds2_nco.get_value()), int(self.cb_pinc_dds2_nco.get_value()), int(self.cb_poff_dds2_nco.get_value()))
		self.sb_pinc_dds2_nco.set_value(int(value))

	def sb_pinc_dds2_nco_changed(self, widget, value):
		vals.pinc_dds2_nco=value
		print("/dev/dds2_nco", samp_freq, value, 40, int(self.sb_poff_dds2_nco.get_value()), int(self.cb_pinc_dds2_nco.get_value()), int(self.cb_poff_dds2_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds2_nco", samp_freq, ctypes.c_double(float(value)), 40, int(self.sb_poff_dds2_nco.get_value()), int(self.cb_pinc_dds2_nco.get_value()), int(self.cb_poff_dds2_nco.get_value()))
		self.sd_pinc_dds2_nco.set_value(value)

	def sd_poff_dds2_nco_changed(self, widget, value):
		vals.poff_dds2_nco=value
		print("/dev/dds2_nco", samp_freq, self.sb_pinc_dds2_nco.get_value(), 40, int(value), int(self.cb_pinc_dds2_nco.get_value()), int(self.cb_poff_dds2_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds2_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_dds2_nco.get_value())), 40, int(value), int(self.cb_pinc_dds2_nco.get_value()), int(self.cb_poff_dds2_nco.get_value()))
		self.sb_poff_dds2_nco.set_value(value)

	def sb_poff_dds2_nco_changed(self, widget, value):
		vals.poff_dds2_nco=value
		print("/dev/dds2_nco", samp_freq, self.sb_pinc_dds2_nco.get_value(), 40, int(value), int(self.cb_pinc_dds2_nco.get_value()), int(self.cb_poff_dds2_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds2_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_dds2_nco.get_value())), 40, int(value), int(self.cb_pinc_dds2_nco.get_value()), int(self.cb_poff_dds2_nco.get_value()))
		self.sd_poff_dds2_nco.set_value(value)

	def cb_pinc_dds2_nco_changed(self, widget, value):
		vals.cb_pinc_dds2_nco=value
		print("/dev/dds2_nco", samp_freq, self.sb_pinc_dds2_nco.get_value(), 40, int(self.sb_poff_dds2_nco.get_value()), int(value==True), int(self.cb_poff_dds2_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds2_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_dds2_nco.get_value())), 40, int(self.sb_poff_dds2_nco.get_value()), int(value == True), int(self.cb_poff_dds2_nco.get_value()))
		self.cb_pinc_dds2_nco.set_value(int(value==True))

	def cb_poff_dds2_nco_changed(self, widget, value):
		vals.cb_poff_dds2_nco=value
		print("/dev/dds2_nco", samp_freq, self.sb_pinc_dds2_nco.get_value(), 40, int(self.sb_poff_dds2_nco.get_value()), int(self.cb_pinc_dds2_nco.get_value()), int(value==True))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds2_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_dds2_nco.get_value())), 40, int(self.sb_poff_dds2_nco.get_value()), int(self.cb_pinc_dds2_nco.get_value()), int(value==True))
		self.cb_poff_dds2_nco.set_value(int(value==True))

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

	def sd_ch1_dds_range_changed(self, widget, value):
		vals.ch1_dds_range=value
		liboscimp_fpga.axi_to_dac_conf_enable("/dev/dds_range", liboscimp_fpga.BOTH_ALWAYS_HIGH)
		print("/dev/dds_range ch1", int(value))
		liboscimp_fpga.axi_to_dac_set_chan("/dev/dds_range", liboscimp_fpga.CHANA, int(value))
		self.sb_ch1_dds_range.set_value(int(value))

	def sb_ch1_dds_range_changed(self, widget, value):
		vals.ch1_dds_range=value
		liboscimp_fpga.axi_to_dac_conf_enable("/dev/dds_range", liboscimp_fpga.BOTH_ALWAYS_HIGH)
		print("/dev/dds_range ch1", int(value))
		liboscimp_fpga.axi_to_dac_set_chan("/dev/dds_range", liboscimp_fpga.CHANA, int(value))
		self.sd_ch1_dds_range.set_value(int(float(value)))

	def sd_ch2_dds_range_changed(self, widget, value):
		vals.ch2_dds_range=value
		liboscimp_fpga.axi_to_dac_conf_enable("/dev/dds_range", liboscimp_fpga.BOTH_ALWAYS_HIGH)
		print("/dev/dds_range ch2", int(value))
		liboscimp_fpga.axi_to_dac_set_chan("/dev/dds_range", liboscimp_fpga.CHANB, int(value))
		self.sb_ch2_dds_range.set_value(int(value))

	def sb_ch2_dds_range_changed(self, widget, value):
		vals.ch2_dds_range=value
		liboscimp_fpga.axi_to_dac_conf_enable("/dev/dds_range", liboscimp_fpga.BOTH_ALWAYS_HIGH)
		print("/dev/dds_range ch2", int(value))
		liboscimp_fpga.axi_to_dac_set_chan("/dev/dds_range", liboscimp_fpga.CHANB, int(value))
		self.sd_ch2_dds_range.set_value(int(float(value)))

	def sd_pinc_demod1_nco_changed(self, widget, value):
		vals.pinc_demod1_nco=value
		print("/dev/demod1_nco", samp_freq, int(value), 40, int(self.sb_poff_demod1_nco.get_value()), int(self.cb_pinc_demod1_nco.get_value()), int(self.cb_poff_demod1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/demod1_nco", samp_freq, ctypes.c_double(int(value)), 40, int(self.sb_poff_demod1_nco.get_value()), int(self.cb_pinc_demod1_nco.get_value()), int(self.cb_poff_demod1_nco.get_value()))
		self.sb_pinc_demod1_nco.set_value(int(value))

	def sb_pinc_demod1_nco_changed(self, widget, value):
		vals.pinc_demod1_nco=value
		print("/dev/demod1_nco", samp_freq, value, 40, int(self.sb_poff_demod1_nco.get_value()), int(self.cb_pinc_demod1_nco.get_value()), int(self.cb_poff_demod1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/demod1_nco", samp_freq, ctypes.c_double(float(value)), 40, int(self.sb_poff_demod1_nco.get_value()), int(self.cb_pinc_demod1_nco.get_value()), int(self.cb_poff_demod1_nco.get_value()))
		self.sd_pinc_demod1_nco.set_value(value)

	def sd_poff_demod1_nco_changed(self, widget, value):
		vals.poff_demod1_nco=value
		print("/dev/demod1_nco", samp_freq, self.sb_pinc_demod1_nco.get_value(), 40, int(value), int(self.cb_pinc_demod1_nco.get_value()), int(self.cb_poff_demod1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/demod1_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_demod1_nco.get_value())), 40, int(value), int(self.cb_pinc_demod1_nco.get_value()), int(self.cb_poff_demod1_nco.get_value()))
		self.sb_poff_demod1_nco.set_value(value)

	def sb_poff_demod1_nco_changed(self, widget, value):
		vals.poff_demod1_nco=value
		print("/dev/demod1_nco", samp_freq, self.sb_pinc_demod1_nco.get_value(), 40, int(value), int(self.cb_pinc_demod1_nco.get_value()), int(self.cb_poff_demod1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/demod1_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_demod1_nco.get_value())), 40, int(value), int(self.cb_pinc_demod1_nco.get_value()), int(self.cb_poff_demod1_nco.get_value()))
		self.sd_poff_demod1_nco.set_value(value)

	def cb_pinc_demod1_nco_changed(self, widget, value):
		vals.cb_pinc_demod1_nco=value
		print("/dev/demod1_nco", samp_freq, self.sb_pinc_demod1_nco.get_value(), 40, int(self.sb_poff_demod1_nco.get_value()), int(value==True), int(self.cb_poff_demod1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/demod1_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_demod1_nco.get_value())), 40, int(self.sb_poff_demod1_nco.get_value()), int(value == True), int(self.cb_poff_demod1_nco.get_value()))
		self.cb_pinc_demod1_nco.set_value(int(value==True))

	def cb_poff_demod1_nco_changed(self, widget, value):
		vals.cb_poff_demod1_nco=value
		print("/dev/demod1_nco", samp_freq, self.sb_pinc_demod1_nco.get_value(), 40, int(self.sb_poff_demod1_nco.get_value()), int(self.cb_pinc_demod1_nco.get_value()), int(value==True))
		liboscimp_fpga.nco_counter_send_conf("/dev/demod1_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_demod1_nco.get_value())), 40, int(self.sb_poff_demod1_nco.get_value()), int(self.cb_pinc_demod1_nco.get_value()), int(value==True))
		self.cb_poff_demod1_nco.set_value(int(value==True))

	def sd_pinc_demod2_nco_changed(self, widget, value):
		vals.pinc_demod2_nco=value
		print("/dev/demod2_nco", samp_freq, int(value), 40, int(self.sb_poff_demod2_nco.get_value()), int(self.cb_pinc_demod2_nco.get_value()), int(self.cb_poff_demod2_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/demod2_nco", samp_freq, ctypes.c_double(int(value)), 40, int(self.sb_poff_demod2_nco.get_value()), int(self.cb_pinc_demod2_nco.get_value()), int(self.cb_poff_demod2_nco.get_value()))
		self.sb_pinc_demod2_nco.set_value(int(value))

	def sb_pinc_demod2_nco_changed(self, widget, value):
		vals.pinc_demod2_nco=value
		print("/dev/demod2_nco", samp_freq, value, 40, int(self.sb_poff_demod2_nco.get_value()), int(self.cb_pinc_demod2_nco.get_value()), int(self.cb_poff_demod2_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/demod2_nco", samp_freq, ctypes.c_double(float(value)), 40, int(self.sb_poff_demod2_nco.get_value()), int(self.cb_pinc_demod2_nco.get_value()), int(self.cb_poff_demod2_nco.get_value()))
		self.sd_pinc_demod2_nco.set_value(value)

	def sd_poff_demod2_nco_changed(self, widget, value):
		vals.poff_demod2_nco=value
		print("/dev/demod2_nco", samp_freq, self.sb_pinc_demod2_nco.get_value(), 40, int(value), int(self.cb_pinc_demod2_nco.get_value()), int(self.cb_poff_demod2_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/demod2_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_demod2_nco.get_value())), 40, int(value), int(self.cb_pinc_demod2_nco.get_value()), int(self.cb_poff_demod2_nco.get_value()))
		self.sb_poff_demod2_nco.set_value(value)

	def sb_poff_demod2_nco_changed(self, widget, value):
		vals.poff_demod2_nco=value
		print("/dev/demod2_nco", samp_freq, self.sb_pinc_demod2_nco.get_value(), 40, int(value), int(self.cb_pinc_demod2_nco.get_value()), int(self.cb_poff_demod2_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/demod2_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_demod2_nco.get_value())), 40, int(value), int(self.cb_pinc_demod2_nco.get_value()), int(self.cb_poff_demod2_nco.get_value()))
		self.sd_poff_demod2_nco.set_value(value)

	def cb_pinc_demod2_nco_changed(self, widget, value):
		vals.cb_pinc_demod2_nco=value
		print("/dev/demod2_nco", samp_freq, self.sb_pinc_demod2_nco.get_value(), 40, int(self.sb_poff_demod2_nco.get_value()), int(value==True), int(self.cb_poff_demod2_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/demod2_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_demod2_nco.get_value())), 40, int(self.sb_poff_demod2_nco.get_value()), int(value == True), int(self.cb_poff_demod2_nco.get_value()))
		self.cb_pinc_demod2_nco.set_value(int(value==True))

	def cb_poff_demod2_nco_changed(self, widget, value):
		vals.cb_poff_demod2_nco=value
		print("/dev/demod2_nco", samp_freq, self.sb_pinc_demod2_nco.get_value(), 40, int(self.sb_poff_demod2_nco.get_value()), int(self.cb_pinc_demod2_nco.get_value()), int(value==True))
		liboscimp_fpga.nco_counter_send_conf("/dev/demod2_nco", samp_freq, ctypes.c_double(float(self.sb_pinc_demod2_nco.get_value())), 40, int(self.sb_poff_demod2_nco.get_value()), int(self.cb_pinc_demod2_nco.get_value()), int(value==True))
		self.cb_poff_demod2_nco.set_value(int(value==True))

	def sd_kp_pidv3_axi_0_changed(self, widget, value):
		vals.kp_pidv3_axi_0=value
		print("/dev/pidv3_axi_0/kp", int(value))
		liboscimp_fpga.pidv3_axi_set("/dev/pidv3_axi_0", liboscimp_fpga.KP, int(value))
		self.sb_kp_pidv3_axi_0.set_value(int(value))

	def sb_kp_pidv3_axi_0_changed(self, widget, value):
		vals.kp_pidv3_axi_0=value
		print("/dev/pidv3_axi_0/kp", int(value))
		liboscimp_fpga.pidv3_axi_set("/dev/pidv3_axi_0", liboscimp_fpga.KP, int(value))
		self.sd_kp_pidv3_axi_0.set_value(int(float(value)))

	def sd_ki_pidv3_axi_0_changed(self, widget, value):
		vals.ki_pidv3_axi_0=value
		print("/dev/pidv3_axi_0/ki", int(value))
		liboscimp_fpga.pidv3_axi_set("/dev/pidv3_axi_0", liboscimp_fpga.KI, int(value))
		self.sb_ki_pidv3_axi_0.set_value(int(value))

	def sb_ki_pidv3_axi_0_changed(self, widget, value):
		vals.ki_pidv3_axi_0=value
		print("/dev/pidv3_axi_0/ki", int(value))
		liboscimp_fpga.pidv3_axi_set("/dev/pidv3_axi_0", liboscimp_fpga.KI, int(value))
		self.sd_ki_pidv3_axi_0.set_value(int(float(value)))

	def cb_rst_int_pidv3_axi_0_changed(self, widget, value):
		vals.rst_int_pidv3_axi_0=value
		liboscimp_fpga.pidv3_axi_set_int_rst("/dev/pidv3_axi_0", 1)
		print("/dev/pidv3_axi_0/rst_int", int(value==True))
		liboscimp_fpga.pidv3_axi_set_int_rst("/dev/pidv3_axi_0", int(value==True))
		self.cb_rst_int_pidv3_axi_0.set_value(int(value==True))

	def sd_sp_pidv3_axi_0_changed(self, widget, value):
		vals.sp_pidv3_axi_0=value
		print("/dev/pidv3_axi_0/setpoint", int(value))
		liboscimp_fpga.pidv3_axi_set_setpoint("/dev/pidv3_axi_0", int(value))
		self.sb_sp_pidv3_axi_0.set_value(int(value))

	def sb_sp_pidv3_axi_0_changed(self, widget, value):
		vals.sp_pidv3_axi_0=value
		print("/dev/pidv3_axi_0/setpoint", int(value))
		liboscimp_fpga.pidv3_axi_set_setpoint("/dev/pidv3_axi_0", int(value))
		self.sd_sp_pidv3_axi_0.set_value(int(float(value)))

	def sd_sign_pidv3_axi_0_changed(self, widget, value):
		vals.sign_pidv3_axi_0=value
		print("/dev/pidv3_axi_0/sign", int(value))
		liboscimp_fpga.pidv3_axi_set_sign("/dev/pidv3_axi_0", int(value))
		self.sb_sign_pidv3_axi_0.set_value(int(value))

	def sb_sign_pidv3_axi_0_changed(self, widget, value):
		vals.sign_pidv3_axi_0=value
		print("/dev/pidv3_axi_0/sign", int(value))
		liboscimp_fpga.pidv3_axi_set_sign("/dev/pidv3_axi_0", int(value))
		self.sd_sign_pidv3_axi_0.set_value(int(float(value)))

	def sd_kp_pidv3_axi_1_changed(self, widget, value):
		vals.kp_pidv3_axi_1=value
		print("/dev/pidv3_axi_1/kp", int(value))
		liboscimp_fpga.pidv3_axi_set("/dev/pidv3_axi_1", liboscimp_fpga.KP, int(value))
		self.sb_kp_pidv3_axi_1.set_value(int(value))

	def sb_kp_pidv3_axi_1_changed(self, widget, value):
		vals.kp_pidv3_axi_1=value
		print("/dev/pidv3_axi_1/kp", int(value))
		liboscimp_fpga.pidv3_axi_set("/dev/pidv3_axi_1", liboscimp_fpga.KP, int(value))
		self.sd_kp_pidv3_axi_1.set_value(int(float(value)))

	def sd_ki_pidv3_axi_1_changed(self, widget, value):
		vals.ki_pidv3_axi_1=value
		print("/dev/pidv3_axi_1/ki", int(value))
		liboscimp_fpga.pidv3_axi_set("/dev/pidv3_axi_1", liboscimp_fpga.KI, int(value))
		self.sb_ki_pidv3_axi_1.set_value(int(value))

	def sb_ki_pidv3_axi_1_changed(self, widget, value):
		vals.ki_pidv3_axi_1=value
		print("/dev/pidv3_axi_1/ki", int(value))
		liboscimp_fpga.pidv3_axi_set("/dev/pidv3_axi_1", liboscimp_fpga.KI, int(value))
		self.sd_ki_pidv3_axi_1.set_value(int(float(value)))

	def cb_rst_int_pidv3_axi_1_changed(self, widget, value):
		vals.rst_int_pidv3_axi_1=value
		liboscimp_fpga.pidv3_axi_set_int_rst("/dev/pidv3_axi_1", 1)
		print("/dev/pidv3_axi_1/rst_int", int(value==True))
		liboscimp_fpga.pidv3_axi_set_int_rst("/dev/pidv3_axi_1", int(value==True))
		self.cb_rst_int_pidv3_axi_1.set_value(int(value==True))

	def sd_sp_pidv3_axi_1_changed(self, widget, value):
		vals.sp_pidv3_axi_1=value
		print("/dev/pidv3_axi_1/setpoint", int(value))
		liboscimp_fpga.pidv3_axi_set_setpoint("/dev/pidv3_axi_1", int(value))
		self.sb_sp_pidv3_axi_1.set_value(int(value))

	def sb_sp_pidv3_axi_1_changed(self, widget, value):
		vals.sp_pidv3_axi_1=value
		print("/dev/pidv3_axi_1/setpoint", int(value))
		liboscimp_fpga.pidv3_axi_set_setpoint("/dev/pidv3_axi_1", int(value))
		self.sd_sp_pidv3_axi_1.set_value(int(float(value)))

	def sd_sign_pidv3_axi_1_changed(self, widget, value):
		vals.sign_pidv3_axi_1=value
		print("/dev/pidv3_axi_1/sign", int(value))
		liboscimp_fpga.pidv3_axi_set_sign("/dev/pidv3_axi_1", int(value))
		self.sb_sign_pidv3_axi_1.set_value(int(value))

	def sb_sign_pidv3_axi_1_changed(self, widget, value):
		vals.sign_pidv3_axi_1=value
		print("/dev/pidv3_axi_1/sign", int(value))
		liboscimp_fpga.pidv3_axi_set_sign("/dev/pidv3_axi_1", int(value))
		self.sd_sign_pidv3_axi_1.set_value(int(float(value)))

	def sd_shifterReal_dyn_0_changed(self, widget, value):
		vals.shifterReal_dyn_0=value
		print("/dev/shifterReal_dyn_0", int(value))
		liboscimp_fpga.shifter_set("/dev/shifterReal_dyn_0", int(value))
		self.sb_shifterReal_dyn_0.set_value(int(value))

	def sb_shifterReal_dyn_0_changed(self, widget, value):
		vals.shifterReal_dyn_0=value
		print("/dev/shifterReal_dyn_0", int(value))
		liboscimp_fpga.shifter_set("/dev/shifterReal_dyn_0", int(value))
		self.sd_shifterReal_dyn_0.set_value(int(float(value)))

	def sd_shifterReal_dyn_1_changed(self, widget, value):
		vals.shifterReal_dyn_1=value
		print("/dev/shifterReal_dyn_1", int(value))
		liboscimp_fpga.shifter_set("/dev/shifterReal_dyn_1", int(value))
		self.sb_shifterReal_dyn_1.set_value(int(value))

	def sb_shifterReal_dyn_1_changed(self, widget, value):
		vals.shifterReal_dyn_1=value
		print("/dev/shifterReal_dyn_1", int(value))
		liboscimp_fpga.shifter_set("/dev/shifterReal_dyn_1", int(value))
		self.sd_shifterReal_dyn_1.set_value(int(float(value)))

start(MyApp, address="0.0.0.0", port=80, title="double_iq_pid_vco_webserver")
