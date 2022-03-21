Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 736E64E3054
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 19:58:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54CCE3851DB
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 14:58:13 -0400 (EDT)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2083.outbound.protection.outlook.com [40.107.244.83])
	by mm2.emwd.com (Postfix) with ESMTPS id 6A266384B01
	for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 14:57:12 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y1d5wdmJTLn3LJWOHRUDiO2i3GBNEk0u+qcQoJ5AzCcVJLdv7x2jvDE33Z2Mo5Bpm8f3kE1dmY5l4kLIJtYfQlQzxy5Cttzzc06v4m62iBLCjRoJGQjNwnmlRwUeCjp6X8k8d1tuWpSVUV53YiUPLOcgAiPaWH2CBEiIEZGFpR5V8VZfgtyY41vhzmhqb4kGNXWKC//rVsqwGf1RKEf6DpMtAxw92EAyOlBF/yH9TzhJMR1f+DMDwUk0RHqnJBf8ayTBEMBYy7CDaJx8Exe4eSZKIZkkY/AgBUEpU6xZ7YxZcDRMk5G9r4tbDVcTNyHb9b/Ph6bsryOn8YHCzP2G9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZKnTWwv/6AzL1LGAYLeM6nIXaR50fohSsLGPvjKTFm8=;
 b=hfYIxnTLGg8ZrvrFDd940F0tUhy407GxNb7qMozfZjRIXH8cdadQasLfPEsNVG8UAjSFcgUw42GPY9t3h1gknu7ChTE/Dr+3uYHS1WaiygGoOdPbChRn35SqmETbjtG/6FBXbb0CjHwTrFw0pmp6Unsar8hu6/lnoGFEx6VhavKjdVgvAFXbvwex1AxqKtj/fIC8cB+RMnD80knXo+7PQmHzytsYvfnbgMwhq+DFBx7kQ5EDrOSavKg7uOxx0f86nlyJiz5p9erxxhbvQRSOHlcd8FemyQ7DgibZlLizsZzPdfxrCjnvMwLemSFC5t0RQugVnXZWMCO4J0kPNIk8Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=lunasonde.com; dmarc=pass action=none
 header.from=lunasonde.com; dkim=pass header.d=lunasonde.com; arc=none
