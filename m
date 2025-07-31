Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D3DB1760A
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 20:15:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAD5D386176
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 14:15:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753985757; bh=0D3g35dXY2u44ujD375o2QAT36WXZ4ObZ+yCERxG+ps=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=N8vzjqloz9ZNHikZ2BGq81V/RoikRyX4im/WA8OCCYOfeJSo0dI/z4I1hvEraI2Xx
	 sx+T80joEANnIW4dcNCbiRAA/fmm8i1S2tGbISRfguKmZYbfn0ZpnXwRu5Epb4jyDa
	 Oiuk0IZPXbsM+dv8+KhpP9OaRDhKPIrGlYLdTgFFofjyJCUTIiLIiMVL74me4bVQLO
	 zQzZ1scPFZGkzNt/O+BHb1aTxYzGIa8PV+UxGI4uUzdRh7HbXkUnbYvZKh4Cf4Fbsa
	 1RGYyhxNCnIkvYS4pT8vPORvgGyndKISanfVIutOfDBUEFH/PlRadCsC6aVW+El1b+
	 MQvODB+lHLA1w==
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 25952386119
	for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 14:15:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="N21NQoIU";
	dkim-atps=neutral
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-8815718e416so10652139f.0
        for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 11:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753985717; x=1754590517; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FpTqhhiTJYZaEjHZDPvmGsU70gqoPoDdhs4pOSenG1g=;
        b=N21NQoIUMbA9HlZ7P3S5ICVwwutoTzPQ+Yv8XyDr562adLPCzzKJIhABJeTnkenqUN
         AsIrCmdgy49BdPR608m3V+2bIjpsvtgw8CGFKCSQcpEpE9kr96NMb2hrmVUEq92hrWiQ
         OTBL/+yrYfFrQtMZeGjys2h5WgkkCflk+WKmDIg0ERjtiwLSHXjHgxkGY2m7doSgfEvz
         aHMyDxMTH5oJZH9WxtKpeHeX1Vivjr0CHubbrMX5tfTxrhYN/01S/N+Uai/kUXjey9YP
         aPw8/q9ax5WFjLx5127kFjfB+fX5sBu/0Y9p9D9v6YBF7/sX5v40PqnFeVDRuvn+Erot
         Nh8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753985717; x=1754590517;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FpTqhhiTJYZaEjHZDPvmGsU70gqoPoDdhs4pOSenG1g=;
        b=FTtPq5VUmNUjrPTKaAvQjXwf1q0FpYTOhwBZo/iVIPr7I4uwXmz9XGpO1ffHedKIG1
         Pw28KdQ+IxeL5DVk8XDCgwSUNo/tV5ExkZ6A5317rFnw3rnVA4lFo/VtXmMaT3SXJxoz
         iMQb+uynQ+CPYEs1YTFXv+mKc6vEVrIwaaZ3+XAooizSCgZrQl9S1GW2zIC7ahkVYVy7
         0hVGbPKHDhbkmq8d6G1qoa8UVkje+s94a+3KRBkNx8Nscv/t3AaU7zBo2JIcRIfRlfgP
         Y8ieKQG+/4fDkFAQN44qAKmXUd31f0+zvo9+zLBk02Ylk3+KKrLdxoaz1INr/KAxK4al
         xNTg==
X-Gm-Message-State: AOJu0Yy3kmqOjmAhXlLNSGjksnLSLtzMyU7SBM4Vsa3PT107ztlQb4Ce
	mNNFal5jszeSl+f3nqBb4Fs1NLQ7csnQLEr/QZDn8EtW8Otar8sh/kcRzboomxOvWDRsbk6UohF
	a6wDhsicpGNvxCr6YM28VrWxUxG7MU6aHbA==
X-Gm-Gg: ASbGncvN2KK5v/uUJ/48KTYpf+/j+z/wF3gxAnVIMyg1pTI9iKwgenGlGK9gzS2yX+2
	2t3bhkcqR80YizT+a/rSRZbGrvthkukyIHlfsP0isWywnlWVRGRDyPxOKGY+iTI23MaLb7HjZ/+
	VnMkFsi2DVKlAlEpLrna0rimtWp2McwvI9dgE9cwbpHVQbpjJp4aP7HUsGFPS8UNEVihJIvtDtw
	A==
