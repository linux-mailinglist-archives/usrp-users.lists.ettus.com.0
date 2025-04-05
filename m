Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBCCA7CB8A
	for <lists+usrp-users@lfdr.de>; Sat,  5 Apr 2025 20:48:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 564FD385A11
	for <lists+usrp-users@lfdr.de>; Sat,  5 Apr 2025 14:48:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743878903; bh=AMdfKMO1FtApofqC10har/+coF3GEw5YXTf9vfNIa50=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OY68ugWNfSndT4JyuEYDmpB2vmSp+k9w6JMnMYGXLDXgwEf1ea18ML2NYLJRD8EY7
	 Rxg1Ahbjydh20nej1CzL5Lx+kuFkahBaJDtj4r+ato5cg+NHyyYktHLwJcQSHqHoqb
	 SUzogmKvVJEbaVB8qwkSuxXT48tzZ0gFLdUr3darSbWXYQ7WdfFPdh7hN47d8oWjkz
	 8Rf5/1tFWLB0QeVOGocypXn0afhaNHjHm+HdbIlKh6zsOJoxjTQ4HlBiVd5zPmV3TC
	 JvSpRV5dfr1Ew+TqYKAb4GR6u6eNA0r9013pCYPNp4tlZ8ri/Lf0uordCzN/Tw843y
	 cXKcMvb7No4eQ==
Received: from baseband.digital (baseband.digital [162.55.218.138])
	by mm2.emwd.com (Postfix) with ESMTPS id 09BCD3857D1
	for <usrp-users@lists.ettus.com>; Sat,  5 Apr 2025 14:47:27 -0400 (EDT)
Received: from [IPV6:2001:16b8:cc4e:eb00:bf5:d22c:2206:8fff] (unknown [IPv6:2001:16b8:cc4e:eb00:bf5:d22c:2206:8fff])
	by baseband.digital (Postfix) with ESMTPSA id E3C965E37D
	for <usrp-users@lists.ettus.com>; Sat,  5 Apr 2025 20:47:26 +0200 (CEST)
Message-ID: <356c6497-ea09-4dad-a065-d6619a846d78@baseband.digital>
Date: Sat, 5 Apr 2025 20:47:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users <usrp-users@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <mueller_usrp_users@baseband.digital>
Message-ID-Hash: XPZ44FWMNUQLPZ7U5FFQYALJZIFUNBPX
X-Message-ID-Hash: XPZ44FWMNUQLPZ7U5FFQYALJZIFUNBPX
X-MailFrom: mueller_usrp_users@baseband.digital
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] WANTED: Flowgraphs for the GNU Radio Block Doc pages
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XPZ44FWMNUQLPZ7U5FFQYALJZIFUNBPX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

