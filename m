Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4264B454D37
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 19:30:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 64E2F38405F
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 13:30:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mJpsv182";
	dkim-atps=neutral
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id A5ACC383D6C
	for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 13:29:29 -0500 (EST)
Received: by mail-qv1-f43.google.com with SMTP id a24so2687478qvb.5
        for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 10:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=fAblKqAYYxaJMQ13yUwb262m2jHfiFwMnIyqUiZMXGI=;
        b=mJpsv1826LDSZyxxNmbaGtHs6sdSVOJFVPfov7u1z9Rpfuv2LJ8JmDRxPNqSH0O9eB
         Mj2+Z7bkusUWRttJ500IUEHOT978h3bdahMDAhFTJuFyM9sbRON+6K/11F4fMYSPwhQz
         aEBRWdXVfHfaSsw2F/DyfzMVGx7BoWWEWuLI+jGWy2QTD+5Tsa+SaywkkbgyqNKHn6dU
         wyhagb98FFZhMe0JaPw2JzYZ72o/YKmPmU5ftNzcqBGRKpUTbIqrfyMML26G7zrdw5Dv
         oEzpOC1enT2exMpwiQi45hbNTieYF/Z0Bc4GmKhJwZo8GZyR6Q36KK+zqmWbiLf1xluO
         YV3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=fAblKqAYYxaJMQ13yUwb262m2jHfiFwMnIyqUiZMXGI=;
        b=Pyr210kj15LrGgZrGcD2nqCr2AiSXl8xEK9QHUrPatrlkbUcLowUH1aKjhXlMquB8H
         FwdkhwgrANUlXAEEKBwYfEqMUIs3CdCl2crhcIpRsj8ZVRk4QHF7niORW5G4N2FfXEf8
         pbB94C0131T8H3TRn//8eEcdfqzCdZKZh5bKl0ETtysSWBKGlXzdY1ZnmQniRNbq73rj
         qHRJtCauWoXOGhpSuIh6YYFNNfYTrPY3+O528TTkBr7/mpuRQLF5GWeYLLSp1Oev0OO9
         4tRoGldjVhjTgXTJGzxhDfzzBDB0QOC81cVg6nLZD/VOoIFtVYYwHSe7426/ptT5AWtn
         IrjQ==
X-Gm-Message-State: AOAM533fJOpnC4soog6/BnslZoi8kfmw168cm2bc7PtWASqpDLBYM5GD
	ibAfj8P1PtXhbE15HjNpU8d/NwtEHELrEw==
X-Google-Smtp-Source: ABdhPJxOjxSXsKJnK4aUBEwpXjLS3NHVz3fPFw9vJPwtzZbKevQ9dEePAu7We0rKQdOXJ4321GBKGA==
X-Received: by 2002:a05:6214:f2d:: with SMTP id iw13mr58202099qvb.13.1637173768928;
        Wed, 17 Nov 2021 10:29:28 -0800 (PST)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id 15sm324364qtp.55.2021.11.17.10.29.28
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Nov 2021 10:29:28 -0800 (PST)
Message-ID: <1fa43c5a-a073-4778-eb8c-9fb04dd78044@gmail.com>
Date: Wed, 17 Nov 2021 13:29:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <e19102d3-9da5-bdcc-2f97-671ad786f166@muc.ccc.de>
 <17bb316f-06e4-3e2f-1dff-056bb542b8a4@gmail.com>
 <9cbb6aad-79fc-bf62-5700-3a5fb01c0939@muc.ccc.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <9cbb6aad-79fc-bf62-5700-3a5fb01c0939@muc.ccc.de>
