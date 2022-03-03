Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2120C4CB5DB
	for <lists+usrp-users@lfdr.de>; Thu,  3 Mar 2022 05:22:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E8FE33848B5
	for <lists+usrp-users@lfdr.de>; Wed,  2 Mar 2022 23:22:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=innominds.com header.i=@innominds.com header.b="0KaV8hvM";
	dkim-atps=neutral
Received: from APC01-PSA-obe.outbound.protection.outlook.com (mail-psaapc01on2103.outbound.protection.outlook.com [40.107.255.103])
	by mm2.emwd.com (Postfix) with ESMTPS id 1D8303844A0
	for <usrp-users@lists.ettus.com>; Wed,  2 Mar 2022 23:21:32 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fQv2I+IOcmtFv1YTX+uKzPZe86NfYxt9cQZO7lhOt5X6UTZYcxnLtdXyCGKDCcG+t/UYxJWPXrghTebRa0qO6qx/hUTYJmQlWp00nzz/2+W5NBVMDURpP5p4UJvoLpNKyMvndjc+4po5G6ATwm6J+bLPZ3u3Ia1+hTJpSbDsTCJITk/gziwfbbKe/uegaqvcnoq1c6SlukF2FvEp5tzI4aVRocIUuZ1EX/OifpYaRQ35tFynVMClBmXcXxjS70+6B0VLu3paTxB5Kqm/20eAsHNz9bkTXi/r30TAxKEQvcoRKuHVVdNyUExN6UV6l/C3ucOyQiLpQyY1FoMmt2lKpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ar3dvHLN8KBSl2IYv/mKpsQtGC+USRSfXww7LrSdpk8=;
 b=DtpXAC0XSPhNpgHwfuf/zv8kMkhpV6bwB5H7gyT6Kmsav/CFkGGiouOhyGmtTY/SBSZF7uIiITx7CFTZQGpDbw4m+k9gk3vbejM5QrXt8HrGdIeSPOSxCJb32pggwiato7hxrCKSgGnclNSPlSGdOhryuBfmJB/vbrOLbSoSVHx0VoGIUku44rPvMwyjAjP4MO/Nk2pdeg2+kJOOem3V4iowq9swPhSDBC0z9Rhg4sB9TYB01VOj/vs2KZir4gz1n6GJUFCMe9xBM+idiMcnAZRXljKDGKpXWyrspxNdXfIDLv9LG8fqgV4uJkn4lnn4EogVSFzIjs6HpgfnjkvWZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=innominds.com; dmarc=pass action=none
 header.from=innominds.com; dkim=pass header.d=innominds.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=innominds.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ar3dvHLN8KBSl2IYv/mKpsQtGC+USRSfXww7LrSdpk8=;
 b=0KaV8hvMxJxtwzm1mrqf5djc5eqB/zudAWV0khfRKGoTi7mYGEn6iviaPVTgJL5xNHYEZUNMfYjQZR+QZyTND/Rh4AVUWUNTGwpKi1JIL7x7kEatrV5M9TTUr3+boyZfxjYp6XTiRevEMR9wBKhqpiy1yrAtEKZEIHvyPjiyjXCiRDlCNBJl5IXVZ2X11Cwm3HS/rdE6PdW6vT1rF+GE80wPBMEbp5RtnvD7p55z6r9zkrSOZ9bR42YmlRNTHWBr1Y9BLdiiASTuE/MsnPOcAqjtp8gOnR7SYRTOg27T3WR14gb//H7XslWY9IaIrIfY/4YgJxcGVDAY8uab7rH7nw==
