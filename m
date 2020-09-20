Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8891271491
	for <lists+usrp-users@lfdr.de>; Sun, 20 Sep 2020 15:30:43 +0200 (CEST)
Received: from [::1] (port=33848 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kJzQP-0004zF-KC; Sun, 20 Sep 2020 09:30:41 -0400
Received: from mail-oln040092255107.outbound.protection.outlook.com
 ([40.92.255.107]:6179 helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <james_ttfun@hotmail.com>)
 id 1kJzQL-0004rw-93
 for usrp-users@lists.ettus.com; Sun, 20 Sep 2020 09:30:37 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JOrYRpKzDtLdSuf+OrA5iERg35AuBQdtZWs8fPlehjRMnjGfwOe5PZOBdgczOzOMqVVb6fedKTVVghTB9sGt8PzspvbJbuxiVXvoVy2CpDyxAHktPFIKdP/O+uC9XA+dAjluZQAaErlBIOGpLUxhwCBHEW0HKEcDjjPodLuJk6JTEWz8nXNfoJCzF7LVorRhF6ffx9F1FW+xE6zDoQYXDJhRr5UENETQuVOPJqH6Xk87UkLUz3091prB21zcNc8yGIQrugi9i57x7KYcHuKI9rOv1azNitFd2KxfqPqy9Co6JXM+/oSHEYV4CCtcQAoqJBlSFZcjqw+g2tuOREN91A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Vd99lHGjpMMKW5+JktCc5y9RNk21N8B3HFutOYxIps=;
 b=L/hSbhBSvD8UQqz52yE15EmTxsINbSWqMZlIOJT91WNVr1niqiLCpHSFL5HHeXXw0EAyQRztJnL8TogLMY9pKxO49bMQv5iMwgA7TCMHctttBeKy8Nlchjyg6CwP4iCMEkQgekD2ji/s15cnWlQqY6ZsoJbWvG8jmJBesbehfRN/vZy0nvoRLaAEn2aPq3TNA9oHLb0ER3sxwWGNf/h66PdCs92C2GQhdghH5ZOG1GNljZh2csZFuV+EBr6Miqi+2agPl6FIQVaH8RgXQtZweFmN1uA0BqiI4/4xd0skIvuPIsC/6NCDXMysrCpvRDtKyH/qgkQKeyGJQB3Wq9AObA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Vd99lHGjpMMKW5+JktCc5y9RNk21N8B3HFutOYxIps=;
 b=ki++2E3zrQvROzZ7AJdiBvl+opMUmdXIzjTGGybKS6+6au9+YKLOJYnso+andvoJIjeHKcsdZ669dLpp0syD0DPVLFZ5v0nZz/jCLKj/Yt3xBabOoGDy6paw4vCO3gcwb37xMHaAZtxwQe9VHo4YUJmpfKvyA1yxKf464nHtjpC1G71YoVIXwXMCDXF2N/FuSK2cB+QzST49N1k13yUUX0pwKk4fmof2IJcbsBD68RGW3oZzrYf0jJrLQ+5GecMSdC7h5oeNNLLscdU/7XCeWfgGij/l5sQiCB3hJ0s4j5jCsWvNLSh58MGzyP1XRaerQZv6kXpu0cJ+cfxWWwBgUw==
Received: from SG2APC01FT052.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::44) by
 SG2APC01HT181.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::450)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.15; Sun, 20 Sep
 2020 13:29:39 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 (2a01:111:e400:7ebd::44) by SG2APC01FT052.mail.protection.outlook.com
 (2a01:111:e400:7ebd::270) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.15 via Frontend
 Transport; Sun, 20 Sep 2020 13:29:39 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312]) by HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312%6]) with mapi id 15.20.3412.015; Sun, 20 Sep 2020
 13:29:39 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Martin Braun
 <martin.braun@ettus.com>
