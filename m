Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1DA949499
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2024 17:31:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E37B384D43
	for <lists+usrp-users@lfdr.de>; Tue,  6 Aug 2024 11:31:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722958268; bh=mTLkQi36CaF3yyPzQh5VLBHOOEWN3PisFQ18Rnhynfc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xDvAKCw46L0jQwjHeX428lCUuyLsmha++p+GRMV3UgHog6g7ADXvKg7/yjbZoVcUv
	 vmVTeq9R60VJeF8oV/x6goEU5bpa7nxD6gG6lEFpR4D+6SIHGRSKe7lFSXv9ow5sh3
	 BkPymU59Ja82wMLOOFxoR3yO4paw7RgzYh+ylzM3vt7b7HNIpkosCvzkxAFj/UqRvZ
	 y9KKNFIR+TyBgQWg29dxZX9A7aUkKmJK9DhCMSfCla4M3uRPYV2qMnxgPa3ZlzjSmg
	 z1S+pQVbJkOy4ZNYy79BrYD8Apvuf6efF7NzWXtxwLGKxM3IGhfvnniZUGkGjbC9la
	 aEAakVinlkYYQ==
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 3B524380F73
	for <usrp-users@lists.ettus.com>; Tue,  6 Aug 2024 11:30:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="fw63yYDL";
	dkim-atps=neutral
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3687ea0521cso552384f8f.1
        for <usrp-users@lists.ettus.com>; Tue, 06 Aug 2024 08:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1722958239; x=1723563039; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/hGEtk1XbwKWBW5WO/82pMg+m8zpL8skTT6bYscyq7A=;
        b=fw63yYDL0Rtn/t6NduVIQHsGWsWzzVknvivbENvSWVpZwH9TS6Mm9VE2ZyXhF57QDN
         auRKebCScy4WbOMkgIDPqtyKhYlnr8yC6Ta26czhghpbcxSUws/ip+vU9mFIcHnqlIL6
         dJjqN7s1YvuqQAv2NKc9LmwCdECrnvupfrefVE5LvN+XycUqhdUyGSgtJ3agxKxNmgvt
         9wkDm9wUGzmrEU+bEo/UZchi8JZUp69Rxli9FPX3Kb9/XSBZp8s0q7yV/sO2NZhaGmIE
         GYkLrWR7iPMLmMxRd02QAEBb1g0T3ucj93a4umKbj7jQQQaMPMU1bI4zgezQuQ476ISC
         qK1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722958239; x=1723563039;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/hGEtk1XbwKWBW5WO/82pMg+m8zpL8skTT6bYscyq7A=;
        b=BSOHuaxHhJjmK2e6hFpKOQv0yHxW9K+HoX3nw+lUmMfS/bd9BN/e1JO+QB+mIHOxyD
         KZ66QfGC5RgJktSmccd7IXJaVqUwwa6dt2vwKzscN64Vu9EQoviTj7pCi8HUjclXP8CM
         sipE5yW2abj5XUPUoUFJBC1EOnHdfLIee1rgS7X8NScabM096DGt5woe8yXN6/HG9bE1
         7wsGt1rIq4ijG5T9YmsGs03WV1Gg8GTX5rgu9vHx1RiNoKGuAf2DY4qTJ8aPG4NvPOl5
         BMefiLVEmDwPW+9Pvb8LeFe6kSqs37VRmjX5lZDgkrJEniuWe9B79MBKufUoNa5gGjPf
         0S9w==
X-Gm-Message-State: AOJu0YxJVoZsdGBfAZL2N9A6OUUiwsgyeUX19gfkqXExDn+ab/fNerMJ
	S3vc44Tovb493PNlcf/ZdtFX2eAzkjLj5s3rwpRSlwAPgLqL4V/9PAu+X01TDXBB6CzlxIrZyl/
	ZjDA=
