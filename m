Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B33B74F338
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jul 2023 17:20:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0E886383C3F
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jul 2023 11:20:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689088856; bh=qBzfx4JCcif6/0e1JveHgBDjHiz2ognQvibKrHTlTGc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=i8Zw2j+poLxhR/yo2ZUiWkFVhJcVjC1Tg597OoRp0wsH1pOL+8nQ2NGElbNLn42jG
	 bzhHkSUpHKn9OYql9w3FxKjTZNhdWdp3IDmXdGVqIsZhuommshbm2SjE123T54ma13
	 KVqm2GVrn5S/T4tJuNyKGIv2d/QmEXGuTethea04j6hkcp71A+rIId5VRF8bY/XY95
	 ES/tDXIPrltZqPMSsur9yzgpjxsKxvhHID7zqatOhaG7IvavXAPa0bUf2x8d7+a1mP
	 w9xdA+7eypw8f/vPui87cDuyfPsTs8cYFOXHknegFyeWrMUAeCzNEj8C5WaG0Q+hlD
	 lKSO9ZBOMi8qA==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id EDD50383B6F
	for <usrp-users@lists.ettus.com>; Tue, 11 Jul 2023 11:20:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gz50pwCv";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-76731802203so533902385a.3
        for <usrp-users@lists.ettus.com>; Tue, 11 Jul 2023 08:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689088819; x=1691680819;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SoOotrp5WLBLfyDtKo+IlVT+twjXy90jDs16SgaMqtc=;
        b=gz50pwCvrsfi2nnPNuETg7chnr3c/jrZTQ28iexQm5JXFTfSzbJ9mXGxedjj0VDAkq
         CchZGSzVoRpaCPx3+xTaXTMROr/LrpSzRffv4qIhAfiJ07LWyjnuC+QK56hd/dJ+hn6A
         jqIa1qkxOiDO/YwWsxfLA7Y/LP7etVMoqiFPWTu5+iR8c3F7AB4hbILKOxhy4sQHE6Fw
         4xb3ykbVV6PQc0LTOtAAwvNdyW4Ay475hhueMi4i5BgmsCNMctI1qgEXOX+Nm5jDXMt+
         EBPADdVow6r5Gc1qLAKKB93m3Dh9MLcy2kw5NZHNnhaj3WrIF1AgKhWmJB9RBewrSVVn
         YwAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689088819; x=1691680819;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SoOotrp5WLBLfyDtKo+IlVT+twjXy90jDs16SgaMqtc=;
        b=hHwdKNhXkmiMjrO4/NbKqXZgTDhYfSQd+T3vahdjaWbLajkQBUQwjciY7UV8n2k7M9
         FHxgOMFQ/mOYsL3Q9hKHkFQPC8pQB9XA5Pev8P5iHGGQEo9+++AL5j9RYE2O639Mn8dx
         sQNPWF9HYPOPsATZlBZL5PmFFV3yTGHzTT7jdIQLvKrRGuo2JMGFRFZ4dSxEMr4M3xFF
         ngqwQKovB147AL6b4M8mKCiwZHAwvse4r7htBlQpk3Rfa3DCgjAH7RxWnzUMMklXc51p
         1YLtCfd1YzvfCAVUDcD+A5DqLp9XET4XDFroqT4CivRodoGbZISWR3Iinjj7wvGlgQl6
         pwwg==
X-Gm-Message-State: ABy/qLZMFGil1hsUm1vm2EcCmRA4BIaKMQv11/iGBNJRdTfVPHUyhGLL
	ljEm23IESvYvC1p0xfCrDqDvPBaXJtA=
X-Google-Smtp-Source: APBJJlHFQWIpJgxiDlsoaRk6/UWwy2tafj8Sp8+YqQPuxM93HdtI7q6mkf5z1GFTJMKHnm1DpOLAxQ==
X-Received: by 2002:a05:620a:4444:b0:765:ad28:2c6f with SMTP id w4-20020a05620a444400b00765ad282c6fmr20260919qkp.20.1689088819149;
        Tue, 11 Jul 2023 08:20:19 -0700 (PDT)
