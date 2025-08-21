Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43812B2F386
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 11:15:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36A9F3865A7
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 05:15:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755767735; bh=DPt3D5GKsuxNEB01Eh3i9VtOzj4kH49sLU8q8PeynLI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RgKJMaZYCe65yLS7azOVhAH0PECuQxe0W1l6xLFq0R2j4xteYVzGaAUhoec/kMHRO
	 uOrUJopKcffNBjeU408ZKutlOu38MJjNwKPOC6z8XcrSArj/cujehrVfeAXrMhlDiD
	 I06oNQ1gmdIaumy+Rgo/Yvn8MOLTIu79w+emnr5HRmYYFQx7gXSduuRlK3GkSV8Opd
	 V9g8LEU/ymIONZef0vMsm3k4go/Xq2C/kcD0QaRGxNFqhf53RxFpY5vVbWlFz/H0da
	 QI3nOUH9UeLXaGRY3bFm07l0KcX2RA4ckDoBbua9N3GUloHM7Q54EVYjLhUUPczqVl
	 3or9mFwGRSj2A==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 21AFA386489
	for <usrp-users@lists.ettus.com>; Thu, 21 Aug 2025 05:14:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hxf3XCjO";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-70a927f4483so7194066d6.1
        for <usrp-users@lists.ettus.com>; Thu, 21 Aug 2025 02:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755767682; x=1756372482; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=beoqiAAEqQJIkodcPO/WTtRWvtJ0EXyDDEIvlvqxpe8=;
        b=hxf3XCjODuahdXCzPtYa1xRF1LeaNXFUUPQkMWJbZGenNJbVdLlgn6S4+10UjQN5VL
         GKxGcUHy2pUN2l9mge2WUW4qroKUSL43BTFnCVJIFAL5ypDQAauBa7THRxtOr52F+yOe
         XEc+w4XqR4LGDQ7ZdHU21LhXGUUHPM5Czr0kIwCEJRpkA6TMdwrRbgAb8Xm3srT/cjbO
         JD8wNuMYDIKcFS9zyJUtjpuYm/76zAE5A9My24+plwwJR/ITaV9N0SilJzzd778BgC7O
         5Bo6nSwKVlX1MIAjszBpuN0K/ZG5KfKWnyU117x3S6NntwDwGVUfXPtt0VM7VbA7YpP2
         2kxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755767682; x=1756372482;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=beoqiAAEqQJIkodcPO/WTtRWvtJ0EXyDDEIvlvqxpe8=;
        b=l74FmV2RuAj9L60TDbzYz9ltz3+S3gySAwZOD1bH7dC0FS+EQWFm2a4Uq+2HOu8OCO
         vTUsLAMtA4AKOix4TN2IO9BnrV5PI4vQhJ7iXjd22NSf4rMzGHHkSw2HZBe45I2OD8hr
         VJE6+yjbS+ForJ674oimytpkXoaVXCovZVDBusgaxDJVGPPqqnlZjFW06dm89BeoHEhh
         kvgkrBCTxDRlaiD+1typSfGZKoVT2QgUJXHbsRC1vVuA1fUFfSfIPCP8mCSUzo4Qa+ER
         k/DhdJ0Obuk0PGOi5YYDrhNmxw9wGrzwhB0geLx9KUhBzokbFVyUcHDLKi3L4mkQQtIt
         jWPg==
X-Gm-Message-State: AOJu0YzfU4/GAN/edTNiYwZatneTg2kpNTTYvstYyJRxX+pewQ5nZq5L
	T2l0kxfkdBnPYWqljUeI3Ud8VkMMbUlX95sCx5IxTABxUEBRtsLTVJUBeA/NXA==
X-Gm-Gg: ASbGncsb/Ask8AtlROxqNmCao8NNG06yYw+nT4x0dKQAN4ym7YQEfvr9NELzXLnx+/c
	DVMZgAtViepeOwgh9unI98FEYkh/iVxGTTUDh4f6CZ52Qe2QcX/1u36wtJmqgRZU/GGWRQhs9AF
	h8CBQ+9QeB9iHZmRzGAcdFw9M+pA3PaavU/ab1hMg9Ol1VlfG+KVccTe8uqmDaTxdY27TTyvBcw
	9w/h9BEOMJ72QGXQtVMKjsbh/vJiBTmWGfNL1umCLnCP3EexJ45YRvwvuEYWNs7Yl2b/oRxz6KJ
	aVoq/Sk5ucXtJmjVXKE7swAc+IT0UDcmj/I37Ojg9GVlnVMeDp6wvc8Uxu8w8YRU0EryXh903Jb
	TG8fRChMHc5C39BHV7nppoH5+MjBONBM=
