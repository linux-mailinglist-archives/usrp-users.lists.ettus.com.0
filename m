Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E43DE9FFEEE
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2025 19:57:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3FED5385E3E
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2025 13:57:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735844232; bh=ZdeQgMbWKw9BuDf5z2KxQocunDxi9lABXDK2+2fnq1Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ifiADxaQrhX5Y9/JTedXrVvOw0r2UBjvVkzI5X8wQPukTIsCNDkp2Rr+B4KNehvSB
	 wBd4AzUaxuy/OFpyiVPN+D95HNBMLTKHL23wDtuHZaIZlRDf9YmTXo4ITtAV6Iwg8J
	 KFgOu9bNvVCnn/VYOuZS5a0vCfo3dEmIg+Rx8w8vOkHIBvzr3dVGQc6xvBxPXNgIhK
	 X56IoktLshU+5VkX36bholoC5c4wmDX+k6f8+5T46F4BVhUNMwEgaLfV1y8UEGtzmx
	 Qi2X9sX4pKJB83AQ6uNUvFbZyT38WYasFZUGHBTdQmRn52fdApzOKSqDnmpy4pS/Kw
	 Wno9KLIqi80JA==
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
	by mm2.emwd.com (Postfix) with ESMTPS id 30C38385FF5
	for <usrp-users@lists.ettus.com>; Thu,  2 Jan 2025 13:56:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=sakthi.me header.i=@sakthi.me header.b="FyEFuMWp";
	dkim-atps=neutral
Received: by mail.gandi.net (Postfix) with ESMTPSA id D019D240003
	for <usrp-users@lists.ettus.com>; Thu,  2 Jan 2025 18:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakthi.me; s=gm1;
	t=1735844166;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pFXQsMiroBluRZv5o7QteRv8+4yOyJ5+eFQPDvXQ84Y=;
	b=FyEFuMWpnIr8+ewt1Pi7zIIAngxs6gDDIEj5JRinlA4GUyE667Pw3o+z8WjPLMpj4PybjB
	M11iY3nAVoeVQDtCGLANGd+BdKasQDnlixTvkzghJdwvDS8VkyijNiZhUV5gblU7Y0ukTd
	VZsnCInwuAqBshSmXpb9xHEjJ2Ysej5FNKlh0BQkjnyeEQCA8Eq2CHXI7nR/o8JL+ydhrt
	sfWfevk0Q4COi/B+IKx4pguWjw/KhhCMVchmR+4yixksKa02GUKH6Oz2NzbQHLcvGOjN3D
	PU8s6pNSxE1v7TPy+eYVdnwxZe+oW6ZqEkabDoC3BWAqSaGm7R9hZHvOXNkB3w==
Message-ID: <d41b9e8b-78d8-44ec-b382-b879ca9caa03@sakthi.me>
Date: Thu, 2 Jan 2025 13:56:04 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <17bafe57-f301-48ba-950e-4d2f3f99e221@sakthi.me>
 <98952581-8e30-486b-9e9d-eafdf2a42445@gmail.com>
