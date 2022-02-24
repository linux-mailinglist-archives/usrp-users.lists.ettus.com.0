Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DB34C22F2
	for <lists+usrp-users@lfdr.de>; Thu, 24 Feb 2022 05:15:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E064C384B5D
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 23:15:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="AYnss9jf";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 131D6384792
	for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 23:14:31 -0500 (EST)
Received: by mail-yb1-f179.google.com with SMTP id y6so1463567ybc.5
        for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 20:14:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=N9owPgOedbcaKFk0SFaoOKVn/PhjXlLN5zl+P38QEgk=;
        b=AYnss9jf38FHw0mdJmoaZFzcWNbITzKfCXs1ce3bIx31qcDyOlRbAbbAaxLbSgef38
         AGEFtIoFVm4dwmwMLjlQIwM89HLfyva/OfrILG46cGkWE9z7qn2wHN88UO4EhwXt2cYf
         83BfPSzFzWe9PK1BCTXZSla8LDt3fA0jxJqV4I0qh+610zvSUbKM5dhwHvnKyFcoRxF/
         Z7u936GAT/Eo4+8T1zsEkGBe6v0Bzas0aeMKUOkRMsUQXjh0LWbsZVnFLAf1lXrOA4MU
         ttEHeoOtiTJg2f34bzWbjl21c1IeJny6vuCLTe4m3IBE3xp4GHuIiO3yhQ5g3ruiUqO/
         mdRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=N9owPgOedbcaKFk0SFaoOKVn/PhjXlLN5zl+P38QEgk=;
        b=aCoPfl/23I5Qbyg8+1TE8IV2Q3v2dHKO3EwJWRAvqb3mEnv0Ek/UOHtdKlwoenCUZ9
         uFbDHwa39O1Mh+60KoUPtxdjTwIkNFJXMwPj9fag8KTk0XE42+RE+V6pIORtTrBeqpo5
         AP+EFY+JFpvt2yyC7EBdeAT6PMTmgy0mhZ+V1FRgKyg3S7AZ65YYq2ZVoIx7Lqx/a0YB
         UhNQ/mqzm+VykC5PbyOIVHREsaolOSUsL2BrXRDLXxlx9XbWSXHcrJDaZwwwTdp+Fcmf
         vwuA6Tj+olaOBbvOEhYeCK1UKtewAMvsKG4AVotUpktHMwGeQvNHp1BJTFSS1R6uHUnR
         mBxQ==
X-Gm-Message-State: AOAM5317zzrH3Mu2ti4Ji7VmEL++ulc9DwXrahiLQCqis/larmjKyBMe
	OSOoRP1bSEJfXveSWbLzRES3sMTxa2Npoo7tORJoKcMDgypqjQ==
X-Google-Smtp-Source: ABdhPJyYX2EgO1Pn4PYAbxLQwlLMw9vIAWKyzOgx2way4TyS1YBUsva7ZlUp5nYqH2T+ewjd18Xdww3dvR4slZG1mnw=
X-Received: by 2002:a25:2c85:0:b0:621:c458:3d8d with SMTP id
 s127-20020a252c85000000b00621c4583d8dmr833499ybs.115.1645676068435; Wed, 23
 Feb 2022 20:14:28 -0800 (PST)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 23 Feb 2022 23:14:17 -0500
Message-ID: <CAB__hTSOPxRuE8hBdUa_8t5=UL+-6fDFM_wMiod9cZ4VHYwghA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: DHOPILSYBHASGCPOQ2F65MDP45GYKQAX
X-Message-ID-Hash: DHOPILSYBHASGCPOQ2F65MDP45GYKQAX
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] implement user clock in rfnoc
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DHOPILSYBHASGCPOQ2F65MDP45GYKQAX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4656174276900845462=="

--===============4656174276900845462==
Content-Type: multipart/alternative; boundary="00000000000079aff805d8bbd133"

--00000000000079aff805d8bbd133
Content-Type: text/plain; charset="UTF-8"

Hi,
I have a signal processing block that includes a zero-padded FFT (50%
zeros) that I built for the N310.  Because of the throttling that occurs
during insertion of zeros, I expect that my FFT will need to be clocked at
a bit more than twice the max sample rate. So, since I want to operate the
N310 at the highest sample rate of 125 MS/s, it seems that my FFT will need
to be clocked >= 260 MHz.  I'm wondering how to do it.

I've looked at the RFNoC specification and my block is already set up to
use the "CE" clock for both control & data. In the rfnoc spec, it mentions
that I can enter a "range" for my clock in the block definition yaml. But,
I also see that in the end, the top N310 yaml will require me to map a
_device clock to my block's CE clock port.

It's not clear to me how this works. Does it help to provide a range in the
block definition yaml? Or, perhaps it is even necessary?  How do I specify
in the top N310 yaml which device clock will map to my blocks CE clock
port?  It seems to me that I am missing a step (defining a clock
somewhere?).

I am pretty much a novice, so I expect that this is the cause of my
confusion. I am even struggling to figure out what the current clock rates
are (rfnoc_ctrl, rfnoc_chdr, ce, etc) and where they are defined. Any help
would be appreciated.
Rob

--00000000000079aff805d8bbd133
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I have a signal processing block that includes a z=
ero-padded FFT (50% zeros) that I built for the N310.=C2=A0 Because of the=
=C2=A0throttling that=C2=A0occurs during insertion of zeros, I expect that =
my FFT will need to be clocked at a bit more than twice the max sample rate=
. So, since I want to operate=C2=A0the N310 at the highest sample rate of 1=
25 MS/s, it seems that my FFT will need to be clocked &gt;=3D 260 MHz.=C2=
=A0 I&#39;m wondering how to do it.</div><div><br></div><div>I&#39;ve looke=
d at the RFNoC specification and my block is already set up to use the &quo=
t;CE&quot; clock for both control &amp; data. In the rfnoc spec, it mention=
s that I can enter a &quot;range&quot; for my clock in the block definition=
 yaml. But, I also see that in the end, the top N310 yaml will require me t=
o map a _device clock to my block&#39;s CE clock port.=C2=A0</div><div><br>=
</div><div>It&#39;s not clear to me how this works. Does it help to provide=
 a range in the block definition yaml? Or, perhaps it is even necessary?=C2=
=A0 How do I specify in the top N310 yaml which device clock will map to my=
 blocks CE clock port?=C2=A0 It seems to me that I am missing a step (defin=
ing a clock somewhere?).=C2=A0</div><div><br></div><div>I am pretty much a =
novice, so I expect that this is the cause of my confusion. I am even strug=
gling to figure out what the current clock rates are (rfnoc_ctrl, rfnoc_chd=
r, ce, etc) and where they are defined. Any help would be appreciated.=C2=
=A0=C2=A0</div><div>Rob</div></div>

--00000000000079aff805d8bbd133--

--===============4656174276900845462==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4656174276900845462==--
