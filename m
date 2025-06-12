Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D71AEAD7110
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jun 2025 15:04:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9FD84385C2D
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jun 2025 09:04:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749733467; bh=J9EZaUFpCSMS6PmeXy0MGGOqa0cxhd/SRBwzWEBrS5s=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=R2EQ+Zx1bg0o7teUm8PhcW9JQqw+b033zxRXTntEYbsR6hr22APg2BCyb/DwKr2Ly
	 yRbkWZJPJEmDT/AaV24Is0L/uCKrMPyhEOUKJKAOATjLcAu1BM6Yf33gJP3O7ls4vh
	 XBJtijqXQcIAByxilnlmvzPmeWE8jkImO1b1AJRIcr/4DleWMQF/8zubzPEyLtATfn
	 43zeeKAgGzGFuBl8fVHKglQJ7xVPObz+jrbF+89lGHA+dZiFJQPwoW1P3FzCHhwXR0
	 +Rq8yDX/B2aru36XLkJH7GNwr3BzSZnYjztCgRAHUVdTxqpc41lOI/jRubK+5p6rsG
	 Svh1cmKUja1jQ==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 5A2D0385C21
	for <usrp-users@lists.ettus.com>; Thu, 12 Jun 2025 09:04:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="KiEB0Qd3";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ad56cbc7b07so149474866b.0
        for <usrp-users@lists.ettus.com>; Thu, 12 Jun 2025 06:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1749733443; x=1750338243; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8w+V6hGfSwd4oPHyY9KdRqnlmF4XO5TaefLXLNl72/0=;
        b=KiEB0Qd3JpiIVUxvadEabJ5ulQRtS7cZmHHGTLrZxfizxHH91XevWxIULm6of9cuvX
         eWmkUbJvpdlm0E8OfJqMDFTLObznWKqWmIW6s9GV+/OGzYFXmil6tFLeaL1XPT/GcH5B
         +QuR7a68VNBfeM+MxhPxfFAPjlH3L611YhHxGOdGZ7/HmolSPNF5rqNwOomwgbezAr+P
         LhEoek6HTc3w1zYNXyAdWANYbXLeAB7tTBMn8LDFTiN1ecMfZduSTv/CZU8LxOnYyvV0
         PIgtOOZySpx7AesQrjf5/aGpIk1WG7zTlBMfi+HOYyV643kOD4Fj73bRpA34+htdQzNU
         lLVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749733443; x=1750338243;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8w+V6hGfSwd4oPHyY9KdRqnlmF4XO5TaefLXLNl72/0=;
        b=DWSs9zcG1loShbB4m4siwbEGfMPo3rtAzgCS9ZYLLR92W6Ehw6EzoqyMIM5FEXb3C6
         UaUD9m4O8ABAthRTu1IbYpfnluyY+7xqhKeerL/b6NO++/Iqfa1q2JvKftQMX/TwZfqm
         J80XmJcS3suuKnS7SPyM9LdtB1LKr0NlFfvg2x7KvzLIjlcx/8NhKA6BIRqW31kxCZ/E
         LweWn/Oj7Zv+ayxZOxe8FCXM/W3ijMzx6BLPodTWoKzadYig45HIdYfYdql23nwfcvL/
         ded1V2N+X2EY0FaoMjgXW3/XwquRV++v/4Vz+G2/rnNdGIP4LWhxC7Rv3dfpu12wHI5F
         HAAw==
X-Gm-Message-State: AOJu0Yx/IBEEyugJ3bT9D+btxtEIQ9XkAisHyC4pKWn9K6IyaxVwRHGJ
	pmo5wic9xvqdkE6gHWGYhjjERXvDKZCxFHVTKzS6cIwa2iso4IIXFa1eCEHKYPveLMMTWIhjO6s
	gIeNCp77/paH3I6Mlc9nHmAz8+9xXU7NpfU2HI9dO
X-Gm-Gg: ASbGncv7vj3nnnG0DEAYbTT0yvondXLTVR8tQUVMIVazKcBNcVcp79pu0AZAdTv5LhR
	MOa6YdT1Zz+5XzY/GEXMue2v7hkkHI167h/NEMRpHzIW3LD5AQicDbwdHlI4bwfN45L5Xi0esog
	l9DlasvBV9V+KYYgGbw3mJEuy1+tguU4SfVWTp+dWLeX+Lg+zIaYfJIA==
