Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F60B64169C
	for <lists+usrp-users@lfdr.de>; Sat,  3 Dec 2022 13:17:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A6ED384209
	for <lists+usrp-users@lfdr.de>; Sat,  3 Dec 2022 07:17:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670069857; bh=gi/I6B9BOviHr3hB3i7kMt/CW5lfOwQL+mZaBTweWwI=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=d02upHF5CnWcx7cpa0YnMCFsroWydQ+HMcq6vUQUmeo952KIRiMXU5k2vxbAx1ypq
	 elD3QmwcnwRZbroZJGGOojHCdSLBaZkyt8stBigxkhLSAKMcfpUPmf6xu/Kw01UxsW
	 f4NGwo3zeOpqM+bkh5771dks1SK4Icsy9trKsVbkrJH06LmnhN2m6hwcplDVzMPtql
	 vIJTXrthMI9pT2oXsRArIV4PbSE7xK/nHgyfCXX6kpkYyMhatwK0ji607+kv+LpyOJ
	 B9IJqPJaXPeFi4PdaFnPQHIJ9OMf1Wl4yZqxOyliWf7lxYoDxQ4WPS7sRIqyAX8U5n
	 wv+ijRrR637Ow==
Received: from dd41508.kasserver.com (dd41508.kasserver.com [85.13.141.232])
	by mm2.emwd.com (Postfix) with ESMTPS id 0F1573841C5
	for <usrp-users@lists.ettus.com>; Sat,  3 Dec 2022 07:17:29 -0500 (EST)
Received: from smtpclient.apple (p4ff2a5fd.dip0.t-ipconnect.de [79.242.165.253])
	by dd41508.kasserver.com (Postfix) with ESMTPSA id 6A8DF7000245;
	Sat,  3 Dec 2022 13:17:28 +0100 (CET)
