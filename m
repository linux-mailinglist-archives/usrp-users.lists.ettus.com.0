Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1F465901E
	for <lists+usrp-users@lfdr.de>; Thu, 29 Dec 2022 19:05:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9BC2A381206
	for <lists+usrp-users@lfdr.de>; Thu, 29 Dec 2022 13:05:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672337127; bh=pUvylc6Z7pmohYekIAqXSwmZAtBFe45IsUYTRKSApMM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=q3kbvAtjZcfUiE1MF3vZY2Ig1oFA36sqNjWQCs7kYpiguv3ofz3Y1jV3NulBELPg7
	 tG/ZbgVb5bh8t6Ylktv5OAMcHKZCrpLMh6oph02bnakcE07a0JZMMYZytKmClOQc7O
	 Df/OMum67S+F9U3YN5tqWbltXib+8UfTadKWGYEgzFB6K4E0uNszslGnasQhHjiVm3
	 XVbq7yizQLAM9NjUCCqoBlPSPy1tAnHxt4tRi9Etp+I61bDUakABXRBJL3oIfHlC6C
	 OS8MUn5SIqwyDKDyds9ToRr30awIKtCdG2tZ/St3zKMZKVv/nYl7xNFb1JEjbMqZvi
	 IphHmKmUpxAcg==
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 400D2380B09
	for <usrp-users@lists.ettus.com>; Thu, 29 Dec 2022 13:04:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YgUyq3wR";
	dkim-atps=neutral
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-45f4aef92daso270506607b3.0
        for <usrp-users@lists.ettus.com>; Thu, 29 Dec 2022 10:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KODbT/CNudTSOBjDrw3q3ahGRF9cFKokECKoyQ1F11I=;
        b=YgUyq3wRDA/IfQOwZcu6pMvVe6Rx/+qpbt8B3iFMxU4Y5T1pfHn83pvVSHZ+ymT3Bo
         dXiSyTJKGhrGKvAIR28DKlPb7vd8qD9eJ1Db/8tZxZZAhMXAwRECe5Me/dMUn42lpCwa
         NSmaW9liO7TVW1gqSHCL7PtbnwJNufigN5QKSNAI412veHA0kB0Hqo2FZ5TDpS2+ZXdF
         XP1lEefVg2XbajQCDaM78Nr/Ip/SlkOZ+tH0JVwxVrAxlxBuuUY5hOCuz/ANwPg0TBma
         gGzWzo4Ky5NP4ihrdUXKI6JRH3jyeZJGkx+p1VaxTDyvcbSgz87KQ3dSNxhAjSk8IPxy
         92uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KODbT/CNudTSOBjDrw3q3ahGRF9cFKokECKoyQ1F11I=;
        b=d94Xt4e0f6vNHQpW7oyTTReQWvN8617r5sSEL7Kr4GEsLPwV0YUszIPhvELnrRbH31
         VfrU1CzvTJ8TcijCvzEcqrDAK8GChNLj3R7SiAut1iNag3jgDOu5kPndypaJ31lEabxN
         TMcYX7v8owZuXH2YqIRmc7mOuoctHH+AEqAiwn79w5paTgraSVpn/uOGh8+ZhTgNBCJH
         rfVUHTvRoVyeTCAx3Kdgh+GSRineOEhTAlXsfdlz0a3hfxptVmhcrU588TxyK5ZfHy77
         zgjpf8Hi25z5ne9g//sOLgRZWf4dxbiJyzQmCAmKv+MmEQM32jRPoSS9fHJDni1MUay7
         oQHA==
X-Gm-Message-State: AFqh2kopb/WwInwMmIqoGk432zTWu+MtDBVmiZ3tY8wc3VWDDAHEJDzD
	ohyS4jjtSvmKXFJ1uTR7lNf+DvWA3IA=
