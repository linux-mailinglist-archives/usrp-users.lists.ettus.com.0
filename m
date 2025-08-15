Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 522F7B280D3
	for <lists+usrp-users@lfdr.de>; Fri, 15 Aug 2025 15:50:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D3A4386B6B
	for <lists+usrp-users@lfdr.de>; Fri, 15 Aug 2025 09:49:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755265799; bh=0o9eCpUQhBEsXwIyHEfG80ysbXxxMNeqcSPhnp2Yqnc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=vDlw3UnqJoG/X3QEk62Ni4C9VNliC3DX6kwrJ+gTupO259XpM4FuCxm+S4JKzroMk
	 Q2W1/nYGXyda2tyMZvlBFil127KpVR1N1c8eQ76ol7xPh4zIlU3jDoINqLWFD8yzrt
	 NG2w4DMprLsqyQqXfQrEHfOUJtu6o75/cNlsYHI+zLmEyTOMwYEsV/Btbidz4OiRXP
	 oCNFqGbpSdw0gDRIGp2hiB/7dRvvAoPSyBo1QifKZES1UOfTtHT7EYj37QpPI+9BNE
	 PovGEHGArFW/YqVbm83VXoP4uyZee0/D6g3kD5FyouO1gcGTIeIPXVMOAsKOEJCBGB
	 9rCR44+oCxfUA==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id D453F386A84
	for <usrp-users@lists.ettus.com>; Fri, 15 Aug 2025 09:49:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eu0uSLWa";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-afcb78d5e74so318990566b.1
        for <usrp-users@lists.ettus.com>; Fri, 15 Aug 2025 06:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755265761; x=1755870561; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4iBNn3SM1wfHxLvPyh7KOsxU8Vh5aoNq20BwnFUsGao=;
        b=eu0uSLWax7yYwwk1ikGmumk6NiOICaA6SOxvoYMzJjXDnNyd4DFC9NbpBAODBMLH7r
         i/gVQYTNeC99sytTCrEc8cSdaOdy5ncTCGzH12l4Xh0dGPx9SL7ntR2Saep1mseLIAHn
         RfB9JKlNDZ/u8FplwMpPhXb796dG9qqKfGdJbiOPBpiwb6XEeXKLyYd73udFtG91vd5W
         p36EMkbjfYhvHEvqF1Nq05yUX9LMNeXKoTck2tst4Godnj0ZgkoelZlZfpRUvyOdZF94
         Q7JTzjqwePWdYsENo7TVQdHYEJB8JBTsLXmvnz8Apuep3omEwrmCoyICez8M0uzoJEsq
         VZvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755265761; x=1755870561;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4iBNn3SM1wfHxLvPyh7KOsxU8Vh5aoNq20BwnFUsGao=;
        b=xC/XEgZVqp+3Wgqsv1A0D0srTpr6yy90KrYaIi9FloifawMlDN1K7bIyDXr3A+nx48
         /YAa7q5AvxJnPMb6nT3xvfhVY8etNc5//Ss9stXtyra+UetA0akfAImICcTEZvq3ufg8
         CincNAsleZymTiI+z/xWc+8WMp/xet0KyInYB4Zz34z3NcXImQy0HRT+vgRgcmx596GY
         PWUISWmIXh5c8WdDOCrlm1qmEFHM6Hh0KPezkjOX4gi+yFhpGKPFEgSWxbxmSobWtK3s
         XrnCHSRRU8KnXgvhhWvvHNsDpNPQeY3vBdBsxy/ASTpQIfKLu1zCsjO9+RwfLFHKz/0z
         LvXw==
X-Forwarded-Encrypted: i=1; AJvYcCWALhUBJJY/zodwiLaP4HjpznFega706ejx7/piENN8jDNn2U9RdMrbnV/OVo/zP6xHw2ouGQJhG2oV@lists.ettus.com
X-Gm-Message-State: AOJu0YxjIISyiu1ac8QsCZS48KtLIy0e07oCjDviRsozWUp+/IDbP3xq
	qWc2mMJW9Ibhr2Gu3TLZ3eMR6vjSin7xfUMslUzRQh6KLiDjGBozNmPRMmpUC8pFRpfBOxDib3C
	2V8Q+63JtSN4mVsup92kXgv9CCcn3Jw0=
X-Gm-Gg: ASbGnctS8+GfE1IPPZnCr3HhC3G/foUvCUpq/Pv2FvE+8bXOjuUUuvJxq0cl6fBvguw
	mGpTWGmh3e1dFYzFMYrHdrcajLDWaywneD3p1TDLedE5P+sCSDqXGDcq5BCGbkJhMUblwyNH6MO
	a+ypheESH/zVeOlHe8sxD6z20xNYURqndPOERHT7LSuIxfpz6vApLXtCWkaKHTG5SH9R65K5umk
	2NWfuk=
X-Google-Smtp-Source: AGHT+IF04CXF8zm/BZgPbwnqu+IJGSnCvo7YK2w7c0oXYXTpIsIuRfIjptRMO+FajgIgmXaiIrXHCF+FbtA3+jiArfY=
X-Received: by 2002:a17:906:9f8f:b0:af9:8064:21e3 with SMTP id
 a640c23a62f3a-afcdc3e804bmr182814266b.56.1755265760437; Fri, 15 Aug 2025
 06:49:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK764y---h1ad0gFOe9pe29p+ouKn_-pFFH1mWDXr70Q9w@mail.gmail.com>
 <CAAxXO2G1vBNwnz826rjRfHGVVR3i+667zTmiR6MgNO6oP-qcTA@mail.gmail.com>
 <CAEXYVK4FTzzmwiCNEQzVdSfF66a+NhjbRM6V4_40Uicg_kpfhg@mail.gmail.com>
 <CAAxXO2G60mr+mUap+zjGzEx3a6T8CC3V6NeL7TCUc97Yr318pQ@mail.gmail.com>
 <CAEXYVK6TgKm5MTFc_EPEMd50Ebhxz4W=jCrDbMx7iDRhMVP_fQ@mail.gmail.com> <CAFche=i--MQDHUPcdycfvUmOFf2HOfs9qi3PP=3aiO+HNmzBcQ@mail.gmail.com>
