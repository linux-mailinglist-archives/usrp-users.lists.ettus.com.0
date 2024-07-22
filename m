Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B900938C17
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 11:31:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 76EBF385406
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 05:31:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721640693; bh=Ld1uUHGarzGYAwq3ozpVDgD9lR7b8+sCn9VYEQ66wbE=;
	h=Date:From:To:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cU8NQ4v+4QfzIgx4PSOTj6kweeYkXIeWTf0Fl81xHmCbbMSdvKUb0c+8QcPlUqAvo
	 VXhz/7x9FXnfoHZCTljPUwuZzrcii+X4NjsjIkuJLE9p18uDp4pN4FKh7BC0xznTsj
	 dlyaKTXdH+h8YyJp/orX9l2Uyg/vXnKfT14eA+IyawekEiKPGq0Dsu5pS+H0a2RsNB
	 kni9obtp9IDy6DMINEe5WoPNPsFEtVNLLNUjVD1+a5swEHAFrQMRkNZToXh6a1I0qt
	 oSBzqIc1gEk5e+H1DdJpgwxfg6C9Wfs9WpDJXQy5T86rdagRFAbNfklCOd5pdzPYOk
	 cX5w63rgIbYMw==
Received: from openairinterface.org (openairinterface.org [137.74.50.85])
	by mm2.emwd.com (Postfix) with ESMTPS id 98660385344
	for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 05:31:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=openairinterface.org header.i=@openairinterface.org header.b="QrPx/VsI";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=openairinterface.org; s=default; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=wJtSS0bobU3gtpiwhH4Kb+e/h6i2Y57Pp4yhJ8u6r70=; b=QrPx/VsIrW0EcaA1oqOPZWjJ5x
	7kD92hSlfXyNoiaDYovZebaCLLFuWlS2RWgnNxyjLKiBGMsgHMBD1d4otYl9z+qRKY2VoM5AGiNKz
	aCS5QQLAVNsss3H91IBiG63joRWqVLccGcAbWkdwXMaU89/FKBxUTuORIe2Zu77hnkZI=;
Received: from cust-east-par-46-193-97-98.cust.wifirst.net ([46.193.97.98]:34542 helo=roai)
	by serveur.frast3.ex2.cloud with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.97.1)
	(envelope-from <robert.schmidt@openairinterface.org>)
	id 1sVpNk-00000001Yjl-0xSz;
	Mon, 22 Jul 2024 11:31:00 +0200
