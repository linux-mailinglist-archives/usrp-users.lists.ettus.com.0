Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A51FF48ED21
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 16:29:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C55B138559F
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 10:29:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WceTjBN8";
	dkim-atps=neutral
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id BDA963846B2
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 10:28:23 -0500 (EST)
Received: by mail-qt1-f173.google.com with SMTP id l17so10999314qtk.7
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 07:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=YCMp+wAXvYUyGBzggZs5pZQVvo1eRXbzoCHGxTt7tCY=;
        b=WceTjBN8eyaTbdeztBdCwd0hFlPmEGYpaBUxXrBloZU3xQE+UZTC8qfRt93HM8uuxf
         LtywTevqDurBFvSuHuwBbQhTo+QJIm9mEqnhEkZyEwplcVb0iDgX7eV/1LzwTGlrM/S3
         cZ9Ry2g9pNu+pygpuaQ6869s4Y+D7FVBgMmMES9SJdjaXM0sd273+8aevyAtHuQ/HUdZ
         R8CFqGKxvJ/9c0MNSkAPKUBMREARYZyAK/Z1tNhw4gmtowliihGRPMflbkcgIDZHic3X
         QuLMWMKtVw7/lEE+BkWIiAER17daQtPZO4sm10oDxt3HCkxXLZIMnElqq+5pXV8N7LO1
         I9Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YCMp+wAXvYUyGBzggZs5pZQVvo1eRXbzoCHGxTt7tCY=;
        b=fBx2fuTzwr3qsU8ilao7/+XyODwD3uNjCZdlFiGZI5hqFezPedVAEdoryE1FMrlM1r
         EFWAcvRr7yR1RfI3EP846ap7YRp+49hF8otYCKTl0WDLHWXQkTs/vt1colUFNdsWyQVb
         jFbN0+q3VvSDc02JBoNZQ23UShIPbfjI5/atxQHi3q4dqv2CK3wa0H9CEp/6bCNooFgF
         LV+WQMPDwaxtwZCH1O3Eb6iw+c0cnwxKY/TyG2YPB/fAiKyeKv6tdiqVhBvMt9BnE0Ig
         MuhR9kZs2/7EqENwRB191/iwXTwXRgeEBMMcLqq1QN1TwNpYlhpROtyCeK3m04f1sDVL
         ZOkg==
X-Gm-Message-State: AOAM533Jlh30pm439FkCv08AMoFrAxnONtblXCaUQWkbbfXhbZQTDMdn
	KUkmfP8accqjevE1RvHsXGA=
X-Google-Smtp-Source: ABdhPJwUMj2sZq7y/n99iBadZiTlH1eyDDDEX8teDWylSR2E4bEN9lIySqXSIjOqZw9sPYDPPxi4JA==
X-Received: by 2002:ac8:5a01:: with SMTP id n1mr8080724qta.359.1642174103149;
        Fri, 14 Jan 2022 07:28:23 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id u3sm530506qtw.84.2022.01.14.07.28.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 07:28:22 -0800 (PST)
Message-ID: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
Date: Fri, 14 Jan 2022 10:28:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Paul Atreides <maud.dib1984@gmail.com>
References: <2b2c4d7b-ead1-3769-ceec-2c745e8408f6@gmail.com>
 <B52BDAD1-90A3-48D5-A817-C899C6556A21@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <B52BDAD1-90A3-48D5-A817-C899C6556A21@gmail.com>
