Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6952372E8AD
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jun 2023 18:41:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5DF6D3846B8
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jun 2023 12:41:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686674471; bh=UfTxxBExkQn9V8AhNrjXGt2+m1hZg7ccnemON+xtTcU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xDRVRAh7Cs7Cn9TecaBFs0kDdJn/uiv1+wIo2bHnDLW4Qaj0kD3CI4TndBK4TaubL
	 kU1e0GUnySV2lZllzBKnPpRvHFoLHNPTvjgFvgDngLgA5lhUXNvwP8qD8iTWPaxIAv
	 0p5Qspm97d1vKA1z14d1KPlCfq+ykJrKWYly8OGRf6o7OL7wxgfXaGqf7t+bR2jQOa
	 8rCfo2rpIM4/I/9OsON8W+taxIHQfCR2QxtIqjr0x90VNwSb+GGJpbjIjQwx71SJkm
	 P/HtAeSqPiYH1VHXurkdfw1SPNV3YpUlPhgKVhcDEk/RD0nvnaz12JNf2y6QrtjyhJ
	 qiyRf076ON/rg==
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 21FCF384AB2
	for <usrp-users@lists.ettus.com>; Tue, 13 Jun 2023 12:40:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bMzPma0Z";
	dkim-atps=neutral
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-45ee86a16caso1971332e0c.1
        for <usrp-users@lists.ettus.com>; Tue, 13 Jun 2023 09:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686674414; x=1689266414;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jW7eniAMoHP4QrBsN6mxfeiiFKCwQ1VIF5nPlkrQU+I=;
        b=bMzPma0ZduRPI2fLcAYdiizGezXwwoFc81VXyu2kb4NVNrKJKbC06qrcxCByf4KUTS
         Bb9eFLkw/W6kK90ViZGS8YT7T5nrVwvZsT6KifySBZCkcgKle95q5u7nGagg/FyFlBB2
         En7hmhDGUAzZrB3Q3DN8jvDV5ztcM7aUQDwYGjygatiU8kYkIuxvdVjsItcbFR6C1jVX
         dH9JstDweE2RMO2ZxrH2mRADH7dvhWByPmdwozbvk7F2hNYzkEupALshnfSjp26P2LeM
         uFbD2PkPfOQLBeo+WFBIW57GJTss0akNCkHnzeAO+7jYx4L8kS1SIsvHzf88xGFAxoo9
         UX2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686674414; x=1689266414;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jW7eniAMoHP4QrBsN6mxfeiiFKCwQ1VIF5nPlkrQU+I=;
        b=YDwwUtzWDRUNl2XyKfzGpwzLMb340GLVakf+xGMF5cRkpzRfn2ADOzoo/LeVAiDaqm
         J/GFc2S92JLZM6W53l7xn9fODQeHjFNOAYp7PwW6u2bO6pOunuIlm2OuEEu1vzuaf7K2
         RvneO0kA3R20QYV1tNtWufJgh3Io3IBSS7qpfJxFXDx1/JMC7gyRbmiipHecCyHf7et5
         L5TnPUVg7CIcDuMVJf6i7X344npSsPSwzG60+OROw+beTJ4kecixMClSwkeQ2xb7mbWJ
         2aQplHnD/EUGoCBSx32E+PaW3EUNk9muLfNtc613fjh/vspvUWpd+A92wCen5wckmt0f
         vbJw==
X-Gm-Message-State: AC+VfDx/drNysoElpu3v+CrmsWuNfR38oO7zF5tJkEneiRzHT0JTm0FE
	OXpwNf7meEFkbEAGedHXBcvqyt2e6M2KpA==
