Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B17BD70C4BC
	for <lists+usrp-users@lfdr.de>; Mon, 22 May 2023 19:58:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5DC953814FA
	for <lists+usrp-users@lfdr.de>; Mon, 22 May 2023 13:58:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684778282; bh=zSemdwhAtS/qWCWKlFAi1lcS/fva/zGlN0Uur2/05Ho=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=z11M5Dp2yOJILRahsaNuOCkl/S0ZZ15R5Kjrch3BnckiBxtpWM3XMgkRtjO/ELKIe
	 fcnQdDtxdahiEQKLvcPsZObv9xiVo8675e/WnWTur7Dl7xcn1+OxlvoJSEJ6a0sa4S
	 dncjoQ4IJZKrjmxah6KPGUag59tfQ/aOcsAUpfL1mK8EBURmBltrH+jPvybKLtJC6f
	 OgOJ4mv9Y/IjbYhjRFgXFX8PKVdAy62RnrgHtJoFntAE6xHiwyB6F4Ervp2PaHz157
	 WMwjlLV8+jRSNnmU6FqDV/cyednU5FljGdZ41CYc347iSaz3BjOyoSCJ/mf0vfVWNd
	 IFMjHSqUUfCvQ==
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id DAB91380C19
	for <usrp-users@lists.ettus.com>; Mon, 22 May 2023 13:57:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="j3Gm8MBe";
	dkim-atps=neutral
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6238386eb9cso54281026d6.1
        for <usrp-users@lists.ettus.com>; Mon, 22 May 2023 10:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684778225; x=1687370225;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=15BNgCc3smvEml7wn33O/9YkcmWcsXJvJl8VOOMrUqo=;
        b=j3Gm8MBeIZevn1ZDokkyzv9sO9e58/JkDrOTu6zljXOFd0Uk+lcxGYw78s9+6R4EiK
         NAuls8kxCl3DKcMwKuQbrFMThC248e4su9Jb2yytU1h6ftFRaLD2xdME1u4I2xIzFPtf
         9i8VS70EXaz4RnqY7hCKKYFvfFAgIutj/vrigttHjZ/z3FloFj3/+Me7g0jZGdyIlEkW
         VpBOQtn+N5JU/JV9yjBbwLIVvDRjlzLemaLR9opeHhIW5EgzOsb1wBI7edYP7O87ofy/
         EjyvXS4mkAgbNTvuETBnpZ6HLkL7KFRq3sGUiklZLwDmNxJz8RTfW5F9g3xw0PnTXRkW
         sLJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684778225; x=1687370225;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=15BNgCc3smvEml7wn33O/9YkcmWcsXJvJl8VOOMrUqo=;
        b=gbPu4z5JgMhhGl+Vv3qg+968XZxBr5vO3JoCvMQ7aN7mOKmYM7lBwa09I/CzdXMjkO
         kokwNoyPWNGeRyykyKpjZWf/KJwuUB0ZeQ0+vRat/1jesL7wTR610nRpg1UYxv6+OiQ+
         cUCMoKmOl9h0FUg2BuKFWTljdpdGhKV5QycQUMczvKeP0SeQkC23kpKqte/ARWXrN3e/
         k1vOgAnQh/4CFApwWm9ezifO1KXyxo6R11qiPGWtQuZvSb71UPJjbgC0eUNdCVzq67/d
         d6UKWyjm1Kni0nEfEnA7lB5hUcS7SEGQ9qCz/dT27TNcdjWZHXJRHZ7mAIzUMA1M+cP8
         MhVw==
X-Gm-Message-State: AC+VfDzlGmeC23Aj4uBZF731xtMGh9d7avXgD/+jEgPC+FzG7xQsXa3e
	SL/oZx+ncAzx/6UojWYl8XM5FRnS93LBwA==
X-Google-Smtp-Source: ACHHUZ4jjuENsmxVNaGl2XsIOBKNIY34cNj7C83Pnvx2DPI8g5M9tHknO7cj4L2dz2g6xdCpB3wkPA==
X-Received: by 2002:a05:6214:230c:b0:625:7fbc:d23f with SMTP id gc12-20020a056214230c00b006257fbcd23fmr8315132qvb.34.1684778224869;
        Mon, 22 May 2023 10:57:04 -0700 (PDT)
Received: from [192.168.2.151] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id v19-20020ad448d3000000b0061b698e2acesm2121467qvx.18.2023.05.22.10.57.04
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 10:57:04 -0700 (PDT)
Message-ID: <9cec3a6a-63b0-deed-9af8-0cb8016f56bb@gmail.com>
Date: Mon, 22 May 2023 13:57:04 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <5K2of8x9g55VdZVseJXyrZDEGlMGfQ7qq7ohwrGqyE@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <5K2of8x9g55VdZVseJXyrZDEGlMGfQ7qq7ohwrGqyE@lists.ettus.com>
Message-ID-Hash: MCO3GFKYWXMFEPUBUW2O3XGN3RONRF44
X-Message-ID-Hash: MCO3GFKYWXMFEPUBUW2O3XGN3RONRF44
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: gr-ettus status
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MCO3GFKYWXMFEPUBUW2O3XGN3RONRF44/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjIvMDUvMjAyMyAxMjowMCwgbG9wc29yc2VAZ21haWwuY29tIHdyb3RlOg0KPg0KPiBIZWxs
bywNCj4NCj4gSeKAmW0gd29ya2luZyB3aXRoIGdudXJhZGlvIDMuMTAuNSBhbmQgVUhEIDQuNCwg
dHJ5aW5nIHRvIGZpeCBzb21lIA0KPiBpc3N1ZXMgcmVsYXRlZCB0byB1bmRlcmZsb3dzIGluIG15
IHBhY2thZ2UuDQo+DQo+IEkgd2FudCB0byBjcmVhdGUgYW4gcmZub2MgYmxvY2sgdG8gcmVwbGF5
IHRoZSBkYXRhIGZyb20gYW5vdGhlciBjdXN0b20gDQo+IGJsb2NrIGluIHRoZSBnbnVyYWRpby1j
b21wYW5pb24sIGFuZCBJIHdhbnQgdG8gbW9kaWZ5IHRoZSBibG9jayANCj4gbWVzc2FnZXMgd2l0
aCByZXNwZWN0IHRvIHRoZSByZXBsYXkgYmxvY2sgYWxyZWFkeSBwcmVzZW50IGluIHRoZSBleGFt
cGxlcy4NCj4NCj4gSG93ZXZlciwgaXQgbG9va3MgbGlrZSB0aGUgcmZub2Ntb2R0b29sIGlzIG5v
dCBpbnN0YWxsZWQuIENhbiB5b3UgZ2l2ZSANCj4gbWUgc29tZSBhZHZpc2Ugb24gaG93IHRvIHBy
b2NlZWQ/DQo+DQo+IHRoYW5rcywNCj4NCj4gU2VyZ2kNCj4NCj4NCkkgdGhpbmsgdGhhdCBpbiBV
SEQgNC5YIHdpdGggR1IgMy4xMCwgeW91IGRvbid0IG5lZWQgZ3ItZXR0dXMuwqDCoCBNeSBHUiAN
CjMuMTAgaW5zdGFsbCBvbiBVYnVudHUgMjIuMDQgaW5jbHVkZXMgYSBmZXcgUkZOb0MNCiDCoCBi
bG9ja3MsIGJ1dCBJIGZpbmQgbm8gZXZpZGVuY2Ugb2YgdGhlIHJmbm9jbW9kdG9vbCBhbnl3aGVy
ZSBvbiBteSBzeXN0ZW0uDQoNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCg==
