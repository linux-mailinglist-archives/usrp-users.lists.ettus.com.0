Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14766171193
	for <lists+usrp-users@lfdr.de>; Thu, 27 Feb 2020 08:37:05 +0100 (CET)
Received: from [::1] (port=42776 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j7Dj9-000404-R9; Thu, 27 Feb 2020 02:36:59 -0500
Received: from mail-pj1-f54.google.com ([209.85.216.54]:53456)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ianb@ionconcepts.com>)
 id 1j7Dj5-0003n0-9p
 for usrp-users@lists.ettus.com; Thu, 27 Feb 2020 02:36:55 -0500
Received: by mail-pj1-f54.google.com with SMTP id n96so765811pjc.3
 for <usrp-users@lists.ettus.com>; Wed, 26 Feb 2020 23:36:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ionconcepts-com.20150623.gappssmtp.com; s=20150623;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=ZPNi/fUKEuCHpDOx+58Vk7/XMba6EvZxNZGZSZCgdrQ=;
 b=QzWsRgVI3AX5qSvbp+zggVwVpYFYuE08PC6QlrhTXvxiICfy/GKaSOqxeGtuF0Qc9z
 snMtmx4GUXEBn9D6ZnbC0OAM30lyWGPoYMiJWFdL85yiG/1eSFXxBUJHDlb2nkKRna25
 tWStL6lfVmL7XK/9x8MmhyNhvvu/c2Z6r6gAAfDVhdcTvvlFTPseWt07g9F1lX7l2b2g
 rXnNBc4bHp0oP94MOBxDE0vE5tZnxOYHy+s3tWUcz1MQ8inxQGwj8DilRdBjCTlglhet
 pNKVxLIRoW8EWCYbGL6ERlyZP63YVo2mnQw/OTGfkb3EDB/6+gEUAgxjvLTFX7OuURF0
 hZLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=ZPNi/fUKEuCHpDOx+58Vk7/XMba6EvZxNZGZSZCgdrQ=;
 b=irx7WZzq7CAUPPXJsqvt3Uc/5CFrLOY4MP08e6p7GjnGqTeNw/c4PoMH2CSfjMKuDw
 fxLA1q7lWIXUZ3apszRPYvmIrkBwmuMM8r/ALDEAkomESdPCb2yV1nr9sSjYhlZWQx8/
 x8d0kwgM+eGaycULvwmxm19OUleAD0+3SbFuny83zWDQVW1fPl8pECN5gS+qQ2oYlH3C
 QIYKgNMNovbzVSoYWti0n/3y1DKUZ3fvq/k09VzFnssE4Z7fad72dgFHu62b/ZUnopy5
 YzNkp1GYDBW8bP8hit+xp6mC492fu/NmOk726n/r6tmi0JXjHlm5MdC4w70RA7J5zFRj
 BUmQ==
X-Gm-Message-State: APjAAAXNlwOtJkjugqbS6OZa28n8047Ibmczkq7JxgC0wzYPHp/gF/wV
 Zxkf+flFXIXABArAUhJT7I5p8gKyWqI=
X-Google-Smtp-Source: APXvYqyQb/cy5ew0tZadCJ3/s1sFWxPSconrrXMAt9fpVxTvaKXV2mXA3KU9z00diTzRDFU+2IP4SA==
X-Received: by 2002:a17:90a:bc41:: with SMTP id
 t1mr3415905pjv.137.1582788974184; 
 Wed, 26 Feb 2020 23:36:14 -0800 (PST)
Received: from pox-laden-system.localdomain
 (c-73-222-38-19.hsd1.ca.comcast.net. [73.222.38.19])
 by smtp.gmail.com with ESMTPSA id l37sm5009899pjb.15.2020.02.26.23.36.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Feb 2020 23:36:13 -0800 (PST)
