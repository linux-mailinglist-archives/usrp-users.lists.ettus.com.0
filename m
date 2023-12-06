Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E488065B3
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 04:39:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18B32384CA9
	for <lists+usrp-users@lfdr.de>; Tue,  5 Dec 2023 22:39:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701833962; bh=KzFTMmISEdf0PgFywCHl6f52Ko6jikM1He0QMvCIdus=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=BfVZXDZpaFpiTO0Z133sgJaedpNVSblgGGayGa9TyqQtoHsimiRnXNOGKnz3vQiX4
	 iNvFSZW75cpcAnpurg+Ozy4w2zaWqEratkiJsqTXYBuGt/FHgbeHT/zbFIZvxdPmTA
	 MJ3bF4FZT48o7VOb3yfXa8Nmb81RsrJvzTqeY4odUXKjb6RxWfQehjRUJ0DxTW/0U7
	 GWHVZ1xwFMECjugLn0ZkVC7tb/fGY4vZsJZVW9SVxw9JHnkHkFvZNSgeUBbNCNw0u8
	 dw9VuMFdbTyjveNLaHV4tpa4de+9A1OthQ44oSs0v65jbniORrIxhqcPwtRAlQ+FEQ
	 rWA0szVQpFx/A==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id D94BB384BBA
	for <usrp-users@lists.ettus.com>; Tue,  5 Dec 2023 22:38:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="j1/e+Sgo";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-77d63b733e4so399790885a.2
        for <usrp-users@lists.ettus.com>; Tue, 05 Dec 2023 19:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701833913; x=1702438713; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CfqTx7tO5+49JTuKSPttM6wNgkwpLCj6L6eR6CcRasE=;
        b=j1/e+Sgo28stu7QYb/Tn6+k3FPPz05FWbg9ceGQCwFFx1xlzwM9Y2u+c8ysUCt5mQ3
         RBGzqnpWg7EoNFX9/2t0i/2QdkzOxRebZ/CuKjksol/53/5nmisSdOgFvwlOVQ14rcVR
         mKCnnTk6y6A+qwEWO8z+BkerOXY6H7tt4v51ArqwCZ5pq0MRu3jZK3ub8ikv0L5O6sVu
         Kd4MGhvv4b+EhK2eOxXRAEvv+2aTQJd3j3Gd8ZdttZbQm7nfrDMyJfTDnjff3MV/KRHk
         FLnxtCLjaNxq2OCt23h2H8n6BF3nHgE//Ma099plhv5TNzTJiEokENDeIEkv+kOdoRoD
         1q3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701833913; x=1702438713;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CfqTx7tO5+49JTuKSPttM6wNgkwpLCj6L6eR6CcRasE=;
        b=ClLd2I2x6nfFEYE7Pewgtqm9J+qIfkR51anEd2kaJ1Ur8e/agAEaUR0E1tMM0f/IlH
         bT9IRXEq83dMGbZYZ5Aw7ODyqR+OfIsElxJ1/YKBs+Dk6lBRrAWx7jzkLwH3SDpCjGnB
         ymcBHqY/XGSoGoYD1RJl5XRCVsw1By5OnY1kBsjegz+aDK6r3mC/abcjDvnXtFOzap7h
         pii5Gn9wDoTDPFalnfvWfgKTEsNT6U8fXXdkDOH+5yabJ1oqxmd1+Zsm5FVku2nB8iQ2
         kVWL2jX9GlUVApDJ9b8DcyLkYoTVLLeXO4dJiC5uTzJ0Phnjp7GV4u/kL+IZNggRsuT7
         7sGg==
X-Gm-Message-State: AOJu0YzVvN3BJXrAB/D5+ZstgZSGsE3a4WKNIbk/gMNp+zObdtCOb4/q
	A7fHmYtJliO8oQzBPfbmwdaS1K9TFWc=
X-Google-Smtp-Source: AGHT+IEkAOT3oqDcf2wNtVcEQAUwDtV4/MPojq7Y0kSC2amwM+P29MMrJ6RCTnddi7TTpTtqvFxyYQ==
X-Received: by 2002:a05:620a:bcd:b0:77f:d5e:f929 with SMTP id s13-20020a05620a0bcd00b0077f0d5ef929mr292347qki.91.1701833912985;
        Tue, 05 Dec 2023 19:38:32 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id bn6-20020a05620a2ac600b0077dcaba6709sm5492868qkb.135.2023.12.05.19.38.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Dec 2023 19:38:32 -0800 (PST)
