Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC76377128
	for <lists+usrp-users@lfdr.de>; Sat,  8 May 2021 12:14:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D0FA38433A
	for <lists+usrp-users@lfdr.de>; Sat,  8 May 2021 06:14:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=olifantasia.com header.i=@olifantasia.com header.b="JscXOjtO";
	dkim-atps=neutral
Received: from outbound5.mail.transip.nl (outbound5.mail.transip.nl [136.144.136.9])
	by mm2.emwd.com (Postfix) with ESMTPS id B497D383F4D
	for <USRP-users@lists.ettus.com>; Sat,  8 May 2021 06:13:13 -0400 (EDT)
Received: from submission2.mail.transip.nl (unknown [10.100.4.71])
	by outbound5.mail.transip.nl (Postfix) with ESMTP id 4FcjnN29c3zH9mV;
	Sat,  8 May 2021 12:13:12 +0200 (CEST)
Received: from mail.olifantasia.eu (unknown [IPv6:2a01:7c8:aabf:5b9:5054:ff:feac:f25b])
	by submission2.mail.transip.nl (Postfix) with ESMTPSA id 4FcjnL0rLMz18GrV;
	Sat,  8 May 2021 12:13:10 +0200 (CEST)
Received: from [192.168.10.104] (unknown [83.80.231.114])
	by mail.olifantasia.eu (Postfix) with ESMTPSA id F200A602B5;
	Sat,  8 May 2021 12:13:09 +0200 (CEST)
To: Marcus D Leech <patchvonbraun@gmail.com>, Rob Kossler <rkossler@nd.edu>
References: <4FD0B0DF-5E71-45EF-AFFB-6B5787776E17@gmail.com>
 <8F650886-FFC7-422D-9A03-21324AA8E6AE@gmail.com>
From: Martin <usrp-users-list@olifantasia.com>
Message-ID: <49905aa9-8168-b029-2002-81ca32ae732a@olifantasia.com>
Date: Sat, 8 May 2021 12:13:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <8F650886-FFC7-422D-9A03-21324AA8E6AE@gmail.com>
Content-Language: en-US
X-Scanned-By: ClueGetter at submission2.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=olifantasia.com; t=1620468790; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version:content-type;
 bh=heTHdfu6L6DjDhI95PlkEewcEXrVSte1+QFR0nICCW8=;
 b=JscXOjtOcTFN55tBhANXnSPthTcJkBCab++DHPswsLf+pktsSdEsanS7lAbSUcCGp91cxz
 tHd4QaFwUHxbAGFdn6BXOy5BREmqTb2qgsFhIvMp1e3sXBngRpXT24/+aJLJG1Yfrlulxa
 KQtQ7C5N5eKVMt/O0+dwlOEnLU4mnTJe3DyRbI41XeDNZD+Rs1KmuoYLPNpNiB93A1pJLE
 V+jehQ4oY11kEXtzpXTgmQ3WP6TN/2PI69+iQYVBc4sJpf427V7FBV1ESfSWFpPcDScWsD
 v54sb0aYIwngnSmY7J6y3Ydvucjz9AzsiPiIlcJ0sR9/hnua9SelkF9ty1xMEA==
X-Report-Abuse-To: abuse@transip.nl
Message-ID-Hash: 2BJPGUEZZ2AVNQMX6PQLDD662DS3G7CH
X-Message-ID-Hash: 2BJPGUEZZ2AVNQMX6PQLDD662DS3G7CH
X-MailFrom: usrp-users-list@olifantasia.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 / E320 high bandwith / high datarate two channel RX capture
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2BJPGUEZZ2AVNQMX6PQLDD662DS3G7CH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

