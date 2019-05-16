Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C4020E02
	for <lists+usrp-users@lfdr.de>; Thu, 16 May 2019 19:35:47 +0200 (CEST)
Received: from [::1] (port=40932 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hRKI8-0001hl-9F; Thu, 16 May 2019 13:35:40 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:45563)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <dwwkelly@gmail.com>) id 1hRKHa-0001b0-FI
 for usrp-users@lists.ettus.com; Thu, 16 May 2019 13:35:36 -0400
Received: by mail-ot1-f65.google.com with SMTP id t24so4163388otl.12
 for <usrp-users@lists.ettus.com>; Thu, 16 May 2019 10:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=O+Rx4LvmP7vUhOw9Dn61gp05X3siaO0ctLznHxQtKVE=;
 b=FqxIzP8IKeAa4XScIzVphLVoC96AGYKDBsl//80y/LxDO41EyiO4/rq8GpwMCEbA2Q
 u03jgHf4X6VJH23V5L45NrdWUNJEcXSj6nuxQk1uTqw0gQwGio5HxsNlfx3ENJ4JJdpq
 A1cssxs29vW9UDFWmD3Ds7JosuISXCnHsBzO09hwUZX93it3zrpNgiw+xCC6uyvP9fuX
 SKqSeQrVXEMIGJMET9NMAwpP2VaW/c8L6hF3P0ilmqP9BNVs+2BrmcPev+EZZve3rSXK
 N4qD00/UNsCZyYKIJePBWcoFUoTUUGbWJbR5aEz/dV8j/S6fuOBv31fkk2SD9MPMtzmP
 WEUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=O+Rx4LvmP7vUhOw9Dn61gp05X3siaO0ctLznHxQtKVE=;
 b=Fqlh5tem+uDawUFXpKtf07KghcwPBHHMYOfkyoORwHDAZX9p+ydhBYlosKPy163hkJ
 4pOhiwdPfD4gZYOkoUe5Ta/qAp9A6omkItk0qZYuRWR+zRAszoKhiLxuVcd+NYqF9ey3
 Ob7KcmbBsHJ0XF1MSKN+fXX6fRt7b4Zabiwz02fhXwRXSNVft7Wm2ZKZGKIDIHtYGjEG
 NApWSUdQK+j/XWaDyi0w6k64NbHbdk0SzuETxwlPCvt/vnpTT28qRRvSEoO7t7MFOIoj
 nyASE0s+apFt6zbEYSpKxtMmXkLD5qGOaVXyk9cqA8Z0q++q/wxTgi2V4AKHDrIC6yRs
 d66Q==
X-Gm-Message-State: APjAAAWbgJTuhUA+qDIges/HVUlWwAJrWAB1Kx4TPUFlo2b7wh4F4mQw
 szTDPRwFiNnVVVRFLqk0dzaWzGNmUZCJZyOFnwJtIYD8
X-Google-Smtp-Source: APXvYqxn+EQ8UtNnPU9p4MmpgRz5Wn61bBNvAGVyCaRWCB18bvSyn/hNtjDOCjI8TjkJ/NLRQbvUgw/6/lqiwzWToo4=
X-Received: by 2002:a9d:60b:: with SMTP id 11mr16224576otn.9.1558028065498;
 Thu, 16 May 2019 10:34:25 -0700 (PDT)
MIME-Version: 1.0
References: <5C962B24-32A4-4F26-BE53-67D6DD7F66E7@lmco.com>
 <CAANLyubLL9ZxzhRd72jzi3knoL_TwV91BUKoTH0+0Bm81s=DhA@mail.gmail.com>
 <CAANLyuYD_Rg+3kgM17kzvXA_1icZq2HKNNBXEkeTmsp2qS4_AA@mail.gmail.com>
 <5CDB11C2.1040600@gmail.com>
In-Reply-To: <5CDB11C2.1040600@gmail.com>
Date: Thu, 16 May 2019 13:34:14 -0400
Message-ID: <CAANLyuZMVtRv7X67uvbAT7bMnzmifiMz8jKB4v-=RziQaUu2og@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] X310 witn TwinRX: master_clock_rate issue
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
From: Devin Kelly via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Devin Kelly <dwwkelly@gmail.com>
Content-Type: multipart/mixed; boundary="===============5118459349149894635=="
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

--===============5118459349149894635==
Content-Type: multipart/alternative; boundary="00000000000064ea2b058904ad75"

--00000000000064ea2b058904ad75
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So when i I try to set the master clock rate to 100 MHz directly I get an
error and when I don't set it I get a warning.

Can I just disregard the warning or is there something else going on here?

$ uhd_rx_cfile -r 10e6 -f 850e6 -g 10 -a
'args=3D192.168.40.2,master_clock_rate=3D100e6'
tmp.dat

