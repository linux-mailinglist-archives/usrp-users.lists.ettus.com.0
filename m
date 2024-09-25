Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D25F986533
	for <lists+usrp-users@lfdr.de>; Wed, 25 Sep 2024 18:53:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D8D273855BF
	for <lists+usrp-users@lfdr.de>; Wed, 25 Sep 2024 12:53:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727283199; bh=TH9SL5QTVNyR9f/GUTcbw47fPoSLaZkmQBL/6uf6YZo=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Qn4/SV20gr0TbRUuPuoWg/B0LRmH495kAPqUMiGVhyyGDtG0KyNN+cjGqD55aUPSC
	 5/v6lnEOYOKqXXo8DZqcD1Gr7sod+Ed8k4a9LKQfdc8mIBGZJXR1OlL0O+VqWTmGeX
	 5Ds4d4m4jzWmQ9z1C+gnv5B4cC6iu7O3JR6YVb4Rb/QNwJgW6MAgzXUqd8DHTpBOdI
	 F8+3q4tKb28gEBZaFzIH8f3gKGe6BFPU9mV8uG8j0Gt1xUcMo0Ecl4l9G3f49Uv1RS
	 S7oF7CECrxk/3qj2fVrZ3J+ufoqMZiJzsR+EdpD2TioeuW1bi+OOhRTvs2Dg4PakLi
	 KY7q5YWvhbE5w==
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 37BDA385520
	for <usrp-users@lists.ettus.com>; Wed, 25 Sep 2024 12:52:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JRkhv6Tu";
	dkim-atps=neutral
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42cb1758e41so43255e9.1
        for <usrp-users@lists.ettus.com>; Wed, 25 Sep 2024 09:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727283136; x=1727887936; darn=lists.ettus.com;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gFFsASrHgdLanGP93BVTSRPU5SgRhnLPyaDmjXyNgeg=;
        b=JRkhv6TurSBNbgq6jASj1XkXNeZjJGMvs/BMFB62HH4bpAW2xKT7oRyTd3s67JcfR/
         BWR+GZd3juXRxFDP3cCGf3RZ2AfsBaRY3aqicL8MxmrHlaTfD66WdOGH3QGv2Ihi3B+c
         T+I5pFt46IOqCPS/GZJfKhSCmRWlXCIa/lYrDCJ+xhDC45NbsI1J1mxZj1lFCnYCi+RR
         ICxUf/q0Q5WBw9ib1J0YeGIH/MzGbhJyvBXXnDPCEL+ka97OWaQJz7HqNBzE0ptkoVab
         BCoSzMHJLleDv5RXz5tAgg8SJD5lGrb8V+hieARXBSiIQc/N5lqQHGn6oJOr81X2jZbf
         y1DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727283136; x=1727887936;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gFFsASrHgdLanGP93BVTSRPU5SgRhnLPyaDmjXyNgeg=;
        b=RC3KUSYbOaqO35oxIOsrGPj+e7G2BCkvuLyyBTKmtyDGvkjiTeZWUrs/6WNHXojC2G
         +DKA7FXGo2ysmAeEl46jUHvr/ZN4YBTm2PM0qZ1JlyQMFlV0IExaFR2xbPG77MtMjhk+
         cnz9tkDSZFllA20fLD8H/vvF8WP3l3Me0tYdfn4lbnaqJG3BW1xGTG29DtcJEZMOZkv+
         BcZpck1RBUBdT5xPIFkNDT9mTxjxupeTR+xQ/XeBj/YdalR2/DLd7nDKXfKH6VJcOWBG
         zVfNwl/x2fw2uRddayZgrpEbYbPNuHetPdJHUV7ORiqqKYNmJQwmoJd2YXRGgnBzM5GZ
         8mHQ==
X-Gm-Message-State: AOJu0Yz9GlxPji6Ou4LOYxDI69oyVSFT66IipbWUNbZDek6PktQpeFZN
	g30eNk8fr7czHdJo/g4ZWNElRb68bSQ1j54BgZf+DsoKL2BvCpCkTBWmrA==
X-Google-Smtp-Source: AGHT+IEwdWuffrUdDO72Ghs229vU0CU9ToSSw1y8awi525PXjJQ+k+AEIFyKwKWBNcOeM4KkljaVCw==
X-Received: by 2002:a05:600c:1c04:b0:426:6379:3b4f with SMTP id 5b1f17b1804b1-42e962422c9mr20033735e9.31.1727283135937;
        Wed, 25 Sep 2024 09:52:15 -0700 (PDT)
Received: from DESKTOP5CB5QGU (tuc-211-033.hrz.tu-chemnitz.de. [134.109.211.33])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e96a36760sm23919005e9.30.2024.09.25.09.52.15
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Sep 2024 09:52:15 -0700 (PDT)
From: <john.achkar.r404@gmail.com>
To: <usrp-users@lists.ettus.com>
Date: Wed, 25 Sep 2024 18:52:14 +0200
Message-ID: <001901db0f6b$4631fcc0$d295f640$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdsPa0Wfj0NR8DtwTYy3ssRtAB4qHw==
Content-Language: en-gb
Message-ID-Hash: HPMRZFMVUO5FR5LSXSVO2CBHHT4O7FRU
X-Message-ID-Hash: HPMRZFMVUO5FR5LSXSVO2CBHHT4O7FRU
X-MailFrom: john.achkar.r404@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Tx Rx USRP port isolation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HPMRZFMVUO5FR5LSXSVO2CBHHT4O7FRU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4766651392898121769=="

This is a multipart message in MIME format.

--===============4766651392898121769==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_001A_01DB0F7C.09BB1AE0"
Content-Language: en-gb

This is a multipart message in MIME format.

------=_NextPart_000_001A_01DB0F7C.09BB1AE0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I would like to transmit 40 dBm using USRP N321 using one antenna as TX =
and RX using circulator, the circulator isolation is only 18 db. What is =
the best way to transmit such power and avoid any damage?

Best regards,

John


------=_NextPart_000_001A_01DB0F7C.09BB1AE0
Content-Type: text/html;
	charset="UTF-8"
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
class=3DMsoNormal><span lang=3DEN-GB>I would like to transmit 40 dBm =
using USRP N321 using one antenna as TX and RX using circulator, the =
circulator isolation is only 18 db. What is the best way to transmit =
such power and avoid any damage?<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-GB>Best =
regards,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-GB>John<o:p></o:p></span></p></div></body></html>
------=_NextPart_000_001A_01DB0F7C.09BB1AE0--

--===============4766651392898121769==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4766651392898121769==--
