Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B58271493
	for <lists+usrp-users@lfdr.de>; Sun, 20 Sep 2020 15:33:26 +0200 (CEST)
Received: from [::1] (port=33880 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kJzT3-0005H1-Sd; Sun, 20 Sep 2020 09:33:25 -0400
Received: from mail-oln040092253084.outbound.protection.outlook.com
 ([40.92.253.84]:14784 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <james_ttfun@hotmail.com>)
 id 1kJzSz-00059s-L5
 for usrp-users@lists.ettus.com; Sun, 20 Sep 2020 09:33:21 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=apoek+8rZ5NNHMI1Txh3qflTFODn6tYzIf626K1fbhkuBoE+9wHs6DZFqjF9VPrmtX+OtWCx+cNCU4JDSRp1iEdKpyQK+PLcuhqTY3h+zhQS7bqqaAgPJFRXbTLm/XBa7Z2DuKwLZwh1Id5n+6xsvL89+YXybQrkRvTv7nNXYTf0MovTjR/QUziXm3SHL/DfMwrYhXyYa43L7VAK6ROoKrLhadq3/WQM22JxqUs2a3nNkV6f79lQNMdvLjKC79YOcxLQe8CrB5u7pt5dfi0r5+9RCHUvzODfZ11Nf2+UPmvjMol3BAaUADQ4OyHDCsRCT0CYfaZ/jKq9Ovgz4+8ZlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/FL7JOhLRLIf5QPw/Ck5FA5MyZb0/GoF0bh7M+PP5ZQ=;
 b=iw90saIkLpw57/obOcbqHSXAvoNTUSH4GdxhFdQbNY7uOKAvJmthSnVoqRjj/DoojV/iVf2dmKo0RlmRFKnpn5yRuxKydw4FmLG50nA/DrDiR1jAE7eSxIEhGfA/Bo5iHnONDiDC6GBtd6CXobybHXEmzOIv0fRDbl+FdHpebi+WngPzpaHa2g47V8YtwN8AxFaKT3U6f+JuaqBLOfHXekMp43vgYBeHtY8eRbXqdCWttkvVWEfruh+gydLcPcTzhB44kanns4kYIsZeD0O46VZ667n1n7KvaNEIHeOuQvxET4Qsn18CQJ0OGihnz5Qm2ik5P3GAS0tt52+yjdFAJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/FL7JOhLRLIf5QPw/Ck5FA5MyZb0/GoF0bh7M+PP5ZQ=;
 b=gcw3zN6RUysLAu8g/iG7GYvAGgdwqNHIh6GRaVMjMguQcxULhzHtlnc7APbmZusa22Em3DCfoYu2hEtDd1WRi3VasVNY+JXXWiD8xh3uiIEo7ty8VeqYZBCS/nZ2yhFjQZpn0lDLXmwmWbcqKGF73n7LDfNdRer2UDz+Cey7dBRiaglS42ubksnmLeCq/Ewp/V5ibt1+fBJuYcYNRpusizaW8w80D42GVMlGs2/vI0NEKoOUqmikfe9PkHGgSvbJ7n6BfbFQ16uradCqQODp8T68zkqgPmZy29lHkqnuddI+MESYO+rdOQtP/cNAHQqJJ6DT8o7V55nYFLY+9im1NA==
Received: from SG2APC01FT052.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::50) by
 SG2APC01HT023.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::449)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.15; Sun, 20 Sep
 2020 13:32:33 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 (2a01:111:e400:7ebd::44) by SG2APC01FT052.mail.protection.outlook.com
 (2a01:111:e400:7ebd::270) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.15 via Frontend
 Transport; Sun, 20 Sep 2020 13:32:33 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312]) by HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312%6]) with mapi id 15.20.3412.015; Sun, 20 Sep 2020
 13:32:33 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Martin Braun
 <martin.braun@ettus.com>
Thread-Topic: =?gb2312?B?W1VTUlAtdXNlcnNdICC72Li0OiB3aGF0IGlzIHRoZSBUUE0gdXNlZCBmb3Ig?=
 =?gb2312?Q?N310?=
