Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CE5271458
	for <lists+usrp-users@lfdr.de>; Sun, 20 Sep 2020 14:50:08 +0200 (CEST)
Received: from [::1] (port=33582 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kJyn6-0008U9-M2; Sun, 20 Sep 2020 08:50:04 -0400
Received: from mail-oln040092254091.outbound.protection.outlook.com
 ([40.92.254.91]:22955 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <james_ttfun@hotmail.com>)
 id 1kJyn2-0008Kk-OW
 for USRP-users@lists.ettus.com; Sun, 20 Sep 2020 08:50:00 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GW69OMV2Cs8/rCUsaJs5coNv6NHgBm68r5cXUPQQwnCf8FgRaLciGu13fLU8Gr/dX+W1vaciBS/fmtLfSIKji7vrUN3LcctixiwDoCZRrYApw/C3zfeqgw/+qifJL3BjNnCFJI7Ow5E3Fr2gXS/YCLYS3tKCTIuS9UhpnL9bMLjRgI7HJW8SOirZ/8buu/3uilsptJ1q1in3XDc3er1/6CqIyaX+If+1vuJa6GD9TJZgvrHycT0epfzs73BNymYHWmRWbvvrztgExSRmel5hhlw/yp2uICljpY4EQEm3Gt9fm0dAy330au415g16KPbLqplXeZSQr+uRa/+uUcHOnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k0RdYY8ZNmWfzXK2XRQvIeFnCXiQMEh88zMRzjvHCDo=;
 b=FmQ7T/jArTqCETM2BedbRJ/+s682ZWzTG7PwnjrbYkf2jEdDwFtQV5KfSs24mnClPos5+7JsySISB7SPGHKSJivIGFalyMJje4DA2+xQTGsMPqq+bOb2hq9zglcOofRJaxe/3UnfXESwJ/6pKO+xcgHyCLk+HEtkYN8+EEJZ45ozjUgWwtSVPJp5BcSH0bE4c0M0roW/p6nYXy4S7pxLoaE7fnpcb7P3G/q9Y0+vevwVkdnuQrd1p1aJmwla6CYevqpe6tmU4qWLoIKvlHCyD1lfbkRdJrAtxu4E75eWXhYs4mpwtalZuurlOtnP6bjS3VUBs6gil4dhSOhdygzfEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k0RdYY8ZNmWfzXK2XRQvIeFnCXiQMEh88zMRzjvHCDo=;
 b=oRLfCXf++ggDJl0LV2kP9NrsEnnL2UMDdUDPfSHnuzfXwOn6WRC64YlFpP0R7c3UnxzNFX+Kf+/tGDPCbG2sKInblZZMyqt/qSRx4skqMpX9Bt3PhJuA5NgwrDOwTlvrfB3PjP4HJmYpU8vJIMYye9WLSU4ef8+gn5bLcY1yHYIrBkMIO7JN4lPoH5XkGwJZORdQ1QzXvVC5WPs6MN65uS6rKqJKm9Kgvbtt2YwlJPagTLxUbMJO7/0Ip1o+Avuis5DDINjSKAq59ZXOsuqEH6TNs68ZcgDQB8BW5s1lLg7PJBSycE1VzFyMeJO6+pnA5Ie6ytvc/OJbXRxCjxAenw==
Received: from PU1APC01FT010.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::4d) by
 PU1APC01HT136.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::495)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.15; Sun, 20 Sep
 2020 12:49:17 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 (2a01:111:e400:7ebe::40) by PU1APC01FT010.mail.protection.outlook.com
 (2a01:111:e400:7ebe::83) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.15 via Frontend
 Transport; Sun, 20 Sep 2020 12:49:17 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312]) by HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312%6]) with mapi id 15.20.3412.015; Sun, 20 Sep 2020
 12:49:17 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
 <USRP-users@lists.ettus.com>
Thread-Topic: =?gb2312?B?u9i4tDogW1VTUlAtdXNlcnNdIHdoYXQgaXMgdGhlIFRQTSB1c2VkIGZvciBO?=
 =?gb2312?Q?310?=
