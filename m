Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8439BDAFE4
	for <lists+usrp-users@lfdr.de>; Tue, 14 Oct 2025 21:05:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 72CE338655B
	for <lists+usrp-users@lfdr.de>; Tue, 14 Oct 2025 15:05:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1760468708; bh=q7janvkP5ipHqmue/EomRB2uwLrT1Noo+LNA4NWMUyU=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=luS1MNSFKzbrHdqXmxZ1pkKjubQSRGWWtCIlDO15ysoKZsjmgaQ/HemJI9dDxeDdh
	 8GcVB9WMUoaQBqTxbLw0T7Mm+VUhD4geLbmz+HVsY3v1t1bSI7svSDaNvUmLvMn9kN
	 HGfnO5tOUwWT+ENXWMhAim76jCuH2zKuYVv8BgjAF6cj1sRCIjldkX0phWrLFKtD9c
	 AwsuTI4GVAuCmcdlVPecWZ7ARIRDsdfMDbhVQnuaHjXb8wNAwJfghD+3/3x3Aerduo
	 GhgE2bruKlG/3dkdYqh1956VvmAItg0L89negVvpciLzicj6xxrL1TrBJI0LkI2PMA
	 S7g/L3w7pi8TQ==
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 948C4386535
	for <usrp-users@lists.ettus.com>; Tue, 14 Oct 2025 15:04:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=andrew.cmu.edu header.i=@andrew.cmu.edu header.b="dwB3IyNo";
	dkim-atps=neutral
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-8fb58f2b820so3500766241.1
        for <usrp-users@lists.ettus.com>; Tue, 14 Oct 2025 12:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=andrew.cmu.edu; s=google-2021; t=1760468684; x=1761073484; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QrzjFYGxkm51Ddq4ZBn9QGQZ8tqjgOWL+CbkBODLd88=;
        b=dwB3IyNobxoyUZoT3QDfUI0NNtn9nfyt0qOVlzb3VZaVLtPBYqyXM82uwQHeOJb/Q+
         rGOyXcnz0GHzGndboulhEpqkOUA3eRvU4VsC9ajM1RLofKG+M6uTNt3vqd3Rq56VA/02
         EqmkusJhk2tToOXbhkInHDB743thm8SNHrKLhVcK6ke/3a6s7jwObkTWfSlQceKOIWbB
         vspPo/QQ/LkUY0O9F+NKuzXmgcdePzha742q93GUag1lTruK0dm4pvMruKCiJf687s40
         PvqIOhc5KPpgGi37mS4H2MjMCxjLvnxqv2xZoYeAtd1KIJq/Nd03WwMfLfWI7E3XXt0s
         4TMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760468684; x=1761073484;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QrzjFYGxkm51Ddq4ZBn9QGQZ8tqjgOWL+CbkBODLd88=;
        b=qtymDpWiVZjwHSPeDXkgwQlT+o21GmIMz97vJb5Eg3pYsyhtY9hDetObqVM2FN2JrM
         Rzq3/pxXfnRDgncp7DYv5Kzow6cvLjt1QIqt8hDCUlZ/hRWlhqtyE3Kj+xn0+5sxFGmE
         we5727FoVfMZKvjG0tjeZz/GjB29rDCalhRg3GdfINSehUnNy60TGIKwTI9oim1Yzw1a
         baImhH2rg0toJU4lt8EWNG8Y8EgTYu1qJnOrX7V94KrJdM/LaAKmg4d1wgdV570NvYmv
         FHfWf4/nMjfqpSsijmz2Uzq5fmp2aeLmdR+8X4hykSlNar1YyfPX+Nmk6cBLl/H9exBt
         VZbg==
X-Gm-Message-State: AOJu0YwUBrv4tJf4NurLDfMwbg4BEO/v6DBr5ZkDUDQaaEu4jFj4/WmI
	l4/bR1L0W11i81FQC0urntfJ8W01piwioNIPYGL1NBCYoKkoL8qzgZpF7m9zeeNBOMoyzU+p1wG
	eNIFHX6aiymRGyAxJxqpWzW1TC1ct9YGrmyUHI+E5UUkdo+b4kX+FSQ==
X-Gm-Gg: ASbGncsK7JV2zYSgG/SqS6P/SQvh1wmwvwjgSruJ2RPJ5WN9/fvkkk93aPyca/RmZVz
	Tw+x1HOn5QLvzYo1Co+had2dDonbozEGp59FepDsrrP04Ft1VzBlfidYkbSaj4yszYfxtY5TCY3
	vP3qjlDqVvtNHuxKAo7ZI4znj0Vxul/OHs6SyRUJV/6rXPxdFarCdudD4PmYNjW9ugiGSHuFRT3
	0ZKNHK+68XHcgaY++jtcDTrhC4XG3fSHHdLQQ==
