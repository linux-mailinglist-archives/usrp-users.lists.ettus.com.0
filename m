Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFFF3F8239
	for <lists+usrp-users@lfdr.de>; Thu, 26 Aug 2021 08:07:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17599383B92
	for <lists+usrp-users@lfdr.de>; Thu, 26 Aug 2021 02:07:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nkom.no header.i=@nkom.no header.b="gLs2ZiBA";
	dkim-atps=neutral
Received: from NOR01-SV0-obe.outbound.protection.outlook.com (mail-sv0nor01on2111.outbound.protection.outlook.com [40.107.225.111])
	by mm2.emwd.com (Postfix) with ESMTPS id E0048383B92
	for <usrp-users@lists.ettus.com>; Thu, 26 Aug 2021 02:06:28 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SIurTRVh79L/38yiEocd8XHw1JazZ4Tt0NJD0SWC+0gcgbf5NDnA5BqXhm7S6NXgnVd7HzIrbZlEMtT3+DJ5ZX5uwLeHJoZcuZ2JMNFHRSQ7Iq0BTTd1pc78IBxuxyMg5kG0KZx2hk9xPugXaNTDkOOKaG6OSdpiM0R5Uqp3NKgKsRvP0ElQodJRZWaJj02PodKg09d6ECia4HtI0ilWLbmoOO+D6dB64MGTAEp9t5Q1nHWkleExS18hGZCOgdSx5AUp72fkSChgV04prIymJPMNoQDxrRkxXbvdhtj94Nj4UsUmDwRQbxs//DH+GjDEAKsWxasA+b3NcHRTb3+UOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z+rDV3Bmd87KozEV2xUNPnHl8E3+vtGqSG43QDlOc0k=;
 b=N6PohMJMgVJSTXS1nHb7taZPGbPlMFfcvMBi3VdLSD/3EYLMkP/whNcOn1zAjA7LjuxVQOaPNeX5Gyg9HIH0yHzuy86qzJSsbDktEjlZuDes3RUxQaAS+c3wGaPv/6TNwRdWEHtKDF12e3q/juuuGz98cjlLGEpN6eq94c7GiHSkidqAr7s32PU6Y+bD3ZU7hGRzsP8tqtOgsEEhsYKah9hT5iWOgQJ1FeXGpbkur86eXz3ar5ARmk7gR4ICCt2kjKTxXSGaog1h9sNOI5Dmg1de9nIUqdya4bWDzTMj7zAHzMYQIXGGDSxOKsv8QKI2Fa7lmnzKU5rOeBSCbA+/pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nkom.no; dmarc=pass action=none header.from=nkom.no; dkim=pass
 header.d=nkom.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z+rDV3Bmd87KozEV2xUNPnHl8E3+vtGqSG43QDlOc0k=;
 b=gLs2ZiBAuHfuR5sf3KOlu+teT6HmObocwGEN811gh1YG0YyaR+P05gVm/Fg98pcfOS+m8zFyGBL+jYS8UAo9u+oKlqJ8+j8vrkZniRi0tsumQfFRFK+xeFborAPBu79NPOPs9Hsdf5Muj8Trmh8/DesXCb8u6Aq+X+gA/H3+LSsu3Nq0ajhqrjrVspaQiCpFCPaPKcg/6Hk6Iqu2b6j8sQv7wr4vgtMBSv9x5h6PZh4nsTJdAUfVN8CgQ9WRTuWxss1Hnr+OLdXKraX3hRX0WCBB6Jfjv8gPMRxmgG3kkwPKefZAmAXTbcLBdPq3M/CFJU7qxSu9+8nITIEhRyUcrQ==
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:f::16) by
 OLAP279MB0248.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:2::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4457.19; Thu, 26 Aug 2021 06:06:25 +0000
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::d077:aee3:9d0c:e47d]) by OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::d077:aee3:9d0c:e47d%9]) with mapi id 15.20.4436.025; Thu, 26 Aug 2021
 06:06:25 +0000
From: =?iso-8859-1?Q?Skorstad=2C_J=F8rn?= <jsk@nkom.no>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Offset tuning on E310 RFNoC
Thread-Index: AdeZqzotVG8+IVV8QvuqnDhsnwPytgAlRnMA
Date: Thu, 26 Aug 2021 06:06:25 +0000
Message-ID: 
 <OL1P279MB008322048492BE24B21174A2A0C79@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
References: 
 <OL1P279MB008360B52DA24BB702B2ADB0A0C69@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
In-Reply-To: 
 <OL1P279MB008360B52DA24BB702B2ADB0A0C69@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=nkom.no;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b6bbb13-62c6-48be-b529-08d96857a307
