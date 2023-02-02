Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 150246873E4
	for <lists+usrp-users@lfdr.de>; Thu,  2 Feb 2023 04:36:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BB248381008
	for <lists+usrp-users@lfdr.de>; Wed,  1 Feb 2023 22:36:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675308970; bh=1qcilgrJnjo25zwfp9tvw7HzsctBBvSSpwotzR1LAgc=;
	h=To:In-Reply-To:References:From:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=J/JyZJlg3xV64O5mTVpyQQgPJCAzD3SpFgJ5JxWv/opoe7bbAN4DbEsICLRoWpBdS
	 prfq34yu2FVogs+JEFMFmFuSM6GYFrrmrIquAtO3JriJKj4SN8xGm4Wxy9U9x+gDcb
	 sd/ins0xaqK+u532Sq2m7OKjomdtwsZ2VYSHQPv+mKFMp4wJC+jHikeTXrXHjr5V9v
	 Cyi9LwxnYdYE0YWY6dgBDZiAwhWVwWoqgS6TVIRfCfrXwQFv4JCLMCZpq8yqUn2+lD
	 aoEO8s32RYp1ndWwkP+8AjYgkP2+wxr5TcBI/wtlcG9iAkm1VFf6z6PJ0hudlWXkhV
	 8ZSHCwGBDBq5g==
Received: from nsstlmta10p.bpe.bigpond.com (nsstlmta10p.bpe.bigpond.com [203.38.21.10])
	by mm2.emwd.com (Postfix) with ESMTPS id C515D380C05
	for <usrp-users@lists.ettus.com>; Wed,  1 Feb 2023 22:36:04 -0500 (EST)
Received: from smtp.telstra.com ([10.10.24.4])
          by nsstlfep10p-svc.bpe.nexus.telstra.com.au with ESMTP
          id <20230202033601.CXJU6349.nsstlfep10p-svc.bpe.nexus.telstra.com.au@smtp.telstra.com>;
          Thu, 2 Feb 2023 14:36:01 +1100
X-RG-Spam: Unknown
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvhedrudefjedgieegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuuffpveftpgfvgffnuffvtfetpdfqfgfvnecuuegrihhlohhuthemucegtddtnecunecujfgurhepvffkjghfufggtgfgfghihfffsehtqhertddtreejnecuhfhrohhmpeffteggkfffucetuefgnfcuoegurghvvggprggsvghlsegsihhgphhonhgurdgtohhmqeenucggtffrrghtthgvrhhnpeefjeetleeiudeujeeffefhvedvkeduteevleefffeihfejgeegffetfedttddtteenucfkphepuddtrddutddrvdegrdegpddurdduheejrdeikedrfedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheplgdutddruddtrddvgedrgegnpdhinhgvthepuddtrddutddrvdegrdegpdhmrghilhhfrhhomhepuggrvhgvpggrsggvlhessghighhpohhnugdrtghomhdpnhgspghrtghpthhtohepvddprhgtphhtthhopehprghttghhvhhonhgsrhgruhhnsehgmhgrihhlrdgtohhmpdhrtghpthhtohepuhhsrhhpqdhushgvrhhssehlihhsthhsrdgvthhtuhhsrdgtohhmpdfovfetjfhoshhtpehnshhsthhlrhhgudduphdqshhvtg
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
X-RG-VS-CLASS: clean
Received: from [10.10.24.4] (10.10.24.4) by smtp.telstra.com (5.8.812)
        id 6392A87C0A4B0DF6; Thu, 2 Feb 2023 14:36:01 +1100
Received: from [1.157.68.30]
	by email.telstra.com with HTTP; Thu, 2 Feb 2023 14:36:00 +1100
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
Message-ID: <5e4d8c75.11f8be.18610320e40.Webtop.89@bigpond.com>
In-Reply-To: <dae02337-4167-54fd-3180-f671d49c5428@gmail.com>
References: <2e1b9d2c.edb5d.18600b67c54.Webtop.89@bigpond.com>
  <02a6562d-20c6-e318-9dda-500e72bc2609@gmail.com>
  <178e23df.107e3f.186078c00d6.Webtop.89@bigpond.com>
 <dae02337-4167-54fd-3180-f671d49c5428@gmail.com>
