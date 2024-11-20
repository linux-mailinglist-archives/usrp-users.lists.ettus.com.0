Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6129D3F6B
	for <lists+usrp-users@lfdr.de>; Wed, 20 Nov 2024 16:54:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A3165386358
	for <lists+usrp-users@lfdr.de>; Wed, 20 Nov 2024 10:53:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732118039; bh=togcQ/6tAN+lQ/t2yu1RZJD/UOuLcYkviNYrDPADAfs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Y9BCDLsQ0oJezgklzhExlVtaR2t6jhE+OmCmpaxE3Bwdr7vPu9r4KWCCGbq0LIsrc
	 4JTbc2HZCFs1XzjmKSbkgRIoSHJo4DYncLKHt7+BvyNJLi2YBhJvUW9bCWmmgbPe6s
	 f1A3HYC1EHwXaadIf+henVMmZtTZexjpBhjnh7VvHO2d25E5DM9cgk3y6JwtAS6TDP
	 KSd+iMGUvRa8n2Di9AUPAYyzkrJAo9+8Mg09uhsJVgTqy0aYN/DiKQSFtCdsO96a37
	 7dRuqIJV4WrQ++s4zX6Bkh5H6AJPmhnP7j0+UiuPzhrrhHwaYsg3nbV9qwlxRop+Lh
	 EHhobDyPWqd8Q==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 71F92385AEF
	for <usrp-users@lists.ettus.com>; Wed, 20 Nov 2024 10:53:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iJphvMVJ";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7b18da94ba9so93153285a.0
        for <usrp-users@lists.ettus.com>; Wed, 20 Nov 2024 07:53:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732118020; x=1732722820; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BeZmKj2DqRVspUXUGtFcwdhzgHqcIQveDsCswQ2ehCA=;
        b=iJphvMVJYnXBu8sFgxNbUcGAWZQp9j7+f9RqIvZ9EvcCB5APyr8Zabzq+xD6vh7GRi
         D5xG69I12SyGUbhbkrgXKwl80V5XUNM8GLSXTAz3mUZIlEaz1/QNSIrTds6ZD1fzm2ZF
         +EOGwlbNJDafX7W6kLNj+vg5YhO2KjOpGJzOfYKNJvxgdGToWH6Ii7jv3gFH4BY5MjB0
         gExKJeBcGtL8FNpWqx2OusjIv6uPIOXXARxaCoJ1PV1QjueUrfZz+J5dXV7BSJctk9X6
         1tzLg1oQch/uE4QNLjhPTZMTKoq0fezPuJFsfqa1mdyz9jMQBFv1D7Ryex3dZylURHbe
         V6Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732118020; x=1732722820;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BeZmKj2DqRVspUXUGtFcwdhzgHqcIQveDsCswQ2ehCA=;
        b=HMQXm7Ma8SRVOSH6yXMQuKNnH0xM5vNlEmzJ++oEYErTUWOP9MkLW1OJWiuZqvSYPa
         e4CDAzJbIybF4Lk/dox5uWf5hsrONnkVmksxWuFqGf9zd2xPx1at2pwLta8qqWs7fvA2
         BvTVCeRh3d71vkTAiDhDtLwGiyV+lNr8iTOKFN+zck8q8RAzreuyupAynWfwF6oXaPpB
         BX4anUSJgd6F9tB7eWVMBTuuhg907e19qKLOPLSgpQAkRKxDgOKiB1DQQgz8KlJwOh+Q
         nybXEn6qfjUSWPDjBQYw2C5IZ2khoniLGKBZZ19onaHSKfKJgSXg9HjNaGDQmZi2yx4O
         GBnA==
X-Gm-Message-State: AOJu0Yx8M49+h8g4LTeza0fYIZpRWiLNDYTDwi536g5dmc1BLjUU2WnP
	ZH93trW0FYCHKZE3UdycbzpRzsCFBsmTb9bQjARnoHAZxIOdGW027caGBA==
X-Google-Smtp-Source: AGHT+IFIBHYWdhHJCMtHiswnCOXcDHVOJn5dZCj3+iafVrUFCqJsl53E7QEcB1z3L4AWI28IqfkxKA==
X-Received: by 2002:a05:620a:2b81:b0:7a6:6b97:4da2 with SMTP id af79cd13be357-7b37aa27019mr1343999885a.11.1732118020609;
        Wed, 20 Nov 2024 07:53:40 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b479d910c0sm109569785a.64.2024.11.20.07.53.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Nov 2024 07:53:40 -0800 (PST)
Message-ID: <ba3a2a39-45f2-4da6-9522-f557874f286c@gmail.com>
Date: Wed, 20 Nov 2024 10:53:29 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <XvncymCGEa3CMQFUGuPuo88hj6LwjTG56X8r9RxIw2w@lists.ettus.com>
 <366669ee-af7c-4552-920b-f3bfd193fe57@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <366669ee-af7c-4552-920b-f3bfd193fe57@ettus.com>
