Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9E0590700
	for <lists+usrp-users@lfdr.de>; Thu, 11 Aug 2022 21:35:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CC782383D74
	for <lists+usrp-users@lfdr.de>; Thu, 11 Aug 2022 15:35:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660246548; bh=XHhqtFJDxlAEn+MTK2V9nnNS9/e7WgrzLvhcjKpG17o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=T7DYQnrDtFsFYVIkOi8nAYIhhFNmD9swPTjQQJk/UQVUZrgRccwZqSFQKGdyq1YKi
	 TmGgyFrFoIOSILw8F3nLoExZARbUDnJuUlmoKimBUiwehZfRJJ2nd5UJydi+M0qUqG
	 MYhJwEyFjnbJIUT5ugohaEmz62dUmecNy0OJEuLBnlsI0qj3C0WTdWfTbhojTZbuJn
	 SppDvXEY6lRBH2g9BzTVoP3CYqteXHxYXOTWkgV1iIM2XVP232+vER+AqetEHHHqZZ
	 phmmNicIvAdWtIjI47shqyQYbkUUr3J8pRxqFJkSpKXROTxQ79Ayy17cLnbI0AjQH+
	 PCe4CR07dnitA==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id BDC51383C92
	for <usrp-users@lists.ettus.com>; Thu, 11 Aug 2022 15:33:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mfoPFQxj";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id v14so8696492qkf.4
        for <usrp-users@lists.ettus.com>; Thu, 11 Aug 2022 12:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=M5trdAFCPTZ352aMgfMAm+9hhZk89Mwz6wwhlHg3zL4=;
        b=mfoPFQxjyVEsjARn6acuF43Ks9Hkwp9awgm+35z/q2IRaVXcJXoVzTEOFRTzWGrD/C
         uj+dCaT1SHOIcp5w2hqHHS2pgqXaRXfQgi/eqvFHlLcaFf5SQBIxsUYu9+RFUa9bBiLo
         UJ4CxCXp9+E574tGrMxZ5hrSLPpHMcx5R5jRLJC42ZIB/iYhr2PsZCb6UWd5xwHlkV/a
         fr7c+x70Ozer57xQzsFnPqroPUyQy5nU1nT5Yt+7t6WXw9vp/RSEoi0NlXQ+B9XZrcNU
         ygxyJ23ojQv/GUPZv5tVsggjloXFywLnlAgVqaRNGrYIZK2KZdoY3b6Q+MLiigkOYAOt
         /xWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=M5trdAFCPTZ352aMgfMAm+9hhZk89Mwz6wwhlHg3zL4=;
        b=Su1OiYJmt8NKoXRlxhChfaH+h9R26LlVAUTpyhqhFSQkLWz++hkHKIv2pEEK85v0cI
         FVhMC4c6jUPUx+W3+F/J0eGvkaX27ZTvvEhl/mlI6B5XT8zfUXu05/wHV0xVoTefOK3G
         tdChRTxcdYILjcBm52m3SSR1ohFfhP4WSXqDb9qJvfD8tbcrjM70UvWBnktXzVSy/Woa
         XwA0Wy68u1C9GFekX95MlJ7CkMsQkGoWkK51ujn8UUP/Q8GekIWONtjAGMfDxzYAQMDS
         PoZF46vybXAdrc/dHrdTMxI7Aj/Xb+4aNO74ZyRtzbNkudxE5kEJaxbbxyE0WCUbw0hr
         rX9Q==
X-Gm-Message-State: ACgBeo2ka/DV16aD0Kk7a+RE8dTscAZZkIy8VZ6/RwVqPjN0RLPIRqyR
	LJGk8u2O+F5pIwu7NUNDxxYBofyATJ0=
X-Google-Smtp-Source: AA6agR5tYBy/vI+B0aFsLjgFvMf36EjeT7ukKQVHlCb6sI+qhQRKOYVEgZZEzUI7FJUQ1TteDTj/2A==
X-Received: by 2002:ae9:ddc5:0:b0:6ba:c29b:c499 with SMTP id r188-20020ae9ddc5000000b006bac29bc499mr398899qkf.401.1660246436651;
        Thu, 11 Aug 2022 12:33:56 -0700 (PDT)