Content-Language: en-US
From: Sakthivel Velumani <mail@sakthi.me>
In-Reply-To: <98952581-8e30-486b-9e9d-eafdf2a42445@gmail.com>
X-GND-Sasl: mail@sakthi.me
Message-ID-Hash: FMKGVDRMRD4NCMHCAWQFWFGNA2ATLT2G
X-Message-ID-Hash: FMKGVDRMRD4NCMHCAWQFWFGNA2ATLT2G
X-MailFrom: mail@sakthi.me
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running user application in X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FMKGVDRMRD4NCMHCAWQFWFGNA2ATLT2G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgTWFyY3VzLA0KDQpUaGFua3MgZm9yIHRoZSBwb2ludGVycy4gSSBhbSBsb29raW5nIHRvIG9m
ZmxvYWQgYWxsIHRoZSBEU1Agd29yayB0byB0aGUgDQpSRk5vQyBhbmQgaGF2ZSB0aGUgQ1BVcyBk
byB0cml2aWFsIHRhc2tzIGxpa2Ugc2VxdWVuY2UgZ2VuZXJhdGlvbiBzbyANCnRoYXQgSSBkb24n
dCBoYXZlIHRvIHdyaXRlIEhETCBmb3IgZXZlcnl0aGluZy4gSSBhbSBzdGlsbCBub3QgZW50aXJl
bHkgDQpzdXJlIG9mIGhvdyB0aGlzIGNhbiBiZSBkb25lIGJ1dCBJIGZvdW5kIGEgc29mdHdhcmUg
ZGV2ZWxvcG1lbnQgZ3VpZGUgDQpmb3IgRTMxMCANCihodHRwczovL2tiLmV0dHVzLmNvbS9Tb2Z0
d2FyZV9EZXZlbG9wbWVudF9vbl90aGVfRTMxMF9hbmRfRTMxMikgd2hpY2ggDQpsb29rcyBsaWtl
IHNvbWV0aGluZyBJIHdhbnQgdG8gYWNoaWV2ZSBzbyBpdCdzIGEgZ29vZCBzdGFydCBJIGd1ZXNz
Lg0KDQpUaGFua3MgYWdhaW4uDQoNClNha3RoaQ0KDQpPbiAxLzIvMjUgMTM6MTAsIE1hcmN1cyBE
LiBMZWVjaCB3cm90ZToNCj4gT24gMDIvMDEvMjAyNSAxMjo1NiwgU2FrdGhpdmVsIFZlbHVtYW5p
IHdyb3RlOg0KPj4gSGksDQo+Pg0KPj4gSSBhbSB3b25kZXJpbmcgaWYgdGhlIHVzZXIgY2FuIHJ1
biBhIGN1c3RvbSBsaW51eCBhcHBsaWNhdGlvbiBvbiB0aGUgDQo+PiBBUk0gY29yZXMgdGhhdCBj
YW4gb2ZmbG9hZCBjZXJ0YWluIHRhc2tzIHRvIHRoZSBQTD8gb3IgZG9lcyB0aGUgUkZOb0MgDQo+
PiBjb3JlIGltcGxlbWVudGF0aW9uIGFsbG93IGEgUkZOb0MgYmxvY2sgdG8gaW50ZXJhY3Qgd2l0
aCBhbiANCj4+IGFwcGxpY2F0aW9uIG9uIHRoZSBQUyB2aWEgdGhlIEFYSSBpbnRlcmZhY2U/DQo+
Pg0KPj4gUmVnYXJkcywNCj4+DQo+PiBTYWt0aGkNCj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPiBZb3Ugc2hvdWxkIGJlIGFi
bGUgdG8gcnVuIFVIRC11c2luZyBhcHBsaWNhdGlvbnMgb24gdGhlIEFSTSBvbiB0aGUgDQo+IFg0
MTAsIGp1c3QgbGlrZSBhbnkgb2YgdGhlIG90aGVyIHBsYXRmb3JtcyB0aGF0IHByb3ZpZGUNCj4g
wqAgYW4gZW1iZWRkZWQgQVJNIENQVS7CoCBIT1dFVkVSLCB0aG9zZSBBUk1zIGFyZSBvbmx5IGR1
YWwgY29yZSwgDQo+IHR5cGljYWxseSAoSSBkb24ndCBrbm93IGZvciBzdXJlIG9uIHRoZSBYNDEw
KSwgYW5kIHRoZXkNCj4gwqAgY2Fubm90IGJlIGV4cGVjdGVkIHRvIHByb3ZpZGUgaGlnaC1iYW5k
d2lkdGggc2FtcGxlIHN0cmVhbXMgDQo+IGludG8vb3V0LW9mIHRoZSByYWRpby4NCj4NCj4gSSBk
b24ndCBrbm93IHdoZXRoZXIgdGhlIFB5dGhvbiBBUEkgZm9yIFVIRCBpcyBpbnN0YWxsZWQgYnkg
ZGVmYXVsdCBvbiANCj4gdGhlIFg0MTAgc3lzdGVtIGltYWdlLCBidXQgdGhhdCB3b3VsZCBiZSBh
bg0KPiDCoCBlYXN5IHBhdGh3YXkgdG8gZG8gaW5pdGlhbCBleHBlcmltZW50cy4NCj4NCj4gUmVh
bGx5IHRob3VnaCwgZm9yIHRoZXNlIGhpZ2gtZW5kIGJveGVzLCB0aGUgQVJNIENQVXMgZXhpc3Qg
bGFyZ2VseSANCj4gZm9yIGhvdXNla2VlcGluZyBhbmQgbG9naXN0aWNzIG1hbmFnZW1lbnQgb2YN
Cj4gwqAgdGhlIHJhZGlvLCB2aWEgdGhpbmdzIGxpa2UgTVBNLCBldGMuwqDCoCBUaGUgZmFjdCB0
aGF0IHRoZXkgKmNhbiogcnVuIA0KPiBhIHVzZXIgYXBwbGljYXRpb24gaXMganVzdCBraW5kIG9m
IGEgc2lkZS1lZmZlY3QsIGFuZA0KPiDCoCB0aGF0IGFwcGxpY2F0aW9uIHdvdWxkIG5lZWQgdG8g
b2ZmbG9hZCBuZWFybHktQUxMIG9mIGl0cyBhY3R1YWwgRFNQIA0KPiB3b3JrIHRvIFJGTm9DLCBz
aW5jZSB0aGVzZSBBUk0gQ1BVcyBhcmUgbm90DQo+IMKgIHBhcnRpY3VsYXJseSBjYXBhYmxlIGlu
IHRlcm1zIG9mIGNvbXB1dGF0aW9uYWwgYW5kIG1lbW9yeS1iYW5kd2lkdGggDQo+IHBlcmZvcm1h
bmNlLg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0K
PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20K
