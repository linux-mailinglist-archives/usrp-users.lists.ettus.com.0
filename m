Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E49B68F322
	for <lists+usrp-users@lfdr.de>; Wed,  8 Feb 2023 17:25:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14FD8383DD5
	for <lists+usrp-users@lfdr.de>; Wed,  8 Feb 2023 11:25:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675873521; bh=Rzh5h6hptf9yOZs3d3uFVOqHj0Mb5xYELXZ+L15IaQk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=grtW3hiagHXOERNkBQFNLrckGB/nc8K7ZTeEQof01iiPN+m0Go9HV0vonqshPDCJ4
	 hoh31dWLiSBKNH4UmhQ8X8P3scxDVmBowN6XGSiRfAso+SvMrOLthCdriCFRKBY2o9
	 SZLhAIcpiAGLOXIYUsP2cqgCbSq9eTDqsMzNohV2rU6KfgOuRgrBQcFY6tmgfdFnwU
	 uMFOjvFoHNjH2Ggmir6orW26YCara9Pz/I0SJzCCUKJfx1vKSvJzKAeFJbnJgg6Rcc
	 1jzTVPAb7f9VTgbpR+CLH+7N/Ugd6tDg+bNhIM4XRbOwZR8+1mLN5XZWyOc2EaB2+Z
	 4OPwYgrpQdJFg==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id CBAF6383CAA
	for <usrp-users@lists.ettus.com>; Wed,  8 Feb 2023 11:23:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VBhyCAs/";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id l12so12302039edb.0
        for <usrp-users@lists.ettus.com>; Wed, 08 Feb 2023 08:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AxQvub9d28wBANFHar6LjP+8GfIVZIGh7Mvga25Agfw=;
        b=VBhyCAs/Tw1fYZyxI6WuggA4gRCoU4xrQqtY2O63QXvQmgP8v7EonGPwFRLuGukWhx
         y22w9kCdVDKiyzANcH9AGUKjvHENQmyT6UC5vhQM3zAOTs+uumJ+y84NxZQvKXXkICxO
         7rlMYEpypbpEKm/d49uRavnRKHY+mILLla0jcONkBA0NhwhAJ/52SxX/wNu68eN0Lnbw
         9J/76Sj+OIh6Sulns1RZgYAaSzmffw1gl7ZhqxZEDkUB6kLqkHIadFtgH/NE3CHHG/Uu
         Zgt5DGdotXJFgdQuruUvZJMJ1P+34McMomDSq+1/gSMS16ht9XANqmXmVSPYkmoPNibc
         sk+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AxQvub9d28wBANFHar6LjP+8GfIVZIGh7Mvga25Agfw=;
        b=r9TxdhdlRAuGQdX2bKnd4pu3A3Evga/hf+FTw+mbst9+2M15Kv4cBG8vwEkzpGJis8
         1dqkS2jPeGRSpbTQHSoX4h9Kwt2FO5++fdrmPZxcQjmYMwcQvB2i72J7PoFdQkP04S7S
         Ww8vONKlQBjvzNAXV0xDUwZyzDM3ZXksi00pLpw/OUWpDLwJaeS0oyIUeINsP/NbA6uU
         BXW1xxiUIM+loFToSxbTgwyOWx1NaLuZ/G977yZ0IJRdEpFJcYMwL0PGYqViMNvQRg7u
         9fDpnUjaf4Vh2TsZrRQXTjukseLwHx5AuGCWbisPDC0MI1CCDnjnUEPXg0BlGnw7trHV
         exjA==
X-Gm-Message-State: AO0yUKUQKpnBGFEkiKyELzTyzhKmrzZwgIgZ7SODsQ0Sne3lV1/WHZ9q
	1m2VexD5Wk5QibArFHVTYZxrQNaTNm4mtw==
X-Google-Smtp-Source: AK7set8JSLRHqeG63BLdPV1sTi4R/OFVmOFqMkKhYLBgXtpXpzc/YA+l1tALTXp0r0xHHR/c8/LUxw==
X-Received: by 2002:a05:6402:510f:b0:4aa:c483:6b31 with SMTP id m15-20020a056402510f00b004aac4836b31mr9909523edd.0.1675873427270;
        Wed, 08 Feb 2023 08:23:47 -0800 (PST)
Received: from [192.168.101.162] ([102.39.234.92])
        by smtp.gmail.com with ESMTPSA id s22-20020aa7cb16000000b004a236384909sm8016750edt.10.2023.02.08.08.23.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Feb 2023 08:23:46 -0800 (PST)
Date: Wed, 8 Feb 2023 18:23:13 +0200
From: Kevin Williams <zs1kwa@gmail.com>
To: usrp-users@lists.ettus.com, "Marcus D. Leech"
 <patchvonbraun@gmail.com>
Message-ID: <93d0ae0e-56a8-477a-b656-7f76c0caccaf@Spark>
In-Reply-To: <f47522d2-6021-71a8-1f2f-be791a30d09d@gmail.com>
References: <CADhJKjdHYYzX_XoGRdnhW1pnff-E9QoQ+O_QuKePdyURh39EyA@mail.gmail.com>
 <f47522d2-6021-71a8-1f2f-be791a30d09d@gmail.com>
