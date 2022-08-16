Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD7D5965FB
	for <lists+usrp-users@lfdr.de>; Wed, 17 Aug 2022 01:27:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3E30383860
	for <lists+usrp-users@lfdr.de>; Tue, 16 Aug 2022 19:26:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660692418; bh=zXWOEUvKeihB2A4jN2anqGrvekqQ0nlJMv2U7gBw/F4=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CtzbqYzg7YBzaXWHIenPcxeKwVcUy0WGiHcyvT2AUVs9qZr7RWY3UO6MNv443r+GT
	 PrOU9ced5eMswhmaRrIF5LLKGcBpdBxwqHeaykAyDzmUyTVjCaCXu7yRiGdNaz/6rk
	 w7KHsmgfMnW5N58w6tGzsXTLty3Q+Dg514tqzy8esCC/+6hY56J4cXHxCgjWE0DI71
	 LzIHI7FUoSpN8eBXWvnMpuKXVE451VHgFdijewSZ5Gy/XpRPo9zcGzyUciQPqIhAUB
	 9fEZ7ykrCxs9wwUbRDs8cT7WfHf4LSyexrVaTIPetZ/esVCupA6jY18ZRxvtWxzQov
	 wTCkW65wl6LNg==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 462B338303F
	for <usrp-users@lists.ettus.com>; Tue, 16 Aug 2022 19:25:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZyHh4Cs6";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id cb8so9355970qtb.0
        for <usrp-users@lists.ettus.com>; Tue, 16 Aug 2022 16:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=A2gBxTKP70nzN7CDvLMnSFsrrfOgQbtMSyRs+5gm7Xs=;
        b=ZyHh4Cs61jEr8dYliqVbQ+Mij30SQu27B7v/qjBticw535jaKaL/JtnJgEbjh39MB5
         dcJmRy9vItjFaX09FojeoN2Kmf15OSaSXKolcyS8hwpeD07YuryGNFz+18TzYnzqA67/
         xvEvfppujAsjWzAgPK2S4WfskNSTf+0RSL9XNcQiqiDJmvK43Dn5gns+JuTpUYiewJHt
         lV90jrKiZNg+kdD0o0+lyGKQhuwtmLWfB+/ZLa2ZsX09hfQ8fYjIJ5c8XHP9wSjcFsW7
         WO+Zb4oRLDKMSo4ZMAz1zGM3BsVFlCv865vo57Nuj98V71iWjlDDzNSeBoqunhI5btgm
         sLBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=A2gBxTKP70nzN7CDvLMnSFsrrfOgQbtMSyRs+5gm7Xs=;
        b=uxX9wBWSMX1y0grBztIz5ifcwjWjQVGgpPkJYgEEIN1lKnDvqXeLlJqEJv4qbBamIt
         E7o0upy4/ixOMLqvMurjT0f3Gg3jzoHrzAjH9xc2rPQqQ6rlW/r7xV0ndrVU+6x9Xbqt
         XsLMbZQr3pUNnCsdWMAfUGVktCiHFXb9E/afDxBwbZaY4SwNhq/Cw4gR0PFkNOro1eZj
         f6lGv8wJ82/aBN6hvq0jFrt8IYdCXgRV3OIb9V22v7C3LL4gflcJZgduNdPos/A0pUvP
         gXk89gaYXW+1vgcNP8DD5reiPb3yr/B0NAcFdP8c5cAHXqqdTmpGCAW5MMVfeSNH3EZn
         K+ng==
X-Gm-Message-State: ACgBeo39fR7HDa+rVt92Qik1g1Q7Zd2xmmLIKJbMDfy+vUiFEMbMa58V
	0RmyNpSXgFnpPh9Rh3UN0JE=
X-Google-Smtp-Source: AA6agR5MOE/SY3X9F+e40A9/P2/XdCU6+hyFhv83A52C0zzeVTUEcn+DZEVUXqgw3WZX4nl8tk3mlQ==
X-Received: by 2002:ac8:5fcb:0:b0:344:5d06:8d83 with SMTP id k11-20020ac85fcb000000b003445d068d83mr10782499qta.300.1660692343492;
        Tue, 16 Aug 2022 16:25:43 -0700 (PDT)
