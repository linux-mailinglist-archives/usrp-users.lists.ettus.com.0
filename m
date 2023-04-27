Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EBA6F0BC4
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 20:14:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DE37B38486A
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 14:14:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682619270; bh=to9nCi8hriZm+zuBWB8S4tiGrJKUi1TfU9q//9P8jKU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Hh7cScM87f7QjSt6eHv3U7/+8sp/GIoGPBcdndoRfezCj4FUFC+nxHZNXA6Bsq/6c
	 HJvNn8/OwQ9kaMiGJcarhqua/QiO2ZqBBPa8IMVugpx+VRfzz9ApgegLksuW7DUCAf
	 6+kK7Ubbo91SCbsatzdADB+pRNxPanv1EIBGLyVk6RNYXYsph3KG9quKp/nmBYinBy
	 NPnuqOR86FPdBUycEkkO7mHk0QMJf4bSVfcjwaL+u2ITdcnp6m9Skih/X25zV8wjr9
	 cGZ+oCSB/0awJfUlJgqMNNvFpJizIxqUljf4cOLZiasuXoGuovNwhO0e8uhpMTqXb3
	 7nGSps0VoR7ng==
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	by mm2.emwd.com (Postfix) with ESMTPS id BA47E380CB9
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 14:14:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="3eAl8x8+";
	dkim-atps=neutral
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-51b0f9d7d70so8731840a12.1
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 11:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1682619249; x=1685211249;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=n+5eo9veuH4RTCZGVr8bPwFs41GBenDFW1v4YucDyBU=;
        b=3eAl8x8+B+pI68taNsC597ML7snDp2ZJ5/j9FUQ9PzAGblUKkkSoiu9ppcnF9n0bRX
         Pzq+JWQ7IEsOCwnSI4VXw8gjUgnzyKeo8rN5WqOE/lq9KoY2nUGfcN2HNOM2b1UeAumW
         6/FP69uekh6ozrk+75Ui+d8XUUSFuoy9j5CWB9Pr8kykhDs5CL3vBHxWY38uH5n+3d62
         Z9Utmy9zTJd4NyeINkehjJOd5Ee3Rp6ZA5/00qaWHYx9AH9mO/sWTDp5ntxneIT3FL0x
         WOhGGfgQIBc7b0NVg/nSpDaiqaaZx8qoTpRqS6ehrK2ubE9QSORHA0qqdZ1fUM2mqwvE
         ROtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682619249; x=1685211249;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n+5eo9veuH4RTCZGVr8bPwFs41GBenDFW1v4YucDyBU=;
        b=lEbqhc05P3y61xSy1p2WR859nKHp1K0DDWS69y73P/kPx7zb2E3XAp1XG/0uH7nTBh
         AKN1u3Nv8Sw7ehx2NXBnp2cld6oQViWRmGB/+pGNY8Xsepsi1sxIqMUnffRt52BE7lVN
         wuItzRWpZcZEiBTzvSNHoadB/W9KxvccZ+Pl24XR0tndyZ7+UuYMeeIzFS0uOy7U9GLO
         /L/zp4l5BmS7p8J6YehCzdsas9o7981tafnvzJwQfUT/xIh/QV2icYiL0PrBKRi/g85K
         3nJ6jFN23oCSjYCziJvgZ/2i+eBf8fbp7HJwEqgolVp56YQPEt20lzgL842r6L8MLKuC
         wp4g==
X-Gm-Message-State: AC+VfDzkrxHBn8ds6GHBuRnWnfzlOSGMO7lh5yIbPyHfovB7gnbnPXsb
	MILo5CNkLgJlnaEQKW4sLwoLx5dltk4ipj8fGYPHZ+4Cjm5jjI9pu/Ngtw==
X-Google-Smtp-Source: ACHHUZ5DtY6egmvOXvGLl0fmxeP8UB40oJu0rz9bNESTdavJmrvGaj3nDezmeI+DBRynesl1Gg70iP5NABveimqmdy4=
X-Received: by 2002:a17:90a:d483:b0:247:9faa:92 with SMTP id
 s3-20020a17090ad48300b002479faa0092mr2609964pju.42.1682619248524; Thu, 27 Apr
 2023 11:14:08 -0700 (PDT)
MIME-Version: 1.0
References: <HqaJ3sSYkYeuuV2NWQjvnHzVEQyjtDVpmMkEHeQ@lists.ettus.com>
In-Reply-To: <HqaJ3sSYkYeuuV2NWQjvnHzVEQyjtDVpmMkEHeQ@lists.ettus.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Thu, 27 Apr 2023 14:13:57 -0400
Message-ID: <CAGNhwTPnT70USqmU2Z8V3EqAHVk5-jTCSSS2X4KhW4sKym2rcg@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: JOEQ5OU525QOYBXL75V4PJSQBP5TAYXK
X-Message-ID-Hash: JOEQ5OU525QOYBXL75V4PJSQBP5TAYXK
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JOEQ5OU525QOYBXL75V4PJSQBP5TAYXK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0975653134343520326=="

--===============0975653134343520326==
Content-Type: multipart/alternative; boundary="00000000000099d3ba05fa555259"

--00000000000099d3ba05fa555259
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I've used this for both USRP and general networking: Generic 10GBASE-T SFP+
Copper RJ45 Transceiver Module - FS.com
<https://www.fs.com/products/74680.html?attribute=3D26&id=3D412> . The USRP=
 is
brand agnostic, so I generally just get "generic" branding. If you need
more of these for specific brand devices, then I'd say to get for those
brands. There are lots of manufacturers of these adapters. I and others
have found FS to be high quality at reasonable prices. I hope this is
useful! - MLD

On Thu, Apr 27, 2023 at 1:58=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> What adapters do you recommend?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000099d3ba05fa555259
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve used=C2=A0this for both USRP and general networki=
ng:=C2=A0<a href=3D"https://www.fs.com/products/74680.html?attribute=3D26&a=
mp;id=3D412">Generic 10GBASE-T SFP+ Copper RJ45 Transceiver Module - FS.com=
</a>=C2=A0. The USRP is brand agnostic, so I generally just get &quot;gener=
ic&quot; branding. If you need more of these for specific brand devices, th=
en I&#39;d say to get for those brands. There are lots of manufacturers=C2=
=A0of these adapters. I and others have found FS to be high quality at reas=
onable prices. I hope this is useful! - MLD</div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 27, 2023 at 1:58=E2=
=80=AFPM &lt;<a href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Wha=
t adapters do you recommend?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000099d3ba05fa555259--

--===============0975653134343520326==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0975653134343520326==--
