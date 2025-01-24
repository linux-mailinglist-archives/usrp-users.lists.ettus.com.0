Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BBFA1B069
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 07:29:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4525238599C
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 01:29:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737700158; bh=nc7UNrp25Zz5gvUKzGTrCKswzLGup8cV5zcEW0ZuS7k=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=QFNt//GRUCte9XvQET62DKYJYDd9SOgv/uagOE61nMq9FgaxahQkUBWavfWlckIQ6
	 ArWAED+thzI/qy4ZAzERgvKtOYUYHK5Zo01+SsziUws3CK8rFDwMXM3tLBERgDuCkR
	 xnyy5oFGABogLDhFFgrBTtqshn6xPNTdFgS7oJm02xHQhEcLDUYq1DZc3JL9Qq93BI
	 6X8uqfKmsCqbvEGposKGshj9shwKaAEDzczaOP3OP2BJS+uHCfOkWQm3vQIPRVNP8v
	 67GMOqgKjAvEZjV/w7lAjBw7VJ2RyESNRf3pGM17zvQy7JH6oquSMU8hhWmDUCh6Er
	 3rUZrU3ACAuvQ==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 45872381097
	for <usrp-users@lists.ettus.com>; Fri, 24 Jan 2025 01:28:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VeuNy8/e";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7b7041273ddso159911985a.3
        for <usrp-users@lists.ettus.com>; Thu, 23 Jan 2025 22:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737700117; x=1738304917; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eHJrYpwemqiUlYsRprBaSb6j4QAtwuemOxN2p/C4dAI=;
        b=VeuNy8/ezlp4c57MorLm+BlyTtd+EwjBhIPsLAa6+caz5q+A0cXUXJqHCvqhNGmAqG
         0nQdUj0plxwO83CputCsERB8MamsTbmxWkeRmhwNwGThuvP4h4K+unqoAIfx9vbI6W8E
         tt/pk1H40YPCXRpMZ5w92o6PF7S3cGIOhCWNQvnaSrpbGp2ni9tTPuL1ulfbYk4Q+U39
         8Rq6SSOG/GTUC5BUhyzCIXsTtGbN2X1i3L8ixDnnby0lCaMj1wMLqh6fMxYjCKO5DxX2
         qHshn7Qzy5Ui7WeMEdvzJxPzGcjZXDy1EvM0+xevSKlKs6F6dRuCllCrPyXbdEbot2Lc
         iUwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737700117; x=1738304917;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eHJrYpwemqiUlYsRprBaSb6j4QAtwuemOxN2p/C4dAI=;
        b=DAgxSreeL39t5sL+wDlAi51j50xPLGskxFwMVqrBdVR/w4eBYjo1BQPb4A36+NmTeN
         x3fZWYqlHGQ2r+y+/NWxJN0PUdLUOfz5ZME6NwTzAsFBgOU9c0HjOwjAI3aWTFNQYSRS
         CUw3Z9K2U/+VLU+S7Tqqf/L+3m1FQGl9FI8Fd0dkRVswaVi//EvfzHQi2RRBSXSbUSN+
         U2lIyYrbVAjNVqb4JC9Z1Fq0qoB8YaRPdj/K1zdhUPek4C0YCOSYYiYasEooHEDgsSh9
         JrvzWSbvIdH9Vwd7lEdYy68HcAswUvsFk3/NqetGXpaDKFi6rTm/C7qzg1H+BklA06nr
         KA4A==
X-Gm-Message-State: AOJu0YxLmj4NMKms+NJ7GASHNCH0juWlhqUH70h9wUEmc1pSfktWRdCS
	HQiWjpEL0FWRFXKpI4CFwWcqutsTsymhxahszelanZ2tCyoWyCpoI8OUwg==
