Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6407A4A82
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 15:13:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28227385258
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 09:13:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695042829; bh=ll0p8s66Rr3rDilFt+IK+e/SviYSdh4uDJwEBWzvfTA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WkBt/xeCCjEwk9zYAeH39o5rf9vZhlMcroosweVS03dSV5B98+VmIF0SvoUcpMbMB
	 /g8RtOWZpLcvRh442/n5bRq+CFl0x0r8j2MmCEHNYPKKMKws03IYYyGQDBE1L8ovE5
	 joYl7JIYrDTIvDQXSmDIfHb6ovTjDyrOKAu9jB552lcZpWQoP/Plbx82xZFacg9jvb
	 8lI10rQm1cxBcT5B7HALvwaCgXyUqjwGVqx84xUsJlXgmf8uCZG/0csML2UNgWDiXE
	 655QsjLqnvbDmjv3j1EJ9ZPGaHdWfTSnPgprFxg+/UqSsjmWMc+DkD5/d2MW37bXom
	 kFozMGM4C11OQ==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 30ABF385209
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 09:13:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KLoJJPvJ";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-770ef0da4c2so294544585a.3
        for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 06:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695042813; x=1695647613; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vR4rVZAtiahg+kp0/ROQQgg6cGkNuyJDac1jZadny7s=;
        b=KLoJJPvJGzgOuXU0KiCvpbZXqfLCpU4suXlpurQEOKMWNT/wsNRBEoAPxT9Z3nfk54
         EFdexJNTpETDg9ADjvo5ZPBboqHn0GDeC/yqa2QLUM2Ms5yve2RvzCwmG5mINWd7q+IK
         D/ZDKZywc9wLBCvZDiQv44nmstqZ3gcWb4S4t8s0jBhUNK2+IhDOJgDERJE1yTZXSPak
         uhMDsmfnxwXQwsCczYgSoWjQq5Zs+dfxvbUbE+dEohJXsqYVlkwB0X9mmWCmwaJHf+Vb
         X5Kjc336zyaJ7bUFvmzcVQXmeEjE77rShOb7/nzqN7F49SeAkqgpdPfctkf4NRq6IZ13
         bGdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695042813; x=1695647613;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vR4rVZAtiahg+kp0/ROQQgg6cGkNuyJDac1jZadny7s=;
        b=spKQugRsLt8i8FItfat9p8YND+1bnHbyXGStx52zyNP8amlB8fbs5X9OuShrfkWAK1
         Ja+Zc2TOmRFQ/XoWTuFxS/unEnFbA3glqJuxPbuNDYJAtg9xeVPlZi1YRiT9vPtgpNAB
         +Nft12/OjxoX5cb6WxliPqQJYRj4hJ7jkfeRmAkNypnFMZrV85tJNVFJ1y4MJGe66g1x
         QZWKMyIKBvndDHb9g5w8Eg8HWXPRTjO6JU0nnd5KK/RzNWbEjSIAebFypo+9SRNcQriH
         e5NH6bgdP5SEKat6yuuP0gKgYCMBzzCgc7es79BTIomkjPpklgGHGt1R7MDwvX7UKJgg
         34gA==
X-Gm-Message-State: AOJu0YyF6vfQn1Bar62ar6sn0KyTaANw8JI74p36rNcIIolxgPmUPnHz
	z397RFCgerMAJ4GiHzW7Fm+q0os/T/CQaw==
X-Google-Smtp-Source: AGHT+IF4TSeepmt9rqg65wlILge86KsjyumpMR57rsxESywUlJgDB02BxPB2TZEU1UGFM/XZVn/TKg==
X-Received: by 2002:a05:620a:29d3:b0:76e:e68d:14b2 with SMTP id s19-20020a05620a29d300b0076ee68d14b2mr12466381qkp.7.1695042813320;
        Mon, 18 Sep 2023 06:13:33 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id h16-20020a05620a13f000b0076d6a08ac98sm3132831qkl.76.2023.09.18.06.13.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 06:13:32 -0700 (PDT)
