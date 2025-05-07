Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED50AAD359
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 04:36:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DFE813861D3
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 22:36:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746585361; bh=yT1I1bJMrtADSckuLDY3z8xtBvWCUyy5DEThf/yJhgk=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=yaOBkEDdK8sF8cq1UP/ZOhpYvLuV3yoHSeifs29dy3V/YivJVzFDPDINNvrzfrHtn
	 QFQYajLf4JOonPvjGhwO9KtMfUSJJQ79Rm+sdldMfuVOHjInVxHgm4n2w5+wzRwBVj
	 ElIhHqTuHiyTR8+HRM8SuyOVsvJlC72nOIKrc22/nkLx14G52+wrMG43FpmkxXH1oN
	 eNviQkNWPlff+wrphiZMAlkL2LzdCT7f0ha6FJDf+gX/Ez4fSGmVgpelZcI0wFTpdx
	 S71efbpIuxYjX+cJdLS7LE35sxF6QOoPF6AwA2B66R4zVukOkKAWxfZZPugK1e35QU
	 Zv2ZMkh8EuW2A==
Received: from mail.appliedradar.com (static-71-117-165-76.prvdri.fios.verizon.net [71.117.165.76])
	by mm2.emwd.com (Postfix) with ESMTPS id 3488C386188
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 22:35:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=appliedradar.com header.i=@appliedradar.com header.b="JNxCulPM";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=appliedradar.com;
	s=default; t=1746585303;
	bh=ULsb4VreVQLen+zW07BXqKSYDkSt7f9DhrgVwiIzGJk=;
	h=From:Subject:Date:References:Cc:In-Reply-To:To:From;
	b=JNxCulPMgl/CrvaPgm65tbJ11eTtEQtdUZAIVwmLIMibFfalqb/SC00O9oTsXE4Jp
	 wyqlybQzSry4tYSDFGHjHdCjN98R7wNh3DDnNQqyPXWoRKTJs3llJvwKhzAdbc0g9w
	 veo/Kq7YujJhI8D4O1+Hc1fu1d6kOao0xlWiqM/3NOGidBBQZmPjyQPNlG8DN37q0D
	 K1uXsTKfqljFhOvZNhn6gdHSuvzFdE987kTqApfHPijqksSU6+qCWnIfT3sJoPim+n
	 BE+L+SQQqGm4QXWI0WMBFGY4fiaEJJWAg9NTtfoc0lH+DQjA3Y0HWSVnHAtzl1gW01
	 lZIeXiU7zJK/w==
Received: from smtpclient.apple (unknown [72.92.244.239])
	by mail.appliedradar.com (Postfix) with ESMTPSA id 750FC83C19;
	Tue,  6 May 2025 22:35:03 -0400 (EDT)
