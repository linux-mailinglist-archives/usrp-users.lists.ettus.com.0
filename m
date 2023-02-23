Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B106A04C1
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 10:27:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C2D038136A
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 04:27:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677144438; bh=hia7gLJfFm6fOUdRlRmn3keOhN6ulIgtQSRfbE1S3eI=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jQv5mZSSuvq0HmpyZkK7Z40CyhmwFcr7eyGIwyU2Ia6qbDLhjsuIQJgk7oEEM+3Nx
	 RBYwA/68bZe5Izlk/UvEqqAo/hmLWL2KzNz9ZyUtZ0r8+E5GVUWDnM+GD0IPleHVoA
	 DBWwC4C6oGuKx/lGmVRLvaoLrt4GY1s30bEw1g0tW6Br6DTqT+et1UkeZ57IiT57hy
	 TeQCk+xuj+E08z+qbuI8Tve6UFqMpmy3wDguskS/CkJJHBw4e3bQQJ4BTdIGey7ZUx
	 0WjafPsQcPd2P+dB8oe8zulblG9gIy1+CujHABrDR7lFa6UiRePJvwjv+mCmzOd65W
	 9HOPE0b+tnO2w==
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2069.outbound.protection.outlook.com [40.107.22.69])
	by mm2.emwd.com (Postfix) with ESMTPS id 7A6F938136A
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 04:27:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=xenint.com header.i=@xenint.com header.b="CScc23sR";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jAEIPOksolpYG1mFK3u70+h+OmLaFQOX+bK+zH51PYxwMx3SUGo8chL2VLfIUZJI5WAy2UCbMD/jIlAmlQjIMJfjbYHBGzy5NjQhx6eCFrY3hk40SoM+mQq7nPG0C/pGaZ8ANthjmgDNgpWLHoyPbA9IHbska8wTmam9Qhj+iyJl41T1o1EGRDIG5++OhC58kR4PXZLQkdDL1oVKVuUXHSjgxh+lCP6frZkUcf4cFifskgEvHqRTSd6qbtC6W6R0XItJcXjToevXx0JNbPy0QwD+CiiA6inRWiGT2P/qRPHBGhzfMsdqTfN4p+51FRtMrZ1vJr6q4xxTMx5Nm+d2Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6c4/DV+FXRkaOU+G87m3MdI6UJXopvqC6wcdKsajzF4=;
 b=evnBP1FB5Pifpeg9Nn91D5pG2zDOY2a2Lobjcg0PDCCof3ir/t69YL16g5s/I7G8Sv/qSOMagwhEGVH5zYhyZK7OsVddhajEovXydxiP2D/S2vfRavSpfo4962K+kEYMKidobsQt/w4+8u+WkZpxyCWzkwpADHYLMosyTnmaZRHDC1P958+1qE8A8zAZkTDLCQy1FHvRwUW1Ma12GSExcgQHn2MZiNI72NzUAPvTdUju/4oIKtAabKjsRxRKDg6ycs4J8h0Cg8sNO82oRLasCkzYQcvVbf9Rl/Jq+9CRgzMznqP/WQxV6PMOmZOLW2kjISR1u7hX5hfEizwcUHFFGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xenint.com; dmarc=pass action=none header.from=xenint.com;
 dkim=pass header.d=xenint.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xenint.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6c4/DV+FXRkaOU+G87m3MdI6UJXopvqC6wcdKsajzF4=;
 b=CScc23sRvZoVyxQ4+QD0PJleSlT+MLvSnIP1T4etScBUS5JOZ2aue+FYcVFSwY9rseHHN+oCyHgiAM/458z7BkZCfRuCI95z97mkgWlW71JDZ6DsOsR6SvS/TQ+Yif7IECao0+vA06TCKL4oNxVV6eTh0E3umEC5effPZOvQGuE=
