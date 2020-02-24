Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 750E416B396
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2020 23:11:37 +0100 (CET)
Received: from [::1] (port=36900 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6Lwm-0008CW-9n; Mon, 24 Feb 2020 17:11:28 -0500
Received: from mail-qv1-f43.google.com ([209.85.219.43]:37874)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mchlwntz@gmail.com>) id 1j6Lwh-000869-Kq
 for usrp-users@lists.ettus.com; Mon, 24 Feb 2020 17:11:23 -0500
Received: by mail-qv1-f43.google.com with SMTP id ci20so3498713qvb.4
 for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2020 14:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=JDSWEaw/wDqJm3TQ3E07oCk0x/XTOmdPnyw8n/Q9K0Y=;
 b=cfhKWVCTjniHzdNPBLX8+Z6Ye8ltYsf8T3kE9l2JuoqPRXscTToY8ler6TKp/RcGrB
 lI8BrhVn5f2EkEZtLSZsPrQbL3pEEEQz992M6RHltOEF7BwSVa3+1awxHg7udCpMm33I
 dvUMee7/aDQBE/FwZ7I/NWFAhwLE0zhLpBkOeWZR9sjIyhO4WBCIS5qWG12FIDFND3aa
 hZP1e7qo0A+LEs5YF8T/H1U6ubcO2jrXzoZkRE2W6WLaoPxNZbQAytAWubEJL6vPjjZU
 JQqt3aVKcJxqXypX33GNBPpt7xPrMycbakUPlh4dHvsCd/2VFfddkyh/e4NdifE37Y/x
 6vZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=JDSWEaw/wDqJm3TQ3E07oCk0x/XTOmdPnyw8n/Q9K0Y=;
 b=sm6+qXOexO5MNY7L4/zSHpqU838Lgx+hzyl5tdru9aznEHNbUTv4eS9AORt9tv0mzZ
 2ZzfNG4nzz03AuyBGGcpbANYayvsyyh2+edzz5/k5AYhX5y0VFwLDYu4HWJJbm6o1gsh
 4kF94IqurfpvA2yo9vVuGEw7KoLBBINi6n/uvVfA66t0Gr4Medh5qb6/vHzFD+GxdX+S
 k58knXt9Rtp3yGMWUsaNA8fUmglQ2tQ/Xy0b6CiI7gHhcmmLLYhwGmxeHPXl86AUoKfw
 zSyQysSx9KUgNU69kjiyd07iqKe/fEZPVLml4uhqKEba5kxH0bLM2NRxF98vRmFdDQ6F
 72OQ==
X-Gm-Message-State: APjAAAWeriPjTQgDQ8fSGWwGaDlSpPAe8ByKdCFNyoJMtjmu7W/PxzGY
 w4NxykY1gDxctdyxAEDwfWxYt8wykZLf4ONr+UJX2JKV
X-Google-Smtp-Source: APXvYqxOfd/Go5Y1mHLTwi9vLXNqZyrpxPL9gdz2Dj43XlkMncLULP7p8I8lF9Vh+Z0z4Gf4gUz15plWcqhIcbgsUq0=
X-Received: by 2002:a05:6214:28b:: with SMTP id
 l11mr47585629qvv.15.1582582242485; 
 Mon, 24 Feb 2020 14:10:42 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 24 Feb 2020 17:10:31 -0500
Message-ID: <CAFTrPL27EUtA9UTV+GsxhyFgwdPuEMEJLhBVaQ-35fuFyBByLw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Time synchronization of multiple B210s not working
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
Content-Type: multipart/mixed; boundary="===============3743262299416363566=="
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

--===============3743262299416363566==
Content-Type: multipart/alternative; boundary="0000000000006428a0059f59a4d2"

--0000000000006428a0059f59a4d2
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to synchronize multiple B210s to receive data at the same time.
I'm only concerned about sample time alignment across devices, and am aware
there is a phase offset that will need to be calibrated out separately.
I've had success with 1 RX channel across 2 B210s, but something seems
wrong when using 2 RX channels across 2 B210s.

I've pasted a program below to help reproduce this issue. It uses 1 B210 to
TX noise and 2 separate B210s to RX at the same time. There is a 40 dB
attenuator on the output of the transmitting B210, then a 4 way splitter,
and equal length cables to both receivers on the other 2 B210s.
Additionally, the 2 receiving B210s get 10 MHz and PPS from a common
OctoClock-G.

