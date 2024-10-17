Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1900C9A2E37
	for <lists+usrp-users@lfdr.de>; Thu, 17 Oct 2024 22:05:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A652F38563C
	for <lists+usrp-users@lfdr.de>; Thu, 17 Oct 2024 16:05:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729195533; bh=8G0/gwhmmk0L1Zn/Xn99uGGxmYgn5BNvE08QYhOZugs=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ZoJn7+uOWHiyOcQSHVT1qAX+KihGvtsc2pTaRyVTvhlS9k6LqvkfSIIkVwMR0ohC0
	 nfJu47m5TV/sMn7h1O5iB6mT58ukQHHRQqJTG7xwG3w5QxsImMqaFgbHC4aXFlRdXb
	 /hgGU3wSF1A06ZMc/i3TbDFmtMMvGLnspa1fhwraOm0HBnrpblk8YtfEYRZ2Z5yS2L
	 XRoPeOJR1UBi2X2HGWcxoB/rG0cxdlannWuZSPhaH0X1cmwinIn+9uKQ4WDW58g1AZ
	 lHLaQbLiiwhjTCbtqPj/+KGrqh1DSsRdx0Bz4Jyk93pC0dNM580sQGfjmndOU5DSV2
	 M6zQyqFJEBhDg==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 7228038560B
	for <usrp-users@lists.ettus.com>; Thu, 17 Oct 2024 16:05:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lHmYWDxT";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7b153047b29so44478485a.3
        for <usrp-users@lists.ettus.com>; Thu, 17 Oct 2024 13:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729195523; x=1729800323; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gO/NHRkqXMLMngfMtktI2Ge4ZkBughYFjgmwK2jAUBU=;
        b=lHmYWDxTtPdfRALxDeAbKb1Clirf+WthDD2WPh0XnrBA0EnBv/l5JTtfdu1kLVbefP
         JQxRtyHinYX7T3/DEJwk218dmTsbMuIfEKT465UehWkYeYbXCvzy4oFPGY22uYL+eUDx
         msHmdkp0Csrpjaomyw1vmIo5b6xRlVaVZAm73yzIqwkxvkECGTJC4mJN+Z0GsPQ+mStv
         M8IaY9DcFtJ2gAASaPXrDnvz/YzzIJGqfO8y7x6NsQ4qDmIIKf6nwaQvPeRIcfV2UzxV
         koV0z6XWWsHhsW51xKrfqFG+YY01UQrMiT8hpAVfn2i8iBViyzsbzAeIkloqQRxR7vUO
         3jSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729195523; x=1729800323;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gO/NHRkqXMLMngfMtktI2Ge4ZkBughYFjgmwK2jAUBU=;
        b=spKKDvJ1NLLIiEkOqwYGICZliH22Yfqzh3CQVly/9ecm05IKgCVoXX3Dw/TbHRrAtr
         N7vVjnnnTLEqhqJUNtX1gukK+4zVCCHt5CrGOjvYr9ukMQpSdnH0RI8SKYKZ/yGXLU4G
         wsnkyL9ggH6TKBvBDPsvgQtawrYIGcTPmwZN5nf9UzY8oGaT1S1DbU6LphTe00/OTXzJ
         Mfa1nL+Df+buHj1L26zOG/8iw8H1ZWgqQKEnfIuzxRhlicIhI+zFQG8/LnVOaufaG076
         p5VIZP+n0oEZCFizmtDetwl/dmN//vvUQFr/UEJtR22JUYcbjtP016gSZDcv+2QvSqGi
         +7+Q==
X-Gm-Message-State: AOJu0YxuZEOvnOxPrvEXTQroej3WAjCBrzaHqhqwAcKY8Yntbtsb+YgF
	XOAekmXTmlC2flRqafoCfGGqG0tK/zwjjKYG9ESKFLxMXt18fFpA
X-Google-Smtp-Source: AGHT+IEV3H49MtJ/JfQKZLqZxBvtRa+2QjyVkk9sBZS6OjhyhrE3jnhWSjqqfqzrdJ3i+o5V24cHdw==
X-Received: by 2002:a05:620a:4484:b0:7b1:558e:97b0 with SMTP id af79cd13be357-7b1558ea748mr124239585a.66.1729195522398;
        Thu, 17 Oct 2024 13:05:22 -0700 (PDT)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b156fe5b4bsm4078785a.88.2024.10.17.13.05.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2024 13:05:22 -0700 (PDT)
