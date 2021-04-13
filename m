Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 879A935D4D9
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 03:32:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14E153841F7
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 21:32:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=msn.com header.i=@msn.com header.b="EO7trxOb";
	dkim-atps=neutral
Received: from EUR02-HE1-obe.outbound.protection.outlook.com (mail-oln040092068103.outbound.protection.outlook.com [40.92.68.103])
	by mm2.emwd.com (Postfix) with ESMTPS id 855D23841E0
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 21:31:52 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B9IjeaxOGmWPYaXMVgmVIoQ9DMwH2pF09Sq6rPMfFAXPcZ5Wig4TRsGIIpM7RWmzqD1RR6389K9EqhPTqZW7Ys6Lb1FFJXJZ55LtjXWvzygdcsFhK+U/cJsAlSYrm3709dNCX37XslE+6jvVw39rkqKDZOkg/EcCld81ZJDFXdkU2naEsJ6ML4seJVOlKDbXvC9ODo1BfI+Xpf/PzncJCYQj73XfIA6zcI6VfHeBKNW7OhP/bm0H6/r+jNd7RITzSM9EywcYuEyPTSi8IzKJOe78YfbT4g3yJKpJhqWfCF6Qug+16BXdSes06aP7dxoSz6u29bGt/wNVqeIRVpyIww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zToQ1hxcLupi7dy/w7XMjQyLoMPIz60iAm7LGQ6tUkM=;
 b=hu1rANA+3eEkjxlAMUCtPPHOdLczvk4nrjl6Tyq7PUBN9HYax6pBVoaOpjgUf7d5tl9tJGlQh16SOC0SylvH8Zxb3CFshuY9cfiRhiTvvfHZRvcTpu5yxdhDMwORTQbneSgdqgsD4BjVYZLYvxLFgr1pHapuxlMDmPEsKN4zkrTyMTSEXcw03V/dZOMonYuchxR6M9h56t6m60Mzq7cNAYyWkKSlD7wzj+gBw6AIz3hK0SgSnLcnh8JCwk+CjXEMmNyyIq6U8haB9RC0SWg1rUVHiQtyLz8PHIEGpAY5ABDHNSbVxUe5YtJdbJ9895pUos6RhFA9Dk2xn8J4MyFH8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msn.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zToQ1hxcLupi7dy/w7XMjQyLoMPIz60iAm7LGQ6tUkM=;
 b=EO7trxObhA1nz4tbNgpm4G/+YkdTjSkiByTOJxVY5e7KnnO5y3VbXP4BrtOOnhrln7YNnGQNXkQxbUW0xYqMmVDReWRsL3SgjxhuQfNLmOheTfPNHZ+S2BJxH2yCiCR5JuJW8nzB4kHFrNqrpb1SKhJFBgC9kSynoZ5gZ4K9JivELpkG7HjLjSIoFhUwzJHCOfcsXk+FtPZeckPFVyPCnOOStHCglk4JhDOjloVsGSzxQuXUgVFoodw39NL43n30i/oryk7XdWfWr84K3QcJezZ1cOAHauRbIG2UPees8RVNrKVvHSiVHJc37VZtcFUV/8b7UJMJcIHuxlHbdG+Ikw==
Received: from HE1EUR02FT031.eop-EUR02.prod.protection.outlook.com
 (2a01:111:e400:7e1d::48) by
 HE1EUR02HT019.eop-EUR02.prod.protection.outlook.com (2a01:111:e400:7e1d::452)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17; Tue, 13 Apr
 2021 01:31:50 +0000
Received: from CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM (2a01:111:e400:7e1d::49)
 by HE1EUR02FT031.mail.protection.outlook.com (2a01:111:e400:7e1d::141) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17 via Frontend
 Transport; Tue, 13 Apr 2021 01:31:50 +0000
Received: from CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM
 ([fe80::8e9:21bd:de95:923d]) by CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM
 ([fe80::8e9:21bd:de95:923d%5]) with mapi id 15.20.4020.022; Tue, 13 Apr 2021
 01:31:50 +0000