Message-Id: <DC7016E7-4420-441A-A4CE-6570657DD539@ionconcepts.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 26 Feb 2020 23:36:11 -0800
In-Reply-To: <5E5568DF.7050508@gmail.com>
To: Michael Wentz <mchlwntz@gmail.com>
References: <CAFTrPL27EUtA9UTV+GsxhyFgwdPuEMEJLhBVaQ-35fuFyBByLw@mail.gmail.com>
 <5E548121.9080608@gmail.com>
 <CAFTrPL3od+eGsjSyernAQsm66ORpXA59Tmn+DPtRUb61zZW_YA@mail.gmail.com>
 <5E5568DF.7050508@gmail.com>
X-Mailer: Apple Mail (2.3273)
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
From: Ian Buckley via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ian Buckley <ianb@ionconcepts.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8429344658415478250=="
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


--===============8429344658415478250==
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_F24E99E1-3F3F-4F97-994C-D6F991DFE65A"


--Apple-Mail=_F24E99E1-3F3F-4F97-994C-D6F991DFE65A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

This is a particularly curious problem.
The offset between B210=E2=80=99s of the =E2=80=9Ctime after run=E2=80=9D =
values after sample capture has completed is very hard to =
explain=E2=80=A6certainly from a hardware only perspective.
What are the absolute time values reported? Are they at least =
approximately 5-6 seconds as you might expect from your python? Or some =
completely random value?
None of the UHD commands you use after =E2=80=9Cset_time_next_pps=E2=80=9D=
 should cause any change in the relationship of the time of day counters =
and the PPS.
It makes sense that all samples have the expected RX metadata data, the =
capture is triggered by an arithmetic comparison between the time-of-day =
counters and=20
the value you load into the H/W as a trigger using =E2=80=9Cset_start_time=
=E2=80=9D, and the counter value is read to add meta data to each packet =
of RX samples that is assembled.
Superficially it would appear that somehow the time-of-day counters are =
=E2=80=9Ccorrupted=E2=80=9D between the "time after align=E2=80=9D =
values you read and before they count to timespec(2.0)

(Completely random thought, but do you have the B210=E2=80=99s powered =
via USB or from the 6V jacks? I=E2=80=99m presuming they are plugged =
into to adjacent USB ports on a host?)

I should probably caution you, unrelated to this issue that the B210 =
isn't designed so that multiple boards can be synced and used coherently =
unlike N210/X310. Whilst the master clock=20
Is disciplined by the 10MHz, you are able to program it to arbitrary =
frequencies that are not phase aligned between boards which means PPS =
edge detect events as seen by the B210=E2=80=99s=20
may occur at different actual times, though this would only produce a =
time misalignment of upto only 1 master clock period.

BTW Marcus the PPS bug I *think you are referring to (edge detect driven =
by different synchronizers) was fixed before 3.9LTS was released and =
would have manifested differently.
> On Feb 25, 2020, at 10:35 AM, Marcus D. Leech via USRP-users =
<usrp-users@lists.ettus.com> wrote:
>=20
> On 02/25/2020 09:33 AM, Michael Wentz via USRP-users wrote:
>> Marcus,=20
>>=20
>> Thanks for the suggestion. I added set_subdev_spec('A:A A:B') for the =
2 channel case, but the results are the same.
>>=20
>> I also tried this code with a pair of X310s receiving. The results =
are somewhat similar:
>> - Channel 0 (A:0) across 2 devices: no delay
>> - Channel 1 (B:0) across 2 devices: no delay
>> - Channels 0 and 1 (A:0 B:0) across 2 devices: channel 0 is in sync =
between the two, but channel 1 is not - and channel 1 is not in sync =
with channel 0 on either device.
>> - Unlike with the B210s, the X310s both report the same time after =
streaming.
> Let us focus on the B210 first.
>=20
> I've been through your code, and I cannot find anything wrong with it. =
 Now, I recall that there was a bug in earlier UHD with the two