X-Google-Smtp-Source: AMrXdXsvy62CVK4M118v43tx5+AjrfTLuPP9d8nIZ/PV3KN901nm/YK+UCEvJ+yZ60rmLtj/Uwaw9g==
X-Received: by 2002:a05:7500:3708:b0:ea:a262:2f38 with SMTP id gw8-20020a057500370800b000eaa2622f38mr1969518gab.34.1672337074142;
        Thu, 29 Dec 2022 10:04:34 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id 19-20020a370413000000b006feea093006sm13363463qke.124.2022.12.29.10.04.33
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 10:04:33 -0800 (PST)
Message-ID: <c6197fee-7bd9-500c-1501-45593cf64757@gmail.com>
Date: Thu, 29 Dec 2022 13:04:32 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CACOCFC3jGpTTrdCza+_keWHrEM7Y3tnMqssLaFdGh1Q-8NOBmA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CACOCFC3jGpTTrdCza+_keWHrEM7Y3tnMqssLaFdGh1Q-8NOBmA@mail.gmail.com>
Message-ID-Hash: EQ7XE2WCHFNE6VL2O26HSKEQAWA67RXR
X-Message-ID-Hash: EQ7XE2WCHFNE6VL2O26HSKEQAWA67RXR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B100 vs. B200mini - IF not zero?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EQ7XE2WCHFNE6VL2O26HSKEQAWA67RXR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjkvMTIvMjAyMiAxMjoxMywgSm9uYXRoYW4gQmFycnkgd3JvdGU6DQo+IEdyZWV0aW5ncyEg
SSd2ZSBiZWVuIHVzaW5nIGEgVVNSUCBCMTAwICghKSBmb3IgdGVuIHllYXJzIG5vdywgd3JpdGlu
Zw0KPiBDIGNvZGUgd2l0aCB0aGUgVUhEIEFQSS4gUmVjZW50bHkgSSB1cGdyYWRlZCB0byBhIEIy
MDBtaW5pLCBidXQgdGhlDQo+IHJlc3VsdGluZyBiYXNlYmFuZCBzaWduYWxzIGZyb20gdGhlc2Ug
dHdvIFVTUlBzIGlzIGRpZmZlcmVudCwgZXZlbg0KPiB0aG91Z2ggSSBhbSBydW5uaW5nIHRoZSBl
eGFjdCBzYW1lIGNvZGUgYW5kIEFQSSBjYWxscyBpbiBib3RoIGNhc2VzLg0KPiBGb3IgdGhlIEIx
MDAsIHRoZSB0YXJnZXQgZnJlcXVlbmN5IHRvIHdoaWNoIEkgdHVuZSAod2l0aA0KPiB1aGRfdXNy
cF9zZXRfcnhfZnJlcSkgYWx3YXlzIGFwcGVhcnMgYXQgMCBIeiBpbiB0aGUgY29tcGxleCBiYXNl
YmFuZDsNCj4gYnV0IGZvciB0aGUgQjIwMG1pbmksIEkgZGV0ZXJtaW5lZCAoZW1waXJpY2FsbHks
IHdpdGggTUFUTEFCKSB0aGF0IHRoZQ0KPiB0YXJnZXQgZnJlcXVlbmN5IGZvciB0aGUgZXhhbXBs
ZXMgSSB0ZXN0ZWQgaXMgbWl4ZWQgbm90IHRvIDAgSHosIGJ1dA0KPiB0byAzIGtIeiAoPykgaW4g
dGhlIGJhc2ViYW5kIHNhbXBsZXMuIEluIGFkZGl0aW9uLCB3aGVuIEkgcnVuIHVoZF9mZnQNCj4g
b24gdGhlIEIyMDBtaW5pLCBJIHNlZSB0aGlzIHNhbWUgYmVoYXZpb3IgYXMgd2VsbDogd2hlbiBJ
IHR1bmUgdG8gYQ0KPiBrbm93biBQMjUgc2lnbmFsIGF0IDg2MC4yMzc1IE1IeiwgaW4gdGhlIHJl
c3VsdGluZyBwb3dlciBzcGVjdHJ1bSBJDQo+IHNlZSB0aGUgcGVhayBhcHBlYXJpbmcgYXQgODYw
LjI0MDUgTUh6ICh0YXJnZXQgKyAzIGtIeiksIGFuZCBJIHNlZSBhDQo+IG5vdGNoIGF0IHRoZSB0
YXJnZXQgODYwLjIzNzUgTUh6IChpbiB0aGUgcGFzc2JhbmQgb2YgbXkgc2lnbmFsKS4NCj4NCj4g
SSBleGFtaW5lZCB0aGUgdHVuZV9yZXN1bHQgc3RydWN0dXJlIGJ1dCBpdCByZXBvcnRzIHRoZSB0
YXJnZXQNCj4gZnJlcXVlbmN5IGlzIDg2MC4yMzc1IE1IeiwgYW5kIGl0IHJlcG9ydHMgdGhlIHRh
cmdldC9hY3R1YWwgUkYNCj4gZnJlcXVlbmN5IGlzIDg2MC4yMzc1IE1IeiwgYW5kIHRoZSB0YXJn
ZXQvYWN0dWFsIERTUCBmcmVxdWVuY3kgaXMgMA0KPiBNSHouIEkgZG9uJ3Qgc2VlIGFueXRoaW5n
IHRoYXQgaW5kaWNhdGVzIGEgIjMga0h6IiBvZmZzZXQuIEJ1dCBpZiBJDQo+IG1peCB0aGUgcmVj
ZWl2ZWQgc2FtcGxlcyBmcm9tIHRoZSBCMjAwbWluaSBkb3duIGJ5IDMga0h6LCB0aGVuIEkgZG8N
Cj4gZ2V0IGdvb2QgZGVjb2Rpbmcgd2l0aCBteSBzb2Z0d2FyZS4gU28gcmlnaHQgbm93LCBpZiBJ
IGFtIHVzaW5nIHRoZQ0KPiBCMTAwLCBJIGhhdmUgbm8gMyBrSHogZG93bm1peCwgYW5kIGlmIEkg
dXNlIHRoZSBCMjAwbWluaSwgSSBuZWVkIDMga0h6DQo+IGRvd25taXggLS0gdGhpcyBpcyB3ZWly
ZC4NCj4NCj4gSXMgdGhpcyBhIGhhcmR3YXJlIGRlZmVjdCwgb3IgaXMgdGhpcyBzb21lIHNldHRp
bmcgdGhhdCBJIGhhdmUgbWlzc2VkPw0KPiBUaGFuayB5b3UhDQo+DQo+IEpvbiBCYXJyeQ0KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPg0KWW91ciAz
a0h6IG9mZnNldCBpcyB3aXRoaW4gdGhlIGFjY3VyYWN5IHNwZWMgb2YgdGhlIG1hc3RlciBjbG9j
ayBvbiB0aGUgDQpCMjAwbWluaSBhdCA4NjBNSHouDQoNClRoZSBCMjAwIHNlcmllcyB1c2VzIGEg
Y2hpcCwgdGhlIEFEOTM2eCwgd2hpY2ggaXMgYSBkaXJlY3QtY29udmVyc2lvbiANCmRlc2lnbiwg
c28gZXZlcnl0aGluZyBpcw0KIMKgIGFsd2F5cyBhdCBiYXNlYmFuZCBieSB0aGUgdGltZSBpdCBn
ZXRzIHRvIHRoZSBhcHAuDQoNCldoYXQgaXMgKmxpa2VseSogaGFwcGVuaW5nIGlzIHRoYXQgeW91
IHNpbXBseSBnb3QgImx1Y2t5IiB3aXRoIHRoZSANCm1hc3RlciBjbG9jayBvbiB0aGUgQjEwMC4N
Cg0KV2hhdCBkYXVnaHRlcmNhcmQgZG8geW91IGhhdmUgb24geW91ciBCMTAwP8KgIE5vdCB0aGF0
IG1hbnkgQjEwMHMgd2VyZSANCnNvbGQsIGFuZCBpdCB3YXMgZGlzY29udGludWVkDQogwqAgeWVh
cnMgYW5kIHllYXJzIGFnby4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQo=