Here are 10 observations of sample offsets between devices (1 MSPS rate):
Only channel 0 on both RX: [0,0,0,0,0,0,0,0,0,0]
Only channel 1 on both RX: [0,0,0,0,0,0,0,0,0,0]
Channels 0 and 1 simultaneously on both
RX: [14,1,-126,48,2,-88,17,-204,-96,2]

In the 2 channel case both channels on one device are always aligned, but
are offset from the channels on the other device. Both of the receiving
B210s show the same time last PPS when asked before the streams start. The
times in the RX metadata also match. But after the streams stop, the
devices respond with different times - neither of which are correct - and
the difference between them matches what I'm measuring.

I'm using UHD 3.14.1.1 and GNU Radio 3.8 on RHEL 7.7. Any ideas?

Thanks,
Michael

----------

#!/usr/bin/env python3

from gnuradio import gr, uhd, analog, blocks
import time
import numpy as np

tx_serial = '30D1***'
rx_serials = ['3153***', '3153***']
rx_channels = [0, 1]

n_rx = len(rx_serials)
n_chan = len(rx_channels)

class top_block(gr.top_block):
    def __init__(self):
        gr.top_block.__init__(self)

        # transmit path
        noise_src = analog.noise_source_c(analog.GR_GAUSSIAN, 0.1)
        tx_strm_args = uhd.stream_args(cpu_format='fc32', channels=[0])
        tx = uhd.usrp_sink('serial=' + tx_serial, tx_strm_args)
        tx.set_clock_rate(16e6)
        tx.set_samp_rate(1e6)
        tx.set_center_freq(1e9)
        tx.set_gain(40)
        tx.set_antenna('TX/RX')
        self.connect(noise_src, tx)

        # receive path
        rx_strm_args = uhd.stream_args(cpu_format='fc32',
channels=rx_channels)
        self.rx = [None]*n_rx
        head = [None]*n_rx*n_chan
        file_sink = [None]*n_rx*n_chan
        for i in range(n_rx):
            self.rx[i] = uhd.usrp_source('serial=' + rx_serials[i],
rx_strm_args)
            self.rx[i].set_clock_rate(16e6)
            self.rx[i].set_samp_rate(1e6)
            self.rx[i].set_center_freq(1e9)
            self.rx[i].set_gain(40)
            self.rx[i].set_antenna('RX2')
            self.rx[i].set_time_source('external')
            self.rx[i].set_clock_source('external')
            for j in range(n_chan):
                ch = i*n_chan + j
                head[ch] = blocks.head(2*gr.sizeof_float, 10000)
                f = 'rx_%d%d.dat' % (i, j)
                file_sink[ch] = blocks.file_sink(2*gr.sizeof_float, f)
                file_sink[ch].set_unbuffered(True)
                self.connect((self.rx[i], j), head[ch], file_sink[ch])

        # make sure 10 MHz ref is locked
        for i in range(n_rx):
            while not self.rx[i].get_mboard_sensor('ref_locked').to_bool():
                print('RX %d waiting for 10 MHz ref lock...' % i)
                time.sleep(1)
            print('RX %d 10 MHz ref locked' % i)

        # time sync the two receivers
        for i in range(n_rx):
            t = self.rx[i].get_time_last_pps().get_real_secs()
            print('RX %d time before align: %r' % (i, t))
        time_last_pps = self.rx[0].get_time_last_pps().get_real_secs()
        while time_last_pps ==
self.rx[0].get_time_last_pps().get_real_secs():
            time.sleep(0.1)
        for i in range(n_rx):
            self.rx[i].set_time_next_pps(uhd.time_spec_t(0))
        time_last_pps = self.rx[0].get_time_last_pps().get_real_secs()
        while time_last_pps ==
self.rx[0].get_time_last_pps().get_real_secs():
            time.sleep(0.1)
        for i in range(n_rx):
            t = self.rx[i].get_time_last_pps().get_real_secs()
            print('RX %d time after align: %r' % (i, t))

        # collect in the future
        rx_time = uhd.time_spec_t(2)
        for i in range(n_rx):
            self.rx[i].set_start_time(rx_time)
            self.rx[i].set_recv_timeout(3)

