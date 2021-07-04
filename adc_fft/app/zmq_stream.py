#!/usr/bin/env python2
# -*- coding: utf-8 -*-
##################################################
# GNU Radio Python Flow Graph
# Title: Zmq Stream
# Generated: Sun Oct 25 00:17:01 2020
##################################################

from distutils.version import StrictVersion

if __name__ == '__main__':
    import ctypes
    import sys
    if sys.platform.startswith('linux'):
        try:
            x11 = ctypes.cdll.LoadLibrary('libX11.so')
            x11.XInitThreads()
        except:
            print "Warning: failed to XInitThreads()"

from PyQt5 import Qt
from PyQt5 import Qt, QtCore
from gnuradio import blocks
from gnuradio import eng_notation
from gnuradio import gr
from gnuradio import qtgui
from gnuradio import zeromq
from gnuradio.eng_option import eng_option
from gnuradio.filter import firdes
from optparse import OptionParser
import sip
import sys
from gnuradio import qtgui


class zmq_stream(gr.top_block, Qt.QWidget):

    def __init__(self):
        gr.top_block.__init__(self, "Zmq Stream")
        Qt.QWidget.__init__(self)
        self.setWindowTitle("Zmq Stream")
        qtgui.util.check_set_qss()
        try:
            self.setWindowIcon(Qt.QIcon.fromTheme('gnuradio-grc'))
        except:
            pass
        self.top_scroll_layout = Qt.QVBoxLayout()
        self.setLayout(self.top_scroll_layout)
        self.top_scroll = Qt.QScrollArea()
        self.top_scroll.setFrameStyle(Qt.QFrame.NoFrame)
        self.top_scroll_layout.addWidget(self.top_scroll)
        self.top_scroll.setWidgetResizable(True)
        self.top_widget = Qt.QWidget()
        self.top_scroll.setWidget(self.top_widget)
        self.top_layout = Qt.QVBoxLayout(self.top_widget)
        self.top_grid_layout = Qt.QGridLayout()
        self.top_layout.addLayout(self.top_grid_layout)

        self.settings = Qt.QSettings("GNU Radio", "zmq_stream")
        self.restoreGeometry(self.settings.value("geometry", type=QtCore.QByteArray))


        ##################################################
        # Variables
        ##################################################
        self.samp_rate = samp_rate = 125e6

        ##################################################
        # Blocks
        ##################################################
        self.zeromq_sub_source_0_0 = zeromq.sub_source(gr.sizeof_short, 1, 'tcp://192.168.0.200:9902', 200, False, -1)
        self.zeromq_sub_source_0 = zeromq.sub_source(gr.sizeof_short, 1, 'tcp://192.168.0.200:9901', 200, False, -1)
        self.qtgui_sink_x_0_0 = qtgui.sink_c(
        	8192, #fftsize
        	firdes.WIN_BLACKMAN_hARRIS, #wintype
        	0, #fc
        	samp_rate, #bw
        	"", #name
        	True, #plotfreq
        	True, #plotwaterfall
        	True, #plottime
        	True, #plotconst
        )
        self.qtgui_sink_x_0_0.set_update_time(1.0/1)
        self._qtgui_sink_x_0_0_win = sip.wrapinstance(self.qtgui_sink_x_0_0.pyqwidget(), Qt.QWidget)
        self.top_grid_layout.addWidget(self._qtgui_sink_x_0_0_win, 1, 0, 1, 1)
        for r in range(1, 2):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(0, 1):
            self.top_grid_layout.setColumnStretch(c, 1)


        self.qtgui_sink_x_0_0.enable_rf_freq(False)



        self.qtgui_sink_x_0 = qtgui.sink_c(
        	8192, #fftsize
        	firdes.WIN_BLACKMAN_hARRIS, #wintype
        	0, #fc
        	samp_rate, #bw
        	"", #name
        	True, #plotfreq
        	True, #plotwaterfall
        	True, #plottime
        	True, #plotconst
        )
        self.qtgui_sink_x_0.set_update_time(1.0/1)
        self._qtgui_sink_x_0_win = sip.wrapinstance(self.qtgui_sink_x_0.pyqwidget(), Qt.QWidget)
        self.top_grid_layout.addWidget(self._qtgui_sink_x_0_win, 0, 0, 1, 1)
        for r in range(0, 1):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(0, 1):
            self.top_grid_layout.setColumnStretch(c, 1)


        self.qtgui_sink_x_0.enable_rf_freq(False)



        self.blocks_short_to_float_0_0 = blocks.short_to_float(1, 1)
        self.blocks_short_to_float_0 = blocks.short_to_float(1, 1)
        self.blocks_float_to_complex_0_0 = blocks.float_to_complex(1)
        self.blocks_float_to_complex_0 = blocks.float_to_complex(1)
        self.blocks_deinterleave_0_0 = blocks.deinterleave(gr.sizeof_float*1, 1)
        self.blocks_deinterleave_0 = blocks.deinterleave(gr.sizeof_float*1, 1)



        ##################################################
        # Connections
        ##################################################
        self.connect((self.blocks_deinterleave_0, 0), (self.blocks_float_to_complex_0, 0))
        self.connect((self.blocks_deinterleave_0, 1), (self.blocks_float_to_complex_0, 1))
        self.connect((self.blocks_deinterleave_0_0, 0), (self.blocks_float_to_complex_0_0, 0))
        self.connect((self.blocks_deinterleave_0_0, 1), (self.blocks_float_to_complex_0_0, 1))
        self.connect((self.blocks_float_to_complex_0, 0), (self.qtgui_sink_x_0, 0))
        self.connect((self.blocks_float_to_complex_0_0, 0), (self.qtgui_sink_x_0_0, 0))
        self.connect((self.blocks_short_to_float_0, 0), (self.blocks_deinterleave_0, 0))
        self.connect((self.blocks_short_to_float_0_0, 0), (self.blocks_deinterleave_0_0, 0))
        self.connect((self.zeromq_sub_source_0, 0), (self.blocks_short_to_float_0, 0))
        self.connect((self.zeromq_sub_source_0_0, 0), (self.blocks_short_to_float_0_0, 0))

    def closeEvent(self, event):
        self.settings = Qt.QSettings("GNU Radio", "zmq_stream")
        self.settings.setValue("geometry", self.saveGeometry())
        event.accept()

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.qtgui_sink_x_0_0.set_frequency_range(0, self.samp_rate)
        self.qtgui_sink_x_0.set_frequency_range(0, self.samp_rate)


def main(top_block_cls=zmq_stream, options=None):

    qapp = Qt.QApplication(sys.argv)

    tb = top_block_cls()
    tb.start()
    tb.show()

    def quitting():
        tb.stop()
        tb.wait()
    qapp.aboutToQuit.connect(quitting)
    qapp.exec_()


if __name__ == '__main__':
    main()
