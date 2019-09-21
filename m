Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F191DB9F80
	for <lists+usrp-users@lfdr.de>; Sat, 21 Sep 2019 21:06:11 +0200 (CEST)
Received: from [::1] (port=43084 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iBkhp-0003ol-Bi; Sat, 21 Sep 2019 15:06:05 -0400
Received: from sonic314-19.consmr.mail.bf2.yahoo.com ([74.6.132.193]:37424)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1iBkhl-0003ih-8a
 for usrp-users@lists.ettus.com; Sat, 21 Sep 2019 15:06:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1569092720; bh=oUrexbVvkmmehKnkUByI1gCl7B4Y9ZsA9Id49RnZr3M=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From:Subject;
 b=J39oJ/LhJC/+I6Oz2Dub1V47qkpFagd1IO/JLMBH6/zY1/7NMeZcrLWABzK92GDRSdjCPSdwk3maG5z1MjFyfentVXO+aVaZ4bmcvudbStPlQk3fGJRxZrc29rSfFrMLXI7IKZfzJEQAtRUmYjITEjZfslzBhP37a8z/mfDC27wWZ7pjnhDbkLtFkRdXe9g7BntjnKZ6F+vx82Cj6yq3t6vPFWItXi3jOCnRot9hSsFpWQCI8EcppLhX7XjZ5FRG36uLFFExzi3Uauv8+46Q/cC7JgXR/MDhaslClSt5JjvYTD7Hv7LTafoZ4CMek0qBPnQR7RGcN/rh9wUtwYJyeA==
X-YMail-OSG: QQDxgWIVM1kYAiSvW_s7UmI4toYaeqtFFMGiWpE_jwaVDf6hQ7ggBtoTMYoFo73
 lYxjWZZHEsI4_.tqTQboR5ooLgBZte4l4_99hiabFoIJlGnHsy124ESIyzJnqqtJqflLT99l2nl2
 Pic_fvKWgMxyMUEbnyG3k4ydQhdL05Fb3BELg9S8M91xpSQiTx3aNedexlwyBrG3lGFTRJxXP_LQ
 3mVRI8F4N9z2UOTT0W41jdCahZ1VWicEfRjiKPdCQwBgho.xKxeB9YwoKAQwK5YOwBN5zP4jrSN9
 fqC3Y5LC2A.jUltkJs9Jfv7KZmUSZEkjZbx8ofX8HwRF3HXzyhheXMTgclCXm1BfZ0LpLbXLOr1V
 2dDCgbS8_qgUSdzUquzkg1hqVHQ320kzH_5xGreexzxYNyT8_kUBUYV66eL_cJTGuzrRRmfyR4T4
 i2ldGR0DvKQOkEEsGSEes2AV8xcCTLxSqHk9LyX9nFnU0PGxAgyeANaoByqTuzMvkw0XZ6Q419wE
 GSY_vHJGg9fYK_X.kAq0GNQn1.qWXarB7yBw01FE3HBP.aq7vrJrdpwr2dnYiqlZX0ztuF_c7PyT
 HuCOeRG0nR9d0.V5cc_M0BV7bimYs7oUTA.8YItu3Zy._cK3Li9nxWv5LF7XbpsjqQdzJeIMZnv0
 QpFAoyMWSsKbKDkVV5hyWHKrITuwgrfebzwVDgvkvClYDKKSNg2bG7tI5iPl_1QrhZKAxIh15N6A
 2IPY.mQeBDMxEqaP.lhI04xS9tonDyoe4FxtaxtEjIIK1saQdmNYzjg4Fb1ZGXxSspO5I0ykZ4Jz
 cGv8mZFCf6IJTamejZjHYKMn_QiPIIaY5jL1IhhH7U0As6YdQsEBMnNkiCdcqr4jzvbpgZ4K91OT
 MCCJpcrwotzwjE7SpxYF_qgyOlTuwvu9Boy6R3vPRW1fPg4X5LhJZGiR2g_bLSK5v1AmoVPqPCtD
 XYTo7EHU9UDGyabwj_EgubwYeWDGt4CPs7fDQvOiEpx6BqgJUDplJQmKDU1kcKiUxxV.RGugeN4u
 bOCKBd6HiqSOpR7a1S91mLatFxXeQD3M47CZZnFeDUztH.gPtrS_vOsTuSLnnj11un.XT.7Ii.It
 3YiDRzazprigeks8zR4SSXIkAaiZrc3pq3MYLKTqJo0hFG8HsRFELanE9dexDn_7XyJtcPcBfdRk
 2Y9tqjGmU.2mgJlvsr6FbT0Gaz8p9kRwP4l0st9NRFLz4UCMaPICxK9fDF2E7bCH36IY5c53rbFQ
 QX6BzTJZAGhALDl.or7pXdNTD7pYgHNTVhAAwIxOgqc6jzbTdo9ronJ68LDvM1ddEO6qLh62Uhf8
 fYC4GtTKsA.oWHTUzxXgOpl6tMip6sjBOzt8AiXcHoIz.QBlhFoAnKffkdEqOHG8-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.bf2.yahoo.com with HTTP; Sat, 21 Sep 2019 19:05:20 +0000
Received: by smtp404.mail.ne1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 71a9fb222b670c89edd73283a9f6cb4d; 
 Sat, 21 Sep 2019 19:05:15 +0000 (UTC)
Message-ID: <733f09a997f96f0378d6c90d04dc516e865934ce.camel@sbcglobal.net>
To: Nick Foster <bistromath@gmail.com>
Date: Sat, 21 Sep 2019 19:05:13 +0000
In-Reply-To: <347790affd1a2263fd09fe55a2205714c1457481.camel@sbcglobal.net>
References: <a39ce184e0fd70ed16f5fce920af81f514a4392d.camel.ref@sbcglobal.net>
 <a39ce184e0fd70ed16f5fce920af81f514a4392d.camel@sbcglobal.net>
 <CA+JMMq_PWfCwHKYbuVNUBSkLStLJsHr2TuV7aEEatFO1Mp3mPQ@mail.gmail.com>
 <347790affd1a2263fd09fe55a2205714c1457481.camel@sbcglobal.net>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-Mailer: WebService/1.1.14303 hermes Apache-HttpAsyncClient/4.1.4
 (Java/1.8.0_181)
Subject: Re: [USRP-users] Addsub HLS Block Error -- this time with script
 and log -- ignore last email
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
Cc: etus list <usrp-users@lists.ettus.com>
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

I've been a little embarassed at still not getting this so spent quite
a bit of time trying to figure it out before replying -- with no luck.
At this point you've provided everying except the gnuradio script so
maybe that last piece will fix it. Here is my script and my output. I'm
putting the add block between the radio and the ddc but changing the
order didn't help. For reference I'm also attaching the script and
results for the add/sub block, which works as expected.

The error at the end:
[TRACE] [RFNOC] radio_ctrl_impl::issue_stream_cmd() called on inactive
channel. Skipping.
probably means something

I've tried bypassing the ddc just to see what would happen (even though
I knew that even the lowest the rate isn't sustainable) but that gave
other streaming errors. I've also tried fifos in various places and
even manually starting the stream as is required for the rfnoc siggen
but had no luck.

If you're able to reply and I get it worked out I'll post an abridged
version to the list for the other slow students but I wanted to include
the detailed log and that would make a pretty big post.


Thanks for the help so far!!,
Dave


---------------------------------------------------------------------
--------------------------------------
-----------------------------------add: 2 ports in 1 port out--------
--------------------------------------
--------------------------------------------gnuradio script----------
--------------------------------------
#!/usr/bin/env python2
# -*- coding: utf-8 -*-
##################################################
# GNU Radio Python Flow Graph
# Title: Nick Add Usrp
# GNU Radio version: 3.7.13.5
##################################################

from gnuradio import eng_notation
from gnuradio import gr
from gnuradio import uhd
from gnuradio import zeromq
from gnuradio.eng_option import eng_option
from gnuradio.filter import firdes
from optparse import OptionParser
import SimpleXMLRPCServer
import ettus
import threading


class nick_add_usrp(gr.top_block):

    def __init__(self):
        gr.top_block.__init__(self, "Nick Add Usrp")

        ##################################################
        # Variables
        ##################################################
        self.device3 = variable_uhd_device3_0 =
ettus.device3(uhd.device_addr_t( ",".join(('type=e3x0',
"fpga=/home/root/localinstall/images/add_addsub_ddc.bit")) ))
        self.output_rate = output_rate = .5e6
        self.ip_addr = ip_addr = "10.1.2.9"
        self.gain = gain = 76
        self.freq = freq = 915
        self.enable = enable = False
        self.clock_rate = clock_rate = 4

        ##################################################
        # Blocks
        ##################################################
        self.zeromq_push_sink_0 =
zeromq.push_sink(gr.sizeof_gr_complex, 1, 'tcp://*:4000', 10000, True,
-1)
        self.xmlrpc_server_0 =
SimpleXMLRPCServer.SimpleXMLRPCServer(('0.0.0.0', 8080),
allow_none=True)
        self.xmlrpc_server_0.register_instance(self)
        self.xmlrpc_server_0_thread =
threading.Thread(target=self.xmlrpc_server_0.serve_forever)
        self.xmlrpc_server_0_thread.daemon = True
        self.xmlrpc_server_0_thread.start()
        self.uhd_rfnoc_streamer_radio_0 = ettus.rfnoc_radio(
            self.device3,
            uhd.stream_args( # Tx Stream Args
                cpu_format="fc32",
                otw_format="sc16",
                args="", # empty
            ),
            uhd.stream_args( # Rx Stream Args
                cpu_format="fc32",
                otw_format="sc16",
          args='',
            ),
            0, -1
        )
        self.uhd_rfnoc_streamer_radio_0.set_rate(clock_rate*1e6)

        self.uhd_rfnoc_streamer_radio_0.set_rx_freq(freq, 0)
        self.uhd_rfnoc_streamer_radio_0.set_rx_gain(gain, 0)
        self.uhd_rfnoc_streamer_radio_0.set_rx_dc_offset(True, 0)

        self.uhd_rfnoc_streamer_radio_0.set_rx_freq(freq*1e6, 1)
        self.uhd_rfnoc_streamer_radio_0.set_rx_gain(gain, 1)
        self.uhd_rfnoc_streamer_radio_0.set_rx_dc_offset(True, 1)

        self.uhd_rfnoc_streamer_radio_0.set_rx_bandwidth(clock_rate*1e6
, 0)
        self.uhd_rfnoc_streamer_radio_0.set_rx_bandwidth(clock_rate*1e6
, 1)

        if "TX/RX":
            self.uhd_rfnoc_streamer_radio_0.set_rx_antenna("TX/RX", 0)
        if "TX/RX":
            self.uhd_rfnoc_streamer_radio_0.set_rx_antenna("TX/RX", 1)


        self.uhd_rfnoc_streamer_radio_0.set_clock_source("internal")
        self.uhd_rfnoc_streamer_ddc_1 = ettus.rfnoc_generic(
            self.device3,
            uhd.stream_args( # TX Stream Args
                cpu_format="fc32", # TODO: This must be made an option
                otw_format="sc16",
                channels=range(1),
                args="input_rate={},output_rate={},fullscale={},freq={}
,gr_vlen={},{}".format(clock_rate*1e6, output_rate, 1.0, 0.0, 1, "" if
1 == 1 else "spp={}".format(1)),
            ),
            uhd.stream_args( # RX Stream Args
                cpu_format="fc32", # TODO: This must be made an option
                otw_format="sc16",
                channels=range(1),
                args="gr_vlen={},{}".format(1, "" if 1 == 1 else
"spp={}".format(1)),
            ),
            "DDC", -1, -1,
        )
        for chan in xrange(1):
            self.uhd_rfnoc_streamer_ddc_1.set_arg("input_rate",
float(clock_rate*1e6), chan)
            self.uhd_rfnoc_streamer_ddc_1.set_arg("output_rate",
float(output_rate), chan)
            self.uhd_rfnoc_streamer_ddc_1.set_arg("fullscale", 1.0,
chan)
            self.uhd_rfnoc_streamer_ddc_1.set_arg("freq", 0.0, chan)
        self.skippy_streamer_adder_0 = ettus.rfnoc_generic(
            self.device3,
            uhd.stream_args( # TX Stream Args
                cpu_format="fc32",
                otw_format="sc16",
                args="",
            ),
            uhd.stream_args( # RX Stream Args
                cpu_format="fc32",
                otw_format="sc16",
                args="align=1",
            ),
            "Add", -1, -1,
        )



        ##################################################
        # Connections
        ##################################################
        self.connect((self.uhd_rfnoc_streamer_ddc_1, 0),
(self.zeromq_push_sink_0, 0))
        self.device3.connect(self.skippy_streamer_adder_0.get_block_id(
), 0, self.uhd_rfnoc_streamer_ddc_1.get_block_id(), 0)
        self.device3.connect(self.uhd_rfnoc_streamer_radio_0.get_block_
id(), 0, self.skippy_streamer_adder_0.get_block_id(), 0)
        self.device3.connect(self.uhd_rfnoc_streamer_radio_0.get_block_
id(), 1, self.skippy_streamer_adder_0.get_block_id(), 1)

    def get_variable_uhd_device3_0(self):
        return self.variable_uhd_device3_0

    def set_variable_uhd_device3_0(self, variable_uhd_device3_0):
        self.variable_uhd_device3_0 = variable_uhd_device3_0

    def get_output_rate(self):
        return self.output_rate

    def set_output_rate(self, output_rate):
        self.output_rate = output_rate
        for i in xrange(1):
            self.uhd_rfnoc_streamer_ddc_1.set_arg("output_rate",
float(self.output_rate), i)

    def get_ip_addr(self):
        return self.ip_addr

    def set_ip_addr(self, ip_addr):
        self.ip_addr = ip_addr

    def get_gain(self):
        return self.gain

    def set_gain(self, gain):
        self.gain = gain

        self.uhd_rfnoc_streamer_radio_0.set_rx_gain(self.gain, 0)
        self.uhd_rfnoc_streamer_radio_0.set_rx_gain(self.gain, 1)

    def get_freq(self):
        return self.freq

    def set_freq(self, freq):
        self.freq = freq

        self.uhd_rfnoc_streamer_radio_0.set_rx_freq(self.freq, 0)
        self.uhd_rfnoc_streamer_radio_0.set_rx_freq(self.freq*1e6, 1)

    def get_enable(self):
        return self.enable

    def set_enable(self, enable):
        self.enable = enable

    def get_clock_rate(self):
        return self.clock_rate

    def set_clock_rate(self, clock_rate):
        self.clock_rate = clock_rate
        self.uhd_rfnoc_streamer_radio_0.set_rate(self.clock_rate*1e6)
        for i in xrange(1):
            self.uhd_rfnoc_streamer_ddc_1.set_arg("input_rate",
float(self.clock_rate*1e6), i)

