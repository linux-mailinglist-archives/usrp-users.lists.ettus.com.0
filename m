Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E60C170CD0
	for <lists+usrp-users@lfdr.de>; Thu, 27 Feb 2020 00:54:36 +0100 (CET)
Received: from [::1] (port=57858 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j76Va-0000pN-Pm; Wed, 26 Feb 2020 18:54:30 -0500
Received: from mail-qk1-f180.google.com ([209.85.222.180]:36293)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mchlwntz@gmail.com>) id 1j76VW-0000iu-Ux
 for usrp-users@lists.ettus.com; Wed, 26 Feb 2020 18:54:26 -0500
Received: by mail-qk1-f180.google.com with SMTP id f3so1450869qkh.3
 for <usrp-users@lists.ettus.com>; Wed, 26 Feb 2020 15:54:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=zCNYOZrRH6HLO2xS8p55fxMovjxYkrpx34tFt14idWs=;
 b=mKQTDZbXDKglRpI5UwkvsGkUkFNepWcn4AOmyrqaElM+BuPQvF6rljwBoA5eQaEYPW
 ALQ4hm4+2pyBnm2D/ZMG1mnebNDfEqnke5b4+KL4lMoq445N2Oq+E+nnHekQhKU+rtKW
 6MerertBbkg6NVrMr/pgy4O4zbBTU3dyRSuz1s0Hhv2HnAPkR2SDiEVRNqT3kGUEAzPv
 4p/Su4P9hAWS4TCOF0rh3+S0ue8YB81sxkObYVtFpEKk8ihL1qvmkZrtPI+pt6NbBmYJ
 slIq0EnDz0SXM8VmJRNb6jIJEkJCizH65G10eayiuOwBC0hinbvKcugGHzEnJtacCCIJ
 dFCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=zCNYOZrRH6HLO2xS8p55fxMovjxYkrpx34tFt14idWs=;
 b=ToWnI9ckNkTxUwC6Nnzyrb1yupwZXuIo6dJAhii4bUmAohb39TcKgtzHKrB9jt6KTA
 ihFl8a+xOe87pdlsejwMJNluIAgaP0WazGnNUxSE4kfSCH3RcIaEXKuJTutc9DMb4mWN
 giPfmGYhtO0RmlUa1BZK2S/9u7/Hv7e56+ixhI8VIsZTcuwE9dB1qR6RkaFO5U1Hwvsq
 04DSos36keNfpVBfr5SW/jGUbG5wGaOG/NFhsHktyOMrUHZk3m+bbzW1CTRd69FDJOoH
 vluwprRWq4BtF2GrUdgRquS8qU/xekuM/JdcguKvU4OcyOV1Z8V3t0oIMrh3+gBCS7/W
 4jzw==
X-Gm-Message-State: APjAAAUKSWmHGOUSHr6V/X0jhcnhf+X8GcKtdmJZSiJvLYcn1o57JMta
 H/icoU63FBT/9uXuZEmlZBghYIXgBPbtZ3v93Mjc17qi
X-Google-Smtp-Source: APXvYqzH0XpgNFOgDBVeMW8G6maaRoq76/W7128VdDCCA9zvbHDm7EmucXIwNMfkV10tt+CYiaJJzvjx1VZGSzuaKJg=
X-Received: by 2002:a05:620a:1426:: with SMTP id
 k6mr2080700qkj.276.1582761224789; 
 Wed, 26 Feb 2020 15:53:44 -0800 (PST)
MIME-Version: 1.0
References: <CAFTrPL27EUtA9UTV+GsxhyFgwdPuEMEJLhBVaQ-35fuFyBByLw@mail.gmail.com>
 <5E548121.9080608@gmail.com>
 <CAFTrPL3od+eGsjSyernAQsm66ORpXA59Tmn+DPtRUb61zZW_YA@mail.gmail.com>
 <5E5568DF.7050508@gmail.com>
In-Reply-To: <5E5568DF.7050508@gmail.com>
Date: Wed, 26 Feb 2020 18:53:33 -0500
Message-ID: <CAFTrPL1GdNDc2PUY4E9M8Tku6sOwQ0jq5qkaAS5XrKmLGwXsnQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
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
From: Michael Wentz via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Wentz <mchlwntz@gmail.com>
Content-Type: multipart/mixed; boundary="===============1242011514334301363=="
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

--===============1242011514334301363==
Content-Type: multipart/alternative; boundary="0000000000009162c3059f8350c0"

--0000000000009162c3059f8350c0
Content-Type: text/plain; charset="UTF-8"

