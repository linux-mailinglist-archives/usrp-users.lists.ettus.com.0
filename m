Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FECA9A4338
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2024 18:07:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4FE14385805
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2024 12:07:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729267633; bh=ImUfAlPKUpFb1hTt2SKs7dwVffe8QYz6J2bgSFQz9k0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Ca4uNCxazUZFJU2KTU/CHrmMlZ0rZSI5ofamgV0TkstiS+/51/lJVy3PRhSfU0zkS
	 Yf+oIkJwc/aFcmlMxWqsbW9sNCM/eATNIjQbi28gLHwDP/lryk0ZPxY1fh+//PpV5K
	 UG7c/mAmzbBhu/bD96J6CcfKM5plQaP6+WxAgE2ePz2XM1Z1OgTXpYouf2erKMFBWl
	 G6XPvjNZKcGteT3S7tNR4dMFtzYuP5zJ7niJSYu8rjFW0bc848fqx0O22Zj8ug4s0K
	 LNFDBoI9IJCkW+/OkaS5tK9bR3KYrfoYPJm1yljxubK2IyvoV8thIjArEL8UM6fI/O
	 dOnOSxZ30d85g==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 888B73851BF
	for <usrp-users@lists.ettus.com>; Fri, 18 Oct 2024 12:07:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dRk9L7Dr";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a998a5ca499so281093466b.0
        for <usrp-users@lists.ettus.com>; Fri, 18 Oct 2024 09:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729267622; x=1729872422; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YrWpZU0iTeQc+GRUjJ4UjF5rQQq9fYYaEqoOJC+t2IM=;
        b=dRk9L7DrhbH5lRwYlNq7McMmDOGTp2zFu7tZy2yu2MFBsL/T/OEAavgsOT5HJh9xfl
         cAZsfNGmK4B379htT+rcpOhpPxXf61k5O2Ab6KZ6vNqs53GMknKVaerEfFR1pEOaLRzL
         Jx7jT9u+eKf9WWI9rupQCFe33Vg12vaZTQ1nIW9+MQ8t/IcNY/ddVarXz7s4A2q985Se
         8/6IlJBAGflEXOnrya2IJTpo65OsI6vfZQ9xtWkN/+/ecw7sndGpN9mNb2/vpICRJNt2
         wvOU57RGBX0J9/gf8HyIS8iVeBBgelkwAm/nhCSXrTLxDA0fcpNortpkVj5t1b89+0TP
         gHhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729267622; x=1729872422;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YrWpZU0iTeQc+GRUjJ4UjF5rQQq9fYYaEqoOJC+t2IM=;
        b=hCLHk6+AsfKlqYti0epgbPghj6yu6N0VKl+5dZbhXHxVVq0d6VCtUJPezbx3nnh83T
         L0T6DSrg7v7GXu6PtACTngZwyPsJeGOvGhW3RNqMN3p+6v8fuDYvTHJGqa+sx4AGNm0f
         R/gZ2r5fRQMrS+G96zSVBkn94VOhcmCL/HDA4MlrbK1X1kZvruad6KJsfZ7LnsnQZFia
         2/W7E9rq4/8X8cHqU29UIaYJ0jevhbQAyLJsJ7iJGSxdJWy4JpWOOFmiZZ3CwNeSPjOx
         g+FPbc+76cVqBDkQPO7UDE/b9VPL/mllFa8AlVUrIhR0cy8LfeSWXnRnCDco+iURP7v2
         5pHg==
X-Forwarded-Encrypted: i=1; AJvYcCW3thw7oy5lrMQHn7if0OS9aQR5i5ExgNR8xe/MXcWUWd+IQ4dIPQ/czUn+rxs7j9TxhT8Ax0CXxqrZ@lists.ettus.com
X-Gm-Message-State: AOJu0YxfGgmF/TbHnZSEGPAIEI/oxy6QI+DprrMYzQFNjTMiMx/W8nxr
	NiUfqqWHT+X6YVWCTzi+4vdV+gTk3DOvaxROEUOzvMrMvt7dtFtGfp8r2A7wpC6lt8wQAW90dYJ
	U7CdR11aOrVvO+pwC/+PTbDAH98XgMKA6
