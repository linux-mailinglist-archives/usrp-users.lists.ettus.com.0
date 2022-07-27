Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA88D582703
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 14:49:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C028380854
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 08:49:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658926162; bh=6VbiFJXoDIdu0hWvTQqovG4iIKtpAxZzaZF9HWLPYQ8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=bTEnhiPPiQ5YsqemZ/eLjjhOCB8ztHsTHvK2ff9DNvZSGcO+S3lSPSU7/v8sz07kf
	 XB6pYFAdS+6kCY2nPXgqI5ItSW9V9jt1pv3U8ka/0KmXCk9XR+wA2T/UNM7fhgspLx
	 dJE63wpb0WSsW1AuFV/4b1kXdURhsnzD/EIZhg8gmg/0mqj/CBzctsn2qZwa+4GYjw
	 2uTGd2arS8T5Wb+fDbQF2rsPIew6h7cHXfMbShMP6QsJNuklKdXY2mWq1i/YIwOd1M
	 un9JiEcQ6/jnnWgJORvDELTBu0G+k2EOcSe+usRCSGobXcbhP9wJqj5XWi7E9XykZC
	 HRWh9gQgLuwig==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 692EB383AF9
	for <usrp-users@lists.ettus.com>; Wed, 27 Jul 2022 08:39:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aRusWo71";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id h22so12517103qta.3
        for <usrp-users@lists.ettus.com>; Wed, 27 Jul 2022 05:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=uB8OxhPLTorXV4VdxULwIy3F6bUpDcvJF9LBGJMUGgo=;
        b=aRusWo716iTbvAwFKp8tlhxE8+y2SkQlwOMBCpzJgM916PbYZO9RKoe0JmKItWZy08
         HaiNCfQH8ojAsDqsOsTM0meYXR1WUZj5Jt9LIsdtqt/Kg3yGLVAXTB8p8bMkLo+HSX43
         WF4TPt9NQyObh5IbIcZRJbFnIHFjBxcgwD5kqNt9Dye7we9Vzhn/pkhD69DQC3sVekIs
         EPgLDB6xNUC8vRNUp2O9yu2JYjNlPamUoAZUh71GjbajOI/AoiiWJcfJqA4Fta443Zfn
         8xCCRj0aVOvGSceGEmZF/Sld81TCHl10Jn400xIPBsQgEi40Y7ze6wq7rOxkA+6kXqiv
         Oh1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=uB8OxhPLTorXV4VdxULwIy3F6bUpDcvJF9LBGJMUGgo=;
        b=kK9L+nezBH6SdL5nV7ihNJKVS7Kr6ZYrJvf/c5BHpsF2yINX8ilkVPNtJaIcC82EEp
         QSW1WRndizX2pZmprunX3uGc7ljAGnSx3UiSkv32rSK4joB+pKpvhEVhlvB5Nm1PcZh5
         jBn4Olw/aXmLCNv4/nh9EWVhlrGfyjk7ZOGPEsgk2/SXr+h+6dW0kly0BMgr54pVrZfe
         Xvx73WRmnVuyX99DVDTJeR0bUhPyfmzqnHv7/6/sgKwJH4C/9gQX61n5Ed0RW8lddq2X
         f47uw95QstM86iGi6A2ibu5rp9yZeQF4c7Ips7auMN0VSRVqG9DSyc0eg+fc/AmoTwoz
         J+kw==
X-Gm-Message-State: AJIora9n+ZxlWxcDx81RlTgWLKsSxeLujsrDdWnkrUv34c1jEIk6ZMPq
	EhsuHRzKmBfkvc+eqDdWENbGETRPaP0=
X-Google-Smtp-Source: AGRyM1t+jKwjlKowySGoOYUqG0OEMCPPxthKBxZaypazXHPZV1XcMUSt5IeNuQ7YFMOhXt3ZvkuZQw==
X-Received: by 2002:ac8:5787:0:b0:31e:df6b:653 with SMTP id v7-20020ac85787000000b0031edf6b0653mr18563937qta.249.1658925584492;
        Wed, 27 Jul 2022 05:39:44 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id dm21-20020a05620a1d5500b006b627d42616sm12453415qkb.35.2022.07.27.05.39.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 05:39:44 -0700 (PDT)
