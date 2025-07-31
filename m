Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91991B1771D
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 22:25:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 885F438684E
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 16:25:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753993519; bh=gdw/UQbFx7cOwhPGCYwqW/p1t7I8Fo7s6ZnssGe3gQQ=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=KFjvv42vQlvUq0gpR9qFLiRhimyWo0gdWeOSIT2Hbv5K5qtCwiq/L8l2Xvk+EX0Zp
	 fzM8S5rM2O8dfuJPymgjHd1LXJWb0OtSSZloqMBW80WtGwyPPwNH8dsVNGRYbKH92i
	 qloIL6TeP9c/Y7/Z8q7XnCF6jQQhoCkrAuVGsfSdLvPS414e3MojkkFr3iAUHX03xM
	 0llnJ9mOG6pzCySjeof+kUF8zBLyLni5weUJSmGC0j19SLq37tNTd7ni1UJyBxvAmf
	 8JC+Io5Lp2UIrka0L6VBNacCazmpMukAbfoX4uqQuDMGotFZ4jj9VwNEm5Jcdb8Kj3
	 8DzdTclRX1z0w==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id BBBBF38648C
	for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 16:24:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="HNgpZ/Jf";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ae361e8ec32so256013966b.3
        for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 13:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1753993491; x=1754598291; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DcfnzmMtzN8UPgEu2xwo4Myf/NWxgzyGtvT+m/nIaSA=;
        b=HNgpZ/JfneTIk/ixDz8VLrrWAPTyNW8scYEroNoBozJkfPWOw2RDWEt7jfk8BIQ29c
         +T51bAlVt2VKNTILAxVFYSJDHpk7V4etxjNLyWzBFTVi6w3GgrGoik50c2KM2MmK89ip
         VEXRnM+lWjL3srlpXZE2NryLL152b98r+XGn075fwI+4SEPsO7vQs15jyAZ/SJkouoW5
         2qyITF1KJgvYHDSt88CXJ5UjGTNYEYikSJav8S1bjj8a/pTwmXdZWLC99hK0GlCChG2e
         FE+wOuj7FUDxVv3UHGt6LHcIMyh/S1ATgOX69fZbbDpc9oCXl26kRw2l0ByIqie50VMr
         oUhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753993491; x=1754598291;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DcfnzmMtzN8UPgEu2xwo4Myf/NWxgzyGtvT+m/nIaSA=;
        b=vdP04A4e8Ohuqz+o/3yq5iCl6G0VSsottx4boQNoyI22SUeHx/NXgB1lHoBOkt+eTa
         ZwqgnDeFIFvkpTV+yBa3iDhx/55Ail+4cRXRWl1zEP4g0gM/VYcBIe2SknL0yZ+KLa+v
         +kIBGXsSgZxam2UgigI72qCB7tGvj9eJ+2nNynzb9LaeOCZnPxSgujYNhlJrcGnoQx0Q
         RHbGqxU8QEVEXbKofrcbXDjw1zP/1n2yMIEWO1Xd/F9hZeLaGR2l+cwpxTOjarrXrvjf
         +gxQT2gv4s9bFenKW+NB1W7VdBv+8jASvX3PmePn8Hf4eAUhg38gh3bjVMEBFmQcos+a
         BuVQ==
X-Gm-Message-State: AOJu0YwaIBVpn5V6cGK1drwJWKyaiiteds+dJDy3rKc6aKgFuziu2O9c
	2NR22ZUxDabDQO0X00uTCEV5dtqg7wVsKEESx17eGis/xLPGuq1AO31xUcU37eRN2QUi/5Z0h9D
	N5RH5G5TJTetp80qnUfM3h6xlwBolxe2BDXqZWq4rlpe+eou0ZYn4w022fg==
X-Gm-Gg: ASbGncvWVJLVDxUM1gsx1uTgo5gbJmXV6GQf83m2gUX2dwNOK23kiCp0qDQByfWBt8G
	fDyVyxtMp5vkmrlB8blJ2TA8fR9Re8ZxckrP8pZ+I7oGTUphxgpo+SkG0LixyY5jcVo+urKJt3U
	9Mpgpas5i0szcE9elRPptIgoVqEtbXDzARna1jqy19JVbZHS2iCLyZUH2HBqkJuAHeeoei/5C5k
	yPZnSV0nu3kOd63Wv/RfeK1kA/+RBqv7zXn/BPeFQzm1gcs8g==
