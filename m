Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6651D75B16C
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jul 2023 16:42:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5A0CE384E06
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jul 2023 10:42:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689864133; bh=2LFUEiubn3YGvfsbdhhDOkSBmV6pMsS+z6NTfAFTSJU=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=sLrCnUrlAaP8kdfUyDyP3DUZ/HqJRCY1ff2dovZ33XlXTMYDPfftD6cDeX1Uk7/Dv
	 WZrm+HsO2i6VZOHtwYeQbLIjkLOuS+N/cINR1wY1SOQZ4qpOYxPWbSB8XeS9GFZxFm
	 SaIf2cfn564sTAATwY/2QZEMVTpDC43w2Rz/9ooaaBT8UDG//y3mDiFL3OODTD7lHl
	 Ot5telrax2KcPaN142VrVESBuSWaJbTA5ITYHSvLRhahhDAFugMjD3Or28yj3SN+Aq
	 7+djzzkOR/4U+VVnPoaNA10fUEcp93+3eT8KJ90kgGmaXO0EqNWR2iB0Qxm+t1dJXX
	 bPJFHKl/TaGXQ==
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [212.27.42.5])
	by mm2.emwd.com (Postfix) with ESMTPS id 77B38384C95
	for <usrp-users@lists.ettus.com>; Thu, 20 Jul 2023 10:41:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=free.fr header.i=@free.fr header.b="HjPILunB";
	dkim-atps=neutral
Received: from zimbra-e1-03.priv.proxad.net (unknown [172.20.243.151])
	by smtp5-g21.free.fr (Postfix) with ESMTP id 141DC5FFC0;
	Thu, 20 Jul 2023 16:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1689864097;
	bh=L5+jhb62yB733QRZEakBzgaGYBhaCQ3avqI79zFlIPA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=HjPILunBgSsIOta/XqO9YpqI8nRedcgD6XL9ODmsOmdrOCLR8++iASklOs7XaJQgs
	 F8Scv+U36/qT8yDpBUb8xIX11ELCdOJBXpFoIKr+U/R+DVhdS0otO1/JG9c2T4VYpu
	 oBEoq1RosqZnSMie5PRrhvGGL3VaDtNnNFgcSpcYPzSSVaJKCBu09ee4ykk/FWdHMI
	 bPqeZMv2p/UrROmsQ3ZRxj11jbF/qrV9NjAmWHmn2CD7DJ+HrsiN/gc7tNrt+lhYnD
	 spePhAAHF4TV9J/xFPtVzJVA5ao8/MomkG6U/HJe+ChV0HWSbCWJWyEkOC4RXwVltl
	 5DYF8G5buVkww==
