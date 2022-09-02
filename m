Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A01B85AB6D6
	for <lists+usrp-users@lfdr.de>; Fri,  2 Sep 2022 18:51:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3AF5A387089
	for <lists+usrp-users@lfdr.de>; Fri,  2 Sep 2022 12:51:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662137466; bh=ddJ+tmlD+AoK2zpN4m1EFBYMtWeXEkMkYClvR8hDNLc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=d5L81y8tsLtM35eBkX8TBb1hXL+LQNye9Vzepx45r75XxtgffgpEqYpaEEBPHgHl5
	 sDuYW/Pst92hyslusKWT1kNwK8kMLwxo99MvgoFWD3m220pFydbsrq0HmSoNh0HgRJ
	 4S34Kr/B0g75DvHCMXKfaJnLSxf+gyW202Cx5grYsT2urNYygT3qN4rA99XZOBPldw
	 RxAG7XTgE1KYhBDPYOFCNMfUNWkad58OAc6x1nsx/UFgtapXqHNKng6K7RbZbGUq/X
	 Siqf30528/LCqYM+wH3YfUOUSdX8delY6XYOJPXsG436fbjslm5LOpMZxAwwidffn3
	 EZbLhwZrS+UCg==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id AFD95386FF6
	for <usrp-users@lists.ettus.com>; Fri,  2 Sep 2022 12:48:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OAIRPGP6";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id a36so3452232edf.5
        for <usrp-users@lists.ettus.com>; Fri, 02 Sep 2022 09:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=thread-index:content-language:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date;
        bh=29gwMVtZsMrwQr0GbL2F9KT5JA2uS6wk14tpEBk23dk=;
        b=OAIRPGP6MbGLa3badVd0cTs7x8+SnI3G58pMrQjnK+N+SdL6Cti30w9Ro6IusLJ9SQ
         CEYYI6FTTNALtsdPcWBtoSD5pIEngUsbmjNQOrt518+5z3X1ddj+w8LmVyA21DyOZzfP
         t0X7aNPucEnh4Pw6Nizig0qon1RZNdrirvmN+Fjax1XZwd8jStvOByMGc3Zv5Zo4aFTT
         LhXC3xBLP5v0oXnmUpzDGNwdKayUzmbgld1ZkW/AuiqDGi5lpEIuMQ7t4qXRMS7V9AmX
         BZi/6rUpFQhgZtCZZG1VWvdSd26S0I/gNSriiFPY2Xd15OD5AndD97T9KNBNDCmORbMe
         xs0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=thread-index:content-language:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=29gwMVtZsMrwQr0GbL2F9KT5JA2uS6wk14tpEBk23dk=;
        b=bCwU72LsRn7rMXdKhRpHfE/KpLUzo4Ah5wN7grZAFCWVJV1gkWx3wTIkT7G56m0ZZB
         eMB3hgouidi8Le0DbPuUqdbz4GWDzjKAdHFKB3QkjALsOpruH8KQDQBrYqUPBf5g5vJq
         vkzt11gOkZrsLxjej1gB3fP5YkAuSMOlmMI1g4B2rDIia8XyduDtv1zMlsUd1Qodf6QB
         IyLznxwsyv0HMqbuNDiLIgo1QsDGCLKZxJ/rJpHh+nASzoQ6Gvy50s87+wtU3QIB+MkV
         8aSXKTTmMQdkQAZYL4w8nMsaISs2rxp6ROViWawgq0QoHVv3ZpYDL++9MX/G/Zx/nheY
         MDjA==
X-Gm-Message-State: ACgBeo3zEl7g9xpzVyjYGfl3vVLusWHQAzDspX1CyKj80HG5ksT86jcq
	wcBvXV0cju6OLxWEphOd4i8CuvOaHS8=
X-Google-Smtp-Source: AA6agR6xPXqgZST5tDy5ZPJp93gFlCWCM4uG8npSqup4UWokktAuJIbFiv2mX0TFV1QLgq9jRF45uQ==
X-Received: by 2002:a05:6402:40cb:b0:448:627d:90d6 with SMTP id z11-20020a05640240cb00b00448627d90d6mr21991513edb.233.1662137333623;
        Fri, 02 Sep 2022 09:48:53 -0700 (PDT)
Received: from MatthiasNB ([2a01:598:b9b3:e00f:6d23:9274:ea4d:dc55])
        by smtp.gmail.com with ESMTPSA id kx2-20020a170907774200b0072b13ac9ca3sm1492524ejc.183.2022.09.02.09.48.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Sep 2022 09:48:53 -0700 (PDT)
From: Matthias Schraml <matthiasschraml@gmail.com>
X-Google-Original-From: "Matthias Schraml" <matthiasschraml@googlemail.com>
To: <usrp-users@lists.ettus.com>
Date: Fri, 2 Sep 2022 18:48:47 +0200
Message-ID: <01a901d8beeb$e0240a80$a06c1f80$@googlemail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: Adi+5XuFwEhjYVv4QU6lr0LEo1p16g==
Message-ID-Hash: EWSJXJGD47O6IEUYZWFQSQ4JDQNWWA5Y
X-Message-ID-Hash: EWSJXJGD47O6IEUYZWFQSQ4JDQNWWA5Y
X-MailFrom: matthiasschraml@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] 2.5G Ethernet
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EWSJXJGD47O6IEUYZWFQSQ4JDQNWWA5Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0779560281836459737=="

This is a multipart message in MIME format.

--===============0779560281836459737==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_01AA_01D8BEFC.A3B12040"
Content-Language: de

This is a multipart message in MIME format.

------=_NextPart_000_01AA_01D8BEFC.A3B12040
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

 

I'm currently wondering, if it is possible to use 2.5G ethernet with an USRP
X310.

 

Background:

I own a brand new small but powerful computer. The PCIe slot is occupied by
a GPU and there is no Thunderbolt port. So there is no chance for 10G
ethernet.

However, the computer has a 2.5G ethernet port. 

 

The Xilinx IP used for 1G ethernet in the USRPs also supports 2.5G. In
theory, this should be sufficient for 2x 30.72 MSps which would be a great
improvement compared to the 25 MSps over 1G ethernet.

 

Is it possible to modify the FPGA image to support 2.5G ethernet?

Has anybody already done this modification?

 

Kind regards

Matthias


------=_NextPart_000_01AA_01D8BEFC.A3B12040
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DDE =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Hi all,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>I&#8217;m currently wondering, if it is possible to use =
2.5G ethernet with an USRP X310.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Background:<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I own a brand new small but =
powerful computer. The PCIe slot is occupied by a GPU and there is no =
Thunderbolt port. So there is no chance for 10G =
ethernet.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>However, the computer has a 2.5G ethernet port. =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>The Xilinx IP used for 1G ethernet in the USRPs also =
supports 2.5G. In theory, this should be sufficient for 2x 30.72 MSps =
which would be a great improvement compared to the 25 MSps over 1G =
ethernet.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Is it possible to modify the FPGA image to support 2.5G =
ethernet?<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Has anybody already done this =
modification?<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Kind regards<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>Matthias<o:p></o:p></span></p></div></body></html>
------=_NextPart_000_01AA_01D8BEFC.A3B12040--

--===============0779560281836459737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0779560281836459737==--
