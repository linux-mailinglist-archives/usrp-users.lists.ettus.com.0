Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E77FC275813
	for <lists+usrp-users@lfdr.de>; Wed, 23 Sep 2020 14:36:48 +0200 (CEST)
Received: from [::1] (port=37268 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kL40o-0007Iw-1S; Wed, 23 Sep 2020 08:36:42 -0400
Received: from mail-oln040092254068.outbound.protection.outlook.com
 ([40.92.254.68]:16792 helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <james_ttfun@hotmail.com>)
 id 1kL40j-0007Bk-Ix
 for usrp-users@lists.ettus.com; Wed, 23 Sep 2020 08:36:37 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EW942COnzb83LZxEcvqCJQVd8mo9hCtQst/UAUP5H5IBEU0VvN74SLdqt+BPMf2Y1zul9sya3b77u9RbB8pPOQq15pjiIb2Qi9KyCQuJNZfqPw615vwUzQATomezq0cA4/Xz2i2dhnOhvsvFLaQjSIzisMD0EOSVDb/oTaepGfggRZKsTXUHCbLk+I/vC/GhhBB/msAiWIwwI0IPHKOTiN4x8kxStucioSvIMZ/rDRgjfjQpHAXAdVEAnMN7H1YM5C3ZlM0O5QLKzbHkDnWOzP+/nMLpI/n3hwYBYbrPeHmLoWDP6og8gOYX1zE92eRFkvPkH0HceyztXdw/ibnALQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A0KxL8nnfB2mc54tX/hdCsBqcr1A022fvr9isEzw3M4=;
 b=CosClKcPP8pVH4/sFmWirfO55NosFfMiOGdv1F24rMfYpCc31ENqMfMxcjFQuBu+2jZ50ygXGyNd9EgIa/sDHN4fSW0Ohpw18vXp1MT/LMPqvMS+4VbwSdKgdeHClNkfn5bJ6YjaZrXVmbQ1iwnLTc097YEGNs9t6Oe8QN5mfINE4fyKcuu7nM1eG/W6dDuVz6z/ZEtIaqU05sFihLGjeDgELwqs8bKurZmIrRtfHfL4uub0yv3lyLLCysWXZzaC48Dv4EB7a57xsMXuHuw1iLr1GCXznXDAGpFX8CcYljVkF0dGcl/NXKQLheVB9j4mL6FyM0Sodv4s0v8XiGzWIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A0KxL8nnfB2mc54tX/hdCsBqcr1A022fvr9isEzw3M4=;
 b=vN8RziGbg5S0uFH64HC/DcNe+Egpqw777boB8hhJdQiXBTM4K4E278IljzVV5ov3wJV9qESB+iVGp/0Uu0iXMLthUyufErsjt8f5KLyY8Rg0hjmfhVf9VJYYeoJ6/ce0mhCRZI9XT14hlpt1ZxIrJgumsDiH0XKjdGP1cbbBjJ/hzXcFPpYIlp14sJaUn9gl2MKAprg+qsklLqSIj/tW82XRA3J6rnQ8T23HjsyDiU7tfvzlrLL67m94OFHjgr9EsgG9yvlOHpe42dDUNXF1NLXdd+p2c9lx9s/oVyNimFzYTrlESS6v6AsPYcfQk+hafnXAx7efgWuN8Xu7AU5tWg==
Received: from HK2APC01FT014.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::40) by
 HK2APC01HT042.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::333)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.21; Wed, 23 Sep
 2020 12:35:52 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 (2a01:111:e400:7ebc::4e) by HK2APC01FT014.mail.protection.outlook.com
 (2a01:111:e400:7ebc::103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.21 via Frontend
 Transport; Wed, 23 Sep 2020 12:35:52 +0000
Received: from HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312]) by HK0PR03MB5091.apcprd03.prod.outlook.com
 ([fe80::b810:da17:1df1:4312%6]) with mapi id 15.20.3412.020; Wed, 23 Sep 2020
 12:35:52 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 =?gb2312?B?TWFyY3VzIE2ouWxsZXI=?= <marcus.mueller@ettus.com>
Thread-Topic: =?gb2312?B?W1VTUlAtdXNlcnNdICC72Li0OiC72Li0OiB3aGF0IGlzIHRoZSBUUE0gdXNl?=
 =?gb2312?Q?d_for_N310?=
