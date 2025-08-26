Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E18BB35B05
	for <lists+usrp-users@lfdr.de>; Tue, 26 Aug 2025 13:17:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3CEFC38611C
	for <lists+usrp-users@lfdr.de>; Tue, 26 Aug 2025 07:17:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1756207032; bh=hG/ABZPQyLRhr0kxzWwBXBVjvJ57jrg82nqwPMpPUKo=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=U0+iP7Ss6vTYoxzbG65AskgQjXuewbiiYM7ElTyu9DaylFhzNyJGgKC0MjFzsT0pG
	 v5wEjM+ViUxG0ruttaHEAjhNI88lxht7Q1DTYmIZ5aQABgTp0/5R29F0Yqv+CL/xKF
	 X+E+dDRimaVX3O4a3YVn+d+zVX5PhWv2fNLzeZcATjV6/eapiS2p/aBwSoA+ftHA0J
	 DtkvxiM25b0N15DJmSPyiGZdTxmHOHrtBoBy1QVHMU/1NQNrVR+L1xZwbtI5iiRK8o
	 Np5kZJ2AU4/b7f6Uf9ueqNdNHNNvcXxo261g176GosCarjzcdK7+WhH4dVoHvzzJ/A
	 9AxiIk7yPGDNw==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id D791A3860F3
	for <usrp-users@lists.ettus.com>; Tue, 26 Aug 2025 07:17:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="2wnRQEG6";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-61a8c134609so6797011a12.3
        for <usrp-users@lists.ettus.com>; Tue, 26 Aug 2025 04:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1756207026; x=1756811826; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+/qRBs21ga/uWFqM1sx+dx0EDgIsjKaEFDOkgisrVbQ=;
        b=2wnRQEG68sFW7emX3SHsyUTB93RwlSZfuTvBbzG3OrniyPgf0gKVe7DtaK5s3mjEB0
         4gCRomjoHFlxnS2aTTt7GsxXMA/FsLc2hpefe1aiCgtqNDTTa6GRppeU7+kdOHQn4VCy
         rkFw7w5xUVaUFaLxnUvXiX1x/03W48mSWB9hDgSQA/p7OV7HsE7rlOeKUw/HA7pnhF67
         FHOgPprAFJRq7cuSmOFNkjewu1ARCSM2MiChg2uga5Y3IT7fQ2WM8XeUoHvWbCM4OYBk
         nN3ZemXLwVTfZzXcpa/y+me50Y+5AhZo6FJ/TJWQtIwcjzNZzxgE3/YMFSoP5wJfem+w
         XJhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756207026; x=1756811826;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+/qRBs21ga/uWFqM1sx+dx0EDgIsjKaEFDOkgisrVbQ=;
        b=TMyiYf2PtvmrvczJT2Bk8nY+9A9K8y2qM3MIDdCE4hxUbj1ZgY19nbUEWQHCkhtEVG
         g78ooHpzajk5a90+Bp1cV20FUgcpXxTWRJchJROLtS1YtarMfBZ9t8FQ5ErfW1pnr9LL
         hfQ3kz+M0furYNvEvV8Ea8gXJ2XQl1k2lnBsjmS5UlGExlx0jOA8R6UTP4vJaptHGBSr
         Py+vUxjhbGvfDCMsHhyRM8sfWs/KFp4/JWFbH5OdjLDyZ6X0R8IxI0UfWoIvkKQ70y0j
         lKOhyADXc67FB3ADq2gyBLb0U5g3DofcECmf8a/6W7SITRfyFkyu6YUiy185JrwDKEMd
         uAag==
X-Gm-Message-State: AOJu0YydFyroJzwP50ZHR0BjnC/z9MtA0Y2df1L7OrefYWa/ckJvmjYM
	eoFzGR1HC6dTeLNHmkS+FOetJy8EYguGFvmH4SFRP/uYMrR7Hdqz98EQFdgA1dkqp7x2vsWCePs
	hhvpZhU8t+rly1O2auoWCbSBoXOnOM4Uj0nEl4LMHKp2KJih+YrqbNmeEEKxs
X-Gm-Gg: ASbGnctwS5QU2Exb6XeHwI0w9I7y0aJpG8HQ2tIOEfmBG1K38pBPsqLabjqhjfSMWn+
	PUoI0OQVuKEHFjcZygL0Ymh9gwGo+QXuyXUD1/enEDtmwCCq/RVl8bhdhQnQi5nR5N4b4ibWRXj
	3Yr1kusNSqs3XzgpfRN9bb01taRGNO6mqX1CJvFoQwbtyzIzF9a6iqP0ThsfnLl0XvuCjoZY5AL
	3acjUxc1Vm09zaE