From: Julian Arnold <julian@elitecoding.org>
Mime-Version: 1.0 (1.0)
Date: Sat, 3 Dec 2022 13:17:17 +0100
Message-Id: <9C7C4AEC-0DBE-441A-A362-6A4FB86275A5@elitecoding.org>
References: <402248771.612001329.1670064040664.JavaMail.zimbra@free.fr>
In-Reply-To: <402248771.612001329.1670064040664.JavaMail.zimbra@free.fr>
To: friedtj@free.fr
X-Mailer: iPhone Mail (20B101)
Message-ID-Hash: BFORMBEI3QLJ5XDUZB6J7SHMDZ3ET4W7
X-Message-ID-Hash: BFORMBEI3QLJ5XDUZB6J7SHMDZ3ET4W7
X-MailFrom: julian@elitecoding.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 gain fluctuation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BFORMBEI3QLJ5XDUZB6J7SHMDZ3ET4W7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Sk0sDQoNCmNvdWxkIHlvdSB0cnkgZGlzYWJsaW5nIElRIGltYmFsYW5jZSBjb3JyZWN0aW9uIGFu
ZCBzZWUgaWYgdGhpcyBtYWtlcyBhbnkgZGlmZmVyZW5jZT8gSWYgSSByZW1lbWJlciBjb3JyZWN0
bHksIGl0IGNhbiBzb21ldGltZXMgbGVhZCB0byB3ZWlyZCBiZWhhdmlvciBsaWtlIHRoaXMuDQoN
CkNoZWVycywNCkp1bGlhbg0KDQo+IEFtIDAzLjEyLjIwMjIgdW0gMTE6NDEgc2NocmllYiBmcmll
ZHRqQGZyZWUuZnI6DQo+IA0KPiDvu79JIGhhdmUgYW4gYXdrd2FyZCBwcm9ibGVtIHdob3NlIGNh
dXNlIEkgYW0gdW5hYmxlIHRvIHBpbnBvaW50LiANCj4gVGhlIHR3byBjaGFubmVscyBUWC9SWCBB
IGFuZCBUWC9SWCBCIG9mIGEgQjIxMCBhcmUgY29ubmVjdGVkIGZvciBjaGFubmVsIDEgdG8gYW4g
YW50ZW5uYSArIExOQSwgDQo+IGFuZCBmb3IgY2hhbm5lbCAyIHRvIGFuIEZQR0EgR1BJTyAtPiBN
aW5pY2lyY3VpdHMgWkZTQy0yLTQgc3BsaXR0ZXIgLT4gNiBkQiBhdHRlbnVhdG9yIHdoaWNoIA0K
PiBzaG91bGQgcHJlc2VudCBhIDUwIG9obSBpbXBlZGFuY2UgdG8gdGhlIFRYL1JYIEIgaW5wdXQu
IEFuIG9zY2lsbG9zY29wZSBzaG93cyB0aGUgb3V0cHV0IHRvIGJlIA0KPiBjb25zdGFudCBhbXBs
aXR1ZGUgc2lnbmFsIGdlbmVyYXRlZCBieSB0aGUgR1BJTyBhdCA2MCBtViBhbXBsaXR1ZGUgKGFm
dGVyIGZpbHRlcmluZywgc3BsaXR0aW5nIGFuZA0KPiBhdHRlbnVhdGlvbikgb3IgLTE0IGRCbSBv
biBhIDUwIG9obSBsb2FkIHdoaWNoIHNob3VsZCBiZSB3aXRoaW4gdGhlIHNhZmUgbGltaXRzIG9m
IGlucHV0IHBvd2VyIG9mIA0KPiB0aGUgQUQ5MzYxIEkgYmVsaWV2ZS4gDQo+IFRoZSBhdHRhY2hl
ZCBzY3JpcHQgaXMgdXNlZCBmb3IgcmVjb3JkaW5nIHRoZSByZWZlcmVuY2Ugc2lnbmFsIHRyYW5z
bWl0dGVkIG9uIGEgNzAgTUh6IGNhcnJpZXIgDQo+IGJ5IHRoZSBGUEdBIG9uIGNoYW5uZWwgQiBh
bmQgdGhlIHJlY2VpdmVkIHNpZ25hbCBvbiBjaGFubmVsIEEuIFRoZSBzZXR0aW5ncyBmb3IgYm90
aCBjaGFubmVscyANCj4gaGF2ZSBiZWVuIGdlbmVyYXRlZCBieSBHTlUgUmFkaW8gMy44IGFuZCBt
YW51YWxseSB0dW5lZCwgZm9yIGUuZyBieSBleHBsaWNpdGx5IHByZXZlbnRpbmcgQUdDLiANCj4g
MiBzZWNvbmRzIG9mIGRhdGEgYXJlIHJlY29yZGVkIGFzIGludGVybGVhdmVkIGNvbXBsZXggc2hv
cnQgYW5kIGRpc3BsYXllZCBpbiBHTlUgd2l0aCANCj4gZj1mb3BlbignZmljaGllci5iaW4nKTtk
PWZyZWFkKGYsaW5mLCdpbnQxNicpO2Q9ZCgxOjI6ZW5kKStqKmQoMjoyOmVuZCk7ZDE9ZCgxOjI6
ZW5kKTtkMj1kKDI6MjplbmQpO3Bsb3QoWzE6M2U1XS81ZTYscmVhbChkMSgxOjNlNSkpKTtmY2xv
c2UoZikNCj4gDQo+IE9uIHRoZSBsZWZ0IHNpZGUgaXMgdGhlIGRpc3BsYXkgZnJvbSBjaGFubmVs
IEEgY29ubmVjdGVkIHRvIHRoZSBhbnRlbm5hL0xOQSB3aGljaCBpcyBzdGFibGUgYW5kDQo+IHJl
cHJvZHVjaWJsZS4gT24gdGhlIHJpZ2h0IHNpZGUgaXMgdGhlIGRpc3BsYXkgZnJvbSBjaGFubmVs
IEIgd2hpY2ggcHJlc2VudHMgYW1wbGl0dWRlIGZsdWN0dWF0aW9ucw0KPiB3aGljaCBhcmUgbm90
IHJlcHJvZHVjaWJsZSBmcm9tIG9uZSBydW4gdG8gYW5vdGhlci4gVGhyZWUgcmVjb3JkcyBoYXZl
IGJlZW4gYW5hbHl6ZWQgZnJvbSB0b3AgdG8NCj4gYm90dG9tIGFuZCBoYXJkbHkgZXZlciBpcyB0
aGUgc2FtZSBwYXR0ZXJuIHJlcGVhdGVkLiBJICp0aGluayogSSBub3RpY2VkIHRoYXQgaWYgSSBj
aGFuZ2UgdGhlIENIIEINCj4gZ2FpbiBzZXR0aW5ncyBpbiB0aGUgc2NyaXB0IGFuZCBsYXVuY2gg
aXQsIHRoZSBmaXJzdCB0aW1lIEkgaGF2ZSBhIGZsYXQgZ2FpbiBhbmQgdGhlbiBhbGwgc3Vic2Vx
dWVudA0KPiBsYXVuY2hlcyB3aXRoIHRoZSBzYW1lIGdhaW4gc2V0dGluZyBsZWFkIHRvIHRoaXMg
dmFyeWluZyBnYWluIHBhdHRlcm4uDQo+IA0KPiBBbnkgaWRlYSBvZiB3aGF0IHRoZSBjYXVzZSBt
aWdodCBiZT8gVGhpcyBpcyBhbGwgcnVubmluZyB3aXRoIEJvb3N0XzEwNzcwMDsgVUhEXzMuMTUu
MC4wLTAgb24gYQ0KPiBSYXNwYmVycnkgUGkgNCAoYnVpbHQgZnJvbSBCdWlsZHJvb3QpDQo+IA0K
PiBUaGFua3MsIEpNDQo+IDxiMjEwX2ZpbGVfc2hvcnQucHk+DQo+IDxCMjEwLnBuZz4NCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