Received: from SG2PR02MB3401.apcprd02.prod.outlook.com (2603:1096:4:4d::9) by
 SEZPR02MB5885.apcprd02.prod.outlook.com (2603:1096:101:70::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.14; Thu, 3 Mar 2022 04:21:29 +0000
Received: from SG2PR02MB3401.apcprd02.prod.outlook.com
 ([fe80::a53f:2397:8cc7:5bb8]) by SG2PR02MB3401.apcprd02.prod.outlook.com
 ([fe80::a53f:2397:8cc7:5bb8%3]) with mapi id 15.20.5017.026; Thu, 3 Mar 2022
 04:21:29 +0000
From: Ramagiddaiah Eediga <reediga@innominds.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Technical information about USRP SDR products
Thread-Index: AQHYLrX+KqUmhTGF8E6jthLHjaN4VA==
Date: Thu, 3 Mar 2022 04:21:29 +0000
Message-ID: 
 <SG2PR02MB340107BACBCC4DBD4C25147FB7049@SG2PR02MB3401.apcprd02.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: eeaaa35c-2969-f3e0-849f-53cfb52c4a63
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=innominds.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aefe3c58-ee24-4d0c-8c53-08d9fccd4a29
x-ms-traffictypediagnostic: SEZPR02MB5885:EE_
x-microsoft-antispam-prvs: 
 <SEZPR02MB5885EBFDF730A21B07EE2887B7049@SEZPR02MB5885.apcprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 i6hKiFHaXmaNLGPj52/Gf0FA62oXAUBA7uETkc1zMWHvUz1zpidzL5xQH1GZ+HJFpv8WHP7Wj0s7b7jOaLjJPojliNyqd7mg2a26fmp8cYSpjg1kfwv0P+ws7BGKxIWzvtCRKQmCaKNLaSDquxfiYxhQhonDhpJZMEzzlM687V01GSwU9LXFCPliyCY/ysh06sF+wL6Y02ls2MvfScQn1JG4l4Jlhq/GolbpMAU+FC6kXiuAw61TTWs1yqKxg5gQNwSOVhrLZ816zgvRsx5CHGV3WB3YUU79rrFgQGwGH5o9vEHSeTqDYuuRfE+83M/xvnEatTvIzKmGoZIciCZ8zq72Fyfbw4MS6q1/Rm2HB4xWmUAtc3ANwUVsF8ATZKhSSS3woumVRcGiBgmHGqaR+xkrcgjm5LJdgmPyXr2BUXLbcDY3kKWym2pSxdukivtlW3asR5kqI5JtZLiPyg2O7fJygypu9t0VQ3VyQ5LwQRRJ/U6fJPMyHniVeEloYeaZCpt+Zc0fUI5qTDg/Q+kisWcoVxfFTF5k1wlE8W+//p8RhxrwpjuRX5uIxj94vQBDw6woVBP3JlO8sQmIWVVeptg68txYNXYorM11CarfCHz9h89/IKuFtPVXLEFv5+bnSbWdyCEHAxh6dUH3eg7FIoTEbGHfkp3JkIlGTlDKWDlnvT4muoLTE7PWKh8GdNFM1k+35fgRCISgcHMl7WTA0g==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SG2PR02MB3401.apcprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6916009)(186003)(508600001)(4744005)(33656002)(55016003)(316002)(38070700005)(9686003)(5660300002)(38100700002)(122000001)(66946007)(66556008)(66476007)(66446008)(91956017)(19627405001)(76116006)(64756008)(2906002)(8676002)(86362001)(71200400001)(8936002)(52536014)(7696005)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?TfnSLQglxGD1S+tGDK9rCGdll7sIi3seUhVrzU6Gk2GQJ3Og4TmJq1RcKj?=
 =?iso-8859-1?Q?lz6rl0S1y+/DcTrd2MoVHb5HvvUS4qynkfIOoeyn6LDblG/L4+TDKkI301?=
 =?iso-8859-1?Q?Zkommkwj9QoseaGq1Lmius9vGC8s9cfJ1jnLWZvVxqPS1CNbzBAz2CYH7l?=
 =?iso-8859-1?Q?Me/4X/8oDNbJita2dUO+dd8UrBgE4PNYFHDtWOXccHohyzJSXBJwJ0wSC4?=
 =?iso-8859-1?Q?deeCwMxyTuD5T7CBqYThrcubtR5H77ctRGIHqTBpitcsnZJ523SS7eaMvZ?=
 =?iso-8859-1?Q?tRSkOOi6way11dbe24rQTBTa0wmsTZPLu39IMXVS5zs4fsGadR4CkgRwDX?=
 =?iso-8859-1?Q?Pgf25V+D9iEMU7Fye0wtf3Ils0iDdZ/vIIqVfPjYe6cPSKgxIDf+b75KUL?=
 =?iso-8859-1?Q?ONdITqNSVnR+tACn5uxUrk1QfKJQkOO2cY+gk1+gkIqMw4iJGUCzwdYVzg?=
 =?iso-8859-1?Q?IwQcEO++f9h6Ud6F3XVEQgZS2MBKYxLAgvC/kaLprG3qrUY3nSMHgjEckU?=
 =?iso-8859-1?Q?fJ13miLzHAAcaVe6HPHZx2K6k0AiVD/d0eYhmhW1nnnwI7OXPE3tQYeNQ2?=
 =?iso-8859-1?Q?TxE3l8AeFwhpyylKMNQ2cz00oDadkppMSrptURGW5dB4R8kc5OsiIlnqks?=
 =?iso-8859-1?Q?MhFn8Cs7M8SYy4FOGSbfUTkPM3Akhk5qqIyPeIul/x+xMN2BP7MaUaxVwv?=
 =?iso-8859-1?Q?49mlBlkHOIW/WvjvogzAwcxL7gJ7jvNkRAGECSzQ2SAwswEpObgudaGGsq?=
 =?iso-8859-1?Q?DT3qYKhDe/1tJH984O8iwp8RvXAStG56pBIYCAYadsxB0gNI3pJMOGINji?=
 =?iso-8859-1?Q?dm2HHgOl4QnpTagYtfFO59hBDraspierIYxV3/gEwaNTi58CZUfsxSufCt?=
 =?iso-8859-1?Q?c5Eh/6XKsfHBkQWwqbX1oIbqIsoCcbPVXMv4LLkdxE0lf97I8xw8j2ToXz?=
 =?iso-8859-1?Q?hgkGdD7f2iFTUYc5npUzgCrEt2leIz6gSbzgDl5bcNtbpDs3uYoWpPW6Ar?=
 =?iso-8859-1?Q?8GGeoIAdcvAZXQNHfhQuw7u5cj/He+1kPKMC47l6JC+U5LtUFvEjf7iX1E?=
 =?iso-8859-1?Q?E1KM6SAy5tioma8HG84rTw7h+OBAc8x48T3oMY8kvQj9etjKNHeSfNYmY5?=
 =?iso-8859-1?Q?nlhONkbcbLC5IB838Zv2C5oCFUyjq/A5D7TWbaqPxKHrbncPHFJnNrD1Y9?=
 =?iso-8859-1?Q?o4OrgLjxdf9M7+lm8GxUjWQyBuvCnqChn4gZYAdiqHzfuSAQCigV1aAkHB?=
 =?iso-8859-1?Q?bKPiWXYPK4JoIVBIXfsAE1vin0k/NW9zkmy5PAYDOGe+9y15sA2qapWxFy?=
 =?iso-8859-1?Q?61qPL2XWLucB0EkOFIHCsKjtmYY+AaY/hohBhztt+1Aknh4qJDhYlJHq+D?=
 =?iso-8859-1?Q?OB+kNDJU4PQnY08SkVUfVVKv8b8a9tEp3MpNgxFmX8fIIh9seqLb0TZejB?=
 =?iso-8859-1?Q?5ciV1gM5PobRTmm2nKlCtw3yIexJz2DLtX2isdZNVc63oCN8tAKTxPM/vK?=
 =?iso-8859-1?Q?lOTWEnz/fp4eQYfUSjSJAzBCnHHrMpms56L4EZNSU1xz5d5vrWwY1z0bZ2?=
 =?iso-8859-1?Q?x6nfET90l4fc/cpLMXKdBnCtgKBuQlbk8SXAb/RMMC1rn748oFCpb4uWok?=
 =?iso-8859-1?Q?xuRs8DBYJdeSiFfrdZdC/9einxGhpfMcR2W+LyuhbTyiskAcnFj48ydjbi?=
 =?iso-8859-1?Q?6AnsVI+Pm0Mow4CK0EaGGgpE+p5C9Rg/hfM3oGLVay/N+tx/PjFfAAUi4g?=
 =?iso-8859-1?Q?/xcw27XhmNqGUhl86g3mddvDs=3D?=
MIME-Version: 1.0
X-OriginatorOrg: innominds.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SG2PR02MB3401.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aefe3c58-ee24-4d0c-8c53-08d9fccd4a29
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2022 04:21:29.0649
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46439914-63b7-464e-8327-9b13737ae8cf
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qqpnwrnGKbqO/KODVtSP2v9sopmUylj7bqfuw4dgdVpYwg7+WeUyf9+qwk7LIZdW0EqJmFU2amofo3dRoH8KaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR02MB5885
Message-ID-Hash: YV5M5WELJBSEL6AECJEXQFGCOEAPZZYP
X-Message-ID-Hash: YV5M5WELJBSEL6AECJEXQFGCOEAPZZYP
X-MailFrom: reediga@innominds.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Technical information about USRP SDR products
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2T7ZBGTXHQOENW26WCS2P2K7SIH4LWDZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6589016917122423419=="

--===============6589016917122423419==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_SG2PR02MB340107BACBCC4DBD4C25147FB7049SG2PR02MB3401apcp_"

--_000_SG2PR02MB340107BACBCC4DBD4C25147FB7049SG2PR02MB3401apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am Ramagiddaiah from Innominds Software Private Ltd, Bangalore. I would l=
ike to know more details about your USRP SDR product (Bus series, Network s=
eries, etc). Could you please help us with the below info.


  1.  Does USRP SDR product will support to O-RAN Specifications?
  2.  Does RF Front End card include with SDR product or should we need to =
purchase seperately?

Regards
Ramagiddaiah
Mob: 9110691844


--_000_SG2PR02MB340107BACBCC4DBD4C25147FB7049SG2PR02MB3401apcp_
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
<span style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255=
)">Hi,</span><span style=3D"background-color:rgb(255, 255, 255);display:inl=
ine !important"></span>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><span style=3D"margin:0px;font-size:14.6667px;font-family:Calibri, sans-s=
erif;color:rgb(32, 31, 30);background-color:rgb(255, 255, 255);display:inli=
ne !important">I am Ramagiddaiah from
 Innominds Software Private Ltd, Bangalore. I would like to know more detai=
