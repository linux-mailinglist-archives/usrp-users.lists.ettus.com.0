Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3D258400A
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 15:33:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26F53383E3D
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 09:33:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659015237; bh=Yb2NHXyUbXzy6RhGYVPIWigZmCSIqeUsdxF1/4VGfx8=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=LOB8ncz6bcPGgdR6kCSvDwJ9H44YOh9+1YY1Gy8HrVAqGh4Oy2p8uOegxoVEdFRTt
	 LxOEhKjHEzVflgWODgqAh/iyIpKer3MLljoz9CKRbDqdaJe2s8Dr8r54y1YGihou1w
	 xu6qYkbHALVcZHE/b8DHUFIW2Okq2ZK3iSFQJwxHYm//r9jskfRkSXiAOkeu6QkpJZ
	 MUGD4QC2CoQ2L+Y1LEUCzUqoUyCcn0fH0jOYDwhHm3d9kNCG4yHLs10iHD2KsdQ7r9
	 ZKsywoMXKVWrhWGbraHs5t/p/ajEfeL8e9Vl4TSDwZuZZKRbGZ2fb7+XLT+xHmYwhk
	 6LFq/GljvLsng==
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01on2078.outbound.protection.outlook.com [40.107.222.78])
	by mm2.emwd.com (Postfix) with ESMTPS id 9DD51383DC6
	for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 09:24:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=iisc.ac.in header.i=@iisc.ac.in header.b="vKJjBZNh";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dBR8+HsvFnp+4GsZ99dq+/VdqknYfBtm4N8pMaaX91mxSe0hXghozs18EjbNoHyGZCnCyU1St3i/TQL5buiHpogqeFsPToe+eA5U1P+vOBY43l29mVDTlFd2MnqUGgimfQbgHNau9YVy+SkrQatQ0AHtNQkJ4vlfpHNzUDrhLh9KIG/2eJLYOh8a7K6HDdcRSS7xC55OOrikjwHuNGHFifrTwPFpPLPjcu8pYDXqtNMMfxtzkW4mYx1f+xMpQINFJchJCVwJNwV+qFKBcB0wU8T71K2Tk+oIFQgRQNCbhcBEquob6RnSJMri5/U2e1sGWWnp99TMAJwL7DNv8B9fig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7h7Kf2+o/nKXgxSR3jdcM5HrkAViS78/+KadnOfMXxc=;
 b=N9ccgTwUWnczSMyT9xYhQNAWFIrQEJnsXRYHmp7Pgy+XOwEDQpRLH3R7pfU3ATFbkBJ/+UYqNydWshDIZf6Kz13DCczn6CXKjNfMq6D3eSNrIoN+f+EyQwvoMIsqDOcagQidOHe5FuL8eBRwd0Pdit6LuqFfapDOaSW6mRuFxSxSjCbyV7UINsuvSlZ5M+gXY/ewcwfySy2kvZR+KN6Y7tG4+nOiiYrpKXr3CGTIoFo79UbI7yO/fPTTfqYXND5Y6jQ21QIWxLiZmMM0kIOd0p1ucOt+Q22+AFsSowceyAZvdx7v5adt/PUgO7Y9pruN6f+cw3QslGGydDsKh2UuyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iisc.ac.in; dmarc=pass action=none header.from=iisc.ac.in;
 dkim=pass header.d=iisc.ac.in; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iisc.ac.in;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7h7Kf2+o/nKXgxSR3jdcM5HrkAViS78/+KadnOfMXxc=;
 b=vKJjBZNhAqewCTd526YSPi5PKxooDCDbZECLrT9xyEMIrrda2agPvaqvaGUx/vp1aeYuu57HbmCPRaEktcywxJayyw0fukUNlrAQMOczhvRYmQozdgHoKmIS6mVW2MFWJnxo+aWriawEFTJwp0muuPtO5v6koYLIEPeM8qb9vus=
Received: from MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:5::14)
 by PN0PR01MB7638.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:b4::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Thu, 28 Jul
 2022 13:24:41 +0000