X-Google-Smtp-Source: AGHT+IGV1oE3ht4RAlRd2uieeV+fbAZwuS0pPZro9rOhnCeDdpJK7TTZHEgNv8OYv4yYjb8AsAN4Kw==
X-Received: by 2002:adf:f1c8:0:b0:368:5042:25f3 with SMTP id ffacd0b85a97d-36bbc11b54amr12059424f8f.34.1722958239319;
        Tue, 06 Aug 2024 08:30:39 -0700 (PDT)
Received: from ?IPV6:2001:16b8:cc44:9300:10fc:1619:bea3:90d1? ([2001:16b8:cc44:9300:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36bbd02ab20sm13526115f8f.64.2024.08.06.08.30.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Aug 2024 08:30:38 -0700 (PDT)
Message-ID: <2ac6c048-3459-4fef-a64b-566ee5728a99@ettus.com>
Date: Tue, 6 Aug 2024 17:30:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <7ff2a1b8f264d3f9d02e3d6fa60df7dc@mail.gmail.com>
 <CAHVeOW8UJErf8RMuajePLpiyVAnp5qEtyxDe1T9Fo+i27cHRJg@mail.gmail.com>
 <5dcedd39-5b0d-4ba7-8627-817299665d80@gmail.com>
 <CAHVeOW8O1F75N9EpuzjOw2J-FncKoAUatp=5sq_Qddg7iKUKKw@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAHVeOW8O1F75N9EpuzjOw2J-FncKoAUatp=5sq_Qddg7iKUKKw@mail.gmail.com>
Message-ID-Hash: WH5K3TTKRPRJN4B3FZPIKLBCF3XEVI7O
X-Message-ID-Hash: WH5K3TTKRPRJN4B3FZPIKLBCF3XEVI7O
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Invalid permissions to write images destination on N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WH5K3TTKRPRJN4B3FZPIKLBCF3XEVI7O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgQ2hyaXMsIE1hcmN1cyBhbmQgU2NvdHQsDQoNCkp1c3QgdG8gYmUgdGhlIGJhbGFuY2luZyBN
YXJjdXMgaGVyZTogSSBsaWtlIHRoZSBhcHByb2FjaCBvZiB1c2VyIGRvd25sb2FkYWJpbGl0eS4g
SW4gDQp0ZXN0aW5nIGVudmlyb25tZW50cywgd2UgaGVhdmlseSBhZHZvY2F0ZSBmb3IgaXNvbGF0
aW5nIGluc3RhbGxhdGlvbnMgZnJvbSB1c2VyLWRvbmUgDQpkb3dubG9hZHMsIGZvciBleGFtcGxl
ISBJIHRoaW5rIHdoYXQgTWFyY3VzIHRyaWVkIHRvIHNheSBpczogSGlzIDJjdCBhcmUgdGhhdCB5
b3UgDQpzaG91bGRuJ3QgYmUgYWZyYWlkIHRvIHJ1biBhIHRoaW5nIHRoYXQgeW91IHdhbnQgdG8g
aGF2ZSBzeXN0ZW0td2lkZSBjb25zZXF1ZW5jZXMgd2l0aCANCnN1ZG8uIEknbSBub3QgZGlzYWdy
ZWVpbmcsIEknbSBqdXN0IG5vdCBzdXJlIHlvdSB3YW50IHRoZSBzeXN0ZW0td2lkZSBhc3BlY3Qg
aGVyZSA6KQ0KDQpBcyBhIG1hdHRlciBvZiBmYWN0LCB5b3UgY2FuIGp1c3QgY29uZmlndXJlIHRo
ZSBwYXRoIHdoZXJlIFVIRCBsb29rcyBieSBzZXR0aW5nIHRoZSANClVIRF9JTUFHRVNfRElSIGVu
dmlyb25tZW50IHZhcmlhYmxlLCBlLmcuIGluIHlvdXIgfi8ucHJvZmlsZS4gKEl0IGRvZXNuJ3Qg
c2VlbSBsaWtlIHdlIA0KY3VycmVudGx5IGhhdmUgYSBwcmVmZXJlbmNlcyBzZXR0aW5nIGZvciB0
aGF0IGluIHVoZC5jb25mOyBtYXliZSB3ZSBzaG91bGQuKQ0KDQpCZXN0IHJlZ2FyZHMsDQpNYXJj
dXMNCg0KT24gMDYuMDguMjQgMTc6MDgsIENocmlzIEdvcm1hbiB3cm90ZToNCj4gVGhhbmsgeW91
IE1hcmN1cywNCj4NCj4gSSBzdGFuZCBjb3JyZWN0ZWQuDQo+DQo+IFRoZSBjb21tYW5kIHNob3Vs
ZCBiZQ0KPg0KPiBzdWRvIC91c3IvbG9jYWwvbGliL3VoZC91dGlscy91aGRfaW1hZ2VzX2Rvd25s
b2FkZXIucHkNCj4NCj4gVGhpcyBzaG91bGQgcHV0IHlvdXIgZmlsZXMgaW4gdGhlIGNvcnJlY3Qg
bG9jYXRpb24gZm9yIHRoZSBvdGhlcg0KPiBwcm9ncmFtcyB0byBmaW5kLg0KPg0KPiBIb3BlIHRo
aXMgaGVscHMuDQo+DQo+IENocmlzDQo+DQo+IE9uIFR1ZSwgQXVnIDYsIDIwMjQgYXQgMTA6MzHi
gK9BTSBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPiB3cm90ZToNCj4+
IE9uIDA2LzA4LzIwMjQgMTA6MTMsIENocmlzIEdvcm1hbiB3cm90ZToNCj4+PiBIaSBTY290dCwN
Cj4+Pg0KPj4+IEkgYmVsaWV2ZSB0aGUgcHJvYmxlbSB5b3UncmUgZXhwZXJpZW5jaW5nIGlzIGxp
bnV4IG5vdCBhbGxvd2luZyB5b3UgdG8NCj4+PiB3cml0ZSB0byB0aGUgL3Vzci9sb2NhbCBkaXJl
Y3Rvcnkgc3RydWN0dXJlIGFzIGl0IGlzIG5vdCBvd25lZCBieSB5b3VyDQo+Pj4gdXNlci4gIEkg
dGhpbmsgeW91IGhhdmUgYSBjb3VwbGUgb2YgY2hvaWNlcyB0byBkb3dubG9hZCB0aGUgaW1hZ2Vz
Lg0KPj4+IFRoZSBmaXJzdCBpcyB0byBpbnN0YWxsIHRoZW0gaW50byB0aGUgZGVmYXVsdCBkaXJl
Y3Rvcnkgd2l0aCBzdWRvLA0KPj4+IHdoaWNoIEkgd291bGRuJ3QgcmVjb21tZW5kLCB0aGUgc2Vj
b25kIGlzIGluc3RhbGxpbmcgdGhlIHBhY2thZ2VzIGludG8NCj4+PiBhIGRpZmZlcmVudCBkaXJl
Y3Rvcnkgd2l0aCB0aGUgLWkgc3dpdGNoIHRvIHVoZF9pbWFnZXNfZG93bmxvYWRlci5weS4NCj4+
PiBQZXJoYXBzIHJ1biB0aGUgZm9sbG93aW5nIGNvbW1hbmRzDQo+Pj4NCj4+PiBjZCB+Lw0KPj4+
IG1rZGlyIHVoZF9pbWFnZXMNCj4+PiAvdXNyL2xvY2FsL2xpYi91aGQvdXRpbHMvdWhkX2ltYWdl
c19kb3dubG9hZGVyLnB5IC1pIH4vdWhkX2ltYWdlcw0KPj4+DQo+Pj4gVGhhdCBzaG91bGQgZ2V0
IHlvdSB0aGUgZG93bmxvYWQgaW1hZ2VzIEkgdGhpbmsuDQo+Pj4NCj4+PiBIb3BlIHRoaXMgaGVs
cHMsDQo+Pj4NCj4+PiBDaHJpcw0KPj4gVGhpcyB3aWxsIGNvbWUgd2l0aCB0aGUgYWRkZWQgImJv
bnVzIiB0aGF0IHRvb2xzIHRoYXQgZXhwZWN0IHRoZSBpbWFnZXMNCj4+IHRvIGJlIGluICJ0aGUg
c3RhbmRhcmQgbG9jYXRpb24iIHdpbGwNCj4+ICAgICBiZSB1bmFibGUgdG8gZmluZCB0aGVtIHVu
bGVzcyB5b3Ugc2V0IHRoZSBhcHByb3ByaWF0ZSBlbnZpcm9ubWVudA0KPj4gdmFyaWFibGVzIHRv
IHRlbGwgdGhlIHRvb2xzIHdoZXJlIHRvIGZpbmQgdGhlbS4NCj4+DQo+PiBUaGVyZSdzIG5vdGhp
bmcgd3Jvbmcgd2l0aCBpbnN0YWxsaW5nDQo+PiBmaWxlcy10aGF0LWFyZS1jb25jZXB0dWFsbHkt
c3lzdGVtLWZpbGVzIGluIHRoZSBzdGFuZGFyZCAic3lzdGVtIGZpbGUiDQo+PiBwbGFjZXMsDQo+
PiAgICAgdXNpbmcgc3Vkby4NCj4+DQo+PiBUaGlzIHdob2xlIHRoaW5nIGlzIGJhc2ljYWxseSAi
bGl2aW5nIGFuZCB3b3JraW5nIGFzIGEgZGV2IG9uDQo+PiA8VW5peC1mYW1pbHktT1M+Ii4gIElm
IHRoYXQgaXMgdG8gYmUgdGhlIHBsYXRmb3JtIG9mIGNob2ljZQ0KPj4gICAgIGluIHRoaXMgY2Fz
ZSwgdGhlbiBpdCB3b3VsZCBiZSBwcm9kdWN0aXZlIHRvIGxlYXJuIGhvdyB0byBsaXZlIGFuZA0K
Pj4gd29yayBvbiB0aGUgT1MsIGluY2x1ZGluZyBsZWFybmluZyB3aGF0IGZpbGUNCj4+ICAgICBw
ZXJtaXNzaW9ucyBhcmUsIGFuZCBob3cgdG8gbGl2ZSB3aXRoIHRoZW0gYW5kIHVzZSB0aGVtIGFw
cHJvcHJpYXRlbHkuDQo+Pg0KPj4gSnVzdCBteSAkMC4wMiwgaGF2aW5nIGJlZW4gYSAiVW5peC1m
YW1pbHktT1MiIGd1eSBzaW5jZSBJIHdhcyBhDQo+PiB0ZWVuYWdlci0tLWluIDE5NzkuDQo+Pg0K
Pj4NCj4+PiBPbiBUdWUsIEF1ZyA2LCAyMDI0IGF0IDQ6MTbigK9BTSBEci4gU2NvdHQgQmVzdCB2
aWEgVVNSUC11c2Vycw0KPj4+IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6DQo+
Pj4+IERlYXIgVVNSUC1Vc2VycyBHcm91cCwNCj4+Pj4NCj4+Pj4NCj4+Pj4NCj4+Pj4gSSBpbnN0
YWxsZWQgVUhEIDQuNyBvbiBhbiBVYnVudHUgTWluaVBDIGZvbGxvd2luZyB0aGUgb25saW5lIGlu
c3RydWN0aW9ucy4gIEl0IHNlZW1zIHRvIGJlIHdvcmtpbmcgT0ssIHNvIEkgdHJpZWQgdXBkYXRp
bmcgdGhlIGZpcm13YXJlIGZvciBhbiBOMjAwIHRoYXQgSSBwaWNrZWQgdXAgYXMgYSB0ZXN0IHZl
aGljbGUgZm9yIG15IHNldCBvZiBuZXcgTjMyMHMuICBJIHJhbiBpbnRvIGEgYnVnIHRoYXQgSSBo
YXZlIG5vdCBmb3VuZCBhbiBhbnN3ZXIgdG8sIGFzIHNlZW4gaW4gdGhlIGZvbGxvd2luZyBUZXJt
aW5hbCBzY3JpcHQgd2l0aCBVSEQgY29tbWFuZHMgc2hvd24gaW4gQk9MRCBUWVBFOg0KPj4+Pg0K
Pj4+Pg0KPj4+Pg0KPj4+PiBkcnNjb3R0QFVidW50dTp+L3dvcmthcmVhL3VoZC9ob3N0L3V0aWxz
JCB1aGRfZmluZF9kZXZpY2VzDQo+Pj4+DQo+Pj4+IFtJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMr
KyB2ZXJzaW9uIDExLjQuMDsgQm9vc3RfMTA3NDAwOyBVSERfNC43LjAuMC0wLWdhNWVkMTg3Mg0K
Pj4+Pg0KPj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KPj4+Pg0KPj4+PiAtLSBVSEQgRGV2aWNlIDANCj4+Pj4NCj4+Pj4gLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4+Pj4NCj4+Pj4gRGV2aWNl
IEFkZHJlc3M6DQo+Pj4+DQo+Pj4+ICAgICAgIHNlcmlhbDogRTJSMTZURVVODQo+Pj4+DQo+Pj4+
ICAgICAgIGFkZHI6IDE5Mi4xNjguMTAuMg0KPj4+Pg0KPj4+PiAgICAgICBuYW1lOg0KPj4+Pg0K
Pj4+PiAgICAgICB0eXBlOiB1c3JwMg0KPj4+Pg0KPj4+Pg0KPj4+Pg0KPj4+Pg0KPj4+Pg0KPj4+
PiBkcnNjb3R0QFVidW50dTp+L3dvcmthcmVhL3VoZC9ob3N0L3V0aWxzJCB1aGRfdXNycF9wcm9i
ZQ0KPj4+Pg0KPj4+PiBbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiAxMS40LjA7
IEJvb3N0XzEwNzQwMDsgVUhEXzQuNy4wLjAtMC1nYTVlZDE4NzINCj4+Pj4NCj4+Pj4gW0lORk9d
IFtVU1JQMl0gT3BlbmluZyBhIFVTUlAyL04tU2VyaWVzIGRldmljZS4uLg0KPj4+Pg0KPj4+PiBF
cnJvcjogUnVudGltZUVycm9yOg0KPj4+Pg0KPj4+PiBQbGVhc2UgdXBkYXRlIHRoZSBmaXJtd2Fy
ZSBhbmQgRlBHQSBpbWFnZXMgZm9yIHlvdXIgZGV2aWNlLg0KPj4+Pg0KPj4+PiBTZWUgdGhlIGFw
cGxpY2F0aW9uIG5vdGVzIGZvciBVU1JQMi9OLVNlcmllcyBmb3IgaW5zdHJ1Y3Rpb25zLg0KPj4+
Pg0KPj4+PiBFeHBlY3RlZCBGUEdBIGNvbXBhdGliaWxpdHkgbnVtYmVyIDExLCBidXQgZ290IDk6
DQo+Pj4+DQo+Pj4+IFRoZSBGUEdBIGJ1aWxkIGlzIG5vdCBjb21wYXRpYmxlIHdpdGggdGhlIGhv
c3QgY29kZSBidWlsZC4NCj4+Pj4NCj4+Pj4gUGxlYXNlIHJ1bjoNCj4+Pj4NCj4+Pj4NCj4+Pj4N
Cj4+Pj4gIi91c3IvbG9jYWwvbGliL3VoZC91dGlscy91aGRfaW1hZ2VzX2Rvd25sb2FkZXIucHki
DQo+Pj4+DQo+Pj4+ICIvdXNyL2xvY2FsL2Jpbi91aGRfaW1hZ2VfbG9hZGVyIiBcDQo+Pj4+DQo+
Pj4+ICAgICAgIC0tYXJncz0idHlwZT11c3JwMixhZGRyPTE5Mi4xNjguMTAuMiINCj4+Pj4NCj4+
Pj4NCj4+Pj4NCj4+Pj4gZHJzY290dEBVYnVudHU6fi93b3JrYXJlYS91aGQvaG9zdC91dGlscyQg
L3Vzci9sb2NhbC9saWIvdWhkL3V0aWxzL3VoZF9pbWFnZXNfZG93bmxvYWRlci5weQ0KPj4+Pg0K
Pj4+PiBbSU5GT10gVXNpbmcgYmFzZSBVUkw6IGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL2JpbmFy
aWVzL2NhY2hlLw0KPj4+Pg0KPj4+PiBbSU5GT10gSW1hZ2VzIGRlc3RpbmF0aW9uOiAvdXNyL2xv
Y2FsL3NoYXJlL3VoZC9pbWFnZXMNCj4+Pj4NCj4+Pj4gW0VSUk9SXSBJbnZhbGlkIHBlcm1pc3Np
b25zIHRvIHdyaXRlIGltYWdlcyBkZXN0aW5hdGlvbg0KPj4+Pg0KPj4+PiBkcnNjb3R0QFVidW50
dTp+L3dvcmthcmVhL3VoZC9ob3N0L3V0aWxzJA0KPj4+Pg0KPj4+Pg0KPj4+Pg0KPj4+PiBVSEQg
b24gVWJ1bnR1IGlzIGFibGUgdG8gZmluZCB0aGUgTjIwMCwgYW5kIGlzIGFibGUgdG8gcHJvYmUg
dGhlIE4yMDAgd2l0aCB0aGUgc2Vjb25kIFVIRCBjb21tYW5kLiAgSG93ZXZlciwgdGhlIHRoaXJk
IGNvbW1hbmQgaXMgL3Vzci9sb2NhbC9saWIvdWhkL3V0aWxzL3VoZF9pbWFnZXNfZG93bmxvYWRl
ci5weSwgd2hpY2ggcHJvZHVjZXMgdGhlIGZvbGxvd2luZyBFUlJPUiBNRVNTQUdFIC0gSW52YWxp
ZCBwZXJtaXNzaW9ucyB0byB3cml0ZSBpbWFnZXMgZGVzdGluYXRpb24uICBUaGUgTjIwMCB3YXMg
bm90IGJvb3RlZCBpbiBTQUZFIE1PREUsIHNvIGl0IHNob3VsZCBiZSBhdmFpbGFibGUgZm9yIGZp
cm13YXJlIHVwZGF0ZXMuDQo+Pj4+DQo+Pj4+DQo+Pj4+DQo+Pj4+IEkgaGF2ZSBiZWVuIHVuYWJs
ZSB0byBsb2NhdGUgYW55IGluZm9ybWF0aW9uIG9ubGluZSBmb3IgaG93IHRvIGVsaW1pbmF0ZSB0
aGlzIHByb2JsZW0gc28gSSBjYW4gd3JpdGUgZmlybXdhcmUgdXBkYXRlcyB0byB0aGUgTjIwMC4g
IElzIGEgZG9jdW1lbnQgYXZhaWxhYmxlIGZvciBmaXhpbmcgdGhpcyBwcm9ibGVtPyAgSWYgbm90
LCBjYW4geW91IHRlbGwgbWUgaG93IHRvIGZpeCB0aGlzIGZpcm13YXJlIHVwZGF0ZSBwcm9ibGVt
IG9uIHRoZSBOMjAwPw0KPj4+Pg0KPj4+Pg0KPj4+Pg0KPj4+PiBUaGFua3MgaW4gYWR2YW5jZSBm
b3IgeW91ciBhc3Npc3RhbmNlIHdpdGggZml4aW5nIHRoaXMgcHJvYmxlbS4NCj4+Pj4NCj4+Pj4N
Cj4+Pj4NCj4+Pj4gUmVzcGVjdGZ1bGx5LA0KPj4+Pg0KPj4+Pg0KPj4+Pg0KPj4+PiBTY290dA0K
Pj4+Pg0KPj4+Pg0KPj4+Pg0KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQ0KPj4+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
