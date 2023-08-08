Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BD1774182
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 19:22:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 69A7B384689
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 13:22:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691515377; bh=olqp+kRrlkka+jRojXtSc+v1WOS/Uvpky+IMREjAMdE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MsYHJRleTfcRSVk7p4NZLB1YrpTsfXfyklEWchXlL7lKfZRKiANfqCtJvdh+vLs7h
	 bL58fVqnGgqtvwAszknSjEzQd1QAsUANCMxK3+aHdbt30rm64guw4rqdseHhwlTSoZ
	 OgQb+Q3uSuiPs4AEm7NdNgAAMyCX4Q922Q3gXLWKsL+DTt7OBeIieyU9F3lMBrSL61
	 UlDeUscq3nuyp4ryLJ/NwD6nQl7cYhV3+8mZsaSSYooHK4lowuGibVHxDmoIbbwVgR
	 8lyMzynWnBUp3M5kEgaClZ9XKFP8nDhAWHmdF6QXzAkDlxoL7tj3ur7YSdB+AnRndp
	 yA0R1MCDmh95A==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 42EB8384092
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 13:22:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WbRkYUjd";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7653bd3ff2fso556696285a.3
        for <usrp-users@lists.ettus.com>; Tue, 08 Aug 2023 10:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691515362; x=1692120162;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=haIZm5bUdhrTFjqKlE/zwNmHDHx4Vc8CwtCFooOmxo0=;
        b=WbRkYUjdGj9kEwXsZUCV4zV3M7r5dJIoFbp4zUduTIAQ2xcK3mUOw945NyzMJ3ZTCK
         XZRv5lBumWOqyTdKqICFacOWscPPqK7glBn4SUxnjKEBZF7GgiSnoT8U11DciIiF1i0x
         ZfBO7NC6kOmuZRdF2FhovkYMfWqBbbnbsvkVXHXfEZXiimMSQktGjt5FuGLemC6K4mMd
         69g5oJfhjATV83NWuqcQ1uZeGV5bdLPOu5kixYgedQcGISGx5+Q6n8+gFueeFJKxFKs0
         gvRG7p0BhA9kGg/LDpSDDyRPqwSkPh10mfVoINKKSpPmnDvE0yRNoqv/dfGbs+HYpgMe
         aaqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691515362; x=1692120162;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=haIZm5bUdhrTFjqKlE/zwNmHDHx4Vc8CwtCFooOmxo0=;
        b=ks+DOIxQ7t+OdjZ8A5qCIdGkhfgC1ZlVtKQdyPdgBKIIlqt6mIfJk/sZOJbZ4E3v/Q
         0fXUTmBfKKUuF6SsXppeyh2J0I65wzZ85OT7ENu39Brsz7jiZ/nVZepOnUaez6xljZnH
         8gGLuRHkkXBoyjebAivx0g6YvmiUrUFXijqgUAim99FcZ+Hpi6jCLleMQuQlFY52Ji6D
         jDK9x/swldr466bmOkIFjP2efEC+lelf7HyqmZtPNv8a54g+wjzyaLkV/kDojcoSDR3/
         xmtwU80gXm183SS+cGGn4xIPmATB12GdGPLYG+MST/7+Mqky8UldFhXptcOmHzsrEQ5e
         U1rQ==
X-Gm-Message-State: AOJu0YzG6HWvTOg7W7Tyvk6rs8KbDgdODR5hEOGVwK9zQLlt4b+hjlTL
	Lobm5gxfYSy+ApaYTWfxLLGDr2/u0pg=
X-Google-Smtp-Source: AGHT+IFBK12/0sU3niqlphKTlPFmf4M7QzcsmTS3ykwCwQ5oSqpNyJcJEwyQbpfDFVQnZnOF0ADGcw==
X-Received: by 2002:a05:620a:248f:b0:76c:a8a2:aad2 with SMTP id i15-20020a05620a248f00b0076ca8a2aad2mr433387qkn.34.1691515362545;
        Tue, 08 Aug 2023 10:22:42 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id q14-20020ae9e40e000000b00767d4a3f4d9sm3432422qkc.29.2023.08.08.10.22.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 10:22:42 -0700 (PDT)
Message-ID: <e577b681-b065-f2ee-a2f0-f18f6f4a828b@gmail.com>
Date: Tue, 8 Aug 2023 13:22:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <fgdt0yZZ0s12IOXmLShFCNjHqQWREy9mP1TlsZcPno@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <fgdt0yZZ0s12IOXmLShFCNjHqQWREy9mP1TlsZcPno@lists.ettus.com>
Message-ID-Hash: E6QKH65CP7ET6WN3NDPWKV73BSUBIA2Z
X-Message-ID-Hash: E6QKH65CP7ET6WN3NDPWKV73BSUBIA2Z
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What is the power socket on an Octoclock CDA-2990?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E6QKH65CP7ET6WN3NDPWKV73BSUBIA2Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDgvMDgvMjAyMyAxMzoxNiwgc2hhcGtpcXVhcnJ5QGdtYWlsLmNvbSB3cm90ZToNCj4NCj4g
SGVsbG8gTWFyY3VzLA0KPg0KPiBUaGFuayB5b3UgZm9yIGEgcmVzcG9uc2UuIEJ1dCBJIGhhdmUg
YmVlbiBodW50aW5nIGRvd24gYSBiYXJyZWwgDQo+IGNvbm5lY3RvciBmb3Igb3ZlciBhIHdlZWsu
IEkgaGF2ZSBzZWFyY2hlZCBhbGwgb2YgZGlnaWtleSwgbW91c2VyLCBhbmQgDQo+IGFtYXpvbi4g
SSBoYXZlIGFscmVhZHkgYm91Z2h0IGFuZCByZWNlaXZlZCBhIGJhcnJlbCBjb25uZWN0b3Igd2hp
Y2ggSSANCj4gcHVyY2hhc2VkIGZyb20gRWJheSwgYW5kIGl0IHdhcyB0b28gd2lkZSBmb3IgdGhp
cyBzb2NrZXQuIEkgYW0gDQo+IGN1cnJlbnRseSBidXlpbmcgdmFyaW91cyBjb25uZWN0b3JzIHdp
dGgg4oCcbG9uZyBiYXJyZWzigJ0gdmVyc3VzIOKAnHNob3J0IA0KPiBiYXJyZWzigJ0gYW5kIHNp
bXBseSBzaG9vdGluZyBpbiB0aGUgZGFyayBub3cuDQo+DQo+IElmIGFueW9uZSBoYXMgYW55IGRl
ZmluaXRpdmUgZGF0YXNoZWV0cyBvbiB0aGlzIHdpdGggYWN0dWFsIA0KPiBzcGVjaWZpY2F0aW9u
cywgcGxlYXNlIGxldCBtZSBrbm93Lg0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpJJ20gdHJ5aW5nIHRvIGdldCBwYXJ0
IG51bWJlcnMuwqDCoCBGcm9tIG15IG93biBleHBlcmllbmNlLCBJIHRoaW5rIGl0J3MgDQpqdXN0
IGJhc2ljYWxseSBhIHN0YW5kYXJkIDUuNW1tIHggMi4xbW0gYmFycmVsIGNvbm5lY3RvciwNCiDC
oCB3aXRoIHRoZSBhZGRlZCBmcmlsbCBvZiB0aGUgdGhyZWFkZWQgbG9ja2luZyBhcnJhbmdlbWVu
dC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