Message-ID: <20b3f159-905f-4bf4-a25c-32f2436e335a@gmail.com>
Date: Thu, 17 Oct 2024 16:05:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Martin Braun <martin.braun@ettus.com>
References: <CANwDeJY9B9Cn7rGQ=BTA3MjO=k94aPnL7PAZRRizX-OR0OwRNg@mail.gmail.com>
 <3fc00180-d72b-44c9-9304-8a9820a032b1@gmail.com>
 <CAFOi1A5B-_nJ1xTDnFmgDTM0cPcZUVWmdh2_9xth9As9cXtD4A@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFOi1A5B-_nJ1xTDnFmgDTM0cPcZUVWmdh2_9xth9As9cXtD4A@mail.gmail.com>
Message-ID-Hash: SUOTISMJHKAH2D7ZISAXR2VXG3LDYLMG
X-Message-ID-Hash: SUOTISMJHKAH2D7ZISAXR2VXG3LDYLMG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Assistance with RFNoC Keep-One-In-N Block For Radiometer Application
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SUOTISMJHKAH2D7ZISAXR2VXG3LDYLMG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2416590908366619102=="

This is a multi-part message in MIME format.
--===============2416590908366619102==
Content-Type: multipart/alternative;
 boundary="------------M2C0G24hGex1dcrxX2yBAAVR"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------M2C0G24hGex1dcrxX2yBAAVR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/10/2024 03:56, Martin Braun wrote:
> I'm one of the 99% and I didn't even bother to Google what a Dicke=20
> radiometer is. Nor do I have even half of Marcus' RF and RA knowledge.
>
> But I know a thing or two about RFNoC. Here's what I gather from your=20
> email:
> - You are capturing a radio signal from some source
> - You are also generating a clock signal (which presumably gets=20
> applied to your capture device?)
> =C2=A0 - I'm guessing that this clock signal controls which part of the=
=20
> time domain signal you're actually capturing, but the USRP's receiver=20
> will be free-running, so if you're not capturing continuously, that=20
> means you have gaps in your Rx signal you want to remove? (Again, just=20
> guessing)
> - You are having trouble synchronizing
>
> Now my mission here is usually to steer people successfully towards=20
> RFNoC (and what you've done already is pretty impressive), but in this=20
> case I agree with Marcus that a software approach might be sufficient.=20
> Can you not simply generate your Dicke-clock-signal in software and=20
> generate it on the B-side of your device, instead of on the GPIO?=20
> USRPs will take care of synchronizing Tx and Rx signals in time (with=20
> some offset, but that can be calibrated and you seem perfectly capable=20
> of doing so). This seems more like a GNU Radio task than an RFNoC task.
>
> If not, then I blame my ignorance in this particular field -- maybe=20
> you can ask a more specific question.
>
> --M
So, a *simple* radiometer is a radio that measures the emitted power of=20
some phenomenon--usually of natural origins.
 =C2=A0 Used in various science disciplines where radio might play a role=
,=20
and in Radio Astronomy in particular.=C2=A0=C2=A0=C2=A0 Passive meteorolo=
gy
 =C2=A0 also uses radiometers to measure various things.

Now, a *Dicke* radiometer (named after the inventor) acknowledges that=20
receiver chains aren't perfect, and in particular, have
 =C2=A0 gains that aren't perfectly stable over "extended" (for various=20
values of "extended") time-scales.=C2=A0=C2=A0 So, Robert Dicke, in 1946,
 =C2=A0 invented a type of radiometer that allows you to "factor out' mos=
t of=20
the gain variability of a system.=C2=A0 It's simple enough.
 =C2=A0 Arrange for the input of your receiver to be switched between the=
=20
"measured value/phenomenon" and a stable noise source
 =C2=A0 arranged to produce a noise level that is comparable to the thing=
=20
you're measuring.=C2=A0=C2=A0=C2=A0 In a hardware Dicke Radiometer, it's
 =C2=A0 easy enough to synchronize your switching waveform (that switches=
 the=20
front-end between "thing" and "noise source"), and
 =C2=A0 the detector machinery--a simple approach that I've seen used is =
