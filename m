Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9969798F9AF
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 00:14:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB18738582A
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 18:14:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727993678; bh=yi1anH6zoOacmF21cONRWuIYDzuT5C3X+1wcnTRklAQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Xi7S1tTd/pMuc6numcx6eb43ENk8ireDdbyUnzaC5ZfR6qj2owl+3zHhLpBg+L70c
	 6zssaa90umtCD7UdM2ZtRdw2p4KgZANsO7f3dbdLvJpwOPMWwUPj0UvwjjoUJr3iq5
	 ahwM9vfT9GQ69aipu09uqli9eNU1+rkDguXGMBsl+eJcHkDeIB/DzG229Zz54RxseB
	 fYJwyY8Si3MnlFvuVFxRXbG1kg6jzCzR/2JeJV96UR7bW4QOueFfG6PEEz7Wce2TpT
	 dKKtT4EcVKzAdjrtvAZStWScmdZBzawprPgU3Rs6i2IV69PCmwNAykAOEwCoeejTnK
	 A0HBL2bxqxxaA==
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 555EC3857E8
	for <usrp-users@lists.ettus.com>; Thu,  3 Oct 2024 18:13:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="UyKssZXF";
	dkim-atps=neutral
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-37cdac05af9so1423549f8f.0
        for <usrp-users@lists.ettus.com>; Thu, 03 Oct 2024 15:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1727993621; x=1728598421; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BkiBSLoUAuhZbon8OnCIPrdzhUNcuoTNNPN7iFadhDw=;
        b=UyKssZXFO/hAMwZP9CftqRH6CnuOaBAIL232rhkP6Na7h7HQaUnS1Y1mKFHfw5ZhzS
         3OXihgbfKJiwpPdtAvfBgbOtvu6/GFCHYBjmGwzgcbFmapxEAoGOowiSvxR6M6XUEcrA
         7GE7etGtjVb/Zpdu52TjV8uQiC/dMi4QWmYUELOikeKzgRaeQBT0uILZpWmKvfB+i9bF
         LZjwf5M3BvgT0fZ3QVMmnD2yyI3ySOmv4TajPAXscw98ewdGtpTlNVIr0LgBHPAoQOTD
         KAgrVlTa9cgQC6ilfcdTNBc7rNUvUqYjKUVahyOX0sZay3Sca+FeehTWmLT2XrIVMWeM
         DOng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727993621; x=1728598421;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BkiBSLoUAuhZbon8OnCIPrdzhUNcuoTNNPN7iFadhDw=;
        b=lgSnX2ESjjRXiDwKh9DZ6A7W5EsJjl3Pgv8iWXz41m53qNYORQ8+PBoHKhIaJCi5EH
         GyJimKOYEpG89gRbanTy5R/qH2MczvuAgl037Wu4PpnxD0SBrJrN4Llee2SXRWkBZcDZ
         WyDLYKVQrH/aRPaTPUjURJ5elLOaTUfxder7c1nh6vVhNInVDmSacpDHiYiZQvCzRo14
         d2nt5cyFiljPdQtad3HmiKE89w0BevKIXIh5CpmXvqcQOZj6UH+fE2IxeQFfu8samybQ
         mXLZqJN8TwqlkT3o/X5omZqrU7u+/IGV8nM4+FXx64fVhMhImn5Nti67TjuS7o+JwLQa
         gcMQ==
X-Gm-Message-State: AOJu0Yy/k9f8RwjrqjjPT/xrNTMJk2Sy/P0FhAwYgzsD0jk6VvqBUNd4
	Aps8IcC3V5gUkBH6EVXuP5Cp4LnK8m3wX8x48A0B1/EZ2F07mHSjolItrf+ygrJouINPf9X3DqO
	6u8SgRMld5Q1lgvALax6CLFGaWD+jIPnyplvN/3Gc
X-Google-Smtp-Source: AGHT+IGz2HXpXUIPhaQojE6LHICXWqH17xPYKjDqXDt1YFrsg9Xgh2SijablQJ28JErDcNTDfAhURRKuhc6J5uY+p4U=
X-Received: by 2002:adf:f9cb:0:b0:368:3f6a:1dea with SMTP id
 ffacd0b85a97d-37d0e6eaeccmr652107f8f.6.1727993621228; Thu, 03 Oct 2024
 15:13:41 -0700 (PDT)
MIME-Version: 1.0
References: <OIwxnOhsDmXDO3NJd5rbRXz9CJLZ228l7bPGUCxd0@lists.ettus.com>
In-Reply-To: <OIwxnOhsDmXDO3NJd5rbRXz9CJLZ228l7bPGUCxd0@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 3 Oct 2024 17:13:25 -0500
Message-ID: <CAFche=jaxKDZsezvJhYP3bMH_7oKF-T4uxRSxiNz6Gs7Ue+3Fg@mail.gmail.com>
To: cyberphox@gmail.com
Message-ID-Hash: JDNFWXLZSL6YVMNJIEHXB23EJFHXUZ55
X-Message-ID-Hash: JDNFWXLZSL6YVMNJIEHXB23EJFHXUZ55
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP-2974 FPGA core temperature
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JDNFWXLZSL6YVMNJIEHXB23EJFHXUZ55/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2626984526850697919=="

--===============2626984526850697919==
Content-Type: multipart/alternative; boundary="000000000000f7dc40062399dd23"

--000000000000f7dc40062399dd23
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I don't have any data on what the expected spread is. But I suggest you
double check that the fans are operating similarly to the other units and
that air flow around the unit is not blocked in any way.

Wade

On Tue, Oct 1, 2024 at 4:14=E2=80=AFAM <cyberphox@gmail.com> wrote:

> Hi Ettus Team
>
> I have a couple of USRP-2974 that have a higher than normally seen FPGA
> core temp. Normally I see around 58-60C something like that. But on two
> units I get around 70-75C. The max temp is 85C for the FPGA, so getting
> close. In all cases, the units are at a room temperature, loaded with the
> same FPGA bitfiles and running similar functions.
>
> Is this a normal spread or are they outliers? Perhaps the thermal tape or
> paste is not doing so well.
>
> We currently have a warning threshold set at 70C, may be this is too
> pedantic.
>
> Thank you for your help.
>
> Regards
>
> Marino
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f7dc40062399dd23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I don&#39;t have any data on what the expected spread=
 is. But I suggest you double check that the fans are operating similarly t=
o the other units and that air flow around the unit is not blocked in any w=
ay.<br></div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 1, 2024 at 4:14=
=E2=80=AFAM &lt;<a href=3D"mailto:cyberphox@gmail.com">cyberphox@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
p>Hi Ettus Team</p><p>I have a couple of USRP-2974 that have a higher than =
normally seen FPGA core temp.  Normally I see around 58-60C something like =
that. But on two units I get around 70-75C.  The max temp is 85C for the FP=
GA, so getting close.    In all cases, the units are at a room temperature,=
 loaded with the same FPGA bitfiles and running similar functions.</p><p>Is=
 this a normal spread or are they outliers? Perhaps the thermal tape or pas=
te is not doing so well.</p><p>We currently have a warning threshold set at=
 70C, may be this is too pedantic. </p><p>Thank you for your help.</p><p>Re=
gards</p><p>Marino</p><p><br></p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f7dc40062399dd23--

--===============2626984526850697919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2626984526850697919==--