X-Google-Smtp-Source: AGHT+IGfOqVuL+WfZA5cQ3XxMfn/kUoymd4yZf0X7z1p1/VY91kDtaBqqQv/BYcedwK75C33pfnVdAjV0pBUDmJ3Cbc=
X-Received: by 2002:a17:907:7e9a:b0:ad8:ae51:d16 with SMTP id
 a640c23a62f3a-adea9472f72mr288837466b.55.1749733441526; Thu, 12 Jun 2025
 06:04:01 -0700 (PDT)
MIME-Version: 1.0
References: <cHOXhjPOGYttftfh3A9LILE2Xhl6GSEcpu77wggfk@lists.ettus.com>
In-Reply-To: <cHOXhjPOGYttftfh3A9LILE2Xhl6GSEcpu77wggfk@lists.ettus.com>
Date: Thu, 12 Jun 2025 09:03:51 -0400
X-Gm-Features: AX0GCFs-M4kb1L_Baa0XQ8FB7Ioqe594THaGxoqGD7pVVNYkVYI1ObnJpe9v5GA
Message-ID: <CAB__hTTon+5jg3KAJu-NkPbXNQApBj3h1ZzW0GXOWEq=KqW=6Q@mail.gmail.com>
To: tommytsui@w5tech.com
Message-ID-Hash: HBM2OOJQR433ZGLLMDRWFBRXHCPGNURO
X-Message-ID-Hash: HBM2OOJQR433ZGLLMDRWFBRXHCPGNURO
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tx_offset and rx_offset parameter usage on UHD calibration utilities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HBM2OOJQR433ZGLLMDRWFBRXHCPGNURO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6961819159950160884=="

--===============6961819159950160884==
Content-Type: multipart/alternative; boundary="0000000000003bffda06375f902b"

--0000000000003bffda06375f902b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Tom,
The issue is that the analog bandwidth of the UBX-40 is only 40 MHz.  The
LO is always the center of your analog bandwidth. See this
<https://images.app.goo.gl/Hif742D13MVLg6fV8>diagram.  Thus your LO offset
is restricted as follows:

LO-offset <=3D (AnalogBW - SignalBW) / 2

In your case your signal bandwidth is almost 8 MHz which means that your
LO-offset must be less than 16 MHz.  The fact that it worked for you with
WBX-40 may mean that the analog bandwidth roll-off of the WBX is less
severe than the UBX-40.  If you used UBX-160 daughtercards, you would be
able to use large LO offsets.
Rob

On Wed, Jun 11, 2025 at 6:59=E2=80=AFPM <tommytsui@w5tech.com> wrote:

>
> Hi Martin,
>
> I have been trying to find out whether the lo-offset applies to the first
> LO or the second LO as there is no documentation on how it applies to a
> specific radio daughter card. From what I have learned, a lo-offset can
> apply regardless of the RF receive frequency is above or below 500MHz. Wh=
en
> the RF Rx frequency > 500MHz the first RF stage uses direct frequency
> conversion. Hence, 1st LO is not used. This leads me to believe lo-offset
> applies the 2nd LO.
>
> I tried on Rx frequency below and above 500MHz, same poor constellation
> quality issue occurred. That is, the Agilent WCDMA signal passed through
> the X310 frequency conversion produced poor constellation output at 800MH=
z
> when lo-offset > 16MHz. When lo-offset at 16MHz or below, the constellati=
on
> looks good. Here are the specific details of the test:
>
> X310 with 2 UBX-40 installed, UHD 4.8 FPGA image installed. A simple
> frequency conversion application similar to UHD example app
> rfnoc_radio_loop_back is used to perform frequency conversion between RX2
> input at 240.5MHz and Rx/Tx output at 827MHz. An Agilent signal generator
> output WCDMA modulated signal to RX2 at 240.5MHz, a R&S spectrum analyzer
> monitored Rx/Tx output at 827MHz. The issue is not about the Rx and Tx tu=
ne
> frequency accuracy or the signal gain. The X310 and UBX40 tuned to the
> target Rx and Tx frequency accurately, the Rx and Tx signal gain are with=
in
> expectation. The issue is the quality of the WCDMA constellation at the T=
x
> output.
>
> At first, I thought the issue might be calibration related, but after
> discussed with Marcus, I think another culprit is causing the issue.
>
> The fact that when lo-offset was decreased from 20MHz to 16MHz resolved
> the poor constellation issue indicating it is unlikely due to IQ imbalanc=
e
> or DC offset, but I don=E2=80=99t know what exactly went wrong. I don=E2=
=80=99t have such
> issue when using WBX-40 boards.
>
> I have X310 master_clock_rate set to 184.32MHz, DDC down sampling and DUC
> up sampling rate set to 7.68MHz. Increasing the sampling rate to 30.72MHz=
 >
