Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AD39A177E
	for <lists+usrp-users@lfdr.de>; Thu, 17 Oct 2024 03:12:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74823385654
	for <lists+usrp-users@lfdr.de>; Wed, 16 Oct 2024 21:12:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729127542; bh=07FEzeKrmfjRCaHOMIEPeSIujZ+npyoqYqfpcc15jo0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=l2L1m1HqJSV1Y89E53/aV/QketUFDqeIPJ9NZ56UO42019IoSRAlf68jxuospRY5x
	 SR4q6NLP6tGuUmVJm1rEep/zz+lgP0B6opGqsQkOiWpOpJufWCFsdrD0PPt2Ux+zs3
	 Q8NUV5zTssSi40ihnkQYa88PXLXWSaDf3z45iU1Un9kNtxJqNkb4e3rxlOm12RwwwX
	 5L5vsgGvaBM2KYY1YnAHLkOBG+DJZVwZJRI5ML5mFR47cvljqJbmi+uAwhJvdA3lKN
	 ajj9RXSA/H108GZS76YXqhnDjmmCblDw87lAqtC1U3SE4LIATFtAneGlysg9zuYP68
	 /1COD9l5jDwFA==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id E0067385570
	for <usrp-users@lists.ettus.com>; Wed, 16 Oct 2024 21:12:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nSjAm01r";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7b14077ec5aso133186985a.1
        for <usrp-users@lists.ettus.com>; Wed, 16 Oct 2024 18:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729127523; x=1729732323; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QFxIaghFCKJF02Ymivk7YQwEO0zireWe5D+A2HZZcwQ=;
        b=nSjAm01r042pm6ESMeViwWrhh3yo8W4+qbkgdg25MDca2ec/B6SH11TPNtxBZzQpZq
         /Uc4ECcvjiISI4X/6OHrqwioIEGSIoQhIZ4EPm/tMihygVe4BJK1eLkIi26jMjN3IcRN
         61RtKdd16NTCrXTXDO95WTJazTcbF42r3hSy5aG9DoiKuoCKn0K79I+jN0+0XUsTwt7R
         ZvJNlj1jKRg4s0ux0gpCEJVkag+mRQSdRZQx1Kx+afisnHgI8k0SZa8yhda/nmvW/Rcf
         7c2ofx8abyxiYbONe3mfivqfCJ8q0HIlhYeZCh1LHi7fxGv3OzKlEQxFhahdxASHC7Ag
         b56A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729127523; x=1729732323;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QFxIaghFCKJF02Ymivk7YQwEO0zireWe5D+A2HZZcwQ=;
        b=t+tAkHIEte+thpor0Q6WCt8GObHoULCB2WJLBUg7WONdVS0QR+QtjqCOCn+hm+WBzi
         rIENyj0RoA/0jyY0lw55HkJ/3eFqpOzjutFoq3YAiILzHHaicED7FXacyABW54KZC6oy
         HV7ONg42NhKxR5c/gzXFEdgWJZD5e1CLarCWX64h4fZxdSbGDhf0I15tAQMwx41NMjwM
         2E2HXfOPOkzs2swqWuW5ymjnJBz0Bc/0QAkVgE19VOvGANq8LUsOOgc0OsmhesxVMWa5
         i8F4yKLRENYGtljaGnDwS84vZDcfVNHsWMlW131FIR4q9f1Se35npDywRaEfeqm2NAut
         USFw==
X-Gm-Message-State: AOJu0YzrDq6xvyXdjaDuWcOxCcP+koDynn7z7sZWiCGTzw/mTSOxaTau
	SurWyy7j0sk644VvSZA2GGRaQ3oarDdVosj8E21p9qRoBjGZLSj6f3GghQ==
