Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 838C9B16E0B
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 11:00:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D40B3865D4
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 05:00:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753952421; bh=XSF61+b+uEMPzouBOac9yAI3t+xv6Upi0eB/H2C6F5M=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qobV54fnFjjFyey72k43DZb8MMBptuRGw4X28JpZGqYJc2FES0jgYdvuzdKp59mLH
	 xVZG7O9A/1QRDdBYvPr6Tlj82nGY32iBtUQl1Xb9EQQJCK3vPqLXaaPeOCM4+2QRts
	 vyoJj3yXxWYdh0NY1cp2oUby8IK9HawyxQ2m6Lm1JQwKWXQ0lRBxCAx5psmcAmTmNn
	 LDQhQj8+f4dAex0iJKub46h4S/KZIOLoof9u4uWtby8rApjzBkVr+qGtBA4qz/nzFz
	 1eRVpLQfUvTIq45Mw/Nb5P4daTUmB/b2Rvp9OH7v2NMJgBswxCHEUGOJfeh06nQr/2
	 /5m5iCIwTN6Qg==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id AC761386565
	for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 04:59:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="RjCNz7lS";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ae360b6249fso128875566b.1
        for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 01:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1753952393; x=1754557193; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ta79Vr8Uj5L1XkJi9DQ4yIWXRQflxKQL3g9L9nWqSc4=;
        b=RjCNz7lSXpOjSySeZaoStnc5hP6kG3YpMllT6L7FrIZWaSFKOG8X49Ehdm5XImGTFS
         ssbYi5dSjwIrmPvQvEmo5g83mIWQLr/lTqmKrPh3Cb2HqGJGLfRMKvqzxBsLGa2HAASb
         rmoCN1OCjXC6pRejhdlaxbQuOh9fyAGaZ43PKJIOVeYD/T3HVIYEIZzEJco/iLn95u0L
         KprLppByVjFMTln0fjeQg4wL0j68CqBLGAFDCT+pUxiMvAwPeW2I13muulxRDLMM5j8L
         //dnju+ax/7EABJwx3QLlemToS+epso6pofrNAU2+nbXcF8ULiM5e3ne2ZUwFUqFcPpm
         3Zjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753952393; x=1754557193;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ta79Vr8Uj5L1XkJi9DQ4yIWXRQflxKQL3g9L9nWqSc4=;
        b=IB9G6wcGrbqBqqGI/wJRCc4c35O67MBN10gQBaRuFfBUNAUD+sVXuBWmsuv66LMvy0
         UNE7OdA99kVdF4nhqkl7ZFKgqNIfhmu5VBKPJQTL6HdiGlAR2jzQgzoMWEDBQCaz6M+V
         rXbQg4dcDvGYnzJyPK87jqC+9kaLm4GbHGOcuKvNXtCDXCMkNSl7nVDC9TFgn5OeGxpI
         xURx79ir1eVuYr9qiE0zE1O0cSndYShY2yK55T7vgP8XDUGg+lhVqEzZSUIuxkVWoXEe
         YfbyGP8jffmjovotMqQkvauHpxspgwWuEXHvbPa464FLiIVG5yMlzHRMDAfYS15ky2CR
         nsCA==
X-Gm-Message-State: AOJu0YyK2URIMf7JXIqkqe8uZcJCxP7bh3UY6yhnH9zIe2kUvRNCy769
	St1Bj9beAYNu82r5b8OvlF1AG2RrfVj4tdygV8uXesOD+3nUBQjLEQ71SWC4TjkdU1uVg+3Xs6x
	BhKb6D59QJElhNBlujQgg2Bhxf0dOVwTL04lLMdgUBAaM0gNfw338XBE6VA==
X-Gm-Gg: ASbGncv7d0CNciHpaoErk0cwC2WmEZtWDnJIUVw6TO4JOXce1tqeLd3vkuqJTzXA//r
	O27XlWakL0wNzhN6X82KY1tNMBc01pgPwyZ6WaD3aRp1zEszCWkNl8SfHNL0DHdfekMgsomuTIg
	OA0uOA6HMM/9679Me2li8X2XNPVzTSrtRvoGuBrVDFrRvtpKRbH8USyi+QrfwmPhpEDIe2zxe7i
	Vqbpj8d3XHqKNAzl6PD2wSkEZSDBkfEIN/OAz4=
