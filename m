Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC2E8FEFAD
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2024 16:59:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43DD5384940
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2024 10:59:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1717685944; bh=+mBlBh8hi9HyuRWXCXPvHgRScOnDSt8ZV6n7A3Cm3p8=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=Pa6Vc3buss89yWerg99rYu4RAtIp1604JdaGyz6Yg8i/HDSnEaEZkkf8rejuf/TKT
	 er/asCqRVtWRGRWw4PUOG22oY/HeeH2YktCm2JoBD4Si6lLy9TjVQ+kUpvIBW13P3E
	 GRtK/1JNrfxKMdZsVvYsGbRf6eH6EeTajHMzPEcc166LRU047IXrpzm2Tvd97Pncqp
	 DNZuvC3zvPWkpZhdxy6IMZLp/gdPOJ22B5XWxC51LCtKTdIUhtzjH+B/Bpq5VbgZgh
	 B4xfnFijQ6rTPSqkQxELAPqUSVV844V1M/uzRvQL6HAGJD4JbMgi9KTUr0QYTOzfd6
	 nwnKenlJwxSWQ==
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2080.outbound.protection.outlook.com [40.107.20.80])
	by mm2.emwd.com (Postfix) with ESMTPS id 8831B381430
	for <usrp-users@lists.ettus.com>; Thu,  6 Jun 2024 10:58:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=de.bosch.com header.i=@de.bosch.com header.b="Gy0VU0ry";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nCS0iEOQU6YEc13grflViE3kcOikmoo5a3yhpsH6QDumqHUlEGa7MI4jPo7HS0E3nkuwv3xWANM3p36yXOjbmt8Wpkt9QyFlrOyXxXt3Fk8hf0Z4FIhx1U+wKrqsi9FNgTjcM2uYMyfrdB8arhOSlwo9Ngbk/GwkK4NpbGTq3A3tkdoozi+Mphl6WqDFonyrWJg/pfbMlZIYmuq3sKmyOOR0SGStotEXALxcsETSLWaDTWyrFVpI+DYvU5kOGRMfozWL62k2z2Hdg7/6jCks+bR04PSZeAml/FZuvLLtgjWGmmwMFhFGKdn5HJayJ1051WOYEP+Ct5gdeEeLSnSJrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XR3U8OQrR/WCbaGAff5HUfSBrPoUNNgSB6M0tPYGAf8=;
 b=Fj3IAH7JaokIGQWpYw4pBSdbpFeEbaCbV5xPhb2Q1BkDDJ6+dqKpppmFXRYyfINPv/dFpFUepZ/kbjab98Am18Tr1XBuhtI2avYrqEKkvMZOd+11cO+biH1CejuaMz9qRXtPG3YiDU0SQNHkhEmHmuZ0zgkjbfDRmkqlofUy26mDXf12czsjLfd7KHZw3N4+EF0lMueMYTwOpnXrsQhORdAAjZ7OUTOb8w0ZRPio9wTuv1fW/rmVhJC5+Co1AV4pppa+hthxGXZfRgCDHZBAf9DdQb3GpynHiPwO1mT99Hf+qPPJ/lViH2qh2X3uLAdyIWlFNHtsezj31GGhPajfPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=de.bosch.com; dmarc=pass action=none header.from=de.bosch.com;
 dkim=pass header.d=de.bosch.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=de.bosch.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XR3U8OQrR/WCbaGAff5HUfSBrPoUNNgSB6M0tPYGAf8=;
 b=Gy0VU0ryGPIyp7SQw2eJUZkyw5RIMyo/mmZ/vSfYLz7YCgpylCQfoDyfDg2e5ahxiFSIdeBouOLYws8ELkrzng7fX3aYxAtnCXRYXQxlevPs4JGkfeze0xOe6wDF2sNNdDO4KrZiWsKWB120SuytPtie8N7eFjkcvCg3HOBxyM+0roxSrYwIOGFJtIGXfGF4pKk4S/PUJzVuhP12tlX09/SSYIzN4IDedyFmJsy+pwxjj+SgcUHx30UQwlDUT55J360K7VSK0CWcEJoCDYgWA4kwOqGnRTH6KERTYKnCn9VTRsRHq4We1k8GgSHF9qdLKgyvgvz6Dtj50NEJ5ysE/A==
