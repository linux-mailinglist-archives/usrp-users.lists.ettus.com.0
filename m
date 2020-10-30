Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9F02A073D
	for <lists+usrp-users@lfdr.de>; Fri, 30 Oct 2020 14:59:13 +0100 (CET)
Received: from [::1] (port=55454 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kYUvv-0006rt-2S; Fri, 30 Oct 2020 09:59:11 -0400
Received: from mail-oln040092253071.outbound.protection.outlook.com
 ([40.92.253.71]:48503 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <james_ttfun@hotmail.com>)
 id 1kYUvq-0006lG-So
 for USRP-users@lists.ettus.com; Fri, 30 Oct 2020 09:59:07 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U6sv7J5wfcDMWQihxUxLpRBipPgdHKWKz7mQbO/P/EvMmtlr2u4TZWZBn0zJ2qfdV/9n2DCQVNRUJbEjuNiFcYllXdLNutq6wCwvPXNYdkX+TmyKp2Ic4lCw+/xs4oMYGKFRSkt+h/Nc7i80XtO5kb3FREtGU1Gy6qRCBsNh+Mo08A8aq+OFehjlDfhB0qldvupCTu/QlAcJpgurbbsf+W9M3mjkcJfxHbDTRqRX88AqomEfgSRZWNWMkbXh55CM3dYBteJjE1hr0tR/wBnAgxMqWG4SwiRHzN6Fboww9eMjYB9sLvKB38eFfSfSE9Xw96AK4FP/YB2SVIKWqGz8Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pl+2U1Zy26Vd8/97lSzN3gyQy0QO4+xaaR5bkJjF5sg=;
 b=YoWuZYWgZM76/WlQR1UBveGLew0mBS3huCMjMHsnA2JM9AVqX0sm5Hs3qi7xYUjI7EdCLuqgGlgBTA2TphSi9k6daorh7a7JRnOIiTa6xAs4ySaWBOCHdFYgBetPbSZA3FrvNB4aKlL69dE8YNd9YFZfuHyPIVEPzwtxToEC3tMHCzHjzjmQkiMu6YqDGph86PqxdwG4WIzQPrtbSwEQ2g4iM6aKxd49mgHgJuog2fZ65qx2dHsP7jT2la34jQ6N4nkOoy88dWtQSe4RWXBRcshE+2T707rIG8xOm3rLATjsF6K4+BexKsXIGNgN1o3TfkOpeHaEnWoPMf/eC23fAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pl+2U1Zy26Vd8/97lSzN3gyQy0QO4+xaaR5bkJjF5sg=;
 b=V0vTMupCMj1PVZhRiaad+RqQTOkHD84XHwzq9ErvMk6YqpPBQdkY3iChq9l3lnsKmzOMkSdssTb03axCCFu8oZa5C2fFOcNUPsxGZiigiKNw7P+DeMrJps6LwZ6wBFmTV6e2+pf7MSzrJlZi/BDbF7K99F/USFNvI50YNPs92E+BxEqV3Qjr9zWCH1U8OqkpUXPda0t669uswMyW37Etn9oWZ6r4oYX+5kf4AEWLCxlpbqtq16xuhI6jtICOcRz/en2IasQgSdceKPn4jaCbnGsw1oTW21YzxanavZwZmx/AQHIXTqbAK+Dp044gQz2gCgEFYrgF3CM8u7oUb63lMg==
Received: from HK2APC01FT053.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::4f) by
 HK2APC01HT073.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::269)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3520.15; Fri, 30 Oct
 2020 13:58:23 +0000
Received: from SYAPR01MB2848.ausprd01.prod.outlook.com
 (2a01:111:e400:7ebc::4c) by HK2APC01FT053.mail.protection.outlook.com
 (2a01:111:e400:7ebc::264) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3520.15 via Frontend
 Transport; Fri, 30 Oct 2020 13:58:23 +0000
Received: from SYAPR01MB2848.ausprd01.prod.outlook.com
 ([fe80::71e9:151f:e774:a9ee]) by SYAPR01MB2848.ausprd01.prod.outlook.com
 ([fe80::71e9:151f:e774:a9ee%7]) with mapi id 15.20.3499.028; Fri, 30 Oct 2020
 13:58:23 +0000
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: question about N310 STM32 source
Thread-Index: AQHWrsKyrybJjwehIk6uIrObXIgDpA==
Date: Fri, 30 Oct 2020 13:58:23 +0000
Message-ID: <SYAPR01MB284870C642CFC97254908D2E9D150@SYAPR01MB2848.ausprd01.prod.outlook.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:03A4F518EF1C615A3408ADB83A0F7B9F8E7C2114987E30E633C2FE37DFFEF1C2;
 UpperCasedChecksum:BEB54850E1E6731AD08F73A1F359B4D1FD01FC32C624919D64F292719D452772;
 SizeAsReceived:6628; Count:41
x-tmn: [Nsixw02NYTVCW3b8qEckNz9FIEDZbf8V]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 961e4a9a-1c50-4e73-0183-08d87cdbde04
x-ms-traffictypediagnostic: HK2APC01HT073:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tBda3HBdYL6lbcDygOgS6HOZysQmo1nzPhGCUdc4xtLFYFlDU5vgzp/UlbBKn6l19vzQuad6Re+Bbw+Y3iXMarg+ISzzyujPIILFTRbReX77dK6dpLpYMXzvN3xDuW/wGYkgJT77RVPGAJLqQEfF5erylfmaLGL3aUwm07/3dTRJi5V54D1d8qkNdi0OkYTr889kAY33C2y7E7kAWjyhkQ==
x-ms-exchange-antispam-messagedata: FUHPkt5k9MV6+HGQ4/mt0kL9YyAS8PFf+J82SAKpPYGrKuIfEbumBuPLBl1moe5Yw99BGctq7TAK9CZFBx/OKYK1gRSryt9zy8/PWTsfgvuUbgXeLPnHHWrgDb+zp1FN48VZU6FnOlR+Hj/pGSp2zw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT053.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 961e4a9a-1c50-4e73-0183-08d87cdbde04
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2020 13:58:23.6712 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT073
Subject: [USRP-users] question about N310 STM32 source
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
From: james Thomas via USRP-users <usrp-users@lists.ettus.com>
Reply-To: james Thomas <james_ttfun@hotmail.com>
Content-Type: multipart/mixed; boundary="===============4411907398971074415=="
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

--===============4411907398971074415==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SYAPR01MB284870C642CFC97254908D2E9D150SYAPR01MB2848ausp_"

--_000_SYAPR01MB284870C642CFC97254908D2E9D150SYAPR01MB2848ausp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
i am reading N310 STM32 source code but i can not find any source code rela=
ted to the pins PWRSW-STAT, PWRSW-CTRL, AUXPWR_STAT. seems these pins are n=
ot used but they do connect to some components in the schematic. if these p=
ins are used then where is the source code handle they?

--_000_SYAPR01MB284870C642CFC97254908D2E9D150SYAPR01MB2848ausp_
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
i am reading N310 STM32 source code but i can not find any source code rela=
ted to the pins PWRSW-STAT, PWRSW-CTRL, AUXPWR_STAT. seems these pins are n=
ot used but they do connect to some components in the schematic. if these p=
ins are used then where is the source
 code handle they?<br>
</div>
</body>
</html>

--_000_SYAPR01MB284870C642CFC97254908D2E9D150SYAPR01MB2848ausp_--


--===============4411907398971074415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4411907398971074415==--