In-Reply-To: <CAFche=i--MQDHUPcdycfvUmOFf2HOfs9qi3PP=3aiO+HNmzBcQ@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 15 Aug 2025 09:49:08 -0400
X-Gm-Features: Ac12FXzq_9zsbUqGQmLw2g9PFJcpF90uQe-5wx42ZunizXQho0qPLgCUADjpXOo
Message-ID: <CAEXYVK4+ZouRGm-YU7LoK8qA_pPVid7cRRTgb04B6rxX2Nd-kg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: JLL35FXK6F7FS2LQWT22TKE6DWUUJZUR
X-Message-ID-Hash: JLL35FXK6F7FS2LQWT22TKE6DWUUJZUR
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nikos Balkanas <nbalkanas@gmail.com>, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 eth_100g PAUSE_EN and Dropped Packet Counts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JLL35FXK6F7FS2LQWT22TKE6DWUUJZUR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2625787146769289723=="

--===============2625787146769289723==
Content-Type: multipart/alternative; boundary="000000000000232aa5063c67a8f9"

--000000000000232aa5063c67a8f9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 15, 2025 at 12:25=E2=80=AFAM Wade Fife <wade.fife@ettus.com> wr=
ote:

> Brian,
>
> Are you enabling pause frames? It is required when transmitting to the
> USRP at high rates with 100 GbE.
>
> https://files.ettus.com/manual/page_transport.html#transport_udp_linux
>
> Unfortunately, as far as I know, it's not yet enabled by default for some
> technical reasons. So be sure to turn it on after each FPGA reload or
> reboot.
>

We actually can't use pause frames/flow control in this application. I am
fine with dropped frames as a result of this, but I need the link to still
be robust to lots of traffic. I was surprised to see the pings stop since
that's a CPU path, and not a CHDR path from the ethernet transport adapter.


>
> You should be able to read those registers by doing raw memory read/write=
s
> to the system bus. The register offsets are here:
>
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/xpo=
rt_sv/eth_regs.vh
>
> The base address for QSFP0 I think is 0x12_0000_8000, so REG_CHDR_DROPPED=
,
> for example, should be at 0x12_0000_9030. The base address for QSFP1 shou=
ld
> be 0x12_0001_8000.
>
> For example, running this should return the bottom part of the MAC addres=
s:
>
> devmem2 0x1200009010
>

Excellent - this is what I was looking for with the registers! I'll try
this out today.


>
> Hopefully I've got the details right. I'm traveling at the moment, so I
> can't easily verify.
>

Good luck traveling. I'll update this thread when I figure out more today.

Brian

--000000000000232aa5063c67a8f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote gmail_quo=
te_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 15, 2025 at=
 12:25=E2=80=AFAM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade=
.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div>Brian,</div><div><br></div><div>Are yo=
u enabling pause frames? It is required when transmitting to the USRP at hi=
gh rates with 100 GbE.</div><div><br></div><div><a href=3D"https://files.et=
tus.com/manual/page_transport.html#transport_udp_linux" target=3D"_blank">h=
ttps://files.ettus.com/manual/page_transport.html#transport_udp_linux</a></=
div><div><br></div><div>Unfortunately, as far as I know, it&#39;s not yet e=
nabled by default for some technical reasons. So be sure to turn it on afte=
r each FPGA reload or reboot.</div></div></blockquote><div><br></div><div>W=
e actually can&#39;t use pause frames/flow control in this application. I a=
m fine with dropped frames as a result of this, but I need the link to stil=
l be robust to lots of traffic. I was surprised to see the pings stop since=
 that&#39;s a CPU path, and not a CHDR path from the ethernet transport ada=
pter.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div><br></div><div>You should be able to read those re=
gisters by doing raw memory read/writes to the system bus. The register off=
sets are here:</div><div><br></div><div><a href=3D"https://github.com/Ettus=
Research/uhd/blob/master/fpga/usrp3/lib/rfnoc/xport_sv/eth_regs.vh" target=
=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib=
/rfnoc/xport_sv/eth_regs.vh</a></div><div><br></div><div>The base address f=
or QSFP0 I think is 0x12_0000_8000, so=C2=A0REG_CHDR_DROPPED, for example, =
should be at=C2=A00x12_0000_9030. The base address for QSFP1 should be 0x12=
_0001_8000.</div><div><br></div><div>For example, running this should retur=
n the bottom part of the MAC address:</div><div><br></div><div>devmem2 0x12=
00009010</div></div></blockquote><div><br></div><div><div>Excellent - this =
is what I was looking for with the registers! I&#39;ll try this out today.<=
/div></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div><br></div><div>Hopefully I&#39;ve got the details=
=C2=A0right. I&#39;m traveling at the moment, so I can&#39;t easily verify.=
</div></div></blockquote><div><br></div><div>Good luck traveling. I&#39;ll =
update this thread when I figure out more today.</div><div><br></div><div>B=
rian</div></div></div>

--000000000000232aa5063c67a8f9--

--===============2625787146769289723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2625787146769289723==--
