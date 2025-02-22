Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF83A40596
	for <lists+usrp-users@lfdr.de>; Sat, 22 Feb 2025 06:10:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E3D2385A5E
	for <lists+usrp-users@lfdr.de>; Sat, 22 Feb 2025 00:10:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740201016; bh=gvtnCakosWNdiYVNgPzDEixAT7aL5H27qopTZkugHkc=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=iL087BWcX0k6GISbvmb81gSKQUSTAzOJvght9ZtDYNzQxu8NGYM3y4RbH01ZZ2giK
	 MR/zm0MU+Scom70BhgOU+6RB6O7ENw2SAOWsz5Rv1Ap0ZTPdxtdiqjkt4B/HVR/oVV
	 vw1ZtEc+r6tzh1KN35CBdiwcgWroFUI01EW3Hk4nUTGjiFjSFT6Z1MhurthSORP5NW
	 +tjZ97Ary+YEl35P2ynknBTwBF+D5QFRx5wC9epfPVKzq/bzmO7i6IRsE6lgEpEvEc
	 X+tvIKmbOJ11c6zULEsNmOmt5d0aef198zRPJeguC+KAIZAP/to6JLf+uua1mm9toB
	 oj8mGuLAb0+tw==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id AA8BB3841D1
	for <usrp-users@lists.ettus.com>; Sat, 22 Feb 2025 00:10:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AJ1KYt9r";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7c0a1677aebso269124585a.0
        for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 21:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740201011; x=1740805811; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TrWONk1AID0AFDvn6Wiiw9b/xnHo3Jc/8VUKpwV4H+M=;
        b=AJ1KYt9rUWSvQJHxRMhxVLwhqNbgIn0NqpIBMTV60Q+DgQcjqHKvZtuvg9uKYJyUR3
         F0shUQXLwNwVlQlH2zzhgKaHHNueeXWHib3aGVgHt7C8wwXT+dKwGkHk59/8nSIn6Qwe
         /JmwwAUuid055tNosI79t6kctBndQ7z+5TkPuCT1D3HMTK1rkMvFyEU4c+3GSMBTFv3W
         RKTTRLtrn30ORZFbOSZ4TwzMn+nwliJINw7BBh8jmlIR3cKSxreNLeJDnHU0G5Nhs1Wh
         F7zVVz8Th8IQR42+ZfJwx7iOWTPSebl0K2YY3pEsPy2bLPrdfYNGW5kJ3f5FFBNBk1Pn
         gIzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740201011; x=1740805811;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TrWONk1AID0AFDvn6Wiiw9b/xnHo3Jc/8VUKpwV4H+M=;
        b=Mav2I4UHG0gPSNrHvf2KT6fixQGazVrPZ1CdmgN9A5iQu3Ngq7nZxn/jM/1aEY1Wsz
         2wGkMKFWBwOtPKnR2CfTO1F38yG65y2gHO2Ze4wRDJoXyfdJh7BbxqRDXwZP+tZYeFu1
         +3zY2a3BVD/dDPoZk8vQggQ6s2/d6B/QpKpo4Ws5L5DsrSCUq5K4ClyCaK3UoW9vj3sa
         4vvVQcYNnGykZ9xeoWWAPsIBt+AsWctpyQTVD6Y/Ed9/kXmk/oBVlmGiG4rNuTWsK1fk
         tlXm1067empnga7Jd2hnSBBKIPSZvo5ikkT555R28gRTDxqNcTcNFcp7goEuyNLl8/9X
         NtPA==
X-Gm-Message-State: AOJu0YwiIPoqhqXhAwiOCau6/hVqsdphd6CWTcm3HiZTgacgpNQR5a1Z
	HsUPBPg6/x6S8rLpJ1SDOeFqrLd46W+jF06wrwgVYMVMPajyogf4/6OXOdAm
X-Gm-Gg: ASbGncvT6LvUGITJ+73ocaVeAkNDVWK7DkSULnw8rDoDSYsWY3G90pfhlSMqJfvgpPg
	d2pnK3nNjTdDengk6um7kRQKg8R7w8MRwZ7HmIdmc+zqlqoTp9NwhgBzqmcq7RtxzsGRlziV/9C
	5PhAoiR/i3+Yz707zgUVxJGaj3fYN1iy7PV/ZzwZsrS6G2ghs3VIb13tQJ9z7Nlu6FcO24ha9OK
	y7uRpW+H9r1/kV17TSrmmQuVyHRwhc50wQHQXj6FTFfaFNhSwUNV5PtVK/c5jaK1f4MJk1Z7ALa
	GjlLidaavykLtoZm3FrAJTTwW1Iw6z+F5n2iKXSX/310x4NqrlpBbNbcJnGQKHpQT0zoBF397bf
	BwDWkEN0cAp/Eqmh8GCHVFbWP
