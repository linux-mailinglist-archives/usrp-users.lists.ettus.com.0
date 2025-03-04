Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A243AA4D229
	for <lists+usrp-users@lfdr.de>; Tue,  4 Mar 2025 04:49:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 835FE385368
	for <lists+usrp-users@lfdr.de>; Mon,  3 Mar 2025 22:49:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741060156; bh=2IekhmPrmZzXounZ7p8HQAoSp9l8YWme/PvtJ9fDdWo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=KIixrj+pcVc+fRpjuq0pUT0i8QzgRQVzVHF3ZgHkNuWSQK/sAYdK+3bwV8D9U9/Id
	 jBdoq42TeuuVRlyb+LHxZnyI1Ol9xMhRhgoEuASdC6Hvdrlk3x26omzs3LhcMV8wVj
	 CDLqcWtTq2djPydmT2+b40w9Ll73m4ugHcxuHesViVY+NrQAz7+c/g710YZZO++1hO
	 /edNcESS65QgwVRIQgk53UJEHfAks/WoJ4iM313oR+/Fbq0BgF6ad/xJeVODvaxj0R
	 m5YG15tiXjSFDyVEwpHbBjy110dIa0ZEbio+4DmIQ3jGDf03zr+UGB2z8OOTXb1RUJ
	 /6Pa2Oh1DLItA==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id E08073852E7
	for <usrp-users@lists.ettus.com>; Mon,  3 Mar 2025 22:48:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IxHaZSUD";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-7c3be0d212fso208442485a.2
        for <usrp-users@lists.ettus.com>; Mon, 03 Mar 2025 19:48:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741060097; x=1741664897; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JWy0wditMSL8NTgT+0s/MU+upGYWF6vEwrB24BQsJ1M=;
        b=IxHaZSUD97GJf8LfWU4AUbmuBzczVkzqI2GV1R6nUcln0x6Gi9KtVz0AmLEgjdmWPV
         x06MqGDmuCXREKVq6BxCtZWAuL4/Cl81S969nDg5zOlG/6z0q0iNBu+1w4tn6Uw0OCsB
         6wqXRiRhe+Dzv2W1lNeaXzD2IwAPExpEV2zpYWCcu4bxUegKFJnqIdIjUlbPnKMtWDB/
         587w5n8VSVA1AaoFSoJhqWRLmjS2QJf9rr2Z5JouUbqLSUZClbaneRtJGjD7Wvyuu4lq
         WHzDuaCU+C/2Z4yD8U3n9WqgsUI6MnjGJCEfsMOh4Jukb2eOO8pWaJAbxs3JRcrLCVta
         VaiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741060097; x=1741664897;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JWy0wditMSL8NTgT+0s/MU+upGYWF6vEwrB24BQsJ1M=;
        b=atADUpgBLbvpQHuv74dU5DvmSpH2avDpuCwlrkBxl0pziUol2+wmBdmLPn1PAG8/Hp
         ReOiV1JC38M50q8QQpaIK1zsEaza38CMAi8dXktHB38k7unRGAgJDU3R7tKizkdr9jZH
         7/UHMhzuZLMz2wQGNZrRZsr35lOdDDjXLm9oVWfwfmloWRy4N171x7x3qWYxKFyuS+JW
         39hXD/uf8q4otuKXVc0mszvBabV8pHzv8QsX99XZg0nXy9peq6MlzzgEY5sl/tS0BUqE
         E9G14OvQpMp81QFcdW8GXG55/2F/lJ+k14vmoH2Rx/tjO0Qh6tKI7KTG7rTGQLFJltiQ
         9w5A==
X-Gm-Message-State: AOJu0YwTPuCUbs4yUyBn8FoQxojnXTBp0NThzD4L3XY8BiUEW6DJQrwl
	hx0IG66p17ZcTN4BWjlUa6GtYWhVmVue/uquyNtJXmPaJehXsYCN14ENNn91
X-Gm-Gg: ASbGncvKcu9qC05ehlc0S+4z7p7Y6lzkvu+Ryc5C4+l83Obagmf2m4YTIHeqWTim5eR
	4L9DBlytauZ0VzY/g51413Tp4/+Fz1QPTHQAdfEnVkF3x/+sfBrNB+C0R8KwWaelKqgZPwXc9zo
	Cjn9143xJlJQzlj5BwZUMcQoNSGH7/xZpz+nsVJVTiuvAQMJdzVXjtsDhpc8Im2+2+R8DOgdi1b
	QCbs/e8Fe3pl8aAEk9l++9zDW1RgHzFh/wRa/X1GP5d4wlr0HcfW26Nq5hl8nQ3CsfWA4vtJA9U
	p1WSbTTT7+NnXLpA9fzpSmcWcTWgOGD60j3sDE5u5SOZ5CyymuK5iSs=