RGVhciBVU1JQIFVzZXJzLA0KDQrigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTi
gJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTi
gJTigJTigJTigJTigJTigJTigJTigJTigJQNCnRsO2RyOiBDbGljayBvbiBhbnkgYmxvY2sgaW4g
WzFdLCBmaW5kIG9yIGJ1aWxkIGEgc2ltcGxlLCBidXQgZnVuY3Rpb24taWxsdXN0cmF0aW5nIA0K
Zmxvd2dyYXBoIGFyb3VuZCB0aGF0IGJsb2NrLCBhbmQgbWFrZSBHTlUgUmFkaW8gZWFzaWVyIHRv
IHVzZSENCg0K4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU
4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU
4oCU4oCU4oCU4oCU4oCUDQoNCmEgbG90IG9mIHVzIGFyZSB1c2luZyBHTlUgUmFkaW8gaW4gb3Vy
IGRhaWx5IFNEUiB3b3JrIChJIHN1cmUgZG8sIGZvciBzb21lIHJlYXNvbikuDQoNCkhvcGVmdWxs
eSwgbW9zdCBvZiB5b3UgYXJlIGF3YXJlIG9mIHRoZSBleHRlbnNpdmUgQmxvY2sgRG9jdW1lbnRh
dGlvbiBbMF0gdGhhdCB0aGUgDQpEb2N1bWVudGF0aW9uIHRlYW0gYW5kIG51bWVyb3VzIG90aGVy
IGNvbnRyaWJ1dG9ycyBoYXZlIGJ1aWx0IG92ZXIgdGhlIGxhc3QgeWVhcjogNTU1IA0KZG9jdW1l
bnRlZCBibG9ja3MgYW5kIGNvdW50aW5nIQ0KDQpOb3csIGEgbG90IG9mIHRoZXNlIHBhZ2VzIGFy
ZSBncmVhdCwgaGF2ZSBpbGx1c3RyYXRpdmUgZXhhbXBsZXMgYW5kIGNhbiBiZSBlYXNpbHkgDQp1
bmRlcnN0b29kIGJ5IGJlZ2lubmVycyBhbmQgYXJlIHVzZWZ1bCB0byBleHBlcnRzIGFsaWtlLg0K
T25lIG9mIHRoZSB0aGluZ3MgbWlzc2luZyBvbiBhIGxvdCBvZiB0aGVzZSBwYWdlczogYSAqKmdv
b2QgRXhhbXBsZSBGbG93Z3JhcGgqKi4NCk9mdGVuLCBhIGZsb3dncmFwaCBpcyB3b3J0aCBhIHRo
b3VzYW5kIHdvcmRzIOKAkyBiZWNhdXNlIHRoYXQncyB0aGUgY2FzZSwgQmFycnkgRHVnZ2FuIGFu
ZCANCmhlbHBlcnMgaGF2ZSBjb21waWxlZCBhIHdpa2kgQ2F0ZWdvcnkgZm9yIGJsb2NrcyBtaXNz
aW5nIGFuIGV4YW1wbGUgZmxvd2dyYXBoIFsxXS4NCg0KQW55IGhlbHAgZmlsbGluZyB0aGVzZSBn
YXBzIHdvdWxkIGJlIG1vc3Qgd2VsY29tZTsgaWYgeW91IGhhdmUg4oCTIGp1c3QgZm9yIGV4YW1w
bGUg4oCTIGEgZ29vZCANCmV4YW1wbGUgb2YgZG9pbmcgc29tZXRoaW5nIHdpdGggdGhlICJTYW1w
bGUgYW5kIEhvbGQiIGJsb2NrLCB0aGF0IHdvdWxkIGJlIGEgZ3JlYXQgYWRkaXRpb24hDQoNClRo
ZSBEb2N1bWVudGF0aW9uIHRlYW0gaXMgdmVyeSBlYWdlciB0byBoZWxwIHlvdSwgdG9vLiBJZiB5
b3UgaGF2ZSBhbnkgcXVlc3Rpb25zLCByZWFjaCANCm91dCB0byB0aGVtIHZpYSAjZG9jczpnbnVy
YWRpby5vcmcgb24gTWF0cml4IFsyXS4NCg0KRm9yIGZvcndhcmRpbmcgcHVycG9zZXMsIHRoZXJl
J3MgYWxzbyBhIG1vcmUgZ2VuZXJhbCB2ZXJzaW9uIG9mIHRoaXMgcmVxdWVzdCBmb3IgaGVscCAN
CmF2YWlsYWJsZSBvbiBbM10uDQoNCkJlc3QgcmVnYXJkcywNCk1hcmN1cyBNw7xsbGVyDQoNClsw
XSBodHRwczovL3dpa2kuZ251cmFkaW8ub3JnL2luZGV4LnBocD90aXRsZT1DYXRlZ29yeTpCbG9j
a19Eb2NzDQpbMV0gaHR0cHM6Ly93aWtpLmdudXJhZGlvLm9yZy9pbmRleC5waHA/dGl0bGU9Q2F0
ZWdvcnk6UGFnZXNfd2l0aF9ub19FeGFtcGxlX0Zsb3dncmFwaA0KWzJdIGh0dHBzOi8vbWF0cml4
LnRvLyMvI2RvY3M6Z251cmFkaW8ub3JnDQpbM10gaHR0cHM6Ly93d3cuZ251cmFkaW8ub3JnL25l
d3Mvd2FudGVkLWZsb3dncmFwaHMNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20K