Received: from PA4PR10MB4367.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:102::13)
 by DB9PR10MB7955.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:2ef::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.26; Thu, 6 Jun
 2024 14:58:03 +0000
Received: from PA4PR10MB4367.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::22a:cae8:6248:d35d]) by PA4PR10MB4367.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::22a:cae8:6248:d35d%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 14:58:03 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 light up but no real transmission happens!
Thread-Index: Adq4Ie3roTaU6JjtSq6mp1UeUkK0BQ==
Date: Thu, 6 Jun 2024 14:58:03 +0000
Message-ID: 
 <PA4PR10MB4367439E8CAB433C8059D4ADACFA2@PA4PR10MB4367.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=de.bosch.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR10MB4367:EE_|DB9PR10MB7955:EE_
x-ms-office365-filtering-correlation-id: 8f88d987-2f6b-442f-ae7e-08dc8639110c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?7D0fypyVOBijUtKuFUUrKwPmDwx4ddfTjidh7jGTBUJaSk5eEXRrVMNR5YD+?=
 =?us-ascii?Q?2r5lgqiC7xKIhhDrt/ixDC7AA5wm1XgDeXecRr2hrZRv1F+D2Vsbc/p893Aw?=
 =?us-ascii?Q?rsi6djO5q0mxQ/oQSWCi3k/b3ylOAwbMNqdNHs/Sc5wQWFLAyHWhHhiAXZqR?=
 =?us-ascii?Q?qtUH9baOtdL7qJFMUyp3Uvajs0ul/RastWqW3grgOFp4Z4SK+hdF/7r8BxE9?=
 =?us-ascii?Q?iP1XMPGWFk2cpGO0q9T/m2yGitKN5bSANHZHRkpznoKTF90homwiftEiMndE?=
 =?us-ascii?Q?bht8q8lPojZgDEmH4qpsCqkUZ3KtGwSIJrBDOhcwWZrV+sRp1ntUbjxCkvy0?=
 =?us-ascii?Q?M4qKdwyC2UiqHAqN0X8THnxCVJ/qzSDA31Ow3sDx1HhPsn+HEUSot59Trsit?=
 =?us-ascii?Q?GXNFkpmHrRmms94PF/yAFlaJfMDUSKjhjsWYq4ObKeDp4jhHCk/I2uGC1dQp?=
 =?us-ascii?Q?p8nChvcNKv56ieG6v/4bqPqAG4k2jeNuuStKdprXlYEvk+OkSmmlN4nt+Jkf?=
 =?us-ascii?Q?ITNvZCJz+bhZZVM+syTDAlWI1jXWTXdEBpxroaOsInmLBjC4xB47mOTFT/8G?=
 =?us-ascii?Q?qTUm/JSZspNaVKNepzYHJdtLtD3KSfhUDrL4c8rQVesbUeUKO8DUiPiuFiQ/?=
 =?us-ascii?Q?VAzqeBXQISjaMJePYLZmrX8w0u/7DTSK0EEtzQcjOF+hk00HvMJS605ugUN6?=
 =?us-ascii?Q?pdEtN+Kh/IYSEoSyxjg0htGt1olKX+UoeakyT8sUX0qY19FprKfdCS3HxhZu?=
 =?us-ascii?Q?qib9OdKaSRmbHomtbercU+dc7p+jc336K9ipLnIBrs7v59V1Aao0mRIEa6Vh?=
 =?us-ascii?Q?LvQXu/v+YSSazaPP2r1N5OOezrYjILR990Dgaw1vswnaQrlr78+P7aomcpIl?=
 =?us-ascii?Q?Zp7s7F4+if/6B8gBUr6xPDbvza8lQJnnTrKeTqaKPyulg73q7VZPpdT+QxU4?=
 =?us-ascii?Q?3ze1rjD4YXjt5R+S2QokqDGFJB6v5XcTHO1OAcAL0azPFbo3swsL1WnILgXo?=
 =?us-ascii?Q?KTjNLAeWh7ViuyqH1aH6GQ28s/PI023W7YKhIyzr80GcEIulPwwpDG793ndM?=
 =?us-ascii?Q?kkgPr9AytNN/3IgUKBpcFBnlNLUmGaDWtRevBPLcmUBhhG+y1cg6F5Dv7/Vo?=
 =?us-ascii?Q?qxdEEwB2ryYvtAiSDXOD+FNIiGF01iL9QzrDGOB5WS46B93yPWy8fYM0r7nd?=
 =?us-ascii?Q?n15uYI4j18iBuFoNak/UJnSMgBQ5dK5PzrpDBz1tIrNaZmTxwXc21ewMLm6a?=
 =?us-ascii?Q?ztyUnW3njdgN46BRabIn9YLmyRaik4wnDGSSOWi39Dtb5GCTdYJyCLE2DV+p?=
 =?us-ascii?Q?Ei0H9Pk4plBA86qnbWZL+J4e87tO5M6gF6W1C5I9JleAohI8213uOaQKf3eP?=
 =?us-ascii?Q?wrP/44E=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB4367.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?VltHVQemx+00ITPm0wYCX8xqiLiFrHUMauGKD1gh8SrEvlk+gbeH2xv87Tdx?=
 =?us-ascii?Q?Y7DF96IlICeLeMgcmRIspqiPwlSWHx4XK+XK8K44n7DVkFKrWQLXmsrBCp0Q?=
 =?us-ascii?Q?FlAgLjxfG74yo0wiMWrC7ML1gYMUpuryO+SK44iHF9Cm1wfyU3YC81Hlsp8b?=
 =?us-ascii?Q?NQgLSgLdD9eWSJDSiG12D02pdvKZ4eGNZ7RYTmG3sU7i7sKG3iRWxc85UkMN?=
 =?us-ascii?Q?AgDGyjLqKxarP7fM+UFqZXN9D2ZEf761kSkCJkKldLcJVS+6PGG+X6dvgFXl?=
 =?us-ascii?Q?IZuqR0wQZuOeFStQelulYsYqNVApDemOxJ/bULemM8nerGBeb/jYtCuHL1pU?=
 =?us-ascii?Q?Hl4GtfNzoSowKQZUJkzfOV5OLUEicEx23QyNDU1l3LBTwzyGjFNdG23l8vtX?=
 =?us-ascii?Q?TYFAsiICu0uSBhY2vZfPxFwYFt4mGuxkEAtwRrAZhPQTqB8oXRrL+9C6Eori?=
 =?us-ascii?Q?Fg6fCeYA9HHKZf9Oi72pKV4NfNZtLTEyYFqpmCh89fCDXmN/zb9UjfqmqkDz?=
 =?us-ascii?Q?f5HCZYUyUVXQbs16oIHz+iI3BF8YzSmYbkTYtWnQOOfX7MVWGsuNOUgAs9CI?=
 =?us-ascii?Q?5DN/MgtCDwlxkHEFDehgdAWmhUdz5B9S62iXwiU+xlS9igcLWflY37cXvN/L?=
 =?us-ascii?Q?0z9nxcnCzyQ5+P6STj5FmRZUjfcUrRKlIMZrwVq+3P8DP/iy/QXrIphFCAyU?=
 =?us-ascii?Q?3mA5rjhbU6FRoUpgNw8jGqrDLnPndKcC2XtKQ2FV4GxOS/l49xw/OwogyN08?=
 =?us-ascii?Q?PafxE2m7cSi0ox/NIPKFzMV21T0t+BjEUMVAHuj+mZ5/kpy/Txu3J9hSgzE6?=
 =?us-ascii?Q?mjOAI780pu9LsrSlRDu0ETS5p15fROBeX+P5Nuq2XBgaj25bvM/QC0slCl+t?=
 =?us-ascii?Q?l1IspKDR5Rtd0KGpf8+jhwroiNccsdntnUZRKxtJ9rJczerFZECp/EkCjatg?=
 =?us-ascii?Q?W+jnmRIw6WlB+EcSsLt0Jepy5OMBgLEAzzzYqUWXbv8RMZN7w75g0lnLZ7oJ?=
 =?us-ascii?Q?Yf7macFPX4i8PP+Uhy+W0VirCD6g1g6eOEZx62fwssc4EhzcUfZh5SD2VFge?=
 =?us-ascii?Q?j63M11Fhuu1SAYvTXgNvjQuPoBs6jLCRw2UsLcIufd7BKST7lEeXpCYx3msJ?=
 =?us-ascii?Q?b52GlDoukVpMQCuQ9saOS/cODvLHhw2iG7+QJafZo6Zm8V68A/zHvf8/2MwK?=
 =?us-ascii?Q?P9nSVys05cQc5q2ysmsiPxRrf3iOmMsOgpDtERj2dhu6hKF7P6CKkWXowShc?=
 =?us-ascii?Q?msbic8Q1P5OBOFWX1m2QWhG0B7NMBPatlNorq4KuX3Xi3tmj+ztZftSxagxY?=
 =?us-ascii?Q?Iyl46Lyp0NNjWLnWIk6fYLU0SgGYLt4AaZWt4AtxARayItBJwYI8tK6EokMP?=
 =?us-ascii?Q?7/mBDzPwyQiV+745vDRCurTLXsjQ+0+oSJPc2yQxN+NpvrePSQAQGhXr5zii?=
 =?us-ascii?Q?XLaByCS/H6/HPk6YC2xuWqYJEnmN3COmDydhd1V98xkT3yL2WeO1u07Q02Zl?=
 =?us-ascii?Q?NbHZ3tVCPHU5w/e+m+/RjF38pp20rAEUxS5pY96LoXl9HwSFyxE+FH/6QdIx?=
 =?us-ascii?Q?5jAIQ8yAyHaUl1ynvC8=3D?=