>   clocks in the B210 (each conceptual radio block in the FPGA includes =
its own time-of-day clock), and they wouldn't always get reset
>   together, even with set_time_next_pps(), so there would be some =
skew.
>=20
> This, or something related may be the root cause of your issue.   The =
engineer who most recently worked on B210 is being consulted
>   on this, and hopefully myself or Sam Reiter will have an answer =
soon.
>=20
>=20
>>=20
>> I've done this in the past with many X310s (each with 2 channels) =
with success, but that was with an older/pre-RFNoC UHD circa 2016. I'm =
using pretty much the same code here. Anything else I can try to time =
sync multiple devices?
>>=20
>> -Michael
>>=20
>> On Mon, Feb 24, 2020 at 9:07 PM Marcus D. Leech via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>> On 02/24/2020 05:10 PM, Michael Wentz via USRP-users wrote:
>>> Hi,
>>>=20
>>> I'm trying to synchronize multiple B210s to receive data at the same =
time. I'm only concerned about sample time alignment across devices, and =
am aware there is a phase offset that will need to be calibrated out =
separately. I've had success with 1 RX channel across 2 B210s, but =
something seems wrong when using 2 RX channels across 2 B210s.
>>>=20
>>> I've pasted a program below to help reproduce this issue. It uses 1 =
B210 to TX noise and 2 separate B210s to RX at the same time. There is a =
40 dB attenuator on the output of the transmitting B210, then a 4 way =
splitter, and equal length cables to both receivers on the other 2 =
B210s. Additionally, the 2 receiving B210s get 10 MHz and PPS from a =
common OctoClock-G.
>>>=20
>>> Here are 10 observations of sample offsets between devices (1 MSPS =
rate):
>>> Only channel 0 on both RX: [0,0,0,0,0,0,0,0,0,0]
>>> Only channel 1 on both RX: [0,0,0,0,0,0,0,0,0,0]
>>> Channels 0 and 1 simultaneously on both RX: =
[14,1,-126,48,2,-88,17,-204,-96,2]
>>>=20
>>> In the 2 channel case both channels on one device are always =
aligned, but are offset from the channels on the other device. Both of =
the receiving B210s show the same time last PPS when asked before the =
streams start. The times in the RX metadata also match. But after the =
streams stop, the devices respond with different times - neither of =
which are correct - and the difference between them matches what I'm =
measuring.
>>>=20
>>> I'm using UHD 3.14.1.1 and GNU Radio 3.8 on RHEL 7.7. Any ideas?
>>>=20
>>> Thanks,
>>> Michael
>>>=20
>>> ----------
>>>=20
>>> #!/usr/bin/env python3
>>>=20
>>> from gnuradio import gr, uhd, analog, blocks
>>> import time
>>> import numpy as np
>>>=20
>>> tx_serial =3D '30D1***'
>>> rx_serials =3D ['3153***', '3153***']
>>> rx_channels =3D [0, 1]
>>>=20
>>> n_rx =3D len(rx_serials)
>>> n_chan =3D len(rx_channels)
>>>=20
>>> class top_block(gr.top_block):
>>>     def __init__(self):
>>>         gr.top_block.__init__(self)
>>>=20
>>>         # transmit path
>>>         noise_src =3D analog.noise_source_c(analog.GR_GAUSSIAN, 0.1)
>>>         tx_strm_args =3D uhd.stream_args(cpu_format=3D'fc32', =
channels=3D[0])
>>>         tx =3D uhd.usrp_sink('serial=3D' + tx_serial, tx_strm_args)
>>>         tx.set_clock_rate(16e6)
>>>         tx.set_samp_rate(1e6)
>>>         tx.set_center_freq(1e9)
>>>         tx.set_gain(40)
>>>         tx.set_antenna('TX/RX')
>>>         self.connect(noise_src, tx)
>>>=20
>>>         # receive path
>>>         rx_strm_args =3D uhd.stream_args(cpu_format=3D'fc32', =
channels=3Drx_channels)
>>>         self.rx =3D [None]*n_rx
>>>         head =3D [None]*n_rx*n_chan
>>>         file_sink =3D [None]*n_rx*n_chan
>>>         for i in range(n_rx):
>>>             self.rx[i] =3D uhd.usrp_source('serial=3D' + =
rx_serials[i], rx_strm_args)
>>>             self.rx[i].set_clock_rate(16e6)
>>>             self.rx[i].set_samp_rate(1e6)
>>>             self.rx[i].set_center_freq(1e9)
>>>             self.rx[i].set_gain(40)
>>>             self.rx[i].set_antenna('RX2')
>>>             self.rx[i].set_time_source('external')
>>>             self.rx[i].set_clock_source('external')
>>>             for j in range(n_chan):
>>>                 ch =3D i*n_chan + j
>>>                 head[ch] =3D blocks.head(2*gr.sizeof_float, 10000)
>>>                 f =3D 'rx_%d%d.dat' % (i, j)
>>>                 file_sink[ch] =3D =
blocks.file_sink(2*gr.sizeof_float, f)
>>>                 file_sink[ch].set_unbuffered(True)
>>>                 self.connect((self.rx[i], j), head[ch], =
file_sink[ch])
>>>=20
>>>         # make sure 10 MHz ref is locked
>>>         for i in range(n_rx):
>>>             while not =
self.rx[i].get_mboard_sensor('ref_locked').to_bool():
>>>                 print('RX %d waiting for 10 MHz ref lock...' % i)
>>>                 time.sleep(1)
>>>             print('RX %d 10 MHz ref locked' % i)
>>>=20
>>>         # time sync the two receivers
>>>         for i in range(n_rx):
>>>             t =3D self.rx[i].get_time_last_pps().get_real_secs()
>>>             print('RX %d time before align: %r' % (i, t))
>>>         time_last_pps =3D =
self.rx[0].get_time_last_pps().get_real_secs()
>>>         while time_last_pps =3D=3D =
self.rx[0].get_time_last_pps().get_real_secs():
>>>             time.sleep(0.1)
>>>         for i in range(n_rx):
>>>             self.rx[i].set_time_next_pps(uhd.time_spec_t(0))
>>>         time_last_pps =3D =
self.rx[0].get_time_last_pps().get_real_secs()
>>>         while time_last_pps =3D=3D =
self.rx[0].get_time_last_pps().get_real_secs():
>>>             time.sleep(0.1)
>>>         for i in range(n_rx):
>>>             t =3D self.rx[i].get_time_last_pps().get_real_secs()
>>>             print('RX %d time after align: %r' % (i, t))
>>>=20
>>>         # collect in the future
>>>         rx_time =3D uhd.time_spec_t(2)
>>>         for i in range(n_rx):
>>>             self.rx[i].set_start_time(rx_time)
>>>             self.rx[i].set_recv_timeout(3)
>>>=20
>>> # run flowgraph
>>> tb =3D top_block()
>>> tb.start()
>>> time.sleep(5)
>>> tb.stop()
>>>=20
>>> # print time
>>> t =3D tb.rx[0].get_time_last_pps().get_real_secs()
>>> while t =3D=3D tb.rx[0].get_time_last_pps().get_real_secs():
>>>     time.sleep(0.1)
>>> for i in range(n_rx):
>>>     t =3D tb.rx[i].get_time_last_pps().get_real_secs()
>>>     print('RX %d time after run: %r' % (i, t))
>>>=20
>>> # cross-correlate receivers and print delay
>>> y =3D [None]*n_rx*n_chan
>>> for i in range(n_rx):
>>>     for j in range(n_chan):
>>>         ch =3D i*n_chan + j
>>>         y[ch] =3D np.fromfile('rx_%d%d.dat' % (i, j), =
dtype=3Dnp.complex64)
>>>         r =3D np.correlate(y[0], y[ch], mode=3D'full')
>>>         max_lag =3D np.max([len(y[0]), len(y[ch])]) - 1
>>>         lags =3D np.arange(-max_lag, max_lag+1)
>>>         d =3D lags[np.argmax(np.abs(r))]
>>>         print('RX %d, channel %d: %d samples' % (i, j, d))
>>>=20
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>> IN the two channel case, you should probably set the subdev spec to:
>>=20
>> A:A A:B
>>=20
>> I didn't set a set_rx_subdev_spec()  in the code.
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--Apple-Mail=_F24E99E1-3F3F-4F97-994C-D6F991DFE65A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">This is a particularly curious problem.<div class=3D"">The =
offset between B210=E2=80=99s of the =E2=80=9Ctime after run=E2=80=9D =
values after sample capture has completed is very hard to =
explain=E2=80=A6certainly from a hardware only perspective.</div><div =
class=3D"">What are the absolute time values reported? Are they at least =
approximately 5-6 seconds as you might expect from your python? Or some =
completely random value?</div><div class=3D"">None of the UHD commands =
you use after =E2=80=9Cset_time_next_pps=E2=80=9D should cause any =
change in the relationship of the time of day counters and the =
PPS.</div><div class=3D"">It makes sense that all samples have the =
expected RX metadata data, the capture is triggered by an arithmetic =
comparison between the time-of-day counters and&nbsp;</div><div =
class=3D"">the value you load into the H/W as a trigger using =
=E2=80=9Cset_start_time=E2=80=9D, and the counter value is read to add =
meta data to each packet of RX samples that is assembled.</div><div =
class=3D"">Superficially it would appear that somehow the time-of-day =
counters are =E2=80=9Ccorrupted=E2=80=9D between the "time after =
align=E2=80=9D values you read and before they count to =
timespec(2.0)</div><div class=3D""><br class=3D""></div><div =
class=3D"">(Completely random thought, but do you have the B210=E2=80=99s =
powered via USB or from the 6V jacks? I=E2=80=99m presuming they are =
plugged into to adjacent USB ports on a host?)</div><div class=3D""><br =
class=3D""></div><div class=3D"">I should probably caution you, =
unrelated to this issue that the B210 isn't designed so that multiple =
boards can be synced and used coherently unlike N210/X310. Whilst the =
master clock&nbsp;</div><div class=3D"">Is disciplined by the 10MHz, you =
are able to program it to arbitrary frequencies that are not phase =
aligned between boards which means PPS edge detect events as seen by the =
B210=E2=80=99s&nbsp;</div><div class=3D"">may occur at different actual =
times, though this would only produce a time misalignment of upto only 1 =
master clock period.</div><div class=3D""><br class=3D""></div><div =
class=3D"">BTW Marcus the PPS bug I *think you are referring to (edge =
detect driven by different synchronizers) was fixed before 3.9LTS was =
released and would have manifested differently.<br =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
Feb 25, 2020, at 10:35 AM, Marcus D. Leech via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">
 =20
    <meta content=3D"text/html; charset=3Dwindows-1252" =