Thread-Index: AQHWkN85R695hOZ6s0ebzgUtto6MsKl1vmLU
Date: Wed, 23 Sep 2020 12:35:52 +0000
Message-ID: <HK0PR03MB509139332C32BE52B24792CA9D380@HK0PR03MB5091.apcprd03.prod.outlook.com>
References: <HK0PR03MB5091FC4CE234C553C0B88B319D3E0@HK0PR03MB5091.apcprd03.prod.outlook.com>
 <5F638040.9080705@gmail.com>
 <HK0PR03MB50919AB20089C910BEC329AE9D3F0@HK0PR03MB5091.apcprd03.prod.outlook.com>
 <5F6566A9.5090205@gmail.com>
 <HK0PR03MB5091857473EEA99A15FDE29C9D3D0@HK0PR03MB5091.apcprd03.prod.outlook.com>,
 <f9aa10db-8d4e-51ea-5652-979d9939a2ac@ettus.com>
In-Reply-To: <f9aa10db-8d4e-51ea-5652-979d9939a2ac@ettus.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:72FCEB61B370F69F48C1C2BF405136D776E9E3AC29E4BDE79C0AEC61D6BAC858;
 UpperCasedChecksum:6B33C32F58FBDB19DB3898A5B4159A427342BC4D9D5FEAB171F24EA40EC9BECC;
 SizeAsReceived:7339; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [ak4PHTee0/eymaGbt10fJf9d/SEBzxJT]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: f2c10227-e9de-445d-d194-08d85fbd35b7
x-ms-traffictypediagnostic: HK2APC01HT042:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iXpGae66OGmsT7FcK9hcUiXy8PZJ6vlhUHffUg2oR3A0yLxPvyi+MquRsTwiVh1i4cMg/Ud2kq2hcpih2Gp+nBEZ0Uq1ar9cDJH6drhxRR9kitSNTfhxurJOkUb8dnf9YyIgEpOjBH6oBQXjBnhjM+97YzgbTMhCKnXk9TObwf0WD4ryBJY+eksl73c1WNoGmVMDypEEtmMvdvOny1IfcAmBACRNmlbzUxF71cK/4gMMVXg2B/myK2b3osXGZMaQ
x-ms-exchange-antispam-messagedata: 4ftmNdNfQPc4SLyZyyHsCWbCpNrs/3CzmEILAd2/o07GrFdxCf3Z1iNssmQI9+JDp9khrtlKGwwQL0aqPyZn2foincZZbXfXbGBTfxNOJZ3GQMgJxvTcli3gYSwW4b8I508aTuCFqCy4eMlaa4x2lA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT014.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f2c10227-e9de-445d-d194-08d85fbd35b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2020 12:35:52.6512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT042
Subject: [USRP-users] =?gb2312?b?u9i4tDogICC72Li0OiC72Li0OiB3aGF0IGlzIHRo?=
 =?gb2312?b?ZSBUUE0gdXNlZCBmb3IgTjMxMA==?=
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
Content-Type: multipart/mixed; boundary="===============8223775263627837830=="
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

--===============8223775263627837830==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_HK0PR03MB509139332C32BE52B24792CA9D380HK0PR03MB5091apcp_"