Received: from [192.168.2.196] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id p13-20020ae9f30d000000b007672e3348edsm1080521qkg.108.2023.07.11.08.20.18
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jul 2023 08:20:18 -0700 (PDT)
Message-ID: <97a6a660-e9be-a9b9-1bb9-c613386d8729@gmail.com>
Date: Tue, 11 Jul 2023 11:20:10 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <vvx3jCG4mwwDEiHpuVEGcbQT0vuNDNxo3uz1MIAbeg@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <vvx3jCG4mwwDEiHpuVEGcbQT0vuNDNxo3uz1MIAbeg@lists.ettus.com>
Message-ID-Hash: K5IJAXGPERZ5XOB3U4KJ5HEBTFE3ZL2S
X-Message-ID-Hash: K5IJAXGPERZ5XOB3U4KJ5HEBTFE3ZL2S
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Voltage Specification of x4xx
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K5IJAXGPERZ5XOB3U4KJ5HEBTFE3ZL2S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTEvMDcvMjAyMyAxMToxNCwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBIZWxs
bywNCj4NCj4NCj4gSSBhbSBjdXJpb3VzIGFib3V0IHRoZSBtYXhpbXVtIHZvbHRhZ2UgdGhhdCBj
YW4gYmUgYXBwbGllZCB0byB0aGUgeDR4eCANCj4gQW50ZW5uYSByZWNlaXZlIHBvcnQuIE9uIHRo
ZSBYNDEwIEdldHRpbmcgU3RhcnRlZCBndWlkZSwgaXQgc2F5cw0KPg0KPiDigJxOZXZlciBhcHBs
eSBtb3JlIHRoYW4gKzE0IGRCbSBjb250aW51b3VzIDw9M0dIeiwgKzE3IGRCbSBjb250aW51b3Vz
IA0KPiA+M0dIeiwgb3IgKzIwZEJtIG1vcmUgdGhhbiA1IG1pbnV0ZXMgPjNHSHogb2YgcG93ZXIg
aW50byBhbnkgUkYgaW5wdXQu4oCdDQo+DQo+IEFuZA0KPg0KPiDigJxBbHdheXMgdXNlIGF0IGxl
YXN0IDMwZEIgYXR0ZW51YXRpb24gaWYgb3BlcmF0aW5nIGluIGxvb3BiYWNrIA0KPiBjb25maWd1
cmF0aW9u4oCdDQo+DQo+IEhvd2V2ZXIsIHRoZSBkYXVnaHRlcmJvYXJkIHNlZW1zIHRvIHN1cHBv
cnQgYW4gYWRqdXN0YWJsZSDigJxHYWlu4oCdLg0KPg0KPiBJcyB0aGlzIG1heGltdW0gZEJtIHNw
ZWNzIGFzc3VtaW5nIGEgbWF4aW11bSBHYWluIGlzIHVzZWQ/IElzIHRoZSANCj4gbWF4aW11bSB2
b2x0YWdlIHRoYXQgY2FuIGJlIHN1cHBsaWVkIGRldGVybWluZWQgYnkgdGhlIERBQyBvbiB0aGUg
RlBHQSANCj4gb3IgYSBjb21wb25lbnQgb24gdGhlIGRhdWdodGVyYm9hcmQuDQo+DQo+IFRoYW5r
cw0KPg0KPiBKb2UNCj4NClRoZSBtYXhpbXVtIGlucHV0IHBvd2VyIHNwZWNpZmljYXRpb24gaXMg
YmFzZWQgb24gdGhlIGZpcnN0IFJGIGFtcGxpZmllciANCmluIHRoZSByZWNlaXZlIGNoYWluLCB3
aGljaCBpcyBnZW5lcmFsbHkgKklOIEZST05UKiBvZg0KIMKgIGFueSB2YXJpYWJsZSBhdHRlbnVh
dGlvbiBpbiB0aGF0IHNhbWUgY2hhaW4gKHdoaWNoIGlzIGhvdyB2YXJpYWJsZSANCmdhaW4gd29y
a3MpLsKgIFRoZSBzcGVjcyBhcmUgZGVzaWduZWQgdG8gcHJvdGVjdCB0aGF0DQogwqAgZmlyc3Qg
YW1wbGlmaWVyIGZyb20gZXhjZWVkaW5nIGl0cyBkZXNpZ24gcGFyYW1ldGVycyBhbmQgYmVpbmcg
ZGFtYWdlZC4NCg0KV2hlbiBvcGVyYXRpbmcgaW4gbG9vcGJhY2sgbW9kZSwgeWVzLCB0aGUgUkYg
R2FpbiBwYXJhbWV0ZXIgb24gdHJhbnNtaXQgDQp2YXJpZXMgdGhlIG91dHB1dCBwb3dlci7CoCBC
dXQgZXZlbiBhdCB0aGUgbG93ZXN0DQogwqAgb3V0cHV0IHNldHRpbmcsIHRoZSByZXN1bHRpbmcg
c2lnbmFsLCB3aGVuIGxvb3BlZC1iYWNrLCBpcyBtb3JlIHRoYW4gDQplbm91Z2ggdG8gZHJpdmUg
dGhlIGZpcnN0IHJlY2VpdmUgZ2FpbiBzdGFnZSBpbnRvDQogwqAgbm9uLWxpbmVhciBvcGVyYXRp
bmcgdGVycml0b3J5LCBoZW5jZSB0aGUgc3VnZ2VzdGlvbiBmb3IgYSAzMGRCIA0KYXR0ZW51YXRv
ci4NCg0KVGhlIHJlY2VpdmUgY2hhaW5zIG9uIG1vc3QgU0RScyBhcmUgZGVzaWduZWQgZm9yIGNv
bm5lY3Rpb24gdG8gYW4gDQpvdmVyLXRoZS1haXIgYW50ZW5uYSwgd2hlcmUgKGluIGxpZXUgb2Yg
dW51c3VhbCBzaXR1YXRpb25zKSwNCiDCoCB0aGUgZXhwZWN0ZWQgaW5wdXQgcG93ZXIgaXMgdXN1
YWxseSB3ZWxsIGJlbG93IC0yMGRCbS7CoCBUaGUgZ2FpbiANCmxheW91dCBpcyBkZXNpZ25lZCB0
byB0cnkgdG8gb3B0aW1pemUgYm90aCBub2lzZSBmaWd1cmUNCiDCoCBhbmQgbGluZWFyaXR5IChv
ciBhdCBsZWFzdCBtZWV0IGluIHRoZSBtaWRkbGUgc29tZXdoZXJlKSwgc28gdGhlIA0KZmlyc3Qg
cmVjZWl2ZSBnYWluIHN0YWdlIGlzIG5lYXJseSBhbHdheXMgIm5ha2VkIiwgd2l0aA0KIMKgIGFs
bCB0aGUgZ2FpbiBjb250cm9sIG9jY3VycmluZyBhZnRlciB0aGF0IHN0YWdlLg0KDQoNCj4NCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