to=20
have the output of the detector stage inverted prior
 =C2=A0 to being processed by a hardware integrator.=C2=A0 In this way, t=
he=20
integrator gives you a (stabilized value) that is the difference
 =C2=A0 between "thing" and "noise source".

Flash forward several decades to using digital signal processing chains=20
for this, and you end up dealing with some amount
 =C2=A0 of uncertainty about which samples correspond to which switching=20
state of the Dicke Switching machinery.=C2=A0=C2=A0=C2=A0 So the radio
 =C2=A0 needs, at some level, to help with this.=C2=A0=C2=A0 One approach=
 is to tag=20
samples somehow.=C2=A0 Another approach is to have the chain
 =C2=A0 just sort of "know" what the cadence is and arrange=C2=A0 bufferi=
ng to=20
exactly match the cadence.=C2=A0=C2=A0=C2=A0 Still another would be to
 =C2=A0 have your integrator block in the radio "know" that it's time to =
deal=20
with inverted samples or non-inverted samples, based
 =C2=A0 on your switching waveform.

Still another approach would be to have your FPGA chain "tag" samples in=20
a way that is *implicit*, by having the switching
 =C2=A0 waveform perhaps assert a high-order bit in samples, or to multip=
ly=20
the samples by 1 if "thing" and maybe "4" if "noise source".
 =C2=A0 This allows a downstream processor to sort samples into two disti=
nct=20
populations and do the required subtraction on a
 =C2=A0 regular basis.=C2=A0 In many radiometer applications the noise le=
vels=20
expected from "thing" vary by only quite small amounts around
 =C2=A0 some centroid value--in the case of a terrestrial radiometer look=
ing=20
at the sea or ground, one would expect a range of
 =C2=A0 blackbody equivalent temperatures in the range of perhaps 250K to=
=20
perhaps 320K, ignoring RFI, or "weird" effects.

Another approach is to have the noise source represent a noise level=20
that is distinguishably-different than the noise levels
 =C2=A0 expected from "thing" and again sort incoming samples into distin=
ct=20
populations.=C2=A0 This should work for many
 =C2=A0 natural phenomenon that one might want to measure with a microwav=
e=20
radiometer, since the dynamic range of
 =C2=A0 "thing" is typically fairly small.

Just a bit of tutorial background.=C2=A0 Most (not all, I admit) folks on=
=20
here are from the telecom/wireless/SIGINT/passive-radar
 =C2=A0 side of the "house" and may be less familiar with applications of=
=20
radio for measuring natural phenomenon.


>
> On Thu, Oct 17, 2024 at 3:12=E2=80=AFAM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 16/10/2024 20:55, Ekin Su Sacin wrote:
>     > Hello,
>     >
>     > I am working on modifying rfnoc_keep_one_in_n.v code for a Dicke
>     > radiometer application. My goal is to generate a Dicke clock for
>     > different modes and to obtain the accumulated power of the incomi=
ng
>     > signal over half of the Dicke cycle. I am using this block to
>     produce
>     > a Dicke clock from front-panel GPIO and using the n register to
>     define
>     > different modes in addition to defining the number of kept sample=
s.
>     > These modes determine which GPIO pins will be active.
>     Additionally, I
>     > use the complex_to_magsq module to compute the power of the
>     incoming
>     > signal. I have verified the Dicke clock output from GPIO using an
>     > oscilloscope. It responds correctly to changes in the n value at
>     the
>     > application level.
>     >
>     > When I try to sample a sinusoidal wave, it produces the sawtooth
>     > pattern for kept samples which looks correct. Initially, I though=
t
>     > that by adjusting the n value and data rate at the application
>     level
>     > to cover half of the Dicke cycle, I could obtain accumulated
>     results
>     > over this period, which would match the last value of the sawtoot=
h.
>     > However, this approach isn't working as expected. I am using a
>     200 MHz
>     > clock, resulting in a half-Dicke period of 327.68 =C2=B5s. To mat=
ch
>     this, I
>     > set the data rate to ensure an integer number of samples per Dick=
e
>     > period, such as 25 MSPS. I ran the following command for testing:
>     > ./rfnoc_rx_to_file --args addr=3D192.168.10.2 --freq 28e6 --nsamp=
s 0
>     > --rate 25e6 --block-id KeepOneInN --n_value 8192,and for testing,=
 I
