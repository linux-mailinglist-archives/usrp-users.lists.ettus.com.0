Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE1452AC10
	for <lists+usrp-users@lfdr.de>; Tue, 17 May 2022 21:38:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9778D3847C5
	for <lists+usrp-users@lfdr.de>; Tue, 17 May 2022 15:38:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652816280; bh=j6n/l3XqbHEUsOYqj3Z57TWX8eJzhd/+0ycv3qILdFI=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=I7s2L19fIXH/8Q1xyC8G2Nu1utbvz8j+AWjhWGPLlibhwM3RNZdW6Eh1FJOx3uucQ
	 u6oeo8d87ggHuo1zsdabD4xfnk09wfR+1xWO43S4IUN3u4b3bDzp4ta+3PvsR0AeW4
	 9NjGGaJdVK/Cqz1suEwU/dcU1+1jGQBmRHIzt4OxDEebg9fpjDQj9k2CaeL8XSAKM7
	 KaZZuajY/MKTvN44DkRTH7aotR2fK2gw9TYFovRGrxb7AAArxa4nY8Q6NRMJ1Q3bHc
	 CI/w0gIU3mb1kcVuWEEtzvuX9+AX/o2qqDekieTKhaF5mPrkAVRv0XZaD25jxrcCvi
	 GljsL2OoBcqXg==
Received: from smtpvmsrv1.mitre.org (smtpvmsrv1.mitre.org [192.52.194.136])
	by mm2.emwd.com (Postfix) with ESMTPS id 49791384797
	for <usrp-users@lists.ettus.com>; Tue, 17 May 2022 15:36:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=mitre.org header.i=@mitre.org header.b="kfwrahui";
	dkim-atps=neutral
Received: from smtpvmsrv1.mitre.org (localhost.localdomain [127.0.0.1])
	by localhost (Postfix) with SMTP id E07DE172004D
	for <usrp-users@lists.ettus.com>; Tue, 17 May 2022 15:36:52 -0400 (EDT)
Received: from smtpxrhmv1.mitre.org (unknown [192.52.194.155])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by smtpvmsrv1.mitre.org (Postfix) with ESMTPS id BA6B11720050
	for <usrp-users@lists.ettus.com>; Tue, 17 May 2022 15:36:52 -0400 (EDT)
