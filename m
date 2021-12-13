Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B20472DD5
	for <lists+usrp-users@lfdr.de>; Mon, 13 Dec 2021 14:50:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDA52385016
	for <lists+usrp-users@lfdr.de>; Mon, 13 Dec 2021 08:50:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kE2jZ2vO";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id B7C3038467B
	for <usrp-users@lists.ettus.com>; Mon, 13 Dec 2021 08:49:28 -0500 (EST)
Received: by mail-qt1-f171.google.com with SMTP id z9so15143009qtj.9
        for <usrp-users@lists.ettus.com>; Mon, 13 Dec 2021 05:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=qWjx+7Ez/v3O/RsaWhH4Kxg7hrInIEZQsAW7t81tFxs=;
        b=kE2jZ2vOjoskLEbdUfBxOcv2CATRQz9gVXj0ZDTyAgfs2O9GmHqcuZY+08QsxRwM05
         J4D/Lk6yCkJxBOJvg9IOt0FTI1IZtr8/5twQRXGb4qgSrB70Gb1cilpI4jMgt2LRdT7k
         RImqrqrUXoJ+VZfSHJhAg42NixrWz8z1LuLS+hPYjbgGxLeoWEsPeVLe0jrSJyKaRH4o
         55FKWQRk/NfbyQ42gul9OGNxhs+Pgjh9S0/wGSoH97UwQNqGSZBiSKkSC6VtvqMHABma
         uH9iXmZ7UAhwNSaVFmfeJlRImSkr16/GLpEEqZCwoOpyrFUT6UMDD96XKRHZAEfCw4/X
         GPJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qWjx+7Ez/v3O/RsaWhH4Kxg7hrInIEZQsAW7t81tFxs=;
        b=Xo8sKZ3x6zdDzyjcBJUJiJHdVAHUr2zQyU+zqnzns6xssbJGnOpc2llw4z1XRTljr6
         NEVt+UWAweG/aWaRAdIqpDbY/Okzqfkv0vRcmxDkfs73/DWBtUB/ELF8IOTdRCqh4nyo
         x+eJo7e+5NEIm66sz6ytE+5iYC3YqXaspvZBLxY61UDnSVW7mcGFeFZi5lDqCO1Y1WRY
         dkELF96dpx2jGZd/f1/IDEFxk+zr+1lzUwj0LHV4m5jNfVAHRgyQXwt74hoIugq3mO16
         Bo5dkfHhuv+1HseQ6DNP1gWuU/P+qKnRiYF4EvaYubzzQnBnFmj76rk2kzNkFMtVI8Nh
         8Nuw==
X-Gm-Message-State: AOAM532ZeYayCuOmWcY4qbSn7oPebv3PNbk2Xyidvxg44OnE/GLbDOVR
	bxfiuURkQZejK1pgNvEGEngF4UqaL8A=
X-Google-Smtp-Source: ABdhPJy1VJeeAyNHlb1EiDCafxCQjbJGlHOXRqF1fOYp3iKaH3TH10VG/6oPi5KDyjCu/sDK88W9xg==
X-Received: by 2002:ac8:5acf:: with SMTP id d15mr44839581qtd.5.1639403367078;
        Mon, 13 Dec 2021 05:49:27 -0800 (PST)