Thread-Topic: =?gb2312?B?W1VTUlAtdXNlcnNdICC72Li0OiB3aGF0IGlzIHRoZSBUUE0gdXNlZCBmb3Ig?=
 =?gb2312?Q?N310?=
Thread-Index: AQHWjbfurdZQXHXJhUaQyzmmjNczoKlxiHT3
Date: Sun, 20 Sep 2020 13:29:39 +0000
Message-ID: <HK0PR03MB50915C496C2754853884466A9D3D0@HK0PR03MB5091.apcprd03.prod.outlook.com>
References: <HK0PR03MB5091FC4CE234C553C0B88B319D3E0@HK0PR03MB5091.apcprd03.prod.outlook.com>
 <5F638040.9080705@gmail.com>
 <HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com>
 <5F645170.7000801@gmail.com>, <ac9e3795-2cc7-a21f-f5da-17fdc4b36ae2@ettus.com>
In-Reply-To: <ac9e3795-2cc7-a21f-f5da-17fdc4b36ae2@ettus.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:BD25F1D1D9BDDE59C98FFB3872E238E8A39A28C5EA937B6640227470F69196F6;
 UpperCasedChecksum:57CE4469CE19E13CE4D81C6FFC158548B01F807372BB4E3ECBE44F8C6D9DCE1E;
 SizeAsReceived:7173; Count:43
x-tmn: [7/5d1g/isuELptC3j2YBBWKqyASnCTEH]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 42af58b5-094d-4063-ba59-08d85d6939f5
x-ms-traffictypediagnostic: SG2APC01HT181:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s2xzNCF20nqd86w3vCRJDnv/iU2P3+ZZYMr3Nakgvw+aQY6E9Ubwb5HbY4axKRsOEvd0XYYnDfIziuPHL1O8ZhHyJ6V/M7C1dbnX4d1SEw/yyQ3TfjyvZk864xjBFhja1yfpH/5iLOFabDyNGk3Rvvh37WaKu4lzr1fWzcXQNDMGW5bcygmlTFSUkKn/rPK20a60y9qdja1nXfdD0yZzNFDoY4aKDRp8K7cTWds8koEaLk/UeCbRsluuWe3FBbUy
x-ms-exchange-antispam-messagedata: 76DavKXbbTK6X9/2woMusiu19iiyQr50VEcQ7yVzVVMUIcyn4SIwDttk74guAhGDN6nkZYkLRJxCSTfntLoOKrQysSV1cPM1BKrq+RmdF+dSS7Q1P7K5I+1ea7bcezF29wL6m8P10vr8dVv2Sn4tiw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT052.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 42af58b5-094d-4063-ba59-08d85d6939f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2020 13:29:39.7270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT181
Subject: [USRP-users] =?gb2312?b?u9i4tDogICC72Li0OiB3aGF0IGlzIHRoZSBUUE0g?=
 =?gb2312?b?dXNlZCBmb3IgTjMxMA==?=
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
From: Thomas james via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Thomas james <james_ttfun@hotmail.com>
Content-Type: multipart/mixed; boundary="===============4047226498549718730=="
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

--===============4047226498549718730==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR03MB50915C496C2754853884466A9D3D0HK0PR03MB5091apcp_"