MIME-Version: 1.0
X-OriginatorOrg: de.bosch.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB4367.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f88d987-2f6b-442f-ae7e-08dc8639110c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 14:58:03.6823
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0ae51e19-07c8-4e4b-bb6d-648ee58410f4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +jgAU/JrIXIhxAOgcuOC/IIxO9jdLJibOln7p3EH1Y/LIqHnutkXMkYLpCaE3Brd7ODF0ClGcaVWqpiiIWUs7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR10MB7955
Message-ID-Hash: LTEYXSLSVPOTI774T6VK5M5C6OX4PVS7
X-Message-ID-Hash: LTEYXSLSVPOTI774T6VK5M5C6OX4PVS7
X-MailFrom: Ali.Kariminezhad@de.bosch.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 light up but no real transmission happens!
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/44XUQLGDZAKTGTOF4S4QAUH6A4M6K4RA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Kariminezhad Ali (CR/APC1) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Kariminezhad Ali (CR/APC1)" <Ali.Kariminezhad@de.bosch.com>
Content-Type: multipart/mixed; boundary="===============1478006345669339118=="

--===============1478006345669339118==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PA4PR10MB4367439E8CAB433C8059D4ADACFA2PA4PR10MB4367EURP_"

--_000_PA4PR10MB4367439E8CAB433C8059D4ADACFA2PA4PR10MB4367EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I am running a gnuradio generated code on NI-X310. The TX port lights up re=
d but there is no transmission on the air. I have done different debugging =
steps, from replacing the cables to replacing the whole USRP. By replacing =
the USRP with another X310, the transmission is smooth as expected (under s=
ame settings, FPGA image versions etc.). Have you faced any similar issue b=
efore. Could it be a hardware issue? What could be possible solutions?

Thanks a lot for your support and sharing your thought in advance.

Best regards
Ali

--_000_PA4PR10MB4367439E8CAB433C8059D4ADACFA2PA4PR10MB4367EURP_
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
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi everyone,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am running a gnuradio generated code on NI-X310. T=
he TX port lights up red but there is no transmission on the air. I have do=
ne different debugging steps, from replacing the cables to replacing the wh=
ole USRP. By replacing the USRP with
 another X310, the transmission is smooth as expected (under same settings,=
 FPGA image versions etc.). Have you faced any similar issue before. Could =
it be a hardware issue? What could be possible solutions?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks a lot for your support and sharing your thoug=
ht in advance.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black;mso-ligatures:none">Best regards<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black;mso-ligatures:none">Ali</span><o:p></o:p><=
/p>
</div>
</body>
</html>

--_000_PA4PR10MB4367439E8CAB433C8059D4ADACFA2PA4PR10MB4367EURP_--

--===============1478006345669339118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1478006345669339118==--