X-Gm-Gg: ASbGncumpUWf3YJjizQyQTmZz4SRh6Jf44cxDewMximb8BgPvm3NqHDZ/JoG1qFAjim
	AqKJDsWMSIsR0Jp+jbnWdQtqwU9T9lZudjkmzAgndKJKzQAd6xF0Sz2jsc5i4Zqwxa4lAzdxYEw
	i5R4kZK3ZVHdnvg1/DeGilz2/vbZzM7YEJ0d1lUO/ms94DG8D9oS+uy80uwYsVymD09qztEyQFn
	A0Es35awdHuNTMHHM+8GrBEmoV6BhF6mpD1zRNqQW/10NTPf4nlJoO0ndB+6x9+hcR6QF/jc4O2
	yuAyKHPGyFzuX5LdI2PJQ8Cq5rfeDHDvQG6/ymbPcdVPs6SUlDnRKVvGQexibpPAuNCgPQ01rYk
	uDWs=
X-Google-Smtp-Source: AGHT+IFC/Yh3WjTtps4pCSEUrsOc3l63hXJ2gTTNKRmGKIzCxrfiqQ2fPFVlYkVrlKFEYOGOb0MAsg==
X-Received: by 2002:a05:620a:24c8:b0:7b6:de65:9ee7 with SMTP id af79cd13be357-7be6325fab1mr4560229085a.43.1737700116656;
        Thu, 23 Jan 2025 22:28:36 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7be9aeedb02sm63337685a.79.2025.01.23.22.28.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 22:28:35 -0800 (PST)
Message-ID: <5b987588-26c2-4a61-b7e0-6185ffd0d0b8@gmail.com>
Date: Fri, 24 Jan 2025 01:28:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: kavinraj@atindriya.co.in
References: <c0b8b26f43b81d3bc15a37088f15b44d@atindriya.co.in>
 <4887de4b-39c0-444b-8dbd-26b91fc30808@gmail.com>
 <d575f299c7786b09057001c0b6b20599@atindriya.co.in>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <d575f299c7786b09057001c0b6b20599@atindriya.co.in>