X-Google-Smtp-Source: AGHT+IGAaJLROcPmX2TOoD8iPn3WSxInjf4FIS0YIAyk1HrcQRbLIvKXE3SbzzTzbIB3+xzRQFqNl7uxQFQCP3XpPZc=
X-Received: by 2002:a05:6402:4393:b0:618:534:550a with SMTP id
 4fb4d7f45d1cf-61c1b6e5d4bmr13828161a12.24.1756207026354; Tue, 26 Aug 2025
 04:17:06 -0700 (PDT)
MIME-Version: 1.0
References: <e7dea99b96384c97b77d144180bcd361@vastech.co.za>
In-Reply-To: <e7dea99b96384c97b77d144180bcd361@vastech.co.za>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 26 Aug 2025 13:16:55 +0200
X-Gm-Features: Ac12FXzgA4d2EaOJBT09WuMs1gXPIQ3Ky6cs3IuCO9ekDA3Ck1JM5JHFDQcnTEs
Message-ID: <CAFOi1A5UOKMP0WZHj2i4GoY5TfOUSLytzGXhOG-abD=iASHiqg@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: DMV6QIVTPWUWLPU6QNK4QOTWXVOVDHFZ
X-Message-ID-Hash: DMV6QIVTPWUWLPU6QNK4QOTWXVOVDHFZ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: custom clocks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DMV6QIVTPWUWLPU6QNK4QOTWXVOVDHFZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6090153253516650713=="

--===============6090153253516650713==
Content-Type: multipart/alternative; boundary="000000000000f54c97063d42cf61"

--000000000000f54c97063d42cf61
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Kevin,

there's no example, but there is a feature available that will let you do
that. You need to:

- Write a regular (System-)Verilog module that consumes any of the
available clocks, and produces your desired clock
- Internally, this module should instantiate an MMCM or whatever you use to
generate your clocks
- In rfnoc/modules/my_clk_module.yml you generate a YAML describing your
clock-generating module
- Make sure you declare your new clocks as output ("direction: out").
- In your image core YAML, declare the module like rfnoc blocks:

modules:
  my_clock_foo:
    block_desc: "my_foo.yml"

Now, your new clock is available for referencing in the clock domains
section.

--M

On Sat, Aug 2, 2025 at 1:53=E2=80=AFPM Kevin Williams <kevin.williams@vaste=
ch.co.za>
wrote:

> Hi,
>
>
>
> I have ip cores that provide an axi-lite interface for control registers,
> but which do not seem to make timing when that interface is connected to
> the rfnoc_ctrl clock in an x310 design.
>
>
>
> I read in the docs that from UHD 4.7 it is possible to define a new modul=
e
> to create this clock, but it isn=E2=80=99t clear how to implement this.
>
>
>
> Is there perhaps an example that someone could share?
>
>
>
> It would be first prize to generate a global clock that other of my rfnoc
> blocks could use but I don=E2=80=99t want to develop inside the UHD repo =
itself.
>
>
>
> Many thanks, Kevin
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f54c97063d42cf61
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Kevin,</div><div><br></div><div>there&#39;s no exa=
mple, but there is a feature available that will let you do that. You need =
to:</div><div><br></div><div>- Write a regular (System-)Verilog module that=
 consumes any of the available=C2=A0clocks, and produces your desired clock=
</div><div>- Internally, this module should instantiate an MMCM or whatever=
 you use to generate your clocks</div><div>- In rfnoc/modules/my_clk_module=
.yml you generate a YAML describing your clock-generating module</div><div>=
- Make sure you declare your new clocks as output (&quot;direction: out&quo=
t;).</div><div>- In your image core YAML, declare the module like rfnoc blo=
cks:</div><div><br></div><div>modules:</div><div>=C2=A0 my_clock_foo:</div>=
<div>=C2=A0 =C2=A0 block_desc: &quot;my_foo.yml&quot;</div><div><br></div><=
div>Now, your new clock is available for referencing in the clock domains s=
ection.</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quo=
te gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Aug=
 2, 2025 at 1:53=E2=80=AFPM Kevin Williams &lt;<a href=3D"mailto:kevin.will=
iams@vastech.co.za">kevin.williams@vastech.co.za</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg4228383792=
276130352"><div lang=3D"EN-ZA"><div class=3D"m_4228383792276130352WordSecti=
on1"><p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<u></u><u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">I have ip cores that provide =
an axi-lite interface for control registers, but which do not seem to make =
timing when that interface is connected to the rfnoc_ctrl clock in an x310 =
design.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>I read in the docs that from UHD 4.7 it is possible to define a new module=
 to create this clock, but it isn=E2=80=99t clear how to implement this.<u>=
</u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Is ther=
e perhaps an example that someone could share?<u></u><u></u></span></p><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US">It would be first prize to generate=
 a global clock that other of my rfnoc blocks could use but I don=E2=80=99t=
 want to develop inside the UHD repo itself.<u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">Many thanks, Kevin<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></spa=
n></p></div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000f54c97063d42cf61--

--===============6090153253516650713==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6090153253516650713==--