---------------------------------------------------------------------
--------------------------------------
-----------------------------------add: 2 ports in 1 port out--------
--------------------------------------
----------------------------------------------output-------------------
------------------------------------

def main(top_block_cls=nick_add_usrp, options=None):

    tb = top_block_cls()
    tb.start()
    try:
        raw_input('Press Enter to quit: ')
    except EOFError:
        pass
    tb.stop()
    tb.wait()


if __name__ == '__main__':
    main()


root@ettus-e3xx-sg1:~/localinstall# ./nick_add_usrp.py 
[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;
UHD_3.14.1.HEAD-0-gbfb9c1c7
[TRACE] [UDP] Creating udp transport for 10.1.255.255 21761
[TRACE] [UDP] Creating udp transport for 10.1.255.255 21761
[TRACE] [UHD] Device hash: 1154030666
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
[DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
[DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
[DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf
[DEBUG] [E300] e300_make with args Device Address:
    type: e3x0
    node: /dev/axi_fpga
    name: 
    serial: 309FB1CF
    product: E3XX SG1
    fpga: /home/root/localinstall/images/add_addsub_ddc.bit

[INFO] [E300] Loading FPGA image:
/home/root/localinstall/images/add_addsub_ddc.bit...
[INFO] [E300] FPGA image loaded
[TRACE] [AD936X] [ad9361_device_t::_setup_rates] rate=5e+07

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] divfactor=12

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco]
rate=600000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] vcodiv=2
vcorate=1200000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] (nint)=30.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] (nfrac)=0.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] nint=30 nfrac=0

[TRACE] [AD936X] [ad9361_device_t::_setup_rates]
adcclk=600000000.000000

[INFO] [E300] Detecting internal GPS 
.... [INFO] [E300] GPSDO found
[INFO] [E300] Initializing core control (global registers)...

