Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 216BF9F7A69
	for <lists+usrp-users@lfdr.de>; Thu, 19 Dec 2024 12:30:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C3B73858ED
	for <lists+usrp-users@lfdr.de>; Thu, 19 Dec 2024 06:30:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734607832; bh=r/hjuCEU+fgmL1ys+WqTjCsUIHGqftJUFYY/JD9QyFo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=N4qAktghwLi1HizNIs0nsPAJwoTkgkDd/HesH1bEWC4BXbNhsaKcEU41fxRxZvGW0
	 cF9gTyzlxyj9f8+AxMalftlrTwHeq7nvI4Mdamt9UY/jKrrspxZHTwkhK9QQsqQTNP
	 Y5n722a8Lp29LjEfHKqxN+1xhxMC9D+aVYQwt9McDsOMFFK8I5r5SUc22cbVyE46Hp
	 kmV5AD4vEhH0RtiC+q5O3VH4YulZCfT12fA55b+asV/vcGN7Y2LnWVA0cGTogSMlOd
	 ec0JvArt6YBr1/ljiwQHVw0loCyWTRinYi0xdgdvvE1V5UGA3RMCJkyANg+StcyKnV
	 5t9JzEBdndg7A==
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 11E9E38568F
	for <usrp-users@lists.ettus.com>; Thu, 19 Dec 2024 06:29:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="wpZAPlaR";
	dkim-atps=neutral
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e3983426f80so529838276.1
        for <usrp-users@lists.ettus.com>; Thu, 19 Dec 2024 03:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1734607776; x=1735212576; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=R7Y6h7865SZ3nqDCx7GOvb6dMNPVt7s30Al73WWuixY=;
        b=wpZAPlaRnf5irH892yYMpffAZ7RzJzIoKf8QjiVnXhjMNEfd9CaA+vVLIZCoXIvenJ
         sz7BuFdsIrt8wYeWZqgIwMbXTix3jigcK4PpywroQ1GGcjOJ0a1bJsDVK97Hi5bmDE6I
         mgU/SooZ8FTojcRRLe1QFRI/ItuhpTtycZJlQ0d9Lr245tItC1Z2+B4Kq+WApYzyti24
         ziqT3UqBJkfhNFc8RqHcwXeHsT9ErVzCja57QGIAmkLG8PAnDwO6OdLmeEHzwMZRJQ/b
         u4+/3n/Ge5KStlv56Qr+LxvEck68kA6+EJV3Y1zhF1OTySf14joVYXAo0dBJ4g0WCwDA
         Qozw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734607776; x=1735212576;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R7Y6h7865SZ3nqDCx7GOvb6dMNPVt7s30Al73WWuixY=;
        b=FqWiYOUCfV87+6PTIoAFy82gg0Vk5LF3y72Zwd6StPoZ3WkZgzOZT31y1Hc9agw7YA
         gCT/m9NN92R4CIy60CQbdoIYsYYody5HoXQDoq5PQUgyxriH4/BAcwb6pfgmJuI6Tznw
         36cG1ldixEFiesFeHA+y1thUKLShIpVM1yr7pMb3rObtwX7zwG2td/GKXHGBPGu7E0+6
         5+L2u/0Vy9evjytVnyLbP6OqUXnYP8lINDro3cnliRAylRsxxZyHzJC9bnZ5szXIQP7v
         croBbjUAFH8x7d+49+e8z8oJja3v2yDFqCoTB8X/U2kIofcF4pgM2TZjHsb8iE0UczzU
         ZX0w==
X-Gm-Message-State: AOJu0Yy18cjj/o7l7Br4HPzbBfGRD8u2vyvYMuCcmn0XO83yavoPqvmA
	+fXewMXLWp7MlW4WTYCm4aH04VpTXCW9OyI2F2ajSHWPYz6Be7VBbs2ug25VR3P9emp6otKSzAq
	BW1+Ihp8LAEsYFh1p1v6khyhg7eajq2Db/kD/WDY1elxhw6s9WWI=
X-Gm-Gg: ASbGncvtAo5YwUIUcd2nnXfvZJFLrhbBK6932ZXvg1b2OtPWidtHh97IbbTV0XZcsCP
	G79jCANMGjYbG53Xtb7+9cTP3M3kTbMImcWU1