Received: from [192.168.2.221] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id t11sm9293567qtx.48.2021.12.13.05.49.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Dec 2021 05:49:26 -0800 (PST)
Message-ID: <77d8190a-8f27-9297-0ba7-f953251ed02f@gmail.com>
Date: Mon, 13 Dec 2021 08:49:25 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <pDx8ClDRgOJoYyr1t8oX3pYgHfcCNhdvqGXmAlOjXU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <pDx8ClDRgOJoYyr1t8oX3pYgHfcCNhdvqGXmAlOjXU@lists.ettus.com>
Message-ID-Hash: VOEQTWZ6SIHQ4ZI5TL66ECUWW3NSBSNN
X-Message-ID-Hash: VOEQTWZ6SIHQ4ZI5TL66ECUWW3NSBSNN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VOEQTWZ6SIHQ4ZI5TL66ECUWW3NSBSNN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMi0xMyAwNzo1MCwgaXcxZm53QGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gV2UgcmVj
ZWl2ZWQgdGhlIGJvYXJkIGF0IGVuZCBvZiBKdW5lIDIwMjAgYW5kIG5vdCB1c2VkIHRoYXQgbXVj
aCBkdWUgDQo+IHRvIENvdmlkIHJlc3RyaWN0aW9uIGluIGFjY2Vzc2luZyB0aGUgbGFiLg0KPg0K
PiBJIHRoaW5rIGl0IHdhcyB3b3JraW5nIHdpdGgg4oCcb2xk4oCdIEdOVS1SYWRpbyAodmVyc2lv
biAyKSwgYnV0IGluIE1heSANCj4gMjAyMSB3ZSB1cGRhdGVkIGV2ZXJ5dGhpbmcgdG8gR05VLVJh
ZGlvIDMgKGluY2x1ZGluZyBMaW51eCANCj4gZGlzdHJpYnV0aW9uLCBldGMuKS4gQXQgdGhhdCBw
b2ludCwgSSBoYWQgcHJvYmxlbSBzaW5jZSBHTlUtUmFkaW8gd2FzIA0KPiBjb21wbGFpbmluZyB0
aGF0IHRoZSBGUEdBIGltYWdlIHdhcyBub3QgaW4gbGluZSB3aXRoIHRoZSBVU1JQIGRyaXZlcnMs
IA0KPiBhbmQgaXQgYXNrZWQgdG8gdXBncmFkZSBpdCB1c2luZyB0aGUgaW1hZ2UgbG9hZGVyLg0K
Pg0KPiBJIGRpZCBpdCwgYW5kIHRoZSBVU1BSIHN0b3BwZWQgd29ya2luZyAoaS5lLiB0aGUgaW1h
Z2UgbG9hZGluZyB3YXMgbm90IA0KPiBzdWNjZXNzZnVsLCB3aXRoIHNhbWUgYWJvdmUgZXJyb3Ip
LiBXZSByZWNvdmVyZWQgdXNpbmcgVml2YWRvLCBhbmQgDQo+IHRoaXMgaXMgd2hlcmUgd2UgYXJl
IG5vdy4NCj4NCj4gSSBtYXkgdHJ5IHRvIHVwbG9hZCB0aGUgaW1hZ2UgdXNpbmcgdGhlIFBDSWUg
aW50ZXJmYWNlIG9uIGFub3RoZXIgDQo+IG1hY2hpbmUuIFRoYXQgaXMgdGhlIG9ubHkgb3RoZXIg
dGhpbmcgdGhhdCBJIGNhbiB0aGluayBhYm91dCBub3cuDQo+DQo+DQo+DQpKdXN0IHRvIGNvbmZp
cm0tLXlvdSdyZSBydW5uaW5nIHRoZSBhcy1zdXBwbGllZC1ieS1FdHR1cyBpbWFnZXMgb24gdGhl
IA0KWDMxMCB3aGVuIHRoaXMgaGFwcGVucz8NCg0KQWxzbyBtYWtlIHN1cmUgdGhhdCB5b3UncmUg
bG9hZGluZyBpbWFnZXMgdGhhdCBhcmUgY29tcGF0aWJsZSB3aXRoIHRoZSANCnZlcnNpb24gb2Yg
VUhEIHlvdSdyZSBydW5uaW5nLsKgIFVzZQ0KDQp1aGRfaW1hZ2VzX2Rvd25sb2FkZXINCg0KVG8g
ZG93bmxvYWQgY29tcGF0aWJsZSBpbWFnZXMgdG8geW91ciBQQy4NCg0KSUYgdGhhdCBmYWlscywg
eW91IGNvdWxkIHRyeSBmb2xsb3dpbmcgdGhlICJ1bmJyaWNraW5nIiBwcm9jZWR1cmUgaGVyZToN
Cg0KaHR0cHM6Ly9rYi5ldHR1cy5jb20vWDMwMC9YMzEwX0RldmljZV9SZWNvdmVyeQ0KDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