[INFO] [E300] Performing register loopback test... 
[INFO] [E300] Register loopback test passed
[DEBUG] [E300] Initializing AD9361 using hard SPI core...
[TRACE] [AD936X] [ad9361_device_t::set_clock_rate]
req_rate=50000000.0000000000

[DEBUG] [E300] OK

[DEBUG] [E300] [E300] Setting up dest map for host ep 32 to be stream 0

[DEBUG] [DEVICE3] Port 0x10: Found NoC-Block with ID 12AD100000000000.
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/radio_e3xx.xml for
NOC ID 0x12AD100000000000
[DEBUG] [E300] [E300] Setting up dest map for host ep 33 to be stream 1

[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/radio_e3xx.xml for
NOC ID 0x12AD100000000000
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'E3XXRadio' and
block name 'Radio'
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/radio_e3xx.xml for
NOC ID 0x12AD100000000000
[INFO] [0/Radio_0] Initializing block control (NOC ID:
0x12AD100000000000)
[DEBUG] [0/Radio_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/in/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/in/1:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/out/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/out/1:
type = 'sc16' pkt_size = '0' vlen = '0'
[DEBUG] [0/Radio_0] Register loopback test passed
[DEBUG] [0/Radio_0] Register loopback test passed
[TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Requested spp: 508
[TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Setting spp to: 508
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::ctor() 

[DEBUG] [E300] Setting time source to internal

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[TRACE] [RFNOC]   Creating internal GPIOs...

[TRACE] [RFNOC]   Setting tick rate...

[DEBUG] [E300] [E300] Setting up dest map for host ep 34 to be stream 2

[DEBUG] [DEVICE3] Port 0x20: Found NoC-Block with ID ADD1000000000000.
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/nickadd.xml for NOC
ID 0xADD1000000000000
[DEBUG] [E300] [E300] Setting up dest map for host ep 35 to be stream 3

[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/nickadd.xml for NOC
ID 0xADD1000000000000
[WARNING] [RFNOC] Can't find a block controller for key Add, using
default block controller!
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'Block' and block
name 'Add'
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/nickadd.xml for NOC
ID 0xADD1000000000000
[INFO] [0/Add_0] Initializing block control (NOC ID:
0xADD1000000000000)
[DEBUG] [0/Add_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[TRACE] [0/Add_0] Adding port definition at xbar/Add_0/ports/in/0: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Add_0] Adding port definition at xbar/Add_0/ports/in/1: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Add_0] Adding port definition at xbar/Add_0/ports/out/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[DEBUG] [E300] [E300] Setting up dest map for host ep 36 to be stream 4

[DEBUG] [DEVICE3] Port 0x30: Found NoC-Block with ID ADD0000000000000.
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/addsub.xml for NOC
ID 0xADD0000000000000
[DEBUG] [E300] [E300] Setting up dest map for host ep 37 to be stream 5

[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/addsub.xml for NOC
ID 0xADD0000000000000
[WARNING] [RFNOC] Can't find a block controller for key AddSub, using
default block controller!
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'Block' and block
name 'AddSub'
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/addsub.xml for NOC
ID 0xADD0000000000000
[INFO] [0/AddSub_0] Initializing block control (NOC ID:
0xADD0000000000000)
[DEBUG] [0/AddSub_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[TRACE] [0/AddSub_0] Adding port definition at
xbar/AddSub_0/ports/in/0: type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/AddSub_0] Adding port definition at
xbar/AddSub_0/ports/in/1: type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/AddSub_0] Adding port definition at
xbar/AddSub_0/ports/out/0: type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/AddSub_0] Adding port definition at
xbar/AddSub_0/ports/out/1: type = 'sc16' pkt_size = '0' vlen = '0'
[DEBUG] [E300] [E300] Setting up dest map for host ep 38 to be stream 6

[DEBUG] [DEVICE3] Port 0x40: Found NoC-Block with ID DDC0000000000000.
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/ddc.xml for NOC ID
0xDDC0000000000000
[DEBUG] [E300] [E300] Setting up dest map for host ep 39 to be stream 7

[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/ddc.xml for NOC ID
0xDDC0000000000000
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'DDC' and block
name 'DDC'
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/ddc.xml for NOC ID
0xDDC0000000000000
[INFO] [0/DDC_0] Initializing block control (NOC ID:
0xDDC0000000000000)
[DEBUG] [0/DDC_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/in/0: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/in/1: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/out/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/out/1:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[DEBUG] [0/DDC_0] Loading DDC with 3 halfbands and max CIC decimation
255
[DEBUG] [DDC] Checking compat number for FPGA component `DDC':
Expecting 2.0, actual: 2.0.
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[DEBUG] [E300] Initializing Radio Block...

[DEBUG] [AD936X] Performing CODEC loopback test... 
[DEBUG] [AD936X] CODEC loopback test passed.
[DEBUG] [AD936X] Performing CODEC loopback test... 
[DEBUG] [AD936X] CODEC loopback test passed.
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() 

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[DEBUG] [E300] Asking for clock rate 16 MHz

[TRACE] [AD936X] [ad9361_device_t::set_clock_rate]
req_rate=16000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] rate=1.6e+07

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] divfactor=16

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco]
rate=256000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] vcodiv=4
vcorate=1024000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] (nint)=25.6000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco]
(nfrac)=1253376.0000000030

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] nint=25 nfrac=1253376

[TRACE] [AD936X] [ad9361_device_t::_setup_rates]
adcclk=256000000.000000

[TRACE] [AD936X] [ad9361_device_t::set_clock_rate]
rate=16000000.0000000000

[DEBUG] [E300] Actually got clock rate 16 MHz

[DEBUG] [CORES] Performing timer loopback test... 
[DEBUG] [CORES] Timer loopback test passed.
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() 

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[DEBUG] [E300] end of e300_impl()

[TRACE] [DEVICE3] Creating async message handler for graph `GNU
Radio'...
[DEBUG] [E300] [E300] Setting up dest map for host ep 40 to be stream 8

[TRACE] [DEVICE3]  Async transport ready.

[TRACE] [DEVICE3] Async message has address 0.40>2.0

[TRACE] [DEVICE3] Creating graph `GNU Radio'...

[DEBUG] [E300] Asking for clock rate 4 MHz

[TRACE] [AD936X] [ad9361_device_t::set_clock_rate]
req_rate=4000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] rate=4e+06

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] divfactor=16

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco]
rate=64000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] vcodiv=16
vcorate=1024000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] (nint)=25.6000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco]
(nfrac)=1253376.0000000030

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] nint=25 nfrac=1253376

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] adcclk=64000000.000000

[TRACE] [AD936X] [ad9361_device_t::set_clock_rate]
rate=4000000.0000000000

[DEBUG] [E300] Actually got clock rate 4 MHz

[DEBUG] [CORES] Performing timer loopback test... 
[DEBUG] [CORES] Timer loopback test passed.
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() 

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[TRACE] [RFNOC] [GNU Radio] Attempting to connect 0/AddSub_0:0 -->
0/DDC_0:0
[TRACE] [RFNOC] [GNU Radio] Connecting 0/AddSub_0:0 --> 0/DDC_0:0
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 2.48>2.64
[TRACE] [RFNOC]   Setting SID: 2.48>2.64  
[WARNING] [RFNOC] Assuming max packet size for 0/AddSub_0
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==16384
[TRACE] [RFNOC]
sink_block_ctrl_base::configure_flow_control_in(bytes=2048)
[TRACE] [RFNOC] [GNU Radio] Attempting to connect 0/AddSub_0:1 -->
0/DDC_0:1
[TRACE] [RFNOC] [GNU Radio] Connecting 0/AddSub_0:1 --> 0/DDC_0:1
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 2.49>2.65
[TRACE] [RFNOC]   Setting SID: 2.49>2.65  
[WARNING] [RFNOC] Assuming max packet size for 0/AddSub_0
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==16384
[TRACE] [RFNOC]
sink_block_ctrl_base::configure_flow_control_in(bytes=2048)
[TRACE] [RFNOC] [GNU Radio] Attempting to connect 0/Radio_0:0 -->
0/AddSub_0:0
[TRACE] [RFNOC] [GNU Radio] Connecting 0/Radio_0:0 --> 0/AddSub_0:0
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 2.16>2.48
[TRACE] [RFNOC]   Setting SID: 2.16>2.48  
[WARNING] [RFNOC] Assuming max packet size for 0/Radio_0
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==16384
[TRACE] [RFNOC]
sink_block_ctrl_base::configure_flow_control_in(bytes=2048)
[TRACE] [RFNOC] [GNU Radio] Attempting to connect 0/Radio_0:1 -->
0/AddSub_0:1
[TRACE] [RFNOC] [GNU Radio] Connecting 0/Radio_0:1 --> 0/AddSub_0:1
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 2.17>2.49
[TRACE] [RFNOC]   Setting SID: 2.17>2.49  
[WARNING] [RFNOC] Assuming max packet size for 0/Radio_0
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==16384
[TRACE] [RFNOC]
sink_block_ctrl_base::configure_flow_control_in(bytes=2048)
[TRACE] [STREAMER] chan 0 connecting to 0/DDC_0
[TRACE] [STREAMER] Maximum MTU supported by 0/DDC_0: 8192
[TRACE] [STREAMER] Maximum MTU supported by 0/AddSub_0: 8192
[TRACE] [STREAMER] creating rx stream max_recv_window=32,mtu=4096
[DEBUG] [E300] [E300] Setting up dest map for host ep 41 to be stream 9

[TRACE] [STREAMER] data_sid = 00:29>02:40 actual recv_buff_size =
131072
[TRACE] [STREAMER] Flow Control Window = 100761, Flow Control Handler
Window = 20152
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==100761
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 0.0>0.41
[TRACE] [RFNOC]   Setting SID: 2.64>0.41  
[TRACE] [STREAMER] resp_out_dst_sid == 41
[TRACE] [STREAMER] Number of upstream radio nodes: 1
[TRACE] [STREAMER] bpp == 4080, bpi == 4, spp == 1020
[DEBUG] [CONVERT] get_converter: For converter ID: conversion ID
  Input format:  sc16_item32_le
  Num inputs:    1
  Output format: fc32
  Num outputs:   1
 Using prio: 2
[TRACE] [RFNOC] rx_stream_terminator::set_rx_streamer() 1
[TRACE] [RFNOC] source_node_ctrl::set_rx_streamer() 0 -> 1
[TRACE] [RFNOC] source_node_ctrl::set_rx_streamer() 0 -> 1
[TRACE] [RFNOC] radio_ctrl_impl::set_rx_streamer() 0 -> 1
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() 

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[TRACE] [STREAMER] updating RX streamer to RX Terminator 0
[TRACE] [STREAMER]   New tick_rate == 4e+06  New samp_rate == 500000
New scaling == 3.05176e-05
[TRACE] [STREAMER] chan 0 connecting to 0/DDC_0
[TRACE] [STREAMER] Maximum MTU supported by 0/DDC_0: 8192
[TRACE] [STREAMER] Maximum MTU supported by 0/AddSub_0: 8192
[TRACE] [STREAMER] creating rx stream max_recv_window=32,mtu=4096
[DEBUG] [E300] [E300] Setting up dest map for host ep 42 to be stream
10

[TRACE] [STREAMER] data_sid = 00:2a>02:41 actual recv_buff_size =
131072
[TRACE] [STREAMER] Flow Control Window = 100761, Flow Control Handler
Window = 20152
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==100761
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 0.0>0.42
[TRACE] [RFNOC]   Setting SID: 2.65>0.42  
[TRACE] [STREAMER] resp_out_dst_sid == 42
[TRACE] [STREAMER] Number of upstream radio nodes: 1
[TRACE] [STREAMER] bpp == 4080, bpi == 4, spp == 1020
[DEBUG] [CONVERT] get_converter: For converter ID: conversion ID
  Input format:  sc16_item32_le
  Num inputs:    1
  Output format: fc32
  Num outputs:   1
 Using prio: 2
[TRACE] [RFNOC] rx_stream_terminator::set_rx_streamer() 1
[TRACE] [RFNOC] source_node_ctrl::set_rx_streamer() 1 -> 1
[TRACE] [RFNOC] source_node_ctrl::set_rx_streamer() 1 -> 1
[TRACE] [RFNOC] radio_ctrl_impl::set_rx_streamer() 1 -> 1
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() 

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[TRACE] [STREAMER] updating RX streamer to RX Terminator 0
[TRACE] [STREAMER]   New tick_rate == 4e+06  New samp_rate == 500000
New scaling == 3.05176e-05
[TRACE] [STREAMER] updating RX streamer to RX Terminator 1
[TRACE] [STREAMER]   New tick_rate == 4e+06  New samp_rate == 500000
New scaling == 3.05176e-05
[TRACE] [RFNOC] ddc_block_ctrl_base::issue_stream_cmd()
[Press Enter to quit: TRACE] [RFNOC]
source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] radio_ctrl_impl::issue_stream_cmd() 0 a
[TRACE] [RFNOC] ddc_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] radio_ctrl_impl::issue_stream_cmd() 1 a

[TRACE] [RFNOC] ddc_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] radio_ctrl_impl::issue_stream_cmd() 0 o
[TRACE] [RFNOC] ddc_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] radio_ctrl_impl::issue_stream_cmd() 1 o
root@ettus-e3xx-sg1:~/localinstall# ./nick_add_usrp.py 
[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;
UHD_3.14.1.HEAD-0-gbfb9c1c7
[TRACE] [UDP] Creating udp transport for 10.1.255.255 21761
[TRACE] [UDP] Creating udp transport for 10.1.255.255 21761
[TRACE] [UHD] Device hash: 1154030666
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
[DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
[DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
[DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf
[DEBUG] [E300] e300_make with args Device Address:
    type: e3x0
    node: /dev/axi_fpga
    name: 
    serial: 309FB1CF
    product: E3XX SG1
    fpga: /home/root/localinstall/images/add_addsub_ddc.bit

[INFO] [E300] Loading FPGA image:
/home/root/localinstall/images/add_addsub_ddc.bit...
[INFO] [E300] FPGA image loaded
[TRACE] [AD936X] [ad9361_device_t::_setup_rates] rate=5e+07

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] divfactor=12

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco]
rate=600000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] vcodiv=2
vcorate=1200000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] (nint)=30.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] (nfrac)=0.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] nint=30 nfrac=0

[TRACE] [AD936X] [ad9361_device_t::_setup_rates]
adcclk=600000000.000000

[INFO] [E300] Detecting internal GPS 
.... [INFO] [E300] GPSDO found
[INFO] [E300] Initializing core control (global registers)...

[INFO] [E300] Performing register loopback test... 
[INFO] [E300] Register loopback test passed
[DEBUG] [E300] Initializing AD9361 using hard SPI core...
[TRACE] [AD936X] [ad9361_device_t::set_clock_rate]
req_rate=50000000.0000000000

[DEBUG] [E300] OK

[DEBUG] [E300] [E300] Setting up dest map for host ep 48 to be stream 0

[DEBUG] [DEVICE3] Port 0x10: Found NoC-Block with ID 12AD100000000000.
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/radio_e3xx.xml for
NOC ID 0x12AD100000000000
[DEBUG] [E300] [E300] Setting up dest map for host ep 49 to be stream 1

[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/radio_e3xx.xml for
NOC ID 0x12AD100000000000
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'E3XXRadio' and
block name 'Radio'
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/radio_e3xx.xml for
NOC ID 0x12AD100000000000
[INFO] [0/Radio_0] Initializing block control (NOC ID:
0x12AD100000000000)
[DEBUG] [0/Radio_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/in/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/in/1:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/out/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/out/1:
type = 'sc16' pkt_size = '0' vlen = '0'
[DEBUG] [0/Radio_0] Register loopback test passed
[DEBUG] [0/Radio_0] Register loopback test passed
[TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Requested spp: 508
[TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Setting spp to: 508
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::ctor() 

[DEBUG] [E300] Setting time source to internal

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[TRACE] [RFNOC]   Creating internal GPIOs...

[TRACE] [RFNOC]   Setting tick rate...

[DEBUG] [E300] [E300] Setting up dest map for host ep 50 to be stream 2

[DEBUG] [DEVICE3] Port 0x20: Found NoC-Block with ID ADD1000000000000.
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/nickadd.xml for NOC
ID 0xADD1000000000000
[DEBUG] [E300] [E300] Setting up dest map for host ep 51 to be stream 3

[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/nickadd.xml for NOC
ID 0xADD1000000000000
[WARNING] [RFNOC] Can't find a block controller for key Add, using
default block controller!
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'Block' and block
name 'Add'
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/nickadd.xml for NOC
ID 0xADD1000000000000
[INFO] [0/Add_0] Initializing block control (NOC ID:
0xADD1000000000000)
[DEBUG] [0/Add_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[TRACE] [0/Add_0] Adding port definition at xbar/Add_0/ports/in/0: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Add_0] Adding port definition at xbar/Add_0/ports/in/1: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Add_0] Adding port definition at xbar/Add_0/ports/out/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[DEBUG] [E300] [E300] Setting up dest map for host ep 52 to be stream 4

[DEBUG] [DEVICE3] Port 0x30: Found NoC-Block with ID ADD0000000000000.
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/addsub.xml for NOC
ID 0xADD0000000000000
[DEBUG] [E300] [E300] Setting up dest map for host ep 53 to be stream 5

[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/addsub.xml for NOC
ID 0xADD0000000000000
[WARNING] [RFNOC] Can't find a block controller for key AddSub, using
default block controller!
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'Block' and block
name 'AddSub'
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/addsub.xml for NOC
ID 0xADD0000000000000
[INFO] [0/AddSub_0] Initializing block control (NOC ID:
0xADD0000000000000)
[DEBUG] [0/AddSub_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[TRACE] [0/AddSub_0] Adding port definition at
xbar/AddSub_0/ports/in/0: type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/AddSub_0] Adding port definition at
xbar/AddSub_0/ports/in/1: type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/AddSub_0] Adding port definition at
xbar/AddSub_0/ports/out/0: type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/AddSub_0] Adding port definition at
xbar/AddSub_0/ports/out/1: type = 'sc16' pkt_size = '0' vlen = '0'
[DEBUG] [E300] [E300] Setting up dest map for host ep 54 to be stream 6

[DEBUG] [DEVICE3] Port 0x40: Found NoC-Block with ID DDC0000000000000.
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/ddc.xml for NOC ID
0xDDC0000000000000
[DEBUG] [E300] [E300] Setting up dest map for host ep 55 to be stream 7

[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/ddc.xml for NOC ID
0xDDC0000000000000
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'DDC' and block
name 'DDC'
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/ddc.xml for NOC ID
0xDDC0000000000000
[INFO] [0/DDC_0] Initializing block control (NOC ID:
0xDDC0000000000000)
[DEBUG] [0/DDC_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/in/0: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/in/1: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/out/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/out/1:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[DEBUG] [0/DDC_0] Loading DDC with 3 halfbands and max CIC decimation
255
[DEBUG] [DDC] Checking compat number for FPGA component `DDC':
Expecting 2.0, actual: 2.0.
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[DEBUG] [E300] Initializing Radio Block...

[DEBUG] [AD936X] Performing CODEC loopback test... 
[DEBUG] [AD936X] CODEC loopback test passed.
[DEBUG] [AD936X] Performing CODEC loopback test... 
[DEBUG] [AD936X] CODEC loopback test passed.
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() 

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[DEBUG] [E300] Asking for clock rate 16 MHz

[TRACE] [AD936X] [ad9361_device_t::set_clock_rate]
req_rate=16000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] rate=1.6e+07

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] divfactor=16

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco]
rate=256000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] vcodiv=4
vcorate=1024000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] (nint)=25.6000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco]
(nfrac)=1253376.0000000030

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] nint=25 nfrac=1253376

