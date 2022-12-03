Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFD66416B3
	for <lists+usrp-users@lfdr.de>; Sat,  3 Dec 2022 13:29:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8CB23384438
	for <lists+usrp-users@lfdr.de>; Sat,  3 Dec 2022 07:29:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670070572; bh=X3UqYfYiiZJz7DJ9MZ1bDs/GuU90Wr7H+7xIlhBwM+c=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=TYH6FEBWwhsmAZRr/AH3Jplpk5nuxd/jvM+s2deYtIBZR8gLuURkNKow6kZa5rZFy
	 3fBMxQ9HQGPZ4dUbtlkQwcwjKfnrodN41lKCfIITrAHbF6fBUMxEuGou34v/D0cl9i
	 KBhtGk6TVH6XJYc1RPs4S8V/ZSyU6CYB8OrVRz2xG0McmfV0hrpL//m3RzdBPAvi1T
	 POeLHu/GHtHJLaXgfmA9SMWmEaZbxv93Vtx8TGsJAoLAo44EPcaw78rGo9Faan4a+L
	 bnGSKxQ/UvTTTesD/aUK9a9JAfGLZSvW3XG5hdxLk3D9rOAQ64inoxV6kzZ3LYfCuL
	 MtEnjWSa4++1g==
Received: from smtp6-g21.free.fr (smtp6-g21.free.fr [212.27.42.6])
	by mm2.emwd.com (Postfix) with ESMTPS id 122373841EB
	for <usrp-users@lists.ettus.com>; Sat,  3 Dec 2022 07:29:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=free.fr header.i=@free.fr header.b="YwhFAniz";
	dkim-atps=neutral
Received: from zimbra-e1-03.priv.proxad.net (unknown [172.20.243.151])
	by smtp6-g21.free.fr (Postfix) with ESMTP id D524C78034D;
	Sat,  3 Dec 2022 13:29:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1670070562;
	bh=90uhk+45WsDHmRIBrC+wPHSOKFA/NpK1kdwYxYec6eI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=YwhFAnizYZ0/5E15GlurbT+Kbp2kkfY4tdTntqLuhYiUg3ps5VAhznDCAzDagYyNJ
	 I/R8X9E9yHKmDkF8ug+tuR7Sws3TZ715hWH+U6cpwdVig8c9et4KXciecAcisQc0Db
	 pVcbyMLstVPsyszEB5rhdfC1/6yzZdvjd7+OZkt8qyfJUI6tHSEKHD9mS5BDWTe0Tq
	 YHJpDGxGSV2Z/QkAp82ZmRJnI0AyGvrV9WgEgrkwpq7KoMJTjnpcUQIAsIz61INF1u
	 FEqeUpq2vHkL8uEC/wFN67OrJF/EmdArqncSL3bKoGA9oTYB04Ie8Byd6qwkjJyiSq
	 obY8wFY7oHTNw==
