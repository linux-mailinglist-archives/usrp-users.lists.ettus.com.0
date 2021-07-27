Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E93E83D78CA
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jul 2021 16:46:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D92E8383FF4
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jul 2021 10:46:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=nist.gov header.i=@nist.gov header.b="b51QolU/";
	dkim-atps=neutral
Received: from GCC02-DM3-obe.outbound.protection.outlook.com (mail-dm3gcc02on2111.outbound.protection.outlook.com [40.107.91.111])
	by mm2.emwd.com (Postfix) with ESMTPS id E2F15381924
	for <usrp-users@lists.ettus.com>; Tue, 27 Jul 2021 10:45:26 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OHb4T++sl065LGnr9Lf+8wK8aJiHDksoiiojjERuG+/qgRkqC/jw617rYj/2N297P0RE4YDzKiPyzC6RKDMXhjjZaR2918EvrcDN+ZCxAKVItCbUGZQHesL/eP5hAcezre8V6BRp+iU5fW/BxpEW0kRkiFYiHpSjY793kFj8H771F6z3ZmZeEe65+vwystgEjh2yfXrLJVrqdCtNOLNvzM+gVaWUMSlkDoiZyZ0lyN2ntKnq5jFLSqRsE2dKKoICknQOfcr5UhL/gY2NH5IB4d2gBd94QsocMZepZUMURZ0tIX8F9UiFcf8BCZc4zMwvTkBynN3755OvcLf1l108ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=14qjjGZHNwDd4F4KGR323xhXaZOgQx4dPVhOoxgzBDQ=;
 b=UHSqult2F15vk3b6FcW/My65lJZjnna9VxkB4p5E6iHkhXC7w8SaS8JkSQJIqJw+67bRnz8kr45SAzfNXwXX11ocIAxHtCEvItEOqNIH2wC5udXm0Jd4y4MZwUQYf/JZLQSmkmNd9TwCzskkYFkat18c+RUhNFj3Z2wt9SN0q2ZVC+GIW2ImBN07FWp6EQ+EdLCyyt/coQa5ItLnnZbfGXrwxoGJMXEMK0LY7Msj/n7GcNyLRa4cYiEA2eDNQ5gvTe0OI2gqdb7KQFdBpSa1/ALs5B4TUeqwFGqEJTyBPcWTxm/FuSUzvxjY4A39J3GbfUZFhzSOrsNI0l8786tRQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nist.gov; dmarc=pass action=none header.from=nist.gov;
 dkim=pass header.d=nist.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nist.gov; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=14qjjGZHNwDd4F4KGR323xhXaZOgQx4dPVhOoxgzBDQ=;
 b=b51QolU/IiXdpxVi5A2oBq3eQFMypWOV8nDwBHVrZoO/neWteMXtH0IRX+cHP2T49aZDhbtXefagM0vR59Dtt/wkO+ZvFzhjV6N3PZ4UeZsSqv1Qd7AOjTpt7fHqkF1rhChaRwfPGlduCT36gPQq6AWcIxrzJfAszFVTLLS+jp0=