Thread-Index: AQHWjO+3FedFDg/USEGW0ULiIsHha6ls9BQAgADGKz2AAX2ugIACRl/J
Date: Sun, 20 Sep 2020 12:49:17 +0000
Message-ID: <HK0PR03MB5091857473EEA99A15FDE29C9D3D0@HK0PR03MB5091.apcprd03.prod.outlook.com>
References: <HK0PR03MB5091FC4CE234C553C0B88B319D3E0@HK0PR03MB5091.apcprd03.prod.outlook.com>,
 <5F638040.9080705@gmail.com>
 <HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com>,
 <5F6566A9.5090205@gmail.com>
In-Reply-To: <5F6566A9.5090205@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F0DEF2C37736760097E727DF3DE62FDEFD0CE8AA8B52667A5AABE652228006E1;
 UpperCasedChecksum:54617608D03866F762F2BF975557E613524AD28B60C3D5F10F4306809133817A;
 SizeAsReceived:7124; Count:43
x-tmn: [kXqmoZewwYgVMhCKIEsoUIn9FF2nlkQg]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 8d549685-ad65-4126-c4ef-08d85d6395fc
x-ms-traffictypediagnostic: PU1APC01HT136:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S1MeDcxdJzQ0KyIEQRUJT9A4V+R0NokhHtdx5kOrwRF+Gh33xams6r60W9jE8WagrDtgd0jby8jFhqJt3Rjeq0Trjc6xMBCOmkrV7bZ3/gc3AbjSxLVFlgGT+a5xpRfa7mKy5TXQdpQIyR+SZPrekMN5ZPuAF2huv8z0jjZ7P6Gs9xosfH0vucI8KUwwzG0zNXgyqnZle7CYmxCenlL4LeDNeRAYalWjfJlKujA33YYxDObsOCP325APLd0r17nP
x-ms-exchange-antispam-messagedata: Xx9R8YYX7ust9DhVjBchKcM069+350iqmjdCt+KLG7m4/FP3o5I0nXnOVgekuac86z4knlX0VDG5dI0biXxzjjfOhXBYF0U4HNPp9Ku3kUnXmeII0dYU9YMFZVZGqJepTOkbWBRxnGgLwVPprjhIXA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: PU1APC01FT010.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d549685-ad65-4126-c4ef-08d85d6395fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2020 12:49:17.1861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT136
Subject: [USRP-users] =?gb2312?b?u9i4tDogu9i4tDogIHdoYXQgaXMgdGhlIFRQTSB1?=
 =?gb2312?b?c2VkIGZvciBOMzEw?=
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
Content-Type: multipart/mixed; boundary="===============8752528697578135825=="
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

--===============8752528697578135825==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR03MB5091857473EEA99A15FDE29C9D3D0HK0PR03MB5091apcp_"