From: ?? WANG Cui <iucgnaw@msn.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: How to tx s16 file with tx_samples_from_file
Thread-Index: AdcwBLApoHvklcv8TwyD9UhqY/aa/Q==
Date: Tue, 13 Apr 2021 01:31:50 +0000
Message-ID: 
 <CWLP265MB3396E5E989A405B3605A1A15A54F9@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:3865820894E1B0982AF7353B58E69BD498E6A380D06D5BF027D7D740F7588F72;UpperCasedChecksum:4BBB8B99E8EBA547DD74E52C819E835F3CFFBCD8CFCE39E3D4844BFAC041CCD2;SizeAsReceived:6702;Count:42
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [nqsKyX7CiE+Mz27L1o7VRx+/cpTn12VT]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: a52a59c1-1671-4ae9-a6cf-08d8fe1be97f
x-ms-traffictypediagnostic: HE1EUR02HT019:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 JZrAeiWCLHYTqTDc4oefs/F0bWT3muRcYPdWBxBMC6yXUpm6vrbwdeByStviF8wi6p86jWcr9jpnN1YqHRNkEvsAgUPUBVaVzc2O1oTLLhh5hfE2ql3DLzeM/zdrTonbUk5FYuX+cTToQp8z/gnAWJ5AR1tssX/NXcZMl2eTVPNOLPCewTMnky944001hVRtpA6FYTZN+RbjfGuSHIr2IN3w5ndY/4h1noRJoCGFMnZO4byi6qcWmQDMssejsgHi//RS72wCkgUgbX8NmoqIaFwcqso7HBmoFsS68odd5j6SI9RiVCz4WTFY32x7eTvNQkc3y1+a65g9Y4CAWTlbrBTm961DfJi+k+0fQSpmkS9k1lQUFi8btmFEIMxjx2rgwC0mYsSxDV+vTA+knzfXFQ==
x-ms-exchange-antispam-messagedata: 
 90eKQXqz9ujpHQvd0zipfzDFQgAJNHBJ0oFVaO09HhpyB+BMp63sorTKoH6+nFm7FLz9NhwSb+7E5XI/hjVFqzVNVI3hXArHcl+S3fiazHz7xi7vADT8lDfJ21+AyBEeUqFN1FerEXXCLbj92kJrrQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HE1EUR02FT031.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a52a59c1-1671-4ae9-a6cf-08d8fe1be97f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2021 01:31:50.7197
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR02HT019
Message-ID-Hash: 4VGL7N2YWZGVE5FKDMS3KOHSCWGQECKZ
X-Message-ID-Hash: 4VGL7N2YWZGVE5FKDMS3KOHSCWGQECKZ
X-MailFrom: iucgnaw@msn.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to tx s16 file with tx_samples_from_file
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YJXMMNLNWXJ44M6UFMIKC5OFUMPPODR2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2236305887093568471=="

--===============2236305887093568471==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CWLP265MB3396E5E989A405B3605A1A15A54F9CWLP265MB3396GBRP_"

--_000_CWLP265MB3396E5E989A405B3605A1A15A54F9CWLP265MB3396GBRP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
When I try tx_samples_from_file example, looks like it only take Complex da=
ta format.
However I have signal file in RF direct sample format (each data element re=
present a sample value), say it is "s8" or "s16" format as defined in UHD t=
erm.
I wonder how can I transmit such file? Or must I convert it into Interleave=
d I/Q (Complex) format?
Thanks in advance,

iucganw


--_000_CWLP265MB3396E5E989A405B3605A1A15A54F9CWLP265MB3396GBRP_
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
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:11.0pt;
	font-family:\7B49\7EBF;}
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
	font-family:\7B49\7EBF;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:\7B49\7EBF;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">When I try tx_samples_from_file example, looks like =
it only take Complex data format.<o:p></o:p></p>
<p class=3D"MsoNormal">However I have signal file in RF direct sample forma=
t (each data element represent a sample value), say it is
<span lang=3D"ZH-CN">&#8220;</span>s8<span lang=3D"ZH-CN">&#8221;</span> or=
 <span lang=3D"ZH-CN">&#8220;</span>s16<span lang=3D"ZH-CN">&#8221;</span> =
format as defined in UHD term.<o:p></o:p></p>
<p class=3D"MsoNormal">I wonder how can I transmit such file? Or must I con=
vert it into Interleaved I/Q (Complex) format?<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks in advance,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">iucganw<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CWLP265MB3396E5E989A405B3605A1A15A54F9CWLP265MB3396GBRP_--

--===============2236305887093568471==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2236305887093568471==--
