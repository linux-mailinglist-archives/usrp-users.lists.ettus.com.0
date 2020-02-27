Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6943172521
	for <lists+usrp-users@lfdr.de>; Thu, 27 Feb 2020 18:33:05 +0100 (CET)
Received: from [::1] (port=40462 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j7N1x-0004Id-H1; Thu, 27 Feb 2020 12:33:01 -0500
Received: from mail-qt1-f180.google.com ([209.85.160.180]:41558)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mchlwntz@gmail.com>) id 1j7N1t-00049g-WF
 for usrp-users@lists.ettus.com; Thu, 27 Feb 2020 12:32:58 -0500
Received: by mail-qt1-f180.google.com with SMTP id l21so2867365qtr.8
 for <usrp-users@lists.ettus.com>; Thu, 27 Feb 2020 09:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BI50yACz2R5rNe1dzEvdX+skFIaoNaOMc/pwBnc8Jdw=;
 b=Y+2RpgY/Z1UklLN8lUNEiZ6YlG+eljsI082nUiKEKKH1VEKvrDYnBkrTjTv2l1kZqH
 DEcgKKut1LoyZF5uFS/vNRgT8b1e/X9jSicPZ1pAXG7jbMgBKMdqYsEa8E3UE3xXtHsC
 UvGZU6P36OvSRBZNDipcI+besib8x4ZjcJ7EJFtfgttTISC0dTBCm8ND0mT1cpCyTYxA
 +hPRQ2CutstNi+LUKJ3yxfdF6zNircLUMPPOM1RV8oJgpp7zJ0EqyRVmA50ZbNyldFHV
 i33MpDSuQvTtEk5T+4GDAlYd68ppzN3MH1tponWNBNbcAoUctKY4bmylEzkyNR0g/xcg
 aERA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BI50yACz2R5rNe1dzEvdX+skFIaoNaOMc/pwBnc8Jdw=;
 b=GOwahF9BqHLj6XpwroDTCpruPHFsmmrgE29KhuVF5RjjWnyMn/CcZ23Vg2fDhV/71t
 Mk8728AKOP0fXlTex7Dw25EHJ0sBW7iQ3z5ziOFhlWEr+iuLQ0UEZTVNMJOhB47wfReT
 N1Q0kl6g8X/SNNtK1HbXQf7QOqKpOsoDR0XaPsynpmmp8mkX5g/mNzU/WQaW7Mg5eWUx
 kQA3TmC9ePitbhydkFaH7WjCyS3Cq/KkgEF2QO1l5j2pKJSKNKE4vpGoSvKLdIyPZszu
 oKxQ4gy8yp6um/wnFoV157upXioYmzt57w+ckgXbp5ceN5aPQOlNQWpTiPLNgJ3+nTzH
 0K+g==
X-Gm-Message-State: APjAAAVq7Jb88zYfWbw5DZBstRJsMYGf0b7gWBdBUgSJ3Fcv801v21/2
 bOKI2RIRae+TQWfjcsk05G4Lueetk128PyxY7R8=
X-Google-Smtp-Source: APXvYqxj8u7aUxZL+fcZFNr41lVh+dRcDtT0F7nqI49qNJs5xQmK7YWVamdppueezRs1xClqz0cAwhrchltFGBmIOsQ=
X-Received: by 2002:aed:3786:: with SMTP id j6mr322102qtb.62.1582824737241;
 Thu, 27 Feb 2020 09:32:17 -0800 (PST)
MIME-Version: 1.0
References: <CAFTrPL27EUtA9UTV+GsxhyFgwdPuEMEJLhBVaQ-35fuFyBByLw@mail.gmail.com>
 <5E548121.9080608@gmail.com>
 <CAFTrPL3od+eGsjSyernAQsm66ORpXA59Tmn+DPtRUb61zZW_YA@mail.gmail.com>
 <5E5568DF.7050508@gmail.com>
 <DC7016E7-4420-441A-A4CE-6570657DD539@ionconcepts.com>
In-Reply-To: <DC7016E7-4420-441A-A4CE-6570657DD539@ionconcepts.com>
Date: Thu, 27 Feb 2020 12:32:06 -0500
Message-ID: <CAFTrPL1Pea3=hPONOJpMuu24iumpmLkaUz3tMRpmPDt0vTQQLg@mail.gmail.com>
To: Ian Buckley <ianb@ionconcepts.com>
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2060587177911553300=="
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

--===============2060587177911553300==
Content-Type: multipart/alternative; boundary="000000000000347c2f059f921aa4"

--000000000000347c2f059f921aa4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ian,