Message-ID-Hash: ZIJYSHO5JMHU6XWU3RXAAOGHIQ57DOEC
X-Message-ID-Hash: ZIJYSHO5JMHU6XWU3RXAAOGHIQ57DOEC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : B205MINI-I board
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZIJYSHO5JMHU6XWU3RXAAOGHIQ57DOEC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjQvMDEvMjAyNSAwMToxNCwga2F2aW5yYWpAYXRpbmRyaXlhLmNvLmluIHdyb3RlOg0KPiBI
aSwNCj4gwqAgSW4gdWhkX3J4X3N0cmVhbWVyX2lzc3VlX3N0cmVhbV9jbWQocnhfc3RyZWFtZXIs
JnN0cmVhbV9jbWQpOyANCj4gZnVuY3Rpb24gc2VnbWVudGF0aW9uIGZhdWx0IGlzIGNvbWluZy4g
U28sIGhvdyB0byByZXNvbHZlIHRoaXMgZXJyb3I/DQo+DQo+DQpUaGUgVUhEIHNvdXJjZSBpbmNs
dWRlcyBzb21lIGV4YW1wbGVzIGluIEM6DQoNCnJ4X3NhbXBsZXNfYy5jDQp0eF9zYW1wbGVzX2Mu
Yw0KDQoNClRoZXNlIGV4YW1wbGVzIGFwcGVhciB0byB3b3JrIGp1c3QgZmluZS4NCg0KDQo+DQo+
DQo+DQo+DQo+DQo+DQo+DQo+DQo+DQo+DQo+IE9uIDIwMjUtMDEtMjQgMDE6MDQsIE1hcmN1cyBE
LiBMZWVjaCB3cm90ZToNCj4+IE9uIDI0LzAxLzIwMjUgMDA6MzMsIGthdmlucmFqQGF0aW5kcml5
YS5jby5pbiB3cm90ZToNCj4+PiBIaSwNCj4+PiDCoMKgIFJlY2VudGx5LCBJIGhhdmUgYm91Z2h0
IFVTUlAgQjIwNW1pbmkgYm9hcmQuIEkgYW0gd29ya2luZyBvbiBpdC4gDQo+Pj4gSSBoYXZlIGRv
d25sb2FkZWQgdGhlIFVIRCBkcml2ZXIgZnJvbSB0aGUgdWJ1bnR1IHBhY2thZ2Uoc3VkbyANCj4+
PiBhcHQtZ2V0IGluc3RhbGwgbGlidWhkLWRldiB1aGQtaG9zdCkuDQo+Pj4NCj4+PiDCoMKgIFdo
ZW4gdGhlIGJvYXJkIGlzIGNvbm5lY3RlZCB0byB0aGUgUEMgaXQgaXMgZGV0ZWN0ZWQgd2hlbiBJ
IGdpdmUgDQo+Pj4gdGhlIHVoZF9maW5kX2RldmljZXMgaXQgc2hvd3MgdGhlIHNlcmlhbCxuYW1l
LHByb2R1Y3QgYW5kIHR5cGUuDQo+Pj4NCj4+PiDCoMKgIFNvLCBJIGhhdmUgd3JpdHRlbiB0aGUg
Y29kZSBmb3IgcmVjZWl2aW5nIHRoZSBkYXRhLiBXaGVuIEkgYW0gDQo+Pj4gYnVpbGQgdGhlIGNv
ZGUgaXQgZG9lc24ndCBzaG93IGFueSBlcnJvci4gV2hlbiBJIHJ1biB0aGUgcHJvZ3JhbSANCj4+
PiBzb21lIEFQSSBmdW5jdGlvbnMgYXJlIHdvcmtpbmcgZmluZS4gd2hlbiBpdCByZWFjaCB0aGUg
DQo+Pj4gdWhkX3J4X3N0cmVhbWVyX2lzc3VlX3N0cmVhbV9jbWQocnhfc3RyZWFtZXIsJnN0cmVh
bV9jbWQpOyBhbmQgDQo+Pj4gdWhkX3J4X3N0cmVhbWVyX3JlY3Yocnhfc3RyZWFtZXIsIGJ1ZmZz
X3B0ciwgU0FNUExFU19QRVJfQlVSU1QsIA0KPj4+ICZyeF9tZXRhZGF0YSwgYnVyc3RfZHVyYXRp
b24sIGZhbHNlLCAmaXRlbXNfcmVjZWl2ZWQpO8KgIGl0IA0KPj4+IGF1dG9tYXRpY2FsbHkgdGVy
bWluYXRlcyB0aGUgcHJvZ3JhbS4NCj4+Pg0KPj4+IMKgwqAgV2hlbiBJIGRlYnVnIGxpbmUgYnkg
bGluZSwgYWZ0ZXIgcmVhY2hpbmcgdGhlIGFib3ZlIGZ1bmN0aW9uIGl0IA0KPj4+IHNob3dzIGxp
a2UgTm8gc291cmNlIGF2YWlsYWJsZSBmb3IgDQo+Pj4gInVoZF9yeF9zdHJlYW1lcl9pc3N1ZV9z
dHJlYW1fY21kKCkgYXQgMHg3ZmZmZjcyMjdjZmUiIC7CoCBXaGF0IG1heSANCj4+PiBiZSB0aGUg
aXNzdWU/DQo+Pj4NCj4+PiDCoMKgIEFsc28gSSB3YW50IHRvIGNvbmZpZ3VyZSB0aGUgR1BJTyBw
aW5zIGluIHRoZSBib2FyZC4gRm9yIHRoYXQgSSANCj4+PiBuZWVkIEdQSU8gYmFuayBuYW1lLCBD
YW4geW91IGdpdmUgbWUgdGhlIEdQSU8gYmFuayBuYW1lIG9mIHRoaXMgYm9hcmQ/DQo+Pj4NCj4+
Pg0KPj4+IFdpdGggcmVnYXJkcywNCj4+PiBLYXZpbnJhai4NCj4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4+IFVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+Pj4gVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPj4gVGhlcmUn
cyBhbHNvIGEgImdwaW8iIHV0aWxpdHkgaW4gdGhlIGV4YW1wbGVzLCB3aGljaCBpbmNsdWRlcyBh
IA0KPj4gIi0tbGlzdC1iYW5rcyIgb3B0aW9uLg0KPj4NCj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
