Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B47575CEBB
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jul 2023 18:23:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9DBF1383FCC
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jul 2023 12:23:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689956624; bh=r3Lj0Skyv2IMyXiMtn5Jh+AIG8wVH/lAKdK68xSrkN0=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Wod9oHRxNBb/LgcJ3OFa9jFo/TlFnoPpVRKd47f4EOo1TP8VXBsCe5WaAK5tAuU/e
	 ElNet6oLGLMCe0xk9+x4Dky3+wqUL81PxsBPghTxo0W1WLaSRoxyxEeYtAoPceqcA5
	 LlFiim8jwbB46nI/RwV9nUPj3caVGVyDAf4H6IF4Gj5lAPbw4H/ynQOjEeT3YF/XRn
	 /g2XbdfDtXIYKWXIcst7s+m8mOEUIGeJsHldcCWLqZU6jIrEE5jFVmWKuSYubDI4jQ
	 W36VdW37G+T/w4PRt5WogEn7+5lYE4UYyPoS6MjH8MizvEPSek+I2Ls1EdTX2vuC4k
	 tEW7CVXKTEdvA==
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by mm2.emwd.com (Postfix) with ESMTPS id 8589E38369F
	for <usrp-users@lists.ettus.com>; Fri, 21 Jul 2023 12:23:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=free.fr header.i=@free.fr header.b="g6iKf0sO";
	dkim-atps=neutral
Received: from zimbra-e1-03.priv.proxad.net (unknown [172.20.243.151])
	by smtp3-g21.free.fr (Postfix) with ESMTP id 1D44513F8C4;
	Fri, 21 Jul 2023 18:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1689956585;
	bh=a4gQnroeJpNpq6gN5KVz5H+8Cls7DwO+c+S0juawRKU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=g6iKf0sORVoIyfEUKhN56Q5KbbGh2GUnmr83DkoSj2vkRObQujdd8ofegwLS0qyuO
	 32GgCX9SJWgLdUCAH632kJqjOgdSWcK5hl7dcQvyrLD6wM1Hne4bDzoNDV8uidrwNs
	 pLFdx7ikZlnO9yurIz9tv8C238HX+Cc8XrYBs4snGtT3bo6Cd+lUtr7ztM4d8ss1dF
	 0pRsmyKRalr1J1KU2CE0yc0QVy02pE2seVAp6FnWC64ywPqqAQ6LpkOfMJnW5LFGgA
	 ZYaSe1wupHRV9hOtsjct9S4IBbYPHhjWMa8sUWan4kJNMwrmgM/8judy+2sLr/SUAg
	 8WHx38YT8XpFg==
