Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D18F173F01
	for <lists+usrp-users@lfdr.de>; Fri, 28 Feb 2020 19:02:38 +0100 (CET)
Received: from [::1] (port=40590 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j7jy4-00063M-Rg; Fri, 28 Feb 2020 13:02:32 -0500
Received: from mout.gmx.net ([212.227.17.20]:52323)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1j7jy0-0005wh-7a
 for usrp-users@lists.ettus.com; Fri, 28 Feb 2020 13:02:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1582912907;
 bh=AMlap+sABrRAV00eOTIcoyf/Rq/gHTiqFLMYsS332jE=;
 h=X-UI-Sender-Class:From:To:Subject:Date:References;
 b=ZmW065CFqkzFM2P7uTyH0P7alMfw90q80gkrAk5aysjjEKLf8umVIXmbU8CMhiKaw
 lxlDSMxhK/K1VeIX16wkL88P4vEuaOqMQ3LyLwZV572fAuoNOoFNZkST/o4yFLate6
 oOjiLvs767/YFvliib4ho16mQeKv2GTuIaC/KXNo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bap56.server.lan [172.19.172.126]) (via HTTP); Fri, 28 Feb 2020
 19:01:47 +0100
MIME-Version: 1.0
Message-ID: <trinity-8a245f68-1d88-41d1-86fa-6a3274828d1d-1582912907055@3c-app-gmx-bap56>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Fri, 28 Feb 2020 19:01:47 +0100
Importance: normal
Sensitivity: Normal
References: <trinity-5b1cc46b-5622-4f42-8dcb-1c6d41c98fe3-1582849854366@3c-app-gmx-bs05>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:iwjq0MCEVnzGM+JrJy4rGfigljI+A+h+fN06lokHiev6sF+gcs+fDwTzC43rqR/ZHFAZ5
 Ij+MBjVpP3jaCEHgKbvRU0BIby1yhciOzIJ7zY4rL/P7SPWSe3KZAVoq/7u6ZkaRtKvZXuZSrFTq
 jPrpTywXj12s2c8DSrAWBkQBB9uHeSW1YGXCrWgdIIU2v+9QVNJ370WRDr+hjAkkPoxh6KC9tdVm
 tmOEEMw5FDSren5fNI2YBeyUHfu5H1gNgW8RYFHkFC7cbjYPb4WWuEodv7y56eKQWUUOX36vLNgv
 Ic=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zrt4pybAdxo=:hqvs0RcO6hFEwGAIp5Bbxf
 6XTbCKEzlEaYZPLIw/7H1/xjwMHElMvEbpkJSiOkKbr5l+ikWcrNi2p0RQJSJp8BeBW0v1zW4
 khV+Hm5vtcBS9zTeQ7SEhDM8gIPWtcLgL+jhcqHdZ+ehQSFRX/NMhhA4WaF73p6rhZKeXMvMt
 hocol7R/DUs+/gi6DeLU/fjaxILhZezHyco9lBWDCbLNyScToQpChb23GUYydq0ttlFpkl3xK
 5xaWebYdoZWdte3f/90sDjHuPl0w5RgvlIHzcCXeXgGzOtlqM7zzAHapLpjNx4MEsEeR2CK3d
 fXE6w/LA9Yu7RtKb8+ZyKwi3r16ikHn/QXxEGNqIM379mY8zi20r4oG7deLYuAgvLBumgYAP4
 j6Y1BYUdxX894F8nSoFHtLvsNiN2+Ky1JjunDkmghgOj3A2cHZWTY3IettIA8j0Ytq5ZCwJW4
 QsCtXnp8cIIAMkcP1j1v/6KdCwuPd4dDKNua1PKi4mEQsKhLu2rYtHyfauChCBh4Z7dywWWb/
 ard+CPKNGCElR5rHBLPPFKHdHf+GEbrfLNC66CFR322lvmhpCfF60QfPOYb4NdXMmZNdB/XLy
 scJY89IDncsTREAkSi7vvqBW8Ph5OCGlIcvz9HM/cN4A2dJXzUhlA817jVSnE/6Kv/W1MpTZs
 M5FpkAMtsxMYnIor/BEAnyeXl3yW72+hYJpGFEg5R7MmSljCjYuU5LkWc+T1z4MWFO5g=
