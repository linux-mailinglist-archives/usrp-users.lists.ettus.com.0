Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0F37ACF78
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 07:29:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 69FBD384D6B
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 01:28:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695619739; bh=9KsFqohugISHzpJeYwcHxXevfrSJXnFm099Vy3ThjS4=;
	h=Date:To:In-Reply-To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=H87OnLRCK/Wh1shME8fjlRynXN2YueafG4yyeH1LRsKEbTGP87RXBlqhw5aByYy/C
	 arGq/adec2pF/eFs8C6rDa8OppamrpdxxAyeAQWqLp3AkIFkqABVOh5kf2hvHqvmdy
	 61VVIh1K74xNjvMO0KZfWZDRljCtl/+qnRov0Mynl5Z/43DxkdL/17lwf/hN/CPlki
	 MsjQm8Nathka56LcIVZy1qySB8f7FVyjtJGM+xCxLIyzr944KQ+3/f0Q0y/yQR/siH
	 LHHBRtQVfehezbf+/tlSC0gV1S0jHn45/kqllY/w9Z6LoZjiOBeSvw/KWZwb6y3WEg
	 vBeM4UimEaVEA==
Received: from mail-4325.protonmail.ch (mail-4325.protonmail.ch [185.70.43.25])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C0FD384C8F
	for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 01:28:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=protonmail.com header.i=@protonmail.com header.b="deSsIw57";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1695619724; x=1695878924;
	bh=X/kRVKK8aMbZcOtY9IpPWEzHu5dNsQCgwmdgWS+BR50=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=deSsIw57+JDqTBe3Zx2IVyKX6L5XvS5OYifvTK1q8aI/JtXGuTvusCj9KmAP+rVqv
	 AtTPqON5pUOvTwftZ57OeFPvzry1+1BXdA0sIxNDO/uiOUnDj1WlfheiOwB0s953z2
	 hiHzrb6LlgRgW+vXOyBt3Tqh8xEdvDnlW6K7icPDBsBUfk/HdLCaB3Rcm2tBejYYtj
	 P9waiKOWhy8fQq2nMg6wjr1Yc8XW+WskB4MZnPxLbtgE6yaH68IDrqp06Y54RxIEb6
	 mqs4NzaVI+tRkryNRUGCoXelIt0iw0srxb6LifMIVET3d6jdj0WPWvnl6dIZZFYMBe
	 vryd64xJ4mwHQ==