X-Google-Smtp-Source: AGHT+IEPjyDiW9gY6LSncFcPLSpQYHdGLdEFvlkr0hHjVq6q1so/HSP4Gd9x6EQp2KGVfad19NeaUg==
X-Received: by 2002:ad4:4ee9:0:b0:707:bba:40d4 with SMTP id 6a1803df08f44-70d88e5cbe2mr15839866d6.11.1755767681923;
        Thu, 21 Aug 2025 02:14:41 -0700 (PDT)
Received: from [192.168.2.208] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-70bafbd35f5sm90735966d6.23.2025.08.21.02.14.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 02:14:41 -0700 (PDT)
Message-ID: <1b65436f-3a33-4d7c-87af-7dd00dede681@gmail.com>
Date: Thu, 21 Aug 2025 05:14:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <mlDiTtuxkKhC3hQWYSTDxmCpseBBuycGoJYbqpoZA@lists.ettus.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <mlDiTtuxkKhC3hQWYSTDxmCpseBBuycGoJYbqpoZA@lists.ettus.com>
Message-ID-Hash: 5IQQ4LMYBQ3VOGYNL6TY7JFJZ6UYLKYW
X-Message-ID-Hash: 5IQQ4LMYBQ3VOGYNL6TY7JFJZ6UYLKYW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Monitor X310 health status
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5IQQ4LMYBQ3VOGYNL6TY7JFJZ6UYLKYW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyNS0wOC0yMSAwNDoxNywgQWxleCBTaGFybWEgdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+
DQo+IFdoYXQgYWJvdXQgb3RoZXIgbWV0cmljcz8gRm9yIGV4YW1wbGUsIGlzIHRoZXJlIGEgd2F5
IHRvIGtub3cgdGhyb3VnaCANCj4gdGhlIEFQSSBpZiB0aGUgWDMxMCBpcyB1bmRlciBoZWF2eSBu
ZXR3b3JrIG9yIHByb2Nlc3NpbmcgbG9hZD8NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KQW55IHF1ZXJ5IHlvdSBtaWdo
dCB3YW50IHRvIG1ha2UgdG8gaXQgcmVxdWlyZXMgYSAic2Vzc2lvbiIgYmVpbmcgDQplc3RhYmxp
c2hlZCwgYW5kIHNpbmNlIHRoZXJlIGNhbiBiZSBvbmx5IG9uZSBvZiB0aG9zZSwgeW91J2QgYmUg
dGhlIA0KZW50aXR5IHJlc3BvbnNpYmxlIGZvciBjcmVhdGluZyBhbnkgc3VjaA0KIMKgIGhlYXZ5
IG5ldHdvcmsgb3IgcHJvY2Vzc2luZyBsb2FkLg0KDQpUaGUgWDMxMCBkb2Vzbid0IGhhdmUgYSBn
ZW5lcmFsLXB1cnBvc2UgQ1BVIGFuZCBPUyBvbiBpdC7CoCBJdCBoYXMgYSANCm1pbmltYWwgWlBV
IChvciBwZXJoYXBzIHNvbWV0aGluZyBuZXdlciwgSSBjYW4ndCByZWNhbGwpIGltcGxlbWVudGF0
aW9uIA0KaW4gdGhlIEZQR0EgdG8gaGFuZGxlIGEgZmV3DQogwqAgaG91c2VrZWVwaW5nIHRhc2tz
IGFuZCBpbXBsZW1lbnQgYSBkZS1taW5pbXVzIElQL1VEUCBzdGFjay7CoCBJdCBpcyBhIA0KcHJl
LU1QTUQgZGV2aWNlLCBzbyB0aGVyZSdzIG5vIExpbnV4IGluc3RhbmNlIHNpdHRpbmcgdGhlcmUg
dGhhdCBjb3VsZCANCmRvIGV4dGVuc2l2ZSBhbmQNCiDCoCBzb3BoaXN0aWNhdGVkIHBlcmZvcm1h
bmNlIG1vbml0b3JpbmcuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
