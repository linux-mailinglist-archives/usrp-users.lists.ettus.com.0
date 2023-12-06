Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E288380710C
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 14:43:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AD7CD3853DA
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 08:43:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701870199; bh=btS8iWXbS6ANQ8zedNky0Zx0JeHf78TsMw/xMFG4Qd0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0WnFXC0LtQnCBiN/pORssI7TJlYxI7uBFJof0RZuQvVK+SrJ3GN0yqMIB0Zgo8BZh
	 hDdubfrHcEiQZSSBP0WXtUs4C2JYFkqeijFuq6GHzPnm3EwAOk3iYnqgFlUa20gC0X
	 AF0VsxnLHaOk1Ws9e+jXZqobI6UnyNGF72yP8RfmNEXx2Tg7pRwZxOaaTC/RqDdlGz
	 iQp6C4vCOZZDxjIhuk3lcH6KO4mV/X8/ydxYwFYCvi4ymXc7vCVA0DnwwN9tR5bDGi
	 hNUQVY0jqJ8G0OtgVCpb8wvYtBLgdRhfuW+guPS9eWkeRgwRrIu1DGKX47oldy+5AN
	 JEHF1s3oEOpIA==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 38C5D385278
	for <usrp-users@lists.ettus.com>; Wed,  6 Dec 2023 08:42:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NhOQEZHI";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-77dd07e7d39so457329785a.0
        for <usrp-users@lists.ettus.com>; Wed, 06 Dec 2023 05:42:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701870149; x=1702474949; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KOc+f2ig8EOv6OlAa3cnUSMcVysoEqTz559bGW0Rh+0=;
        b=NhOQEZHI2Y2DyRdyu6Pnz771f62/w8GyFXvNmk88+OJ0kB78/8NIhevseHpiEewPBQ
         ETm4kOO84CQCqsfT67PMTxi9XyEmLsYdJbwOGmViC2Q/d339+ZUzhij+q95a+WsGR3Au
         AiA51bxhtQFseaRA1ip9YP2BlLE6VRWY6P/Bo7mogCYi8MakTkod3HwZFdtPDS7or4Es
         51WhrpAGjP+FSeYOrIp6GUbVu/Gd8PEz3gc6wIjg+8XwKagUx4A3MaTyJNNut67CPgDk
         +om0qPNGyaI94XOF2EcLCZ0//98yd5zbJWJbZu1BHdyJR9zQgjjQZJ877TGeBaWVXNG1
         y52w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701870149; x=1702474949;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KOc+f2ig8EOv6OlAa3cnUSMcVysoEqTz559bGW0Rh+0=;
        b=fR/tem1zZAKqU0EXSazBVLMbF1oWKlQlf3Nan8Mv98cS+MYApki8rTqxR0baG7YJrd
         TZW8EqTQnSWsT3o60U/zDknK9zTFv/tKsENcBsP7QHjaM+P7bbo2SYz7T/y0mhSBKbPf
         +A9tW6beYN7TxU77GQp1QRPt/LQbvF/RWel7rraitTA4/NbMEDGZ0yq8tf46zq7bbPmJ
         GZRlFi9k67Nvs41fCadYrE8thLdYno2V1IKA6CDx+0tr6HCwRMisfj4S0etm9TRhAIR5
         YlaAtqn4OZWtNWkbPcelBxmzl/FuZpSpTlCF/YcasRCrtCnpfcQ1wxZZ0XsJ9aPeWfrr
         vvHA==
X-Gm-Message-State: AOJu0YyEOVsavb9yGm34iP9RVMVhF6mzUi7mGCt40KfNjKf5t1x20/Yq
	nHGzYg9dfu0qFFdoLl28PBTecbHTOoc=
X-Google-Smtp-Source: AGHT+IFdeMuMqMK+mMJMPv2yHA50yFgavPdSZy4iFGnWQhbpaSOD8jQLIF7QRoX99lQIv3Vu7utX3Q==
X-Received: by 2002:a05:620a:d95:b0:77d:ce42:2d4d with SMTP id q21-20020a05620a0d9500b0077dce422d4dmr995918qkl.2.1701870149461;
        Wed, 06 Dec 2023 05:42:29 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id n9-20020a05620a294900b00767e2668536sm391075qkp.17.2023.12.06.05.42.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 05:42:29 -0800 (PST)
Message-ID: <3e8eaa65-2fb2-4bf7-a305-ab79f8a29420@gmail.com>
Date: Wed, 6 Dec 2023 08:42:20 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <hinbfiatY8i7AMSTWR6za3Hr6COQLZSP0X8JOzOzI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <hinbfiatY8i7AMSTWR6za3Hr6COQLZSP0X8JOzOzI@lists.ettus.com>
Message-ID-Hash: WVF2D2MNCC57U5BT4PH2TJUOTZVKD7VY
X-Message-ID-Hash: WVF2D2MNCC57U5BT4PH2TJUOTZVKD7VY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WVF2D2MNCC57U5BT4PH2TJUOTZVKD7VY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMTIvMjAyMyAwNDo0MSwgcHVydmEuam9zaGlAcGhkLnVuaXBpLml0IHdyb3RlOg0KPg0K
PiBEZWFyIE1hcmN1cywNCj4NCj4gSGVyZSwgdGhlcmUgaXMgb25lIGlzc3VlLCBJIHRyaWVkIGV2
ZXJ5dGhpbmcgdG8gc29sdmUgdGhlIGVycm9yLiBNYXkgDQo+IGJlIHlvdSBjYW4gaGVscCBtZSB0
byBzb2x2ZSB0aGUgcHJvYmxlbS4NCj4NCj4g4oCcRXJyb3I6IHJwYzo6dGltZW91dDogVGltZW91
dCBvZiAyMDAwbXMgd2hpbGUgY2FsbGluZyBSUEMgZnVuY3Rpb24gDQo+ICdzZXRfZGV2aWNlX2lk
Jw0KPg0KPiBLaW5kbHkgaGVscCBtZSBpbiB0aGlzIGlzc3VlLg0KPg0KPg0KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpUaGlzIHZl
cnkgbGlrZWx5IG1lYW5zIHRoYXQgdGhlIHN5c3RlbSBpbWFnZSBvbiB0aGUgTjMxMCBpcyBvdXQt
b2YtZGF0ZSANCndpdGggcmVzcGVjdCB0byB5b3VyIGhvc3QgUEMgY29kZS4NCg0KUGxlYXNlIHNl
ZToNCg0KaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfdXNycF9uM3h4Lmh0bWwj
bjN4eF9nZXR0aW5nX3N0YXJ0ZWRfZnNfdXBkYXRlDQoNCg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