Thanks Marcus. I've done a little more debugging with a simple C++ example
and the B210, and discovered that calling get_rx_stream() seems to be
slightly changing the device time by random amounts when 2 channels are
used. It doesn't matter if I actually issue a stream command or collect any
data. Maybe that will be helpful in reproducing/isolating the issue without
the three B210 setup I was using before.

-Michael

On Tue, Feb 25, 2020 at 1:35 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 02/25/2020 09:33 AM, Michael Wentz via USRP-users wrote:
>
> Marcus,
>
> Thanks for the suggestion. I added set_subdev_spec('A:A A:B') for the 2
> channel case, but the results are the same.
>
> I also tried this code with a pair of X310s receiving. The results are
> somewhat similar:
> - Channel 0 (A:0) across 2 devices: no delay
> - Channel 1 (B:0) across 2 devices: no delay
> - Channels 0 and 1 (A:0 B:0) across 2 devices: channel 0 is in sync
> between the two, but channel 1 is not - and channel 1 is not in sync with
> channel 0 on either device.
> - Unlike with the B210s, the X310s both report the same time after
> streaming.
>
> Let us focus on the B210 first.
>
> I've been through your code, and I cannot find anything wrong with it.
> Now, I recall that there was a bug in earlier UHD with the two
>   clocks in the B210 (each conceptual radio block in the FPGA includes its
> own time-of-day clock), and they wouldn't always get reset
>   together, even with set_time_next_pps(), so there would be some skew.
>
> This, or something related may be the root cause of your issue.   The
> engineer who most recently worked on B210 is being consulted
>   on this, and hopefully myself or Sam Reiter will have an answer soon.
>
>
>
> I've done this in the past with many X310s (each with 2 channels) with
> success, but that was with an older/pre-RFNoC UHD circa 2016. I'm using
> pretty much the same code here. Anything else I can try to time sync
> multiple devices?
>
> -Michael
>
> On Mon, Feb 24, 2020 at 9:07 PM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 02/24/2020 05:10 PM, Michael Wentz via USRP-users wrote:
>>
>> Hi,
>>
>> I'm trying to synchronize multiple B210s to receive data at the same
>> time. I'm only concerned about sample time alignment across devices, and am
>> aware there is a phase offset that will need to be calibrated out
>> separately. I've had success with 1 RX channel across 2 B210s, but
>> something seems wrong when using 2 RX channels across 2 B210s.
>>
>> I've pasted a program below to help reproduce this issue. It uses 1 B210
>> to TX noise and 2 separate B210s to RX at the same time. There is a 40 dB
>> attenuator on the output of the transmitting B210, then a 4 way splitter,
>> and equal length cables to both receivers on the other 2 B210s.
>> Additionally, the 2 receiving B210s get 10 MHz and PPS from a common
>> OctoClock-G.
>>
>> Here are 10 observations of sample offsets between devices (1 MSPS rate):
>> Only channel 0 on both RX: [0,0,0,0,0,0,0,0,0,0]
>> Only channel 1 on both RX: [0,0,0,0,0,0,0,0,0,0]
>> Channels 0 and 1 simultaneously on both
>> RX: [14,1,-126,48,2,-88,17,-204,-96,2]
>>
>> In the 2 channel case both channels on one device are always aligned, but
>> are offset from the channels on the other device. Both of the receiving
>> B210s show the same time last PPS when asked before the streams start. The
>> times in the RX metadata also match. But after the streams stop, the
>> devices respond with different times - neither of which are correct - and
>> the difference between them matches what I'm measuring.
>>
>> I'm using UHD 3.14.1.1 and GNU Radio 3.8 on RHEL 7.7. Any ideas?
>>
>> Thanks,
>> Michael
>>
>> ----------
>>
>> #!/usr/bin/env python3
>>
>> from gnuradio import gr, uhd, analog, blocks
>> import time
>> import numpy as np
>>
>> tx_serial = '30D1***'
>> rx_serials = ['3153***', '3153***']
>> rx_channels = [0, 1]
>>
>> n_rx = len(rx_serials)
>> n_chan = len(rx_channels)
>>
>> class top_block(gr.top_block):
>>     def __init__(self):
>>         gr.top_block.__init__(self)
>>
>>         # transmit path
>>         noise_src = analog.noise_source_c(analog.GR_GAUSSIAN, 0.1)
>>         tx_strm_args = uhd.stream_args(cpu_format='fc32', channels=[0])
>>         tx = uhd.usrp_sink('serial=' + tx_serial, tx_strm_args)
>>         tx.set_clock_rate(16e6)
>>         tx.set_samp_rate(1e6)
>>         tx.set_center_freq(1e9)
>>         tx.set_gain(40)
>>         tx.set_antenna('TX/RX')
>>         self.connect(noise_src, tx)
>>
>>         # receive path
>>         rx_strm_args = uhd.stream_args(cpu_format='fc32',
>> channels=rx_channels)
>>         self.rx = [None]*n_rx
>>         head = [None]*n_rx*n_chan
>>         file_sink = [None]*n_rx*n_chan
>>         for i in range(n_rx):
>>             self.rx[i] = uhd.usrp_source('serial=' + rx_serials[i],
>> rx_strm_args)
>>             self.rx[i].set_clock_rate(16e6)
>>             self.rx[i].set_samp_rate(1e6)
>>             self.rx[i].set_center_freq(1e9)
>>             self.rx[i].set_gain(40)
>>             self.rx[i].set_antenna('RX2')
>>             self.rx[i].set_time_source('external')
>>             self.rx[i].set_clock_source('external')
>>             for j in range(n_chan):
>>                 ch = i*n_chan + j
>>                 head[ch] = blocks.head(2*gr.sizeof_float, 10000)
>>                 f = 'rx_%d%d.dat' % (i, j)
>>                 file_sink[ch] = blocks.file_sink(2*gr.sizeof_float, f)
>>                 file_sink[ch].set_unbuffered(True)
>>                 self.connect((self.rx[i], j), head[ch], file_sink[ch])
>>
>>         # make sure 10 MHz ref is locked
>>         for i in range(n_rx):
>>             while not
>> self.rx[i].get_mboard_sensor('ref_locked').to_bool():
>>                 print('RX %d waiting for 10 MHz ref lock...' % i)
>>                 time.sleep(1)
>>             print('RX %d 10 MHz ref locked' % i)
>>
>>         # time sync the two receivers
>>         for i in range(n_rx):
>>             t = self.rx[i].get_time_last_pps().get_real_secs()
>>             print('RX %d time before align: %r' % (i, t))
>>         time_last_pps = self.rx[0].get_time_last_pps().get_real_secs()
>>         while time_last_pps ==
>> self.rx[0].get_time_last_pps().get_real_secs():
>>             time.sleep(0.1)
>>         for i in range(n_rx):
>>             self.rx[i].set_time_next_pps(uhd.time_spec_t(0))
>>         time_last_pps = self.rx[0].get_time_last_pps().get_real_secs()
>>         while time_last_pps ==
>> self.rx[0].get_time_last_pps().get_real_secs():
>>             time.sleep(0.1)
>>         for i in range(n_rx):
>>             t = self.rx[i].get_time_last_pps().get_real_secs()
>>             print('RX %d time after align: %r' % (i, t))
>>
>>         # collect in the future
>>         rx_time = uhd.time_spec_t(2)
>>         for i in range(n_rx):
>>             self.rx[i].set_start_time(rx_time)
>>             self.rx[i].set_recv_timeout(3)
>>
>> # run flowgraph
>> tb = top_block()
>> tb.start()
>> time.sleep(5)
>> tb.stop()
>>
>> # print time
>> t = tb.rx[0].get_time_last_pps().get_real_secs()
>> while t == tb.rx[0].get_time_last_pps().get_real_secs():
>>     time.sleep(0.1)
>> for i in range(n_rx):
>>     t = tb.rx[i].get_time_last_pps().get_real_secs()
>>     print('RX %d time after run: %r' % (i, t))
>>
>> # cross-correlate receivers and print delay
>> y = [None]*n_rx*n_chan
>> for i in range(n_rx):
>>     for j in range(n_chan):
>>         ch = i*n_chan + j
>>         y[ch] = np.fromfile('rx_%d%d.dat' % (i, j), dtype=np.complex64)
>>         r = np.correlate(y[0], y[ch], mode='full')
>>         max_lag = np.max([len(y[0]), len(y[ch])]) - 1
>>         lags = np.arange(-max_lag, max_lag+1)
>>         d = lags[np.argmax(np.abs(r))]
>>         print('RX %d, channel %d: %d samples' % (i, j, d))
>>
>>
>> _______________________________________________
>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>> IN the two channel case, you should probably set the subdev spec to:
>>
>> A:A A:B
>>
>> I didn't set a set_rx_subdev_spec()  in the code.
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009162c3059f8350c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Marcus. I&#39;ve done a little more debugging with =
a simple C++ example and the B210, and discovered that calling get_rx_strea=
m() seems to be slightly changing the device time by random amounts when 2 =
channels are used. It doesn&#39;t matter if I actually issue a stream comma=
nd or collect any data. Maybe that will be helpful in reproducing/isolating=
 the issue without the three B210 setup I was using before.<div><div><div><=
