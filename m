Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D768B175F8
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 20:05:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30F46386602
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 14:05:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753985128; bh=cKMx1bpm63x66ildUCtilrLZ+a4xy5jpSvVZL+vZfAk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=hCfQuGcnzTHmP2C9nhYX7mPlPrFHu9URyulOpMyG+ToqT8i9ftpUx/haLQFOGbBma
	 ej5l13uWK5ld6bSj8GcbPmrRBCTyY+ZSueTKRmHVHYNtc//hLRhSNV+zXEhroxW4uQ
	 7tNJqHi7nNptQbAUg7ABkSkB0aTgESF8S32zHjfHAgJwzRHICMlctTAfc32Z5TZp/q
	 UOb0si6E4IHD1a4PROM0UPosqfc5c4JUo/zc96UhKYTfFtPIv4vr04tXjWQhpujXYk
	 6UzLMHdQxpxtvOYA8jLDJvXGQ9ETko/QKb2log+4TqTYvhjws0tArCycckf6wAPpXZ
	 CFUPRnlGs5q8A==
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 01D6B386345
	for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 14:04:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NznG4yI1";
	dkim-atps=neutral
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-3e3e4a5715dso331775ab.3
        for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 11:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753985088; x=1754589888; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tREO0DH2OZbALmRqqNdDvLlyDr+hXZRzPIY5YxdDlvQ=;
        b=NznG4yI10ip782Zxwc0QSHqk0e/7t0TJe0voaW2ljQRT9Yw+xuag4wNfFFYtrtAhd/
         at1tWJRZVrtwxnupTQPX6559tsZcaOGs86Vuq4sDgTm90n2RJHrWLBHt6czTJrgim/Rx
         4jki3s5mUpjgmfgqz6UKN7TZhh23iuEYIoPh++H/rzKLOh5O4U2/kWKlaVfPstU8838H
         IhU6xlyOVgH0y+TDPQ3NU5l05H/qEXrhxrHcg6YcpW3tLr00t050/1MHkKVp6qJDv2UY
         x33a098E3LsIz6L0z7sKLewUw2fLfwdNy2NXxXtQ8pIbOuX0phpgMLexgpsgGE4iCVE5
         pRmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753985088; x=1754589888;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tREO0DH2OZbALmRqqNdDvLlyDr+hXZRzPIY5YxdDlvQ=;
        b=cHtHwbJzx1u0Cncdd3D3cArIYxpP2qRLX/vlToBCKAtyRye9h9jNs6NSOkhAsPMHmV
         Dcy4gfgNRUwa0E/vFa3aFWlA6UK1o13W5DleQkk0dpOZ9qDjj8OrfAK4N4txIc84vN33
         OvCRCdTeXHhxgv1h6jQvRNml6dfm2RtUkAJ5ooLbkDbMkbOs5Ip/+PdpJppfWmWIH5io
         H4YVyeEk2a9X0LahYaahdFy/d6PF92BZVbIWLk8agR8IQ3IzuI2CFjpVvv9hDsxAtwsv
         Mhz50gW9uQ7D9B7Lsa48c0wNtnJHhPbrd82hMCVpbbO4NCDJ2uX2WoArg0YpIhv00C6v
         J5XQ==
X-Gm-Message-State: AOJu0YwRcscmHeIUjSkIT9GigSKzK7C8b381LudIe/vxqStD/gmzYjTi
	QF6yMWnpx8wNBWw+NKe9ASoHUEpqhRJGa6x+WQq4Fk9mQU1qm0spgsJPVx0rDt6K8ih8Ez5cJkY
	2mPw/XfusrjjdLGGm01ho8tUG0RpCsbw=
X-Gm-Gg: ASbGncvfqhiDlygWme+ddVYfnXvNuFPMlUsNEqJJhXOC8brXyagoeoKspRjujd9abv+
	jtZnIOsiy9f+HGzIsCrQXg4hJzm3/cniC8CraYhjTzDp9FhDsJ4ejEB++EoLmIYdd/lH2tLqb0K
	CkEef+W+ry4/fsRfmH2ZGra4ZpegXlxld/FlpkGv8x/8ulmHWmch8yq1GdM3p/v7VTaIJAd//25
	6wbEef/UsRFHR6/pmw=
