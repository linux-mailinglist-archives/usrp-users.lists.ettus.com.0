Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA35880ED3C
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 14:18:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC5F9385B09
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 08:18:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702387092; bh=gUwF2S1YK0c1VXotfnx6xlJdcZ4xqvFx9nU/Ku6Ze1E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=QjTpBqGV1X9ucgw39OpC5CJcxmnIbtlf1RwRAAx0mIcuhqD37jy9So4VCwXnWhWgw
	 jJ/mIOWdgebF+vLoF9gHrmRDD+cEhbmaCiYK6eJ433RjhvJSky7FY1pTZRS9SVzWYf
	 tlazUSOs1kkJ+oFSDSnrjwom0ry1E3l+Gg/26C9GWTwFOi+nrzLyDdn6KVCoOqrVZy
	 VME+52oic45/44tPRYr5yPPW1/1reTnBbMU6EnPxgc9lXwo+hKAS1hFXhXVgBSg9/D
	 fdfEqsTsndMD4kfrZoQhngTcKfYwTy4D+u+nI9r60jMF0dNdCzgD1LJzkmXmhIxC2A
	 G8okfD9P7rByg==
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	by mm2.emwd.com (Postfix) with ESMTPS id A958B385611
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 08:17:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="T6lQMcY1";
	dkim-atps=neutral
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-1f060e059a3so4244754fac.1
        for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 05:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702387075; x=1702991875; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kJEh0Mxe5jVtuG2hfmwHfhezqLNKqPGEPtnJVLNuOSE=;
        b=T6lQMcY1O3ElRvlSC4CXK6x7Urohazgo94QH2NJcsCuC8aw6w2NzofdxtGUo2z2dbA
         ctB2Q8kS5u/tEPayZbongQt6DGao/tnKGzYnhgO5tx0Yyfvf5MaW/WTIMRe+h9oH6HI1
         uRE36efQH3paZd+vS9A+3jqSLCDMmujoza2kQ3xbHek4Em9DypVXw0jXY6PgjydSa5hN
         D72oqgUXHrjBjDIoeq9RcuFxGtGDbqdPSwrt9IbxaX9tnowIwp+8/hl+tJS4xUM2GIla
         WYikZCncLtdK/DsB3migK8iVUdJQUduwXJs3rV1iZNmmH4CyhMU19R0ZE2jPUt1+c3m6
         vBdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702387075; x=1702991875;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kJEh0Mxe5jVtuG2hfmwHfhezqLNKqPGEPtnJVLNuOSE=;
        b=pID7Rv6lNkmNqGt/ZjdP8LOTMcMbuVcY9PyyqwwbtluDNcpr0YihxAyDnjwo9j4Mjs
         rmjkunAChR68hZVd0DweISnC+PVMN8o3VMrk4HJ0IosyfPFvSWfwzURo0cnFEpsVUrOG
         IFCJ58sisAH3Ej3lB7wmj6zre+gXADnNaKj9az+Uhh+wlm/MeOHBV2IdBlC6KgBSrCLU
         Mz7SfyWPds4iYFZzRR8FdPlYz2Xgk/7KRU/eQ8B/T2P+8PMJMyCEZde4QZus5rueNKDP
         1e5Mjarx2nWbsgAT2tIL3pZar3lx73c5wrreCC6G3WgTs0jHhIBiiuQ7kB2aH7gUi3jN
         Li0g==
X-Gm-Message-State: AOJu0YxVpWJ4F+Y0LRnhdyFMTQFrr1uuJPejIL5G2Doqi6Uhm99a7hY2
	yNbBuJdM76I3MMgffOX3wGiD1cTBt1o=
X-Google-Smtp-Source: AGHT+IEgh69yK0HF1nSOT8pvy7u8GXlNpJlBh/JhknaX2W8r4GSrUNy9qIubzWfKL6z0b06hkRGNoA==
X-Received: by 2002:a05:6870:1594:b0:1fb:30b7:95 with SMTP id j20-20020a056870159400b001fb30b70095mr7320399oab.20.1702387074728;
        Tue, 12 Dec 2023 05:17:54 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id cd5-20020a05622a418500b004255fd32eeasm3821304qtb.7.2023.12.12.05.17.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Dec 2023 05:17:54 -0800 (PST)