br></div><div>-Michael</div></div></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 25, 2020 at 1:35 PM Mar=
cus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 02/25/2020 09:33 AM, Michael Wentz
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Marcus,=C2=A0
        <div><br>
        </div>
        <div>Thanks for the suggestion. I added=C2=A0set_subdev_spec(&#39;A=
:A
          A:B&#39;) for the 2 channel case, but the results=C2=A0are the sa=
me.</div>
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
    I&#39;ve been through your code, and I cannot find anything wrong with
    it.=C2=A0 Now, I recall that there was a bug in earlier UHD with the tw=
o<br>
    =C2=A0 clocks in the B210 (each conceptual radio block in the FPGA
    includes its own time-of-day clock), and they wouldn&#39;t always get
    reset<br>
    =C2=A0 together, even with set_time_next_pps(), so there would be some
    skew.<br>
    <br>
    This, or something related may be the root cause of your issue.=C2=A0=
=C2=A0
    The engineer who most recently worked on B210 is being consulted<br>
    =C2=A0 on this, and hopefully myself or Sam Reiter will have an answer
    soon.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>I&#39;ve done this in the past with many X310s (each with 2
          channels) with success, but that was with an older/pre-RFNoC
          UHD circa 2016. I&#39;m using pretty much the same code here.
          Anything else I can try to time sync multiple devices?</div>
        <div><br>
        </div>
        <div>-Michael</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 24, 2020 at 9:07
          PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 02/24/2020 05:10 PM, Michael Wentz via USRP-users
              wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Hi,
                <div><br>
                </div>
                <div>I&#39;m trying to synchronize multiple B210s to receiv=
