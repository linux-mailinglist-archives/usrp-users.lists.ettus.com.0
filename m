Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D2C798056
	for <lists+usrp-users@lfdr.de>; Fri,  8 Sep 2023 03:43:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BF276384E42
	for <lists+usrp-users@lfdr.de>; Thu,  7 Sep 2023 21:43:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694137385; bh=nvm7/FBBOgy8edqbWSGMEO2AufBSsyFTXdop8IO7hsM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=o+QJaydBcPYdq/XPWzH5dCSHcPGASuixvQ4HVSItcjDizeldgtfgYapp9kJO3+j3u
	 g4mBvsQGZO2EAmDXqBLuovUjLOPsACEHa15YDat8odCbs+u1rx7JpDBmLpqFXP1mz/
	 P6aQI2tAJtz0huKMqdRFPXylvxn7ghg7NNwRU3F8KqtM7PpSYIfkqPAjVGhuV5RWjf
	 SMFZCQL/rRKSaOK9KeRZzNL/qWb+9ZE3FN7pxGfloI3BlcI7UmVuL02hghYNJpIihB
	 nloGuBUtWQIli/aRRsFxCDEEAej1QAilk1HxQ41I8N8CI6I1YX4CR7hRiGlTvJq0pu
	 MzhKn3AgYHZUg==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id A01F9381258
	for <usrp-users@lists.ettus.com>; Thu,  7 Sep 2023 21:42:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TYnAwQ4u";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-76de9c23e5cso88054485a.3
        for <usrp-users@lists.ettus.com>; Thu, 07 Sep 2023 18:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694137328; x=1694742128; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uQRGfJTQJciYwXiPf1lOqoSrRAGCvVPSYg/WwaUJ52w=;
        b=TYnAwQ4u1W2MF7wM/PE8j/06RcpsO2t6hfPMaFe4pme+6CpmBgRyC0woMUloHWEUMe
         SLwZsGoVwv6VBSqbfXphcKPgJUp87cHuJEG3rRsIHIFxBIr8vSAvK42iDo1YaayIvWIi
         XYFq7KSCMMi1hk3AZuvKV0Wb5Pa3Zq9Zlwu2mtHHKJ8ukcK/3ZArFkW+vDkfkVr53XI+
         M7ih/s+9noUEXyuIpK96wYm6Yxu+S1tJ/6NvQqPNvdp2ADKS0ujBMbrwsU6CvxUzOiwL
         ZeTha538uSP9C1leKjFgfVdA9JdF4nLNo3PFIOEy86lR6XwyVOq9rwnwtRjy2/c5m+tu
         htsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694137328; x=1694742128;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uQRGfJTQJciYwXiPf1lOqoSrRAGCvVPSYg/WwaUJ52w=;
        b=kCNzIcR+bjWV3HJZcifUITkFnaewMY7FjRxKr0YmpqYGrVf+vv6kV5XJRzkF6DRtzm
         E0rMxf9d5RLYyF36QJMFhorOfT0skJDKF1GdiWdhGpNcAHqmfLF4Zzel4hOFdvjIkhKY
         PWfxRgukjQ5wOAqHwCMLKyzAch1d27amzj+MXBi3RmKC4y/0pUjhhlAlBiplOXAslGTf
         71aoeGmzxpVKcLVOBZrXvvoCh2sAPuW4uQeajpHMyMDlAbRg9YrOKvSZAIZhrr2AU9Wn
         /Tj3IpElFdN7YCN7Dk0jOSa8JWHrBA5IFJOxgUG1MfWHx8e5Ft9h9uzJykQIbL898l5o
         JALg==
X-Gm-Message-State: AOJu0YyJYMqw0Lfse4KMZ+6gH8tabQdmWOYavOdrg041cHEVSy9GaCwX
	4HHg92CiEnW8zPgZJKdTin6EdvgPifrWLg==
