Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A611F386BE5
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 23:04:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD601384F07
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 17:04:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=olifantasia.com header.i=@olifantasia.com header.b="JBtjB3gb";
	dkim-atps=neutral
Received: from outbound4.mail.transip.nl (outbound4.mail.transip.nl [136.144.136.2])
	by mm2.emwd.com (Postfix) with ESMTPS id 1DF2F38472F
	for <USRP-users@lists.ettus.com>; Mon, 17 May 2021 17:03:58 -0400 (EDT)
Received: from submission9.mail.transip.nl (unknown [10.103.8.160])
	by outbound4.mail.transip.nl (Postfix) with ESMTP id 4FkWp55wN8zQkjC;
	Mon, 17 May 2021 23:03:57 +0200 (CEST)
Received: from mail.olifantasia.eu (server1.olifantasia.eu [37.97.153.37])
	by submission9.mail.transip.nl (Postfix) with ESMTPSA id 4FkWny43Xmz1xr3;
	Mon, 17 May 2021 23:03:49 +0200 (CEST)
Received: from [192.168.1.101] (unknown [83.80.231.114])
	by mail.olifantasia.eu (Postfix) with ESMTPSA id 66B5E605EB;
	Mon, 17 May 2021 23:03:44 +0200 (CEST)
To: Marcus D Leech <patchvonbraun@gmail.com>
References: <4b71e4d6-fca0-0f8a-3640-31b488daccc9@olifantasia.com>
 <EE289C16-0325-4D8B-BF7B-135E4C5EAFD0@gmail.com>
From: Martin <usrp-users-list@olifantasia.com>
Message-ID: <aa2c9f6c-db82-eb85-a9e8-a31a6edd77f6@olifantasia.com>
Date: Mon, 17 May 2021 23:03:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <EE289C16-0325-4D8B-BF7B-135E4C5EAFD0@gmail.com>
Content-Language: en-US
X-Scanned-By: ClueGetter at submission9.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=olifantasia.com; t=1621285431; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version:content-type;
 bh=9rXwCtp+dflVX8s1Vah0xMCpOGC02EJHdUqg5gI8qHs=;
 b=JBtjB3gbOkcvqow6A3/o8fceaO/iCiMEd+0FmiCS/js3ZYL/qf79fgnHNDXNVguhZ89I5R
 ZlgjPAKTvbHPpe80KG5bjAWFfNTIhdqN7eSFPu9Fvc5Zqwfw49YG1OtXioaL7M7jF5Y0GV
 XVEBXeHH4AWeODW81tdnGW0iR0yBbaWUTgRmga7beGOdv3EmR8KsabWz31NFDYKNzBOTbO
 v66IkEdG2SL2Wq2lsmG/gr76gXUfWVt1by6yn+ULojM/2FeesXP2fH0sB4DICWCfsD4IW8
 nRiQXYRxyqUaB3/gKBtSYmuhskSEzDuS6flS8AWs65eT2o+g63ex3Mx5uRf9/w==