>     > applied a 27 MHz sinusoidal input. However, this setup yields
>     > inconsistent results. When I change the rate to 20 MSPS or other
>     > values, the results seem more accurate. I also experimented with
>     > different n values like 4, 20, and 40, which produced sawtooth
>     > patterns with varying periods as expected. However, my primary
>     goal is
>     > to gather data specifically at the end of each half-Dicke cycle
>     rather
>     > than picking samples during the cycle.
>     >
>     > I suspect there may be a synchronization issue between the block
>     and
>     > the Dicke clock. Could you provide suggestions based on my
>     objectives,
>     > or is there an alternative approach that might be more effective
>     than
>     > adjusting the n value? I am also adding modified parts of the
>     code below.
>     >
>     > Thank you in advance for your support. I look forward to your
>     response.
>     >
>     > Best regards,
>     >
>     > Ekin
>     >
>     >
>     > In output state machine, sample_reg[31:16] =C2=A0 <=3D v1o[31:16]=
;
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sample_reg[15:0=
] =C2=A0<=3D
>     v2o[31:16];
>     >
>     > .......
>     >
>     > always @(posedge clk) begin
>     > if (reset) begin
>     > =C2=A0 =C2=A0k <=3D 0;
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 dicke_1 <=3D 0;
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dicke_ch <=3D 0;
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ctrl_cal_1 <=3D 0;
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ctrl_ref_1 <=3D 0;
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ctrl_v_1 <=3D 0;
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0v1o <=3D 32'd0;
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0v2o <=3D 32'd0;
>     > end
>     >
>     > else if (~reset) begin
>     > k <=3D k+1;
>     > if (k =3D=3D 65536) begin // yields dicke freq =3D 1.53 kHz
>     > =C2=A0 =C2=A0 =C2=A0 k <=3D 0;
>     > =C2=A0 =C2=A0 =C2=A0 dicke_1 <=3D ~dicke_1;
>     > =C2=A0 =C2=A0 =C2=A0 dicke_ch <=3D 1;
>     > end
>     >
>     > if (dicke_ch =3D=3D 1) begin =C2=A0// if dicke clock phase change=
d
>     > =C2=A0 if (n =3D=3D 4) begin // Ref-V
>     > =C2=A0 =C2=A0if (~dicke_1) begin
>     > =C2=A0 =C2=A0 =C2=A0 ctrl_cal_1 <=3D 0;
>     > =C2=A0 =C2=A0 =C2=A0 ctrl_ref_1 <=3D 1;
>     > =C2=A0 =C2=A0 =C2=A0 ctrl_v_1 <=3D 0;
>     > =C2=A0 =C2=A0end else begin
>     > =C2=A0 =C2=A0 =C2=A0 ctrl_cal_1 <=3D 0;
>     > =C2=A0 =C2=A0 =C2=A0 ctrl_ref_1 <=3D 0;
>     > =C2=A0 =C2=A0 =C2=A0 ctrl_v_1 <=3D 1;
>     > =C2=A0 =C2=A0end
>     > =C2=A0end
>     > =C2=A0else begin =C2=A0// Cal-Ref (mode 1 for anything else)
>     > =C2=A0 =C2=A0if (~dicke_1) begin
>     > =C2=A0 =C2=A0 =C2=A0 ctrl_cal_1 <=3D 1;
>     > =C2=A0 =C2=A0 =C2=A0 ctrl_ref_1 <=3D 0;
>     > =C2=A0 =C2=A0 =C2=A0 ctrl_v_1 <=3D 0;
>     > =C2=A0 =C2=A0end else begin
>     > =C2=A0 =C2=A0 =C2=A0 ctrl_cal_1 <=3D 0;
>     > =C2=A0 =C2=A0 =C2=A0 ctrl_ref_1 <=3D 1;
>     > =C2=A0 =C2=A0 =C2=A0 ctrl_v_1 <=3D 0;
>     > =C2=A0 =C2=A0end
>     > =C2=A0end
>     > =C2=A0dicke_ch <=3D 0; =C2=A0 v1o <=3D 32'd0;=C2=A0 v2o <=3D 32'd=
0;
>     > end
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0els=
e if (dicke_ch=3D=3D0) begin
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (s_axis_tvalid && s_axis_tready &&
>     o_tvalid)
>     > begin
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 if (dicke_1 =3D=3D 0) begin
>     > =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 v1o <=3D v1o + o_tdata;
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0end
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else if (dicke_1 =3D=3D 1) begin
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0v2o <=3D v2o + o_tdata;
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0end
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 end
>     > =C2=A0 =C2=A0 =C2=A0 =C2=A0 end
>     > end
>     > =C2=A0 =C2=A0end
>     >
>     99% of the folks on here would have no idea what a Dicke Radiometer
>     is.=C2=A0=C2=A0=C2=A0 I do.=C2=A0 But unfortunately, I'm not much o=
f an FPGA guy.
>
>     You haven't mentioned which USRP you're using, with which
>     daughtercard(s).=C2=A0 What are your ultimate bandwidth requirement=
s?
>
>     Given your "test" frequency of 28MHz, I'm guessing this is some
>     kind of
>     HF radiometer, so I can't imagine that you're
>     =C2=A0=C2=A0 dealing with "eye-watering" bandwidth.=C2=A0 Have you =
considered a
>     purely
>     host-based implementation?=C2=A0 Gain drift in
>     =C2=A0=C2=A0 modern RF hardware is small enough, and slow enough, t=
hat a fairly
>     "lazy" Dicke-switching cadence could probably
>     =C2=A0=C2=A0 be used, and it could probably be managed from the hos=
t side.=C2=A0
>     Due to
>     uncertainties of how many samples there may
>     =C2=A0=C2=A0 be "in flight", my approach to this in the (distant, m=
ind) past
>     has
>     been to simply discard some samples after a state-change
>     =C2=A0=C2=A0 of the Dicke hardware.=C2=A0 This has negligible impac=
t on radiometer
>     sensitivity.
>
>     I'm able to do 50Msps of simple radiometer-like "things" into a hos=
t
>     computer that is 11 years old.=C2=A0=C2=A0 So with more modern
>     =C2=A0=C2=A0 PC hardware, this shouldn't be a problem to manage ent=
irely
>     from the
>     software side of things.
>
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------M2C0G24hGex1dcrxX2yBAAVR
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/10/2024 03:56, Martin Braun
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFOi1A5B-_nJ1xTDnFmgDTM0cPcZUVWmdh2_9xth9As9cXtD4A@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>I'm one of the 99% and I didn't even bother to Google what
          a Dicke radiometer is. Nor do I have even half of Marcus' RF
          and RA knowledge.</div>
        <div><br>
        </div>
        <div>But I know a thing or two about RFNoC. Here's what I gather
          from your email:</div>
        <div>- You are capturing a radio signal from some source</div>
        <div>- You are also generating a clock signal (which presumably
          gets applied to your capture device?)</div>
        <div>=C2=A0 - I'm guessing that this clock signal controls which =