X-Google-Smtp-Source: AGHT+IGLCrqV0vTy6fQvtoK0CAEL+bnNlSDmcBYKNfNBoIKgNJ3oczQMboYu+FL5cvlUYq33f0yXRFo2Grg2Bi/gKGU=
X-Received: by 2002:a05:6e02:4612:b0:3dd:f338:6361 with SMTP id
 e9e14a558f8ab-3e3f60ece5emr132213345ab.6.1753985717304; Thu, 31 Jul 2025
 11:15:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HOqxb7vT2a+gvzvWS+9fADzfQVqx6h7y-5DL6vxnTZzA@mail.gmail.com>
 <CAAxXO2H46WizByNopDwDzvU9mH_h66j=vu54-Rp5V_FpRt3ojQ@mail.gmail.com>
 <CAFOi1A79+cM3zcm7pf2wez_UkZ8Fphw69qiX2KJe2qMW9D-xiA@mail.gmail.com> <CAAxXO2HDKZCger_cVx6OOOz4ufycUH=YhNOD1JK1O4f4Qpa6Qw@mail.gmail.com>
In-Reply-To: <CAAxXO2HDKZCger_cVx6OOOz4ufycUH=YhNOD1JK1O4f4Qpa6Qw@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Thu, 31 Jul 2025 21:15:03 +0300
X-Gm-Features: Ac12FXz-i0d-2b0bQFP1j1O3T8YDhUXItcXQPaFrBcZvkq1QJR2tuBklLBFsawE
Message-ID: <CAAxXO2HHZme7z2DZTd8njxSwGQv_JUx-27vP-r1Hqo1oWBZSmQ@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: I4T53XAJ4BMEJP342LVKPF36U67IJXGG
X-Message-ID-Hash: I4T53XAJ4BMEJP342LVKPF36U67IJXGG
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflow rx_streamer issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I4T53XAJ4BMEJP342LVKPF36U67IJXGG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6808944620478883344=="

--===============6808944620478883344==
Content-Type: multipart/alternative; boundary="0000000000009f0298063b3d9f3b"

--0000000000009f0298063b3d9f3b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

1 more detail.
OpenCL buffers are created from GPU (=3D Graphical Processing Unit) memory,
that means in my video card.
It is mapped in host memory when reading from the streamer.
My app sees very clearly this memory, and so should rx_streamer:)
I need to check that file.

Nikos

On Thu, Jul 31, 2025 at 9:04=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.com=
> wrote:

> Thanks Martin,
>
> for your fast response.
> My bad not mentioning my setup. But you got them right:)
> Ubuntu 24.04, UHD 4.6, X310, 10 Gbe line.
>
> 1) Yup. I start the recv() right after I start the streamer.
> 2) Can't change that. Buffers are created in OpenCL and am mapping them t=
o
> the host side to write them. They are limited to the FFT size, 1024 sampl=
es.
>
> The interesting thing is that at first I am using an FFT batch size of
> 16x, that is 16384 samples.
> That means that I have to back and get more samples 16x!
> However, i am not getting  the OOs then.
> Later on, I only do a single pass, .num_samples =3D 1024, just enough for=
 1