Received: from [192.168.2.188] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id r5-20020ac85e85000000b0031eb393aa45sm197834qtx.40.2022.08.11.12.33.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Aug 2022 12:33:56 -0700 (PDT)
Message-ID: <ba9cb040-2e70-3a7c-621c-3edf37e8a728@gmail.com>
Date: Thu, 11 Aug 2022 15:33:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <mtr81IbAxeWOaSum8S1wMmtW4TQZJ0Wju7QPxw2RQ@lists.ettus.com>
 <CAOcXSJw18ykwzXXEBGVA=GSz037=mij1t+VF0M9wPDjZXMr7oA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOcXSJw18ykwzXXEBGVA=GSz037=mij1t+VF0M9wPDjZXMr7oA@mail.gmail.com>
Message-ID-Hash: JRSRBSKYT7SBC2DAKJOZQWU52D52MDTD
X-Message-ID-Hash: JRSRBSKYT7SBC2DAKJOZQWU52D52MDTD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TDD with N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JRSRBSKYT7SBC2DAKJOZQWU52D52MDTD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOC0xMSAxNToyNywgV2FuIExpdSB3cm90ZToNCj4gSGVsbG8gU2t5dW5nLA0KPg0K
PiBDYW4geW91IHBsZWFzZSBleHBsYWluIHdoYXQgZWFjaCBOMzEwIGlzIGRvaW5nIGluIHRoaXMg
c2V0IHVwPw0KPg0KPiBUaGUgcmVhc29uIHlvdSB3b3VsZCBzeW5jIHR3byBOMzEwcyB1c2luZyBl
eHRlcm5hbCBzb3VyY2VzIGxpa2UgMTAgTUh6IA0KPiBjbG9jayByZWYsIFBQUywgb3IgR1BTRE8g
aXMgdG8gZW5zdXJlIHRoYXQgYmFzZWJhbmQgc2FtcGxlcyBhcmUgDQo+IGFsaWduZWQsIG9yIHVz
ZSBjYXNlcyBsaWtlIE1JTU8gb3IgVERPQS4gSSBhbSBub3Qgc3VyZSBhYm91dCB0aW1lIA0KPiBz
b3VyY2Ugc3luYyB1c2luZyBOVFAuLi4NCj4gTjMxMCBhbHNvIGhhcyBldGhlcm5ldC1iYXNlZCBz
eW5jIHVzaW5nIHRoZSBXaGl0ZSBSYWJiaXQgcHJvdG9jb2wgb3ZlciANCj4gb3B0aWNhbCBjYWJs
ZXMsIHNlZSB0aGlzIGFwcCBub3RlIA0KPiBodHRwczovL2tiLmV0dHVzLmNvbS9Vc2luZ19FdGhl
cm5ldC1CYXNlZF9TeW5jaHJvbml6YXRpb25fb25fdGhlX1VTUlAlRTIlODQlQTJfTjN4eF9EZXZp
Y2VzLiANCj4gSG93ZXZlciwgSSdtIG5vdCBhd2FyZSB0aGF0IHN5bmMgb3ZlciBOVFAgaXMgYSBm
ZWF0dXJlLg0KPg0KPiBJbnRlcm5hbGx5LCB0aGVyZSBhcmUgdHdvIEFEOTM3MSB0cmFuc2NlaXZl
cnMsIHdoaWNoIGNhbiBiZSANCj4gc3luY2hyb25pemVkIHVzaW5nIHRoZSBidWlsdC1pbiBjbG9j
ayBzeXN0ZW0gZm9yIE1JTU8gb3BlcmF0aW9uLg0KPg0KPiBSZWdhcmRzLA0KPg0KPiBXYW4NCj4N
ClRoZSBMaW51eCBDUFUgcG9ydGlvbiBjb3VsZCBiZW5lZml0IGZyb20gTlRQIG92ZXIgdGhlIG1h
bmFnZW1lbnQgDQppbnRlcmZhY2UsIGJ1dCBjb21wYXJlZCB0byB0aGUgR1BTRE8gdGhhdCdzIGJ1
aWx0LWluLA0KIMKgIGl0J3MgYSBwb29yIHN1YnN0aXR1dGUuLi4uDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
