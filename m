Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 008B689E7FC
	for <lists+usrp-users@lfdr.de>; Wed, 10 Apr 2024 04:02:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0451E384FFB
	for <lists+usrp-users@lfdr.de>; Tue,  9 Apr 2024 22:02:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1712714527; bh=3gPufV1nXWQ8aF0KuAW9W/p4+dTbeie5WCVZTlJPcKY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=jzb+QMm0KyC8amuiWPl4RDcJ63Td5Vqqw4F/yJUYhkrgMT6wrvjrr8ZH4Aj2F71kp
	 kj9Kmm53K7++qQ6hcVGdrzB+NfmsJef9MES6RSB5aYZ0pn9gCvkcZ8Ld6dzR5/9EB5
	 KJEdcpakleKo3Dv4f1z/6v/FOCx2AibeqSzF03reJL6lM/42CBFeatT9sVlmQUSjtZ
	 ibKYsMZDXUvu1v/HWmw+f0mWUxQot7hC6mj7jpLcslEQxLiOGB9uHal3R8gr1KCRSI
	 beJWsUxJPhEktJ+5dvBZM0XDjutqHwiFUL+LViXUABW3E1HtpSXRkLuBvhk5C5A63n
	 tp/1hQ1qUTxHQ==
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 9AEBC384FE1
	for <usrp-users@lists.ettus.com>; Tue,  9 Apr 2024 22:01:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hIgjP7vW";
	dkim-atps=neutral
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-6ea2436de79so951306a34.1
        for <usrp-users@lists.ettus.com>; Tue, 09 Apr 2024 19:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712714492; x=1713319292; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uqJahDWWQcTe9iMfNearEE/3Twy37wwrQDCVrozkfME=;
        b=hIgjP7vWDd6Sa1JPPNCVy/nnAaKx5E+kmgeCEsxqQmqEk90/GeUvdnEZrq/Bqn2wvr
         6g3HSrXjxmGrlZyFHMm5XP8kDD26dDetCSeJ6+V8tMsmMN6HI2BKmvXi3UbaMho2cWvd
         7Sc8DxkD0y8RhQrI69YVBM5GT/vAlQPua3mUqlJDCrAilVEYylGsoyXEdnO6QivDfPTW
         E7BNUtEe0Bdv5HoRNpVbw38hckmsfs+c5Nts3Yka0QjoAimeK2fR4VhM5QawID7uI9hA
         oWux8r9piHfI5XVB0OKiOiIxmpTQEtF+aNVWnOnCMYA8ILUxYrIpQO737NovPN+DHgFM
         KjMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712714492; x=1713319292;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uqJahDWWQcTe9iMfNearEE/3Twy37wwrQDCVrozkfME=;
        b=AZxKEEc9cJssIMGpRNctgWeDyH1JrrgCTxd+SzrSCv01CRnqWMEiO3RV4urgm1PP1t
         Ct/yABijBd1khHeNN7eEAJiyvIyGgT/K9MulA95+oQjf58xmCXK5D3ALT5PgIM2zF3zp
         4Eetz4e8JUyWahEboy2eTIjRu2igABUT8nFNMnBGHE8S1qawIoVfktl7+nw5tdkRJ3Mz
         MIEsdVDGk5m8v3kdofp8JC3OBx/YI97bR4oxwd7vzhHqaVOe9jA3ucItJIwpbFwEykqW
         EaLJjKXF5mnx9/r9qZ2LN0b1CNzI+1EQ44UP7v6wlNq9dDq5+ZPRqjRafVyftp232IqV
         kR+A==
X-Gm-Message-State: AOJu0Yz6ZDEL4B8tHcfLfOQzC2feOWbqHg8ziz6E1PpwHtj63mEXpHn8
	J2aLpRIiO831pj7iQ09MfePTfFIOLgjdgsuq7I5f8x/s9MIPUtb9iFz4AxbS
X-Google-Smtp-Source: AGHT+IE1Pk9GNAn1Js9u2BbcBjn3KzYaa3GY5ejwbSYhx+kN7pW/gxKYGDUdaETlHhgRhRpeuO4b5Q==
X-Received: by 2002:a05:6808:2907:b0:3c5:f872:aef with SMTP id ev7-20020a056808290700b003c5f8720aefmr1449790oib.55.1712714491596;
        Tue, 09 Apr 2024 19:01:31 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-156.dsl.bell.ca. [174.93.0.156])
        by smtp.googlemail.com with ESMTPSA id b11-20020a05620a088b00b0078d3b54eb76sm4636725qka.78.2024.04.09.19.01.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Apr 2024 19:01:31 -0700 (PDT)
Message-ID: <94eb78b8-6ea4-4e04-86d1-918b3b5c1d65@gmail.com>
Date: Tue, 9 Apr 2024 22:01:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <d506d310-c2e3-43b4-8ae2-515205e3e19b@saloits.com>
 <a27c6b04-4e97-461a-b0ca-c771bf29d90d@febo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <a27c6b04-4e97-461a-b0ca-c771bf29d90d@febo.com>
