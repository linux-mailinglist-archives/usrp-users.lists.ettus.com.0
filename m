Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD107ED80A
	for <lists+usrp-users@lfdr.de>; Thu, 16 Nov 2023 00:20:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A292385923
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 18:20:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700090441; bh=ecGs4k3ujpuXf5ezHT9yXJ131tH2lC6uZHxNCxR/jCw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0CucQzCOFSiDx9IAIhgOYU1c7XCyWRoMfMaceuK9QhuK2vMls+uCUhR6IHC07rsqR
	 x7By6mqAlfymZGiM19cbWJeoywkdrrTjGlkq9Ctapl0BMxdDOyVkajJfZUFEdAO6iQ
	 mAkFcFj1MjzPhImTPNBaMVdW4qKenk18hs2ExL08MIVxHzYtyjSI7bL/xTfeKwHiDj
	 1F8BfgvfSrwgiONLsvIHHCZE9v6yECZaj1EqC+MhUm/zDTbZNyWG9+lCbxP4AXhOYH
	 d92uQ4P7K0vZCysUFHFAHRSIyno02D17LOylIZvez/loYJivXJdBohuRzAE2TiZCRw
	 XAKyM7O+iPQ7g==
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 331C53856A0
	for <usrp-users@lists.ettus.com>; Wed, 15 Nov 2023 18:20:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="H+slB+/N";
	dkim-atps=neutral
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-1dd71c0a41fso87703fac.2
        for <usrp-users@lists.ettus.com>; Wed, 15 Nov 2023 15:20:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700090424; x=1700695224; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/2URn0FwpjU1gwKZacFxnNIFSo30lvREHPrlvt971hI=;
        b=H+slB+/NeIUTxtSWivfKKt69XIGs0abrPFKPSS0SGqQzIsbgk6410PBlo78cRgnW43
         0qowxXHnE8oBBfVinY+3TFZlc+KBmnIUUdVenjChNNty6k5zbQVLEOSYPKqqDiHSQcXT
         bGGkd5zWqvPulMCcnJaPPbOXXj3wOp0N1EQkwMwkxkR4PSM8mqtDC5k+/xCE0L2uLsYV
         K2OyLCYN3WBM41rJLMr3JNJ4tSslElLuYkM7ylYpW+poZBV33v0FAc7LCORed1CGWLAc
         0lx1D+cYnIzswtJwIx/eOc8zEmMXgKylS1QpV9zGMe7VDJuwAzC96ZmaoQ6fjOT40d4G
         geJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700090424; x=1700695224;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/2URn0FwpjU1gwKZacFxnNIFSo30lvREHPrlvt971hI=;
        b=o3u6jFtw5zPHJbLbdKYucWWLFps2QN656bLlcXV2Qm6U2NbWS12s2fRgfQ8j4vG4E4
         tIpF1Vhb7XItu0sZoi/osu+nmgZxnsbaIy8W+HiYmzPrYBb4r0Yp1JxqQVV4SuC6TtZR
         XOWyUid1Rq2de7kLSw7f45KTmFbHex6U9W3fm69QD1Vs+0s2ivSusMGBBMTDx3XgOM+W
         CCv4eawFY9vNLoLEzW8Bpaeq6un54SZ7qx5kx4EaEjvUMnvfInxj5+xb4NNgNCHvqMYU
         L4DHZz2FFjyrW4a//08x1XJZW+cSbS2/HDYK+c6XTYUwFg2AHToXN2qIwoyVDG8xO4Zd
         3NgQ==
X-Gm-Message-State: AOJu0Yzq3Ht49sIGM5eG5jAMuOsCbrSVdRpdOGP7xWJbrlFYIsOgDy5X
	seTGXrdbL8Mkj0aU9nDSZX76BN4fR2E=
X-Google-Smtp-Source: AGHT+IG6Mw2X23EBhJqXKlGD5qJRZyskVUXAaLYZB8ZTTS760k/FSP2xu0G16jkLoRYI8I7xW9XTIw==
X-Received: by 2002:a05:6870:160d:b0:1f4:dac9:75a8 with SMTP id b13-20020a056870160d00b001f4dac975a8mr16541897oae.10.1700090422233;
        Wed, 15 Nov 2023 15:20:22 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-06-174-88-54-173.dsl.bell.ca. [174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id q15-20020ae9e40f000000b007742c6823a3sm3839308qkc.108.2023.11.15.15.20.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 15:20:22 -0800 (PST)
Message-ID: <ea754bb8-7177-4070-bdc9-9b9144ccb4b5@gmail.com>
Date: Wed, 15 Nov 2023 18:20:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <6OabWBqAFfljlWmi7V5FCHldD2U9fyWhNMNyDVJ24o@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <6OabWBqAFfljlWmi7V5FCHldD2U9fyWhNMNyDVJ24o@lists.ettus.com>
Message-ID-Hash: EXYHBTDMXFLTTWX2HSGRD4GQU4PUO4LU
X-Message-ID-Hash: EXYHBTDMXFLTTWX2HSGRD4GQU4PUO4LU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 stuck in reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EXYHBTDMXFLTTWX2HSGRD4GQU4PUO4LU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTUvMTEvMjAyMyAxNTowNCwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPg0KPiBO
b3csIHRoZSBkZXZpY2UgZG9lcyBub3Qgc2V0IHRoZSBTRlAgYWRkcmVzc2VzIGF1dG9tYXRpY2Fs
bHksIGFuZCBJIA0KPiBzdXNwZWN0IGl0IGhhcyBzb21ldGhpbmcgdG8gZG8gd2l0aCB0aGUgc3No
IHNlcnZpY2Ugbm90IHN0YXJ0aW5nLiANCj4gQWRkaXRpb25hbGx5LCBpZiBJIHVzZSB0aGUgQ29u
c29sZSBKVEFHIHBvcnQgdG8gbWFudWFsbHkgc2V0IHRoZSANCj4gYWRkcmVzcyBvZiB0aGUgUkot
NDUgcG9ydCwgdGhlbiB0cnkgdG8gcGluZyB0aGF0IGFkZHJlc3MgZnJvbSBteSBob3N0IA0KPiBk
ZXZpY2UsIHRoZSBhZGRyZXNzIGlzIG5vdCByZWFjaGFibGUuDQo+DQo+DQpzc2hkIHN0YXJ0dXAg
aXMgYSBzeW1wdG9tIG9mIHRoZSB1bmRlcmx5aW5nIG5ldHdvcmsgcGllY2VzIG5vdCBiZWluZyBp
biANCnBsYWNlLS1ub3QgdGhlIG90aGVyIHdheSBhcm91bmQuDQoNCkkgcmVhbGx5IGRvbid0IGtu
b3cgYXQgdGhpcyBwb2ludC0tbGlrZSBJIHNhaWQgSSBkb24ndCBoYXZlIG9uZSBvZiB0aGVzZSAN
CihhbHRob3VnaCBpdCdzIHBvc3NpYmxlIEknbGwgZ2V0IG9uZSBpbiB0aGUgY29taW5nIG1vbnRo
cyksDQogwqAgc28gSSdtIG5vdCByZWFsbHkgZmFtaWxpYXIgd2l0aCBpdHMgcXVpcmtzLg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
