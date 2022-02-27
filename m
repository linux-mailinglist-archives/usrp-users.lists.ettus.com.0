Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1704C5AED
	for <lists+usrp-users@lfdr.de>; Sun, 27 Feb 2022 13:08:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84DFD384A4B
	for <lists+usrp-users@lfdr.de>; Sun, 27 Feb 2022 07:08:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oJkOEW8z";
	dkim-atps=neutral
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 3893838489C
	for <usrp-users@lists.ettus.com>; Sun, 27 Feb 2022 07:07:50 -0500 (EST)
Received: by mail-yb1-f172.google.com with SMTP id u3so15071804ybh.5
        for <usrp-users@lists.ettus.com>; Sun, 27 Feb 2022 04:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=DQonjga6QSpvIZIMl3RncR0lJo40xHkkx0vaQzAineY=;
        b=oJkOEW8zF2uZ8ZfPuqFuUv90DXsuXBOCLyrPOfV/f/H+RY2CAA6QbY9gQ97CpwAHd/
         7N5wfO5vwgoldfAzxjHVKJiWFjFIH/mWaH+sS/9fKTHGUPV1n2OEMaHT1iPKdqKEMR16
         Hc0z4kT35d2FwJJ4fOu+EcdBT5YrOQ5mafcLtLlZTD6lLeOr0Y+4guJuLgIUPAhnCbU9
         8yJAwo9/RVlH/HM7kan0xg6CDbFWbnlcIvrgmZh2rDYBk0dBYqt2dXAB2TxewZaJArA3
         2xkyl5pSEIbTQRpDqceGE+YBkpsnY0IG1blMbhmZeys6R84xVab45GDxFMvf1YcYNQys
         SkLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=DQonjga6QSpvIZIMl3RncR0lJo40xHkkx0vaQzAineY=;
        b=Gllycb9mjD9xnm1nuAykzfytyXKjCmA+50O3VFlXbL0ASG063toqJvM0GmH5h/sAnt
         8L4vrc7FGcBYN+7kSa/LKw43kH+fYKwQXVAN4yvHkNUuR6WUxmnmZGCiDryL06HP+1Rx
         wlnqRPTPfrxQdabQP47yEGFfd2TsNNNqqrDpvEWxyLWyj14eEsOYu5EAEIfMc0QvdNbS
         FdwmzE2dlEk9fBz23jhHuXeMoRpaotrStS5QKIf/3ULulNszpogN8rqrueuEy0TCSC6Z
         cLf6NmlgnxBWknBXvAeeS2e9Ys0zw4ceD1feYxusi1GklpeHs/h649nLRwU/evqKlfP6
         ODTQ==
X-Gm-Message-State: AOAM530cfaCL0DTppf3NC8VdVt8ZK2DSoTo5oxWKPnMYwTUG0Z/ZILXX
	s6dA0FBSp2qcSEOHOEIBrHAvBNkZ5K15wpqDMAVIk3G3
X-Google-Smtp-Source: ABdhPJxXvOoJA0WUASmvognuoezfOeUew+luUa0QnFv03gTvC87w9DK1ajzNrVNyZDlWqt2FvBjbpuB3vej8z4xqEk0=
X-Received: by 2002:a25:d6c7:0:b0:623:312e:e8b4 with SMTP id
 n190-20020a25d6c7000000b00623312ee8b4mr14411374ybg.462.1645963669544; Sun, 27
 Feb 2022 04:07:49 -0800 (PST)
MIME-Version: 1.0
From: Sadiq Iqbal <sadiq.zahid73@gmail.com>
Date: Sun, 27 Feb 2022 15:09:29 +0300
Message-ID: <CAD8PmbpSBj74xXqkDd_otMdQXuX1-iWbDy6V+m-JpHm_WAug_A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: LWHYDQGT3SK65G2WEVR7A7ZKW672KKZ5
X-Message-ID-Hash: LWHYDQGT3SK65G2WEVR7A7ZKW672KKZ5
X-MailFrom: sadiq.zahid73@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to estimate wireless channel using Matlab and ni USRP 2920
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LWHYDQGT3SK65G2WEVR7A7ZKW672KKZ5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7411524364781354635=="

--===============7411524364781354635==
Content-Type: multipart/alternative; boundary="000000000000d6215505d8fec751"

--000000000000d6215505d8fec751
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I am using matlab 2019 and NI USRP 2920 to implement a wireless network
which consists of two Txs and two Rxs. I am using the general QPSK code
which is available on the matlab website. But the thing is I can not find
the channel estimation required when using a USRP. Therefore, can anybody
guide me on this or point me in the right direction? or Provide a source
code for channel estimation using USRP 2920.

Thank you.
Regards

--000000000000d6215505d8fec751
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,=C2=A0<div><br></div><div>I am using matlab 20=
19 and NI USRP 2920 to implement a wireless network which consists of two T=
xs and two Rxs. I am using the general QPSK code which is available on the =
matlab website. But the thing is I can not find the channel estimation requ=
ired when using a USRP. Therefore, can anybody guide me on this or point=C2=
=A0me in the right direction? or Provide a source code for channel estimati=
on using USRP 2920.=C2=A0</div><div><br></div><div>Thank you.=C2=A0</div><d=
iv>Regards</div></div>

--000000000000d6215505d8fec751--

--===============7411524364781354635==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7411524364781354635==--
