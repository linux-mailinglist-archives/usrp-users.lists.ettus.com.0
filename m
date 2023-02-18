Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2189969B752
	for <lists+usrp-users@lfdr.de>; Sat, 18 Feb 2023 02:07:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 20249380953
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 20:07:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676682433; bh=SuvoSjJrlY0FHQ+kEVy+bMcXz9ntgyMPv+x2ZqmHggo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=OEALAr7J0q6WsfJBaNuCepMW64AKS1k8ZpYQvM2/J0NJKddRaLyABAqnsTYYJikPc
	 MDqFHaAD7bedDi4CNrmnMITtmyON96k7/V7Hx/ASG9aus75HEBQK/Zp22pa0wBr1FL
	 w5HMKFKMkTijP68UhVL+SL+xsrvDWTlXJrWl8cZ7HT+4ktqhxs1ML/+W73/0L/FFlE
	 CYi9pYCZqmVMAwyu+A6lxxP+BS4tkT5bW23P2xX0+ua+hXzcStlXdEuIBiqKZTPZgV
	 n8FeIDVy4DdaOpUUT1qmbTn9URx/RfnbcZqbHhjJWi+F8ZzOY5CoFP5+OjLcVvuMdn
	 uqLljh6bLf6Xg==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id D0000384200
	for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 20:06:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aSWbf9of";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id nf5so665820qvb.13
        for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 17:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=naveK91Fz3BUpKIib5sds9zVjZQZ3vN0Z3EOyjlYUkM=;
        b=aSWbf9ofFS8vT4+ScYDVEIiM97TNsUlrjWK236RupfSa1CJ06V65/0z653OuxO4Mls
         k/E8IC3z2kNlAE3H5CugHiAgc57T7PdIi2W55f/QcdQt+erFNJStzB3OcTwOljriunUx
         VSdogwfHQI8uNhGLxW0WdCtaIkFz7q9p7ekrLr9Oun1VSyGWePjzbBoFRJZxFX90bkcH
         76X/Kwh98s1TdXX244y5vpZZFMKyH4whnkYZBYhrGr7mKQban3UNYCrm0Aj+b9fALHGK
         rdzV3UVmA78fybymubTz2F+JFxy+bna7PZUwa+WxGGH4ehnEPVEjaqfomgoS2kMf+65E
         Mf+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=naveK91Fz3BUpKIib5sds9zVjZQZ3vN0Z3EOyjlYUkM=;
        b=uKU75SjY+OT/DoYHQMS55IySwUACVbfkXOXC2xtMZjpUuVT618T3Sl/D8RW9Pl0u0A
         ofdgl76I5AnDlvgKinLd4aonvsK6Qa0xRuUwlkX7BdPWaMetJGuKjcv8wkXk5tyAFkCv
         Rxem2RhfWhWFZBGkdbrK8YyCg6e3c7dMiQNSg0p4Zjpx7mPdonfiZhYvGKz1WJ/UpIDh
         QApjE+uM94CbD/8KT2VDVsJ+YX6nZY9mAEayEtHdqHNpeGFLqzuyLMxUR/fUUd6txzWJ
         N8K0ZY5cs/5vmPFd/Si4LLzjQmcl6RluAcCwoZOAg5H2ULKeZRVr1j8c1cXGAgH+dIRU
         UjaQ==
X-Gm-Message-State: AO0yUKXHos/YzsZaSOa5ieWr5GJv47UIHuU+kaW1b/DmEyJndV1IJOFC
	oXxok3SoMHuvI4jjj9HAjPi9fEUnrJ4=
X-Google-Smtp-Source: AK7set9W/1gOoWuU+zILBamqTvyA5y/Pjuo4PqLbRMyRXjjLobD5bP8QymdYcVDbY/nY/0ecBVIoRg==
X-Received: by 2002:a05:6214:1942:b0:56e:a7cc:ea82 with SMTP id q2-20020a056214194200b0056ea7ccea82mr5353069qvk.39.1676682388119;
        Fri, 17 Feb 2023 17:06:28 -0800 (PST)
