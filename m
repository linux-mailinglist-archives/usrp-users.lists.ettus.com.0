Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE0F5AE2EB
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 10:37:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C20913818B9
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 04:37:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662453473; bh=SQD31qwnc4D7UEiyAm/+Ly8gL/U+5UsFjwOciW3Ruh8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fdeyiUwkkAY6h/9ofpqC76jVbG6rQqPZ4HKI1W/J2wI2WLYEWokoVaQ0qswJ9dZRh
	 ReHgdwdNiwp0/QbQ9j9E1qAFF22+fzXLc1ymjClz/b3ybSnArynlQNG4XiV1QTx8vp
	 cMA5t/HP6auwRHIuSccKYFXRW/B0Z87uoerPG7CxMOi6223HflH3CGrAJFcruNIvcc
	 6w3DnBe7y2xAzIuZJd1cGWycKE5ztstV4uxxATABz6+aRUhnvvG7mH3gZgC7FKEeUS
	 3sZU1j3DqzSShMf9lgDDSlBB1ay+Vx5VGe5A1WguQfApJLmIIQ+Lc5/5Ylj/PP1oPv
	 VL+GqvxxrZ5kw==
Received: from mx-out.tlen.pl (mx-out.tlen.pl [193.222.135.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E570380EDC
	for <usrp-users@lists.ettus.com>; Tue,  6 Sep 2022 04:37:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=o2.pl header.i=@o2.pl header.b="T6bu9K19";
	dkim-atps=neutral
Received: (wp-smtpd smtp.tlen.pl 23117 invoked from network); 6 Sep 2022 10:36:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
          t=1662453418; bh=/Oh2/89+ugxagBMCoZAVj8XiMznIbBPQEwankUepQCY=;
          h=Subject:To:From;
          b=T6bu9K19Ujiv3SKZ588z6NckCHHSWnMz9jmhHxXhC3qGSX1mbVkA0Ux4luXvxXXM+
           CjOW3cdvCJmk8NtY4HXB5ScuJBoYUedzGPrF+HDlAKITfAUps3GQlMpKf3XZH0XGyk
           Do/FyNZNOB5gxwkQNUaUWB8cMDWb3DA9A9t1upVg=
Received: from user-5-173-156-204.play-internet.pl (HELO [192.168.2.104]) (perper@o2.pl@[5.173.156.204])
          (envelope-sender <perper@o2.pl>)
          by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <usrp-users@lists.ettus.com>; 6 Sep 2022 10:36:58 +0200
Message-ID: <b82354ee-8c70-4c2c-c667-832027419d38@o2.pl>
Date: Tue, 6 Sep 2022 10:36:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <a5UBBoRJzi8SUxyWksl9yEQwogaeWxQVRWE4VTDYQk@lists.ettus.com>
From: Piotr Krysik <perper@o2.pl>
In-Reply-To: <a5UBBoRJzi8SUxyWksl9yEQwogaeWxQVRWE4VTDYQk@lists.ettus.com>
X-WP-MailID: b8d69265975ea86cab7fd1f6e816b004
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000001 [AYJg]                               
Message-ID-Hash: UYMPEVDM2TE3E7QCCWOOI6SAD4YN7XU4
X-Message-ID-Hash: UYMPEVDM2TE3E7QCCWOOI6SAD4YN7XU4
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK 21.11
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UYMPEVDM2TE3E7QCCWOOI6SAD4YN7XU4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGVsbG8gTWVuaSwNCg0KSSBkb24ndCBrbm93IHdoYXQgaXMgZXhhY3QgcmVhc29uIG9mIHRoZSB1
bmRlZmluZWQgcmVmZXJlbmNlcyB0aGF0IHlvdSANCnNlZS4gQnV0IEkgY2FuIHRlbGwgeW91IHRo
YXQgSSdtIGFibGUgdG8gY29ycmVjdGx5IGNvbXBpbGUgVUhELTQuMi4wLjEgDQp3aXRoIG1hbnVh
bGx5IGNvbXBpbGVkIERQREsgMjEuMTEgb24gVWJ1bnR1IDIwLjA0IGFuZCAyMi4wNC4NCg0KQXMg
YWx3YXlzIHdpdGggRFBESyB0aGVyZSdzIHRvbiBvZiBkaWZmaWN1bHRpZXMgb24gdGhlIHdheSB0
byBzZXQgaXQgdXAgDQphbmQgdGhpcyBpcyBvbmx5IG9uZSBvZiB0aGVtLiBZb3UgaGF2ZSB0byB0
cnkgaGFyZGVyLg0KDQpBcyBhIHNpZGUgbm90ZTogSSdtIGFibGUgdG8gbWFrZSBpdCB3b3JrIHdp
dGggWDQxMS4gSSd2ZSB0cmllZCBkaWZmZXJlbnQgDQpuZXR3b3JrIGNhcmRzIGFuZCBjb21wdXRl
cnMsIGJ1dCBJJ20gbm90IHNhdGlzZmllZCB3aXRoIHRoZSByZXN1bHQuIA0KQmFzaWNhbGx5IGl0
IHdvcmtzIHdvcnNlIHRoYW4gd2l0aCBhIHJlZ3VsYXIgbmV0d29yayBjYXJkIGRyaXZlciBhbmQg
SSANCmdldCBjb25zdGFudCBsb3NzZXMgb2YgcGFja2V0cyBmb3Igc3RyZWFtaW5nIHJhdGVzIGFi
b3ZlIH4yNU1TL3MgKGZvciANCjEwR2IgbGluaykuIFByb2JhYmx5IEkgc3RpbGwgZGlkbid0IHRy
eSBoYXJkIGVub3VnaCA7KS4NCg0KQmVzdCBSZWdhcmRzLA0KUGlvdHIgS3J5c2lrDQoNClcgZG5p
dSAyOC4wNy4yMDIyIG/CoDE0OjA1LCBtZW5pLmRhbGlAc2FicmEtbWljcm9zeXN0ZW1zLmNvbSBw
aXN6ZToNCj4NCj4gSGkNCj4NCj4gSSB1c2UgVUhEIHZlcnNpb24gNC4yIGFuZCB4NDEwLg0KPg0K
PiBTbyBmYXIsIEkgaGF2ZSBiZWVuIHVzaW5nIERQREsgdmVyc2lvbiAxOC4xMS4gTm93IEknbSB0
cnlpbmcgdG8gDQo+IHVwZ3JhZGUgdGhlIERQREsgdG8gdmVyc2lvbiAyMS4xMS4NCj4NCj4gSSBo
YXZlIHN1Y2Nlc3NmdWxseSBpbnN0YWxsZWQgdGhlIERQREssIEhvd2V2ZXIsIHdoZW4gSSBjb21w
aWxlIHRoZSANCj4gVUhEIGxpYnJhcnkgSSBnZXQgdGhlIGZvbGxvd2luZyBlcnJvcjoNCj4NCj4g
NTMlXSBMaW5raW5nIENYWCBleGVjdXRhYmxlIHRlc3RfcHBzX2lucHV0DQo+DQo+IC91c3IvYmlu
L2xkOiAuLi9saWIvbGlidWhkLnNvLjQuMi4wOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBsY29y
ZV9jb25maWcnDQo+DQo+IC91c3IvYmluL2xkOiAuLi9saWIvbGlidWhkLnNvLjQuMi4wOiB1bmRl
ZmluZWQgcmVmZXJlbmNlIHRvIA0KPiBgcnRlX2VhbF9nZXRfY29uZmlndXJhdGlvbicNCj4NCj4g
Y29sbGVjdDI6IGVycm9yOiBsZCByZXR1cm5lZCAxIGV4aXQgc3RhdHVzDQo+DQo+IERvZXMgYW55
b25lIGhhdmUgYSBjbHVlIHdoYXQgY291bGQgYmUgY2F1c2luZyB0aGUgZXJyb3I/DQo+DQo+IEJl
c3QgcmVnYXJkcw0KPg0KPiBNZW5pDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
