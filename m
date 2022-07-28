Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 467845840EA
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 16:19:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C81D0383758
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 10:19:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659017967; bh=AV9s9JmLTOwcggEs8ZoB/RcuH9MtLo3pgq9b08+2KQY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oaXGCCdUaE/GY0LwJGqgmWRTOYbOu4YWnLBEZhqXHj6vqNJ7GZ0+iNOvY2Ph9EL9Q
	 +5efZ2lbE2nsikg72XmE73Ho6oBoZeIG/xwrj+xFa0PX+uGfpyZH2ixWr7e+lPJlmi
	 uxTtYJAiyxsxUAVZp3llSYj3NxRJ7a225SsRHgnOMEWdpZCXgR7K4RkFv0XbdQKkTV
	 ubU2fNzzvZtqkOET3GvPRHjeZ3GhL9yVEZJRsUqzK6DsLC3OCijHSIGaq76W31RK8B
	 lUDyDn4KR1td0zlDG0GQt84DONcdW1NENNAO9zjfwqF6GNUD9R38cku1CEb2uTBq2B
	 Q7QCqnYSnnq0g==
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D3BA383267
	for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 10:17:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Eei49Mdb";
	dkim-atps=neutral
Received: by mail-wr1-f42.google.com with SMTP id bn9so2358538wrb.9
        for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 07:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=xkn0jozleoKesAJUhURo2BSu7XkR1daDhJ+HzfVk/6g=;
        b=Eei49MdbTN6icWFVV2k0o7rFIfDjDqI0wU9kDc/X9PRG1oVrBqtL77kI9P77HFleeN
         uOLgLir97Oa8xwmaaTOHypSdaBgnShZBl22ELZalYpfY4YGeoTyQkyNuC/qG5I99g+xl
         Fk4Gt3UEsn4lJPwyVqiI875zxgId3t2JR4RPzK3mr3fwXcajAoX9CItW8NLwd4IIT/DB
         YkbdD1dCHROqKacJAFkn0mK2oBzXQa4ebujhY3IfZ/vBFua15mw/y52FhCnbghiVTwut
         dN9KhhFXfr0eQLWcJ3bwh3vrxRccbIO0JAxRA1zfA90MemEcDM4i9WBVgS7RXgo3PRf2
         uYjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xkn0jozleoKesAJUhURo2BSu7XkR1daDhJ+HzfVk/6g=;
        b=5LH/9Yy1GvOWl4TuduxhlhnOpxDAm800GzzqUFOz+CkamJejuudQQNH0uD68Yff+Px
         LUWqSr07Oz2gSVnw6jVTJs851GHeKJpiptrCefGeVkzGCk0c4vWIrPDftOPA5aaLk2Rk
         1GSQneLvBjo4oYqVjsZbhI5f9mlh4ShwbddE62y6OK5M6yZlTAsYk2uXWmb914cerqZx
         pbj/m0pUhFv3aWiIN2MpgZ549fZVgIu5NJVUUsl+eeCN1mS2DKC+N20fsIDeXKcERESn
         2LEtRajIIIYsSio7sKVSflTXnfdDV8da5BO7/bf6KDyZ/JUOdSx5NOH+hIol/67wWGtf
         jGYg==
X-Gm-Message-State: AJIora8iFOuFjLq7lA1MRQIUQIR1pGQDJb+On6jmXTGPgQir8s5IaD1E
	6+cBUTEc1rM0UzLZpAugp00=
X-Google-Smtp-Source: AGRyM1sNnU8kvbjg71F6khZEhLkKZgus/OBS29ebeSs4SdVeysnZe5gzJfSaAqFjAwS9j94LpWwMSA==
X-Received: by 2002:a5d:4d41:0:b0:21e:a5e3:cb9b with SMTP id a1-20020a5d4d41000000b0021ea5e3cb9bmr8316487wru.523.1659017833077;
        Thu, 28 Jul 2022 07:17:13 -0700 (PDT)
Received: from [10.33.0.214] ([193.145.14.195])
        by smtp.gmail.com with ESMTPSA id s16-20020a5d4250000000b0021edf1c18b5sm1080510wrr.93.2022.07.28.07.17.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 07:17:12 -0700 (PDT)
