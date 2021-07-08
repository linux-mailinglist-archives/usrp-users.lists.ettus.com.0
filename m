Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7233C1A7F
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jul 2021 22:21:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BF975383E7F
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jul 2021 16:21:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UdGdA0mi";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id D3772383E52
	for <usrp-users@lists.ettus.com>; Thu,  8 Jul 2021 16:20:39 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id 77so5257464qkk.11
        for <usrp-users@lists.ettus.com>; Thu, 08 Jul 2021 13:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:thread-index
         :content-language;
        bh=VSP0SC1Fb7O2ToIe5jrzCnhtpVDELvhdKpVjh4JTp44=;
        b=UdGdA0miBqbLHKZS41QQE9Bw6XIqfs5WOXFdB3W24+Nz+Sc5nCCtVmYKb2OPH46lb+
         JnMckZR2XQSoirn1G/57C4h3MN7vCpyXcfICfTwrIESW7EuefkfAkvHgq+TOdUU3saJk
         i6tBeY2dmz4NizbelXCawKUBCWCgwmHkQ/GQILWgFjS8pW7STIfM2Kk42SGcC5iPzber
         g4Dl1t7D8nqXkRg72TALfU0hnxZgOvumfN6wZ6O9ocdLSG1v2TbYiPaQky7cLDlZyaIB
         VxnSwvXKPkFVOld18Itx7tbejZhgN9hlKKzK5on7oq1DutpDuebsApNX0SwEMNOG4SLK
         ntHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :thread-index:content-language;
        bh=VSP0SC1Fb7O2ToIe5jrzCnhtpVDELvhdKpVjh4JTp44=;
        b=mDJC+2/B8GXlgaX8mBayaJ/ObnuMs6UpEUnYaF5hghZqou6QGKGN3pk534mzuvfgix
         9JUMT7yKEdKMIrllUBechouZu018yM+0mi8gm43iaTH8cNKo2Vr5mrXqBSckZ0+FSJpx
         7CFEN6yMVO9M6svyF+XEOUp+zk/Q6Z9DaT8s0o5U8jyPMr9DWgSVEkBh+ggsAYG6SLS1
         YTfU4WuBt2e3P12R/xOYcnlvoa1wnQ2XxT0paiUIERu/P7Pa+uSmo6ygWZEw4gqw3aeH
         GAomJnof+puSw6MFHxBJzx4QPG98vfLYWZcAPY1IpcwbTmmftUjL0kOj8e8gxMBUNqMd
         rH6g==
X-Gm-Message-State: AOAM531F6jvT08+HiUI+1xYBJBlHj0gBIFzxidVS8mIJehE9pha7eDzq
	VOp9rsaLHSreGA8uD6pm6I2IpPerA9DHMg==
X-Google-Smtp-Source: ABdhPJyE3dyQlRw+TV0/X+JAmF+gmoo4r7TsatlyxwQbPYKs4CxoePzB4CJKabQwAMrnTEyRAj4XeQ==
X-Received: by 2002:a37:2e86:: with SMTP id u128mr33080759qkh.26.1625775639035;
        Thu, 08 Jul 2021 13:20:39 -0700 (PDT)
Received: from DESKTOP70IB7GE ([129.10.131.194])
        by smtp.gmail.com with ESMTPSA id d15sm1354273qtb.72.2021.07.08.13.20.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Jul 2021 13:20:38 -0700 (PDT)
From: <zhang.weit3@gmail.com>
To: <usrp-users@lists.ettus.com>
Date: Thu, 8 Jul 2021 16:20:27 -0500
Message-ID: <026701d7743f$12e04bd0$38a0e370$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: Add0PdGaQwOxi8grSZyCq/wBR6Ss3Q==
Content-Language: en-us
Message-ID-Hash: WPLBPBHYKYUQHQASKG3NAFDIN4RUQJPH
X-Message-ID-Hash: WPLBPBHYKYUQHQASKG3NAFDIN4RUQJPH
X-MailFrom: zhang.weit3@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Initialize LO Frequency
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WPLBPBHYKYUQHQASKG3NAFDIN4RUQJPH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4544496494455202294=="

This is a multipart message in MIME format.

--===============4544496494455202294==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0268_01D77415.2A0AB900"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_0268_01D77415.2A0AB900
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

 

I am playing with a B210. I noticed the LO TX/RX frequency is initialized to
1.0GHz whenever the USRP object is created in Python by uhd.usrp.MultiUSRP.
I am trying to have a different initial frequency, for instance 700MHz,
which means that the LO will always operate at 700MHz whenever the USRP
object is created. Note I do not want to call any other API functions after
the USRP initialization. Do anyone know how I can change the initial LO
frequency? Thank you very much for your sharing in advance!

 

 

Thank you,

Weite


------=_NextPart_000_0268_01D77415.2A0AB900
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Hi all,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I am playing =
with a B210. I noticed the LO TX/RX frequency is initialized to 1.0GHz =
whenever the USRP object is created in Python by =
<i>uhd.usrp.MultiUSRP</i>. I am trying to have a different initial =
frequency, for instance 700MHz, which means that the LO will always =
operate at 700MHz whenever the USRP object is created. Note I do not =
want to call any other API functions after the USRP initialization. Do =
anyone know how I can change the initial LO frequency? Thank you very =
much for your sharing in advance!<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thank =
you,<o:p></o:p></p><p =
class=3DMsoNormal>Weite<o:p></o:p></p></div></body></html>
------=_NextPart_000_0268_01D77415.2A0AB900--

--===============4544496494455202294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4544496494455202294==--