part
          of the time domain signal you're actually capturing, but the
          USRP's receiver will be free-running, so if you're not
          capturing continuously, that means you have gaps in your Rx
          signal you want to remove? (Again, just guessing)<br>
        </div>
        <div>- You are having trouble synchronizing</div>
        <div><br>
        </div>
        <div>Now my mission here is usually to steer people successfully
          towards RFNoC (and what you've done already is pretty
          impressive), but in this case I agree with Marcus that a
          software approach might be sufficient. Can you not simply
          generate your Dicke-clock-signal in software and generate it
          on the B-side of your device, instead of on the GPIO? USRPs
          will take care of synchronizing Tx and Rx signals in time
          (with some offset, but that can be calibrated and you seem
          perfectly capable of doing so). This seems more like a GNU
          Radio task than an RFNoC task.</div>
        <div><br>
        </div>
        <div>If not, then I blame my ignorance in this particular field
          -- maybe you can ask a more specific question.<br>
        </div>
        <div><br>
        </div>
        <div>--M<br>
        </div>
      </div>
    </blockquote>
    So, a *simple* radiometer is a radio that measures the emitted power
    of some phenomenon--usually of natural origins.<br>
    =C2=A0 Used in various science disciplines where radio might play a r=
ole,
    and in Radio Astronomy in particular.=C2=A0=C2=A0=C2=A0 Passive meteo=