http-equiv=3D"Content-Type" class=3D"">
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000" class=3D"">
    <div class=3D"moz-cite-prefix">On 02/25/2020 09:33 AM, Michael Wentz
      via USRP-users wrote:<br class=3D"">
    </div>
    <blockquote =
cite=3D"mid:CAFTrPL3od+eGsjSyernAQsm66ORpXA59Tmn+DPtRUb61zZW_YA@mail.gmail=
.com" type=3D"cite" class=3D"">
      <div dir=3D"ltr" class=3D"">Marcus,&nbsp;
        <div class=3D""><br class=3D"">
        </div>
        <div class=3D"">Thanks for the suggestion. I =
added&nbsp;set_subdev_spec('A:A
          A:B') for the 2 channel case, but the results&nbsp;are the =
same.</div>
        <div class=3D""><br class=3D"">
        </div>
        <div class=3D"">I also tried this code with a pair of X310s =
receiving. The
          results are somewhat similar:</div>
        <div class=3D"">- Channel 0 (A:0) across 2 devices: no =
delay</div>
        <div class=3D"">- Channel 1 (B:0) across 2 devices: no =
delay</div>
        <div class=3D"">- Channels 0 and 1 (A:0 B:0) across 2 devices: =
channel 0 is
          in sync between the two, but channel 1 is not - and channel 1
          is not in sync with channel 0 on either device.</div>
        <div class=3D"">- Unlike with the B210s, the X310s both report =
the same
          time after streaming.</div>
      </div>
    </blockquote>
    Let us focus on the B210 first.<br class=3D"">
    <br class=3D"">
    I've been through your code, and I cannot find anything wrong with
    it.&nbsp; Now, I recall that there was a bug in earlier UHD with the =
two<br class=3D"">
    &nbsp; clocks in the B210 (each conceptual radio block in the FPGA
    includes its own time-of-day clock), and they wouldn't always get
    reset<br class=3D"">
    &nbsp; together, even with set_time_next_pps(), so there would be =
some
    skew.<br class=3D"">
    <br class=3D"">
    This, or something related may be the root cause of your =
issue.&nbsp;&nbsp;
    The engineer who most recently worked on B210 is being consulted<br =
class=3D"">
    &nbsp; on this, and hopefully myself or Sam Reiter will have an =
answer
    soon.<br class=3D"">
    <br class=3D"">
    <br class=3D"">
    <blockquote =
cite=3D"mid:CAFTrPL3od+eGsjSyernAQsm66ORpXA59Tmn+DPtRUb61zZW_YA@mail.gmail=
.com" type=3D"cite" class=3D"">
      <div dir=3D"ltr" class=3D"">
        <div class=3D""><br class=3D"">
        </div>
        <div class=3D"">I've done this in the past with many X310s (each =
with 2
          channels) with success, but that was with an older/pre-RFNoC
          UHD circa 2016. I'm using pretty much the same code here.
          Anything else I can try to time sync multiple devices?</div>
        <div class=3D""><br class=3D"">
        </div>
        <div class=3D"">-Michael</div>
      </div>
      <br class=3D"">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 24, 2020 at =
