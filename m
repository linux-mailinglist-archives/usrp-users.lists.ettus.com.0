Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCD88BC36D
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2024 22:08:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C900C384889
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2024 16:08:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714939713; bh=0tRRjfrOL0HEoaJfoSzkgJO/nTKa6QiH9eur7CGPGyY=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Jjs2Tpd64tTkiwkqr9QBngPNfqGBAptz6DgqbYZy8ounMG6pucx2pOkt1ac7GFv+1
	 ZRsW+6qtmOZxQuMxNuatf1nE4mO/vuhg1wUBjRouZD7Z89ww49fgKGe2ok1nVI8+ER
	 zWW+Xbdv+fS/pNaYzBEN7XC+cr0x9p/ZYeKAgyUNTu3U4TbBkwmaZjKK2b8ve3Z3+y
	 c1nVMKMOQFOxJKhJ4GTubOmXQxJI+So2fjZrAt3YkCqtaTwn9YuZV5wbWjkFHVWkUl
	 PkmhqGfM7WqSLXK8XbbeqtNEd7v/Pd+AESQ8ypYr763RfmDmBwumuKLEm9KG4FMR0P
	 aIIKIXo1ICqtA==
Received: from mta-202a.earthlink-vadesecure.net (mta-202a.earthlink-vadesecure.net [51.81.232.240])
	by mm2.emwd.com (Postfix) with ESMTPS id DE7873842B1
	for <usrp-users@lists.ettus.com>; Sun,  5 May 2024 16:07:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=earthlink.net header.i=@earthlink.net header.b="cw6dNAmg";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; bh=9BFDM+jO48Fvg9NucXG5Os2roiGZ5aXe2AGf3f
 5QqFg=; c=relaxed/relaxed; d=earthlink.net; h=from:reply-to:subject:
 date:to:cc:resent-date:resent-from:resent-to:resent-cc:in-reply-to:
 references:list-id:list-help:list-unsubscribe:list-subscribe:list-post:
 list-owner:list-archive; q=dns/txt; s=dk12062016; t=1714939677;
 x=1715544477; b=cw6dNAmgU9acIy1oPxIOAqOKTCGuaJsuY7ets7D3SynuaEwz/KtCTvL
 Smeh1k09K7D1s7IVwEwu355fXAZKZ07YjQw4EKqgg0N8hGs567w+afHayDze31RkGccwchH
 VmsHZhpyU5qr063D+x0XjkeZPN0lxuiBUPC56YZuqbIukqHy99XXMl6vlUwczrh1ua19I5N
 bG7VM4T7VWmk/SeuzmBvrKzNoAhIiA46dgRQE2CJrNlfSXe+FLRdT6kCmdV6Ay+yK3jugg1
 ajHGpRzhodvFC1TnPY9uMH5TycaHmzaQUkk3TqE9QZd7qcSw3JsczBryMSOc2/TedantK0V
 TBw==
Authentication-Results: earthlink-vadesecure.net;
 auth=pass smtp.auth=fullbandwidth@earthlink.net smtp.mailfrom=SAustin@CriticalSoftwareSystems.com;
Received: from Win10Pro32BitVM ([73.133.62.234])
 by vsel2nmtao02p.internal.vadesecure.com with ngmta
 id 7bff57c0-17ccb08ce5025b29; Sun, 05 May 2024 20:07:57 +0000