X-Google-Smtp-Source: AGHT+IF73pnf5GVP7xwgLUEdyjVbjBajoCbK9aP9/DU7eTItgC+VfI8nKN+7bo2NvelqLS0A0Hoka/kroxnT1hBVrwc=
X-Received: by 2002:a17:907:97c4:b0:a99:4c68:a03c with SMTP id
 a640c23a62f3a-a9a69a6719bmr236670966b.22.1729267622156; Fri, 18 Oct 2024
 09:07:02 -0700 (PDT)
MIME-Version: 1.0
References: <cV2fbI9pb3g80HDPvA80R13Dyh0O9UlCrQjFDNpCjiw@lists.ettus.com>
 <3ab26169-4f96-41f6-96f0-ab3eb2e3e054@gmail.com> <1595059048.6269059.1729267010623.JavaMail.zimbra@imt-atlantique.fr>
In-Reply-To: <1595059048.6269059.1729267010623.JavaMail.zimbra@imt-atlantique.fr>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 18 Oct 2024 12:06:49 -0400
Message-ID: <CAEXYVK5oZwP9Qw3hv8E++tHSCmGwGd3aYfpW_inc9Dkoyk9_sg@mail.gmail.com>
To: Patrice PAJUSCO <patrice.pajusco@imt-atlantique.fr>
Message-ID-Hash: FH5TS7P7MYBL7RGDP6SGK4SX6F7C72UK
X-Message-ID-Hash: FH5TS7P7MYBL7RGDP6SGK4SX6F7C72UK
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ADC saturation problem in USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FH5TS7P7MYBL7RGDP6SGK4SX6F7C72UK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0632336368022344938=="

--===============0632336368022344938==
Content-Type: multipart/alternative; boundary="00000000000057290f0624c27ebc"

--00000000000057290f0624c27ebc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Your options are to sample at 184.32 MHz and decimate in the host machine
down to 30.72 MHz for LTE decoding, or if that isn't an option then you
need to place an RFNoC block at the output of the radio but before the DDC
which will give you an input power estimate that you can read from the host
periodically.  You need to feed that into your AGC algorithm as another
input.

Note the block can just update an internal register that you poll and not
produce any samples.

Brian

On Fri, Oct 18, 2024 at 11:57=E2=80=AFAM Patrice PAJUSCO <
patrice.pajusco@imt-atlantique.fr> wrote:

> Dear Marcus,
>
> thank you for your answer. Just to clarify the problem a little better.
> We use a UBX160 daughter card.
> To have optimal SNR, an automatic gain control has been implemented based
> on the max IQ value.
> The sample rate is 30.72 for LTE decoding.
> Unfortunately, high power exists outside our useful band (30.72 MHz) but
> inside the bandwidth of the 160 daughter card (sampled by the 200 MHz ADC=
).
> We expected the AGC to saturate... but after DSP filtering process by the
> motherboard, the IQ samples got with UHD is no longer saturated.
> As a result, the IQ max is low enough and AGC control continue to increas=
e
> the gain :-(
> It is my current understanding of the situation.
> Is there any way to have an estimate of the raw AGC input level when the
> sample rate is not 200 MHz?
> I hope to be clear enough... but surelty  not crystal clear :-)
> Best regards
>
>                           Patrice
>
> ------------------------------
> *De: *"Marcus D. Leech" <patchvonbraun@gmail.com>
> *=C3=80: *"usrp-users" <usrp-users@lists.ettus.com>
> *Envoy=C3=A9: *Vendredi 18 Octobre 2024 17:38:43
> *Objet: *[USRP-users] Re: ADC saturation problem in USRP X310
>
> On 18/10/2024 11:35, je.amghar@gmail.com wrote:
> >
> > Hello,
> >
> > I am currently facing an issue with ADC saturation on a USRP X310
> > equipped with a UBX daughterboard. We are conducting measurements
> > using an LTE signal and a sinusoidal input signal, but it seems that
> > the ADC is saturating, leading to a loss of dynamic range in our
> > measurements.
> >
> > Test context:
> > We are transmitting (using a generator) an LTE signal with a power of
> > -50 dBm at a center frequency of 1815 MHz. Then, we add a sinusoidal
> > signal at 1865 MHz with a power of -30 dBm. This second, more powerful
> > signal seems to be causing the ADC to saturate, even though we don=E2=
=80=99t
> > see it directly in the IQ samples due to the digital filtering applied
> > downstream.
> >
> > Problem:
> > We suspect that the ADC saturation occurs before IQ conversion and is
> > therefore masked by the digital filters. This results in a loss of
> > dynamic range in our measurements, and we feel that adjusting the gain
> > based on the IQ samples may not be reliable.
> >
> > Question:
> > How can this ADC saturation be detected upstream of the IQ processing?
> > Are there tools or methods to directly monitor the sample values at
> > the output of the ADC in the USRP (before digital filtering) to
> > prevent saturation?
> > Do you have any advice for implementing an automatic gain controller
> > (AGC) based on reliable saturation indicators?
> > We would appreciate any suggestions or experiences in resolving this
> > issue. If you have encountered a similar problem or have ideas on how
> > to address it, we would be happy to hear your recommendations.
> >
> > Thank you very much for your help!
> >
> >
> A -30dBm signal applied at the antenna inputs, and then amplified
> greatly by the amplifier/mixer/gain-chain ahead of the ADC
>    would very-likely saturate the ADC.   A -30dBm signal from an "over
> the air" antenna is one that is thunderingly loud in
>    the real world.  It would not surprise me to find that gain elements
> ahead of the ADC are *also* becoming non-linear.
>
> Turn your gain down.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000057290f0624c27ebc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Your options are to sample at 184.32 MHz and =
decimate in the host machine down to 30.72 MHz for LTE decoding, or if that=
 isn&#39;t an option then you need to place an RFNoC block at the output of=
 the radio but before the DDC which will give you an input power estimate t=
hat you can read from the host periodically.=C2=A0 You need to feed that in=
to your AGC algorithm as another input.<br></div><div dir=3D"ltr" class=3D"=
gmail_attr"><br></div><div class=3D"gmail_attr">Note the block can just upd=
ate an internal register that you poll and not produce any samples.</div><d=
iv dir=3D"ltr" class=3D"gmail_attr"><br></div><div class=3D"gmail_attr">Bri=
an</div><div dir=3D"ltr" class=3D"gmail_attr"><br></div><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Fri, Oct 18, 2024 at 11:57=E2=80=AFAM Patrice PAJUSCO=
 &lt;<a href=3D"mailto:patrice.pajusco@imt-atlantique.fr">patrice.pajusco@i=
mt-atlantique.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div><div id=3D"m_8500105023683579753zimbraEditorContainer"=
 style=3D"font-family:arial,helvetica,sans-serif;font-size:12pt;color:rgb(0=
,0,0)"><div>Dear Marcus,<br></div><div><br></div><div>thank you for your an=
swer. Just to clarify the problem a little better.</div><div> We use a UBX1=
60 daughter card. </div><div>To have optimal SNR, an automatic gain control=
 has been implemented based on the max IQ value.</div><div> The sample rate=
 is 30.72 for LTE decoding. </div><div>Unfortunately, high power exists out=
side our useful band (30.72 MHz) but inside the bandwidth of the 160 daught=
er card (sampled by the 200 MHz ADC).</div><div>We expected the AGC to satu=
rate... but after DSP filtering process by the motherboard, the IQ samples =
got with UHD is no longer saturated.<br>As a result, the IQ max is low enou=
gh and AGC control continue to increase the gain :-(<br>It is my current un=
derstanding of the situation. <br>Is there any way to have an estimate of t=
he raw AGC input level when the sample rate is not 200 MHz?<br>I hope to be=
 clear enough... but surelty=C2=A0 not crystal clear :-)</div><div>Best reg=