x-ms-traffictypediagnostic: OLAP279MB0248:
x-microsoft-antispam-prvs: 
 <OLAP279MB0248A3E6AD96BDF93784F321A0C79@OLAP279MB0248.NORP279.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 BFkbKp805NTLmQoNkO0Bl+wDsq/ygOs+5OWo1D9dqfNzJwjbhKtaQNspOlVyaFBiNEtYYk7tTjbVWUUqjJmAkzWhvC6AqGo759H4fCIKfz4LDdT5SnnZielPG38x76R0I4yQW7QS8GbrPP6U57FPoBmoHjcpEOqGmsGCJvSTyFhzvKFISDIx7uNR2qGf9g45Z7UN+y8XNELbsjhLGP0ylcO9t/8qTL1OxtZrlTvTs4AwsnlA4b9xOUrKGEXDQ60Wd4uPZ2ueqSwD5E2U5TL8n4dTjI7kOSXSbB4MiqvU0en1kyP2LLGgvicJVSGwnLIAWSiHxjK5+82HmvcFAX8MUzJ6m4S+psMW+CUJdMB8gNIZQ5PsyyZiSbOaldmOsy33OfefJovcdO5FE5Ec5MKMnuGI/GGLz2NMSKUfx66q2elEk7SMT55inOXgmhWXWHOemDD28kiOTBpTBKmrY9FY8zCmBRZsq8jt85wnE1I+aGL8crXDPAUh3/rzFiUqh4Gc6yQam1MAuDwjTH053hLSS94IW4isb7FdaGttYgnFRE8hUgJnTejWXq/9wG6BDnO6el5FbT5cJAk4ST/sg2DwYqE1PtQwUsaln0Yy7ryMHRgZvGytRpStH/vOPToQW58IOJi901+x2Q1bG9AM03qrGIHHBKSu6rmxn+S5bt/szCyPtf0JT0Ss2Fj2x0FVinPm3hlpERI3wvb+ilOgBPihqQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OL1P279MB0083.NORP279.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(396003)(39830400003)(376002)(136003)(346002)(366004)(66446008)(64756008)(66556008)(66946007)(66476007)(26005)(5660300002)(8676002)(8936002)(33656002)(316002)(52536014)(55016002)(76116006)(122000001)(9686003)(38070700005)(38100700002)(83380400001)(71200400001)(4744005)(2906002)(186003)(86362001)(6916009)(6506007)(478600001)(7696005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?OeCFU6n4YGi6VQNJiJ3guntJBaEbVvRBqXH3LJWyTm8N+CO3znapILn0nu?=
 =?iso-8859-1?Q?u9pt6uZm85fiW/A3wIbb5uElQkBDUcHc05M8gCH6NsTWYoVR0nqSo7lPOe?=
 =?iso-8859-1?Q?NfcJc5gJGDeLKmZxP2bcV1IZ1DbFPGfhBDucpL8qysLwLU4GOBnFiR+Z0b?=
 =?iso-8859-1?Q?KY3hpn89PoTEuGvaanBfjaejTgAlEoQp5ZkHPUGncfJz7Ik6cW5sgWfc4y?=
 =?iso-8859-1?Q?LIUWQS93uCBm3hBE18Gc7Obz0GEaB5aH93ya4zjJJUdzb5CpMXBoKYgLFX?=
 =?iso-8859-1?Q?zB84NSC+rp6/C4LII8nBQI0VduN+uHiikLPx1iCLtWJ5OH1De0K5Lepmzz?=
 =?iso-8859-1?Q?EnXrvC11hM2BCiJEUVLrnuPM3xNrt3fPhPRFgITMfeq6wXUcVQQ3OpFB/V?=
 =?iso-8859-1?Q?tNdKOraN+06Q+8NutO4PlFpBEZXj0jVGCtg5kqcTVxGe7yVGSxPUkdRXzS?=
 =?iso-8859-1?Q?XkFzIyW7SpHVBbcuvPw4/PFFlAibcfkS0HRSRoijtJ3zwnyGG/pP7zOKLd?=
 =?iso-8859-1?Q?fmXMx8sGkMtvUAFee/rrM7BHTT6pL9MJx5IIlRkOZri45G0SLsrtB2tH44?=
 =?iso-8859-1?Q?vmW5gJ+xUUsiwi1L99bbQJPY3ZJIdnCZZGQbngcpr4np/i4KfcooLaIIWt?=
 =?iso-8859-1?Q?W71Ty5wkkmqUiiVYm4wk7mjLhelGL6OLt8Y3jMk2/B531Eg0IJm8Luvep3?=
 =?iso-8859-1?Q?a1AtJyBX/0J2WNEJzZvsMfZdYrUJm7FsxiZIDOhq6JqEUbbFqvAygpMMJo?=
 =?iso-8859-1?Q?G213+hnnbV75mPHZdFET1ujP4bSo6qBMx7PwzTjKTzAp/1b5u093kBUr1y?=
 =?iso-8859-1?Q?icXNyEVUA6BvX/Dlh2Kuo+ueSXExqeN4qi61JgZKo7bAUG7xBv16AISpJs?=
 =?iso-8859-1?Q?1to2Qj6HpR/RnAKfWTKQJf1Hjmq94j0HynPjwP+DR3g1ve9w2g07JELzQE?=
 =?iso-8859-1?Q?4+cdJ6A32at6eeetk4fTYUwnfZNuX6U1rzZ4ybV/B8J2m41sYYyO2NNOVD?=
 =?iso-8859-1?Q?0jVKYYjZdp36VdhREg9Q11l86LL7Jy/CbkzkhKYGCN8PWjFRnS/mcchV5p?=
 =?iso-8859-1?Q?UoILGQf+foHV8pMD90YmlU3LUba/M8Hnam885Z/o4la1PorgORGFKtC/Ip?=
 =?iso-8859-1?Q?7tW174Qq9XNbtC0ztSTmp/HLjWXq6pUa4xm797SOeIltT9akTPSnzGa+sl?=
 =?iso-8859-1?Q?781egvNuVDIwu5Ha+aI3PPifnIM7/pKC0QNOKE2n3Jn5QzFEvwfRtFbqvi?=
 =?iso-8859-1?Q?zpIv+dbLSGeOdLijpxCx6T7DwS7eQcQ7RmQpuqVVckzIw8emx6FGPX6pB/?=
 =?iso-8859-1?Q?KwUbH0/BgRYhllP2SLagx3qXOXZ/Bopjklecs6WAscdGS04=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nkom.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b6bbb13-62c6-48be-b529-08d96857a307
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2021 06:06:25.5125
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad83e65c-03f6-4cfd-b799-47a2fafd7bce
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D4KtPyzS0pRdSeEYAZX0CTirfhut7ge6x0Y5Vvp5b4LmtaeroC9fY5mbbLKrYBja
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OLAP279MB0248
Message-ID-Hash: KKHHBRMGYDWBMPCFDV6GE6RNGHGSGEEK
X-Message-ID-Hash: KKHHBRMGYDWBMPCFDV6GE6RNGHGSGEEK
X-MailFrom: jsk@nkom.no
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Offset tuning on E310 RFNoC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WFVR4CSDUZPCCIJ3B7M6X64E6FRVDLTQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8661458921309126743=="

--===============8661458921309126743==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_OL1P279MB008322048492BE24B21174A2A0C79OL1P279MB0083NORP_"

--_000_OL1P279MB008322048492BE24B21174A2A0C79OL1P279MB0083NORP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello. I am using the UHD library 3.14.1 and C++ to control an E310 radio. =
Without using RFNoC blocks it is possible to tune to an offset frequency, u=
sing uhd::usrp::multi_usrp::set_rx_freq (const tune_request_t &tune_request=
, size_t chan =3D 0). However, when the software is using RFNoC blocks, it =
is only possible to change RX center frequency: uhd::rfnoc::rf_control::cor=
e_iface::set_rx_frequency(const double freq, const size_t chan ).

Is it possible to achieve the same offset tuning functionality using RFNoC =
blocks? Have tried using set_rx_lo_freq(), but it throws an exception, sayi=
ng it is not supported on this model. I have an RFNoC image with radio, DDC=
, window and FFT blocks on.

Jorn

--_000_OL1P279MB008322048492BE24B21174A2A0C79OL1P279MB0083NORP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"NO-BOK" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello. I am using the UHD library 3.14.1 and C++ to =
control an E310 radio. Without using RFNoC blocks it is possible to tune to=
 an offset frequency, using uhd::usrp::multi_usrp::set_rx_freq (const tune_=
request_t &amp;tune_request, size_t chan
 =3D 0). However, when the software is using RFNoC blocks, it is only possi=
ble to change RX center frequency: uhd::rfnoc::rf_control::core_iface::set_=
rx_frequency(const double&nbsp;<em><span style=3D"font-family:&quot;Calibri=
&quot;,sans-serif;font-style:normal">freq</span></em>,
 const size_t&nbsp;<em><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;font-style:normal">chan</span></em>&nbsp;).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is it possible to achieve the same offset tuning fun=
ctionality using RFNoC blocks? Have tried using set_rx_lo_freq(), but it th=
rows an exception, saying it is not supported on this model. I have an RFNo=
C image with radio, DDC, window and
 FFT blocks on.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jorn<o:p></o:p></p>
</div>
</body>
</html>

--_000_OL1P279MB008322048492BE24B21174A2A0C79OL1P279MB0083NORP_--

--===============8661458921309126743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8661458921309126743==--
