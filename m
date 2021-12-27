Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8234D47FC2F
	for <lists+usrp-users@lfdr.de>; Mon, 27 Dec 2021 12:25:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4662A384482
	for <lists+usrp-users@lfdr.de>; Mon, 27 Dec 2021 06:25:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PCqYqe0F";
	dkim-atps=neutral
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 0BDBD3848A3
	for <usrp-users@lists.ettus.com>; Mon, 27 Dec 2021 06:24:22 -0500 (EST)
Received: by mail-lj1-f182.google.com with SMTP id h21so13302501ljh.3
        for <usrp-users@lists.ettus.com>; Mon, 27 Dec 2021 03:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=bhIZjmJY3iZMs7i2kzAb31/g0tp2Ql2Fc9XsmKfpoN0=;
        b=PCqYqe0FDTbC2R6BACuVvCacCNy5Lu9CvzpYCg0Q2LCvER+cgkuNsInOZCb3CjkR2d
         cPsjQ+hxrqV0z1mMB5vjsGw26BkungxVkl4LhD781pxF+S9VCIz4mGCDG2AtdWdwCWc6
         vgmEvq+qadTrw8E2DHteSrJVyVhCeJVBxjzFvOL161bVIJeMW8RexWYLM+c+2MHZsPmm
         X59jQmB2/GdSC1GxNRxJGyrr5CZObgu5CnbZ+zLSmKdokzAxNkc4tottqVDARzDuXWMB
         crF5imsmWfbzX9avSjKDrNiZa2FIVLGFvoHohM6/RI3qu8twMDGl3Gy4bzdlRYVx8Bvq
         LsAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=bhIZjmJY3iZMs7i2kzAb31/g0tp2Ql2Fc9XsmKfpoN0=;
        b=WDuc6tyKYrhCkGcEWTHuMMgFKcdMo0BhTZc/hgR/VJCG9EcnY7N64FnELUPFWUwdB/
         GDsIQkOuf5wy5d57+CYlT3Qg4KNL8TUywJIY0w3q7k4lpjyOYOVfT55bqrNnyKwBYycZ
         Vd7CdujxSkfE5x+CQnG3a3q3rxlHxzswnRgnF+WEOArRvjrVpMyMyb4w2hE6hFyqgcts
         pRYFzAVHizj2CRktF+Jap19sCZTO2FCAQ1vEhs47KFJAAfjciIoZgYxqN1814G9GnYzL
         XBAP0BgwU13Fi9jdYUi3QJ6upujALaQxTOSEUGJX8VWqxSpo0reStxwtwfRKcwXI9TVh
         K2Pg==
X-Gm-Message-State: AOAM530tLXbTHIlo96w62XHRgjZ/2DtHQGwyROEduM/51ygNChM10MIm
	vWr+2CvilwqYEepOs4WrCuiGt2J52lziG1vWUFxEEyPe1b8u1Q==
X-Google-Smtp-Source: ABdhPJzGmbokDYU+wST/Q7F8EV5XU4ICg5AhujYz93M/zVPauQpdcI8RPxTtaAqI/RF3CJuiXAEKB/oHOWBxA6ufBUo=
X-Received: by 2002:a2e:a0d8:: with SMTP id f24mr12618410ljm.368.1640604261043;
 Mon, 27 Dec 2021 03:24:21 -0800 (PST)
MIME-Version: 1.0
From: Berkay SAYGILI <zuhasdasn@gmail.com>
Date: Mon, 27 Dec 2021 14:24:42 +0300
Message-ID: <CAA7+tqQ+2WwZt80A8nNDBD9PVohowoTXFw1UHPyba37i0GuQGw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: IVWIEY7JZ7O33S2Z6TAAO4QIYCOQGN3R
X-Message-ID-Hash: IVWIEY7JZ7O33S2Z6TAAO4QIYCOQGN3R
X-MailFrom: zuhasdasn@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Network card compatibility
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IVWIEY7JZ7O33S2Z6TAAO4QIYCOQGN3R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1710269840955745160=="

--===============1710269840955745160==
Content-Type: multipart/alternative; boundary="000000000000324fbd05d41ef2d4"

--000000000000324fbd05d41ef2d4
Content-Type: text/plain; charset="UTF-8"

Hello,

We have purchased "NVIDIA MCX4131A-GCAT ConnectX-4 Lx EN Adapter Card
50GbE" to work better with the DPDK interface. We had problems with using
DPDK with x520-DA2 Intel NIC before. Ettus suggested us using Mellanox
cards. We have also purchased a QSFP28 to QSFP28 DAC cable. I updated the
N320 fpga firmware to XQ. I can ping 192.168.10.2 (sfp0 in embedded linux)
from desktop computer. However, i cant ping the 192.168.11.2 (sfp0_1).

Since there is no documentation on using QSFP+ interface with n320, I
checked the x410's documents. I saw that ettus sells it with QSFP+ to 4
SFP+ cable. I hope I can use QSFP to QSFP cable with N320 and Mellanox
MCX4131A-GCAT NIC.


Best

Berkay

--000000000000324fbd05d41ef2d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>We have purchased &quot;NVIDIA M=
CX4131A-GCAT ConnectX-4 Lx EN Adapter Card 50GbE&quot; to work better with =
the DPDK interface. We had problems with using DPDK with x520-DA2 Intel NIC=
 before. Ettus suggested us using Mellanox cards. We have also purchased a =
QSFP28 to QSFP28 DAC cable. I updated the N320 fpga firmware to XQ. I can p=
ing 192.168.10.2 (sfp0 in embedded linux) from desktop computer. However, i=
 cant ping the 192.168.11.2 (sfp0_1).=C2=A0</div><div><br></div><div>Since =
there is no documentation on using QSFP+ interface with n320, I checked the=
 x410&#39;s documents. I saw that ettus sells it with QSFP+ to 4 SFP+ cable=
. I hope I can use QSFP to QSFP cable with N320 and Mellanox MCX4131A-GCAT =
NIC.</div><div><br></div><div><br></div>Best<div><br></div><div>Berkay</div=
></div>

--000000000000324fbd05d41ef2d4--

--===============1710269840955745160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1710269840955745160==--
