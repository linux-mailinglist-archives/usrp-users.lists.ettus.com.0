Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 737FB4511D5
	for <lists+usrp-users@lfdr.de>; Mon, 15 Nov 2021 20:18:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18B66384271
	for <lists+usrp-users@lfdr.de>; Mon, 15 Nov 2021 14:18:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YwYe7Jin";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 481503840EC
	for <usrp-users@lists.ettus.com>; Mon, 15 Nov 2021 14:17:10 -0500 (EST)
Received: by mail-qk1-f181.google.com with SMTP id i9so17996405qki.3
        for <usrp-users@lists.ettus.com>; Mon, 15 Nov 2021 11:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version:content-language
         :thread-index;
        bh=d8jUl7OC4hpplz6cq6XbqXmLhWdgHf70B5WWCN0X4To=;
        b=YwYe7JinZvdRWA8UfwdSRkd/rmevp4aCMqGr74Lu7VpEcQxvuWBEMeuq+pnT+vNgCc
         Ars0TgRo0rxaF3P3+K5sCjcqaakJkEkZ9jjS/YMBFIGIA6C/YvwTqeo3ekgU4hXhPRdq
         IFac/loHhV0haS9jVOEUxMTUiU490npSgTrE4QJbBh1GclGAT25Hz+iSzwlyocptRAXc
         YRP5tIWhSN0ZnwVtgU5tMv2e26cp9mMNw3vjxSoziT+SmTAKjBcwbrBD1SfjL1cO21C0
         DFIlezFjKNBXx0wYKzf16hcKynnDAQKtoROF/R7L5BREMHZjJS4KqfqFP7uTwusH8XIO
         mITA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-language:thread-index;
        bh=d8jUl7OC4hpplz6cq6XbqXmLhWdgHf70B5WWCN0X4To=;
        b=IxChG4PSLa5lufEEA4nj430BZzP3QUcet4Sb1LX9sG6xmsf2CvE2bm26awoq9I/1e+
         msFoDRa1fy5ysbg63uU0hvt6UqT5VRP1nvEZzkPqeeD5iGzPXS8DSu1j0X2NmGW/HkEO
         iMee73kvGdKy7lk3wZ+ocAEWr85ZlYDyPrQwket17oCwawjFeUT8gFGolmxjxWzWpiA3
         TQC3DdSyNTEdijT5oD8S/pxHb6bqdrnifCBofdOYEsZgKWqPXRag7qSTpW+cYOHDSvTp
         DAowFMbT3MAOsCEBDL10bfJQ0eOXdMN2h5JiS/ec5M4G6T+pXI4/PvX/tptx2/Qpx9DO
         06og==
X-Gm-Message-State: AOAM530zXZLgb8MQDBqDcKdxfnCG0RNEz2r1wUll/xk3SF9GfoKFvowA
	dBY0oT95UnGUpQ5SYKLEOYmEALPaYmU=
X-Google-Smtp-Source: ABdhPJzUzUIFCHu7ejgz40/uN0Mg6DP2xHnXmClNbcn2Zxjfw0mTCG8DzU0MZ08oWC2UzTxPD78zsw==
X-Received: by 2002:a05:620a:3c9:: with SMTP id r9mr1129089qkm.297.1637003829194;
        Mon, 15 Nov 2021 11:17:09 -0800 (PST)
Received: from DESKTOP70IB7GE ([129.10.131.194])
        by smtp.gmail.com with ESMTPSA id f21sm1304160qte.52.2021.11.15.11.17.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Nov 2021 11:17:08 -0800 (PST)
From: <zhang.weit3@gmail.com>
To: <usrp-users@lists.ettus.com>
Date: Mon, 15 Nov 2021 14:17:02 -0500
Message-ID: <009601d7da55$5f0027c0$1d007740$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AdfaVQhXra3OOSFmQ3OQD7ri0GNgnA==
Message-ID-Hash: 4LSNHD25EGWP35PQA7ZGWWJF75JV7OFW
X-Message-ID-Hash: 4LSNHD25EGWP35PQA7ZGWWJF75JV7OFW
X-MailFrom: zhang.weit3@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] OTW format in B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4LSNHD25EGWP35PQA7ZGWWJF75JV7OFW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8470455753485509044=="

This is a multipart message in MIME format.

--===============8470455753485509044==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0097_01D7DA2B.7630FD90"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_0097_01D7DA2B.7630FD90
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I am playing with one B210. I just want to check whether B210 can support
sc12 as over-the-wire format. Thank you for the help in advance!

 

 

 

West


------=_NextPart_000_0097_01D7DA2B.7630FD90
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:\7B49\7EBF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\7B49\7EBF";
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
with one B210. I just want to check whether B210 can support sc12 as =
over-the-wire format. Thank you for the help in =
advance!<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>West<o:p></o:p></p></div></body></html>
------=_NextPart_000_0097_01D7DA2B.7630FD90--

--===============8470455753485509044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8470455753485509044==--