Date: Thu, 20 Jul 2023 16:41:37 +0200 (CEST)
From: friedtj@free.fr
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1697525267.109285969.1689864097045.JavaMail.zimbra@free.fr>
In-Reply-To: <d8b3e016-3255-7757-92ff-8a0edbdcc3f2@gmail.com>
References: <253020606.65756797.1689346704238.JavaMail.zimbra@free.fr> <7b567967-a9f7-6223-3120-a13a4ce6d9cf@gmail.com> <1665021956.105780246.1689833084445.JavaMail.zimbra@free.fr> <d8b3e016-3255-7757-92ff-8a0edbdcc3f2@gmail.com>
MIME-Version: 1.0
X-Originating-IP: [194.167.45.25]
X-Mailer: Zimbra 9.0.0_GA_1337 (ZimbraWebClient - FF102 (Linux)/9.0.0_GA_1337)
Thread-Topic: X310 1-PPS synchronization
Thread-Index: XFhwcGlQY6tiVIfKdQmBpHxozmKAIA==
Message-ID-Hash: RKRZKQKH27MYZE2DRXLH6DCR3INIRVKK
X-Message-ID-Hash: RKRZKQKH27MYZE2DRXLH6DCR3INIRVKK
X-MailFrom: friedtj@free.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 1-PPS synchronization
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RKRZKQKH27MYZE2DRXLH6DCR3INIRVKK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBJIGRvbid0IHNlZSBhIHN0cmVhbWluZyB0aW1lIHNwZWNpZmllZCBpbiB0aGUgZ2VuZXJhdGVk
IGNvZGUgdGhhdCB5b3UgDQo+IHN1cHBsaWVkLg0KDQpJIHVzZWQNCiAgICAgICAgc2VsZi5ibG9j
a3NfaGVhZF8wID0gYmxvY2tzLmhlYWQoZ3Iuc2l6ZW9mX2dyX2NvbXBsZXgqMSwgKGludCg2KnNh
bXBfcmF0ZSkpKQ0KYW5kDQogICAgICAgIHNlbGYuY29ubmVjdCgoc2VsZi5ibG9ja3NfaGVhZF8w
LCAwKSwgKHNlbGYuYmxvY2tzX2ZpbGVfc2lua18wLCAwKSkNCiAgICAgICAgc2VsZi5jb25uZWN0
KChzZWxmLmJsb2Nrc19pbnRlcmxlYXZlXzAsIDApLCAoc2VsZi5ibG9ja3NfaGVhZF8wLCAwKSkN
CmFuZCBzaW5jZSBJIGludGVybGVhdmUgMiBjb21wbGV4IHN0cmVhbXMgSSBleHBlY3QgNipzYW1w
X3JhdGUgdG8gbGFzdCAzIHNlY29uZHMNCg0KPiBUcnkgc2V0dGluZyBhICJTdGFydCBUaW1lIiBp
biB5b3VyIFVIRCBzb3VyY2UgYmxvY2sgb2YgcGVyaGFwcyAiMi4wIiAtLSANCj4gdGhpcyB3aWxs
IGFycmFuZ2UgZm9yIHN0cmVhbWluZyB0byBjb21tZW5jZSAyIHNlY29uZHMNCj4gYWZ0ZXIgaXQg
cmVzZXRzIHRoZSB0aW1lc3RhbXAgY2xvY2suwqAgT3RoZXJ3aXNlLCBzdHJlYW1pbmcgaXMgc3Rh
cnRlZCANCj4gYXQgc29tZSByYW5kb20gdGltZS4NCg0KT0sgd2lsbCB0cnkgdGhhdC4gVGhlIHNl
dHRpbmcgaW4gdGhlIFB5dGhvbiBzY3JpcHQgaXMgdGhlIG9uZSBwcm92aWRlZCBieSBHUkMuDQpJ
bmRlZWQgYWRkaW5nIGF0IHRoZSBlbmQgb2YgdGhlIF9faW5pdF9fKHNlbGYpIGdlbmVyYXRlZCBi
eSBHUkMNCiAgICAgICAgY3Vycl9od190aW1lID0gc2VsZi51aGRfdXNycF9zb3VyY2VfMS5nZXRf
dGltZV9sYXN0X3BwcygpICANCiAgICAgICAgc2VsZi51aGRfdXNycF9zb3VyY2VfMS5zZXRfdGlt
ZV9uZXh0X3BwcygoY3Vycl9od190aW1lKzEuMCkpICANCiAgICAgICAgc2VsZi51aGRfdXNycF9z
b3VyY2VfMS5zZXRfc3RhcnRfdGltZSgoY3Vycl9od190aW1lKzEuMSkpICANCnNlZW1zIHRvIGRv
IHRoZSB0cmljayB3aXRoIHRoZSAxc3QgUFBTIGVkZ2UgYWx3YXlzIGFsaWduZWQgdG8gdGhlIHNh
bWUgc2FtcGxlIGluZGV4Lg0KVG9vIGJhZCBHUkMgZG9lcyBub3QgZ2VuZXJhdGUgdGhlIGFwcHJv
cHJpYXRlIGNvZGU6IEkgY2Fubm90IHNlZSBhbnkgaW1wYWN0IHdoZW4NCmNoYW5naW5nIHRoZSBT
dGFydCBUaW1lIChzZWNvbmRzKSBvZiB0aGUgVUhEOiBVU1JQIFNvdXJjZSBibG9jay4NCg0KPiBB
bHNvLCByYXRoZXIgdGhhbiBsb29raW5nIGZvciB0aGUgUFBTIGVkZ2UgaW4gdGhlIGRhdGEsIHRo
ZSAiRmlsZSBNZXRhIA0KPiBTaW5rIiBpbmNsdWRlcyBtZXRhLWRhdGEsIGxpa2UgdGltZXN0YW1w
cy1hcy1zZWVuLWJ5LXRoZS1yYWRpby4NCg0KVGhlIFBQUyBlZGdlIHdhcyBqdXN0IHRvIGNoZWNr
IHRoZSBjb25zaXN0ZW5jeSBvZiB0aGUgZGF0ZSBsYXN0IGFjY2VzcyBkYXRlDQood2hpY2ggc2Vl
bXMgY29uc2lzdGVudCB3aXRoIG15IGV4cGVjdGF0aW9uKSBhbmQgdGhlIHBvc2l0aW9uIG9mIHRo
ZSBhY3R1YWwNCmRhdGEgKHdoaWNoIEkgY2Fubm90IGZpZ3VyZSBvdXQgYnkgYW5hbHl6aW5nIHRo
ZSBJUSBzdHJlYW0pLiBJIGRpZCBjaGVjayB0aGF0IHRoZQ0KbWV0YSBkYXRhIGFyZSBjb25zaXN0
ZW50ICh3aXRoIG15IGFib3ZlIGV4YW1wbGUgdGhlIGRhdGEgc3RhcnQgc3RyZWFtaW5nIGF0IDEu
MSBzDQpvZiB0aGUgaW50ZXJuYWwgdGltZXIgb2YgdGhlIFNEUiBzb3VyY2UpIGJ1dCBteSBvYmpl
Y3RpdmUgaXMgdGhlIGNvbXBhcmlzb24gd2l0aA0KdGhlIHN5c3RlbSB0aW1lLCB3aGljaCBJIGFt
IG5vdyBvbiBiZXR0ZXIgdHJhY2tzIHRvIGFjaGlldmUgd2l0aCB0aGVzZSBpbnB1dHMuDQoNClRo
YW5rcy4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20K