To answer your questions:
- The absolute times after run are around the 6 second mark as expected,
just with some additional 10s to 100s of microseconds that appears random
on each B210.
- All of the B210s are powered by the 5.9V 4.0A adapter they came with.

Now some good news: I think I've found a workaround. In my minimal C++
example, I first narrowed it down to get_rx_stream() where the device time
was changing. I found that in b200_impl::update_enables() that the calls
to set_active_chains(), specifically when the RX chains are turned on/off,
as well as the call to update_gpio_state() both cause the device time to
lose time sync. After trying to find a fix there I just did something more
simple: moved the synchronization code to after the call
to get_rx_stream(). This appears to fix the problem, but requires some
non-obvious steps if using GNU Radio (specially, need to call start/stop on
the USRP blocks to create the RX stream, and then do the synchronization).

Thanks for the insight on the possible time misalignment between multiple
B210s. Just to make sure I understand - for two boards with the same master
clock setting and same external PPS/10 MHz reference, there could be up to
1 master clock cycle of excess delay between the two? But on the N2xx or
X3xx that would not be the case? If so, that is useful to know, since I'm
attempting to use the B210 for time of arrival measurements and 1 clock
cycle could be significant.

-Michael

On Thu, Feb 27, 2020 at 2:36 AM Ian Buckley <ianb@ionconcepts.com> wrote:

> This is a particularly curious problem.
> The offset between B210=E2=80=99s of the =E2=80=9Ctime after run=E2=80=9D=
 values after sample
> capture has completed is very hard to explain=E2=80=A6certainly from a ha=
rdware
> only perspective.
> What are the absolute time values reported? Are they at least
> approximately 5-6 seconds as you might expect from your python? Or some
> completely random value?
> None of the UHD commands you use after =E2=80=9Cset_time_next_pps=E2=80=
=9D should cause
> any change in the relationship of the time of day counters and the PPS.
> It makes sense that all samples have the expected RX metadata data, the
> capture is triggered by an arithmetic comparison between the time-of-day
> counters and
> the value you load into the H/W as a trigger using =E2=80=9Cset_start_tim=
e=E2=80=9D, and
> the counter value is read to add meta data to each packet of RX samples
> that is assembled.
> Superficially it would appear that somehow the time-of-day counters are
> =E2=80=9Ccorrupted=E2=80=9D between the "time after align=E2=80=9D values=
 you read and before they