--_000_HK0PR03MB509139332C32BE52B24792CA9D380HK0PR03MB5091apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgTWFyY3VzLA0Kd2UgbWF5IHdpbGwgbW9kaWZ5IHRoZSBzb3VyY2UgY29kZS4gYnV0IGkgZG9u
J3Qga25vdyBob3cgdG8gZGVhbCB3aXRoIHRoZSBzb3VyY2UgY29kZSBpbiBnaXRodWIgdHJlZS4g
YXMgSSBrbm93IHN0bTMyIHNvdXJjZSB0cmVlIHNob3VsZCBiZSBzb21lIHdpbmRvd3MgaWRlIHBy
b2plY3QuIHNvIHdlIHRoaW5rIGlmIHRoZXJlIGlzIGEgYnVpbHQgaW1hZ2UgdGhhdCB3aWxsIGhl
bHAgdG8gdmVyaWZ5IHRoZSBidWlsZGluZyBpcyBjb3JyZWN0LiBhbmQgd2UgbmVlZCB0aGUgYnVp
bGRpbmcgbWV0aG9kIGlmIHlvdSBjYW4gcHJvdmlkZS4gaSB0aGluayB0aGUgYnVpbGRpbmcgbWV0
aG9kIGlzIG1vcmUgaW1wb3J0YW50Lg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fDQq3orz+yMs6IFVTUlAtdXNlcnMgPHVzcnAtdXNlcnMtYm91bmNlc0BsaXN0cy5ldHR1cy5j
b20+ILT6se0gTWFyY3VzIE2ouWxsZXIgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tPg0Kt6LLzcqxvOQ6IDIwMjDE6jnUwjIyyNUgMjA6NTENCsrVvP7IyzogdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20gPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0K1vfM4jog
UmU6IFtVU1JQLXVzZXJzXSC72Li0OiC72Li0OiB3aGF0IGlzIHRoZSBUUE0gdXNlZCBmb3IgTjMx
MA0KDQpIaSBKYW1lcywNCg0KcmU6c3RtMzIgaW1hZ2U6DQoNCnVtLCBpZiB5b3Ugd2FudCB0byBt
b2RpZnkgdGhlIHNvdXJjZSBjb2RlLCBiaW5hcmllcyB3b24ndCBoZWxwIHlvdS4gSWYNCnRoZXJl
J3Mgbm90aGluZyB5b3Ugd2FudCB0byBtb2RpZnksIHlvdSBkb24ndCBuZWVkIHRvIGZsYXNoLCBl
aXRoZXIuDQoNClNpbmNlIHRoZXNlIGltYWdlcyBhcmUgbmVhcmx5IGltcG9zc2libGUgdG8gYnJl
YWssIGFuZCBub24tdHJpdmlhbCB0bw0KZmxhc2ggd2l0aG91dCBkZWRpY2F0ZWQgcHJvZ3JhbW1l
cnMvY29ubmVjdG9ycywgd2hhdCdzIHRoZSB1c2UgY2FzZSBmb3INCndhbnRpbmcgYmluYXJpZXM/
DQoNCkJlc3QgcmVnYXJkcywNCg0KTWFyY3VzDQoNCk9uIDIwLjA5LjIwIDE0OjQ5LCBUaG9tYXMg
amFtZXMgdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+IEhpIE1hcmN1cywNCj4gaXMgdGhlcmUgY29t
cGlsZWQgc3RtMzIgaW1hZ2VzIGFuZCBpdHMgdXBkYXRlIG1ldGhvZCBhdmFpbGFibGUuDQo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ILeivP7IyzogTWFyY3VzIEQuIExlZWNo
IDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4NCj4gt6LLzcqxvOQ6IDIwMjDE6jnUwjE5yNUgMTA6
MDINCj4gytW8/sjLOiBUaG9tYXMgamFtZXMgPGphbWVzX3R0ZnVuQGhvdG1haWwuY29tPjsgdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KPiDW
98ziOiBSZTogu9i4tDogW1VTUlAtdXNlcnNdIHdoYXQgaXMgdGhlIFRQTSB1c2VkIGZvciBOMzEw
DQo+DQo+IE9uIDA5LzE3LzIwMjAgMTE6MTkgUE0sIFRob21hcyBqYW1lcyB3cm90ZToNCj4gSEkg
TWFyY3VzLA0KPiB0aGFua3MuIGFuZCBpcyB0aGUgc291cmNlIGNvZGUgb2Ygc3RtMzIgIGFuZCBj
cGxkICBhdmFpYWJsZT8NCj4NCj4gQ2hlY2sgb3V0Og0KPg0KPiBodHRwczovL2dpdGh1Yi5jb20v
RXR0dXNSZXNlYXJjaC91c3JwLWZpcm13YXJlDQo+DQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1
c1Jlc2VhcmNoL21ldGEtc3RtMzINCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18NCj4gt6K8/sjLOiBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzLWJvdW5jZXNAbGlzdHMuZXR0
dXMuY29tPjxtYWlsdG86dXNycC11c2Vycy1ib3VuY2VzQGxpc3RzLmV0dHVzLmNvbT4gtPqx7SBN
YXJjdXMgRC4gTGVlY2ggdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
PjxtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQo+ILeiy83KsbzkOiAyMDIwxOo5
1MIxN8jVIDIzOjI2DQo+IMrVvP7IyzogdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208bWFpbHRv
OnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+
PG1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NCj4g1vfM4jogUmU6IFtVU1JQLXVz
ZXJzXSB3aGF0IGlzIHRoZSBUUE0gdXNlZCBmb3IgTjMxMA0KPg0KPiBPbiAwOS8xNy8yMDIwIDA4
OjQxIEFNLCBUaG9tYXMgamFtZXMgdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+IEhpLA0KPiBpIGxl
YXJuZWQgdGhhdCBOMzEwIGhhdmUgdGhlIHZlcnNpb24gd2l0aCBvciB3aXRob3V0IFRQTS4gaSB3
YW50IHRvIGtub3cgbW9yZSBhYm91dCBpdC4gd2hhdCBpcyB0aGUgVFBNIHVzZWQgZm9yPw0KPg0K
PiBOb3RoaW5nIGFzIGZhciBhcyBJIGtub3ctLWl0J3MgYXZhaWxhYmxlIHRvIGJlIHVzZWQgZm9y
IGN1c3RvbSBhcHBsaWNhdGlvbnMuDQo+DQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0DQo+IFVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1h
bi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQ0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QN
ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxt
YW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20NCg==

