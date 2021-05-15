Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E397381952
	for <lists+usrp-users@lfdr.de>; Sat, 15 May 2021 16:20:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D09BB38424A
	for <lists+usrp-users@lfdr.de>; Sat, 15 May 2021 10:20:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=olifantasia.com header.i=@olifantasia.com header.b="fpQL3x5j";
	dkim-atps=neutral
Received: from outbound2.mail.transip.nl (outbound2.mail.transip.nl [149.210.149.73])
	by mm2.emwd.com (Postfix) with ESMTPS id 83291383AFE
	for <USRP-users@lists.ettus.com>; Sat, 15 May 2021 10:19:55 -0400 (EDT)
Received: from submission11.mail.transip.nl (unknown [10.103.8.162])
	by outbound2.mail.transip.nl (Postfix) with ESMTP id 4Fj6wp1ZfNzYd5g;
	Sat, 15 May 2021 16:19:54 +0200 (CEST)
Received: from mail.olifantasia.eu (unknown [IPv6:2a01:7c8:aabf:5b9:5054:ff:feac:f25b])
	by submission11.mail.transip.nl (Postfix) with ESMTPSA id 4Fj6wm0Swpz2Bd0v;
	Sat, 15 May 2021 16:19:52 +0200 (CEST)
Received: from [192.168.1.101] (unknown [83.80.231.114])
	by mail.olifantasia.eu (Postfix) with ESMTPSA id DF8C860379;
	Sat, 15 May 2021 16:19:51 +0200 (CEST)
To: Marcus D Leech <patchvonbraun@gmail.com>
References: <42f4dc77-e817-171a-ad75-ba2d4ac51e63@olifantasia.com>
 <A86ADD35-1A53-4DCF-8F77-E29172D9E135@gmail.com>
From: Martin <usrp-users-list@olifantasia.com>
Message-ID: <a28fd43f-a2fd-ba66-cbf5-cb0493035431@olifantasia.com>
Date: Sat, 15 May 2021 16:19:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <A86ADD35-1A53-4DCF-8F77-E29172D9E135@gmail.com>
Content-Language: en-US
X-Scanned-By: ClueGetter at submission11.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=olifantasia.com; t=1621088392; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version:content-type;
 bh=aSk+GuBsvXdrOEoCZsLHlTIT0PyLKaDaY0LlNZnFD44=;
 b=fpQL3x5jU/ZOjLPwasKOlTar4fKxLfuWdBltE6QegiNTkfRgylnSzfzVc8ERzfU2VsX1uD
 ghNnrVUU0AhR6iOVX7ng0YmM/1St0Q9TkJ6ytNjl46eBY27lIcAOVZ6Ln34BYe/nBKfFk+
 0/8gkSGhH4/GCad8d08U9y82Gqt7PFn6ihMkbWOP3/nWc8og3wZ8neGFjDNhijcOwnQyLM
 8CF62SyqDmenkxYL38AdMsnWHx6VciXG59C2i23FcXXYtrhggoC1/uXgHZrbwYnArkY7t2
 liXf02sN7bIN9dhCM69y1PkiFCoE0dcFrqXT94D0LKd/8O+XjwRLDU80y7o20w==
