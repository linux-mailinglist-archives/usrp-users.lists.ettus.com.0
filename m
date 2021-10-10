Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1B34282A2
	for <lists+usrp-users@lfdr.de>; Sun, 10 Oct 2021 19:28:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51B5138432A
	for <lists+usrp-users@lfdr.de>; Sun, 10 Oct 2021 13:28:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="qLApHqyo";
	dkim-atps=neutral
Received: from APC01-PU1-obe.outbound.protection.outlook.com (mail-oln040092254051.outbound.protection.outlook.com [40.92.254.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 17BA4383FF2
	for <usrp-users@lists.ettus.com>; Sun, 10 Oct 2021 13:27:14 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fpY8J1L5FlR5d715fEcSv/O6euNMyBA8aTll0iIFRbeNrQrzw3Mm9vWZEZz7YYvjZ6CJ1OXOgwU3KDBmZbQINkKIoOAXVgpuCrYz+K8W9BcXK/5rF60NLs+1vcLE9C5iVHAro+OlJJfP6B+TsDJD7237xUqRzuYu85wb6UoRLU7N/oX2eK8IbB/V3NFBeP59tVZo1tnKFaz0EY/7W8XMUPNyRsxrAGqQ6nFNZklLZTjPK1lx8/JENgZHI2epiVnl+bcvLbA+nbCnBt3zDkzNOMmNuJrap9zVw1Yus1lFWN+bw+Nrb2fh7PjtceIxsczoM6HuTxL7p+FaIzaEGeik0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C1bbG+j/AFvtj5sbBW/9JNcoPDeDXDeqcfai/1MGcCU=;
 b=HDz1unZhE8ToyQACKBfbtkFX9OSTrDYHygLjExXmG7FJUpWVuVEPXEKop+/sZtZjerRUe0R2tqt6CWh8myWhPPvCynhbJQcG7SprDTwvATqYmwkTmElQxEqpmn7wKUxC7sCQqNaufxpuIU8daUP6OeDLTxMJEZ+j84vTHVSAN6r3gMNBeeNRjZSIq/uUWUixQXF+9+8LvxvYmP/C9NQtXojpv8XIYOSr1pJcPUcYeuxhJQqubUSlKoizoUDOJH9+APZLYLl2Xq1BGXZW4lgkMgoRTHSJqnl02t251NYGbD2/yhZ5yO0PML9NU1jp8gWGtFpc31qAV49b+sfjAfIA6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C1bbG+j/AFvtj5sbBW/9JNcoPDeDXDeqcfai/1MGcCU=;
 b=qLApHqyoyismsUipy5f3sfMgEZnx8pAnl1r7NxZLr9UOljJ7qmoemBkb1/A+U5HX2waYu3fdyW0bLtC8Df9SKx+tb1JbOSfM/0ozz9UzSl8qEYPjs+nyedDiK2V/RxQmY/YsQHTX9QkUnqZCA6fTT2Nm6vTynvanLpc8gjZgXOZOnMH98dqso/c4R2xRc+hsWPNv9WgSVS3Qg2aHa+5rzJS32uwLHWJDE4nLTkO0JwXpKI1m+AHYZQMQpoqcSH1CZWdjwdclm7ZZv7/946iwecp0MefcW2sfq28tenzlD8gDuoKr8C9JLJ3dYdbG5+uFceyrKPw+fiZWkAP7yJtY0Q==
Received: from PSAPR01MB3959.apcprd01.prod.exchangelabs.com
 (2603:1096:301:46::13) by PSAPR01MB3959.apcprd01.prod.exchangelabs.com
 (2603:1096:301:46::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.24; Sun, 10 Oct
 2021 17:27:12 +0000
Received: from PSAPR01MB3959.apcprd01.prod.exchangelabs.com
 ([fe80::fcd1:cc54:bbef:af1f]) by PSAPR01MB3959.apcprd01.prod.exchangelabs.com
 ([fe80::fcd1:cc54:bbef:af1f%7]) with mapi id 15.20.4587.025; Sun, 10 Oct 2021
 17:27:12 +0000
From: jason pro <jason_proj@outlook.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: pin definitions of the two HDMI interfaces of x410
Thread-Index: AQHXvfwEUydS4WTsKkCnRv7+suuBJQ==
Date: Sun, 10 Oct 2021 17:27:12 +0000
Message-ID: 
 <PSAPR01MB395913EB4374CB88EFF03C1DFDB49@PSAPR01MB3959.apcprd01.prod.exchangelabs.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: aea8c39f-e039-44ce-9731-a85367a36949
x-tmn: [0VUuHV0aQuvioeZjSNYyG+0KqQq2nNPm]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c33cdbd-75b4-43ee-9c82-08d98c1331fe
x-ms-traffictypediagnostic: PSAPR01MB3959:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9DZYrn+gpTSAX4ClY7Ejn9+Zbx6ud0NwxopA9rQe4iq+wRQ5wgkN5l2ZY9vjy2q/DAy9yFubmbjVAfdOyjMlSf6RJRicCwmGlU9CXv405tTqtYccLb/Zz9HkDIoOODVTVooEhYtrI0zeBszRl2f+CtI77yyOP4PeoMo+n1rstUjZFBm0mz78CZj81YyqjFPtyaWmbUKkDXmAtMJ8nsicddg4mwPIQ+yT2Xn2cGa/yVavZggM4jiEq7BEy1HNew54d1nmxfZsiaLBuSm0g2w4c25Ad/91G/7JOgnAPqQcQmpExFhBWDKvFVLWoRoOpHSJoDtzfGYEgc5qq4KluSavFYSlKAj/bX5k35XWg22ivesE2QJ3Q6noAfuE7chTYji/5XsPRgucc6XiyXqZhAikhG+cIu1LtnTRgKShqPPRgM4dLPz1/8WLSuzksu09o6rW
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 3UTDVgnmuLFoMchC1TIBtW434CyXOSeEiSHriPXjUpEmfpQhkGTN8I6SWY61q8piFIcLfeAueMx/mX4umwjeV46J1A7swb79ioC+fbsjuuhuvZ19NqYIub8ypiEdOGrsxLgadQrY8mp3bp4BYJEqQQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PSAPR01MB3959.apcprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c33cdbd-75b4-43ee-9c82-08d98c1331fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2021 17:27:12.0473
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PSAPR01MB3959
Message-ID-Hash: BQ2PJIHUZV4ZX33QLMMILAR5H6L7KKJ4
X-Message-ID-Hash: BQ2PJIHUZV4ZX33QLMMILAR5H6L7KKJ4
X-MailFrom: jason_proj@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] pin definitions of the two HDMI interfaces of x410
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/74N362AT5EPRS5KQRXILUZGBXEFCXM53/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8033064403355478585=="

--===============8033064403355478585==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_PSAPR01MB395913EB4374CB88EFF03C1DFDB49PSAPR01MB3959apcp_"

--_000_PSAPR01MB395913EB4374CB88EFF03C1DFDB49PSAPR01MB3959apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgZGVhciBFbmdpbmVlcnMgb2YgRXR0dXMgUmVzZWFyY2gsDQoNCldlIHBsYW4gdG8gZGVzaWdu
IGEgcGVyaXBoZXJhbCBjaXJjdWl0IGJvYXJkIGNvbnRyb2xsZWQgYnkgR1BJTyBvZiB4NDEwLiBO
b3cgSSB3b3VsZCBsaWtlIHRvIGtub3cgdGhlIHBpbiBkZWZpbml0aW9ucyBvZiB0aGUgdHdvIEhE
TUkgaW50ZXJmYWNlcyBvZiB4NDEwLiBjb3VsZCB5b3Ugc2hhcmUgcmVsZXZhbnQgaW5mb3JtYXRp
b24/DQoNCkJlc3QgcmVnYXJkcywNCkphc29uDQo=

--_000_PSAPR01MB395913EB4374CB88EFF03C1DFDB49PSAPR01MB3959apcp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi dear Engineers of Ettus Research,
<div><br>
</div>
<div>We plan to design a peripheral circuit board controlled by GPIO of x41=
0. Now I would like to know the pin definitions of the two HDMI interfaces =
of x410. could you share relevant information?</div>
<div><br>
</div>
<div>Best regards,</div>
Jason<br>
</div>
</body>
</html>

--_000_PSAPR01MB395913EB4374CB88EFF03C1DFDB49PSAPR01MB3959apcp_--

--===============8033064403355478585==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8033064403355478585==--