Date: Sat, 3 Dec 2022 13:29:22 +0100 (CET)
From: friedtj@free.fr
To: Julian Arnold <julian@elitecoding.org>
Message-ID: <172619582.612593383.1670070562639.JavaMail.zimbra@free.fr>
In-Reply-To: <9C7C4AEC-0DBE-441A-A362-6A4FB86275A5@elitecoding.org>
References: <402248771.612001329.1670064040664.JavaMail.zimbra@free.fr> <9C7C4AEC-0DBE-441A-A362-6A4FB86275A5@elitecoding.org>
MIME-Version: 1.0
X-Originating-IP: [194.167.45.227]
X-Mailer: Zimbra 9.0.0_GA_1337 (ZimbraWebClient - FF105 (Linux)/9.0.0_GA_1337)
Thread-Topic: B210 gain fluctuation
Thread-Index: 9BH2rqmPygh3BXLH3tBD3qUWmCInRA==
Message-ID-Hash: NYKIOLEYIZ3DD6UGRXVRIJMPUNK2QR47
X-Message-ID-Hash: NYKIOLEYIZ3DD6UGRXVRIJMPUNK2QR47
X-MailFrom: friedtj@free.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 gain fluctuation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NYKIOLEYIZ3DD6UGRXVRIJMPUNK2QR47/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGF0IHdhcyBpdCEgDQpUaGFuayB5b3UgdmVyeSBtdWNoLiBGb3IgdGhlIHJlY29yZCwgYWRk
aW5nDQogICAgICAgIHNlbGYudWhkX3VzcnBfc291cmNlXzAuc2V0X2F1dG9faXFfYmFsYW5jZShG
YWxzZSwgMCkNCiAgICAgICAgc2VsZi51aGRfdXNycF9zb3VyY2VfMC5zZXRfYXV0b19pcV9iYWxh
bmNlKEZhbHNlLCAxKQ0Kc29sdmVzIHRoZSBwcm9ibGVtLg0KDQpUaGFuayB5b3UsIEpNDQoNCi0t
LS0tIE1haWwgb3JpZ2luYWwgLS0tLS0NCkRlOiAiSnVsaWFuIEFybm9sZCIgPGp1bGlhbkBlbGl0
ZWNvZGluZy5vcmc+DQrDgDogImZyaWVkdGoiIDxmcmllZHRqQGZyZWUuZnI+DQpDYzogInVzcnAt
dXNlcnMiIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NCkVudm95w6k6IFNhbWVkaSAzIETD
qWNlbWJyZSAyMDIyIDEzOjE3OjE3DQpPYmpldDogUmU6IFtVU1JQLXVzZXJzXSBCMjEwIGdhaW4g
Zmx1Y3R1YXRpb24NCg0KSk0sDQoNCmNvdWxkIHlvdSB0cnkgZGlzYWJsaW5nIElRIGltYmFsYW5j
ZSBjb3JyZWN0aW9uIGFuZCBzZWUgaWYgdGhpcyBtYWtlcyBhbnkgZGlmZmVyZW5jZT8gSWYgSSBy
ZW1lbWJlciBjb3JyZWN0bHksIGl0IGNhbiBzb21ldGltZXMgbGVhZCB0byB3ZWlyZCBiZWhhdmlv
ciBsaWtlIHRoaXMuDQoNCkNoZWVycywNCkp1bGlhbg0KDQo+IEFtIDAzLjEyLjIwMjIgdW0gMTE6
NDEgc2NocmllYiBmcmllZHRqQGZyZWUuZnI6DQo+IA0KPiDvu79JIGhhdmUgYW4gYXdrd2FyZCBw
cm9ibGVtIHdob3NlIGNhdXNlIEkgYW0gdW5hYmxlIHRvIHBpbnBvaW50LiANCj4gVGhlIHR3byBj
aGFubmVscyBUWC9SWCBBIGFuZCBUWC9SWCBCIG9mIGEgQjIxMCBhcmUgY29ubmVjdGVkIGZvciBj
aGFubmVsIDEgdG8gYW4gYW50ZW5uYSArIExOQSwgDQo+IGFuZCBmb3IgY2hhbm5lbCAyIHRvIGFu
IEZQR0EgR1BJTyAtPiBNaW5pY2lyY3VpdHMgWkZTQy0yLTQgc3BsaXR0ZXIgLT4gNiBkQiBhdHRl
bnVhdG9yIHdoaWNoIA0KPiBzaG91bGQgcHJlc2VudCBhIDUwIG9obSBpbXBlZGFuY2UgdG8gdGhl
IFRYL1JYIEIgaW5wdXQuIEFuIG9zY2lsbG9zY29wZSBzaG93cyB0aGUgb3V0cHV0IHRvIGJlIA0K
PiBjb25zdGFudCBhbXBsaXR1ZGUgc2lnbmFsIGdlbmVyYXRlZCBieSB0aGUgR1BJTyBhdCA2MCBt
ViBhbXBsaXR1ZGUgKGFmdGVyIGZpbHRlcmluZywgc3BsaXR0aW5nIGFuZA0KPiBhdHRlbnVhdGlv
bikgb3IgLTE0IGRCbSBvbiBhIDUwIG9obSBsb2FkIHdoaWNoIHNob3VsZCBiZSB3aXRoaW4gdGhl
IHNhZmUgbGltaXRzIG9mIGlucHV0IHBvd2VyIG9mIA0KPiB0aGUgQUQ5MzYxIEkgYmVsaWV2ZS4g
DQo+IFRoZSBhdHRhY2hlZCBzY3JpcHQgaXMgdXNlZCBmb3IgcmVjb3JkaW5nIHRoZSByZWZlcmVu
Y2Ugc2lnbmFsIHRyYW5zbWl0dGVkIG9uIGEgNzAgTUh6IGNhcnJpZXIgDQo+IGJ5IHRoZSBGUEdB
IG9uIGNoYW5uZWwgQiBhbmQgdGhlIHJlY2VpdmVkIHNpZ25hbCBvbiBjaGFubmVsIEEuIFRoZSBz
ZXR0aW5ncyBmb3IgYm90aCBjaGFubmVscyANCj4gaGF2ZSBiZWVuIGdlbmVyYXRlZCBieSBHTlUg
UmFkaW8gMy44IGFuZCBtYW51YWxseSB0dW5lZCwgZm9yIGUuZyBieSBleHBsaWNpdGx5IHByZXZl
bnRpbmcgQUdDLiANCj4gMiBzZWNvbmRzIG9mIGRhdGEgYXJlIHJlY29yZGVkIGFzIGludGVybGVh
dmVkIGNvbXBsZXggc2hvcnQgYW5kIGRpc3BsYXllZCBpbiBHTlUgd2l0aCANCj4gZj1mb3Blbign
ZmljaGllci5iaW4nKTtkPWZyZWFkKGYsaW5mLCdpbnQxNicpO2Q9ZCgxOjI6ZW5kKStqKmQoMjoy
OmVuZCk7ZDE9ZCgxOjI6ZW5kKTtkMj1kKDI6MjplbmQpO3Bsb3QoWzE6M2U1XS81ZTYscmVhbChk
MSgxOjNlNSkpKTtmY2xvc2UoZikNCj4gDQo+IE9uIHRoZSBsZWZ0IHNpZGUgaXMgdGhlIGRpc3Bs
YXkgZnJvbSBjaGFubmVsIEEgY29ubmVjdGVkIHRvIHRoZSBhbnRlbm5hL0xOQSB3aGljaCBpcyBz
dGFibGUgYW5kDQo+IHJlcHJvZHVjaWJsZS4gT24gdGhlIHJpZ2h0IHNpZGUgaXMgdGhlIGRpc3Bs
YXkgZnJvbSBjaGFubmVsIEIgd2hpY2ggcHJlc2VudHMgYW1wbGl0dWRlIGZsdWN0dWF0aW9ucw0K
PiB3aGljaCBhcmUgbm90IHJlcHJvZHVjaWJsZSBmcm9tIG9uZSBydW4gdG8gYW5vdGhlci4gVGhy
ZWUgcmVjb3JkcyBoYXZlIGJlZW4gYW5hbHl6ZWQgZnJvbSB0b3AgdG8NCj4gYm90dG9tIGFuZCBo
YXJkbHkgZXZlciBpcyB0aGUgc2FtZSBwYXR0ZXJuIHJlcGVhdGVkLiBJICp0aGluayogSSBub3Rp
Y2VkIHRoYXQgaWYgSSBjaGFuZ2UgdGhlIENIIEINCj4gZ2FpbiBzZXR0aW5ncyBpbiB0aGUgc2Ny
aXB0IGFuZCBsYXVuY2ggaXQsIHRoZSBmaXJzdCB0aW1lIEkgaGF2ZSBhIGZsYXQgZ2FpbiBhbmQg
dGhlbiBhbGwgc3Vic2VxdWVudA0KPiBsYXVuY2hlcyB3aXRoIHRoZSBzYW1lIGdhaW4gc2V0dGlu
ZyBsZWFkIHRvIHRoaXMgdmFyeWluZyBnYWluIHBhdHRlcm4uDQo+IA0KPiBBbnkgaWRlYSBvZiB3
aGF0IHRoZSBjYXVzZSBtaWdodCBiZT8gVGhpcyBpcyBhbGwgcnVubmluZyB3aXRoIEJvb3N0XzEw
NzcwMDsgVUhEXzMuMTUuMC4wLTAgb24gYQ0KPiBSYXNwYmVycnkgUGkgNCAoYnVpbHQgZnJvbSBC
dWlsZHJvb3QpDQo+IA0KPiBUaGFua3MsIEpNDQo+IDxiMjEwX2ZpbGVfc2hvcnQucHk+DQo+IDxC
MjEwLnBuZz4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tCg==