X-Google-Smtp-Source: AGHT+IF8Zd9k5vR1yBSkFo4mEP/7HzeszTCZRdkCk5m+134Ke0jbL1XJWbVOuxpHfNnvELRVWaX0XA==
X-Received: by 2002:a05:620a:46a2:b0:7b1:4762:8a with SMTP id af79cd13be357-7b14d4e46c9mr315944985a.3.1729127523075;
        Wed, 16 Oct 2024 18:12:03 -0700 (PDT)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b13617056dsm242939085a.30.2024.10.16.18.12.02
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2024 18:12:02 -0700 (PDT)
Message-ID: <3fc00180-d72b-44c9-9304-8a9820a032b1@gmail.com>
Date: Wed, 16 Oct 2024 21:11:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CANwDeJY9B9Cn7rGQ=BTA3MjO=k94aPnL7PAZRRizX-OR0OwRNg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANwDeJY9B9Cn7rGQ=BTA3MjO=k94aPnL7PAZRRizX-OR0OwRNg@mail.gmail.com>
Message-ID-Hash: TKBA32KSYDN5C3IQ76KPZA25RY3Q654Z
X-Message-ID-Hash: TKBA32KSYDN5C3IQ76KPZA25RY3Q654Z
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Assistance with RFNoC Keep-One-In-N Block For Radiometer Application
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TKBA32KSYDN5C3IQ76KPZA25RY3Q654Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTYvMTAvMjAyNCAyMDo1NSwgRWtpbiBTdSBTYWNpbiB3cm90ZToNCj4gSGVsbG8sDQo+DQo+
IEkgYW0gd29ya2luZyBvbiBtb2RpZnlpbmcgcmZub2Nfa2VlcF9vbmVfaW5fbi52IGNvZGUgZm9y
IGEgRGlja2UgDQo+IHJhZGlvbWV0ZXIgYXBwbGljYXRpb24uIE15IGdvYWwgaXMgdG8gZ2VuZXJh
dGUgYSBEaWNrZSBjbG9jayBmb3IgDQo+IGRpZmZlcmVudCBtb2RlcyBhbmQgdG8gb2J0YWluIHRo
ZSBhY2N1bXVsYXRlZCBwb3dlciBvZiB0aGUgaW5jb21pbmcgDQo+IHNpZ25hbCBvdmVyIGhhbGYg
b2YgdGhlIERpY2tlIGN5Y2xlLiBJIGFtIHVzaW5nIHRoaXMgYmxvY2sgdG8gcHJvZHVjZSANCj4g
YSBEaWNrZSBjbG9jayBmcm9tIGZyb250LXBhbmVsIEdQSU8gYW5kIHVzaW5nIHRoZSBuIHJlZ2lz
dGVyIHRvIGRlZmluZSANCj4gZGlmZmVyZW50IG1vZGVzIGluIGFkZGl0aW9uIHRvIGRlZmluaW5n
IHRoZSBudW1iZXIgb2Yga2VwdCBzYW1wbGVzLiANCj4gVGhlc2UgbW9kZXMgZGV0ZXJtaW5lIHdo
aWNoIEdQSU8gcGlucyB3aWxsIGJlIGFjdGl2ZS4gQWRkaXRpb25hbGx5LCBJIA0KPiB1c2UgdGhl
IGNvbXBsZXhfdG9fbWFnc3EgbW9kdWxlIHRvIGNvbXB1dGUgdGhlIHBvd2VyIG9mIHRoZSBpbmNv
bWluZyANCj4gc2lnbmFsLiBJIGhhdmUgdmVyaWZpZWQgdGhlIERpY2tlIGNsb2NrIG91dHB1dCBm
cm9tIEdQSU8gdXNpbmcgYW4gDQo+IG9zY2lsbG9zY29wZS4gSXQgcmVzcG9uZHMgY29ycmVjdGx5
IHRvIGNoYW5nZXMgaW4gdGhlIG4gdmFsdWUgYXQgdGhlIA0KPiBhcHBsaWNhdGlvbiBsZXZlbC4N
Cj4NCj4gV2hlbiBJIHRyeSB0byBzYW1wbGUgYSBzaW51c29pZGFsIHdhdmUsIGl0IHByb2R1Y2Vz
IHRoZSBzYXd0b290aCANCj4gcGF0dGVybiBmb3Iga2VwdCBzYW1wbGVzIHdoaWNoIGxvb2tzIGNv
cnJlY3QuIEluaXRpYWxseSwgSSB0aG91Z2h0IA0KPiB0aGF0IGJ5IGFkanVzdGluZyB0aGUgbiB2
YWx1ZSBhbmQgZGF0YSByYXRlIGF0IHRoZSBhcHBsaWNhdGlvbiBsZXZlbCANCj4gdG8gY292ZXIg
aGFsZiBvZiB0aGUgRGlja2UgY3ljbGUsIEkgY291bGQgb2J0YWluIGFjY3VtdWxhdGVkIHJlc3Vs
dHMgDQo+IG92ZXIgdGhpcyBwZXJpb2QsIHdoaWNoIHdvdWxkIG1hdGNoIHRoZSBsYXN0IHZhbHVl
IG9mIHRoZSBzYXd0b290aC4gDQo+IEhvd2V2ZXIsIHRoaXMgYXBwcm9hY2ggaXNuJ3Qgd29ya2lu
ZyBhcyBleHBlY3RlZC4gSSBhbSB1c2luZyBhIDIwMCBNSHogDQo+IGNsb2NrLCByZXN1bHRpbmcg
aW4gYSBoYWxmLURpY2tlIHBlcmlvZCBvZiAzMjcuNjggwrVzLiBUbyBtYXRjaCB0aGlzLCBJIA0K
PiBzZXQgdGhlIGRhdGEgcmF0ZSB0byBlbnN1cmUgYW4gaW50ZWdlciBudW1iZXIgb2Ygc2FtcGxl
cyBwZXIgRGlja2UgDQo+IHBlcmlvZCwgc3VjaCBhcyAyNSBNU1BTLiBJIHJhbiB0aGUgZm9sbG93
aW5nIGNvbW1hbmQgZm9yIHRlc3Rpbmc6IA0KPiAuL3Jmbm9jX3J4X3RvX2ZpbGUgLS1hcmdzIGFk
ZHI9MTkyLjE2OC4xMC4yIC0tZnJlcSAyOGU2IC0tbnNhbXBzIDAgDQo+IC0tcmF0ZSAyNWU2IC0t
YmxvY2staWQgS2VlcE9uZUluTiAtLW5fdmFsdWUgODE5MixhbmQgZm9yIHRlc3RpbmcsIEkgDQo+
IGFwcGxpZWQgYSAyNyBNSHogc2ludXNvaWRhbCBpbnB1dC4gSG93ZXZlciwgdGhpcyBzZXR1cCB5
aWVsZHMgDQo+IGluY29uc2lzdGVudCByZXN1bHRzLiBXaGVuIEkgY2hhbmdlIHRoZSByYXRlIHRv
IDIwIE1TUFMgb3Igb3RoZXIgDQo+IHZhbHVlcywgdGhlIHJlc3VsdHMgc2VlbSBtb3JlIGFjY3Vy
YXRlLiBJIGFsc28gZXhwZXJpbWVudGVkIHdpdGggDQo+IGRpZmZlcmVudCBuIHZhbHVlcyBsaWtl
IDQsIDIwLCBhbmQgNDAsIHdoaWNoIHByb2R1Y2VkIHNhd3Rvb3RoIA0KPiBwYXR0ZXJucyB3aXRo
IHZhcnlpbmcgcGVyaW9kcyBhcyBleHBlY3RlZC4gSG93ZXZlciwgbXkgcHJpbWFyeSBnb2FsIGlz
IA0KPiB0byBnYXRoZXIgZGF0YSBzcGVjaWZpY2FsbHkgYXQgdGhlIGVuZCBvZiBlYWNoIGhhbGYt
RGlja2UgY3ljbGUgcmF0aGVyIA0KPiB0aGFuIHBpY2tpbmcgc2FtcGxlcyBkdXJpbmcgdGhlIGN5
Y2xlLg0KPg0KPiBJIHN1c3BlY3QgdGhlcmUgbWF5IGJlIGEgc3luY2hyb25pemF0aW9uIGlzc3Vl
IGJldHdlZW4gdGhlIGJsb2NrIGFuZCANCj4gdGhlIERpY2tlIGNsb2NrLiBDb3VsZCB5b3UgcHJv
dmlkZSBzdWdnZXN0aW9ucyBiYXNlZCBvbiBteSBvYmplY3RpdmVzLCANCj4gb3IgaXMgdGhlcmUg
YW4gYWx0ZXJuYXRpdmUgYXBwcm9hY2ggdGhhdCBtaWdodCBiZSBtb3JlIGVmZmVjdGl2ZSB0aGFu
IA0KPiBhZGp1c3RpbmcgdGhlIG4gdmFsdWU/IEkgYW0gYWxzbyBhZGRpbmcgbW9kaWZpZWQgcGFy
dHMgb2YgdGhlIGNvZGUgYmVsb3cuDQo+DQo+IFRoYW5rIHlvdSBpbiBhZHZhbmNlIGZvciB5b3Vy
IHN1cHBvcnQuIEkgbG9vayBmb3J3YXJkIHRvIHlvdXIgcmVzcG9uc2UuDQo+DQo+IEJlc3QgcmVn
YXJkcywNCj4NCj4gRWtpbg0KPg0KPg0KPiBJbiBvdXRwdXQgc3RhdGUgbWFjaGluZSwgc2FtcGxl
X3JlZ1szMToxNl0gwqAgPD0gdjFvWzMxOjE2XTsNCj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2FtcGxlX3Jl
Z1sxNTowXSDCoDw9IHYyb1szMToxNl07DQo+DQo+IC4uLi4uLi4NCj4NCj4gYWx3YXlzIEAocG9z
ZWRnZSBjbGspIGJlZ2luDQo+IGlmIChyZXNldCkgYmVnaW4NCj4gwqAgwqBrIDw9IDA7DQo+IMKg
IMKgIMKgIMKgwqAgZGlja2VfMSA8PSAwOw0KPiDCoCDCoCDCoCDCoCDCoGRpY2tlX2NoIDw9IDA7
DQo+IMKgIMKgIMKgIMKgIMKgY3RybF9jYWxfMSA8PSAwOw0KPiDCoCDCoCDCoCDCoCDCoGN0cmxf
cmVmXzEgPD0gMDsNCj4gwqAgwqAgwqAgwqAgwqBjdHJsX3ZfMSA8PSAwOw0KPiDCoCDCoCDCoCDC
oCDCoHYxbyA8PSAzMidkMDsNCj4gwqAgwqAgwqAgwqAgwqB2Mm8gPD0gMzInZDA7DQo+IGVuZA0K
Pg0KPiBlbHNlIGlmICh+cmVzZXQpIGJlZ2luDQo+IGsgPD0gaysxOw0KPiBpZiAoayA9PSA2NTUz
NikgYmVnaW4gLy8geWllbGRzIGRpY2tlIGZyZXEgPSAxLjUzIGtIeg0KPiDCoCDCoCDCoCBrIDw9
IDA7DQo+IMKgIMKgIMKgIGRpY2tlXzEgPD0gfmRpY2tlXzE7DQo+IMKgIMKgIMKgIGRpY2tlX2No
IDw9IDE7DQo+IGVuZA0KPg0KPiBpZiAoZGlja2VfY2ggPT0gMSkgYmVnaW4gwqAvLyBpZiBkaWNr
ZSBjbG9jayBwaGFzZSBjaGFuZ2VkDQo+IMKgIGlmIChuID09IDQpIGJlZ2luIC8vIFJlZi1WDQo+
IMKgIMKgaWYgKH5kaWNrZV8xKSBiZWdpbg0KPiDCoCDCoCDCoCBjdHJsX2NhbF8xIDw9IDA7DQo+
IMKgIMKgIMKgIGN0cmxfcmVmXzEgPD0gMTsNCj4gwqAgwqAgwqAgY3RybF92XzEgPD0gMDsNCj4g
wqAgwqBlbmQgZWxzZSBiZWdpbg0KPiDCoCDCoCDCoCBjdHJsX2NhbF8xIDw9IDA7DQo+IMKgIMKg
IMKgIGN0cmxfcmVmXzEgPD0gMDsNCj4gwqAgwqAgwqAgY3RybF92XzEgPD0gMTsNCj4gwqAgwqBl
bmQNCj4gwqBlbmQNCj4gwqBlbHNlIGJlZ2luIMKgLy8gQ2FsLVJlZiAobW9kZSAxIGZvciBhbnl0
aGluZyBlbHNlKQ0KPiDCoCDCoGlmICh+ZGlja2VfMSkgYmVnaW4NCj4gwqAgwqAgwqAgY3RybF9j
YWxfMSA8PSAxOw0KPiDCoCDCoCDCoCBjdHJsX3JlZl8xIDw9IDA7DQo+IMKgIMKgIMKgIGN0cmxf
dl8xIDw9IDA7DQo+IMKgIMKgZW5kIGVsc2UgYmVnaW4NCj4gwqAgwqAgwqAgY3RybF9jYWxfMSA8
PSAwOw0KPiDCoCDCoCDCoCBjdHJsX3JlZl8xIDw9IDE7DQo+IMKgIMKgIMKgIGN0cmxfdl8xIDw9
IDA7DQo+IMKgIMKgZW5kDQo+IMKgZW5kDQo+IMKgZGlja2VfY2ggPD0gMDsgwqAgdjFvIDw9IDMy
J2QwO8KgIHYybyA8PSAzMidkMDsNCj4gZW5kDQo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
ZWxzZSBpZiAoZGlja2VfY2g9PTApIGJlZ2luDQo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIGlmIChzX2F4aXNfdHZhbGlkICYmIHNfYXhpc190cmVhZHkgJiYgb190dmFsaWQpIA0K
PiBiZWdpbg0KPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBpZiAoZGlj
a2VfMSA9PSAwKSBiZWdpbg0KPiDCoCDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHYxbyA8PSB2MW8gKyBvX3RkYXRhOw0KPiDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGVuZA0KPiDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoGVsc2UgaWYgKGRpY2tlXzEgPT0gMSkgYmVnaW4NCj4gwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB2Mm8gPD0gdjJvICsg
b190ZGF0YTsNCj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBlbmQN
Cj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZW5kDQo+IMKgIMKgIMKgIMKgIGVu
ZA0KPiBlbmQNCj4gwqAgwqBlbmQNCj4NCjk5JSBvZiB0aGUgZm9sa3Mgb24gaGVyZSB3b3VsZCBo
YXZlIG5vIGlkZWEgd2hhdCBhIERpY2tlIFJhZGlvbWV0ZXIgDQppcy7CoMKgwqAgSSBkby7CoCBC
dXQgdW5mb3J0dW5hdGVseSwgSSdtIG5vdCBtdWNoIG9mIGFuIEZQR0EgZ3V5Lg0KDQpZb3UgaGF2
ZW4ndCBtZW50aW9uZWQgd2hpY2ggVVNSUCB5b3UncmUgdXNpbmcsIHdpdGggd2hpY2ggDQpkYXVn
aHRlcmNhcmQocykuwqAgV2hhdCBhcmUgeW91ciB1bHRpbWF0ZSBiYW5kd2lkdGggcmVxdWlyZW1l
bnRzPw0KDQpHaXZlbiB5b3VyICJ0ZXN0IiBmcmVxdWVuY3kgb2YgMjhNSHosIEknbSBndWVzc2lu
ZyB0aGlzIGlzIHNvbWUga2luZCBvZiANCkhGIHJhZGlvbWV0ZXIsIHNvIEkgY2FuJ3QgaW1hZ2lu
ZSB0aGF0IHlvdSdyZQ0KIMKgIGRlYWxpbmcgd2l0aCAiZXllLXdhdGVyaW5nIiBiYW5kd2lkdGgu
wqAgSGF2ZSB5b3UgY29uc2lkZXJlZCBhIHB1cmVseSANCmhvc3QtYmFzZWQgaW1wbGVtZW50YXRp
b24/wqAgR2FpbiBkcmlmdCBpbg0KIMKgIG1vZGVybiBSRiBoYXJkd2FyZSBpcyBzbWFsbCBlbm91
Z2gsIGFuZCBzbG93IGVub3VnaCwgdGhhdCBhIGZhaXJseSANCiJsYXp5IiBEaWNrZS1zd2l0Y2hp
bmcgY2FkZW5jZSBjb3VsZCBwcm9iYWJseQ0KIMKgIGJlIHVzZWQsIGFuZCBpdCBjb3VsZCBwcm9i
YWJseSBiZSBtYW5hZ2VkIGZyb20gdGhlIGhvc3Qgc2lkZS7CoCBEdWUgdG8gDQp1bmNlcnRhaW50
aWVzIG9mIGhvdyBtYW55IHNhbXBsZXMgdGhlcmUgbWF5DQogwqAgYmUgImluIGZsaWdodCIsIG15
IGFwcHJvYWNoIHRvIHRoaXMgaW4gdGhlIChkaXN0YW50LCBtaW5kKSBwYXN0IGhhcyANCmJlZW4g
dG8gc2ltcGx5IGRpc2NhcmQgc29tZSBzYW1wbGVzIGFmdGVyIGEgc3RhdGUtY2hhbmdlDQogwqAg
b2YgdGhlIERpY2tlIGhhcmR3YXJlLsKgIFRoaXMgaGFzIG5lZ2xpZ2libGUgaW1wYWN0IG9uIHJh
ZGlvbWV0ZXIgDQpzZW5zaXRpdml0eS4NCg0KSSdtIGFibGUgdG8gZG8gNTBNc3BzIG9mIHNpbXBs
ZSByYWRpb21ldGVyLWxpa2UgInRoaW5ncyIgaW50byBhIGhvc3QgDQpjb21wdXRlciB0aGF0IGlz
IDExIHllYXJzIG9sZC7CoMKgIFNvIHdpdGggbW9yZSBtb2Rlcm4NCiDCoCBQQyBoYXJkd2FyZSwg
dGhpcyBzaG91bGRuJ3QgYmUgYSBwcm9ibGVtIHRvIG1hbmFnZSBlbnRpcmVseSBmcm9tIHRoZSAN
CnNvZnR3YXJlIHNpZGUgb2YgdGhpbmdzLg0KDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
