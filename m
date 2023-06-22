Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A30273A580
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jun 2023 18:04:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2AB22384A67
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jun 2023 12:04:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687449862; bh=FcpJZsiT8/7hVtduc2r17izNubkCUw6qrV8tlhXc/e8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RrmfAPtn/geQWZP+1x1wgBGJZkK9JoNHajQNMNLPKyqDwmCdtn2PnZT0+WFiCRi45
	 DzuGrfSMuLOlZXlKpndGcHDT/dnffOI+bW+58PGB2LQbKQuvQd1AgQuR2sQFiEHJmt
	 ABI+ujcdZBx/V0ZCdW4kOCosPWxGRv/px8ykT16nkKzFckL9jRefCxOLHGt96ICODy
	 EgfTJYOD8nEz3p/6vqOnkjZLdh+BtSNzWHMHp3D2ynWGt8SrLSiwGjlbdf9dWhH/Si
	 N/AFlKiCVoum9/77YuT0ESD/GTRu9Yb05FAK2p/1w8py5xQfCkhOmogbl5ckgPqltQ
	 Elq+Niw9zbeTg==
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 4BBF53849C4
	for <usrp-users@lists.ettus.com>; Thu, 22 Jun 2023 12:03:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VH08ABr+";
	dkim-atps=neutral
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-25ecc896007so4491825a91.3
        for <usrp-users@lists.ettus.com>; Thu, 22 Jun 2023 09:03:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687449799; x=1690041799;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oqhLGhOJri6aMp3iilmamXeO91EOGerrdlBt+C30AOI=;
        b=VH08ABr+SqKSEZ5gNJfnz4kk9cIezhbkkfEfpK4Jz3ujx0Ae+nJwHVG7nZkwqvTQs6
         f63nOebjC0BH5FyHfpdrLyRb+Y4bpN5+r7fKd+gV7aVwkLLdujFIoxUfQ26OcteLmfka
         3/stKMXc92eLuViLPQ3Abstmb9fkNLNDHfYRndX2qYDuIYWoOs64dAd+wp15Qpo7nSP1
         ewp793DYPYLnnIkNy4BCkGPuPmhHm7JjikZxr/ESKx+LNAC8Q/BtMw0kyetrNPJVOB7+
         DDPslHIk9vnxQ5PJVPvpY18f5qWDtIwFoNzWlf0bAY60aiw/l8HouUe3L6nHbVnjSAdZ
         1xrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687449799; x=1690041799;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oqhLGhOJri6aMp3iilmamXeO91EOGerrdlBt+C30AOI=;
        b=IDO+dWcYJz2pXVnWpzbPOpZIXfYB8e4tPzHIrRFDpxhyywKIGPaBt3yhGIyRxdQbwa
         1r5pFvh80GwvlkO14EQSw/a8NnAGBMiHSpUKsZpYiEv9v4XEV8qNtsh/onAElcc1hZIf
         pQ0iq4mR71MVL04dZ3z8cnIU6ohKiozG8bmD76wgNwi0OCxus0mTncii+L3oUD9xgc+Q
         IwM3d9865Tgzi23/Q76xxrXgTnTgsTlL3ymrIxyUGj2cr3+0SgGpMbS4f2QxLy2wnEoH
         FeGUY/jrjwUAtRSZPrHnGlMuhKrco85H3sgQz1S5Bymcq0KiWKQi7wBWZ00roxtDL7iZ
         PbUA==
X-Gm-Message-State: AC+VfDxpWwXf23YzuLUv7G9y21M29Dg9F7u91oBCujEOai5jPG+AhdlW
	5M/Z/6yxK/1A7w52HFicAXMTzwF+RF3oMuWBi8s=
X-Google-Smtp-Source: ACHHUZ6DT2ZimsdKTqJQSzuDqImMWqdymCnw1kSRcx8ZJwstXSBs1Fj0/sTyqhhe/SBQ9roPuv2ALsTU9FkaS6MYfEM=
X-Received: by 2002:a17:90a:e516:b0:259:b504:583e with SMTP id
 t22-20020a17090ae51600b00259b504583emr17000977pjy.27.1687449798867; Thu, 22
 Jun 2023 09:03:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com>
 <b8ebb484-ca34-37c3-7bc1-79a63735abef@gmail.com>
In-Reply-To: <b8ebb484-ca34-37c3-7bc1-79a63735abef@gmail.com>
From: Carlo Venier <venier.carlo@gmail.com>
Date: Thu, 22 Jun 2023 18:03:07 +0200
Message-ID: <CAHRiTbk37Yu2xCvLGAEm2BmSS0jg0OMm9nSpFouEPSBasfEtCg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 5JMUKWQ4BDWGOON36XY25YAF226QF7AG
X-Message-ID-Hash: 5JMUKWQ4BDWGOON36XY25YAF226QF7AG
X-MailFrom: venier.carlo@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRx Spectrum shape
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5JMUKWQ4BDWGOON36XY25YAF226QF7AG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8204430303763551603=="