Received: from [192.168.2.165] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id e4-20020a05620a014400b0073b399700adsm2723485qkn.3.2023.02.17.17.06.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Feb 2023 17:06:27 -0800 (PST)
Message-ID: <e0e15ed2-6a56-fd92-9651-5203fa67e761@gmail.com>
Date: Fri, 17 Feb 2023 20:06:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <WK4flaGYGN6Sxx4jsloZhwkFmPZMXMpyqpDhFfOwh8@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <WK4flaGYGN6Sxx4jsloZhwkFmPZMXMpyqpDhFfOwh8@lists.ettus.com>
Message-ID-Hash: 4TWC27VRLLAUL7UQZIC4GI2CD33YHHVX
X-Message-ID-Hash: 4TWC27VRLLAUL7UQZIC4GI2CD33YHHVX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Saving TimeStamps and Metadata
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4TWC27VRLLAUL7UQZIC4GI2CD33YHHVX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTcvMDIvMjAyMyAxOToxMywgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBIZWxs
bywNCj4NCj4gSSBoYXZlIGFuIGFwcGxpY2F0aW9uIHdoZXJlIEkgY29sbGVjdCBJIGJ1cnN0IG9m
IHNhbXBsZXMgZnJvbSBSeCANCj4gcG9ydHMsIGFuZCBzdHJlYW0gdGhlIHNhbXBsZXMgaW50byBt
eSBob3N0IGNvbXB1dGVyLiBJIHdvdWxkIGxpa2UgdG8gDQo+IGFsc28gc3RvcmUgdGhlIHRpbWVz
dGFtcHMgZnJvbSB0aGUgcGFja2FnZXMgb250byB0aGUgaG9zdCBjb21wdXRlciwgYXMgDQo+IHdl
bGwgYXMgc3RvcmUgZnJvbSB3aGljaCBSWCBwb3J0IHRoZSBzaWduYWwgYXJyaXZlZCBzbyBJIG1h
eSBzZXBhcmF0ZSANCj4gdGhlIGRhdGEgaW4gZGlmZmVyZW50IGZpbGVzLg0KPg0KPiBJIGFtIGEg
bGl0dGxlIGxvc3QgaG93ZXZlciBob3cgdG8gZG8gd2l0aCB3aXRoaW4gdGhlIEFQSS4gSSBzZWUg
dGhlcmUgDQo+IGlzIGEgY2FsbCDigJx1c3JwLT5nZXRfdGltZV9ub3figJ0gaW4gc2V2ZXJhbCBv
ZiB0aGUgZXhhbXBsZXMsIGJ1dCBpdCBkb2VzIA0KPiBub3QgYXBwZWFyIHRoaXMgdGFrZXMgdGhl
IHRpbWVzdGFtcCBmcm9tIHRoZSBidXJzdHMgdGhlbXNlbHZlcy4NCj4NCj4gSXMgdGhlcmUgYSB3
YXkgd2l0aGluIHRoZSBleGlzdGluZyBBUEkgdG8gcmV0cmlldmUgdGhlIHRpbWVzdGFtcCBmcm9t
IA0KPiB0aGUgcGFja2V0cyBhdCB0aGUgYmVnaW5uaW5nIG9mIGVhY2ggYnVyc3QuIEkgYWxzbyBz
ZWUgYSANCj4g4oCcZ2V0X3RpbWVzdGFtcOKAnSBpbiB0aGUgQVBJIGJ1dCBJIGFtIHVuc3VyZSB3
aGF0IHBhY2tldCB0aGlzIHdvdWxkIGdldCANCj4gdGhlIHRpbWVzdGFtcCBmcm9tIGlmIHRoZSBi
dXJzdCBoYXMgbXVsdGlwbGUgcGFja2V0cy4NCj4NClRoZSBtZXRhZGF0YSBzdHJ1Y3R1cmUgdGhh
dCB5b3UgcGFzcyB0byAicmVjdigpIiBwcm92aWRlcywgYW1vbmcgb3RoZXIgDQp0aGluZ3MsIHRp
bWVzdGFtcCBkYXRhIG9uIGV2ZXJ5IHJlY3YuwqAgVGhhdCB0aW1lc3RhbXANCiDCoCByZWZlcnMg
dG8gdGhlIGZpcnN0IHNhbXBsZSBpbiB0aGUgcGFja2V0Lg0KDQo+IEFsc28sIGlzIHRoZXJlIGEg
bGltaXQgb24gdGhlIG51bWJlciBvZiBwYWNrZXRzIHRoZXJlIGNhbiBiZSBpbiBhIGJ1cnN0Pw0K
Pg0KSSB0aGluayB0aGUgbnVtYmVyIG9mIHNhbXBsZXMgaXMgc3RvcmVkIGluIGEgNjQtYml0IGlu
dGVnZXIuwqDCoCBTbywgaW4gDQplZmZlY3QsIG5vLg0KDQoNCj4NCj4gVGhhbmtzLA0KPg0KPiBK
b2UNCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQo=