Received: from BLAPR09MB7298.namprd09.prod.outlook.com (2603:10b6:208:2a6::7)
 by BLAPR09MB6242.namprd09.prod.outlook.com (2603:10b6:208:2a1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.17; Tue, 27 Jul
 2021 14:45:24 +0000
Received: from BLAPR09MB7298.namprd09.prod.outlook.com
 ([fe80::f558:354f:e2bf:259c]) by BLAPR09MB7298.namprd09.prod.outlook.com
 ([fe80::f558:354f:e2bf:259c%6]) with mapi id 15.20.4352.032; Tue, 27 Jul 2021
 14:45:24 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Out of Tree Modules Logging
Thread-Index: AdeC9DE/9g7tVPU0SpaCOBVQaohpYg==
Date: Tue, 27 Jul 2021 14:45:24 +0000
Message-ID: 
 <BLAPR09MB7298F4CF60F6B3AB0752B91BD4E99@BLAPR09MB7298.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=nist.gov;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cb11a406-01bc-40ef-3ad0-08d9510d2aaa
x-ms-traffictypediagnostic: BLAPR09MB6242:
x-microsoft-antispam-prvs: 
 <BLAPR09MB62425DAF4304434419D41B6BD4E99@BLAPR09MB6242.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 NoITKF+3sq5jveKWTLFqGwmocSn/zba8C55MjsGO/fxdqmIIiM3InaRxV71K34foaRjEMnYHeakgl2yWuoVKZis5DgwDdtj/Cxxf9kkc+ITmMC4UaRsUh8m6Jem3KOCPUIfOVMKG+bmnR85eT8Tq+laPE9uiJ7iSfyZEa7J0UdgvG3Lf68R0F3gusSGsVTcy4Qt06ipHiRmi2fwyNdGD/sJchllURHXSIvo1bD3QwYju10sFLmCbn+TMUxE0X4kMmqmoCWwhqxfDQCmmpzpzI7Uk/YEPio1satkmw/Nm3h7FzTumLL2bMN827NUV10txsOEpARESOI/bpcuPFjdO6qMTy1Fat1qDODL8Lru9C3D6TME2Us2OcKZqsWYPXyzuKJc4K5UBmM/k3jfubkhNO7bwpvvXUZ6LuKkMY3sRYlvt6G+kAosfPO+KCmSBYosrv0i2WaudyUbmBuMuEmT6v3FfDxtT4JA94/vV+VN3CD/W8DC04WVMegvoQn4GvNgVhYSf6QxZBDFwXV4b/btnPCNrKBiYAgpYsQmbzh0WnPnCSRr98ioB2b+S1+WVbD0+TJ7xIzdKxb0LmEmZ+oy2VdFIdVb0PpG5gM4NU6kQ74iV5Szfx75+hg33/IcDtAEW3Lva/fXvaMAgyFWaqojUIChvitTs/HgwY2mxOO8+iihMKrjOoy5tPYXS9Fny1Tnak2eSCEaqqhVq1HCWaLj2CUql/MH8vpPYBkDQVYCCz1+po5IzI9WB2COF68wpwDEMHamqkbe/fFSlFuwJq16M/Q==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BLAPR09MB7298.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(346002)(136003)(39860400002)(366004)(186003)(26005)(55016002)(8936002)(122000001)(99936003)(478600001)(6916009)(52536014)(66616009)(316002)(33656002)(6506007)(66476007)(66946007)(66446008)(166002)(83380400001)(8676002)(9686003)(76116006)(7696005)(38100700002)(66556008)(64756008)(86362001)(2906002)(5660300002)(16799955002)(71200400001)(4744005)(38070700004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?JbQuk1EybkJc80wlmshRawFfOwMlVY1qoblEO6BXGgbG2BOwzwR4wOx6wWYT?=
 =?us-ascii?Q?1xnhntuvW3cwq5J/XK6HmSIAUQfvETbZXS9GO4Y1nhhXYXZnMn4boGivvCbD?=
 =?us-ascii?Q?NXa9JgbRU8EF1D43pahSHfexLTXMTxf3sKOwfoSAXORPw39pyd4/MABSDmzP?=
 =?us-ascii?Q?0D1D+K9+MSSLooMwnfMdqWG3CRhS/TrKFbMZZf8dSPKArtx1R9St8C0Gqqrn?=
 =?us-ascii?Q?hrjUbzeLLIvuL+6izl0FlNac3+3sL1PySbQbjGOM0r/QN0LbNRh44scQ1ViX?=
 =?us-ascii?Q?Qh6tCXbZZMZHzg+GbTumiax41i4WGhNwue9yaijCAMU0o1KNLqoyRBUX0RxV?=
 =?us-ascii?Q?2N35z0MrWQx5K4JcRSN1Dg28kvpZT/gxg6/QBe+1h1xAYaFNXwOsk3i5pb1F?=
 =?us-ascii?Q?eieDs1yP2V/AYMUyeI36flOdBXUOlUeHVkvG3GkFwMcI9kh4glhlBfykiGfp?=
 =?us-ascii?Q?YNiQcQDyvxOMrZWUvtvuksLVg510mkY+j/efi/QDp/X1I2jJ1MIrgfsSs4ki?=
 =?us-ascii?Q?/xSgX6AQLFRwMs0Ka42Id8T0pLN98WUbZCc6bf0IRJKb9PZ/ybw5dX4UEYlG?=
 =?us-ascii?Q?PGbqeGNS3Iy8/Kaa429IwRYfAa6tK9Xbkphl+z2dpg2WgKCzXvitiFqQbcOk?=
 =?us-ascii?Q?pIDXnYXLbk15oti/hbnhRytCysDOc5cFSeUCbfFQsMSTp3YHICzSTkAYa74i?=
 =?us-ascii?Q?xfoT25EoOT2Kapt5xHZyCzf1zL11JqpTklhFXqFfOfv4HgTtEtgaeReVlveC?=
 =?us-ascii?Q?3ryRU0fGGW1i85nKH3z2uYSg9YxDtJx7omkMuX0eT5JwMsLgfAngbYMWtefo?=
 =?us-ascii?Q?q5Z6Dmhv51przw9uzQHIQhYe0hlzPHyDYXLL7nqb32cNEiFw5brGV+uu/7WV?=
 =?us-ascii?Q?IOBmUgrPaz7K8euOqO+gNPrXnzo8xzMwErg/5GzAtr316GH5qFuPljt0MBHr?=
 =?us-ascii?Q?ugSHemjtwCJqlzSDEcEKjuyQzrbYi3xrBQTCQTFRTat9F9fc9ojoj2DMuB9g?=
 =?us-ascii?Q?xtYV5SM//N3YUNQZv3P/Z790c47kJLC81G2dteOhTT3xbFMAwI9ip/2BG9RW?=
 =?us-ascii?Q?DG6DIP9T8JFwAkPTQSiejI2ljm1jEcw4TPPx316vRQMlqlnWKo5Q9R20Ic/R?=
 =?us-ascii?Q?3yqfWXTPblqhgoMHbFC907ghy/G2/LXZ0GGDfrzYfzFycMGaabNCMFLqmo4h?=
 =?us-ascii?Q?DNOPxRxHBTYp0h1b/gydfTMdEAcTleLF0PVcLdO9IAbd0/3sUdeqxY0BlskF?=
 =?us-ascii?Q?ahpcGY97wgdGNWYC7iGIXhNOdmfgVNRM7zwFnm6k1fEOnIOlafgWpoyQnMSX?=
 =?us-ascii?Q?Di4=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nist.gov
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BLAPR09MB7298.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb11a406-01bc-40ef-3ad0-08d9510d2aaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2021 14:45:24.0625
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2ab5d82f-d8fa-4797-a93e-054655c61dec
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR09MB6242
Message-ID-Hash: I4HXGBH73VBAOAZSAMCSZ4EDOXZKWIN7
X-Message-ID-Hash: I4HXGBH73VBAOAZSAMCSZ4EDOXZKWIN7
X-MailFrom: michael.m.mcnulty@nist.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Out of Tree Modules Logging
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YEM7SCPFBNGVA34VBNFAH3PPRBCEEE7T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "McNulty, Mike (Assoc) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "McNulty, Mike (Assoc)" <michael.m.mcnulty@nist.gov>
Content-Type: multipart/mixed; boundary="===============4290724843141474759=="

--===============4290724843141474759==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_BLAPR09MB7298F4CF60F6B3AB0752B91BD4E99BLAPR09MB7298namp_";
	type="multipart/alternative"

--_004_BLAPR09MB7298F4CF60F6B3AB0752B91BD4E99BLAPR09MB7298namp_
Content-Type: multipart/alternative;
	boundary="_000_BLAPR09MB7298F4CF60F6B3AB0752B91BD4E99BLAPR09MB7298namp_"

--_000_BLAPR09MB7298F4CF60F6B3AB0752B91BD4E99BLAPR09MB7298namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I feel like this should be easy but I'm struggling to implement logging for=
 my OOT modules. This<https://wiki.gnuradio.org/index.php?title=3DLogging&d=
irection=3Dnext&oldid=3D4871> wiki outlines how to setup the root cmake fil=
e to provide logging. Unfortunately, when I add what I think should be adde=
d I get an error.

[cid:image002.png@01D782C3.BC4EE680]

The error indicates that the function "GR_LOGGING()" does not exist.

I'm very new to cmake so I may be incorrectly implementing the logging requ=
irements. Has anyone had recent success implementing logging?

  *   The wiki indicates that log4cpp needs to be copied to cmake/modules i=
n the OOT module. Which directory is log4cpp located?


Last question. If I setup logging will errors automatically propagate to th=
e top block? Currently, my blocks in the flowgraph will throw an error and =
not report it to the TB. What is the best method to handle OOT block errors=
?

Thanks
Mike


System
------------
Ubuntu 18.04
GNU Radio 3.8.31

--_000_BLAPR09MB7298F4CF60F6B3AB0752B91BD4E99BLAPR09MB7298namp_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
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
/* List Definitions */
@list l0
	{mso-list-id:611519048;
	mso-list-type:hybrid;
	mso-list-template-ids:-1268759056 1884447704 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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
<p class=3D"MsoNormal">Hello everyone,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I feel like this should be easy but I&#8217;m strugg=
ling to implement logging for my OOT modules.
<a href=3D"https://wiki.gnuradio.org/index.php?title=3DLogging&amp;directio=
n=3Dnext&amp;oldid=3D4871">
This</a> wiki outlines how to setup the root cmake file to provide logging.=
 Unfortunately, when I add what I think should be added I get an error.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"508" height=3D"204" style=
=3D"width:5.2916in;height:2.125in" id=3D"Picture_x0020_1" src=3D"cid:image0=
02.png@01D782C3.BC4EE680"><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The error indicates that the function &#8220;GR_LOGG=
ING()&#8221; does not exist.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m very new to cmake so I may be incorrectly =
implementing the logging requirements. Has anyone had recent success implem=
enting logging?<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:.25in;mso-list:l0 level=
1 lfo1">The wiki indicates that log4cpp needs to be copied to cmake/modules=
 in the OOT module. Which directory is log4cpp located?<o:p></o:p></li></ul=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Last question. If I setup logging will errors automa=
tically propagate to the top block? Currently, my blocks in the flowgraph w=
ill throw an error and not report it to the TB. What is the best method to =
handle OOT block errors?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks <o:p></o:p></p>
<p class=3D"MsoNormal">Mike<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">System<o:p></o:p></p>
<p class=3D"MsoNormal">------------<o:p></o:p></p>
<p class=3D"MsoNormal">Ubuntu 18.04<o:p></o:p></p>
<p class=3D"MsoNormal">GNU Radio 3.8.31<o:p></o:p></p>
</div>
</body>
</html>

--_000_BLAPR09MB7298F4CF60F6B3AB0752B91BD4E99BLAPR09MB7298namp_--

--_004_BLAPR09MB7298F4CF60F6B3AB0752B91BD4E99BLAPR09MB7298namp_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=11658;
	creation-date="Tue, 27 Jul 2021 14:45:23 GMT";
	modification-date="Tue, 27 Jul 2021 14:45:23 GMT"
Content-ID: <image002.png@01D782C3.BC4EE680>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAnsAAAD/CAMAAAC+VOBCAAAAAXNSR0IArs4c6QAAAs1QTFRFIhoP
IhoeORoPORoeIhofIhoXIhoSIhomIho9IhosORosIjQdIiY7OSY7IikpIjgyIjJNOTJNIk0iIkJU
OUBbOUBNImFnUBoPUBoeRBoPRBofRBoXUBosUCY7RDgyRCkpUDJNXkUrXkU8REk+XUk+REkyUE1b
UEBbUE1NXkVOUE1qXk1qXnduXmJgYBoPYRoPYRofYRoXYBo9YBomZiYPeTIPZiYeeTIedykPdykf
dykXZjI7ZjA7ZiYseTIsYTgyYSkpeUAeeVs7eU0sZk07YVo+d0kyYVoyd0k+YEJUZkBbZltNeU1N
ZltbeVtbZkBNYVpMd1pMZltqeU1qZk1qbE1qcFtqd2s+d2syeWdNeWdbd2tMYHl3YHlneWdqYGFn
gxoPghoPgxo9iDgPiDgXiDgfiUAemUkXmVofmUkeiFofmE0siVs7mFs7iUA7iU0siUAsmE07iUAq
h0UrnkUrh0U8mUkpg0JUiVtbiVtNiU1NmFtbmE1NmFtDnkVOiVtqiHo+mXoymWspiHoymXo+mWs+
gmMoiWdNmGdNmGdbiWdbiHpMmXpMmGdqg2FniWdqg3l3g453g45nh4h6h4hunph6g46GnpiGpBoP
oEIPpVofoEImoEI9sWEPsXkmsWE9sWEmsWIrvXcrsWI8pXoypWsppXo+pWs+pHcysXlUoGFUsWJO
pXpMoHlnoHl3sY49oI5UsY5nsZhgsaFUsa93sa9noKF3saF3oKFnva96va9usaV6oKGGsa+Gva+G
saWGwDQP1U0PyHkmyHlU0449yI49zIg81ZoowIoo1ZoywIoy045U05hOyI5nzIhg05hg06FUyKFU
yK9nyK93069n0693yKF3yKFn06F306VgzKVg0696zK96069uzKV6zK9uyK+G06+GyKGGzK+GzKWG
6mMS6mMX93cX94od6poy95oy95oo6poo6poi95oi9UxOtAAAAAlwSFlzAAASdAAAEnQB3mYfeAAA
ABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAACoxSURBVHhe7V2Lnx1XXb+bJiRL
t8nK3m5ARUmjxV770DapRUSkRKVANcYHpl1DoLJB05QiILWogGgbmi4Fq1sSCEhtwUcRFIiiDYUQ
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

--_004_BLAPR09MB7298F4CF60F6B3AB0752B91BD4E99BLAPR09MB7298namp_--

--===============4290724843141474759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4290724843141474759==--
