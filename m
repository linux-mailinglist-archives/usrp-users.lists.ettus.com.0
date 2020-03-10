Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB4B1801A2
	for <lists+usrp-users@lfdr.de>; Tue, 10 Mar 2020 16:21:07 +0100 (CET)
Received: from [::1] (port=39248 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jBggs-0003e1-Mc; Tue, 10 Mar 2020 11:21:06 -0400
Received: from mout.gmx.net ([212.227.15.19]:56359)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jBggo-0003Xa-Cl
 for usrp-users@lists.ettus.com; Tue, 10 Mar 2020 11:21:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583853621;
 bh=GGdGRoXsjPsmYPwfkNTHtpbSezuk5NN/D6NSrF1Dq3I=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=j6jb0MVlEhJmhhusven2QBsGtzxdNAXA6aKJyNPvxSCd/oDRM8bsZ2gl0vmnb+Q6w
 T0QBXR5yRnzXcgrlG2MHT95uNGXPPmLHMPg0fgxQDmB07+l9ivwOnt9u8flAgbH2+i
 WYrzR3u+9iazG2rtLXeDCmrseC85tsr+vSS5vaMg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bs36.server.lan [172.19.170.88]) (via HTTP); Tue, 10 Mar 2020
 16:20:21 +0100
MIME-Version: 1.0
Message-ID: <trinity-a692669f-329e-4ac2-8f06-35e8ebfc989c-1583853621241@3c-app-gmx-bs36>
To: "USRP-userslists.ettus.com" <usrp-users@lists.ettus.com>
Date: Tue, 10 Mar 2020 16:20:21 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:eGzVlen7fsXcW3fIK3qMVMCEbPP2KMVcYPVI4j1hT1SLL3ySZC4qwUOujr33XCyjUnG0Z
 5+tfyJZxxurdmZMzv1MxK5f7QZjs7ASpsq78V2ChqG0my9NRuRni9c4+gcMif4dDj/inXCaKkKlV
 6/+3z4HQ5uanraPaAaT0kaGj/OMqDf3j2qDTt6Q4oOZbDNdLHlomIp0DpLOFoXcuKXVlg9qvRGBx
 agTtpqsZxmWsp/chmpqrhpddLgbugkwF40+ilVbFTSgTEOM/T8xGC1P+SvQ+pl8IpEnDBp4FBrsx
 cw=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gfXaN7hQZF0=:pAoRd3Pz7jT2Itauzv1QbU
 u4Irg/wCQgUZk63WejrsdJ/V70WAFP0DzwV1LH3OdAYmha3qcp9No4r0kqLkKU3cqXYWPd+5Z
 EYb7v8lRiVp9yL43wi1CiRJ8QZUnjK62OzLJePBzY18rh+dPg3Z3kBmCdBvwUIO1yp+iq0LPr
 u8OTZyniirOekpgToqSDlYau0lUpzRYae7YV09cbCgCSuA8TPU+nM1l9NkqvyVs991ibvgcDV
 Ki96+3i3H5G/z8EGe2ukib9QmEzHJDJ3kqh+YOnlZHZnV87BTIB7TvsE1nzL3SPqgwxdXfvy9
 h9NYISUxqjw7I82yadc0toT8V1UfeF6RXXGhCO3mEqKdSwHnp8/zBjse4MlpAQwZk1VURRfRl
 /ntga1Tx4F6ND5SkME4y1qt6h3sUzpYaGMdUGwT8vbo1j1Nv/cjgy+Acg4ZcJnGdpWsweY+Nb
 NRT/OFqUotmkX4GyV2Os2GqH5LD5SndunRB2JDWXufhUdf1/QX+7befBOvhkrbMmBDNS934xF
 wUufEC7q9mLBzoEGOGjjc6sLFFkljD+rF150lj3oyygqzw71GnkQwEasUAfFhqQbMFQiqdLlM
 aVjdZCu5OEUPG+Cdexq1Bo9UZ9ivVy3F0TCMk+BV0yZ6SknBVzOWI1wFVqK88bwCStSQVEFGt
 2guveYlMCrobNgqKwEMBkAoV21IrbOQiZfqOivMxT6mrGkYwToOGb7Vf37bH8jel/uzM=
