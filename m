Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6568330C312
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 16:10:25 +0100 (CET)
Received: from [::1] (port=47832 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6xJt-0004NB-JC; Tue, 02 Feb 2021 10:10:21 -0500
Received: from mail-eopbgr100124.outbound.protection.outlook.com
 ([40.107.10.124]:32544 helo=GBR01-LO2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <md964@hmgcc.gov.uk>) id 1l6xJp-0004HO-LN
 for usrp-users@lists.ettus.com; Tue, 02 Feb 2021 10:10:17 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=duPI+xb5ki76qkT1gDPnWfkdWdF8Vu+nCtBokIupwbK8VqbAvdw68FmGLHDFHKIIo1g5IzgJCPjw+28I1yq8hIboyL/fKOxMtty5Az7TJM9p9pql/kiJjvGqTu7pc6JklLHluq8mq+F9Bsa5CHDhWZtSr2Oy9ya3M4MHNoINIRjHOHiWtPYKlUwq0tZw2DMq0ttNuwmBzFojFaZ7EvEe17GWemoXRbTqoAIsZ4OQY3cQTYv8jVHstURy3tPKcDbHPY3pMRHCUE4NF9M3JWnwmgb+/2ZstjTQNKapjta1U96uiH4lY/1B3npn+AqzrnjPYVQfrS+OcSUaRVQVILNT7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gueDT2VMkOlFJjj/QsB3Qh4h/tcgoMI9453CVfsTses=;
 b=iRPshgMeu0YaFIv8YH2+a/69pqAwEz7SWZOwZ0kfa0nKkDdgeHwKscfmBs1/nuqch8k75jFJfqXpASVFXq/e2CxwVtcSxUlzXlTeLP39P1G+xWKbcd931Yx3Z4s1HmEerz7TPrQfoABwJ1+VNVv02UpxTKhBDWBJ8sfNvb4l+KUJjoLa4osdTf1SVJY1/ndnIbTJqBGD9YXV2gb7Ar4/98XQki4IvldE7OGQ8VCtxDc5AvnHlEd89ZEwJeFahwYj7HzmtE0Jt1idxmYucBJku5+h/j/GCf0steP/poAB1KzoskyQiCfSxxyCPXlflUVIRLk/D9bl2CKBr73V21XwoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hmgcc.gov.uk; dmarc=pass action=none header.from=hmgcc.gov.uk;
 dkim=pass header.d=hmgcc.gov.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmgcc.gov.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gueDT2VMkOlFJjj/QsB3Qh4h/tcgoMI9453CVfsTses=;
 b=HAsXkMue5RLsSKEQNeU1MmFLXOi6rB/CP9OrLTBv4WDGX1cLRagmWcZBp8odzpHJBBTOobQG9QJm6dOUQ8hJeUfGlHoq9c3d2xe127hdnGGfsHEUPl4pCyfYqBr/TGFNW64IO4J5qGZ+5hO0ojjxILW7YTlWf/zltNGBmLKWeHA=
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:132::7)
 by LO2P123MB4320.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:19e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.23; Tue, 2 Feb
 2021 15:09:29 +0000
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b]) by LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b%4]) with mapi id 15.20.3805.025; Tue, 2 Feb 2021
 15:09:29 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Opening Vivado GUI during FPGA image build