X-Google-Smtp-Source: AGHT+IHrXg95Esnyu8K7OOnfmG393VA/eHEVoQW7SndOrMd/NYcZnJ5c0JgiQClq9TSg4MOLQKX7r0GstbZp1idaVFM=
X-Received: by 2002:a05:6e02:10b:b0:3e2:a40e:d29f with SMTP id
 e9e14a558f8ab-3e3f61f4286mr98000035ab.9.1753985088063; Thu, 31 Jul 2025
 11:04:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HOqxb7vT2a+gvzvWS+9fADzfQVqx6h7y-5DL6vxnTZzA@mail.gmail.com>
 <CAAxXO2H46WizByNopDwDzvU9mH_h66j=vu54-Rp5V_FpRt3ojQ@mail.gmail.com> <CAFOi1A79+cM3zcm7pf2wez_UkZ8Fphw69qiX2KJe2qMW9D-xiA@mail.gmail.com>
In-Reply-To: <CAFOi1A79+cM3zcm7pf2wez_UkZ8Fphw69qiX2KJe2qMW9D-xiA@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Thu, 31 Jul 2025 21:04:35 +0300
X-Gm-Features: Ac12FXxIit4ODKClq5dYB8dOhb-KebonOvyPbP9N5gmVaVK0b2TFTH2jXfi1mWk
Message-ID: <CAAxXO2HDKZCger_cVx6OOOz4ufycUH=YhNOD1JK1O4f4Qpa6Qw@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: LAGIAYX3VIU3Q2OTHI36ILCRDSZ7O2UE
X-Message-ID-Hash: LAGIAYX3VIU3Q2OTHI36ILCRDSZ7O2UE
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflow rx_streamer issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LAGIAYX3VIU3Q2OTHI36ILCRDSZ7O2UE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1578127292740261372=="

--===============1578127292740261372==
Content-Type: multipart/alternative; boundary="0000000000001d8ebc063b3d7a77"

--0000000000001d8ebc063b3d7a77
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Martin,

for your fast response.
My bad not mentioning my setup. But you got them right:)
Ubuntu 24.04, UHD 4.6, X310, 10 Gbe line.

1) Yup. I start the recv() right after I start the streamer.
2) Can't change that. Buffers are created in OpenCL and am mapping them to
the host side to write them. They are limited to the FFT size, 1024 samples=
.

The interesting thing is that at first I am using an FFT batch size of 16x,
that is 16384 samples.
That means that I have to back and get more samples 16x!
However, i am not getting  the OOs then.
Later on, I only do a single pass, .num_samples =3D 1024, just enough for 1
FFT, for now. This might change in the future.
But this is where I'm getting the OO's.
My test results, couldn't get OO's with 3e5 samples ~ 5 MB in 11 hrs. That
shows that rx_streamer buffers are larger than 5 MB, in line with your
estimation of 25 MBs:)
These are big buffers:)
Doing a few calculations, I read 1133 samples in 16x mode ~18.5 MB + 6.054
MB in  1x single FFT mode ~24.6 MBs before OOs appear.
Seems that I don't read anything! But I read every single sample:(
Must be  that rx_streamer delivers the samples but doesn't reduce its
buffers...

This shouldn't be happening. Where in UHD sources is this controlled?

TIA
Nikos

On Thu, Jul 31, 2025 at 12:00=E2=80=AFPM Martin Braun <martin.braun@ettus.c=
om>
wrote:

