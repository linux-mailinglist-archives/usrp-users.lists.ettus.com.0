Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4A14677FB
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 14:18:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51B94385378
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 08:17:59 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PmtJSmo0";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id B8B0038528F
	for <USRP-users@lists.ettus.com>; Fri,  3 Dec 2021 08:17:04 -0500 (EST)
Received: by mail-qk1-f180.google.com with SMTP id t6so3322810qkg.1
        for <USRP-users@lists.ettus.com>; Fri, 03 Dec 2021 05:17:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=jJB99ok3R+LmSMsL1XtdENZUdkufJ+ngBnpg5zFN9nQ=;
        b=PmtJSmo03v+MdQmyydArFpTY9/87v2uLzhbMZDLVWOCDEJAfrazTkMedE2XDLWMmNX
         cM5fArdKt6wfaZFhTO/0grwmKw+NeIRqs75I+RdFd0yr5Qs8KTovxb9tapn2P/+WQeWY
         1TAO/60rwa9yWKwLLgY/XkYmWMWJmCzQ3MQNxM3xPTNgwaulaCU0cfHNYkBFOpmUPe8/
         Wi6EhLX56Z5PPBRydLHV9h+4hkwA0LWQROmrAaHP3GSDZ2U7VI3ABXHBdJ8FADQnTTTf
         4aXKL7jRHaMNC/OmBNbhWQN26l3AYU5jBaOJSzwimNCtC4dl5/XxcXwfKLi83AZg4fq4
         Q0Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=jJB99ok3R+LmSMsL1XtdENZUdkufJ+ngBnpg5zFN9nQ=;
        b=5/XwS7cq/GE9V0HK2BmYYBXhRfJr+fpVhPbw1QPdIXU6RqUiHjH3B0o8GDHof7C7Bh
         eOuZNHRGImRw8/KMa/z2hfyVW2/x3SOmBfCQG2k3Up9tjK6TXOI/uwOIAvqWtoQ9vPGB
         /hM1XKD+6NITEqNZeTfIMN1IwGedB4a+DYw3noo2Q3QDfhCzGGOzkhe8ojwvl6M8mkBG
         j4+XphtiQYMCRxfthnKnyg8q4TFxcjQHsyW0rKc2G90gOg3QJCe1Z9UQPiQOiRMc4Cni
         w7j3RUqlNEpSIikq+kFEffVfwmv1X+K2Q30UMrY2QXGnZqak8STt82aEzI2faPQf798u
         lNOg==
X-Gm-Message-State: AOAM532aXSYjt3y7Ej8FfZuWhS0gvWniJ+X8p+h+EJ47XBj/sbBJSkm8
	MBG+0vHdVHSGHY/spOQxypJiPJdcjZk=
X-Google-Smtp-Source: ABdhPJzE/slxI8OZ5tEBMRkpg1UiwTaGITZFfkNg6fP9BEh+ujdMZ8qhMxIkSn+Lgwyt5wsPkFL29g==
X-Received: by 2002:a05:620a:440b:: with SMTP id v11mr16675193qkp.160.1638537424016;
        Fri, 03 Dec 2021 05:17:04 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id i14sm2039782qko.9.2021.12.03.05.17.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Dec 2021 05:17:03 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 3 Dec 2021 08:17:02 -0500
Message-Id: <04AF8CB2-4303-463F-A868-D57EFC7AF2B5@gmail.com>
References: <CACfkGzVBb8d_A-ZJJKODKj3by_4bPTXsOCrzAsQOgh=-mObqKA@mail.gmail.com>
In-Reply-To: <CACfkGzVBb8d_A-ZJJKODKj3by_4bPTXsOCrzAsQOgh=-mObqKA@mail.gmail.com>
To: =?utf-8?B?57+B5YGJ5ZC+?= <cmdjbst@gmail.com>
X-Mailer: iPhone Mail (18H107)
Message-ID-Hash: 5T6EZ3UDX2UMQ4BLWLC3YITDCENQBC6Y
X-Message-ID-Hash: 5T6EZ3UDX2UMQ4BLWLC3YITDCENQBC6Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using N200 with UBX160
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5T6EZ3UDX2UMQ4BLWLC3YITDCENQBC6Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlcmXigJlsbCBiZSBhbGlhc2luZy4gDQoNClNlbnQgZnJvbSBteSBpUGhvbmUNCg0KPiBPbiBE
ZWMgMywgMjAyMSwgYXQgMjozNSBBTSwg57+B5YGJ5ZC+IDxjbWRqYnN0QGdtYWlsLmNvbT4gd3Jv
dGU6DQo+IA0KPiDvu78NCj4gSGksIEkgd2FudCB0byBrbm93IGlmIEkgY2FuIHVzZSBOMjAwIHdp
dGggVUJYMTYwLiBNeSBnb2FsIGlzIHRvIHJ1biB0aGUgTjIwMCBhdCAxMDBNc3BzIHRvIHJlY2Vp
dmUgMTAwTUh6IGJhbmR3aWR0aCBvZiBzaWduYWwuICBXaGljaCBtZWFucyB0aGF0IFVCWDQwIGlz
IG5vdCB0aGUgcmlnaHQgY2hvaWNlLiBJIGRvbid0IHNlZSB0aGUgVUJYMTYwIG9uIHRoZSByZWNv
bW1lbmRlZCBjb21wYXRpYmxlIHByb2R1Y3RzIG9mIE4gc2VyaWVzIGRldmljZXMuIEJ1dCBJJ3Zl
IGZvdW5kIG91dCB0aGUgZGF0YXNoZWV0IG9mIFVCWDE2MCBzcGVjaWZpZWQgdGhhdCAgVUJYMTYw
IGlzIGNvbXBhdGlibGUgd2l0aCBib3RoIFggYW5kIE4gc2VyaWVzLiBTbywgd2lsbCB0aGlzIGNv
bWJpbmF0aW9uIHdvcms/IElzIHRoZXJlIGdvaW5nIHRvIGJlIHNvbWUgYWxpYXNpbmcgaXNzdWU/
DQo+IA0KPiANCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQo=
