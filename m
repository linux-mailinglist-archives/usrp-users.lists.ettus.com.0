Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2180F5FD8A0
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 13:50:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1E513836F8
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 07:50:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665661851; bh=qkRyZvh/Ph3RuEW/j7WihF9nYgDlXXDZP87UG2rd4dw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ug8seuP9XgLXXcuo/wgn9MbZpVgSs/blS4GdTTo1/tUwAydhDM/+a13vuJ56VbBje
	 vZYtMCTmN+JziZYlQLC4+A1juxzy5VyTd4Iw25A1CokXFv6dAkS4LF02K2O0vVczHt
	 Wtc7pufAigK3RSc9HdEu6qDtIkZiZbKtTwgYHDGo+PW1IittVsKKchjRIe86uDAmz7
	 h1ADsTGNf8LYv5gQrcUXSp5ru3kdKgKbab3VdrHQhSQQVSjGKeMUmNAgoBVydFw0pN
	 da/1ZcSM/8OAJ4BGRuSZ0G6eObGUTVHZN4XmBmZELTfiP+nK9E4ME4ioSPLEsqmW5f
	 e2YbvZ9tMGznQ==
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 3DD013811E0
	for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 07:49:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XqL9W3eM";
	dkim-atps=neutral
Received: by mail-oi1-f177.google.com with SMTP id g130so1397149oia.13
        for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 04:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=53KHYwIMJ0JdSzY3GwlYDYU4PfXhxFjzK+nbXPt0eKE=;
        b=XqL9W3eM9BjlKhws8LiFATscFxAK6TDHQ3YhO4CIU8jC3abFIT0BnGtX2+f6mkVEoi
         JS+iCt0oiHKPiYvEYWgUTHAdfJZhqD/qMqnx6hirX7nsCd7uVqGv6ZOmGdc34Ihcere5
         l3J6bV8IyqmhRe9YOoVxH0qUb70atrhBeSkBILHse8zy0RD7h5D59x6dhp+wmOG7xE0F
         z/rLQ65ZKB8qlGgVt2F8sj3Mk6mJ8tB8ReMHjM1H8fasjBgd6Rdrnl+WQ7b0btSgjyuj
         reHQV1w2OpUSacvSJM+fLIxYIk65+CqugGyr+YStIL7w4aFmPPi86VGZZKsJ+Bvvh8gv
         1buQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=53KHYwIMJ0JdSzY3GwlYDYU4PfXhxFjzK+nbXPt0eKE=;
        b=OQmvKFuuGchZFXM6AC8x5nzKx8Hwj+DQooaNRJsfpbHxhJLm47bBVlvkTIUtKz4EES
         1zWFll4qvhfZenTWCtFctjctvkiTkU5viAiBSF5Q85Q/86MWQmwl7qouaDOFqHqb5n0p
         JOzzwnA/28UvnoK7Kt4i/7Ff8JpFajXwPWUgPIer8FTFelml/dZh1EitkKSyNUJWA7Gf
         xlkzAu2u/MEHyRgcJeOG0BSsghmmJ6GqDsIG+sxjIloaYFcA8VW5n2qoU9zOMbFH8sgK
         d4b3D0ZePKe2jNL2+N0XVGPjEOoQsMOTtLLotmCfA2EIb1IowSX/i7E6h1hpDZqpx+Oe
         0uBg==
X-Gm-Message-State: ACrzQf1mczR4lq1NqOjrAAkzgYU9lPOwBr5nj7j7vK7oojolIO5eal+x
	5WoAs9l08V7zWCzuzDOqwhad/FAKoZqTiBB9Wm4xxeZL
X-Google-Smtp-Source: AMsMyM5CZidtAGZXR1aJ34TOEp+1U0S8p4Mm7jEYxTmhtna7bVP52+q1nhpNuv55QMlbgVgaMDyizD2kFzoN5e+3c2g=
X-Received: by 2002:a05:6808:1808:b0:354:da91:9df9 with SMTP id
 bh8-20020a056808180800b00354da919df9mr3824098oib.137.1665661749192; Thu, 13
 Oct 2022 04:49:09 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Williams <zs1kwa@gmail.com>
Date: Thu, 13 Oct 2022 13:48:33 +0200
Message-ID: <CAJhOL6cgJEweaMDkZJ0PKe2aSjpoC52cib_e4VaWZD9_01ogmw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: R4TMK2G25LGXVPQR3ZQ67AF2Z66SDFVQ
X-Message-ID-Hash: R4TMK2G25LGXVPQR3ZQ67AF2Z66SDFVQ
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] commercial support
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R4TMK2G25LGXVPQR3ZQ67AF2Z66SDFVQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0861177683335919042=="

--===============0861177683335919042==
Content-Type: multipart/alternative; boundary="000000000000e06a3f05eae918a2"

--000000000000e06a3f05eae918a2
Content-Type: text/plain; charset="UTF-8"

Hi Guys,

Is it possible to buy commercial support for the usrp/rfnoc ip?

I have a fairly complex project which is not easy to break down into
specific, single, questions on a mailing list.

Kind regards, Kevin

-- 
Kevin Williams

--000000000000e06a3f05eae918a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Guys,<div><br></div><div>Is it possible to buy commerci=
al=C2=A0support for the usrp/rfnoc ip?</div><div><br></div><div>I have a fa=
irly complex project which=C2=A0is not easy to break down into specific, si=
ngle, questions on a mailing list.</div><div><br></div><div>Kind regards, K=
evin<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature">Kevin Williams</div></div></=
div>

--000000000000e06a3f05eae918a2--

--===============0861177683335919042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0861177683335919042==--