From: Bill weedon <whw@appliedradar.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 6 May 2025 22:34:52 -0400
Message-Id: <D1A440D8-65FB-4610-B903-2AD85EE5CB09@appliedradar.com>
References: <02c3a25a-764e-4ed2-9189-863c8498468e@gmail.com>
In-Reply-To: <02c3a25a-764e-4ed2-9189-863c8498468e@gmail.com>
To: "Leech Marcus D." <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (22E252)
Message-ID-Hash: TZ5BIVR5TD4ZDTMUNBUZPGNRQHHGSFZK
X-Message-ID-Hash: TZ5BIVR5TD4ZDTMUNBUZPGNRQHHGSFZK
X-MailFrom: whw@appliedradar.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205mini Discovery Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TZ5BIVR5TD4ZDTMUNBUZPGNRQHHGSFZK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U2VlbXMgd2XigJlyZSBvbiB0aGUgcmlnaHQgdHJhY2sgaGVyZS4gJDE4MCBwcm9ncmFtbWluZyBj
YWJsZSBhbmQgSSBhbHNvIGZvdW5kIEZYMyBzb3VyY2UgY29kZSBvbiBnaXRodWIuIE5lZWQgdG8g
ZmlndXJlIG91dCB3aGF0IGNvbXBpbGVyIHRvIHVzZSB0byBjb21waWxlIHRoZSBGWDIgY29kZSBv
ciB1cGxvYWQgdGhlIHJhdyBiaW5hcnkgdXNpbmcgdGhlICQxODAgcHJvZ3JhbW1pbmcgY2FibGUu
IA0KDQpJIGFsc28gY3JlYXRlZCBhbiBOSSBhY2NvdW50IGFuZCBzZW50IGluIGEgc2VydmljZSBy
ZXF1ZXN0LiBUaGV5IHF1b3RlZCAkNDUwIHRvIGZpeC9yZXBsYWNlIHRoZSBCMjA1bWluaS4gU2Vl
bXMgbGlrZSBhIGdvb2QgZGVhbC4gQnV0IHNpbmNlIEkgaGF2ZSB0d28gYm9hcmRzIHdpdGggdGhl
IHNhbWUgaXNzdWUgdGhhdHMgJDkwMC4gDQoNClRoYW5rcywNCkJpbGwgV2VlZG9uDQoNCk9uIE1h
eSA2LCAyMDI1LCBhdCA3OjQ14oCvUE0sIE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2b25icmF1bkBn
bWFpbC5jb20+IHdyb3RlOg0KDQrvu79PbiAwNi8wNS8yMDI1IDE4OjU2LCBCaWxsIHdlZWRvbiB3
cm90ZToNCj4gSSBzdXNwZWN0IHRoZSBkZXZpY2Ugd2FzIHdpcGVkIGFzIHlvdSBzdGF0ZWQuIElz
IHRoZXJlIGEgcmVtZWR5IHRvIGJyaW5nIGl0IGJhY2sgdG8gZmFjdG9yeSBzdGFuZGFyZHM/IFRo
ZXJlIGlzIGEgbWljdG9yIGNvbm5lY3RvciB3aXRoIEZYMyBKVEFHIGJ1dCByZXF1aXJlcyBtYXRp
bmcgY29ubmVjdG9yLCBwcm9ncmFtbWVyIGFuZCBiaW5hcnkgaW1hZ2UuDQo+IFRoYW5rcywNCj4g
QmlsbCBXZWVkb24NClRoZXJlIGlzIHRoaXM6DQoNCmh0dHBzOi8vd3d3LmV0dHVzLmNvbS9hbGwt
cHJvZHVjdHMvanRhZy1meDMtY2FibGUtMjQvDQoNClRoZXJlJ3MgYSBib290bG9hZGVyIGltYWdl
IGhlcmU6DQoNCi91c3Ivc2hhcmUvdWhkL2ltYWdlcy91c3JwX2IyMDBfYmwuaW1nDQoNCkkgZG9u
J3Qga25vdyBpZiB0aGF0IGltYWdlIGNhbiBiZSBwcm9ncmFtbWVkIG92ZXIgSlRBRywgb3Igc29t
ZSBvdGhlciBpbWFnZSBpcyByZXF1aXJlZC4gIFRoZXJlIGlzIGEgdXRpbGl0eToNCg0KL3Vzci9s
aWIvdWhkL3V0aWxzL2IyeHhfZngzX3V0aWxzDQoNClRoYXQgaXMgdXNlZCAqd2hlbiB0aGUgZGV2
aWNlIGFjdHVhbGx5IGFwcGVhcnMgb24gVVNCKi4gICBJbiB5b3VyIGNhc2UsICJzaWRlIGxvYWRp
bmciIHRocm91Z2ggSlRBRy0tLT5GWDMgaXMgbm90IHNvbWV0aGluZyBJDQogIGhhdmUgYSBwcm9j
ZWR1cmUgZm9yLCBidXQsIGxpa2UgSSBzYWlkLCBJJ20gdHJ5aW5nIHRvIGZpbmQgb3V0Lg0KDQoN
Cj4gDQo+IE9uIE1heSA2LCAyMDI1LCBhdCA1OjQz4oCvUE0sIE1hcmN1cyBELiBMZWVjaCA8cGF0
Y2h2b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4g77u/T24gMDYvMDUvMjAyNSAxNjo1
NSwgd2h3QGFwcGxpZWRyYWRhci5jb20gd3JvdGU6DQo+PiBXZSB0cmllZCBwbHVnZ2luZyB0aGUg
dW5pdCBpbnRvIHNldmVyYWwgUEPigJlzIGFuZCBsYXB0b3BzLCBhbmQgaXQgc2VlbXMgdGhlIGRl
dmljZSBpcyBub3QgZW51bWVyYXRpbmcuIEkgYW0gc3RhcnRpbmcgdG8gdGhpbmsgdGhlIEZYMyBF
RVBST00gaXMgY29ycnVwdC4gSXMgdGhlcmUgYSB3YXkgZm9yIHRoZSB1c2VyIHRvIHJlc2V0IHRo
ZSBGWDMgZmlybXdhcmUgdG8gZmFjdG9yeSBzZXR0aW5nPyBJcyBhIHByb2dyYW1taW5nIGNhYmxl
LCBGWDMgaW1hZ2UsIGFuZCBwcm9ncmFtbWVyIGF2YWlsYWJsZT8NCj4+IA0KPj4gDQo+IEknbSB0
cnlpbmcgdG8gZmluZCB0aGF0IG91dC4gIElmIGl0IHdvbid0IGVudW1lcmF0ZSwgdGhlcmUncyBu
byB3YXkgdG8gZ2l2ZSB0aGUgRlgzIGEgZmFjdG9yeS1mcmVzaCBib290IGltYWdlIG92ZXIgVVNC
Lg0KPiANCj4gVGhpcyBoYXMgaGFwcGVuZWQgc28gcmFyZWx5IGluIHRoZSAxNSAgeWVhcnMgSSd2
ZSBzdXBwb3J0ZWQgVVNSUCBkZXZpY2VzIHRoYXQgSSBkb24ndCBoYXZlIGEgcHJvY2VkdXJlIGNv
bW1pdHRlZCB0byBtZW1vcnkuDQo+IA0KPiBJcyBpdCBwb3NzaWJsZSB0aGF0IHRoaXMgZGV2aWNl
IHdhcyAid2lwZWQiIGFjY29yZGluZyB0byBtaWxpdGFyeSBzZWN1cml0eSBzdGFuZGFyZHMgZm9y
IHN1Y2ggZGV2aWNlcz8NCj4gDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20NClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11
c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJz
LWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