ls about your USRP SDR product (Bus series, Network series, etc). Could you=
 please help us with the below info.</span></div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><span style=3D"margin:0px;font-size:14.6667px;font-family:Calibri, sans-s=
erif;color:rgb(32, 31, 30);background-color:rgb(255, 255, 255);display:inli=
ne !important"><br>
</span></div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">
<ol>
<li><span style=3D"margin:0px"><span style=3D"margin:0px;font-size:14.6667p=
x;font-family:Calibri, sans-serif;color:rgb(32, 31, 30);background-color:rg=
b(255, 255, 255);display:inline !important">Does USRP SDR product will supp=
ort to O-RAN Specifications?</span><br>
</span></li><li style=3D"font-size:14.6667px;font-family:Calibri, sans-seri=
f;color:rgb(32, 31, 30)">
<span style=3D"margin:0px"><span style=3D"margin:0px;background-color:rgb(2=
55, 255, 255);display:inline !important">Does RF Front End card include wit=
h SDR product or should we need to purchase seperately?</span></span></li><=
/ol>
<div style=3D"margin:0px"><span style=3D"margin:0px"><span style=3D"margin:=
0px;font-size:14.6667px;font-family:Calibri, sans-serif;color:rgb(32, 31, 3=
0);background-color:rgb(255, 255, 255);display:inline !important"><br>
</span></span></div>
<div style=3D"margin:0px"><span style=3D"margin:0px"><span style=3D"margin:=
0px;font-size:14.6667px;font-family:Calibri, sans-serif;color:rgb(32, 31, 3=
0);background-color:rgb(255, 255, 255);display:inline !important">Regards</=
span></span></div>
<div style=3D"margin:0px"><span style=3D"margin:0px"><span style=3D"margin:=
0px;font-size:14.6667px;font-family:Calibri, sans-serif;color:rgb(32, 31, 3=
0);background-color:rgb(255, 255, 255);display:inline !important">Ramagidda=
iah</span></span></div>
<span style=3D"margin:0px"><span style=3D"margin:0px"><span style=3D"margin=
:0px;font-size:14.6667px;font-family:Calibri, sans-serif;color:rgb(32, 31, =
30);background-color:rgb(255, 255, 255);display:inline !important">Mob: 911=
0691844</span></span></span></div>
<br>
</div>
</body>
</html>

--_000_SG2PR02MB340107BACBCC4DBD4C25147FB7049SG2PR02MB3401apcp_--

--===============6589016917122423419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6589016917122423419==--