Message-ID-Hash: 7VFR36IEBBZCYC4OSEGNCKG3BULTBFRX
X-Message-ID-Hash: 7VFR36IEBBZCYC4OSEGNCKG3BULTBFRX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 Frequency Stability versus Frequency Accuracy
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7VFR36IEBBZCYC4OSEGNCKG3BULTBFRX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDkvMDQvMjAyNCAyMTo0OCwgSm9obiBBY2tlcm1hbm4gTjhVUiB2aWEgVVNSUC11c2VycyB3
cm90ZToNCj4gSSdtIG5vdCBzdXJlIGFib3V0IHRoaXMgcGFydGljdWxhciB1bml0LCBidXQgdHlw
aWNhbGx5IGlmIGEgY3J5c3RhbCANCj4gb3NjaWxsYXRvciBkYXRhc2hlZXQgbGlzdHMgYW4gImFj
Y3VyYWN5IiBzcGVjaWZpY2F0aW9uLCB0aGF0IGlzIG92ZXIgYSANCj4gdGltZSBwZXJpb2QgdGhh
dCB0YWtlcyBpbnRvIGFjY291bnQgdGhlIGxvbmctdGVybSBmcmVxdWVuY3kgZHJpZnQgDQo+ICgi
YWdpbmciKSB0aGF0IGFmZmVjdHMgYWxtb3N0IGFsbCBvc2NpbGxhdG9ycy7CoCBTb21ldGltZXMg
dGhlIGFjY3VyYWN5IA0KPiBpcyBzcGVjaWZpZWQgb3ZlciBhIHBlcmlvZCBvZiB5ZWFycywgZXNw
ZWNpYWxseSBpZiB0aGUgb3NjaWxsYXRvciANCj4gZG9lc24ndCBoYXZlIGEgZnJlcXVlbmN5IGFk
anVzdG1lbnQgaW5wdXQuwqAgSW4gb3NjaWxsYXRvcnMgdGhhdCBjYW4gYmUgDQo+IHR3ZWFrZWQs
IGl0IG1pZ2h0IGJlIHN0YXRlZCBhcyBhbiBhZ2luZyByYXRlIG9mIHNvbWUgdmFsdWUgcGVyIGRh
eSwgDQo+IHdlZWssIG9yIG1vbnRoLg0KPg0KPiBJbiBpbmV4cGVuc2l2ZSBvc2NpbGxhdG9ycywg
dGhlICJzdGFiaWxpdHkiIG51bWJlciB1c3VhbGx5IHJlZmVycyB0byANCj4gc2hvcnQtdGVybSBj
aGFuZ2UgZHVlIHRvIHRlbXBlcmF0dXJlIGFuZCBvdGhlciBlbnZpcm9ubWVudGFsIGZhY3RvcnMu
IA0KPiBJbiBtb3JlIGV4cGVuc2l2ZSBvc2NpbGxhdG9ycywgc3RhYmlsaXR5IGlzIHVzdWFsbHkg
c3BlY2lmaWVkIG92ZXIgDQo+IHZhcmlvdXMgYXZlcmFnaW5nIGludGVydmFscywgc2F5IGZyb20g
MSBzZWNvbmQgdG8gMTBLIHNlY29uZHMuDQo+DQo+IFNvbWV0aW1lcyBhY2N1cmFjeSBpcyBhbHNv
IGV4cHJlc3NlZCBhcyBhIGNvbWJpbmF0aW9uIG9mIHRpbWUgYW5kIA0KPiB0ZW1wZXJhdHVyZSBy
YW5nZSwgd2hpY2ggZ2l2ZXMgdGhlIG1vc3QgY29uc2VydmF0aXZlIHJlc3VsdC4NCj4NCj4gSm9o
bg0KPiAtLS0tDQpTZWUgYWxzbyBBbGxlbiBEZXZpYXRpb24gcGxvdHMuLi4uDQoNCg0KPg0KPiBP
biA0LzkvMjQgMjE6MTksIFRpbW90aHkgSi4gU2FsbyB2aWEgVVNSUC11c2VycyB3cm90ZToNCj4+
IEhpLA0KPj4NCj4+IEknbSB3cml0aW5nIGEgIkdldHRpbmcgU3RhcnRlZCIgZ3VpZGUgZm9yIG91
ciByZXNlYXJjaCBncm91cC4gV2hlbiBJDQo+PiBnb3QgdG8gdGhlIEdQU0RPIHNlY3Rpb24sIEkg
aGFkIGRpZmZpY3VsdHkgaW4gZmlndXJpbmcgb3V0IHRoZSBmcmVxdWVuY3kNCj4+IHN0YWJpbGl0
eSBhbmQgdGhlIGZyZXF1ZW5jeSBhY2N1cmFjeSBvZiB0aGUgQjIxMC4NCj4+DQo+PiBBdCBsZWFz
dCB0aGUgZWFybHkgdmVyc2lvbnMgb2YgdGhlIEIyMTAgdXNlZCBhIENUUyBFbGVjdHJvbmljIENv
bXBvbmVudHMNCj4+IDUyMEwyMERBNDBNMDAwMCBUQ1hPLsKgIFRoZSBkYXRhc2hlZXQgZm9yIHRo
aXMgVENYTyBzYXlzIGl0IGhhcyBhDQo+PiBmcmVxdWVuY3kgX3N0YWJpbGl0eV8gb2YgKy8tIDIu
MCBwcG0gb3ZlciBhbiBvcGVyYXRpbmcgdGVtcGVyYXR1cmUgcmFuZ2UNCj4+IG9mIC0zMEMgLSAr
ODVDLg0KPj4NCj4+IFRoZSBDVFMgd2Vic2l0ZSBzdGF0ZXMgdGhhdCB0aGVpciBUQ1hPIGV4aGli
aXQ6ICJTdHJhdHVtIDMgUGVyZm9ybWFuY2U7DQo+PiDCsTQuNnBwbSBvdmVyYWxsLCDCsTAuMjhw
cG0gb3ZlciAtNDDCsEMgdG8gKzg1wrBDIi7CoCBBbSBJIGNvcnJlY3QgaW4NCj4+IGNvbmNsdWRp
bmcgdGhhdCB0aGlzIGlzIHRoZSBmcmVxdWVuY3kgX2FjY3VyYWN5XyBvZiB0aGUgVENYTyB1c2Vk
IGluDQo+PiB0aGUgQjIxMD/CoCBEb2VzIHRoaXMgdHJhbnNsYXRlIGRpcmVjdGx5IGludG8gdGhl
IGZyZXF1ZW5jeSBfYWNjdXJhY3lfDQo+PiBvZiB0aGUgQjIxMD8NCj4+DQo+PiBUaGUgQjIxMCBk
YXRhc2hlZXQgc3RhdGVzIGEgZnJlcXVlbmN5IF9hY2N1cmFjeV8gb2YgKy8tIDIuMCBwcG0uwqAg
SXMNCj4+IGlzIGEgdHlwbywgYW5kIHNob3VsZCB0aGUgZGF0YXNoZWV0IGFjdHVhbGx5IHNheSBm
cmVxdWVuY3kgX3N0YWJpbGl0eV8/DQo+PiBPciwgZGlkIHNvbWVvbmUgY29uY2x1ZGUgdGhhdCBv
dmVyIGEgcmVhc29uYWJsZSBvcGVyYXRpbmcgdGVtcGVyYXR1cmUsDQo+PiB0aGUgZWZmZWN0cyBv
ZiB0ZW1wZXJhdHVyZSBvdXR3ZWlnaCBhbnkgaW5hY2N1cmFjeSBpbiB0aGUgZnJlcXVlbmN5DQo+
PiBvZiB0aGUgVENYTz8NCj4+DQo+PiBBbmVjZG90YWxseSwgSSBoYXZlIGhlYXJkIHRoYXQgb25l
IG9yZ2FuaXphdGlvbiBmb3VuZCB0aGF0IHRocmVlIG9mDQo+PiB0aGVpciBmb3VyIEIyMTBzLCB3
aGVuIG9wZXJhdGluZyBhcyBhIDVHIGJhc2Ugc3RhdGlvbiwgd2VyZSB1bmFibGUNCj4+IHRvIGNv
bm5lY3Qgd2l0aCBjb21tZXJjaWFsIG9mZi10aGUtc2hlbGYgY2VsbHVsYXIgaGFuZHNldHMsIHVu
bGVzcw0KPj4gYW4gZXh0ZXJuYWwgR1BTRE8gd2FzIHVzZWQgd2l0aCB0aGUgQjIxMC7CoCBEb2Vz
IGFueW9uZSBoYXZlIGFueSBpZGVhDQo+PiB3aGF0IGZyZXF1ZW5jeSBhY2N1cmFjeSBpcyBleHBl
Y3RlZCBieSBjZWxsdWxhciBoYW5kc2V0cz8NCj4+DQo+PiBTbywgZG9lcyBhbnlvbmUga25vdyB3
aGF0IHRoZSBmcmVxdWVuY3kgX2FjY3VyYWN5XyBvZiB0aGUgQjIxMCBpcywgaW4NCj4+IHRoZSBh
YnNlbmNlIG9mIGEgR1BTRE8/wqAgT3IsIHNob3VsZCBJIGp1c3QgdXNlIHRoZSArLzEgMi4wIHBw
bSBmaWd1cmU/DQo+Pg0KPj4gVGhhbmtzLA0KPj4NCj4+IC10anMNCj4+IC0gLSAtIC0NCj4+DQo+
PiBbMV0gDQo+PiBodHRwczovL3d3dy5jdHNjb3JwLmNvbS9GaWxlcy9EYXRhU2hlZXRzL1Bhc3Np
dmVzL0ZDUC9UQ1hPL1RDWE8tNTIwLWRhdGFzaGVldC5wZGYNCj4+DQo+Pg0KPj4NCj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4gVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMu
Y29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