X-Google-Smtp-Source: AGHT+IFYtiJst+XWJ4jofjUrX2JhuG/WijRJiegII/54CjJ3cEMFBbD3isoKzW6RnfkZssmxPGSh/FflVgSuGZpvDHw=
X-Received: by 2002:a05:6902:218b:b0:e28:f132:3fae with SMTP id
 3f1490d57ef6-e536225fa97mr5619194276.48.1734607776409; Thu, 19 Dec 2024
 03:29:36 -0800 (PST)
MIME-Version: 1.0
References: <CAAc7u9qHwc1cQDc2ksrqCw0xJta9=cBMmxGHVqCCSxMAoGWFGA@mail.gmail.com>
In-Reply-To: <CAAc7u9qHwc1cQDc2ksrqCw0xJta9=cBMmxGHVqCCSxMAoGWFGA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 19 Dec 2024 12:29:23 +0100
Message-ID: <CAFOi1A7Qz3VQfCSTn8axsM9X=KwUmpfJKoCaOhPefv3Cofh=+w@mail.gmail.com>
To: Tim Vancauwenbergh <tim.vancauwenbergh13@gmail.com>
Message-ID-Hash: GQU7ONWKF2FETY5HSLHUQR7KWRVD3PVJ
X-Message-ID-Hash: GQU7ONWKF2FETY5HSLHUQR7KWRVD3PVJ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Python API: X310 ATR TX not working
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GQU7ONWKF2FETY5HSLHUQR7KWRVD3PVJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2442125066671312965=="

--===============2442125066671312965==
Content-Type: multipart/alternative; boundary="0000000000005680f906299dd8d5"

--0000000000005680f906299dd8d5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tim,

thanks for submitting the bug report as well as sending this email. Makes
it easier for us to track things.

Out of curiosity, have you tried setting the last line (for the ATR_XX
attribute) to HIGH as well? If you're only doing TX, then it shouldn't
matter but it's just another data point. Also, have you tried using pins 0
and 1 for different ATR states (again, shouldn't matter, I'm just trying to
get a bigger picture). Your code is correct if you want pins 0 and 1 be
high for whenever there is RX or TX going on (but not when both are on at
the same time), although the call to the DDR attribute is redundant (ATR
pins are always outputs); but it's not hurting either.

--M

On Fri, Dec 13, 2024 at 3:39=E2=80=AFPM Tim Vancauwenbergh <
tim.vancauwenbergh13@gmail.com> wrote:

> Hi all,
>
> In a project using an X310 and the Python api the requirement is to toggl=
e
> GPIO pins 0 and 1 whenever the device is transmitting or receiving.
> The code is as follows:
> PIN_0_MASK =3D (1 << 0)
> PIN_1_MASK =3D (1 << 1)
> PIN_MASK =3D PIN_0_MASK | PIN_1_MASK
>
> usrp.set_gpio_attr("FP0A", "CTRL", PIN_MASK, 0xFFF)
> usrp.set_gpio_attr("FP0A", "DDR", PIN_MASK, 0xFFF)
> usrp.set_gpio_attr("FP0A", "ATR_0X", 0x000, 0xFFF)
> usrp.set_gpio_attr("FP0A", "ATR_RX", PIN_MASK, 0xFFF)
> usrp.set_gpio_attr("FP0A", "ATR_TX", PIN_MASK, 0xFFF)
> usrp.set_gpio_attr("FP0A", "ATR_XX", 0x000, 0xFFF)
> This works for ATR_RX, but TX does not trigger the ATR. While the LED doe=
s
> light up, the GPIO pin does nothing.
> Both TX and RX are bursted. Is this a bug?
>
> Thanks!
>
> Tim
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005680f906299dd8d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Tim,</div><div><br></div><div>thanks for submittin=
g the bug report as well as sending this email. Makes it easier for us to t=
rack things.</div><div><br></div><div>Out of curiosity, have you tried sett=
ing the last line (for the ATR_XX attribute) to HIGH as well? If you&#39;re=
 only doing TX, then it shouldn&#39;t matter but it&#39;s just another data=
 point. Also, have you tried using pins 0 and 1 for different ATR states (a=
gain, shouldn&#39;t matter, I&#39;m just trying to get a bigger picture). Y=
our code is correct if you want pins 0 and 1 be high for whenever there is =
RX or TX going on (but not when both are on at the same time), although the=
 call to the DDR attribute is redundant (ATR pins are always outputs); but =
it&#39;s not hurting either.</div><div><br></div><div>--M<br></div></div><b=
r><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Dec 13, 2024 at 3:39=E2=80=AFPM Tim Vancauwenbergh =
&lt;<a href=3D"mailto:tim.vancauwenbergh13@gmail.com">tim.vancauwenbergh13@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>In a proj=
ect using an X310 and the Python api the requirement is to toggle GPIO pins=
 0 and 1 whenever the device is transmitting or receiving.</div><div>The co=
de is as follows:</div><div><div style=3D"color:rgb(204,204,204);background=
-color:rgb(31,31,31);font-family:&quot;Droid Sans Mono&quot;,&quot;monospac=
e&quot;,monospace;font-weight:normal;font-size:14px;line-height:19px;white-=
space:pre-wrap"><div><span style=3D"color:rgb(204,204,204)">    </span><spa=
n style=3D"color:rgb(79,193,255)">PIN_0_MASK</span><span style=3D"color:rgb=
(204,204,204)"> </span><span style=3D"color:rgb(212,212,212)">=3D</span><sp=
an style=3D"color:rgb(204,204,204)"> (</span><span style=3D"color:rgb(181,2=
06,168)">1</span><span style=3D"color:rgb(204,204,204)"> </span><span style=
=3D"color:rgb(212,212,212)">&lt;&lt;</span><span style=3D"color:rgb(204,204=
,204)"> </span><span style=3D"color:rgb(181,206,168)">0</span><span style=
=3D"color:rgb(204,204,204)">)</span></div><div><span style=3D"color:rgb(204=
,204,204)">    </span><span style=3D"color:rgb(79,193,255)">PIN_1_MASK</spa=
n><span style=3D"color:rgb(204,204,204)"> </span><span style=3D"color:rgb(2=
12,212,212)">=3D</span><span style=3D"color:rgb(204,204,204)"> (</span><spa=
n style=3D"color:rgb(181,206,168)">1</span><span style=3D"color:rgb(204,204=
,204)"> </span><span style=3D"color:rgb(212,212,212)">&lt;&lt;</span><span =
style=3D"color:rgb(204,204,204)"> </span><span style=3D"color:rgb(181,206,1=
68)">1</span><span style=3D"color:rgb(204,204,204)">)</span></div><div><spa=
n style=3D"color:rgb(204,204,204)">    </span><span style=3D"color:rgb(79,1=
93,255)">PIN_MASK</span><span style=3D"color:rgb(204,204,204)"> </span><spa=
n style=3D"color:rgb(212,212,212)">=3D</span><span style=3D"color:rgb(204,2=
04,204)"> </span><span style=3D"color:rgb(79,193,255)">PIN_0_MASK</span><sp=
an style=3D"color:rgb(204,204,204)"> </span><span style=3D"color:rgb(212,21=
2,212)">|</span><span style=3D"color:rgb(204,204,204)"> </span><span style=
=3D"color:rgb(79,193,255)">PIN_1_MASK</span></div><br><div><span style=3D"c=
olor:rgb(204,204,204)">    </span><span style=3D"color:rgb(156,220,254)">us=
rp</span><span style=3D"color:rgb(204,204,204)">.set_gpio_attr(</span><span=
 style=3D"color:rgb(206,145,120)">&quot;FP0A&quot;</span><span style=3D"col=
or:rgb(204,204,204)">, </span><span style=3D"color:rgb(206,145,120)">&quot;=
CTRL&quot;</span><span style=3D"color:rgb(204,204,204)">,   </span><span st=
yle=3D"color:rgb(79,193,255)">PIN_MASK</span><span style=3D"color:rgb(204,2=
04,204)">, </span><span style=3D"color:rgb(86,156,214)">0x</span><span styl=
e=3D"color:rgb(181,206,168)">FFF</span><span style=3D"color:rgb(204,204,204=
)">)</span></div><div><span style=3D"color:rgb(204,204,204)">    </span><sp=
an style=3D"color:rgb(156,220,254)">usrp</span><span style=3D"color:rgb(204=
,204,204)">.set_gpio_attr(</span><span style=3D"color:rgb(206,145,120)">&qu=
ot;FP0A&quot;</span><span style=3D"color:rgb(204,204,204)">, </span><span s=
tyle=3D"color:rgb(206,145,120)">&quot;DDR&quot;</span><span style=3D"color:=
rgb(204,204,204)">,    </span><span style=3D"color:rgb(79,193,255)">PIN_MAS=
K</span><span style=3D"color:rgb(204,204,204)">, </span><span style=3D"colo=
r:rgb(86,156,214)">0x</span><span style=3D"color:rgb(181,206,168)">FFF</spa=
n><span style=3D"color:rgb(204,204,204)">)</span></div><div><span style=3D"=
color:rgb(204,204,204)">    </span><span style=3D"color:rgb(156,220,254)">u=
srp</span><span style=3D"color:rgb(204,204,204)">.set_gpio_attr(</span><spa=
n style=3D"color:rgb(206,145,120)">&quot;FP0A&quot;</span><span style=3D"co=
lor:rgb(204,204,204)">, </span><span style=3D"color:rgb(206,145,120)">&quot=
;ATR_0X&quot;</span><span style=3D"color:rgb(204,204,204)">, </span><span s=
tyle=3D"color:rgb(86,156,214)">0x</span><span style=3D"color:rgb(181,206,16=
8)">000</span><span style=3D"color:rgb(204,204,204)">, </span><span style=
=3D"color:rgb(86,156,214)">0x</span><span style=3D"color:rgb(181,206,168)">=
FFF</span><span style=3D"color:rgb(204,204,204)">)</span></div><div><span s=
tyle=3D"color:rgb(204,204,204)">    </span><span style=3D"color:rgb(156,220=
,254)">usrp</span><span style=3D"color:rgb(204,204,204)">.set_gpio_attr(</s=
pan><span style=3D"color:rgb(206,145,120)">&quot;FP0A&quot;</span><span sty=
le=3D"color:rgb(204,204,204)">, </span><span style=3D"color:rgb(206,145,120=
)">&quot;ATR_RX&quot;</span><span style=3D"color:rgb(204,204,204)">, </span=
><span style=3D"color:rgb(79,193,255)">PIN_MASK</span><span style=3D"color:=
rgb(204,204,204)">, </span><span style=3D"color:rgb(86,156,214)">0x</span><=
span style=3D"color:rgb(181,206,168)">FFF</span><span style=3D"color:rgb(20=
4,204,204)">)</span></div><div><span style=3D"color:rgb(204,204,204)">    <=
/span><span style=3D"color:rgb(156,220,254)">usrp</span><span style=3D"colo=
r:rgb(204,204,204)">.set_gpio_attr(</span><span style=3D"color:rgb(206,145,=
120)">&quot;FP0A&quot;</span><span style=3D"color:rgb(204,204,204)">, </spa=
n><span style=3D"color:rgb(206,145,120)">&quot;ATR_TX&quot;</span><span sty=
le=3D"color:rgb(204,204,204)">, </span><span style=3D"color:rgb(79,193,255)=
">PIN_MASK</span><span style=3D"color:rgb(204,204,204)">, </span><span styl=
e=3D"color:rgb(86,156,214)">0x</span><span style=3D"color:rgb(181,206,168)"=
>FFF</span><span style=3D"color:rgb(204,204,204)">)</span></div><div><span =
style=3D"color:rgb(204,204,204)">    </span><span style=3D"color:rgb(156,22=
0,254)">usrp</span><span style=3D"color:rgb(204,204,204)">.set_gpio_attr(</=
span><span style=3D"color:rgb(206,145,120)">&quot;FP0A&quot;</span><span st=
yle=3D"color:rgb(204,204,204)">, </span><span style=3D"color:rgb(206,145,12=
0)">&quot;ATR_XX&quot;</span><span style=3D"color:rgb(204,204,204)">, </spa=
n><span style=3D"color:rgb(86,156,214)">0x</span><span style=3D"color:rgb(1=
81,206,168)">000</span><span style=3D"color:rgb(204,204,204)">, </span><spa=
n style=3D"color:rgb(86,156,214)">0x</span><span style=3D"color:rgb(181,206=
,168)">FFF</span><span style=3D"color:rgb(204,204,204)">)</span></div></div=
></div><div>This works for ATR_RX, but TX does not trigger the ATR. While t=
he LED does light up, the GPIO pin does nothing.</div><div>Both TX and RX a=
re bursted. Is this a bug?</div><div><br></div><div>Thanks!</div><div><br><=
/div><div>Tim<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005680f906299dd8d5--

--===============2442125066671312965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2442125066671312965==--