U28gaXQncyBhIGhhcmR3YXJlIGxpbWl0YXRpb24gb2YgdGhlIEFEOTM2MSBjaGlwPw0KVGhhdCBp
cyB2ZXJ5IHVuZm9ydHVuYXRlLg0KDQpXZSB3ZXJlIGFsc28gbG9va2luZyBhdCBhbiBvcHRpb24g
dG8gYnVpbGQgb3VyIG93biBkZXZpY2UgYmFzZWQgb24gYSANCkFEOTM2MSArIHNvbWUgWnluYyBG
UEdBL0FSTSBwcm9jZXNzb3IuDQpCdXQgaWYgaXQgaXMgYSBoYXJkd2FyZSBsaW1pdGF0aW9uIG9m
IHRoZSBBRDkzNjEgdGhlbiB0aGF0IHdvdWxkIG5vdCANCndvcmsgZWl0aGVyLg0KDQpUaGFua3Mg
Zm9yIHRoZSBpbmZvLg0KDQpCZXN0IHJlZ2FyZHMsDQpNYXJ0aW4NCg0KDQpPbiAwNy0wNS0yMDIx
IDE3OjIzLCBNYXJjdXMgRCBMZWVjaCB3cm90ZToNCj4gVGhlIEUzMjAgdXNlcyB0aGUgc2FtZSBS
RkZFIGFzIHRoZSBFMzEwIHNvIHdvdWxkIGhhdmUgdGhlIHNhbWUgYmFuZHdpZHRoIA0KPiByZXN0
cmljdGlvbnMuDQo+IA0KPiBTZW50IGZyb20gbXkgaVBob25lDQo+IA0KPj4gT24gTWF5IDcsIDIw
MjEsIGF0IDEwOjUwIEFNLCBNYXJjdXMgRCBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+
IA0KPj4gd3JvdGU6DQo+Pg0KPj4g77u/SW5kZWVkIHRoZSBFMzEwIFJGRkUgY2hpcCBoYXMgY2xv
Y2tpbmcgcmVzdHJpY3Rpb25zIHNvIHRoYXQgdHdvIA0KPj4gY2hhbm5lbHMgYXJlIGxpbWl0ZWQg
dG8gbGVzcyB0aGFuIDMyTUh6Lg0KPj4NCj4+IEnigJltIG5vdCBjZXJ0YWluIGFib3V0IHRoZSBF
MzIwLg0KPj4NCj4+IFNlbnQgZnJvbSBteSBpUGhvbmUNCj4+DQo+Pj4gT24gTWF5IDcsIDIwMjEs
IGF0IDEwOjQ1IEFNLCBSb2IgS29zc2xlciA8cmtvc3NsZXJAbmQuZWR1PiB3cm90ZToNCj4+Pg0K
Pj4+IO+7vw0KPj4+IEhpIE1hcnRpbiwNCj4+PiBJIGFtIGNvbmNlcm5lZCB0aGF0IHRoZXNlIGRl
dmljZXMsIEUzeHgsIGNhbm5vdCBoYW5kbGUgMiBjaGFubmVscyBhdCANCj4+PiA1NiBNUy9zIChv
ciA2MU1TL3MpLsKgIE15IHVuZGVyc3RhbmRpbmcgKGJ1dCBJIGFtIG5vdCAxMDAlIHN1cmUpIGlz
IA0KPj4+IHRoYXQgdGhlc2UgZGV2aWNlcyBjYW4gaGFuZGxlIDEgY2hhbm5lbCBhdCB0aG9zZSBy
YXRlcywgYnV0IHRoYXQgdGhlIA0KPj4+IG1heCByYXRlIGZvciAyIGNoYW5uZWxzIGlzIDMwLjcy
IE1TL3MuDQo+Pj4gUm9iDQo+Pj4NCj4+PiBPbiBGcmksIE1heSA3LCAyMDIxIGF0IDk6NDEgQU0g
TWFydGluIA0KPj4+IDx1c3JwLXVzZXJzLWxpc3RAb2xpZmFudGFzaWEuY29tIA0KPj4+IDxtYWls
dG86dXNycC11c2Vycy1saXN0QG9saWZhbnRhc2lhLmNvbT4+IHdyb3RlOg0KPj4+DQo+Pj4gICAg
IEhpLA0KPj4+DQo+Pj4gICAgIERvIHlvdSBoYXZlIGV4cGVyaWVuY2Ugd2l0aCBoaWdoIGJhbmR3
aWR0aCBjYXB0dXJlIG9uIEUzMTAgb3IgRTMyMD8NCj4+Pg0KPj4+ICAgICBXZSB3YW50IHRvIHVz
ZSBhbiBFMzEwIG9yIEUzMjAgZm9yIDU2IE1TUFMgKG9yIDYxLjQ0IE1TUFMpIGR1YWwNCj4+PiAg
ICAgY2hhbm5lbA0KPj4+ICAgICBSWCBjYXB0dXJlcy4NCj4+PiAgICAgV2Ugd2FudCB0byBjYXB0
dXJlIGludG8gYSBjaXJjdWxhciBidWZmZXIgYW5kIGFmdGVyIGEgY2VydGFpbiBzaWduYWwNCj4+
PiAgICAgc2lnbmFsIGxldmVsIGlzIG9ic2VydmVkIHNldCBhIHRpbWUgdG8gc3RvcCBjYXB0dXJp
bmcgYWZ0ZXIgMC4zDQo+Pj4gICAgIHNlY29uZHMuDQo+Pj4gICAgIFNvIHdlIG9ubHkgdXNlIHRo
ZSBsYXN0IDAuMyBzZWNvbmQgb2YgY2FwdHVyZWQgZGF0YS4NCj4+Pg0KPj4+ICAgICBXZSBhcmUg
dGhpbmtpbmcgb2YgdXNpbmcgYSBFMzIwLiBUaGlzIGhhcyBhIGhpZ2ggc3BlZWQgU0ZQKyAxMA0K
Pj4+ICAgICBnYml0IHBvcnQuDQo+Pj4gICAgIENhbiBpdCBzdHJlYW0gMiBjaGFubmVsIDU2IE1T
UFMgZGF0YSB0byBhIGhvc3QtUEMgY29udGludW91c2x5IHRvIGENCj4+PiAgICAgaG9zdC1QQz8g
T3IgaXMgdGhlIEFSTSBwcm9jZXNzb3IgYSBib3R0bGVuZWNrLCBsaWtlIG9uIHRoZSBFMzEwLA0K
Pj4+ICAgICB3aGljaA0KPj4+ICAgICBzZWVtcyB0byBiZSBsaW1pdGVkIHRvIG1heCAxNk1TUFMg
ZHVlIHRvIHRoZSBsaW1pdGVkIGFybQ0KPj4+ICAgICBwcm9jZXNzb3Igc3BlZWQuDQo+Pj4gICAg
IEFuZCBjYW4gaXQgc3RyZWFtIHRoYXQgZmFzdCB3aXRoIGl0cyBkZWZhdWx0IEZQR0EgZmlybXdh
cmUgaW1hZ2UsIHNvDQo+Pj4gICAgIHRoZXJlIHdvdWxkIGJlIG5vIG5lZWQgZm9yIFJGTm9jIHdv
cmsgYW5kIGV4cGVuc2l2ZSBWaXZhZG8gbGljZW5zZS4NCj4+Pg0KPj4+ICAgICBBbmQgaWYgd2Ug
ZG8gbmVlZCB0aGUgWGlsaW54IHZpdmFkbyBsaWNlbnNlLiBXaGljaCB2ZXJzaW9uIGRvIHdlDQo+
Pj4gICAgIG5lZWQ/DQo+Pj4NCj4+PiAgICAgQWx0ZXJuYXRpdmVseSB3ZSBjb3VsZCB0cnkgdG8g
dXNlIHRoZSBFMzEwIHdoaWNoIGhhcyBhIHNtYWxsZXINCj4+PiAgICAgRlBHQSB0aGF0DQo+Pj4g
ICAgIGlzIHN1cHBvcnRlZCBieSB0aGUgZnJlZSB3ZWJwYWNrIG9mIHZpdmFkby4NCj4+PiAgICAg
QmVjYXVzZSBpdCBkb2VzIG5vdCBoYXZlIGEgMTAgZ2JpdCBldGhlcm5ldCB3ZSB3b3VsZCBoYXZl
IHRvDQo+Pj4gICAgIGNhcHR1cmUgdG8NCj4+PiAgICAgbWVtb3J5Lg0KPj4+ICAgICBJIGhhdmUg
cmVhZCB0aGF0IHRoZSBFMzEwIGFybSBwcm9jZXNzaW5nIGlzIG5vdCBhYmxlIHRvIGtlZXAgdXAg
d2l0aA0KPj4+ICAgICBtb3JlIHRoZW4gMTYgTVNQUyBjYXB0dXJlcy4gU28ganVzdCBzdHJlYW1p
bmcgdG8gdGhlIEFSTSBtZW1vcnkNCj4+PiAgICAgaW4gdGhlDQo+Pj4gICAgIEUzMTAgd291bGQg
bm90IHdvcmsuDQo+Pj4gICAgIEJ1dCBpZiB3ZSBjb3VsZCBzb21ld2F5IGNhcHR1cmUgdG8gdGhl
IDUxMiBNQiBERFIgcmFtIG9uIHRoZSBGUEdBDQo+Pj4gICAgIHNpZGUNCj4+PiAgICAgKHVzZSBp
dCBhcyBhIGNpcmN1bGFyIGJ1ZmZlcikgYW5kIGFmdGVyd2FyZHMgc2xvd2x5IG1vdmUgaXQgdG8N
Cj4+PiAgICAgdGhlIGFybQ0KPj4+ICAgICBhbmQgZnJvbSB0aGVyZSB0byB0aGUgaG9zdC1QQyB0
aGVuIHRoYXQgd291bGQgYmUgZmluZS4NCj4+Pg0KPj4+ICAgICBBbHRlcm5hdGl2ZWx5IEkgaGVh
cmQgdGhhdCBoaWdoIGRhdGFyYXRlICg1NiBNU1BTKSBjYXB0dXJlIG9uDQo+Pj4gICAgIEUzMTAg
aXMNCj4+PiAgICAgcG9zc2libGUgaW4gc29tZSB3YXkgdXNpbmcgUkZOb2MuIElzIHRoYXQgdHJ1
ZT8gSG93IHdvdWxkIHRoYXQgd29yay4NCj4+Pg0KPj4+ICAgICBJdCB3b3VsZCBoZWxwIG1lIGEg
bG90IGlmIHlvdSBnaXZlIG1lIHNvbWUgaGludHMgb3IgdGVsbCBtZSBhYm91dA0KPj4+ICAgICB5
b3VyDQo+Pj4gICAgIGV4cGVyaWVuY2Ugb2YgaGlnaCBiYW5kd2lkdGggY2FwdHVyaW5nIG9uIEUz
WFggZGV2aWNlcy4uIEV2ZW4gaWYNCj4+PiAgICAgeW91IGRvDQo+Pj4gICAgIG5vdCBrbm93IGFs
bCB0aGUgYW5zd2Vycy4NCj4+Pg0KPj4+ICAgICBXaXRoIGJlc3QgcmVnYXJkcywNCj4+Pg0KPj4+
ICAgICBNYXJ0aW4gRHVkb2sgdmFuIEhlZWwNCj4+Pg0KPj4+ICAgICBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4+ICAgICBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4+ICAgICA8bWFpbHRvOnVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KPj4+ICAgICBUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+Pj4gICAgIDxtYWls
dG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20+DQo+Pj4NCj4+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4+IFVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+Pj4gVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