Subject: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command (was: Re: How do timed commands work for two blocks (USRP
 Sink+USRP Source)?)
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

Hi again,

I created a minimum example (gnuradio) that shows the issue described below.
To summarize: Retuning to a different dsp frequency on an USRP X310 (+UBX160) does not work (command ignored) ONLY if a timed command (in future is used).
The code shows it in a simple manner. Commenting out the single line with set_command_time makes the example work.

I am absolutely out of ideas and would appreciate any input!

Best,
Lukas


#!/usr/bin/env python2
# -*- coding: utf-8 -*-

from gnuradio import analog
from gnuradio import gr
from gnuradio import uhd
import threading
import time

class switch_on_click_debug_tx_retune(gr.top_block):

    def __init__(self):
        gr.top_block.__init__(self, "Switch On Click Debug Tx Retune")
        self.variable_function_probe_0 = variable_function_probe_0 = 0
        self.samp_rate = samp_rate = 5e6
        self.uhd_usrp_sink_0 = uhd.usrp_sink(",".join(("", "dboard_clock_rate=20e6")), uhd.stream_args(cpu_format="fc32", channels=range(1)))
        self.uhd_usrp_sink_0.set_clock_rate(200e6, uhd.ALL_MBOARDS)
        self.uhd_usrp_sink_0.set_clock_source('internal', 0)
        self.uhd_usrp_sink_0.set_samp_rate(samp_rate)
        self.uhd_usrp_sink_0.set_center_freq(900e6, 0)
        self.uhd_usrp_sink_0.set_gain(0, 0)

        def _hopper():
            i = 0
            while True:
                if i % 2 == 0:
                   fdsp = 0
                else:
                   fdsp = -2e6
                print("Change TX dsp_freq=" + str(fdsp))
                tune_req_tx = uhd.tune_request()
                tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_NONE
                tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
                tune_req_tx.rf_freq = 900e6
                tune_req_tx.dsp_freq = fdsp

                now = self.uhd_usrp_sink_0.get_time_now()
                # *** HOPPING WORKS IF THE NEXT LINE IS COMMENTED *** !!!
                self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(0.1))
                res1 = self.uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
                self.uhd_usrp_sink_0.clear_command_time()

                i = i + 1
                time.sleep(4.0)
        _hopper_thread = threading.Thread(target=_hopper)
        _hopper_thread.daemon = True
        _hopper_thread.start()

        self.analog_sig_source_x_1 = analog.sig_source_c(samp_rate, analog.GR_COS_WAVE, 1e6, 1, 0)
        self.connect((self.analog_sig_source_x_1, 0), (self.uhd_usrp_sink_0, 0))

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.uhd_usrp_sink_0.set_samp_rate(self.samp_rate)
        self.analog_sig_source_x_1.set_sampling_freq(self.samp_rate)

def main(top_block_cls=switch_on_click_debug_tx_retune, options=None):

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




PS: I look at the output on a spectrum analyzer and observe how the frequency changes.


















