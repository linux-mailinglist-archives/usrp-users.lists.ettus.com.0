Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7B6321B02
	for <lists+usrp-users@lfdr.de>; Mon, 22 Feb 2021 16:15:48 +0100 (CET)
Received: from [::1] (port=57128 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lECw5-0006Ct-HP; Mon, 22 Feb 2021 10:15:45 -0500
Received: from thsbbfxrt01p.thalesgroup.com ([192.54.144.131]:49222)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93)
 (envelope-from <frederique.courant@external.thalesgroup.com>)
 id 1lECw1-00068f-ET
 for usrp-users@lists.ettus.com; Mon, 22 Feb 2021 10:15:41 -0500
Received: from thsbbfxrt01p.thalesgroup.com (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id 4Dkm2D2NP3z45ZB
 for <usrp-users@lists.ettus.com>; Mon, 22 Feb 2021 16:15:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=external.thalesgroup.com; s=xrt20181201; t=1614006900;
 bh=uxoYCdbw5pJg1mSI01ij7nQ14xs9zLopvGoFE50Xwa8=;
 h=From:To:Subject:Date:Message-ID:MIME-Version:From;
 b=SU2XubTUoChTOQWPkZowsHDII8dM374eErpZ6zEmNwkVJ+EXgIuuQnQ5hKiRUuXfv
 2BWC3Otfk/CmhgSN+4PhZoei6K76jQaZ3Q3Lq8ZDEPihZKx0eue6rsliluAmnJ4BMU
 5D0SgCjfYU8biL4uDcj9CsC+afsCoJ0U42mKTyVaOH/+NReI48rp9telpGfKxFd/gg
 YMIDDF7Jyuct6e39N6+G7k4yk0ajgISnC6PcPAwr9ko5JlNUlMLLcKCK0RgH7MG4nH
 UxtbHgq4SMq3j+/trB0yjKHo2sglsnCQbhbHf9PKXJBapOvbF4QwNLa1LQvyZ8fOc4
 j4yavZMCsK+uA==
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Read a register
Thread-Index: AdcJLSuGJu1BtRJkTFG4lv26GDzK6Q==
Date: Mon, 22 Feb 2021 15:14:59 +0000
Message-ID: <db0907f754a240cd886021bb02ec1f37@external.thalesgroup.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-pmwin-version: 4.0.3, Antivirus-Engine: 3.80.1, Antivirus-Data: 5.82
MIME-Version: 1.0
Subject: [USRP-users] Read a register
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: COURANT Frederique - Contractor via USRP-users
 <usrp-users@lists.ettus.com>
Reply-To: COURANT Frederique - Contractor
 <frederique.courant@external.thalesgroup.com>
Content-Type: multipart/mixed; boundary="===============5534301016295203763=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============5534301016295203763==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_db0907f754a240cd886021bb02ec1f37externalthalesgroupcom_"

--_000_db0907f754a240cd886021bb02ec1f37externalthalesgroupcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Could you give me some examples of how can I read a value at the register 1=
34 please ?
This register is only a readable data.

Best regards.


--_000_db0907f754a240cd886021bb02ec1f37externalthalesgroupcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Could you give me some examples=
 of how can I read a value at the register 134 please ?<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">This register is only a readabl=
e data.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_db0907f754a240cd886021bb02ec1f37externalthalesgroupcom_--


--===============5534301016295203763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5534301016295203763==--