Received: from DB6PR02MB2981.eurprd02.prod.outlook.com (2603:10a6:6:1c::31) by
 AM9PR02MB6596.eurprd02.prod.outlook.com (2603:10a6:20b:2d2::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6134.21; Thu, 23 Feb 2023 09:27:08 +0000
Received: from DB6PR02MB2981.eurprd02.prod.outlook.com
 ([fe80::4506:7d01:7d5:95cf]) by DB6PR02MB2981.eurprd02.prod.outlook.com
 ([fe80::4506:7d01:7d5:95cf%4]) with mapi id 15.20.6134.019; Thu, 23 Feb 2023
 09:27:08 +0000
From: "Peter Featherstone (XENINT)" <peter.featherstone@xenint.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: libuhd - read IQ samples without discontinuities
Thread-Index: AdlHaHahMDJnwnJDTwCB25hKrWSKCA==
Date: Thu, 23 Feb 2023 09:27:08 +0000
Message-ID: 
 <DB6PR02MB2981E698C5CE0E3D6829D9DEE7AB9@DB6PR02MB2981.eurprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=xenint.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB6PR02MB2981:EE_|AM9PR02MB6596:EE_
x-ms-office365-filtering-correlation-id: 76e9a663-48d6-4a77-aeec-08db158022b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 saXu8tNuN/wZivKdosXNE9X6mXGuTHr17kRmYpxV2ZcL2LVFXwij+zcv8HuuOkK5B/2bTxRhfs1l4CODvTyfhN4a3HGXbDpgnejj/hxeGBgOFQgaXy0uQqpPdua2z1lK+Wdkvc0Tzqj9sGpy8gLRXIb7uyNFykCkGsPr/Hi6PSm43uL/ruQmLNZKVceryX0t1HmCiRkRuzEAbXrjb+oOhISO0TDxOFtE9Z/gX43/sJK5/AlngvJ03ohMf7b/RfQ9ZiLXRcWAhWoeXmDXmyU3adZfYG2VNnJRfS4Ad89/M4rowvucUThrfNZ+ooxm+yh/CugKu2rRFPdBuEaCtDYp3F4SbFzatD8VjhaAo59bupy7RaSvyU1qt8dQeZJbPIbHiUexgeMSSEFW0W3IpP9C/o45zv0KaTh6vCIcSzd6/7HXmCgdBIDVpn3Ow4Hw4PSFPgstLDog8ALdi+fyhh8iLbM6H2Fu1kHY5bNKZMCv70H0yACJC6/yakklQyv99JoVuPDmgAklFwHXnCnIYZVBztNI9hWtYuAGtOqWwffCSqKpAiK5iJ/AjYk6sPQ5y/fP7AfkXPUQV+h+14l8UU8Moos9UyjEL7wPbEKgX6NNvNUeTt2oYjeFBvUKtDyACtR5RQ2qZD9pyqxdWeOCR3u3sO4/GFlEZQyv4bOGkcaZuMuZPSADn01bEmhMXn/KC+X4FESJtwGJbZpue/BeD2miBg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR02MB2981.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(396003)(366004)(39830400003)(42606007)(136003)(346002)(451199018)(33656002)(38070700005)(86362001)(8936002)(41300700001)(2906002)(4744005)(5660300002)(52536014)(9326002)(38100700002)(122000001)(71200400001)(7696005)(478600001)(66946007)(66476007)(66446008)(8676002)(64756008)(6916009)(76116006)(66556008)(55016003)(316002)(55236004)(186003)(26005)(9686003)(6506007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?O/uVUaOElPbtstVTzCYCgLnnF/raJfy+X9nkx7noqi/tFbQSGwHIXgzzLW2d?=
 =?us-ascii?Q?cboincL4czVNCG4nSjJ5GfGaWfsqKSCxIeGNEki/wg4UfQaXeUpUFVimaO2c?=
 =?us-ascii?Q?dQzipncAR7HIpgv9OXk0NvhHv6hjtno4PyovtMtMex8kdVreW16EJ1olIdcq?=
 =?us-ascii?Q?Rs4a+3vz+YEGCBnK6uRIlxCCJKgSqRdGjQH8R1B6dgSCxnlE+pEPq/8+ulPa?=
 =?us-ascii?Q?d4OL6ArMfRP2ntPYHAaME8pBzdKUcB0BCVUSJ3wE+MInKsbaJE56bh1b4wrT?=
 =?us-ascii?Q?LmI8M438FYZBnxLcNnNJXn5a4y5wn/OZ7N2sqrUhCnrj5ELnhzu8YIeM3M0q?=
 =?us-ascii?Q?5nUgbS3j71WkYOlj1cxGiVqgMv947xzzr0esSjTOQ2p4/ArWnuXtSeqZgUYO?=
 =?us-ascii?Q?KWXel8UldbUajQTPxDeXaHqNiWAhwfnuFcNDYCf3Y2NLiPsV6mx3Iz9wKvtw?=
 =?us-ascii?Q?aHIexYdT8C5k82Flq3do05PgArqdH2f4RK9W2r4yBIk50noGRSJ5G6Shft5m?=
 =?us-ascii?Q?WAG9JaEiru4yDmbqrHtfKYQSj11xCrQPgKGdUbPnWb53TKvjsicS5KjqZ4x3?=
 =?us-ascii?Q?jZuHasZq5SJT1UPYFDNM4J/C9Y9HMMWoedATT/8fKLr6KAJIZ9Lxx6zJxjX3?=
 =?us-ascii?Q?YfNy4KI0HwsCrGLuTPQxmr0qeQwhQp20giBvhb/AidrlBKerHNEEk+FXJU0m?=
 =?us-ascii?Q?LlNjb3Xec+0+56Uav4vp8ShSsfW0TFJ3F+wByJHDJ+nUH/RqQ7SBRVXolwbs?=
 =?us-ascii?Q?HSCkU8RwGVz+CZ44bhW/mj2ihyjoxRjAcnulEfXxrMqe/G4XHPZgucDFozma?=
 =?us-ascii?Q?eMkG+B/GUNQObNmyXM7XUM+0UW51c4FHJgZy0g+QhxFAOC2cW2e5aAgW1y4B?=
 =?us-ascii?Q?JrbWUjK7ue8Xp2hr5UVhRH+GTBa8UtO+dR+J+LqS7Y/1hoUMvvhTfyysOE/t?=
 =?us-ascii?Q?ZYtZ4kDfEMgPs25HXqJtX8I6xMjs6AK9zIE4BfuvELEVWykinYkPrgNAvJIq?=
 =?us-ascii?Q?0RBDJZ+unLLh1tBRX/wm9ybwBNP3BuICW9uNEvyP2C/pL9FGqg6NOC99gikd?=
 =?us-ascii?Q?8wuDc6JcMCxP0voUHMyYMT2yp04qiUHhMm6UrmUkTqnaH5yXZHlhz8tcMMUS?=
 =?us-ascii?Q?VWwOCMzF5WJyDMTz0OI6n6S0Oq0ZEoYMhv2fI6y5T78/slab7Net7LOdGNoi?=
 =?us-ascii?Q?FW8JZuQee0YBzQ83DQWN9DMTlm7Je4IfYaXAIZyGwxbQgPMl3SgGx81CJI8G?=
 =?us-ascii?Q?oKRnZ39cUk+stfbb/ryDwmfFQA7lqSDPiYRORSSt85yqdgk0KY8Suowedidn?=
 =?us-ascii?Q?b3iG7TjCPy132zCMPmtkKNuONYLdIj7YqiLPSbF+wd7u+a5iA3k6JW24QqtM?=
 =?us-ascii?Q?Ys+jXzjd38eZJFiRqcVtK/DPtkYH/eEbJbmYiQZ+bOjyapa6K8E77JkRxuXV?=
 =?us-ascii?Q?9QYUlgHTLqiy8A6SSdioaehPKBviweOwfBOFm80nolQK2fvTYCZ6M54nct/q?=
 =?us-ascii?Q?Tc8fuCNp4t6LgkzO4ygFK70/r86obEOU0KI7f+pXBgJnTkHqoWL4w7GEV5hX?=
 =?us-ascii?Q?mkNY1bPN2uyh0vnBvsU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: xenint.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR02MB2981.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76e9a663-48d6-4a77-aeec-08db158022b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2023 09:27:08.5099
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d6824d12-a925-410b-8f9a-7721b23d31f5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3ZV4quXbVq7g+0bkdY2OnJ4uBdcoMMO9XkTNic82VYryVF4vAlxgTwLlaRzsobzkS0zVoX3BQ00UZhKOi+6eOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR02MB6596
Message-ID-Hash: AWFU4EB3NK6GVVJNHQTABOS2PA4XCRTB
X-Message-ID-Hash: AWFU4EB3NK6GVVJNHQTABOS2PA4XCRTB
X-MailFrom: peter.featherstone@xenint.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] libuhd - read IQ samples without discontinuities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JG7BYYPCLT37W4JTT6LFKQYPYQWPV37R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1687775538977007925=="

--===============1687775538977007925==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR02MB2981E698C5CE0E3D6829D9DEE7AB9DB6PR02MB2981eurp_"

--_000_DB6PR02MB2981E698C5CE0E3D6829D9DEE7AB9DB6PR02MB2981eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to read samples from my B210 as fast as possible without gaps in=
 the IQ.
I'm using a sample rate of 1e6 Hz and read 5s of IQ.
As an experiment, I read 16K samples at a time in a loop.
At each iteration I sleep for 5 seconds.
I was expecting to see loads of ERROR_CODE_OVERFLOW error codes, but I don'=
t.
Is it the case that that error is only "thrown" when you can't write to a b=
uffer quick enough, but not necessarily if you're waiting too long between =
successive reads in a continuous RX stream?
Many thanks,

Peter

--_000_DB6PR02MB2981E698C5CE0E3D6829D9DEE7AB9DB6PR02MB2981eurp_
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m trying to read samples from my B210 as fas=
t as possible without gaps in the IQ.<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;m using a sample rate of 1e6 Hz and read 5s =
of IQ.<o:p></o:p></p>
<p class=3D"MsoNormal">As an experiment, I read 16K samples at a time in a =
loop.<o:p></o:p></p>
<p class=3D"MsoNormal">At each iteration I sleep for 5 seconds.<o:p></o:p><=
/p>
<p class=3D"MsoNormal">I was expecting to see loads of ERROR_CODE_OVERFLOW =
error codes, but I don&#8217;t.<o:p></o:p></p>
<p class=3D"MsoNormal">Is it the case that that error is only &#8220;thrown=
&#8221; when you can&#8217;t write to a buffer quick enough, but not necess=
arily if you&#8217;re waiting too long between successive reads in a contin=
uous RX stream?<o:p></o:p></p>
<p class=3D"MsoNormal">Many thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;color:#0D0D0D;mso=
-fareast-language:EN-GB">Peter</span></b><o:p></o:p></p>
</div>
</body>
</html>

--_000_DB6PR02MB2981E698C5CE0E3D6829D9DEE7AB9DB6PR02MB2981eurp_--

--===============1687775538977007925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1687775538977007925==--