# run flowgraph
tb = top_block()
tb.start()
time.sleep(5)
tb.stop()

# print time
t = tb.rx[0].get_time_last_pps().get_real_secs()
while t == tb.rx[0].get_time_last_pps().get_real_secs():
    time.sleep(0.1)
for i in range(n_rx):
    t = tb.rx[i].get_time_last_pps().get_real_secs()
    print('RX %d time after run: %r' % (i, t))

# cross-correlate receivers and print delay
y = [None]*n_rx*n_chan
for i in range(n_rx):
    for j in range(n_chan):
        ch = i*n_chan + j
        y[ch] = np.fromfile('rx_%d%d.dat' % (i, j), dtype=np.complex64)
        r = np.correlate(y[0], y[ch], mode='full')
        max_lag = np.max([len(y[0]), len(y[ch])]) - 1
        lags = np.arange(-max_lag, max_lag+1)
        d = lags[np.argmax(np.abs(r))]
        print('RX %d, channel %d: %d samples' % (i, j, d))

--0000000000006428a0059f59a4d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m trying to synchronize multi=
ple B210s to receive data at the same time. I&#39;m only concerned about sa=
mple time alignment across devices, and am aware there is a phase offset th=
at will need to be calibrated out separately. I&#39;ve had success with 1 R=
X channel across 2 B210s, but something seems wrong when using 2 RX channel=
s across 2 B210s.</div><div><br></div><div>I&#39;ve pasted a program below =
to help reproduce this issue. It uses 1 B210 to TX noise and 2 separate B21=
0s to RX at the same time. There is a 40 dB attenuator on the output of the=
 transmitting B210, then a 4 way splitter, and equal length cables to both =
receivers on the other 2 B210s. Additionally, the 2 receiving B210s get 10 =
MHz and PPS from a common OctoClock-G.<br></div><div><br></div><div>Here ar=
e 10 observations of sample offsets between devices (1 MSPS rate):</div><di=
v>Only channel 0 on both RX: [0,0,0,0,0,0,0,0,0,0]</div><div>Only channel 1=
 on both RX: [0,0,0,0,0,0,0,0,0,0]</div><div>Channels 0 and 1 simultaneousl=