X-Google-Smtp-Source: AGHT+IED5eF9oCPvqVxd8qfQfsDn2XZdmUFoDelEme5syR5BCe0FeQsbtEWAQlgOvnzh88drZ59NmQ==
X-Received: by 2002:a05:620a:3915:b0:7c0:8345:4e8e with SMTP id af79cd13be357-7c39c4b6076mr2254583785a.21.1741060096858;
        Mon, 03 Mar 2025 19:48:16 -0800 (PST)
Received: from [192.168.2.170] ([142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c378daabdcsm684697085a.92.2025.03.03.19.48.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 19:48:15 -0800 (PST)
Message-ID: <15ff7079-3d5f-4ba6-a6eb-9b0c62680369@gmail.com>
Date: Mon, 3 Mar 2025 22:48:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAAv0A=MCFrxkvS95kfPJM6TKDM5LTQNLy5GbREOswVWQdCa44Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAv0A=MCFrxkvS95kfPJM6TKDM5LTQNLy5GbREOswVWQdCa44Q@mail.gmail.com>
Message-ID-Hash: KBB6P7K4KFELX3YADCRKD46PZJD7ZYR6
X-Message-ID-Hash: KBB6P7K4KFELX3YADCRKD46PZJD7ZYR6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RX Noise Figure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KBB6P7K4KFELX3YADCRKD46PZJD7ZYR6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDMvMDMvMjAyNSAyMjoyMywgRHVzdGluIFdpZG1hbm4gdmlhIFVTUlAtdXNlcnMgd3JvdGU6
DQo+IEhpIGFsbCwNCj4NCj4gSSBzZWUgYW4gaW50ZXJlc3RpbmcgdHJlbmQgYW5kIEknbSBub3Qg
c3VyZSBob3cgdG8gZXhwbGFpbiBpdCAuLi4NCj4NCj4gSSd2ZSBkb25lIGEgeS1mYWN0b3IgbWVh
c3VyZW1lbnQsIHN3ZWVwaW5nIHRoZSBmcmVxdWVuY3ksIHNhbXBsaW5nDQo+IHJhdGUsIGFuZCBy
eC1nYWluIHdpdGggYW4geDMxMCB3aXRoIHRoZSBTQlgtMTIwIGRhdWdodGVyYm9hcmQuIFRoZQ0K
PiByZXN1bHRzIHNlZW0gc2ltaWxhciB0byB0aGUgcHVibGlzaGVkIHBlcmZvcm1hbmNlIHNwZWNz
LiBUaGUgcGFydCBJJ20NCj4gbm90IHN1cmUgcXVpdGUgaG93IHRvIGV4cGxhaW4gaXMgd2h5IHRo
ZSBORiB3b3VsZCB2YXJ5IHdpdGggdGhlDQo+IHNhbXBsaW5nIHJhdGUuIERvZXNuJ3QgdGhlIFgz
MTAgdXNlIGEgc3RhdGljIHNhbXBsZSByYXRlIGFuZA0KPiBkb3duc2FtcGxlIGluIHRoZSBGUEdB
PyBXaHkgd291bGQgdGhpcyBhZmZlY3QgdGhlIE5GPyBXaHkgZG9lcyB0aGUNCj4gZWZmZWN0IHNl
ZW0gdG8gYmUgbW9yZSBleGFnZ2VyYXRlZCBhdCBoaWdoZXIgZ2FpbiBzZXR0aW5ncz8gV2h5IGlz
IHRoZQ0KPiBlZmZlY3Qgb24gTkYgdmVyeSBzbWFsbCBhdCBoaWdoZXIgc2FtcGxpbmcgcmF0ZXMg
YnV0IG1vcmUgcHJvbm91bmNlZA0KPiBhdCBsb3dlciBvbmVzIGluc3RlYWQgb2YgYmVpbmcgYSBs
aW5lYXIgY2hhbmdlPw0KPg0KPiBEdXN0aW4NCj4NCldoYXQgbm9pc2UgaW5wdXRzIGFyZSB5b3Ug
dXNpbmcgZm9yIHRoZSB0d28gbGV2ZWxzIGluIHlvdXIgWS1mYWN0b3I/DQoNClRoZSBhbW91bnQg
b2YgcG93ZXIgcmVwcmVzZW50ZWQgYXQgZWFjaCBzYW1wbGUtcmF0ZSBpcyBkaWZmZXJlbnQsIGFu
ZCANCnNob290aW5nIGZyb20gdGhlIGhpcCBoZXJlLCB0aGUgYW1vdW50IG9mIGVuZXJneQ0KIMKg
IHJlcHJlc2VudGVkIGluIHRoZSB0cmFuc2l0aW9uIHJlZ2lvbnMgYXQgZGlmZmVyZW50IHNhbXBs
ZSByYXRlcyB3aWxsIA0KYmUgZGlmZmVyZW50LsKgIEZvciBleGFtcGxlLCBvZGQvZXZlbi9mYWN0
b3Itb2YtNA0KIMKgIHNhbXBsZS1yYXRlcyBoYXZlIGRpZmZlcmVudCBwYXNzLWJhbmQgc2hhcGVz
Lg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20K