Date: Mon, 25 Sep 2023 05:28:27 +0000
To: =?utf-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Message-ID: <wTof148s-b9-o9Kr4ztrZ40XkpxeAdB1LgVYwo4yKEv0xzMDb2quQHpttubb-Ohk3nmTIXWsdRYVkgXC0DMB-Sjsl3FP3Nj28-e20PXrCo0=@protonmail.com>
In-Reply-To: <e4e27517-f1b3-79d9-d0d2-4fb6cafda00f@ettus.com>
References: <CAPRRyxvFFoPU8cCDFigOb+obsZGtE_nNz6q8WppVyU7q3oR0Ug@mail.gmail.com> <e4e27517-f1b3-79d9-d0d2-4fb6cafda00f@ettus.com>
Feedback-ID: 47010692:user:proton
MIME-Version: 1.0
Message-ID-Hash: P3OOREPVLN3LU25CPICMAAAUQY6KQYEG
X-Message-ID-Hash: P3OOREPVLN3LU25CPICMAAAUQY6KQYEG
X-MailFrom: olo1618@protonmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B200 Data Reception Issue on Windows 10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P3OOREPVLN3LU25CPICMAAAUQY6KQYEG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Olo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Olo <olo1618@protonmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIHNhbWUgcHJvYmxlbS4gUGxlYXNlIGhhdmUgYW55b25lIGNsdWUgd2hhdCBzaG91bGQg
SSBkbyA/IE15IG91dHB1dCBmcm9tIGJlbmNobWFya19yYXRlIC0tcnhfcmF0ZSAyME1IejogDQoN
CkJlbmNobWFyayByYXRlIHN1bW1hcnk6DQogIE51bSByZWNlaXZlZCBzYW1wbGVzOiAgICAgOTk5
MDA3NDQNCiAgTnVtIGRyb3BwZWQgc2FtcGxlczogICAgICAxMDAzMTU0MzcNCiAgTnVtIG92ZXJy
dW5zIGRldGVjdGVkOiAgICA0NzINCg0KSW0gdXNpbmcgV2luZG93cyAxMCAvdyBVSEQgNC40IG9u
IEIyMTAuDQoNCg0KDQoNCg0KDQoNClNlbnQgd2l0aCBQcm90b24gTWFpbCBzZWN1cmUgZW1haWwu
DQoNCi0tLS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLS0tDQpPbiBTYXR1cmRheSwgU2VwdGVt
YmVyIDIzcmQsIDIwMjMgYXQgMjM6NDAsIE1hcmN1cyBNw7xsbGVyIDxtYXJjdXMubXVlbGxlckBl
dHR1cy5jb20+IHdyb3RlOg0KDQoNCj4gU291bmRzIGxpa2UgdGhlIFVTQiBob3N0IGNvbnRyb2xs
ZXIncyBXaW5kb3dzIGRyaXZlciBhbmQvb3IgY29udHJvbGxlciBmaXJtd2FyZSBjb21pbmcNCj4g
d2l0aCB0aGF0IGRyaXZlciBsZWF2ZSB0aGluZ3MgdG8gYmUgZGVzaXJlZC4gSSBob25lc3RseSBk
b24ndCBoYXZlIGEgZ29vZCByZWNvbW1lbmRhdGlvbg0KPiB0aGVyZSwgb3RoZXIgdGhhbiB0byBt
YWtlIHN1cmUgeW91ciBXaW5kb3dzIGRyaXZlcnMgYXJlIHVwIHRvIGRhdGUg4oCTIFdpbmRvd3Mg
aXMgbm90IHBlciBzZQ0KPiB3b3JzZSB0aGFuIExpbnV4IGF0IFVTQi4NCj4gDQo+IEJlc3QsDQo+
IA0KPiBNYXJjdXMNCj4gDQo+IE9uIDIzLjA5LjIzIDIzOjI4LCBJdmFuIFphaGFydGNodWsgd3Jv
dGU6DQo+IA0KPiA+IEhlbGxvLiBJIGhhdmUgYW4gaXNzdWUgd2l0aCByZWFkaW5nIGRhdGEgZnJv
bSB0aGUgVVNSUCBCMjAwIG9uIFdpbmRvd3MgMTAuIFdoZW4gSSBydW4NCj4gPiB0aGUgYmVuY2ht
YXJrX3JhdGUgd2l0aCBhIDIwIE1IeiByZWNlcHRpb24gYmFuZHdpZHRoLCBJIHNlZSBsb3NzZXMg
b2YgbW9yZSB0aGFuIDUwDQo+ID4gcGVyY2VudC4gSG93ZXZlciwgdGhlcmUgYXJlIG5vIGxvc3Nl
cyBkdXJpbmcgdHJhbnNtaXNzaW9uLiBJIGhhdmUgZm9sbG93ZWQgYWxsIHRoZQ0KPiA+IGluc3Ry
dWN0aW9ucywgaW5jbHVkaW5nIG1vZGlmeWluZyB0aGUgcmVnaXN0cnkgYW5kIGRpc2FibGluZyBw
b3dlciBtYW5hZ2VtZW50IGZvciBVU0IuDQo+ID4gVGhlIHNhbWUgaXNzdWUgb2NjdXJzIGV2ZW4g
d2hlbiB1c2luZyBhbiBleHRlcm5hbCBwb3dlciBzdXBwbHkuIENhbiB5b3UgcGxlYXNlIGFkdmlz
ZSBvbg0KPiA+IHdoYXQgdGhlIHBvc3NpYmxlIHByb2JsZW1zIG1pZ2h0IGJlPyBPbiB0aGUgc2Ft
ZSBQQywgd2hlbiB1c2luZyBVYnVudHUsIEkgY2FuIHJlY2VpdmUgNTANCj4gPiBNSHogd2l0aCBh
bG1vc3Qgbm8gbG9zc2VzLg0KPiA+IA0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+ID4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+IA0KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