Received: from BN6PR03MB3137.namprd03.prod.outlook.com (2603:10b6:405:3e::25)
 by BN7PR03MB4419.namprd03.prod.outlook.com (2603:10b6:408:3c::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.15; Mon, 21 Mar
 2022 18:57:09 +0000
Received: from BN6PR03MB3137.namprd03.prod.outlook.com
 ([fe80::5440:fe68:c97a:66cf]) by BN6PR03MB3137.namprd03.prod.outlook.com
 ([fe80::5440:fe68:c97a:66cf%3]) with mapi id 15.20.5081.023; Mon, 21 Mar 2022
 18:57:09 +0000
From: Abby Mize <abby@lunasonde.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: B200mini QPSK
Thread-Index: Adg9VUxd79rkzXVSRTmcbeQAUouVww==
Date: Mon, 21 Mar 2022 18:57:09 +0000
Message-ID: 
 <BN6PR03MB3137F5CCAACE6824D0756891C8169@BN6PR03MB3137.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=lunasonde.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ae260e0e-89c4-4223-f07c-08da0b6c9a02
x-ms-traffictypediagnostic: BN7PR03MB4419:EE_
x-microsoft-antispam-prvs: 
 <BN7PR03MB4419D75ACB5CC71EF09F955BC8169@BN7PR03MB4419.namprd03.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 vPoFvNp+AR8aUmqjD929UtD1WeH12KIqNyMsD37BcwHkeXcGvJCM/PyeVp/PQKhMTP/2GfYHn4nwamVo6y6rRwHF4noCr11dB/hpVV65EmMp1SOS1Zs4y12H5jDWQCEPvzjJpPZ5bGEQsJOtUR8TxMz3TsTffLwbDnLp0x5fSvpkSViY8CL3ib+t7dXA1LfLersmYX3LejqvCb9M/nuk9anULd497uHtSsKutFqMUJm0amHzH9Qcbvh9y+fIr8QseSnLMdZs0Z5pR0qcaoDEKwSuL3vHBYQ1esfxdy84XvapEJfZ17UxT0KxYMVUi+l3lgjoIjHXC4um1IVb8HvM74Tl+zV1FKtmtF39UxoQ1vZzq+gcoLy+dPsRSWxW6Upu6/4byC8pTjUCFSyABhuulJOl8aWcRj/TfBHLJCbhATi8uMyUNEioUxl11xBd9uqwiepL+QkgfZkK5JjEouzNeN97FqcEe9EkfI67yYxtoKguPr7AUXDKIU8CBztNjYYYA60uEfPtRsj0Wtsclm5LBZ1QlElmWKFX9huSoZQNxF6SNGSiR6/5CWdQ1dMP2TSDgHI9MzXZunBvAvUxzolYQyngEqDfcSODLvu+KjRcN4Sm0VmGp854Qe6rMSpcdJynCOIcUFuxAlEMslegcBzvrkW3RRuY8sm4z9Ln5BPgfu/wKNMNSbrP5rpD1TvIs0FQr9zQW0jLYowo72CppwGarURrnn8amKLSmaS5DUIYONa4f3hZvd3ZrG+s8jtmrj3YpmnkQ4zhnjeklGePVmKP/2N7RvgXDHOqLUU1TtRaQOA=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR03MB3137.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(136003)(366004)(346002)(39830400003)(376002)(396003)(9686003)(7696005)(6506007)(2906002)(38100700002)(86362001)(316002)(166002)(99936003)(6916009)(122000001)(9326002)(71200400001)(38070700005)(5660300002)(8936002)(52536014)(508600001)(7116003)(64756008)(66446008)(8676002)(66476007)(186003)(66556008)(66946007)(76116006)(558084003)(33656002)(40140700001)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?JOThVFOQ7rumIGjNYEUZlhxnhcZv/tyzjw9ivFVucpCkjsECZm0t6WOeOUtE?=
 =?us-ascii?Q?dQSGdkfw7XnVnhn6wpezWRJspecE3RyiRLB1VlKyp4nhvz9f3bzMg9bykrxk?=
 =?us-ascii?Q?LsW6PcGvtrHLb0vOAyJiWAq6Zt31d4ZSMyR75LU3R08k3xVvjfSXsJjGs4/k?=
 =?us-ascii?Q?i7i6r+cvYrgdiuIuk/5VGAE/b6750RKVjzb3dSmuYvpckQVTd4nFBA8TkhGE?=
 =?us-ascii?Q?yyG9hrIuW4rRvo095HvG74wJRmXJFaznCMX3iiCMPs9SoqjSOvvq9CuOzFaq?=
 =?us-ascii?Q?mzq+EIZxG+mitw2ovkyxoihySlOImsA7GrNgLhfnTDSuxAb/kS5NXnjLrWld?=
 =?us-ascii?Q?OzWY2lzbhJaXzL7Pla+YW9/aWaMFNkhJXhjS2DwJtfS2JrFVMzSqxJ+iqhp6?=
 =?us-ascii?Q?9tWMdLYm4tqfLEElSrxBsVPRu/4K7d/edDeCQFSOnQxWXEjEWoaQS2HyBflg?=
 =?us-ascii?Q?g5cPGOvCCquZn52v25eVbcgJcKjsthqTUeyItYXHl166YdoRgVUuWNPBOBPj?=
 =?us-ascii?Q?mDJbAR3JP248weifvLOMJyMpijB69Jk0pizT5+oxXD2Uv1fy6BH5XzQ4GrBI?=
 =?us-ascii?Q?H0mYEVpgMUuKNq0m10/2TyYQmxA+QViJSt5h4p1O73kgQABRAr3E/olb2Kou?=
 =?us-ascii?Q?qqG1omnNMcppSe/nlYxEjoC5h61P4JoXvLURcjM6cXC9BoZirqwIE3e9zobm?=
 =?us-ascii?Q?tR1hsQa6YZF8VDgVcjEn1aC93qM/dMNU5AeEqsUo20hEoKnnnqhp8dNHQNfm?=
 =?us-ascii?Q?DUv+zfG26DL8dR2xM4tbgvNyhU84BtFb0mg8tnqT20qHoxVOw4fYfUOMZlH5?=
 =?us-ascii?Q?+/owc/LTAkMxiTleMdAfEsaozCXhJX+KOqjmC5L7ri3f+artMw3ZJaI98TkJ?=
 =?us-ascii?Q?9sk5ax5/lWE+NiUMdpu64mBNpDzxuIoddnNst07ashmPxeAoRdWK4FIQySr0?=
 =?us-ascii?Q?fLR1Kg9iVcjJXTGyslEV53vfw4MiEqDVrVk+AfVjJ4/9w/XI4+CzhPmKy5bO?=
 =?us-ascii?Q?cD4RaVNjIslWnRoPu8swQZUStwSqsY/23U+g1PYgz4KU6Gg+Ycfx0Y41YuSt?=
 =?us-ascii?Q?B7cqwbYLOUT9wXhUjng1m1BGLlqvln+rzb963BqRLURjkhT0+e+/6M9G33V7?=
 =?us-ascii?Q?x6q5bAFy6deXcRYcAlW9KdYosouRCn5Y3JjXzsaVr6HQAamuMJ4MjkCfVdSj?=
 =?us-ascii?Q?aUJrLgH/Mvo0X7RSRe+hI63mklhQDnFcVhcHmn0SpWAnQ0o449EY/doxhMiV?=
 =?us-ascii?Q?7iGzC63dGcq24tlWCSEKl6AouGoXxc8XWoZwiXO6ZqiYRKnDahlwqbQsGYNI?=
 =?us-ascii?Q?H5Nrubb7Io8ud/PKl3GAQYChzaBZm9hVHWwPF1tIIUYJsYQy5MP+KxKOz5E9?=
 =?us-ascii?Q?ZFCVtt+GvAN1ZcZBQz6KUZHcIRqVYfZ+3GPF7Zxixg95GS/nOGxPn4cADQlP?=
 =?us-ascii?Q?6kiKphD/XJx7JvC5O2IPb0gkFaHPsLi9P4EXn4u9yExeWCniUPhzzEje7EjU?=
 =?us-ascii?Q?L1JYHNm4Ue50XLCldt29uWr48HoAsezmLb+3?=
MIME-Version: 1.0
X-OriginatorOrg: lunasonde.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR03MB3137.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae260e0e-89c4-4223-f07c-08da0b6c9a02
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2022 18:57:09.4291
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2a66b2ba-170b-4693-9d87-3bf53b3e5407
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0EUToLUPuVt/uNehGSkGfmsKdSaRrjMI4x7CfoaaufJGJgVsH//s0S+3OnHgoTLsmY+2hUrbARxCT3T3tkuvNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR03MB4419
Message-ID-Hash: RRTATLMPBXBFDIUERHXXUB2N4II4IDWD
X-Message-ID-Hash: RRTATLMPBXBFDIUERHXXUB2N4II4IDWD
X-MailFrom: abby@lunasonde.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B200mini QPSK
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V3DYP5LDBGKXUJDOVQB3KU6XXDM2YW6W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9019396651794414869=="

--===============9019396651794414869==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_BN6PR03MB3137F5CCAACE6824D0756891C8169BN6PR03MB3137namp_";
	type="multipart/alternative"

--_004_BN6PR03MB3137F5CCAACE6824D0756891C8169BN6PR03MB3137namp_
Content-Type: multipart/alternative;
	boundary="_000_BN6PR03MB3137F5CCAACE6824D0756891C8169BN6PR03MB3137namp_"

--_000_BN6PR03MB3137F5CCAACE6824D0756891C8169BN6PR03MB3137namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am looking into using the B200mini-i for QPSK modulation, using Python an=
d a Raspberry Pi platform. Is that built-in to the API?  What other modulat=
ion schemes are easiest to integrate?

Thank you,

Abby Mize
Senior Embedded Systems Engineer
[Shape  Description automatically generated with medium confidence]
+1 505 504 3611
www.lunasonde.com<http://www.lunasonde.com>


--_000_BN6PR03MB3137F5CCAACE6824D0756891C8169BN6PR03MB3137namp_
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
@font-face
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:"\@Malgun Gothic";}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am looking into using the B200mini-i for QPSK modu=
lation, using Python and a Raspberry Pi platform. Is that built-in to the A=
PI?&nbsp; What other modulation schemes are easiest to integrate?&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Abby Mize</b><o:p></o:p></p>
<p class=3D"MsoNormal">Senior Embedded Systems Engineer<o:p></o:p></p>
<p class=3D"MsoNormal"><img width=3D"130" height=3D"17" style=3D"width:1.35=
41in;height:.177in" id=3D"Picture_x0020_1" src=3D"cid:image001.png@01D83D1A=
.CA67BD70" alt=3D"Shape=0A=
=0A=
Description automatically generated with medium confidence"><o:p></o:p></p>
<p class=3D"MsoNormal">+1 505 504 3611<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://www.lunasonde.com"><span style=3D"=
color:blue">www.lunasonde.com</span></a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN6PR03MB3137F5CCAACE6824D0756891C8169BN6PR03MB3137namp_--