ards<br></div><div><br></div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Patrice<br></div><div><br></div><hr id=
=3D"m_8500105023683579753zwchr"><div><b>De: </b>&quot;Marcus D. Leech&quot;=
 &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonb=
raun@gmail.com</a>&gt;<br><b>=C3=80: </b>&quot;usrp-users&quot; &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt;<br><b>Envoy=C3=A9: </b>Vendredi 18 Octobre 2024 17:38:43<b=
r><b>Objet: </b>[USRP-users] Re: ADC saturation problem in USRP X310<br></d=
iv><div><br></div><div>On 18/10/2024 11:35, <a href=3D"mailto:je.amghar@gma=
il.com" target=3D"_blank">je.amghar@gmail.com</a> wrote:<br>&gt;<br>&gt; He=
llo,<br>&gt;<br>&gt; I am currently facing an issue with ADC saturation on =
a USRP X310 <br>&gt; equipped with a UBX daughterboard. We are conducting m=
easurements <br>&gt; using an LTE signal and a sinusoidal input signal, but=
 it seems that <br>&gt; the ADC is saturating, leading to a loss of dynamic=
 range in our <br>&gt; measurements.<br>&gt;<br>&gt; Test context:<br>&gt; =
We are transmitting (using a generator) an LTE signal with a power of <br>&=
gt; -50 dBm at a center frequency of 1815 MHz. Then, we add a sinusoidal <b=
r>&gt; signal at 1865 MHz with a power of -30 dBm. This second, more powerf=
ul <br>&gt; signal seems to be causing the ADC to saturate, even though we =
don=E2=80=99t <br>&gt; see it directly in the IQ samples due to the digital=
 filtering applied <br>&gt; downstream.<br>&gt;<br>&gt; Problem:<br>&gt; We=
 suspect that the ADC saturation occurs before IQ conversion and is <br>&gt=
; therefore masked by the digital filters. This results in a loss of <br>&g=
t; dynamic range in our measurements, and we feel that adjusting the gain <=
br>&gt; based on the IQ samples may not be reliable.<br>&gt;<br>&gt; Questi=
on:<br>&gt; How can this ADC saturation be detected upstream of the IQ proc=
essing? <br>&gt; Are there tools or methods to directly monitor the sample =
values at <br>&gt; the output of the ADC in the USRP (before digital filter=
ing) to <br>&gt; prevent saturation?<br>&gt; Do you have any advice for imp=
lementing an automatic gain controller <br>&gt; (AGC) based on reliable sat=
uration indicators?<br>&gt; We would appreciate any suggestions or experien=
ces in resolving this <br>&gt; issue. If you have encountered a similar pro=
blem or have ideas on how <br>&gt; to address it, we would be happy to hear=
 your recommendations.<br>&gt;<br>&gt; Thank you very much for your help!<b=
r>&gt;<br>&gt;<br>A -30dBm signal applied at the antenna inputs, and then a=
mplified <br>greatly by the amplifier/mixer/gain-chain ahead of the ADC<br>=
=C2=A0=C2=A0 would very-likely saturate the ADC.=C2=A0=C2=A0 A -30dBm signa=
l from an &quot;over <br>the air&quot; antenna is one that is thunderingly =
loud in<br>=C2=A0=C2=A0 the real world.=C2=A0 It would not surprise me to f=
ind that gain elements <br>ahead of the ADC are *also* becoming non-linear.=
<br><br>Turn your gain down.<br><br>_______________________________________=
________<br>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscrib=
e send an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" targ=
et=3D"_blank">usrp-users-leave@lists.ettus.com</a><br></div></div></div>___=
____________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000057290f0624c27ebc--

--===============0632336368022344938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0632336368022344938==--
