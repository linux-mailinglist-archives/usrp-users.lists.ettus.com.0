Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FB83F6AF0
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 23:20:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F2E2738442D
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 17:20:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="o6peJa2q";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 261233841A3
	for <USRP-users@lists.ettus.com>; Tue, 24 Aug 2021 17:20:00 -0400 (EDT)
Received: by mail-qt1-f169.google.com with SMTP id x5so18054537qtq.13
        for <USRP-users@lists.ettus.com>; Tue, 24 Aug 2021 14:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=rbje2QwdieAZ6lszGTLKCslxVjJtoJJHs9Z+OmSE/iY=;
        b=o6peJa2qC7Ep36hP91GzSPnp3+RTJQFWnM6/G6muqvaIhdCml7jCfn4auUaT3vDSkl
         dAzsLRRip52QzYkuOejfwhLz96AsYI6aPnDNsWD9Xd2fjPdEGqlzpYAG1cYk/6+w/ZZX
         8sHj5sxSxnCPN4A64v8cMpWg7kIcy26IDUKe3Ix9I20EKjIXbeCjhchRjyqTy/BTJYxs
         OvhrEu2SwTq9EJkhYkO+QFKXh1aZYPMuGw+UKoYcUVqEROASLUHNOowLC4D3BSTCVH3l
         dFQciWaO56DSabLySgAB7WxPbCfLQdUFrnNSUTPxZOVXrUUHX1kZ2nNSTzwCSTiZUdox
         6kJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=rbje2QwdieAZ6lszGTLKCslxVjJtoJJHs9Z+OmSE/iY=;
        b=mq+6Ppu1pt4xCp8ItykTCS4iigE1UO+eTT6z7l5DrgQoNKk1EgwanxBid3NlAmheAk
         uCvslqZOKclE7eO5d1mqRSBiRYiiWNJqUD26i6JvY192EzGbX6iK699zwwPIYiugHplL
         tpz/OCA+T3513Qq7cwo1n0dfmcbbpu0OHp4Hj+1srnTOMtkcBqbvNY6JHrEgoYIQjsaf
         3V0YgKfZLMJ+G8UQ7aI1dX4U/z31qTi8y2FSLJLVg+WxkJ9kGuv7zrUgaLEf2LAM/Dgg
         vuNdNE57Ay5o6ebhQsajfoIqs4YPRdMXC7kDEuYZZuWDGgqgjzjkYYOrrbfyavEgJGUr
         3Otw==
X-Gm-Message-State: AOAM53319SV97ASyzAztd/Dctfb6RGfKKKTNbkl4D3JTt0YfM+k9rjcu
	eSxdDCzgMQPN9aB7ht5jwMgKpQcFUPzYUg==
X-Google-Smtp-Source: ABdhPJz0RqNRox9hHUtj5BlXcfAAXOYMH+/UYIk7DVO+95w1XKLNVNCIQzMZJYGIRxHa1AN1Vd8eeQ==
X-Received: by 2002:a05:622a:1911:: with SMTP id w17mr24381426qtc.228.1629840000335;
        Tue, 24 Aug 2021 14:20:00 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id f12sm2964667qte.66.2021.08.24.14.19.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 14:19:59 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 24 Aug 2021 17:19:58 -0400
Message-Id: <19B59BC4-DD76-4F88-9465-085241A4398F@gmail.com>
References: <CANsNeao6k=2hTMc7orLE2L=dXKuoM243zTJ3VDWtUnDYU_YvZQ@mail.gmail.com>
In-Reply-To: <CANsNeao6k=2hTMc7orLE2L=dXKuoM243zTJ3VDWtUnDYU_YvZQ@mail.gmail.com>
To: Rich Gopstein <rich@ourowndomain.com>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: IWY23JQVZXYHVBINGMMLK4R5ELZLIGKB
X-Message-ID-Hash: IWY23JQVZXYHVBINGMMLK4R5ELZLIGKB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading E310 temperatures
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IWY23JQVZXYHVBINGMMLK4R5ELZLIGKB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TXkgYXBwcm9hY2ggd291bGQgYmUgdG8gc2VlIGlmIGFueSBvZiB0aG9zZSBzZW5zb3JzIGFyZSB1
bmRlcnN0b29kIGJ5IHRoZSBrZXJuZWwgbG1fc2Vuc29ycyBzdWJzeXN0ZW0uIA0KDQpTZW50IGZy
b20gbXkgaVBob25lDQoNCj4gT24gQXVnIDI0LCAyMDIxLCBhdCA1OjEyIFBNLCBSaWNoIEdvcHN0
ZWluIDxyaWNoQG91cm93bmRvbWFpbi5jb20+IHdyb3RlOg0KPiANCj4g77u/DQo+IEknbSBoZWxw
aW5nIG91dCBvbiBhIHByb2plY3QgdGhhdCdzIHVzaW5nIGFuIEUzMTAuICBTb21lb25lIGVsc2Ug
aXMgZG9pbmcgdGhlIEdOVVJhZGlvIGNvZGUsIGJ1dCBJIG5lZWQgdG8gcmVhZCB0aGUgdGVtcGVy
YXR1cmUgdmFsdWVzIHBlcmlvZGljYWxseSAob25jZSBldmVyeSBmZXcgc2Vjb25kcykuICBNeSBj
b2RlIHdpbGwgbm90IGJlIHJ1bm5pbmcgaW4gR05VUmFkaW8uDQo+IA0KPiBJdCBsb29rcyBsaWtl
IHRoZXJlIGFyZSB0aHJlZSB0ZW1wIHNlbnNvcnMgKFp5bnEsIEFEVDc0MDgsIGFuZCB0aGUgQUQ5
MzYxKS4gIA0KPiANCj4gV2hhdCBhcmUgbXkgb3B0aW9ucyBmb3IgcmVhZGluZyB0aGUgdGVtcCB2
YWx1ZXMgb3V0c2lkZSBvZiBHTlVSYWRpbz8gIElmIGl0IG1hdHRlcnMsIHRoZSBFMzEwIGlzIHJ1
bm5pbmcgVUhEXzMuMTUNCj4gTXkgY29kZSB3aWxsIGJlIHJ1bm5pbmcgb24gdGhlIEUzMTAgZGly
ZWN0bHkuDQo+IA0KPiANCj4gVGhhbmtzLg0KPiANCj4gUmljaA0KPiANCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
