Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC5179EB21
	for <lists+usrp-users@lfdr.de>; Wed, 13 Sep 2023 16:30:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4AAC9385671
	for <lists+usrp-users@lfdr.de>; Wed, 13 Sep 2023 10:30:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694615457; bh=7nFm2lQ/HvoSjlanP+kSAIKgJbQn74Dd0CGFFLAorx4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=g7Ho/fT36WLfcC4mVUAZc+vLqX4xj7xuAWIipRrECQTdxk8p+E36Pci2HdloAF6Td
	 mJPIEWmHnDcvpwYOT7bRUO+Dy/4yyx6yWv8FANBwsO4P65vgLhZqasX83zdgAbNMwz
	 rMmlg9VyS/e4P9AxYaI8diKiQ0rY0K40ICa0Tajsmhm/1LMTOv6K7fQZvi9Y51TcgJ
	 /i6EIbDhYxInlmzYKRU/LG3JOmTwCnqk4VgyrnTcd+b4r2BkrV45bTg17Zzuwl3gSX
	 rMaEwPkZgeKpw2y7gYeA7BSy7nXgPCvYSArDKNChY+zX1LcimY5whoHLCc6hJG8jO4
	 A9rd6RcURCuMw==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id BD44E3855C0
	for <usrp-users@lists.ettus.com>; Wed, 13 Sep 2023 10:30:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FeExiA5X";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-76dbe786527so380202885a.2
        for <usrp-users@lists.ettus.com>; Wed, 13 Sep 2023 07:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694615440; x=1695220240; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EnYyRmhc+31r5gwzqnCxq0tux0Hz0TmHj47nK9lwe0I=;
        b=FeExiA5XwNne1bF5VKAWMqca3HrhgtBGsdskZF5QAb5slH5jNz7rZ4nFtmVl8VhHar
         2ktsUtfcH/gAqGj8bjh24JQ61u+vmab2sWJ1sUqRX7lJbEg+tXrelwRjCcWLXwfe+bRZ
         CfHZ5tifLMDunJuPTrh9++JeDvaCprr5TgXZNCBuvg0latQGUP926Not63YzuUTbDUIg
         INcEhWeBF7IjdsYYtP82DpskkJft+TlaSMsaUoqEFWZWC3R2iuZ7vRVQahuXwuGeicPJ
         phJ4lVmsBo58G9kdVGyRM7hA4NQHgoYsh3gtwPPL67Tji/hRakr/zmse0hZFRLcHXFsI
         NERA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694615440; x=1695220240;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EnYyRmhc+31r5gwzqnCxq0tux0Hz0TmHj47nK9lwe0I=;
        b=kJoieYq3uCwH9vOU/NocmqX55VK1x9T/dSg3GS+uRdkJ2zpi+GaNwHPplUmwwISE0y
         OQM5DYCGXOHlnAfytva+Zup5Wfzwy1g1Gi08DJlfDgo5532nUQ8MJFItOeq3ebBz+8lD
         p6JZv/BUctK/2/zT8leIt1Os5YuqBO8CTI1+Upz3m6l9SSXyF3lPN5riyBS3RHYS2Rjg
         OIeKOwf1VPXh3Mm5v9WOcXjPyPkI20xjjMPI12C9Ky3q96uGaWbGjdgYLfKxVCZ7Cmqr
         LWRGTJp2UsAFNV05COQqzpmDHzuNlOU5m4+6GJ/6VM0P6hhoKQT+QJGuINqJ/4SwrVSa
         dZLg==
X-Gm-Message-State: AOJu0YzqRDGZfLz4GiVv/WH2Iz3u3pjM4zruqbil0rTASwpOV+geXr0i
	83m2aoaVCFwUQ8VagZHhUJiHM4ZD56dFOA==