9:07
          PM Marcus D. Leech via USRP-users &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br class=3D"">
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF" class=3D"">
            <div class=3D"">On 02/24/2020 05:10 PM, Michael Wentz via =
USRP-users
              wrote:<br class=3D"">
            </div>
            <blockquote type=3D"cite" class=3D"">
              <div dir=3D"ltr" class=3D"">Hi,
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">I'm trying to synchronize multiple B210s =
to receive
                  data at the same time. I'm only concerned about sample
                  time alignment across devices, and am aware there is a
                  phase offset that will need to be calibrated out
                  separately. I've had success with 1 RX channel across
                  2 B210s, but something seems wrong when using 2 RX
                  channels across 2 B210s.</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">I've pasted a program below to help =
reproduce this
                  issue. It uses 1 B210 to TX noise and 2 separate B210s
                  to RX at the same time. There is a 40 dB attenuator on
                  the output of the transmitting B210, then a 4 way
                  splitter, and equal length cables to both receivers on
                  the other 2 B210s. Additionally, the 2 receiving B210s
                  get 10 MHz and PPS from a common OctoClock-G.<br =
class=3D"">
                </div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">Here are 10 observations of sample =
offsets between
                  devices (1 MSPS rate):</div>
                <div class=3D"">Only channel 0 on both RX: =