--_000_HK0PR03MB509139332C32BE52B24792CA9D380HK0PR03MB5091apcp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi Marcus,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
we may will modify the source code. but i don't know how to deal with the s=
ource code in github tree. as I know stm32 source tree should be some windo=
ws ide project. so we think if there is a built image that will help to ver=
ify the building is correct. and
 we need the building method if you can provide. i think the building metho=
d is more important.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>=B7=A2=BC=FE=C8=CB:</b> USRP-us=
ers &lt;usrp-users-bounces@lists.ettus.com&gt; =B4=FA=B1=ED Marcus M=A8=B9l=
ler via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2020=C4=EA9=D4=C222=C8=D5 20:51<br>
<b>=CA=D5=BC=FE=C8=CB:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.=
ettus.com&gt;<br>
<b>=D6=F7=CC=E2:</b> Re: [USRP-users] =BB=D8=B8=B4: =BB=D8=B8=B4: what is t=
he TPM used for N310</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Hi James,<br>
<br>
re:stm32 image:<br>
<br>
um, if you want to modify the source code, binaries won't help you. If<br>
there's nothing you want to modify, you don't need to flash, either.<br>
<br>
Since these images are nearly impossible to break, and non-trivial to<br>
flash without dedicated programmers/connectors, what's the use case for<br>
wanting binaries?<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
On 20.09.20 14:49, Thomas james via USRP-users wrote:<br>
&gt; Hi Marcus,<br>
&gt; is there compiled stm32 images and its update method available.<br>
&gt; ________________________________<br>
&gt; =B7=A2=BC=FE=C8=CB: Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;<br=
>
&gt; =B7=A2=CB=CD=CA=B1=BC=E4: 2020=C4=EA9=D4=C219=C8=D5 10:02<br>
&gt; =CA=D5=BC=FE=C8=CB: Thomas james &lt;james_ttfun@hotmail.com&gt;; usrp=
-users@lists.ettus.com &lt;USRP-users@lists.ettus.com&gt;<br>
&gt; =D6=F7=CC=E2: Re: =BB=D8=B8=B4: [USRP-users] what is the TPM used for =
N310<br>
&gt;<br>
&gt; On 09/17/2020 11:19 PM, Thomas james wrote:<br>
&gt; HI Marcus,<br>
&gt; thanks. and is the source code of stm32&nbsp; and cpld&nbsp; avaiable?=
<br>
&gt;<br>
&gt; Check out:<br>
&gt;<br>
&gt; <a href=3D"https://github.com/EttusResearch/usrp-firmware">https://git=
hub.com/EttusResearch/usrp-firmware</a><br>
&gt;<br>
&gt; <a href=3D"https://github.com/EttusResearch/meta-stm32">https://github=
.com/EttusResearch/meta-stm32</a><br>
&gt;<br>
&gt;<br>
&gt; ________________________________<br>
&gt; =B7=A2=BC=FE=C8=CB: USRP-users &lt;usrp-users-bounces@lists.ettus.com&=
gt;&lt;mailto:usrp-users-bounces@lists.ettus.com&gt; =B4=FA=B1=ED Marcus D.=
 Leech via USRP-users &lt;usrp-users@lists.ettus.com&gt;&lt;mailto:usrp-use=
rs@lists.ettus.com&gt;<br>
&gt; =B7=A2=CB=CD=CA=B1=BC=E4: 2020=C4=EA9=D4=C217=C8=D5 23:26<br>
&gt; =CA=D5=BC=FE=C8=CB: usrp-users@lists.ettus.com&lt;mailto:usrp-users@li=
sts.ettus.com&gt; &lt;usrp-users@lists.ettus.com&gt;&lt;mailto:usrp-users@l=
ists.ettus.com&gt;<br>
&gt; =D6=F7=CC=E2: Re: [USRP-users] what is the TPM used for N310<br>
&gt;<br>
&gt; On 09/17/2020 08:41 AM, Thomas james via USRP-users wrote:<br>
&gt; Hi,<br>
&gt; i learned that N310 have the version with or without TPM. i want to kn=
ow more about it. what is the TPM used for?<br>
&gt;<br>
&gt; Nothing as far as I know--it's available to be used for custom applica=
tions.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; USRP-users@lists.ettus.com<br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><br>
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

--_000_HK0PR03MB509139332C32BE52B24792CA9D380HK0PR03MB5091apcp_--


--===============8223775263627837830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8223775263627837830==--