Received: from MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c934:aea2:cd30:e13f]) by MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c934:aea2:cd30:e13f%6]) with mapi id 15.20.5458.025; Thu, 28 Jul 2022
 13:24:41 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] UHD Python API on windows
Thread-Index: AQHYooUvmk70+YPQGUC617aYiM+W0w==
Date: Thu, 28 Jul 2022 13:24:41 +0000
Message-ID: 
 <MAXPR01MB43596E4778E0A0DA838DFAF489969@MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iisc.ac.in;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 149c3c79-3c75-45ed-c068-08da709c8774
x-ms-traffictypediagnostic: PN0PR01MB7638:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 vZ7VT3fVepOE5CXlFykn/H1arLoRtXoP1rz2RXY6TDYiYNtp+nV5RIlH0WK+ivG+25leqCIf8bn2ch7rox3WrSekM0oZEpHdLxQKIELt4dsH1j5QhiHSxFfNMKl9wOZst64FlwPk/3HhxQhdLM8Q22ijIsMft2SP4pk6m1PeqtcMwA03+isarj49MKZ1vP36UzWpxL46zeDw0yUS4KKiOg/ZvevwOUqSB9o0daQjCmDit1KODI02Dz2oTB68KbfP3YFTG1xpcyNfmT0R1wmpwr7Nb7U8LzomUxU32bQsi4qG3z+zcq+svN604/ICaWE8UxL8kDt5UKFPlBz71Gds6WIqAkVBXrdz/WvSk3e+UWKIcia2p0rflTPFrTNJX+yt8EjjKqWb78CyuDFLFIBH/4Blc8tH48jp9CaXrcvoAtP1xW4og8TSMl+dQ3DDFzU2qGzANNO/Of5cGRUHOCGhxJYxxs+lo1yjtgKiUJZKqAgM2us9tg1sl4Js3sWiwD03HxQTzdpmotl+oHKmHyZGFEbR0N3LrDLso4IlfE1dAL4yAoD0R511TQPwhsgytMbJ4NtN9yWilqN8s3vlTaAOMm/lPQQ05YZMqL4nHZuq76w3xRJA+89LA4EAiX8UJlUUngpH9BoOQnGfTfevqVSzAdhHD4+renvk8mO+FNiHA9uSlmIpFWZxJNDlh60+983ja/dfi/wgmBUwC6jXPtdzNBwnGfBEsA1aQK+lWd7BE1wHOCb+PTNoXisRC7bCpPSmyco/TGtrazlikmvWDUpdcbqn1cVeD6mfBmavgwouJVvV58TSV6+riGjWQIiLo4U/D1ToZ+7v2F00gxI7EDoeSw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(136003)(376002)(346002)(39860400002)(366004)(21615005)(91956017)(966005)(478600001)(66946007)(5660300002)(52536014)(66476007)(71200400001)(66446008)(26005)(6506007)(9686003)(33656002)(8936002)(66556008)(166002)(4744005)(2906002)(76116006)(64756008)(7696005)(41300700001)(8676002)(122000001)(41320700001)(6916009)(86362001)(55016003)(38100700002)(316002)(38070700005)(186003)(786003)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?skp0LjifzqFC0S8S7DlTaHECs1KJCRbMmwEqHzJhWH3y9oltnftIYpUOMnNr?=
 =?us-ascii?Q?l/Xomcwqdn8WeaD4nTQWjdDKyE0kM/Zk2adhHBFigfPmZrLDBFU1x6M8ta2n?=
 =?us-ascii?Q?DIXoqBLt9wI2Ft2V003gQ8BNSbT9G7CHHaHAPSpwMfdlkEjn6eLe31EBmHoT?=
 =?us-ascii?Q?RoKdA7vazNZVuoe6xufvaFSDo9fYAX93bkgPtNONftlO4qBnhNpMav6MCYkO?=
 =?us-ascii?Q?z7CcIrXHtYSNWa6bxAUO2vqEwMwLH1h8nD38N0nLoddzcpW9qQDjyGzP2Plq?=
 =?us-ascii?Q?AW3ndVOiIzEM9noKijIYosgIfY2b0bdRy/Q2BXGYdB0ocA2jV2JX4uDxx5VN?=
 =?us-ascii?Q?DG7bGiaLpsjh9uK6SKe8rfG/U9aRjBmpNdh3salz1cIJxH9xGM83OOigclEn?=
 =?us-ascii?Q?P/g6ZdegG2+8NK6m6RWx3tgDK1tzYXCcDWkbr2IfjkK1bBek/t7wM0IVNOHL?=
 =?us-ascii?Q?Fi7+vZbO5Pt5/nTbR1cjbNzbzQXrWkfTI4sBPPenS+7U2+z44Gp+F+MwY+B8?=
 =?us-ascii?Q?6HqNUIoy8rrAfU8W4ksMGwImJzPJ6RAt9nN84/fDCAkTojHTubQdiUhVy8XH?=
 =?us-ascii?Q?n1jpWvieFDBCp4PrWsg9AlePnQXvC+ggUHX5A9GBHo1f5Dq2vst6KmbQj/v5?=
 =?us-ascii?Q?jA1QaVsbhSadtt/aIgoWg3QxwXuNfrtzDLE/KYCYIOJKBG3HcREbF789LLCS?=
 =?us-ascii?Q?PgI4KzmOTXFsZu+DyrjnDl680l85ca4higsTlqyfvL45tFWiU6vP/Qgv8b4e?=
 =?us-ascii?Q?AsAAECM2jGPrNq6UJ95Ha7tP4RnrlM21xOXl/Ypvl8ePawD4I9KbHlHzVo0n?=
 =?us-ascii?Q?DQtJWhsV4u9Q+Qv9a4pmXh3KxJHHL6zKG+ViauVZ8G6SP4PCvchGys1w3FML?=
 =?us-ascii?Q?DJQD3Gyekwg3IpIrFVsoP71jv2Yp6r39PPVVuLh9Ogmov3j5qNYNTiXqHVYa?=
 =?us-ascii?Q?Yg7ISqd1wBG+8XY+QziV7HLf0frRZN/10M03Yxf5zB5wl7o93KooOK268OUY?=
 =?us-ascii?Q?SpMb9jgV9dEmgXRxGKXLW4VBqMmv70TppjfB/bz6odXC9V7LoZbvX0qwn8gj?=
 =?us-ascii?Q?NmJoEnoF5M+49G8Sg/jxmteYzTzF3vRLfOIGeyrnUw1Kco5k8Avv9zud7KoL?=
 =?us-ascii?Q?8pij6s5JZ1ULEMZrM1aM0aUpvoq3YbYQxM/55M7hAjy0kqx0XYYhzz5e1CxV?=
 =?us-ascii?Q?CbmZuBqVxDWabt8KmL1vhgnM7tXDL33nKZr4lHk27PvMhhEB6FZqpFKoKfjV?=
 =?us-ascii?Q?/6fMct8J5uop4olPdT//rYlnoRj2BSAhsy85WotYSreWPdFmQIn6ymK541wn?=
 =?us-ascii?Q?W1b7XNYAGyJYB0pbe7hroTpfrxHrjZcJIoUx7Qfgij2fqGkM1T8LVgQZnq/z?=
 =?us-ascii?Q?DxAdGY1/IuxIn3Qa2HwO0vGV3KheiSAfuWMe7Cl268Btb2qFRM5AKudUqdJc?=
 =?us-ascii?Q?QtxTQZkvlYSjHelEZvfhfLNEw7Jja8BTEBNJ+moOqbZHOY4wxyrflFHZfynr?=
 =?us-ascii?Q?hSLjIdXteqKeLiPEHdZ1WLi6m9cnUjtknig3irw8200hYa7jqAZsEd18avZA?=
 =?us-ascii?Q?tRj2JZXjqFA0EvVV9jXzP9WArUQ6TqWPCMBkRp+xCAICpg6Ov49FNOxeNO8i?=
 =?us-ascii?Q?6Q=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: iisc.ac.in
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 149c3c79-3c75-45ed-c068-08da709c8774
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2022 13:24:41.5506
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6f15cd97-f6a7-41e3-b2c5-ad4193976476
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MYggDdasZYfs2NhGfWUCJ6N9kJBYN+6VTZagMuoeu819LvMTbrsQLRNAh656pyNYvJtd5DbgMtMNMTd1M78/mA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN0PR01MB7638
Message-ID-Hash: OYVRATR4WGVUH537D4236O7RLDII27XR
X-Message-ID-Hash: OYVRATR4WGVUH537D4236O7RLDII27XR
X-MailFrom: sauravroy@iisc.ac.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Python API on windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C77EX3FA5OXEBE7Z4KFQOSS6LDW4SWFN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Saurav Roy via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saurav Roy <sauravroy@iisc.ac.in>
Content-Type: multipart/mixed; boundary="===============5572573932051621432=="

