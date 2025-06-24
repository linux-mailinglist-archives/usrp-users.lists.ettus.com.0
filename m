Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B03AAE6D7A
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 19:30:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2AFD9385C00
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 13:30:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750786213; bh=PmX+RZcrhCGda0csFN24xrTX/Y+3WwxiV/W20KdsnGY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nYGHincRykKTMpyK6ch3wqEXuzwCMmwbHAgEppt+WArD/5hCvhY07IUSQ/CHBnMMy
	 7+NCe/RjGmGbVU81nIzUzNRqDWXgZaWs/Z/S0eyVQ4Zm7R+pC/+OnbaCKRZw1vBXz6
	 yDJOeQBBFrxsIk/CBkMraHsP+DB5H9xdlx6aXHfpvgxFCgo2/Idx+r6iw5IKx1wTR/
	 VREQ2eJCTHAJYNzbSA+QflF2AqcBqD5Jt2DA7yCG1qiqI7+SoVZM3Jj3zg+KXIIsf6
	 7hQ492gcatGI3deU/o+HIp4MEvj/4s57g+0llwkXKHENANzgeJRiDsF1PI1BBY341O
	 lKIQVOD6C7ORg==
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id ECDFF383B89
	for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 13:29:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="tM8yi5e7";
	dkim-atps=neutral
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-adfb562266cso142987566b.0
        for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 10:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1750786154; x=1751390954; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0aWBXbcOAlzAP7AH6G38J/UjSo5tU8ow1zkjs3eazpw=;
        b=tM8yi5e7QpgQM7TMzz5RZ4stYoeloKyIV5KanvQ2iWfN7M5K7I5O2gvsKZW3V9il4W
         KiAyXznQjMAuzktg3MYJyGGtpyvjxzGtYZrJPVRx+p2Uq3aXYiW1zoEcmT7iEc8um63w
         GYncPlUeA0tP0gMVC7y3iwDnzBOVYvGJwXk04XpiFqt5xtxozZe7v6XJP4Uu9VB7FtSe
         RofVzNwTusIU33iwGeCEV+wMkM3iRo2CggR9Q86yW2YVDbmqcarrqzjdpiP47VRpWpmo
         FMjAMpTGc0ddpzpLL+Ci4Bj5tXiz0CnQfTHQTL9fRQONdKl66SZ1BkN4f4kTDSY7K+gY
         T6Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750786154; x=1751390954;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0aWBXbcOAlzAP7AH6G38J/UjSo5tU8ow1zkjs3eazpw=;
        b=O159lpJZ3T54EEB12a3bCB04g0KhUI2+m88Le2XjHQvzVsCGOwfJGzlafD0LIhJK7h
         2thvQ9dWEDLyzXDNx2shOF6KuUXlATLqZ4kc3U4dM52ZevUC2SbYk4YZv+tBw5yk9nIP
         nJqLZAEbsU6Ay7f9VqR0vMPLm4V6gCIGXoNzIUzzsKF6ww7bxnwzrb5WwS1i4YqXp2mZ
         gmutP3nLq1Z/JjbBj4TY2KZzFoFWMnh1osLWaGCn3MsrMvabfVXs3FZdbwi0ueLC1VCJ
         DjpjRBsSbH6akVZWgjqxYWcpeufdWK5ae2lqQp8pFoP2oBt9bXEP3Slh6xSCt8XdYdBg
         2Yfg==
X-Gm-Message-State: AOJu0Yxw3g9eCE5eRkZEHKYA6xQoRH0FsKekzAqTFQhTneJIebsgYeGX
	EXecF8cs06YF6uYiur5H3EQJjSSlH1rCaCTxtyZkTsy74PRxK+u7ictYDEdDY1YGIq6dZMnWjwI
	Q0hR5a5G00NRYAn7ecdlxAsX83pp4S2hqA2x03YFfy8YXKiL/8CL+1WQ=