[TRACE] [AD936X] [ad9361_device_t::_setup_rates]
adcclk=256000000.000000

[TRACE] [AD936X] [ad9361_device_t::set_clock_rate]
rate=16000000.0000000000

[DEBUG] [E300] Actually got clock rate 16 MHz

[DEBUG] [CORES] Performing timer loopback test... 
[DEBUG] [CORES] Timer loopback test passed.
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() 

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[DEBUG] [E300] end of e300_impl()

[TRACE] [DEVICE3] Creating async message handler for graph `GNU
Radio'...
[DEBUG] [E300] [E300] Setting up dest map for host ep 56 to be stream 8

[TRACE] [DEVICE3]  Async transport ready.

[TRACE] [DEVICE3] Async message has address 0.56>2.0

[TRACE] [DEVICE3] Creating graph `GNU Radio'...

[DEBUG] [E300] Asking for clock rate 4 MHz

[TRACE] [AD936X] [ad9361_device_t::set_clock_rate]
req_rate=4000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] rate=4e+06

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] divfactor=16

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco]
rate=64000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] vcodiv=16
vcorate=1024000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] (nint)=25.6000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco]
(nfrac)=1253376.0000000030

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] nint=25 nfrac=1253376

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] adcclk=64000000.000000

[TRACE] [AD936X] [ad9361_device_t::set_clock_rate]
rate=4000000.0000000000