> Gesendet: Donnerstag, 27. Februar 2020 um 19:30 Uhr
> Von: "Lukas Haase" <lukashaase@gmx.at>
> An: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Betreff: Re: How do timed commands work for two blocks (USRP Sink+USRP Source)?
>
> A quick update which may make things easier to debug: I am observing TX/RX on a spectrum analyzer and see if the frequency changes.
> As soon as I enable timed command, the tune command is ignored!
>
> For simplicity, I am completely removing the RX parts (uhd_usrp_source_0).
>
> Now this works:
>
> tune_req_tx = uhd.tune_request()
> tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
> tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
> tune_req_tx.rf_freq = 900e6
> tune_req_tx.dsp_freq = -2e6
>
> now = usrp_sink.get_time_now()
> #usrp_sink.set_command_time(now + uhd.time_spec(1))
> res1 = usrp_sink.set_center_freq(  tune_req_tx, 0)
> usrp_sink.clear_command_time()
>
> When this code is executed, the signal jumps by 2 MHz at the spectrum analyzer.
>
> Now I only uncomment set_timed_command above:
>
> usrp_sink.set_command_time(now + uhd.time_spec(1))
>
> and repeat. NO frequency change any more!
>
> That means as soon as I use timed command (set_command_time) for changing the DSP frequency on a TX it is just IGNORED!
>
> This must be a bug ... or do I really do something fundamentally wrong?
>
>
> USRP X310 with 2xUBX-160. TX/RX from dautherboard 1 is connected to spectrum analyzer.
>
>
> Thank you!
> Lukas
>
>
>
> Lukas Haase wrote:
> > How do these timed commands work exactly when using USRP Source together with USRP Sink? (I need to phase-align RX and TX hence use timed commands at the same time).
> > Since they are both internally use the same hardware device (and board) I feel timed commands sent to both blocks result in some unpredictable results (at least for me).
> >
> > For simplicity, consider this simple test setup: Loopback configuration (TX into RX via 30dB attentuator); transmit a 1MHz baseband signal into USRP Sink. Then, use just retuning via DSP:
> >
> >     # dsp_freq changes every time this code is called:
> >     #dsp_freq = 0
> >     dsp_freq = 100e3
> >     tune_req_tx = uhd.tune_request()
> >     tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
> >     tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
> >     tune_req_tx.rf_freq = 900e6
> >     tune_req_tx.dsp_freq = -dsp_freq
> >
> >     tune_req_rx = uhd.tune_request()
> >     tune_req_rx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
> >     tune_req_rx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
> >     tune_req_rx.rf_freq = 900e6
> >     tune_req_rx.dsp_freq = dsp_freq
> >
> >     res1 = uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
> >     res2 = uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
> >
> > This code works exactly as expected ... my received baseband signal always stays at 1 MHz (the retuning is transparent to my baseband!) but the phase always changes.
> > This makes sense because I do not use timed commands and hence the DUC/DDC is not aligned properly.
> >
> > Now I change to this code:
> >
> >     tune_req_tx = uhd.tune_request()
> >     tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
> >     tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
> >     tune_req_tx.rf_freq = rf_freq
> >     tune_req_tx.dsp_freq = -dsp_freq
> >
> >     tune_req_rx = uhd.tune_request()
> >     tune_req_rx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
> >     tune_req_rx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
> >     tune_req_rx.rf_freq = rf_freq
> >     tune_req_rx.dsp_freq = dsp_freq
> >
> >     # create timed command:
> >     now = usrp_sink.get_time_now()
> >     uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(0.2))
> >     uhd_usrp_source_0.set_command_time(now + uhd.time_spec(0.2))
> >     res1 = uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
> >     res2 = uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
> >     uhd_usrp_sink_0.clear_command_time()
> >     uhd_usrp_source_0.clear_command_time()
> >
> > Suddenly my frequency is offset by 100kHz. This makes totally no sense!
> >
> > As I mentioned above, I assume the reason is that all these timed commands eventually arrive on the same hardware and maybe overwrite themselves in a way creating unpredictable behavior.
> >
> > So, what is the correct way to do it (with USRP Source/Sink blocks in gnuradio)??
> >
> > Thanks
> > Lukas
> >
> >
> > PS: If it's multiple receiver blocks I can use the same USRP Source block with Num Channels > 1. I guess that would make live easier. But I have TX+RX to phase align.
>
>

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
