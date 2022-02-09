Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 444E94AFF2A
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 22:25:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4E0D4384B18
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 16:25:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qifY6QYT";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 61B9B384918
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 16:24:38 -0500 (EST)
Received: by mail-qt1-f179.google.com with SMTP id r14so3047380qtt.5
        for <usrp-users@lists.ettus.com>; Wed, 09 Feb 2022 13:24:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=bzWIHBG2NMACdS/ounL0nVk+a/fn6GxMp2V1/ynAv0E=;
        b=qifY6QYTCGkDbKp5BnHtn1cwESy45dK1a1TV0uxeBfhWKZa3+OgT5iHAqXKSadWSjl
         ElfMVksAs9EN71N1zCxIHuwtPzrc4FVCnmvuH8WEz0pXeyBOxyLLcdRnV8gI4z/U8L8l
         aeBI15T23oaA2F5qI66OjfbmzIEYdToBx5Dvu7uQ9oekE6wTiKXQCBKw2umY/Bqld/cA
         R3YFTe4zh6DeBv5FKoHyEj9NPNJcxkdDh/5iheVcmqKURFE/qUH2TB1MnB5MZueUvg1J
         FVGy7nANC5LFtpFDJAFgrmcw9MFjA9v69h2L3CeIaxfwmjaiXBUlWQFu6NAlhE0B2k/V
         KK2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=bzWIHBG2NMACdS/ounL0nVk+a/fn6GxMp2V1/ynAv0E=;
        b=tgRIt1yi9emlPHdBOniUDRW1cMMdL8fY220PJGnP+G08/i8RUGH38f6dJngeDVmdKK
         7TflW8KWNqgW7G0qQf+iPuwEqM2ke/WfIRgvxMDWWJaX82PK2D3DLp5H02fVBjjpqPVH
         DQaIEH3eUxnCvmiHJpNT8CQETzlbLtHAs2ivM65dg52H9v+Xxe4EzT7zboRZQvRf00n1
         PhVuUOiWdL49tGYYYpNL+d7Sai5LKTkdVfD0y/cvUN/+bldgxfRHVeRF1oMf44neyYQ/
         6JWrSSVgzDZ4KffDHL5dvGmCCg1VaPro0NU9BD01cYrzp74sZV7ZB8DjweinfOM+QEan
         PNxQ==
X-Gm-Message-State: AOAM530GuyJWJVjDQCJyCnh0w1vsOw9vnUtXljuQd+f2VfrHzVCie0MV
	kmEysilhBlKVZlih6LsIFpN6KLfL+iM=
X-Google-Smtp-Source: ABdhPJzeKyBw38QQ3tJwc1p3thFILPfZRRDPYKzrheL4y/pAEadxhN5c9pKMCbDe6lv9ahN3y5aF9Q==
X-Received: by 2002:ac8:57cc:: with SMTP id w12mr2850431qta.155.1644441877506;
        Wed, 09 Feb 2022 13:24:37 -0800 (PST)
Received: from smtpclient.apple ([2600:380:916a:8228:a83c:55dd:3cb0:8d9e])
        by smtp.gmail.com with ESMTPSA id o19sm9678512qta.19.2022.02.09.13.24.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Feb 2022 13:24:36 -0800 (PST)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 9 Feb 2022 16:24:34 -0500
Message-Id: <77DAE8F6-7D0E-4588-8931-C1F12FD2C3E0@gmail.com>
References: <817106305.23108.1644438309318@mail.yahoo.com>
In-Reply-To: <817106305.23108.1644438309318@mail.yahoo.com>
To: pste998903 <pste998903@aol.com>
X-Mailer: iPhone Mail (19C63)
Message-ID-Hash: SFWKXT4Z4PIOW4HQ5CCR2XZCV5JJT43S
X-Message-ID-Hash: SFWKXT4Z4PIOW4HQ5CCR2XZCV5JJT43S
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running two b200 from one host
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SFWKXT4Z4PIOW4HQ5CCR2XZCV5JJT43S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6863144147538020445=="


--===============6863144147538020445==
Content-Type: multipart/alternative; boundary=Apple-Mail-1C15AFB3-6221-44E8-B8F3-3DFFF9043B49
Content-Transfer-Encoding: 7bit


--Apple-Mail-1C15AFB3-6221-44E8-B8F3-3DFFF9043B49
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

There certainly is. Have you checked GNURadio?

<end transmission>

> On Feb 9, 2022, at 15:25, pste998903 via USRP-users <usrp-users@lists.ettu=
s.com> wrote:
>=20
> =EF=BB=BF Is there guidance for running two b200s from one host in linux?
>=20
>=20
> Sent from the all new Aol app for iOS
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-1C15AFB3-6221-44E8-B8F3-3DFFF9043B49
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">There certainly is. Have you checked GNURad=
io?<br><br><div dir=3D"ltr">&lt;<span class=3D"Apple-style-span" style=3D"-w=
ebkit-tap-highlight-color: rgba(26, 26, 26, 0.296875); -webkit-composition-f=
ill-color: rgba(175, 192, 227, 0.230469); -webkit-composition-frame-color: r=
gba(77, 128, 180, 0.230469); ">end transmission&gt;</span></div><div dir=3D"=
ltr"><br><blockquote type=3D"cite">On Feb 9, 2022, at 15:25, pste998903 via U=
SRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></di=
v><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<!--[if gte mso 9]><xm=
l><o:OfficeDocumentSettings><o:AllowPNG/><o:PixelsPerInch>96</o:PixelsPerInc=
h></o:OfficeDocumentSettings></xml><![endif]-->
Is there guidance for running two b200s from one&nbsp;host in&nbsp;linux?<br=
><br><br><a href=3D"https://apps.apple.com/us/app/aol-news-email-weather-vid=
eo/id646100661">Sent from the all new Aol app for iOS</a><br>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-1C15AFB3-6221-44E8-B8F3-3DFFF9043B49--

--===============6863144147538020445==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6863144147538020445==--