[DEBUG] [E300] Actually got clock rate 4 MHz

[DEBUG] [CORES] Performing timer loopback test... 
[DEBUG] [CORES] Timer loopback test passed.
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() 

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[TRACE] [RFNOC] [GNU Radio] Attempting to connect 0/Add_0:0 -->
0/DDC_0:0
[TRACE] [RFNOC] [GNU Radio] Connecting 0/Add_0:0 --> 0/DDC_0:0
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 2.32>2.64
[TRACE] [RFNOC]   Setting SID: 2.32>2.64  
[WARNING] [RFNOC] Assuming max packet size for 0/Add_0
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==16384
[TRACE] [RFNOC]
sink_block_ctrl_base::configure_flow_control_in(bytes=2048)
[TRACE] [RFNOC] [GNU Radio] Attempting to connect 0/Radio_0:0 -->
0/Add_0:0
[TRACE] [RFNOC] [GNU Radio] Connecting 0/Radio_0:0 --> 0/Add_0:0
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 2.16>2.32
[TRACE] [RFNOC]   Setting SID: 2.16>2.32  
[WARNING] [RFNOC] Assuming max packet size for 0/Radio_0
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==16384
[TRACE] [RFNOC]
sink_block_ctrl_base::configure_flow_control_in(bytes=2048)
[TRACE] [RFNOC] [GNU Radio] Attempting to connect 0/Radio_0:1 -->
0/Add_0:1
[TRACE] [RFNOC] [GNU Radio] Connecting 0/Radio_0:1 --> 0/Add_0:1
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 2.17>2.33
[TRACE] [RFNOC]   Setting SID: 2.17>2.33  
[WARNING] [RFNOC] Assuming max packet size for 0/Radio_0
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==16384
[TRACE] [RFNOC]
sink_block_ctrl_base::configure_flow_control_in(bytes=2048)
[TRACE] [STREAMER] chan 0 connecting to 0/DDC_0
[TRACE] [STREAMER] Maximum MTU supported by 0/DDC_0: 8192
[TRACE] [STREAMER] Maximum MTU supported by 0/Add_0: 8192
[TRACE] [STREAMER] creating rx stream max_recv_window=32,mtu=4096
[DEBUG] [E300] [E300] Setting up dest map for host ep 57 to be stream 9

[TRACE] [STREAMER] data_sid = 00:39>02:40 actual recv_buff_size =
131072
[TRACE] [STREAMER] Flow Control Window = 100761, Flow Control Handler
Window = 20152
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==100761
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 0.0>0.57
[TRACE] [RFNOC]   Setting SID: 2.64>0.57  
[TRACE] [STREAMER] resp_out_dst_sid == 57
[TRACE] [STREAMER] Number of upstream radio nodes: 1
[TRACE] [STREAMER] bpp == 4080, bpi == 4, spp == 1020
[DEBUG] [CONVERT] get_converter: For converter ID: conversion ID
  Input format:  sc16_item32_le
  Num inputs:    1
  Output format: fc32
  Num outputs:   1
 Using prio: 2
[TRACE] [RFNOC] rx_stream_terminator::set_rx_streamer() 1
[TRACE] [RFNOC] source_node_ctrl::set_rx_streamer() 0 -> 1
[TRACE] [RFNOC] source_node_ctrl::set_rx_streamer() 0 -> 1
[TRACE] [RFNOC] radio_ctrl_impl::set_rx_streamer() 0 -> 1
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() 

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 
Press Enter to quit: 
[TRACE] [STREAMER] updating RX streamer to RX Terminator 0
[TRACE] [STREAMER]   New tick_rate == 4e+06  New samp_rate == 500000
New scaling == 3.05176e-05
[TRACE] [RFNOC] ddc_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] radio_ctrl_impl::issue_stream_cmd() 0 a
[TRACE] [RFNOC] radio_ctrl_impl::issue_stream_cmd() 1 a
[TRACE] [RFNOC] radio_ctrl_impl::issue_stream_cmd() called on inactive
channel. Skipping.
timeout on chan 0
timeout on chan 0
timeout on chan 0
timeout on chan 0
timeout on chan 0
timeout on chan 0
timeout on chan 0
timeout on chan 0
timeout on chan 0
timeout on chan 0

