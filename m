Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E28085339ED
	for <lists+usrp-users@lfdr.de>; Wed, 25 May 2022 11:29:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1341E3850C2
	for <lists+usrp-users@lfdr.de>; Wed, 25 May 2022 05:29:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653470999; bh=Ra9Jp3BUOoHKZV9BSJgJbqa+Q8/mhYndlANt+iE/cSE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ohonisZEBsIBrjMzW1+0E6Pu4uLxz4XsaXDvsKtJJwGGHzefk5qLW3FQbXN48vImm
	 ZxeAt1LCdmD4c/FNH9RgSWqUWvdWxfMxWn/c/KKjU51S219GREOOZgKu5doWwz/S08
	 63dVmfvKFrBe3J5oNYvEspEMowEBDG3Qo202Te3oLjZxW+E2ytpv7FtRTjnq64oRNH
	 WPLzA5qsncgP9hzJUf2NnmcKNNWbAsGViOl40G+7G3dDoxX1sNZ2VYtawXTWj6alhO
	 Wj5QuKch9IbW9x6F/gYiomw+WysKR5rElQqzG11ZJHN8+U18i9XO1CotygMQ1eWj/q
	 mNr+p0Epb8inw==
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
	by mm2.emwd.com (Postfix) with ESMTPS id 66DBB384E62
	for <usrp-users@lists.ettus.com>; Wed, 25 May 2022 05:29:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dolphinsystem-jp.20210112.gappssmtp.com header.i=@dolphinsystem-jp.20210112.gappssmtp.com header.b="vkNLZGLK";
	dkim-atps=neutral
Received: by mail-yb1-f199.google.com with SMTP id v140-20020a252f92000000b0064d955c7b4eso18103156ybv.18
        for <usrp-users@lists.ettus.com>; Wed, 25 May 2022 02:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dolphinsystem-jp.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=enQ7F4vzY96RfwaA8RTwPsbT+m1lPP8sLhROruSOIuQ=;
        b=vkNLZGLKY6FyOj73Z1F9BVb+olMo6mT4Onwl6xSrx2XBJIcHWWEA6OBznY2boaPWrS
         Zj4iwRxBh3H1cxaafcYEhaKQ0KWnA3/hTmhYJj/5sYS4Hhy5i6JdAgbkm8up8ErDnsba
         lktZ2G8Or8k+gGOHnXdpbYShcbaLOl1TPkbCBDUhSzVMrHq8tFdPhFWs/tVABwD3G5bQ
         59ZE9NAHEIdfGL2w53xK1/fxxXjXd1v23LKAFNJ0RyQkrwvbejOqUlJNm/Xlm1ZHiW8i
         EyJO3l7Mg4SAWzVhIBfMWVEQI/dMdUCo1NfOsWWpoJ0dMggzKtTW/ZHuXw2HQuhn/fys
         B9MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=enQ7F4vzY96RfwaA8RTwPsbT+m1lPP8sLhROruSOIuQ=;
        b=wLvWOtu7fAYfNTCFNmDm+pKKuQCWXPZ69wnxHNXW7qP44+oEDJBcQGm+4e7Ba2eut2
         k7Abk8toB07tHlNVomgJu83KlJlhBKezRbfGXzTfwG6SKqIBgrK1+bj286T6z1gG4xM9
         QQVJhk5qjn7JitObDqtnjF7+Zhmfu+bVRNG3bk9L85ewqEpq5KvuLTqKgeGc7wQii5zW
         O2HepGxkmFhV7ySC4PNMHbb8xpR+ZYJfm+rJaPfnMHYz7xopjY37uM0VblgAu3SMkedm
         YyB7vHsZFvV9HKSpVU4kqOPPxs9tNk0OCTwdg7FMTska/9L5u2RFHQ8gRgjIP3+U6V+m
         shLw==