rology<br>
    =C2=A0 also uses radiometers to measure various things.<br>
    <br>
    Now, a *Dicke* radiometer (named after the inventor) acknowledges
    that receiver chains aren't perfect, and in particular, have<br>
    =C2=A0 gains that aren't perfectly stable over "extended" (for variou=
s
    values of "extended") time-scales.=C2=A0=C2=A0 So, Robert Dicke, in 1=
946,<br>
    =C2=A0 invented a type of radiometer that allows you to "factor out' =
most
    of the gain variability of a system.=C2=A0 It's simple enough.<br>
    =C2=A0 Arrange for the input of your receiver to be switched between =
the
    "measured value/phenomenon" and a stable noise source<br>
    =C2=A0 arranged to produce a noise level that is comparable to the th=
ing
    you're measuring.=C2=A0=C2=A0=C2=A0 In a hardware Dicke Radiometer, i=
t's<br>
    =C2=A0 easy enough to synchronize your switching waveform (that switc=
hes
    the front-end between "thing" and "noise source"), and<br>
    =C2=A0 the detector machinery--a simple approach that I've seen used =
is
    to have the output of the detector stage inverted prior<br>
    =C2=A0 to being processed by a hardware integrator.=C2=A0 In this way=
, the
    integrator gives you a (stabilized value) that is the difference<br>
    =C2=A0 between "thing" and "noise source".<br>
    <br>
    Flash forward several decades to using digital signal processing
    chains for this, and you end up dealing with some amount<br>
    =C2=A0 of uncertainty about which samples correspond to which switchi=
ng
    state of the Dicke Switching machinery.=C2=A0=C2=A0=C2=A0 So the radi=
o<br>
    =C2=A0 needs, at some level, to help with this.=C2=A0=C2=A0 One appro=
ach is to tag
    samples somehow.=C2=A0 Another approach is to have the chain<br>
    =C2=A0 just sort of "know" what the cadence is and arrange=C2=A0 buff=
ering to
    exactly match the cadence.=C2=A0=C2=A0=C2=A0 Still another would be t=
o<br>
    =C2=A0 have your integrator block in the radio "know" that it's time =
to
    deal with inverted samples or non-inverted samples, based<br>
    =C2=A0 on your switching waveform.<br>
    <br>
    Still another approach would be to have your FPGA chain "tag"
    samples in a way that is *implicit*, by having the switching<br>
    =C2=A0 waveform perhaps assert a high-order bit in samples, or to
    multiply the samples by 1 if "thing" and maybe "4" if "noise
    source".<br>
    =C2=A0 This allows a downstream processor to sort samples into two
    distinct populations and do the required subtraction on a<br>
    =C2=A0 regular basis.=C2=A0 In many radiometer applications the noise=
 levels
    expected from "thing" vary by only quite small amounts around<br>
    =C2=A0 some centroid value--in the case of a terrestrial radiometer
    looking at the sea or ground, one would expect a range of<br>
    =C2=A0 blackbody equivalent temperatures in the range of perhaps 250K=
 to
    perhaps 320K, ignoring RFI, or "weird" effects.<br>
    <br>
    Another approach is to have the noise source represent a noise level
    that is distinguishably-different than the noise levels<br>
    =C2=A0 expected from "thing" and again sort incoming samples into
    distinct populations.=C2=A0 This should work for many<br>
    =C2=A0 natural phenomenon that one might want to measure with a micro=
wave
    radiometer, since the dynamic range of<br>
    =C2=A0 "thing" is typically fairly small.<br>
    <br>
    Just a bit of tutorial background.=C2=A0 Most (not all, I admit) folk=