Received: from [192.168.2.168] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id o3-20020ac85543000000b0034359fc348fsm11558044qtr.73.2022.08.16.16.25.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 16:25:42 -0700 (PDT)
Message-ID: <6b62e099-9f5f-fe84-4101-23a485f5c234@gmail.com>
Date: Tue, 16 Aug 2022 19:25:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Dave NotTelling <dmp250net@gmail.com>
References: <CAK6GVuO8pZJf2QG6JajE4y30-dhMQC7RTsAG1CVi7Dx8CcnZ4A@mail.gmail.com>
 <484f31e0-c18b-17a4-fab3-eb86a450ed65@gmail.com>
 <CAK6GVuMVAtB4q5RvpdtUUBiOcNGBOhR2TQS2rXnt89X1FL3Pag@mail.gmail.com>
 <9c6f887d-4c73-d831-d287-702e037de7f3@gmail.com>
 <CAK6GVuOweUQEhvSwckf4ihNCP1Bd=D+pQwy9ndMtg5m5Lr9GyA@mail.gmail.com>
 <CAK6GVuMz4=t7QVmpZVoWq9R5j-ufkU6MCbzHSicrRffpcSJvvQ@mail.gmail.com>
 <CAK6GVuMixVQGcJWO2N09onOtUicKgprgSFcXC47OmFLCYXgc9A@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAK6GVuMixVQGcJWO2N09onOtUicKgprgSFcXC47OmFLCYXgc9A@mail.gmail.com>
Message-ID-Hash: BQGMRESVPW6R6CDOQQ22GEO3QNF5IAQA
X-Message-ID-Hash: BQGMRESVPW6R6CDOQQ22GEO3QNF5IAQA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 won't boot without reflash
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BQGMRESVPW6R6CDOQQ22GEO3QNF5IAQA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOC0xNiAxODo0OCwgRGF2ZSBOb3RUZWxsaW5nIHdyb3RlOg0KPiBDb3JyZWN0aW9u
LCB0aGUgcG9pbnQgYXQgd2hpY2ggdGhlIGltYWdlcyBnbyBhd2F5IGlzIH4gOTAwIE1Iei7CoCBC
ZWxvdyANCj4gaXMgYSBsaW5rIHRvIGEgdmlkZW8gd2hlcmUgSSBzd2VlcCBmcm9tIH4gNDAgTUh6
IHVwIHRvIDIuNCBHSHouwqAgTm90ZSANCj4gdGhhdCB0aGUgaW1hZ2VzIGFyZSBvbmx5IHByZXNl
bnQgaW4gdGhlIGJlZ2lubmluZy7CoCBUaGUgWDMxMCBpcyBjYWJsZWQgDQo+IGRpcmVjdGx5IHRv
IG15IHNwZWMtYW4gd2l0aCBubyBhZGRpdGlvbmFsIGF0dGVudWF0aW9uLg0KPg0KPiBodHRwczov
L3lvdXR1LmJlL2pxVWxLNFdXdm9RDQo+DQpUaGUgV0JYIGhhdmUgbm8gZmlsdGVycyBhdCBhbGwu
wqDCoCBJZiB5b3UgaGF2ZSB0aGUgZ2FpbiBjcmFua2VkIHVwIHdpdGggYSANCmJyb2FkLWJhbmQg
YW50ZW5uYSwgZXhwZWN0IHRoZSBSRiBhbXAgYW5kIG1peGVyDQogwqAgdG8gZ28gcnVubmluZyBo
b21lIHRvIG1vbW1hLsKgIFRoZSBvbmx5IGZpbHRlcnMgYXJlIHRoZSBiYXNlYmFuZCANCmZpbHRl
cnMgb24gdGhlIG90aGVyIHNpZGUgb2YgdGhlIG1peGVyLg0KDQpCdXQgeW91IHN0aWxsIG1heSBi
ZSByaWdodCB0aGF0IHRoZSBmaXJzdC1zdGFnZSBhbXAgbWF5IGhhdmUgYmVlbiANCmFidXNlZC0t
b25lIG9mIHRoZSBzeW1wdG9tcyBpcyB0aGF0IHRoZXkgYmVjb21lDQogwqAgTVVDSCBtb3JlIHNl
bnNpdGl2ZSB0byBub24tbGluZWFyIG9wZXJhdGlvbi7CoMKgIEFsc28sIHRoZSA5MDBNSHogYmFu
ZCANCmluIHRoZSBVLlMuIGlzIG9mdGVuIHVzZWQgZm9yIFNUTHMgKHN0dWRpbyBsaW5rcykNCiDC
oCBiZXR3ZWVuIGFuIEZNIHJhZGlvIHN0dWRpbyBhbmQgdGhlaXIgdHJhbnNtaXR0ZXIgc2l0ZS7C
oCBTbyAqVEhBVCogbWF5IA0Kbm90IGJlIGltYWdlcyBhdCBhbGwuDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