Received: from GCC02-DM3-obe.outbound.protection.outlook.com (mail-dm3gcc02lp2106.outbound.protection.outlook.com [104.47.65.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtpxrhmv1.mitre.org (Postfix) with ESMTPS id 9D8EE413DC7
	for <usrp-users@lists.ettus.com>; Tue, 17 May 2022 15:36:52 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GMfrfOdiVIyCAFU8Ofzt/FATk6DY//wOuv7FNrSOzQ7v41U7r5UJ9u+K+YGsd0HmIYsT0S1XY1f8O0NPYd4iC+UXUCeIaAbnEFPwGClavtCyJHUP3Notcwb15SDmScUAp9CcISXqCJvwIyxpPYx9fPknGEuqlUqlJlahdIliqa6uq8JCw6G9gaWD8HIgV89I/Y4bGveQEmmhC9O/P0l7h8hbQBBMB3SzOnH5DQlv5uuITeLlU6jWSNpeQh373D6soiZNa6vwEZCRc7cvXhWKZ5jFYlLkk5OSmNQdz8huXkCPlBhfJJHodSH6Yce6HdAExEietWMpfRGa8aDpiAd2pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ICsBMHWtMFxgq3bOcbovoB8wUQL2hE3nU/Zf/rKwSrs=;
 b=Yo7RGvbp1nsXWlalSjoiRazGjU0atvYB4uCMdl5BCvKVdQ2YVya4DvXRaDSVNzQbD+hjtyp4LylhYZSroEifm3pLoAS5mxg8QQFD+2NtdVgFGPd/wq5NtcsJc7hTxnBCrBQ9lAp8polmpTVoFK2YLbPiKC0Gj4w/AKSkCjdjt3lJpS49cymduNGAGiVq+fKCbuGyPiFonpqPzFTb7OoAG8E/8eQU3QSXFQo5+vSLvc3Wey2hdwuv2jlTfLLBVKIDHsQA4UGCcCW1X7jrnBdMZOTIP4oMXfUfE8nTY79uhbgUFC+C/X3HQKGxD2YURVqqNiFKIsm4cGfGVhedUejlQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mitre.org; dmarc=pass action=none header.from=mitre.org;
 dkim=pass header.d=mitre.org; arc=none
Received: from BY5PR09MB5491.namprd09.prod.outlook.com (2603:10b6:a03:241::24)
 by SA1PR09MB7600.namprd09.prod.outlook.com (2603:10b6:806:183::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.14; Tue, 17 May
 2022 19:36:50 +0000
Received: from BY5PR09MB5491.namprd09.prod.outlook.com
 ([fe80::842:3c9:4689:9a58]) by BY5PR09MB5491.namprd09.prod.outlook.com
 ([fe80::842:3c9:4689:9a58%7]) with mapi id 15.20.5250.018; Tue, 17 May 2022
 19:36:50 +0000
From: Jeffrey P Long <jplong@mitre.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: working with GPSDO in UHD 4.X
Thread-Index: AdhqJOAodXBjd19/TdOdZ9fJv/2Qqw==
Date: Tue, 17 May 2022 19:36:50 +0000
Message-ID: 
 <BY5PR09MB549144D2AD34C2FD7C42E734D9CE9@BY5PR09MB5491.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mitre.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99fff680-198e-481f-085d-08da383c96c5
x-ms-traffictypediagnostic: SA1PR09MB7600:EE_
x-microsoft-antispam-prvs: 
 <SA1PR09MB76009FC73DEC47E615057F88D9CE9@SA1PR09MB7600.namprd09.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 aXeTuCT/KTxuvzLtNjwFHLzUL/OUvAMNMEbdhKzOyBcdv4znknImSd17QqsPiSEDFd5XbYtsSpXZedfSfHwAu4opnECZc5eAd1JkCgDFuYb1dBZv9jzdh8FNZtdIEUwHBLd/GCh1I6nM2CGJe/apQgKApYYALSIKoIOLSgxfmseXuPImgnKOGf+yrTE79D4ljua0gWvdeH7Tltc+pYZMagPXbAaU781aBCaYOVmpA1lL8oKqnQSULnxC1S8y314feF5tGzXkqIOzQFV477bedQ2vUEYe/NGgkIslywQsRP5PvPsmgrRYGu0nZ2QZpSsqYDd8y8ZIrhRO+x1WrALtRVagTDG4HH9cQU1TEvd+m9kqSkTX+1GQ/8cT8ZRNohRAaP3dE8d3IjTTzQQTQe41X7aeoofFfgxGdBbR2zrI1XMVbf2Fk5k67vuVq9EOqvQeFm3p4r3oeiN97ygsL/CqGgvR+v1QibzeVZr2oZNzgRipgSN/rhL/zyfdCZIUG9nWH+RTfQjG1gLsZRA63eieghAOqsFZaMw6wo6w3HrJKyA0PLDv+u46Q4ct07AnM3aIWxPIqZd+C7QlgpjUqTC4HWftAtGEDDIFZ1O93yIojLQInExu4jTkyKsqwcoqBQJXwv5OJuEKUzBmTpIGvslm33jJM/ptIMBOdb4cTVIC7fsgy2Exoo/cU3DRzS5c1Y1N8QhfigZsTSMlA3no/etNrw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR09MB5491.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(33656002)(8676002)(2906002)(316002)(7696005)(86362001)(83380400001)(66446008)(66476007)(66556008)(122000001)(64756008)(6506007)(71200400001)(38100700002)(9686003)(508600001)(52536014)(55016003)(76116006)(5660300002)(66946007)(4744005)(38070700005)(186003)(26005)(6916009)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?mw2OLgA+psU+j1rLvB9ViNj88cKcHRwAjF+ydAmoWBC/7B5cNHXkQhd2GlPd?=
 =?us-ascii?Q?4xYrfZxZCXGeJmAuVCFRdLCpUngm4BSiBQiaGA59a4iaEvAZv6JxalJWM6DQ?=
 =?us-ascii?Q?DOmw0vgxlJfj3v3zQ7A/H6mK1++yZ4zR0ARRKqM2tzb2MdYNsXNwdxa9u7PZ?=
 =?us-ascii?Q?URj9u3Vib/jHMmIgqJkYSqpDtrrZZuaRtk4oAo8+ZJ+CTTSs0cGNwvn6J/a6?=
 =?us-ascii?Q?JCTqajPu9WucQkeyyYqjv2/OKB9VPrDOGrY82Sqfidy8V1BowYxJPP3c4t8m?=
 =?us-ascii?Q?mk3b6uSKK5nzAksOv7WIaiOVAXw1omGN7N24u3Q5wF9bpOoOxJKR8vNyAKW3?=
 =?us-ascii?Q?5HMZZkrAapf9TUXoUK1uNno7m3cLQs5sGACWs5cceY2rD5OKDTQQkubZNa7v?=
 =?us-ascii?Q?/4mT4cYtqR9jJN1vndXShJIMcnVI+T+nCJqrq+mEbuHP6EvH2ShA6+P6O9Gr?=
 =?us-ascii?Q?RDl01h/nHoFTQgURXcVrlYmvyA7b/diEpHjD3jbvxBhyFvfdchQBY8u6BgHs?=
 =?us-ascii?Q?Amd6ffwLe59ZTZ611fL0suSaDr8IkpHB5AapbJSUUfpnjo/7qTi+f6YwIscc?=
 =?us-ascii?Q?w6P6yCjvcW9goZN/rUkjC0SpI4RRChs6rX2Mb+7RHawjbhnzETAQYU6WQMkm?=
 =?us-ascii?Q?YGpbmPa9HN9X3rIgX6cwWrCGGIxD1sic+FLTY586jvuNsyooDQug5iz06iJA?=
 =?us-ascii?Q?p8VMGU4ly+3u2BXiSoO5ELcGMFY66ldVcbrpIPhzFEEeAPPbr3WvUZc750U4?=
 =?us-ascii?Q?6McAMGh8AHIUD7WkuP1f1l9cqEwJaWyl/5yHN2nqoBsOMw6Kp30c3Hq+tjOl?=
 =?us-ascii?Q?Stjrr2qhNhb0fBFGx6nKjeYGS9xaIKC40MMmbEVyKR18TRJ3zeRoW6q6Qx9J?=
 =?us-ascii?Q?KC9umE9e3lKuJDz2FUmCmT4qhFRg+qPaeoxL0wkDXAxauMKTKCpoQ0rtxJvn?=
 =?us-ascii?Q?tYHY5gPCbvtZcfarqZlYdBT2oYy7QL5+Glzn0yUBgdQHVssvXf9JYJKfrOmL?=
 =?us-ascii?Q?Ds8sahaV+kib3mZ+guRY3oZNMq4bBuh+Qqa7DTJjP3sBhsoueUrwvZjjgfhz?=
 =?us-ascii?Q?qlD20JCeSFWnhb4w226wqZx5jxFbO72ZHY6U326JNKvPbFLsc1f9VLHBfR22?=
 =?us-ascii?Q?cp/KQ3UtKlTACS+B0mdbDYcH3Sgtzrp9+FUoIOjCwdY1yFot1cZWBU8ZEvr5?=
 =?us-ascii?Q?IUEOi1UWlkjpAXxSQ8wD8PAJK758huvCbJBsJB6GurAkuWZ1Xy6rf3B27wTI?=
 =?us-ascii?Q?/vb0I4KL/Yjkr1dahqy5OaObJUyJK+8LZu+5A5k0ancONBczEStTBzY27ZtE?=
 =?us-ascii?Q?RZpDmuoaYrUfjn8Z+dpAgr/+hWGmW1ORXIog0Rvwe4hEeWpSaJIOq3vk5+oS?=
 =?us-ascii?Q?8MwYhynriXAdMIvEhPIVd48KR0wMicc9bMSWEZ34XZ8JwqeglbN/ljNH0jrY?=
 =?us-ascii?Q?3Biral/6N1ovDieoD/5xLhoUg0Hp3yMHUiwV9f0bbJFRqpj/cJEjLnfIHT5W?=
 =?us-ascii?Q?fx0KkJaDA2Rnj0glgCsuzG0OFvBz/nge4VBn6+tk7MjEoQDLGN1bpmmGToEj?=
 =?us-ascii?Q?oT31cB2fQBj9AFEme6OMh1m0/+hMgx498rgYlOAjQDOG9VuAQIhbB+/0jQAQ?=
 =?us-ascii?Q?nMooJPOewey7BBkFXiZTNtlWYff9zQcIiDfkZfj3szJHoFVq85tizTiDQR0z?=
 =?us-ascii?Q?EDlPlFJTfkJizdEv7M2XXs2PLgYeX767RgLVgNfndXCGXSG+A6ye82JDXN3z?=
 =?us-ascii?Q?HUS0k5xrKg=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: mitre.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR09MB5491.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99fff680-198e-481f-085d-08da383c96c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2022 19:36:50.4878
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR09MB7600
X-MITRE: 8GQsMWxq66rxk57w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.org; h=from:to:subject:date:message-id:content-type:mime-version; s=BTxNELhf; bh=ICsBMHWtMFxgq3bOcbovoB8wUQL2hE3nU/Zf/rKwSrs=; b=kfwrahuiNAYS43S6Q+H8ynfVX/LRgMoNdY5svLNI6nbTDwcbfkRZqYlhXI6g3xdvaaxErQCdwpy4/cCtDbl3+egxAVCM5NJxHzCJATj02bnmSTlRQtPYyxQgT/yeNRuudwjldEsAtHZbFTUsVpL6yvaObX4AlArE1ZdsLvEjUnU=
Message-ID-Hash: UML6NT7GHQKC7AUWAK2GOQZ6DRRBUV4Z
X-Message-ID-Hash: UML6NT7GHQKC7AUWAK2GOQZ6DRRBUV4Z
X-MailFrom: jplong@mitre.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] working with GPSDO in UHD 4.X
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DOP5QIJMHBFMA2WXFXG57IO4EZ6I6ZXU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4364401914741079768=="

--===============4364401914741079768==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY5PR09MB549144D2AD34C2FD7C42E734D9CE9BY5PR09MB5491namp_"

--_000_BY5PR09MB549144D2AD34C2FD7C42E734D9CE9BY5PR09MB5491namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Does anyone have an example of setting up and configuring to work from the =
internal GPS in the graph/radio_ctrl API and not in the original multiusrp =
world like what is in the utils and examples?

I have something that kind of works but it seems to have a timeout error ev=
ery so often trying to read the mb sensor and then every time I run my code=
 even if I have a locked GPS (after running query_gpsdo_sensors) it will un=
lock it. Almost like it is resetting it or something.

Thanks
Jeff Long

--_000_BY5PR09MB549144D2AD34C2FD7C42E734D9CE9BY5PR09MB5491namp_
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
<p class=3D"MsoNormal">Does anyone have an example of setting up and config=
uring to work from the internal GPS in the graph/radio_ctrl API and not in =
the original multiusrp world like what is in the utils and examples?<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have something that kind of works but it seems to =
have a timeout error every so often trying to read the mb sensor and then e=
very time I run my code even if I have a locked GPS (after running query_gp=
sdo_sensors) it will unlock it. Almost
 like it is resetting it or something.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Jeff Long<o:p></o:p></p>
</div>
</body>
</html>

--_000_BY5PR09MB549144D2AD34C2FD7C42E734D9CE9BY5PR09MB5491namp_--

--===============4364401914741079768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4364401914741079768==--
