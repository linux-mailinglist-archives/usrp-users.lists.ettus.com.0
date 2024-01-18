Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8631831DFB
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jan 2024 17:58:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90DE73850FC
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jan 2024 11:58:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705597119; bh=sD8VFAao3lKu/dhBnUcWnDK0qUKAlN/hpqfy1kj/Wd0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MypdVaq7zgxIxSFANI6CBlvMQTJUxcU2JdOOOAeaMbLkqDIKoLR3l+8GAx77CnVcb
	 aU3AYYIeaO57atBE4fri59eF102BMcmBV70+gdHNx/JVH6dR+/Pt5MIa3RvS268hSD
	 I2mFlu7L1ACCK2RtjGt11CHuSqMmQNpXCmLuRrv9MdJcibwlnaT4q3Jc39egd18oYZ
	 WkTTeo9Tt5nWJhWj/0nYc/w22TdoMnq3tsPWwQVbAPHBZOmj1HUVNGTHHY/QYTtgMv
	 qma8jtGr8pYwpJqHhtwyNTLnxj8Xl/g9+8XgeR3Qx7NmT+PA2wxZj7DoEWPfWQsBPY
	 YEmHjIYdBqofg==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id C756E380E39
	for <usrp-users@lists.ettus.com>; Thu, 18 Jan 2024 11:57:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FAG16x/i";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-783137d8049so1115836585a.2
        for <usrp-users@lists.ettus.com>; Thu, 18 Jan 2024 08:57:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705597065; x=1706201865; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KwlN4PXeMVQamYoXj/8yiF0CSzDFR0CxZtLa48UXImQ=;
        b=FAG16x/ibVz/y+kzSyBr5fWnj/qogUmR5XWBayFA/3AtY5pRhHBe6V16pV0TrSJmKA
         MmbXKg/RKduHT+JSTZ6BpmJK8AspAE0qoy3SVCcgbroT0Ig3nSRYqQBGTVNee4+FSQPV
         lg+apCbF6Okk/+mNMGg8J4hE8is12G8bKOHb3i1jWJzeIhXMyK+mNAcQbQIBWvT3HVcs
         UOr7mnwkbMmPIa+JH8MH03rQGeMdnOOFJoCcFLmtwC83VxZrqSl0iTrLqA2wGxQe9uDo
         +vNHauxBFA1bjhaZ2cKvfR+cm7bAJAk2q/+ZY7mFjZQen1BcvKoOmEfrfCoRoDuuyonS
         8ulQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705597065; x=1706201865;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KwlN4PXeMVQamYoXj/8yiF0CSzDFR0CxZtLa48UXImQ=;
        b=a/wrLyJc7WYQtRIlgqU1p6SAE1xMLazBwZMNgB/WanecbaCnrKJUhOeLysFj4B3kLm
         cHyQ8TaOYDfLS8dB6OghMygUGBF5MyjrzRx1YuEsqG9FzPMAzxuEOy2tiN1AgDWcCPMu
         MX5Zk965Ox9BneJbVrjW8JbxbzcUzIdNNbjRtVbRm6goCwejy49mfZ0ZETwPAsN46oo/
         hqI8T1dkZiAfeh8B+ybQ1d3uZU27CNlVWAMJmVFe4myjtBNlyZB7VSAAFOV+6Qa1D6o1
         zX4pzPxFl6bBMJ/kDFYP2ae+9EJTPU3pypZlAuCr0nfCz425grnGhJSkVpsAyn3ZrEBf
         2O0w==
X-Gm-Message-State: AOJu0YwschCIRPr0doFZxD6qfP7IdIezGuQJUllkKhXKPP+2LRiqa4g0
	rdPYT3Jx9BhHujo6rwbB6NFN7Y+dXzVVCCbx7DA271KtEfS1fbQ3A3vEb/Iu
