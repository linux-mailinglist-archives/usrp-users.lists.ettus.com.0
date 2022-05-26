Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE6753491D
	for <lists+usrp-users@lfdr.de>; Thu, 26 May 2022 04:59:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E9403850D0
	for <lists+usrp-users@lfdr.de>; Wed, 25 May 2022 22:59:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653533965; bh=oUtvsia8BG6MYCPf8t6Im81kmgVrS4GUv4SWcGw7TOc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=vuqpyCOo7Ib6umiV+NB9qgO05bz0sA9hLPjS93BrRU6XI9DMakNth8Ifdjdw7IZwR
	 UaSiMKlb9nTbu+d3pHR7oKrosUhLiacY9mI7OPx32mMMOswjnrPElUa1OAyxmnuyat
	 GmaELHoF0B/+h6w8HTQ6i4TRH38+ObXe7GgEeZECUaYCcW7lbpWJSucAqYBdx8GCAq
	 1ZC8rm3MRLDkFebLq/RJ3DWNiNxv/K2pKDcEkWWISluEg63BDeNwioONk68wTzFaKa
	 PSKRvQej6zm+UAnLmyCasELYWI9k0sTJFw3QKz5s8Wrqi9dzagfhE0bVvmIF886WR7
	 OQ88qnoXM8yAg==
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	by mm2.emwd.com (Postfix) with ESMTPS id 6CB93384D4F
	for <usrp-users@lists.ettus.com>; Wed, 25 May 2022 22:58:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dolphinsystem-jp.20210112.gappssmtp.com header.i=@dolphinsystem-jp.20210112.gappssmtp.com header.b="7xPS6zy2";
	dkim-atps=neutral
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-2f4e17a5809so3393427b3.2
        for <usrp-users@lists.ettus.com>; Wed, 25 May 2022 19:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dolphinsystem-jp.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UsSqhIY5onruKfz/LVgx4EYs79IDVZ8pKKBs+reJkfw=;
        b=7xPS6zy23SkhGZU1dO80bHd/mdG4E3hNdFSLZJIzXHi37fD7R5k0g1t/tQWT2UFXrj
         sh276xii2d4SH9AeotUxcC0cxuUm5oDcN9BcNmwSNsnWhyG2Hrwnl9/Z8PGoL7omEdHp
         UofomDkldMPdvyG8x44MYf6U94Rzp2OuLDoEIevRnm52a6Ndz92nZAPYkJZbi4x1GBS3
         VVJHpD6g1sgmVnj1mvcV+ZjvY1NmC+QXuac1pv7/UgGDkmIfT4rbZZb+h+NWgahZ+50d
         4t0O87EeDEMFA+hi3oJSJevXE97yZlB387stN5EyDa4mpOH8UpD11PW802bRFQk29yqU
         urhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UsSqhIY5onruKfz/LVgx4EYs79IDVZ8pKKBs+reJkfw=;
        b=mFBIfD7z03mHGhrIJnW2+o99vvvrBiJ93do6EwO5ZjA7yBNf7R8cchUWabtiOkacC7
         Wx8Ym8kGHaOoMtj9bPftsr5U3j+EkdyX0ko6wPqL8zIZw/ucRFXByxxXj+61pSuX+o5q
         I6TL83oyGsDqiJoBesmhGopaztptfdM3Ie2exZt1BAUsAFEMoQ7kCIkFuPQyS4nwO63A
         8GxjqjWU6HjvC0jzlwUyRNI3VI4NdNSWJsgI8Af6pwvjE+Ebs6olmY3ciZ5GNTYU+YhC
         Abce8S20Z+xK5LpvLrqFmYTHXmwOf7WJnakM96AkNL3Kt3YPhg4nZ2R1FiFkDcAOwlWu
         r0JQ==
X-Gm-Message-State: AOAM5338Es8fre6eqhsX+gqgkapNUz/8UDQrHGRXs/EciEdvgu/kpOd5
	SiPRZaaweYtjV1PKZ/V+EqtgEW1DAMDIS2aUdYvGmw==
X-Google-Smtp-Source: ABdhPJzi8trsOc/Zev5sV6ybgTBx2Efuybf5ll2em8o1Pl9mTiBFKvzxbyKz9biDEpQ34GOzemWuwK6ewe49dxX7CZo=
X-Received: by 2002:a81:c703:0:b0:2d0:cc6b:3092 with SMTP id
 m3-20020a81c703000000b002d0cc6b3092mr36203035ywi.449.1653533908811; Wed, 25
 May 2022 19:58:28 -0700 (PDT)
MIME-Version: 1.0
References: <CABfZwceh1KzO9770-48_wod=D-aAqCuvA5HO+L4shJnbebdnOQ@mail.gmail.com>
 <3bc7c4f4-eb0e-6273-e1ca-bd474272a996@gmail.com> <DM6PR04MB5051618A0367612C5D8A2C5EF3CF9@DM6PR04MB5051.namprd04.prod.outlook.com>
 <CABfZwceubKxP72yUJSUsaWW1E+-fEAwpH+baR=WLNuQBQkLaLQ@mail.gmail.com>
 <CABfZwceh_8ikYebvhrR_bm8vNAPJsVW45+0cZ5PkR_zEJog1Zw@mail.gmail.com> <MWHPR0401MB3707A2E7AC3CACA5A20ECDB9FAD69@MWHPR0401MB3707.namprd04.prod.outlook.com>
In-Reply-To: <MWHPR0401MB3707A2E7AC3CACA5A20ECDB9FAD69@MWHPR0401MB3707.namprd04.prod.outlook.com>
From: Mikio Fukushima <mikio@dolphinsystem.jp>
Date: Thu, 26 May 2022 11:57:53 +0900
Message-ID: <CABfZwccaVv4-DPr+LobaO2kq3935xZCF1_enpxooqf1GO_L9qw@mail.gmail.com>
To: Jovian Wysocki <jovian.wysocki@ni.com>
Message-ID-Hash: DNSRDYK76AJ2CJKJ6TUCX42TXJRDECAG
X-Message-ID-Hash: DNSRDYK76AJ2CJKJ6TUCX42TXJRDECAG
X-MailFrom: mikio@dolphinsystem.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Does X410 support phase-aligned and phase-corent?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DNSRDYK76AJ2CJKJ6TUCX42TXJRDECAG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5082132885088849911=="

--===============5082132885088849911==
Content-Type: multipart/alternative; boundary="0000000000004259c505dfe15df9"

--0000000000004259c505dfe15df9
Content-Type: text/plain; charset="UTF-8"

Jovian,

The differences between the N310 and the N321/N320 are
1. N310 has no LO distribution board.
2. The LO input frequency must be twice the frequency of the desired RF
output frequency.

The Radar EW testbed can run with N310s if I prepare an external LO
distribution amp and LO source (twice freq). doesn't it?

Regards,
Mikio

--0000000000004259c505dfe15df9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Jovian,<div><br>The differences between t=
he N310 and the N321/N320 are<br>1. N310 has no=C2=A0LO distribution board.=
<br>2. The LO input frequency must be twice the frequency of the desired RF=
 output frequency. <br><br>The Radar EW testbed can run with N310s if I pre=
pare an external LO distribution amp and LO source (twice freq). doesn&#39;=
t it?<br></div><div><br></div><div>Regards,=C2=A0</div><div>Mikio</div><div=
>=C2=A0</div></div></div>

--0000000000004259c505dfe15df9--

--===============5082132885088849911==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5082132885088849911==--
