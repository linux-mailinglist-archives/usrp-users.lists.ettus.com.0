Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB77364AE9
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 22:02:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 929E2384676
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 16:02:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FPp8cSXO";
	dkim-atps=neutral
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id A3C2C383F1A
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 16:01:31 -0400 (EDT)
Received: by mail-qt1-f178.google.com with SMTP id 18so13654063qtz.6
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 13:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=tmS2lpS7Sd0k3nX7tF2VDmAugmNY0D8T0VlMMSdnAsQ=;
        b=FPp8cSXOsgzGsTf55CJdbBrjTE5P8K/OdZt+o9NjIwP0xC18YXSVAJYravs/hCDdbU
         tJDWc1M8sDxMJeMbZkcz/ZvNIPKAnP5nGk5nl64Ao5lZeLtULIC0bqZN3hpjoofn9gZG
         kN693vrr+7MG6AjfV1yjQNYNG4az0h95OoQchy8V/aft3nO5TUPjZPlZqNxxUpdMfoSw
         ablmXKHJj6+7rhgzux/HBekyGVjuFzYBpphML2lOxmt8pCPNOPBa/z3hwDLNT+HLjNr3
         nnOXVjiKprwwcjkKmB6QXwqCUIS20m1BoDgEP3fJoYg2aIfdFdZOyNhvPxsMZ2P0PAaq
         Ck0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=tmS2lpS7Sd0k3nX7tF2VDmAugmNY0D8T0VlMMSdnAsQ=;
        b=qi+kjEpcFUIr96nY3CMk7u2JN6MkTNkab4V8B9gh/zeR1KNOFu6+BNNXzBrES9bxg1
         cpjVj4Kr6sSx+pHSh/yrMd63UtTL89uwb1xFRjNDe/rrCi3jy5d/q8ZcIcbQHAA7WLGh
         3bITSQyD1QHR2kTa7l+2XpU/Fg5j4jwXEUAhkgquOqeW280vXWgOuijuY4eqLmaMzAfr
         lNcSrgNoKR0ZWXPeEuJsgWrp7h9dTTNjNFvctY17E6urQcG6H/YDOorHM0uC2RVhwvcg
         0k6J3Av/OiQIfegsImakW7IinTku9NreB6FrX8JhFit6Om7UjcpQVyNDC4Qq1kpCsBVq
         Y9zg==
X-Gm-Message-State: AOAM5323XXZEg90SBVGOpjxziom/OSHLetcxykhLmOEwAKmMWA7V5zCq
	9xlkzvYBxfXRIC4C8hXckrs=
X-Google-Smtp-Source: ABdhPJy0i1eEuxAYUnRQjw26EjfsQ2ysSFso5D5vwaQGX/47b1I5qqEBvYfXbPA8zvdyh16TghxaQA==
X-Received: by 2002:ac8:58cb:: with SMTP id u11mr13594429qta.348.1618862491051;
        Mon, 19 Apr 2021 13:01:31 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id n15sm10359775qkk.109.2021.04.19.13.01.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 13:01:30 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 19 Apr 2021 16:01:29 -0400
Message-Id: <BFFE3639-5370-4262-A2F3-540AC1C7ADE7@gmail.com>
References: <3iwTOsiOSyPfPYEWWS0yYZWT6eAiv4CHoZKtmYNIxU@lists.ettus.com>
In-Reply-To: <3iwTOsiOSyPfPYEWWS0yYZWT6eAiv4CHoZKtmYNIxU@lists.ettus.com>
To: zhang.weit3@gmail.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: 3TZ7KCKXXCUOOSN2LDWFN2V4XFRRDZMH
X-Message-ID-Hash: 3TZ7KCKXXCUOOSN2LDWFN2V4XFRRDZMH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Possibility of LO synchronization between multiple USRP B210s
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3TZ7KCKXXCUOOSN2LDWFN2V4XFRRDZMH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6851484397295465205=="


--===============6851484397295465205==
Content-Type: multipart/alternative; boundary=Apple-Mail-CEAA36AF-4765-4CFC-8CFA-AB3EFF388B04
Content-Transfer-Encoding: 7bit


--Apple-Mail-CEAA36AF-4765-4CFC-8CFA-AB3EFF388B04
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

There no way to do this with B210.=20

The synthesizers in the AD9361 have no usable resynch feature AND the mixers=
 are 2XL0 which introduces its own 180deg phase ambiguity.=20



Sent from my iPhone

> On Apr 19, 2021, at 3:56 PM, zhang.weit3@gmail.com wrote:
>=20
> =EF=BB=BF
> Hi,
>=20
> I am trying to use multiple USRP B210s for one specific application where t=
heir LOs need to be synchronized, which should have a same initial phase. Ho=
wever, it seems that the B210s does not support this feature. Could anyone p=
rovide some suggestions?
>=20
>=20
>=20
> Thank you,
>=20
> Weite
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-CEAA36AF-4765-4CFC-8CFA-AB3EFF388B04
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">There no way to do this with B210.&nbsp;<di=
v><br></div><div>The synthesizers in the AD9361 have no usable resynch featu=
re AND the mixers are 2XL0 which introduces its own 180deg phase ambiguity.&=
nbsp;</div><div><br></div><div><br></div><div><br><div dir=3D"ltr">Sent from=
 my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 19, 20=
21, at 3:56 PM, zhang.weit3@gmail.com wrote:<br><br></blockquote></div><bloc=
kquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>Hi,</p><p>I am trying to u=
se multiple USRP B210s for one specific application where their LOs need to b=
e synchronized, which should have a same initial phase. However, it seems th=
at the B210s does not support this feature. Could anyone provide some sugges=
tions?</p><p><br></p><p>Thank you,</p><p>Weite</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-CEAA36AF-4765-4CFC-8CFA-AB3EFF388B04--

--===============6851484397295465205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6851484397295465205==--
