Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D91507A0F
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 21:16:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 79B36384D0A
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 15:16:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650395783; bh=bXlG2ukJmTRQGg+HuvgQ7lLrNrgIXBo0iArJX6r1SP4=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=JTIB/CnTpLLWD2ZOvBcJKMKdtHXqX7+vkSu2biLBQ1jRhwvDot+a2EPeaQoDNLJkO
	 cOkGtXqU5yDymaRkzi4ur/4AqBO1Zh0wofNQKPi8HiWb0WuPQ3yPc8dGWc2b/A6EA/
	 jPtnyenUTVOgYKq+xqoiq41yxGyDjjRDu39c7eN+awRSSn6Sxsh7IsVWj8BC+x0kyi
	 kHKqFSdrMsG5lxslVIHKFcel4vg4KhDpweHau2cwPVbeofxETG4tlY0w0Z8ms7aaTX
	 62YGP2ArfWKWD9HJ8vNft4N3i9OdC5uSIAVAnT3iTBmxKlGgAAZHdoJqAkjDtAxMXk
	 ckymF1MIAH0iQ==
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2080.outbound.protection.outlook.com [40.107.243.80])
	by mm2.emwd.com (Postfix) with ESMTPS id 2C12038446F
	for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 15:14:58 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tvh0nI8Xb4oQyMY0H54N5uek27LMDUJCzgqOq22uW5WllibNk+HHEdcrXLkCfEHdefnK1QV+9lIGcAyOXPUMZvPDwQDvbOejzU830Hz98ejbSOQWukHRgskg4mwU6vp3ILUpkshbP1w+NSOS1PvUj0F0RfQvCBgB4Ma+R/kzyCYeRo5+2xB11vZz4bVeaoGyh4JlGfogaT5zzwsU5AmnwoshO4Q1S2wvfs07/DTU7rYMxgQW3rUzCqDFW9earDSGA+Hph5ZZLWebhmA50es3Dj70N2GW9p7mIBnW65iSs6FPlAv+KB5sRD7cnptXdY7DA360tk9GVe/KMbd6lEwXxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UL/gFETJNbk5FKCuKXABTviGItHrSPPO+cdBRfSkMt4=;
 b=KW7bxOuKYa9aTZp3GPQ7RzcNHT30eA74/PCxL/KEgTg+pDPXvhKbfSYNd+qoL08XGaiaWgH1zNompZLOSFGxdQ8bBK03VyzI0MbYEtNSWr4zvQ+Le1CkX8WM5m+yRo7auGSStNo4+AnWqyMu/y6m0ELPy7Wr0KGIIcESFLnPCvXeDJlD7KCcepcrbMyLPpVG+rVydRJik7SERef/ZfgfLM5X5Kmsi+ke45fCWsCescJfPUARvti1VV1J5IKAMIGmODPJhB4ns/b1J31fFBsbdiA1uy2OcSFer2SCS/3waoO5ussZM4Qk5ec/zvyCWYlJlaW5pVWzigmV7jst1yCP5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=lunasonde.com; dmarc=pass action=none
 header.from=lunasonde.com; dkim=pass header.d=lunasonde.com; arc=none
