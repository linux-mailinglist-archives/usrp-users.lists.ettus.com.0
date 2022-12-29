Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7AB659092
	for <lists+usrp-users@lfdr.de>; Thu, 29 Dec 2022 19:49:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 386C6383684
	for <lists+usrp-users@lfdr.de>; Thu, 29 Dec 2022 13:49:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672339751; bh=GYicqhzNuBjN+tpCFCt8jkqjAEIcZczj2FnyqNvmVCA=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ifuqvcshJTkNTq2K9EMT5nSsQnMq8gMTrHrFe2jAFUhDJI2LVIjDalXgsJvytxC3w
	 gKO7GHtRBvB4Xclp080tndbqhOi0zjqzeiXHrrU2OcytqJT0NodCBX3euFrI0s5GWY
	 /FXMLCGAuYBwF1WrvvgVkntNNvJu424TSrORrzc69XCjXAOzMheoHdkp8O9B7C3E61
	 dHFM6GbK8YT262uBD6ymMDC3A8ILeY0h6B3GKNXsAfeiIAnF7cKIZXv+hjCQTny2ev
	 n2SGKjr8P94YaUbPcBPt3nO31OuwpHcKTonV55cgKT4iu1Lmr8itwjG1Lt9+L5YBr+
	 D4RH8+pRJWSdg==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 7F82C380C05
	for <usrp-users@lists.ettus.com>; Thu, 29 Dec 2022 13:49:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="n2+eLqiJ";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id h26so15635553qtu.2
        for <usrp-users@lists.ettus.com>; Thu, 29 Dec 2022 10:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a0zdv5UyBnMvn7ScTB5fMHnO/EI6fkDIAUdBX45WWGY=;
        b=n2+eLqiJUICKWMweiGjOzBftSUJzhHebWbgfTTZWQxmUGZdC++hjea2rwu2sAzllS9
         Bern99DrKnh4Sent4k5oAm43B88EF2q7TnNVsRvZDbfo0vrb0gC/v09h2CFmL8zDBazk
         8W0I+kKWZYoP6gbl++ykfML/fJmPEqQdBZaF95UHUQEZ15MW2Z0KmA4qxmEdntYEhFLy
         KJ+jqQWxynxj2Aa4r4ow4lrwlpE3dd812V0qMGIiP8KkTJ9Cji0O8hUZBkvkPRcn9KLr
         S2HHcpw7enabGAeM2zFMj67ThLADeVmNd3j/TYSqrTjtAylXaltF7DNgYa5kxJo0Jgtm
         yCDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a0zdv5UyBnMvn7ScTB5fMHnO/EI6fkDIAUdBX45WWGY=;
        b=d73bKKP5+shDOqCjG7X4DYuB3Wr38kWDAETHjFdFLOr9crSzPygqbF5rmNcYQiZDRS
         bp0fIWRK8HKZodIqJx3+hs0iLcSnC5Y2psDjKH15WKiaWJzrX9jrJuDdAoM1DstRK3ee
         a7qfpmjMU/aihmwoIs5OaxpBddhi6GhwxXa+4mjxzydtKgLhBtPufrCYITHjoqK699o5
         zWp2EpAHzqwWnbEkpHOq9Uud8p483hi5/82BELHj1XmbMv5PbfJmh6pANwBo4/0cUPrU
         kacWlhJwUh2vgJzIRhiBlQSLDb/QwyEhn9qbeojRITP4RFP5mWx+E1qRYuaJbS7z91AT
         dzIQ==
X-Gm-Message-State: AFqh2krIwnUj+bgyyPPKpiQegBXev7oxyLM9Wy3oslunUdlguBIKcHjU
	aUFBu9ddmVc6YbGg4I5pRVRR8oXMEyU=
X-Google-Smtp-Source: AMrXdXuQbwAyXV2iSxpSv2l+iYc9bRxW/oDhWjnxjL1REd6NfCqj7dQNQbqV9euom0yZbNGieZTSMQ==
X-Received: by 2002:ac8:4602:0:b0:3ab:6312:f306 with SMTP id p2-20020ac84602000000b003ab6312f306mr40564163qtn.4.1672339744847;
        Thu, 29 Dec 2022 10:49:04 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id e7-20020ac845c7000000b003a81029654csm12026970qto.31.2022.12.29.10.49.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 10:49:04 -0800 (PST)
