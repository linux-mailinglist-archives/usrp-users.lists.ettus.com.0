Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C98C7EA0D8
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 17:04:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A28A383B8C
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 11:04:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699891445; bh=Q7hcfF7oz2OAXjF8iAa/6GBwHI+uwZ8hJqUKNSJHZqM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=e5FqY0kiaxE9RwD7/VUw6FB+A9USprRam/BgYT6HmgGgWw/Svyi8f9/kgxEsOJ9aj
	 CWE4faB9M/eiaUZbAemvGbvEEiO3ZoP1LEKNG7IKKrvGfDhzXq7caRXjDWn00zBsMW
	 JutX0mBL9uSWba0EYIdzMcBhDW+FVyYoQ7dSUY+haQsw+3mbKPjENuK+s3rK7p9XPE
	 I5sznK1lgvpUz68nYZSa5B175HkYM1eARcBpzJdYfhwTC2qCij3EHxygTa7aUP8S50
	 Ab9sfMJHZiglIjPq3ofenz3d/BdKtDPlDT9t8D3zoI5xICgK/iyCWAs5iijRVBRZ79
	 ldqUA6/46pKLA==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 8E1CE383B8C
	for <usrp-users@lists.ettus.com>; Mon, 13 Nov 2023 11:03:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GGloDpXF";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-777745f1541so301862885a.0
        for <usrp-users@lists.ettus.com>; Mon, 13 Nov 2023 08:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699891411; x=1700496211; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i5CDFzQk2G9k195KKVo/3jS+W/4SpvaZMGzyKtPHczg=;
        b=GGloDpXF3ttj8nV9j/E9n4FtPOoIREM9rqs8yWIJZh+1W1lcH+5lRbgLf2Zsf5YJyE
         Ty6txGXFp3lchfLTG4iHjGHIZt/Ak7TOoOnmWuX7yt9CxeDoUrP7HivCD3Vbbw4SQQbB
         z6MNHv2o7k7uE90BQjJA4z93ZkOV1A8TGMob+rPk6Bx7Hpp00C+IPpNRvIVOojsHG0J6
         tt0vorAksuA0fsjEkONoxXQ+IDzun1aQjDtHhn+wJHy/BvMVgfm7JqYNETYP0uC+9UrM
         xzG4P8/OTc7wCuImObkc29KxzCO4CkXrD+NrM2y58AY04O41XnWmeRR1BB1cUHkxzvNg
         Sg2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699891411; x=1700496211;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i5CDFzQk2G9k195KKVo/3jS+W/4SpvaZMGzyKtPHczg=;
        b=j6Ddexs9SlvDAscK3fpIlWoaH4Lu4mCTLcUKLdoZDWkSkyxb7KYa1T/W6YBrLCallu
         FruxmXDpf2f8kvvtCtek5LlHKzwMHVc+GxmkJTIidf//ZmpsoY8AeXQmSROKTSWZsJfr
         1CP/ttwKaFiMcFiedEvOM+eFnXacitQjdt4pkY8ISDAxPfJ/Zufei98PEJhCi3fkg5AV
         oNx1+fRfspkCfP80n2K2gVo0b4xo/gomR7x8mz+JYjLecsvfPACg02YXQMX1+RFB03Yz
         PfpHA6LcsT+U+gIWfpAohwjh2EZZEFvdhRif6hjbEmE0twTVvMB//s9sh/Js3YOGCpSR
         yAfw==
X-Gm-Message-State: AOJu0YxxFB0V9CzCHiSZaZkf3voyalmyzLTEk9zae1y8yrAZP0OPyrsi
	FR2FlQPfXhl+yKPop6jOUyqG+XG1fpk=
X-Google-Smtp-Source: AGHT+IGIESBdsL8DBObLA5ygIwK3VQzxSkSpxkxosGyviG9WNYOhnGVf3VGTa7Gq9K8lLdU98H8bzg==
X-Received: by 2002:a05:620a:1708:b0:775:a3fc:a9d1 with SMTP id az8-20020a05620a170800b00775a3fca9d1mr9712234qkb.23.1699891410756;
        Mon, 13 Nov 2023 08:03:30 -0800 (PST)