e
                  data at the same time. I&#39;m only concerned about sampl=
e
                  time alignment across devices, and am aware there is a
                  phase offset that will need to be calibrated out
                  separately. I&#39;ve had success with 1 RX channel across
                  2 B210s, but something seems wrong when using 2 RX
                  channels across 2 B210s.</div>
                <div><br>
                </div>
                <div>I&#39;ve pasted a program below to help reproduce this
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
                  RX:=C2=A0[14,1,-126,48,2,-88,17,-204,-96,2]</div>
                <div><br>
                </div>
                <div>In the 2 channel case both channels on one device
                  are always aligned, but are offset from the channels
                  on the other device. Both of the receiving B210s show
                  the same time last PPS when asked before the streams
                  start. The times in the RX metadata also match. But
                  after the streams stop, the devices respond with
                  different times - neither of which are correct - and
                  the difference between them matches what I&#39;m
                  measuring.</div>
                <div><br>
                </div>
                <div>I&#39;m using UHD 3.14.1.1 and GNU Radio 3.8 on RHEL
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
                  tx_serial =3D &#39;30D1***&#39;<br>
                  rx_serials =3D [&#39;3153***&#39;, &#39;3153***&#39;]<br>
                  rx_channels =3D [0, 1]<br>
                  <br>
                  n_rx =3D len(rx_serials)<br>
                  n_chan =3D len(rx_channels)<br>
                  <br>
                  class top_block(gr.top_block):<br>
                  =C2=A0 =C2=A0 def __init__(self):<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 gr.top_block.__init__(self)<b=
r>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 # transmit path<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 noise_src =3D
                  analog.noise_source_c(analog.GR_GAUSSIAN, 0.1)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx_strm_args =3D
                  uhd.stream_args(cpu_format=3D&#39;fc32&#39;, channels=3D[=
0])<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx =3D uhd.usrp_sink(&#39;ser=
ial=3D&#39; + tx_serial,
                  tx_strm_args)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx.set_clock_rate(16e6)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx.set_samp_rate(1e6)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx.set_center_freq(1e9)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx.set_gain(40)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 tx.set_antenna(&#39;TX/RX&#39=
;)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.connect(noise_src, tx)<b=
r>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 # receive path<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_strm_args =3D
                  uhd.stream_args(cpu_format=3D&#39;fc32&#39;,
                  channels=3Drx_channels)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rx =3D [None]*n_rx<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 head =3D [None]*n_rx*n_chan<b=
r>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 file_sink =3D [None]*n_rx*n_c=
han<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 for i in range(n_rx):<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rx[i] =3D =
uhd.usrp_source(&#39;serial=3D&#39; +
                  rx_serials[i], rx_strm_args)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rx[i].set_=