Thread-Index: AQHWjbfurdZQXHXJhUaQyzmmjNczoKlxiHT3gAAAxfQ=
Date: Sun, 20 Sep 2020 13:32:33 +0000
Message-ID: <HK0PR03MB50913F6D3BE884B1DC95CFDA9D3D0@HK0PR03MB5091.apcprd03.prod.outlook.com>
References: <HK0PR03MB5091FC4CE234C553C0B88B319D3E0@HK0PR03MB5091.apcprd03.prod.outlook.com>
 <5F638040.9080705@gmail.com>
 <HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com>
 <5F645170.7000801@gmail.com>, <ac9e3795-2cc7-a21f-f5da-17fdc4b36ae2@ettus.com>,
 <HK0PR03MB50915C496C2754853884466A9D3D0@HK0PR03MB5091.apcprd03.prod.outlook.com>
In-Reply-To: <HK0PR03MB50915C496C2754853884466A9D3D0@HK0PR03MB5091.apcprd03.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:FE9BA6A6D3387146B625A2E703C56CD5751692036B77E003CA689B437709FD32;
 UpperCasedChecksum:C677534AFBB6846EF3AC4EA343D14199AF12DDD6BDAA1A5EB7C412C84C55DD8D;
 SizeAsReceived:7288; Count:43
x-tmn: [JpgQzyukrjhmhQUgQkdeNwbpkLGGtz/r]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 2919f021-917e-4d57-a5e4-08d85d69a166
x-ms-traffictypediagnostic: SG2APC01HT023:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +uuUv4oKbcMjdYeeNOO4Gt8FbUMK7ufqHvqNwAyj4MMdu27Iwhk5asvM11UcqycYiY1J7vN1eaWf/ZSn33VsxiiJXQa2W6li5F8pjoR7WrXJfr3stGkKNhYzrS0IizWPuxwfxjjluoiL72JZq3fnpORBxVMQTmCyUy3r+Vdr9y39RPfBt77XeXPUaxzYcbdhHIuq+YrxRLH/rOsejyyABjqSYrTjw8M4ciy/jFZeazp13Bk+0dTKhZayg0b++pgu
x-ms-exchange-antispam-messagedata: hRMEFeCj1MMWAbH2QO1RcelGzsgydPyyzkdsoFbLXtlIfpBWjYJZiCkPc+yv+aeG2hgB2/amESwQwJ321T6m5s16Vt8MHEw9qCSpMlwFVbzACBnAMfI5A9T+hX7033TCoMy6h2NbNm7CkQcFtuBJBA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT052.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 2919f021-917e-4d57-a5e4-08d85d69a166
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2020 13:32:33.3343 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT023
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
Content-Type: multipart/mixed; boundary="===============2411161669365336416=="
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

--===============2411161669365336416==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR03MB50913F6D3BE884B1DC95CFDA9D3D0HK0PR03MB5091apcp_"

