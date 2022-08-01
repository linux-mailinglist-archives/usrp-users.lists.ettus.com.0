Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F72F586B2F
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 14:47:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5274383A39
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 08:47:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659358035; bh=UP8bVFGRzzZRZ3dovfZtM1dY4vOhY9adFVLaq8Vy0BE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oJRvpB3IcJ0jMvWQ/WcYzxT+F4JTeQ6Zy6olrhn8zIWJbwMSmnFWcOB6hd5YWXme8
	 LuBe4XhZ/mbxUfgG95aX0LpeNJJWOeC3lkO3fxSvoChsK5lbn0d/OuVX8+cIV8BNJ0
	 EzHr/0TaCMrl/Tzc/MJr+odOusP6+kLdNpZYj5jz65E9DA97U5jhpkglkfFqCceANh
	 QYeRA0Zyv1ebr5e+rnx0nYDcLd7dsl/ExXFayl8yVff1dhbpjzTF7yr/LY4yXHDHE/
	 bdSmDtzIouFIs/WzCk2mPRZIwPNdDp+HuKqg1U2rUblj368FTZt7OhGinpoRIyj8Yu
	 DXTZ2PqXnUypg==
Received: from www.itsystems.it (mx1.itsystems.it [62.94.30.103])
	by mm2.emwd.com (Postfix) with ESMTPS id E1292380AE5
	for <usrp-users@lists.ettus.com>; Mon,  1 Aug 2022 08:46:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=itsystems.it header.i=@itsystems.it header.b="FUXtj1n/";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=itsystems.it; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
	From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/6xQMD7XEo35RjnG8440e5ocq1kEOJo0CPrYlwPytRw=; b=FUXtj1n/RmVMIUOErEMJQuP7v1
	ArK2grtX8PkxuF+W4SflmRmpWyi2j09xK3ND3MbpweFKT4QrksS5fs7er4N7erQOzN0PTaORP9JLu
	QvdmkBs8HQsbOPr2aXpaMrpT5jxwt9QXl4eO5FN5fLfqY32ViYfpn0Wx/Yj2wSs0fX1k=;
Received: from [10.10.200.70]
	by www.itsystems.it with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <p.palana@itsystems.it>)
	id 1oIUnv-0006d8-Lv
	for usrp-users@lists.ettus.com; Mon, 01 Aug 2022 12:45:59 +0000
Message-ID: <a1573c8d-a475-a4e5-7921-dfeee7e1a40d@itsystems.it>
Date: Mon, 1 Aug 2022 14:45:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3Ps9k5kMVWoh4QTvkJ4+BhDnKoXMBxP0cuQFoj3XdLNZGQ@mail.gmail.com>
From: Paolo Palana <p.palana@itsystems.it>
In-Reply-To: <CAA=S3Ps9k5kMVWoh4QTvkJ4+BhDnKoXMBxP0cuQFoj3XdLNZGQ@mail.gmail.com>
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "v-mx.virt.itsystems.it",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  For experimental purpose I did something like you say. Referring
    to usrp X300 1. add the reg variable to rfnoc_ce_default_inst_x300.v (or
   the relevant file for your radio)
 Content analysis details:   (-2.9 points, 5.0 required)
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
Message-ID-Hash: C6B4AQ2BIBAVA3BKAL3YNEIE7KC6TQSV
X-Message-ID-Hash: C6B4AQ2BIBAVA3BKAL3YNEIE7KC6TQSV
X-MailFrom: p.palana@itsystems.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can I define a global reg variable in Verilog between RFNOC blocks?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C6B4AQ2BIBAVA3BKAL3YNEIE7KC6TQSV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