--_000_HK0PR03MB5091857473EEA99A15FDE29C9D3D0HK0PR03MB5091apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgTWFyY3VzLA0KaXMgdGhlcmUgY29tcGlsZWQgc3RtMzIgaW1hZ2VzIGFuZCBpdHMgdXBkYXRl
IG1ldGhvZCBhdmFpbGFibGUuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0Kt6K8
/sjLOiBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPg0Kt6LLzcqxvOQ6
IDIwMjDE6jnUwjE5yNUgMTA6MDINCsrVvP7IyzogVGhvbWFzIGphbWVzIDxqYW1lc190dGZ1bkBo
b3RtYWlsLmNvbT47IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIDxVU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbT4NCtb3zOI6IFJlOiC72Li0OiBbVVNSUC11c2Vyc10gd2hhdCBpcyB0aGUgVFBN
IHVzZWQgZm9yIE4zMTANCg0KT24gMDkvMTcvMjAyMCAxMToxOSBQTSwgVGhvbWFzIGphbWVzIHdy
b3RlOg0KSEkgTWFyY3VzLA0KdGhhbmtzLiBhbmQgaXMgdGhlIHNvdXJjZSBjb2RlIG9mIHN0bTMy
ICBhbmQgY3BsZCAgYXZhaWFibGU/DQoNCkNoZWNrIG91dDoNCg0KaHR0cHM6Ly9naXRodWIuY29t
L0V0dHVzUmVzZWFyY2gvdXNycC1maXJtd2FyZQ0KDQpodHRwczovL2dpdGh1Yi5jb20vRXR0dXNS
ZXNlYXJjaC9tZXRhLXN0bTMyDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
CreivP7IyzogVVNSUC11c2VycyA8dXNycC11c2Vycy1ib3VuY2VzQGxpc3RzLmV0dHVzLmNvbT48
bWFpbHRvOnVzcnAtdXNlcnMtYm91bmNlc0BsaXN0cy5ldHR1cy5jb20+ILT6se0gTWFyY3VzIEQu
IExlZWNoIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT48bWFpbHRv
OnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0Kt6LLzcqxvOQ6IDIwMjDE6jnUwjE3yNUgMjM6
MjYNCsrVvP7IyzogdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208bWFpbHRvOnVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tPiA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+PG1haWx0bzp1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NCtb3zOI6IFJlOiBbVVNSUC11c2Vyc10gd2hhdCBpcyB0
aGUgVFBNIHVzZWQgZm9yIE4zMTANCg0KT24gMDkvMTcvMjAyMCAwODo0MSBBTSwgVGhvbWFzIGph
bWVzIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KSGksDQppIGxlYXJuZWQgdGhhdCBOMzEwIGhhdmUg
dGhlIHZlcnNpb24gd2l0aCBvciB3aXRob3V0IFRQTS4gaSB3YW50IHRvIGtub3cgbW9yZSBhYm91
dCBpdC4gd2hhdCBpcyB0aGUgVFBNIHVzZWQgZm9yPw0KDQpOb3RoaW5nIGFzIGZhciBhcyBJIGtu
b3ctLWl0J3MgYXZhaWxhYmxlIHRvIGJlIHVzZWQgZm9yIGN1c3RvbSBhcHBsaWNhdGlvbnMuDQoN
Cg0K

--_000_HK0PR03MB5091857473EEA99A15FDE29C9D3D0HK0PR03MB5091apcp_
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
Hi Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
is there compiled stm32 images and its update method available.<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> Marcus =
D. Leech &lt;patchvonbraun@gmail.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2020=C4=EA9=D4=C219=C8=D5 10:02<br>
<b>=CA=D5=BC=FE=C8=CB:</b> Thomas james &lt;james_ttfun@hotmail.com&gt;; us=
rp-users@lists.ettus.com &lt;USRP-users@lists.ettus.com&gt;<br>
<b>=D6=F7=CC=E2:</b> Re: =BB=D8=B8=B4: [USRP-users] what is the TPM used fo=
r N310</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 09/17/2020 11:19 PM, Thomas james wrote=
:<br>
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
HI Marcus,<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
thanks. and is the source code of stm32&nbsp; and cpld&nbsp; avaiable?<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
</blockquote>
Check out:<br>
<br>
<a class=3D"x_moz-txt-link-freetext" href=3D"https://github.com/EttusResear=
ch/usrp-firmware">https://github.com/EttusResearch/usrp-firmware</a><br>
<br>
<a class=3D"x_moz-txt-link-freetext" href=3D"https://github.com/EttusResear=
ch/meta-stm32">https://github.com/EttusResearch/meta-stm32</a><br>
<br>
<br>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Cal=
ibri, sans-serif" style=3D"font-size:11pt"><b>=B7=A2=BC=FE=C8=CB:</b> USRP-=
users
<a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:usrp-users-bounces@list=
s.ettus.com">
&lt;usrp-users-bounces@lists.ettus.com&gt;</a> =B4=FA=B1=ED Marcus D. Leech=
 via USRP-users <a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:usrp-us=
ers@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2020=C4=EA9=D4=C217=C8=D5 23:26<br>
<b>=CA=D5=BC=FE=C8=CB:</b> <a class=3D"x_moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_moz-txt-link-rfc2396E" href=3D=
"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>=D6=F7=CC=E2:</b> Re: [USRP-users] what is the TPM used for N310</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_moz-cite-prefix">On 09/17/2020 08:41 AM, Thomas james via=
 USRP-users wrote:<br>
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
</blockquote>
<br>
</div>
</body>
</html>

--_000_HK0PR03MB5091857473EEA99A15FDE29C9D3D0HK0PR03MB5091apcp_--


--===============8752528697578135825==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8752528697578135825==--