X-Google-Smtp-Source: AGHT+IEYHX7dLtKMdO3ezBB0koB1xLEcKceoXJ2ZpbcEzm66uJejnXDn9JVwejHPVOgmoKtFgSkhe8QRvItML+osspM=
X-Received: by 2002:a17:906:d54d:b0:af1:1dfd:30f4 with SMTP id
 a640c23a62f3a-af8fda495fbmr1055851366b.47.1753993490918; Thu, 31 Jul 2025
 13:24:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HOqxb7vT2a+gvzvWS+9fADzfQVqx6h7y-5DL6vxnTZzA@mail.gmail.com>
 <CAAxXO2H46WizByNopDwDzvU9mH_h66j=vu54-Rp5V_FpRt3ojQ@mail.gmail.com>
 <CAFOi1A79+cM3zcm7pf2wez_UkZ8Fphw69qiX2KJe2qMW9D-xiA@mail.gmail.com> <CAAxXO2HDKZCger_cVx6OOOz4ufycUH=YhNOD1JK1O4f4Qpa6Qw@mail.gmail.com>
In-Reply-To: <CAAxXO2HDKZCger_cVx6OOOz4ufycUH=YhNOD1JK1O4f4Qpa6Qw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 31 Jul 2025 22:24:39 +0200
X-Gm-Features: Ac12FXyUbrlnuprZ_v6MlWrd_-AWJDHUKQXLBqGeROuLealyiyOrTcSaJ1qggTs
Message-ID: <CAFOi1A6Qv2zq6-CWZScBp=3Xh6uLR_u=xv=xTXecVhvDKVeCjw@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: RAD6NKDTJ34SQR3CFX5AQU64HVG2UUHO
X-Message-ID-Hash: RAD6NKDTJ34SQR3CFX5AQU64HVG2UUHO
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflow rx_streamer issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RAD6NKDTJ34SQR3CFX5AQU64HVG2UUHO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4635740431425290648=="

--===============4635740431425290648==
Content-Type: multipart/alternative; boundary="000000000000f7023d063b3f6e9d"

--000000000000f7023d063b3f6e9d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It sounds like you are not permanently reading samples. Everytime
rx_streamer::recv() returns, the samples are "removed" from the buffers.

--M

On Thu, Jul 31, 2025 at 8:04=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.com=
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

--000000000000f7023d063b3f6e9d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It sounds like you are not permanently=C2=A0reading s=
amples. Everytime rx_streamer::recv() returns, the samples are &quot;remove=
d&quot; from the buffers.</div><div><br></div><div>--M</div></div><br><div =
class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Jul 31, 2025 at 8:04=E2=80=AFPM Nikos Balkanas &lt;<a href=
=3D"mailto:nbalkanas@gmail.com">nbalkanas@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cl=
ass=3D"gmail_default" style=3D"font-size:small">Thanks Martin,</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gma=
il_default" style=3D"font-size:small">for your fast response.</div><div cla=
ss=3D"gmail_default" style=3D"font-size:small">My bad not mentioning my set=
up. But you got them right:)</div><div class=3D"gmail_default" style=3D"fon=
t-size:small">Ubuntu 24.04, UHD 4.6, X310, 10 Gbe line.</div><div class=3D"=
gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_defa=
ult" style=3D"font-size:small">1) Yup. I start the recv() right after I sta=
rt the streamer.=C2=A0</div><div class=3D"gmail_default" style=3D"font-size=
:small">2) Can&#39;t change that. Buffers are created in OpenCL and am mapp=
ing them to the host side to write them. They are limited to the FFT size, =
1024 samples.</div><div class=3D"gmail_default" style=3D"font-size:small"><=
br></div><div class=3D"gmail_default" style=3D"font-size:small">The interes=
ting thing is that at first I am using an FFT batch size of 16x, that is 16=
384 samples.</div><div class=3D"gmail_default" style=3D"font-size:small">Th=
at means that I have to back and get more samples 16x!</div><div class=3D"g=
mail_default" style=3D"font-size:small">However, i am not getting=C2=A0 the=
 OOs then.</div><div class=3D"gmail_default" style=3D"font-size:small">Late=
r on, I only do a single pass, .num_samples =3D 1024, just enough for 1 FFT=
, for now. This might change in the future.</div><div class=3D"gmail_defaul=
t" style=3D"font-size:small">But this is where I&#39;m getting the OO&#39;s=
.</div><div class=3D"gmail_default" style=3D"font-size:small">My test resul=
ts, couldn&#39;t get OO&#39;s with 3e5 samples ~ 5 MB in 11 hrs. That shows=
 that rx_streamer buffers are larger than 5 MB, in line with your</div><div=
 class=3D"gmail_default" style=3D"font-size:small">estimation of 25 MBs:)</=
div><div class=3D"gmail_default" style=3D"font-size:small">These are big bu=
ffers:)</div><div class=3D"gmail_default" style=3D"font-size:small">Doing a=
 few calculations, I read 1133 samples in 16x mode ~18.5 MB=C2=A0+ 6.054 MB=
 in=C2=A0 1x single FFT mode ~24.6 MBs before OOs appear.</div><div class=