X-Google-Smtp-Source: AGHT+IHXca8XfPHi4aWq04idqCvIRidC1NhX5F11gIcI09ysBMfp6Po/WN8Oy6jZ64VgGpcRo3k2GQ==
X-Received: by 2002:a37:c20a:0:b0:783:6bd5:ea43 with SMTP id i10-20020a37c20a000000b007836bd5ea43mr1051603qkm.48.1705597064934;
        Thu, 18 Jan 2024 08:57:44 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id bl36-20020a05620a1aa400b0078162695b73sm684395qkb.104.2024.01.18.08.57.44
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jan 2024 08:57:44 -0800 (PST)
Message-ID: <d8c14e16-6bd0-4c35-aa1e-1eff3f056bbc@gmail.com>
Date: Thu, 18 Jan 2024 11:57:36 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <VIcYwf2Ni5ElXtrLb3rp1JXRz2Uok9KlRrLlua9RPk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <VIcYwf2Ni5ElXtrLb3rp1JXRz2Uok9KlRrLlua9RPk@lists.ettus.com>
Message-ID-Hash: B475YTNOJ33MKPKNWIVQL6246LDBY5A5
X-Message-ID-Hash: B475YTNOJ33MKPKNWIVQL6246LDBY5A5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synchronize UBX-40 v1 Vs WBX-v3 + simple GDB
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B475YTNOJ33MKPKNWIVQL6246LDBY5A5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTgvMDEvMjAyNCAwMzoyNSwgamUuYW1naGFyQGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gSGks
DQo+IFRoZSBSJlMgZ2VuZXJhdG9yIGFuZCB0aGUgVVNSUCBkZXZpY2UgYXJlIHN5bmNocm9uaXpl
ZCB0aHJvdWdoIGEgMTAgDQo+IE1IeiByZWZlcmVuY2Ugc2lnbmFsLiBUaGUgdHJhbnNtaXR0ZXIg
KFR4KSBlbWl0cyBhIHB1cmUgc2luZSB3YXZlIGF0IA0KPiB0aGUgY2FycmllciBmcmVxdWVuY3kg
RjAgKyAxMEtIei4gVGhlIHJlY2VpdmVyIChSeCkgaW4gR05VUmFkaW8gDQo+IG9wZXJhdGVzIGF0
IEYwIGFuZCBpcyBleHRlcm5hbGx5IHN5bmNocm9uaXplZCB0byB0aGUgMTAgTUh6IHJlZmVyZW5j
ZSANCj4gb3V0IG9mIHRoZSBSJlMgZ2VuZXJhdG9yLg0KPg0KPiBJbiB0aGlzIGNvbmZpZ3VyYXRp
b24sIHRoZSBNYXN0ZXIgQ2xvY2sgUmF0ZSAoTUNSKSBpcyBzZXQgdG8gMTg0LjMyIA0KPiBNSHos
IGFuZCB0aGUgc2FtcGxpbmcgcmF0ZSBpcyAxNS4zNiBNSHouIFRvIGVuc3VyZSBzdGFiaWxpdHkg
aW4gdGhlIA0KPiBHTlVSYWRpbyBmbG93Z3JhcGgsIGEgdGltZXNpbmsgb2YgMTUzNjAgcG9pbnRz
IGlzIHV0aWxpemVkIHRvIGFjaGlldmUgDQo+IGFuIGludGVnZXIgbnVtYmVyIG9mIHBlcmlvZHMu
IFdoZW4gc3luY2hyb25pemF0aW9uIGlzIG1haW50YWluZWQsIHRoZSANCj4gZ3JhcGggcmVtYWlu
cyBzdGFibGU7IG90aGVyd2lzZSwgaXQgZXhoaWJpdHMgc2xpZGluZyBiZWhhdmlvci4NCj4NCj4g
SXQgaXMgbm90ZXdvcnRoeSB0aGF0IHRoZSBzaWduYWwgcmVtYWlucyBzdGFibGUgd2l0aCB0aGUg
TjI5MDAgKEIyMDApIA0KPiBkZXZpY2UsIHJlZ2FyZGxlc3Mgb2YgdGhlIGNhcnJpZXIgZnJlcXVl
bmN5Lg0KPiBUaGUgcHJvdmlkZWQgR05VUmFkaW8gZmxvd2dyYXBoIGFuZCBhY2NvbXBhbnlpbmcg
R0lGIGlsbHVzdHJhdGUgdGhlIA0KPiBncmFwaCdzIHNsaWRpbmcgYmVoYXZpb3Igd2hlbiBzeW5j
aHJvbml6YXRpb24gaXMgY29tcHJvbWlzZWQuIFRoZXNlIA0KPiBtYXRlcmlhbHMgYXJlIGluY2x1
ZGVkIGluIHRoZSBhdHRhY2hlZCBkb2N1bWVudGF0aW9uLg0KPg0KPg0KTXkgZ3Vlc3MgaXMgdGhh
dCB3aGF0IHlvdSdyZSBkZWFsaW5nIHdpdGggaXMgZGlmZmVyZW5jZXMgaW4gc3ludGhlc2l6ZXIg
DQphcmNoaXRlY3R1cmUgb24gdGhlIFVCWCBhbmQgV0JYIGFuZCB5b3VyIHNvdXJjZS4NCg0KT24g
dGhlIFVTUlAgZW5kLCB3aGVuIHlvdSdyZSBvbiBhIGZyZXF1ZW5jeSB0aGF0IGlzbid0IGFuIGV4
YWN0IG11bHRpcGxlIA0Kb2YgdGhlIHJlZmVyZW5jZSBmcmVxdWVuY3kgKDMyIG9yIDY0TUh6KSB1
c2VkIGJ5DQogwqAgdGhlIHN5bnRoZXNpemVyLCBzb21lIGNvbWJpbmF0aW9uIG9mIGZyYWN0aW9u
YWwtTiBzeW50aGVzaXMsIGFuZCBEREMgDQpzaWduYWwgcm90YXRpb24gaW4gdGhlIEZQR0Egd2ls
bCBicmluZyB0aGUgc2lnbmFsIHZlcnkNCiDCoCBjbG9zZSB0byB0aGUgZGVzaXJlZCBmcmVxdWVu
Y3kgLS0gYSBmcmFjdGlvbiBvZiBhIEh6LCB0eXBpY2FsbHkuwqDCoMKgIA0KV2hlbiB5b3UgYXJl
IHR1bmVkIHRvIGEgZnJlcXVlbmN5IHRoYXQgaXMgYW4gZXhhY3QgbXVsdGlwbGUsDQogwqAgdGhl
IHN5bnRoZXNpemVyIGRvZXNuJ3QgaGF2ZSB0byB1c2UgZnJhY3Rpb25hbC1OIHN5bnRoZXNpcyBh
bmQgdGhlIA0KRERDIGluIHRoZSBGUEdBIGRvZXNuJ3QgaGF2ZSB0byBkbyBhbnkgcm90YXRpb24u
DQoNCkJlY2F1c2UgZWFjaCB0eXBlIG9mIFJGIHN5bnRoZXNpemVyIGhhcyBzbGlnaHRseSBkaWZm
ZXJlbnQgYmVoYXZpb3IsIG9uZSANCmNhbiBleHBlY3Qgc21hbGwgZnJlcXVlbmN5IG9mZnNldHMg
YmV0d2Vlbg0KIMKgIGRpZmZlcmVudCBzeW50aGVzaXplcnMsIGV2ZW4gd2hlbiB1c2luZyBhIGNv
bW1vbiByZWZlcmVuY2UuIFRoYXQncyBteSANCnVuZGVyc3RhbmRpbmcuDQoNClRoZSBvdGhlciBp
c3N1ZSBpcyB0aGF0IEknbSBub3Qgc3VyZSB0aGUgdGltZSBzaW5rIGluIEdudSBSYWRpbyBpcyBh
IA0KcmVhbGx5IHVzZWZ1bCB0b29sIGZvciBkb2luZyB3aGF0IHlvdSB3YW50IHRvIGRvLsKgIEJ1
dCB0aGF0J3MNCiDCoCBhIHF1ZXN0aW9uIGZvciB0aGUgZGlzY3Vzcy1nbnVyYWRpbyBtYWlsaW5n
IGxpc3QsIG5vdCB0aGlzIG9uZS4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbQo=
