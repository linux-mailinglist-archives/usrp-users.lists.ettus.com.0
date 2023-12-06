Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3292807508
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 17:32:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D40E738527C
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 11:32:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701880349; bh=hTa672Te71Bq30Ey0NrkFWf+bfavFUIVCufYXPXbGqI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=JphjiP/nOJ3fyuuRhR7Qp65D6j6gu4AGdttn9vasVTQljZaoqkKe5ZNiwu8wBFFZX
	 vZ6ub/0PujVznlAln7uRejid5lNrKj/RD1m2/VSFnGKoPElvcuEKZ6fJeLylBvKnTX
	 IYuWCxhAjoxbbf8/mqIvAuqsdYRfyEVNuZhv5hU8PTueQ/45dSZVd0uY9ON9eScx+p
	 /VEY0v+uzSazM/XuJ1S3hrJ2IxwfCx0bIrB5ESbkxg13NM4vD2UQdhNyDishD95HIg
	 AquSPPKrWWBVwxDpEApYC2OEZuGm5dhFlScrwdJxVA3FuYW2Lpz6Yg40qk3XEdoOFG
	 BBT/sMBzcCjXA==
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A070385051
	for <usrp-users@lists.ettus.com>; Wed,  6 Dec 2023 11:31:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a2DlJkKQ";
	dkim-atps=neutral
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-1faf46f96ebso2844fac.1
        for <usrp-users@lists.ettus.com>; Wed, 06 Dec 2023 08:31:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701880297; x=1702485097; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N+SflyI52Nebnki8kAk7G6L3uFAeHfWm8LKZspIO7Jc=;
        b=a2DlJkKQ7rTI560j1B5JVQkH3WQbNs3rT7r/b6Dev4CpooV6k72GzIWAVwJL5nKGPS
         oEh3lsC/oyjbdVUh7b3xJAaTGso5w8VQ+yHdFQR0ZThlVqptt8rJq2//0/8OFLS7ASiZ
         GJRAT6jZoytz0YmNnLdRofnUlLGpGZDOyfSZ6dVBjZAXyRm8iDGtjvllr7flf3DNCh1p
         6Uy2dVP5lXy9+mITS5JZItCfdvueoXUCAqblaCoXCe0DQh7uF+lUeDtpBHUPy46b/J23
         zbHwclvGSZk7sL4KBRo6KfyykVFOTOrPfyUz+pcJzCLimZQI1pvC4nlSbSUYa2bCd7Gc
         Jeog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701880297; x=1702485097;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N+SflyI52Nebnki8kAk7G6L3uFAeHfWm8LKZspIO7Jc=;
        b=Rw/lsS87r2WEftHIIvMGwoDZgR0+/PMN3aDtmKEFENF9Ifr5GNpPPisI/RZ+CgZTf5
         e40qilloli3XwEDhCXf8LVu+pGxl2N/6BMwb/yFefKZAd1t/fBzfA7sXDrS+SG2zPDoT
         /1K6xKVpNsg18zumtBRfQDTTuf4F1eq2igfedcXHl5y5Nkftq7A6UnCHpEM97FZoR6tM
         7VxgbbQBBmWrbUsnEQST2eePVfVkl47mpglemMp7GHwWMS8fV1p3QZCqBi7f/bM3+muY
         grMOg1+lT1aP+PYD/gRbqjU+NeAONebT7epkijgHC4j+C2UIaa8I8zUSfk9RCOo+s1/x
         QslA==
X-Gm-Message-State: AOJu0YxfJZH4jOG9IJw+aDr2k7VmPqCT0HLN8u8K9HFXb/quECzkRy+q
	1M+TQRRHIWdOVFvvLaQdT5dBY5T5Rpk=
X-Google-Smtp-Source: AGHT+IG9fAmYYN/flU3pSQEQJxgvyd3Fy/BkHsInF6UX+V+uVbPocO854NKXs595ROQtvnOM7LSdeg==
X-Received: by 2002:a05:6870:7b4f:b0:1f9:36cf:2d4b with SMTP id ji15-20020a0568707b4f00b001f936cf2d4bmr1285564oab.31.1701880297682;
        Wed, 06 Dec 2023 08:31:37 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-146.dsl.bell.ca. [174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id a25-20020ac87219000000b004180fb5c6adsm71317qtp.25.2023.12.06.08.31.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 08:31:37 -0800 (PST)
Message-ID: <d03eed54-ccec-42e7-97dc-b87983bfce36@gmail.com>
Date: Wed, 6 Dec 2023 11:31:36 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PuBpnfuBSxAxs9BjIgDEssZatw41GmvFJYWN8uiE@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PuBpnfuBSxAxs9BjIgDEssZatw41GmvFJYWN8uiE@lists.ettus.com>
Message-ID-Hash: 2OWQUFIIZ7ZEX72ZQBSWTFGH73XMPBAM
X-Message-ID-Hash: 2OWQUFIIZ7ZEX72ZQBSWTFGH73XMPBAM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2OWQUFIIZ7ZEX72ZQBSWTFGH73XMPBAM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMTIvMjAyMyAxMToyOSwgcHVydmEuam9zaGlAcGhkLnVuaXBpLml0IHdyb3RlOg0KPg0K
PiBZb3UgYXJlIHJpZ2h0IE1hcmN1cywgSSBqdXN0IG1lc3NlZCB1cCBteSBib290IHBhcnRpdGlv
biwgYnV0IEkgYW0gbm90IA0KPiBhYmxlIHRvIGZpeCB0aGlzIGlzc3VlLCBJIG5lZWQgdG8gd2Fp
dCBmb3IgdGhlIHN5c3RlbSBtYW5hZ2VyIHRvIHNvbHZlIA0KPiB0aGlzIHN0dWZmLg0KPg0KPiBJ
IGtub3cgaXQgaXMgbm90aGluZyByZWxhdGVkIHRvIFVIRC4gQnV0IGhvdyB0byBmaW5kIHRoZSBy
aWdodCBkZXZpY2UgDQo+IGlmIEkgd2FudCB0byB1cGRhdGUgdGhlIGltYWdlPw0KPg0KV2hlbiB5
b3UgcGx1ZyBpbiBhbiBTRC1jYXJkLCB0aGUgZGV2aWNlcyBpcyAqb2Z0ZW4qIC9kZXYvc2RiMSwg
YnV0IG5vdCANCmFsd2F5cy7CoCBZb3UgY2FuIGxvb2sgYXQgdGhlIGxhc3QgZmV3IGxpbmVzIG9m
ICJkbWVzZyINCiDCoCBhZnRlciB5b3UgcGx1ZyB0aGUgU0QtY2FyZCBpbnRvIHlvdXIgY29tcHV0
ZXIgdG8gZmlndXJlIGl0IG91dC4gQWxzbywgDQp0YWxrIHRvIHlvdXIgc3lzdGVtIG1hbmFnZW1l
bnQgcGVvcGxlIGFib3V0IGl0Lg0KIMKgIERvaW5nIHRoaXMgbGV2ZWwgb2YgdGhpbmcgcmVtb3Rl
bHksIGFuZCAiYmxpbmRseSIgaXMgbm90IHRoYXQgDQpwcm9kdWN0aXZlLg0KDQoNCj4NCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
