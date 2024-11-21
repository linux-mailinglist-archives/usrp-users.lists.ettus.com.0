Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EB19D4831
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2024 08:25:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BD707385490
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2024 02:25:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732173902; bh=iytZJNEjf7nVqpTH7irjbJgp8pL91E8ZkGEfb0zi32Y=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=OpO84SB0UwvgXk21Kx5HH6PCHkv+qocHzJDuZ0bxz0FKfdmLalrfZi6DOj6r4Oiya
	 W2oPIp5OM/pYYTehJVG3AvQpUcPFwUNk8STqKcd8JvV+/Rel+q/IuFgUlUfkya1hyY
	 dy+0bWP6OswQ3pyIJMHKETCqXvAovR+8Z60U12G9PKWyj6+jdQd6vOnuOv4ef74yBD
	 EJU0cA15a+zLuEaUf8W/A1vmzKyGTl2luVakDlK+Ki/UZrS2S64bSFmAH9rj8m64GJ
	 xWkCuX1IaEdvtdGEk7vPyOlLQ99ztKh6q6biv/jH0mVGMPRARa3TXhm8jKNX9ZBLuV
	 yeF36x5O5f7Sw==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 4155C385DE9
	for <usrp-users@lists.ettus.com>; Thu, 21 Nov 2024 02:24:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZAtYWcbW";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a9a6b4ca29bso88992066b.3
        for <usrp-users@lists.ettus.com>; Wed, 20 Nov 2024 23:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732173869; x=1732778669; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=R98FSk8e7hosz4LfPMTuDQCrV/5P/3gxBpLeFJIpsvc=;
        b=ZAtYWcbWhZ0FLHVJGJxxYJaAlvNXkbxp0VOfm72w9n0LQOYqOtBGt5FqNLbgeT9hs7
         x5/c4N3+52h5M0H6CyqX1Jyqr07T7TvSRQMrYNbFssND1x2ltCdEbcbG7QVFAMjXPe5A
         xbYlnI6It03P3rkxtZFptoZ73Dc78To2BP+FWfFgU7XrUEKvfgXvr5ujd7RDpU8PVE6a
         qbiUIlU861JeD3PNGEZAMbkI6bjVAmsRLwHrpexkxvgMGzUSygEZkM5nWe2HJ/TG5all
         Vwv8S6lnh0qOWsl42hksszUnV8AUdzYvNyQAc34BSt3llPiS8aMsHTbnetoD8sxBqU3s
         iBpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732173869; x=1732778669;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R98FSk8e7hosz4LfPMTuDQCrV/5P/3gxBpLeFJIpsvc=;
        b=W3zvJMEOGI4Ratx+MueNbG/QSBrgEzcEuHAq/OmLAMW71E8/tUiGZab/TkaEl5OkTl
         bfGImVK/p/gNUr/8Rc673tNucJW1kHGzmkq95f3Lll2wjfz+wU/hRkVyft6e35vyrqTP
         Pmdnme9YM8hE6JHeXjvkC8iorJb/ZCMJ2CetCtvpgtEuiWNT1UFv1v931bFPHKsbNOcR
         jMltEn7f9frfdfb+P2o8t3m6arRYSSfx014tCQQnIzE0rsVYqfFfnuehH4+JalWy+Skg
         D2YfYzpVvU24ktk4Xf339Ljv+51sQbWakoKj31uqN0x2TICNBsNki05RGtaohEWcXoSp
         lvvw==
X-Gm-Message-State: AOJu0YzOgRyXC3MZFlnXDLyq8rhKloKkUph0/Ko4f3VWnoOB/sIPWx9W
	8DVD1ffnh9KZ4cHUuvtp3n57y5cqNpkdpDsJXQYNiWeF6706I7a3fCOd2elG4wThoT2MB2zut1/
	2I63t/JlJtqCs2fVjo4Xs1Dsc2YY=
X-Google-Smtp-Source: AGHT+IGeVxnftHWO5Oc/LvqA8fjfFfDZDhxMgVuPbgVPXhk8vJpX/6YmnpytqZYn/btbXtqVuaa27N8RDx5RcP169ks=
X-Received: by 2002:a17:907:1b06:b0:a99:e82a:87ee with SMTP id
 a640c23a62f3a-aa4dd7526c0mr597840066b.57.1732173868633; Wed, 20 Nov 2024
 23:24:28 -0800 (PST)
MIME-Version: 1.0
References: <in6Vs0ePFYK6PpSML7FpRjOlYUak7skNKCPMx2ieI@lists.ettus.com>
In-Reply-To: <in6Vs0ePFYK6PpSML7FpRjOlYUak7skNKCPMx2ieI@lists.ettus.com>
From: hui cj <cjh416593819@gmail.com>
Date: Thu, 21 Nov 2024 15:24:14 +0800
Message-ID: <CAEL-RA33wKKfLWP9NspssMucp8+yXMjg0fSiC6N8iuS7cF6FOQ@mail.gmail.com>
To: william.haftel@bluehalo.com
Message-ID-Hash: OGFLMP464LQHDSAIC7VA2UTW7P4RSM6Y
X-Message-ID-Hash: OGFLMP464LQHDSAIC7VA2UTW7P4RSM6Y
X-MailFrom: cjh416593819@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can only control 1 pin of x310 GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OGFLMP464LQHDSAIC7VA2UTW7P4RSM6Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8354219899324763727=="

--===============8354219899324763727==
Content-Type: multipart/alternative; boundary="00000000000021170a06276728b3"

--00000000000021170a06276728b3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In your last example, it should be
usrp->set_gpio_attr("FP0", "OUT",  0xFFF  , 0xFFF);
The third parameter should also be a mask.


Will Haftel via USRP-users <usrp-users@lists.ettus.com> =E4=BA=8E2024=E5=B9=
=B411=E6=9C=8821=E6=97=A5=E5=91=A8=E5=9B=9B
05:38=E5=86=99=E9=81=93=EF=BC=9A

> This doesn=E2=80=99t quite work for me - in the last example I gave, I tr=
y using 1
> mask to set all of the bits high but still only pin 0 is set. I am able t=
o
> control all of the pins using ATR, but am not sure why the manual api isn=
=E2=80=99t
> giving me the same results.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000021170a06276728b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In your last example, it should be<div>usrp-&gt;set_gpio_a=
ttr(&quot;FP0&quot;, &quot;OUT&quot;,=C2=A0

0xFFF=C2=A0 , 0xFFF);</div><div>The third parameter should also be a mask.<=
/div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">Will Haftel via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; =E4=BA=8E2024=E5=
=B9=B411=E6=9C=8821=E6=97=A5=E5=91=A8=E5=9B=9B 05:38=E5=86=99=E9=81=93=EF=
=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>This d=
oesn=E2=80=99t quite work for me - in the last example I gave, I try using =
1 mask to set all of the bits high but still only pin 0 is set.  I am able =
to control all of the pins using ATR, but am not sure why the manual api is=
n=E2=80=99t giving me the same results.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000021170a06276728b3--

--===============8354219899324763727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8354219899324763727==--