Message-ID: <62c6f300-e06b-4e76-999b-707e44ae707e@gmail.com>
Date: Tue, 12 Dec 2023 08:17:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <ad5a2858-b986-4ea0-a070-b2ccf298b63d@localhost>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ad5a2858-b986-4ea0-a070-b2ccf298b63d@localhost>
Message-ID-Hash: ZGF7TX3HVG2JOYZ2YZYA4R4R54HCYGAG
X-Message-ID-Hash: ZGF7TX3HVG2JOYZ2YZYA4R4R54HCYGAG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP Python repeat scheduling with 1 pps synchronisation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZGF7TX3HVG2JOYZ2YZYA4R4R54HCYGAG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMTIvMjAyMyAwNzo1OSwgZHJ0YXlsb3JAbWFueC5uZXQgd3JvdGU6DQo+IEhpIGV2ZXJ5
b25lLg0KPiBJIGFtIHRyeWluZyB0byBydW4gYSBweXRob24gc2NyaXB0IHRoYXQgaGFzIGJlZW4g
Z2VuZXJhdGVkIGZvciANCj4gY29udmVuaWVuY2UgdXNpbmcgdGhlIG5vbi1HVUkgR1JDIG9wdGlv
bi4gKDMuOS41LjApIChQeXRob24gMy4xMC4xMikNCj4NCj4gVGhlIHNjcmlwdCBzZW5kcyBhIHNo
b3J0ICh+MzAwIG1zKSBmaW5pdGUgc2VxdWVuY2Ugb2Ygc2FtcGxlcyBhcyANCj4gcmFuZ2luZyBj
b2RlIHRvIGEgc2F0ZWxsaXRlIGFuZCByZWNvcmRzIHRoZSByZXR1cm4gdG8gYSBmaWxlIGFmdGVy
IHRoZSANCj4gcm91bmQtdHJpcCBpbnRlcnZhbCAofjI2MiBtcykuIFRoaXMgc2VxdWVuY2Ugb2Yg
ZXZlbnRzIGlzIGFjaGlldmVkIA0KPiB1c2luZyB0aGUgaGVhZCBibG9jayBhcyBhIG1ldGhvZCBv
ZiBhY2N1cmF0ZWx5IGNvdW50aW5nIHNhbXBsZXMsIHdoaWNoIA0KPiB3aWxsIGJlIGltcG9ydGFu
dCBpbiB0aGUgZmlsZSBjb250ZW50IGFuYWx5c2lzLiBUaGUgZmxvd2dyYXBoIGN5Y2xlIGlzIA0K
PiBjb21wbGV0ZSBpbiBsZXNzIHRoYW4gMSBzZWNvbmQsIHdpdGggdGhlIGRhdGEgZmlsZSBhcHBl
bmRlZCBlYWNoIHJ1bi4NCj4NCj4gSSBhbSBsb29raW5nIGZvciBhIHF1aWNrIGFuZCBob3BlZnVs
bHkgZWxlZ2FudCB3YXkgb2Ygc3luY2hyb25pc2luZyANCj4gdGhlIHN0YXJ0IG9mIGFib3ZlIGZs
b3dncmFwaCB0byB0aGUgMSBwcHMgaW5wdXQsIGJ1dCBvbiBhIHJlcGV0aXRpdmUgDQo+IGJhc2lz
LCBzYXkgZXZlcnkgMTAgc2Vjb25kcy4gVGhlIHB1Ymxpc2hlZCBub3RlcyBvbiAxcHBzIFVTUlAg
DQo+IHN5bmNocm9uaXNhdGlvbiBhcmUgdmVyeSBpbnN0cnVjdGl2ZSwgaG93ZXZlciBhcHBseWlu
ZyB0aGUgbmVjZXNzYXJ5IA0KPiBzY2hlZHVsZXIgY29udHJvbCBtZWFucyB0byB0aGUgcHl0aG9u
IF9tYWluXyBpcyBjYXVzaW5nIHRoZSBkaWZmaWN1bHR5IA0KPiBoZXJlLg0KPiBNYW55IHRoYW5r
cyBhbmQgY29tcGxpbWVudHMgb2YgdGhlIHNlYXNvbi4NCj4gRGF2aWQgVGF5bG9yIEdENEZNQg0K
Pg0KWW91J2xsIHByb2JhYmx5IHdhbnQgdG8gc2hhcmUgdGhpcyB3aXRoIHRoZSBkaXNjdXNzLWdu
dXJhZGlvIG1haWxpbmcgDQpsaXN0IGFzIHdlbGwgLS0gc2luY2UgdGhpcyBpcyBhIEdudSBSYWRp
byBzY3JpcHQsIGFuZCB5b3UncmUNCiDCoGJhc2ljYWxseSBhc2tpbmcgYWJvdXQgR251IFJhZGlv
IGJlaGF2aW9yLi4uDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20K
