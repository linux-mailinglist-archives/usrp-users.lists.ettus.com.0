Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0B79B4F00
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 17:12:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 250163866B4
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 12:12:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730218371; bh=L40VJrDO9JCA5g52FfkMo8JVIqjuhBBid4N2kLaHjk8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xZpMfNNW5ZSfWGtxfPUf/8DRjrIM53DmbTVpJoLimkCEsfpZiND3tqShEUhc+4Lrz
	 22wj6fifZ/7aP2B0tIzr2itloCki8bTjrfH7OCmzAOFSFnREGbdwzKP18bFD9anqqc
	 cTgt9Wa451SYtD1SuO3Bmx4JzqpA2MfG4UUMkT0nT14qHaVOEqUYGTpvneVWmg1s7k
	 viJcVSFQmJjQhaff/jybMzQfo/0Ag9eqPT5+IfHvKAsqSrKHTmtWJpCt6HpXpLIyCu
	 s9k8jEhZ9UkcDxeYGRndBfL77SEYl48U+qyxiAp5RXyeZeVqOI71jErpxerz9yebF6
	 IevXlMRA7sdKg==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id A1B5538667D
	for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 12:12:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="F0hDnjmG";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7b15d330ce1so459196885a.1
        for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 09:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730218355; x=1730823155; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F5r5bznhcbM41oOqBfemoT6VriIF9zmUAQM7c4QNA5A=;
        b=F0hDnjmG2SvxNzJUW5/uP3X5mEHO9B4QRRBZ/4sFzmwg6rzSRBo7jC00aQVQjI+Vnu
         MDTtkRwuBKzQsUI4zQlhpDo/NjDej+CAxuAxy66T0ZECP9Lje0noi6322KG9f3vYkh2N
         83I5C33jmzJQyWyilb/oTclalLZ9KuPrBakr3m5V9buVtr7s/c7HA2kcEoEB1ogaGXcR
         1CX+AUrHUe2ZCgQtoHyijgevLWwiJVobR4J3I/smKQvY9chDRVmGbuNpP0VEBnWNJj6F
         jjT5rWuVg2atdJWetBWkw7vxCL8va75x3233vOQGiUKJwCUhvGhO3NHd669KQJTjTF4r
         Jo+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730218355; x=1730823155;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F5r5bznhcbM41oOqBfemoT6VriIF9zmUAQM7c4QNA5A=;
        b=i4chnzpV30GnTmUOlKN/G+5fuD2a0NPczU1MyD4CrBdXAcd9IxTCApXscqweRM1yiM
         aNHuGmAgLyC/Sjl9j3+dRhVrXXvvSvyxU9xUL9RmpSwVK5rbUxPWdHRdGxY+ZNNDB0T1
         Lsk/4JnZ65Jg3Nne8tZovX4+u1RZwq4MQeXDEv3EYAxQoNHH7H9m0zAHpAZUztI8tXsg
         uqGOWuwm4UlpdR+A5FSBJW3l+ZLSIs3KvTSIqZTqMVP5TytWkkbUp6IqwHjrBsdVsUog
         b916140mJiz2C2HDaE7ByoKx/aIsnSZS25F0drLHKQxHZXmGbE5PJwEe5BOPOyE1DLNd
         vbjA==
X-Gm-Message-State: AOJu0Ywy/ewfUGiuzJLIamXAwvlQGDgqmKLIoMNrziFvFw8laFVm8LBA
	XhdEhxFYZS/a5urR72NRKlyqgHgfqzwpu3/Jy1ldh6GMtyEsagr7wi0Rvg==
X-Google-Smtp-Source: AGHT+IGrrtt0GMPm+6rzeUkozz0D2vb4hFwD8tQgs37MQo+TYr4lNmk4UCYhTo0jUgKz9Rhd1KBWHw==
X-Received: by 2002:a05:620a:4153:b0:7b1:4441:9bb3 with SMTP id af79cd13be357-7b193f59a07mr1617996885a.65.1730218354683;
        Tue, 29 Oct 2024 09:12:34 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b18d2accc3sm429989785a.69.2024.10.29.09.12.33
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2024 09:12:34 -0700 (PDT)
Message-ID: <0bbac4b3-7fd6-40d9-9bed-ffd965e241f7@gmail.com>
Date: Tue, 29 Oct 2024 12:12:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <WGfcxlBtqxO3ZgfMtpMzIJmBaZS3j2LEPtDNutE@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <WGfcxlBtqxO3ZgfMtpMzIJmBaZS3j2LEPtDNutE@lists.ettus.com>
Message-ID-Hash: 77VATGF66SWKCDWKJVHN44CCZVGGPDOV
X-Message-ID-Hash: 77VATGF66SWKCDWKJVHN44CCZVGGPDOV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error: RuntimeError: Failure to create rfnoc_graph on USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/77VATGF66SWKCDWKJVHN44CCZVGGPDOV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjkvMTAvMjAyNCAxMTo0MiwgcGlnYXRvaW1kZWFmcmFuY2VzY29AZ21haWwuY29tIHdyb3Rl
Og0KPg0KPiBIaSBNYXJjdXMsDQo+DQo+IE4zMTAgY2FuIGJlIHBpbmdlZCB3aXRoIGJvdGggYWRk
cmVzc2VzLg0KPg0KPiBJIHNldCB1cCBwb3J0IDQ5MTUyIGFuZCBzaG91bGQgYmUgbGlzdGVkOg0K
Pg0KPg0KPiAkc3VkbyBmaXJld2FsbC1jbWQgLS1saXN0LXBvcnRzDQo+DQo+IDQ5MTUyL3VkcHYN
Cj4NCj4NCj4gaG93ZXZlciwgdGhlIHByb2JsZW0gc3RpbGwgcGVyc2lzdHMNCj4NCj4NCj4NCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQ0KPiBXSGUNCldoZW4geW91IHNheSAiYm90aCBwb3J0cyIsIGRvIHlvdSBtZWFuIHRoYXQgeW91
IGhhdmUgYm90aCBTRlArIHBvcnRzIA0KY29ubmVjdGVkIHRvIHlvdXIgaG9zdD/CoCBDYW4geW91
IGNvbmZpcm0gdGhlIElQDQogwqAgYWRkcmVzcyBjb25maWd1cmF0aW9uIG9mIHlvdXIgaG9zdCBO
SUNzLCBhbmQgdGhlIGFkZHJlc3NlcyBvbiB0aGUgDQpOMzEwP8KgwqAgT24gdGhlIE4zMTAgd2l0
aCB0aGUgZGVmYXVsdCBGUEdBIGltYWdlLA0KIMKgIHRoYXQgc3VwcG9ydHMgMUdpR2Ugb24gU0ZQ
MCBhbmQgMTBHaUdlIG9uIFNGUDEsIHRoZSBhZGRyZXNzZXMgYXJlIA0KMTkyLjE2OC4xMC4yIGFu
ZCAxOTIuMTY4LjIwLjIuDQoNClRoZSBtYW5hZ2VtZW50IChSSi00NSkgcG9ydCBpcyBESENQIGVu
YWJsZWQgYnkgZGVmYXVsdCwgc28gaXQgd2lsbCBoYXZlIA0Kd2hhdGV2ZXIgYWRkcmVzcyB3YXMg
YXNzaWduZWQgYnkgeW91cg0KIMKgIG5ldHdvcmsuDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
