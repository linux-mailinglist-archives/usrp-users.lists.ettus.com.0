Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C65CC35D0DC
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 21:12:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17D72385099
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 15:12:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L5vG/Vzm";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 3503D384EDA
	for <USRP-users@lists.ettus.com>; Mon, 12 Apr 2021 15:11:19 -0400 (EDT)
Received: by mail-qk1-f180.google.com with SMTP id e13so5558259qkl.6
        for <USRP-users@lists.ettus.com>; Mon, 12 Apr 2021 12:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=zvxjksew1go/uVuGjwgWEu7/suAnH3H40e1vwAiTBJY=;
        b=L5vG/VzmJ6df0lIicr/pYWCZ28B8KT4+ViLX5DCOE+VxsxDXVOIiWenieEEbHshG32
         GrX6kkCjDxnEkrNYNflLvtX12jaDzLVpihY6YEscZgj1kihdx6xhIKbzja+TpbO8nHT4
         xFFnyoC9Eoz2VoShMV0meko493XjDi/8uORobQjcXBOfkkHoXzk2gbgSCWLyyMsJjY0j
         d6/6rfKVMithFyGaJiX+G0jvdGye5dYZ66dZivK1bswYxMgFjHOxEyCV0LFl4jGpQRKB
         OBf+8BMRaZ0cUaafc+vKI38AAF7tGRSlmCq7WPrbs5GdjHbzaGsEJjygt1+A/xTFudNV
         h0UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=zvxjksew1go/uVuGjwgWEu7/suAnH3H40e1vwAiTBJY=;
        b=jsFGlNozFoJOWK9IBQ8LC1s079AtDGbVnB0JLRMIn55TesKJK2WorJT4U0myyjOIbH
         a+o2P/CKqgfsdnONeJoDp0Rtj3GyCtWXKf5ncCN48ajHLGdTpSuNA1YKTfBxyQOxMJMG
         lZZq/HI4MJxWtRWQEiIWTc6c3kpW2JLTqZXDSwDGFHTKUd2y7pPLVcvWKaHLPWnUPpYg
         +biqFKEJANqvyVCwIXf3uCSIbHZae1ljvDoVFQrHOgSsJQEYehvfJ3gHOr7LBUvLz4Yc
         QsZe0GFRFdwXrt9CWKUewxjTg50Wmg11cvJAjXW0UomYvx56wAwdx4ahz0DZQMkstYDX
         xiGA==
X-Gm-Message-State: AOAM5324y5tgzS67R6IRQ44zLnJ9yrGKVyCGO1xM4n9Gin1PdNCSTOTV
	zK0H0rLItiUi1sKrVMIX7gc2Dt2qThc=
X-Google-Smtp-Source: ABdhPJwAkqrgZ1u6SFH6ia9MMVIvBq+y/8LfQvmJcSDnAVfQ47VfjF9oEAcmNbW0IPhlUnytjOM+yQ==
X-Received: by 2002:a37:9d94:: with SMTP id g142mr15593714qke.20.1618254678809;
        Mon, 12 Apr 2021 12:11:18 -0700 (PDT)
Received: from ?IPv6:2605:b100:d02:e550:b868:7ae2:110a:46a2? ([2605:b100:d02:e550:b868:7ae2:110a:46a2])
        by smtp.gmail.com with ESMTPSA id q67sm6490654qkb.89.2021.04.12.12.11.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 12:11:18 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 12 Apr 2021 15:11:16 -0400
Message-Id: <BC5D55CD-26FB-4ADE-BD0F-A72619DF2B67@gmail.com>
References: <ezDdaGlOKFC9wsh9ehlxUzpCqL3PXFenPTX7PB0uuc@lists.ettus.com>
In-Reply-To: <ezDdaGlOKFC9wsh9ehlxUzpCqL3PXFenPTX7PB0uuc@lists.ettus.com>
To: paradis@kwesst.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: QVYWAJSUSC6VVH7D23EWOYPXEO2UGJLV
X-Message-ID-Hash: QVYWAJSUSC6VVH7D23EWOYPXEO2UGJLV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini-i isn't found by uhd_find_devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QVYWAJSUSC6VVH7D23EWOYPXEO2UGJLV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7602466404710095442=="


--===============7602466404710095442==
Content-Type: multipart/alternative; boundary=Apple-Mail-638F6631-01CE-4DA8-B60E-5AEF5A5FF26A
Content-Transfer-Encoding: 7bit


--Apple-Mail-638F6631-01CE-4DA8-B60E-5AEF5A5FF26A
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

What does dmesg report when you plug the device in?

Sent from my iPhone

> On Apr 12, 2021, at 2:19 PM, paradis@kwesst.com wrote:
>=20
> =EF=BB=BF
> Thanks Dustin,
>=20
> Did resetting the USB fix your problem?
>=20
> I don=E2=80=99t think I=E2=80=99m having any USB issues per say, I can plu=
g the B205 in and after doing an =E2=80=98lsusb=E2=80=99 I can see the devic=
e on the bus. The problem I=E2=80=99m having is that when I do a =E2=80=98uh=
d_find_devices=E2=80=99 it doesn=E2=80=99t find anything. My gut feeling is t=
elling me that there=E2=80=99s an issue with the hardware, but I=E2=80=99d l=
ike to exhaust any other possibilities before trying to debug the actual B20=
5 itself.
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-638F6631-01CE-4DA8-B60E-5AEF5A5FF26A
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">What does dmesg report when you plug the de=
vice in?<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><=
br><blockquote type=3D"cite">On Apr 12, 2021, at 2:19 PM, paradis@kwesst.com=
 wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr"=
>=EF=BB=BF<p>Thanks Dustin, </p><p>Did resetting the USB fix your problem? <=
/p><p>I don=E2=80=99t think I=E2=80=99m having any USB issues per say, I can=
 plug the B205 in and after doing an =E2=80=98lsusb=E2=80=99 I can see the d=
evice on the bus. The problem I=E2=80=99m having is that when I do a =E2=80=98=
uhd_find_devices=E2=80=99 it doesn=E2=80=99t find anything. My gut feeling i=
s telling me that there=E2=80=99s an issue with the hardware, but I=E2=80=99=
d like to exhaust any other possibilities before trying to debug the actual B=
205 itself.</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-638F6631-01CE-4DA8-B60E-5AEF5A5FF26A--

--===============7602466404710095442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7602466404710095442==--
