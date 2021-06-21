Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAE93AF86C
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 00:25:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5E90383FE2
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jun 2021 18:25:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=wisc.edu header.i=@wisc.edu header.b="jBaCbo+g";
	dkim-atps=neutral
Received: from wmauth4.doit.wisc.edu (wmauth4.doit.wisc.edu [144.92.197.145])
	by mm2.emwd.com (Postfix) with ESMTPS id F4097383DB6
	for <usrp-users@lists.ettus.com>; Mon, 21 Jun 2021 18:24:41 -0400 (EDT)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2175.outbound.protection.outlook.com [104.47.56.175])
 by smtpauth4.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.8.20210105 64bit (built Jan  5
 2021)) with ESMTPS id <0QV2012RQOX4T010@smtpauth4.wiscmail.wisc.edu> for
 usrp-users@lists.ettus.com; Mon, 21 Jun 2021 17:24:40 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.56.175]
X-Wisc-Env-From-B64: Ym91dnlAd2lzYy5lZHU=
X-Spam-PmxInfo: Server=avs-4, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.6.21.221816,
 AntiVirus-Engine: 5.83.0, AntiVirus-Data: 2021.6.21.5830001,
 SenderIP=[104.47.56.175]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GHfTwdj8s6/kZynoA5NUJm9VYxM673KwTJggwhOCn+K+Y+gjs3/IyYY5HRKk0IXbfsEWu58DSHsb2NfRouXO2cNtpJAm5fTuVehyM29gUoYLOD8d1IC9GF1gthOUcaQfvdZoW+LLuPOAKZZiy2p1r5th0USZW1OjwxWemMSxauX3RxkIhLaeTFYz1Z5UPksCnSTFqh56LBQvVeEGyVSiRSqaKBNtvjSTvDzjwQeEnpAwy2i8INBvHwAvrOYYfkmyz9wvgzJolyvgRS6gKAEL+KL7p+Av9j7olFoKJsu5BXy0/4BWq9gjiOzZynWA/beB9ocb78IbLQ1iYw28NT2EKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ztgutohnE6YqPLYqclyvwqcLziMhsaDKINelh4neiGQ=;
 b=XJyymYYczYVeaHRJzuRVWv+QjAoCFv9XuDbFmhmK0KXxVY167ef6v2GYJ4PAMEG7D4/cpzQNpT+23LlSTgyHaWVxv1es6ej8YwA7GsJ8Y9aQsXYSNpanAvnDL8Va8oJlVlK16oCJ2Quhzsz6NkdVqBE0gnwq3yXLp1slujR7+M7assZI89SKx0kfsaEwXhrwaun6iWECQmj1xU7JQ5EZhVL540IwrlGBrWPhDhRqJdg8EIGIPfYyRPPvD4AAxDH8PrxQdPjVorPD2H6E7memM0dF6Q8/pogPeCgGvr+J+2wWM9Ap/Yhd+EGiiCeLyIXyLkqbsZsxyTA1qOw3R8X9bA==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wisc.edu; dmarc=pass action=none header.from=wisc.edu; dkim=pass
 header.d=wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wisc.edu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ztgutohnE6YqPLYqclyvwqcLziMhsaDKINelh4neiGQ=;
 b=jBaCbo+gZmLu1pwuahfIjMePsG6pANuRtDdUb0H1mZA+NeYPU57V6m7wcQXP/Vv0NZVLzmNFY7QNHkA3+SrENLbqhznCSS0fnhNTVw1bz+thPLtip5LkIvVhihbQAKO3BlTJO+1nLJwmWMxxORercfIjRmhSM6N42SNz/oHiGPo=
Received: from BYAPR06MB5352.namprd06.prod.outlook.com (2603:10b6:a03:ab::29)
 by BYAPR06MB4584.namprd06.prod.outlook.com (2603:10b6:a03:47::23)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.4242.21; Mon, 21 Jun 2021 22:24:37 +0000
Received: from BYAPR06MB5352.namprd06.prod.outlook.com
 ([fe80::4c64:bb29:c55e:894c]) by BYAPR06MB5352.namprd06.prod.outlook.com
 ([fe80::4c64:bb29:c55e:894c%6]) with mapi id 15.20.4242.023; Mon,
 21 Jun 2021 22:24:37 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-topic: Adding Timestamps to B210 RX Samples
Thread-index: Addm7BywcxR/E7cAQ1GhYkAXSz/3eg==
Date: Mon, 21 Jun 2021 22:24:37 +0000
Message-id: 
 <BYAPR06MB53523BE92F6B1451D1BD12BDD90A9@BYAPR06MB5352.namprd06.prod.outlook.com>