s on
    here are from the telecom/wireless/SIGINT/passive-radar<br>
    =C2=A0 side of the "house" and may be less familiar with applications=
 of
    radio for measuring natural phenomenon.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAFOi1A5B-_nJ1xTDnFmgDTM0cPcZUVWmdh2_9xth9As9cXtD4A@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 17, 2024 at
          3:12=E2=80=AFAM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">On
          16/10/2024 20:55, Ekin Su Sacin wrote:<br>
          &gt; Hello,<br>
          &gt;<br>
          &gt; I am working on modifying rfnoc_keep_one_in_n.v code for
          a Dicke <br>
          &gt; radiometer application. My goal is to generate a Dicke
          clock for <br>
          &gt; different modes and to obtain the accumulated power of
          the incoming <br>
          &gt; signal over half of the Dicke cycle. I am using this
          block to produce <br>
          &gt; a Dicke clock from front-panel GPIO and using the n
          register to define <br>
          &gt; different modes in addition to defining the number of
          kept samples. <br>
          &gt; These modes determine which GPIO pins will be active.
          Additionally, I <br>
          &gt; use the complex_to_magsq module to compute the power of
          the incoming <br>
          &gt; signal. I have verified the Dicke clock output from GPIO
          using an <br>
          &gt; oscilloscope. It responds correctly to changes in the n
          value at the <br>
          &gt; application level.<br>
          &gt;<br>
          &gt; When I try to sample a sinusoidal wave, it produces the
          sawtooth <br>
          &gt; pattern for kept samples which looks correct. Initially,
          I thought <br>
          &gt; that by adjusting the n value and data rate at the
          application level <br>
          &gt; to cover half of the Dicke cycle, I could obtain
          accumulated results <br>
          &gt; over this period, which would match the last value of the
          sawtooth. <br>
          &gt; However, this approach isn't working as expected. I am
          using a 200 MHz <br>
          &gt; clock, resulting in a half-Dicke period of 327.68 =C2=B5s.=
 To
          match this, I <br>
          &gt; set the data rate to ensure an integer number of samples
          per Dicke <br>
          &gt; period, such as 25 MSPS. I ran the following command for
          testing: <br>
          &gt; ./rfnoc_rx_to_file --args addr=3D192.168.10.2 --freq 28e6
          --nsamps 0 <br>
          &gt; --rate 25e6 --block-id KeepOneInN --n_value 8192,and for
          testing, I <br>
          &gt; applied a 27 MHz sinusoidal input. However, this setup
          yields <br>
          &gt; inconsistent results. When I change the rate to 20 MSPS
          or other <br>
          &gt; values, the results seem more accurate. I also
          experimented with <br>
          &gt; different n values like 4, 20, and 40, which produced
          sawtooth <br>
          &gt; patterns with varying periods as expected. However, my
          primary goal is <br>
          &gt; to gather data specifically at the end of each half-Dicke
          cycle rather <br>
          &gt; than picking samples during the cycle.<br>
          &gt;<br>
          &gt; I suspect there may be a synchronization issue between
          the block and <br>
          &gt; the Dicke clock. Could you provide suggestions based on
          my objectives, <br>
          &gt; or is there an alternative approach that might be more
          effective than <br>
          &gt; adjusting the n value? I am also adding modified parts of
          the code below.<br>
          &gt;<br>
          &gt; Thank you in advance for your support. I look forward to
          your response.<br>
          &gt;<br>
          &gt; Best regards,<br>
          &gt;<br>
          &gt; Ekin<br>
          &gt;<br>
          &gt;<br>
          &gt; In output state machine, sample_reg[31:16] =C2=A0 &lt;=3D
          v1o[31:16];<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sample=
_reg[15:0]
          =C2=A0&lt;=3D v2o[31:16];<br>
          &gt;<br>
          &gt; .......<br>
          &gt;<br>
          &gt; always @(posedge clk) begin<br>
          &gt; if (reset) begin<br>
          &gt; =C2=A0 =C2=A0k &lt;=3D 0;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 dicke_1 &lt;=3D 0;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dicke_ch &lt;=3D 0;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ctrl_cal_1 &lt;=3D 0;<br=
>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ctrl_ref_1 &lt;=3D 0;<br=
>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ctrl_v_1 &lt;=3D 0;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0v1o &lt;=3D 32'd0;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0v2o &lt;=3D 32'd0;<br>
          &gt; end<br>
          &gt;<br>
          &gt; else if (~reset) begin<br>
          &gt; k &lt;=3D k+1;<br>
          &gt; if (k =3D=3D 65536) begin // yields dicke freq =3D 1.53 kH=