Message-ID-Hash: G57MQ5X5RZSEHQDSMDQWCXTSYYKN2ASN
X-Message-ID-Hash: G57MQ5X5RZSEHQDSMDQWCXTSYYKN2ASN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: gps_locked sensor indicating internal GPSDO lock too early
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G57MQ5X5RZSEHQDSMDQWCXTSYYKN2ASN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMS0xNyAxMzoyMCwgc2NobmVpZGVyIHdyb3RlOg0KPiBPbiAxNy4xMS4yMSAwNDow
OSwgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPg0KPj4gSW50ZXJlc3RpbmcsIGJlY2F1c2UgdGhl
IExDX1hPIG1vZHVsZSBBTFNPIGhhcyBhICJsb2NrX29rIiBwaW4sIHdoaWNoIGlzDQo+PiB3aGF0
IEkgKnRob3VnaHQqIHRoZSBkcml2ZXJzIHdlcmUgbG9va2luZyBhdC4NCj4gU2VlDQo+IGh0dHBz
Oi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9ibG9iL21hc3Rlci9ob3N0L2xpYi91c3Jw
L2dwc19jdHJsLmNwcCNMMzgyDQo+DQo+PiBJdCBjb3VsZCBiZSB0aGUgY2FzZSB0aGF0IHBhcnRp
Y3VsYXIgcGluIGlzIEFMU08gbm90IGEgcmVsaWFibGUNCj4+IGluZGljYXRpb24gb2YgVElNRSBs
b2NrLCBhbmQgdGhleSBtb3ZlZCB0byB1c2luZyBHUEdHQSBpbnN0ZWFkLg0KPiBNYXliZS4uLg0K
Pg0KPiBBcHBhcmVudGx5IHRoZSBKYWNrc29uIExhYnMgR1BTRE8gYWxzbyBvZmZlcnMgYW4gb3B0
aW9uIHRvIG1vZGlmeSB0aGUNCj4gbWVhbmluZyBvZiB0aGF0IGZpZWxkIGluIHRoZSBHUEdHQSBz
ZW50ZW5jZSwgbWFraW5nIGl0IHRoZSBzYW1lIGFzIHRoZQ0KPiBmaWVsZCBpbiB0aGUgU0VSVk8g
c2VudGVuY2UuIEJ1dCBldmVuIGlmIHRoYXQgd2VyZSB0aGUgY2FzZSwgdGhlIGNvZGUNCj4gc3Rp
bGwgb25seSBsb29rcyBmb3IgYW4gIT0gIjAiIHJlc3VsdCB3aGljaCBpcyBub3QgYWNjdXJhdGUg
ZW5vdWdoLg0KPg0KPiBCZXN0DQo+IHNjaG5laWRlcg0KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPg0KSSBkbyBrbm93IHRoYXQgb24gYXQgbGVhc3Qg
U09NRSBvZiB0aGUgR1BTRE9zIHVzZWQgYnkgdmFyaW91cyBFdHR1cy9OSSANCmRldmljZXMsIHRo
ZSBHUFNETw0KIMKgIHJ1bnMgY3VzdG9tIGZpcm13YXJlLCBmb3IgZXhhbXBsZSB0byBhbGxvdyB0
aGUgb24tYm9hcmQgMTBNSHogb3V0cHV0IA0KdG8gYmUgb3V0cHV0IGJlZm9yZQ0KIMKgIHRoZSBk
ZXZpY2UgaGFzIGxvY2suwqAgVGhlIGRlZmF1bHQgb24gbWFueSBvZiB0aGVtIGlzIHRoYXQgaXQg
Z2F0ZXMgDQpQUFMgYW5kIDEwTUh6IG91dHB1dHMNCiDCoCBjb25kaXRpb25hbCBvbiBsb2NrLsKg
IEkgd29uZGVyIGlmIHRoZSBHUEdHQSBmaWVsZCBpcyBhbHNvICJjdXN0b20iPw0KDQpBcmUgeW91
IHVzaW5nIHRoZSBFdHR1cy1zdXBwbGllZCBHUFNETywgb3IgZGlyZWN0IGZyb20gSmFja3NvbiBM
YWJzPw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tCg==