From: "Stuart Austin" <SAustin@CriticalSoftwareSystems.com>
To: <usrp-users@lists.ettus.com>
References: <VULdau3WpJoUrqZUJXWIJAj1F1uG6S8Yd17gPfqx8@lists.ettus.com> <14e82baa-39e1-4364-8914-a079b1e45d25@gmail.com>
In-Reply-To: <14e82baa-39e1-4364-8914-a079b1e45d25@gmail.com>
Date: Sun, 5 May 2024 16:07:56 -0400
Organization: Critical Software Systems
Message-ID: <071201da9f27$ec388940$c4a99bc0$@com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Content-Language: en-us
Thread-Index: AdqfAgooxrS1ktLhSV+VG779dcN0bgAJWcbg
Message-ID-Hash: KKNVU2VCG7TT5LZ3PGW4JP5A4JOBNBFM
X-Message-ID-Hash: KKNVU2VCG7TT5LZ3PGW4JP5A4JOBNBFM
X-MailFrom: SAustin@CriticalSoftwareSystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sharing one UHD device across multiple hosts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KKNVU2VCG7TT5LZ3PGW4JP5A4JOBNBFM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UGVyaGFwcyBjb25zaWRlciBoYXZpbmcgYSB2aXJ0dWFsIG1hY2hpbmUgKFZNKSBhY3QgYXMgdGhl
IGdvLWJldHdlZW4/IFRoZSBWTSB0YWxrcyBkaXJlY3RseSB0byB0aGUgZGV2aWNlIHZpYSBVSEQs
IGJ1dCB0aGVuIHByb3ZpZGVzIGl0cyBvd24gQVBJIHRoYXQgc3BsaXRzIG91dCB0aGUgc3RyZWFt
cy9zZXNzaW9ucyB0byBjbGllbnRzIHJ1bm5pbmcgZWxzZXdoZXJlLiBZb3UnZCBoYXZlIHRvIHdy
aXRlIHNvbWUgY29kZSwgb2YgY291cnNlOyBidXQgcHJlc3VtYWJseSB5b3UgY291bGQgaW1wbGVt
ZW50IHNvbWV0aGluZyBzaW1pbGFyIHRvIFVIRCwgc28gdGhlIGNsaWVudHMgd291bGQgYXBwZWFy
IHRvIGJlIHRhbGtpbmcgdG8gdGhlIGRldmljZSBkaXJlY3RseSwgb3RoZXIgdGhhbiBzb21lIGhv
bWUtYnJldyB3YXkgb2Ygc2VsZWN0aW5nIHRoZSBkZXZpY2Uvc2Vzc2lvbi4NCg0KQ2hlZXJzDQpT
dHVhcnQgQXVzdGluDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBNYXJjdXMg
RC4gTGVlY2ggW21haWx0bzpwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbV0gDQpTZW50OiBTdW5kYXks
IE1heSAwNSwgMjAyNCAxMTozNiBBTQ0KVG86IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQpT
dWJqZWN0OiBbVVNSUC11c2Vyc10gUmU6IFNoYXJpbmcgb25lIFVIRCBkZXZpY2UgYWNyb3NzIG11
bHRpcGxlIGhvc3RzDQoNCk9uIDA1LzA1LzIwMjQgMTE6MjcsIGptYWxveWFuQHVtYXNzLmVkdSB3
cm90ZToNCj4NCj4gSGVsbG8sDQo+DQo+IEkgYW0gd29uZGVyaW5nIGlmIGl0IGlzIHBvc3NpYmxl
IHRvIGFsbG93IGFub3RoZXIgaG9zdCBkZXZpY2UgdG8gc3RhcnQgDQo+IGEgc2Vzc2lvbiB3aXRo
IGFuIHg0MTAgYWZ0ZXIgaXQgYWxyZWFkeSBoYXMgYSBzZXNzaW9uIHdpdGggYSBkaWZmZXJlbnQg
DQo+IGhvc3QgZGV2aWNlLiBJbiBvdGhlciB3b3JkcywgbXVsdGlwbGUgZGV2aWNlcyBzaGFyaW5n
IG9uZSBVU1JQIGRldmljZSANCj4gYXQgdGhlIHNhbWUgdGltZS4NCj4NCj4gSSBrbm93IGl0IGlz
IHBvc3NpYmxlIHRvIOKAnGhpamFja+KAnSBhIHNlc3Npb24gdG8gcGVyZm9ybSBzb21lIG1wbSAN
Cj4gZnVuY3Rpb25zLCBidXQgSSB3b3VsZCBsaWtlIHRvIHN0cmVhbSBzZXBhcmF0ZSBjaGFubmVs
cyBvbiB0aGUgeDQxMCANCj4gZGV2aWNlIGFjcm9zcyBzZXBhcmF0ZSBob3N0IGRldmljZXMuDQo+
DQo+DQpJIGRvbid0IGJlbGlldmUgdGhhdCB0aGVyZSdzIGFueSBzdWNoIGZlYXR1cmUgYnVpbHQt
aW4gdG8gVUhELiBUaGUgVVNSUCANCk4yeHggaGFzIGFuICJhbHRlcm5hdGl2ZSBzdHJlYW0gZGVz
dGluYXRpb24iIEFQSSwgYnV0DQogICB0aGF0IGRpZCBub3QgbWFrZSBpdCBpbnRvIGZ1dHVyZSBV
U1JQcyBhcyBmYXIgYXMgSSBrbm93Lg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20NClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20K