X-Google-Smtp-Source: AGHT+IFZa4zz1GqwlMuu3zV8xu8bZV2+ufyweNgBBLv+vuJYJHeAiIjx+PrRfe9jbsfnc124yMQayw==
X-Received: by 2002:a05:620a:1d90:b0:76d:bda0:e48e with SMTP id pj16-20020a05620a1d9000b0076dbda0e48emr1110583qkn.46.1694137327838;
        Thu, 07 Sep 2023 18:42:07 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id m13-20020ae9e00d000000b0076d6a08ac98sm213540qkk.76.2023.09.07.18.42.07
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Sep 2023 18:42:07 -0700 (PDT)
Message-ID: <d76d87e8-f1f7-ba94-018f-8067a57a072b@gmail.com>
Date: Thu, 7 Sep 2023 21:42:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <L7DLnQC693GHJbp4IVEQHBAcBt3XHthesOwaDalLG4@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <L7DLnQC693GHJbp4IVEQHBAcBt3XHthesOwaDalLG4@lists.ettus.com>
Message-ID-Hash: 4KGTSIGMXTPWXULYULL2VB4MZ5MPX3XL
X-Message-ID-Hash: 4KGTSIGMXTPWXULYULL2VB4MZ5MPX3XL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Set the gain settings in C++ API for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4KGTSIGMXTPWXULYULL2VB4MZ5MPX3XL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDcvMDkvMjAyMyAyMToyNiwgMTkyMHN3YXBuaWxAZ21haWwuY29tIHdyb3RlOg0KPg0KPiBN
YXliZSBJIGRpZG7igJl0IGNsYXJpZnkgcHJvcGVybHksIHRoZSBzdGFuZGFyZCBleGFtcGxlIA0K
PiDigJhyeF9zYW1wbGVzX3RvX2ZpbGXigJkgZXhhbXBsZSB3b3JrcyBjb3JyZWN0bHkgaWYgSSBk
b27igJl0IHByb3ZpZGUgYW55IA0KPiBnYWluIGFyZ3VtZW50LCBidXQgZmFpbHMgd2hlbiBJIGRv
LiBJIHVuZGVyc3RhbmQgbXkgb3duIGV4YW1wbGVzIHdvdWxkIA0KPiByZXF1aXJlIG1lIHRvIGRl
YnVnLCBidXQgSSB3b3VsZCBsaWtlIHRvIHVuZGVyc3RhbmQgd2h5IHRoZSBzdGFuZGFyZCANCj4g
ZXhhbXBsZXMgZG9u4oCZdCB3b3JrIGZvciBteSBzcGVjaWZpYyBzZXQgb2YgYXJndW1lbnRzLCB3
aGV0aGVyIHRoYXTigJlzIA0KPiBiZWNhdXNlIG15IGFyZ3VtZW50cyBhcmUgaW5jb21wbGV0ZS9p
bmNvcnJlY3Qgb3IgaWYgdGhhdOKAmXMgYmVjYXVzZSANCj4gdGhhdOKAmXMgdGhlIGV4cGVjdGVk
IHJlc3VsdCBmb3IgYSBiMjEwLg0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpUaGVuIHdlJ3JlIGJhY2sgdG8gbWlzLW1h
dGNoZWQgbGlicmFyaWVzIGFsbW9zdCBjZXJ0YWlubHkuDQoNCldoYXQgdmVyc2lvbiBvZiBVSEQg
KmxpYnJhcmllcyogZG8geW91IGhhdmUgaW5zdGFsbGVkLS1ob3cgZGlkIHlvdSANCmluc3RhbGwg
dGhlbT/CoMKgIERpZCB5b3UgdGhlbiBpbnN0YWxsIEdudSBSYWRpbywgd2hpY2ggbWF5DQogwqAg
aGF2ZSBwdWxsZWQgaW4gYSBkaWZmZXJlbnQgdmVyc2lvbiBvZiBVSEQuDQoNCkkganVzdCB0cmll
ZCB0aGF0IGV4YW1wbGUgb24gbXkgVWJ1bnR1IDIyLjA0IHN5c3RlbSwgd2l0aCBVSEQgNC4xLjAu
NSwgDQphbmQgaXQgd29ya2VkIGp1c3QgZmluZS4NCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