--===============5572573932051621432==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB43596E4778E0A0DA838DFAF489969MAXPR01MB4359INDP_"

--_000_MAXPR01MB43596E4778E0A0DA838DFAF489969MAXPR01MB4359INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Dear sir/madam,
we are trying to install UHD and python API for B210 in windows 11. We are =
following binary installation for UHD. But after this, we do not know how t=
o proceed to create the python API. On this page,  https://files.ettus.com/=
manual/page_python.html instructions are related to 'install the Python API=
 when building UHD from source.' Could you please provide the Python API bu=
ilding steps for binary installation of UHD?  Thank you very much.

With regards
Saurav Roy

Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for Window=
s


--_000_MAXPR01MB43596E4778E0A0DA838DFAF489969MAXPR01MB4359INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
@font-face
	{font-family:Roboto;
	panose-1:2 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-IN" link=3D"blue" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"background:white;vertical-align:baseline"><=
span style=3D"font-size:12.0pt;color:black">Dear sir/madam,<o:p></o:p></spa=
n></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white;vertical-align:baseline"><=
span style=3D"font-size:12.0pt;color:black">we are trying to install UHD an=
d python API for B210 in windows 11. We are following binary installation f=
or UHD. But after this, we do not know
 how to proceed to create the&nbsp;<span style=3D"border:none windowtext 1.=
0pt;padding:0cm;background:white">python API.&nbsp;On this page, &nbsp;<a h=
ref=3D"https://files.ettus.com/manual/page_python.html" target=3D"_blank">h=
ttps://files.ettus.com/manual/page_python.html</a>&nbsp;instructions
 are related to '</span></span><span style=3D"font-size:10.5pt;font-family:=
Roboto;color:black;border:none windowtext 1.0pt;padding:0cm;background:whit=
e">install the Python API when building UHD from source.</span><span style=
=3D"font-size:12.0pt;color:black;border:none windowtext 1.0pt;padding:0cm;b=
ackground:white">'
 Could you please provide the&nbsp;</span><span style=3D"font-size:10.5pt;f=
ont-family:Roboto;color:black;border:none windowtext 1.0pt;padding:0cm;back=
ground:white">Python API building</span><span style=3D"font-size:12.0pt;col=
or:black;border:none windowtext 1.0pt;padding:0cm;background:white">&nbsp;s=
teps
 for&nbsp;binary installation of UHD?&nbsp; Thank you very much.</span><spa=
n style=3D"font-size:12.0pt;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white;vertical-align:baseline"><=
span style=3D"font-size:12.0pt;color:black;border:none windowtext 1.0pt;pad=
ding:0cm;background:white"><br>
With regards</span><span style=3D"font-size:12.0pt;color:black"><o:p></o:p>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white;vertical-align:baseline"><=
span style=3D"font-size:12.0pt;color:black;border:none windowtext 1.0pt;pad=
ding:0cm;background:white">Saurav Roy</span><span style=3D"font-size:12.0pt=
;color:black"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwlink=
/?LinkId=3D550986">
Mail</a> for Windows</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_MAXPR01MB43596E4778E0A0DA838DFAF489969MAXPR01MB4359INDP_--

--===============5572573932051621432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5572573932051621432==--
