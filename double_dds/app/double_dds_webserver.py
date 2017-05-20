#!/usr/bin/env python

import liboscimp_fpga
import remi.gui as gui
from remi import start, App

class MyApp(App):
	def __init__(self, *args):
		super(MyApp, self).__init__(*args)

	def main(self):
		self.w = gui.VBox()

		self.hbox_dds1_ampl = gui.HBox(margin="10px")
		self.lb_dds1_ampl = gui.Label("/dev/dds1_ampl", width="20%", margin="10px")
		self.sd_dds1_ampl = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds1_ampl.set_oninput_listener(self.sd_dds1_ampl_changed)
		self.sd_dds1_ampl = gui.SpinBox(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sb_dds1_ampl.set_on_change_listener(self.sb_dds1_ampl_changed)
		self.sd_dds1_ampl_changed(self.sd_dds1_ampl, self.sd_dds1_ampl.get_value())
		self.hbox_dds1_ampl.append(self.lb_dds1_ampl)
		self.hbox_dds1_ampl.append(self.sd_dds1_ampl)
		self.hbox_dds1_ampl.append(self.sb_dds1_ampl)
		self.w.append(self.hbox_dds1_ampl)

		self.hbox_dds1_offset = gui.HBox(margin="10px")
		self.lb_dds1_offset = gui.Label("/dev/dds1_offset", width="20%", margin="10px")
		self.sd_dds1_offset = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds1_offset.set_oninput_listener(self.sd_dds1_offset_changed)
		self.sd_dds1_offset = gui.SpinBox(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sb_dds1_offset.set_on_change_listener(self.sb_dds1_offset_changed)
		self.sd_dds1_offset_changed(self.sd_dds1_offset, self.sd_dds1_offset.get_value())
		self.hbox_dds1_offset.append(self.lb_dds1_offset)
		self.hbox_dds1_offset.append(self.sd_dds1_offset)
		self.hbox_dds1_offset.append(self.sb_dds1_offset)
		self.w.append(self.hbox_dds1_offset)

		self.hbox_dds1_phase = gui.HBox(margin="10px")
		self.lb_dds1_phase = gui.Label("/dev/dds1_phase", width="20%", margin="10px")
		self.sd_dds1_phase = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds1_phase.set_oninput_listener(self.sd_dds1_phase_changed)
		self.sd_dds1_phase = gui.SpinBox(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sb_dds1_phase.set_on_change_listener(self.sb_dds1_phase_changed)
		self.sd_dds1_phase_changed(self.sd_dds1_phase, self.sd_dds1_phase.get_value())
		self.hbox_dds1_phase.append(self.lb_dds1_phase)
		self.hbox_dds1_phase.append(self.sd_dds1_phase)
		self.hbox_dds1_phase.append(self.sb_dds1_phase)
		self.w.append(self.hbox_dds1_phase)

		self.hbox_dds2_ampl = gui.HBox(margin="10px")
		self.lb_dds2_ampl = gui.Label("/dev/dds2_ampl", width="20%", margin="10px")
		self.sd_dds2_ampl = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds2_ampl.set_oninput_listener(self.sd_dds2_ampl_changed)
		self.sd_dds2_ampl = gui.SpinBox(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sb_dds2_ampl.set_on_change_listener(self.sb_dds2_ampl_changed)
		self.sd_dds2_ampl_changed(self.sd_dds2_ampl, self.sd_dds2_ampl.get_value())
		self.hbox_dds2_ampl.append(self.lb_dds2_ampl)
		self.hbox_dds2_ampl.append(self.sd_dds2_ampl)
		self.hbox_dds2_ampl.append(self.sb_dds2_ampl)
		self.w.append(self.hbox_dds2_ampl)

		self.hbox_dds2_offset = gui.HBox(margin="10px")
		self.lb_dds2_offset = gui.Label("/dev/dds2_offset", width="20%", margin="10px")
		self.sd_dds2_offset = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds2_offset.set_oninput_listener(self.sd_dds2_offset_changed)
		self.sd_dds2_offset = gui.SpinBox(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sb_dds2_offset.set_on_change_listener(self.sb_dds2_offset_changed)
		self.sd_dds2_offset_changed(self.sd_dds2_offset, self.sd_dds2_offset.get_value())
		self.hbox_dds2_offset.append(self.lb_dds2_offset)
		self.hbox_dds2_offset.append(self.sd_dds2_offset)
		self.hbox_dds2_offset.append(self.sb_dds2_offset)
		self.w.append(self.hbox_dds2_offset)

		self.hbox_dds2_phase = gui.HBox(margin="10px")
		self.lb_dds2_phase = gui.Label("/dev/dds2_phase", width="20%", margin="10px")
		self.sd_dds2_phase = gui.Slider(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sd_dds2_phase.set_oninput_listener(self.sd_dds2_phase_changed)
		self.sd_dds2_phase = gui.SpinBox(0, -8192, 8191, 1, width="60%", margin="10px")
		self.sb_dds2_phase.set_on_change_listener(self.sb_dds2_phase_changed)
		self.sd_dds2_phase_changed(self.sd_dds2_phase, self.sd_dds2_phase.get_value())
		self.hbox_dds2_phase.append(self.lb_dds2_phase)
		self.hbox_dds2_phase.append(self.sd_dds2_phase)
		self.hbox_dds2_phase.append(self.sb_dds2_phase)
		self.w.append(self.hbox_dds2_phase)

		self.hbox_dds1_nco = gui.HBox(margin="10px")
		self.lb_dds1_nco = gui.Label("/dev/dds1_nco", width="20%", margin="10px")
		self.sd_dds1_nco = gui.Slider(0, 0, 62500000, 1, width="50%", margin="10px")
		self.sd_dds1_nco.set_oninput_listener(self.sd_dds1_nco_changed)
		self.sb_dds1_nco = gui.SpinBox(0, 0, 62500000, 1, width="20%", margin="10px")
		self.sb_dds1_nco.set_on_change_listener(self.sb_dds1_nco_changed)
		self.cb_pinc_dds1_nco = gui.CheckBoxLabel("pinc", True, width="5%", margin="10px")
		self.cb_pinc_dds1_nco.set_on_change_listener(self.cb_dds1_nco_changed)
		self.cb_poff_dds1_nco = gui.CheckBoxLabel("poff", True, width="5%", margin="10px")
		self.cb_poff_dds1_nco.set_on_change_listener(self.cb_dds1_nco_changed)
		self.sd_dds1_nco_changed(self.sd_dds1_nco, self.sd_dds1_nco.get_value())
		self.hbox_dds1_nco.append(self.lb_dds1_nco)
		self.hbox_dds1_nco.append(self.sd_dds1_nco)
		self.hbox_dds1_nco.append(self.sb_dds1_nco)
		self.hbox_dds1_nco.append(self.cb_pinc_dds1_nco)
		self.hbox_dds1_nco.append(self.cb_poff_dds1_nco)
		self.w.append(self.hbox_dds1_nco)

		self.hbox_dds2_nco = gui.HBox(margin="10px")
		self.lb_dds2_nco = gui.Label("/dev/dds2_nco", width="20%", margin="10px")
		self.sd_dds2_nco = gui.Slider(0, 0, 62500000, 1, width="50%", margin="10px")
		self.sd_dds2_nco.set_oninput_listener(self.sd_dds2_nco_changed)
		self.sb_dds2_nco = gui.SpinBox(0, 0, 62500000, 1, width="20%", margin="10px")
		self.sb_dds2_nco.set_on_change_listener(self.sb_dds2_nco_changed)
		self.cb_pinc_dds2_nco = gui.CheckBoxLabel("pinc", True, width="5%", margin="10px")
		self.cb_pinc_dds2_nco.set_on_change_listener(self.cb_dds2_nco_changed)
		self.cb_poff_dds2_nco = gui.CheckBoxLabel("poff", True, width="5%", margin="10px")
		self.cb_poff_dds2_nco.set_on_change_listener(self.cb_dds2_nco_changed)
		self.sd_dds2_nco_changed(self.sd_dds2_nco, self.sd_dds2_nco.get_value())
		self.hbox_dds2_nco.append(self.lb_dds2_nco)
		self.hbox_dds2_nco.append(self.sd_dds2_nco)
		self.hbox_dds2_nco.append(self.sb_dds2_nco)
		self.hbox_dds2_nco.append(self.cb_pinc_dds2_nco)
		self.hbox_dds2_nco.append(self.cb_poff_dds2_nco)
		self.w.append(self.hbox_dds2_nco)

		return self.w

	def sd_dds1_ampl_changed(self, widget, value):
		print("/dev/dds1_ampl", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_ampl", int(value))
		self.sb_dds1_ampl.set_value(value)

	def sb_dds1_ampl_changed(self, widget, value):
		print("/dev/dds1_ampl", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_ampl", int(value))
		self.sd_dds1_ampl.set_value(value)

	def sd_dds1_offset_changed(self, widget, value):
		print("/dev/dds1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_offset", int(value))
		self.sb_dds1_offset.set_value(value)

	def sb_dds1_offset_changed(self, widget, value):
		print("/dev/dds1_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_offset", int(value))
		self.sd_dds1_offset.set_value(value)

	def sd_dds1_phase_changed(self, widget, value):
		print("/dev/dds1_phase", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_phase", int(value))
		self.sb_dds1_phase.set_value(value)

	def sb_dds1_phase_changed(self, widget, value):
		print("/dev/dds1_phase", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds1_phase", int(value))
		self.sd_dds1_phase.set_value(value)

	def sd_dds2_ampl_changed(self, widget, value):
		print("/dev/dds2_ampl", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds2_ampl", int(value))
		self.sb_dds2_ampl.set_value(value)

	def sb_dds2_ampl_changed(self, widget, value):
		print("/dev/dds2_ampl", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds2_ampl", int(value))
		self.sd_dds2_ampl.set_value(value)

	def sd_dds2_offset_changed(self, widget, value):
		print("/dev/dds2_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds2_offset", int(value))
		self.sb_dds2_offset.set_value(value)

	def sb_dds2_offset_changed(self, widget, value):
		print("/dev/dds2_offset", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds2_offset", int(value))
		self.sd_dds2_offset.set_value(value)

	def sd_dds2_phase_changed(self, widget, value):
		print("/dev/dds2_phase", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds2_phase", int(value))
		self.sb_dds2_phase.set_value(value)

	def sb_dds2_phase_changed(self, widget, value):
		print("/dev/dds2_phase", int(value))
		liboscimp_fpga.add_const_set_offset("/dev/dds2_phase", int(value))
		self.sd_dds2_phase.set_value(value)

	def sd_dds1_nco_changed(self, widget, value):
		print("/dev/dds1_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds1_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		self.sb_dds1_nco.set_value(value)

	def sb_dds1_nco_changed(self, widget, value):
		print("/dev/dds1_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds1_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		self.sd_dds1_nco.set_value(value)

	def cb_dds1_nco_changed(self, widget, value):
		print("/dev/dds1_nco", 125000000, int(self.sb_dds1_nco.get_value()), 32, 0, int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds1_nco", 125000000, int(self.sb_dds1_nco.get_value()), 32, 0, int(self.cb_pinc_dds1_nco.get_value()), int(self.cb_poff_dds1_nco.get_value()))

	def sd_dds2_nco_changed(self, widget, value):
		print("/dev/dds2_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds2_nco.get_value()), int(self.cb_poff_dds2_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds2_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds2_nco.get_value()), int(self.cb_poff_dds2_nco.get_value()))
		self.sb_dds2_nco.set_value(value)

	def sb_dds2_nco_changed(self, widget, value):
		print("/dev/dds2_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds2_nco.get_value()), int(self.cb_poff_dds2_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds2_nco", 125000000, int(value), 32, 0, int(self.cb_pinc_dds2_nco.get_value()), int(self.cb_poff_dds2_nco.get_value()))
		self.sd_dds2_nco.set_value(value)

	def cb_dds2_nco_changed(self, widget, value):
		print("/dev/dds2_nco", 125000000, int(self.sb_dds2_nco.get_value()), 32, 0, int(self.cb_pinc_dds2_nco.get_value()), int(self.cb_poff_dds2_nco.get_value()))
		liboscimp_fpga.nco_counter_send_conf("/dev/dds2_nco", 125000000, int(self.sb_dds2_nco.get_value()), 32, 0, int(self.cb_pinc_dds2_nco.get_value()), int(self.cb_poff_dds2_nco.get_value()))

start(MyApp, address="0.0.0.0", port=80)