Message-ID-Hash: JODVM4UMXW6HASHHHGTB7JQIHH7RMDDK
X-Message-ID-Hash: JODVM4UMXW6HASHHHGTB7JQIHH7RMDDK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JODVM4UMXW6HASHHHGTB7JQIHH7RMDDK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMS0xNCAxMDowNywgUGF1bCBBdHJlaWRlcyB3cm90ZToNCj4gVGhhbmtzIE1hcmN1
cywgSeKAmXZlIGJlZW4gc2NvdXJpbmcgdGhlIFJ1YmlrcyBjdWJlIHRoYXQgaXMgdGhlIGtub3ds
ZWRnZSBiYXNlIGZvciBhYm91dCBhIHdlZWsgbm93LiBJ4oCZdmUgYWxzbyB3YXRjaGVkIHRoZSBE
YW4gQmFrZXIgR1JDT04yMDE5IHRhbGsgYW5kIGZvbGxvd2VkIHRoZSByZWZlcmVuY2VzIHRoZXJl
IGFzIHdlbGwuDQo+DQo+IFRoZSByZWZlcmVuY2UgeW91IGxpbmtlZCBpcyB2ZXJ5IGhlbHBmdWwg
aW4gYSBsb3Qgb2YgY2FzZXMsIGJ1dCBpbiB0aGlzIG9uZSBpdCBkb2VzbnQgYWRkcmVzcyAoYW55
d2hlcmUgSeKAmXZlIHNlZW4pIHRoYXQgaW4gb3JkZXIgdG8gaGF2ZSB0aGUgZGV2aWNlIG9wZXJh
dGUgd2l0aCBsb2NhbCBvc2NpbGxhdG9yIHNoYXJpbmcgYmV0d2VlbiBSRiAwIGFuZCBSRiAxLCBw
aHlzaWNhbGx5IGNvbm5lY3RpbmcgdGhlIHJhZGlvIGJhY2sgdG8gaXRzZWxmIG5lZWRzIHRvIGJl
IGRvbmUuIEnigJl2ZSBzZWVuIHBsZW50eSBvZiB0aGluZ3MgYWJvdXQg4oCcZXh0ZXJuYWwgTE/i
gJ0gYnV0IHRvIG1lIHRoYXQgdGVybSBpcyBhIGxpdHRsZSBjb25mdXNpbmcgYmVjYXVzZSBpdCBz
b3VuZHMgbGlrZSBpdOKAmXMgZXh0ZXJuYWwgTE8gdG8gdGhlIGRldmljZS4NCj4NCj4gSSBndWVz
cyBJIHdhcyBqdXN0IHRoaW5raW5nIGl0IG1pZ2h0IGJlIGEgZ29vZCBpZGVhIHRvIGxldCBOMzIx
IHVzZXJzIGtub3cgdGhhdCBpbiBvcmRlciB0byBhY2hpZXZlIHBoYXNlIGNvaGVyZW5jZSBiZXR3
ZWVuIElOVEVSTkFMIGNoYW5uZWxzLCBpdOKAmXMgZ29pbmcgdG8gYmUgbW9yZSB3b3JrIHRoYW4g
YSBCMjEwLg0KPg0KPiBKdXN0IG15IDIgY2VudHMuDQo+DQo+DQpZb3Ugc2hvdWxkIGJlIGFibGUg
dG8gZ2V0IGFkZXF1YXRlIHBoYXNlLWNvaGVyZW5jZSBpbiBhIHNpbmdsZSBOMzIxIA0Kd2l0aG91
dCB1c2luZyBMTy1zaGFyaW5nIGF0IGFsbC0tSSBUSElOSyB0aGF0IHRoZSBzeW50aGVzaXplcnMg
c3VwcG9ydA0KIMKgIHBoYXNlLXJlc3luY2ggb24gdHVuaW5nLCBzbyBpZiB0aGUgdHVuZSBjb21t
YW5kcyBhcmUgd3JhcHBlZCB1cCBpbiANCnRpbWVkIGNvbW1hbmRzLCB5b3Ugc2hvdWxkIGdldCBp
bnRlcm5hbCBwaGFzZSBjb2hlcmVuY2Ugd2l0aG91dA0KIMKgIHJlc29ydGluZyB0byBMTyBzaGFy
aW5nLg0KDQpCdXQgSSBkb24ndCBoYXZlIG9uZSBvZiB0aGVzZSBpbiBteSBjb2xsZWN0aW9uLCBz
byBJIGNhbid0IHRlc3QgdGhhdCANCmh5cG90aGVzaXMuLi4NCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