X-Report-Abuse-To: abuse@transip.nl
Message-ID-Hash: W655E4SPJ42MAA3QKLBADC6GAF23HRFB
X-Message-ID-Hash: W655E4SPJ42MAA3QKLBADC6GAF23HRFB
X-MailFrom: usrp-users-list@olifantasia.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E310 sg1 does not find its own UHD RF hardware with uhd_usrp_probe --args "type=e300"
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W655E4SPJ42MAA3QKLBADC6GAF23HRFB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTQtMDUtMjAyMSAyMToyNiwgTWFyY3VzIEQgTGVlY2ggd3JvdGU6DQo+IFdoYXQgaGFwcGVu
cyBpZiB5b3UgZG9u4oCZdCBzcGVjaWZ5IGFueSBhcmdzIGF0IGFsbD8NClRoZW4gSSBhbHNvIGdl
dCBObyBEZXZpY2UgZm91bmQuDQoNCk1hcnRpbg0KDQo+IA0KPiBTZW50IGZyb20gbXkgaVBob25l
DQo+IA0KPj4gT24gTWF5IDE0LCAyMDIxLCBhdCAzOjIwIFBNLCBNYXJ0aW4gPHVzcnAtdXNlcnMt
bGlzdEBvbGlmYW50YXNpYS5jb20+IHdyb3RlOg0KPj4NCj4+IO+7v0hpLA0KPj4NCj4+IEkgaGF2
ZSBhbiBFMzEwIHNnMSB3aGljaCBoYWQgYW4gb2xkZXIgc2RpbWcgb24gaXQgKHdpdGggdWhkIDMu
OS4yKS4gVUhEIHdvcmtlZCBmaW5lIHdpdGggdGhpcyBvbGRlciBpbWFnZS4NCj4+DQo+PiBCdXQg
bm93IEkgdXBkYXRlZCB0aGUgc2RjYXJkIHdpdGggdGhlIFVIRCAzLjE1LjAuMCBzZCBpbWFnZSBm
b3IgRTMxMCBzZzENCj4+DQo+PiB1c3JwX2UzMTBfZnMuc2RpbWcgZnJvbSBlM3h4X2UzMTBfc2cx
X3NkaW1nX2RlZmF1bHQtdjMuMTUuMC4wLnppcA0KPj4NCj4+IEl0IGJvb3RzIGZpbmUgYnV0IG5v
dyBpdCBkb2VzIG5vdCBmaW5kIGl0cyBvd24gdWhkIGhhcmR3YXJlDQo+Pg0KPj4gVGhpcyBpcyB3
aGF0IEkgZ2V0IHdoZW4gSSBydW4gdGhlc2UgY29tbWFuZHMgb24gdGhlIGRldmljZSAodGhyb3Vn
aCBzZXJpYWwgb3Igc3NoKQ0KPj4NCj4+IHJvb3RAbmktZTMxeDp+IyB1aGRfdXNycF9wcm9iZSAt
LWFyZ3MgInR5cGU9ZTMwMCINCj4+IEVycm9yOiBMb29rdXBFcnJvcjogS2V5RXJyb3I6IE5vIGRl
dmljZXMgZm91bmQgZm9yIC0tLS0tPg0KPj4gRGV2aWNlIEFkZHJlc3M6DQo+PiAgICAgdHlwZTog
ZTMwMA0KPj4NCj4+IHJvb3RAbmktZTMxeDp+IyB1aGRfZmluZF9kZXZpY2VzDQo+PiBbSU5GT10g
W1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiA4LjIuMDsgQm9vc3RfMTA2ODAwOyBVSERfMy4x
NS4wLjAtMC1nYWVhMGUyZGUNCj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tDQo+PiAtLSBVSEQgRGV2aWNlIDANCj4+IC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+PiBEZXZpY2UgQWRkcmVzczoNCj4+
ICAgICBzZXJpYWw6DQo+PiAgICAgY2xhaW1lZDogRmFsc2UNCj4+ICAgICBtZ210X2FkZHI6IDEy
Ny4wLjAuMQ0KPj4gICAgIHByb2R1Y3Q6DQo+PiAgICAgcmVhY2hhYmxlOiBObw0KPj4gICAgIHR5
cGU6DQo+Pg0KPj4NCj4+IFdoYXQgYW0gSSBkb2luZyB3cm9uZyBoZXJlPw0KPj4NCj4+IFNob3Vs
ZCBJIHVzZSBhIGRpZmZlcmVudCBkZXZpY2UgYWRkcmVzcw0KPj4NCj4+IEkgYWxzbyB0cmllZCAt
YXJncyAiYWRkcj0xMjcuMC4wLjEiIEJ1dCB0aGF0IG9mIGNvdXJzZSBkb2VzIG5vdCB3b3JrLiAo
YXMgZXhwZWN0ZWQpDQo+Pg0KPj4gT3IgbWF5YmUgaXQgaGFzIHRvIGRvIHRoYXQgdGhpcyBpcyBh
biBvbGRlciBzZzEgdXNycCBFMzEwLg0KPj4gRG9lcyB0aGF0IHdvcmsgZGlmZmVyZW50bHkgb3Ig
bWF5YmUgdGhlIHNnMSBpbWFnZSBpcyBsZXNzIHRlc3RlZC4NCj4+DQo+PiBQbGVhc2UgZW5saWdo
dGVuIG1lLg0KPj4NCj4+IFRoYW5rcyBpbiBhZHZhbmNlLA0KPj4NCj4+IE1hcnRpbiBEdWRvayB2
YW4gSGVlbA0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tDQo+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tCg==
