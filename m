Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D04624B61
	for <lists+usrp-users@lfdr.de>; Tue, 21 May 2019 11:23:47 +0200 (CEST)
Received: from [::1] (port=58842 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hT0zi-00017Y-FQ; Tue, 21 May 2019 05:23:38 -0400
Received: from mailin.dlr.de ([194.94.201.12]:53131)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <Emanuel.Staudinger@dlr.de>)
 id 1hT0zB-00012J-3m
 for usrp-users@lists.ettus.com; Tue, 21 May 2019 05:23:35 -0400
IronPort-PHdr: =?us-ascii?q?9a23=3ATpGj3hDMu2flD7ZaVQUDUyQJP3N1i/DPJgcQr6?=
 =?us-ascii?q?AfoPdwSPT7pcbcNUDSrc9gkEXOFd2Cra4d0qyP6virADdIyK3CmUhKSIZLWR?=
 =?us-ascii?q?4BhJdetC0bK+nBN3fGKuX3ZTcxBsVIWQwt1Xi6NU9IBJS2PAWK8TW94jEIBx?=
 =?us-ascii?q?rwKxd+KPjrFY7OlcS30P2594HObwlSizexfK5+IA+roQnMqsUajpZuJ6gswR?=
 =?us-ascii?q?bVv3VEfPhby3l1LlyJhRb84cmw/J9n8ytOvv8q6tBNX6bncakmVLJUFDspPX?=
 =?us-ascii?q?w7683trhnDUBCA5mAAXWUMkxpHGBbK4RfnVZrsqCT6t+592C6HPc3qSL0/RD?=
 =?us-ascii?q?qv47t3RBLulSwKMSMy/mPKhcxqlK9VoAyvqQFjw4DaY4+VNeZxcazGcNwAWW?=
 =?us-ascii?q?ZMWtxcWzBdDo+iaYYEEuoPPfxfr4n4v1YDqhSwBQy2C+Pp1z9HmHv20bcn3e?=
 =?us-ascii?q?Q9Cw7GwREvH9MIsHTbstr1LrwfXv2xzKnS1znMcu1Z1C775YPVcR4huemBUa?=
 =?us-ascii?q?9sfcbL1EUiFAzIgk+NpYHrPD6ZzPkBv3aD4+Z9Se6jkXMrpgJ+rzS128shhI?=
 =?us-ascii?q?rEipgLxl3E+ih12Js5KNy8RUJhf9KpEJRduzuYOodsX88uXmNltSAnwbMco5?=
 =?us-ascii?q?G7ZjIFyJE/yh7abPyIbpaH7wr4VOaUPTd4nHVleK+jhxqq8Uiv1On8Vs6s3V?=
 =?us-ascii?q?hEqCRLnNbCuHAN2RLU6caJTeFz8lu/1TiA1g/e9PtIIUEylarHMZ4u2KQ8mY?=
 =?us-ascii?q?cXsUTZBCP5hVv5gLeXdkUi5Oeo9/zqbqj6qpOGKoN5iQ7zPr4zlsGxAuk0KB?=
 =?us-ascii?q?UCU3aD9eS5zrLj/En5QLtQjv0xl6nUqJ/UJcEBqa6/Hg9azIIj5wyiATe6yt?=
 =?us-ascii?q?sYgGQILFNDeBKIkYfpIUrDL+38DfelmVijjSlky+jcPrL9GpXNMmTDkLD5cL?=
 =?us-ascii?q?Zg8E5c0hIzwclC55JPFL4BOunzV1T1tNzZFR85Lxe0z/z5B9VhyoMeRHmPDr?=
 =?us-ascii?q?WFP6PVtF/brt4odr2Rf5UN/SvmJuI+z/rvlmMi31IBYbSym5AQbSbrMO5hJh?=
 =?us-ascii?q?DNTH/lhMoMFSExogMjQO3sh1CYeTJXfTC+UvRvtXkAFIu6ANKbFciWi7ub0X?=
 =?us-ascii?q?LjEw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HACQDMwuNc/wyKuApdCIIXgQ+BWhG?=
 =?us-ascii?q?BNpsgllaBewkBAQEBAQEBAQE3AQGEQAKCRjQJDgEDAQEFAQEBAQQBAQKBEYI?=
 =?us-ascii?q?6IoMjPwoVAQweViYBBBuDG4EdqCiKOYE0iQiEX4FXgwqEHydLgm+CJgSoHAc?=
 =?us-ascii?q?CgTKTdYIdiigriTakDYIQcYM8kFCODYEhAQE?=
X-IronPort-AV: E=Sophos;i="5.60,494,1549926000"; d="scan'208,217";a="17920737"
To: <usrp-users@lists.ettus.com>
Thread-Topic: B200mini AGC: read gain through UHD
Thread-Index: AdUPtmUbPz25i67jSACsQKywg7Y8DQ==
Date: Tue, 21 May 2019 09:22:22 +0000
Message-ID: <38E0BEB98EBB5941BDC0A8EA39458CB4A88888B1@DLDEFFMIMP04EXC.intra.dlr.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] B200mini AGC: read gain through UHD
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Emanuel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Emanuel.Staudinger@dlr.de
Content-Type: multipart/mixed; boundary="===============6980730380415542947=="
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

--===============6980730380415542947==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_38E0BEB98EBB5941BDC0A8EA39458CB4A88888B1DLDEFFMIMP04EXC_"

--_000_38E0BEB98EBB5941BDC0A8EA39458CB4A88888B1DLDEFFMIMP04EXC_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi everybody,

I would like to use the fast attack AGC of the RF chip on the B200min, whic=
h I can enable through UHD and the property tree.
Is there a way to read the actual gain the RF chip has set once the AGC is =
in locked state?

Best regards,
Emanuel

--_000_38E0BEB98EBB5941BDC0A8EA39458CB4A88888B1DLDEFFMIMP04EXC_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi everybody,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I would like to use the fast attack AGC of the RF ch=
ip on the B200min, which I can enable through UHD and the property tree.<o:=
p></o:p></p>
<p class=3D"MsoNormal">Is there a way to read the actual gain the RF chip h=
as set once the AGC is in locked state?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Emanuel<o:p></o:p></p>
</div>
</body>
</html>

--_000_38E0BEB98EBB5941BDC0A8EA39458CB4A88888B1DLDEFFMIMP04EXC_--


--===============6980730380415542947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6980730380415542947==--