Message-ID: <c9dd3975-7fc0-13f3-8cea-6591bc6ad687@gmail.com>
Date: Wed, 27 Jul 2022 08:39:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <dcdd176b-83bc-e4e4-0108-c0764738e0fb@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <dcdd176b-83bc-e4e4-0108-c0764738e0fb@gmail.com>
Message-ID-Hash: 35TZZDKKGNOPTCLZOQMYHO4NCU6OTNUE
X-Message-ID-Hash: 35TZZDKKGNOPTCLZOQMYHO4NCU6OTNUE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [WARNING] [MPM.RPCServer] A timeout event occured!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/35TZZDKKGNOPTCLZOQMYHO4NCU6OTNUE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNy0yNiAxOTozNSwgR2l1c2VwcGUgU2FudGFyb21pdGEgd3JvdGU6DQo+IERlYXIg
Y29tbXVuaXR5LA0KPg0KPiBJIGFtIHRyeWluZyB0byB1c2UgT3BlbkFpckludGVyZmFjZSB3aXRo
IGFuIE4zMTAgYXMgZ05CLiBJIGFtIHdyaXRpbmcgDQo+IG9uIHRoaXMgbWFpbCBsaXN0IGJlY2F1
c2UgSSB0aGluayBteSBwcm9ibGVtIGlzIGNhdXNlZCBieSB0aGUgDQo+IGNvbmZpZ3VyYXRpb24g
b2YgdGhlIE4zMTAuDQo+DQo+IFdoZW4gSSBydW4gdGhlIE4zMTAgSSBnZXQgdmFyaWFibGUgZXJy
b3JzLiBXaGVuIEkgcnVuIGl0IGZvciB0aGUgZmlyc3QgDQo+IHRpbWUgYWZ0ZXIgYSBsb25nIHRp
bWUgSSBnZXQgbm8gZXJyb3JzLg0KPg0KPiBCdXQgd2hlbiBJIHJ1biBpdCBhZnRlciBhIHNob3J0
IHRpbWUgSSBnZXQgdGhlc2Ugd2FybmluZ3MgYW5kIGVycm9ycyANCj4gKG5vdCBhbHdheXMgYWxs
IG9mIHRoZW0pOg0KPg0KPiBbV0FSTklOR10gW01QTS5SUENTZXJ2ZXJdIFNvbWVvbmUgdHJpZWQg
dG8gY2xhaW0gdGhpcyBkZXZpY2UgYWdhaW4gDQo+IChGcm9tOiAxOTIuMTY4LjIwLjEpDQo+IFtX
QVJOSU5HXSBbTVBNLlJQQ1NlcnZlcl0gQSB0aW1lb3V0IGV2ZW50IG9jY3VyZWQhDQo+IFtXQVJO
SU5HXSBbUkZOT0M6OkdSQVBIXSBPbmUgb3IgbW9yZSBibG9ja3MgdGltZWQgb3V0IGR1cmluZyBm
bHVzaCENCj4NCj4gdGVybWluYXRlIGNhbGxlZCBhZnRlciB0aHJvd2luZyBhbiBpbnN0YW5jZSBv
ZiAndWhkOjpydW50aW1lX2Vycm9yJw0KPiDCoCB3aGF0KCk6wqAgUnVudGltZUVycm9yOiByeCB4
cG9ydCB0aW1lZCBvdXQgZ2V0dGluZyBhIHJlc3BvbnNlIGZyb20gDQo+IG1nbXRfcG9ydGFsDQo+
IEFib3J0ZWQNCj4NCj4gQW5kIHRoZXNlIGFyZSBqdXN0IGEgZmV3IGV4YW1wbGVzLg0KPg0KPiBJ
IGNvdWxkIHRoaW5rIG9mIGlnbm9yaW5nIHRoZW0sIHVzaW5nIHRoZSBOMzEwIG9ubHkgYSBmZXcg
bWludXRlcyANCj4gYWZ0ZXIgdGhlIHByZXZpb3VzIHVzZS4gVGhlIHByb2JsZW0gaXMgdGhhdCB0
aGUgZGV2aWNlIGRvZXMgbm90IHNlZW0gDQo+IHRvIHRyYW5zbWl0IGFueXRoaW5nIG92ZXIgdGhl
IGFpciwgZXZlbiBvbiB0aGUgZmlyc3QgdHJ5LiBJIHNheSB0aGlzIA0KPiBiZWNhdXNlIHVzaW5n
IHRoZSBzYW1lIGNvbmZpZ3VyYXRpb24gZmlsZSB0aGF0IEkgdXNlIHdpdGggYSBCMjEwIHRoZSAN
Cj4gZ05CIGRvZXMgbm90IHdvcmssIHdoaWxlIHdpdGggdGhlIEIyMTAgaXQgd29ya3MgYW5kIEkg
Y2FuIGNvbm5lY3QgdGhlIA0KPiBzbWF0aHBob25lLg0KPg0KPiBJIGF0dGFjaCB0aGUgbG9nIGZp
bGUgb2YgT3BlckFpckludGVyZmFjZS4NCj4NCj4gQWxzbywgSSBmcmVxdWVudGx5IGdldCB0aGUg
Y2xhc3NpYyAiTCIgaW5kaWNhdGluZyBvdmVyZmxvdyBhZnRlciBhYm91dCANCj4gdGVuIHNlY29u
ZHMuDQo+DQo+IEkgaGF2ZSBzb2x2ZWQgYSBzaW1pbGFyIHByb2JsZW0gYmVmb3JlIChJIHJlcG9y
dCBhIHByZXZpb3VzIG1haWwpOg0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gDQo+DQo+IEkgaW5z
dGFsbGVkIHRoZSBVSEQgNC4xIHZlcnNpb24gYW5kIGZvbGxvd2VkIHRoaXMgdHV0b3JpYWw6IA0K
PiBodHRwczovL2tiLmV0dHVzLmNvbS9VU1JQX04zMDAvTjMxMC9OMzIwL04zMjFfR2V0dGluZ19T
dGFydGVkX0d1aWRlIA0KPiBmb3IgdXBkYXRpbmcgdGhlIExpbnV4IEZpbGUgU3lzdGVtIGFuZCB1
cGRhdGluZyB0aGUgRlBHQSBJbWFnZS4NCj4gV2hlbiBJIHRyeSBhIHNpbXBsZSBleGFtcGxlIGZp
bGU6DQo+IC4vcnhfYXNjaWlfYXJ0X2RmdCAtLWZyZXEgOThlNiAtLXJhdGUgNWU2IC0tZ2FpbiAy
MCAtLWJ3IDVlNiAtLXJlZi1sdmwgDQo+IC0zMA0KPiBJIGdldCB0aGUgZm9sbG93aW5nIGVycm9y
Og0KPiBbV0FSTklOR10gWzAvUmFkaW8jMF0gc2V0X3J4X2JhbmR3aWR0aCB0YWtlIG5vIGVmZmVj
dCBvbiBBRDkzNzEuIA0KPiBEZWZhdWx0IGFuYWxvZyBiYW5kd2lkdGggaXMgMTAwTUh6DQo+IEkg
Y2Fubm90IGZpbmQgYW55IHVzZWZ1bCBpbmZvcm1hdGlvbiBvbmxpbmUsIGFwYXJ0IGZyb20gdGhp
cyANCj4gZGlzY3Vzc2lvbjogDQo+IGh0dHBzOi8vd3d3Lm1haWwtYXJjaGl2ZS5jb20vdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20vbXNnMDU3MzUuaHRtbCANCj4gd2hpY2ggZGlkIG5vdCBoZWxw
IG1lLg0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gDQo+DQo+DQo+IEFsdGhvdWdoIGluIHRoZSBm
b3J1bSBpdCB3YXMgdG9sZCB0byBtZSB0aGF0IHRoaXMgd2FzIGp1c3QgYSB3YXJuaW5nLCANCj4g
SSBmaXhlZCBpdCBieSB1cGdyYWRpbmcgdGhlIHZlcnNpb24gb2YgVUhEIHRvIDQuMy4NCj4NCj4g
QWxsIHRoaXMgc3VnZ2VzdHMgdG8gbWUgdGhhdCB0aGVyZSBpcyBzb21ldGhpbmcgbWVzc2VkIHVw
IGluIHRoZSANCj4gaW5pdGlhbCBzZXR1cC4NCj4NCj4gRG9lcyBhbnlvbmUgaGF2ZSBhbnkgaWRl
YXMgYW5kIGNhbiBoZWxwIG1lPw0KPg0KV2hlbiBhbiBhcHBsaWNhdGlvbiB0ZXJtaW5hdGVzIGFi
bm9ybWFsbHksIHRoZSBOMzEwIGRvZXNuJ3QgImtub3ciIHRoYXQgDQp0aGUgYXBwbGljYXRpb24g
aGFzICJnb25lIGF3YXkiLCBhbmQgdGFrZXMgaXQgYSB3aGlsZSB0byBub3RpY2UsIGFuZCANCnJl
c2V0IGl0cyBpbnRlcm5hbCBzdGF0ZS4NCiDCoMKgIE1hbnkgbmV0d29yay1iYXNlZCBhcHBsaWNh
dGlvbnMgdGhhdCB1c2UgY29ubmVjdGlvbmxlc3MgcHJvdG9jb2xzIA0KbGlrZSBVRFAgaGF2ZSB0
aGUgc2FtZSBpc3N1ZSwgZXZlbiBvdXRzaWRlIG9mIHRoZSBTRFIgdW5pdmVyc2UuDQoNClRoZSBi
YW5kd2lkdGggd2FybmluZyBpcyBqdXN0IGEgd2FybmluZy7CoMKgIEl0IHdpbGwgaGF2ZSBsaXR0
bGUgdG8gbm8gDQplZmZlY3Qgb24geW91ciBhcHBsaWNhdGlvbi7CoCBUaGlzIGhhcyBiZWVuIGV4
cGxhaW5lZCBpbiBwcmV2aW91cyBwb3N0cy4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