--_004_BN6PR03MB3137F5CCAACE6824D0756891C8169BN6PR03MB3137namp_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=1343;
	creation-date="Mon, 21 Mar 2022 18:57:09 GMT";
	modification-date="Mon, 21 Mar 2022 18:57:09 GMT"
Content-ID: <image001.png@01D83D1A.CA67BD70>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAIIAAAARCAYAAAAR8XQQAAAAAXNSR0ICQMB9xQAAAAlwSFlzAAAO
xAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAAS/SURBVGje
7ZkHSJZBGMctszJtaFG2CBq2bdqiHRVStgcNGlgUldkkQSps72VLjAZERRERNGnR3pMGQZREQUZF
RZGVac8D/xeu65bfFw36XviB3z3P3Xv3vP+7e+4MSk1NDQoQIBAEXwMXFFSDaB0QQkAIi4k3xHWi
TUAI/+6HLORDnapEESIYv8sTS4gvRO9/Xgj07CXOEkUdgjEEs6CLxl4d9kka+3a8K9LwjmnERSLU
cWaed/QtSCwlMolXxGNiNlHYUKctcYR4RnwjbhFRks9wIpuoJJWXIC4TOyz94phs0dhaIp4PiacC
l4ipRDlL281Q/4FUn4mXhcCFuUSYQzBnEHksCI29AexrNPabsLMYSmp8NsAn3NKXKOIzfEc59D0N
vgeIdHxg/t1Q4z8T9nvEXKK9GDzJl4O9VSqLxGrBbWw09Os+C0xj64b63H6GwF2UvyXGGNruAr8H
Un0mVhYCO70nijkEczIaHqix14d9qcZ+HnZPDMEKn1XEJ5sw6ZmDdr4Sd3jGG3xLwXeXYsZXVviP
gP8sooBDXCYQx6WyCKw83njXaupeIy5obF11QqenA/ESdt0K3Qn2mS5bw+8UwhWoOB1+ab4IgZdz
BPmQ0KfuFiHw8n3aYYzhRBaxJx/5A8/+4gohZGM270MfE3wUgm6rrYl43iZCDEKY97cJ4SqCw/v1
Aviu9EEII1G3J68q6P81S98Xoc5J3XYAv47wa2BpLxRjaKexRyCvOAvhHlaJwR8hwGe9rr+CEFZC
rCLBf1oI37yPLMyU8fkUAvf5oWI/jzXUCRG2kzzkDGGaBPSDQywKIG6rDULI8QQK4TzBu1v9QiH0
k2OoEIKK+v4IYYpFCPUchJDjnRqwZHt5Q38XIWBvzIOI4nhLIMahbK/DGJoQ5+B/Sj4tcUCRhEY4
bCF8l5BkEcJVoawu8QLbWoyQaPojhIli/DRC4NVotESkP0JIQsO9NPbGsK+wCCFCKCuOYxnXa06k
YPvQCeEAfHM1Sq/nuK9vgv9Qqbwayodb6veCXyNXIaC8Fq84EEMFbFUX/RDCDfiUNQhhlmuO8M4x
eI1U+7pgH2RJbn4SAsprQ4x8lN1PvNYs21WxtezABxPpjHev18xe+fxfCf7bFP6HMdtLG/KD57yy
GGKlFAJsfYV85ZYuiRWEME5jT4B9s+p0IwhhjosQ+Jz8ke/OiaYCMXLj2BdPoPEZngr5o2Gv+oQA
lc6PEGBrigw4D3upSggZpllPzzGMJUrxUfgOYwDfDqIs2XA0K4O4ZELcIcKlVA9MHu5jFV+EAPtg
YRU7aBHCfFzW1UGcOKHdLSz74ZbjYzr+PxINaovfyHPO1CyxX1S3jRjgUWF5fo6lzru4aG4IziP4
RVoy9s/y4OipCNsZQ/utVLMcJ4tTwiVMFv7eqTp2CUfC4/B7hXF65/bL8k2ipj77PjL4TIePbmuI
NyR7uUh4QwztxxnqL5SFkIRMeQmuYD1STHfyfGziXIBYxzeJRB+H28BE7oDpSpieYcjuCyuSvGU8
IyzvSMYpQl7NCqGPHLy1cm5gaK8hjonrEJcWjvVCMdZEh/6O1diicezl9y7H+BfgxrCCQx+qS/WX
C+10/e//6RTgR74Dyf5pfsk8/dQAAAAASUVORK5CYII=

--_004_BN6PR03MB3137F5CCAACE6824D0756891C8169BN6PR03MB3137namp_--

--===============9019396651794414869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9019396651794414869==--
