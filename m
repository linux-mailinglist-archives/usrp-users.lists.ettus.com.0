Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7270B020FC
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jul 2025 17:59:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB4D83861FD
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jul 2025 11:59:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752249581; bh=UvYhIdV0eKmPKW0rL7NIBxqidMXxBOF/x9HOMP0hXVk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=diC/91FHMqOkGueA9QFkqjKJw/j9wcLkfxJyNASVYdlV5vm0Vztw9QVnyFCgDBoNg
	 jWFFFKpMufgvEWiamd+UQvA+OnTRYjKfYVKKpq64+qJ9684baGDGAkeAlZIz+Jd1/n
	 qqiClrGcNDHxiYTnOODhobv1ZWffdlYR21LKwda+LFglfto3wS7+ZU7OUASGog8mvj
	 wo9BSCK2CtxUOmtxvFLYCDsB4LWMVQ1wr1zQlXX81sBuD64OcSGuxY7qon7F41jZmb
	 IosuKBUYKuFABp4ClutvCXEdvuReG9D9VEp6bI2KbOgHeeACOm/nKG084auRvxbXBH
	 S2h4+Rjua7Cjg==
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 7800F38616A
	for <usrp-users@lists.ettus.com>; Fri, 11 Jul 2025 11:58:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FBvDiwZ3";
	dkim-atps=neutral
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-3e057f2c8d8so17610775ab.1
        for <usrp-users@lists.ettus.com>; Fri, 11 Jul 2025 08:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752249525; x=1752854325; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=b81EXpN9QL7pxu6uBV3jqmtb3lUJwfJAp2o0lV/XfrY=;
        b=FBvDiwZ34veOC+KE/Rzzu/A0LfF9Kt41hgQH8gx4MERDNuInCXk8yMF0/ZGbxOZVGP
         94ZC9DR3dKDzdMtPWsbObZecmDX1U4zcHENZVIYd0ug/reSl+xp3g/P/SHFqK/UxhRWX
         PtEQAXGvvgEV/oSb0LKc8juMG0dUSmEkMES8qXebGY5UYDIsBTs0dU8qodbFNDPTG0fE
         DOwRg6ZwwSh6HOnnCRm520JgyMw3nF/zB8xA5w2YMcZ0MRA3hujyKuJzaerPUjo7473Q
         D6p8hPVpfOWnqEgP3goK6jvs7BKJGtQs9UNK8KT4AEbzl7f9pmdLQZhNsbEuSHU7Q0mw
         kYhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752249525; x=1752854325;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b81EXpN9QL7pxu6uBV3jqmtb3lUJwfJAp2o0lV/XfrY=;
        b=nd4OOGi8GeeWf+3H3b2xg0Dk8yvTj0VNDJzdBebT94wAZTxjY0iuagF16c+tI3710p
         abykr5Xo4lRgcVbWQ7hsR4ffbNarxqQlTCwopDuDT57uXmrqJ9lqMrtHTfkOrpH+uK7W
         8GXBRplXKIefXVbfk4vXqKsqcd481QsmQvHAft5/jGnpVVap4GXq8WZj8R7y3IIik5Zw
         uvizEbIp8YOKrfgtAROXggCmmpVONYrHiz1LPOgHbGyqlelFQIglUo1lz++dAwt/73Em
         U1WTzkGS9wnkAtpG6b4x5K8dv878As9TRGolFTEoVheT+nDlTKx23b3MjmNgM4hVnSAz
         UjPg==
X-Gm-Message-State: AOJu0YxLog/Qy2dXb3VFjqoHEnfhyyplGx8uoNnKTmwECiV9WPV6OYbT
	g2AoCLpVqewRNJ4fb4Odsd1tSWWy7APHj68fYxtauXYdl9HOJzLQY3PxN+4a4/lmdj/nfJx8tSl
	Y2638ZrrWPswksAOrp1gSfw01NmxoUxI=
X-Gm-Gg: ASbGnctx8MKwLxHxYQB48h5xQId4CRZY3jZNYg5fO9Bzeue91flVnn6AemJPrpjQWKT
	/hkMTMuzaiLTvLV/l+9AwARCfZted6ZgZreb4b3DCaLb0/fSs4BbFN1oztXaZcq3Ign84ksLI2v
	Femr6DDuXPjEwPWmJRYryvxA/9rcyFUHNPYT/NCFZ125Tk6MhUsg1SlhA0Iph/1HwBmuf9txCoG
	QE=
X-Google-Smtp-Source: AGHT+IH/UAhOmWwIQbgTp3NF3dNir+xGtFZ1QpdVjuP0WZ/D09YUzul7ZZvZgqSkSq/iuq8ubGjKOUWz56w7nNmbkC0=
X-Received: by 2002:a05:6e02:2287:b0:3df:3af4:ae4c with SMTP id
 e9e14a558f8ab-3e25544705fmr30158105ab.0.1752249524542; Fri, 11 Jul 2025
 08:58:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2EaJ+bkxSGJkpBJV+3F=prauS1=RtgE17WdfTks3OB17Q@mail.gmail.com>
 <CAFOi1A5KYE_PMAoY4ig3YrAqd4oALspwGohKjaU+y_Lsi4Fp2Q@mail.gmail.com>
 <CAAxXO2FH=oGaXW2FXqmS7pQMmcFW8v6=EKWOQk-EZYiogKzA8g@mail.gmail.com>
 <CAAxXO2H6dNA45fGLX+pt_SCk1VkitZzBYjiDpYoMib7m4AHZ_Q@mail.gmail.com> <CAAxXO2FSUUVnQQbf7oVjzzRjQTCc67+Rjhv16WW7D=HaFnc+nA@mail.gmail.com>