X-Gm-Gg: ASbGncsyRm481xwKvP9hZ2KZUJiccqnkzthmjJyjLX+Cg5UMmz8nTURelN6RyLnCwHP
	vpB56w4I+xe3MVeWRbJFzdtR79wcXNgZJJcOwPKhckEVMqHwQnPRT0+05BWdcMSLjp6AVhpYzUE
	t/mRW23inp1ZMxRMxzRFBgHCaLdtXraOEw2nPRaP4O+m+7L9U3bicidxaNjzDq8c2lPL2p7dme6
	d8=
X-Google-Smtp-Source: AGHT+IH7S9GL+QF4SHXFRTM64Lp1ZL5jeXT3dnby8Cc92TWPjL2EePPJKEVmzH/4pFkMkLz10cgxdWURreuHSHpr1zc=
X-Received: by 2002:a17:907:6010:b0:ae0:4820:2474 with SMTP id
 a640c23a62f3a-ae0beeb56cfmr7805866b.43.1750786153886; Tue, 24 Jun 2025
 10:29:13 -0700 (PDT)
MIME-Version: 1.0
References: <QY4YAihq7KO94BDSAHHs5x9bI0iVa97lCaEihwwE@lists.ettus.com>
In-Reply-To: <QY4YAihq7KO94BDSAHHs5x9bI0iVa97lCaEihwwE@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 24 Jun 2025 19:29:02 +0200
X-Gm-Features: Ac12FXxL54TPC_0ZWkG6Z3lV4X6Xd8WxbBPvwfpoGgnQCVA8pL4QldH_JiM55cw
Message-ID: <CAFOi1A45949cEDtiM8_=BqpLHv1CMHiEwULUKoGUwOXEnax06A@mail.gmail.com>
To: tommytsui@w5tech.com
Message-ID-Hash: ZIBPQXA5XZ5OXONWLIJYNM6IGDH5WFJL
X-Message-ID-Hash: ZIBPQXA5XZ5OXONWLIJYNM6IGDH5WFJL
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 UBX Tx issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZIBPQXA5XZ5OXONWLIJYNM6IGDH5WFJL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6644241778951012650=="

--===============6644241778951012650==
Content-Type: multipart/alternative; boundary="000000000000c7cac4063854aa20"

--000000000000c7cac4063854aa20
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 12, 2025 at 9:56=E2=80=AFPM <tommytsui@w5tech.com> wrote:

> Hi Rob,
>
> Thank you for your reply. Indeed, when I ran UHD probe on another X310
> with the old WBX daughter card installed, the old radio daughter card mod=
el
> reported WBX-120, not WBX-40 as I first thought. Your answer on another
> post explained it all. The max lo_offset depends on the RF bandwidth of t=
he
> radio card and the signal bandwidth. Is such information available on any
> Ettus Research Wiki website? I don=E2=80=99t recall I had seen such expla=
nation on
> internet. Anyway, thank you so much for your explanation!
>

It's one of those things that is not USRP-specific, but a generic RF thing.
We don't always document those (although there are plenty of cases where we
do). Anyway, glad you figured it out!

--M

--000000000000c7cac4063854aa20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 12,=
 2025 at 9:56=E2=80=AFPM &lt;<a href=3D"mailto:tommytsui@w5tech.com">tommyt=
sui@w5tech.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><p>Hi Rob,</p><p>Thank you for your reply. Indeed, when I ran=
 UHD probe on another X310 with the old WBX daughter card installed, the ol=
d radio daughter card model reported WBX-120, not WBX-40 as I first thought=
. Your answer on another post explained it all. The max lo_offset depends o=
n the RF bandwidth of the radio card and the signal bandwidth. Is such info=
rmation available on any Ettus Research Wiki website? I don=E2=80=99t recal=
l I had seen such explanation on internet. Anyway, thank you so much for yo=
ur explanation!</p></blockquote><div><br></div>It&#39;s one of those things=
 that is not USRP-specific, but a generic RF thing. We don&#39;t always doc=
ument those (although there are plenty of cases where we do). Anyway, glad =
you figured it out!</div><div class=3D"gmail_quote gmail_quote_container"><=
br></div><div class=3D"gmail_quote gmail_quote_container">--M</div></div>

--000000000000c7cac4063854aa20--

--===============6644241778951012650==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6644241778951012650==--