Message-ID: <33623714-9705-bd58-efd8-946f35338388@gmail.com>
Date: Thu, 29 Dec 2022 13:49:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Jonathan Barry <jonathan.d.barry@gmail.com>
References: <CACOCFC3jGpTTrdCza+_keWHrEM7Y3tnMqssLaFdGh1Q-8NOBmA@mail.gmail.com>
 <c6197fee-7bd9-500c-1501-45593cf64757@gmail.com>
 <CACOCFC3Bn9gwFaDVvokNL1opgmjx7806fKeBPcyKTe8Yip8o1Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CACOCFC3Bn9gwFaDVvokNL1opgmjx7806fKeBPcyKTe8Yip8o1Q@mail.gmail.com>
Message-ID-Hash: 75R7MHYKXRGFDCHFSQZKIAYU5YTKDDQ6
X-Message-ID-Hash: 75R7MHYKXRGFDCHFSQZKIAYU5YTKDDQ6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B100 vs. B200mini - IF not zero?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/75R7MHYKXRGFDCHFSQZKIAYU5YTKDDQ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjkvMTIvMjAyMiAxMzo0NSwgSm9uYXRoYW4gQmFycnkgd3JvdGU6DQo+IFRoYW5rcyBmb3Ig
dGhlIGluZm8uIE15IHNpbXBsZSBjYXJyaWVyIHJlY292ZXJ5IHJvdXRpbmVzIGNhbid0IGNvcnJl
Y3QNCj4gZm9yIDMga0h6IG9mIGRldmlhdGlvbiAtLSB0aGF0IGlzIGp1c3QgdG9vIG11Y2ggZm9y
IHRoZXNlIG5hcnJvd2JhbmQNCj4gc2lnbmFscy4gQnV0IGlzIGl0IGF0IGxlYXN0IHRydWUgdGhh
dCBmb3IgYSBnaXZlbiBjYXJyaWVyIGZyZXF1ZW5jeQ0KPiAoZS5nLiA4NjAgTUh6KSwgSSBjYW4g
ZXhwZWN0IHRoYXQgdGhpcyBkcmlmdC9vZmZzZXQgd2lsbCBhbHdheXMgYmUgdGhlDQo+IHNhbWUg
Zm9yIG15IHBhcnRpY3VsYXIgQjIwMG1pbmk/IEJlY2F1c2UgaWYgdGhhdCdzIHRoZSBjYXNlLCBJ
IGNhbiBhZGQNCj4gYSBmdW5jdGlvbiB0aGF0IGFsd2F5cyBtaXhlcyB0aGUgLTMga0h6IHNpbnVz
b2lkIGludG8gdGhlIEIyMDBtaW5pDQo+IHNhbXBsZXMgYXQgODYwIE1Iei4NCklmIHlvdXIgcHJv
YmxlbSBpcyB0aGUgYWNjdXJhY3kgb2YgdGhlIG1hc3RlciBjbG9jaywgdGhlbiBpdCB3aWxsDQog
wqAgYmUgdGhlIHNhbWUgUFBNIG9mZnNldCBhdCB0aGUgc2FtZSB0ZW1wZXJhdHVyZSByZXBlYXRl
ZGx5Lg0KDQpZb3UgY291bGQgdXNlIHRoZSAidWhkX2ZmdCIgR251IFJhZGlvIGFwcGxpY2F0aW9u
IHRvIGNvbmZpcm0gdGhhdCBpdCBpc24ndA0KIMKgIHlvdXIgdXNlIG9mIHRoZSBBUEkgdGhhdCBp
cyBjYXVzaW5nIHRoaXMuDQoNCg0KPg0KPiBJIGJvdWdodCBteSBCMTAwIGluIEphbnVhcnkgMjAx
MiAtLSBJIHNlZW0gdG8gcmVjYWxsIGl0IHdhcyB0aGUgb25seQ0KPiBtb2RlbCBJIGNvdWxkIGFm
Zm9yZCBhdCB0aGUgdGltZS4gSXQgaGFzIHRoZSBXQlggZGF1Z2h0ZXJib2FyZCwgYW5kIEkNCj4g
aGF2ZSBuZXZlciBoYWQgYW55IHRyb3VibGUgYXQgYWxsIHdpdGggaXQsIGV2ZXIuIENvbGxlY3Rl
ZCB0aG91c2FuZHMNCj4gb2Ygc2lnbmFscyB1c2luZyB0aGlzIEIxMDAuIFRydWx5IHdvbmRlcmZ1
bC4gVGhlIG9ubHkgZHJhd2JhY2sgaXMgdGhlDQo+IFVTQiAyLjAsIHdoaWNoIGdyZWF0bHkgbGlt
aXRzIHRoZSBzYW1wbGUgcmF0ZSB0aGF0IG9uZSBjYW4gY29sbGVjdC4NCj4gT3RoZXJ3aXNlIEkg
d291bGQganVzdCBrZWVwIG9uIHVzaW5nIGl0LiA6ICkNCj4NCj4NCj4gT24gVGh1LCBEZWMgMjks
IDIwMjIgYXQgMTowNSBQTSBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29t
PiB3cm90ZToNCj4+IE9uIDI5LzEyLzIwMjIgMTI6MTMsIEpvbmF0aGFuIEJhcnJ5IHdyb3RlOg0K
Pj4+IEdyZWV0aW5ncyEgSSd2ZSBiZWVuIHVzaW5nIGEgVVNSUCBCMTAwICghKSBmb3IgdGVuIHll
YXJzIG5vdywgd3JpdGluZw0KPj4+IEMgY29kZSB3aXRoIHRoZSBVSEQgQVBJLiBSZWNlbnRseSBJ
IHVwZ3JhZGVkIHRvIGEgQjIwMG1pbmksIGJ1dCB0aGUNCj4+PiByZXN1bHRpbmcgYmFzZWJhbmQg
c2lnbmFscyBmcm9tIHRoZXNlIHR3byBVU1JQcyBpcyBkaWZmZXJlbnQsIGV2ZW4NCj4+PiB0aG91
Z2ggSSBhbSBydW5uaW5nIHRoZSBleGFjdCBzYW1lIGNvZGUgYW5kIEFQSSBjYWxscyBpbiBib3Ro
IGNhc2VzLg0KPj4+IEZvciB0aGUgQjEwMCwgdGhlIHRhcmdldCBmcmVxdWVuY3kgdG8gd2hpY2gg
SSB0dW5lICh3aXRoDQo+Pj4gdWhkX3VzcnBfc2V0X3J4X2ZyZXEpIGFsd2F5cyBhcHBlYXJzIGF0
IDAgSHogaW4gdGhlIGNvbXBsZXggYmFzZWJhbmQ7DQo+Pj4gYnV0IGZvciB0aGUgQjIwMG1pbmks
IEkgZGV0ZXJtaW5lZCAoZW1waXJpY2FsbHksIHdpdGggTUFUTEFCKSB0aGF0IHRoZQ0KPj4+IHRh
cmdldCBmcmVxdWVuY3kgZm9yIHRoZSBleGFtcGxlcyBJIHRlc3RlZCBpcyBtaXhlZCBub3QgdG8g
MCBIeiwgYnV0DQo+Pj4gdG8gMyBrSHogKD8pIGluIHRoZSBiYXNlYmFuZCBzYW1wbGVzLiBJbiBh
ZGRpdGlvbiwgd2hlbiBJIHJ1biB1aGRfZmZ0DQo+Pj4gb24gdGhlIEIyMDBtaW5pLCBJIHNlZSB0
aGlzIHNhbWUgYmVoYXZpb3IgYXMgd2VsbDogd2hlbiBJIHR1bmUgdG8gYQ0KPj4+IGtub3duIFAy
NSBzaWduYWwgYXQgODYwLjIzNzUgTUh6LCBpbiB0aGUgcmVzdWx0aW5nIHBvd2VyIHNwZWN0cnVt
IEkNCj4+PiBzZWUgdGhlIHBlYWsgYXBwZWFyaW5nIGF0IDg2MC4yNDA1IE1IeiAodGFyZ2V0ICsg
MyBrSHopLCBhbmQgSSBzZWUgYQ0KPj4+IG5vdGNoIGF0IHRoZSB0YXJnZXQgODYwLjIzNzUgTUh6
IChpbiB0aGUgcGFzc2JhbmQgb2YgbXkgc2lnbmFsKS4NCj4+Pg0KPj4+IEkgZXhhbWluZWQgdGhl
IHR1bmVfcmVzdWx0IHN0cnVjdHVyZSBidXQgaXQgcmVwb3J0cyB0aGUgdGFyZ2V0DQo+Pj4gZnJl
cXVlbmN5IGlzIDg2MC4yMzc1IE1IeiwgYW5kIGl0IHJlcG9ydHMgdGhlIHRhcmdldC9hY3R1YWwg
UkYNCj4+PiBmcmVxdWVuY3kgaXMgODYwLjIzNzUgTUh6LCBhbmQgdGhlIHRhcmdldC9hY3R1YWwg
RFNQIGZyZXF1ZW5jeSBpcyAwDQo+Pj4gTUh6LiBJIGRvbid0IHNlZSBhbnl0aGluZyB0aGF0IGlu
ZGljYXRlcyBhICIzIGtIeiIgb2Zmc2V0LiBCdXQgaWYgSQ0KPj4+IG1peCB0aGUgcmVjZWl2ZWQg
c2FtcGxlcyBmcm9tIHRoZSBCMjAwbWluaSBkb3duIGJ5IDMga0h6LCB0aGVuIEkgZG8NCj4+PiBn
ZXQgZ29vZCBkZWNvZGluZyB3aXRoIG15IHNvZnR3YXJlLiBTbyByaWdodCBub3csIGlmIEkgYW0g
dXNpbmcgdGhlDQo+Pj4gQjEwMCwgSSBoYXZlIG5vIDMga0h6IGRvd25taXgsIGFuZCBpZiBJIHVz
ZSB0aGUgQjIwMG1pbmksIEkgbmVlZCAzIGtIeg0KPj4+IGRvd25taXggLS0gdGhpcyBpcyB3ZWly
ZC4NCj4+Pg0KPj4+IElzIHRoaXMgYSBoYXJkd2FyZSBkZWZlY3QsIG9yIGlzIHRoaXMgc29tZSBz
ZXR0aW5nIHRoYXQgSSBoYXZlIG1pc3NlZD8NCj4+PiBUaGFuayB5b3UhDQo+Pj4NCj4+PiBKb24g
QmFycnkNCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPj4+DQo+PiBZb3VyIDNrSHogb2Zmc2V0IGlzIHdpdGhpbiB0aGUgYWNjdXJhY3kgc3BlYyBv
ZiB0aGUgbWFzdGVyIGNsb2NrIG9uIHRoZQ0KPj4gQjIwMG1pbmkgYXQgODYwTUh6Lg0KPj4NCj4+
IFRoZSBCMjAwIHNlcmllcyB1c2VzIGEgY2hpcCwgdGhlIEFEOTM2eCwgd2hpY2ggaXMgYSBkaXJl
Y3QtY29udmVyc2lvbg0KPj4gZGVzaWduLCBzbyBldmVyeXRoaW5nIGlzDQo+PiAgICAgYWx3YXlz
IGF0IGJhc2ViYW5kIGJ5IHRoZSB0aW1lIGl0IGdldHMgdG8gdGhlIGFwcC4NCj4+DQo+PiBXaGF0
IGlzICpsaWtlbHkqIGhhcHBlbmluZyBpcyB0aGF0IHlvdSBzaW1wbHkgZ290ICJsdWNreSIgd2l0
aCB0aGUNCj4+IG1hc3RlciBjbG9jayBvbiB0aGUgQjEwMC4NCj4+DQo+PiBXaGF0IGRhdWdodGVy
Y2FyZCBkbyB5b3UgaGF2ZSBvbiB5b3VyIEIxMDA/ICBOb3QgdGhhdCBtYW55IEIxMDBzIHdlcmUN
Cj4+IHNvbGQsIGFuZCBpdCB3YXMgZGlzY29udGludWVkDQo+PiAgICAgeWVhcnMgYW5kIHllYXJz
IGFnby4NCj4+DQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20NCj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