X-Gm-Message-State: AOAM531DFVavmSi/PB3zdNAAlE8bq8+uCAMbPyv2zS4hnrbnJ8sx75PA
	z4R3sxbf96RUPLtZ2kCf1SuraRUMAjpN1CMNEnIJAg==
X-Google-Smtp-Source: ABdhPJxcF2wmyIKtY3vxoEJ2GzwT3bFP1/4uzRSgONh4sgTp4aMfG54qMgHIUU5FK3seGqfTVlJDy9iFYDt9Uq4Xbf8=
X-Received: by 2002:a81:802:0:b0:2f7:cd12:9d53 with SMTP id
 2-20020a810802000000b002f7cd129d53mr30905606ywi.197.1653470941806; Wed, 25
 May 2022 02:29:01 -0700 (PDT)
MIME-Version: 1.0
References: <CABfZwceh1KzO9770-48_wod=D-aAqCuvA5HO+L4shJnbebdnOQ@mail.gmail.com>
 <3bc7c4f4-eb0e-6273-e1ca-bd474272a996@gmail.com> <DM6PR04MB5051618A0367612C5D8A2C5EF3CF9@DM6PR04MB5051.namprd04.prod.outlook.com>
 <CABfZwceubKxP72yUJSUsaWW1E+-fEAwpH+baR=WLNuQBQkLaLQ@mail.gmail.com>
In-Reply-To: <CABfZwceubKxP72yUJSUsaWW1E+-fEAwpH+baR=WLNuQBQkLaLQ@mail.gmail.com>
From: Mikio Fukushima <mikio@dolphinsystem.jp>
Date: Wed, 25 May 2022 18:28:25 +0900
Message-ID: <CABfZwceh_8ikYebvhrR_bm8vNAPJsVW45+0cZ5PkR_zEJog1Zw@mail.gmail.com>
To: Haydn Nelson <haydn.nelson@ni.com>
Message-ID-Hash: ENT54XEXHRBKSV2ADR2PXYHHCLD5JOFG
X-Message-ID-Hash: ENT54XEXHRBKSV2ADR2PXYHHCLD5JOFG
X-MailFrom: mikio@dolphinsystem.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Marian Koop <marian.koop@ni.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Does X410 support phase-aligned and phase-corent?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ENT54XEXHRBKSV2ADR2PXYHHCLD5JOFG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8054861223039545464=="

--===============8054861223039545464==
Content-Type: multipart/alternative; boundary="000000000000221b4f05dfd2b40b"

--000000000000221b4f05dfd2b40b
Content-Type: text/plain; charset="UTF-8"

Hi  Haydn.
Does The Rader EW testbed(N31x) support not only N320/N321 but also USRP
N310?

https://www.ni.com/en-us/solutions/aerospace-defense/radar-electronic-warfare-sigint/radar-ew-research-prototyping/build-radar-ew-testbeds.html

Regards,

--000000000000221b4f05dfd2b40b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0 Haydn.</div><di=
v dir=3D"ltr">Does The Rader EW testbed(N31x) support not only N320/N321 bu=
t also USRP N310?<br></div><div dir=3D"ltr"><br style=3D"font-family:Arial,=
Helvetica,sans-serif"><a href=3D"https://www.ni.com/en-us/solutions/aerospa=
ce-defense/radar-electronic-warfare-sigint/radar-ew-research-prototyping/bu=
ild-radar-ew-testbeds.html" rel=3D"noreferrer" target=3D"_blank" style=3D"f=
ont-family:Arial,Helvetica,sans-serif">https://www.ni.com/en-us/solutions/a=
erospace-defense/radar-electronic-warfare-sigint/radar-ew-research-prototyp=
ing/build-radar-ew-testbeds.html</a><br></div><div dir=3D"ltr"><div dir=3D"=
ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Regards,</div><d=
iv><br></div></div></div></div></div></div></div>

--000000000000221b4f05dfd2b40b--

--===============8054861223039545464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8054861223039545464==--