Message-ID-Hash: USCGVQWKXMSPRZ5MGQRHBJA52W3UAP4K
X-Message-ID-Hash: USCGVQWKXMSPRZ5MGQRHBJA52W3UAP4K
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 power and gain levels
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/USCGVQWKXMSPRZ5MGQRHBJA52W3UAP4K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAvMTEvMjAyNCAwNTowMiwgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+IERlcGVuZHMgb24g
dGhlIGdhaW4geW91IHNldCwgYW5kIHRoZSBmcmVxdWVuY3kgeW91J3JlIHdvcmtpbmcgb24uIEkg
DQo+IHdpc2ggSSBjb3VsZCBnaXZlIHlvdSBhIHNpbXBsZSBudW1iZXIgb3IgZXZlbiBqdXN0IGEg
Z3JhcGggb3ZlciBnYWluLCANCj4gYnV0IGl0J3MgbmVjZXNzYXJpbHkgYSB0d28tcGFyYW1ldGVy
IHRoaW5nLiBZb3Ugd2lsbCBoYXZlIHRvIG1lYXN1cmUuDQo+DQo+IEF0IG1heCBnYWluLCB5b3Un
ZCBleHBlY3QgZnVsbCBzY2FsZSBvdXRwdXQgdG8gYmUgYWNoaWV2ZWQgZGVlZWVlcCBpbiANCj4g
dGhlIG5lZ2F0aXZlIGRCbS4NCj4NCj4gQmVzdCByZWdhcmRzLA0KPiBNYXJjdXMgTcO8bGxlcg0K
SSdsbCBhdWdtZW50IHdoYXQgbXkgY29sbGVhZ3VlIGhhcyBzYWlkLg0KDQpUaGUgYW1vdW50IG9m
IGdhaW4gaW4gdGhlIHBhdGggd2lsbCB2YXJ5IG92ZXIgZnJlcXVlbmN5LS1wZXJoYXBzIGJ5IGEg
DQpmZXcgZEIuwqDCoCBCdXQgYWxzbyBmcm9tIGRldmljZSB0byBkZXZpY2UsDQogwqAgYnkgMS0y
ZEIuDQoNClRoZSAiZ2FpbiIgc2V0dGluZyBkb2Vzbid0IGFjdHVhbGx5IHRlbGwgeW91IGFueXRo
aW5nIGFib3V0IHRvdGFsIFJGIA0KZ2FpbiBiZXR3ZWVuIGFudGVubmEgYW5kIEFEQy7CoCBJdCdz
IGENCiDCoCAiZ2FpbiBjb250cm9sIiBzZXR0aW5nLCB3aGljaCBpbiBSRiBwYXRocyBpcyBuZWFy
bHktYWx3YXlzIA0KaW1wbGVtZW50ZWQgd2l0aCBkaXN0cmlidXRlZCBhdHRlbnVhdG9ycy7CoCBU
aGUNCiDCoCB0b3RhbCBnYWluIGFoZWFkIG9mIHRoZSBBREMgbWF5IGJlIG1vcmUgb3IgbGVzcyB0
aGFuIDcyZEIuwqDCoMKgwqAgSWYgdGhlIA0KdG90YWwgcGF0aCBpcyBnYWluIGF0ICJNQVgiIGlz
IDUwZEIsDQogwqAgdGhlbiB0aGF0IDcyZEIgZ2Fpbi1jb250cm9sIHJhbmdlIHRha2VzIHlvdSBk
b3duIHRvIGEgc3BvdCB3aGVyZSB5b3UgDQpoYXZlIC0yMmRCIG9mIGdhaW4uDQoNCklmIHlvdXIg
Z29hbCBpcyB0byBlc3RpbWF0ZSB0aGUgcG93ZXIgYXQgdGhlIGFudGVubmEgcG9ydCB1c2luZyBh
IA0Kc3RyaWN0bHkgIm51bWVyaWNhbCIgYXBwcm9hY2ggYmFzZWQgb24gdGhlDQogwqAgZ2FpbiBz
ZXR0aW5nLCB5b3UgYXJlIGluIGEgc3RhdGUgb2Ygc2luLsKgwqDCoCBZb3UgTVVTVCBjYWxpYnJh
dGUgb3ZlciANCnlvdXIgZW50aXJlIGV4cGVjdGVkIG9wZXJhdGluZyBzcGFjZSwNCiDCoCBpbmNs
dWRpbmcgY2VudGVyIGZyZXF1ZW5jeSBhbmQgc2FtcGxlIHJhdGUsIGFuZCBhdCB2YXJpb3VzIGdh
aW4gDQpzZXR0aW5ncyAoYWx0aG91Z2ggdGhlIGdhaW4gc2V0dGluZyBzaG91bGQNCiDCoCBiZSBs
YXJnZWx5IGxpbmVhcikuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