Rm9yIGV4cGVyaW1lbnRhbCBwdXJwb3NlIEkgZGlkIHNvbWV0aGluZyBsaWtlIHlvdSBzYXkuDQoN
ClJlZmVycmluZyB0byB1c3JwIFgzMDANCg0KMS4gYWRkIHRoZSByZWcgdmFyaWFibGUgdG8gcmZu
b2NfY2VfZGVmYXVsdF9pbnN0X3gzMDAudiAob3IgdGhlIHJlbGV2YW50IA0KZmlsZSBmb3IgeW91
ciByYWRpbykNCg0KMi4gYWRkIHRvIHRoZSBub2MgX2Jsb2NrIG1vZHVsZSBkZWNsYXJhdGlvbiBh
biBhZGRpdGlvbmFsIGlucHV0IHBvcnQgZS5nLg0KDQptb2R1bGUgbm9jX3Rlc3QgIygNCiDCoCBw
YXJhbWV0ZXIgTk9DX0lEID0gNjQnaDEyMzRfMDAwMF8wMDAwXzEyMzQsDQogwqAgcGFyYW1ldGVy
IFNUUl9TSU5LX0ZJRk9TSVpFID0gMTEsDQogwqAgcGFyYW1ldGVyIE5VTV9QT1JUU8KgID0gMSkN
CigNCiDCoCBpbnB1dCBidXNfY2xrLCBpbnB1dCBidXNfcnN0LA0KIMKgIGlucHV0IGNlX2Nsaywg
aW5wdXQgY2VfcnN0LA0KIMKgIGlucHV0wqAgWzYzOjBdIG15X25ld19wb3J0LMKgwqDCoCDCoMKg
wqAgwqDCoMKgIDwtLS0tIEVYQU1QTEUsIHRoaXMgaXMgbXkgbmV3IHBvcnQNCiDCoCBpbnB1dMKg
IFs2MzowXSBpX3RkYXRhLCBpbnB1dMKgIGlfdGxhc3QsIGlucHV0wqAgaV90dmFsaWQsIG91dHB1
dCBpX3RyZWFkeSwNCiDCoCBvdXRwdXQgWzYzOjBdIG9fdGRhdGEsIG91dHB1dCBvX3RsYXN0LCBv
dXRwdXQgb190dmFsaWQsIGlucHV0IG9fdHJlYWR5LA0KIMKgIG91dHB1dCBbNjM6MF0gZGVidWcN
Cik7DQoNCg0KMy4gaW5zaWRlIHJmbm9jX2NlX2RlZmF1bHRfaW5zdF94MzAwLnYgKG9yIHRoZSBy
ZWxldmFudCBmaWxlIGZvciB5b3VyIA0KcmFkaW8pIGNvbm5lY3QgdGhlIHJlZyB2YXJpYWJsZSB3
aXRoIHRoZQ0KDQpuZXcgcG9ydCBvbiB0aGUgbm9jX2Jsb2NrDQoNCjQuIE5vdyB5b3UgY2FuIG1h
bmFnZSB0aGUgKHNoYXJlZCkgcmVnIHZhcmlhYmxlIGZyb20gaW5zaWRlIHRoZSBub2MgYmxvY2su
DQoNCkhvcGUgdGhpcyBjYW4gYmUgb2Ygc29tZSBoZWxwLg0KDQpIYXZlIGEgZ29vZCBkYXksDQoN
CnBhb2xvDQoNCk9uIDcvMzEvMjIgMTc6NTIsIHNwIHdyb3RlOg0KPiBIb3cgY2FuIEkgZGVmaW5l
IGEgZ2xvYmFsIHJlZyB2YXJpYWJsZSBpbiBWZXJpbG9nIGJldHdlZW4gUkZOT0MgYmxvY2tzPw0K
PiBJIGRldmVsb3BlZCB0d28gUkZOT0MgYmxvY2tzOiBSRk5PQyBibG9jayBBLCBhbmQgUkZOT0Mg
YmxvY2sgQg0KPiBIb3cgY2FuIGRlZmluZSBhIHJlZyB2YXJpYWJsZcKgdGhhdCBzaGFyZXMgYmV0
d2VlbiBSRk5PQyBibG9ja3MgaW4gVVNSUD8NCj4gQ2FuIGFueW9uZSBndWlkZSBtZT8NCj4NCj4g
SSBzdHVkeSBhYm91dCBnbG9iYWwgcmVnIHZhcmlhYmxlwqBpbiB0aGUgVmVyaWxvZyBtb2R1bGUs
IHNlZSBiZWxvdyANCj4gbGluayzCoMKgYnV0IEkgY2FuIG5vdCBkbyBpdCBmb3IgUkZOT0MgYmxv
Y2tzLi4uDQo+IEhvdyBjYW4gaW1wbGVtZW50IHRoaXMgbWVjaGFuaXNtIGluIFJGTk9DIGJsb2Nr
cw0KPiBodHRwczovL3d3dy5lZGFib2FyZC5jb20vdGhyZWFkcy9ob3ctdG8tZGVmaW5lLWdsb2Jh
bC12YXJpYWJsZS1pbi12ZXJpbG9nLjE3NDE3Mi8NCj4NCj4gVGhhbmtzIGluIGFkdmFuY2UNCj4N
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