[0,0,0,0,0,0,0,0,0,0]</div>
                <div class=3D"">Only channel 1 on both RX: =
[0,0,0,0,0,0,0,0,0,0]</div>
                <div class=3D"">Channels 0 and 1 simultaneously on both
                  RX:&nbsp;[14,1,-126,48,2,-88,17,-204,-96,2]</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">In the 2 channel case both channels on =
one device
                  are always aligned, but are offset from the channels
                  on the other device. Both of the receiving B210s show
                  the same time last PPS when asked before the streams
                  start. The times in the RX metadata also match. But
                  after the streams stop, the devices respond with
                  different times - neither of which are correct - and
                  the difference between them matches what I'm
                  measuring.</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">I'm using UHD 3.14.1.1 and GNU Radio 3.8 =
on RHEL
                  7.7. Any ideas?</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">Thanks,</div>
                <div class=3D"">Michael</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">----------</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">#!/usr/bin/env python3<br class=3D"">
                  <br class=3D"">
                  from gnuradio import gr, uhd, analog, blocks<br =
class=3D"">
                  import time<br class=3D"">
                  import numpy as np<br class=3D"">
                  <br class=3D"">
                  tx_serial =3D '30D1***'<br class=3D"">
                  rx_serials =3D ['3153***', '3153***']<br class=3D"">
                  rx_channels =3D [0, 1]<br class=3D"">
                  <br class=3D"">
                  n_rx =3D len(rx_serials)<br class=3D"">
                  n_chan =3D len(rx_channels)<br class=3D"">
                  <br class=3D"">
                  class top_block(gr.top_block):<br class=3D"">
                  &nbsp; &nbsp; def __init__(self):<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; =
