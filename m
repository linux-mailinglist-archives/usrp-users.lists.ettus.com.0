Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFC938D853
	for <lists+usrp-users@lfdr.de>; Sun, 23 May 2021 04:36:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 59606383EB6
	for <lists+usrp-users@lfdr.de>; Sat, 22 May 2021 22:36:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="Dp9Fr2H3";
	dkim-atps=neutral
Received: from APC01-PU1-obe.outbound.protection.outlook.com (mail-oln040092254091.outbound.protection.outlook.com [40.92.254.91])
	by mm2.emwd.com (Postfix) with ESMTPS id D0499383C5A
	for <USRP-users@lists.ettus.com>; Sat, 22 May 2021 22:36:03 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gByn6t/TpY7/4G9J0/nqiKMu0nt1zAl7KZPUIE5JrkOvk6DdQj26G+HQb5mT2if4ZO56guf3d7W4XkgTOLL+pYB1Q38QfDRT8SmnsSvIFAIpN7lBIJwrR38H8SZsDz4D/dmT/NPhOvsLw2ZGcCly31gEjrdglVMLgYcx0eV3p0AC7pHnVb09RHcqgXBhKrw41COeZhmkbZ783/G1aeYIZI9K2yPyxGcch4ELMCms6PPAAdaB03fyViOlQceTL3zJ7ddJ4XUVmKImm3iNo/RztDDrVAOtoSskx+2DssAxT7WKo1pcxvaCrkDeMQLTgsFMa5D5UgRs/R49ggTWS6P01Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eYok77dwEtjvnkpwPOaRoCYXaUyUSSoi7u9UITxnM8o=;
 b=d23An5g8KixCO0nCcTyT1QyBDqMj/1VzTqqRTWWMnfGHzk70WtLU+WajEKE/nrWKQW6v6wTcDm9aV8Juq0AXrADK/kLmJ0F6HuYRg6XFwoC/W5YRadCpO9b9Sr2xUrgYKpFsED8LP5+LEyh1SWg0tetFKkpUU5e4bVL/SJVnp9OHSXcsT+wc/i1X37LlhdVqzB7lEJ9wjq/gwK2PIMvyhyrJOvm/l/ZHEwrEEaWsj8p0u6istgLn48O2aKXvQtg+EIwmzQigzpZfpzOLqBnOJ+SZnhqE7kiSvdrBeKksmcbX3KzZPFMc3uD+tT9UzXOSGDJ3/oq4okzMK697TTF2GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eYok77dwEtjvnkpwPOaRoCYXaUyUSSoi7u9UITxnM8o=;
 b=Dp9Fr2H3RgC+UNCG2jQ6TPIvPn/Mq+9+qUQWBtKHjnOillSa1VFkZlVc+wOxQVIVl8043awyRY/lvEiPX3OjuKHI3HgYQ+gfvkipV6wFrPjxQ+XJU4ePmrnI7lIC2Md0kmh5ZbmYTbIH06qh3KifN8OXXfqLTYssvH/IiaOsuSw8j4vU4zS59Eb5kvDcxszTiKltZ0PQv9oMK23LRUwpxVbgxykXU4YeuUET0UnnqNfVMILHA+PmfOfcZOg8tXIvq6uIesAhIRyIeqxejoO/FjfYYRqyOGUfqEYnwrvBx1uW6MbJvmLxSwRRZ5XXqbWqXX2o0UY3zy/cM43VhpR5iw==
