Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC7B2741FA
	for <lists+usrp-users@lfdr.de>; Tue, 22 Sep 2020 14:21:14 +0200 (CEST)
Received: from [::1] (port=54146 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kKhIC-0005bV-O3; Tue, 22 Sep 2020 08:21:08 -0400
Received: from mail-oln040092253073.outbound.protection.outlook.com
 ([40.92.253.73]:8923 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <james_ttfun@hotmail.com>)
 id 1kKhI8-0005O8-Dl
 for usrp-users@lists.ettus.com; Tue, 22 Sep 2020 08:21:04 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FfMjcvRwVW1tYGerVJ7D0VLxlZbyStBhSZpmvuQFYZRR25tZp2WIQBkTAGky1hhnKANGX060XCYOMysHqVp7WADQE/qTQrVWwtNMHCWhlqxmqH3t6UynoyQ+/CzbvVHiVUvtdQ3CHvkK+UltILpRxWaBbB3I8MkvkxKBEU7t115T+m0wL/NmUqsuHff5gznnPMAg68INZ8eGKVmnr06gQ8+/1pJwK8MCgS7G/vZTw6IrUKAlrrt5LX4QtczVeOkNul/5Z9G5jxdc3Lzo/9d9yW/vRsepl/jnMBgYVx2vCPcdu+h6yJ6+nq10DzELIsoB7VHfBSga26AjKvq64DmfFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8U4iTFhhy/C1+rgHkdnuyOntZmFfacH68Y/0W7deYd4=;
 b=dn2Ya+EknS8eAZ4kZIs52r0u2VeywwOl5vpryS049ZYNN1sXO3NCtRwR/8ESeF0qu6bQotvSINwTiNh4LHG8NG+jbCj0hmrf6rkji5TZNASmMB3AVFwR6oUuhJ0K0WJAp7mgxHllxVFJNvKMd9XS5HrtuR6VOIuZKC5r4RxLC+q/gQp/sJ0ZToRCzIJiKlGaUj+30PM1QGGn9x3hYNe0qbc3pDRka/UibKEJXmgC3d1z9sjvfy49jL9IcGw8WkFNkS9nxZmS8zKX2t+MnhQcz7tW/WKwuTF7Mf6uFZqqiw+LYVSRGlAMEbz7jbpXyH2vpP+eZoWBSVRp2VLxR9ljsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8U4iTFhhy/C1+rgHkdnuyOntZmFfacH68Y/0W7deYd4=;
 b=mAb3IeetQt+nKMOdz2RngayW1yB25xv2JiM2oDkzvTeO1l0nzs+wokULxXXJ4NpBJZugM77ypaDshp/57Ucx2y1+IQbBXhE588cHqaNYBqxle0QQHZhJuYP9v2jlsFAiWRQR/Ln7Ek6c6vkIbYmH1uM7t72z/1XeTOi2newbh9YXSseIFOPd/iC0fplAdlbvbJxktrYH8SmInrxtzCP3mmfHnb4rgfWY0P5DxNxE9565ATM5TzmvEHF/Say3PyhHQhrAyAnL+gSyLJ61fZeTfaEsndzcgsf4Bd4pWiSGKw/Y3O5u/dkXsP+fkuPXJ8VDbEcBGbfVzPH4vQ7LcxMb2Q==
Received: from PU1APC01FT059.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::44) by
 PU1APC01HT178.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::202)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.15; Tue, 22 Sep
 2020 12:20:11 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 (2a01:111:e400:7ebe::47) by PU1APC01FT059.mail.protection.outlook.com
 (2a01:111:e400:7ebe::293) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.15 via Frontend
 Transport; Tue, 22 Sep 2020 12:20:11 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312]) by HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312%6]) with mapi id 15.20.3412.020; Tue, 22 Sep 2020
 12:20:10 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Martin Braun
 <martin.braun@ettus.com>
Thread-Topic: =?gb2312?B?W1VTUlAtdXNlcnNdICC72Li0OiB3aGF0IGlzIHRoZSBUUE0gdXNlZCBmb3Ig?=
 =?gb2312?Q?N310?=
Thread-Index: AQHWjbfurdZQXHXJhUaQyzmmjNczoKlxiHT3gAAAxfSAAxADjQ==
Date: Tue, 22 Sep 2020 12:20:10 +0000
Message-ID: <HK0PR03MB5091916D6BE45E88CE757E7F9D3B0@HK0PR03MB5091.apcprd03.prod.outlook.com>
References: <HK0PR03MB5091FC4CE234C553C0B88B319D3E0@HK0PR03MB5091.apcprd03.prod.outlook.com>
 <5F638040.9080705@gmail.com>
 <HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com>
 <5F645170.7000801@gmail.com>, <ac9e3795-2cc7-a21f-f5da-17fdc4b36ae2@ettus.com>,
 <HK0PR03MB50915C496C2754853884466A9D3D0@HK0PR03MB5091.apcprd03.prod.outlook.com>,
 <HK0PR03MB50913F6D3BE884B1DC95CFDA9D3D0@HK0PR03MB5091.apcprd03.prod.outlook.com>
