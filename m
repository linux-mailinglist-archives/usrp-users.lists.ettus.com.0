Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5930D84025A
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jan 2024 11:06:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DFBD43844AA
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jan 2024 05:06:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706522761; bh=E8CzN/pv91WWF/aQOz9jk4ht85/W51z5elBXX2qBmfE=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=jKF+DPE3iEbaJbcVGbTeu1WSjGRSQcZz14i0ZU5iH+FPPerQtxX8sBOxN/2NhtPSJ
	 C1KfuKNlJDYLdbC5HaGUJXe17mYFS7dtRO080zVX4xnRp8JHG4ha6PES7bJVX6HRc9
	 QzUSPiKvljdEIDHjptCXQtbAkCf7xiJho5DgDL0KqFvp7DypFM7mZJoeWJi4v/sGkd
	 Swwq8miOtM9c6XUqUOvtsy1KIshtuf8iZ/h4wsVY2G+YQ9Ks5+oOkwqhrhxvKEV++H
	 TCI1+3BAtn/rpXiBSoRsD2rKQg6xlDUsgjehZ3hvHkME36HwFZAG3Ob3B410IBnEMZ
	 zkm9lO0e7ArjA==
Received: from IND01-BMX-obe.outbound.protection.outlook.com (mail-bmxind01on2052.outbound.protection.outlook.com [40.107.239.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 78C353844AA
	for <usrp-users@lists.ettus.com>; Mon, 29 Jan 2024 05:05:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aseblr.onmicrosoft.com header.i=@aseblr.onmicrosoft.com header.b="Uk+2W6CQ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iIAS90xvQCG+wTUAnxgMWzBJ1VzS/ug+tlYS2QqT6Ho29oB1rMahZAIhy60s0EOpWN822WgIFoZOFsR3YSY2nbbfcTcRox9nLywvEbKNvV+qYEkHdX3DU4f+ouY3KY3Iuq/jcU1YO3Dk726/uiqmOkptBXzZsD4ACCS2MpxG3AkSmIcBdNfgehTuDYey0DPlIrM3vs+LKJ6ynESxP8DPxoHEMNPZaWjG6Kvq8c7lU/hob1qCiI1Nom/ww193CJ0xNn3AeCFyNAXlJmd9K+2o+Qxa2wLcNAOXDHb3Yg/8x4ZNjPIuaZiMNWojF9KDelR7beRECfuCCOdXAElUaGBsFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2gJcJe6MUnhh4kyNfOFrfIvPyt5xc4A4PkuSDsGd8LU=;
 b=NnN/cDWnYxvp+kPpFDhl1J6DRlROWx6YW0dPrka3lbUWNLh6uDvdbuzUDMKuVlSTz9fVqH2Utk5Elg5sjpk4YGb8dIICDRm75eAxyxhsmyeOokPkuHOCi70/p0QDjXgxQPB/gyyBGNNOt81ZYhbt0ne7kdl74b/VYXIHSgvKLcIihWPXx+v2vnp4brKHJFMkuQxET9xxGtyXy1k7CqPNny86ElXo8NUuYNItiGo/NE0FocxvcuJIkleob9SFIq6es6SGQVThu0UdX4Yji8m/LSr5Bq0qYkwgQQRDAkl2Cmi4EfA7uKZG9inMX42qNUaAgHECNDZOh40AEEuZFqT19w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bl.students.amrita.edu; dmarc=pass action=none
 header.from=bl.students.amrita.edu; dkim=pass
 header.d=bl.students.amrita.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aseblr.onmicrosoft.com; s=selector2-aseblr-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2gJcJe6MUnhh4kyNfOFrfIvPyt5xc4A4PkuSDsGd8LU=;
 b=Uk+2W6CQPv+l6CgDNQW0bRjb16Z8Ki+6h1oaGMM0sxibN+Fw5vmgkhePvFTKkJNnuGgdj6sCkwNVrvrzTYrVsVbRsfoS9iXggbY8WOwAX1GjCnzVvbwLsmhiIPOuOJJB5MELXHdMuErYlG8TcomdvFG0laMxxfVBI07usxKz+e8=
Received: from MA0PR01MB6780.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:1c::12)
 by PN3PR01MB6918.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:a9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Mon, 29 Jan
 2024 10:05:20 +0000
Received: from MA0PR01MB6780.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::8345:4e0a:52ca:41a2]) by MA0PR01MB6780.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::8345:4e0a:52ca:41a2%5]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 10:05:20 +0000
To: "Jeyakumar K-[BL.EN.P2VLD22009] via USRP-users"
	<usrp-users@lists.ettus.com>