z<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 k &lt;=3D 0;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 dicke_1 &lt;=3D ~dicke_1;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 dicke_ch &lt;=3D 1;<br>
          &gt; end<br>
          &gt;<br>
          &gt; if (dicke_ch =3D=3D 1) begin =C2=A0// if dicke clock phase=
 changed<br>
          &gt; =C2=A0 if (n =3D=3D 4) begin // Ref-V<br>
          &gt; =C2=A0 =C2=A0if (~dicke_1) begin<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 ctrl_cal_1 &lt;=3D 0;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 ctrl_ref_1 &lt;=3D 1;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 ctrl_v_1 &lt;=3D 0;<br>
          &gt; =C2=A0 =C2=A0end else begin<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 ctrl_cal_1 &lt;=3D 0;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 ctrl_ref_1 &lt;=3D 0;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 ctrl_v_1 &lt;=3D 1;<br>
          &gt; =C2=A0 =C2=A0end<br>
          &gt; =C2=A0end<br>
          &gt; =C2=A0else begin =C2=A0// Cal-Ref (mode 1 for anything els=
e)<br>
          &gt; =C2=A0 =C2=A0if (~dicke_1) begin<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 ctrl_cal_1 &lt;=3D 1;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 ctrl_ref_1 &lt;=3D 0;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 ctrl_v_1 &lt;=3D 0;<br>
          &gt; =C2=A0 =C2=A0end else begin<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 ctrl_cal_1 &lt;=3D 0;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 ctrl_ref_1 &lt;=3D 1;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 ctrl_v_1 &lt;=3D 0;<br>
          &gt; =C2=A0 =C2=A0end<br>
          &gt; =C2=A0end<br>
          &gt; =C2=A0dicke_ch &lt;=3D 0; =C2=A0 v1o &lt;=3D 32'd0;=C2=A0 =
v2o &lt;=3D 32'd0;<br>
          &gt; end<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0else if (dicke_ch=3D=3D0) begin<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 if (s_axis_tvalid &amp;&amp;
          s_axis_tready &amp;&amp; o_tvalid) <br>
          &gt; begin<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dicke_1 =3D=3D 0) begin<br>
          &gt; =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 v1o &lt;=3D v1o + o_tdata;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0end<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else if (dicke_1 =3D=3D 1) begin<br=
>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0v2o &lt;=3D v2o + o_t=
data;<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0end<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 end<br>
          &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 end<br>
          &gt; end<br>
          &gt; =C2=A0 =C2=A0end<br>
          &gt;<br>
          99% of the folks on here would have no idea what a Dicke
          Radiometer <br>
          is.=C2=A0=C2=A0=C2=A0 I do.=C2=A0 But unfortunately, I'm not mu=
ch of an FPGA guy.<br>
          <br>
          You haven't mentioned which USRP you're using, with which <br>
          daughtercard(s).=C2=A0 What are your ultimate bandwidth
          requirements?<br>
          <br>
          Given your "test" frequency of 28MHz, I'm guessing this is
          some kind of <br>
          HF radiometer, so I can't imagine that you're<br>
          =C2=A0=C2=A0 dealing with "eye-watering" bandwidth.=C2=A0 Have =
you considered
          a purely <br>
          host-based implementation?=C2=A0 Gain drift in<br>
          =C2=A0=C2=A0 modern RF hardware is small enough, and slow enoug=
h, that a
          fairly <br>
          "lazy" Dicke-switching cadence could probably<br>
          =C2=A0=C2=A0 be used, and it could probably be managed from the=
 host
          side.=C2=A0 Due to <br>
          uncertainties of how many samples there may<br>
          =C2=A0=C2=A0 be "in flight", my approach to this in the (distan=
t, mind)
          past has <br>
          been to simply discard some samples after a state-change<br>
          =C2=A0=C2=A0 of the Dicke hardware.=C2=A0 This has negligible i=
mpact on
          radiometer <br>
          sensitivity.<br>
          <br>
          I'm able to do 50Msps of simple radiometer-like "things" into
          a host <br>
          computer that is 11 years old.=C2=A0=C2=A0 So with more modern<=
br>
          =C2=A0=C2=A0 PC hardware, this shouldn't be a problem to manage=
 entirely
          from the <br>
          software side of things.<br>
          <br>
          <br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------M2C0G24hGex1dcrxX2yBAAVR--

--===============2416590908366619102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2416590908366619102==--