--===============8204430303763551603==
Content-Type: multipart/alternative; boundary="000000000000d6808f05feba057a"

--000000000000d6808f05feba057a
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

when I turn down the gain, the shape of the spectrum noisefloor remains
non-flat. Also at a gain of 0, the shape is wavy.
I'm not feeding any RF source to the channels: they are 50 Ohm terminated.
The plots of the spectrum were produced with a third party application.
However, I've recorded the samples by using the "rx_samples_to_file" tool
and then plotted them with Matlab but the shape remains the same (non-flat).
I am aware that the final spectrum is the convolution of all the filtering
stages, but I would like to know if this is the expected noisefloor
spectrum for the TwinRx (for example for UBX the spectrum noisefloor is
much more flat).
For this reason, I am asking if someone can provide a plot of the spectrum
of both channels at a sampling rate of 100 Msps.

Thank you.

Regards,
Carlo Venier

Il gio 22 giu 2023, 15:30 Marcus D. Leech <patchvonbraun@gmail.com> ha
scritto:

> On 22/06/2023 05:48, Carlo Venier wrote:
>
> Good morning,
>
> I have some questions regarding the TwinRX daughterboard.
>
> 1) With the following settings:
>         Master Clock Rate = 200 MHz
>         Tuning Frequency = 2450 MHz
>         Sample rate = 100 Msps
>         Gain = 93
>         Every RF connector is 50 Ohm terminated
>         LO_OFFSET disabled
>
> I get a non-flat spectrum. In particular, the center portion of it is up
> to 5 dB higher than at +/- 40 MHz from the tuning frequency. You can see
> this behaviour in the attached figures.
>
> 2) The two channels have a different behaviour below 1.8 GHz (for example
> at 450 MHz). The spectrum of channel :1 is a lot more wavy than the
> spectrum of the channel :0. You can see this behaviour in the attached
> figures.
> In any case, also below 1.8 GHz the delta between min and max level is
> about 5 dBs.
>
> 3) Sometimes, the DC component pops up. As the TwinRX channels are a
> superheterodyne receivers, I don't expect that the DC component appears,
> but it happens.
>
> Is it possible that the TwinRX I'm using is not working properly? Or am I
> missing some settings?
>
> 4) Can somebody provide a screenshot of the spectrum of the TwinRx
> channels with the same settings at 1) for the tuning frequencies of 450 MHz
> and 2450 MHz?
>
> Thank you.
>
>
> Best regards,
>
> Carlo Venier
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> What happens if you turn the gain down about 5dB?    What are you using to
> provide a perfectly-flat noise input?
>
> What are you using to collect the data that produced these plots?
>
> The analog bandwidth of the TwinRX is limited to 80MHz, and uses SAW
> filters at the 1st IF (TA0824A and TA0851A, depending
>   on whether it's operating in "low band" or "high band").  The final IF
> filter is a discrete multi-stage design, but I don't
>   know what it's filter shape is.
>
> IN ADDITION, there are RF input filters that are selected based on the
> tuned RF frequency.    The end result of all of these
>   filters is that the final filter "shape" is the convolution of all of
> those individual filter shapes.
>
> I'm not sure what you mean by "sometimes the DC component shows up".    I
> would expect there to be spurs at some points--
>   for example those that are exact multiples of internal clocks, etc.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d6808f05feba057a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-family:-moz-fixed;font-size:14px">Hi =
Marcus,</span><br style=3D"font-family:-moz-fixed;font-size:14px"><br style=
=3D"font-family:-moz-fixed;font-size:14px"><span style=3D"font-family:-moz-=
fixed;font-size:14px">when I turn down the gain, the shape of the spectrum =
noisefloor remains non-flat. Also at a gain of 0, the shape is wavy.</span>=
<br style=3D"font-family:-moz-fixed;font-size:14px"><span style=3D"font-fam=
ily:-moz-fixed;font-size:14px">I&#39;m not feeding any RF source to the cha=
nnels: they are 50 Ohm terminated.</span><br style=3D"font-family:-moz-fixe=
d;font-size:14px"><span style=3D"font-family:-moz-fixed;font-size:14px">The=
 plots of the spectrum were produced with a third party application.</span>=
<br style=3D"font-family:-moz-fixed;font-size:14px"><span style=3D"font-fam=
ily:-moz-fixed;font-size:14px">However, I&#39;ve recorded the samples by us=
ing the &quot;rx_samples_to_file&quot; tool and then plotted them with Matl=
ab but the shape remains the same (non-flat).</span><br style=3D"font-famil=
y:-moz-fixed;font-size:14px"><span style=3D"font-family:-moz-fixed;font-siz=
e:14px">I am aware that the final spectrum is the convolution of all the fi=
ltering stages, but I would like to know if this is the expected noisefloor=
 spectrum for the TwinRx (for example for UBX the spectrum noisefloor is mu=
ch more flat).</span><br style=3D"font-family:-moz-fixed;font-size:14px"><s=
pan style=3D"font-family:-moz-fixed;font-size:14px">For this reason, I am a=
sking if someone can provide a plot of the spectrum of both channels at a s=
ampling rate of 100 Msps.</span><br style=3D"font-family:-moz-fixed;font-si=
ze:14px"><br style=3D"font-family:-moz-fixed;font-size:14px"><span style=3D=
"font-family:-moz-fixed;font-size:14px">Thank you.</span><br style=3D"font-=
family:-moz-fixed;font-size:14px"><br style=3D"font-family:-moz-fixed;font-=
size:14px"><span style=3D"font-family:-moz-fixed;font-size:14px">Regards,</=
span><br style=3D"font-family:-moz-fixed;font-size:14px"><span style=3D"fon=
t-family:-moz-fixed;font-size:14px">Carlo Venier</span></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il gio 22 giu 2023, =
15:30 Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchv=
onbraun@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x">
 =20
   =20
 =20
  <div>
    <div>On 22/06/2023 05:48, Carlo Venier
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"auto"><span style=3D"font-size:12.8px">Good morning,</spa=
n><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">I have some questions regarding
          the TwinRX daughterboard.</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">1) With the following settings:</s=
pan><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Master Clock Rate =3D 200
          MHz</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Tuning Frequency =3D 2450
          MHz</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Sample rate =3D 100 Msps</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Gain =3D 93</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0 =C2=A0 =C2=A0=C2=A0 E=
very RF connector is 50
          Ohm terminated</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=
=A0 LO_OFFSET disabled</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">I get a non-flat spectrum. In
          particular, the center portion of it is up to 5 dB higher than
          at +/- 40 MHz from the tuning frequency. You can see this
          behaviour in the attached figures.</span><br style=3D"font-size:1=
2.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">2) The two channels have a
          different behaviour below 1.8 GHz (for example at 450 MHz).
          The spectrum of channel :1 is a lot more wavy than the
          spectrum of the channel :0. You can see this behaviour in the
          attached figures.</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">In any case, also below 1.8 GHz
          the delta between min and max level is about 5 dBs.</span><br sty=
le=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">3) Sometimes, the DC component
          pops up. As the TwinRX channels are a superheterodyne
          receivers, I don&#39;t expect that the DC component appears, but
          it happens.</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Is it possible that the TwinRX
          I&#39;m using is not working properly? Or am I missing some
          settings?</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">4) Can somebody provide a
          screenshot of the spectrum of the TwinRx channels with the
          same settings at 1) for the tuning frequencies of 450 MHz and
          2450 MHz?</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Thank you.</span><br style=3D"font=