Message-ID: <4fe95de3-ea01-0c59-04ce-a2d635f5dd2f@gmail.com>
Date: Thu, 28 Jul 2022 16:17:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
References: <dcdd176b-83bc-e4e4-0108-c0764738e0fb@gmail.com>
 <c9dd3975-7fc0-13f3-8cea-6591bc6ad687@gmail.com>
From: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>
In-Reply-To: <c9dd3975-7fc0-13f3-8cea-6591bc6ad687@gmail.com>
Message-ID-Hash: Z3OC2Y4WNSUN446JFR5CQKDS6UFOH3GF
X-Message-ID-Hash: Z3OC2Y4WNSUN446JFR5CQKDS6UFOH3GF
X-MailFrom: giuseppe.santaromita1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [WARNING] [MPM.RPCServer] A timeout event occured!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z3OC2Y4WNSUN446JFR5CQKDS6UFOH3GF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

WWVzLCBidXQgdGhlIGxpbmsgc3RpbGwgZG9lc24ndCB3b3JrLCBhbmQgSSB0aGluayBpdCdzIGEg
VVNSUCBwcm9ibGVtLg0KDQpUbyBjaGVjayB3aGV0aGVyIHRoZSBVU1JQIGlzIHdvcmtpbmcsIEkg
dGhvdWdodCBJIHdvdWxkIGRvIHRoaXM6DQoNCk4zMTA6IC4vdHhfd2F2ZWZvcm1zIC0tZnJlcSA5
MTVlNiAtLXJhdGUgMTUuMzZlNiAtLWdhaW4gNDAgLS13YXZlLXR5cGUgDQpSQU1QIC0td2F2ZS1m
cmVxIDVlNg0KDQpCMjEwOiBzdWRvIC4vcnhfYXNjaWlfYXJ0X2RmdCAtLWZyZXEgOThlNiAtLXJh
dGUgMTUuMzZlNiAtLWdhaW4gMjAgLS1idyANCjVlNiAtLXJlZi1sdmwgLTYwIC0tYXJncyAic2Vy
aWFsPTMxNzIyQ0YiDQoNCkkgZG9uJ3Qgc2VlIGFueXRoaW5nIGluIHRoZSBzcGVjdHJ1bS4NCg0K
SWwgMjcvNy8yMiAxNDozOSwgTWFyY3VzIEQuIExlZWNoIGhhIHNjcml0dG86DQo+IE9uIDIwMjIt
MDctMjYgMTk6MzUsIEdpdXNlcHBlIFNhbnRhcm9taXRhIHdyb3RlOg0KPj4gRGVhciBjb21tdW5p
dHksDQo+Pg0KPj4gSSBhbSB0cnlpbmcgdG8gdXNlIE9wZW5BaXJJbnRlcmZhY2Ugd2l0aCBhbiBO
MzEwIGFzIGdOQi4gSSBhbSB3cml0aW5nIA0KPj4gb24gdGhpcyBtYWlsIGxpc3QgYmVjYXVzZSBJ
IHRoaW5rIG15IHByb2JsZW0gaXMgY2F1c2VkIGJ5IHRoZSANCj4+IGNvbmZpZ3VyYXRpb24gb2Yg
dGhlIE4zMTAuDQo+Pg0KPj4gV2hlbiBJIHJ1biB0aGUgTjMxMCBJIGdldCB2YXJpYWJsZSBlcnJv
cnMuIFdoZW4gSSBydW4gaXQgZm9yIHRoZSANCj4+IGZpcnN0IHRpbWUgYWZ0ZXIgYSBsb25nIHRp
bWUgSSBnZXQgbm8gZXJyb3JzLg0KPj4NCj4+IEJ1dCB3aGVuIEkgcnVuIGl0IGFmdGVyIGEgc2hv
cnQgdGltZSBJIGdldCB0aGVzZSB3YXJuaW5ncyBhbmQgZXJyb3JzIA0KPj4gKG5vdCBhbHdheXMg
YWxsIG9mIHRoZW0pOg0KPj4NCj4+IFtXQVJOSU5HXSBbTVBNLlJQQ1NlcnZlcl0gU29tZW9uZSB0
cmllZCB0byBjbGFpbSB0aGlzIGRldmljZSBhZ2FpbiANCj4+IChGcm9tOiAxOTIuMTY4LjIwLjEp
DQo+PiBbV0FSTklOR10gW01QTS5SUENTZXJ2ZXJdIEEgdGltZW91dCBldmVudCBvY2N1cmVkIQ0K
Pj4gW1dBUk5JTkddIFtSRk5PQzo6R1JBUEhdIE9uZSBvciBtb3JlIGJsb2NrcyB0aW1lZCBvdXQg
ZHVyaW5nIGZsdXNoIQ0KPj4NCj4+IHRlcm1pbmF0ZSBjYWxsZWQgYWZ0ZXIgdGhyb3dpbmcgYW4g
aW5zdGFuY2Ugb2YgJ3VoZDo6cnVudGltZV9lcnJvcicNCj4+IMKgIHdoYXQoKTrCoCBSdW50aW1l
RXJyb3I6IHJ4IHhwb3J0IHRpbWVkIG91dCBnZXR0aW5nIGEgcmVzcG9uc2UgZnJvbSANCj4+IG1n
bXRfcG9ydGFsDQo+PiBBYm9ydGVkDQo+Pg0KPj4gQW5kIHRoZXNlIGFyZSBqdXN0IGEgZmV3IGV4
YW1wbGVzLg0KPj4NCj4+IEkgY291bGQgdGhpbmsgb2YgaWdub3JpbmcgdGhlbSwgdXNpbmcgdGhl
IE4zMTAgb25seSBhIGZldyBtaW51dGVzIA0KPj4gYWZ0ZXIgdGhlIHByZXZpb3VzIHVzZS4gVGhl
IHByb2JsZW0gaXMgdGhhdCB0aGUgZGV2aWNlIGRvZXMgbm90IHNlZW0gDQo+PiB0byB0cmFuc21p
dCBhbnl0aGluZyBvdmVyIHRoZSBhaXIsIGV2ZW4gb24gdGhlIGZpcnN0IHRyeS4gSSBzYXkgdGhp
cyANCj4+IGJlY2F1c2UgdXNpbmcgdGhlIHNhbWUgY29uZmlndXJhdGlvbiBmaWxlIHRoYXQgSSB1
c2Ugd2l0aCBhIEIyMTAgdGhlIA0KPj4gZ05CIGRvZXMgbm90IHdvcmssIHdoaWxlIHdpdGggdGhl
IEIyMTAgaXQgd29ya3MgYW5kIEkgY2FuIGNvbm5lY3QgdGhlIA0KPj4gc21hdGhwaG9uZS4NCj4+
DQo+PiBJIGF0dGFjaCB0aGUgbG9nIGZpbGUgb2YgT3BlckFpckludGVyZmFjZS4NCj4+DQo+PiBB
bHNvLCBJIGZyZXF1ZW50bHkgZ2V0IHRoZSBjbGFzc2ljICJMIiBpbmRpY2F0aW5nIG92ZXJmbG93
IGFmdGVyIA0KPj4gYWJvdXQgdGVuIHNlY29uZHMuDQo+Pg0KPj4gSSBoYXZlIHNvbHZlZCBhIHNp
bWlsYXIgcHJvYmxlbSBiZWZvcmUgKEkgcmVwb3J0IGEgcHJldmlvdXMgbWFpbCk6DQo+PiAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0gDQo+Pg0KPj4gSSBpbnN0YWxsZWQgdGhlIFVIRCA0LjEgdmVyc2lv
biBhbmQgZm9sbG93ZWQgdGhpcyB0dXRvcmlhbDogDQo+PiBodHRwczovL2tiLmV0dHVzLmNvbS9V
U1JQX04zMDAvTjMxMC9OMzIwL04zMjFfR2V0dGluZ19TdGFydGVkX0d1aWRlIA0KPj4gZm9yIHVw
ZGF0aW5nIHRoZSBMaW51eCBGaWxlIFN5c3RlbSBhbmQgdXBkYXRpbmcgdGhlIEZQR0EgSW1hZ2Uu
DQo+PiBXaGVuIEkgdHJ5IGEgc2ltcGxlIGV4YW1wbGUgZmlsZToNCj4+IC4vcnhfYXNjaWlfYXJ0
X2RmdCAtLWZyZXEgOThlNiAtLXJhdGUgNWU2IC0tZ2FpbiAyMCAtLWJ3IDVlNiANCj4+IC0tcmVm
LWx2bCAtMzANCj4+IEkgZ2V0IHRoZSBmb2xsb3dpbmcgZXJyb3I6DQo+PiBbV0FSTklOR10gWzAv
UmFkaW8jMF0gc2V0X3J4X2JhbmR3aWR0aCB0YWtlIG5vIGVmZmVjdCBvbiBBRDkzNzEuIA0KPj4g
RGVmYXVsdCBhbmFsb2cgYmFuZHdpZHRoIGlzIDEwME1Ieg0KPj4gSSBjYW5ub3QgZmluZCBhbnkg
dXNlZnVsIGluZm9ybWF0aW9uIG9ubGluZSwgYXBhcnQgZnJvbSB0aGlzIA0KPj4gZGlzY3Vzc2lv
bjogDQo+PiBodHRwczovL3d3dy5tYWlsLWFyY2hpdmUuY29tL3VzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tL21zZzA1NzM1Lmh0bWwgDQo+PiB3aGljaCBkaWQgbm90IGhlbHAgbWUuDQo+PiAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0gDQo+Pg0KPj4NCj4+IEFsdGhvdWdoIGluIHRoZSBmb3J1bSBpdCB3
YXMgdG9sZCB0byBtZSB0aGF0IHRoaXMgd2FzIGp1c3QgYSB3YXJuaW5nLCANCj4+IEkgZml4ZWQg
aXQgYnkgdXBncmFkaW5nIHRoZSB2ZXJzaW9uIG9mIFVIRCB0byA0LjMuDQo+Pg0KPj4gQWxsIHRo
aXMgc3VnZ2VzdHMgdG8gbWUgdGhhdCB0aGVyZSBpcyBzb21ldGhpbmcgbWVzc2VkIHVwIGluIHRo
ZSANCj4+IGluaXRpYWwgc2V0dXAuDQo+Pg0KPj4gRG9lcyBhbnlvbmUgaGF2ZSBhbnkgaWRlYXMg
YW5kIGNhbiBoZWxwIG1lPw0KPj4NCj4gV2hlbiBhbiBhcHBsaWNhdGlvbiB0ZXJtaW5hdGVzIGFi
bm9ybWFsbHksIHRoZSBOMzEwIGRvZXNuJ3QgImtub3ciIA0KPiB0aGF0IHRoZSBhcHBsaWNhdGlv
biBoYXMgImdvbmUgYXdheSIsIGFuZCB0YWtlcyBpdCBhIHdoaWxlIHRvIG5vdGljZSwgDQo+IGFu
ZCByZXNldCBpdHMgaW50ZXJuYWwgc3RhdGUuDQo+IMKgwqAgTWFueSBuZXR3b3JrLWJhc2VkIGFw
cGxpY2F0aW9ucyB0aGF0IHVzZSBjb25uZWN0aW9ubGVzcyBwcm90b2NvbHMgDQo+IGxpa2UgVURQ
IGhhdmUgdGhlIHNhbWUgaXNzdWUsIGV2ZW4gb3V0c2lkZSBvZiB0aGUgU0RSIHVuaXZlcnNlLg0K
Pg0KPiBUaGUgYmFuZHdpZHRoIHdhcm5pbmcgaXMganVzdCBhIHdhcm5pbmcuwqDCoCBJdCB3aWxs
IGhhdmUgbGl0dGxlIHRvIG5vIA0KPiBlZmZlY3Qgb24geW91ciBhcHBsaWNhdGlvbi7CoCBUaGlz
IGhhcyBiZWVuIGV4cGxhaW5lZCBpbiBwcmV2aW91cyBwb3N0cy4NCj4NCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
