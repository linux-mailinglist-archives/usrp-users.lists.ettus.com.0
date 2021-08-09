Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF6A3E4A20
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 18:41:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB622384994
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 12:41:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pMzh5sM0";
	dkim-atps=neutral
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 7A0FE384955
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 12:40:42 -0400 (EDT)
Received: by mail-qt1-f174.google.com with SMTP id c6so8711893qtv.5
        for <usrp-users@lists.ettus.com>; Mon, 09 Aug 2021 09:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:thread-index
         :content-language;
        bh=vFQWQaDPtgWxCHATZUrlbi8jx50UnMXokdd8tf9ft28=;
        b=pMzh5sM0MacUYDd+P7kWx2rSIgek5fOQSKJH0wDJmFziFMYpN3r0f3f4goJU93NO+Q
         QTpYjLjgRatwe/ZPR6EyIkdhLlc+ypVrY6zKaUDRLtsTECHA4gNHSWG9xDlI8vzHDZpW
         2hgBx9HOX6y5/T+jTbyBTRKgDHlz0btdumsA8QN2yrmF1ri5c7Wuwm4Zae9MPyLnuD0e
         HCoC206yx8EXYbjxwMtIqJI/2dkaR8Umz6UHmOYCV6pJcjHhxEuanRgIIpimqKBlI2yY
         NIs8ZbGHXNYlAX0v8B8/ZmvJRgh0/IbUYPj3tARE+RolXaHeX7/uV4t6TsqzYA8UPKju
         gkAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :thread-index:content-language;
        bh=vFQWQaDPtgWxCHATZUrlbi8jx50UnMXokdd8tf9ft28=;
        b=BYTaT4gUy+7HfqsLVUqG0rSWumHbjeZ5Hh5O46um1n4rdyVFFmhzDeDPUlEMUHjc4G
         4nvDiEZgGdANutXGWrXNxoYdA9HGbmmXcsOhmLKr/4gISwf7IyyTOVlEGCNk30AF2daI
         b7UZowHyhtbfZP4rxyVJ/hZ3WC5ffs9eaZECc9YKKWWp5izOIp2c7/N1Z3/VZ7DzFgwX
         rvg59sdScvacJkMOq8YcZgYyeLr+j11KjVHE7K03V77vlDAcE4bYX1W7iBTqg+6cMnsg
         DZROEL7mFT0DexVEQDPcq7YBtB0w1lgPBoFntfOwn3j1mh0RnL/yA0odt39KWTAlcv+6
         Y1UQ==
X-Gm-Message-State: AOAM533lzLf7CrTv7Ur3NcKQHhnz7A0Hjfv2VelBV6ty21WBP2YmEmk6
	lSDibtDK3opZ5d/EPj5Ji+ApfxvT4Kw=
X-Google-Smtp-Source: ABdhPJzRvLTMYDmLiw9qE/HL+uA+2Fsl48Nz8RU9a1PbBthYd6PPDQEKv+cKu2wUvQCkDJkVPM1Seg==
X-Received: by 2002:ac8:665a:: with SMTP id j26mr4039041qtp.173.1628527241632;
        Mon, 09 Aug 2021 09:40:41 -0700 (PDT)
Received: from DESKTOP70IB7GE ([129.10.131.194])
        by smtp.gmail.com with ESMTPSA id n189sm5861029qka.69.2021.08.09.09.40.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Aug 2021 09:40:41 -0700 (PDT)
From: <zhang.weit3@gmail.com>
To: <usrp-users@lists.ettus.com>
Date: Mon, 9 Aug 2021 12:40:37 -0500
Message-ID: <015c01d78d45$aa24fe90$fe6efbb0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdeNRH9lt0rXYYEHTT6ISVCZYuyPnQ==
Content-Language: en-us
Message-ID-Hash: OMKNR3YSLFWNIUJFKPWVKLBY4JFDXSBY
X-Message-ID-Hash: OMKNR3YSLFWNIUJFKPWVKLBY4JFDXSBY
X-MailFrom: zhang.weit3@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] FPGA as OctoClock-G
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OMKNR3YSLFWNIUJFKPWVKLBY4JFDXSBY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9083687534240332693=="

This is a multipart message in MIME format.

--===============9083687534240332693==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_015D_01D78D1B.C14FB9E0"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_015D_01D78D1B.C14FB9E0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I am thinking of using FPGA to generate 1PPS and 10MHz signals for
multi-USRP, which plays the same functionality as that of the OctoClock-G
module. Will there be any potential shortcomings to use FPGA compared to
OctoClock-G?

 

 

Thank you,

Weit


------=_NextPart_000_015D_01D78D1B.C14FB9E0
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
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
class=3DWordSection1><p class=3DMsoNormal>Hi,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I am =
thinking of using FPGA to generate 1PPS and 10MHz signals for =
multi-USRP, which plays the same functionality as that of the =
OctoClock-G module. Will there be any potential shortcomings to use FPGA =
compared to OctoClock-G?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thank =
you,<o:p></o:p></p><p =
class=3DMsoNormal>Weit<o:p></o:p></p></div></body></html>
------=_NextPart_000_015D_01D78D1B.C14FB9E0--

--===============9083687534240332693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9083687534240332693==--