Thread-Topic: Matlab files 29th Jan
Thread-Index: AQHaUpqQJ7eavMYEE0moMY/khVhZIA==
Date: Mon, 29 Jan 2024 10:05:20 +0000
Message-ID: 
 <MA0PR01MB6780B25DE4697BF624D3A717B67E2@MA0PR01MB6780.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bl.students.amrita.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0PR01MB6780:EE_|PN3PR01MB6918:EE_
x-ms-office365-filtering-correlation-id: b5d4c117-d789-4114-ffa5-08dc20b1cd7e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 rq9/0IE1DG+Ws5niaIUIfjsNcRqtRbocsLt7m2K7kTC7JDvzxc94NA0D+8NyMEsu51DaqZIfvEpaeoUfboJJiEE0dP9rCCGOOiQqzbyXagSKsrbCb1mSgianDo4Aj9LJIqak6d2cfMZrZUy6Sq5a8nFEa9V4mkm8PpJZxTblAUsvqNetTgEdol+yMzpnHCJkAZvx5D8t6eBt7fGEkPovdcAKbCWeGbht3VI1tZqpYQOdxsCVOa+dy6N5dijbRnbCs0hrrDCh7UnrHHzYi04m5EK/U8eWe3g8NtyAYoBTwogLQyEBuTl3okqjqteii1Wp4mZap9szE6GJRsn2X0jmmWAhn/Hb7np8n7GgonAo8WY=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MA0PR01MB6780.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(136003)(376002)(366004)(346002)(396003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(19627405001)(55016003)(26005)(7696005)(6506007)(33656002)(86362001)(75432002)(41320700001)(38070700009)(99936003)(5660300002)(52536014)(8676002)(41300700001)(8936002)(9686003)(4270600006)(38100700002)(122000001)(73894004)(76116006)(66946007)(66556008)(66476007)(66446008)(6916009)(91956017)(64756008)(71200400001)(2906002)(478600001)(786003)(316002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?xEnjVFpVYhxf/Zwf2aXdpaKo+pSVH+MRcB3NNFGgtoZDW/2GJXQRVR8Q+d?=
 =?iso-8859-1?Q?TpIQQNNIFux3H3KZN+EpFCypAWR/nkU5vx06XEi3qc1Juy0CYNLDgmfTPM?=
 =?iso-8859-1?Q?N8OMhbG2/4g7LFibme7K/iWHNLJLw1O8GpDrf+tIsQs6DdYaZp1yLu0S1R?=
 =?iso-8859-1?Q?BrYIBddYVU64+CguXPyMG2dwMC6APcHU/ZESWJaPEa5lCERYfnoN6dDbYP?=
 =?iso-8859-1?Q?zyORWGEZQCJsMZ1AFlndX4lXU2TPeXQmGneSJtwKjWBoWiHpEyJ3wq30pw?=
 =?iso-8859-1?Q?BaFZQK4Oupx6gmchnqHD3Ut/yZYfM/5GrpXehhJeDAOOC4GBm+U8/oQoEF?=
 =?iso-8859-1?Q?SCc+lqtNrLr815A+tc3Z9Dt1Qs8gzzCHelQOqUlF5hFgnhboYNd7zd4JJQ?=
 =?iso-8859-1?Q?DHMBnZIs3cOCHXIz/0l1wYH3nM1xTXV/KdHcFy1ar2kQSVHLxP337EYCw8?=
 =?iso-8859-1?Q?9YAbziOH/2Aah/BwZ/h2c/3zD8Rz0r2vi8RbcFihG+29+h9xezaDSIJnxC?=
 =?iso-8859-1?Q?IkBOFaMTgaO79yDtvgw12WpbzDQgxFpfAII+C5/JYSUj6PdfYqiyHChN2K?=
 =?iso-8859-1?Q?PkkQ2HxQNDONEOmoKnDGJTcTdXPVGDPynzyKX82p3kpm+aX7ThonK4m78U?=
 =?iso-8859-1?Q?tYEE555peRRo4s0CWVoYbOIr9R2cT9OgVgSrwZ/B8H/G1yfqwY9jPVeUcW?=
 =?iso-8859-1?Q?Kejb6jyY+nzlqBOvVZn1Dc6NrVlZvt+GiH6Z11NJqISQTmJWwghb++OsSp?=
 =?iso-8859-1?Q?ev+/Wtmg4JeSGRnH29O50M4iQwHvsl241NMPoiuT4UjHWYW6Jrogwd89qg?=
 =?iso-8859-1?Q?ycGKIUkYs42mjrOmwFMALZoAVFdSd/QJs27Wn23FJ+Z0c7QyGTWOuTHfHt?=
 =?iso-8859-1?Q?pHVALWfAeALL7YPiNozAXOcOMrhnkz2Ej3pRDkt7w5sRgRPUatsHQt37Vw?=
 =?iso-8859-1?Q?Ow2MV17nOQUp4XP/UQdk2NhE7QpE9MnUiteR1QoE5baJ24sVkpUK+9gn5z?=
 =?iso-8859-1?Q?dURX5FDir0eVvTK389zLrM1PAVOrt7OlKMl7tp8qgrsmYwEeN1pBh62oIt?=
 =?iso-8859-1?Q?3jTbrbF8AQgCv2zFjdCwjQScgCkHTQwLEQC8hpkvsjLHOq5aXGMMdj2NvP?=
 =?iso-8859-1?Q?deNc6T9mi/bbh8PSNrYFMWeTHDAx7aKmsVoWTLE7I44EjI9FypC05LyG55?=
 =?iso-8859-1?Q?rm3Zc8vB0T91PJbznJDxx9QbCbhxed9/qTgYya8NyUa9IkuR41NffgDStE?=
 =?iso-8859-1?Q?YNn5FzS7+uPpPjLSbelYjbBi18CKLN0g3pNHi0JkQ4XNc0eC6OV7pndS6l?=
 =?iso-8859-1?Q?anGAeD0VbM5Nd+bCHfOpZhGE3+6MI+rJG2e8rU3HWBcD6ai7BZh5lfccWy?=
 =?iso-8859-1?Q?T4sILR3UigmyXFnJOYwt83epFoqb5+7Xg4EdZrU4eGB+i+YnQKHowZ21Di?=
 =?iso-8859-1?Q?XJwZvulgMbV77MeabbwO11LbBb8DPuDx6C7XGY/BsN0YNJJXulkfdn63vu?=
 =?iso-8859-1?Q?bOusQzefA3CXFKLaRSdSdDm1sVJuzi6HPKqQIWX1E3WL0U8KLJeIe+QzTw?=
 =?iso-8859-1?Q?zse6nHA78TKX5Cw1ixVL8yXlptLjd0zL8A4ro5jsVFTdaPo8VV3gV/lRVo?=
 =?iso-8859-1?Q?s1tZ15NBL9V49RuFgiDCyLI38ic2birS+1sIYXwX4VXxyQUunJfsP0Jaua?=
 =?iso-8859-1?Q?fTwuKE2942iQkmJLBes=3D?=
Content-Type: multipart/mixed;
	boundary="_010_MA0PR01MB6780B25DE4697BF624D3A717B67E2MA0PR01MB6780INDP_"
MIME-Version: 1.0
X-OriginatorOrg: bl.students.amrita.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0PR01MB6780.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b5d4c117-d789-4114-ffa5-08dc20b1cd7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2024 10:05:20.8210
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ebbbcd62-c0a9-46ff-a92c-5f2300087164
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RNNK7JTreVNhjGsF3ub3Zn5CLyrDKlB55jUF/X6iLfYaUM4DzY5jr+qhm3A5CNLTE+O1unxzoQJ2Rqp/rei4chrQ22BhSJhg6bA5my54OuGdwbM9qkY11dUTYsoxp7d0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN3PR01MB6918
Message-ID-Hash: IDBQLZXLKFQFUSE4LCXTDZ466HOWWA3H
X-Message-ID-Hash: IDBQLZXLKFQFUSE4LCXTDZ466HOWWA3H
X-MailFrom: bl.en.p2vld22009@bl.students.amrita.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Matlab files 29th Jan
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W7B2SYYMCAX4QV6KES4MKIS3GX7V5XZE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Jeyakumar K-[BL.EN.P2VLD22009] via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Jeyakumar K-[BL.EN.P2VLD22009]" <bl.en.p2vld22009@bl.students.amrita.edu>

--_010_MA0PR01MB6780B25DE4697BF624D3A717B67E2MA0PR01MB6780INDP_
Content-Type: multipart/alternative;
	boundary="_000_MA0PR01MB6780B25DE4697BF624D3A717B67E2MA0PR01MB6780INDP_"

--_000_MA0PR01MB6780B25DE4697BF624D3A717B67E2MA0PR01MB6780INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



--_000_MA0PR01MB6780B25DE4697BF624D3A717B67E2MA0PR01MB6780INDP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
</body>
</html>

--_000_MA0PR01MB6780B25DE4697BF624D3A717B67E2MA0PR01MB6780INDP_--

--_010_MA0PR01MB6780B25DE4697BF624D3A717B67E2MA0PR01MB6780INDP_
Content-Type: text/plain; name="lab1_3b.m"
Content-Description: lab1_3b.m
Content-Disposition: attachment; filename="lab1_3b.m"; size=106;
	creation-date="Mon, 29 Jan 2024 10:04:36 GMT";
	modification-date="Mon, 29 Jan 2024 10:05:20 GMT"
Content-Transfer-Encoding: base64

dCA9ICgwOjAuMDE6MjApJzsNCnN0ZXAxID0gKCB0ID49IDAgKTsNCnN0ZXAyID0gKCB0ID49IDIg
KTsNCnN0ZXAzID0gc3RlcDEgLSBzdGVwMjsNCg0KcGxvdCh0LFtzdGVwM10pDQoNCg==

--_010_MA0PR01MB6780B25DE4697BF624D3A717B67E2MA0PR01MB6780INDP_
Content-Type: text/plain; name="lab1_1.m"
Content-Description: lab1_1.m
Content-Disposition: attachment; filename="lab1_1.m"; size=176;
	creation-date="Mon, 29 Jan 2024 10:05:11 GMT";
	modification-date="Mon, 29 Jan 2024 10:05:20 GMT"
Content-Transfer-Encoding: base64

dCA9ICgtMTowLjAxOjEpJzsNCmltcHVsc2UgPSB0PT0wOw0KdW5pdHN0ZXAgPSB0Pj0wOw0KcmFt
cCA9IHQuKnVuaXRzdGVwOw0KcXVhZCA9IHQuXjIuKnVuaXRzdGVwOw0Kc3F3YXZlID0gMC44MS4q
c3F1YXJlKDQqcGkqdCk7DQoNCnBsb3QodCxbaW1wdWxzZSB1bml0c3RlcCByYW1wIHF1YWQgc3F3
YXZlXSk=

--_010_MA0PR01MB6780B25DE4697BF624D3A717B67E2MA0PR01MB6780INDP_
Content-Type: text/plain; name="lab1_2.m"
Content-Description: lab1_2.m
Content-Disposition: attachment; filename="lab1_2.m"; size=333;
	creation-date="Mon, 29 Jan 2024 10:05:11 GMT";
	modification-date="Mon, 29 Jan 2024 10:05:20 GMT"
Content-Transfer-Encoding: base64

dCA9ICgwOjAuMDAxOjIpJzsNCnNpbncgPSBzaW4oMi4qcGkuKjEwLip0KTsNCmNvc3cgPSBjb3Mo
Mi4qcGkuKjIwLip0KTsNCg0KZmlndXJlOw0KcGxvdCh0LHNpbncpDQp4bGFiZWwoJ3RpbWUgKGlu
IHNlY29uZHMpJyk7DQp5bGFiZWwoJ3NpbiB3YXZlJyk7DQp0aXRsZSgnU2lnbmFsIHZlcnN1cyBU
aW1lJyk7DQp6b29tIHhvbjsNCnBsb3QodCxzaW53KQ0KDQpmaWd1cmU7DQpwbG90KHQsY29zdykN
CnhsYWJlbCgndGltZSAoaW4gc2Vjb25kcyknKTsNCnlsYWJlbCgnY29zIHdhdmUnKTsNCnRpdGxl
KCdTaWduYWwgdmVyc3VzIFRpbWUnKTsNCnpvb20geG9uOw0KcGxvdCh0LGNvc3cp

--_010_MA0PR01MB6780B25DE4697BF624D3A717B67E2MA0PR01MB6780INDP_
Content-Type: text/plain; name="lab1_3.m"
Content-Description: lab1_3.m
Content-Disposition: attachment; filename="lab1_3.m"; size=138;
	creation-date="Mon, 29 Jan 2024 10:05:12 GMT";
	modification-date="Mon, 29 Jan 2024 10:05:20 GMT"
Content-Transfer-Encoding: base64

dCA9ICgwOjAuMDE6MjApJzsNCnN0ZXAxID0gKCAoIDAgPD0gdCAmIHQgPD0gMykuKiB0KTsNCnN0
ZXAyID0gKCAoMyA8IHQgJiB0IDwgNikuKiAodC0xKSApOw0Kc3RlcDMgPSBzdGVwMSArIHN0ZXAy
Ow0KDQpwbG90KHQsW3N0ZXAzXSkNCg0K

--_010_MA0PR01MB6780B25DE4697BF624D3A717B67E2MA0PR01MB6780INDP_
Content-Type: text/plain; name="lab1_3b.m"
Content-Description: lab1_3b.m
Content-Disposition: attachment; filename="lab1_3b.m"; size=106;
	creation-date="Mon, 29 Jan 2024 10:05:13 GMT";
	modification-date="Mon, 29 Jan 2024 10:05:20 GMT"
Content-Transfer-Encoding: base64

dCA9ICgwOjAuMDE6MjApJzsNCnN0ZXAxID0gKCB0ID49IDAgKTsNCnN0ZXAyID0gKCB0ID49IDIg
KTsNCnN0ZXAzID0gc3RlcDEgLSBzdGVwMjsNCg0KcGxvdCh0LFtzdGVwM10pDQoNCg==

--_010_MA0PR01MB6780B25DE4697BF624D3A717B67E2MA0PR01MB6780INDP_
Content-Type: text/plain; name="lab4_expdampsinu.m"
Content-Description: lab4_expdampsinu.m
Content-Disposition: attachment; filename="lab4_expdampsinu.m"; size=180;
	creation-date="Mon, 29 Jan 2024 10:05:13 GMT";
	modification-date="Mon, 29 Jan 2024 10:05:20 GMT"
Content-Transfer-Encoding: base64

dCA9ICgtNTowLjAwMTo1KTsNCnNpZyA9IDAuNTsNCmZ4ID0gMTsNCg0KZWRzID0gZXhwZGFtcHNp
bnUoc2lnLGZ4LHQpOw0KcGxvdCh0LCBlZHMpOw0KDQpmdW5jdGlvbiBlZHM9ZXhwZGFtcHNpbnUo
c2lnLCBmeCwgdCkNCmVkcyA9IGV4cCgoLTEpICogc2lnICogdCkuKiBzaW4oMiAqIHBpICogZngg
KnQpOw0KZW5k

--_010_MA0PR01MB6780B25DE4697BF624D3A717B67E2MA0PR01MB6780INDP_
Content-Type: text/plain; name="lab5_exprampdownsinuincrease.m"
Content-Description: lab5_exprampdownsinuincrease.m
Content-Disposition: attachment; filename="lab5_exprampdownsinuincrease.m";
	size=206; creation-date="Mon, 29 Jan 2024 10:05:13 GMT";
	modification-date="Mon, 29 Jan 2024 10:05:20 GMT"
Content-Transfer-Encoding: base64

dCA9ICgtMzowLjAwMTo0KSc7DQpzdGVwMSA9ICgoLTMgPD0gdCAmIHQgPD0gLTEpLiogZXhwKCgt
MSkuKiAwLjUuKiB0KSkgKyAoKC0xIDwgdCAmIHQgPD0gMCkuKiAoKC0zKS4qdCArIDEpKSArICgo
MCA8IHQgJiB0IDw9IDIpKSArICgoMiA8IHQgJiB0IDw9IDQpLiogZXhwKDAuNSAqIHQpLiogc2lu
KDUgKiBwaSAqIHQpKTsNCg0KcGxvdCh0LFtzdGVwMV0pO2E=

--_010_MA0PR01MB6780B25DE4697BF624D3A717B67E2MA0PR01MB6780INDP_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_010_MA0PR01MB6780B25DE4697BF624D3A717B67E2MA0PR01MB6780INDP_--