Subject: [USRP-users] X310+UBX160 RX DSP tuning bug: First (or second) timed
 command ignored? Non-zero state after start?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Hi,

I am struggling with setting DSP freq of RX with timed command for over a week and I am just out of ideas.
It would be amazing if someone could try out my minimal testable gnuradio app below and confirm that there's an issue in the first place (and maybe any idea what the issue is)

Code below uses a loopback config with 30dB attenuation from RX/TX of first UBX160 to RX2 of second UBX160:
1. Creates a static signal generator with 901 MHz (fcenter=900MHz, fif=1MHz). Could be replaced with an external signal source (I have none)
2. Spectrum of RX2. A click on "Switch" toggles between fdsp=0 and fdsp=500e3 while keeping frf. A click shows which fdsp is selected and the tuning result in the console.
3. The toggling is performed with class "blk" using timed commands

Here is what happens:
1.) On first retune (to fdsp=-500e3), the frequency jumps to 0.5 MHz, as expected
2.) On the second retune (to fdsp=0), NOTHING happens!
3.) From then on, the frequency toggles on each click (but it's out of order because one command was dropped!)

Note that if I remove the timed command (remove set_command_time), everything works as expected.

It seems the first or second timed command for RX is always ignored.

There is even a more weird part: When I add a reset button which switches to fdsp=0, when I restart the flow graph, it may still jump to 0.5MHz, depending on the previous (!) run. It seems that the "state" of the USRP somehow holds a state of a previous run which is not properly reset.


Any help or guidance would be greatly appreciated!

Best,
Lukas

PS: uhd v3.15.0.0, gnuradio v3.7.14.0

Code is here https://paste.ubuntu.com/p/RtK6PFs4nW/ but to be self-contained it's also below:

#!/usr/bin/env python2
# -*- coding: utf-8 -*-

if __name__ == '__main__':
    import ctypes
    import sys
    if sys.platform.startswith('linux'):
        try:
            x11 = ctypes.cdll.LoadLibrary('libX11.so')
            x11.XInitThreads()
        except:
            print "Warning: failed to XInitThreads()"

from PyQt4 import Qt
from gnuradio import analog
from gnuradio import eng_notation
from gnuradio import gr
from gnuradio import qtgui
from gnuradio import uhd
from gnuradio.eng_option import eng_option
from gnuradio.filter import firdes
from optparse import OptionParser
import sip
import sys
import threading
import time
from gnuradio import qtgui

import numpy as np
from gnuradio import gr
from gnuradio import uhd

class blk(gr.sync_block):
    def __init__(self):
        gr.sync_block.__init__(self, name='Buttons Callback', in_sig=None, out_sig=None)

        self.last_state1 = False
        self.dsp_freqs = [ 500e3, 0 ]
        self.last_freq1 = 0

    def buttons_callback(self, state1, usrp_source, usrp_sink):
        if state1 is not self.last_state1 and state1 == True:
            self.button_rx_handler(usrp_source, usrp_sink)
        self.last_state1 = state1

    def button_rx_handler(self, usrp_source, usrp_sink):
        dsp_freq = self.dsp_freqs[self.last_freq1]
        self.last_freq1 = (self.last_freq1 + 1) % len(self.dsp_freqs)
        print("Clicked 2: Switching RX fdsp=" + str(dsp_freq))
        tune_req_rx = uhd.tune_request()
        tune_req_rx.rf_freq_policy = uhd.tune_request.POLICY_NONE
        tune_req_rx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
        tune_req_rx.dsp_freq = -dsp_freq
        now = usrp_source.get_time_now()
        usrp_source.set_command_time(now + uhd.time_spec(1))
        res1 = usrp_source.set_center_freq(  tune_req_rx)
        usrp_source.clear_command_time()
        print res1

    def work(self, input_items, output_items):
        output_items[0][:] = input_items[0]
        return len(output_items[0])



class switch_on_click_debug_rx_retune(gr.top_block, Qt.QWidget):

    def __init__(self):
        gr.top_block.__init__(self, "Switch On Click Debug Rx Retune")
        Qt.QWidget.__init__(self)
        self.setWindowTitle("Switch On Click Debug Rx Retune")
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

        self.settings = Qt.QSettings("GNU Radio", "switch_on_click_debug_rx_retune")
        self.restoreGeometry(self.settings.value("geometry").toByteArray())


        ##################################################
        # Variables
        ##################################################
        self.variable_qtgui_push_button_0 = variable_qtgui_push_button_0 = False
        self.variable_function_probe_1_0 = variable_function_probe_1_0 = 0
        self.samp_rate = samp_rate = 5e6

        ##################################################
        # Blocks
        ##################################################
        _variable_qtgui_push_button_0_push_button = Qt.QPushButton('Switch')
        self._variable_qtgui_push_button_0_choices = {'Pressed': True, 'Released': False}
        _variable_qtgui_push_button_0_push_button.pressed.connect(lambda: self.set_variable_qtgui_push_button_0(self._variable_qtgui_push_button_0_choices['Pressed']))
        _variable_qtgui_push_button_0_push_button.released.connect(lambda: self.set_variable_qtgui_push_button_0(self._variable_qtgui_push_button_0_choices['Released']))
        self.top_grid_layout.addWidget(_variable_qtgui_push_button_0_push_button)
        self.uhd_usrp_source_0 = uhd.usrp_source(
                ",".join(("", "dboard_clock_rate=20e6")),
                uhd.stream_args(
                        cpu_format="fc32",
                        channels=range(1),
                ),
        )

        self.uhd_usrp_source_0.set_clock_rate(200e6, uhd.ALL_MBOARDS)
        self.uhd_usrp_source_0.set_clock_source('internal', 0)
        self.uhd_usrp_source_0.set_subdev_spec('B:0', 0)
        self.uhd_usrp_source_0.set_samp_rate(samp_rate)
        self.uhd_usrp_source_0.set_time_unknown_pps(uhd.time_spec())
        self.uhd_usrp_source_0.set_center_freq(900e6, 0)
        self.uhd_usrp_source_0.set_gain(0, 0)
        self.uhd_usrp_source_0.set_antenna('RX2', 0)
        self.uhd_usrp_source_0.set_auto_dc_offset(True, 0)
        self.uhd_usrp_source_0.set_auto_iq_balance(True, 0)
        self.uhd_usrp_sink_0 = uhd.usrp_sink(
                ",".join(("", "dboard_clock_rate=20e6")),
                uhd.stream_args(
                        cpu_format="fc32",
                        channels=range(1),
                ),
        )
        self.uhd_usrp_sink_0.set_clock_rate(200e6, uhd.ALL_MBOARDS)
        self.uhd_usrp_sink_0.set_clock_source('internal', 0)
        self.uhd_usrp_sink_0.set_subdev_spec('A:0', 0)
        self.uhd_usrp_sink_0.set_samp_rate(samp_rate)
        self.uhd_usrp_sink_0.set_time_unknown_pps(uhd.time_spec())
        self.uhd_usrp_sink_0.set_center_freq(900e6, 0)
        self.uhd_usrp_sink_0.set_gain(0, 0)
        self.uhd_usrp_sink_0.set_antenna('TX/RX', 0)
        self.epy_block_1 = blk()

        def _variable_function_probe_1_0_probe():
            while True:
                val = self.epy_block_1.buttons_callback(self.variable_qtgui_push_button_0, self.uhd_usrp_source_0, self.uhd_usrp_sink_0)
                try:
                    self.set_variable_function_probe_1_0(val)
                except AttributeError:
                    pass
                time.sleep(1.0 / (10))
        _variable_function_probe_1_0_thread = threading.Thread(target=_variable_function_probe_1_0_probe)
        _variable_function_probe_1_0_thread.daemon = True
        _variable_function_probe_1_0_thread.start()

        self.qtgui_freq_sink_x_0 = qtgui.freq_sink_c(
                1024, #size
                firdes.WIN_BLACKMAN_hARRIS, #wintype
                0, #fc
                samp_rate, #bw
                "", #name
                1 #number of inputs
        )
        self.qtgui_freq_sink_x_0.set_update_time(0.10)
        self.qtgui_freq_sink_x_0.set_y_axis(-140, 10)
        self.qtgui_freq_sink_x_0.set_y_label('Relative Gain', 'dB')
        self.qtgui_freq_sink_x_0.set_trigger_mode(qtgui.TRIG_MODE_FREE, 0.0, 0, "")
        self.qtgui_freq_sink_x_0.enable_autoscale(True)
        self.qtgui_freq_sink_x_0.enable_grid(True)
        self.qtgui_freq_sink_x_0.set_fft_average(1.0)
        self.qtgui_freq_sink_x_0.enable_axis_labels(True)
        self.qtgui_freq_sink_x_0.enable_control_panel(True)

        if not True:
          self.qtgui_freq_sink_x_0.disable_legend()

        if "complex" == "float" or "complex" == "msg_float":
          self.qtgui_freq_sink_x_0.set_plot_pos_half(not True)

        labels = ['', '', '', '', '',
                  '', '', '', '', '']
        widths = [1, 1, 1, 1, 1,
                  1, 1, 1, 1, 1]
        colors = ["blue", "red", "green", "black", "cyan",
                  "magenta", "yellow", "dark red", "dark green", "dark blue"]
        alphas = [1.0, 1.0, 1.0, 1.0, 1.0,
                  1.0, 1.0, 1.0, 1.0, 1.0]
        for i in xrange(1):
            if len(labels[i]) == 0:
                self.qtgui_freq_sink_x_0.set_line_label(i, "Data {0}".format(i))
            else:
                self.qtgui_freq_sink_x_0.set_line_label(i, labels[i])
            self.qtgui_freq_sink_x_0.set_line_width(i, widths[i])
            self.qtgui_freq_sink_x_0.set_line_color(i, colors[i])
            self.qtgui_freq_sink_x_0.set_line_alpha(i, alphas[i])

        self._qtgui_freq_sink_x_0_win = sip.wrapinstance(self.qtgui_freq_sink_x_0.pyqwidget(), Qt.QWidget)
        self.top_grid_layout.addWidget(self._qtgui_freq_sink_x_0_win)
        self.analog_sig_source_x_1 = analog.sig_source_c(samp_rate, analog.GR_COS_WAVE, 1e6, 1, 0)

        ##################################################
        # Connections
        ##################################################
        self.connect((self.analog_sig_source_x_1, 0), (self.uhd_usrp_sink_0, 0))
        self.connect((self.uhd_usrp_source_0, 0), (self.qtgui_freq_sink_x_0, 0))

    def closeEvent(self, event):
        self.settings = Qt.QSettings("GNU Radio", "switch_on_click_debug_rx_retune")
        self.settings.setValue("geometry", self.saveGeometry())
        event.accept()

    def get_variable_qtgui_push_button_0(self):
        return self.variable_qtgui_push_button_0

    def set_variable_qtgui_push_button_0(self, variable_qtgui_push_button_0):
        self.variable_qtgui_push_button_0 = variable_qtgui_push_button_0

def main(top_block_cls=switch_on_click_debug_rx_retune, options=None):

    from distutils.version import StrictVersion
    if StrictVersion(Qt.qVersion()) >= StrictVersion("4.5.0"):
        style = gr.prefs().get_string('qtgui', 'style', 'raster')
        Qt.QApplication.setGraphicsSystem(style)
    qapp = Qt.QApplication(sys.argv)

    tb = top_block_cls()
    tb.start()
    tb.show()

    def quitting():
        tb.stop()
        tb.wait()
    qapp.connect(qapp, Qt.SIGNAL("aboutToQuit()"), quitting)
    qapp.exec_()

if __name__ == '__main__':
    main()




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
