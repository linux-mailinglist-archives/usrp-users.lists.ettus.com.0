Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43590A387D3
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 16:40:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1FE3D385956
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 10:40:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739806858; bh=F8OpWtFxe8nINxE/NPC5GTmAwIrqg3phX9fJFcUTN44=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tnYoQtnRcnsqTMF/F6Fb+8HvCGVkX4haiTHoy82VBL0+ZYcWh8uuewkDScVl3x7eJ
	 T+E+iBWTGIXB/yMwWW2obb/EmDKnKf5LiXaocZ7xmQ1kC0NIgcvtP7dEE/cErwOuYx
	 jjUy2ysQTehIeia5sNnuRlGoIHsbP1zrMfrqUeUWBxcvSK65/yS7zxIIpfmIosI+t3
	 i+GMVfMrDpsBqhdVdYLv/Ym4jnwuJIHqNEr3nUSh5DnZMGt9aSBYP/gGQ7gBTGCEYW
	 ol5BTy/H93HRGPJ7Gnz06Gef2zllpWfKQVNqzKELoOjeRjCH9BCEMn6Wr2yWuwbpTl
	 JXseixhVRuBJA==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id BB685385956
	for <usrp-users@lists.ettus.com>; Mon, 17 Feb 2025 10:40:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D0tLWi5K";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ab771575040so1084720366b.1
        for <usrp-users@lists.ettus.com>; Mon, 17 Feb 2025 07:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739806853; x=1740411653; darn=lists.ettus.com;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BBO62ZvspMOIy5uWRm7OOl+pXnK0fCsnJ5vdi8MrZ8M=;
        b=D0tLWi5K2O+9G4B1mbJJD3RMuAXrO0a41boD8nS91pvb0tx0cCKvklYnCPB8VQz4Hs
         cfBvAS+pEzSZ7GckxbWALyAU3iWf96z609yn0FuLQ1c05rOhuuZvkkEJyGIvY6ZlYNcq
         j4YzT0uePLc87V0NkQRL9QnfHXohXwKN/GtFmtr2eSAZzlezNML130mHPWHqU3gHXK4j
         f7hr4pN24b4D2BpkN2zYAREJkgtVjseXCp55Ud09V3dh73bwjc91o26j0fXM3X+WVkyP
         5HP8cFZcIQNZsl9jApSXid561EvLfVdyQYO4qkZ9nEZwQbGOwaiUXVwKyoMgrrEG0NZu
         e99g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739806853; x=1740411653;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BBO62ZvspMOIy5uWRm7OOl+pXnK0fCsnJ5vdi8MrZ8M=;
        b=dEY3JxcJrd560oY//Cjpnc/3gK1vz2N2vUiQnPYvKqC1VcCDgO75SRmspCBVycHuuE
         J9NHUJBc1ruYLEbFABoSBV17udd+Mb+G+UFATAPtkJqRHUKd/12iJsJZuq0gRGdeSQkL
         md8AigxaAuvHXd60buUGMPEQ8tDVyVXP7ezSX8aAcxO6d/y/zMd0BnYz8sd+JUsBom5D
         WWLaBb4Nb6CpXGt1h61QlDwoeKcw94BV3z4eE7IESA2osZEs3K6Vah41NgOhhsIn5nSy
         Gv+vZchMrrvGfgDRuUL4O3101vWK/Nsqbd3VDVHqTqGbgRqLx0AcG5eiKTxUwoTM5PuN
         rzMA==
X-Gm-Message-State: AOJu0YxVWBl0l6PaJnONqvfRkakMcoAFK9Fi2HYUw6sStWI4rwx5aJ8t
	rvxe6ugZbNSbd6BRvldztevZhp7VejPj2UQfQ1nf1NC651EmtowZQMysmAdu
X-Gm-Gg: ASbGnctZSJKmML1H6jemM5380JKaq+o9oR54fHtaMEscv9kgV64uL+xv5QNAHZp7nyI
	G2gdtIwOOtG3SNrFZ8iIXjsC9VlUrwpDczH1OK7vEUNeN3uJhr8PqG/lLH2B8puZqO5m7AVyPR+
	yAsipY6u76ERc5PsJFfWmcpfYRpUGwG7JJwsu+4Y9tEDu0DJgeP2zN8vT6VMPz7xs9LRVsJQgqH
	tyrZ69Y0Ch0L7wQW8pfGZQAGgl+H8BJvRD/406aAy4gnVWoWlbY2AHcSwPKGuuoHAN/7YOVtriE
	c6diREszUpo1Nm+k
X-Google-Smtp-Source: AGHT+IFehoBEnyVw7hBaHyB0oXAKtzhKAC+q7n7zWqZJUycPfr3/fo2qmMZxRkATUKCgrd3vJqCyIA==
X-Received: by 2002:a17:907:9714:b0:aab:a02c:764e with SMTP id a640c23a62f3a-aba50fe9f48mr1775057866b.14.1739806853431;
        Mon, 17 Feb 2025 07:40:53 -0800 (PST)
Received: from DESKTOP5CB5QGU ([2001:638:911:b28::26c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba532594a0sm916554166b.68.2025.02.17.07.40.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Feb 2025 07:40:53 -0800 (PST)
From: <john.achkar.r404@gmail.com>
To: <usrp-users@lists.ettus.com>
Date: Mon, 17 Feb 2025 16:40:53 +0100
Message-ID: <000801db8152$54ff4b00$fefde100$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AduBUcrNuUY7vrwhQ/ixuLfwG8R0hg==
Content-Language: en-gb
Message-ID-Hash: JTXT4HBID7DNED6E3GEXYF7B6RIUU2CY
X-Message-ID-Hash: JTXT4HBID7DNED6E3GEXYF7B6RIUU2CY
X-MailFrom: john.achkar.r404@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] High power TX/RX same antenna
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JTXT4HBID7DNED6E3GEXYF7B6RIUU2CY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4155287363572748281=="

This is a multipart message in MIME format.

--===============4155287363572748281==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0009_01DB815A.B6C49D60"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_0009_01DB815A.B6C49D60
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

=20

I am using a N310, with OAI to transmit 5G signal. I want to transmit 40 =
dBm using one antenna connected on both TX and RX ports. The best =
circulator I found has 18 dB isolation, which isn=E2=80=99t sufficient =
considering -15 dBm USRP max input power.

What is the best approach to consider?

Thanks a lot.

=20

Best regards,

Charbel


------=_NextPart_000_0009_01DB815A.B6C49D60
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3Den-DE =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span lang=3DEN-GB>Hi,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>I am using a N310, with OAI to =
transmit 5G signal. I want to transmit 40 dBm using one antenna =
connected on both TX and RX ports. The best circulator I found has 18 dB =
isolation, which isn=E2=80=99t sufficient considering -15 dBm USRP max =
input power.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>What is the best approach to =
consider?<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>Thanks a lot.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>Best =
regards,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>Charbel<o:p></o:p></span></p></div></body></html>
------=_NextPart_000_0009_01DB815A.B6C49D60--

--===============4155287363572748281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4155287363572748281==--