> lo-offset 20MHz still couldn=E2=80=99t resolve the issue.
>
>
> Tom
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003bffda06375f902b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Tom,<div>The issue is that the analog ban=
dwidth of the UBX-40 is only 40 MHz.=C2=A0 The LO is always the center of y=
our analog bandwidth. See <a href=3D"https://images.app.goo.gl/Hif742D13MVL=
g6fV8">this </a>diagram.=C2=A0 Thus your LO offset is restricted as follows=
:</div><div><br></div><div>LO-offset &lt;=3D (AnalogBW - SignalBW) / 2</div=
><div><br></div><div>In your case your signal bandwidth is almost 8 MHz whi=
ch means that your LO-offset must be less than 16 MHz.=C2=A0  The fact that=
 it worked for you with WBX-40 may mean that the analog bandwidth roll-off =
of the WBX is less severe than the UBX-40.=C2=A0

If you used UBX-160 daughtercards, you would be able to use large LO offset=
s.=C2=A0

</div><div>Rob</div></div><br><div class=3D"gmail_quote gmail_quote_contain=
er"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 11, 2025 at 6:59=E2=
=80=AFPM &lt;<a href=3D"mailto:tommytsui@w5tech.com">tommytsui@w5tech.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p=
><br></p><p>Hi Martin,</p><p>I have been trying to find out whether the lo-=
offset applies to the first LO or the second LO as there is no documentatio=
n on how it applies to a specific radio daughter card. From what I have lea=
rned, a lo-offset can apply regardless of the RF receive frequency is above=
 or below 500MHz. When the RF Rx frequency &gt; 500MHz the first RF stage u=
ses direct frequency conversion. Hence, 1st LO is not used. This leads me t=
o believe lo-offset applies the 2nd LO. </p><p>I tried on Rx frequency belo=
w and above 500MHz, same poor constellation quality issue occurred. That is=
, the Agilent WCDMA signal passed through the X310 frequency conversion pro=
duced poor constellation output at 800MHz when lo-offset &gt; 16MHz. When l=
o-offset at 16MHz or below, the constellation looks good. Here are the spec=
ific details of the test:</p><p>X310 with 2 UBX-40 installed, UHD 4.8 FPGA =
image installed. A simple frequency conversion application similar to UHD e=
xample app rfnoc_radio_loop_back is used to perform frequency conversion be=
tween RX2 input at 240.5MHz and Rx/Tx output at 827MHz. An Agilent signal g=
enerator output WCDMA modulated signal to RX2 at 240.5MHz, a R&amp;S spectr=
um analyzer monitored Rx/Tx output at 827MHz. The issue is not about the Rx=
 and Tx tune frequency accuracy or the signal gain. The X310 and UBX40 tune=
d to the target Rx and Tx frequency accurately, the Rx and Tx signal gain a=
re within expectation. The issue is the quality of the WCDMA constellation =
at the Tx output. </p><p>At first, I thought the issue might be calibration=
 related, but after discussed with Marcus, I think another culprit is causi=
ng the issue.</p><p>The fact that when lo-offset was decreased from 20MHz t=
o 16MHz resolved the poor constellation issue indicating it is unlikely due=
 to IQ imbalance or DC offset, but I don=E2=80=99t know what exactly went w=
rong. I don=E2=80=99t have such issue when using WBX-40 boards.</p><p>I hav=
e X310 master_clock_rate set to 184.32MHz, DDC down sampling and DUC up sam=
pling rate set to 7.68MHz. Increasing the sampling rate to 30.72MHz &gt; lo=
-offset 20MHz still couldn=E2=80=99t resolve the issue.</p><p><br></p><p>To=
m</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000003bffda06375f902b--

--===============6961819159950160884==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6961819159950160884==--