> count to timespec(2.0)
>
> (Completely random thought, but do you have the B210=E2=80=99s powered vi=
a USB or
> from the 6V jacks? I=E2=80=99m presuming they are plugged into to adjacen=
t USB
> ports on a host?)
>
> I should probably caution you, unrelated to this issue that the B210 isn'=
t
> designed so that multiple boards can be synced and used coherently unlike
> N210/X310. Whilst the master clock
> Is disciplined by the 10MHz, you are able to program it to arbitrary
> frequencies that are not phase aligned between boards which means PPS edg=
e
> detect events as seen by the B210=E2=80=99s
> may occur at different actual times, though this would only produce a tim=
e
> misalignment of upto only 1 master clock period.
>
> BTW Marcus the PPS bug I *think you are referring to (edge detect driven
> by different synchronizers) was fixed before 3.9LTS was released and woul=
d
> have manifested differently.
>
> On Feb 25, 2020, at 10:35 AM, Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
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
>   clocks in the B210 (each conceptual radio block in the FPGA includes it=
s
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
>> time. I'm only concerned about sample time alignment across devices, and=
 am
>> aware there is a phase offset that will need to be calibrated out
>> separately. I've had success with 1 RX channel across 2 B210s, but
>> something seems wrong when using 2 RX channels across 2 B210s.
>>
>> I've pasted a program below to help reproduce this issue. It uses 1 B210
>> to TX noise and 2 separate B210s to RX at the same time. There is a 40 d=
B
>> attenuator on the output of the transmitting B210, then a 4 way splitter=
,
>> and equal length cables to both receivers on the other 2 B210s.
>> Additionally, the 2 receiving B210s get 10 MHz and PPS from a common
>> OctoClock-G.
>>
>> Here are 10 observations of sample offsets between devices (1 MSPS rate)=
:
>> Only channel 0 on both RX: [0,0,0,0,0,0,0,0,0,0]
>> Only channel 1 on both RX: [0,0,0,0,0,0,0,0,0,0]
>> Channels 0 and 1 simultaneously on both
>> RX: [14,1,-126,48,2,-88,17,-204,-96,2]
>>
>> In the 2 channel case both channels on one device are always aligned, bu=
t
>> are offset from the channels on the other device. Both of the receiving
>> B210s show the same time last PPS when asked before the streams start. T=
he
>> times in the RX metadata also match. But after the streams stop, the
>> devices respond with different times - neither of which are correct - an=
d
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
>> tx_serial =3D '30D1***'
>> rx_serials =3D ['3153***', '3153***']
>> rx_channels =3D [0, 1]
>>
>> n_rx =3D len(rx_serials)
>> n_chan =3D len(rx_channels)
>>
>> class top_block(gr.top_block):
>>     def __init__(self):
>>         gr.top_block.__init__(self)
>>
>>         # transmit path
>>         noise_src =3D analog.noise_source_c(analog.GR_GAUSSIAN, 0.1)
>>         tx_strm_args =3D uhd.stream_args(cpu_format=3D'fc32', channels=
=3D[0])
>>         tx =3D uhd.usrp_sink('serial=3D' + tx_serial, tx_strm_args)
>>         tx.set_clock_rate(16e6)
>>         tx.set_samp_rate(1e6)
>>         tx.set_center_freq(1e9)
>>         tx.set_gain(40)
>>         tx.set_antenna('TX/RX')
>>         self.connect(noise_src, tx)
>>
>>         # receive path
>>         rx_strm_args =3D uhd.stream_args(cpu_format=3D'fc32',
>> channels=3Drx_channels)
>>         self.rx =3D [None]*n_rx
>>         head =3D [None]*n_rx*n_chan
>>         file_sink =3D [None]*n_rx*n_chan
>>         for i in range(n_rx):
>>             self.rx[i] =3D uhd.usrp_source('serial=3D' + rx_serials[i],
>> rx_strm_args)
>>             self.rx[i].set_clock_rate(16e6)
>>             self.rx[i].set_samp_rate(1e6)
>>             self.rx[i].set_center_freq(1e9)
>>             self.rx[i].set_gain(40)
>>             self.rx[i].set_antenna('RX2')
>>             self.rx[i].set_time_source('external')
>>             self.rx[i].set_clock_source('external')
>>             for j in range(n_chan):
>>                 ch =3D i*n_chan + j
>>                 head[ch] =3D blocks.head(2*gr.sizeof_float, 10000)
>>                 f =3D 'rx_%d%d.dat' % (i, j)
>>                 file_sink[ch] =3D blocks.file_sink(2*gr.sizeof_float, f)
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
>>             t =3D self.rx[i].get_time_last_pps().get_real_secs()
>>             print('RX %d time before align: %r' % (i, t))
>>         time_last_pps =3D self.rx[0].get_time_last_pps().get_real_secs()
>>         while time_last_pps =3D=3D
>> self.rx[0].get_time_last_pps().get_real_secs():
>>             time.sleep(0.1)
>>         for i in range(n_rx):
>>             self.rx[i].set_time_next_pps(uhd.time_spec_t(0))
>>         time_last_pps =3D self.rx[0].get_time_last_pps().get_real_secs()
>>         while time_last_pps =3D=3D
>> self.rx[0].get_time_last_pps().get_real_secs():
>>             time.sleep(0.1)
>>         for i in range(n_rx):
>>             t =3D self.rx[i].get_time_last_pps().get_real_secs()
>>             print('RX %d time after align: %r' % (i, t))
>>
>>         # collect in the future
>>         rx_time =3D uhd.time_spec_t(2)
>>         for i in range(n_rx):
>>             self.rx[i].set_start_time(rx_time)
>>             self.rx[i].set_recv_timeout(3)
>>
>> # run flowgraph
>> tb =3D top_block()
>> tb.start()
>> time.sleep(5)
>> tb.stop()
>>
>> # print time
>> t =3D tb.rx[0].get_time_last_pps().get_real_secs()
>> while t =3D=3D tb.rx[0].get_time_last_pps().get_real_secs():
>>     time.sleep(0.1)
>> for i in range(n_rx):
>>     t =3D tb.rx[i].get_time_last_pps().get_real_secs()
>>     print('RX %d time after run: %r' % (i, t))
>>
>> # cross-correlate receivers and print delay
>> y =3D [None]*n_rx*n_chan
>> for i in range(n_rx):
>>     for j in range(n_chan):
>>         ch =3D i*n_chan + j
>>         y[ch] =3D np.fromfile('rx_%d%d.dat' % (i, j), dtype=3Dnp.complex=
64)
>>         r =3D np.correlate(y[0], y[ch], mode=3D'full')
>>         max_lag =3D np.max([len(y[0]), len(y[ch])]) - 1
>>         lags =3D np.arange(-max_lag, max_lag+1)
>>         d =3D lags[np.argmax(np.abs(r))]
>>         print('RX %d, channel %d: %d samples' % (i, j, d))
>>
>>
>> _______________________________________________
>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com
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
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>

--000000000000347c2f059f921aa4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ian,<div><br></div><div>To answer your questions:</div>=
<div>- The absolute times after run are around the 6 second mark as expecte=
d, just with some additional 10s to 100s of microseconds that appears rando=
m on each B210.</div><div>- All of the B210s are powered by the 5.9V 4.0A a=
dapter they came with.</div><div><br></div><div>Now some good news: I think=
 I&#39;ve found a workaround. In my minimal C++ example, I first narrowed i=
t down to=C2=A0get_rx_stream() where the device time was changing. I found =
that in=C2=A0b200_impl::update_enables() that the calls to=C2=A0set_active_=
chains(), specifically when the RX chains are turned on/off, as well as the=
 call to=C2=A0update_gpio_state() both cause the device time to lose time s=
ync. After trying to find a fix there I just=C2=A0did something more simple=
: moved the synchronization code to after the call to=C2=A0get_rx_stream().=
 This appears to fix the problem, but requires some non-obvious steps if us=
ing GNU Radio (specially, need to call start/stop on the USRP blocks to cre=
ate the RX stream, and then do the synchronization).</div><div><br></div><d=
iv>Thanks for the insight on the possible time misalignment between multipl=
e B210s. Just to make sure I understand - for two boards with the same mast=
er clock setting and same external PPS/10 MHz reference, there could be up =
to 1 master clock cycle of excess delay between the two? But on the N2xx or=
 X3xx that would not be the case? If so, that is useful to know, since I&#3=
9;m attempting to use the B210 for time of arrival measurements and 1 clock=
 cycle could be significant.</div><div><br></div><div>-Michael</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Feb 27, 2020 at 2:36 AM Ian Buckley &lt;<a href=3D"mailto:ianb@ionconcepts=
.com">ianb@ionconcepts.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div style=3D"overflow-wrap: break-word;">This is=
 a particularly curious problem.<div>The offset between B210=E2=80=99s of t=
he =E2=80=9Ctime after run=E2=80=9D values after sample capture has complet=
ed is very hard to explain=E2=80=A6certainly from a hardware only perspecti=
ve.</div><div>What are the absolute time values reported? Are they at least=
 approximately 5-6 seconds as you might expect from your python? Or some co=
mpletely random value?</div><div>None of the UHD commands you use after =E2=
=80=9Cset_time_next_pps=E2=80=9D should cause any change in the relationshi=
p of the time of day counters and the PPS.</div><div>It makes sense that al=
l samples have the expected RX metadata data, the capture is triggered by a=
n arithmetic comparison between the time-of-day counters and=C2=A0</div><di=
v>the value you load into the H/W as a trigger using =E2=80=9Cset_start_tim=
e=E2=80=9D, and the counter value is read to add meta data to each packet o=
f RX samples that is assembled.</div><div>Superficially it would appear tha=
t somehow the time-of-day counters are =E2=80=9Ccorrupted=E2=80=9D between =
the &quot;time after align=E2=80=9D values you read and before they count t=
o timespec(2.0)</div><div><br></div><div>(Completely random thought, but do=
 you have the B210=E2=80=99s powered via USB or from the 6V jacks? I=E2=80=
=99m presuming they are plugged into to adjacent USB ports on a host?)</div=
><div><br></div><div>I should probably caution you, unrelated to this issue=
 that the B210 isn&#39;t designed so that multiple boards can be synced and=
 used coherently unlike N210/X310. Whilst the master clock=C2=A0</div><div>=
Is disciplined by the 10MHz, you are able to program it to arbitrary freque=
ncies that are not phase aligned between boards which means PPS edge detect=
 events as seen by the B210=E2=80=99s=C2=A0</div><div>may occur at differen=
t actual times, though this would only produce a time misalignment of upto =
only 1 master clock period.</div><div><br></div><div>BTW Marcus the PPS bug=
 I *think you are referring to (edge detect driven by different synchronize=
rs) was fixed before 3.9LTS was released and would have manifested differen=
tly.<br><div><blockquote type=3D"cite"><div>On Feb 25, 2020, at 10:35 AM, M=
arcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br><=
div>
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

_______________________________________________<br>USRP-users mailing list<=
br><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-use=
rs@lists.ettus.com</a><br><a href=3D"http://lists.ettus.com/mailman/listinf=
o/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.com/mail=
man/listinfo/usrp-users_lists.ettus.com</a><br></div></blockquote></div><br=
></div></div></blockquote></div>

--000000000000347c2f059f921aa4--


--===============2060587177911553300==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2060587177911553300==--