Date: Fri, 21 Jul 2023 18:23:04 +0200 (CEST)
From: friedtj@free.fr
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <13950069.118622780.1689956584907.JavaMail.zimbra@free.fr>
In-Reply-To: <2c25e478-831a-94b0-95f4-51d0835a4e7d@gmail.com>
References: <253020606.65756797.1689346704238.JavaMail.zimbra@free.fr> <7b567967-a9f7-6223-3120-a13a4ce6d9cf@gmail.com> <1665021956.105780246.1689833084445.JavaMail.zimbra@free.fr> <d8b3e016-3255-7757-92ff-8a0edbdcc3f2@gmail.com> <1697525267.109285969.1689864097045.JavaMail.zimbra@free.fr> <2c25e478-831a-94b0-95f4-51d0835a4e7d@gmail.com>
MIME-Version: 1.0
X-Originating-IP: [194.167.45.25]
X-Mailer: Zimbra 9.0.0_GA_1337 (ZimbraWebClient - FF102 (Linux)/9.0.0_GA_1337)
Thread-Topic: X310 1-PPS synchronization
Thread-Index: LdTwoLFKQE5aco/xlkbYY/Z1SVdTYQ==
Message-ID-Hash: NIJABX7RS2C3MT2ACMQ73ECCQC5R6DCA
X-Message-ID-Hash: NIJABX7RS2C3MT2ACMQ73ECCQC5R6DCA
X-MailFrom: friedtj@free.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 1-PPS synchronization
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NIJABX7RS2C3MT2ACMQ73ECCQC5R6DCA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WW91IGFyZSBvZiBjb3Vyc2UgY29ycmVjdCBhZ2FpbjogSSB3YXMgbG9va2luZyBhdCB0aGUgd3Jv
bmcgLnB5IGZpbGUgbm90IGdlbmVyYXRlZCBieSBHUkMgYnV0IGFyY2hpdmVkIGVhcmxpZXIuIE5v
dyB0aGUgcG9zaXRpb25zIG9mIHRoZSAxUFBTIHJpc2luZyBlZGdlIGFyZSBhbHdheXMgYXQgdGhl
IHNhbWUgbG9jYXRpb24gd2l0aGluIGVhY2ggcmVjb3JkLCBtYWtpbmcgbWUgY29uZmlkZW50IHRo
ZSBJUSBhY3F1aXNpdGlvbiBhbmQgc3RyZWFtaW5nIGlzIHByb3Blcmx5IGFsaWduZWQgb24gdGhl
IFBQUyByaXNpbmcgZWRnZS4gSSBjYW4gbm93IGNvbmZpZGVudGx5IGFuYWx5emUgdGhlIExpbnV4
IGtlcm5lbCBzeW5jaHJvbmlzYXRpb24gdG8gUFRQLCB0cnVzdGluZyB0aGUgdGltZXN0YW1wIG9m
IHRoZSBlbmQgb2YgYWNxdWlzaXRpb24gaXMgcmVwcmVzZW50YXRpdmUgb2YgdGhlIFBQUythY3F1
aXNpdGlvbiBkdXJhdGlvbitMaW51eCB0aW1lciBvZmZzZXQuDQpUaGFua3MuDQoNCi0tLS0tIE1h
aWwgb3JpZ2luYWwgLS0tLS0NCkRlOiAiTWFyY3VzIEQuIExlZWNoIiA8cGF0Y2h2b25icmF1bkBn
bWFpbC5jb20+DQrDgDogImZyaWVkdGoiIDxmcmllZHRqQGZyZWUuZnI+DQpDYzogInVzcnAtdXNl
cnMiIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NCkVudm95w6k6IEpldWRpIDIwIEp1aWxs
ZXQgMjAyMyAxNzozMDo0NQ0KT2JqZXQ6IFJlOiBbVVNSUC11c2Vyc10gUmU6IFgzMTAgMS1QUFMg
c3luY2hyb25pemF0aW9uDQoNCk9uIDIwLzA3LzIwMjMgMTA6NDEsIGZyaWVkdGpAZnJlZS5mciB3
cm90ZToNCj4+IEkgZG9uJ3Qgc2VlIGEgc3RyZWFtaW5nIHRpbWUgc3BlY2lmaWVkIGluIHRoZSBn
ZW5lcmF0ZWQgY29kZSB0aGF0IHlvdQ0KPj4gc3VwcGxpZWQuDQo+IEkgdXNlZA0KPiAgICAgICAg
ICBzZWxmLmJsb2Nrc19oZWFkXzAgPSBibG9ja3MuaGVhZChnci5zaXplb2ZfZ3JfY29tcGxleCox
LCAoaW50KDYqc2FtcF9yYXRlKSkpDQo+IGFuZA0KPiAgICAgICAgICBzZWxmLmNvbm5lY3QoKHNl
bGYuYmxvY2tzX2hlYWRfMCwgMCksIChzZWxmLmJsb2Nrc19maWxlX3NpbmtfMCwgMCkpDQo+ICAg
ICAgICAgIHNlbGYuY29ubmVjdCgoc2VsZi5ibG9ja3NfaW50ZXJsZWF2ZV8wLCAwKSwgKHNlbGYu
YmxvY2tzX2hlYWRfMCwgMCkpDQo+IGFuZCBzaW5jZSBJIGludGVybGVhdmUgMiBjb21wbGV4IHN0
cmVhbXMgSSBleHBlY3QgNipzYW1wX3JhdGUgdG8gbGFzdCAzIHNlY29uZHMNCj4NCj4+IFRyeSBz
ZXR0aW5nIGEgIlN0YXJ0IFRpbWUiIGluIHlvdXIgVUhEIHNvdXJjZSBibG9jayBvZiBwZXJoYXBz
ICIyLjAiIC0tDQo+PiB0aGlzIHdpbGwgYXJyYW5nZSBmb3Igc3RyZWFtaW5nIHRvIGNvbW1lbmNl
IDIgc2Vjb25kcw0KPj4gYWZ0ZXIgaXQgcmVzZXRzIHRoZSB0aW1lc3RhbXAgY2xvY2suwqAgT3Ro
ZXJ3aXNlLCBzdHJlYW1pbmcgaXMgc3RhcnRlZA0KPj4gYXQgc29tZSByYW5kb20gdGltZS4NCj4g
T0sgd2lsbCB0cnkgdGhhdC4gVGhlIHNldHRpbmcgaW4gdGhlIFB5dGhvbiBzY3JpcHQgaXMgdGhl
IG9uZSBwcm92aWRlZCBieSBHUkMuDQo+IEluZGVlZCBhZGRpbmcgYXQgdGhlIGVuZCBvZiB0aGUg
X19pbml0X18oc2VsZikgZ2VuZXJhdGVkIGJ5IEdSQw0KPiAgICAgICAgICBjdXJyX2h3X3RpbWUg
PSBzZWxmLnVoZF91c3JwX3NvdXJjZV8xLmdldF90aW1lX2xhc3RfcHBzKCkNCj4gICAgICAgICAg
c2VsZi51aGRfdXNycF9zb3VyY2VfMS5zZXRfdGltZV9uZXh0X3BwcygoY3Vycl9od190aW1lKzEu
MCkpDQo+ICAgICAgICAgIHNlbGYudWhkX3VzcnBfc291cmNlXzEuc2V0X3N0YXJ0X3RpbWUoKGN1
cnJfaHdfdGltZSsxLjEpKQ0KPiBzZWVtcyB0byBkbyB0aGUgdHJpY2sgd2l0aCB0aGUgMXN0IFBQ
UyBlZGdlIGFsd2F5cyBhbGlnbmVkIHRvIHRoZSBzYW1lIHNhbXBsZSBpbmRleC4NCj4gVG9vIGJh
ZCBHUkMgZG9lcyBub3QgZ2VuZXJhdGUgdGhlIGFwcHJvcHJpYXRlIGNvZGU6IEkgY2Fubm90IHNl
ZSBhbnkgaW1wYWN0IHdoZW4NCj4gY2hhbmdpbmcgdGhlIFN0YXJ0IFRpbWUgKHNlY29uZHMpIG9m
IHRoZSBVSEQ6IFVTUlAgU291cmNlIGJsb2NrLg0KPg0KSG1tbSwgdXNpbmcgR1IgMy4xMC4xLjEs
IHNldHRpbmcgYSAic3RhcnQgdGltZSIgb2YgMS40IGVuZHMgdXAgDQpnZW5lcmF0aW5nIHRoaXMg
Y29kZSBpbiB0aGUgLnB5Og0KDQogwqDCoMKgwqDCoCBzZWxmLnVoZF91c3JwX3NvdXJjZV8wLnNl
dF9jZW50ZXJfZnJlcSgwLCAwKQ0KIMKgwqDCoMKgwqDCoMKgIHNlbGYudWhkX3VzcnBfc291cmNl
XzAuc2V0X2FudGVubmEoIlJYMiIsIDApDQogwqDCoMKgwqDCoMKgwqAgc2VsZi51aGRfdXNycF9z
b3VyY2VfMC5zZXRfZ2FpbigwLCAwKQ0KDQogwqDCoMKgwqDCoMKgwqAgc2VsZi51aGRfdXNycF9z
b3VyY2VfMC5zZXRfc3RhcnRfdGltZSh1aGQudGltZV9zcGVjKDEuNCkpDQogwqDCoMKgwqDCoMKg
wqAgc2VsZi5ibG9ja3NfbnVsbF9zaW5rXzAgPSBibG9ja3MubnVsbF9zaW5rKGdyLnNpemVvZl9n
cl9jb21wbGV4KjEpDQoNCj4+IEFsc28sIHJhdGhlciB0aGFuIGxvb2tpbmcgZm9yIHRoZSBQUFMg
ZWRnZSBpbiB0aGUgZGF0YSwgdGhlICJGaWxlIE1ldGENCj4+IFNpbmsiIGluY2x1ZGVzIG1ldGEt
ZGF0YSwgbGlrZSB0aW1lc3RhbXBzLWFzLXNlZW4tYnktdGhlLXJhZGlvLg0KPiBUaGUgUFBTIGVk
Z2Ugd2FzIGp1c3QgdG8gY2hlY2sgdGhlIGNvbnNpc3RlbmN5IG9mIHRoZSBkYXRlIGxhc3QgYWNj
ZXNzIGRhdGUNCj4gKHdoaWNoIHNlZW1zIGNvbnNpc3RlbnQgd2l0aCBteSBleHBlY3RhdGlvbikg
YW5kIHRoZSBwb3NpdGlvbiBvZiB0aGUgYWN0dWFsDQo+IGRhdGEgKHdoaWNoIEkgY2Fubm90IGZp
Z3VyZSBvdXQgYnkgYW5hbHl6aW5nIHRoZSBJUSBzdHJlYW0pLiBJIGRpZCBjaGVjayB0aGF0IHRo
ZQ0KPiBtZXRhIGRhdGEgYXJlIGNvbnNpc3RlbnQgKHdpdGggbXkgYWJvdmUgZXhhbXBsZSB0aGUg
ZGF0YSBzdGFydCBzdHJlYW1pbmcgYXQgMS4xIHMNCj4gb2YgdGhlIGludGVybmFsIHRpbWVyIG9m
IHRoZSBTRFIgc291cmNlKSBidXQgbXkgb2JqZWN0aXZlIGlzIHRoZSBjb21wYXJpc29uIHdpdGgN
Cj4gdGhlIHN5c3RlbSB0aW1lLCB3aGljaCBJIGFtIG5vdyBvbiBiZXR0ZXIgdHJhY2tzIHRvIGFj
aGlldmUgd2l0aCB0aGVzZSBpbnB1dHMuDQo+DQo+IFRoYW5rcy4NCj4NCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