X-Google-Smtp-Source: AGHT+IEPtMB6Barpz5yC0MZufjdXwiQBbXC62PZTyqFV1CRIcWT/v1k52QpykgXkXrVXlVNhxPguZQ==
X-Received: by 2002:a05:620a:c88:b0:76c:a695:fe5b with SMTP id q8-20020a05620a0c8800b0076ca695fe5bmr2087441qki.62.1694615439888;
        Wed, 13 Sep 2023 07:30:39 -0700 (PDT)
Received: from [192.168.2.208] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id f17-20020a05620a15b100b0076f21383b6csm3937230qkk.112.2023.09.13.07.30.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 07:30:39 -0700 (PDT)
Message-ID: <5633a5d8-87ff-88d2-b27c-d9b3179c1f08@gmail.com>
Date: Wed, 13 Sep 2023 10:30:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <0b554ad0-7aad-e2e3-74e3-8b1c1598a8c8@simula.no>
 <48f56f6f-fc6a-e379-d0e5-c983116b46fc@simula.no>
 <c09e857c-3c22-6415-e320-3cfb11207295@gmail.com>
 <a9e7f02e-9eee-89db-f682-dd4819677871@simula.no>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <a9e7f02e-9eee-89db-f682-dd4819677871@simula.no>
Message-ID-Hash: NRFKVM45SMLYM57U7MCBHMFVAFV5EDM5
X-Message-ID-Hash: NRFKVM45SMLYM57U7MCBHMFVAFV5EDM5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: nr-softmodem: reproducible segfault in libuhd with Ettus N310 SDR
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NRFKVM45SMLYM57U7MCBHMFVAFV5EDM5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTMvMDkvMjAyMyAwOToyOSwgVGhvbWFzIERyZWliaG9seiB3cm90ZToNCj4gSGksDQo+DQo+
IGluZGVlZCwgdGhpcyBpcyBhIGJ1ZyBpbiBPcGVuQWlySW50ZXJmYWNlLiBJIGFscmVhZHkgZmls
ZWQgYSBidWcgDQo+IHJlcG9ydCB3aXRoIGZpeCB0aGVyZTogDQo+IGh0dHBzOi8vZ2l0bGFiLmV1
cmVjb20uZnIvb2FpL29wZW5haXJpbnRlcmZhY2U1Zy8tL2lzc3Vlcy82ODEgLiBUaGUgDQo+IHBy
b3Bvc2VkIGZpeCBzZWVtcyB0byB3b3JrLg0KPg0KT0ssIGl0IHdhcyB0aGlzIHBocmFzZSB5b3Ug
dXNlZCBoZXJlOg0KDQogwqDCoMKgICJTbywgdGhpcyBpcyB2ZXJ5IGxpa2VseSBhIGJ1ZyBpbiBs
aWJ1aGQiDQoNClRoYXQgaGFkIG1lIHRoaW5raW5nIHlvdSB3ZXJlIHJlcG9ydGluZyBhIGJ1ZyBp
biBVSEQgKHdoaWNoLCBvbiBtYW55IA0Kc3lzdGVtcywgaXMgY29udGFpbmVkIGluIGEgcGFja2Fn
ZS9saWJyYXJ5IGNhbGxlZCBsaWJ1aGQpDQoNCg0KDQo+IE9uIDkvMTMvMjMgMTU6MjUsIE1hcmN1
cyBELiBMZWVjaCB3cm90ZToNCj4+IFVubGVzcyBJJ20gYmFkbHkgbWlzdGFrZW4sIHRoaXMgSVMg
Tk9UIGEgYnVnIGluIFVIRCwgYnV0IHJhdGhlciBhIGJ1ZyANCj4+IGluIG5yLXNvZnRtb2RlbS0t
aXQncyBtaXMtbWFuYWdpbmcgaXRzIGJ1ZmZlciBwb2ludGVycy4NCj4+IMKgIE5vdGhpbmcgdGhh
dCBVSEQgY2FuIGRvIGFib3V0IHRoYXQuwqAgQysrIGRvZXNuJ3QgaGF2ZSBydW4tdGltZSANCj4+
IGJvdW5kcyBjaGVja2luZy4NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
