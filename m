Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FC17931D6
	for <lists+usrp-users@lfdr.de>; Wed,  6 Sep 2023 00:16:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42E6F38529C
	for <lists+usrp-users@lfdr.de>; Tue,  5 Sep 2023 18:16:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693952193; bh=Y3Y7m1+bJ2dMRDhA+1rXMa2dUK1h1gdm6667ZojU6Ps=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=k1SsOIYSnrY8TUtvvKdYqot4MH1IckansvhXUYYy7XQDEXY3MM35j8vv8iBpcF/Bw
	 FlV6uminIF9mRRA47unpQBO1fSgerHpVejEuWEOrs9IlBbNAzGtex0RLMjNlkfjTjc
	 qMPi6IG3qCnS5NZ30WZ/VDsWCPUH2uhlESvYKxtgtR5QxQ8Jl99wG2TiCyFhYIJJjQ
	 VHmcKSQJ51wbNCyv4YGQg44bL/UnM9oP3ubpfd8IJH++9u025fyF6InDMkw+qaHvH2
	 2EnVi8l7XSD4NZjZ44AElENnBd1grZp4fzEyBrB0f4XBkQvCOOjGAeb2dMDwTmObnV
	 jmxeBBC+YSopg==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 184B6384ABD
	for <usrp-users@lists.ettus.com>; Tue,  5 Sep 2023 18:15:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZOVAMmP9";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-414b0bdea1cso20305071cf.1
        for <usrp-users@lists.ettus.com>; Tue, 05 Sep 2023 15:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693952133; x=1694556933; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=73LWCOXA8jun+eIE+xYu8IYXC41hdGe+/I+W+FoYI3I=;
        b=ZOVAMmP9kNBkyhdMnVBeO8bAjV7hiz6abPXBsO+tnFTmz0YZCNG8eLFBnAtMWUAQi5
         UBfEiuPV3p22NYtbC4ZCEvP4rVtSw9pM/9orFys2MMkDLOQ3HzQ5qVsxKAIL+/fM4TjX
         5huzDWlYLLPQODaS699/DI0QGGlPyIPFyRuU/OlZIju11iU9S9s4UBECLXmkVb+sd0m3
         SHBSJK4U530bSwwV+/rah4htKboAZTQht0L/69LzUXUykvulBmSIrmFIb03YQ2eLHisw
         UnZbfw/JR/9AoMhjnEkFGFhTWMmd6At6IBz0fXnmTUMJjur7ly9Jvoq8E40knDl2znlV
         y5Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693952133; x=1694556933;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=73LWCOXA8jun+eIE+xYu8IYXC41hdGe+/I+W+FoYI3I=;
        b=h8odZaqij+5HZP0v3R+J+nA3hPUsHoSrexpM+eweNPg9GeEesusFNPL4WV1a8hGj0u
         6bq6G2KruiPakRU0DB2JdOZI2cDI+DlaP1Q8iJYdzasKfohs1rslAlDnsoTgpcbuD2aI
         h9T5eU5uCIk1DJ2Cd9EZiLFCo4HZiNIt2bASAA2cYjBV7okzY2KOZ8JA5Vg9uqTQxh7n
         25bNqUtCZaN0cYxlVdp9IYyNBDr8My54LwgU3uVJOeW8y7IgnFdNS/FzhdvHAMc4FIKV
         pSaOP5qEisUvfKt1dg55Qf/kn+h9FRnsmdSeK5emKlwNvxgUwig9qMOcUQA1iYJqvRZO
         gJLw==
X-Gm-Message-State: AOJu0YzUcFcNmJClT/x9QUCdPpf/KJs9kp6MYQude1xJGelZ4FeA04h+
	uvIjuTvr9femOQzfSFuYgRvA0Azn6H3QHA==
X-Google-Smtp-Source: AGHT+IF20gipswxYm1OY+442QxNBXi73dbkD0d0YBxh3j/vqg55eYhiDOJKXefrZN5NqumVCfA81Sg==
X-Received: by 2002:ac8:7fce:0:b0:412:207:4131 with SMTP id b14-20020ac87fce000000b0041202074131mr19784680qtk.57.1693952133248;
        Tue, 05 Sep 2023 15:15:33 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id bq25-20020a05622a1c1900b0041061a16791sm4673338qtb.67.2023.09.05.15.15.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Sep 2023 15:15:32 -0700 (PDT)
Message-ID: <e08adabd-3701-41dc-8dba-636da554e890@gmail.com>
Date: Tue, 5 Sep 2023 18:15:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <oN4tm4mAmAtr8ei58rPWMvZNHYQUsJANxGyViu5ULk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <oN4tm4mAmAtr8ei58rPWMvZNHYQUsJANxGyViu5ULk@lists.ettus.com>
Message-ID-Hash: LBYGJIKOIEJD36PHURZIBK6T4HQYWC7W
X-Message-ID-Hash: LBYGJIKOIEJD36PHURZIBK6T4HQYWC7W
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 Channel B control for GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LBYGJIKOIEJD36PHURZIBK6T4HQYWC7W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDUvMDkvMjAyMyAxNjo0NywgYmxha2ViYWxkd2luQHV2aWMuY2Egd3JvdGU6DQo+DQo+IEni
gJl2ZSBzZWVuIHRoaXMgYmVmb3JlIGFuZCBpdCBpcyBhIGZhbnRhc3RpYyByZXNvdXJjZSBmb3Ig
R1BJT3MuIA0KPiBIb3dldmVyLCBiZXN0IEkgY2FuIHRlbGwgdXBvbiBsb29raW5nIGl0IG92ZXIg
YWdhaW4gaXMgdGhhdCB0aGVyZSANCj4gc2hvdWxkIGJlIGEgc2Vjb25kIOKAnHNvdXJjZeKAnSBv
biB0aGUgQjIxMCB3aGljaCBqdXN0IGlzIG5vdCB0aGVyZS4gV2hlbiANCj4gSSBydW4gZ2V0X2dw
aW9fc3JjKCkgSSBnZXQgYW4gZXJyb3IgbWVzc2FnZSBzYXlpbmcgdGhlIGNvbW1hbmQgaXMgbm90
IA0KPiBpbXBsZW1lbnRlZCBvbiB0aGUgbW90aGVyYm9hcmQuDQo+DQo+DQpNb3N0IG9mIHRoZSBF
dHR1cyBSJkQgdGVhbSBhcmUgYXQgR1JDb24gdGhpcyB3ZWVrLsKgIEluY2x1ZGluZywgYXMgZmFy
IGFzIA0KSSBrbm93LCBNYXJ0aW4sIHdobyB3cm90ZSB0aGUgR1BJTyBzdXBwb3J0IGFuZCB0aGF0
DQogwqAgZG9jdW1lbnQsIHNvIHRoZXJlJ3Mgbm9ib2R5IEkgY2FuIHJlYWxseSBjYWxsIG9uIGZv
ciB0aGlzIHJpZ2h0IG5vdy4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQo=
