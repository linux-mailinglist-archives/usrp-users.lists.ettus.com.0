Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B657113D18
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2019 09:34:44 +0100 (CET)
Received: from [::1] (port=38684 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1icmav-0008Ju-Ag; Thu, 05 Dec 2019 03:34:41 -0500
Received: from mailin.dlr.de ([194.94.201.12]:40459)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Emanuel.Staudinger@dlr.de>)
 id 1icmar-0008An-Km
 for usrp-users@lists.ettus.com; Thu, 05 Dec 2019 03:34:37 -0500
IronPort-SDR: Sej7DxCMOczceATVpUv9oBbJxqJYw49PhdmYR7FZbO7/43JbJBW7kJ7tzdiRa8YLmwuecg1cXF
 HFCQFUNg+CEA==
IronPort-PHdr: =?us-ascii?q?9a23=3AATktiBDJkl1MoyO01TaNUyQJP3N1i/DPJgcQr6?=
 =?us-ascii?q?AfoPdwSPT5rsbcNUDSrc9gkEXOFd2Cra4d0KyP4/irADVQqb+681k6OKRWUB?=
 =?us-ascii?q?EEjchE1ycBO+WiTXPBEfjxciYhF95DXlI2t1uyMExSBdqsLwaK+i764jEdAA?=
 =?us-ascii?q?jwOhRoLerpBIHSk9631+ev8JHPfglEnjWwba58IRmssAnctdUajYR/JqosyR?=
 =?us-ascii?q?bCv2dFdflRyW50P1yYggzy5t23/J5t8iRQv+wu+stdWqjkfKo2UKJVAi0+P2?=
 =?us-ascii?q?86+MPkux/DTRCS5nQHSWUZjgBIAwne4x7kWJr6rzb3ufB82CmeOs32UKw0VD?=
 =?us-ascii?q?G/5KplVBPklCEKPCM//WrKiMJ/kbhbrQqhqRJh3oDUfI+bOvl/fqzBctwXXn?=
 =?us-ascii?q?BOUtpTVyFbHo+wc5UDAuwcNuhYtYn9oF4OoAO5CAejAePg0DlIhmLo0q0+ye?=
 =?us-ascii?q?gvDB3G0xY9H90TsXTUqtr1O7kIUe2u0abIyS/DY+lL1jjj8YXFdA0qr/KUXb?=
 =?us-ascii?q?9obMbd1VMjGx7Gg1ifs4DpIj2Y2+cXv2SF8eZsTf+jh3I9pw1soTWiyd0ghp?=
 =?us-ascii?q?THi48W0FzI6yV0zYktKd22VkF2YsKoHZ5VuiyeM4Z2TNktTmR2tCkm1LELu5?=
 =?us-ascii?q?u2cDYWx5s6yBPSbvKKfoyS7R/tUuuaPC12i2h/eL2lgha/6U2gyurhWcaqyF?=
 =?us-ascii?q?tKtS9FksXUtnAKyhzT9tCLSvtj8Uel3jaCzw7d5OdKL047laTVK5kvzL03mJ?=
 =?us-ascii?q?QJr0jPACD4l0TogaOMd0Uk/PSo6/79bbn8u5CcM5V0hhvjPaswgsC/AOI4PR?=
 =?us-ascii?q?YSX2WD5OiwyKfv8VD6TbhFlPE6j6fUvZPAKcgFuKK1GwpV3Zwi6xa7ATemyt?=
 =?us-ascii?q?MYnXwfIVxKfRKIlY7pO0zQL/D8F/uxnkisny12x//bP73hBJrNIWbZkLr6YL?=
 =?us-ascii?q?l971RcxBAuwt9B/55UEK0OIOrvWk/ts9zVFgI5Mxeuw+b/Edl9y5geVnyVAq?=
 =?us-ascii?q?+CK67StV6I5vkzI+mXfoMapir9K+Q45/71l3M2hVgdfaz6lacQPSSlBe5+Zl?=
 =?us-ascii?q?iCbGD3qtMACnsR+AciUPHxzlaFVGgASWy1WvdoyzQyDp+rCcH4WomwjL2H0y?=
 =?us-ascii?q?qhNpFSfCZKBwbfQj/Ta4yYVqJUO2qpKch7n2lcWA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EmCQCav+hd/xaKuAplHgELHIIAgRq?=
 =?us-ascii?q?BXROBO65ZghcJAQEBAQEBAQEBBwEvAQGGeTkFDQIDAQwBAQUBAQEBAQUEAQE?=
 =?us-ascii?q?ChiyCOyKDfl4BDHQmAQQbgxuBebE0hU+EeYE3jjCJBHSFIQSVbJheB4FElj8?=
 =?us-ascii?q?jjkKLZKhtAgQCBAUCFYFqgXpxgzxPERSbLJAbgTGBEAEB?=
X-IronPort-AV: E=Sophos;i="5.69,280,1571695200"; d="scan'208,217";a="25983165"
To: <usrp-users@lists.ettus.com>
Thread-Topic: GPIOs timed commands
Thread-Index: AdWrRn1Fq1nUqsi+SkupwTNLNRY/Gg==
Date: Thu, 5 Dec 2019 08:33:55 +0000
Message-ID: <331d9c2e396b4f499b1af018f335899c@dlr.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: [USRP-users] GPIOs timed commands
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============3672749863641852929=="
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

--===============3672749863641852929==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_331d9c2e396b4f499b1af018f335899cdlrde_"

--_000_331d9c2e396b4f499b1af018f335899cdlrde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi everybody,

could the GPIOs, e.g., on a B200mini be set/unset precisely in time (limite=
d to the sampling rate used)?

Best regards,
Emanuel

--_000_331d9c2e396b4f499b1af018f335899cdlrde_
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
<p class=3D"MsoNormal">could the GPIOs, e.g., on a B200mini be set/unset pr=
ecisely in time (limited to the sampling rate used)?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Emanuel<o:p></o:p></p>
</div>
</body>
</html>

--_000_331d9c2e396b4f499b1af018f335899cdlrde_--


--===============3672749863641852929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3672749863641852929==--

