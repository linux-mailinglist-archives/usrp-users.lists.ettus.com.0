Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A777A9FBA
	for <lists+usrp-users@lfdr.de>; Thu, 21 Sep 2023 22:27:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A641384C69
	for <lists+usrp-users@lfdr.de>; Thu, 21 Sep 2023 16:27:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695328030; bh=GekDbdMbFD51NKtBIAVHCZvzGUD/JIm5l2Tz3gMKM3o=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=g4bTUAMpGlmU23VPr1ca/Lg9gcMno4Y0VKy2p9+BDLazpZawp56MTh1pSTS5pAIJP
	 dGUGWKLLRUtfC6V6w+IYOFvAsTUdaLHBEHkhzBYEdlSIwDfKDsdpS5OzqfBld2+d2Z
	 y+h9IgiT9P3zQ/gzH2iI1xR+imkqBie6XYqMbo5zIHScEAhpS7t0WiiGxOGEH8ahq7
	 3LouWfx0iqMHfBNV5GWdwFq3rCmqqSg5rvO8E2Ji2mDLg6SmCfKah9R6Jr2/fEwFCN
	 vMycKT2CRCobCKHSJxMXdQciIbDANcZ28UuXcg98QtdHnyZdjUlUtmjt+wr3mr+iTL
	 J97KkUir509aw==
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 7128C38105B
	for <usrp-users@lists.ettus.com>; Thu, 21 Sep 2023 16:26:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ZawpcAZH";
	dkim-atps=neutral
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40535597f01so11147635e9.3
        for <usrp-users@lists.ettus.com>; Thu, 21 Sep 2023 13:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1695327979; x=1695932779; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0JomaEnD9GAIsdvKD6BNbFPfM8P+dLVItiGfkXdUiwU=;
        b=ZawpcAZH6wpHrEWQPrE+gU6iIlO1WJu9D3lg8gjZdHrMKb/la8OYBSEUl3cRMOXjWV
         5lYwk+0qq81Cg+eH6F7lQElDyIk+Wnps/3TYfVHmBV/0s81673vZ37nHP+HczR1FHpfI
         a5ueWiOGZzcHEjHn5K+6JVSsRWNeFwcH1LAD3nqJypffzmnO6FqfBEHCHhPGOLe5Jdfe
         GnUZ6z8bUBLa6gbuzMyM+acJr51cGCcDMP7AsEwWF5LCF6nocQQ1PjDipIXurzYp97+e
         +NynAW74CoCqNkK8YhMRPuMK1tXkGwHybnX7slq2iMykooHGLTJ5x52tA9lH3pNL3AoQ
         nsSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695327979; x=1695932779;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0JomaEnD9GAIsdvKD6BNbFPfM8P+dLVItiGfkXdUiwU=;
        b=wnPL3mJl/r8ssiLaZK0kbdONO83jQyjzitGxBnHy4aO6VhhhTbE7TSXLi6L6xb1PV1
         y1TZ8rhuuFmuq1XteD1EMolJEsqSd8yXVZy+lrTM8AXP0CtWy5aUsOHLok/dx0UDaJJS
         FeFlh2r3n1LWlpONZ3rBfxP8OTpUtauWYZZjCGi747nhVR19dz/50xs0VpnKINUa+pLI
         KxqcICc4F089pMD4+NT9/UtJhhR5b7KZ6w1nBTIJVbYPv+hMHNPHbSn+fkLJn0LZ6n0W
         wWtwYormEjV1dAiiUOLePlxsQFUvAulu9QlJRk/yQ9tce1WNX/+wkgvtKPNhw1vXzcrs
         9m8g==
X-Gm-Message-State: AOJu0YwtMpmCaL61snbCCwuKsaKja1Ow5Q8986ZlFpwRx0lV7FMGWhvB
	Rk8NTpjsMfi23CMMi/+/R0fYhk769oHJN54pXyrZ635TcJe3MxF/Wd4=
X-Google-Smtp-Source: AGHT+IGA1A6v3rHsAmVaeG1lsFHOzr4AFhh9aoVd/3KEYnJRVf3wS+U0LWXk7157i9jYM2flzcSLik6RDPiCbJW41NA=
X-Received: by 2002:a05:600c:2196:b0:3fe:1871:1826 with SMTP id
 e22-20020a05600c219600b003fe18711826mr6135025wme.27.1695327979099; Thu, 21
 Sep 2023 13:26:19 -0700 (PDT)
MIME-Version: 1.0
References: <BN2P110MB17470A026C94DFF2E9370914B7F8A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN2P110MB17470A026C94DFF2E9370914B7F8A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Date: Thu, 21 Sep 2023 16:26:07 -0400
Message-ID: <CAB__hTQid=NqnZ7fEqn+vctkza_O1hon-NhhXzFKVq+X8_mtmA@mail.gmail.com>
To: David Raeman <david@synopticengineering.com>
Message-ID-Hash: OG3K7TEKOLYK3SHX23FHLU6PFYRJHLQL
X-Message-ID-Hash: OG3K7TEKOLYK3SHX23FHLU6PFYRJHLQL
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Toggling a panel GPIO at a specific time (via RFNoC or otherwise)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OG3K7TEKOLYK3SHX23FHLU6PFYRJHLQL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8606701420601254271=="

--===============8606701420601254271==
Content-Type: multipart/alternative; boundary="000000000000f9535e0605e44da1"