gr.top_block.__init__(self)<br class=3D"">
                  <br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; # transmit path<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; noise_src =3D
                  analog.noise_source_c(analog.GR_GAUSSIAN, 0.1)<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; tx_strm_args =3D
                  uhd.stream_args(cpu_format=3D'fc32', channels=3D[0])<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; tx =3D =
uhd.usrp_sink('serial=3D' + tx_serial,
                  tx_strm_args)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; tx.set_clock_rate(16e6)<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; tx.set_samp_rate(1e6)<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; tx.set_center_freq(1e9)<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; tx.set_gain(40)<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; tx.set_antenna('TX/RX')<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; self.connect(noise_src, =
tx)<br class=3D"">
                  <br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; # receive path<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; rx_strm_args =3D
                  uhd.stream_args(cpu_format=3D'fc32',
                  channels=3Drx_channels)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; self.rx =3D [None]*n_rx<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; head =3D =
[None]*n_rx*n_chan<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; file_sink =3D =
[None]*n_rx*n_chan<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; for i in range(n_rx):<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; self.rx[i] =3D=
 uhd.usrp_source('serial=3D' +
                  rx_serials[i], rx_strm_args)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
self.rx[i].set_clock_rate(16e6)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
self.rx[i].set_samp_rate(1e6)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
self.rx[i].set_center_freq(1e9)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
self.rx[i].set_gain(40)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
self.rx[i].set_antenna('RX2')<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
self.rx[i].set_time_source('external')<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
self.rx[i].set_clock_source('external')<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; for j in =
range(n_chan):<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; ch =3D i*n_chan + j<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; head[ch] =3D
                  blocks.head(2*gr.sizeof_float, 10000)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; f =3D 'rx_%d%d.dat' % (i, j)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; file_sink[ch] =3D
                  blocks.file_sink(2*gr.sizeof_float, f)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; file_sink[ch].set_unbuffered(True)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; self.connect((self.rx[i], j),
                  head[ch], file_sink[ch])<br class=3D"">
                  <br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; # make sure 10 MHz ref is =
locked<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; for i in range(n_rx):<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; while not
                  =
self.rx[i].get_mboard_sensor('ref_locked').to_bool():<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; print('RX %d waiting for 10 MHz ref
                  lock...' % i)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; time.sleep(1)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; print('RX %d =
10 MHz ref locked' % i)<br class=3D"">
                  <br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; # time sync the two =
receivers<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; for i in range(n_rx):<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; t =3D
                  self.rx[i].get_time_last_pps().get_real_secs()<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; print('RX %d =
time before align: %r' % (i,
                  t))<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; time_last_pps =3D
                  self.rx[0].get_time_last_pps().get_real_secs()<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; while time_last_pps =3D=3D
                  self.rx[0].get_time_last_pps().get_real_secs():<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
time.sleep(0.1)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; for i in range(n_rx):<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                  self.rx[i].set_time_next_pps(uhd.time_spec_t(0))<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; time_last_pps =3D
                  self.rx[0].get_time_last_pps().get_real_secs()<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; while time_last_pps =3D=3D
                  self.rx[0].get_time_last_pps().get_real_secs():<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
time.sleep(0.1)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; for i in range(n_rx):<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; t =3D
                  self.rx[i].get_time_last_pps().get_real_secs()<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; print('RX %d =
time after align: %r' % (i,
                  t))<br class=3D"">
                  <br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; # collect in the future<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; rx_time =3D =