> The size of the recv buffer depends on a bunch of things. On X310, when
> using 10 GbE, UHD will try and make the socket buffer 25MB in size. Until
> the socket buffer is full, there will be no overrun.
>
> BTW if you want to find O in UHD, grep for "\<O\>" (or ag "\bO\b"). But
> you don't have to, I can tell you that you will end up in
> radio_control_impl.cpp.
>
> There are several knobs for you to tune:
>
> - Are you starting your recv() call soon enough, or is the radio streamin=
g
> before you recv?
> - Can you increase the buffer size that you pass into recv? In an extreme
> case, you would pass a buffer that is big enough for all num_samps, and l=
et
> UHD handle it.
>
> Also, what's your rate, your device, your transport...
>
> --M
>
> On Thu, Jul 31, 2025 at 10:17=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.=
com>
> wrote:
>
>> Did some more testing. Tried to fill rx_streamer's buffers in purpose.
>> .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE
>> streamer timeout set to 3".
>>
>> 1) .num_samples =3D 16384. Read 1024 each time in a loop sleeping 1" eac=
h
>> turn.
>> More than 16" to complete the read. No OO's.
>> 2) .num_samps =3D 3e5. Read 1024 samples each time in a loop adding 1" t=
o
>> sleep
>> in each turn (1, 2, 3, 4, ...). 11 hrs to complete the read. No OO's.
>>
>> Is overflow even working right?
>> How large are the streamer's receive buffers?
>>
>> Nikos
>>
>> On Wed, Jul 30, 2025 at 3:04=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.=
com>
>> wrote:
>>
>>> Hi,
>>>
>>> I am getting a few overflow errors after sometime, from using my code..
>>> First OOs in stdout and then metadata at which point it stalls.
>>> I'm using .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,
>>> Each time I read .num_samps in a loop until complete and then restart
>>> the streamer.
>>> I can't think of any case that I don't read all of the samples, so this
>>> shouldn't happen.
>>> What tools are there to debug this issue?
>>> A function to monitor the rx_streamer internal buffers would be very
>>> useful.
>>> Even the filename that implements this overflow would be helpful.
>>> Grepping "OO" in the sources doesn't help. Always hits in "BOOST":(
>>>
>>> TIA
>>> Nikos
>>>
>>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001d8ebc063b3d7a77
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Tha=
nks Martin,</div><div class=3D"gmail_default" style=3D"font-size:small"><br=
></div><div class=3D"gmail_default" style=3D"font-size:small">for your fast=
 response.</div><div class=3D"gmail_default" style=3D"font-size:small">My b=
ad not mentioning my setup. But you got them right:)</div><div class=3D"gma=
il_default" style=3D"font-size:small">Ubuntu 24.04, UHD 4.6, X310, 10 Gbe l=
ine.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div>=
<div class=3D"gmail_default" style=3D"font-size:small">1) Yup. I start the =
recv() right after I start the streamer.=C2=A0</div><div class=3D"gmail_def=
ault" style=3D"font-size:small">2) Can&#39;t change that. Buffers are creat=
ed in OpenCL and am mapping them to the host side to write them. They are l=
imited to the FFT size, 1024 samples.</div><div class=3D"gmail_default" sty=
le=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font=
-size:small">The interesting thing is that at first I am using an FFT batch=
 size of 16x, that is 16384 samples.</div><div class=3D"gmail_default" styl=
e=3D"font-size:small">That means that I have to back and get more samples 1=
6x!</div><div class=3D"gmail_default" style=3D"font-size:small">However, i =
am not getting=C2=A0 the OOs then.</div><div class=3D"gmail_default" style=
=3D"font-size:small">Later on, I only do a single pass, .num_samples =3D 10=
24, just enough for 1 FFT, for now. This might change in the future.</div><=
div class=3D"gmail_default" style=3D"font-size:small">But this is where I&#=
39;m getting the OO&#39;s.</div><div class=3D"gmail_default" style=3D"font-=
size:small">My test results, couldn&#39;t get OO&#39;s with 3e5 samples ~ 5=
 MB in 11 hrs. That shows that rx_streamer buffers are larger than 5 MB, in=
 line with your</div><div class=3D"gmail_default" style=3D"font-size:small"=
>estimation of 25 MBs:)</div><div class=3D"gmail_default" style=3D"font-siz=
e:small">These are big buffers:)</div><div class=3D"gmail_default" style=3D=
"font-size:small">Doing a few calculations, I read 1133 samples in 16x mode=
 ~18.5 MB=C2=A0+ 6.054 MB in=C2=A0 1x single FFT mode ~24.6 MBs before OOs =
appear.</div><div class=3D"gmail_default" style=3D"font-size:small">Seems t=
hat I don&#39;t read anything! But I read every single sample:(</div><div c=
lass=3D"gmail_default" style=3D"font-size:small">Must be=C2=A0 that rx_stre=
amer delivers the samples but doesn&#39;t reduce its buffers...</div><div c=
lass=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gm=
ail_default" style=3D"font-size:small">This shouldn&#39;t be happening. Whe=
re in UHD sources is this controlled?</div><div class=3D"gmail_default" sty=
le=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font=
-size:small">TIA</div><div class=3D"gmail_default" style=3D"font-size:small=
">Nikos</div></div><br><div class=3D"gmail_quote gmail_quote_container"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 31, 2025 at 12:00=E2=80=AFPM=
 Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com">martin.braun@et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>The size of the recv buffer depends on a bunch=
 of things. On X310, when using 10 GbE, UHD will try and make the socket bu=