=3D"gmail_default" style=3D"font-size:small">Seems that I don&#39;t read an=
ything! But I read every single sample:(</div><div class=3D"gmail_default" =
style=3D"font-size:small">Must be=C2=A0 that rx_streamer delivers the sampl=
es but doesn&#39;t reduce its buffers...</div><div class=3D"gmail_default" =
style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"f=
ont-size:small">This shouldn&#39;t be happening. Where in UHD sources is th=
is controlled?</div><div class=3D"gmail_default" style=3D"font-size:small">=
<br></div><div class=3D"gmail_default" style=3D"font-size:small">TIA</div><=
div class=3D"gmail_default" style=3D"font-size:small">Nikos</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Ju=
l 31, 2025 at 12:00=E2=80=AFPM Martin Braun &lt;<a href=3D"mailto:martin.br=
aun@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v>The size of the recv buffer depends on a bunch of things. On X310, when u=
sing 10 GbE, UHD will try and make the socket buffer 25MB in size. Until th=
e socket buffer is full, there will be no overrun.</div><div><br></div><div=
>BTW if you want to find O in UHD, grep for &quot;\&lt;O\&gt;&quot; (or ag =
&quot;\bO\b&quot;). But you don&#39;t have to, I can tell you that you will=
 end up in radio_control_impl.cpp.</div><div><br></div><div>There are sever=
al knobs for you to tune:</div><div><br></div><div>- Are you starting your =
recv() call soon enough, or is the radio streaming before=C2=A0you recv?</d=
iv><div>- Can you increase the=C2=A0buffer size that you pass into recv? In=
 an extreme case, you would pass a buffer that is big enough for all num_sa=
mps, and let UHD handle it.</div><div><br></div><div>Also, what&#39;s your =
rate, your device, your transport...</div><div><br></div><div>--M</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, Jul 31, 2025 at 10:17=E2=80=AFAM Nikos Balkanas &lt;<a href=3D"mailto:n=
balkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div class=3D"gmail_default" style=3D"font-size:small">Did some more testing=
. Tried to fill rx_streamer&#39;s buffers in purpose.</div><div class=3D"gm=
ail_default" style=3D"font-size:small">.stream_mode =3D=C2=A0UHD_STREAM_MOD=
E_NUM_SAMPS_AND_DONE</div><div class=3D"gmail_default" style=3D"font-size:s=
mall">streamer timeout set to 3&quot;.</div><div class=3D"gmail_default" st=
yle=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"fon=
t-size:small">1) .num_samples =3D 16384. Read 1024 each time in a loop slee=
ping 1&quot; each turn.</div><div class=3D"gmail_default" style=3D"font-siz=
e:small">More than 16&quot; to complete the read. No OO&#39;s.</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">2) .num_samps =3D 3e5. Read=
 1024 samples each time in a loop adding 1&quot; to sleep</div><div class=
=3D"gmail_default" style=3D"font-size:small">in each turn (1, 2, 3, 4, ...)=
. 11 hrs to complete the read. No OO&#39;s.</div><div class=3D"gmail_defaul=
t" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=
=3D"font-size:small">Is overflow even working right?</div><div class=3D"gma=
il_default" style=3D"font-size:small">How large are the streamer&#39;s rece=
ive buffers?</div><div class=3D"gmail_default" style=3D"font-size:small"><b=
r></div><div class=3D"gmail_default" style=3D"font-size:small">Nikos</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Wed, Jul 30, 2025 at 3:04=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mailto=
:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div class=3D"gmail_default" style=3D"font-size:small">Hi,</div><div class=
=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_=
default" style=3D"font-size:small">I am getting a few overflow errors after=
 sometime, from using my code..</div><div class=3D"gmail_default" style=3D"=
font-size:small">First OOs in stdout and then metadata at which point it st=
alls.</div><div class=3D"gmail_default" style=3D"font-size:small">I&#39;m u=
sing .stream_mode =3D=C2=A0UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">Each time I read .num_samps=
 in a loop until complete and then restart the streamer.</div><div class=3D=
"gmail_default" style=3D"font-size:small">I can&#39;t think of any case tha=
t I don&#39;t read all of the samples, so this shouldn&#39;t happen.</div><=
div class=3D"gmail_default" style=3D"font-size:small">What tools are there =
to debug this issue?</div><div class=3D"gmail_default" style=3D"font-size:s=
mall">A function to monitor the rx_streamer internal buffers would be very =
useful.</div><div class=3D"gmail_default" style=3D"font-size:small">Even th=
e filename that implements this overflow would be helpful.</div><div class=
=3D"gmail_default" style=3D"font-size:small">Grepping &quot;OO&quot; in the=
 sources doesn&#39;t help. Always hits in &quot;BOOST&quot;:(</div><div cla=
ss=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmai=
l_default" style=3D"font-size:small">TIA</div><div class=3D"gmail_default" =
style=3D"font-size:small">Nikos=C2=A0</div><div class=3D"gmail_default" sty=
le=3D"font-size:small"><br></div></div>
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

--000000000000f7023d063b3f6e9d--

--===============4635740431425290648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4635740431425290648==--