-- at this point I stop the program with <enter> or control-c


[TRACE] [RFNOC] ddc_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] radio_ctrl_impl::issue_stream_cmd() 0 o
[TRACE] [RFNOC] radio_ctrl_impl::issue_stream_cmd() 1 o
[TRACE] [RFNOC] radio_ctrl_impl::issue_stream_cmd() called on inactive
channel. Skipping.
root@ettus-e3xx-sg1:~/localinstall# 




---------------------------------------------------------------------
---------------------------------------------
-----------------------------------addsub: 2 ports in 2 ports out----
---------------------------------------------
---------------------------------------------gnuradio script-----------
-------------------------------------------
#!/usr/bin/env python2
# -*- coding: utf-8 -*-
##################################################
# GNU Radio Python Flow Graph
# Title: Nick Add Usrp
# GNU Radio version: 3.7.13.5
##################################################

from gnuradio import eng_notation
from gnuradio import gr
from gnuradio import uhd
from gnuradio import zeromq
from gnuradio.eng_option import eng_option
from gnuradio.filter import firdes
from optparse import OptionParser
import SimpleXMLRPCServer
import ettus
import threading


class nick_add_usrp(gr.top_block):

    def __init__(self):
        gr.top_block.__init__(self, "Nick Add Usrp")

        ##################################################
        # Variables
        ##################################################
        self.device3 = variable_uhd_device3_0 =
ettus.device3(uhd.device_addr_t( ",".join(('type=e3x0',
"fpga=/home/root/localinstall/images/add_addsub_ddc.bit")) ))
        self.output_rate = output_rate = .5e6
        self.ip_addr = ip_addr = "10.1.2.9"
        self.gain = gain = 76
        self.freq = freq = 915
        self.enable = enable = False
        self.clock_rate = clock_rate = 4

        ##################################################
        # Blocks
        ##################################################
        self.zeromq_push_sink_0_0 =
zeromq.push_sink(gr.sizeof_gr_complex, 1, 'tcp://*:4001', 10000, True,
-1)
        self.zeromq_push_sink_0 =
zeromq.push_sink(gr.sizeof_gr_complex, 1, 'tcp://*:4000', 10000, True,
-1)
        self.xmlrpc_server_0 =
SimpleXMLRPCServer.SimpleXMLRPCServer(('0.0.0.0', 8080),
allow_none=True)
        self.xmlrpc_server_0.register_instance(self)
        self.xmlrpc_server_0_thread =
threading.Thread(target=self.xmlrpc_server_0.serve_forever)
        self.xmlrpc_server_0_thread.daemon = True
        self.xmlrpc_server_0_thread.start()
        self.uhd_rfnoc_streamer_radio_0 = ettus.rfnoc_radio(
            self.device3,
            uhd.stream_args( # Tx Stream Args
                cpu_format="fc32",
                otw_format="sc16",
                args="", # empty
            ),
            uhd.stream_args( # Rx Stream Args
                cpu_format="fc32",
                otw_format="sc16",
          args='',
            ),
            0, -1
        )
        self.uhd_rfnoc_streamer_radio_0.set_rate(clock_rate*1e6)

        self.uhd_rfnoc_streamer_radio_0.set_rx_freq(freq, 0)
        self.uhd_rfnoc_streamer_radio_0.set_rx_gain(gain, 0)
        self.uhd_rfnoc_streamer_radio_0.set_rx_dc_offset(True, 0)

        self.uhd_rfnoc_streamer_radio_0.set_rx_freq(freq*1e6, 1)
        self.uhd_rfnoc_streamer_radio_0.set_rx_gain(gain, 1)
        self.uhd_rfnoc_streamer_radio_0.set_rx_dc_offset(True, 1)

        self.uhd_rfnoc_streamer_radio_0.set_rx_bandwidth(clock_rate*1e6
, 0)
        self.uhd_rfnoc_streamer_radio_0.set_rx_bandwidth(clock_rate*1e6
, 1)

        if "TX/RX":
            self.uhd_rfnoc_streamer_radio_0.set_rx_antenna("TX/RX", 0)
        if "TX/RX":
            self.uhd_rfnoc_streamer_radio_0.set_rx_antenna("TX/RX", 1)


        self.uhd_rfnoc_streamer_radio_0.set_clock_source("internal")
        self.uhd_rfnoc_streamer_ddc_1 = ettus.rfnoc_generic(
            self.device3,
            uhd.stream_args( # TX Stream Args
                cpu_format="fc32", # TODO: This must be made an option
                otw_format="sc16",
                channels=range(2),
                args="input_rate={},output_rate={},fullscale={},freq={}
,gr_vlen={},{}".format(clock_rate*1e6, output_rate, 1.0, 0.0, 1, "" if
1 == 1 else "spp={}".format(1)),
            ),
            uhd.stream_args( # RX Stream Args
                cpu_format="fc32", # TODO: This must be made an option
                otw_format="sc16",
                channels=range(2),
                args="gr_vlen={},{}".format(1, "" if 1 == 1 else
"spp={}".format(1)),
            ),
            "DDC", -1, -1,
        )
        for chan in xrange(2):
            self.uhd_rfnoc_streamer_ddc_1.set_arg("input_rate",
float(clock_rate*1e6), chan)
            self.uhd_rfnoc_streamer_ddc_1.set_arg("output_rate",
float(output_rate), chan)
            self.uhd_rfnoc_streamer_ddc_1.set_arg("fullscale", 1.0,
chan)
            self.uhd_rfnoc_streamer_ddc_1.set_arg("freq", 0.0, chan)
        self.uhd_rfnoc_streamer_adder_0 = ettus.rfnoc_generic(
            self.device3,
            uhd.stream_args( # TX Stream Args
                cpu_format="fc32", # TODO: This must be made an option
                otw_format="sc16",
                channels=(0,1),
                args="align=1",
            ),
            uhd.stream_args( # RX Stream Args
                cpu_format="fc32",
                otw_format="sc16",
                channels=(0,1),
                args="align=1",
            ),
            "AddSub", -1, -1,
        )



        ##################################################
        # Connections
        ##################################################
        self.connect((self.uhd_rfnoc_streamer_ddc_1, 0),
(self.zeromq_push_sink_0, 0))
        self.connect((self.uhd_rfnoc_streamer_ddc_1, 1),
(self.zeromq_push_sink_0_0, 0))
        self.device3.connect(self.uhd_rfnoc_streamer_adder_0.get_block_
id(), 0, self.uhd_rfnoc_streamer_ddc_1.get_block_id(), 0)
        self.device3.connect(self.uhd_rfnoc_streamer_adder_0.get_block_
id(), 1, self.uhd_rfnoc_streamer_ddc_1.get_block_id(), 1)
        self.device3.connect(self.uhd_rfnoc_streamer_radio_0.get_block_
id(), 0, self.uhd_rfnoc_streamer_adder_0.get_block_id(), 0)
        self.device3.connect(self.uhd_rfnoc_streamer_radio_0.get_block_
id(), 1, self.uhd_rfnoc_streamer_adder_0.get_block_id(), 1)

    def get_variable_uhd_device3_0(self):
        return self.variable_uhd_device3_0

    def set_variable_uhd_device3_0(self, variable_uhd_device3_0):
        self.variable_uhd_device3_0 = variable_uhd_device3_0

    def get_output_rate(self):
        return self.output_rate

    def set_output_rate(self, output_rate):
        self.output_rate = output_rate
        for i in xrange(2):
            self.uhd_rfnoc_streamer_ddc_1.set_arg("output_rate",
float(self.output_rate), i)

    def get_ip_addr(self):
        return self.ip_addr

    def set_ip_addr(self, ip_addr):
        self.ip_addr = ip_addr

    def get_gain(self):
        return self.gain

    def set_gain(self, gain):
        self.gain = gain

        self.uhd_rfnoc_streamer_radio_0.set_rx_gain(self.gain, 0)
        self.uhd_rfnoc_streamer_radio_0.set_rx_gain(self.gain, 1)

    def get_freq(self):
        return self.freq

    def set_freq(self, freq):
        self.freq = freq

        self.uhd_rfnoc_streamer_radio_0.set_rx_freq(self.freq, 0)
        self.uhd_rfnoc_streamer_radio_0.set_rx_freq(self.freq*1e6, 1)

    def get_enable(self):
        return self.enable

    def set_enable(self, enable):
        self.enable = enable

    def get_clock_rate(self):
        return self.clock_rate

    def set_clock_rate(self, clock_rate):
        self.clock_rate = clock_rate
        self.uhd_rfnoc_streamer_radio_0.set_rate(self.clock_rate*1e6)
        for i in xrange(2):
            self.uhd_rfnoc_streamer_ddc_1.set_arg("input_rate",
float(self.clock_rate*1e6), i)