In-Reply-To: <CAAxXO2FSUUVnQQbf7oVjzzRjQTCc67+Rjhv16WW7D=HaFnc+nA@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 11 Jul 2025 18:58:33 +0300
X-Gm-Features: Ac12FXyLxuTeBqPni7rqsrmdY20jHBhG_GVCziZYiiHdsbOn-8906XdHB2a6Kmc
Message-ID: <CAAxXO2F0sd1JveQ+aypwSOZb5-dXgisZB_5pbPQPAE5-9piBfw@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: PBIDOY72C47UHZLRXRJ2YEFTGUR5WEEP
X-Message-ID-Hash: PBIDOY72C47UHZLRXRJ2YEFTGUR5WEEP
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Minimum number of dropped samples when changing frequency?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PBIDOY72C47UHZLRXRJ2YEFTGUR5WEEP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5295431208719470615=="

--===============5295431208719470615==
Content-Type: multipart/alternative; boundary="00000000000077e98a0639a962c6"

--00000000000077e98a0639a962c6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My bad. I was starting the  streamer with .stream_now =3D true before setti=
ng
the frequency:(
Streamer started  immediately gathering garbage in its buffers:(
Sorry about the confusion:(
Issue fixed:)

BR
Nikos

On Fri, Jul 11, 2025 at 5:23=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.com=
> wrote:

> Further investigation showed that in my system: X310, Ubuntu 24.04, uhd
> 4.6.0
> Minimum drop to get a proper spectrum is 1450 dropped samples:(
>
> On Thu, Jul 10, 2025 at 7:34=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.c=
om>
> wrote:
>
>> Forgot to mention that this must be a uhd issue.
>> Immediately after uhd_rx_streamer_recv
>> I use fprintf to print the sample to a file.
>> These spectra are from this file:(
>>
>> Nikos
>>
>> On Thu, Jul 10, 2025 at 2:37=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.=
com>
>> wrote:
>>
>>> Thank you Martin,
>>>
>>> For your fast reply. I am already using the sensor lo_locked to prevent
>>> center frequency LO leakage.
>>> I am using an X-310 with Ubuntu 24.01 over a 10 GBe line.
>>> Still getting signal corruption when switching frequencies. This is
>>> something else.
>>> It is gone when using an offset in my input buffers to drop the first
>>> initial samples.
>>> This shouldn't happen since I am using exact buffers with the streamer
>>> in mode UHD_STREAM_MODE_NUM_SAMPS_AND_DONE
>>> Check out these spectra:
>>>
>>> 945.2_2 is the normal 945.2 Mhz spectrum 62.500 samples.
>>> 945.2_2_16: is the same spectrum 16.384 samples with lo_locked sensor,
>>> no offset.
>>> 945.2_2_16x: is the same spectrum 16.384 samples with lo_locked sensor
>>> and offset.
>>>
>>> What is going  on?
>>>
>>> T=CE=99=CE=91
>>> Nikos
>>>
>>>
>>> On Thu, Jul 10, 2025 at 1:08=E2=80=AFPM Martin Braun <martin.braun@ettu=
s.com>
>>> wrote:
>>>
>>>> Nikos,
>>>>
>>>> there is no one answer for this, it depends on hardware used, which
>>>> specific frequencies, how your signal is flowing...
>>>> Another important thing is: are you using timed commands or not. If yo=
u
>>>> are using timed commands (and the device supports timed-tuning), then =
you
>>>> can wait exactly for the sample that should be the first sample after =
the
>>>> tune request is processed, then wait a given, deterministic time depen=
ding
>>>> on your hardware and frequencies (old and new). If your device does no=
t
>>>> support timed-tuning, or you're not using timed commands, then you mus=
t
>>>> wait several milliseconds after submitting a tune request.
>>>>
>>>> If you are doing timed tunes, then I believe none of the hardware has
>>>> an LO lock time that is worse than 100=C2=B5s (many are better).
>>>>
>>>> --M
>>>>
>>>> On Thu, Jul 10, 2025 at 4:25=E2=80=AFAM Nikos Balkanas <nbalkanas@gmai=
l.com>
>>>> wrote:
>>>>
>>>>> Hello,
>>>>>
>>>>> What is the minimum number of samples to drop to flush uhd buffers
>>>>> when changing frequencies?
>>>>>
>>>>> TIA
>>>>> Nikos
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>>

--00000000000077e98a0639a962c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">My =
bad. I was starting the=C2=A0 streamer with .stream_now =3D true before set=
ting the frequency:(</div><div class=3D"gmail_default" style=3D"font-size:s=
mall">Streamer started=C2=A0 immediately gathering garbage in its buffers:(=
=C2=A0</div><div class=3D"gmail_default" style=3D"font-size:small">Sorry ab=
out the confusion:(</div><div class=3D"gmail_default" style=3D"font-size:sm=
all">Issue fixed:)</div><div class=3D"gmail_default" style=3D"font-size:sma=
ll"><br></div><div class=3D"gmail_default" style=3D"font-size:small">BR</di=
v><div class=3D"gmail_default" style=3D"font-size:small">Nikos</div></div><=
br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Jul 11, 2025 at 5:23=E2=80=AFAM Nikos Balkanas &lt;=
<a href=3D"mailto:nbalkanas@gmail.com">nbalkanas@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div class=3D"gmail_default" style=3D"font-size:small">Further investigatio=
n showed that in my system: X310, Ubuntu 24.04, uhd 4.6.0</div><div class=
=3D"gmail_default" style=3D"font-size:small">Minimum drop to get a proper s=
pectrum is 1450 dropped samples:(</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 10, 2025 at 7:34=E2=80=
=AFPM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com" target=3D"_=
blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" sty=
le=3D"font-size:small">Forgot to mention that this must be a uhd issue.</di=
v><div class=3D"gmail_default" style=3D"font-size:small">Immediately after =
uhd_rx_streamer_recv</div><div class=3D"gmail_default" style=3D"font-size:s=
mall">I use fprintf to print the sample to a file.</div><div class=3D"gmail=
_default" style=3D"font-size:small">These spectra are from this file:(</div=
><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div clas=
s=3D"gmail_default" style=3D"font-size:small">Nikos</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 10, 20=
25 at 2:37=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.=
com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gm=
ail_default" style=3D"font-size:small">Thank you Martin,</div><div class=3D=
"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_def=
ault" style=3D"font-size:small">For your fast reply. I am already using the=
 sensor lo_locked to prevent center frequency LO leakage.</div><div class=
=3D"gmail_default" style=3D"font-size:small">I am using an X-310 with Ubunt=
u 24.01 over a 10 GBe line.</div><div class=3D"gmail_default" style=3D"font=
-size:small">Still getting signal corruption when switching frequencies. Th=
is is something else.</div><div class=3D"gmail_default" style=3D"font-size:=
small">It is gone when using an offset in my input buffers to drop the firs=
t initial samples.=C2=A0</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">This shouldn&#39;t happen since I am using exact buffers with the=
 streamer in mode=C2=A0UHD_STREAM_MODE_NUM_SAMPS_AND_DONE</div><div class=
=3D"gmail_default" style=3D"font-size:small">Check out these spectra:</div>=
<div class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-size:small">945.2_2 is the normal 945.2 Mh=
z spectrum 62.500 samples.</div><div class=3D"gmail_default" style=3D"font-=
size:small">945.2_2_16: is the same spectrum 16.384 samples with lo_locked =
sensor, no offset.</div><div class=3D"gmail_default" style=3D"font-size:sma=
ll">945.2_2_16x: is the same spectrum 16.384 samples with lo_locked sensor =
and offset.</div><div class=3D"gmail_default" style=3D"font-size:small"><br=
></div><div class=3D"gmail_default" style=3D"font-size:small">What is going=
=C2=A0 on?</div><div class=3D"gmail_default" style=3D"font-size:small"><br>=
</div><div class=3D"gmail_default" style=3D"font-size:small">T=CE=99=CE=91<=
/div><div class=3D"gmail_default" style=3D"font-size:small">Nikos</div><div=
 class=3D"gmail_default" style=3D"font-size:small"><br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 10=
, 2025 at 1:08=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto:martin.braun@e=
ttus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Nik=
os,</div><div><br></div><div>there is no one answer for this, it depends on=
 hardware used, which specific frequencies, how your signal is flowing...</=
div><div>Another important thing is: are you using timed commands or not. I=
f you are using timed commands (and the device supports timed-tuning), then=
 you can wait exactly for the sample that should be the first sample after =
the tune request is processed, then wait a given, deterministic time depend=
ing on your hardware and frequencies=C2=A0(old and new). If your device doe=
s not support timed-tuning, or you&#39;re not using timed commands, then yo=
u must wait several milliseconds after submitting a tune request.</div><div=
><br></div><div>If you are doing timed tunes, then I believe none of the ha=
rdware has an LO lock time that is worse than 100=C2=B5s (many are better).=
</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 10, 2025 at 4:25=E2=80=AFAM =
Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank"=
>nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"=
font-size:small">Hello,</div><div class=3D"gmail_default" style=3D"font-siz=
e:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">W=
hat is the minimum number of samples to drop to flush uhd buffers when chan=
ging frequencies?</div><div class=3D"gmail_default" style=3D"font-size:smal=
l"><br></div><div class=3D"gmail_default" style=3D"font-size:small">TIA</di=
v><div class=3D"gmail_default" style=3D"font-size:small">Nikos</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000077e98a0639a962c6--

--===============5295431208719470615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5295431208719470615==--
