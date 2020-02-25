Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1818216B78C
	for <lists+usrp-users@lfdr.de>; Tue, 25 Feb 2020 03:07:18 +0100 (CET)
Received: from [::1] (port=45686 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6Pcu-00086Z-9Y; Mon, 24 Feb 2020 21:07:12 -0500
Received: from mail-qv1-f42.google.com ([209.85.219.42]:35518)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1j6Pcq-0007rG-GT
 for usrp-users@lists.ettus.com; Mon, 24 Feb 2020 21:07:08 -0500
Received: by mail-qv1-f42.google.com with SMTP id u10so5070167qvi.2
 for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2020 18:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=CKO/5HkZ0G8VzoOeLRFz6ESvEVjt8VKgNF0GiPElTXI=;
 b=i9BNe+PoMrZM3nknbgWFXpxqHjLs27VaC3O730NKHjPRDmUnBhxGpZcoPFyDdxp74T
 sednuxLcTwqDI0FbgIG5mQwjWD6ErFLiJ8cv2q2oY0jrZ97/Br07iQZ2zHrX2w6voneo
 OWd+ztVusTqWNTUH1O1DjW3l1KS2ZilD57zuyn2Xsj01dYWfJjjVC3LcPJsEga9gfNiG
 o/jNg1rgVHarjfWywTYZs6C2ftF/+tprzpblH5sOsW3PvZwy8AKotYVtsJAt5hj8d877
 Y+5Tx70jVo8zpacDY+XvqbnwDCnJsKi/VTrL6+g4CBD7wD5+qkZuJaqWcUicMyGeHrim
 bOuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=CKO/5HkZ0G8VzoOeLRFz6ESvEVjt8VKgNF0GiPElTXI=;
 b=XGbuO3IKK1dbr1b6870l/pJHqnkDIeOxtFFWmHjmt34Qhcnj/8ka5WXM+TP4aWJd4q
 BpJc3H/Yvqv05JsQzcVm5gU4veKUmOxwlmIBMlkSkL6p4YG79vj4BbwlZyY6/xDLbs19
 aLYBmmCc4P+B1W8gP7hYiB7LiSAXDNMRLPADG93iOpiWd0svJd6AmDOAjpTO6It5hU2i
 CosO9hUcl8ilFYAf5UEn+n6UTirID2eCiMa1lnytvSln+sVFEU36GpJaO7+NBqF0UAHm
 9XMJrodz5uAOo8TjII/PMNUEixvU1krY0BfgQQKJaigDYvvwDCl+5t69GR0cnwR4pSGm
 7nYA==
X-Gm-Message-State: APjAAAW3tUockEKcZQUIRpWIhOMbSSJfdA3TJcTDqL5mSsKb1AEvQ4mm
 hlwelQhrIOb+8lAruj0lLI1VJrJxtl0=
X-Google-Smtp-Source: APXvYqz3uh5uMFk3PNlCclbit3K7eweS+Yk0toFl5Ngg2NghDA76oJbvmI7kBJ2ss250fnViQO/QHQ==
X-Received: by 2002:ad4:42aa:: with SMTP id e10mr48313077qvr.92.1582596387645; 
 Mon, 24 Feb 2020 18:06:27 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id c204sm1752323qke.2.2020.02.24.18.06.26
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Feb 2020 18:06:27 -0800 (PST)
Message-ID: <5E548121.9080608@gmail.com>
Date: Mon, 24 Feb 2020 21:06:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAFTrPL27EUtA9UTV+GsxhyFgwdPuEMEJLhBVaQ-35fuFyBByLw@mail.gmail.com>
In-Reply-To: <CAFTrPL27EUtA9UTV+GsxhyFgwdPuEMEJLhBVaQ-35fuFyBByLw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7945915244980571813=="
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
--===============7945915244980571813==
Content-Type: multipart/alternative;
 boundary="------------020006010106090109050600"

This is a multi-part message in MIME format.
--------------020006010106090109050600
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 02/24/2020 05:10 PM, Michael Wentz via USRP-users wrote:
> Hi,
>
> I'm trying to synchronize multiple B210s to receive data at the same 
> time. I'm only concerned about sample time alignment across devices, 
> and am aware there is a phase offset that will need to be calibrated 
> out separately. I've had success with 1 RX channel across 2 B210s, but 
> something seems wrong when using 2 RX channels across 2 B210s.
>
> I've pasted a program below to help reproduce this issue. It uses 1 
> B210 to TX noise and 2 separate B210s to RX at the same time. There is 
> a 40 dB attenuator on the output of the transmitting B210, then a 4 
> way splitter, and equal length cables to both receivers on the other 2 
> B210s. Additionally, the 2 receiving B210s get 10 MHz and PPS from a 
> common OctoClock-G.
>
> Here are 10 observations of sample offsets between devices (1 MSPS rate):
> Only channel 0 on both RX: [0,0,0,0,0,0,0,0,0,0]
> Only channel 1 on both RX: [0,0,0,0,0,0,0,0,0,0]
> Channels 0 and 1 simultaneously on both 
> RX: [14,1,-126,48,2,-88,17,-204,-96,2]
>
> In the 2 channel case both channels on one device are always aligned, 
> but are offset from the channels on the other device. Both of the 
> receiving B210s show the same time last PPS when asked before the 
> streams start. The times in the RX metadata also match. But after the 
> streams stop, the devices respond with different times - neither of 
> which are correct - and the difference between them matches what I'm 
> measuring.
>
> I'm using UHD 3.14.1.1 and GNU Radio 3.8 on RHEL 7.7. Any ideas?
>
> Thanks,
> Michael
>
> ----------
>
> #!/usr/bin/env python3
>
> from gnuradio import gr, uhd, analog, blocks
> import time
> import numpy as np
>
> tx_serial = '30D1***'
> rx_serials = ['3153***', '3153***']
> rx_channels = [0, 1]
>
> n_rx = len(rx_serials)
> n_chan = len(rx_channels)
>
> class top_block(gr.top_block):
>     def __init__(self):
>         gr.top_block.__init__(self)
>
>         # transmit path
>         noise_src = analog.noise_source_c(analog.GR_GAUSSIAN, 0.1)
>         tx_strm_args = uhd.stream_args(cpu_format='fc32', channels=[0])
>         tx = uhd.usrp_sink('serial=' + tx_serial, tx_strm_args)
>         tx.set_clock_rate(16e6)
>         tx.set_samp_rate(1e6)
>         tx.set_center_freq(1e9)
>         tx.set_gain(40)
>         tx.set_antenna('TX/RX')
>         self.connect(noise_src, tx)
>
>         # receive path
>         rx_strm_args = uhd.stream_args(cpu_format='fc32', 
> channels=rx_channels)
>         self.rx = [None]*n_rx
>         head = [None]*n_rx*n_chan
>         file_sink = [None]*n_rx*n_chan
>         for i in range(n_rx):
>             self.rx[i] = uhd.usrp_source('serial=' + rx_serials[i], 
> rx_strm_args)
>             self.rx[i].set_clock_rate(16e6)
>             self.rx[i].set_samp_rate(1e6)
>             self.rx[i].set_center_freq(1e9)
>             self.rx[i].set_gain(40)
>             self.rx[i].set_antenna('RX2')
>             self.rx[i].set_time_source('external')
>             self.rx[i].set_clock_source('external')
>             for j in range(n_chan):
>                 ch = i*n_chan + j
>                 head[ch] = blocks.head(2*gr.sizeof_float, 10000)
>                 f = 'rx_%d%d.dat' % (i, j)
>                 file_sink[ch] = blocks.file_sink(2*gr.sizeof_float, f)
>                 file_sink[ch].set_unbuffered(True)
>                 self.connect((self.rx[i], j), head[ch], file_sink[ch])
>
>         # make sure 10 MHz ref is locked
>         for i in range(n_rx):
>             while not 
> self.rx[i].get_mboard_sensor('ref_locked').to_bool():
>                 print('RX %d waiting for 10 MHz ref lock...' % i)
>                 time.sleep(1)
>             print('RX %d 10 MHz ref locked' % i)
>
>         # time sync the two receivers
>         for i in range(n_rx):
>             t = self.rx[i].get_time_last_pps().get_real_secs()
>             print('RX %d time before align: %r' % (i, t))
>         time_last_pps = self.rx[0].get_time_last_pps().get_real_secs()
>         while time_last_pps == 
> self.rx[0].get_time_last_pps().get_real_secs():
>             time.sleep(0.1)
>         for i in range(n_rx):
>             self.rx[i].set_time_next_pps(uhd.time_spec_t(0))
>         time_last_pps = self.rx[0].get_time_last_pps().get_real_secs()
>         while time_last_pps == 
> self.rx[0].get_time_last_pps().get_real_secs():
>             time.sleep(0.1)
>         for i in range(n_rx):
>             t = self.rx[i].get_time_last_pps().get_real_secs()
>             print('RX %d time after align: %r' % (i, t))
>
>         # collect in the future
>         rx_time = uhd.time_spec_t(2)
>         for i in range(n_rx):
>             self.rx[i].set_start_time(rx_time)
>             self.rx[i].set_recv_timeout(3)
>
> # run flowgraph
> tb = top_block()
> tb.start()
> time.sleep(5)
> tb.stop()
>
> # print time
> t = tb.rx[0].get_time_last_pps().get_real_secs()
> while t == tb.rx[0].get_time_last_pps().get_real_secs():
>     time.sleep(0.1)
> for i in range(n_rx):
>     t = tb.rx[i].get_time_last_pps().get_real_secs()
>     print('RX %d time after run: %r' % (i, t))
>
> # cross-correlate receivers and print delay
> y = [None]*n_rx*n_chan
> for i in range(n_rx):
>     for j in range(n_chan):
>         ch = i*n_chan + j
>         y[ch] = np.fromfile('rx_%d%d.dat' % (i, j), dtype=np.complex64)
>         r = np.correlate(y[0], y[ch], mode='full')
>         max_lag = np.max([len(y[0]), len(y[ch])]) - 1
>         lags = np.arange(-max_lag, max_lag+1)
>         d = lags[np.argmax(np.abs(r))]
>         print('RX %d, channel %d: %d samples' % (i, j, d))
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
IN the two channel case, you should probably set the subdev spec to:

A:A A:B

I didn't set a set_rx_subdev_spec()  in the code.



--------------020006010106090109050600
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/24/2020 05:10 PM, Michael Wentz
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAFTrPL27EUtA9UTV+GsxhyFgwdPuEMEJLhBVaQ-35fuFyBByLw@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi,
        <div><br>
        </div>
        <div>I'm trying to synchronize multiple B210s to receive data at
          the same time. I'm only concerned about sample time alignment
          across devices, and am aware there is a phase offset that will
          need to be calibrated out separately. I've had success with 1
          RX channel across 2 B210s, but something seems wrong when
          using 2 RX channels across 2 B210s.</div>
        <div><br>
        </div>
        <div>I've pasted a program below to help reproduce this issue.
          It uses 1 B210 to TX noise and 2 separate B210s to RX at the
          same time. There is a 40 dB attenuator on the output of the
          transmitting B210, then a 4 way splitter, and equal length
          cables to both receivers on the other 2 B210s. Additionally,
          the 2 receiving B210s get 10 MHz and PPS from a common
          OctoClock-G.<br>
        </div>
        <div><br>
        </div>
        <div>Here are 10 observations of sample offsets between devices
          (1 MSPS rate):</div>
        <div>Only channel 0 on both RX: [0,0,0,0,0,0,0,0,0,0]</div>
        <div>Only channel 1 on both RX: [0,0,0,0,0,0,0,0,0,0]</div>
        <div>Channels 0 and 1 simultaneously on both
          RX: [14,1,-126,48,2,-88,17,-204,-96,2]</div>
        <div><br>
        </div>
        <div>In the 2 channel case both channels on one device are
          always aligned, but are offset from the channels on the other
          device. Both of the receiving B210s show the same time last
          PPS when asked before the streams start. The times in the RX
          metadata also match. But after the streams stop, the devices
          respond with different times - neither of which are correct -
          and the difference between them matches what I'm measuring.</div>
        <div><br>
        </div>
        <div>I'm using UHD 3.14.1.1 and GNU Radio 3.8 on RHEL 7.7. Any
          ideas?</div>
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
                  noise_src = analog.noise_source_c(analog.GR_GAUSSIAN,
          0.1)<br>
                  tx_strm_args = uhd.stream_args(cpu_format='fc32',
          channels=[0])<br>
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
                  rx_strm_args = uhd.stream_args(cpu_format='fc32',
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
                          head[ch] = blocks.head(2*gr.sizeof_float,
          10000)<br>
                          f = 'rx_%d%d.dat' % (i, j)<br>
                          file_sink[ch] =
          blocks.file_sink(2*gr.sizeof_float, f)<br>
                          file_sink[ch].set_unbuffered(True)<br>
                          self.connect((self.rx[i], j), head[ch],
          file_sink[ch])<br>
          <br>
                  # make sure 10 MHz ref is locked<br>
                  for i in range(n_rx):<br>
                      while not
          self.rx[i].get_mboard_sensor('ref_locked').to_bool():<br>
                          print('RX %d waiting for 10 MHz ref lock...' %
          i)<br>
                          time.sleep(1)<br>
                      print('RX %d 10 MHz ref locked' % i)<br>
          <br>
                  # time sync the two receivers<br>
                  for i in range(n_rx):<br>
                      t = self.rx[i].get_time_last_pps().get_real_secs()<br>
                      print('RX %d time before align: %r' % (i, t))<br>
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
                      t = self.rx[i].get_time_last_pps().get_real_secs()<br>
                      print('RX %d time after align: %r' % (i, t))<br>
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
          while t == tb.rx[0].get_time_last_pps().get_real_secs():<br>
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
                  print('RX %d, channel %d: %d samples' % (i, j, d))<br>
        </div>
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
    IN the two channel case, you should probably set the subdev spec to:<br>
    <br>
    A:A A:B<br>
    <br>
    I didn't set a set_rx_subdev_spec()  in the code.<br>
    <br>
    <br>
  </body>
</html>

--------------020006010106090109050600--


--===============7945915244980571813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7945915244980571813==--