Received: from BN6PR03MB3137.namprd03.prod.outlook.com (2603:10b6:405:3e::25)
 by CY4PR03MB3080.namprd03.prod.outlook.com (2603:10b6:910:58::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.18; Tue, 19 Apr
 2022 19:14:53 +0000
Received: from BN6PR03MB3137.namprd03.prod.outlook.com
 ([fe80::e555:ea8b:9157:5a]) by BN6PR03MB3137.namprd03.prod.outlook.com
 ([fe80::e555:ea8b:9157:5a%6]) with mapi id 15.20.5164.025; Tue, 19 Apr 2022
 19:14:52 +0000
From: Abby Mize <abby@lunasonde.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: remove from list
Thread-Index: AdhUIK+Aq2SDFXWjTSeTANJyEJfFLA==
Date: Tue, 19 Apr 2022 19:14:52 +0000
Message-ID: 
 <BN6PR03MB3137CB897CC3C5E722D963D8C8F29@BN6PR03MB3137.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=lunasonde.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f311447-e394-4b54-db5c-08da2238e1e4
x-ms-traffictypediagnostic: CY4PR03MB3080:EE_
x-microsoft-antispam-prvs: 
 <CY4PR03MB308049C481C50807EE1F0692C8F29@CY4PR03MB3080.namprd03.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 q/c7hnGagPHvizMLEdpuhwermEdtVpd5dAp2MVpUNxVgN2+p1bZIL1Qi4gIxCE+5nLQ5Ss8RWRFCuM9Uy9PYcH5quWT6pqjV4IXVMCyaXcFl00pD32B1NVwbHXvpQnQIYVAo9Fv06PUZB1lVn3GtdKSxtxh38n96v3xU/0+SmCj9rzemxqznw2+d+SdZCorCpP7FJWLDQ6lTV/DzQtnNvIEWCsVWxumc54ux8Y+S61g9GBtKLKhBH0puciJ+Qh4abMKXVZRuFb6c8bZ6+ncJgZdjNBvHEIC7SHKKQ1sP0GOwo6vxFMT4p8jFaNqqh2zlc9GCm8JCbIIVJPX3GSAoePQKvt13wlbFRnVZQ6SWmr+HqN3/iyizVF1RFQ2Mf2JIjwFKz8bpW2nU7ANtVIko8w/cZ8+/WEzobuZID6r7HzFUrS6vLbXvlmc3jYsk98szfMocNA3znSPGU76MA3gwLPsCpltmt5qUDt6iwhZ2B8MdIXe37L7bE1ACXSUsg4U2lBJuXcH9JHAqsU/hnwLvlxK5a2bHS810C2STfMaTER0+7ZcAERtDqjKVX2OLFKa6gFJCKXKFrO+3Dcpm4N5MyfBqbsstrVC8FbUtRUQT4oMZdzgMQasy4gabRJ+Ag4GBU7Z6nWos55527Sn12IBs9OPgmZjTX4y9ChHFAvS84UHS+ZU0dF4NZNPL73tX1ZubpWcLN/4AJtG/um4bQcJJZjfmacFRQmntMkFlASA7G/FeJAF9e9Ampx/MLi/a7JclP19AZTG/MigyHj4xro06e/l3PhJ08BK8MAN70H9tlgdh8nrMhu55oG6uydc5xqrk
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR03MB3137.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(376002)(346002)(136003)(39830400003)(396003)(71200400001)(6506007)(7696005)(186003)(38100700002)(5660300002)(38070700005)(55016003)(66946007)(66556008)(66446008)(66476007)(2906002)(558084003)(86362001)(6916009)(508600001)(9686003)(40140700001)(9326002)(8936002)(76116006)(64756008)(316002)(8676002)(33656002)(7116003)(52536014)(99936003)(122000001)(3480700007)(166002)(133083001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?d89aQaOht6+HZflngqOie3zGmtQJVmw/hDcEWnqGlpijybMLhPPf9BShqBjl?=
 =?us-ascii?Q?GdDqfmJcTG9wegYeoq6lHivWalwRc9Ll7wHBW1B/PqOsgk+sOD8arJv0SOD3?=
 =?us-ascii?Q?GLlGpfb7fcphBo2rJJ7hU0o1LI+LMFXFczTWSLWEZwtSNytMCji7lqrl/3Fb?=
 =?us-ascii?Q?PWHUE5J6Npo0gtiMvjlm+raGQHwCog8usynf/UONsxJvA7M2LVdLT6EYZRWo?=
 =?us-ascii?Q?hxXlldZIF2bxfJubS44xQURZZEXlCQGHpVMUbakAmQhViMUO4Cdx7pUe72Oh?=
 =?us-ascii?Q?Nd1ZLoBicv8c5qCzRnb5Sj1azdRN/9IHrlbB3KERZzl9xhs6mh5a5bXNisqP?=
 =?us-ascii?Q?25JnPRg24On3Co0rU4hPSMG6wx7ljlXzL8hiZT6jyoNnhRNDWoEkjE6RXrlC?=
 =?us-ascii?Q?/n6p2DA59OJYLEFuJyM5lv4zIrkT6z1R3Ceq6T3ff8rr6uU3PtMbGo0JFp7M?=
 =?us-ascii?Q?6RGiMJVnflcbaDf323/lR77remRkp3i95n0UtyBMo4AU+a/7rvCuksl36Qgi?=
 =?us-ascii?Q?R1CUKlrvqVr8W2g8VIGRPCm7T4E7XOiOI/Hjgd2W43PUGSMIDSXWzL5LNGjR?=
 =?us-ascii?Q?2fqm169O0K1A2QFSDb1uSU8vYhok9BW9JQoTVZXRXsUq0labyz1MSSkjk58j?=
 =?us-ascii?Q?Xtku1/PEgKXXHYwWEqmIeIaQGpx+NvFV+LFK6rqUsvICSCqYqy8dYv7axZ+R?=
 =?us-ascii?Q?jXRCXQ2lwQmX6xpzzkjuDurjTKS/S731SpD9SWWoY17dB94BpFVShSrH7Mtq?=
 =?us-ascii?Q?ksP2YlUzvNgJkgnQG3+nHkAzcWFv7Ry6eP4dE1cpPdtT4BK1cQP4X8zjxLJY?=
 =?us-ascii?Q?rR3Hnn66cAH6sfhIGEMee3ornBg9ZD9pgoa1Ck8R0NCRn2xNxFiRWYseeKYP?=
 =?us-ascii?Q?uQITbeB8V+00Cs4MTYp+WKiZonZZFqySq67YXDQYQAQ46Y4WoGDtf5xnhgge?=
 =?us-ascii?Q?UfRDhLDqXExbTE37MQg8/EJgRDIbm0hSuI5nVOH5nBH9LL52tUR3mh8bTNkM?=
 =?us-ascii?Q?8956+KQDsslQPveYQ5LoxWpMDvDNP6RqKkiGFQn95pl2yD3JCfgxBq+g688a?=
 =?us-ascii?Q?M2MJh6ClIV40pwID0on9z6k4zPlbGHH4jK/bPawr7S0rPd1S3tumqXWfCLoV?=
 =?us-ascii?Q?kcUniokaVsO8ce/YIBA8aNbBCETxjVzjF1ID4QqK0mxgmY9nz06uuEyPMY/0?=
 =?us-ascii?Q?vDY1ChpqkFPmDf/rlzLfdzfKyleHdDU13gwKwqFM95Je7K57MPpP4XvbAs/E?=
 =?us-ascii?Q?d9eMz5sZHI6FT9DvQd5aXZFNZ8HykDF64OHa52uJx+ZuurwxV1z5yMY/dayF?=
 =?us-ascii?Q?6nUGeIZNUjo5jKvB8eznhIDFoUPNzlpV40M1d5+3lsjbZJZLO6DhXxWxbcPY?=
 =?us-ascii?Q?95XZ8hsnzfNdOSLZ//7Y3wa1bjpBXbioFgRgyu4EC6cQbhVJzArJ2IQplrjk?=
 =?us-ascii?Q?64454/Nmc4bT48Q90Br+p1Hj3VataskE0NOacbVWdvxvaNEGHwqANUYbm0UV?=
 =?us-ascii?Q?v8S3NS1lAKc92z4NlBQcIZGIat9gHllzQt6jMxvUOsyrfcJ0lmAy1v/kIVrK?=
 =?us-ascii?Q?yrctbnqARGF8eIH6bm6eoCgSJAxNHhKF57dStyHFEPkV3EI5awn+ljKpqLi7?=
 =?us-ascii?Q?c5njVQqJJ+dcTq1MOIteYoxnsv0oXO9GtDoOLjfoR0vl1Dd6H6IqHfnC9mLe?=
 =?us-ascii?Q?sUIp+Ovp2eKCfW9zl41JQ56R24ZAIU7zwZRKA2YT5B2Rw6N0ZQib9fOqBJmK?=
 =?us-ascii?Q?RMmlYBrBSgmK0l2ZuxRT/Xd+uCuyL3jZuDcO/dfGX691h4QOUh0MAYC82UoY?=
x-ms-exchange-antispam-messagedata-1: bfwsjTFC4Q9KiQ==
MIME-Version: 1.0
X-OriginatorOrg: lunasonde.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR03MB3137.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f311447-e394-4b54-db5c-08da2238e1e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2022 19:14:52.9106
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2a66b2ba-170b-4693-9d87-3bf53b3e5407
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: orIhyH1oIM82cepjvdWehWYXOTr52I1VXMzVycCHPtKWMSWz0FEjePedU4emvYIQqrws+NZvZiq+rnWkLVMtng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR03MB3080
Message-ID-Hash: FHFWER7NDH6VWAPQAW5YB4AEJ4AUMDOE
X-Message-ID-Hash: FHFWER7NDH6VWAPQAW5YB4AEJ4AUMDOE
X-MailFrom: abby@lunasonde.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] remove from list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G4KCQ4WQ4ZNV7ESDOR5KEUX5YTS6D66A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6598810056916250536=="

--===============6598810056916250536==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_BN6PR03MB3137CB897CC3C5E722D963D8C8F29BN6PR03MB3137namp_";
	type="multipart/alternative"

--_004_BN6PR03MB3137CB897CC3C5E722D963D8C8F29BN6PR03MB3137namp_
Content-Type: multipart/alternative;
	boundary="_000_BN6PR03MB3137CB897CC3C5E722D963D8C8F29BN6PR03MB3137namp_"

--_000_BN6PR03MB3137CB897CC3C5E722D963D8C8F29BN6PR03MB3137namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I'd like to be removed from the list, I no longer am going to use USRP for =
the time being.

Thanks!

Abby Mize
Senior Embedded Systems Engineer
[Shape  Description automatically generated with medium confidence]
+1 505 504 3611
www.lunasonde.com<http://www.lunasonde.com>


--_000_BN6PR03MB3137CB897CC3C5E722D963D8C8F29BN6PR03MB3137namp_
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
<p class=3D"MsoNormal">I&#8217;d like to be removed from the list, I no lon=
ger am going to use USRP for the time being.&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Abby Mize</b><o:p></o:p></p>
<p class=3D"MsoNormal">Senior Embedded Systems Engineer<o:p></o:p></p>
<p class=3D"MsoNormal"><img width=3D"130" height=3D"17" style=3D"width:1.35=
83in;height:.175in" id=3D"Picture_x0020_1" src=3D"cid:image001.png@01D853E6=
.6E10FC20" alt=3D"Shape=0A=
=0A=
Description automatically generated with medium confidence"><o:p></o:p></p>
<p class=3D"MsoNormal">+1 505 504 3611<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://www.lunasonde.com"><span style=3D"=
color:blue">www.lunasonde.com</span></a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN6PR03MB3137CB897CC3C5E722D963D8C8F29BN6PR03MB3137namp_--

--_004_BN6PR03MB3137CB897CC3C5E722D963D8C8F29BN6PR03MB3137namp_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=1343;
	creation-date="Tue, 19 Apr 2022 19:14:52 GMT";
	modification-date="Tue, 19 Apr 2022 19:14:52 GMT"
Content-ID: <image001.png@01D853E6.6E10FC20>
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

--_004_BN6PR03MB3137CB897CC3C5E722D963D8C8F29BN6PR03MB3137namp_--

--===============6598810056916250536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6598810056916250536==--