> FFT, for now. This might change in the future.
> But this is where I'm getting the OO's.
> My test results, couldn't get OO's with 3e5 samples ~ 5 MB in 11 hrs. Tha=
t
> shows that rx_streamer buffers are larger than 5 MB, in line with your
> estimation of 25 MBs:)
> These are big buffers:)
> Doing a few calculations, I read 1133 samples in 16x mode ~18.5 MB + 6.05=
4
> MB in  1x single FFT mode ~24.6 MBs before OOs appear.
> Seems that I don't read anything! But I read every single sample:(
> Must be  that rx_streamer delivers the samples but doesn't reduce its
> buffers...
>
> This shouldn't be happening. Where in UHD sources is this controlled?
>
> TIA
> Nikos
>
> On Thu, Jul 31, 2025 at 12:00=E2=80=AFPM Martin Braun <martin.braun@ettus=
.com>
> wrote:
>
>> The size of the recv buffer depends on a bunch of things. On X310, when
>> using 10 GbE, UHD will try and make the socket buffer 25MB in size. Unti=
l
>> the socket buffer is full, there will be no overrun.
>>
>> BTW if you want to find O in UHD, grep for "\<O\>" (or ag "\bO\b"). But
>> you don't have to, I can tell you that you will end up in
>> radio_control_impl.cpp.
>>
>> There are several knobs for you to tune:
>>
>> - Are you starting your recv() call soon enough, or is the radio
>> streaming before you recv?
>> - Can you increase the buffer size that you pass into recv? In an extrem=
e
>> case, you would pass a buffer that is big enough for all num_samps, and =
let
>> UHD handle it.
>>
>> Also, what's your rate, your device, your transport...
>>
>> --M
>>
>> On Thu, Jul 31, 2025 at 10:17=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail=
.com>
>> wrote:
>>
>>> Did some more testing. Tried to fill rx_streamer's buffers in purpose.
>>> .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE
>>> streamer timeout set to 3".
>>>
>>> 1) .num_samples =3D 16384. Read 1024 each time in a loop sleeping 1" ea=
ch
>>> turn.
>>> More than 16" to complete the read. No OO's.
>>> 2) .num_samps =3D 3e5. Read 1024 samples each time in a loop adding 1" =
to
>>> sleep
>>> in each turn (1, 2, 3, 4, ...). 11 hrs to complete the read. No OO's.
>>>
>>> Is overflow even working right?
>>> How large are the streamer's receive buffers?
>>>
>>> Nikos
>>>
>>> On Wed, Jul 30, 2025 at 3:04=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail=
.com>
>>> wrote:
>>>
>>>> Hi,
>>>>
>>>> I am getting a few overflow errors after sometime, from using my code.=
.
>>>> First OOs in stdout and then metadata at which point it stalls.
>>>> I'm using .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,
>>>> Each time I read .num_samps in a loop until complete and then restart
>>>> the streamer.
>>>> I can't think of any case that I don't read all of the samples, so thi=
s
>>>> shouldn't happen.
>>>> What tools are there to debug this issue?
>>>> A function to monitor the rx_streamer internal buffers would be very
>>>> useful.
>>>> Even the filename that implements this overflow would be helpful.
>>>> Grepping "OO" in the sources doesn't help. Always hits in "BOOST":(
>>>>
>>>> TIA
>>>> Nikos
>>>>
>>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000009f0298063b3d9f3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">1 m=
ore detail.</div><div class=3D"gmail_default" style=3D"font-size:small">Ope=
nCL buffers are created from GPU (=3D Graphical Processing Unit) memory, th=
at means in my video card.</div><div class=3D"gmail_default" style=3D"font-=
size:small">It is mapped in host memory when reading from the streamer.</di=
v><div class=3D"gmail_default" style=3D"font-size:small">My app sees very c=
learly this memory, and so should rx_streamer:)</div><div class=3D"gmail_de=
fault" style=3D"font-size:small">I need to check that file.</div><div class=
=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_=
default" style=3D"font-size:small">Nikos</div></div><br><div class=3D"gmail=
_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Jul 31, 2025 at 9:04=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mailto:nbalk=
anas@gmail.com">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_def=
ault" style=3D"font-size:small">Thanks Martin,</div><div class=3D"gmail_def=
ault" style=3D"font-size:small"><br></div><div class=3D"gmail_default" styl=
e=3D"font-size:small">for your fast response.</div><div class=3D"gmail_defa=
ult" style=3D"font-size:small">My bad not mentioning my setup. But you got =
them right:)</div><div class=3D"gmail_default" style=3D"font-size:small">Ub=
untu 24.04, UHD 4.6, X310, 10 Gbe line.</div><div class=3D"gmail_default" s=
tyle=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-size:small">1) Yup. I start the recv() right after I start the streamer.=
=C2=A0</div><div class=3D"gmail_default" style=3D"font-size:small">2) Can&#=
39;t change that. Buffers are created in OpenCL and am mapping them to the =
host side to write them. They are limited to the FFT size, 1024 samples.</d=
iv><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">The interesting thing is th=
at at first I am using an FFT batch size of 16x, that is 16384 samples.</di=
v><div class=3D"gmail_default" style=3D"font-size:small">That means that I =
have to back and get more samples 16x!</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">However, i am not getting=C2=A0 the OOs then.</div>=
<div class=3D"gmail_default" style=3D"font-size:small">Later on, I only do =
a single pass, .num_samples =3D 1024, just enough for 1 FFT, for now. This =
might change in the future.</div><div class=3D"gmail_default" style=3D"font=
-size:small">But this is where I&#39;m getting the OO&#39;s.</div><div clas=
s=3D"gmail_default" style=3D"font-size:small">My test results, couldn&#39;t=
 get OO&#39;s with 3e5 samples ~ 5 MB in 11 hrs. That shows that rx_streame=
