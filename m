Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B01222018
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jul 2020 12:00:59 +0200 (CEST)
Received: from [::1] (port=41556 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jw0h9-0004nF-3z; Thu, 16 Jul 2020 06:00:51 -0400
Received: from mail-oln040092255079.outbound.protection.outlook.com
 ([40.92.255.79]:6096 helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@LIVE.COM>)
 id 1jw0h4-0004iB-HO
 for usrp-users@lists.ettus.com; Thu, 16 Jul 2020 06:00:46 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CHERtk6+5V5Ym1xFfUvbWzNi+uGyt3Sh03b1bEstCwdfYgZS7PXOmjRjWJVK+t5/R0L8vdG+gzdN5R/Vz3oS/zkDF6JBMSlupWVgqKF/K5x5PLDHYc+xf5NZA35TfiFEkvFUoL8fOKR4pYOkL502+16eLK2JG9qrmkqOlPQg+Vw79jKqzgEwTvb/hBgH+RQm3YzuDYnMW9xY/DwJ8RqkVPPbMy83XVvDeg/233X5f2cPp03ZzY+Xym3GYxTticwVxdkVxFtsjT44RlIG/aNgkdW1OU0GeTPeTAh0p5h4PbSaa1o3fokL36GS8ILldHLh8gui11P3V0V5NgjEaAWENw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vGaMsDHGqOa7eENT0mt6IvF+Y+O6yYYlUJznDCsc8Bc=;
 b=j6rEaeunmaKaknD7rBEScmt2v8nZpX2PqMEJiMTStJh1qriQlGLsRqyBhENgQq3NeXdFy56m4XSCsV3P015MqhTndTX0Lpz4wGr2Utv+KOuRLaZIrUZhTe7O0jhIMbmRw+DKt+CGRIsIdA4HGrOlY0ABdwUJ1OZKTyb4qkr73jzFnGZtU6irbD/tdV4qSJyXsZ+Q8CQiTp93K8iBd41fiFojj+sfweVZFyp+k8OtVWcDGkM6kOXZ/JgapOeUoTClvyYQlOSyFSXn3DhEOCr+Mm7Pb6gXet5w/ruH9HtssXghHMNxHhkMRB0AaO3FIjUWU4M+kbifmdWmgxXut4HIsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vGaMsDHGqOa7eENT0mt6IvF+Y+O6yYYlUJznDCsc8Bc=;
 b=WfmZQ7+eNWAC70dLVetHEUWPA8XC2/dHJvKUmL2lAQTV5K3lYc1Daiyjfb6k7Ss15/tRwBPeXZ9sbOGAaX2CWToDL5zfzvcv6wrtxEbkFL1F3dPKjkoluUIpPuYY8xkC7VAwhYHFqR8KfrvVY1rtTA58f/eCCqpahzsH48TEYfbL6gkvv1bTcSw8ATvU9l/o/ehkuFIsDiVpXwded+F2VRwnXWxyOVHrK2ivufnMA8j9hKkLAVINUFTxxJjTX5d97+cbeBvIaqNHFdebQ2MYWUutZdDgQ3i3T8GcQjUdr6s2WhUqXIe7TMvYIFEyejEQ/k7A0pkaO+8nOXajmf2vgA==
Received: from SG2APC01FT039.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::50) by
 SG2APC01HT150.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::410)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.18; Thu, 16 Jul
 2020 10:00:02 +0000
Received: from BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM (10.152.250.58) by
 SG2APC01FT039.mail.protection.outlook.com (10.152.251.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3195.18 via Frontend Transport; Thu, 16 Jul 2020 10:00:02 +0000
Received: from BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a18f:5c06:f098:3689]) by BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a18f:5c06:f098:3689%4]) with mapi id 15.20.3174.026; Thu, 16 Jul 2020
 10:00:02 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: support for synchronizing two USRPs
Thread-Index: AQHWW1bn+aUDN6UBT0eXtD/Nt4ZXrQ==
Date: Thu, 16 Jul 2020 10:00:02 +0000
Message-ID: <BM1PR0101MB14911B41478D0BBE883C6DE2887F0@BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:392FE0E7F62B39B968978F6EB9C4EE93002885C2CE542AECFB3C712973AF9BB6;
 UpperCasedChecksum:D2DFDFE9F7FAC6BCAAF45BA25F2360B13F6CE9F6CC518693EBFAE04C7B349886;
 SizeAsReceived:6647; Count:41
x-tmn: [itS/cWaCPmPV7hCFbgy2Cws9oVssWRTN]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 4e09c52e-4c27-460d-55e0-08d8296f0217
x-ms-traffictypediagnostic: SG2APC01HT150:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hgl+DsuIbEjwhqdK7A6/VXX3wd3K6CeOE5CDVRYfmTiIiG8sJF30/0AVB+tZMXvFOP9Kg5FFSy7GOFgy5e1FlJp2vxTBUcdt0UUaA3wH4ZauIqMx+rWXpkBNVM0X+VMccOCrGLGrZUzZVa9SfkaeBghktuCLF6Wplat1bKEnQ+pA1fwTvYkPzs5MZvd9CBdnghRXftgcHJB6xA9Whv9qUg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: QE83bkhqwQp016IhlKiZoq6ey9ZMQmvnXZmBFBZOtFqTGHieOu+ljMqIJa+GLuR1ibXSZ3NXGKXBiy27ariuQ8zthOzd3zLtLERwAkxlfsSs2YGmXdPZDpIrIbidLoJEgkECImuz1O9oYXk8SglbYQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT039.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e09c52e-4c27-460d-55e0-08d8296f0217
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 10:00:02.5517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT150
Subject: [USRP-users] support for synchronizing two USRPs
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
Content-Type: multipart/mixed; boundary="===============5209698035870802734=="
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

--===============5209698035870802734==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR0101MB14911B41478D0BBE883C6DE2887F0BM1PR0101MB1491_"

--_000_BM1PR0101MB14911B41478D0BBE883C6DE2887F0BM1PR0101MB1491_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello

I am trying to time synchronize two USRPs. I have connected reference and P=
PS trigger out of USRP A to reference and PPS trigger in of USRP B. In USRP=
 A i have set time and clock source to GPSDO and in USRP B I have set time =
and clock source to external. But I when I try to compare uhd::time_spec fo=
r both the boards I see there is a time mismatch. Please help me understand=
ing where I am going wrong.

Regards
Snehasish

--_000_BM1PR0101MB14911B41478D0BBE883C6DE2887F0BM1PR0101MB1491_
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
I am trying to time synchronize two USRPs. I have connected reference and P=
PS trigger out of USRP A to reference and PPS trigger in of USRP B. In USRP=
 A i have set time and clock source to GPSDO and in USRP B I have set time =
and clock source to external. But
 I when I try to compare uhd::time_spec for both the boards I see there is =
a time mismatch. Please help me understanding where I am going wrong.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Regards</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Snehasish<br>
</div>
</body>
</html>

--_000_BM1PR0101MB14911B41478D0BBE883C6DE2887F0BM1PR0101MB1491_--


--===============5209698035870802734==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5209698035870802734==--

