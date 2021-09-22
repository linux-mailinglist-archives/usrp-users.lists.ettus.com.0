Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1ED414FDD
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 20:27:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DAC9738482F
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 14:27:38 -0400 (EDT)
Received: from mx0b-000b4001.pphosted.com (mx0b-000b4001.pphosted.com [148.163.143.220])
	by mm2.emwd.com (Postfix) with ESMTPS id DF58C38482F
	for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 14:26:45 -0400 (EDT)
Received: from pps.filterd (m0166823.ppops.net [127.0.0.1])
	by mx0b-000b4001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18MIAtJq022186
	for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 18:26:45 GMT
Received: from az1-msa-prod01.server.ufl.edu (az1-msa-prod01.server.ufl.edu [128.227.74.22])
	by mx0b-000b4001.pphosted.com with ESMTP id 3b7q4fny5d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 18:26:45 +0000
Received: from exmbxprd13.ad.ufl.edu (exmbxprd13.ad.ufl.edu [10.36.133.39])
	by az1-msa-prod01.server.ufl.edu (Postfix) with ESMTPS id 82EE010005C
	for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 14:26:44 -0400 (EDT)
Received: from exmbxprd24.ad.ufl.edu (128.227.145.168) by
 exmbxprd13.ad.ufl.edu (10.36.133.39) with Microsoft SMTP Server (TLS) id
 15.0.1497.23; Wed, 22 Sep 2021 14:26:44 -0400
Received: from exmbxprd21.ad.ufl.edu (128.227.145.166) by
 exmbxprd24.ad.ufl.edu (128.227.145.168) with Microsoft SMTP Server (TLS) id
 15.0.1497.23; Wed, 22 Sep 2021 14:26:44 -0400
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 exmbxprd21.ad.ufl.edu (128.227.145.166) with Microsoft SMTP Server (TLS) id
 15.0.1497.23 via Frontend Transport; Wed, 22 Sep 2021 14:26:44 -0400