Message-ID: <90f41253-2eee-416f-a1df-893c658f3aff@gmail.com>
Date: Tue, 5 Dec 2023 22:38:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <rFMafK87Ucrl5VAwqQ1LgFlLFvENKjyue6tFcDvH2L4@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <rFMafK87Ucrl5VAwqQ1LgFlLFvENKjyue6tFcDvH2L4@lists.ettus.com>
Message-ID-Hash: AV24T2NCEEWJKI66ODCKBEPP3N2SVW3M
X-Message-ID-Hash: AV24T2NCEEWJKI66ODCKBEPP3N2SVW3M
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AV24T2NCEEWJKI66ODCKBEPP3N2SVW3M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDUvMTIvMjAyMyAwNTo1NSwgcHVydmEuam9zaGlAcGhkLnVuaXBpLml0IHdyb3RlOg0KPg0K
PiBNYW55IG1hbnkgdGhhbmtzIE1hcmN1cy4gWW91IGFyZSByZWFsbHkgZ3JlYXQuIEkgY2FuIGZp
bmQgbXkgZGV2aWNlLg0KPg0KR2xhZCBpdCB3b3JrZWQgb3V0IGZvciB5b3UuDQoNCg0KPiBUaGUg
b3V0cHV0IG9mIOKAnHVoZF9maW5kX2RldmljZXPigJ0gaXMNCj4NCj4gW0lORk9dIFtVSERdIGxp
bnV4OyBHTlUgQysrIHZlcnNpb24gNy41LjA7IEJvb3N0XzEwNjUwMTsgDQo+IFVIRF80LjAuMC4w
LTI0MC1nYjM4YzlkODMNCj4NCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCj4NCj4gLS0gVUhEIERldmljZSAwDQo+DQo+IC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+DQo+IERldmljZSBBZGRyZXNz
Og0KPg0KPiBzZXJpYWw6IDMxOTgyMkINCj4NCj4gYWRkcjogMTkyLjE2OC4yMC4yDQo+DQo+IGNs
YWltZWQ6IEZhbHNlDQo+DQo+IG1nbXRfYWRkcjogMTkyLjE2OC4yMC4yDQo+DQo+IHByb2R1Y3Q6
IG4zMTANCj4NCj4gdHlwZTogbjN4eA0KPg0KPiBhbmQgb3V0cHV0IG9mIOKAnHVoZF91c3JwX3By
b2Jl4oCdIGlzIFtJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIA0KPiA3LjUuMDsg
Qm9vc3RfMTA2NTAxOyBVSERfNC4wLjAuMC0yNDAtZ2IzOGM5ZDgzDQo+DQo+IFtJTkZPXSBbTVBN
RF0gSW5pdGlhbGl6aW5nIDEgZGV2aWNlKHMpIGluIHBhcmFsbGVsIHdpdGggYXJnczogDQo+IG1n
bXRfYWRkcj0xOTIuMTY4LjIwLjIsdHlwZT1uM3h4LHByb2R1Y3Q9bjMxMCxzZXJpYWw9MzE5ODIy
QixjbGFpbWVkPUZhbHNlLGFkZHI9MTkyLjE2OC4yMC4yDQo+DQo+IFtJTkZPXSBbTVBNLm1haW5d
IExhdW5jaGluZyBVU1JQL01QTSwgdmVyc2lvbjogMy4xNC4xLjEtZzAzNDdhNmQ4DQo+DQo+IFtJ
TkZPXSBbTVBNLm1haW5dIFNwYXduaW5nIFJQQyBwcm9jZXNzLi4uDQo+DQo+IFtJTkZPXSBbTVBN
LlBlcmlwaE1hbmFnZXJdIERldmljZSBzZXJpYWwgbnVtYmVyOiAzMTk4MjJCDQo+DQo+IFtJTkZP
XSBbTVBNLlBlcmlwaE1hbmFnZXJdIEluaXRpYWxpemVkIDIgZGF1Z2h0ZXJib2FyZChzKS4NCj4N
Cj4gW0lORk9dIFtNUE0uUGVyaXBoTWFuYWdlcl0gaW5pdCgpIGNhbGxlZCB3aXRoIGRldmljZSBh
cmdzIA0KPiBgY2xvY2tfc291cmNlPWludGVybmFsLHRpbWVfc291cmNlPWludGVybmFsJy4NCj4N
Cj4gW0lORk9dIFtNUE0uUlBDU2VydmVyXSBSUEMgc2VydmVyIHJlYWR5IQ0KPg0KPiBbSU5GT10g
W01QTS5SUENTZXJ2ZXJdIFNwYXduaW5nIHdhdGNoZG9nIHRhc2suLi4NCj4NCj4gRXJyb3I6IHJw
Yzo6dGltZW91dDogVGltZW91dCBvZiAyMDAwbXMgd2hpbGUgY2FsbGluZyBSUEMgZnVuY3Rpb24g
DQo+ICdzZXRfZGV2aWNlX2lkJw0KPg0KPg0KPiBJIGFtIHJlYWxseSBncmF0ZWZ1bC4NCj4NCj4N
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