clock_rate(16e6)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rx[i].set_=
samp_rate(1e6)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rx[i].set_=
center_freq(1e9)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rx[i].set_=
gain(40)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rx[i].set_=
antenna(&#39;RX2&#39;)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rx[i].set_=
time_source(&#39;external&#39;)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rx[i].set_=
clock_source(&#39;external&#39;)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for j in range(=
n_chan):<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 c=
h =3D i*n_chan + j<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 h=
ead[ch] =3D
                  blocks.head(2*gr.sizeof_float, 10000)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f=
 =3D &#39;rx_%d%d.dat&#39; % (i, j)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f=
ile_sink[ch] =3D
                  blocks.file_sink(2*gr.sizeof_float, f)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f=
ile_sink[ch].set_unbuffered(True)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s=
elf.connect((self.rx[i], j),
                  head[ch], file_sink[ch])<br>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 # make sure 10 MHz ref is loc=
ked<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 for i in range(n_rx):<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 while not
                  self.rx[i].get_mboard_sensor(&#39;ref_locked&#39;).to_boo=
l():<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p=
rint(&#39;RX %d waiting for 10 MHz ref
                  lock...&#39; % i)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 t=
ime.sleep(1)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&#39;RX %=
d 10 MHz ref locked&#39; % i)<br>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 # time sync the two receivers=
<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 for i in range(n_rx):<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 t =3D
                  self.rx[i].get_time_last_pps().get_real_secs()<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&#39;RX %=
d time before align: %r&#39; % (i,
                  t))<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 time_last_pps =3D
                  self.rx[0].get_time_last_pps().get_real_secs()<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 while time_last_pps =3D=3D
                  self.rx[0].get_time_last_pps().get_real_secs():<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time.sleep(0.1)=
<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 for i in range(n_rx):<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                  self.rx[i].set_time_next_pps(uhd.time_spec_t(0))<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 time_last_pps =3D
                  self.rx[0].get_time_last_pps().get_real_secs()<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 while time_last_pps =3D=3D
                  self.rx[0].get_time_last_pps().get_real_secs():<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time.sleep(0.1)=
<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 for i in range(n_rx):<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 t =3D
                  self.rx[i].get_time_last_pps().get_real_secs()<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&#39;RX %=
d time after align: %r&#39; % (i,
                  t))<br>
                  <br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 # collect in the future<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_time =3D uhd.time_spec_t(2=
)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 for i in range(n_rx):<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rx[i].set_=
start_time(rx_time)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rx[i].set_=
recv_timeout(3)<br>
                  <br>
                  # run flowgraph<br>
                  tb =3D top_block()<br>
                  tb.start()<br>
                  time.sleep(5)<br>
                  tb.stop()<br>
                  <br>
                  # print time<br>
                  t =3D tb.rx[0].get_time_last_pps().get_real_secs()<br>
                  while t =3D=3D
                  tb.rx[0].get_time_last_pps().get_real_secs():<br>
                  =C2=A0 =C2=A0 time.sleep(0.1)<br>
                  for i in range(n_rx):<br>
                  =C2=A0 =C2=A0 t =3D tb.rx[i].get_time_last_pps().get_real=
_secs()<br>
                  =C2=A0 =C2=A0 print(&#39;RX %d time after run: %r&#39; % =
(i, t))<br>
                  <br>
                  # cross-correlate receivers and print delay<br>
                  y =3D [None]*n_rx*n_chan<br>
                  for i in range(n_rx):<br>
                  =C2=A0 =C2=A0 for j in range(n_chan):<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 ch =3D i*n_chan + j<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 y[ch] =3D np.fromfile(&#39;rx=
_%d%d.dat&#39; % (i, j),
                  dtype=3Dnp.complex64)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 r =3D np.correlate(y[0], y[ch=
], mode=3D&#39;full&#39;)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 max_lag =3D np.max([len(y[0])=
, len(y[ch])]) - 1<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 lags =3D np.arange(-max_lag, =
max_lag+1)<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 d =3D lags[np.argmax(np.abs(r=
))]<br>
                  =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&#39;RX %d, channel %d:=
 %d samples&#39; % (i, j,
                  d))<br>
                </div>
              </div>
              <br>
              <fieldset></fieldset>
              <br>
              <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
            </blockquote>
            IN the two channel case, you should probably set the subdev
            spec to:<br>
            <br>
            A:A A:B<br>
            <br>
            I didn&#39;t set a set_rx_subdev_spec()=C2=A0 in the code.<br>
            <br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a><br>
          <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009162c3059f8350c0--


--===============1242011514334301363==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1242011514334301363==--

