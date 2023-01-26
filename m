Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C4067C627
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 09:46:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F0116384240
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 03:46:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674722776; bh=Sc2yjyCU9wEkdwtD/dTfZS68q15o4vl9VR7yY0I9zrQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0Ruv82epUtcI+uiu/kQMO1v4fxqnQ35BCDRTvI92+zGg63Mh8ZSWaGNnD7Xyg408g
	 51Z2A6smMeZBxiJzOpRLhmXhMJGQ209Vn0PlGl6zD+q3TP3f94F8Mbr4lEehZQYjsa
	 JMnKn2yx8oqYelZJBfSg5jj2N0m2GNugtUV44cSb//QuI9LJLyctUdbpe0TfGJJNNS
	 cMqFEgO0mpPfd7xDow+LTXFPgrsuOFVCqgylg8XxlDO0OEoEMwSBK7pCyLjgMp9LxQ
	 2YXpcTMq5j1gjt/1V6bI3Ak2KU4K5TN3wb4q4BaO34g0pBauK1Yn02+eUUqYqLxPQe
	 5C84LL9/ts48A==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 784E1383FA9
	for <usrp-users@lists.ettus.com>; Thu, 26 Jan 2023 03:46:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="S0EPxXE4";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id ud5so3217788ejc.4
        for <usrp-users@lists.ettus.com>; Thu, 26 Jan 2023 00:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Num/j4/F5B3WcZdLF1q/bq/fwz9OrpfltwUVQ/3B0bI=;
        b=S0EPxXE4/5NiAdK31Nhd61RC09P9OS53qd65hVF/XeKEEmVtMsTYVk4+Q00ebvlJYC
         30gD/AO1/7x07eZ3Qpp8jCTPKkRArTZN1piwH2m88a4I7qkNUIDd8/y/fGdraZG5mGeT
         tKRp1AVK0i1uVmM18ZQ4OWVMfEYI0Z3mnO8ZUyF1B6grkMYKDlU6jo5WFqGP9iS/BtJV
         d+XyMzR9aYpST37pJ/RpSpQGcQRbEd9uVizbIYYpCNElo+4qqNl1RpIMYZcDEQn+Gwty
         zUzPVLrlIH91Hy3MzN1lBdLXAilGcm1mMdkpSGf0B7i/wjQZa9bxOiSdwJ0ViLVtcZJ6
         ikOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Num/j4/F5B3WcZdLF1q/bq/fwz9OrpfltwUVQ/3B0bI=;
        b=7Jy8rnaI9wPAss2Gn5CGRyxocCUHFUv4rODt8QpZ7qmcjkCOSlni3ad6YNWiyYgvOx
         gFCkG2HiU7xYh5S5ZOi/OnHtw8Bt/eecOVWUp4o45tjKgvXReLsw+FnCrWmrdiYaeaRN
         SoVzvoR7794Oea6tq01xireqO9Z7Iu+FR6ocaJCUMC0GdBoFvZ06Fx7RjkNcTlKZoCG5
         AhSet/rSXTEYxjkNtojHwCWmS0IL6v3zWjunylyi/I/XlC/lYPLEOQd3t2TTJwGcsyRX
         zSBkmFbw2DJy11hO+eCLn+JTXkUmZrPigXDQyax+ESC5j0M2R8vh4iMtgtDuKPa979E9
         LqaA==
X-Gm-Message-State: AFqh2kqThZkipG5DTF9GM4CLbbjlieZxqTu1Qa/x9a4sQ9AjqXYuI7Ie
	qgy97rC7YbaNchMyBxjnVOG+lWdNkJdNgLRhCA==
X-Google-Smtp-Source: AMrXdXtqSWgYlG1eUpKbISNYlpbDFwli8l/UEX5/AJ/CnJHixHnDjnacyiVGlH4GxLwIrE17thMGu0v3VC0m4ZvpEno=
X-Received: by 2002:a17:906:fa08:b0:871:3919:cbe1 with SMTP id
 lo8-20020a170906fa0800b008713919cbe1mr3744292ejb.193.1674722769286; Thu, 26
 Jan 2023 00:46:09 -0800 (PST)
