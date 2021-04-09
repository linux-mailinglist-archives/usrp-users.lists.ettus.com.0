Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C5A359F75
	for <lists+usrp-users@lfdr.de>; Fri,  9 Apr 2021 15:02:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 08EA0383BE8
	for <lists+usrp-users@lfdr.de>; Fri,  9 Apr 2021 09:02:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="KkBuW5d6";
	dkim-atps=neutral
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-oln040092253095.outbound.protection.outlook.com [40.92.253.95])
	by mm2.emwd.com (Postfix) with ESMTPS id CC6C5383BB9
	for <USRP-users@lists.ettus.com>; Fri,  9 Apr 2021 09:01:34 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UB0PyNzLsQRBv4s8jq0i/qec/rw0MPUcRZ4AkiWptxrioMRUfhLOudGEYcmmhS3+f6/Lp+uyLB1jxhxSf48mlDBZS0BWm1+gGViW8d08XpN6HHMlY+oX2khLpPlHSv7/J1i0uAn3Xd3VmvoJ0OVV2oPAAGCZMhmjdIa4GI2B3Gy7yjoZtGWttr4JHrxKHBtBWKjBiUk8Nw5iy8O09M8YizPzAM6klWeJDwUw+7pKlTZODfILsmr/O+WmTiQRmgwLDEUuQmgAS9WG5s32x9CXJ3rcAjIyKjiPbxgC7wl3Lh/4eaf7Lpnms4ynT/EhVZjxM+f6SU3iO5HIT1cSVZ249Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bFWTQcIUmCbj7QHlXbP/nyy2DQ13e1r3JgYZcUw1vJs=;
 b=Rd6yrYnRKVkMFZYoyVHzCAg1ZH54eZpzTownsuR0+gGhMoNE7yLSXnO3IIJW3ptWelad0hFRkJZKSU523pvqWI0N2x4YzMc9mglFae0x/O1fvcip8aKjzSm/NPaMTf3JMhCJJ9G95KxyUvNB3DWoDIBdvKmyfgxAKB9db1ymtIIukSFShFsmd5zg1+gXjjuVqmyZ4yDtoj2ybvnoTVDRZjm31i/ZOJjpSyD2DUQwmojsyLbR5OggdR85Kdi5JNpvUpOMRhUsOCSvNyuGn8Pws/WokkCIkLpn5lKTX96lWNKgrQwJKdJiyLYJWNQytzbSOHNjsRo2MuQnHxA+A/vdeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bFWTQcIUmCbj7QHlXbP/nyy2DQ13e1r3JgYZcUw1vJs=;
 b=KkBuW5d6rl5LeNdOESEIto7LKwI5mg1i03obotWlLaJ0wvpTU82N2xM9OoWauUMZ0IxVwAG2khAzB1+BHalDz2RGp8ASkNqNE2jV9OzQbNrW/7/P4XwS2tl7L+r6zr88l9bHYi9mjwbeSufw/5xrM/ZYdNl4TTnzaSPM2rADpLBAcLfvVuojzn8Zjcf9bGUxq0nWcjnAdwHMSiBWjyuXkuOZTSxdJi8/MzH/gosr/8xpd85JVwE1cgT6MgIt9cN7qCGL6uHx/tVHOMxnJApUbXV+RWtMOYr9IKps91LY8Yn4J0hWKBOiDJcafis2xu7+uiz4TU6PMN2SO2Wg/Qa2qA==
Received: from SG2APC01FT046.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::53) by
 SG2APC01HT029.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::370)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17; Fri, 9 Apr
 2021 13:01:32 +0000
Received: from SY4PR01MB5452.ausprd01.prod.outlook.com (10.152.250.52) by
 SG2APC01FT046.mail.protection.outlook.com (10.152.251.145) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4020.17 via Frontend Transport; Fri, 9 Apr 2021 13:01:32 +0000
Received: from SY4PR01MB5452.ausprd01.prod.outlook.com
 ([fe80::41eb:c4a6:c42e:297c]) by SY4PR01MB5452.ausprd01.prod.outlook.com
 ([fe80::41eb:c4a6:c42e:297c%3]) with mapi id 15.20.4020.018; Fri, 9 Apr 2021
 13:01:31 +0000
From: james Thomas <james_ttfun@hotmail.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: is cpld source code for UBX available
Thread-Index: AQHXLUBcNWaO3nw5lUyQh5p61l61XA==
Date: Fri, 9 Apr 2021 13:01:31 +0000
Message-ID: 
 <SY4PR01MB54529EAE048222DD23DADFE29D739@SY4PR01MB5452.ausprd01.prod.outlook.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:D47892A7B45897CC61EA90F5711B0E5A81C10EEE6CD7C0BB5B2D9798AC50D383;UpperCasedChecksum:832213C4A1E1950B47BA2BE9583A76BCAA5553310250FC22BF8D5219C63E2327;SizeAsReceived:6626;Count:41
x-tmn: [PbZ/n+tdP443hhgft4/aC18668ONQeNs]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 299fa13f-179c-4d23-d34c-08d8fb579868
x-ms-traffictypediagnostic: SG2APC01HT029:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 uceQhAvYDMkc0QgYB2hb4aL4vlOJDz+uQ/W6yG7C3rTsf6GF4vDXOL28q+1EWJjDUxhCNDrBuydAYjfj0XwVUxAZ3y7BwZBQe1vvNBxGSDHtVFhLvw9CnDnPprTwPYTit90K2LZ2gP9BUT6sJr6BWWuaSuWnKd1lJCZWQMww905PI+5agBdoIgUDug6ovwBA/CfjhftST9YybGYAMcNkkTaV9tN6WjjgVl/RqUV+oU+Yuq/1l9BdWKRd9t1JFfvToWigmGf5b/sk3k0DaZr+8faDlya03tABucWzUmbvCZk6gNBMsFpy/7YpPwKXPUh7LPxUU2GJiBbiAE6Exwm1QcA2Z/yGwYwAE3ZvoOcdOuJcyvoRp51a4tuvV0nuoj6SALSHr+msvK/h41YzmXMi6g==
x-ms-exchange-antispam-messagedata: 
 oZKOqCWsolQeQlAOdNQAQk5CQOO5i8yGWXQaZgmoFe8vQMAcfji3WM8lIfxEfYPt2tPhAb9RE+HFjW7arirkaKS6jZTlAeBZT0jeA7pz6fZ8c/b1R20rQHPPAYbFb3Lptat+7yTG8mVBLdz+eMXCjQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT046.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 299fa13f-179c-4d23-d34c-08d8fb579868
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2021 13:01:31.0349
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT029
Message-ID-Hash: VJYBUOA7XACGJZJOORBCQKIQVF4JJUH4
X-Message-ID-Hash: VJYBUOA7XACGJZJOORBCQKIQVF4JJUH4
X-MailFrom: james_ttfun@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] is cpld source code for UBX available
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z6STBFGEKYFKVSARCIYFVIMKJI7R5JVY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4921292126463101343=="

--===============4921292126463101343==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SY4PR01MB54529EAE048222DD23DADFE29D739SY4PR01MB5452ausp_"

--_000_SY4PR01MB54529EAE048222DD23DADFE29D739SY4PR01MB5452ausp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
is cpld source code for UBX available?

--_000_SY4PR01MB54529EAE048222DD23DADFE29D739SY4PR01MB5452ausp_
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
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
is cpld source code for UBX available?<br>
</div>
</body>
</html>

--_000_SY4PR01MB54529EAE048222DD23DADFE29D739SY4PR01MB5452ausp_--

--===============4921292126463101343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4921292126463101343==--