def main(top_block_cls=nick_add_usrp, options=None):

    tb = top_block_cls()
    tb.start()
    try:
        raw_input('Press Enter to quit: ')
    except EOFError:
        pass
    tb.stop()
    tb.wait()


if __name__ == '__main__':
    main()


---------------------------------------------------------------------
---------------------------------------------
-----------------------------------addsub: 2 ports in 2 ports out----
---------------------------------------------
------------------------------------------------results--------------
---------------------------------------------

root@ettus-e3xx-sg1:~/localinstall# ./nick_add_usrp.py 
[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;
UHD_3.14.1.HEAD-0-gbfb9c1c7
[TRACE] [UDP] Creating udp transport for 10.1.255.255 21761
[TRACE] [UDP] Creating udp transport for 10.1.255.255 21761
[TRACE] [UHD] Device hash: 1154030666
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
[DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
[DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
[DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf
[DEBUG] [E300] e300_make with args Device Address:
    type: e3x0
    node: /dev/axi_fpga
    name: 
    serial: 309FB1CF
    product: E3XX SG1
    fpga: /home/root/localinstall/images/add_addsub_ddc.bit

[INFO] [E300] Loading FPGA image:
/home/root/localinstall/images/add_addsub_ddc.bit...
[INFO] [E300] FPGA image loaded
[TRACE] [AD936X] [ad9361_device_t::_setup_rates] rate=5e+07

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] divfactor=12

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco]
rate=600000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] vcodiv=2
vcorate=1200000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] (nint)=30.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] (nfrac)=0.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] nint=30 nfrac=0

[TRACE] [AD936X] [ad9361_device_t::_setup_rates]
adcclk=600000000.000000

[INFO] [E300] Detecting internal GPS 
.... [INFO] [E300] GPSDO found
[INFO] [E300] Initializing core control (global registers)...

[INFO] [E300] Performing register loopback test... 
[INFO] [E300] Register loopback test passed
[DEBUG] [E300] Initializing AD9361 using hard SPI core...
[TRACE] [AD936X] [ad9361_device_t::set_clock_rate]
req_rate=50000000.0000000000

[DEBUG] [E300] OK

[DEBUG] [E300] [E300] Setting up dest map for host ep 32 to be stream 0

[DEBUG] [DEVICE3] Port 0x10: Found NoC-Block with ID 12AD100000000000.
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/radio_e3xx.xml for
NOC ID 0x12AD100000000000
[DEBUG] [E300] [E300] Setting up dest map for host ep 33 to be stream 1

[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/radio_e3xx.xml for
NOC ID 0x12AD100000000000
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'E3XXRadio' and
block name 'Radio'
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/radio_e3xx.xml for
NOC ID 0x12AD100000000000
[INFO] [0/Radio_0] Initializing block control (NOC ID:
0x12AD100000000000)
[DEBUG] [0/Radio_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/in/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/in/1:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/out/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/out/1:
type = 'sc16' pkt_size = '0' vlen = '0'
[DEBUG] [0/Radio_0] Register loopback test passed
[DEBUG] [0/Radio_0] Register loopback test passed
[TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Requested spp: 508
[TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Setting spp to: 508
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::ctor() 

[DEBUG] [E300] Setting time source to internal

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[TRACE] [RFNOC]   Creating internal GPIOs...

[TRACE] [RFNOC]   Setting tick rate...

[DEBUG] [E300] [E300] Setting up dest map for host ep 34 to be stream 2

[DEBUG] [DEVICE3] Port 0x20: Found NoC-Block with ID ADD1000000000000.
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/nickadd.xml for NOC
ID 0xADD1000000000000
[DEBUG] [E300] [E300] Setting up dest map for host ep 35 to be stream 3

[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/nickadd.xml for NOC
ID 0xADD1000000000000
[WARNING] [RFNOC] Can't find a block controller for key Add, using
default block controller!
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'Block' and block
name 'Add'
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/nickadd.xml for NOC
ID 0xADD1000000000000
[INFO] [0/Add_0] Initializing block control (NOC ID:
0xADD1000000000000)
[DEBUG] [0/Add_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[TRACE] [0/Add_0] Adding port definition at xbar/Add_0/ports/in/0: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Add_0] Adding port definition at xbar/Add_0/ports/in/1: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/Add_0] Adding port definition at xbar/Add_0/ports/out/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[DEBUG] [E300] [E300] Setting up dest map for host ep 36 to be stream 4

[DEBUG] [DEVICE3] Port 0x30: Found NoC-Block with ID ADD0000000000000.
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/addsub.xml for NOC
ID 0xADD0000000000000
[DEBUG] [E300] [E300] Setting up dest map for host ep 37 to be stream 5

[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/addsub.xml for NOC
ID 0xADD0000000000000
[WARNING] [RFNOC] Can't find a block controller for key AddSub, using
default block controller!
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'Block' and block
name 'AddSub'
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/addsub.xml for NOC
ID 0xADD0000000000000
[INFO] [0/AddSub_0] Initializing block control (NOC ID:
0xADD0000000000000)
[DEBUG] [0/AddSub_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[TRACE] [0/AddSub_0] Adding port definition at
xbar/AddSub_0/ports/in/0: type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/AddSub_0] Adding port definition at
xbar/AddSub_0/ports/in/1: type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/AddSub_0] Adding port definition at
xbar/AddSub_0/ports/out/0: type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/AddSub_0] Adding port definition at
xbar/AddSub_0/ports/out/1: type = 'sc16' pkt_size = '0' vlen = '0'
[DEBUG] [E300] [E300] Setting up dest map for host ep 38 to be stream 6

[DEBUG] [DEVICE3] Port 0x40: Found NoC-Block with ID DDC0000000000000.
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/ddc.xml for NOC ID
0xDDC0000000000000
[DEBUG] [E300] [E300] Setting up dest map for host ep 39 to be stream 7

[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/ddc.xml for NOC ID
0xDDC0000000000000
[TRACE] [RFNOC] [RFNoC Factory] Using controller key 'DDC' and block
name 'DDC'
[DEBUG] [RFNOC] Reading XML file
/home/root/localinstall/usr/share/uhd/rfnoc/blocks/ddc.xml for NOC ID
0xDDC0000000000000
[INFO] [0/DDC_0] Initializing block control (NOC ID:
0xDDC0000000000000)
[DEBUG] [0/DDC_0] Checking compat number for FPGA component
`noc_shell': Expecting 5.1, actual: 5.1.
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/in/0: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/in/1: type
= 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/out/0:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/out/1:
type = 'sc16' pkt_size = '0' vlen = '0'
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[DEBUG] [0/DDC_0] Loading DDC with 3 halfbands and max CIC decimation
255
[DEBUG] [DDC] Checking compat number for FPGA component `DDC':
Expecting 2.0, actual: 2.0.
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[DEBUG] [E300] Initializing Radio Block...

[DEBUG] [AD936X] Performing CODEC loopback test... 
[DEBUG] [AD936X] CODEC loopback test passed.
[DEBUG] [AD936X] Performing CODEC loopback test... 
[DEBUG] [AD936X] CODEC loopback test passed.
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() 

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[DEBUG] [E300] Asking for clock rate 16 MHz

[TRACE] [AD936X] [ad9361_device_t::set_clock_rate]
req_rate=16000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] rate=1.6e+07

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] divfactor=16

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco]
rate=256000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] vcodiv=4
vcorate=1024000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] (nint)=25.6000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco]
(nfrac)=1253376.0000000030

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] nint=25 nfrac=1253376

[TRACE] [AD936X] [ad9361_device_t::_setup_rates]
adcclk=256000000.000000

[TRACE] [AD936X] [ad9361_device_t::set_clock_rate]
rate=16000000.0000000000

[DEBUG] [E300] Actually got clock rate 16 MHz

[DEBUG] [CORES] Performing timer loopback test... 
[DEBUG] [CORES] Timer loopback test passed.
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() 

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[DEBUG] [E300] end of e300_impl()