X-Readdle-Message-ID: 93d0ae0e-56a8-477a-b656-7f76c0caccaf@Spark
MIME-Version: 1.0
Message-ID-Hash: YN2JJRJNCRZ7RINHLFAC2H4GQKBIGRZ2
X-Message-ID-Hash: YN2JJRJNCRZ7RINHLFAC2H4GQKBIGRZ2
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MATLAB support for N320?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YN2JJRJNCRZ7RINHLFAC2H4GQKBIGRZ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6268656704979453736=="

--===============6268656704979453736==
Content-Type: multipart/alternative; boundary="63e3cc8d_79e2a9e3_803b"

--63e3cc8d_79e2a9e3_803b
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

I am very active in developing firmware using Simulink and HDL Coder for =
this.

So far I wrap the Ettus noc shell as a black box and design my dsp firmwa=
re around that.

It is fairly straightforward. The Ettus testbenches are happy, but now ju=
st struggling with makefile issues for the main usrp image.

Id be happy to talk about the ideas.

Kind regards, Kevin
On 08 =46eb 2023 at 18:17 +0200, Marcus D. Leech <patchvonbraun=40gmail.c=
om>, wrote:
> On 08/02/2023 11:12, Melissa Lind wrote:
> > I needed to do some 5G work with MATLAB's 5G Toolbox, and was wonderi=
ng if someone could clarify:
> >
> > https://www.mathworks.com/hardware-support/usrp.html claims:
> > N300 series from Ettus Research LLC
> >
> > https://www.mathworks.com/hardware-support/ni-usrp-radios.html claims=
:
> > seems to have a picture of an N320
> >
> > There isn't any description of what is different between N320 support=
 for:
> >
> > =E2=80=A2 NI USRP Radio Support from Wireless Testbench
> > =E2=80=A2 USRP Support from Communications Toolbox
> >
> > Thanks
> > M
> >
> You might get more-detailed answers from Mathworks.=C2=A0=C2=A0 Ettus/N=
I aren't directly involved in that support.
>
>
>
> =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> USRP-users mailing list -- usrp-users=40lists.ettus.com
> To unsubscribe send an email to usrp-users-leave=40lists.ettus.com

--63e3cc8d_79e2a9e3_803b
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>I am very active in developing firmware using Simul=
ink and HDL Coder for this.<br />
<br />
So far I wrap the Ettus noc shell as a black box and design my dsp firmwa=
re around that.<br />
<br />
It is fairly straightforward. The Ettus testbenches are happy, but now ju=
st struggling with makefile issues for the main usrp image.<br />
<br />
Id be happy to talk about the ideas.<br />
<br />
Kind regards, Kevin</div>
</div>
<div name=3D=22messageReplySection=22>On 08 =46eb 2023 at 18:17 +0200, Ma=
rcus D. Leech &lt;patchvonbraun=40gmail.com&gt;, wrote:<br />
<blockquote type=3D=22cite=22 style=3D=22border-left-color: grey; border-=
left-width: thin; border-left-style: solid; margin: 5px 5px;padding-left:=
 10px;=22>
<div class=3D=22moz-cite-prefix=22>On 08/02/2023 11:12, Melissa Lind wrot=
e:<br /></div>
<blockquote type=3D=22cite=22 cite=3D=22mid:CADhJKjdHYYzX=5FXoGRdnhW1pnff=
-E9QoQ+O=5FQuKePdyURh39EyA=40mail.gmail.com=22>
<meta http-equiv=3D=22content-type=22 content=3D=22text/html; charset=3DU=
T=46-8=22 />
<div dir=3D=22ltr=22>I needed to do some 5G work with MATLAB's 5G Toolbox=
, and was wondering if someone could clarify:
<div><br /></div>
<div><a href=3D=22https://www.mathworks.com/hardware-support/usrp.html=22=
 moz-do-not-send=3D=22true=22 class=3D=22moz-txt-link-freetext=22>https:/=
/www.mathworks.com/hardware-support/usrp.html</a> claims:</div>
<div>N300 series from Ettus Research LLC<br /></div>
<div><br /></div>
<div><a href=3D=22https://www.mathworks.com/hardware-support/ni-usrp-radi=
os.html=22 moz-do-not-send=3D=22true=22 class=3D=22moz-txt-link-freetext=22=
>https://www.mathworks.com/hardware-support/ni-usrp-radios.html</a> claim=
s:<br /></div>
<div>seems to have a picture of an N320</div>
<div><br /></div>
<div>There isn't any description of what is different between N320 suppor=
t for:</div>
<div>
<ul>
<li>NI USRP Radio Support from Wireless Testbench<br /></li>
<li>USRP Support from Communications Toolbox<br /></li>
</ul>
<div>Thanks</div>
</div>
<div>M</div>
<div><br /></div>
</div>
</blockquote>
You might get more-detailed answers from Mathworks.&=23160;&=23160; Ettus=
/NI aren't directly involved in that support.<br />
<br />
<br />
<br />
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br />
USRP-users mailing list -- usrp-users=40lists.ettus.com<br />
To unsubscribe send an email to usrp-users-leave=40lists.ettus.com<br /><=
/blockquote>
</div>
</body>
</html>

--63e3cc8d_79e2a9e3_803b--

--===============6268656704979453736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6268656704979453736==--