X-Report-Abuse-To: abuse@transip.nl
Message-ID-Hash: NMOSEJH4YCATDSPOKBJ57FOCE34TUQE3
X-Message-ID-Hash: NMOSEJH4YCATDSPOKBJ57FOCE34TUQE3
X-MailFrom: usrp-users-list@olifantasia.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E310 sg1 does not find its own UHD RF hardware with uhd_usrp_probe --args "type=e300"
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NMOSEJH4YCATDSPOKBJ57FOCE34TUQE3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTctMDUtMjAyMSAwMDoxMCwgTWFyY3VzIEQgTGVlY2ggd3JvdGU6DQo+IEnigJltIGN1cnJl
bnRseSB0cnlpbmcgdG8gcmVwcm9kdWNlIGJ1dCBvbiBhbiBzZzMgc3lzdGVtLiBIYXZpbmcgZW50
aXJlbHkgZGlmZmVyZW50IHByb2JsZW1zLg0KVGhhbmsgeW91IGZvciBsb29raW5nIGludG8gdGhp
cy4NCkkgYW0gbG9va2luZyBmb3J3YXJkIHRvIHlvdXIgZmluZGluZ3MuDQpXaGF0IGlzc3VlcyBk
byB5b3UgaGF2ZSB3aXRoIHNnMz8NCk1heWJlIEkgY2FuIGhlbHAgeW91IHdpdGggdGhhdCA7LSkN
Cg0KSSB3aWxsIGFsc28gdHJ5b3V0IHRoZSBsYXRlc3QgdWhkIDQuMCBzZGltZyBmb3IgRTMxMCBz
ZzEgYXMgc29vbiBhcyBJIA0KaGF2ZSB0aGUgdGltZS4gTWF5YmUgdGhhdCBoYXMgZGlmZmVyZW50
IHJlc3VsdHMuDQoNCkkgd2FzIHdvbmRlcmluZyBpZiB0aGUgb3V0cHV0IG9mIHVoZF9maW5kX2Rl
dmljZXMgZ2l2ZXMgYSBjbHVlLg0KSXMgdGhpcyB0aGUgbm9ybWFsIGV4cGVjdGVkIG91dHB1dCB3
aG5lIHlvdSBydW4gdWhkX2ZpbmRfZGV2aWNlcyBvbiB0aGUgDQpFMzEwLg0KDQpyb290QG5pLWUz
MXg6fiMgdWhkX2ZpbmRfZGV2aWNlcw0KW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNp
b24gOC4yLjA7IEJvb3N0XzEwNjgwMDsgDQpVSERfMy4xNS4wLjAtMC1nYWVhMGUyZGUNCi0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQotLSBVSEQgRGV2
aWNlIDANCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
DQpEZXZpY2UgQWRkcmVzczoNCiAgICBzZXJpYWw6DQogICAgY2xhaW1lZDogRmFsc2UNCiAgICBt
Z210X2FkZHI6IDEyNy4wLjAuMQ0KICAgIHByb2R1Y3Q6DQogICAgcmVhY2hhYmxlOiBObw0KICAg
IHR5cGU6DQoNCg0KQmVzdCByZWdhcmRzLA0KTWFydGluDQoNCg0KDQo+IFNlbnQgZnJvbSBteSBp
UGhvbmUNCj4gDQo+PiBPbiBNYXkgMTYsIDIwMjEsIGF0IDU6MzMgUE0sIE1hcnRpbiA8dXNycC11
c2Vycy1saXN0QG9saWZhbnRhc2lhLmNvbT4gd3JvdGU6DQo+Pg0KPj4g77u/T24gMTUtMDUtMjAy
MSAxODozMywgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPj4+PiBPbiAwNS8xNS8yMDIxIDEwOjE5
IEFNLCBNYXJ0aW4gd3JvdGU6DQo+Pj4+IE9uIDE0LTA1LTIwMjEgMjE6MjYsIE1hcmN1cyBEIExl
ZWNoIHdyb3RlOg0KPj4+Pj4gV2hhdCBoYXBwZW5zIGlmIHlvdSBkb27igJl0IHNwZWNpZnkgYW55
IGFyZ3MgYXQgYWxsPw0KPj4+PiBUaGVuIEkgYWxzbyBnZXQgTm8gRGV2aWNlIGZvdW5kLg0KPj4+
Pg0KPj4+PiBNYXJ0aW4NCj4+PiBNYXJ0aW46DQo+Pj4gV2hlcmUgZGlkIHlvdSBnZXQgeW91ciBz
ZGltZyBmcm9tPw0KPj4NCj4+IE9uIGEgaG9zdCBzeXN0ZW0gd2l0aCBVSEQgMy4xNSBpbnN0YWxs
ZWQgSSBkaWQ6DQo+Pg0KPj4gc3VkbyB1aGRfaW1hZ2VzX2Rvd25sb2FkZXIgLXQgc2RpbWcgLXQg
ZTMxMCAtdCBzZzENCj4+DQo+PiBbSU5GT10gSW1hZ2VzIGRlc3RpbmF0aW9uOiAvdXNyL3NoYXJl
L3VoZC9pbWFnZXMNCj4+IFRoZSBmaWxlIHNpemUgZm9yIHRoaXMgdGFyZ2V0ICg4MzIuMyBNaUIp
IGV4Y2VlZHMgdGhlIGRvd25sb2FkIGxpbWl0ICgxMDAuMCBNaUIpLiBDb250aW51ZSBkb3dubG9h
ZGluZz8gW3kvTl15DQo+PiBbSU5GT10gRG93bmxvYWRpbmcgZTN4eF9lMzEwX3NnMV9zZGltZ19k
ZWZhdWx0LXYzLjE1LjAuMC56aXAsIHRvdGFsIHNpemU6IDg3MjcyOS45MyBrQg0KPj4gW0lORk9d
IEltYWdlcyBkb3dubG9hZCBjb21wbGV0ZS4NCj4+DQo+PiBUaGlzIHNlZW1zIHRvIGRvd25sb2Fk
IHRoaXMgZmlsZSBhbmQgZXh0cmFjdHMgaXQ6DQo+PiBodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9i
aW5hcmllcy9jYWNoZS9lM3h4L21ldGEtZXR0dXMtdjMuMTUuMC4wL2UzeHhfZTMxMF9zZzFfc2Rp
bWdfZGVmYXVsdC12My4xNS4wLjAuemlwDQo+Pg0KPj4gSSB3cm90ZSB0aGUgZXh0cmFjdGVkIGlt
YWdlIHRvIGEgOCBHQiBzZGNhcmQgd2l0aCBkZC4NCj4+DQo+PiBJIGFsc28gdHJpZWQgZG93bmxv
YWRpbmcgdGhlIGFib3ZlIGZpbGUgYnkgaGFuZCBhbmQgYW5kIGV4dHJhY2luZyBpdCB0byB0aGUg
c2RjYXJkLiBUaGF0IGhhcyB0aGUgZXhhY3Qgc2FtZSByZXN1bHQuDQo+Pg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