[TRACE] [DEVICE3] Creating async message handler for graph `GNU
Radio'...
[DEBUG] [E300] [E300] Setting up dest map for host ep 40 to be stream 8

[TRACE] [DEVICE3]  Async transport ready.

[TRACE] [DEVICE3] Async message has address 0.40>2.0

[TRACE] [DEVICE3] Creating graph `GNU Radio'...

[DEBUG] [E300] Asking for clock rate 4 MHz

[TRACE] [AD936X] [ad9361_device_t::set_clock_rate]
req_rate=4000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] rate=4e+06

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] divfactor=16

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco]
rate=64000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] vcodiv=16
vcorate=1024000000.0000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] (nint)=25.6000000000

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco]
(nfrac)=1253376.0000000030

[TRACE] [AD936X] [ad9361_device_t::_tune_bbvco] nint=25 nfrac=1253376

[TRACE] [AD936X] [ad9361_device_t::_setup_rates] adcclk=64000000.000000

[TRACE] [AD936X] [ad9361_device_t::set_clock_rate]
rate=4000000.0000000000

[DEBUG] [E300] Actually got clock rate 4 MHz

[DEBUG] [CORES] Performing timer loopback test... 
[DEBUG] [CORES] Timer loopback test passed.
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() 

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($input_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($output_rate, 0.0)
[TRACE] [RFNOC] [NocScript] Executing and asserting code:
GE($fullscale, 0.0)
[TRACE] [RFNOC] [GNU Radio] Attempting to connect 0/AddSub_0:0 -->
0/DDC_0:0
[TRACE] [RFNOC] [GNU Radio] Connecting 0/AddSub_0:0 --> 0/DDC_0:0
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 2.48>2.64
[TRACE] [RFNOC]   Setting SID: 2.48>2.64  
[WARNING] [RFNOC] Assuming max packet size for 0/AddSub_0
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==16384
[TRACE] [RFNOC]
sink_block_ctrl_base::configure_flow_control_in(bytes=2048)
[TRACE] [RFNOC] [GNU Radio] Attempting to connect 0/AddSub_0:1 -->
0/DDC_0:1
[TRACE] [RFNOC] [GNU Radio] Connecting 0/AddSub_0:1 --> 0/DDC_0:1
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 2.49>2.65
[TRACE] [RFNOC]   Setting SID: 2.49>2.65  
[WARNING] [RFNOC] Assuming max packet size for 0/AddSub_0
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==16384
[TRACE] [RFNOC]
sink_block_ctrl_base::configure_flow_control_in(bytes=2048)
[TRACE] [RFNOC] [GNU Radio] Attempting to connect 0/Radio_0:0 -->
0/AddSub_0:0
[TRACE] [RFNOC] [GNU Radio] Connecting 0/Radio_0:0 --> 0/AddSub_0:0
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 2.16>2.48
[TRACE] [RFNOC]   Setting SID: 2.16>2.48  
[WARNING] [RFNOC] Assuming max packet size for 0/Radio_0
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==16384
[TRACE] [RFNOC]
sink_block_ctrl_base::configure_flow_control_in(bytes=2048)
[TRACE] [RFNOC] [GNU Radio] Attempting to connect 0/Radio_0:1 -->
0/AddSub_0:1
[TRACE] [RFNOC] [GNU Radio] Connecting 0/Radio_0:1 --> 0/AddSub_0:1
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 2.17>2.49
[TRACE] [RFNOC]   Setting SID: 2.17>2.49  
[WARNING] [RFNOC] Assuming max packet size for 0/Radio_0
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==16384
[TRACE] [RFNOC]
sink_block_ctrl_base::configure_flow_control_in(bytes=2048)
[TRACE] [STREAMER] chan 0 connecting to 0/DDC_0
[TRACE] [STREAMER] Maximum MTU supported by 0/DDC_0: 8192
[TRACE] [STREAMER] Maximum MTU supported by 0/AddSub_0: 8192
[TRACE] [STREAMER] creating rx stream max_recv_window=32,mtu=4096
[DEBUG] [E300] [E300] Setting up dest map for host ep 41 to be stream 9

[TRACE] [STREAMER] data_sid = 00:29>02:40 actual recv_buff_size =
131072
[TRACE] [STREAMER] Flow Control Window = 100761, Flow Control Handler
Window = 20152
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==100761
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 0.0>0.41
[TRACE] [RFNOC]   Setting SID: 2.64>0.41  
[TRACE] [STREAMER] resp_out_dst_sid == 41
[TRACE] [STREAMER] Number of upstream radio nodes: 1
[TRACE] [STREAMER] bpp == 4080, bpi == 4, spp == 1020
[DEBUG] [CONVERT] get_converter: For converter ID: conversion ID
  Input format:  sc16_item32_le
  Num inputs:    1
  Output format: fc32
  Num outputs:   1
 Using prio: 2
[TRACE] [RFNOC] rx_stream_terminator::set_rx_streamer() 1
[TRACE] [RFNOC] source_node_ctrl::set_rx_streamer() 0 -> 1
[TRACE] [RFNOC] source_node_ctrl::set_rx_streamer() 0 -> 1
[TRACE] [RFNOC] radio_ctrl_impl::set_rx_streamer() 0 -> 1
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() 

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[TRACE] [STREAMER] updating RX streamer to RX Terminator 0
[TRACE] [STREAMER]   New tick_rate == 4e+06  New samp_rate == 500000
New scaling == 3.05176e-05
[TRACE] [STREAMER] chan 0 connecting to 0/DDC_0
[TRACE] [STREAMER] Maximum MTU supported by 0/DDC_0: 8192
[TRACE] [STREAMER] Maximum MTU supported by 0/AddSub_0: 8192
[TRACE] [STREAMER] creating rx stream max_recv_window=32,mtu=4096
[DEBUG] [E300] [E300] Setting up dest map for host ep 42 to be stream
10

[TRACE] [STREAMER] data_sid = 00:2a>02:41 actual recv_buff_size =
131072
[TRACE] [STREAMER] Flow Control Window = 100761, Flow Control Handler
Window = 20152
[TRACE] [RFNOC] source_block_ctrl_base::configure_flow_control_out()
buf_size_bytes==100761
[TRACE] [RFNOC] source_block_ctrl_base::set_destination() 0.0>0.42
[TRACE] [RFNOC]   Setting SID: 2.65>0.42  
[TRACE] [STREAMER] resp_out_dst_sid == 42
[TRACE] [STREAMER] Number of upstream radio nodes: 1
[TRACE] [STREAMER] bpp == 4080, bpi == 4, spp == 1020
[DEBUG] [CONVERT] get_converter: For converter ID: conversion ID
  Input format:  sc16_item32_le
  Num inputs:    1
  Output format: fc32
  Num outputs:   1
 Using prio: 2
[TRACE] [RFNOC] rx_stream_terminator::set_rx_streamer() 1
[TRACE] [RFNOC] source_node_ctrl::set_rx_streamer() 1 -> 1
[TRACE] [RFNOC] source_node_ctrl::set_rx_streamer() 1 -> 1
[TRACE] [RFNOC] radio_ctrl_impl::set_rx_streamer() 1 -> 1
[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_enables() 

[TRACE] [RFNOC] e3xx_radio_ctrl_impl::_update_gpio_state() 

[TRACE] [STREAMER] updating RX streamer to RX Terminator 0
[TRACE] [STREAMER]   New tick_rate == 4e+06  New samp_rate == 500000
New scaling == 3.05176e-05
[TRACE] [STREAMER] updating RX streamer to RX Terminator 1
[TRACE] [STREAMER]   New tick_rate == 4e+06  New samp_rate == 500000
New scaling == 3.05176e-05
[TRACE] [RFNOC] ddc_block_ctrl_base::issue_stream_cmd()
[Press Enter to quit: TRACE] [RFNOC]
source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] radio_ctrl_impl::issue_stream_cmd() 0 a
[TRACE] [RFNOC] ddc_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] radio_ctrl_impl::issue_stream_cmd() 1 a

[TRACE] [RFNOC] ddc_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] radio_ctrl_impl::issue_stream_cmd() 0 o
[TRACE] [RFNOC] ddc_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] source_block_ctrl_base::issue_stream_cmd()
[TRACE] [RFNOC] radio_ctrl_impl::issue_stream_cmd() 1 o
root@ettus-e3xx-sg1:~/localinstall#    

  --note: this runs without error and streams data to the host over the
network





_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
