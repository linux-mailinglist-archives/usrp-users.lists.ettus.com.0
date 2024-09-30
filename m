Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 802FE98A21E
	for <lists+usrp-users@lfdr.de>; Mon, 30 Sep 2024 14:22:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C26E3857F4
	for <lists+usrp-users@lfdr.de>; Mon, 30 Sep 2024 08:22:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727698975; bh=7/BI7R7gnFkAQE0L+5bWOe03cvcyi1Ctcyw8uqQfvQk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WSxHWDgbVjGUYdO4/D4TgJTRZFmcWj0F29C+epKEZvyZSYwe6y1TexM/OceWNCjoG
	 NTnys/znPeiYcsKVhmtfkyKCwDCNWfvRr/cJf6kfLyKH8gYYa9mF+QG8mXNkekUz6h
	 s0rpx/UN7MnrxQEE+2pWUaALo4z60y6jeXRE1/0XJ9Ehb1GeXnLvJn1BiqN20D2fSs
	 O0NAAMJw+G4jhjzSSmGlo1Yfh/+jV2CDlgE/pF7JxN/4cms/fY08KVlYgIucP5VOlz
	 q/oDBadvYwUaBc8luX4/4XoIGy/mjNcpamunOc3g79iayqdRrt9RgabTflUgitK+s8
	 hAQsKflz3XKMg==
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by mm2.emwd.com (Postfix) with ESMTPS id E43E1385239
	for <usrp-users@lists.ettus.com>; Mon, 30 Sep 2024 08:21:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="2dFExvjq";
	dkim-atps=neutral
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fabfc06c26so17099561fa.2
        for <usrp-users@lists.ettus.com>; Mon, 30 Sep 2024 05:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1727698916; x=1728303716; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xZTaR4C2QVEOLLxz9Lma0IPUgxNskMk2jwp4DFMtFiY=;
        b=2dFExvjqZFmBVHDRtNfSOQafYA+zV1/3g/iG0+XA+K92a4fyasdkMMIViBve5WNP2c
         dpbd/Ut5dR4cTeebKTjpUAFLM0yysFC2gJxUIYeeKrVSbQRLU98GgpyRC7kApO8YnDki
         Ab2maM1Wio0uXqrcG4N9urDK6wyEbIsP8vhMrpiw5ePK9kgCX8yv+TzCXIhqjUOInmGr
         L8wK8mn/WNkd5HnFjfr22yQrmbDUEWCVOqwZDRZV4XADmkTab8JBlBNd/PRFuyeRquSe
         vrk8SDvp6gAjDXwVpoHfyKxkV5OS8M4pJLK1hs3Ut0X1+F9zrnxSC5+TJSjq9OJcCtjQ
         JGwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727698916; x=1728303716;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xZTaR4C2QVEOLLxz9Lma0IPUgxNskMk2jwp4DFMtFiY=;
        b=KMvLuTQAcnlMZI1KEjpalXeKuEhli/dQKKkry1cDTsm93KAGJ3l/suHjDILUjtHm06
         DherMau51QKL8t12UcUrJ/0ECMUMwL6StxIIbbGsLPVESoTZ0Y745EtyJ1VtNCIz+8KC
         VRovYWXPGENR3SVxcoorgrP6jK7XtW7Ob/l4PqLi4/eQ+xSKFCSKzz5d2rG106cO51ZC
         yZ1yTsyB7kE7M1lMrX/2tWWD7rWwWaJgKSu5/btF1bAMC2P/iyl3xM2t/Q9K7Ps0XlCt
         Mek5SR/zLy25PpKMq4pzdarMTEVM8TGaspfroynsMI6x/SNAQmRFLXnRXN3KVEyfR8CR
         ChUw==
X-Gm-Message-State: AOJu0YxUm+SNfySxqDTxO1aW1sFqDd1iwweTlSvTJ3lXChrxqwOfWl/d
	msyoHBVM/YhyHLWaQMUUgOhS+E/nPREwq6+YEeJM+7ZDwux9fMqxU61ppHfxnzCx8he25O8jHgK
	SVIiz44KaYeIx1+NA0QIFOEgH6tn2mLCGL5IE++IgV/3daqrGAbHCMA==