In-Reply-To: <HK0PR03MB50913F6D3BE884B1DC95CFDA9D3D0@HK0PR03MB5091.apcprd03.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:23AB7EBD5F6BD684A8D0C9CBC8BF6F87FEEF5DB85AB67E533B6AD770CAC97BDA;
 UpperCasedChecksum:C3A071D6485992F7AB0402940F054E981995A52FCACC41001618D21DB3C0E2B8;
 SizeAsReceived:7385; Count:43
x-tmn: [G2O+PueSpoZbnec5XHj695bcYWB/l8HL]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 1da9ce99-840a-4158-4917-08d85ef1d9cd
x-ms-traffictypediagnostic: PU1APC01HT178:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 23h61lHQJUfjpp9UmQbo6BDac/PO5DRaYdjl48up6755nC5kkTMcOdMn52DhQMEK3WwbKPst9jaLIj/ePcGGUu2BBiJ2XPm9nM3oAEdbrQhAK8Xpydgt8Zun55Hft0pmYzob1CLfCcr/aXi3wecBH2vL49HxbgVqpZQ3nfoU2mCDEgDwM/HCDFK0gh74CW7ii4Gh5OaK86uLb3YT0H4SZ+vNM+NM+EBIkcMGQaGq305+sNMp3gmRwwbf1TImBBaA
x-ms-exchange-antispam-messagedata: DiS8Hpzr5ug0IvS5zomyvXqcZhKnmZrDrFa+nNxwXU7RHraZtp7TVWsxGRJgnnzS13J8Dw5Azo2nY2hjg6esBlM/pHLiCOGrBTx8G/4Zy/eNpVyT5kVsllw/Iat2AcjqBxP07M+5SEH+v1p2EZIesQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: PU1APC01FT059.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 1da9ce99-840a-4158-4917-08d85ef1d9cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2020 12:20:10.6104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT178
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
Content-Type: multipart/mixed; boundary="===============0301597413530463671=="
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

--===============0301597413530463671==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR03MB5091916D6BE45E88CE757E7F9D3B0HK0PR03MB5091apcp_"

