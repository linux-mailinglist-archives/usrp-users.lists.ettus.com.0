Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E78A6742BC2
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 20:12:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3EA77384339
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 14:12:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688062327; bh=6vWsOQIBNyHUwsCeE08MDbrpXnY6P00MY4CcbMN4Ssw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GnRL0ALgRO8HLASMVPwV2qYrIyy1LmMSZk1cOq0eM3IbGt1E5FYSaoDt0kOEoBwOm
	 1l2uvDiRUazx0vh0egx9FUUCE1sAApLKt83Cv3jHyW08vqhR3sifEL7H/e6TOyDl20
	 l1vUgIfMv1JjW7tL4MOJ1OUMeKIkbS73SJ5puPLeknUHB1UyaBXWaQIeF9EVRV/b/D
	 cWKS5wOC0kwa6t6DVzvvLFkH4kUVnaL9pXcz4fYrgz9YbX1xgu77t33wGoFQ8/FQn/
	 mBUrQy3/x43F+QIElmL/53h8wz+Ym9vlLwtRSF02z5UMV0wtIH27+U+gU0egb1F7Tt
	 KMaKwzAFmFECQ==
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	by mm2.emwd.com (Postfix) with ESMTPS id E65D2383EB1
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 14:11:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bB/qXC9T";
	dkim-atps=neutral
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-39ed35dfa91so655281b6e.3
        for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 11:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688062302; x=1690654302;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UydocAQX7EOwl2NoLjepJ/GOhSJ408JZ6r7B+Yd3p2I=;
        b=bB/qXC9TugGzpmVjrME/uSgYNPHxH0powQrq+cvp47P8udi6LwCyhFoZDqBmcAGPD7
         GsZc5ZkqkZfxoSmUqBRxLQgFnNMcDOn8DBbUBBhdFfCQJTXDNVzwFrvDXKRqYXFqNKpB
         d4A2kK+zYG8+hZVg9BIrizA6XuJSq4dXTY8iTbhZb4NuPmfWa7hnpIz/3/RgaIbdK7fe
         ETgu/KAbhDXxdgk86hpbfhrfTOf2Li2QQk8/VDhFLPK/QFSD8An+bYirJXsg6HQ4STcT
         48bfzMwxiNyrmnOjxCrkyCFKMh8/vl7LrauobUWFyBmejamrrJ/WkvoYTeYzrNWQ0Suu
         pMbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688062302; x=1690654302;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UydocAQX7EOwl2NoLjepJ/GOhSJ408JZ6r7B+Yd3p2I=;
        b=kNzFnEfbK3vYyvdyRsAbKfxTsmGc8LhZ4usQ4I7ay5jeelbNHPGwl25HhPX+NdLVz/
         5pZ71Fa6aDglGGPhSqy/wYhNJAf+x6ttcIJ+FCZsj77gxzDOQRuPh7Nxg2pp9xvP3mRP
         +9u0NaWSv56BqGQ52x2En6SQ/ywNVCSiwx9mWRSdnsS5vT8cSnxvz+jWzDxZhV5UHIzB
         Ta0SsUqfdSVe1C9wdYVTGazLira4ZXYYRi5QwujQCEQSqIgzfbXBwgxlgpqEsJkXCnpm
         QiAimApqnD+LEBBzN2Qg/QK28MRYZRIeknRmEynGy3oQ1SvDMJW6YryAptfIBFk4dvup
         IMrQ==
X-Gm-Message-State: AC+VfDzmWbP0x5lh1w5dcLL3ic2MJWHIUN+G7Ks6A08ap3ICeXf3OlCJ
	6rHx40xt8TDNeiPLavaKlZTc2C66r5I=
X-Google-Smtp-Source: ACHHUZ65L8abG/Zphxofw1L5230JUXz6KrKiNv+SB92w1OvLm8FYr4A0t1XD1YBnHgL1w8eU/rpG6Q==
X-Received: by 2002:a05:6808:1443:b0:396:169f:3660 with SMTP id x3-20020a056808144300b00396169f3660mr129099oiv.58.1688062301735;
        Thu, 29 Jun 2023 11:11:41 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id pm24-20020ad446d8000000b00628563d4441sm7150886qvb.66.2023.06.29.11.11.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jun 2023 11:11:41 -0700 (PDT)
Message-ID: <a5a4c837-7f8e-4700-a5a0-3a28fc034f8b@gmail.com>
Date: Thu, 29 Jun 2023 14:11:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MWMYMIHsubG1tz16iIq49ZgTWRZjz8gjfntbaFqIM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MWMYMIHsubG1tz16iIq49ZgTWRZjz8gjfntbaFqIM@lists.ettus.com>
Message-ID-Hash: TEFSTNVRT425JRHRA52LGMZ3XMBWYSYB
X-Message-ID-Hash: TEFSTNVRT425JRHRA52LGMZ3XMBWYSYB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Host hardware specification for USRP X410/X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TEFSTNVRT425JRHRA52LGMZ3XMBWYSYB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjkvMDYvMjAyMyAxMzo1NywgaDU3amFmYXJpQGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gSGks
DQo+DQo+IENhbiBhbnlvbmUgcmVjb21tZW5kIHNwZWNpZmljYXRpb24gb2YgaG9zdC9QQyBtb2Rl
bCBpbmNsdWRlIA0KPiBtb3RoZXJib2FyZC9DUFUvUkFNL2hhcmQgZHJpdmUv4oCmICwgaWYgeW91
IGNvdWxkIHVzZSBpdCB3aXRoIFVTUlAgDQo+IFg0MTAvWDMxMCB0byBiZSBhYmxlIHNlbmQgYW5k
IHJlY2VpdmUgd2l0aCBtb3JlIHRoYW4gMTAwTVNwcyANCj4gc3VjY2Vzc2Z1bGx5IHdpdGhvdXQg
dW5kZXJydW4vb3ZlcmZsb3cgdGhyb3VnaCAxMEdiRS8xMDBHYkUgbGluay4gDQo+IFRoYW5rIHlv
dS4NCj4NCj4NCiBGcm9tIGEgY29sbGVhZ3VlIHdobyBydW5zIGFuIFg0MTA6DQoNCiJNeSBDUFUg
aXMgYW4gQU1EIFRocmVhZFJpcHBlciAzOTYwIDI0LWNvcmUgQCAzLjggR0h6IDsgNjQgR0IgRFJB
TSA7IFVIRCANCjQuNC4wLjAgcmVsZWFzZSBvbiBib3RoIGhvc3QgJiBVU1JQIg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
