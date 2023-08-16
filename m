Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDC277EB87
	for <lists+usrp-users@lfdr.de>; Wed, 16 Aug 2023 23:17:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88F88384B66
	for <lists+usrp-users@lfdr.de>; Wed, 16 Aug 2023 17:17:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692220667; bh=DTwMmM2e5fz9i0BiGg0fv8U9H00Jx5/rU88fRic1vf8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Cg7yJ3r7Kyu/iZBlFIYWK0Php8zLxY/H5DysIMS0Ej2eawpJ/ADt0c/Envz+j7M0B
	 nn+rQ/UtDC3ZhYFR7S+ji79BKxMGSBySMrKt/ktPVAiU/BZTGzMr5QmqcASQB5R2WY
	 bC6/ZuRmLCTeCKGpDI9O6QhFwcePPU61qvDCBAx6XbMeWZKf9wncB1rz9BsAwY2HLJ
	 vjYSe4OcB+BW0JaKWeFoLaYLro5L+3yg9hwibFxch1Uo0PaeVyAQQ2ffDONuardSNM
	 eR1zY01B0CDx6rqGvuoyaONb0qgCBMpgFohOPtIrvFlMIWSJX/Sol03s7AwFq2cGZn
	 xcvt2eIuyKxDg==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 0F491383FE4
	for <usrp-users@lists.ettus.com>; Wed, 16 Aug 2023 17:17:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="NeHjOC0w";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-99cdb0fd093so945779566b.1
        for <usrp-users@lists.ettus.com>; Wed, 16 Aug 2023 14:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1692220635; x=1692825435;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8uyz6K0i1JRI+lInCdv3FTJBpnB0iX3iOJwzXq8Lhi0=;
        b=NeHjOC0wE58thsX6k+kx3BGkn2ySPRxWYSg6KNZmNEqRS2ljEbPn6i46d6/cvMckyj
         vNMbSVJiAmOJlq8baySLJs7aaxYP7gjuejlfPe7mT0GAcu99hawmzF2Py8uLijLbKK93
         pOxEA5IZFJsunxUEmguqh2tHoFGC1S3dKnOPFC+uC06kHZ9U61FApuPv/ohIzqm0nvib
         rya2qR/gEj520ee7OXIk8gE2yNVmcslGG/KIzFu/eHiVEqX0DK4DnSeLxsDK7x4X/eAE
         wVlfeFBmB71WRZWMBYcaIn5S/TLfp2GFUC5c3AnebQuhUkTtAguhJGodCkqJ2HcayHpG
         Aqgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692220635; x=1692825435;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8uyz6K0i1JRI+lInCdv3FTJBpnB0iX3iOJwzXq8Lhi0=;
        b=Gm6XteB2Bihl/5lqpy/QXiOJwSx1VtmaX3wbnDqrkTHhFyewmbP5plT6eD1281TB7w
         TxB7Xr9KEzRsD/r+gKpZ0ST/3z7MLkeg3cQ4C/sXX6KqA1ymiN5P/GbOVqQjxbI32Nfe
         PLMa05rOLXb9v4l01k0mLlutxFljIw2HZFucbuT+fQ9Ro7xsi+C82MV3ceCQRtXaM7gz
         deaVHwThs6q8U4OI9T6JyYj2bbp0JLsUMTkSyCNQdq5ZiA+hFbaIDImgOWZjRLvefRbz
         gawHrL3dgDFliqSuE7L4h8seDWhqyP8TlWU4aGATAXoduNQcCLTQU3WNxM8iO5Amy+MG
         4myw==
X-Gm-Message-State: AOJu0Ywq+i/hv7d1JhdfXZrXkt4Ssj09Kcy6AqKok9CkIY/3KRVlJZzU
	p6s6xHT42T6Bw8S/jI1/R4NRByTJGxfptAIep21WKqgJreEfKKwCVkzsvw==
X-Google-Smtp-Source: AGHT+IHpx1FgN1SVDul+hJQx5MAEvVxonws/i2ggwjX4X4m5QBCm3+2X3MTPnUJL6QfPm7zXFZCaOf5EyhVw32IIejA=
X-Received: by 2002:a17:907:784b:b0:988:9b29:5653 with SMTP id
 lb11-20020a170907784b00b009889b295653mr2119971ejc.77.1692220634513; Wed, 16
 Aug 2023 14:17:14 -0700 (PDT)
