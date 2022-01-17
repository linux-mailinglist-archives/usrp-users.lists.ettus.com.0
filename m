Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6119E490ACD
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jan 2022 15:54:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4AA338527D
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jan 2022 09:54:32 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="CkR3jJcG";
	dkim-atps=neutral
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12olkn2086.outbound.protection.outlook.com [40.92.23.86])
	by mm2.emwd.com (Postfix) with ESMTPS id B12E53854BF
	for <usrp-users@lists.ettus.com>; Mon, 17 Jan 2022 09:53:19 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UoMHB4Dr2azHu7k9XfrRZom/AfeFc4Vm5qr+KMow4CptCFm92lenw4Ew3dTdJ61kW2uGg7zVgUIBpD/LnaaHC64Ht2CGOkdo/WaH8wkZ7WNy5nvg4K6fkdbRNKqLTL5JpHunLNOdTHzCnkjtq9FG1jN8UNUuFYDYQv0n4JxK3890/iqHZt4VshFuxNnSNFmb1jSLr5wbqojpUf4qwETxfxjljDctWhZPtBuhXz1ta1FFKh+kcUaA7q0tCHmtdVpPUjXn1+4+oE6tJMheWiYglnfxwrubMVUfzz+gJmTfTK/cXcCg2Mop8ewYWpuymA61RlxyEM0luuMyIm/uo51KSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cGbqiydFV2UqYbFn8ZczOCyTmvGF1VjRgqhAckdYEms=;
 b=Qw9ILmDlfFqMeRne2a2svu0jvajnoMjez6D15SZGZdy/HOGyaylhFcM0MJ8mGghfzEfDUvWrwDUVMZzfciJoa5J9P/IBpOqtMYjB5Pn3gNLKCd2gSYiN0L4gxOoFoeVc6+gdrwjq3BYCx2VRyv4De6Zy0EtsXrnF4kj/hHXgKQeFN/Hoa6UEeTBnhaTWbtYt1a4GOmLth6ZQ856Tv7b4cjjZ8+7WxopeiKqvEFViJ9O1pBqq/MigM9eGPqkU4bEHowWNuLy0lGTO8eMNhRx7OBG1keuv6yuVkJJVGPTuJ7ssLSq9xAdg8sTIDKVXxi3u3WF2vM+hpzzFPNp00o/iPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cGbqiydFV2UqYbFn8ZczOCyTmvGF1VjRgqhAckdYEms=;
 b=CkR3jJcGGar9kCLW8tyMBag4IS+Zp5DGVJPr5JZhKEThrh1fhCBZIRdieH2p1gycABiETWn22ckrMkVNBt+bB3cl3LjExtYEjXyOK7cGiw0HKEf73L58F9zYGBCgvss0jKz4mg6q06CpWMXeS+RIO9uItPbJOmSduzhnnMlm1jzOO8EQEiraLHWwb4AGZ5JGRODPxd5THVOiVfysw49RY+M5NsuOAHSXaeDNIhNnVLTPmCkSfyxHpOYRc0Vt6B1L0h+r/jMyOHjwetSClwtFE8WoTctOfcP5liYtioc9eOvaclWzhBb0u1ETQCIqcpvTzTetoIR139IkDjMnoGu8tA==