[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36);
Boost_105300; UHD_3.12.0.heads-v3.12.0.0-0-gec786351
Traceback (most recent call last):
  File "/test/bin/bin/uhd_rx_cfile", line 263, in <module>
    tb =3D rx_cfile_block(options, filename)
  File "/test/bin/bin/uhd_rx_cfile", line 77, in __init__
    channels=3Dself.channels,
  File "/test/bin/lib64/python2.7/site-packages/gnuradio/uhd/__init__.py",
line 122, in constructor_interceptor
    return old_constructor(*args)
  File "/test/bin/lib64/python2.7/site-packages/gnuradio/uhd/uhd_swig.py",
line 2334, in make
    return _uhd_swig.usrp_source_make(*args)
RuntimeError: RuntimeError: Invalid master clock rate: 100.00 MHz.
Valid master clock rates when using a 10.000000 MHz reference clock are:
120 MHz, 184.32 MHz and 200 MHz.


$ uhd_rx_cfile -r 10e6 -f 850e6 -g 10 -a 'args=3D192.168.40.2'
tmp.dat

[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36);
Boost_105300; UHD_3.12.0.heads-v3.12.0.0-0-gec786351
[WARNING] [X300] Cannot update master clock rate! X300 Series does not
allow changing the clock rate during runtime.
[WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 200
MHz. Actual rate is: 100 MHz.
[WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 200
MHz. Actual rate is: 100 MHz.
^C


On Tue, May 14, 2019 at 3:08 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 05/14/2019 11:26 AM, Devin Kelly via USRP-users wrote:
>
> Does anyone have any ideas on this?  Is uhd_rx_cfile not the right tool t=
o
> be using?
>
> Devin
>
> The TwinRX *MUST* run with a master clock of effectively 100MHz, because
> of the way the ADCs are shared, and the DDC structure in the
>   FPGA.  Further, the fixed analog filtering is designed for a 100MHz
> clock frequency, and the synthesizers on the board require a 100MHz
>   clock (AFAIR).
>
> Simply don't specify the master clock rate when using uhd_rx_cfile, and
> the correct default *should* happen.
>
>
>
>
> On Thu, May 9, 2019 at 10:39 AM Devin Kelly <dwwkelly@gmail.com> wrote:
>
>>
>> Sorry to revive an old post but I'm having the same problem with UHD
>> 3.12.0.0.  Am I doing something wrong with uhd_rx_cfile or should I just
>> upgrade to a newer UHD?
>>
>> $ uhd_rx_cfile -r 10e6 -f 850e6 -a
>> 'args=3D192.168.40.2,master_clock_rate=3D200e6' tmp.dat
>> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36);
>> Boost_105300; UHD_3.12.0.heads-v3.12.0.0-0-gec786351
>> [WARNING] [X300] Cannot update master clock rate! X300 Series does not
>> allow changing the clock rate during runtime.
>> [WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 200
>> MHz. Actual rate is: 100 MHz.
>> [WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 200
>> MHz. Actual rate is: 100 MHz.
>> [UHD_RX] Defaulting to mid-point gains:
>> [UHD_RX] Channel 0 gain: 49.5 dB
>> ^C
>>
>> Thanks,
>> Devin
>>
>> On Thu, Jan 17, 2019 at 12:48 PM Rigney, Kevin E via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> I=E2=80=99m working with the TwinRX and am having the same results as E=
manuel. I
>>> was ignoring the warning about the sample rate but you said that it mus=
t
>>> run at 200MHz. Can you explain why UHD sets the sample rate to 100MHz i=
f
>>> 200 is required?
>>>
>>> Thanks,
>>>
>>> -Kevin
>>>
>>> On Mon, 14 Jan 2019 at 7:06 AM Emanuel via USRP-users <
>>> usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
>>>
>>> Dear Martin,
>>>
>>> thank you for clarification. Yes, please add this to the manual. We
>>> bought those TwinRX for some phase-coherent LTE signal reception, and n=
ow
>>> they seem to be not useful at all (without effort spent in sample rate
>>> conversion in post-processing etc.)
>>>
>>> I'm still wondering about the master clock rate though: I tried the
>>> benchmark with the following settings: ./benchmark_rate --args
>>> "master_clock_rate=3D200e6" --rx_subdev A:0 --rx_rate 10e6
>>> The TwinRX is mounted on slot A and a CBX-120 is mounted on slot B. I
>>> simply wanted a streaming test on the first TwinRX channel.
>>> During device initialization I get the following warnings, see below.
>>> Can you please comment on them?
>>>
>>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000=
)
>>> [WARNING] [X300] Cannot update master clock rate! X300 Series does not
>>> allow changing the clock rate during runtime.
>>> [WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 20=
0
>>> MHz. Actual rate is: 100 MHz.
>>> Using Device: Single USRP:
>>>   Device: X-Series Device
>>>   Mboard 0: X310
>>>   RX Channel: 0
>>>     RX DSP: 0
>>>     RX Dboard: A
>>>     RX Subdev: TwinRX RX0
>>>   TX Channel: 0
>>>     TX DSP: 0
>>>     TX Dboard: A
>>>     TX Subdev: Unknown (0x0094) - 0
>>>   TX Channel: 1
>>>     TX DSP: 0
>>>     TX Dboard: B
>>>     TX Subdev: CBX-120 TX
>>>
>>> [00:00:05.874991] Setting device timestamp to 0...
>>> .....
>>>
>>> Cheers,
>>> Emanuel
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
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

--00000000000064ea2b058904ad75
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>So when i I try to set the master cl=
ock rate to 100 MHz directly I get an error and when I don&#39;t set it I g=
et a warning.=C2=A0 <br></div><div><br></div><div>Can I just disregard the =
warning or is there something else going on here?<br></div><div><br></div><=
div>$ uhd_rx_cfile -r 10e6 -f 850e6 -g 10 -a &#39;args=3D192.168.40.2,maste=
r_clock_rate=3D100e6&#39; tmp.dat=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>[INFO] [UHD] linux; GNU C++ versio=
n 4.8.5 20150623 (Red Hat 4.8.5-36); Boost_105300; UHD_3.12.0.heads-v3.12.0=
.0-0-gec786351<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/=
test/bin/bin/uhd_rx_cfile&quot;, line 263, in &lt;module&gt;<br>=C2=A0=C2=
=A0=C2=A0 tb =3D rx_cfile_block(options, filename)<br>=C2=A0 File &quot;/te=
st/bin/bin/uhd_rx_cfile&quot;, line 77, in __init__<br>=C2=A0=C2=A0=C2=A0 c=
hannels=3Dself.channels,<br>=C2=A0 File &quot;/test/bin/lib64/python2.7/sit=
e-packages/gnuradio/uhd/__init__.py&quot;, line 122, in constructor_interce=
ptor<br>=C2=A0=C2=A0=C2=A0 return old_constructor(*args)<br>=C2=A0 File &qu=
ot;/test/bin/lib64/python2.7/site-packages/gnuradio/uhd/uhd_swig.py&quot;, =
line 2334, in make<br>=C2=A0=C2=A0=C2=A0 return _uhd_swig.usrp_source_make(=
*args)<br>RuntimeError: RuntimeError: Invalid master clock rate: 100.00 MHz=
.<br>Valid master clock rates when using a 10.000000 MHz reference clock ar=
e:<br>120 MHz, 184.32 MHz and 200 MHz.<br></div><div><br></div><div><br></d=
iv><div>$ uhd_rx_cfile -r 10e6 -f 850e6 -g 10 -a &#39;args=3D192.168.40.2&#=
39; tmp.dat=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 <br>[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4=
.8.5-36); Boost_105300; UHD_3.12.0.heads-v3.12.0.0-0-gec786351<br>[WARNING]=
 [X300] Cannot update master clock rate! X300 Series does not allow changin=
g the clock rate during runtime.<br>[WARNING] [X300 RADIO] Requesting inval=
id sampling rate from device: 200 MHz. Actual rate is: 100 MHz.<br>[WARNING=
] [X300 RADIO] Requesting invalid sampling rate from device: 200 MHz. Actua=
l rate is: 100 MHz.<br>^C<br><br></div></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 14, 2019 at 3:08 P=
M Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_6624613924714119179moz-cite-prefix">On 05/14/2019=
 11:26 AM, Devin Kelly via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Does anyone have any ideas on this?=C2=A0 Is uhd_rx_cfile not
          the right tool to be using?</div>
        <div><br>
        </div>
        <div>Devin<br>
        </div>
      </div>
      <br>
    </blockquote>
    The TwinRX *MUST* run with a master clock of effectively 100MHz,
    because of the way the ADCs are shared, and the DDC structure in the<br=
>
    =C2=A0 FPGA.=C2=A0 Further, the fixed analog filtering is designed for =
a
    100MHz clock frequency, and the synthesizers on the board require a
    100MHz<br>
    =C2=A0 clock (AFAIR).<br>
    <br>
    Simply don&#39;t specify the master clock rate when using uhd_rx_cfile,
    and the correct default *should* happen.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 9, 2019 at 10:39
          AM Devin Kelly &lt;<a href=3D"mailto:dwwkelly@gmail.com" target=
=3D"_blank">dwwkelly@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div><br>
                </div>
                <div>Sorry to revive an old post but I&#39;m having the sam=
e
                  problem with UHD 3.12.0.0.=C2=A0 Am I doing something wro=
ng
                  with uhd_rx_cfile or should I just upgrade to a newer
                  UHD?<br>
                </div>
                <div><br>
                </div>
                <div style=3D"margin-left:40px">$ uhd_rx_cfile -r 10e6 -f
                  850e6 -a &#39;args=3D192.168.40.2,master_clock_rate=3D200=
e6&#39;
                  tmp.dat<br>
                  [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623
                  (Red Hat 4.8.5-36); Boost_105300;
                  UHD_3.12.0.heads-v3.12.0.0-0-gec786351<br>
                  [WARNING] [X300] Cannot update master clock rate! X300
                  Series does not allow changing the clock rate during
                  runtime.<br>
                  [WARNING] [X300 RADIO] Requesting invalid sampling
                  rate from device: 200 MHz. Actual rate is: 100 MHz.<br>
                  [WARNING] [X300 RADIO] Requesting invalid sampling
                  rate from device: 200 MHz. Actual rate is: 100 MHz.<br>
                  [UHD_RX] Defaulting to mid-point gains:<br>
                  [UHD_RX] Channel 0 gain: 49.5 dB<br>
                  ^C<br>
                </div>
              </div>
            </div>
            <div><br>
            </div>
            <div>Thanks,</div>
            <div>Devin<br>
            </div>
            <div><br>
            </div>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 17, 2019 at
                12:48 PM Rigney, Kevin E via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com=
</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I=E2=80=99m=
 working with the
                TwinRX and am having the same results as Emanuel. I was
                ignoring the warning about the sample rate but you said
                that it must run at 200MHz. Can you explain why UHD sets
                the sample rate to 100MHz if 200 is required?<br>
                <br>
                Thanks,<br>
                <br>
                -Kevin<br>
                <br>
                On Mon, 14 Jan 2019 at 7:06 AM Emanuel via USRP-users
                &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;&g=
t;
                wrote:<br>
                <br>
                Dear Martin,<br>
                <br>
                thank you for clarification. Yes, please add this to the
                manual. We bought those TwinRX for some phase-coherent
                LTE signal reception, and now they seem to be not useful
                at all (without effort spent in sample rate conversion
                in post-processing etc.)<br>
                <br>
                I&#39;m still wondering about the master clock rate though:
                I tried the benchmark with the following settings:
                ./benchmark_rate --args &quot;master_clock_rate=3D200e6&quo=
t;
                --rx_subdev A:0 --rx_rate 10e6<br>
                The TwinRX is mounted on slot A and a CBX-120 is mounted
                on slot B. I simply wanted a streaming test on the first
                TwinRX channel.<br>
                During device initialization I get the following
                warnings, see below. Can you please comment on them?<br>
                <br>
                [INFO] [0/DUC_1] Initializing block control (NOC ID:
                0xD0C0000000000000)<br>
                [WARNING] [X300] Cannot update master clock rate! X300
                Series does not allow changing the clock rate during
                runtime.<br>
                [WARNING] [X300 RADIO] Requesting invalid sampling rate
                from device: 200 MHz. Actual rate is: 100 MHz.<br>
                Using Device: Single USRP:<br>
                =C2=A0 Device: X-Series Device<br>
                =C2=A0 Mboard 0: X310<br>
                =C2=A0 RX Channel: 0<br>
                =C2=A0 =C2=A0 RX DSP: 0<br>
                =C2=A0 =C2=A0 RX Dboard: A<br>
                =C2=A0 =C2=A0 RX Subdev: TwinRX RX0<br>
                =C2=A0 TX Channel: 0<br>
                =C2=A0 =C2=A0 TX DSP: 0<br>
                =C2=A0 =C2=A0 TX Dboard: A<br>
                =C2=A0 =C2=A0 TX Subdev: Unknown (0x0094) - 0<br>
                =C2=A0 TX Channel: 1<br>
                =C2=A0 =C2=A0 TX DSP: 0<br>
                =C2=A0 =C2=A0 TX Dboard: B<br>
                =C2=A0 =C2=A0 TX Subdev: CBX-120 TX<br>
                <br>
                [00:00:05.874991] Setting device timestamp to 0...<br>
                .....<br>
                <br>
                Cheers,<br>
                Emanuel<br>
                <br>
                _______________________________________________<br>
                USRP-users mailing list<br>
                <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_bl=
ank">USRP-users@lists.ettus.com</a><br>
                <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-use=
rs_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus=
.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"gmail-m_6624613924714119179mimeAttachmentHeader"><=
/fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a class=3D"gmail-m_6624613924714119179moz-txt-link-abbreviated" href=3D"ma=
ilto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.c=
om</a>
<a class=3D"gmail-m_6624613924714119179moz-txt-link-freetext" href=3D"http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_b=
lank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a=
>
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

--00000000000064ea2b058904ad75--


--===============5118459349149894635==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5118459349149894635==--