Accept-Language: en-US
Content-language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-Originating-IP: [2607:f388:1082:fffa:b5e5:9221:d52b:cf11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3ec32d8-2b2b-4753-a962-08d935035b01
x-ms-traffictypediagnostic: BYAPR06MB4584:
x-microsoft-antispam-prvs: 
 <BYAPR06MB45849898AFEB389F6E75E8EDD90A9@BYAPR06MB4584.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 sDUhGFkuSXBCRsWW58RftC0K6c2HOHjZG+weZxYv5twlCN0Ji8rbmi8dLZzKQ/CdwOCv721+c3ezdjH737IRV8gwVttPh2kU526GptRZAdbU9keDvUV4+QOIVDKhnimG3p67y6PMt2gG8i8XBgRksmNI6OyIT+e1u7vAVSuvkc50SoMrJHMZwBrYlIp4bXJ+xRDCF13+ej3hSOqgWnfalAg8jcbQhdubQ3p2/+N/R2oldETqnlutOxojLBqleNDDZqBUy4LCk7r+VJ6OQdf4g2HTYcTY9jbw00icqiDu/CXzhOv7r1UrGD0c45orme3PIZU5q1TWZiGpg/gNrzbICWx+XxojCkqFiRSbsbIO/0esVjst4WcQlReXvq5w9J6Ui707/EIK+SpEna3xL05LmN1TZHpq5KbW5K2gBTxyP6LqaSnnNi7D01LOxpMjw8KodwLS1KJ6MxhFEUkBhM5xdkeI+KZMmU4EdKwcZrkQxat6xCPaXlJ/ZiIyQ2bI6lUNu2GJ7W064obUKTKkr9bQsMUYD6npPMSnxlsEPcgurhvoMbhliz3aW552RtGKtoagou53hIIv+djNlCGjPbmB4unJjtcWdLseq6V5Kusitqvr6ZRkw7KZULxFOyYjPi5fDTOJ8+F4CkOR+nbmioJ09ttI0OdUPt6S7lJz2NWyJhwxy4fDvjX/LXpUABr5bP+3DsmXVIZ6db4GRjBWB3ldcw==
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR06MB5352.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(396003)(39860400002)(376002)(366004)(136003)(55016002)(9686003)(83380400001)(166002)(786003)(316002)(966005)(2906002)(21615005)(66446008)(9326002)(8936002)(6916009)(478600001)(71200400001)(186003)(86362001)(122000001)(38100700002)(7696005)(75432002)(52536014)(5660300002)(6506007)(76116006)(64756008)(66556008)(66476007)(66946007)(33656002)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?q4/lsr4oU5/rB3ajyiP8ObelMLSYB14Inrwn6l2qJevS0sSgP6D375Bv1G8y?=
 =?us-ascii?Q?yzqna8ulS0hfbXnhApDF3GlcOFL5iHetuxCLjLvdmN1Qk6bFZYIvFCvX6H3h?=
 =?us-ascii?Q?F94lc26sryU9f+ayLe1ppV7AW06tT0CW1oTrzIj36jNDtN0cm+e4gNIbV1C2?=
 =?us-ascii?Q?M4g/0/uTgqrLWg68ml15q6xQjqTR8PLKRHL7QqgmpD7OWrdUfNr6JT4hqZg4?=
 =?us-ascii?Q?lrqw8yzxDm8yB9E6xmUoeN3MUvJGUD76akFR0ZZr+ht0ldIO+v+2o9+sgNzs?=
 =?us-ascii?Q?QD24VCZKqUz5Pu2H3+JWSpxTDQ/V5PEQnGu4/t490y5f/ddPY9I8ZPPw7BrK?=
 =?us-ascii?Q?M9sOOcxsrb1OXECaNv/fHh+jLRvtylAGLSYTX96RZ1JDkV+9ZXIuO192hobr?=
 =?us-ascii?Q?XMtdnbskHlpmivVlNnyF4oyiG9NjH3uuc2X3/mlqDZsH22e9sSg7s1ATwSOa?=
 =?us-ascii?Q?2fp1Kx2hbtYw0GYDsHHDCt7NX+ozQCtRuagYtnh4dvmInNHjnbR9wNK0SDNl?=
 =?us-ascii?Q?HcMFvH40NTYrxyoU0+n2UdgB1HTHv8EjesZmMaMCNz7ar2hcNxQCMSUi5Q7F?=
 =?us-ascii?Q?CIU4GXDLID7oDLRIPvFbnCXHmcOq2KouPLL3+6AMlzhO1odWeNUm9t2knAeW?=
 =?us-ascii?Q?CoFH5Hv8m7LfY5/jHCRyxcTRwLAx8snb77ETXBwx8E3/fRhh8sZRdZ9ZWmLA?=
 =?us-ascii?Q?Ob45x1EXPTnX3l9z061QNoecNbl4ovBPSIsszKyMdFp6acZh7+I2yrKF9hVg?=
 =?us-ascii?Q?y0sYqqjUet6HSo2aOqefe6SZn6kaoUIlz1Rtgr5ih6QmDJlpy1EFRR+oUkBV?=
 =?us-ascii?Q?yrQKoDzqBBEcNUfXbMwsxBAEjWPgai6eytjQiAw2RSLBBXRvr6T9ss1rxTxZ?=
 =?us-ascii?Q?3mR7ws/Jr6Pqp4zDAg4OF+bfgwHv7F6IQLuV9NSTFuqfyeVB99gETr2Q0hNC?=
 =?us-ascii?Q?4jz3ZLtcYE3uhqCYncNcOnn3NDWCbfucoCdF6wFqWLtdlyxwNSc469lTqQSM?=
 =?us-ascii?Q?sErQvCsk+fuu6BShL/FGsZvKyBXTmuS4sITd0S1R5gYBZhppBmJYJgpJV9OX?=
 =?us-ascii?Q?lUqbxC8oJiA6lgm27jP1l+8MSmYMSzFwXZ8jkly0TOtzhERA/6ODvDwt3+cZ?=
 =?us-ascii?Q?0FQCHKzFoZ+8POUTWd/q0UJiBnXTg2z/b4nabbckywNZaTWr3pVxlsoxu0LY?=
 =?us-ascii?Q?kGIIpMU/55cCQNiduLz1y2+272gXYerAK+cz8xh1b9yIyW7yG3aambQL6AqO?=
 =?us-ascii?Q?bvx/BenqbnivBnNGCUiNWiSqnLZoA8GfgK5KOI544+q/uWYk/V3Tj4F+Qdoh?=
 =?us-ascii?Q?llxF9skZUNB3UX5cwKUJsccy0Moj4au/Xzr3ngtuC3wpoYoYCH9GFVfWlms6?=
 =?us-ascii?Q?Kb1iuOrK2YPjLTzJ6Q979j3GjZFT?=
x-ms-exchange-transport-forked: True
MIME-version: 1.0
X-OriginatorOrg: wisc.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR06MB5352.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f3ec32d8-2b2b-4753-a962-08d935035b01
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2021 22:24:37.6156 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 CbRvj3TyZeALZP3WZqwvzzGXH/GTfTtHJ88hwLF7sZq/EalWco9+WFK3wMzDO9NP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR06MB4584
Message-ID-Hash: C747JENB7CKK67TGGG7ZTPQLVVKXEGIW
X-Message-ID-Hash: C747JENB7CKK67TGGG7ZTPQLVVKXEGIW
X-MailFrom: bouvy@wisc.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Adding Timestamps to B210 RX Samples
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I7OG4RO43BQUJIO7BHCI22WCKSPIOK6Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Alex Bouvy via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alex Bouvy <bouvy@wisc.edu>
Content-Type: multipart/mixed; boundary="===============4728344695725683691=="

--===============4728344695725683691==
Content-language: en-US
Content-type: multipart/alternative;
	boundary="_000_BYAPR06MB53523BE92F6B1451D1BD12BDD90A9BYAPR06MB5352namp_"

--_000_BYAPR06MB53523BE92F6B1451D1BD12BDD90A9BYAPR06MB5352namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

In the paper below, the authors say that they have set up their USRP device=
 to include timestamps for each recorded sample, but do not provide detail =
on how this was achieved:

https://ieeexplore.ieee.org/document/6533293

I have been looking into what is required to achieve something similar. Par=
ticularly, I have been working with the source code of the rx_timed_samples=
.cpp example provided in the UHD files, along with this page in the Ettus m=
anual:

https://files.ettus.com/manual/page_sync.html

Looking through the rx_timed_samples code, it appears that the metadata ass=
ociated with the recv(..) function contains a time_spec field which is the =
timestamp for the first sample in the IO stream, but it's not immediately c=
lear to me how that might be used to timestamp all of the samples, which ma=
kes me think this may be the wrong approach. Is there a simpler method to d=
o this that is known?

Tangentially, I've also looked into adding the timestamps through GNURadio,=
 but there does not appear to be a way to do this as far as I can tell.

Any help is much appreciated.

Thank you,
Alex

--_000_BYAPR06MB53523BE92F6B1451D1BD12BDD90A9BYAPR06MB5352namp_
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In the paper below, the authors say that they have s=
et up their USRP device to include timestamps for each recorded sample, but=
 do not provide detail on how this was achieved:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://ieeexplore.ieee.org/document/6533=
293">https://ieeexplore.ieee.org/document/6533293</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have been looking into what is required to achieve=
 something similar. Particularly, I have been working with the source code =
of the rx_timed_samples.cpp example provided in the UHD files, along with t=
his page in the Ettus manual:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://files.ettus.com/manual/page_sync.=
html">https://files.ettus.com/manual/page_sync.html</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Looking through the rx_timed_samples code, it appear=
s that the metadata associated with the recv(..) function contains a time_s=
pec field which is the timestamp for the first sample in the IO stream, but=
 it&#8217;s not immediately clear to me
 how that might be used to timestamp all of the samples, which makes me thi=
nk this may be the wrong approach. Is there a simpler method to do this tha=
t is known?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tangentially, I&#8217;ve also looked into adding the=
 timestamps through GNURadio, but there does not appear to be a way to do t=
his as far as I can tell.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help is much appreciated. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal">Alex<o:p></o:p></p>
</div>
</body>
</html>

--_000_BYAPR06MB53523BE92F6B1451D1BD12BDD90A9BYAPR06MB5352namp_--

--===============4728344695725683691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4728344695725683691==--
