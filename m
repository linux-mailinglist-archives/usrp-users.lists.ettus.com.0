Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94242411546
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 15:07:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC70C3841EF
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 09:07:02 -0400 (EDT)
Received: from smtp.smtpout.orange.fr (smtp02.smtpout.orange.fr [80.12.242.124])
	by mm2.emwd.com (Postfix) with ESMTPS id 42472384013
	for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 09:06:12 -0400 (EDT)
Received: from localhost.localdomain ([81.250.184.13])
	by smtp.orange.fr with ESMTP
	id SIzqm3zLtBazoSIzrmwbv7; Mon, 20 Sep 2021 15:06:11 +0200
X-ME-Helo: localhost.localdomain
X-ME-Date: Mon, 20 Sep 2021 15:06:11 +0200
X-ME-IP: 81.250.184.13
To: usrp-users@lists.ettus.com
From: Christophe Grimault <christophe.grimault@novagrid.com>
Message-ID: <50e33ea6-dc74-d466-8e90-aeda6957c14a@novagrid.com>
Date: Mon, 20 Sep 2021 15:06:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Language: en-US
Message-ID-Hash: A4PGG7XCCCOBFMGLSXYM76LDS7TPLUAA
X-Message-ID-Hash: A4PGG7XCCCOBFMGLSXYM76LDS7TPLUAA
X-MailFrom: christophe.grimault@novagrid.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Create two stream with python UHD
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A4PGG7XCCCOBFMGLSXYM76LDS7TPLUAA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgZXZlcnlvbmUsDQoNCkkgaGF2ZSBhIHB5dGhvbiBzY3JpcHQgd29ya2luZyB0aGF0IGRlbGl2
ZXJzIGRhdGEgZnJvbSBhIHNpbmdsZSByeA0Kc3RyZWFtLCB3aXRoIE4yMTAgYXQgMS41TVNDeC9z
LiBOb3cgSSB0cnkgdG8gaGF2ZSB0d28gc3RyZWFtcyBhbmQgSSdtDQpmYWlsaW5nIHdoYXRldmVy
IEkgdHJ5ICENCg0KSSBmaXJzdCB0cmllZCB0byBoYXZlIDIgYXN5bmNocm9ub3VzIHN0cmVhbXMs
IGZpbGxpbmcgMiBidWZmZXJzLCBpbiAyDQppbmRlcGVuZGFudCB0aHJlYWRzLiBCdXQgYXMgc29v
biBhcyBJIHN0YXJ0IHRoZSBzZWNvbmQgc3RyZWFtLCBib3RoDQpzdHJlYW1zIGZhaWwgISAoSSBz
ZWUgRCwgREQgYW5kIHRoZSBidWZmZXJzIGFyZSBhbG1vc3QgYWx3YXlzIGVtcHR5ICEpLg0KDQpU
aGVuIEkgdHJpZWQgMSBzeW5jaHJvbm91cyByeCBzdHJlYW0sIHdpdGggMiBjaGFubmVscywgYW5k
IGEgYnVmZmVyIG9mDQpzaXplICgyLCBOKSwgYnV0IGl0IGRvZXMgbm90IHdvcmsgZWl0aGVyICEN
Cg0KSGFzIHNvbWVvbmUgZG9uZSB0aGF0LCB3aXRoIHRoZSBweXRob24gdmVyc2lvbiBvZiB0aGUg
dWhkID8gQlRXLCBJIHVzZQ0KTEZSWCBEYm9hcmQuLi4NCg0KQW55IGhlbHAgcmVhbGx5IGFwcHJl
Y2lhdGVkIDshDQoNCi0tIA0KQ2hyaXN0b3BoZSBHcmltYXVsdA0KTm92YUdyaWQgU0FTDQpMZXMg
SmFyZGlucyBkZSBsYSBUZWlsbGFpcw0KMywgYWxsw6llIGRlIGxhIGdyYW5kZSDDqWdhbG9ubmUN
CjM1NzQwIFBhY8OpLCBGcmFuY2UNClRlbCA6ICgzMykyIDIzIDQxIDM3IDk3DQpNb2I6ICgzMyk2
IDgyIDIyIDQ2IDkzDQp3d3cubm92YWdyaWQuY29tDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