Date: Mon, 22 Jul 2024 11:30:57 +0200
From: Robert Schmidt <robert.schmidt@openairinterface.org>
To: Martin Braun <martin.braun@ettus.com>
Message-ID: <vhhmjuf7bwgjuzyue2yap5l2pu2gv3yjwayo5ldaylhxgzd7pa@pzgs744n4vfm>
References: <PH0PR01MB6620BD29E83DF9073330E747DAAF2@PH0PR01MB6620.prod.exchangelabs.com>
 <CAFOi1A467a9bN29QJDQp-yKn_NWJN2-9+RX80p-tNJc_Sztg0A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFOi1A467a9bN29QJDQp-yKn_NWJN2-9+RX80p-tNJc_Sztg0A@mail.gmail.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - serveur.frast3.ex2.cloud
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - openairinterface.org
X-Get-Message-Sender-Via: serveur.frast3.ex2.cloud: authenticated_id: robert.schmidt@openairinterface.org
X-Authenticated-Sender: serveur.frast3.ex2.cloud: robert.schmidt@openairinterface.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Message-ID-Hash: PVNP37MGHEVWDWTP2FTYLSJ5ADZ7ZCHC
X-Message-ID-Hash: PVNP37MGHEVWDWTP2FTYLSJ5ADZ7ZCHC
X-MailFrom: robert.schmidt@openairinterface.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Natanzi, Milad" <snatanzi@wpi.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Connecting Multiple USRP N310 to a Computer via SFP-enabled Switch for OAI 5G Setup
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PVNP37MGHEVWDWTP2FTYLSJ5ADZ7ZCHC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkkgY2FuIGFkZCB0aGF0IHdlIHVzZSBzd2l0Y2hlcyBxdWl0ZSBhIGJpdCBmb3IgdGhl
IE9BSSBDSSB0ZXN0aW5nLCBidXQNCndpdGggZmliZXIgY2FibGluZyAoSSB0aGluayAyNUcgYW5k
IDEwMEcpLiBJIGNvdWxkIGltYWdpbmUgdGhhdCB3aXRoDQoxMEcsIHlvdSBtaWdodCBydW4gaW50
byBpc3N1ZXMgYmVjYXVzZSB5b3UgY2Fubm90IGhhdmUgdGhhdCBtYW55DQpwYXJhbGxlbCBzdHJl
YW1zIChidXQgdGhhdCdzIG1vcmUgb2YgYSBndWVzcykuIEFueXdheSwgaXQgc2VlbXMgdG8gd29y
aw0KZmluZSBmb3IgdXMuDQoNClJvYmVydA0KDQpPbiAyNC0wNy0yMiwgTWFydGluIEJyYXVuIHdy
b3RlOg0KPiBIaSwNCj4gDQo+IHllcywgeW91IGNhbiwgYnV0IGtlZXAgaW4gbWluZCB0aGF0IHN3
aXRjaGVzIGNhbiBiZSBhZGRpdGlvbmFsIGNhdXNlcyBmb3INCj4gcGFja2V0IGxvc3MvcmVvcmRl
cmluZy9vdGhlciB0aGluZ3MsIGFuZCBwb3RlbnRpYWxseSBhZGQgbGF0ZW5jeS4gRm9yIDEwDQo+
IEdiRSB5b3UgdHlwaWNhbGx5IGhhdmUgYSBtYW5hZ2VkIHN3aXRjaCwgYW5kIHlvdSBzaG91bGQg
YmUgYWJsZSB0bw0KPiBjb25maWd1cmUgaXQgKGUuZy4sIHNvbWUgc3dpdGNoZXMgaGF2ZSBhIGNv
bmZpZ3VyYXRpb24gZm9yIG1haW50YWluaW5nDQo+IHBhY2tldCBvcmRlcikuIEJ1dCBpbiBwcmlu
Y2lwbGUsIHRoZXJlJ3Mgbm90aGluZyB3cm9uZyB3aXRoIHVzaW5nIGEgc3dpdGNoLg0KPiANCj4g
LS1NDQo+IA0KPiBPbiBTdW4sIEp1bCAyMSwgMjAyNCBhdCA2OjA54oCvQU0gTmF0YW56aSwgTWls
YWQgPHNuYXRhbnppQHdwaS5lZHU+IHdyb3RlOg0KPiANCj4gPiBIZWxsbywNCj4gPg0KPiA+DQo+
ID4gSSBhbSBzZXR0aW5nIHVwIGEgUkFOIHdpdGggT0FJIGdOQiBpbnN0YWxsYXRpb24gYW5kIGhh
dmUgdGhlIGZvbGxvd2luZw0KPiA+IGhhcmR3YXJlIGNvbmZpZ3VyYXRpb246DQo+ID4NCj4gPg0K
PiA+DQo+ID4gICAgLSAqMyBVU1JQIE4zMTAgZGV2aWNlcyogd2l0aCAxMEcgU0ZQIHBvcnRzDQo+
ID4gICAgLSAqMSBjb21wdXRlciogZm9yIFJBTiAoT0FJIGdOQiBpbnN0YWxsYXRpb24pDQo+ID4g
ICAgLSAqMSBjb21wdXRlciogZm9yIE9BSSBjb3JlDQo+ID4gICAgLSAqMSBEZWxsIHNlcnZlciog
Zm9yIHRyYWluaW5nIGFuZCBvdGhlciB0YXNrIGFuZCBJIHdvdWxkIGxpa2UgdG8NCj4gPiAgICBj
b25uZWN0IHRoaXMgc2VydmVyIGFsc28gdG8gdGhlIFJBTiBhbmQgQ29yZSwgYWxsIGVxdWlwcGVk
IHdpdGggMTBHIFNGUA0KPiA+ICAgIHBvcnRzDQo+ID4NCj4gPiBJIHdhbnQgdG8gY29ubmVjdCBh
bGwgdGhyZWUgVVNSUCBOMzEwIGRldmljZXMgdG8gYSBzaW5nbGUgY29tcHV0ZXIsIHdoaWNoDQo+
ID4gd2lsbCBhY3QgYXMgdGhlIFJBTi4gTXkgcXVlc3Rpb24gaXM6DQo+ID4NCj4gPiAqQ2FuIEkg
dXNlIGFuIFNGUC1lbmFibGVkIHN3aXRjaCB0byBjb25uZWN0IGFsbCB0aGVzZSBkZXZpY2VzPyoN
Cj4gPg0KPiA+ICpTZXR1cCBEZXRhaWxzOioNCj4gPg0KPiA+ICAgIC0gQWxsIFVTUlAgZGV2aWNl
cyBjb25uZWN0IHRvIHRoZSBTRlAtZW5hYmxlZCBzd2l0Y2guDQo+ID4gICAgLSBUaGUgc3dpdGNo
IHRoZW4gY29ubmVjdHMgdG8gdGhlIHR3byBQQ3MgKFJBTiBhbmQgQ29yZSkgYW5kIHRoZQ0KPiA+
ICAgIHNlcnZlciwgYWxsIHZpYSBTRlAgMTBHIHBvcnRzLg0KPiA+DQo+ID4gSSB3b3VsZCBhcHBy
ZWNpYXRlIGFueSBndWlkYW5jZSBvbiB0aGUgZmVhc2liaWxpdHkgb2YgdGhpcyBzZXR1cCBhbmQg
YW55DQo+ID4gcmVjb21tZW5kYXRpb25zIG9uIHNwZWNpZmljIHN3aXRjaCBtb2RlbHMgb3IgYWRk
aXRpb25hbCBjb25zaWRlcmF0aW9ucyBJDQo+ID4gc2hvdWxkIGtlZXAgaW4gbWluZA0KPiA+DQo+
ID4NCj4gPiBUaGFua3MuDQo+ID4NCj4gPiAgICBNaWxhZA0KPiA+DQo+ID4NCj4gPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IFVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+ID4gVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0K
PiA+DQoNCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
Cj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20N
Cj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20K
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbQo=