Received: from HK0PR03CA0107.apcprd03.prod.outlook.com (2603:1096:203:b0::23)
 by SG2PR01MB2711.apcprd01.prod.exchangelabs.com (2603:1096:4:3d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.27; Sun, 23 May
 2021 02:36:01 +0000
Received: from HK2APC01FT045.eop-APC01.prod.protection.outlook.com
 (2603:1096:203:b0:cafe::4f) by HK0PR03CA0107.outlook.office365.com
 (2603:1096:203:b0::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23 via Frontend
 Transport; Sun, 23 May 2021 02:36:00 +0000
Received: from TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM (2a01:111:e400:7ebc::47)
 by HK2APC01FT045.mail.protection.outlook.com (2a01:111:e400:7ebc::395) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25 via Frontend
 Transport; Sun, 23 May 2021 02:36:00 +0000
Received: from TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM
 ([fe80::45ca:b903:88d4:d4af]) by TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM
 ([fe80::45ca:b903:88d4:d4af%7]) with mapi id 15.20.4150.023; Sun, 23 May 2021
 02:36:00 +0000
From: Oscar Pablo <oscar_pabloo@outlook.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: how to get time of last pps during streaming
Thread-Index: AQHXT3t89FZ0ao1brUOSkoP5IsRBrQ==
Date: Sun, 23 May 2021 02:36:00 +0000
Message-ID: 
 <TYYP286MB1407EBA5E5C751049DE906B5F0279@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:D37135C6FFE6910A84FC5B4B76136F94EEF1BE085DD9F682CE7C6831886D1E86;UpperCasedChecksum:520F6A35161D55C38350A703A2B84DA7967A753F7B2B6FB6C8C4226F3F1ADAA9;SizeAsReceived:6652;Count:41
x-tmn: [nfgovTgJ2Os2hPJULMKRPiqdQN/uM1nI]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: de0a5eab-f3b4-4230-e6db-08d91d9380dd
x-ms-traffictypediagnostic: SG2PR01MB2711:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 sPbEQG1bnzQzIAG9aeQGViCKVYwi7aNYPvKk/SubN3/EDhd80NVuWshzCkqDC6u4vdMEXbmHWTjdd6S9bS7eG9/6J1gCoYE7nbr72A/+OBqzTv4BiGrmoMjGsZToIuG3qz5W0nrWUbR3AkUIrEsQbM4kdLqXjD25FtHaiVtka6paLJU+/JuwgjR9pp5m43x4iyCvhEtCOohXWr0xcrdAX2yl7WSsimcQz5KprwpnxpmCJRdmH9WqdI2+V9DR9JxtxHuuxPwo524RkgoNxBfW3qupmsP4dxx03BkeNWxxLEv2fDFNqaMICOlJOCG+lRywCsHZF1wPTGVn14bExN5RGuFOT0WKJRVOwXqiqoBpV5BVfFNaU2PS+Ps2RZMOpvWWVWNTuDarYm6eJu07Ecd+rA==
x-ms-exchange-antispam-messagedata: 
 K/J/8jaN11czyDZ8E13uwImZySx3/abyUn8YA5z5QwTIUeTaN9blyicl2l0TH69lBfB6wWGbTH5H8aSBVCpFPI4DOB/YythvHcZJ4kPCxqqy505C7ZqRRR5mot8SicG4Jgv1UtPV/hBoh76f6QssNQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT045.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: de0a5eab-f3b4-4230-e6db-08d91d9380dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2021 02:36:00.8293
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR01MB2711
Message-ID-Hash: PSMLORTHLJ4WAEVRLLFTR5WMVEZ4P354
X-Message-ID-Hash: PSMLORTHLJ4WAEVRLLFTR5WMVEZ4P354
X-MailFrom: oscar_pabloo@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] how to get time of last pps during streaming
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TUTNEGVPGKXT4FYUSSSE774NIF5XHT4I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1189264249011413442=="

--===============1189264249011413442==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TYYP286MB1407EBA5E5C751049DE906B5F0279TYYP286MB1407JPNP_"

--_000_TYYP286MB1407EBA5E5C751049DE906B5F0279TYYP286MB1407JPNP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
i want to know the time of each pps during rx streaming. i don't know if i =
call get_time_last_pps will cause the overload? is there a way to let uhd p=
ut time of last pps in the meta data of the received data?

--_000_TYYP286MB1407EBA5E5C751049DE906B5F0279TYYP286MB1407JPNP_
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
i want to know the time of each pps during rx streaming. i don't know if i =
call get_time_last_pps will cause the overload? is there a way to let uhd p=
ut time of last pps in the meta data of the received data?<br>
</div>
</body>
</html>

--_000_TYYP286MB1407EBA5E5C751049DE906B5F0279TYYP286MB1407JPNP_--

--===============1189264249011413442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1189264249011413442==--