X-Google-Smtp-Source: ACHHUZ5II/3Arivw9kdv7nI/olja4w/XPAKrDYJt7xusFhZF+YL6XzyVevzpMmXeHiv2VG8Qf/n2Vg==
X-Received: by 2002:a1f:c1c8:0:b0:46e:573b:3691 with SMTP id r191-20020a1fc1c8000000b0046e573b3691mr1497727vkf.0.1686674414273;
        Tue, 13 Jun 2023 09:40:14 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id e21-20020a0caa55000000b00626330a39ecsm4093270qvb.9.2023.06.13.09.40.13
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 09:40:13 -0700 (PDT)
Message-ID: <79a14485-d53c-382b-e75c-97ee5d10cf29@gmail.com>
Date: Tue, 13 Jun 2023 12:40:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAH2Hh738iQj6a55CAsuN9Y9f4OKVHSuWuOrqeP_+06gMhrG=LA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAH2Hh738iQj6a55CAsuN9Y9f4OKVHSuWuOrqeP_+06gMhrG=LA@mail.gmail.com>
Message-ID-Hash: 7R6G2IHEWXOYO5IYBMUTG6MKR4WRFU3V
X-Message-ID-Hash: 7R6G2IHEWXOYO5IYBMUTG6MKR4WRFU3V
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Dual 200 Msps Streaming
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7R6G2IHEWXOYO5IYBMUTG6MKR4WRFU3V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMDYvMjAyMyAyMjowMywgQWFyb24gU21pdGggd3JvdGU6DQo+IEhlbGxvIEFsbCwNCj4N
Cj4gSSBhbSB0cnlpbmcgdG8gdHJhbnNtaXQgb24gdHdvIFVCWC0xNjAgZGF1Z2h0ZXJib2FyZHPC
oCB3aXRoaW4gYSBzaW5nbGUgDQo+IFgzMTAgYXQgMjAwIE1zcHMgdXNpbmcgVUhEIDQuMS4wLjUt
My4NCj4NCj4gSSBhbSBleHBlcmllbmNpbmcgcGVyaW9kaWMgdW5kZXJmbG93cywgYW5kIEkgaGF2
ZSBhbHJlYWR5IGFwcGxpZWQgYWxsIA0KPiBvZiB0aGUgdGlwcyBpbiB0aGUgIlVTUlAgSG9zdCBQ
ZXJmb3JtYW5jZSBUdW5pbmcgVGlwcyBhbmQgVHJpY2tzIiANCj4gYXBwbGljYXRpb24gbm90ZSwg
d2l0aCB0aGUgZXhjZXB0aW9uIG9mIHVzaW5nIERQREsuDQo+DQo+IEkgaGF2ZSBhIGZldyBxdWVz
dGlvbnMgYWJvdXQgVUhEIHN0cmVhbWluZyBhbmQgd2hhdCBjYW4gYmUgZG9uZSB0byANCj4gaW1w
cm92ZSBwZXJmb3JtYW5jZS4NCj4NCj4gMS4gTXkgY3VycmVudCBpbXBsZW1lbnRhdGlvbiB1c2Vz
IGEgc2luZ2xlIHR4X3N0cmVhbWVyIGZvciBib3RoIA0KPiBjaGFubmVscywgYW5kIHVzZXMgbXVs
dGlwbGUgdGhyZWFkcyB0byBwb3B1bGF0ZSB0aGUgYnVmZmVycyBzZW50IHRvIA0KPiB0aGUgWDMx
MC4gV291bGQgdGhlIHBlcmZvcm1hbmNlIGJlIGJldHRlciBpZiBJIHVzZWQgdHdvIHNlcGFyYXRl
IA0KPiBzdHJlYW1lcnMsIG9uZSBmb3IgZWFjaCBjaGFubmVsLCBpbiBzZXBhcmF0ZSB0aHJlYWRz
Pw0KSSBkb24ndCB0aGluayB0aGVyZSdzIGEgY2xvc2VkLWZvcm0gYW5zd2VyIHRvIHRoaXMuwqAg
QmVjYXVzZSBpdCB3b3VsZCANCmRlcGVuZCBvbiB5b3VyIHBhcnRpY3VsYXIgc3lzdGVtLCBhcHBs
aWNhdGlvbiwgZXRjLsKgwqAgSSdkDQogwqAganVzdCBkbyB0aGUgZXhwZXJpbWVudCBhbmQgc2Vl
Li4uDQoNCj4NCj4gMi4gSSBoYXZlIHNlZW4gc29tZSBjbGFpbXMgdGhhdCBEUERLIGlzIG5vdCBh
cyB1c2VmdWwgd2l0aCBVSEQgNCwgaXMgDQo+IHRoaXMgdHJ1ZT8NCkkgZG9uJ3QgdXNlIERQREsg
bXlzZWxmLCBzbyBJIGRvbid0IGtub3cgaWYgdGhhdCdzIHRydWUgb3Igbm90Lg0KDQo+DQo+IDMu
IFdpdGggVUhEIDQsIHdvdWxkIGl0IGhlbHAgdG8gc2V0IHRoZSBza2lwX2R1YyBhbmQgc2tpcF9k
ZGMgZmxhZ3MgDQo+IHdpdGggZnVsbCByYXRlIHN0cmVhbWluZz8NCkFnYWluLCB0aGUgYW5zd2Vy
IGhlcmUgaXMgc3VzY2VwdGlibGUgdG8gZXhwZXJpbWVudC4uLg0KDQo+DQo+IDQuIEFyZSB1bmRl
cmZsb3dzIG9ubHkgY3JlYXRlZCB3aXRoaW4gdGhlIHNlbmQoKSBmdW5jdGlvbj8gT3IgY2FuIHRo
ZSANCj4gdGltaW5nIG9mIGNhbGxzIHRvIHNlbmQoKSBjYXVzZSB1bmRlcmZsb3dzLCBlc3BlY2lh
bGx5IHdoZW4gdGhlIGJ1cnN0IA0KPiBmbGFncyBhcmUgdXNlZD8gRm9yIGV4YW1wbGUsIHN1cHBv
c2UgSSBzZXQgdGhlIHN0YXJ0IG9mIGJ1cnN0IGZsYWcgdG8gDQo+IHRydWUgZm9yIGEgc2luZ2xl
IGJ1ZmZlciBjb250YWluaW5nIDEgc2Vjb25kIG9mIGRhdGEsIGFuZCB0aGVuIEkgDQo+IHRvZ2ds
ZSB0aGUgc3RhcnQgb2YgYnVyc3QgZmxhZyB0byBmYWxzZSBmb3Igc3Vic2VxdWVudCBidWZmZXJz
IGFuZCANCj4gY29udGludW91c2x5IGNhbGwgc2VuZCgpIG9uIDEgc2Vjb25kIGJ1ZmZlcnMgZm9y
IDEwIG1pbnV0ZXMuIE9uIHRoZSANCj4gbGFzdCBzZWNvbmQgSSBzZXQgZW5kIG9mIGJ1cnN0IGZs
YWcgdG8gdHJ1ZS4gVGhlIGlkZWEgaXMgdG8gY3JlYXRlIGEgDQo+IDEwIG1pbnV0ZSBsb25nICJi
dXJzdC4iIElmIEkgY2FsbCBzZW5kIGxhdGUgb24gb25lIG9mIHRoZSBvbmUgc2Vjb25kIA0KPiBi
dWZmZXJzIGluIHRoZSBtaWRkbGUgb2YgdGhlICJidXJzdCIgd2lsbCBVSEQgcmVwb3J0IHVuZGVy
Zmxvd3M/IE15IA0KPiB0aGlua2luZyBpcyB0aGUgWDMxMCBzaG91bGQgdGhpbmsgaXQgaXMgaW4g
dGhlIG1pZGRsZSBvZiBhIGJ1cnN0LCBhbmQgDQo+IHdpbGwgZXhwZWN0IGRhdGEsIGJ1dCBzZW5k
KCkgaGFzIG5vdCBiZWVuIGNhbGxlZCwgc28gdGhlcmUgaXMgbm8gZGF0YSANCj4gZm9yIHRoZSBy
YWRpbyB0byByZWFkIGZyb20gdGhlIGhvc3QsIGNyZWF0aW5nIHVuZGVyZmxvd3MuIFBlcmhhcHMg
SSBhbSANCj4gYWxzbyBtaXN1bmRlcnN0YW5kaW5nIHRoZSBwdXJwb3NlIG9mIHRoZSBidXJzdCBm
bGFncywgYXMgdGhleSBhcmUgbm90IA0KPiB3ZWxsIGRvY3VtZW50ZWQuDQo+DQo+IFRoYW5rcyBm
b3IgdGhlIGhlbHAhDQo+IEFybW9uDQo+DQpVbmRlcmZsb3dzIG9jY3VyIHdoZW4gdGhlIHJhZGlv
IGhhcmR3YXJlIHVuZGVyZmxvd3MgaXRzIEZJRk8sIHdoaWNoIGluIA0KdHVybiBtZWFucyB0aGUg
aG9zdCBpc24ndCBwcm92aWRpbmcgc2FtcGxlcyBhdA0KIMKgIHRoZSBkZXNpcmVkIHJhdGUtLXRo
ZSByYWRpbyBoYXMgbm8gaWRlYSB3aGF0IHlvdXIgInNlbmQoKSIgYm91bmRhcmllcyANCmFyZSwg
anVzdCB0aGF0IGl0IGlzbid0IGdldHRpbmcgc2FtcGxlcyB3aGVuIGl0IG5lZWRzDQogwqAgdGhl
bS7CoMKgwqAgVGhlIGRhdGEgaW4gdGhlICJzZW5kKCkiIGhhcyB0byBwZXJjb2xhdGUgdGhyb3Vn
aCBVSEQsIA0KdGhyb3VnaCB0aGUga2VybmVsIElQIHN0YWNrIChvciBEUERLIHN0YWNrKSBhbmQg
aXRzIGJ1ZmZlcnMsIGFuZA0KIMKgIHRoZW4gdGhlIGhhcmR3YXJlIGJ1ZmZlcnMuwqAgQW55IGlu
Zm9ybWF0aW9uIGFib3V0IGV4YWN0bHkgd2hlbiB5b3UgDQpjYWxsZWQgInNlbmQoKSIgaXMgcHJl
dHR5IGludmlzaWJsZSBieSB0aGUgdGltZSBpdCByZWFjaGVzDQogwqAgdGhlIHJhZGlvLg0KDQpU
aGUgImJ1cnN0IiBhcmNoaXRlY3R1cmUgaXMgcmVhbGx5IGludGVuZGVkIGZvciBhcHBsaWNhdGlv
bnMgbGlrZSBUREQgb3IgDQpoYWxmLWR1cGxleCwgd2hlcmUgeW91IG5lZWQgdG8gbGV0IHRoZSBy
YWRpbyBrbm93IHRvDQogwqAgbm90IGV4cGVjdCBhbnkgbW9yZSBUWCBzYW1wbGVzLCBzbyBpdCBj
YW4gZG8gdGhpbmdzIGxpa2Ugc3dpdGNoIA0KYW50ZW5uYXMsIGV0Yy4NCg0KDQo+DQo+DQo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
