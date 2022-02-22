Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D414C01D5
	for <lists+usrp-users@lfdr.de>; Tue, 22 Feb 2022 20:11:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 63299385046
	for <lists+usrp-users@lfdr.de>; Tue, 22 Feb 2022 14:11:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="n3xmz0gI";
	dkim-atps=neutral
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 5BF91384139
	for <usrp-users@lists.ettus.com>; Tue, 22 Feb 2022 14:10:42 -0500 (EST)
Received: by mail-qv1-f42.google.com with SMTP id a19so1843158qvm.4
        for <usrp-users@lists.ettus.com>; Tue, 22 Feb 2022 11:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=xG0Pk7SbzW6UAw/Td6B1fKRukBdsAhmJWXJkccDRUzg=;
        b=n3xmz0gIvWfhg8/uZaVlXZbnMi9vsbHW0kfHBc0nC4UYGNaHcjiiRucCBPh8htfQKF
         h85Fv11sfN4+Hancmdpfbrwqisycm4HS+CfAuSVd2VyzZtjvz4XyhB3tvwjf0udBpsk9
         ltH6LIvZFHD5BiTpf1jopq/aJ1Ty4puhNbzqdqaSrL2OSmIFZRCn5vVZoonhj86iby47
         K30HesbxXNNA8MQKIsM2cofiCDbJwZmy9JXwqlE+EuyyIHku8gL16els3tpeJJKJAHEV
         giKUgudHfQlsU2NAzWYba2/DYjSBFMotBAmweMJc/Q2J/PyOlIYClHqRrAStJW9i4SC7
         S8EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xG0Pk7SbzW6UAw/Td6B1fKRukBdsAhmJWXJkccDRUzg=;
        b=EVO5bI+kDSboIJJm7/BeJE51aRbIk49oyuz2BpEYPF3n5aIAvwxycr06p3f9qrx6vd
         gFfi8jXpKPi8fvzxoDqCrvCcqT5tvrHxC6rjyuZxM30PFrbIJNZcq68R9GcWDpL9V9v/
         d2Ildvl0cpTdtmYaOSFF5cHq1qOvQjtT8/GeyLm9ptzzhi6PQCo2vN6Ra8KoNWeeuYG6
         DcJWgFiUmRDWorTS49yceJmTD3ow6xA/pSGGm9x6eSafUHuoGKpaFXW8uAYhEg/q24bm
         J0qh/hv7X7ub9dxEiN22s32vt5dUrmPW6lhyfipMJ5yxebZS6tiQUmyjOeiIkB88Ah/y
         +Kbg==
X-Gm-Message-State: AOAM531pZ1+uVlaT9hNyvZdcvM6mNS+gQFXwRDHzVU8khYK3ubsDEVp6
	W2DY25dCmbeJm5/DimNSc5kH2P6AinjlXw==
X-Google-Smtp-Source: ABdhPJxJsgq5tqE+f9hGJ/IWi5xLZHzZM3y8ow4OOsM11lsfN+7ob3I8oUwc1ggzg9zwhUtEKik8OA==
X-Received: by 2002:ac8:7f12:0:b0:2d2:24e5:95de with SMTP id f18-20020ac87f12000000b002d224e595demr23939504qtk.625.1645557041831;
        Tue, 22 Feb 2022 11:10:41 -0800 (PST)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id 17sm241519qka.119.2022.02.22.11.10.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Feb 2022 11:10:41 -0800 (PST)
Message-ID: <9be7a93d-c746-dcc5-51ec-aa75519b1c24@gmail.com>
Date: Tue, 22 Feb 2022 14:10:40 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Alvaro Pendas Recondo <apruhd@gmail.com>
References: <CAAC=UJPdKrPns+vxyowygXQTK7khtLMu8koQqpsvHGQJAOjnHw@mail.gmail.com>
 <4876156c-b6b9-9fb7-7e9f-d0c56961d4f0@gmail.com>
 <CAAC=UJOtVbZ+L_LmRQRtxs1oUWWHODoosoHpx_6s=F-bqmOo1Q@mail.gmail.com>
 <69d0baa5-45f7-44ff-88e3-d0c0a46d381c@gmail.com>
 <CAAC=UJOKOnQ0W2i9FWoDGcgN8otCV4-43BD7tjtvUoo0AKNtFg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAC=UJOKOnQ0W2i9FWoDGcgN8otCV4-43BD7tjtvUoo0AKNtFg@mail.gmail.com>