MIME-Version: 1.0
User-Agent: OWM Mail 3
X-SID: 89
X-Originating-IP: [1.157.68.30]
From: DAVID ABEL <dave_abel@bigpond.com>
Date: Thu, 2 Feb 2023 14:36:01 +1100 (AEDT)
Message-ID-Hash: 2C7ZFEVXB5TAQUB7NVL2B6QOGSEZ2F6R
X-Message-ID-Hash: 2C7ZFEVXB5TAQUB7NVL2B6QOGSEZ2F6R
X-MailFrom: dave_abel@bigpond.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200mini spurs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2C7ZFEVXB5TAQUB7NVL2B6QOGSEZ2F6R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"; delsp="no"
Content-Transfer-Encoding: base64

VGhlIHNwdXIgc3BhY2luZyBhbmQgYW1wbGl0dWRlIGFyZW4ndCBhZmZlY3RlZCBieSB0aGUgc2Ft
cGxlIHJhdGUgbm9yIGJ5IA0KdGhlIGJhc2ViYW5kIGZyZXF1ZW5jeS4NCg0KSSBkaWQgZGlzY292
ZXIgdGhhdCBvZmZzZXR0aW5nIHRoZSBMTyBmcm9tIHRoZSBkZXNpcmVkIGNhcnJpZXIgbGVhZHMg
dG8gDQptYW55IHNwdXJzIHdlbGwgYXdheSBmcm9tIHRoZSBjYXJyaWVyLiAgRm9yIGV4YW1wbGUs
IGEgY2FycmllciBhdCAxNzUgDQpNSHogYW5kIGFuIG9mZnNldCBvZiArMjAgTUh6IGdpdmVzIHNw
dXJzIGF0IDE1NSBNSHosIDE5NSBNSHosIDM3MCBNSHouDQoNClRoZSBjbG9zZS1pbiBzcHVycyBh
cmUgcHJlc2VudCAoc2FtZSBvZmZzZXQsIHNhbWUgYW1wbGl0dWRlKSB3aGVuIHRoZSBMTyANCmlz
IG5vdCBvZmZzZXQuDQoNCkkgc3VzcGVjdCB0aGF0IHRoZSBzcHVycyBhcmUgaW4gZmFjdCBhcnRl
ZmFjdHMgZnJvbSBteSBzcGVjdHJ1bSANCmFuYWx5c2VyLiAgSSdsbCBmaW5kIGEgd2F5IG9mIGxv
b2tpbmcgYXQgdGhlIHNpZ25hbCBzb21lIG90aGVyIHdheS4NCg0KVGhhbmtzIGZvciB5b3VyIHRy
b3VibGUuDQoNCkRhdmUgQWJlbA0KDQotLS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLS0NCkZy
b206ICJNYXJjdXMgRC4gTGVlY2giIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4NClRvOiAiREFW
SUQgQUJFTCIgPGRhdmVfYWJlbEBiaWdwb25kLmNvbT4NClNlbnQ6IFdlZG5lc2RheSwgMSBGZWIs
IDIwMjMgQXQgNTozMyBBTQ0KU3ViamVjdDogUmU6IFtVU1JQLXVzZXJzXSBSZTogQjIwMG1pbmkg
c3B1cnMNCg0KT24gMzEvMDEvMjAyMyAwNjoxNywgREFWSUQgQUJFTCB3cm90ZToNCj4NCj4gTmVp
dGhlciB0aGUgc3B1ciBhbXBsaXR1ZGUgKGluIGRCYykgbm9yIHRoZSBvZmZzZXQgYXJlIGFmZmVj
dGVkIGJ5IHRoZSANCj4gYmFzZWJhbmQgYW1wbGl0dWRlIG5vciBieSB0aGUgY2FycmllciBhbXBs
aXR1ZGUuLg0KPg0KPiBUaGUgQUQ5MzY0IHNwZWNzIGRvIGluY2x1ZGUgY2FycmllciBsZWFrYWdl
IG9mIC01MCBkQmMuwqAgVGhlIG9mZnNldCANCj4gKHRocm91Z2ggdWhkLnR1bmVfcmVxdWVzdChm
cmVxLCAxNTAwMDAwMCkpIHBsYWNlcyB0aGlzIGxlYWthZ2Ugd2VsbCANCj4gYXdheSBmcm9tIHRo
ZSBjYXJyaWVyLsKgIFRoaXMgdHJpY2sgaXMgZWZmZWN0aXZlIGFzIHJlbW92aW5nIHRoZSBvZmZz
ZXQgDQo+IHNob3dzIHVwIHRoZSBsZWFrYWdlIGNsb3NlIHRvIHRoZSBjYXJyaWVyLiBJIGNhbid0
IHNlZSBhbnl0aGluZyBpbiB0aGUgDQo+IHNwZWNzIHN1Z2dlc3RpbmcgdGhlIHNwdXJzIEkgYW0g
c2VlaW5nLg0KPg0KPiBUaGFua3MNCj4NCj4gRGF2ZSBBYmVsDQpUaGUgb3RoZXIgdGhpbmcgdG8g
Y2hlY2sgaXMgd2hldGhlciB0aGUgc2FtcGxlIHJhdGUgYWZmZWN0cyB0aGUgc3B1cnMgDQpwcmVz
ZW5jZSBhbmQgc3BhY2luZy4uLg0KDQoNCj4NCj4NCj4gLS0tLS0tIE9yaWdpbmFsIE1lc3NhZ2Ug
LS0tLS0tDQo+IEZyb206ICJNYXJjdXMgRC4gTGVlY2giIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNv
bT4NCj4gVG86IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFNlbnQ6IE1vbmRheSwgMzAg
SmFuLCAyMDIzIEF0IDI6MzggUE0NCj4gU3ViamVjdDogW1VTUlAtdXNlcnNdIFJlOiBCMjAwbWlu
aSBzcHVycw0KPg0KPiBPbiAyOS8wMS8yMDIzIDIyOjI2LCBEQVZJRCBBQkVMIHdyb3RlOg0KPj4g
SSBoYXZlIGEgQjIwMG1pbmkuwqAgQXMgYSB0ZXN0IG9mIHNwZWN0cmFsIHB1cml0eSwgSSBnZW5l
cmF0ZWQgYSBDVyANCj4+IHNpZ25hbCBhdCAxNzUuMDAyNSBNSHogdXNpbmcgR251cmFkaW8sIEkg
c2VlIHNwdXJzIGF0ICsvLSAxMzIuNSBrSHosIA0KPj4gYXQgLTUwIGRCYzsgd2l0aCBvZmZzZXRz
IG9mIDI2NSBrSHrCoCBhdCAtNjAgZEJjOyBhbmQgYW5vdGhlciBhdCA3MDIuNSANCj4+IEtoemF0
IC02MCBkQmMuDQo+Pg0KPj4gSXMgdGhpcyBleHBlY3RlZCBiZWhhdmlvciBmb3IgdGhlIEIyMDAg
bWluaSwgcGxlYXNlPw0KPj4NCj4+IFNvbWUgZnVydGhlciBkZXRhaWw6IHRoZSBHbnVyYWRpbyBm
bG93Z3JhcGggaXMgYSBzaWduYWwgc291cmNlIA0KPj4gZ2VuZXJhdGluZyBhIHNpbmUgd2F2ZWZv
cm0gYXQgMjUwMCBIeiwgZm9sbG93ZWQgYnkgYSBsb3dwYXNzIGZpbHRlci7CoCANCj4+IFRoZSBV
U1JQIHNpbmsgaGFzIGEgZnJlcXVlbmN5IG9mIDE3NSBNSHogd2l0aCBhbiBMTyBvZmZzZXQgb2Yg
MTUgDQo+PiBNSHouwqAgU2FtcGxlIHJhdGUgaXMgMzg0IGtIei7CoCBUaGUgc3B1cnMgYXJlIHBy
ZXNlbnQgb24gb3RoZXIgY2FycmllciANCj4+IGZyZXF1ZW5jaWVzIHdpdGggdGhlIHNhbWUgb2Zm
c2V0cy4NCj4+DQo+PiBUaGFua3MNCj4+DQo+PiBEYXZlIEFiZWwgVksxREpBDQo+Pg0KPj4NCj4g
VGhhdCdzIGFsbW9zdCBjZXJ0YWlubHkgImluIHNwZWMiIGZvciB0aGUgQUQ5MzYzIGNoaXAgdGhh
dCBkb2VzIGFsbCANCj4gdGhlICJoZWF2eSBsaWZ0aW5nIiBvbiB0aGUgUkYgc2lkZSBvZiB0aGlu
Z3MuDQo+DQo+IERvZXMgdGhlIGJhc2ViYW5kIGFtcGxpdHVkZSBhZmZlY3QgeW91ciBvYnNlcnZl
ZCBzcHVyIHBlcmZvcm1hbmNlPyANCj4gVGhhdCBpcywgaWYgeW91ciBzaWduYWwgc291cmNlIGhh
cyBhbg0KPiDCoCBhbXBsaXR1ZGUgdGhhdCBpcyBzb21ld2hhdC1sZXNzIHRoYW4gMS4wIChsaWtl
IDAuODUpIGRvIHRoZSBzcHVycyANCj4gcmVkdWNlIGNvcnJlc3BvbmRpbmdseT8NCj4NCj4NCj4N
Cj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4g
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4g
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbQ0KPg0KPg0KPg0KDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbQo=