r buffers are larger than 5 MB, in line with your</div><div class=3D"gmail_=
default" style=3D"font-size:small">estimation of 25 MBs:)</div><div class=
=3D"gmail_default" style=3D"font-size:small">These are big buffers:)</div><=
div class=3D"gmail_default" style=3D"font-size:small">Doing a few calculati=
ons, I read 1133 samples in 16x mode ~18.5 MB=C2=A0+ 6.054 MB in=C2=A0 1x s=
ingle FFT mode ~24.6 MBs before OOs appear.</div><div class=3D"gmail_defaul=
t" style=3D"font-size:small">Seems that I don&#39;t read anything! But I re=
ad every single sample:(</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">Must be=C2=A0 that rx_streamer delivers the samples but doesn&#39=
;t reduce its buffers...</div><div class=3D"gmail_default" style=3D"font-si=
ze:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">=
This shouldn&#39;t be happening. Where in UHD sources is this controlled?</=
div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div c=
lass=3D"gmail_default" style=3D"font-size:small">TIA</div><div class=3D"gma=
il_default" style=3D"font-size:small">Nikos</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 31, 2025 at 12=
:00=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" t=
arget=3D"_blank">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>The size of th=
e recv buffer depends on a bunch of things. On X310, when using 10 GbE, UHD=
 will try and make the socket buffer 25MB in size. Until the socket buffer =
is full, there will be no overrun.</div><div><br></div><div>BTW if you want=
 to find O in UHD, grep for &quot;\&lt;O\&gt;&quot; (or ag &quot;\bO\b&quot=
;). But you don&#39;t have to, I can tell you that you will end up in radio=
_control_impl.cpp.</div><div><br></div><div>There are several knobs for you=
 to tune:</div><div><br></div><div>- Are you starting your recv() call soon=
 enough, or is the radio streaming before=C2=A0you recv?</div><div>- Can yo=
u increase the=C2=A0buffer size that you pass into recv? In an extreme case=
, you would pass a buffer that is big enough for all num_samps, and let UHD=
 handle it.</div><div><br></div><div>Also, what&#39;s your rate, your devic=
e, your transport...</div><div><br></div><div>--M</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 31, 2025=
 at 10:17=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.c=
om" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gma=
il_default" style=3D"font-size:small">Did some more testing. Tried to fill =
rx_streamer&#39;s buffers in purpose.</div><div class=3D"gmail_default" sty=
le=3D"font-size:small">.stream_mode =3D=C2=A0UHD_STREAM_MODE_NUM_SAMPS_AND_=
DONE</div><div class=3D"gmail_default" style=3D"font-size:small">streamer t=
imeout set to 3&quot;.</div><div class=3D"gmail_default" style=3D"font-size=
:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">1)=
 .num_samples =3D 16384. Read 1024 each time in a loop sleeping 1&quot; eac=
h turn.</div><div class=3D"gmail_default" style=3D"font-size:small">More th=
an 16&quot; to complete the read. No OO&#39;s.</div><div class=3D"gmail_def=
ault" style=3D"font-size:small">2) .num_samps =3D 3e5. Read 1024 samples ea=
ch time in a loop adding 1&quot; to sleep</div><div class=3D"gmail_default"=
 style=3D"font-size:small">in each turn (1, 2, 3, 4, ...). 11 hrs to comple=
te the read. No OO&#39;s.</div><div class=3D"gmail_default" style=3D"font-s=
ize:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small"=
>Is overflow even working right?</div><div class=3D"gmail_default" style=3D=
"font-size:small">How large are the streamer&#39;s receive buffers?</div><d=
iv class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-size:small">Nikos</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 30, 202=
5 at 3:04=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.c=
om" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gma=
il_default" style=3D"font-size:small">Hi,</div><div class=3D"gmail_default"=
 style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"=
font-size:small">I am getting a few overflow errors after sometime, from us=
ing my code..</div><div class=3D"gmail_default" style=3D"font-size:small">F=
irst OOs in stdout and then metadata at which point it stalls.</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">I&#39;m using .stream_mode =
=3D=C2=A0UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">Each time I read .num_samps in a loop until c=
omplete and then restart the streamer.</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">I can&#39;t think of any case that I don&#39;t read=
 all of the samples, so this shouldn&#39;t happen.</div><div class=3D"gmail=
_default" style=3D"font-size:small">What tools are there to debug this issu=
e?</div><div class=3D"gmail_default" style=3D"font-size:small">A function t=
o monitor the rx_streamer internal buffers would be very useful.</div><div =
class=3D"gmail_default" style=3D"font-size:small">Even the filename that im=
plements this overflow would be helpful.</div><div class=3D"gmail_default" =
style=3D"font-size:small">Grepping &quot;OO&quot; in the sources doesn&#39;=
t help. Always hits in &quot;BOOST&quot;:(</div><div class=3D"gmail_default=
" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D=
"font-size:small">TIA</div><div class=3D"gmail_default" style=3D"font-size:=
small">Nikos=C2=A0</div><div class=3D"gmail_default" style=3D"font-size:sma=
ll"><br></div></div>
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
</blockquote></div>

--0000000000009f0298063b3d9f3b--

--===============6808944620478883344==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6808944620478883344==--