ffer 25MB in size. Until the socket buffer is full, there will be no overru=
n.</div><div><br></div><div>BTW if you want to find O in UHD, grep for &quo=
t;\&lt;O\&gt;&quot; (or ag &quot;\bO\b&quot;). But you don&#39;t have to, I=
 can tell you that you will end up in radio_control_impl.cpp.</div><div><br=
></div><div>There are several knobs for you to tune:</div><div><br></div><d=
iv>- Are you starting your recv() call soon enough, or is the radio streami=
ng before=C2=A0you recv?</div><div>- Can you increase the=C2=A0buffer size =
that you pass into recv? In an extreme case, you would pass a buffer that i=
s big enough for all num_samps, and let UHD handle it.</div><div><br></div>=
<div>Also, what&#39;s your rate, your device, your transport...</div><div><=
br></div><div>--M</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Thu, Jul 31, 2025 at 10:17=E2=80=AFAM Nikos Balka=
nas &lt;<a href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size=
:small">Did some more testing. Tried to fill rx_streamer&#39;s buffers in p=
urpose.</div><div class=3D"gmail_default" style=3D"font-size:small">.stream=
_mode =3D=C2=A0UHD_STREAM_MODE_NUM_SAMPS_AND_DONE</div><div class=3D"gmail_=
default" style=3D"font-size:small">streamer timeout set to 3&quot;.</div><d=
iv class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-size:small">1) .num_samples =3D 16384. Rea=
d 1024 each time in a loop sleeping 1&quot; each turn.</div><div class=3D"g=
mail_default" style=3D"font-size:small">More than 16&quot; to complete the =
read. No OO&#39;s.</div><div class=3D"gmail_default" style=3D"font-size:sma=
ll">2) .num_samps =3D 3e5. Read 1024 samples each time in a loop adding 1&q=
uot; to sleep</div><div class=3D"gmail_default" style=3D"font-size:small">i=
n each turn (1, 2, 3, 4, ...). 11 hrs to complete the read. No OO&#39;s.</d=
iv><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">Is overflow even working ri=
ght?</div><div class=3D"gmail_default" style=3D"font-size:small">How large =
are the streamer&#39;s receive buffers?</div><div class=3D"gmail_default" s=
tyle=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-size:small">Nikos</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Jul 30, 2025 at 3:04=E2=80=AFPM Nikos Bal=
kanas &lt;<a href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank">nbalkana=
s@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size=
:small">Hi,</div><div class=3D"gmail_default" style=3D"font-size:small"><br=
></div><div class=3D"gmail_default" style=3D"font-size:small">I am getting =
a few overflow errors after sometime, from using my code..</div><div class=
=3D"gmail_default" style=3D"font-size:small">First OOs in stdout and then m=
etadata at which point it stalls.</div><div class=3D"gmail_default" style=
=3D"font-size:small">I&#39;m using .stream_mode =3D=C2=A0UHD_STREAM_MODE_NU=
M_SAMPS_AND_DONE,</div><div class=3D"gmail_default" style=3D"font-size:smal=
l">Each time I read .num_samps in a loop until complete and then restart th=
e streamer.</div><div class=3D"gmail_default" style=3D"font-size:small">I c=
an&#39;t think of any case that I don&#39;t read all of the samples, so thi=
s shouldn&#39;t happen.</div><div class=3D"gmail_default" style=3D"font-siz=
e:small">What tools are there to debug this issue?</div><div class=3D"gmail=
_default" style=3D"font-size:small">A function to monitor the rx_streamer i=
nternal buffers would be very useful.</div><div class=3D"gmail_default" sty=
le=3D"font-size:small">Even the filename that implements this overflow woul=
d be helpful.</div><div class=3D"gmail_default" style=3D"font-size:small">G=
repping &quot;OO&quot; in the sources doesn&#39;t help. Always hits in &quo=
t;BOOST&quot;:(</div><div class=3D"gmail_default" style=3D"font-size:small"=
><br></div><div class=3D"gmail_default" style=3D"font-size:small">TIA</div>=
<div class=3D"gmail_default" style=3D"font-size:small">Nikos=C2=A0</div><di=
v class=3D"gmail_default" style=3D"font-size:small"><br></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001d8ebc063b3d7a77--

--===============1578127292740261372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1578127292740261372==--