Message-ID-Hash: NMD2YEZCNGFU7ORY3CAWH6T4QLSYOJCR
X-Message-ID-Hash: NMD2YEZCNGFU7ORY3CAWH6T4QLSYOJCR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 4 Rx sync with 2 B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NMD2YEZCNGFU7ORY3CAWH6T4QLSYOJCR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMi0yMiAxMjowNSwgQWx2YXJvIFBlbmRhcyBSZWNvbmRvIHdyb3RlOg0KPiBZZXMs
IEkgYW0gYXdhcmUgb2YgdGhlIDQtY2hhbm5lbCwgYnV0IEkganVzdCBmb3JnZXQgYWJvdXQgaXQg
d2hlbiANCj4gZG9pbmcgY29tcGFyaXNvbi4gVGhlIGV4cGxhbmF0aW9uIGJlaGluZCBpcyB0aGF0
IEkgb25seSBoYXZlIDMgDQo+IGFudGVubmFzIHJpZ2h0IG5vdywgc28gSSBhbSBhY3R1YWxseSB3
b3JraW5nIHdpdGggMyBSeC4NCj4gQWJvdXQgc2V0dGluZyBTeW5jIHRvICJVbmtub3duIFBQUyIs
IEkgaGFkIHRyaWVkIGJlZm9yZSwgd2l0aCBubyANCj4gcmVzdWx0LCBidXQgSSBoYXZlIHNldHRl
ZMKgYWdhaW4uIEhvd2V2ZXIsIEkgaGF2ZSBuZXZlciB0cmllZCB0byBtb2RpZnkgDQo+IHRoZSAi
c3RhcnQgdGltZSIsIHdoaWNoIGluIEdOVSBSYWRpbyBpcyAtMS4wIGJ5IGRlZmF1bHQuIFRoZSAN
Cj4gaW50ZXJlc3RpbmcgdGhpbmcgaXMgdGhhdCBpZiBJIHRyeSB0byBzZXQgYSBwb3NpdGl2ZSB2
YWx1ZSBJIGdldCB0aGUgZXJyb3INCj4gZ3I6OmxvZyA6V0FSTjogdXNycF9zb3VyY2UxIC0gVVNS
UCBTb3VyY2UgQmxvY2sgY2F1Z2h0IHJ4IGVycm9yOiANCj4gRVJST1JfQ09ERV9MQVRFX0NPTU1B
TkQNCj4NClllYWgsIHRoaXMgaXMgZ29pbmcgdG8gcmVxdWlyZSBhIGJpdCBvZiBjdXN0b20gY29k
aW5nIG9uIHlvdXIgcGFydCB0byANCm1ha2Ugc3VyZSB0aGF0IGJvdGggQjIxMCBhZ3JlZSBvbiB3
aGF0IHRpbWUgaXQgaXMgd2hlbiB0aGUgUFBTIGFycml2ZXMuwqAgDQpJIHRoaW5rIHRoYXQgaGF2
aW5nDQogwqAgKmJvdGgqIG9mIHRoZW0gc2V0IHRvICJVbmtub3duIFBQUyIgd29uJ3Qgd29yayB2
ZXJ5IHdlbGwsIGJlY2F1c2UgdGhlIA0KZmlyc3Qgb25lIHdpbGwgKndhaXQqIGJlZm9yZSB0aGUg
Y29kZSBldmVuIGdldHMgdG8gdGhlIHNlY29uZCBvbmUsIHNvIA0KdGhleSdsbCBiZSBpbiBkaXNh
Z3JlZW1lbnQNCiDCoCBhYm91dCB0aW1pbmcuDQoNCllvdSdsbCBsaWtlbHkgaGF2ZSB0byBkbyB0
aGUgUFBTIHN5bmNocm9uaXphdGlvbiAiZGFuY2UiIHlvdXJzZWxmLg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