Received: from DM5PR2201MB1755.namprd22.prod.outlook.com (2603:10b6:4:62::39)
 by DM5PR2201MB1113.namprd22.prod.outlook.com (2603:10b6:4:31::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16; Wed, 22 Sep
 2021 18:25:26 +0000
Received: from DM5PR2201MB1755.namprd22.prod.outlook.com
 ([fe80::d069:2ec2:27f2:e12e]) by DM5PR2201MB1755.namprd22.prod.outlook.com
 ([fe80::d069:2ec2:27f2:e12e%7]) with mapi id 15.20.4523.018; Wed, 22 Sep 2021
 18:25:26 +0000
From: "Greene,David J" <djgreene@ufl.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Daughterboard Schematics
Thread-Index: AQHXr94Yiq6WoStRAUik2eZxVAWMIw==
Date: Wed, 22 Sep 2021 18:25:26 +0000
Message-ID: <DM5PR2201MB17552654B536B592A49BB330CFA29@DM5PR2201MB1755.namprd22.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 4b269ea6-5aaf-414c-7fe3-b757d6e609ea
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ufl.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17d3387e-ed71-4401-7c9f-08d97df65932
x-ms-traffictypediagnostic: DM5PR2201MB1113:
x-microsoft-antispam-prvs: <DM5PR2201MB111335653471705A70F5CAB3CFA29@DM5PR2201MB1113.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3jbI/H3nSpRqbLRHwU5+KwHBtM8ZYGgDFb/R3qUL6OFaI6L6FFOw+KKvMhHquHJqRhdmJJEvBRXorDl5q6RjYq145kjIZhjI3n8ivjSY8Oukv/CqH35uy6aQhoKgv/G6lvLW4VyFkJAFqWruvZV0070j8L0Zg3kcFLqiQkB6yvF2t74nn80/jyF79RmOanGmVXNsi/Ye2g8rhTpWTm26a33tJI9bmPp8WOboyv5kqSTBYP2XGW/MqQYOSQTNlhQK9uNVZ87XiuqB2hXgAjfRnKttUE7GSICH5NwDSpCXo20sbztkmGlrl+3hBK0saprfXQe+ouyWMV3jzSQRWbJFQjNq5fNjklXVo4kIYUGgEwpI9p41mad6VL5TDFp/AovCWwn/GOwj/IAoAdFEGOiwrnxCutaOpFe+suVEHqhtZ+gtkDVSF/eAEQMzQWIJul8g6jPYjrpGYCKOP3y3DUtwT86/X+PfXDBW68PcCaQdGb4afRy/HGhC5CcFp23fnWhNhrAhSPXRyb4Bfm+dHUROj/3JFY/X8CrGmJyob6jS/xVaj7LXOMerRkt03yjVGntaTaqduAhSk4d2kmjz0l3RBVHBGWr6BjLr3BY22Id6O5OfyequtyjMS14tK0KEOcswXIOHLla3QKZUg/kC6MuCwun/IWTgwdJ7nJC2NzosM3RgA/AsDqbj8w/fmlo/6JjGpDqP7k/m+r6VXhJkbK7znw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR2201MB1755.namprd22.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(38100700002)(8676002)(38070700005)(75432002)(26005)(3480700007)(71200400001)(86362001)(122000001)(6916009)(508600001)(19627405001)(186003)(7116003)(6506007)(64756008)(66446008)(8936002)(55016002)(316002)(5660300002)(4744005)(33656002)(2906002)(66946007)(66556008)(66476007)(91956017)(7696005)(76116006)(52536014)(9686003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?1J513R2hPRReVueZqJEhto8LjSnmC6AMSoUw9WVT744py45U+M8q9QjBOA?=
 =?iso-8859-1?Q?QwWZ4soQ2UQC0GpDftMAOzr1DXqqGSv1DrvZcfkwCCYIzfUB6New4vkWKy?=
 =?iso-8859-1?Q?axx27R8mngxqnVTGtqpqDJLdGzdcm2D8VUUN9kCvLEp6nTq42lItfVSCU4?=
 =?iso-8859-1?Q?xQ5j5y051hhnlWFXz4ydCFXdQWpMxM1I5cqEQQ6crSsuwBp/y1SXViZlql?=
 =?iso-8859-1?Q?xvwfvmNuve2YHkNuuRYbekFSttcjWDEjHR/SWW/2GSRr64HLkXT4R6a0gq?=
 =?iso-8859-1?Q?77KEvGK5OeDdKy9fMS1OJhJkxaOAAdiCKaN4fTcQSV43Ldz9mAXroGPbjA?=
 =?iso-8859-1?Q?DLJs5DFmO6zZywQYujj3sdT6Vy3JC3vKZAgu6oRgkWkiDJaSQ+jDNsSEua?=
 =?iso-8859-1?Q?bb9htzFlQcmDJVUeAAV3fsyBoQSlAVwTkwO6qqQFD9O4gzeEU74MhygAkm?=
 =?iso-8859-1?Q?iiugFwXA/z0ye0t+yPymMMKEtbootp21WspSUlZhAW8jBRghSPviBas6s2?=
 =?iso-8859-1?Q?YUzqBxNHm+sRk8Jz9PhP6ZzZaglEJLvRNka8irYot/uCdqyo3TCyzzb2te?=
 =?iso-8859-1?Q?K49NNnZipnIrRRY1GsK3pp4SZqyqJgxADNy4FDCzRg/hJvWIJfFou2/kwe?=
 =?iso-8859-1?Q?8M1FS3wikOceNKymKsNnHKkksxPMv5MiLUUWVu/qc/fRbIMZwLNYm2pRoe?=
 =?iso-8859-1?Q?pdtruvCdiWQ4TBrSeGtRiBVk5mk1kTLGkOAsKiTzUAcv4ELhfok7xSkyNl?=
 =?iso-8859-1?Q?/Jv2Q7905z/57p/0ZftejWXS69wgrfcBQn08RoYz02HfmPaeGPgLg2gTxG?=
 =?iso-8859-1?Q?ZrPtqTIhwsfE+Cryo4achraRWf2UkA2JSjGwR2Nr5+tkWFzRNK0r6qCF9E?=
 =?iso-8859-1?Q?vWRqGhz3MYa7zt7as+ovr1wg0BInjRXTIGF1HIV13skBfBgE75dYbbL58t?=
 =?iso-8859-1?Q?MR4yaCO+XeCx6L1hyPsuuH+lvwX6GMiJAGr//JIya0/jpKqycJGoPhBeY3?=
 =?iso-8859-1?Q?4r3Mg/XhGsGJTnSAkourdpbeUbsrKLQukAYucyk2l8g5sroPYeAMyRM4jX?=
 =?iso-8859-1?Q?eG6lC1s8P4UmvJrc3cGOm5Tp74ngxnN++JDxS+hGnTqm83OPGfb9FdeN3S?=
 =?iso-8859-1?Q?zCQUmvmnUlJjkT8C1L73M3SFXuxUCyBOaW2LRtBclivhhpaZZdeID5AUX/?=
 =?iso-8859-1?Q?hoqZSreDZUrYeIXWTggZxi9lRRVuPCeAoPl2a3a1GF8blefVGS4pLEIXYX?=
 =?iso-8859-1?Q?u5PYJtGV437dz3BCOVeCYm0jn2lc5vaW91yiEYGlFWG3ZjZgmvCtMwzo2Z?=
 =?iso-8859-1?Q?C5YLAjhHv67UI58LyK+5BmtjEIvsmAFIBfeSPzd32sjWhIY=3D?=
x-ms-exchange-transport-forked: True
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WyWvHfuBc99RHvig7CCLAcdfdilXWgpjcGUKcteN21QEXW+rftovtNKyTiENwP/WHBGZIxZg8/VdBAgpFrbD01rZQjsPPe283em2qvpnR3SWWXnvvtpVXgLoQCh6qO3yzFL1SVhnSV1414+pPoj4R87x+LAAArjbyF8SHZdTetohcFPfyGrtrtLA2tPKW9+YdbXEV7iR2oL89ArJPiOEhncfQZwbPSaWjoHdq3EEh2eD0yMnEMEwIL6KkYGOdK6VNHCAsFSomb3GfL0zXXyj9mQ1jbAAFFvP8YeZ5quvCwuC1SpG//a9RMyYoSnQHQ0ahPuVD5LW6IXRJL4+IR+O0Q==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=vGByc3pu6W7Lo3a/sCcg29fe1sI2ibjrkmeikTW6CyA=;
 b=Wqd/sNSm9DOag2E7YQGI1N4uP1va9/3cLjdKpmRrBYFHKiDbZIhH6+NAO16VsutyDZwly0ZRLyaF3MFo8UVTVCAbFv7xYBv/z59/qLkL9JE0uKNl/AHqotbLBsCJkB0yJIQjLnvJ+OjasgJ4KhrgLRahx02YPHsxK1MsQsUi3B2e76KWvS1SZ1WwXc1UTlS4hIHvWmNYOMsAmK60kwhsBbRs7mXmfOvfiKwOMq08tQ0tafZ/y1WijnEoiEapCxJPn+1wkmuiXMWLyeb9udyppdEREkV6lLeCTGWWzbRM0uHqLAxf3nynFzDsvCW0jIBEUFWrtZ+TvZJNHPBMfsvuKg==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ufl.edu; dmarc=pass action=none header.from=ufl.edu; dkim=pass
 header.d=ufl.edu; arc=none
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: DM5PR2201MB1755.namprd22.prod.outlook.com
x-ms-exchange-crosstenant-network-message-id: 17d3387e-ed71-4401-7c9f-08d97df65932
x-ms-exchange-crosstenant-originalarrivaltime: 22 Sep 2021 18:25:26.0194 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 0d4da0f8-4a31-4d76-ace6-0a62331e1b84
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: PL+CPc9s+0kGm8Aogk6yzCCQCVH4tOhShB95FHwiX314/5bvd4hwIcETnvs/Th+F1A9csV2B3hUrkfWi3QxPkQ==
x-ms-exchange-transport-crosstenantheadersstamped: DM5PR2201MB1113
MIME-Version: 1.0
X-OriginatorOrg: ufl.edu
X-Proofpoint-ORIG-GUID: vN_cnkdyOAF1Q1sf96_5PQt0L0H59yzo
X-Proofpoint-GUID: vN_cnkdyOAF1Q1sf96_5PQt0L0H59yzo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-22_07,2021-09-22_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 mlxscore=0
 malwarescore=0 suspectscore=0 phishscore=0 priorityscore=1501 spamscore=0
 impostorscore=0 mlxlogscore=638 lowpriorityscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109200000 definitions=main-2109220121
Message-ID-Hash: 5YYDPVQLJPZ2TWWDQFUCORQ5H6KQVAP5
X-Message-ID-Hash: 5YYDPVQLJPZ2TWWDQFUCORQ5H6KQVAP5
X-MailFrom: djgreene@ufl.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Daughterboard Schematics
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5YYDPVQLJPZ2TWWDQFUCORQ5H6KQVAP5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5373278690603406409=="

--===============5373278690603406409==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR2201MB17552654B536B592A49BB330CFA29DM5PR2201MB1755_"

--_000_DM5PR2201MB17552654B536B592A49BB330CFA29DM5PR2201MB1755_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Where can I find older revisions of the daughterboard schematics? The files=
.ettus.com site only seems to hold the latest revision.

For example, I have some "Rev. 4" SBX daughterboards that have an inductor =
(L31) directly after the TX/RX SMA connector that I want to replace. The "R=
ev.5" version, along with the latest schematic, has "X2" in that position a=
nd L31 is gone. There are various other component changes that I want to ma=
ke sure I'm replacing with the correct values. Thanks!



All the best,


David Greene

University of Florida

--_000_DM5PR2201MB17552654B536B592A49BB330CFA29DM5PR2201MB1755_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Where can I find older revisions of the daughterboard schematics? The files=
.ettus.com site only seems to hold the latest revision.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
For example, I have some &quot;Rev. 4&quot; SBX daughterboards that have an=
 inductor&nbsp;<span style=3D"background-color:rgb(255, 255, 255);display:i=
nline !important">(L31)</span> directly after the TX/RX SMA connector that =
I want to replace. The &quot;Rev.5&quot; version, along with
 the latest schematic, has &quot;X2&quot; in that position and L31 is gone.=
 There are various other component changes that I want to make sure I'm rep=
lacing with the correct values. Thanks!</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-family:Calibri,Arial,H=
elvetica,sans-serif,'Apple Color Emoji','Segoe UI Emoji',NotoColorEmoji,'Se=
goe UI Symbol','Android Emoji',EmojiSymbols">
All the best,</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-family:Calibri,Arial,H=
elvetica,sans-serif,'Apple Color Emoji','Segoe UI Emoji',NotoColorEmoji,'Se=
goe UI Symbol','Android Emoji',EmojiSymbols">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-family:Calibri,Arial,H=
elvetica,sans-serif,'Apple Color Emoji','Segoe UI Emoji',NotoColorEmoji,'Se=
goe UI Symbol','Android Emoji',EmojiSymbols">
David Greene</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-family:Calibri,Arial,H=
elvetica,sans-serif,'Apple Color Emoji','Segoe UI Emoji',NotoColorEmoji,'Se=
goe UI Symbol','Android Emoji',EmojiSymbols">
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-family:Calibri,Arial,H=
elvetica,sans-serif,'Apple Color Emoji','Segoe UI Emoji',NotoColorEmoji,'Se=
goe UI Symbol','Android Emoji',EmojiSymbols">
University of Florida</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-family:Calibri,Arial,H=
elvetica,sans-serif,'Apple Color Emoji','Segoe UI Emoji',NotoColorEmoji,'Se=
goe UI Symbol','Android Emoji',EmojiSymbols">
<span style=3D"font-size:12pt"></span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DM5PR2201MB17552654B536B592A49BB330CFA29DM5PR2201MB1755_--

--===============5373278690603406409==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5373278690603406409==--