--000000000000f9535e0605e44da1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi David,
It may be the case that this functionality already exists in the radio
block such that you don't need a custom block.  The function
radio_control->set_gpio_attr() respects the command time.  Here is a
portion of one of my applications that outputs a gpio pulse after a
specified delay relative to the streaming 'start_time'.  Would this work
for your case?
Rob

  uhd::time_spec_t gpio_on =3D start_time + gpio_start;
  this->set_command_time(gpio_on, gpio_mb);
  this->set_gpio_attr(gpio_pulse_bank, "OUT", -1, gpio_mask, gpio_mb);
  this->set_command_time(gpio_on + gpio_duration, gpio_mb);
  this->set_gpio_attr(gpio_pulse_bank, "OUT", 0, gpio_mask, gpio_mb);
  this->clear_command_time(gpio_mb);

On Thu, Sep 21, 2023 at 4:01=E2=80=AFPM David Raeman <david@synopticenginee=
ring.com>
wrote:

> Hello,
>
>
>
> I'm looking for advice on toggling an E320 GPIO pin at a specific
> uhd::time_spec_t. My use case is a UHD application that starts a long
> transmit burst at a known timespec, then later toggles a pin at a time
> corresponding to the Nth sample being transmitted. The pin controls an
> external RF switch. I recognize there will be some amount of group delay
> through the RFIC and internal analog components =E2=80=93 my goal is just=
 to be
> roughly synchronous with samples clocked out of the radio block.
>
>
>
> As a first pass, I have a custom RFNoC block that counts valid samples
> from the start of burst and toggles the pin after the Nth sample (where N
> is provided in a user register). This is a poor solution because there is
> deep buffering downstream in the radio block, so my block sees =E2=80=9Cs=
ample N"
> and toggles the pin several thousand sample-periods before it's
> transmitted. It isn=E2=80=99t a fixed lag that can be added as a constant=
 =E2=80=93
> consider that if N is small and =E2=80=9Csample N=E2=80=9D is observed wh=
en the FIFO is
> initially being filled, the toggle would occur while the corresponding
> sample is sitting in the back-pressured FIFO waiting for the transmit sta=
rt
> time.
>
>
>
> Since this is synchronous manipulation of external state, and not just
> samples, I don=E2=80=99t believe it will be sufficient to use CHDR header
> timestamps =E2=80=93 the block would also need to know current radio_time=
, and I=E2=80=99m
> not sure how to get that in an RFNoC block..
>
>
>
> Just wondering if I might be overlooking some simpler approach, or any
> advice on how to plumb this into a custom RFNoC block.
>
>
>
> Thank you,
>
> -David
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f9535e0605e44da1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi David,<div>It may be the case that thi=
s functionality already exists=C2=A0in the radio block such that you don&#3=
9;t need a custom block.=C2=A0 The function radio_control-&gt;set_gpio_attr=
() respects the command time.=C2=A0 Here is a portion of one of my applicat=
ions that outputs a gpio pulse after a specified delay relative to the stre=
aming &#39;start_time&#39;.=C2=A0 Would this work for your case?</div><div>=
Rob</div><div><font face=3D"monospace"><br></font></div><div><font face=3D"=
monospace">=C2=A0 uhd::time_spec_t gpio_on =3D start_time + gpio_start;<br>=
=C2=A0 this-&gt;set_command_time(gpio_on, gpio_mb);<br>=C2=A0 this-&gt;set_=
gpio_attr(gpio_pulse_bank, &quot;OUT&quot;, -1, gpio_mask, gpio_mb);<br>=C2=
=A0 this-&gt;set_command_time(gpio_on + gpio_duration, gpio_mb);<br>=C2=A0 =
this-&gt;set_gpio_attr(gpio_pulse_bank, &quot;OUT&quot;, 0, gpio_mask, gpio=
_mb);<br>=C2=A0 this-&gt;clear_command_time(gpio_mb);<br></font></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Th=
u, Sep 21, 2023 at 4:01=E2=80=AFPM David Raeman &lt;<a href=3D"mailto:david=
@synopticengineering.com">david@synopticengineering.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg922=
616549438011546">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_922616549438011546WordSection1">
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I&#39;m looking for advice on toggling an E320 GPIO =
pin at a specific uhd::time_spec_t. My use case is a UHD application that s=
tarts a long transmit burst at a known timespec, then later toggles a pin a=
t a time corresponding to the Nth sample
 being transmitted. The pin controls an external RF switch. I recognize the=
re will be some amount of group delay through the RFIC and internal analog =
components =E2=80=93 my goal is just to be roughly synchronous with samples=
 clocked out of the radio block.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">As a first pass, I have a custom RFNoC block that co=
unts valid samples from the start of burst and toggles the pin after the Nt=
h sample (where N is provided in a user register). This is a poor solution =
because there is deep buffering downstream
 in the radio block, so my block sees =E2=80=9Csample N&quot; and toggles t=
he pin several thousand sample-periods before it&#39;s transmitted. It isn=
=E2=80=99t a fixed lag that can be added as a constant =E2=80=93 consider t=
hat if N is small and =E2=80=9Csample N=E2=80=9D is observed when the FIFO =
is initially
 being filled, the toggle would occur while the corresponding sample is sit=
ting in the back-pressured FIFO waiting for the transmit start time.<u></u>=
<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Since this is synchronous manipulation of external s=
tate, and not just samples, I don=E2=80=99t believe it will be sufficient t=
o use CHDR header timestamps =E2=80=93 the block would also need to know cu=
rrent radio_time, and I=E2=80=99m not sure how to get that
 in an RFNoC block..<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Just wondering if I might be overlooking some simple=
r approach, or any advice on how to plumb this into a custom RFNoC block.<u=
></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thank you,<u></u><u></u></p>
<p class=3D"MsoNormal">-David<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div></div>

--000000000000f9535e0605e44da1--

--===============8606701420601254271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8606701420601254271==--