MIME-Version: 1.0
References: <nmjFvVB9gY8aHBhWqeSQYzORU3BU088RT7mKcDShM@lists.ettus.com>
In-Reply-To: <nmjFvVB9gY8aHBhWqeSQYzORU3BU088RT7mKcDShM@lists.ettus.com>
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Thu, 26 Jan 2023 11:45:58 +0300
Message-ID: <CALooG3_q_KKP-_oEO_BRUxF=CWY7g6p4FD6SFvq+7zVTCg6DNw@mail.gmail.com>
To: daviddimavd@gmail.com, usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: EVD6URREG364U3TB4YSK22HIOKNU3UJO
X-Message-ID-Hash: EVD6URREG364U3TB4YSK22HIOKNU3UJO
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Dual-Frequency simultaneously receiver using one USRP 2901
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EVD6URREG364U3TB4YSK22HIOKNU3UJO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4412496394517219565=="

--===============4412496394517219565==
Content-Type: multipart/alternative; boundary="000000000000c2c01b05f326c704"

--000000000000c2c01b05f326c704
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi David,
you are trying to receive two signals which stand 400 MHz apart from each
other. If you want to take two signals, which stand 400 MHz apart from each
other, at the same time, then you need to have at least 400 MHz
instantaneous bandwidth. But USRP 2901 has only 56 MHz. Therefore; you
cannot take those signals simultaneously. You can only take those signals
at different times. Therefore; splitting incoming signals from the antenna
with a splitter and connecting them to two ports of the USRP 2901 does not
work. Because two receive ports of USRP 2901 share the same local
oscillator. Therefore; they can receive signals which stand at most 56 MHz
apart from each other.

Kind Regards,
Yasir

<daviddimavd@gmail.com> adresine sahip kullan=C4=B1c=C4=B1 26 Oca 2023 Per,=
 11:24
tarihinde =C5=9Funu yazd=C4=B1:

> I am trying to simultaneously receive two signals from Galileo at
> different frequencies (1176.45 MHz and 1575.42 MHz) using a single antenn=
a,
> a USRP 2901, and the GNU Radio Companion (GRC) software. I would like to
> know if it is possible to do this with a single USRP, that is, is the USR=
P
> able to receive two different frequencies at the same time?
>
> In the affirmative case, is it ok to just split the incoming signal from
> the antenna with a splitter and connect it to two ports the USRP?
>
> Many thanks in advance,
>
> David
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c2c01b05f326c704
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi David,<div><div>you are trying to receive two signals w=
hich stand 400 MHz apart from each other. If you want to take two signals, =
which stand 400 MHz apart from each other, at the same time, then you need =
to have at least 400 MHz instantaneous bandwidth. But USRP 2901 has only 56=
 MHz. Therefore; you cannot take those signals simultaneously. You can only=
 take those signals at different times. Therefore; splitting incoming signa=
ls from the antenna with a splitter and connecting them to two ports of the=
 USRP 2901 does not work. Because two receive ports of USRP 2901 share the =
same local oscillator. Therefore; they can receive signals which stand at m=
ost 56 MHz apart from each other.</div><div><br></div><div>Kind Regards,</d=
iv><div>Yasir</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">&lt;<a href=3D"mailto:daviddimavd@gmail.com">david=
dimavd@gmail.com</a>&gt; adresine sahip kullan=C4=B1c=C4=B1 26 Oca 2023 Per=
, 11:24 tarihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><p>I am trying to simultaneously receive two signal=
s from Galileo at different frequencies (1176.45 MHz and 1575.42 MHz) using=
 a single antenna, a USRP 2901, and the GNU Radio Companion (GRC) software.=
 I would like to know if it is possible to do this with a single USRP, that=
 is, is the USRP able to receive two different frequencies at the same time=
?<br><br>In the affirmative case, is it ok to just split the incoming signa=
l from the antenna with a splitter and connect it to two ports  the USRP?</=
p><p>Many thanks in advance,</p><p>David</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c2c01b05f326c704--

--===============4412496394517219565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4412496394517219565==--