--_000_HK0PR03MB50915C496C2754853884466A9D3D0HK0PR03MB5091apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgTWFydGluLA0KaSBqdXN0IHNlZSB5b3VyIHJlcGx5LiBidXQgdXNycC1maXJtd2FyZSBkb24n
dCBoYXZlIGZvbGRlciBuYW1lZCB0cmVlIGFuZCBzdWxmdXIuDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0Kt6K8/sjLOiBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzLWJvdW5jZXNAbGlz
dHMuZXR0dXMuY29tPiC0+rHtIE1hcnRpbiBCcmF1biB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20+DQq3osvNyrG85DogMjAyMMTqOdTCMTjI1SAyMDozMg0KytW8/sjL
OiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+
DQrW98ziOiBSZTogW1VTUlAtdXNlcnNdILvYuLQ6IHdoYXQgaXMgdGhlIFRQTSB1c2VkIGZvciBO
MzEwDQoNCk9uIDkvMTgvMjAgODoxOSBBTSwgTWFyY3VzIEQuIExlZWNoIHZpYSBVU1JQLXVzZXJz
IHdyb3RlOg0KPiBPbiAwOS8xNy8yMDIwIDExOjE5IFBNLCBUaG9tYXMgamFtZXMgd3JvdGU6DQo+
PiBISSBNYXJjdXMsDQo+PiB0aGFua3MuIGFuZCBpcyB0aGUgc291cmNlIGNvZGUgb2Ygc3RtMzIg
IGFuZCBjcGxkICBhdmFpYWJsZT8NCj4+DQo+IEkgZG9uJ3QgYmVsaWV2ZSB0aGF0IGFueSBvZiB0
aGUgQ1BMRCBjb2RlIGlzIGF2YWlsYWJsZSwgYnV0IHRoZSBTVE0zMg0KPiBjb2RlIG1pZ2h0IGJl
LiAgSSBjYW4gYXNrIFImRC4NCg0KU1RNMzI6DQpodHRwczovL2dpdGh1Yi5jb20vRXR0dXNSZXNl
YXJjaC91c3JwLWZpcm13YXJlL3RyZWUvc3VsZnVyDQoNCkNQTEQ6DQpodHRwczovL2dpdGh1Yi5j
b20vRXR0dXNSZXNlYXJjaC91aGQvdHJlZS9tYXN0ZXIvZnBnYS91c3JwMy90b3AvbjN4eC9kYm9h
cmRzL21nL2NwbGQNCg0KLS1NDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdA0KVVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20NCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVz
ZXJzX2xpc3RzLmV0dHVzLmNvbQ0K

--_000_HK0PR03MB50915C496C2754853884466A9D3D0HK0PR03MB5091apcp_
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
Hi Martin,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
i just see your reply. but usrp-firmware don't have folder named tree and s=
ulfur.<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> USRP-us=
ers &lt;usrp-users-bounces@lists.ettus.com&gt; =B4=FA=B1=ED Martin Braun vi=
a USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2020=C4=EA9=D4=C218=C8=D5 20:32<br>
<b>=CA=D5=BC=FE=C8=CB:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.=
ettus.com&gt;<br>
<b>=D6=F7=CC=E2:</b> Re: [USRP-users] =BB=D8=B8=B4: what is the TPM used fo=
r N310</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On 9/18/20 8:19 AM, Marcus D. Leech via USRP-users=
 wrote:<br>
&gt; On 09/17/2020 11:19 PM, Thomas james wrote:<br>
&gt;&gt; HI Marcus,<br>
&gt;&gt; thanks. and is the source code of stm32&nbsp; and cpld&nbsp; avaia=
ble?<br>
&gt;&gt;<br>
&gt; I don't believe that any of the CPLD code is available, but the STM32<=
br>
&gt; code might be.&nbsp; I can ask R&amp;D.<br>
<br>
STM32:<br>
<a href=3D"https://github.com/EttusResearch/usrp-firmware/tree/sulfur">http=
s://github.com/EttusResearch/usrp-firmware/tree/sulfur</a><br>
<br>
CPLD:<br>
<a href=3D"https://github.com/EttusResearch/uhd/tree/master/fpga/usrp3/top/=
n3xx/dboards/mg/cpld">https://github.com/EttusResearch/uhd/tree/master/fpga=
/usrp3/top/n3xx/dboards/mg/cpld</a><br>
<br>
--M<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
USRP-users@lists.ettus.com<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><=
br>
</div>
</span></font></div>
</body>
</html>

--_000_HK0PR03MB50915C496C2754853884466A9D3D0HK0PR03MB5091apcp_--


--===============4047226498549718730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4047226498549718730==--