uhd.time_spec_t(2)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; for i in range(n_rx):<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
self.rx[i].set_start_time(rx_time)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
self.rx[i].set_recv_timeout(3)<br class=3D"">
                  <br class=3D"">
                  # run flowgraph<br class=3D"">
                  tb =3D top_block()<br class=3D"">
                  tb.start()<br class=3D"">
                  time.sleep(5)<br class=3D"">
                  tb.stop()<br class=3D"">
                  <br class=3D"">
                  # print time<br class=3D"">
                  t =3D tb.rx[0].get_time_last_pps().get_real_secs()<br =
class=3D"">
                  while t =3D=3D
                  tb.rx[0].get_time_last_pps().get_real_secs():<br =
class=3D"">
                  &nbsp; &nbsp; time.sleep(0.1)<br class=3D"">
                  for i in range(n_rx):<br class=3D"">
                  &nbsp; &nbsp; t =3D =
tb.rx[i].get_time_last_pps().get_real_secs()<br class=3D"">
                  &nbsp; &nbsp; print('RX %d time after run: %r' % (i, =
t))<br class=3D"">
                  <br class=3D"">
                  # cross-correlate receivers and print delay<br =
class=3D"">
                  y =3D [None]*n_rx*n_chan<br class=3D"">
                  for i in range(n_rx):<br class=3D"">
                  &nbsp; &nbsp; for j in range(n_chan):<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; ch =3D i*n_chan + j<br =
class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; y[ch] =3D =
np.fromfile('rx_%d%d.dat' % (i, j),
                  dtype=3Dnp.complex64)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; r =3D np.correlate(y[0], =
y[ch], mode=3D'full')<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; max_lag =3D =
np.max([len(y[0]), len(y[ch])]) - 1<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; lags =3D =
np.arange(-max_lag, max_lag+1)<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; d =3D =
lags[np.argmax(np.abs(r))]<br class=3D"">
                  &nbsp; &nbsp; &nbsp; &nbsp; print('RX %d, channel %d: =
%d samples' % (i, j,
                  d))<br class=3D"">
                </div>
              </div>
              <br class=3D"">
              <fieldset class=3D""></fieldset>
              <br class=3D"">
              <pre =
class=3D"">_______________________________________________
USRP-users mailing list
<a moz-do-not-send=3D"true" href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank" class=3D"">USRP-users@lists.ettus.com</a>
<a moz-do-not-send=3D"true" =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" target=3D"_blank" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a>
</pre>
            </blockquote>
            IN the two channel case, you should probably set the subdev
            spec to:<br class=3D"">
            <br class=3D"">
            A:A A:B<br class=3D"">
            <br class=3D"">
            I didn't set a set_rx_subdev_spec()&nbsp; in the code.<br =
class=3D"">
            <br class=3D"">
            <br class=3D"">
          </div>
          _______________________________________________<br class=3D"">
          USRP-users mailing list<br class=3D"">
          <a moz-do-not-send=3D"true" =
href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" =
class=3D"">USRP-users@lists.ettus.com</a><br class=3D"">
          <a moz-do-not-send=3D"true" =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br class=3D"">
        </blockquote>
      </div>
      <br class=3D"">
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br class=3D"">
      <pre wrap=3D"" =
class=3D"">_______________________________________________
USRP-users mailing list
<a class=3D"moz-txt-link-abbreviated" =
href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class=3D"moz-txt-link-freetext" =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br class=3D"">
  </div>

_______________________________________________<br class=3D"">USRP-users =
mailing list<br class=3D""><a href=3D"mailto:USRP-users@lists.ettus.com" =
class=3D"">USRP-users@lists.ettus.com</a><br =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com<br class=3D""></div></blockquote></div><br =
class=3D""></div></body></html>=

--Apple-Mail=_F24E99E1-3F3F-4F97-994C-D6F991DFE65A--


--===============8429344658415478250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8429344658415478250==--

