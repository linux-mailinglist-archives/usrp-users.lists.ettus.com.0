Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 422E14126DD
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 21:24:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 682403849F8
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 15:24:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="J0aU91jd";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 1F1ED384171
	for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 15:23:53 -0400 (EDT)
Received: by mail-qt1-f172.google.com with SMTP id 2so16725988qtw.1
        for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 12:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version:content-language
         :thread-index;
        bh=0k5gfSP02wuVw4OM7RgXrri188nKxMB9cub5M0aGKuQ=;
        b=J0aU91jdj+fl82eRgDTxCfXXK3Jk9+fPWb5vTjKiQwtB5O8TQz/apQ1Sx/visRp5lX
         pvPzH3sFic6L247SL5BFvGpW0kNZopCFRxWSxadQj7javNiFjA5NsFFC3dPMmNPwa9t3
         LCTbG3Ax+zQ2t5LwdmuqZjPahGlgsTD6y7qFZWl55UywcblqWrSwnNH0u5aRHgeymL4M
         GrsE3CdD00F8lT1JlmmouS4NFwC0R7q7pd+kOCsKbaupKawZqaXudP+GtIjcUvtTgxAG
         WwhLQSr1Sp6FAU6ptE80UuPCRePPjHcpkUY5FPD10VftIzZqv2DqRd+GrtINgAelzsu5
         LCBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-language:thread-index;
        bh=0k5gfSP02wuVw4OM7RgXrri188nKxMB9cub5M0aGKuQ=;
        b=fCVrJNTE00DNCAayXdePbTYWR1XSD2dwfqumyqQ2t44WKuFUV1PLRGHPpJXVF/YUNC
         yhG1YvqjqjODGwY5o7tpaEmoHO8T49sG9MkUHS9phwucS35UNYbYlXqSAZPZhx5MakTv
         0ZR5jCAH8y8FxAjCNI22gRb9ZuOAiL1I43g5PMZGlteAOkTZhalSskG2K2atDuyE2ptk
         UTFOOJdKDJPF+8g+vi1/mT83cn2W/WOxxlnzKiSalBV8MQ4BWJqPxogVof8nOXNOtnUs
         diwnzJi5ASR6b/A4hlSzoh7h2swbsjkghlfD0J2rgbNzLNC7R7thb+ZIU82lSJ7rfcPM
         Js4A==
X-Gm-Message-State: AOAM531F9asDMCQNCmXPnRVL+8Th0NNCY8n5GCNcBLTtcUMKJuI/HSNj
	8CK41wtrNq9elS/aUqUgAlFsOVmBkTg=
X-Google-Smtp-Source: ABdhPJwDC4GbdQquF3kL5pT9ww6ISlXe6i2bZUK49tfRBsBKL24UHTk9uJmLZ9YDHjuwZNRvodKOQw==
X-Received: by 2002:a05:622a:1345:: with SMTP id w5mr24784585qtk.100.1632165832049;
        Mon, 20 Sep 2021 12:23:52 -0700 (PDT)
Received: from DESKTOP70IB7GE ([129.10.131.194])
        by smtp.gmail.com with ESMTPSA id m27sm10376995qkm.57.2021.09.20.12.23.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Sep 2021 12:23:51 -0700 (PDT)
From: <zhang.weit3@gmail.com>
To: <usrp-users@lists.ettus.com>
Date: Mon, 20 Sep 2021 15:23:19 -0500
Message-ID: <006201d7ae5d$5aa3e140$0feba3c0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AdeuXVVUVhRZq1UWRRq2uiVdNn/LqA==
Message-ID-Hash: GZXRREXZ7J2OSJHXKWMXEFCIXXWFCRJB
X-Message-ID-Hash: GZXRREXZ7J2OSJHXKWMXEFCIXXWFCRJB
X-MailFrom: zhang.weit3@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] LO initial phase changes when calling get_tx_streamer/get_rx_streamer
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GZXRREXZ7J2OSJHXKWMXEFCIXXWFCRJB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5747990723744958688=="

This is a multipart message in MIME format.

--===============5747990723744958688==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0063_01D7AE33.71CE4E70"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_0063_01D7AE33.71CE4E70
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I am playing with the B2XX series boards. I noticed that the LO initial
phase got changed when calling the API get_tx_stream (or get_rx_stream),
which means the PLL or LO are initialized. Why this stream command is
related to the LO settings? I would expect it is only related to the
baseband and there will be no change to the RF settings. Does anyone know
the reason? Thanks!

 

 

 

Regards,

West  


------=_NextPart_000_0063_01D7AE33.71CE4E70
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
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I am playing =
with the B2XX series boards. I noticed that the LO initial phase got =
changed when calling the API <i>get_tx_stream</i> (or =
<i>get_rx_stream</i>), which means the PLL or LO are initialized. Why =
this stream command is related to the LO settings? I would expect it is =
only related to the baseband and there will be no change to the RF =
settings. Does anyone know the reason? Thanks!<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Regards,<o:p></o:p></p><p class=3DMsoNormal>West =
&nbsp;<o:p></o:p></p></div></body></html>
------=_NextPart_000_0063_01D7AE33.71CE4E70--

--===============5747990723744958688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5747990723744958688==--