y on both RX:=C2=A0[14,1,-126,48,2,-88,17,-204,-96,2]</div><div><br></div><=
div>In the 2 channel case both channels on one device are always aligned, b=
ut are offset from the channels on the other device. Both of the receiving =
B210s show the same time last PPS when asked before the streams start. The =
times in the RX metadata also match. But after the streams stop, the device=
s respond with different times - neither of which are correct - and the dif=
ference between them matches what I&#39;m measuring.</div><div><br></div><d=
iv>I&#39;m using UHD 3.14.1.1 and GNU Radio 3.8 on RHEL 7.7. Any ideas?</di=
v><div><br></div><div>Thanks,</div><div>Michael</div><div><br></div><div>--=
--------</div><div><br></div><div>#!/usr/bin/env python3<br><br>from gnurad=
io import gr, uhd, analog, blocks<br>import time<br>import numpy as np<br><=
br>tx_serial =3D &#39;30D1***&#39;<br>rx_serials =3D [&#39;3153***&#39;, &#=
39;3153***&#39;]<br>rx_channels =3D [0, 1]<br><br>n_rx =3D len(rx_serials)<=
br>n_chan =3D len(rx_channels)<br><br>class top_block(gr.top_block):<br>=C2=
=A0 =C2=A0 def __init__(self):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 gr.top_block.=
__init__(self)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # transmit path<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 noise_src =3D analog.noise_source_c(analog.GR_GAUSSIA=
N, 0.1)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tx_strm_args =3D uhd.stream_args(cpu=
_format=3D&#39;fc32&#39;, channels=3D[0])<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tx=
 =3D uhd.usrp_sink(&#39;serial=3D&#39; + tx_serial, tx_strm_args)<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 tx.set_clock_rate(16e6)<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 tx.set_samp_rate(1e6)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tx.set_center_freq=
(1e9)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tx.set_gain(40)<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 tx.set_antenna(&#39;TX/RX&#39;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 s=
elf.connect(noise_src, tx)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # receive pat=
h<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_strm_args =3D uhd.stream_args(cpu_forma=
t=3D&#39;fc32&#39;, channels=3Drx_channels)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
self.rx =3D [None]*n_rx<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 head =3D [None]*n_rx=
*n_chan<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 file_sink =3D [None]*n_rx*n_chan<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for i in range(n_rx):<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 self.rx[i] =3D uhd.usrp_source(&#39;serial=3D&#39; + r=
x_serials[i], rx_strm_args)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 se=
lf.rx[i].set_clock_rate(16e6)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
self.rx[i].set_samp_rate(1e6)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
self.rx[i].set_center_freq(1e9)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.rx[i].set_gain(40)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 se=
lf.rx[i].set_antenna(&#39;RX2&#39;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 self.rx[i].set_time_source(&#39;external&#39;)<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 self.rx[i].set_clock_source(&#39;external&#39;)<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for j in range(n_chan):<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ch =3D i*n_chan + j<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 head[ch] =3D block=
s.head(2*gr.sizeof_float, 10000)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 f =3D &#39;rx_%d%d.dat&#39; % (i, j)<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file_sink[ch] =3D blocks.file_sink(2=
*gr.sizeof_float, f)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 file_sink[ch].set_unbuffered(True)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.connect((self.rx[i], j), head[ch], file_si=
nk[ch])<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # make sure 10 MHz ref is locked=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for i in range(n_rx):<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 while not self.rx[i].get_mboard_sensor(&#39;ref_lo=
cked&#39;).to_bool():<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 print(&#39;RX %d waiting for 10 MHz ref lock...&#39; % i)<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time.sleep(1)<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&#39;RX %d 10 MHz ref locked&#39; =
% i)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # time sync the two receivers<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for i in range(n_rx):<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 t =3D self.rx[i].get_time_last_pps().get_real_secs()<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&#39;RX %d time before al=
ign: %r&#39; % (i, t))<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 time_last_pps =3D sel=
f.rx[0].get_time_last_pps().get_real_secs()<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
while time_last_pps =3D=3D self.rx[0].get_time_last_pps().get_real_secs():<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time.sleep(0.1)<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 for i in range(n_rx):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 self.rx[i].set_time_next_pps(uhd.time_spec_t(0))<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 time_last_pps =3D self.rx[0].get_time_last_pps().get_real=
_secs()<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 while time_last_pps =3D=3D self.rx[0=
].get_time_last_pps().get_real_secs():<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 time.sleep(0.1)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for i in range(n_=
rx):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 t =3D self.rx[i].get_time=
_last_pps().get_real_secs()<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pr=
int(&#39;RX %d time after align: %r&#39; % (i, t))<br><br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # collect in the future<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_time =
=3D uhd.time_spec_t(2)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for i in range(n_rx):=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rx[i].set_start_time(rx_=
time)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rx[i].set_recv_time=
out(3)<br><br># run flowgraph<br>tb =3D top_block()<br>tb.start()<br>time.s=
leep(5)<br>tb.stop()<br><br># print time<br>t =3D tb.rx[0].get_time_last_pp=
s().get_real_secs()<br>while t =3D=3D tb.rx[0].get_time_last_pps().get_real=
_secs():<br>=C2=A0 =C2=A0 time.sleep(0.1)<br>for i in range(n_rx):<br>=C2=
=A0 =C2=A0 t =3D tb.rx[i].get_time_last_pps().get_real_secs()<br>=C2=A0 =C2=
=A0 print(&#39;RX %d time after run: %r&#39; % (i, t))<br><br># cross-corre=
late receivers and print delay<br>y =3D [None]*n_rx*n_chan<br>for i in rang=
e(n_rx):<br>=C2=A0 =C2=A0 for j in range(n_chan):<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ch =3D i*n_chan + j<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 y[ch] =3D np.from=
file(&#39;rx_%d%d.dat&#39; % (i, j), dtype=3Dnp.complex64)<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 r =3D np.correlate(y[0], y[ch], mode=3D&#39;full&#39;)<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 max_lag =3D np.max([len(y[0]), len(y[ch])]) - 1=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 lags =3D np.arange(-max_lag, max_lag+1)<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 d =3D lags[np.argmax(np.abs(r))]<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 print(&#39;RX %d, channel %d: %d samples&#39; % (i, j, d)=
)<br></div></div>

--0000000000006428a0059f59a4d2--


--===============3743262299416363566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3743262299416363566==--

