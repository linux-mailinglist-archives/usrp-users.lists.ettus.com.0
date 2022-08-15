Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7945930EB
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 16:43:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0BA44381272
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 10:43:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660574598; bh=qtHC8O2QgVlVoiuJ+R1xCbl17i+uwiccdH19XfFUfoU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=khbrzdXTvUr/T5wcHBn0RKZxdu0Vna8dmjGfXZ2TKTQdCkqZqDCGUSVmnzCBr7g6U
	 4ii37deX3BQqq0sUKN9N8N716dWA9ZME2Hc6co102IWXDnQ6aVMrblirAbxZ84lkmk
	 8c0ADeqPThfgD7Vk8wDiWGykNoiSIDBKU4OE9NdNaRcwrpQKFrcgqmBYaiwZbKVNni
	 8Vq/pVMuepEPOFFrVAzNXQneZzd18VjNmLTPDgXVX0d1GJe4041MrGqPtpvibxfl6a
	 Jv/7IUyhaMRtV54+DQnUpdR7Py0FIrA02vLCMocEpcYwW5Hx02L1dyZJ/qaOIWA6UC
	 0jTC0Fr6Mb1kg==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 23033380C6F
	for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 10:41:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mXx7Y4kH";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id h8so5468242qvs.6
        for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 07:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=/tyABePg2WRqxTG+Q62yVF22oI5JbxYC8jQFVqzRqPQ=;
        b=mXx7Y4kHeitLZpf7STuer7/GvSl/0i/HpkWJJE+rPZ5HzTbb+t5t/xW4kDgG/Dt1jA
         WLSbR1dWG5BIYjGhNHtv2+yKuq2bFTN/ISNfczUikx1aCgrQdaM3eNoO+PMsIJsS/rgC
         tjzU2Jr/xtt3igCBK+Y9wxo3Y1K1AvMe+YAPbVm9DWjESB5qmWU9hjjbkItpsnj8q4X7
         qVUkR2uJMKTOS/jLfoITtpGZy95tZU6U9pUseeQA4BODiVt7ccOgJmcrBYfKB2CCjDZ3
         dJF4WZwYmOy4GMMJ+zjfohxec/vTXTvYwEGEQuSFJt+Ar9Va1P8ZGb3LvCeBevB4x2T3
         Wy1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=/tyABePg2WRqxTG+Q62yVF22oI5JbxYC8jQFVqzRqPQ=;
        b=1gQ1B6bXmqyPdKGd2lr02wRSQp2h3pmy3OzRfhZvPCx3s98uTlU3LC5a7qUvDLRp/N
         8mb1M5AXqFNG7ccVg40rdLqpaRvPhwXOhbiKzATB0rAO72mIj8dLMtpt2TMNEw9yjF6F
         cpYoxKHJqhuJRuTHso450eyYGgLA/A0rFOhQIhrcSVtdWNRFO1i605Aaaw0VaE+B84jS
         fFDpjYpPnedESPrskkodp4Bx8xOQlirwG2BHdDs7sv+SyDSxkqWnqXXLYiU+XYHJZRFX
         EGENG3H0CU6kBZc+cBJNMMzr5/ichvGkCoT0oChYwhC9HhxIKKgZ+o0i7TlPkUGSzoXg
         3C2w==
X-Gm-Message-State: ACgBeo38LXdloJtDP8jyd4xiwqro26okNTguR3yYToNdkEgM+BuklclU
	qYgTbQaDnTa/8ue4x/viA1vAKFb2bAc=
X-Google-Smtp-Source: AA6agR67JHwMWGwKtD2iZLKE2u3TpkyZkxI5opt9bky+b4mik0XSuIexHLMAreg4Y6+hEJ/B2vRSPg==
X-Received: by 2002:ad4:5b8d:0:b0:47b:2c2c:96f with SMTP id 13-20020ad45b8d000000b0047b2c2c096fmr14103957qvp.80.1660574480184;
        Mon, 15 Aug 2022 07:41:20 -0700 (PDT)
Received: from [192.168.2.163] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id r17-20020ae9d611000000b006bb2f555ba4sm2956079qkk.41.2022.08.15.07.41.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 07:41:19 -0700 (PDT)
Message-ID: <484f31e0-c18b-17a4-fab3-eb86a450ed65@gmail.com>
Date: Mon, 15 Aug 2022 10:41:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAK6GVuO8pZJf2QG6JajE4y30-dhMQC7RTsAG1CVi7Dx8CcnZ4A@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAK6GVuO8pZJf2QG6JajE4y30-dhMQC7RTsAG1CVi7Dx8CcnZ4A@mail.gmail.com>
Message-ID-Hash: 2UDPCYSZF6MIDY2FC3F6TKX5TR436W6I
X-Message-ID-Hash: 2UDPCYSZF6MIDY2FC3F6TKX5TR436W6I
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 won't boot without reflash
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2UDPCYSZF6MIDY2FC3F6TKX5TR436W6I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOC0xNSAxMDozNCwgRGF2ZSBOb3RUZWxsaW5nIHdyb3RlOg0KPiBBcG9sb2dpZXMg
aWYgdGhpcyBpcyBhIHJlcG9zdC7CoCBJIGRvbid0IHRoaW5rIG15IG9yaWdpbmFsIG1lc3NhZ2Ug
bWFkZSANCj4gaXQgdG8gdGhlIGxpc3QgZm9yIHNvbWUgcmVhc29uLg0KPg0KPiBJIHJlY2VudGx5
IGdvdCBteSBoYW5kcyBvbiBhIHVzZWQgeDMxMC7CoCBJdCBzZWVtcyB0byB3b3JrIHdlbGwsIGJ1
dCANCj4gZm9yIHNvbWUgcmVhc29uIHdpbGwgbm90IGJvb3Qgb24gaXRzIG93bi7CoCBWaXZhZG8g
aGFyZHdhcmUgbWFuYWdlciANCj4gc2hvd3MgdGhlIGRldmljZSBhcyBub3QgYmVpbmcgcHJvZ3Jh
bW1lZCwgYW5kIHRoZSBuZXR3b3JrIGludGVyZmFjZXMgDQo+IGRvbid0IGNvbWUgdXAgKG5vIGxp
Z2h0cyBvbiB0aGUgU0ZQcykuIElmIEkgcmVmbGFzaCB0aGUgZGV2aWNlIHdpdGggDQo+IFZpdmFk
byBpdCB3aWxsIGNvbWUgdXAgYW5kIHdvcmsgYXMgZXhwZWN0ZWQuwqAgSXMgdGhlcmUgYSB3YXkg
dG8gdGVzdCANCj4gdGhlIGZsYXNoIGNoaXAgdG8gc2VlIGlmIGl0J3MgYWxpdmU/wqAgUnVubmlu
ZyB1aGRfaW1hZ2VfbG9hZGVyIHNlZW1zIA0KPiB0byB3b3JrIGZpbmUsIGJ1dCB0aGUgZGV2aWNl
IHN0aWxsIHdpbGwgbm90IGNvbWUgdXAgYXV0b21hdGljYWxseS4NCj4NCj4gVGhhbmtzIQ0KPg0K
PiAtRGF2ZQ0KPg0KPg0KVGhpcyBkb2VzIHNvdW5kIGxpa2UgYSBGTEFTSCBpc3N1ZS7CoCBJIGhv
cGUgeW91IGRpZG4ndCBwYXkgdGhhdCBtdWNoIGZvciANCml0Li4uDQoNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