-size:12.8px">
        <br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Best regards,</span><br style=3D"f=
ont-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Carlo Venier</span></div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a>
</pre>
    </blockquote>
    What happens if you turn the gain down about 5dB?=C2=A0=C2=A0=C2=A0 Wha=
t are you
    using to provide a perfectly-flat noise input?<br>
    <br>
    What are you using to collect the data that produced these plots?<br>
    <br>
    The analog bandwidth of the TwinRX is limited to 80MHz, and uses SAW
    filters at the 1st IF (TA0824A and TA0851A, depending<br>
    =C2=A0 on whether it&#39;s operating in &quot;low band&quot; or &quot;h=
igh band&quot;).=C2=A0 The
    final IF filter is a discrete multi-stage design, but I don&#39;t<br>
    =C2=A0 know what it&#39;s filter shape is.<br>
    <br>
    IN ADDITION, there are RF input filters that are selected based on
    the tuned RF frequency.=C2=A0=C2=A0=C2=A0 The end result of all of thes=
e<br>
    =C2=A0 filters is that the final filter &quot;shape&quot; is the convol=
ution of all
    of those individual filter shapes.<br>
    <br>
    I&#39;m not sure what you mean by &quot;sometimes the DC component show=
s
    up&quot;.=C2=A0=C2=A0=C2=A0 I would expect there to be spurs at some po=
ints--<br>
    =C2=A0 for example those that are exact multiples of internal clocks,
    etc.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--000000000000d6808f05feba057a--

--===============8204430303763551603==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8204430303763551603==--