X-Google-Smtp-Source: AGHT+IGU3i/zav3YWK21CLxuhmvtOpYFNF+DGwQ7b5hhqS0cjyfvHISXRPKoP8+7r7Zp/XHxmeqKON1VuAFDz7wT+jA=
X-Received: by 2002:a17:907:9410:b0:af8:f58f:89dc with SMTP id
 a640c23a62f3a-af8fd9ed6afmr816536266b.41.1753952393089; Thu, 31 Jul 2025
 01:59:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HOqxb7vT2a+gvzvWS+9fADzfQVqx6h7y-5DL6vxnTZzA@mail.gmail.com>
 <CAAxXO2H46WizByNopDwDzvU9mH_h66j=vu54-Rp5V_FpRt3ojQ@mail.gmail.com>
In-Reply-To: <CAAxXO2H46WizByNopDwDzvU9mH_h66j=vu54-Rp5V_FpRt3ojQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 31 Jul 2025 10:59:42 +0200
X-Gm-Features: Ac12FXySEpTRXxfwyMODb8xBY9qjGcgU517FXcpiTx1706BEY8L_3Sjuhi2GGF4
Message-ID: <CAFOi1A79+cM3zcm7pf2wez_UkZ8Fphw69qiX2KJe2qMW9D-xiA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: JHZOISLGITJDUM7Z4YLKDXYSCFEGBBMK
X-Message-ID-Hash: JHZOISLGITJDUM7Z4YLKDXYSCFEGBBMK
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflow rx_streamer issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JHZOISLGITJDUM7Z4YLKDXYSCFEGBBMK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2662456694695183248=="

--===============2662456694695183248==
Content-Type: multipart/alternative; boundary="000000000000580b56063b35dd4f"

--000000000000580b56063b35dd4f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The size of the recv buffer depends on a bunch of things. On X310, when
using 10 GbE, UHD will try and make the socket buffer 25MB in size. Until
the socket buffer is full, there will be no overrun.

BTW if you want to find O in UHD, grep for "\<O\>" (or ag "\bO\b"). But you
don't have to, I can tell you that you will end up in
radio_control_impl.cpp.

There are several knobs for you to tune:

- Are you starting your recv() call soon enough, or is the radio streaming
before you recv?
- Can you increase the buffer size that you pass into recv? In an extreme
case, you would pass a buffer that is big enough for all num_samps, and let
UHD handle it.

Also, what's your rate, your device, your transport...

--M

On Thu, Jul 31, 2025 at 10:17=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.co=
m> wrote:

> Did some more testing. Tried to fill rx_streamer's buffers in purpose.
> .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE
> streamer timeout set to 3".
>
> 1) .num_samples =3D 16384. Read 1024 each time in a loop sleeping 1" each
> turn.
> More than 16" to complete the read. No OO's.
> 2) .num_samps =3D 3e5. Read 1024 samples each time in a loop adding 1" to
> sleep
> in each turn (1, 2, 3, 4, ...). 11 hrs to complete the read. No OO's.
>
> Is overflow even working right?
> How large are the streamer's receive buffers?
>
> Nikos
>
> On Wed, Jul 30, 2025 at 3:04=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.c=
om>
> wrote:
>
>> Hi,
>>
>> I am getting a few overflow errors after sometime, from using my code..
>> First OOs in stdout and then metadata at which point it stalls.
>> I'm using .stream_mode =3D UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,
>> Each time I read .num_samps in a loop until complete and then restart th=
e
>> streamer.
>> I can't think of any case that I don't read all of the samples, so this
>> shouldn't happen.
>> What tools are there to debug this issue?
>> A function to monitor the rx_streamer internal buffers would be very
>> useful.
>> Even the filename that implements this overflow would be helpful.
>> Grepping "OO" in the sources doesn't help. Always hits in "BOOST":(
>>
>> TIA
>> Nikos
>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000580b56063b35dd4f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The size of the recv buffer depends on a bunch of thi=
ngs. On X310, when using 10 GbE, UHD will try and make the socket buffer 25=
MB in size. Until the socket buffer is full, there will be no overrun.</div=
><div><br></div><div>BTW if you want to find O in UHD, grep for &quot;\&lt;=
O\&gt;&quot; (or ag &quot;\bO\b&quot;). But you don&#39;t have to, I can te=
ll you that you will end up in radio_control_impl.cpp.</div><div><br></div>=
<div>There are several knobs for you to tune:</div><div><br></div><div>- Ar=
e you starting your recv() call soon enough, or is the radio streaming befo=
re=C2=A0you recv?</div><div>- Can you increase the=C2=A0buffer size that yo=
u pass into recv? In an extreme case, you would pass a buffer that is big e=
nough for all num_samps, and let UHD handle it.</div><div><br></div><div>Al=
so, what&#39;s your rate, your device, your transport...</div><div><br></di=
v><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_container">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 31, 2025 at 10:17=E2=80=
=AFAM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com">nbalkanas@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:sm=
all">Did some more testing. Tried to fill rx_streamer&#39;s buffers in purp=
ose.</div><div class=3D"gmail_default" style=3D"font-size:small">.stream_mo=
de =3D=C2=A0UHD_STREAM_MODE_NUM_SAMPS_AND_DONE</div><div class=3D"gmail_def=
ault" style=3D"font-size:small">streamer timeout set to 3&quot;.</div><div =
class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"g=
mail_default" style=3D"font-size:small">1) .num_samples =3D 16384. Read 102=
4 each time in a loop sleeping 1&quot; each turn.</div><div class=3D"gmail_=
default" style=3D"font-size:small">More than 16&quot; to complete the read.=
 No OO&#39;s.</div><div class=3D"gmail_default" style=3D"font-size:small">2=
) .num_samps =3D 3e5. Read 1024 samples each time in a loop adding 1&quot; =
to sleep</div><div class=3D"gmail_default" style=3D"font-size:small">in eac=
h turn (1, 2, 3, 4, ...). 11 hrs to complete the read. No OO&#39;s.</div><d=
iv class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-size:small">Is overflow even working right=
?</div><div class=3D"gmail_default" style=3D"font-size:small">How large are=
 the streamer&#39;s receive buffers?</div><div class=3D"gmail_default" styl=
e=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-=
size:small">Nikos</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Wed, Jul 30, 2025 at 3:04=E2=80=AFPM Nikos Balkan=
as &lt;<a href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:sm=
all">Hi,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></=
div><div class=3D"gmail_default" style=3D"font-size:small">I am getting a f=
ew overflow errors after sometime, from using my code..</div><div class=3D"=
gmail_default" style=3D"font-size:small">First OOs in stdout and then metad=
ata at which point it stalls.</div><div class=3D"gmail_default" style=3D"fo=
nt-size:small">I&#39;m using .stream_mode =3D=C2=A0UHD_STREAM_MODE_NUM_SAMP=
S_AND_DONE,</div><div class=3D"gmail_default" style=3D"font-size:small">Eac=
h time I read .num_samps in a loop until complete and then restart the stre=
amer.</div><div class=3D"gmail_default" style=3D"font-size:small">I can&#39=
;t think of any case that I don&#39;t read all of the samples, so this shou=
ldn&#39;t happen.</div><div class=3D"gmail_default" style=3D"font-size:smal=
l">What tools are there to debug this issue?</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">A function to monitor the rx_streamer interna=
l buffers would be very useful.</div><div class=3D"gmail_default" style=3D"=
font-size:small">Even the filename that implements this overflow would be h=
elpful.</div><div class=3D"gmail_default" style=3D"font-size:small">Greppin=
g &quot;OO&quot; in the sources doesn&#39;t help. Always hits in &quot;BOOS=
T&quot;:(</div><div class=3D"gmail_default" style=3D"font-size:small"><br><=
/div><div class=3D"gmail_default" style=3D"font-size:small">TIA</div><div c=
lass=3D"gmail_default" style=3D"font-size:small">Nikos=C2=A0</div><div clas=
s=3D"gmail_default" style=3D"font-size:small"><br></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000580b56063b35dd4f--

--===============2662456694695183248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2662456694695183248==--