Message-ID: <67f923c4-0fdb-e5df-df4b-9005cf555a08@gmail.com>
Date: Mon, 18 Sep 2023 09:13:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <0MTgCvKTtAE5aKjw693syOEp3UF20nZx5XqjlriCZQ@lists.ettus.com>
 <f90f3d5c-8735-5871-8ad4-3f67ff82bbb6@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <f90f3d5c-8735-5871-8ad4-3f67ff82bbb6@ettus.com>
Message-ID-Hash: TGPEE74MELTBFJJHYNWMJH2ATBSBUDRG
X-Message-ID-Hash: TGPEE74MELTBFJJHYNWMJH2ATBSBUDRG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Bypassing_U807_and_U805_=28SKY13335=E2=88=92381LF=29?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TGPEE74MELTBFJJHYNWMJH2ATBSBUDRG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTgvMDkvMjAyMyAwNjoxMSwgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+IEhpIE/En3V6aGFu
LA0KPg0KPiB3ZSBvZiBjb3Vyc2UgaGF2ZW4ndCBydW4gYW55IG1hdGNoaW5nIHRlc3RzIG9uIHdo
YXQgaGFwcGVucyBpbiB0aGF0IA0KPiBieXBhc3MgbW9kZTsgaXQgd291bGQgc3RpbGwgc2VlbSB0
byBtZSB0aGF0IGlmIHlvdSBieXBhc3MgVTgwNSwgeW91J2QgDQo+IHdhbnQgdG8gcmVtb3ZlIHRo
ZSBpbi0gYW5kIG91dHB1dCBjYXBhY2l0b3JzLCBpbmRlZWQuIEknZCBzdHJvbmdseSANCj4gYWR2
aXNlIGFnYWluc3QgZG9pbmcgdGhpcyBtb2RpZmljYXRpb24sIGZvciB0aGUgZm9sbG93aW5nIHRl
Y2huaWNhbCANCj4gcmVhc29uOg0KPg0KPiAyNCB0byAyNyBkQiBpc29sYXRpb24gaXMgaW5kZWVk
IHdoYXQgdGhlIGRhdGFzaGVldCBvZiB0aGUgDQo+IFNLWTEzMzM1LTM4MUxGIHNheXMsIGJ1dCBk
b24ndCBmb3JnZXQgdGhhdCB5b3UgaGF2ZSBhbm90aGVyIDI0IHRvIDI3IA0KPiBkQiBvZiBpc29s
YXRpb24gYmV0d2VlbiBUWCBhbmQgUlggaW4gVTgwNywgYWRkaW5nIHVwIHRvIDQ4IHRvIDU0IGRC
IG9mIA0KPiBpc29sYXRpb24uIFRoYXQncyBpbiB0aGUgc2FtZSBiYWxscGFyayBhcyBjcm9zc3Rh
bGsgdGhyb3VnaCB0aGUgYm9hcmQsIA0KPiBwb3dlciBzdXBwbHksIGFkamFjZW50IHRyYWNlcyBl
dGMuIFRoZSBCMnh4IHdhcyBkZXNpZ25lZCBieSBSRiANCj4gZW5naW5lZXJzIHdobyBraW5kIG9m
IGtuZXcgd2hhdCB0aGV5IHdlcmUgZG9pbmcgOkQNCj4NCj4gU28sIGRvbid0IGV4cGVjdCB0byB3
aW4gbXVjaCBieSByZW1vdmluZyBVODA1LiBFc3BlY2lhbGx5IHBhaXJlZCB3aXRoIA0KPiB0aGUg
ZmFjdCB0aGF0IHdlIGhhdmUgbm8gY2hhcmFjdGVyaXphdGlvbiBvZiBtYXRjaGluZyBpbiB0aGUg
YnlwYXNzZWQgDQo+IG1vZGUsIEknZCBhc3N1bWUgeW91IHJlYWxseSB3b24ndCBlbmQgd2l0aCBh
IGNsZWFuZXIgUlgsIGJ1dCBqdXN0IG1vcmUgDQo+IHByb2JsZW1zDQo+DQo+IEJlc3QsDQo+IE1h
cmN1cw0KPg0KPiBPbiAxOC4wOS4yMyAwODoxMSwgb3V6YW5fdHNAaG90bWFpbC5jb20gd3JvdGU6
DQo+Pg0KPj4gSGVsbG8sIGluIG15IGNhc2UsIHRoZSBmdW5jdGlvbiBwZXJmb3JtZWQgYnkgdGhl
ICJTS1kxMzMzNeKIkjM4MUxGIiBJQyANCj4+IHN3aXRjaCBpcyBub3Qgd29ya2luZyBmb3IgbWUu
IEFuZCBhcyBmYXIgYXMgSSBjYW4gc2VlLCB0aGUgaXNvbGF0aW9uIA0KPj4gb2YgdGhpcyBjb21w
b25lbnQgaXMgbG93ICgyNGRCLTI3ZEIpLiBUaGUgY2FyZCBJIGhhdmUgaXMgQjIwMC4gDQo+PiBT
Y2hlbWF0aWMgQjIxMCBnaXZlbiBpbiB0aGUgbGluayANCj4+ICJodHRwczovL2ZpbGVzLmV0dHVz
LmNvbS9zY2hlbWF0aWNzL2IyMDAvYjIxMC5wZGYiLiBJIHdhbnQgdG8gYnlwYXNzIA0KPj4gdGhp
cyBjb21wb25lbnQuIEFzIGZhciBhcyBJIGNhbiBzZWUsIHRoZXJlIGFyZSBwYWRzIGZvciB0aGlz
IG9uIHRoZSANCj4+IGNhcmQuIEkgdGhpbmsgaXQgaXMgYnlwYXNzZWQgYnkgYWN0aXZhdGluZyBD
ODQ3IGFuZCBDODQ5IGluIHRoZSANCj4+IHJlbGV2YW50IHBhcnQgb2YgdGhlIEIyMTAgc2NoZW1h
dGljIHRoYXQgSSBzZW50IHlvdSBpbiBhdHRhY2htZW50Lg0KPj4NCj4+DQo+Pg0KPj4gVGhlIG1h
aW4gcXVlc3Rpb24gSSB3YW50IHRvIGFzayBpcywgc2hvdWxkIEkgY29ubmVjdCB0aGUgMjIwcEYg
DQo+PiBjYXBhY2l0eSBzZWVuIGluIEM4MTAgdG8gQzg0NywgYW5kIHRoZSA0NzBwRiBjYXBhY2l0
eSBzZWVuIGluIEM4MTQgdG8gDQo+PiBDODQ5PyBPciBzaG91bGQgSSBzaG9ydCBjaXJjdWl0IGRp
cmVjdGx5Pw0KPj4NCj4+DQo+Pg0KPj4gSSBhbSBhd2FyZSBvZiBhbGwgdGhlIHJpc2tzLiBJJ2xs
IGJlIGhhcHB5IGlmIHlvdSBjYW4gaGVscCBtZS4gSGF2ZSBhIA0KPj4gbmljZSBkYXkuDQo+Pg0K
Pj4NCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0K
Pj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tDQpJIHRoaW5rIEknbSBtaXNzaW5nIHNvbWUgY29udGV4dCBoZXJlLsKg
wqAgV2hhdCBpcyB0aGUgZ29hbD8NCg0KSUYgdGhlIGdvYWwgaXMgcmVhbGx5IHJlYWxseSBoaWdo
IFRYL1JYIGlzb2xhdGlvbiwgeW91J3JlIG5vdCBnb2luZyB0byANCmFjaGlldmUgdGhhdCB3aXRo
IHRoaXMgZGVzaWduLsKgIFNpbmNlIHRoZSBUWCBhbmQgUlggc2lnbmFscw0KIMKgIGdvIHRocm91
Z2ggdGhlIEFEOTM2MSBSRiBjaGlwLCB3aGljaCBpcyB0aW55LCB2ZXJ5IGhpZ2ggaXNvbGF0aW9u
IA0Kd2lsbCBuZXZlciBiZSBhY2hpZXZlZC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