Thread-Index: Adb5UifNbGHjaHXZQZaCPPt8iNPFaAAIwHVw
Date: Tue, 2 Feb 2021 15:09:29 +0000
Message-ID: <LNXP123MB37243B9CFF15D54ADF43B60BCAB59@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
References: <LNXP123MB372437DE53B4243C99065495CAB59@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
In-Reply-To: <LNXP123MB372437DE53B4243C99065495CAB59@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=hmgcc.gov.uk;
x-originating-ip: [62.189.143.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2823ff8-8772-4baa-8b30-08d8c78c89c6
x-ms-traffictypediagnostic: LO2P123MB4320:
x-microsoft-antispam-prvs: <LO2P123MB4320AA163E6F54B764A17F0FCAB59@LO2P123MB4320.GBRP123.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UCWaChceBLtkpEjDnoxvL4YAOMOA9cDB/deCq/Fa3UuzTAdkEZL40MGE5X2b971AL70XrSWfxVte6ozLsNVqv+eNBUlgjmHAeiCT8Vvl+7zh/rw/Y5xyWaGmHROwXHZUZJuXMtlpvQQlbPDKbu0vwBvE/evbX9x1P8mx0LBVU8BLq5pBoyqT2BiCPoc2Pb2Js/gOfikfIQhUTVf3QwJOJhy4e/VnjQmRuDrSZ+sNSXvqy5dQix1jnJz8oOrID8n8JQ122mAifb6+g4fCV4eU3EmTImfRupTaxlF1+EJPtulhbDpBbg6TUwnI3bYgEz+vZq/0Q/bs3CuQupnQDGLhZTYMJCqbyGXeeyOzx4y5wL27cF7TuEQGB8AiJs5W8zc1RLDzx7RIpQbX6NMcMcOseVw5CGOjleA01u8YGo3bPbNvRF7l1cyq0ESwml/4MPX553Y352W7z8asZYz4w6j1ok90hAFjif8DETI+6p/9lQuU4k9z8f40z102ct5yUWZm/Bvl+GzwkYwGphYBc4p3CA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39840400004)(396003)(376002)(346002)(366004)(7696005)(9686003)(52536014)(33656002)(66946007)(66476007)(66556008)(64756008)(66446008)(2940100002)(6916009)(8676002)(6506007)(86362001)(55016002)(5660300002)(478600001)(316002)(186003)(76116006)(53546011)(83380400001)(26005)(2906002)(8936002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?7O/ybRv3kwkSrczlzl75mt1pZAdvbZYL7mHH+ldErLxAXFfFEAc+0/5HNnYQ?=
 =?us-ascii?Q?MCoPWDRovqAueBf/1vALyGePXO8TqvQjLXWdYuupt7kzjpyPNuQF4kie1jZu?=
 =?us-ascii?Q?KlINMuWj51ApnBlV69m1AeOLNKzeqInEH/xlcoMW4Kj+OkGSOnHk2bdOrq9+?=
 =?us-ascii?Q?sRjf7h/h2BOMaPLer7LLp9b9w4xvWQF28Lu19iP46nKv5pDR5NtT3sHQn0hv?=
 =?us-ascii?Q?9ymAsC0ZW1B7bXGM5rKB/VJHyoMHq4L3K45A2LpdlTuHLR6bAHsU7ekWCHRH?=
 =?us-ascii?Q?jEViQPe1ZMwwwrqomrFcr40L63NyTWftBPDxo6WAItjKfKUo5Psl99CJE2SC?=
 =?us-ascii?Q?6jnmydwTw0Pi1L8Yj5Jb+MsBsJ40ZPqLGPIA5LhT4o5/cGnBjjxSuzsRZWIg?=
 =?us-ascii?Q?OrMhxUnuiYjrnO0KmedNsyq3dl+eUu61p0KsYPBAAzVAoqRioICKvaEIq0fk?=
 =?us-ascii?Q?Fg7/2On8cc4ZzQN6ZifHldautouDVe6YVP3792JfBxQ196DdGH2mYm6n0vEd?=
 =?us-ascii?Q?wsCin1nfHHqRgyaNSfLtWGRw8EpcO3wHuBKqXtaZqlRsVBr394pWeCsXXR1n?=
 =?us-ascii?Q?pIwb1xI6PdkNCxfbw5KJ8beKCcslu+3a/qUDYXfCLCvGWt9EsRwgKrwM+ULJ?=
 =?us-ascii?Q?CEMxl+yz2SFVt7U6j2YS9RsAPWDwad6I9oesSAok6kHmsmbgF7vM8iJsZRf1?=
 =?us-ascii?Q?0Ynb7oLX/nagduE7RIOa1IrS3hW5WKiDggBo1Wlgf60I82zxMRyo2FM6aQKO?=
 =?us-ascii?Q?8lFE6XYTZdiCR39FA7JegFGIlWS2lfWcnC0XU0YS1oMAmTOnXnWk5bD9uycn?=
 =?us-ascii?Q?AkcFFYp0E8SO8Fvmt1hKiIAhQtBj1NsD9FO0PQBDRySaojhw/HwZWKDEKeJ6?=
 =?us-ascii?Q?34QUefB3gYU1Q5pnvJGuIzj5M+MowKFE5YPgpg6MrHSI4edLtD795rkdLlrz?=
 =?us-ascii?Q?R0+iuntZVbYcoA/TgfiCfCJrE/qaOON8moSi81HiVlwqbMsw5ZnZmjAOdkm6?=
 =?us-ascii?Q?rZ2qQaziJr8S2KjaBVnYQsl4GCMY5S6hn3+WHMcarJKuikykJ++Xk883vZUe?=
 =?us-ascii?Q?aOjsMKtA?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hmgcc.gov.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: e2823ff8-8772-4baa-8b30-08d8c78c89c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2021 15:09:29.2589 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c724c4ae-2756-49fe-b1cd-3a725b29341a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3oFOLxiof5SB7PmoYXL9lp5zcbGBlImfNwFvCtLcojy7pEE0mq1l+eDro4gmGPzdmbUTgo/oLg7XmR8Q/5Y1qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO2P123MB4320
Subject: Re: [USRP-users] Opening Vivado GUI during FPGA image build
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
From: Mark D via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark D <md964@hmgcc.gov.uk>
Content-Type: multipart/mixed; boundary="===============6794572576696536063=="
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

--===============6794572576696536063==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LNXP123MB37243B9CFF15D54ADF43B60BCAB59LNXP123MB3724GBRP_"

--_000_LNXP123MB37243B9CFF15D54ADF43B60BCAB59LNXP123MB3724GBRP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Just noticed that I'd put uhd_image_builder, I did of course mean rfnoc_ima=
ge_builder.

Still not having any luck with this, seems to just ignore the -g option.

From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Mark D v=
ia USRP-users
Sent: 02 February 2021 11:05
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Opening Vivado GUI during FPGA image build

I'm using UHD 4.0 and building an FPGA for the E320 USRP.

I'm trying to follow the guide for debugging FPGA images on the Ettus websi=
te AN-121.

I'm using the rfnoc_image_builder command to build the image, and have adde=
d the -g option to open the GUI during the build process: udd_image_builder=
 -7 e320_my_fpga.yml -t E320_1G -g

However the build runs to completion without stopping to open up Vivado.

uhd_image_builder -h shows that the option of -g or -GUI is listed as openi=
ng the Vivado GUI during the build. I've tried both -g and -GUI and neither=
 had any effect.

Any ideas? AN-121 is a few years old, is the -g option still supported by u=
hd_image_builder?

Thanks,

Mark
________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.

--_000_LNXP123MB37243B9CFF15D54ADF43B60BCAB59LNXP123MB3724GBRP_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Just noticed that I&#8217;d put uhd_image_builder, I=
 did of course mean rfnoc_image_builder.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Still not having any luck with this, seems to just i=
gnore the -g option.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"mso-fareast-languag=
e:EN-GB">From:</span></b><span lang=3D"EN-US" style=3D"mso-fareast-language=
:EN-GB"> USRP-users &lt;usrp-users-bounces@lists.ettus.com&gt;
<b>On Behalf Of </b>Mark D via USRP-users<br>
<b>Sent:</b> 02 February 2021 11:05<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Opening Vivado GUI during FPGA image build<o:p=
></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m using UHD 4.0 and building an FPGA for the=
 E320 USRP.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m trying to follow the guide for debugging F=
PGA images on the Ettus website AN-121.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m using the rfnoc_image_builder command to b=
uild the image, and have added the -g option to open the GUI during the bui=
ld process: udd_image_builder -7 e320_my_fpga.yml -t E320_1G -g<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However the build runs to completion without stoppin=
g to open up Vivado.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">uhd_image_builder -h shows that the option of -g or =
&#8211;GUI is listed as opening the Vivado GUI during the build. I&#8217;ve=
 tried both -g and &#8211;GUI and neither had any effect.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any ideas? AN-121 is a few years old, is the -g opti=
on still supported by uhd_image_builder?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"mso-fareast-language:EN-GB">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></div>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB">This emai=
l and any files transmitted with it are confidential and intended solely fo=
r the use of the individual or entity to whom they are addressed. If you ha=
ve received this email in error please
 notify the system manager. <o:p></o:p></span></p>
</div>
</body>
</html>

--_000_LNXP123MB37243B9CFF15D54ADF43B60BCAB59LNXP123MB3724GBRP_--


--===============6794572576696536063==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6794572576696536063==--

