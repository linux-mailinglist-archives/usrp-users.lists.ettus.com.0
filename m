Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AB127DF1C
	for <lists+usrp-users@lfdr.de>; Wed, 30 Sep 2020 05:53:20 +0200 (CEST)
Received: from [::1] (port=58766 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNTB6-0006Fo-7e; Tue, 29 Sep 2020 23:53:16 -0400
Received: from mail-oln040092254080.outbound.protection.outlook.com
 ([40.92.254.80]:29280 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <james_ttfun@hotmail.com>)
 id 1kNTB1-0006Bx-Ik
 for USRP-users@lists.ettus.com; Tue, 29 Sep 2020 23:53:11 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K2Z0jV9X1OdSREu+7ejBmvu8zgf/6GAjsLr6cRUiHCW0sv68++EpL1yKfqIfP4UUUu4gXmNZw1EGEEyp7kjsAO86/5KjfVB3KYPJhWed9AN+G6xkAkyV8Ug3z7uVmOSM7Z6EANbd4kyo9gwEThduOSeKCrqapZBCLGauY5uQOakR+HVcSjjB6oYxLL3OCBJz1RneXeeut/Qe0RoDrRbOOxE4AzxpU+TuKJ/DJJeY5FRSFM+ax6vcHeoZ7S6V+fu8VFGCN49RtBaJ5lvhFCEpcJLD7ouRvCfMwztlutTnTEznqWNtF93IqXNwl1OXpXqXEzYp7OU8ouopExJfFFCWVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Yavlk4plSP3LZi772oC+8RufjKxABjo8mdgj79dzTE=;
 b=EJO6gbWFOmhrcDlVHqI63cFUfmmeF50Yols7ek1T0E3P0DITjiyGJIEKSn8OE2tooNOKNVEsgwdcHWjf2OsNtd8g0ss99TKdEMz/NuuZO4UhfgaRIamoBmq2O9rWcqyrQSD0iquR4yhbDGKfMmixyxiu3yA/TPJqINNeDcyzYDpuNFjxnAehCcqxLDMy2+frp07JN+r1wMaTDNDAIIkwiHBMY6V3CVvxqT3g9IWRsvlBzamxDRLQInWOg2zJgqw8SqNYZhMfruj+VoPM3YUw07y+748ikEzHTYXvwjXmJkI9yK4y9TaobpyGyFdeMNR9pH6LIut7Bv4ssnn6Vr2UDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Yavlk4plSP3LZi772oC+8RufjKxABjo8mdgj79dzTE=;
 b=HcdPETqsoVIiABefW/srJg5DXyC3tNTKHqb3GOAkFzUO3lBCJJolpojA2rs0do8XQ0mhI2nZQ4yuWYb52yDRBtTDqhPKgNgi9zeAm9SMsrJ+istc0yL3h1WRXqbMt7vLTzMxu+nbzQE9+Ckp1xPSDlwwCMB5uj4rJqgot1DbDnf4CiS0dlUJ8CtgGfS7zjxjzAsRzngCS5hr2QSOlfOapeIerAaFBGA5/A3bBlgLaMUs71hA6Ii22JdZP3QFh5flrQ2R4hlicQen8D7chJ4re9KUIsMHJG8B5A28IkQJ+RP+MIoFyT3D+tzyhZsaSeIFwArx1zNY45DTtuck2OPG4g==
Received: from HK2APC01FT063.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::40) by
 HK2APC01HT166.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::469)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.34; Wed, 30 Sep
 2020 03:52:28 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 (2a01:111:e400:7ebc::41) by HK2APC01FT063.mail.protection.outlook.com
 (2a01:111:e400:7ebc::400) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.34 via Frontend
 Transport; Wed, 30 Sep 2020 03:52:28 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312]) by HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312%6]) with mapi id 15.20.3433.034; Wed, 30 Sep 2020
 03:52:28 +0000
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: How to build N310 file system image
Thread-Index: AQHWlt0B8rzEMtYCKkm5HfO8EMDqqg==
Date: Wed, 30 Sep 2020 03:52:28 +0000
Message-ID: <HK0PR03MB50912828D2A5D7837C4F31F89D330@HK0PR03MB5091.apcprd03.prod.outlook.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:C437EA01BFECBED8911B9BDF3C276BC69B131189DF8AB1513A6F4FEC3C5E6DCE;
 UpperCasedChecksum:185CA40EFD91566F4BF537BFCE264C9317174A01D126F5B00E9C1B178F988C84;
 SizeAsReceived:6655; Count:41
x-tmn: [YGzw7J38m7zHtc4MO8MSr0dcax+MzP8W]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 696db7d2-37ab-412c-355d-08d864f44010
x-ms-traffictypediagnostic: HK2APC01HT166:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E0zMm4CBOjhAZ7IsZplfWdLLLsfDq8CCQTJ/Ghm1lSmYtmU3oQr8IM6eEV+VzfCcq1Q9lkI+ogKRBMsWHuEPSrjTFwMqdidP4tZl9tPYVlVsKSKJL0ZGsstJnMshdpv+RSCH2daL6NOj7hIIXwuvC2rnqPQ7MoGJ0yjjCtdCY62F3OWUFvaMWfUKMQyil2+yYmesNTst5CHk3vkQX3Ikkg==
x-ms-exchange-antispam-messagedata: 0Ohr41YY8oZ2CtoGEq/iqgHpBEv5R7iHi9R9KVp0llZhh18VcPENB5eMPbjE+6RWgFXJ1gL1hNEXNWssrorcHHJxb60taPlZ9yAgbW0KIL1pwKtscMOLQChlZWAWQhou5DUJB/SEtxF/S97q22hceA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT063.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 696db7d2-37ab-412c-355d-08d864f44010
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2020 03:52:28.1707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT166
Subject: [USRP-users] How to build N310 file system image
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
Content-Type: multipart/mixed; boundary="===============4661350658591850046=="
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

--===============4661350658591850046==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK0PR03MB50912828D2A5D7837C4F31F89D330HK0PR03MB5091apcp_"

--_000_HK0PR03MB50912828D2A5D7837C4F31F89D330HK0PR03MB5091apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
where is the source code of N310 file system image and how to build it?

--_000_HK0PR03MB50912828D2A5D7837C4F31F89D330HK0PR03MB5091apcp_
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
where is the source code of N310 file system image and how to build it?</di=
v>
</body>
</html>

--_000_HK0PR03MB50912828D2A5D7837C4F31F89D330HK0PR03MB5091apcp_--


--===============4661350658591850046==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4661350658591850046==--