--_000_HK0PR03MB5091916D6BE45E88CE757E7F9D3B0HK0PR03MB5091apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgTWFydGluLA0KY2FuIHlvdSBzaGFyZSB0aGUgYnVpbGQgbWV0aG9kIHVzaW5nIHRoaXMgc291
cmNlIGNvZGUgYW5kIGhvdyB0byB1cGRhdGUgdGhlIHN0bTMyIGZpcm13YXJlLiBpIHRoaW5rIHNo
b3VsZCB1c2UganRhZy4gaXQgaXMgdmVyeSBpbXBvcnRhbnQgZm9yIHVzIGJlY2F1c2Ugd2UgbWF5
IG5lZWQgdG8gbW9kaWZ5IHRoZSBmaXJtd2FyZSBpbiB0aGUgZnV0dXJlLg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCreivP7IyzogVGhvbWFzIGphbWVzIDxqYW1lc190dGZ1bkBo
b3RtYWlsLmNvbT4NCreiy83KsbzkOiAyMDIwxOo51MIyMMjVIDIxOjMyDQrK1bz+yMs6IHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT47IE1hcnRp
biBCcmF1biA8bWFydGluLmJyYXVuQGV0dHVzLmNvbT4NCtb3zOI6ILvYuLQ6IFtVU1JQLXVzZXJz
XSC72Li0OiB3aGF0IGlzIHRoZSBUUE0gdXNlZCBmb3IgTjMxMA0KDQpISSBNYXJ0aW4sDQppIHVu
ZGVyc3RhbmQgc3VsZnVyIGlzIGJyYW5jaC4gaXMgdGhlcmUgYW55IHR1dG9yaWFsIGhvdyB0byBi
dWlsZCB0aGUgc3RtMzIgaW1hZ2VzIHVzaW5nIHRoZXNlIHNvdXJjZT8NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQq3orz+yMs6IFRob21hcyBqYW1lcyA8amFtZXNfdHRmdW5AaG90
bWFpbC5jb20+DQq3osvNyrG85DogMjAyMMTqOdTCMjDI1SAyMToyOQ0KytW8/sjLOiB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbSA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+OyBNYXJ0aW4g
QnJhdW4gPG1hcnRpbi5icmF1bkBldHR1cy5jb20+DQrW98ziOiC72Li0OiBbVVNSUC11c2Vyc10g
u9i4tDogd2hhdCBpcyB0aGUgVFBNIHVzZWQgZm9yIE4zMTANCg0KSGkgTWFydGluLA0KaSBqdXN0
IHNlZSB5b3VyIHJlcGx5LiBidXQgdXNycC1maXJtd2FyZSBkb24ndCBoYXZlIGZvbGRlciBuYW1l
ZCB0cmVlIGFuZCBzdWxmdXIuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0Kt6K8
/sjLOiBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzLWJvdW5jZXNAbGlzdHMuZXR0dXMuY29tPiC0+rHt
IE1hcnRpbiBCcmF1biB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+
DQq3osvNyrG85DogMjAyMMTqOdTCMTjI1SAyMDozMg0KytW8/sjLOiB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbSA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQrW98ziOiBSZTogW1VTUlAt
dXNlcnNdILvYuLQ6IHdoYXQgaXMgdGhlIFRQTSB1c2VkIGZvciBOMzEwDQoNCk9uIDkvMTgvMjAg
ODoxOSBBTSwgTWFyY3VzIEQuIExlZWNoIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPiBPbiAwOS8x
Ny8yMDIwIDExOjE5IFBNLCBUaG9tYXMgamFtZXMgd3JvdGU6DQo+PiBISSBNYXJjdXMsDQo+PiB0
aGFua3MuIGFuZCBpcyB0aGUgc291cmNlIGNvZGUgb2Ygc3RtMzIgIGFuZCBjcGxkICBhdmFpYWJs
ZT8NCj4+DQo+IEkgZG9uJ3QgYmVsaWV2ZSB0aGF0IGFueSBvZiB0aGUgQ1BMRCBjb2RlIGlzIGF2
YWlsYWJsZSwgYnV0IHRoZSBTVE0zMg0KPiBjb2RlIG1pZ2h0IGJlLiAgSSBjYW4gYXNrIFImRC4N
Cg0KU1RNMzI6DQpodHRwczovL2dpdGh1Yi5jb20vRXR0dXNSZXNlYXJjaC91c3JwLWZpcm13YXJl
L3RyZWUvc3VsZnVyDQoNCkNQTEQ6DQpodHRwczovL2dpdGh1Yi5jb20vRXR0dXNSZXNlYXJjaC91
aGQvdHJlZS9tYXN0ZXIvZnBnYS91c3JwMy90b3AvbjN4eC9kYm9hcmRzL21nL2NwbGQNCg0KLS1N
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdA0KVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCmh0dHA6Ly9s
aXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNv
bQ0K

--_000_HK0PR03MB5091916D6BE45E88CE757E7F9D3B0HK0PR03MB5091apcp_
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
can you share the build method using this source code and how to update the=
 stm32 firmware. i think should use jtag. it is very important for us becau=
se we may need to modify the firmware in the future.<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> Thomas =
james &lt;james_ttfun@hotmail.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2020=C4=EA9=D4=C220=C8=D5 21:32<br>
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
HI Martin,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
i understand sulfur is branch. is there any tutorial how to build the stm32=
 images using these source?<br>
</div>
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>=B7=A2=BC=FE=C8=CB:</b> Thoma=
s james &lt;james_ttfun@hotmail.com&gt;<br>
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
<div id=3D"x_x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif=
" color=3D"#000000" style=3D"font-size:11pt"><b>=B7=A2=BC=FE=C8=CB:</b> USR=
P-users &lt;usrp-users-bounces@lists.ettus.com&gt; =B4=FA=B1=ED Martin Brau=
n via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2020=C4=EA9=D4=C218=C8=D5 20:32<br>
<b>=CA=D5=BC=FE=C8=CB:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.=
ettus.com&gt;<br>
<b>=D6=F7=CC=E2:</b> Re: [USRP-users] =BB=D8=B8=B4: what is the TPM used fo=
r N310</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_x_BodyFragment"><font size=3D"2"><span style=3D"font-size:1=
1pt">
<div class=3D"x_x_PlainText">On 9/18/20 8:19 AM, Marcus D. Leech via USRP-u=
sers wrote:<br>
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
</div>
</body>
</html>

--_000_HK0PR03MB5091916D6BE45E88CE757E7F9D3B0HK0PR03MB5091apcp_--


--===============0301597413530463671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0301597413530463671==--

