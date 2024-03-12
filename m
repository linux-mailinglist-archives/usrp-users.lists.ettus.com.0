Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5E58797DD
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 16:43:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E21438504C
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 11:43:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710258225; bh=I0j2dXL/NyHWgySgzcChJ/cFLc14nLSFqyjmAJLONII=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SehIYaZ2rfltWIASQbFsOGYKovQRnC/ccf0+byd8cjp+K3boFpuc0USN4av9h4FiI
	 OcyCZ68+b1ZKZEWsiyCEVJl1tFU/CiP8eTHKMnE89mh9Ttu+J17r/Dp9aNZ1aIR8LL
	 CuNNc3i/4qQ7IY2xdPCmyqpqTva4GIlVkeTtC0/Iyj4VZAWzGdZFoW/pwN7rrHdEUu
	 ywKmUJp/Va0Wz06r8NHXyeS2CxI7s0gFEdrqptq8/wD+P77GuXY5O/kogALgyLciy/
	 n490f7sfs8dSfwbYOKdDbLcCdZcpCpbuRxFYg5jf5H4QTrDEfqJh5yiY/wMvUoIXKR
	 +DauOfYyKQTDQ==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 3A9AB3843F6
	for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 11:42:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZlQaxgA0";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-78873ff1202so65204885a.3
        for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 08:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710258174; x=1710862974; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kIyYeEuklUM44g8Q8EdSZm50Gn9N5h24LN6dcipd/Fk=;
        b=ZlQaxgA0KvJVfV+6jCpDDM2MStcruesGhAHH6zSellL3zdSKrzRIPGv1rozSFQ4izB
         G0ZPXtTqtpdEeqRkRBWPx+yZ68rEPlTYKvM0OTiuUFyGEFm1vhQE5QzURGQK7WXjyfJZ
         QXHSUiw0YbkMiOLUjwxQkY14BxUUOk87MR6AkkDA0nbISMwuySCvrbtCUGk9xD57Ky1X
         GeMcD0ZsjE2LsSY/3uDW+Ep23wt2n/8qSCrOcWKe7U1/nkulbBGlLYOIhdK86SR6sPIx
         DWB4vZuZp8WPbbY8RtyOGeIz47OQlLwo8OCENchjXnKsLRYjwRDhhZ2LX146load8gaM
         yp+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710258174; x=1710862974;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kIyYeEuklUM44g8Q8EdSZm50Gn9N5h24LN6dcipd/Fk=;
        b=w1+jbdMOANjvA0t2Tx3CKfG2QeAq2twgDPJmm71dCdEtmUQ6vvPN4poTaSEImf2vrd
         G4YZILZMwpapGCFjuWJxCGgNtD7mcwAUYcOyyFzfeHmLutXE789U8gomfg0Sql0fUgZY
         0vg18vY1YA1Lex9o2XGWO+aMXYDD84wmPI81xk3XNnp9WesNAUaDiFVekMv24qWyA7Vh
         D7tAIcOTR5EXeu+7yucuSJw31nmWOD9didx40COwqA7Ew8gJhzozCxIEJwNW/davEbai
         ox6HS4oO6BPAdLAOTXpcWqWR/uoEhee6LYJFkZROELUjsyVcQLn49fu1Bk30AiJfSXmK
         LQQg==
X-Gm-Message-State: AOJu0YyeWTTzRMW4eFwqGb7YFA7gbcHCJs54rpLsXOHO8WoK0wFQH4iD
	IZASwQVub52hGPLBdMoMNAv4bAIXKFLlbgld6yngIqW4brOIRfhyyX2/uZWkWtI=
X-Google-Smtp-Source: AGHT+IHIn5tWWn67PFGogH4zEbIYvafNaGVUlkqOLsiNg32I4JN0oVoa+0aD4gAYigpPLI6lWhLqVw==
X-Received: by 2002:a05:620a:472a:b0:789:2b98:a788 with SMTP id bs42-20020a05620a472a00b007892b98a788mr2041271qkb.14.1710258174141;
        Tue, 12 Mar 2024 08:42:54 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.156])
        by smtp.googlemail.com with ESMTPSA id k21-20020a05620a0b9500b0078867db5d6fsm2589728qkh.114.2024.03.12.08.42.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 08:42:53 -0700 (PDT)
Message-ID: <08276ff7-a4c5-4469-8747-742dd8aa732a@gmail.com>
Date: Tue, 12 Mar 2024 11:42:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAFQo7gS6tdWjzMzrWgmH=0uXaByaXxEunEAiFkBnCvcaKD8s8A@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFQo7gS6tdWjzMzrWgmH=0uXaByaXxEunEAiFkBnCvcaKD8s8A@mail.gmail.com>
Message-ID-Hash: BO2D2TUKW7VONQZUDSFWP24RVLRB3FAO
X-Message-ID-Hash: BO2D2TUKW7VONQZUDSFWP24RVLRB3FAO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Power related issues with the USRP X300
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BO2D2TUKW7VONQZUDSFWP24RVLRB3FAO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMDMvMjAyNCAxMTozNSwgQWJoaXJhbSBQcmFrYXNoIEFsYW11cmkgd3JvdGU6DQo+IEkn
dmUgYmVlbiB1c2luZyB0aGUgVVNSUCBzdWNjZXNzZnVsbHkgZm9yIGEgd2hpbGUgbm93IGJ1dCBh
bGwgb2YgYSANCj4gc3VkZGVuLCBJIHJlY2VpdmUgdGhlIG1lc3NhZ2UsICJSdW50aW1lRXJyb3I6
IFJ1bnRpbWVFcnJvcjogQXR0ZW1wdGluZyANCj4gdG8gc2V0IHBvd2VyIGZvciBrZXkgeDN4eF9w
d3JfYmFzaWNyeF9yeF9iLCBidXQgbm8gY2FsIGRhdGEgYXZhaWxhYmxlISIuDQo+DQo+IFByZXR0
eSBtdWNoIHN0dWNrIGF0IHRoaXMgcG9pbnQgc2luY2UgSSdtIHVuYWJsZSB0byBwcm9jZWVkwqAg
d2l0aCBteSANCj4gcHJvamVjdC4NCj4NCj4gUmVnYXJkcywNCj4gQWJoaXJhbQ0KPg0KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpU
aGF0IHNvdW5kcyBsaWtlIHlvdSdyZSB0cnlpbmcgdG8gdXNlIHRoZSBjYWxpYnJhdGVkLXBvd2Vy
IEFQSSBmb3IgdGhpcyANCmRldmljZSwgYnV0IHRoZSBjYWxpYnJhdGlvbiBkYXRhIGFyZW4ndCBh
dmFpbGFibGU6DQoNCmh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX3Bvd2VyLmh0
bWwNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
