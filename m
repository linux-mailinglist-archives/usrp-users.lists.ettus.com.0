Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A1B70F78A
	for <lists+usrp-users@lfdr.de>; Wed, 24 May 2023 15:24:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1B4FC38451B
	for <lists+usrp-users@lfdr.de>; Wed, 24 May 2023 09:24:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684934698; bh=T2v+5Jgv5hEwGk8+WDRlnCIUOLsMXEjYyYI4+09HpJA=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kNVmBrRrVri1MOn44W4oQ3GRQs6S9A8ex1oR7laowSHzjSH66UDZmNZ8oIvYYkAZj
	 ULlgas3M/NKZ/ImS1k0X0wDnlqDRxx4q4A1ZoEZhab7MK/mqaj/1saIw5/0BFJfgxa
	 mkFFE7i9iR5sz/BI0Sg9HL/bfLUDP8CW1CJOT41ZAcBWX7EVpQtlKIsggaUzsU/Cfh
	 WAGUM6Xf2pyMdCxXV3arjVEzZwT4oJIZvWyKSWvYeOF+1f8+WqxbZ7bMEbRwMaODjW
	 42Opmwp72hDhOnHsspty8dJqW/n+P8Vd0IJkQGQ/m8vQLYO/NcSFoeRaRn0K7tUhwB
	 RxK0TnLvQAuxg==
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 32C8F381346
	for <usrp-users@lists.ettus.com>; Wed, 24 May 2023 09:24:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="aZkkX4d3";
	dkim-atps=neutral
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-51b33c72686so223547a12.1
        for <usrp-users@lists.ettus.com>; Wed, 24 May 2023 06:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1684934672; x=1687526672;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=V9NVrslE3tSPFLQr9hqpaNd31KmJffok2np6wUObO2s=;
        b=aZkkX4d3pTWtcDxDuuvuYxAsyS4y55PQS1ujxy1g3nCHUkxkztw2ol2WfPRbdMv7CA
         62gdBpqN7HvjJtZb7GWMupWC20wcPTZNLgAT+YWdejL+p34d+c18eP+iV1TvYAV9B1rB
         w2oTgX8b+Ol/u3T75uEr6s+u5Rj0NVx5xhJtPX46zypokNxVGw/KKUwx5sBc8M6samlZ
         IXav+T4GdKotki+A94xLlqB9P0GCnpwgULcBfuT3kxYJDDxHksXlEMmKCNrlSztZbnM6
         OH+vnhHeFyWb5vRBgunKYf+0xK5Xdpa5DNtI9BKwsUMCbqL+fjv+rXzIMQaANeypdP6c
         r86A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684934672; x=1687526672;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V9NVrslE3tSPFLQr9hqpaNd31KmJffok2np6wUObO2s=;
        b=Qq1zqZg8x277Hlnz5cNRsmfgT2ki7bSLMbIHaVH54BqHftT9iVAPMD9b3H41VSp3gU
         +9U2L6YYgobAHtOGOfpfhiNd7htFIxPKWUGt6Uu0UMX+N96t9An0Cl7gnws9+GC5IY7S
         DILUWK+i0vWVLgmEESpGA5jzn2LB946oY8Qsr0hTRefmtJfD2CP/i7f/ofH6sxv5MEeT
         tuWxbBO5z+AQ1r12zKVyl/3V4J8v6d6Jrdhw58MFwSj0P25gpXSqplVtFJzsu5PLieaF
         d2ehbjvD6AvYDwqfwip/iW9IiBiej4WKUXir/XYr57UEAL6NunvEZBfBcFFvM2dMB0E2
         VLOg==
X-Gm-Message-State: AC+VfDyafK3mp1WobFfDz+qBzIUDIKeMItBU2AC9S9+TQ/pO90TGUSR+
	9tKCxlE0LjiLabJkiXm/okgTjYPDzxZCYeo29J4zcs9K/oJ60DjpxQBjeQ==
X-Google-Smtp-Source: ACHHUZ7Pqv6ayVZs/4BRVnNZBLcrphxzymswsw8TyAIaP/+sRCHHFhBCln9QNSuqWUv/vX2rBBWJ6GC69euHO/Us3Sw=
X-Received: by 2002:a17:902:f14d:b0:1ae:4bbb:e958 with SMTP id
 d13-20020a170902f14d00b001ae4bbbe958mr14532165plb.14.1684934671742; Wed, 24
 May 2023 06:24:31 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Wed, 24 May 2023 08:23:55 -0500
Message-ID: <CACaXmv-E656n82d-82sKP8cujH6oP0Loz-+6XP1DGttq8juEyQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: NETJH7MPNG2UQSTLQ6FCETWP6X7P6U4D
X-Message-ID-Hash: NETJH7MPNG2UQSTLQ6FCETWP6X7P6U4D
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Reminder_=E2=80=94_NEWSDR_2023_=E2=80=94_Thursday_June_1_=26_Friday_June_2?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NETJH7MPNG2UQSTLQ6FCETWP6X7P6U4D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0325079177915588008=="

--===============0325079177915588008==
Content-Type: multipart/alternative; boundary="000000000000944bfd05fc706c80"

--000000000000944bfd05fc706c80
Content-Type: text/plain; charset="UTF-8"

NEWSDR 2023 will be held on Friday June 2 at WPI in Worcester, MA (in just
over one week!).

The last day to register will be this Friday May 26.

The New England Workshop on Software Defined Radio (NEWSDR) will be hosted
in-person at Worcester Polytechnic Institute (WPI) in Unity Hall on Friday
June 2, in Worcester, Massachusetts, and there will also be four tutorial
sessions scheduled the evening before on Thursday June 1.

Please note that NEWSDR will not be recorded or live-streamed this year.

The event is free, but advance registration is required.

Parking is also free (registrants will be given parking passes).

Please visit our website at the link below to see the updated event agenda
as well as to register for free.

http://newsdr.org/workshops/newsdr2023/

--000000000000944bfd05fc706c80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">NEWSDR 2023 will be held on Friday June 2 at WPI in Worcester, =
MA (in just over one week!).<br><br>The last day to register will be this F=
riday May 26.<br><br>The New England Workshop on Software Defined Radio (NE=
WSDR) will be hosted in-person at Worcester Polytechnic Institute (WPI) in =
Unity Hall on Friday June 2, in Worcester, Massachusetts, and there will al=
so be four tutorial sessions scheduled the evening before on Thursday June =
1.<br><br>Please note that NEWSDR will not be recorded or live-streamed thi=
s year.<br><br>The event is free, but advance registration is required.</di=
v><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br=
></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif=
">Parking is also free (registrants will be given parking passes).<br><br>P=
lease visit our website at the link below to see the updated event agenda a=
s well as to register for free.<br><br><a href=3D"http://newsdr.org/worksho=
ps/newsdr2023/">http://newsdr.org/workshops/newsdr2023/</a><br></div><div c=
lass=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><=
div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></=
div></div>

--000000000000944bfd05fc706c80--

--===============0325079177915588008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0325079177915588008==--