Received: from [192.168.2.175] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id c39-20020a05620a26a700b00765aa3ffa07sm1974085qkp.98.2023.11.13.08.03.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Nov 2023 08:03:30 -0800 (PST)
Message-ID: <14c9a612-99e9-4310-a234-bf8f444d618c@gmail.com>
Date: Mon, 13 Nov 2023 11:03:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAOYGa73uEs_dg2Tb8O8VHpVkyY-HJ3+r2e690zoJvgoT4=h=CA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOYGa73uEs_dg2Tb8O8VHpVkyY-HJ3+r2e690zoJvgoT4=h=CA@mail.gmail.com>
Message-ID-Hash: 6AOZJ36IXGYFTMUYRZLUOEOKWSA45YPH
X-Message-ID-Hash: 6AOZJ36IXGYFTMUYRZLUOEOKWSA45YPH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 AGC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6AOZJ36IXGYFTMUYRZLUOEOKWSA45YPH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTMvMTEvMjAyMyAwNTowOCwgU3RldmUgSGFtbiB3cm90ZToNCj4gSGVsbG8sDQo+DQo+IERv
ZXMgdGhlIEV0dHVzIE4zMjAgZW1wbG95IGFueSB0eXBlIG9mIEFHQz8gSWYgc28gaXMgdGhlcmUg
YSBkZXRhaWxlZCANCj4gZGVzY3JpcHRpb24gb2YgaXQgYW55d2hlcmU/IE9yIGNhbiBpdCBiZSBk
aXNhYmxlZD8NCkkgZG9uJ3QgYmVsaWV2ZSB0aGUgTjMyMCBpbXBsZW1lbnRzIGFueSB0eXBlIG9m
IEFHQy4NCj4NCj4gSSBub3RpY2UgdGhhdCBpZiBJIHNlbmQgaW4gYSBzdHJvbmcgc2lnbmFsIHRo
ZSBkaWdpdGFsIG91dHB1dCBmcm9tIHRoZSANCj4gU0RSIGlzIGFwcHJveCArLy0xLiBJZiBJIHNl
bmQgaW4gYSB3ZWFrIHNpZ25hbCBpdCdzIGFsc28gKy8tMSBqdXN0IA0KPiBub2lzaWVyLiBJJ3Zl
IGJlZW4gZXhwZXJpbWVudGluZyB3aXRoIHNlbmRpbmcgaW4gYW1wbGl0dWRlIG1vZHVsYXRlZCAN
Cj4gcHVsc2VzLiBTZWVtcyBsaWtlIG92ZXIgJ2xvbmcnIHRpbWVzY2FsZXMgdGhlcmUgaXMgc29t
ZSBzb3J0IG9mIA0KPiBhdXRvbWF0aWMgYWRqdXN0bWVudCBnb2luZyBvbiB0aGF0IGlzIGNvcnJ1
cHRpbmcgbXkgbWVhc3VyZW1lbnRzLiBXaGF0IA0KPiBhbSBJIG1pc3NpbmcgaGVyZT8NCkEgbmFy
cm93YmFuZCBzaWduYWwgcmlnaHQgYXQgdGhlIHR1bmluZyBjZW50ZXIgY2FuIGdldCBtb2RpZmll
ZCBieSB0aGUgDQpidWlsdC1pbiBEQyBvZmZzZXQgY29tcGVuc2F0aW9uIGluIHRoZSBEU1AgbG9n
aWMNCiDCoCBpbiB0aGUgcmFkaW8uwqAgTG9vayBpbnRvICJvZmZzZXQgdHVuaW5nIjoNCg0KaHR0
cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfZ2VuZXJhbC5odG1sDQoNCkFuZCB0aGUg
QVBJIGJpdHMgaGVyZToNCg0KaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3N0cnVjdHVo
ZF8xXzF0dW5lX19yZXF1ZXN0X190Lmh0bWwNCg0KVGhlIGlkZWEgaXMgdGhhdCB5b3UgYXNrIHRo
ZSByYWRpbyB0byBvZmZzZXQgdGhlIExPIGF3YXkgZnJvbSB0aGUgREMgDQphbm9tYWx5LCBhbmQg
dGhlbiB0aGUgRFNQIGluIHRoZSByYWRpbyBzaGlmdHMgdGhlIGJhbmR3aWR0aA0KIMKgc28gdGhh
dCB5b3UgZ2V0IGV4YWN0bHkgdGhlIGRlc2lyZWQgY2VudGVyIGZyZXF1ZW5jeSB0aGF0IHlvdSBh
c2tlZCBmb3IuDQoNCg0KDQpXaGF0IGRvIHlvdSBtZWFuIGJ5ICJ3ZWFrIiBhbmQgInN0cm9uZyIg
c2lnbmFsLsKgIFRoZSBtYXhpbXVtIHJlY29tbWVuZGVkIA0KaW5wdXQgdG8gdGhlIHJhZGlvIGlz
IC0xNWRCTSwgYW5kIGl0cyBuYXJyb3diYW5kDQogwqAgTURTIGF0IG1heCBnYWluIGlzIHByb2Jh
Ymx5IHNvbWV3aGVyZSBzb3V0aCBvZiAtMTIwZEJtLsKgwqDCoCBTbyBib3RoIA0KeW91ciAid2Vh
ayIgYW5kICJzdHJvbmciIHNpZ25hbHMgbWF5IGp1c3QgYmUgY2xpcHBpbmcsIG9yDQogwqAgeW91
J3JlIG1pcy1pbnRlcnByZXRpbmcgdGhlIGRhdGEgdGhhdCB5b3UgYXJlIGNvbGxlY3RpbmcuwqAg
VGhlIHJhZGlvIA0KcmVhbGx5IGRvZXMgaGF2ZSBhIHF1aXRlIGhpZ2ggZHluYW1pYyByYW5nZSwg
YnV0IGl0DQogwqAgZG9lcyBub3QgaW1wbGVtZW50IEFHQyBhcyBmYXIgYXMgSSBrbm93LsKgIFRo
YXQgd291bGQgYmUgc29tZXRoaW5nIA0KeW91J2QgaGF2ZSB0byBpbXBsZW1lbnQgaW4geW91ciBz
aWduYWwgcHJvY2Vzc2luZyBmbG93Lg0KDQoNCj4NCj4gQ29udmVyc2VseSBpdCBhcHBlYXJzIEkg
YW0gYWJsZSB0byBjb250cm9sIHRoZSBUWCBzaWduYWwgYnkganVzdCANCj4gc2VuZGluZyBvdXQg
c21hbGxlciBudW1iZXJzLCBhbmQgSSBkb24ndCBzZWUgdGhpcyAob3IgYW0gSSBqdXN0IA0KPiBt
aXNzaW5nIGl0KT8NCj4NCj4gVGhhbmtzIGluIGFkdmFuY2UgZm9yIGFuecKgaGVscCBvciBpbnNp
Z2h0IHlvdSBjYW4gcHJvdmlkZSENCj4NCj4gVGhhbmtzLA0KPg0KPiBTdGV2ZQ0KPg0KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
