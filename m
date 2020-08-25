Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 955CE2514F2
	for <lists+usrp-users@lfdr.de>; Tue, 25 Aug 2020 11:04:11 +0200 (CEST)
Received: from [::1] (port=34288 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAUsD-0001Sf-Hm; Tue, 25 Aug 2020 05:04:09 -0400
Received: from mail-oln040092254067.outbound.protection.outlook.com
 ([40.92.254.67]:37376 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@LIVE.COM>)
 id 1kAUs9-0001L3-4H
 for usrp-users@lists.ettus.com; Tue, 25 Aug 2020 05:04:05 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=goCZEl8U0gSHIByq2T9O4aCXA5IyOoDFPOkB289EIJZWtadaQjv02QtNHjbFFUIx3zEPVda7r9jiLOYJp0Lb53JtlW9KDZzOXQ8MJlw7HcMu4QskILtrN4nnRF9QJozMhR0xvit+g5EPeM8Gd+oQPqLcb8IYGYyCUYEiQYBAcKdV7W8jjv/D0gQyZwSQvN0vDqpkSqlt/+DsOZ9jt4DZpNKtXzsiNNd3hfyPAYRJ1J1IuqJA2fsmHWSXcqFj/DnF7xbcIbzMmwEM83r3dZOz1q0u+P3CwjX3q1vG+TfFltcWF/abdNWnHmlD1Ouc9cgQ3+vhGY4IQOuU7wM/n35lvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/yg5muv4Ahu/T/2NSsdmD5vCJ8ZxQspjLOI6wsvwH4Y=;
 b=gSF3j/cg6GJJeOjTVBFttiUmGPbxRggBxgGudocxPjdUbFHkTi45RnB8UJrp+Ecy7sMESv0B5Rre2F3REM+fxcDTf424AXZ5TVAQPFleemxaJFGGq9rEZMMmajwPdOstz1yQ9FhMhyhZPNFxrtSe3ZuyLyZfU7Brc5qYV8Fklnmi1vLg+PaO08Vqs2rRy93f+L0Ata76WexXm/CFH54LHIZfQU67i9Hft5xcCskA827VlnAiNZq4pga8XLofI1O+kmeVo6LktbapBMcQdnX38zKyH7bmfNYFkinRUkmHl71o/dz3sMRmZHFLl5/vDgLNbRzFUfRz4fmQdmlsjAj3WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/yg5muv4Ahu/T/2NSsdmD5vCJ8ZxQspjLOI6wsvwH4Y=;
 b=a6tAHhj1sLRlH//3gZjnJUBji6IUHHsBkBs/yzxJ87J2eBg+BE5oQOk82d3qrxCl4M5j/fBlaCrTl5Okzunafb5UWh3ug2MsJJSncV+CbZhIg2ZxAxL/pI6Fj6YHz+Oqif6fiTLq1SvfISP2cQdUYbWfWHD7X9x3XMF1DCPbJ9FVsrUIiOwj6j2VKM7o0ew//KV7iOO3zwSEZN2iXHbyZJUIRfi7tjgrLRcjfXcwcc//XAby4qYfZ02X+nCleajCPflIMQeLcmEn9VJ1bY2FrUp3jL8wybbF6zTK4z9At8SpU18Os60mDoqPMc1sdMDcqI6lzm/HskyHgXYT6cxbyw==
Received: from HK2APC01FT003.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::48) by
 HK2APC01HT062.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::327)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24; Tue, 25 Aug
 2020 09:03:21 +0000
Received: from BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM
 (2a01:111:e400:7ebc::50) by HK2APC01FT003.mail.protection.outlook.com
 (2a01:111:e400:7ebc::173) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24 via Frontend
 Transport; Tue, 25 Aug 2020 09:03:21 +0000
Received: from BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::41d9:9d26:e06d:33e]) by BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::41d9:9d26:e06d:33e%6]) with mapi id 15.20.3305.026; Tue, 25 Aug 2020
 09:03:21 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Query regarding rfnoc
Thread-Index: AQHWer4tWJy755xK3E6X5PGf6ygTkQ==
Date: Tue, 25 Aug 2020 09:03:21 +0000
Message-ID: <BM1PR0101MB1491979F3271BB642990E69188570@BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:11070F045214AEA26C4F688C7F254A3313B55138DF39AA0F42E58DBA7C87E25D;
 UpperCasedChecksum:9E2E3C24CF491BEC83487635CA35B740B0F834C7934822F04992BD0294324624;
 SizeAsReceived:6609; Count:41
x-tmn: [YZ0WR01kEdUwtj8sqKI910q4VgRyUzX+]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: e384f829-52d0-4bda-b600-08d848d5b764
x-ms-traffictypediagnostic: HK2APC01HT062:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MZ/ANLNIbMxt84wcHCpngwwOribw/Hgy79BUHhCNPYR2wbfI54l/4YPTXkfcPft4bcM7yOv2q5/QzbQIUb+A7wu98v6zadaJlKwYTKNXfuQDAgtWhvaQw1Rcdj4cvkbRnunYkWx8PTmW0qguj0IEm42J72VJDle7Wy/xzLofrbJrzRtKaKRa3xq7g1qitIVAYjfyLgI2YmPT4snLTCi8vw==
x-ms-exchange-antispam-messagedata: oF/c3L9v/dMYWTev7Xec77xoHvz2z1bBKCpzU7gmC90QJ2r++FldT3fZLmi4xkzAw86ZrdcB0iRKeHaF1woaTdk66RxQSIraEXYVaqr7r6VphBD4MnomIfbKB4qb7fUVnAkTzGoSzcQrEFlrFgoJyw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT003.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e384f829-52d0-4bda-b600-08d848d5b764
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2020 09:03:21.4480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT062
Subject: [USRP-users] Query regarding rfnoc
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Snehasish Kar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Snehasish Kar <snehasish.cse@LIVE.COM>
Content-Type: multipart/mixed; boundary="===============3053055043943310216=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============3053055043943310216==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR0101MB1491979F3271BB642990E69188570BM1PR0101MB1491_"

--_000_BM1PR0101MB1491979F3271BB642990E69188570BM1PR0101MB1491_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello

We are trying to implement some filters in rfnoc, we wanted to use fixed po=
int numbers. As per my knowledge, I and Q are I16 bits individually and IQ =
combined I32 bits. We wanted to convert them into fixed point numbers. But =
I am concerned about the host UHD driver's interpretation of the data. Do w=
e need to keep a stage at the last where we are converting from fixed point=
 back to integer I32?

Regards
Snehasish



--_000_BM1PR0101MB1491979F3271BB642990E69188570BM1PR0101MB1491_
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
 color: rgb(0, 0, 0);">
Hello</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>We are trying to implement some filters in rfnoc, we wanted to use fix=
ed point numbers. As per my knowledge, I and Q are I16 bits individually an=
d IQ combined I32 bits. We wanted to convert them into fixed point&nbsp;num=
bers. But I am concerned about the host
 UHD driver's interpretation&nbsp;of the data. Do we need to keep a stage a=
t the last where we are converting from fixed point back to integer I32?</d=
iv>
<div><br>
</div>
<div>Regards</div>
<div>Snehasish<br>
</div>
<div><br>
</div>
<br>
</div>
</body>
</html>

--_000_BM1PR0101MB1491979F3271BB642990E69188570BM1PR0101MB1491_--


--===============3053055043943310216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3053055043943310216==--