--_000_HK0PR03MB50913F6D3BE884B1DC95CFDA9D3D0HK0PR03MB5091apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SEkgTWFydGluLA0KaSB1bmRlcnN0YW5kIHN1bGZ1ciBpcyBicmFuY2guIGlzIHRoZXJlIGFueSB0
dXRvcmlhbCBob3cgdG8gYnVpbGQgdGhlIHN0bTMyIGltYWdlcyB1c2luZyB0aGVzZSBzb3VyY2U/
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0Kt6K8/sjLOiBUaG9tYXMgamFtZXMg
PGphbWVzX3R0ZnVuQGhvdG1haWwuY29tPg0Kt6LLzcqxvOQ6IDIwMjDE6jnUwjIwyNUgMjE6MjkN
CsrVvP7IyzogdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tPjsgTWFydGluIEJyYXVuIDxtYXJ0aW4uYnJhdW5AZXR0dXMuY29tPg0K1vfM4jogu9i4
tDogW1VTUlAtdXNlcnNdILvYuLQ6IHdoYXQgaXMgdGhlIFRQTSB1c2VkIGZvciBOMzEwDQoNCkhp
IE1hcnRpbiwNCmkganVzdCBzZWUgeW91ciByZXBseS4gYnV0IHVzcnAtZmlybXdhcmUgZG9uJ3Qg
aGF2ZSBmb2xkZXIgbmFtZWQgdHJlZSBhbmQgc3VsZnVyLg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCreivP7IyzogVVNSUC11c2VycyA8dXNycC11c2Vycy1ib3VuY2VzQGxpc3Rz
LmV0dHVzLmNvbT4gtPqx7SBNYXJ0aW4gQnJhdW4gdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tPg0Kt6LLzcqxvOQ6IDIwMjDE6jnUwjE4yNUgMjA6MzINCsrVvP7Iyzog
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0K
1vfM4jogUmU6IFtVU1JQLXVzZXJzXSC72Li0OiB3aGF0IGlzIHRoZSBUUE0gdXNlZCBmb3IgTjMx
MA0KDQpPbiA5LzE4LzIwIDg6MTkgQU0sIE1hcmN1cyBELiBMZWVjaCB2aWEgVVNSUC11c2VycyB3
cm90ZToNCj4gT24gMDkvMTcvMjAyMCAxMToxOSBQTSwgVGhvbWFzIGphbWVzIHdyb3RlOg0KPj4g
SEkgTWFyY3VzLA0KPj4gdGhhbmtzLiBhbmQgaXMgdGhlIHNvdXJjZSBjb2RlIG9mIHN0bTMyICBh
bmQgY3BsZCAgYXZhaWFibGU/DQo+Pg0KPiBJIGRvbid0IGJlbGlldmUgdGhhdCBhbnkgb2YgdGhl
IENQTEQgY29kZSBpcyBhdmFpbGFibGUsIGJ1dCB0aGUgU1RNMzINCj4gY29kZSBtaWdodCBiZS4g
IEkgY2FuIGFzayBSJkQuDQoNClNUTTMyOg0KaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFy
Y2gvdXNycC1maXJtd2FyZS90cmVlL3N1bGZ1cg0KDQpDUExEOg0KaHR0cHM6Ly9naXRodWIuY29t
L0V0dHVzUmVzZWFyY2gvdWhkL3RyZWUvbWFzdGVyL2ZwZ2EvdXNycDMvdG9wL24zeHgvZGJvYXJk
cy9tZy9jcGxkDQoNCi0tTQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QNClVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tDQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vy
c19saXN0cy5ldHR1cy5jb20NCg==

--_000_HK0PR03MB50913F6D3BE884B1DC95CFDA9D3D0HK0PR03MB5091apcp_
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
HI Martin,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
i understand sulfur is branch. is there any tutorial how to build the stm32=
 images using these source?<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> Thomas =
james &lt;james_ttfun@hotmail.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2020=C4=EA9=D4=C220=C8=D5 21:29<br>
<b>=CA=D5=BC=FE=C8=CB:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.=
ettus.com&gt;; Martin Braun &lt;martin.braun@ettus.com&gt;<br>
<b>=D6=F7=CC=E2:</b> =BB=D8=B8=B4: [USRP-users] =BB=D8=B8=B4: what is the T=
PM used for N310</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi Martin,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
i just see your reply. but usrp-firmware don't have folder named tree and s=
ulfur.<br>
</div>
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>=B7=A2=BC=FE=C8=CB:</b> USRP-=
users &lt;usrp-users-bounces@lists.ettus.com&gt; =B4=FA=B1=ED Martin Braun =
via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2020=C4=EA9=D4=C218=C8=D5 20:32<br>
<b>=CA=D5=BC=FE=C8=CB:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.=
ettus.com&gt;<br>
<b>=D6=F7=CC=E2:</b> Re: [USRP-users] =BB=D8=B8=B4: what is the TPM used fo=
r N310</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_BodyFragment"><font size=3D"2"><span style=3D"font-size:11p=
t">
<div class=3D"x_PlainText">On 9/18/20 8:19 AM, Marcus D. Leech via USRP-use=
rs wrote:<br>
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
</div>
</body>
</html>

--_000_HK0PR03MB50913F6D3BE884B1DC95CFDA9D3D0HK0PR03MB5091apcp_--


--===============2411161669365336416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2411161669365336416==--