Received: from BN6PR2001MB1090.namprd20.prod.outlook.com
 (2603:10b6:404:ac::21) by BN0PR20MB3992.namprd20.prod.outlook.com
 (2603:10b6:408:12b::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.11; Mon, 17 Jan
 2022 14:53:18 +0000
Received: from BN6PR2001MB1090.namprd20.prod.outlook.com
 ([fe80::2132:1fe3:92b6:77e9]) by BN6PR2001MB1090.namprd20.prod.outlook.com
 ([fe80::2132:1fe3:92b6:77e9%11]) with mapi id 15.20.4888.014; Mon, 17 Jan
 2022 14:53:18 +0000
From: steven camacho <stevenacamacho@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Your confirmation is needed to leave the
 usrp-users@lists.ettus.com mailing list.
Thread-Index: AQHYC65RZd/+Fg8hf0WhSzC9ItHHBaxnTH19
Date: Mon, 17 Jan 2022 14:53:18 +0000
Message-ID: 
 <BN6PR2001MB1090FC0E93645E3170918E80DB579@BN6PR2001MB1090.namprd20.prod.outlook.com>
References: <164242962949.11264.15342826341726125696@mm2.emwd.com>
In-Reply-To: <164242962949.11264.15342826341726125696@mm2.emwd.com>
Accept-Language: es-CO, en-US
Content-Language: es-CO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: e2a01565-9ef6-a19f-6578-068606adfa05
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [4TsXK09w7uYZApAPdd8vVT2qxLs2cPEQuxHbZ+mel0p53dv9jdBtYICrcSDf3/JD]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c79db35-f8c0-46ef-41fc-08d9d9c91908
x-ms-traffictypediagnostic: BN0PR20MB3992:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 f9tOa4AyhzyexVTdpxTFGij79bCMhQU0vFZyeSYHUUwZzop7iZgLD6mfGeaM3o1Nk6dd1XdoQcxlz+p/8xorpyDLTFvvpgtnjJdUoOxH0YstbdDXWqv6jxNhoy/rvp1ns6TaBY3Btp1wZT/GcvemTWmlThFY2ZNNLdUb/Glp8sKNFwSGsTs1FLSf81zeAXEf56evDjpC0ZRIbZ7ZZvhaIyHkyVFcUWfG9kwJo5J9CfMMDAArgAwf3+bEz21oGw8hcsDWfKTzJ7Ie7nsa05cEOhzivwL0SCpm9AOBg9ShN/KR/Wb6l6nP9Bv+2SZVQI4ICcL+wjPwsrnU6QK9fwx5Iv8jj6cZJKVpBttZESbabmthG1w9xxORNSloiZjkMbQsBdwhyuAdLygtTVqFzjHudYMcCJJMaewymE35eA6x0sMclkNNopWf7inJ3mcuX6j3bgly3DeJfG6Z1eh8o/i5m+NLJbjyxI7Je5yf0952sTJjzWt90joORxCWtARVZe6OBQAdRAaXnRckYFX0+56vcRkGuv4NzlN1uZHcoPSNkTPttnYI6IiNBPcjFOjtW9NrJOhJTVsxQEXUk6TG/tPgcg==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?uxxrxdFd7A26G/I4pcXHka1gRyjn1ZExyUgCYOzliYDt9fbqTjmup4sAoS?=
 =?iso-8859-1?Q?1gN7Aa+GcGylWazNirp4uF53Bs02gjkRI2NiQCixikAKZP5iofPTPSQup1?=
 =?iso-8859-1?Q?DP0CXnaz86ZeinrFLiZ9qIbeFgWWyX1M93/cNUUV+uw4n6+S8fjCt7ZY6X?=
 =?iso-8859-1?Q?C+c1PrT/1rSn7BPL0kSLXXRkKMEoQ4HTNxOaK0nxY2A2eviAjm/p22k9+B?=
 =?iso-8859-1?Q?aBnprQl9mYEF8CpxrXa3BSR5iF8Dgrs9P9rDr7QSf2PK+WFbbg9PE4Cfo6?=
 =?iso-8859-1?Q?heSVotWJPBkH3tijX5v3ArO9lKX9b2SBXVGzhsCW2O5tPAfAuYBDWXmud7?=
 =?iso-8859-1?Q?IVMSebHIrSf6YTuhuudwVlY2OEKol0SnJhrya2KRMyMkt/DUS+38SZXnVZ?=
 =?iso-8859-1?Q?NDGDxuCQc6Fm+VdXVQkCvuuCCZ0sAYE9quBGEFTcaQ7peFZECUdM8Urcla?=
 =?iso-8859-1?Q?YoeB/cD0j+/3prfGOyqZShWBNKCxZjftuHI+m9rED7hNkY2SEQ4K1mscVE?=
 =?iso-8859-1?Q?sRMMrUcJPlinr4IxyoUhUTl9O0JR1vxMwge5hh4r555eted9yGKZVofiTd?=
 =?iso-8859-1?Q?Wvt1kGz6lzTRp5f5KeDm2xBSlS+x1UUbKKW16kShphwNlw5a75anDWVMN0?=
 =?iso-8859-1?Q?sccQy8/6nfW1sALuJyMZxt/Su+g4E0tF58VG2Kz8TXRwyZwpGVDTJckIJy?=
 =?iso-8859-1?Q?BNzL5sK+UGSXL1rBL402PUY0qaZ8cTZJq6HWgbsvrFKDKeWRhqmNH9aFvJ?=
 =?iso-8859-1?Q?aQar/FAxPIQ1tjPr+bUUuj9o+qNEWSKdesl0Tnkeids4gUmGm7Ok5Pw2BV?=
 =?iso-8859-1?Q?4ZHvpnAe7J8Pi7w5Hjx0rop4LvfchLl9JaJ0tEItlYSBLbW457v1OCxKHC?=
 =?iso-8859-1?Q?S7EdfVhpS2CWh2HxCn3wFqjdZzUn4DwWcpw4IV2/Xpp5EPnz/x2G0f0wXE?=
 =?iso-8859-1?Q?2Org01VnCZ+k5Q3e4Btnl9WBB2N7TZKcq5jnqM1wF4Es6y1rnOIA71pKfD?=
 =?iso-8859-1?Q?GmHR24x/c+kSpvmWuUyd5VDsDmS4/3r7adGino?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-9803a.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR2001MB1090.namprd20.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c79db35-f8c0-46ef-41fc-08d9d9c91908
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2022 14:53:18.0636
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR20MB3992
Message-ID-Hash: OEZZ6TNGK2Z52EE7H5KMHK3MMH3HWA3P
X-Message-ID-Hash: OEZZ6TNGK2Z52EE7H5KMHK3MMH3HWA3P
X-MailFrom: stevenacamacho@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RV: Your confirmation is needed to leave the usrp-users@lists.ettus.com mailing list.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QLJIQOFKIVID7Y67KAUXEQMAF2UGFQT3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0754927819910634349=="

--===============0754927819910634349==
Content-Language: es-CO
Content-Type: multipart/alternative;
	boundary="_000_BN6PR2001MB1090FC0E93645E3170918E80DB579BN6PR2001MB1090_"

--_000_BN6PR2001MB1090FC0E93645E3170918E80DB579BN6PR2001MB1090_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



________________________________
De: usrp-users-confirm+b5bf6d60b1ac9b49078131495054e27979ff40fe@lists.ettus=
.com <usrp-users-confirm+b5bf6d60b1ac9b49078131495054e27979ff40fe@lists.ett=
us.com>
Enviado: lunes, 17 de enero de 2022 9:27 a. m.
Para: stevenacamacho@hotmail.com <stevenacamacho@hotmail.com>
Asunto: Your confirmation is needed to leave the usrp-users@lists.ettus.com=
 mailing list.

Email Address Unsubscription Confirmation

Hello, this is the GNU Mailman server at lists.ettus.com.

We have received an unsubscription request for the email address

    stevenacamacho@hotmail.com

Before GNU Mailman can unsubscribe you, you must first confirm your request=
.
You can do this by simply replying to this message.

Or you should include the following line -- and only the following
line -- in a message to usrp-users-request@lists.ettus.com:

    confirm b5bf6d60b1ac9b49078131495054e27979ff40fe

Note that simply sending a `reply' to this message should work from
most mail readers.

If you do not wish to unsubscribe this email address, simply disregard this
message.  If you think you are being maliciously unsubscribed from the list=
,
or have any other questions, you may contact

    usrp-users-owner@lists.ettus.com

--_000_BN6PR2001MB1090FC0E93645E3170918E80DB579BN6PR2001MB1090_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size: 11pt;"><b>De:</b> usrp-users-confirm+b5=
bf6d60b1ac9b49078131495054e27979ff40fe@lists.ettus.com &lt;usrp-users-confi=
rm+b5bf6d60b1ac9b49078131495054e27979ff40fe@lists.ettus.com&gt;<br>
<b>Enviado:</b> lunes, 17 de enero de 2022 9:27 a. m.<br>
<b>Para:</b> stevenacamacho@hotmail.com &lt;stevenacamacho@hotmail.com&gt;<=
br>
<b>Asunto:</b> Your confirmation is needed to leave the usrp-users@lists.et=
tus.com mailing list.</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Email Address Unsubscription Confirmation<br>
<br>
Hello, this is the GNU Mailman server at lists.ettus.com.<br>
<br>
We have received an unsubscription request for the email address<br>
<br>
&nbsp;&nbsp;&nbsp; stevenacamacho@hotmail.com<br>
<br>
Before GNU Mailman can unsubscribe you, you must first confirm your request=
.<br>
You can do this by simply replying to this message.<br>
<br>
Or you should include the following line -- and only the following<br>
line -- in a message to usrp-users-request@lists.ettus.com:<br>
<br>
&nbsp;&nbsp;&nbsp; confirm b5bf6d60b1ac9b49078131495054e27979ff40fe<br>
<br>
Note that simply sending a `reply' to this message should work from<br>
most mail readers.<br>
<br>
If you do not wish to unsubscribe this email address, simply disregard this=
<br>
message.&nbsp; If you think you are being maliciously unsubscribed from the=
 list,<br>
or have any other questions, you may contact<br>
<br>
&nbsp;&nbsp;&nbsp; usrp-users-owner@lists.ettus.com<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_BN6PR2001MB1090FC0E93645E3170918E80DB579BN6PR2001MB1090_--

--===============0754927819910634349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0754927819910634349==--