X-Google-Smtp-Source: AGHT+IE0xsI15eD7pefA8ErD0SCoBAyFxJfg6I+gHvRbb1WTdJjEOGONIpEAdyj3Wbm+OZYkyz0a0dOvemT8jrdwZls=
X-Received: by 2002:a05:651c:211a:b0:2fa:cf5b:1e8e with SMTP id
 38308e7fff4ca-2facf5b22a7mr16382881fa.2.1727698915331; Mon, 30 Sep 2024
 05:21:55 -0700 (PDT)
MIME-Version: 1.0
References: <3w6KpgS0rv65EwzIaajHP3BNr8x24dxhmY8rxfg748@lists.ettus.com>
In-Reply-To: <3w6KpgS0rv65EwzIaajHP3BNr8x24dxhmY8rxfg748@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 30 Sep 2024 14:21:44 +0200
Message-ID: <CAFOi1A7XR4nzaM=Dy56b9_3L7YPZXoFkXkfTBaPo0=w4ABBaPA@mail.gmail.com>
To: william.haftel@bluehalo.com
Message-ID-Hash: XJBLAY2GN2OKSNN57ELUD2P7O45Z2JCP
X-Message-ID-Hash: XJBLAY2GN2OKSNN57ELUD2P7O45Z2JCP
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble controlling GPIO on x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XJBLAY2GN2OKSNN57ELUD2P7O45Z2JCP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8783077329491676395=="

--===============8783077329491676395==
Content-Type: multipart/alternative; boundary="00000000000020ae540623554090"

--00000000000020ae540623554090
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This looks fine. Two questions:

- Have you double-checked the pin mapping? (
https://uhd.readthedocs.io/en/latest/page_usrp_x3x0.html#x3x0_hw_gpio)
- Are you querying this during operation of your app, or do you let the app
terminate and then measure voltages?

--M

On Fri, Sep 27, 2024 at 8:59=E2=80=AFPM Will Haftel via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
>
> I am attempting to manually control certain GPIO pins on the x310 as
> outputs that will control external antenna sources. In the code sample
> below, I am intending to set pin 2 to low and pins 3/4 to high, but am no=
t
> having any luck. Would it be possible to point out if there is something
> wrong in this code?
>
>
> usrp->set_gpio_attr("FP0", "CTRL", 0x000, 0xFFF);
>
> usrp->set_gpio_attr("FP0", "DDR", 0xFFF, 0xFFF);
>
> usrp->set_gpio_attr("FP0", "OUT", 0, (1<<2));
>
> usrp->set_gpio_attr("FP0", "OUT", 1, (1<<3));
>
> usrp->set_gpio_attr("FP0", "OUT", 1, (1<<4));
>
>
> Thank you!
>
> Will
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000020ae540623554090
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This looks fine. Two questions:</div><div><br></div><=
div>- Have you double-checked the pin mapping? (<a href=3D"https://uhd.read=
thedocs.io/en/latest/page_usrp_x3x0.html#x3x0_hw_gpio">https://uhd.readthed=
ocs.io/en/latest/page_usrp_x3x0.html#x3x0_hw_gpio</a>)</div><div>- Are you =
querying this during operation of your app, or do you let the app terminate=
 and then measure voltages?</div><div><br></div><div>--M<br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, S=
ep 27, 2024 at 8:59=E2=80=AFPM Will Haftel via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi,</p><p><br=
></p><p>I am attempting to manually control certain GPIO pins on the x310 a=
s outputs that will control external antenna sources.  In the code sample b=
elow, I am intending to set pin 2 to low and pins 3/4 to high, but am not h=
aving any luck.  Would it be possible to point out if there is something wr=
ong in this code?</p><p><br></p><p>usrp-&gt;set_gpio_attr(&quot;FP0&quot;, =
&quot;CTRL&quot;, 0x000, 0xFFF);</p><p>usrp-&gt;set_gpio_attr(&quot;FP0&quo=
t;, &quot;DDR&quot;, 0xFFF, 0xFFF);</p><p>usrp-&gt;set_gpio_attr(&quot;FP0&=
quot;, &quot;OUT&quot;, 0, (1&lt;&lt;2));</p><p>usrp-&gt;set_gpio_attr(&quo=
t;FP0&quot;, &quot;OUT&quot;, 1, (1&lt;&lt;3));</p><p>usrp-&gt;set_gpio_att=
r(&quot;FP0&quot;, &quot;OUT&quot;, 1, (1&lt;&lt;4));</p><p><br></p><p>Than=
k you!</p><p>Will</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000020ae540623554090--

--===============8783077329491676395==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8783077329491676395==--