X-Google-Smtp-Source: AGHT+IELMrILnY8sqUUVXu8QH2ZatXuKJHRw90jB/RmdCpZn6uatqi7i6GWMFoDNGIgTQRR6mv99l9PUTccOTNx1yTw=
X-Received: by 2002:a05:6102:3eca:b0:523:d0d7:b960 with SMTP id
 ada2fe7eead31-5d5e236156cmr10581142137.29.1760468683834; Tue, 14 Oct 2025
 12:04:43 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Mayer <dmayer@andrew.cmu.edu>
Date: Tue, 14 Oct 2025 19:04:32 -0400
X-Gm-Features: AS18NWBmWEHPTQLK4i80cGXGZTZLrC5893Grs5rboaZvaqRoPlb9f52brsry3Ak
Message-ID: <CADVT9V0BcWTox-3h-s3-gab4JW3wFX46JqpWHpHnddi-e2bZfw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ENWEQU3475UWIQ3GKRZTP3QEMTS44OXO
X-Message-ID-Hash: ENWEQU3475UWIQ3GKRZTP3QEMTS44OXO
X-MailFrom: dmayer@andrew.cmu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP X310 not transmitting
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ENWEQU3475UWIQ3GKRZTP3QEMTS44OXO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0596081872207282198=="

--===============0596081872207282198==
Content-Type: multipart/alternative; boundary="00000000000089da320641230e38"

--00000000000089da320641230e38
Content-Type: text/plain; charset="UTF-8"

Hello,
I am attempting to transmit with a USRP X310 using the 'tx_waveforms'
example (./tx_waveforms --rate 25e6 --freq 900e6 --gain 20), but a
SignalHound spectrum analyzer placed next to the transmitting antenna of
the USRP is not picking up any signal above the noise floor at that
frequency. The spectrum analyzer shows signals transmitted by other
devices, so it seems unlikely that the spectrum analyzer is broken.

The text output of the example is as follows:

> Setting TX Rate: 25.000000 Msps...
> Actual TX Rate: 25.000000 Msps...
>
> Setting TX Gain: 20.000000 dB...
>
> *Actual TX Gain: 0.000000 dB...*
> Setting device timestamp to 0...
>
> *[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.*Setting
> TX Freq: 900.000000 MHz...
> Setting TX LO Offset: 0.000000 MHz...
> *Actual TX Freq: 0.000000 MHz...*

I did notice that the 'Actual TX Gain' and 'Actual TX Freq' are both set to
0; could this be a cause of the problem?

For completeness, here are the configuration parameters that the example
prints out:

> [INFO] [X300] Radio 1x clock: 200 MHz
> Using Device: Single USRP:
>   Device: X-Series Device
>   Mboard 0: X310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: Unknown (0xffff) - 0
>   RX Channel: 1
>     RX DSP: 1
>     RX Dboard: B
>     RX Subdev: UBX RX
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: Unknown (0xffff) - 0
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: B
>     TX Subdev: UBX TX


Thanks for your help!

Daniel Mayer

--00000000000089da320641230e38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>I am attempting to transmit with a USRP X310 us=
ing the &#39;tx_waveforms&#39; example (./tx_waveforms --rate 25e6 --freq 9=
00e6 --gain 20), but a SignalHound spectrum analyzer placed next to the tra=
nsmitting antenna of the USRP is not picking up any signal above the noise =
floor at that frequency. The spectrum analyzer shows signals transmitted by=
 other devices, so it seems unlikely that the spectrum analyzer is broken.=
=C2=A0</div><div><br></div><div>The text output of the example is as follow=
s:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Setting TX Rate: 25=
.000000 Msps...<br>Actual TX Rate: 25.000000 Msps...<br><br>Setting TX Gain=
: 20.000000 dB...<br><b>Actual TX Gain: 0.000000 dB...<br></b><br>Setting d=
evice timestamp to 0...<br><b>[WARNING] [0/Radio#0] Attempting to set tick =
rate to 0. Skipping.<br></b>Setting TX Freq: 900.000000 MHz...<br>Setting T=
X LO Offset: 0.000000 MHz...<br><b>Actual TX Freq: 0.000000 MHz...</b></blo=
ckquote><div>I did notice that the &#39;Actual TX Gain&#39; and &#39;Actual=
 TX Freq&#39; are both set to 0; could this be a cause of the problem?=C2=
=A0</div></div><div><br></div><div>For completeness, here are the configura=
tion parameters that the example prints out:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">[INFO] [X300] Radio 1x clock: 200 MHz<br>Using Devic=
e: Single USRP:<br>=C2=A0 Device: X-Series Device<br>=C2=A0 Mboard 0: X310<=
br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboa=
rd: A<br>=C2=A0 =C2=A0 RX Subdev: Unknown (0xffff) - 0<br>=C2=A0 RX Channel=
: 1<br>=C2=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=
=A0 RX Subdev: UBX RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br=
>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - =
0<br>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Db=
oard: B<br>=C2=A0 =C2=A0 TX Subdev: UBX TX</blockquote><div><br></div><div>=
Thanks for your help!</div><div><br></div><div>Daniel Mayer=C2=A0</div></di=
v></div>

--00000000000089da320641230e38--

--===============0596081872207282198==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0596081872207282198==--
