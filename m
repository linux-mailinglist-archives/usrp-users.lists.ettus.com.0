Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1A5359DE8
	for <lists+usrp-users@lfdr.de>; Fri,  9 Apr 2021 13:50:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B25CD383C8A
	for <lists+usrp-users@lfdr.de>; Fri,  9 Apr 2021 07:50:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="X3C+U5Mm";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 58F12383C59
	for <USRP-users@lists.ettus.com>; Fri,  9 Apr 2021 07:49:20 -0400 (EDT)
Received: by mail-qt1-f177.google.com with SMTP id u8so3875590qtq.12
        for <USRP-users@lists.ettus.com>; Fri, 09 Apr 2021 04:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=64a2LJYzRu15pF31tYl56uzeArOsdoYxjKYMiP9dngA=;
        b=X3C+U5MmkdgyoHA3SojKJ2GYwCGkq0SeIhlWUtYrayTYqcGyfE49aevoMxn+UDGkR4
         ZFLD2QuAnavtsWi1C7D+MZXcadxKbSO4AH7OuI3HeTDWyRpH58og+eTMMHYh+yL66I4C
         fae1lkO8WMr9TLfHSzseRo+WxDoABxi7C6NROypImuL9bi+/3+3WZXgOQYGNTa/3gQoG
         6PYMTsYxP27hVD4jDiCcZLQRrYhbZUY66P/ICfb34RKORtGShwqzHhv3mIoSop4zjb35
         kgL1H5Cjj0ZUO8g+8vN0Xwri0kKwbw6iB5wVGXNKstE33d8ZkFOo6yd+nHaoxx4BQIR9
         rkxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=64a2LJYzRu15pF31tYl56uzeArOsdoYxjKYMiP9dngA=;
        b=T/D0g3VcZkVpw54zCi6GZ+bpKoI2kQRPyUbBxdN9gQjmBnARDhewWvXh4N1oJPAXWV
         YP7cvUtYfd7IL7YJyJMK7GQ9jfHFO07t+QQAys97FrUtd90WmLFGw7M/24uGsizbrXrs
         vJ6a+ZiKaUFf+McTO6Ia73I+Lan4Z8pjkm3bM31qV6N+ZUPESrUnmqQ3dKVVmcvo/PoI
         rOxBBOEkDVGUipUspKLdo5PvfhctBtdE4tR7Lv6o2LPsxbWlb69TGDfC60hF8czNKj8e
         S1HBZ2Zf31+0U21lT+jLOsH46cYkF3RKP0qx0F/A0Y9ZT1cjVohqd5nXi3Gz+dgTLs3j
         CbXg==
X-Gm-Message-State: AOAM5319IPx0W9WtG/D+4/S2vjizg2to4+x/S/Nxh9KM7JN3cYIVASrm
	EGUIv4cMHvD6OUJAKqUgPf3ZAFBbh2g=
X-Google-Smtp-Source: ABdhPJxvByfe3F9QDqqTIbKSS+8bagYx1BQ7kn4kCaj0UqwGHqdTxTOy2sPzVLcealIawfs8UFEkCA==
X-Received: by 2002:ac8:5c95:: with SMTP id r21mr12488944qta.347.1617968959831;
        Fri, 09 Apr 2021 04:49:19 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id 17sm1535340qky.7.2021.04.09.04.49.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 04:49:19 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 9 Apr 2021 07:49:18 -0400
Message-Id: <FBA6FD22-7EBD-409E-B02E-344C0C33CCA8@gmail.com>
References: <iVbUuFmZVFVKDWMbOURAUQzvwLbG1KmpiwKaxhKdTE@lists.ettus.com>
In-Reply-To: <iVbUuFmZVFVKDWMbOURAUQzvwLbG1KmpiwKaxhKdTE@lists.ettus.com>
To: brendan.horsfield@vectalabs.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: 4KPMZVBY6IFP23XQF2APRG43AUXT4LCK
X-Message-ID-Hash: 4KPMZVBY6IFP23XQF2APRG43AUXT4LCK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DC power supply for B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4KPMZVBY6IFP23XQF2APRG43AUXT4LCK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7581167091572510765=="


--===============7581167091572510765==
Content-Type: multipart/alternative; boundary=Apple-Mail-EE975601-BCEF-4FA1-BF0C-F1429232E819
Content-Transfer-Encoding: 7bit


--Apple-Mail-EE975601-BCEF-4FA1-BF0C-F1429232E819
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

5.5 x 2.1 is still correct.=20

Sent from my iPhone

> On Apr 9, 2021, at 7:09 AM, brendan.horsfield@vectalabs.com wrote:
>=20
> =EF=BB=BF
> Hi All,
>=20
> I am looking to purchase an external power supply for my USRP B210, but I c=
an=E2=80=99t figure out what size connector I should get. I found an old pos=
t where the specs were given as outer shell =3D 5.5mm, pin diameter =3D 2.1m=
m, but that was in 2011 for a USRP1.
>=20
> Does anyone know what the latest specs are on the power connector that plu=
gs into the B210?
>=20
> Thanks,
>=20
> Brendan.
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-EE975601-BCEF-4FA1-BF0C-F1429232E819
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">5.5 x 2.1 is still correct.&nbsp;<br><br><d=
iv dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote typ=
e=3D"cite">On Apr 9, 2021, at 7:09 AM, brendan.horsfield@vectalabs.com wrote=
:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<p>Hi All,</p><p>I am looking to purchase an external power supply for my=
 USRP B210, but I can=E2=80=99t figure out what size connector I should get.=
  I found an old post where the specs were given as outer shell =3D 5.5mm, p=
in diameter =3D 2.1mm, but that was in 2011 for a USRP1. </p><p>Does anyone k=
now what the latest specs are on the power connector that plugs into the B21=
0?</p><p>Thanks,</p><p>Brendan.<br><br></p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-EE975601-BCEF-4FA1-BF0C-F1429232E819--

--===============7581167091572510765==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7581167091572510765==--
