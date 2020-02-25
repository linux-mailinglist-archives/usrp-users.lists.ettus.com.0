Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D292416EE18
	for <lists+usrp-users@lfdr.de>; Tue, 25 Feb 2020 19:35:59 +0100 (CET)
Received: from [::1] (port=45960 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6f3m-0000uX-Bv; Tue, 25 Feb 2020 13:35:58 -0500
Received: from mail-qk1-f194.google.com ([209.85.222.194]:34892)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1j6f3i-0000fe-Fs
 for usrp-users@lists.ettus.com; Tue, 25 Feb 2020 13:35:54 -0500
Received: by mail-qk1-f194.google.com with SMTP id 145so168231qkl.2
 for <usrp-users@lists.ettus.com>; Tue, 25 Feb 2020 10:35:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=FXwMbNAjV+bL+u58etkhr2j47LX+wrNYRalDK2hqPEs=;
 b=obc9X9k7ttyxwk1QsqEYU+iL2sjP70fuhz3J+g1OwsU4NT4SMllIMWTsPCyShnWZr+
 iE1NyoJbcqtsPDZmYdKPUXvBDOvsaznpQZGGJkZ51WKDJpAi6aI9Q/I7/ZVPcDIog9dz
 77qgWrdGmcvJHvMYETYGzzbXBlgY6z6Q0pqTNLNfHTyBWR85OmPvGj2fM6cdsNVMNC6e
 tPh9fgvhjmS9iIUJOHuTh0jIh5Drr62V12ufF0vU7BzLBAtz2HIDT0rHAEZpFASMhTlM
 2+0Oc33CFb4M3WECXzAdv1N8Ih+pssmyinSgiAzza34lfubAPk/n73LE1vA2Mli6+/bm
 pjwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=FXwMbNAjV+bL+u58etkhr2j47LX+wrNYRalDK2hqPEs=;
 b=Gbdj4DaFWLRw5KcD4GigEdyH0iVLiRLnYSUIooXKFNQecOrMSVXJ0vmsCnkWH1ys2+
 hqvG2+0FEKUH5FYcObv3A0xwcXy9phRsP26UOvXZ48aeUXEdyPasAhl8xTQQw8ZTiLn/
 NddM7E2NTzksRxkBDfnQb/W7yDCCUy98jC1PxEdqO5IFT2amPxFcr7OYX0vW7VXCtl0N
 dfP/8Bf0Kp59OOtt10ZlR/qhAotnlXNLgBlzTSrdA7pFLoiwFW+GiYslnFZgNFX70uz1
 J+VmoJuvSgbiFWLccBDKb4BtuQIK37yWHmD07/XFFWm+9syMl96zPGORb3NqevCjzPbh
 xc9Q==
X-Gm-Message-State: APjAAAUAMkNdVHPPikbf8paRYM0HMYk2Krmtz20VLSmMD4oRuqRumUWP
 6kn78TEacxeyQRRRR0rspW9gQVMNAYw=
X-Google-Smtp-Source: APXvYqxK7j0RtN/at1Yc9xhBP7fLzH8lBmAzoxKkCKfXIIIcwBxJixoL+o2bWyD6Pk4szsQcNxWDQw==
X-Received: by 2002:ae9:eb95:: with SMTP id b143mr186471qkg.392.1582655713635; 
 Tue, 25 Feb 2020 10:35:13 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id i132sm2414836qke.41.2020.02.25.10.35.12
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Feb 2020 10:35:12 -0800 (PST)
Message-ID: <5E5568DF.7050508@gmail.com>
Date: Tue, 25 Feb 2020 13:35:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAFTrPL27EUtA9UTV+GsxhyFgwdPuEMEJLhBVaQ-35fuFyBByLw@mail.gmail.com>
 <5E548121.9080608@gmail.com>
 <CAFTrPL3od+eGsjSyernAQsm66ORpXA59Tmn+DPtRUb61zZW_YA@mail.gmail.com>
In-Reply-To: <CAFTrPL3od+eGsjSyernAQsm66ORpXA59Tmn+DPtRUb61zZW_YA@mail.gmail.com>
Subject: Re: [USRP-users] Time synchronization of multiple B210s not working
 with multiple channels
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============1915600688020434409=="
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

This is a multi-part message in MIME format.
--===============1915600688020434409==
Content-Type: multipart/alternative;
 boundary="------------030007090501060309070606"

This is a multi-part message in MIME format.
--------------030007090501060309070606
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 02/25/2020 09:33 AM, Michael Wentz via USRP-users wrote:
> Marcus,
>
> Thanks for the suggestion. I added set_subdev_spec('A:A A:B') for the 
> 2 channel case, but the results are the same.
>
> I also tried this code with a pair of X310s receiving. The results are 
> somewhat similar:
> - Channel 0 (A:0) across 2 devices: no delay
> - Channel 1 (B:0) across 2 devices: no delay
> - Channels 0 and 1 (A:0 B:0) across 2 devices: channel 0 is in sync 
> between the two, but channel 1 is not - and channel 1 is not in sync 
> with channel 0 on either device.
> - Unlike with the B210s, the X310s both report the same time after 
> streaming.
Let us focus on the B210 first.

I've been through your code, and I cannot find anything wrong with it.  
Now, I recall that there was a bug in earlier UHD with the two
   clocks in the B210 (each conceptual radio block in the FPGA includes 
its own time-of-day clock), and they wouldn't always get reset
   together, even with set_time_next_pps(), so there would be some skew.

This, or something related may be the root cause of your issue. The 
engineer who most recently worked on B210 is being consulted
   on this, and hopefully myself or Sam Reiter will have an answer soon.


>
> I've done this in the past with many X310s (each with 2 channels) with 
> success, but that was with an older/pre-RFNoC UHD circa 2016. I'm 
> using pretty much the same code here. Anything else I can try to time 
> sync multiple devices?
>
> -Michael
>
> On Mon, Feb 24, 2020 at 9:07 PM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 02/24/2020 05:10 PM, Michael Wentz via USRP-users wrote:
>>     Hi,
>>
>>     I'm trying to synchronize multiple B210s to receive data at the
>>     same time. I'm only concerned about sample time alignment across
>>     devices, and am aware there is a phase offset that will need to
>>     be calibrated out separately. I've had success with 1 RX channel
>>     across 2 B210s, but something seems wrong when using 2 RX
>>     channels across 2 B210s.
>>
>>     I've pasted a program below to help reproduce this issue. It uses
>>     1 B210 to TX noise and 2 separate B210s to RX at the same time.
>>     There is a 40 dB attenuator on the output of the transmitting
>>     B210, then a 4 way splitter, and equal length cables to both
>>     receivers on the other 2 B210s. Additionally, the 2 receiving
>>     B210s get 10 MHz and PPS from a common OctoClock-G.
>>
>>     Here are 10 observations of sample offsets between devices (1
>>     MSPS rate):
>>     Only channel 0 on both RX: [0,0,0,0,0,0,0,0,0,0]
>>     Only channel 1 on both RX: [0,0,0,0,0,0,0,0,0,0]
>>     Channels 0 and 1 simultaneously on both
>>     RX: [14,1,-126,48,2,-88,17,-204,-96,2]
>>
>>     In the 2 channel case both channels on one device are always
>>     aligned, but are offset from the channels on the other device.
>>     Both of the receiving B210s show the same time last PPS when
>>     asked before the streams start. The times in the RX metadata also
>>     match. But after the streams stop, the devices respond with
>>     different times - neither of which are correct - and the
>>     difference between them matches what I'm measuring.
>>
>>     I'm using UHD 3.14.1.1 and GNU Radio 3.8 on RHEL 7.7. Any ideas?
>>
>>     Thanks,
>>     Michael
>>
>>     ----------
>>
>>     #!/usr/bin/env python3
>>
>>     from gnuradio import gr, uhd, analog, blocks
>>     import time
>>     import numpy as np
>>
>>     tx_serial = '30D1***'
>>     rx_serials = ['3153***', '3153***']
>>     rx_channels = [0, 1]
>>
>>     n_rx = len(rx_serials)
>>     n_chan = len(rx_channels)
>>
>>     class top_block(gr.top_block):
>>         def __init__(self):
>>             gr.top_block.__init__(self)
>>
>>             # transmit path
>>             noise_src = analog.noise_source_c(analog.GR_GAUSSIAN, 0.1)
>>             tx_strm_args = uhd.stream_args(cpu_format='fc32',
>>     channels=[0])
>>             tx = uhd.usrp_sink('serial=' + tx_serial, tx_strm_args)
>>             tx.set_clock_rate(16e6)
>>             tx.set_samp_rate(1e6)
>>             tx.set_center_freq(1e9)
>>             tx.set_gain(40)
>>             tx.set_antenna('TX/RX')
>>             self.connect(noise_src, tx)
>>
>>             # receive path
>>             rx_strm_args = uhd.stream_args(cpu_format='fc32',
>>     channels=rx_channels)
>>             self.rx = [None]*n_rx
>>             head = [None]*n_rx*n_chan
>>             file_sink = [None]*n_rx*n_chan
>>             for i in range(n_rx):
>>                 self.rx[i] = uhd.usrp_source('serial=' +
>>     rx_serials[i], rx_strm_args)
>>                 self.rx[i].set_clock_rate(16e6)
>>                 self.rx[i].set_samp_rate(1e6)
>>                 self.rx[i].set_center_freq(1e9)
>>                 self.rx[i].set_gain(40)
>>                 self.rx[i].set_antenna('RX2')
>>                 self.rx[i].set_time_source('external')
>>                 self.rx[i].set_clock_source('external')
>>                 for j in range(n_chan):
>>                     ch = i*n_chan + j
>>                     head[ch] = blocks.head(2*gr.sizeof_float, 10000)
>>                     f = 'rx_%d%d.dat' % (i, j)
>>                     file_sink[ch] =
>>     blocks.file_sink(2*gr.sizeof_float, f)
>>                     file_sink[ch].set_unbuffered(True)
>>                     self.connect((self.rx[i], j), head[ch],
>>     file_sink[ch])
>>
>>             # make sure 10 MHz ref is locked
>>             for i in range(n_rx):
>>                 while not
>>     self.rx[i].get_mboard_sensor('ref_locked').to_bool():
>>                     print('RX %d waiting for 10 MHz ref lock...' % i)
>>                     time.sleep(1)
>>                 print('RX %d 10 MHz ref locked' % i)
>>
>>             # time sync the two receivers
>>             for i in range(n_rx):
>>                 t = self.rx[i].get_time_last_pps().get_real_secs()
>>                 print('RX %d time before align: %r' % (i, t))
>>             time_last_pps =
>>     self.rx[0].get_time_last_pps().get_real_secs()
>>             while time_last_pps ==
>>     self.rx[0].get_time_last_pps().get_real_secs():
>>                 time.sleep(0.1)
>>             for i in range(n_rx):
>>     self.rx[i].set_time_next_pps(uhd.time_spec_t(0))
>>             time_last_pps =
>>     self.rx[0].get_time_last_pps().get_real_secs()
>>             while time_last_pps ==
>>     self.rx[0].get_time_last_pps().get_real_secs():
>>                 time.sleep(0.1)
>>             for i in range(n_rx):
>>                 t = self.rx[i].get_time_last_pps().get_real_secs()
>>                 print('RX %d time after align: %r' % (i, t))
>>
>>             # collect in the future
>>             rx_time = uhd.time_spec_t(2)
>>             for i in range(n_rx):
>>                 self.rx[i].set_start_time(rx_time)
>>                 self.rx[i].set_recv_timeout(3)
>>
>>     # run flowgraph
>>     tb = top_block()
>>     tb.start()
>>     time.sleep(5)
>>     tb.stop()
>>
>>     # print time
>>     t = tb.rx[0].get_time_last_pps().get_real_secs()
>>     while t == tb.rx[0].get_time_last_pps().get_real_secs():
>>         time.sleep(0.1)
>>     for i in range(n_rx):
>>         t = tb.rx[i].get_time_last_pps().get_real_secs()
>>         print('RX %d time after run: %r' % (i, t))
>>
>>     # cross-correlate receivers and print delay
>>     y = [None]*n_rx*n_chan
>>     for i in range(n_rx):
>>         for j in range(n_chan):
>>             ch = i*n_chan + j
>>             y[ch] = np.fromfile('rx_%d%d.dat' % (i, j),
>>     dtype=np.complex64)
>>             r = np.correlate(y[0], y[ch], mode='full')
>>             max_lag = np.max([len(y[0]), len(y[ch])]) - 1
>>             lags = np.arange(-max_lag, max_lag+1)
>>             d = lags[np.argmax(np.abs(r))]
>>             print('RX %d, channel %d: %d samples' % (i, j, d))
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list
>>     USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>     IN the two channel case, you should probably set the subdev spec to:
>
>     A:A A:B
>
>     I didn't set a set_rx_subdev_spec()  in the code.
>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------030007090501060309070606
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/25/2020 09:33 AM, Michael Wentz
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAFTrPL3od+eGsjSyernAQsm66ORpXA59Tmn+DPtRUb61zZW_YA@mail.gmail.com"
      type="cite">
      <div dir="ltr">Marcus, 
        <div><br>
        </div>
        <div>Thanks for the suggestion. I added set_subdev_spec('A:A
          A:B') for the 2 channel case, but the results are the same.</div>
        <div><br>
        </div>
        <div>I also tried this code with a pair of X310s receiving. The
          results are somewhat similar:</div>
        <div>- Channel 0 (A:0) across 2 devices: no delay</div>
        <div>- Channel 1 (B:0) across 2 devices: no delay</div>
        <div>- Channels 0 and 1 (A:0 B:0) across 2 devices: channel 0 is
          in sync between the two, but channel 1 is not - and channel 1
          is not in sync with channel 0 on either device.</div>
        <div>- Unlike with the B210s, the X310s both report the same
          time after streaming.</div>
      </div>
    </blockquote>
    Let us focus on the B210 first.<br>
    <br>
    I've been through your code, and I cannot find anything wrong with
    it.  Now, I recall that there was a bug in earlier UHD with the two<br>
      clocks in the B210 (each conceptual radio block in the FPGA
    includes its own time-of-day clock), and they wouldn't always get
    reset<br>
      together, even with set_time_next_pps(), so there would be some
    skew.<br>
    <br>
    This, or something related may be the root cause of your issue.  
    The engineer who most recently worked on B210 is being consulted<br>
      on this, and hopefully myself or Sam Reiter will have an answer
    soon.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAFTrPL3od+eGsjSyernAQsm66ORpXA59Tmn+DPtRUb61zZW_YA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
        </div>
        <div>I've done this in the past with many X310s (each with 2
          channels) with success, but that was with an older/pre-RFNoC
          UHD circa 2016. I'm using pretty much the same code here.
          Anything else I can try to time sync multiple devices?</div>
        <div><br>
        </div>
        <div>-Michael</div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Mon, Feb 24, 2020 at 9:07
          PM Marcus D. Leech via USRP-users &lt;<a
            moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div>On 02/24/2020 05:10 PM, Michael Wentz via USRP-users
              wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">Hi,
                <div><br>
                </div>
                <div>I'm trying to synchronize multiple B210s to receive
                  data at the same time. I'm only concerned about sample
                  time alignment across devices, and am aware there is a
                  phase offset that will need to be calibrated out
                  separately. I've had success with 1 RX channel across
                  2 B210s, but something seems wrong when using 2 RX
                  channels across 2 B210s.</div>
                <div><br>
                </div>
                <div>I've pasted a program below to help reproduce this
                  issue. It uses 1 B210 to TX noise and 2 separate B210s
                  to RX at the same time. There is a 40 dB attenuator on
                  the output of the transmitting B210, then a 4 way
                  splitter, and equal length cables to both receivers on
                  the other 2 B210s. Additionally, the 2 receiving B210s
                  get 10 MHz and PPS from a common OctoClock-G.<br>
                </div>
                <div><br>
                </div>
                <div>Here are 10 observations of sample offsets between
                  devices (1 MSPS rate):</div>
                <div>Only channel 0 on both RX: [0,0,0,0,0,0,0,0,0,0]</div>
                <div>Only channel 1 on both RX: [0,0,0,0,0,0,0,0,0,0]</div>
                <div>Channels 0 and 1 simultaneously on both
                  RX: [14,1,-126,48,2,-88,17,-204,-96,2]</div>
                <div><br>
                </div>
                <div>In the 2 channel case both channels on one device
                  are always aligned, but are offset from the channels
                  on the other device. Both of the receiving B210s show
                  the same time last PPS when asked before the streams
                  start. The times in the RX metadata also match. But
                  after the streams stop, the devices respond with
                  different times - neither of which are correct - and
                  the difference between them matches what I'm
                  measuring.</div>
                <div><br>
                </div>
                <div>I'm using UHD 3.14.1.1 and GNU Radio 3.8 on RHEL
                  7.7. Any ideas?</div>
                <div><br>
                </div>
                <div>Thanks,</div>
                <div>Michael</div>
                <div><br>
                </div>
                <div>----------</div>
                <div><br>
                </div>
                <div>#!/usr/bin/env python3<br>
                  <br>
                  from gnuradio import gr, uhd, analog, blocks<br>
                  import time<br>
                  import numpy as np<br>
                  <br>
                  tx_serial = '30D1***'<br>
                  rx_serials = ['3153***', '3153***']<br>
                  rx_channels = [0, 1]<br>
                  <br>
                  n_rx = len(rx_serials)<br>
                  n_chan = len(rx_channels)<br>
                  <br>
                  class top_block(gr.top_block):<br>
                      def __init__(self):<br>
                          gr.top_block.__init__(self)<br>
                  <br>
                          # transmit path<br>
                          noise_src =
                  analog.noise_source_c(analog.GR_GAUSSIAN, 0.1)<br>
                          tx_strm_args =
                  uhd.stream_args(cpu_format='fc32', channels=[0])<br>
                          tx = uhd.usrp_sink('serial=' + tx_serial,
                  tx_strm_args)<br>
                          tx.set_clock_rate(16e6)<br>
                          tx.set_samp_rate(1e6)<br>
                          tx.set_center_freq(1e9)<br>
                          tx.set_gain(40)<br>
                          tx.set_antenna('TX/RX')<br>
                          self.connect(noise_src, tx)<br>
                  <br>
                          # receive path<br>
                          rx_strm_args =
                  uhd.stream_args(cpu_format='fc32',
                  channels=rx_channels)<br>
                          self.rx = [None]*n_rx<br>
                          head = [None]*n_rx*n_chan<br>
                          file_sink = [None]*n_rx*n_chan<br>
                          for i in range(n_rx):<br>
                              self.rx[i] = uhd.usrp_source('serial=' +
                  rx_serials[i], rx_strm_args)<br>
                              self.rx[i].set_clock_rate(16e6)<br>
                              self.rx[i].set_samp_rate(1e6)<br>
                              self.rx[i].set_center_freq(1e9)<br>
                              self.rx[i].set_gain(40)<br>
                              self.rx[i].set_antenna('RX2')<br>
                              self.rx[i].set_time_source('external')<br>
                              self.rx[i].set_clock_source('external')<br>
                              for j in range(n_chan):<br>
                                  ch = i*n_chan + j<br>
                                  head[ch] =
                  blocks.head(2*gr.sizeof_float, 10000)<br>
                                  f = 'rx_%d%d.dat' % (i, j)<br>
                                  file_sink[ch] =
                  blocks.file_sink(2*gr.sizeof_float, f)<br>
                                  file_sink[ch].set_unbuffered(True)<br>
                                  self.connect((self.rx[i], j),
                  head[ch], file_sink[ch])<br>
                  <br>
                          # make sure 10 MHz ref is locked<br>
                          for i in range(n_rx):<br>
                              while not
                  self.rx[i].get_mboard_sensor('ref_locked').to_bool():<br>
                                  print('RX %d waiting for 10 MHz ref
                  lock...' % i)<br>
                                  time.sleep(1)<br>
                              print('RX %d 10 MHz ref locked' % i)<br>
                  <br>
                          # time sync the two receivers<br>
                          for i in range(n_rx):<br>
                              t =
                  self.rx[i].get_time_last_pps().get_real_secs()<br>
                              print('RX %d time before align: %r' % (i,
                  t))<br>
                          time_last_pps =
                  self.rx[0].get_time_last_pps().get_real_secs()<br>
                          while time_last_pps ==
                  self.rx[0].get_time_last_pps().get_real_secs():<br>
                              time.sleep(0.1)<br>
                          for i in range(n_rx):<br>
                             
                  self.rx[i].set_time_next_pps(uhd.time_spec_t(0))<br>
                          time_last_pps =
                  self.rx[0].get_time_last_pps().get_real_secs()<br>
                          while time_last_pps ==
                  self.rx[0].get_time_last_pps().get_real_secs():<br>
                              time.sleep(0.1)<br>
                          for i in range(n_rx):<br>
                              t =
                  self.rx[i].get_time_last_pps().get_real_secs()<br>
                              print('RX %d time after align: %r' % (i,
                  t))<br>
                  <br>
                          # collect in the future<br>
                          rx_time = uhd.time_spec_t(2)<br>
                          for i in range(n_rx):<br>
                              self.rx[i].set_start_time(rx_time)<br>
                              self.rx[i].set_recv_timeout(3)<br>
                  <br>
                  # run flowgraph<br>
                  tb = top_block()<br>
                  tb.start()<br>
                  time.sleep(5)<br>
                  tb.stop()<br>
                  <br>
                  # print time<br>
                  t = tb.rx[0].get_time_last_pps().get_real_secs()<br>
                  while t ==
                  tb.rx[0].get_time_last_pps().get_real_secs():<br>
                      time.sleep(0.1)<br>
                  for i in range(n_rx):<br>
                      t = tb.rx[i].get_time_last_pps().get_real_secs()<br>
                      print('RX %d time after run: %r' % (i, t))<br>
                  <br>
                  # cross-correlate receivers and print delay<br>
                  y = [None]*n_rx*n_chan<br>
                  for i in range(n_rx):<br>
                      for j in range(n_chan):<br>
                          ch = i*n_chan + j<br>
                          y[ch] = np.fromfile('rx_%d%d.dat' % (i, j),
                  dtype=np.complex64)<br>
                          r = np.correlate(y[0], y[ch], mode='full')<br>
                          max_lag = np.max([len(y[0]), len(y[ch])]) - 1<br>
                          lags = np.arange(-max_lag, max_lag+1)<br>
                          d = lags[np.argmax(np.abs(r))]<br>
                          print('RX %d, channel %d: %d samples' % (i, j,
                  d))<br>
                </div>
              </div>
              <br>
              <fieldset></fieldset>
              <br>
              <pre>_______________________________________________
USRP-users mailing list
<a moz-do-not-send="true" href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a>
<a moz-do-not-send="true" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
            </blockquote>
            IN the two channel case, you should probably set the subdev
            spec to:<br>
            <br>
            A:A A:B<br>
            <br>
            I didn't set a set_rx_subdev_spec()  in the code.<br>
            <br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------030007090501060309070606--


--===============1915600688020434409==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1915600688020434409==--

