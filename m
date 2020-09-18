Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2E326F4A7
	for <lists+usrp-users@lfdr.de>; Fri, 18 Sep 2020 05:20:16 +0200 (CEST)
Received: from [::1] (port=39040 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kJ6wV-0004H5-5o; Thu, 17 Sep 2020 23:20:11 -0400
Received: from mail-oln040092255067.outbound.protection.outlook.com
 ([40.92.255.67]:34588 helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <james_ttfun@hotmail.com>)
 id 1kJ6wQ-0004Av-8U
 for USRP-users@lists.ettus.com; Thu, 17 Sep 2020 23:20:06 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mh3Glec4wuoba6Pl5zI3WuDD9YKIhoYfcqtNPRf08sndi4p02hCYL8/+xMgV6Ky1XACAR+g0IPZk8J6ne1te2jOBLVezGH0wKtoQdEQ83GSPcucJlnf+K72k3OJyw26N/fPgxFThtnTyiD3O4x7rz/0V/j+NTH3e9Y98uE9V6KJPzsYBW/TuqwNHfHJ2T6JEi3iagSMAVZ7IU/s3VIEqjiAtyP/xK39QQsc/WaDGuDuVvQ74kcTijilOaFl4qkX58sCPquVgYmv2Y+jCK6FCASys2UvD6r0/8WC8C2EHHhhZ+hO1q53gES60FfPYIxltTQLUl8pX2R2rytdk0GjVqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JEzxGp8+rWH1Q2d77vAlOycwwpYDO6a9CKBRx9Hajrk=;
 b=ecVXf/EANzxPpsL2vYrDmJbjKszaLxYI6G3k2wTN7PTi/VdDdI6Z7aGUlsmctMHfJXAnB7tNpDrfTSnaSTHhfRuhImspJchQ8ndLN1i86L3IDPe66Qtqi1fzjO8jAczb9v1Z31IpD+tMUzERKWgee59m6cyBFtJ1aIuMPX34gLsk2KV0aKW/AI7U/RCQgGCdd0iOH6ouuU10rju3ho92GTUMIckDKYJLT66Xcpr5eYXwHI1QI38L9le4WRUtLMLam0WcRCCC2vCFLowjwTP6MJ+mlZ8GfgP5ljXwzaohqbIAeK9ZmxkGzx/WWy30eNefWX4KBEGHphO5zk608kdH9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JEzxGp8+rWH1Q2d77vAlOycwwpYDO6a9CKBRx9Hajrk=;
 b=QtuiN+35BqycbS26UoGZadEbul4QzN0FB92BjffwRxXveUENII3SEcE3+gbEGw97FAkkahvQhVC0rKGRcAY9VO4d1PlKe4w3fbbL23d2SYm9UY1WJ/K9NobzfeTP3HkiXo+LnzD6e8gboiwhFLW93dcYHMnviQgIilamWc5Xm4hhf7Tsqz7tyWY8z3Vxt/kNcKSEb4vC3MO7W0Vr0PJN+eRhCKncWaYx0ZKoSORO8a6EO9rO605nJi1ANaY/0gk2n8+RqEcVwXrMw50asv6iWXanZULjJmbX5/L5V/JCGrum8X4cFB2mVgkxpTsq5o3fQKv5s3BwoTjnT6IUXQsf2Q==
Received: from PU1APC01FT023.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::4a) by
 PU1APC01HT083.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::299)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.15; Fri, 18 Sep
 2020 03:19:22 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 (2a01:111:e400:7ebe::40) by PU1APC01FT023.mail.protection.outlook.com
 (2a01:111:e400:7ebe::260) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.15 via Frontend
 Transport; Fri, 18 Sep 2020 03:19:22 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312]) by HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312%6]) with mapi id 15.20.3412.004; Fri, 18 Sep 2020
 03:19:22 +0000
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>, "Marcus D.
 Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] what is the TPM used for N310
Thread-Index: AQHWjO+3FedFDg/USEGW0ULiIsHha6ls9BQAgADGKz0=
Date: Fri, 18 Sep 2020 03:19:22 +0000
Message-ID: <HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com>
References: <HK0PR03MB5091FC4CE234C553C0B88B319D3E0@HK0PR03MB5091.apcprd03.prod.outlook.com>,
 <5F638040.9080705@gmail.com>
In-Reply-To: <5F638040.9080705@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:B857BDFE0FDF20ABDBC25EB49BA4A86CA9525533E90648C2CCF0AB3B8DB97C18;
 UpperCasedChecksum:E5C2F6B2940438F66A633C73244127CC17F9CBE002D310E384C26ADE55C0CCC4;
 SizeAsReceived:6957; Count:43