MIME-Version: 1.0
References: <mtB3wpJtiRm1phl9BHsFPvCG7e2DRERNE3gyCvkpE@lists.ettus.com>
In-Reply-To: <mtB3wpJtiRm1phl9BHsFPvCG7e2DRERNE3gyCvkpE@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 16 Aug 2023 16:16:58 -0500
Message-ID: <CAFche=j2=5KpSdujE1hQdbVFhTcuSoOCbZqmPkCFrk+S_NAUGw@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: ESR7TYGBOICXWQ5KGQAIUNO3TOTKIBEK
X-Message-ID-Hash: ESR7TYGBOICXWQ5KGQAIUNO3TOTKIBEK
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows with CHDR_W = 128 on x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ESR7TYGBOICXWQ5KGQAIUNO3TOTKIBEK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5956076787545740322=="

--===============5956076787545740322==
Content-Type: multipart/alternative; boundary="000000000000cd5f36060310d166"

--000000000000cd5f36060310d166
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You are correct about INGRESS_BUFF_SIZE. It's only used to buffer data that
the stream endpoint receives from another endpoint (e.g., data sent from
the host computer to a stream endpoint). There's no extra buffering in the
sending stream endpoint. For normal RX where we stream to a host computer,
the computer's memory serves as the buffer.

In your case, if you need extra buffering then I would expect that to be
added to your block. You can change the FIFO sizes in the NoC shell to add
buffering to your block, depending on the type of NoC shell you're using.

Changing the MTU on the FPGA isn't well tested, so I don't recommend
changing it.

Is the overflow occurring in the radio? If that's the case, then you
probably need additional buffering on the input of your block where data's
received by the radio.

Wade


On Wed, Aug 16, 2023 at 10:45=E2=80=AFAM <jmaloyan@umass.edu> wrote:

> For my application, I am not collecting samples continuously. The radio
> block is commanded to stream continuously, but I have a custom block
> downstream which =E2=80=9Cgates=E2=80=9D samples in bursts that pass thro=
ugh. I am able to
> at least stream data without any overflows as long as the number of sampl=
es
> the custom block allows is not too big, which is why I am assuming its a
> buffer that is too small. My assumption is as long as my buffers are larg=
e
> enough and the total number of samples of each burst is less than 10 Gb/s=
,
> samples should be able to unload onto the QSFP before the next burst of
> samples. This is why I increased the endpoint buffer sizes.
>
> However, looking over the verilog, it seems INGRESS_BUFF_SIZE only
> controls the buffer size of the input going into the block(before gating)=
,
> and not the output(after gating), which is probably why I am still seeing
> overflows at the same exact rate even after increasing the buffer size. I=
s
> this interpretation correct, and if so, is it =E2=80=9Csafe=E2=80=9D to c=
ontrol MTU, or
> will it cause other problems downstream?
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000cd5f36060310d166
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You are correct about=20
INGRESS_BUFF_SIZE. It&#39;s only used to buffer data that the stream endpoi=
nt receives from another endpoint (e.g., data sent from the host computer t=
o a stream endpoint).
There&#39;s no extra buffering in the sending stream endpoint. For normal R=
X where we stream to a host computer, the computer&#39;s memory serves as t=
he buffer.</div><div><br></div><div>In your case, if you need extra bufferi=
ng then I would expect that to be added to your block. You can change the F=
IFO sizes in the NoC shell to add buffering to your block, depending on the=
 type of NoC shell you&#39;re using.<br></div><div><br></div><div>Changing =
the MTU on the FPGA isn&#39;t well tested, so I don&#39;t recommend changin=
g it.<br></div><div><br></div><div>Is the overflow occurring in the radio? =
If that&#39;s the case, then you probably need additional buffering on the =
input of your block where data&#39;s received by the radio.<br></div><div><=
br></div><div>Wade<br></div><br></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 16, 2023 at 10:45=E2=80=AFAM &l=
t;<a href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>For my applica=
tion, I am not collecting samples continuously. The radio block is commande=
d to stream continuously, but I have a custom block downstream which =E2=80=
=9Cgates=E2=80=9D samples in bursts that pass through. I am able to at leas=
t stream data without any overflows as long as the number of samples the cu=
stom block allows is not too big, which is why I am assuming its a buffer t=
hat is too small. My assumption is as long as my buffers are large enough a=
nd the total number of samples of each burst is less than 10 Gb/s, samples =
should be able to unload onto the QSFP before the next burst of samples. Th=
is is why I increased the endpoint buffer sizes.</p><p>However, looking ove=
r the verilog, it seems INGRESS_BUFF_SIZE only controls the buffer size of =
the input going into the block(before gating), and not the output(after gat=
ing), which is probably why I am still seeing overflows at the same exact r=
ate even after increasing the buffer size. Is this interpretation correct, =
and if so, is it =E2=80=9Csafe=E2=80=9D to control MTU, or will it cause ot=
her problems downstream?</p><p><br></p><p><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000cd5f36060310d166--

--===============5956076787545740322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5956076787545740322==--