X-Google-Smtp-Source: AGHT+IFZqn7ldQqZv0vRer/7eyHcCEjWXTxpNog5kBk7fEIh3plysMxRZd1erzzjHv7PI3REuvrMUQ==
X-Received: by 2002:a05:620a:4883:b0:7c0:b523:e1ba with SMTP id af79cd13be357-7c0cf953f36mr721696185a.45.1740201010952;
        Fri, 21 Feb 2025 21:10:10 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-20-142-115-37-13.dsl.bell.ca. [142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c07c86e52csm1112270385a.90.2025.02.21.21.10.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 21:10:09 -0800 (PST)
Message-ID: <5bf8be31-6416-4f54-b93e-b5fb021fe01e@gmail.com>
Date: Sat, 22 Feb 2025 00:10:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: kavinraj@atindriya.co.in
References: <4bf5c92ac30f933582427d87157a88c1@atindriya.co.in>
 <756c5135-0f06-4085-8bbb-ac5793b96e21@gmail.com>
 <1936f8facaa71cf7a2c6312aacbcdb42@atindriya.co.in>
 <9458cc31-7a51-4259-9bd3-9352749b6964@gmail.com>
 <1dc1550af10e8946b5157262cb57120b@atindriya.co.in>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1dc1550af10e8946b5157262cb57120b@atindriya.co.in>
Message-ID-Hash: D3O73UJLZWEQXRTU3STZ6HH2H6XLDPA3
X-Message-ID-Hash: D3O73UJLZWEQXRTU3STZ6HH2H6XLDPA3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : GPIO in USRP B205Mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D3O73UJLZWEQXRTU3STZ6HH2H6XLDPA3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjEvMDIvMjAyNSAyMzo1Niwga2F2aW5yYWpAYXRpbmRyaXlhLmNvLmluIHdyb3RlOg0KPiBI
aSwNCj4gwqAgQ2FuIEkgdXNlIHVzbGVlcCgxKSBvciBhbnkgb3RoZXIgdGVjaG5pcXVlIGlzIHRo
ZXJlIGZvciBHUElPIC4NCj4NCllvdSBtaWdodCBiZSBhYmxlIHRvIHVzZSB0aW1lZCBjb21tYW5k
czoNCg0KaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfdGltZWRjbWRzLmh0bWwj
dGltZWRjbWRzX2dlbl9jbWRzDQoNCkJ1dCBzaW5jZSB1c2xlZXAoKSBjYW5ub3QgZ3VhcmFudGVl
IGFueSBraW5kIG9mIG1heGltdW0gcGVyaW9kIHRoYXQgeW91ciANCnByb2Nlc3Mgd2lsbCBnbyB0
byBzbGVlcCwgaXQgaXMgYW4gdW5yZWxpYWJsZQ0KIMKgIG1ldGhvZCB3aGVuIHByZWNpc2lvbiBh
bmQgcmVwZWF0YWJsZSB0aW1pbmcgb2YgQU5ZIGtpbmQgb2YgImRvaW5nIA0Kc3R1ZmYgd2l0aCBl
eHRlcm5hbCBoYXJkd2FyZSIgaXMgcmVxdWlyZWQuwqAgRXZlbiBpZg0KIMKgIHVzbGVlcCgpIGF0
IG1pY3Jvc2Vjb25kLXNjYWxlIGludGVydmFscyAqV0FTKiByZWxpYWJsZSBhbmQgDQpyZXBlYXRh
YmxlLCB0aGVyZSdzIG5vIGd1YXJhbnRlZSBhYm91dCBhbGwgdGhlICpvdGhlciogdGhpbmdzDQog
wqAgdGhhdCBhcmUgcmVxdWlyZWQgdG8gbGF1bmNoIGEgY29tbWFuZCBvdmVyIGEgbGF0ZW5jeS1u
b3QtZ3VhcmFudGVlZCANCmJ1cyB0byB0aGUgZXh0ZXJuYWwgaGFyZHdhcmUsIGluY2x1ZGluZyBr
ZXJuZWwtbGF5ZXINCiDCoCBVU0IgZHJpdmVycywgZXRjLCBldGMuDQoNCg0KPg0KPiBPbiAyMDI1
LTAyLTIxIDIzOjM3LCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6DQo+PiBPbiAyMS8wMi8yMDI1IDIz
OjIyLCBrYXZpbnJhakBhdGluZHJpeWEuY28uaW4gd3JvdGU6DQo+Pj4gSGksDQo+Pj4gwqBUaGFu
a3MgZm9yIGFuc3dlcmluZy4NCj4+PiDCoENhbiB5b3UgZXhwbGFpbiBtZSBjbGVhcmx5Pw0KPj4+
DQo+Pj4gVGhhbmtzLg0KPj4gSSdkIHN1Z2dlc3QsIGF0IGEgbWluaW11bSwgbG9va2luZyBhdCB0
aGUgTUFOIHBhZ2UgZm9yIHVzbGVlcCgpLg0KPj4NCj4+DQo+Pj4NCj4+Pg0KPj4+DQo+Pj4gT24g
MjAyNS0wMi0yMSAyMzoxMSwgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPj4+PiBPbiAyMS8wMi8y
MDI1IDIzOjA1LCBrYXZpbnJhakBhdGluZHJpeWEuY28uaW4gd3JvdGU6DQo+Pj4+PiBIaSwNCj4+
Pj4+IMKgwqAgSW4gVVNSUCBCMjA1bWluaS1pIEkgYW0gYWJsZSB0byBhY2Nlc3MgdGhlIEdQSU8g
UGluLiBJIGhhdmUgdG8gDQo+Pj4+PiBjcmVhdGUgYSBQdWxzZSBpbiB0aGUgR1BJTyBwaW4uIEkg
d2FudCB0byBtYWtlIGhpZ2ggdGhlIGdwaW8gcGluIA0KPj4+Pj4gZm9yIDFtaWNyb3NlY29uZCBh
bmQgbG93IGZvciA5OTltaWNyb3NlY29uZHMuIEhvdyB0byBhY2hpZXZlIHRoaXMgDQo+Pj4+PiB0
aW1pbmdzIHRocm91Z2ggY29kaW5nLiBDYW4geW91IGdpdmUgbWUgdGhlIHNvbHV0aW9uIGZvciB0
aGlzPw0KPj4+Pj4NCj4+Pj4+IMKgwqAgSW4gY29kaW5nIGFmdGVyIG1ha2luZyBoaWdoIEkgYW0g
Z2l2aW5nIHVzbGVlcCgxKSBmdW5jdGlvbiBidXQgDQo+Pj4+PiB3aGVuIEkgYW0gY2hlY2sgaW4g
dGhlIG9zY2lsbG9zY29wZSBpdCBpcyBzaG93aW5nIDY0bWljcm9zZWNvbmRzLiANCj4+Pj4+IEhv
dz8NCj4+Pj4+DQo+Pj4+Pg0KPj4+PiBCZWNhdXNlIGFuIGFwcGxpY2F0aW9uLWxhbmQgcHJvZ3Jh
bSBleGVjdXRpbmcgb24gYW4gb3JkaW5hcnkgDQo+Pj4+IGdlbmVyYWwtcHVycG9zZSBvcGVyYXRp
bmcgc3lzdGVtIGlzIHVubGlrZWx5IHRvIGJlIGFibGUgdG8NCj4+Pj4gwqAgYWNoaWV2ZSByZXBl
YXRhYmxlLCAxdXNlYy1zY2FsZSB0aW1pbmcuwqAgVGhpcyBoYXMgbm90aGluZyB0byBkbywgDQo+
Pj4+IHBlciBzZSwgd2l0aCBVSEQgb3IgVVNSUHMsIGJ1dCByYXRoZXIsIHRvIHVuZGVyc3RhbmRp
bmcNCj4+Pj4gwqAgaG93IGFwcGxpY2F0aW9ucyBleGVjdXRlIGluIGEgZ2VuZXJhbC1wdXJwb3Nl
IG9wZXJhdGluZyBzeXN0ZW0gDQo+Pj4+IHRoYXQgaXNuJ3QgcnV0aGxlc3NseSBvcHRpbWl6ZWQg
Zm9yICJoYXJkIiByZWFsLXRpbWUgdGFza3MuDQo+Pj4+DQo+Pj4+DQo+Pj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+Pj4+IFVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+Pj4+IFRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4gVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