x-tmn: [ABpx9G9UWwxgrTmEGyoFCSSTEddkDjvy]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: daad24b2-80e4-47e1-ad51-08d85b81a3ae
x-ms-traffictypediagnostic: PU1APC01HT083:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RCC4pcMAMmE7kzEIjIrGd0OchEVmRuMH+hBgv43ZeHbziA5l+pMkoKVyNg5/jLNiz4CBdFUV9RGgBO6CmVdi3yuWckAy4ZvQ0rN4cc1ZNRprTbTCjiwLDIpHpnV9ehSuBe0HcRSZMq8GYV7Ju4GjjCZSDzhfxHktAz4QTY5stdl4nGkt3dkXNfV5ypV+SHNuTMcGN1GFlOCs/wvmeL7o7A==
x-ms-exchange-antispam-messagedata: NIEXWKK9Dk9LYBylu5b+FtQ9CNA+wyqT7cFVdvJ+GN+uB1xeGOycYMygpYnma9RZYkB2pGW+Sy1Ir1UaADZXLcZcxl/pMpqF+37Q76S9bzhBZMBjmzu4HmIREkZ8WBGdrKZrh4PICjPpm0Bwsl6WxQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: PU1APC01FT023.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: daad24b2-80e4-47e1-ad51-08d85b81a3ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2020 03:19:22.7338 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT083
Subject: [USRP-users] =?gb2312?b?u9i4tDogIHdoYXQgaXMgdGhlIFRQTSB1c2VkIGZv?=
 =?gb2312?b?ciBOMzEw?=
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
Content-Type: multipart/mixed; boundary="===============1918978409635470316=="
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

--===============1918978409635470316==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR03MB50919AB20089C910BEC329AE9D3F0HK0PR03MB5091apcp_"

--_000_HK0PR03MB50919AB20089C910BEC329AE9D3F0HK0PR03MB5091apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SEkgTWFyY3VzLA0KdGhhbmtzLiBhbmQgaXMgdGhlIHNvdXJjZSBjb2RlIG9mIHN0bTMyICBhbmQg
Y3BsZCAgYXZhaWFibGU/DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQq3orz+
yMs6IFVTUlAtdXNlcnMgPHVzcnAtdXNlcnMtYm91bmNlc0BsaXN0cy5ldHR1cy5jb20+ILT6se0g
TWFyY3VzIEQuIExlZWNoIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bT4NCreiy83KsbzkOiAyMDIwxOo51MIxN8jVIDIzOjI2DQrK1bz+yMs6IHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NCtb3zOI6IFJlOiBbVVNS
UC11c2Vyc10gd2hhdCBpcyB0aGUgVFBNIHVzZWQgZm9yIE4zMTANCg0KT24gMDkvMTcvMjAyMCAw
ODo0MSBBTSwgVGhvbWFzIGphbWVzIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KSGksDQppIGxlYXJu
ZWQgdGhhdCBOMzEwIGhhdmUgdGhlIHZlcnNpb24gd2l0aCBvciB3aXRob3V0IFRQTS4gaSB3YW50
IHRvIGtub3cgbW9yZSBhYm91dCBpdC4gd2hhdCBpcyB0aGUgVFBNIHVzZWQgZm9yPw0KDQpOb3Ro
aW5nIGFzIGZhciBhcyBJIGtub3ctLWl0J3MgYXZhaWxhYmxlIHRvIGJlIHVzZWQgZm9yIGN1c3Rv
bSBhcHBsaWNhdGlvbnMuDQoNCg==

--_000_HK0PR03MB50919AB20089C910BEC329AE9D3F0HK0PR03MB5091apcp_
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
HI Marcus,<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
thanks. and is the source code of stm32&nbsp; and cpld&nbsp; avaiable?<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> USRP-us=
ers &lt;usrp-users-bounces@lists.ettus.com&gt; =B4=FA=B1=ED Marcus D. Leech=
 via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2020=C4=EA9=D4=C217=C8=D5 23:26<br>
<b>=CA=D5=BC=FE=C8=CB:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.=
ettus.com&gt;<br>
<b>=D6=F7=CC=E2:</b> Re: [USRP-users] what is the TPM used for N310</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 09/17/2020 08:41 AM, Thomas james via U=
SRP-users wrote:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
i learned that N310 have the version with or without TPM. i want to know mo=
re about it. what is the TPM used for?<br>
</div>
<br>
</blockquote>
Nothing as far as I know--it's available to be used for custom applications=
.<br>
<br>
</div>
</body>
</html>

--_000_HK0PR03MB50919AB20089C910BEC329AE9D3F0HK0PR03MB5091apcp_--


--===============1918978409635470316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1918978409635470316==--

