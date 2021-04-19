Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D1F3644DA
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 15:44:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2296A383DDD
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 09:44:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Dp9jwde/";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id C5A9F383A42
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 09:43:29 -0400 (EDT)
Received: by mail-qk1-f181.google.com with SMTP id x11so35679362qkp.11
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 06:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=e7z1whA6fd92JMASmMqajjOYibEbx0ixP3NspKkR9Yk=;
        b=Dp9jwde/BJYYZBOrKPlZTDKB4nsrZqHLc6qeJSjuV5osVoiB4ef/RVDvaZZqf5emjV
         NuMhoeZ7gqJL2BVPNMfpMfnUWGV0J80z/vmqLdYDxN9DDL8Uf/62MoCB1G3jLAVzpZwT
         JIX9WopTjGSg1oxgMyuLsGmGKePy+gV2KRQRFbx29LmTMI/Ka1u97D9jFPDRIH91LEAs
         j+7UMDgBJcPuaGxWdgpOazdwuTmL/vl7zUfiGPqHrQaTvjZxQBHqCphpXHbglMBCf9qj
         KocAJog82e+l+Qthh2KD3WY5SfiCkRQTB7BqFzZ8V3sRiKloLrLp4BgK1cUR87N736RR
         3D1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=e7z1whA6fd92JMASmMqajjOYibEbx0ixP3NspKkR9Yk=;
        b=rOF7Kh0bAEtvQgazeC1njJMiWj/3lsfqIb1vjTo9816EO6A+KozOMWjkd+u11Y7a/D
         YUW+QFRHk1JhpO/E0XVuATuzFwgmbQAv3GZPoBX2bbBxdfjWb6v/sf8tMm+IPVTwrFX6
         q8DTrGZxMJAjfHy64GqCnHnAZKAK10G7LLYE6/+yixIMf+lgHk+3pSXYqUzVcfNDsMIX
         PmmEr8c4n9u5c1uhjwpIirXwqmkTJ4MqDaLNKpmFnB1uTVcFhf2Pm6YEfat9wy2gq6s9
         oOF7WpeMhHhKVUXDSA3HixWs+6pr2vp5m+GzIIF2pqVFpHv9N8a2lSnnxC5N+8yyzkFo
         yzuQ==
X-Gm-Message-State: AOAM531NaLIWrYeMAfmFeGRiLH0ZCGEm0HgP6g0DMOnCZi9g8+edQX0/
	Un1wAsWJbzti4DOkaBBKDzTVt6iqGClWzw==
X-Google-Smtp-Source: ABdhPJw6U+5HTJ+klbEw7c49aDm21ZATQL5SqHKRJETpkSTAgXiXEEgCoSc71q7xTy7SzEOKzl6FoA==
X-Received: by 2002:a37:a206:: with SMTP id l6mr12074454qke.5.1618839809019;
        Mon, 19 Apr 2021 06:43:29 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id f17sm9216079qtp.39.2021.04.19.06.43.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 06:43:28 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 19 Apr 2021 09:43:27 -0400
Message-Id: <FE685529-0728-4EC7-B265-2221EF88808B@gmail.com>
References: <CADjF3PwZ4DQ5aQG7KsKV3=ZMG4zB_2GORZgKb0mBBgV_kwpXqQ@mail.gmail.com>
In-Reply-To: <CADjF3PwZ4DQ5aQG7KsKV3=ZMG4zB_2GORZgKb0mBBgV_kwpXqQ@mail.gmail.com>
To: Martin Elfvelin <marelf-5@student.ltu.se>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: W2SICIJN4LTJH37F7MKAKOF7A7S3D5OU
X-Message-ID-Hash: W2SICIJN4LTJH37F7MKAKOF7A7S3D5OU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reflected power on USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W2SICIJN4LTJH37F7MKAKOF7A7S3D5OU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QSBjaXJjdWxhdG9yIGNhbiBnaXZlIHlvdSBhbiBhZGRpdGlvbmFsIDIwZEIgaXNvbGF0aW9uLiAN
Cg0KUHV0dGluZyA1ZCFtIGludG8gdGhlIFJYMiBwb3J0IHdpbGwgbGlrZWx5IGRlc3Ryb3kgdGhl
IFJYIGFtcGxpZmllciBpbiB0aGUgQUQ5MzYxLiANCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQo+
IE9uIEFwciAxOSwgMjAyMSwgYXQgOToxMiBBTSwgTWFydGluIEVsZnZlbGluIHZpYSBVU1JQLXVz
ZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6DQo+IA0KPiDvu78NCj4gSGVs
bG8gYWxsLA0KPiANCj4gSSBhbSBwbGFubmluZyBvbiB1c2luZyBhIFVTUlAgQjIwMCBpbiBhIGhh
bGYtZHVwbGV4IGNvbW11bmljYXRpb24gc3lzdGVtIHRvIGNvbW11bmljYXRlIHdpdGggYSBDdWJl
U2F0LiBUaGUgVFgvUlggcG9ydCB3aWxsIGJlIHVzZWQgZm9yIHRyYW5zbWl0dGluZyBhbmQgdGhl
IFJYMiBwb3J0IGZvciByZWNlaXZpbmcuIFRoZSB0cmFuc21pdHRpbmcgcG9ydCB3aWxsIGJlIGNv
bm5lY3RlZCB0byBhIHBvd2VyIGFtcGxpZmllciB3aXRoIGEgNjBXIG91dHB1dCwgdGhpcyB3aWxs
IGluIHR1cm4gY29ubmVjdCB0byBhbiBSRiBzd2l0Y2ggd2hpY2ggd2lsbCBzd2l0Y2ggYmV0d2Vl
biB0aGUgVFgvUlggKHRyYW5zbWl0dGluZykgYW5kIFJYMiAocmVjZWl2aW5nKS4gVGhlIFJGIHN3
aXRjaCBoYXMgYW4gaXNvbGF0aW9uIG9mIH40MC00MyBkQiB3aGljaCBtZWFucyBmcm9tIHRoZSA0
Ny43OCBkQm0gdHJhbnNtaXR0ZWQgd2Ugd2lsbCBoYXZlIHJvdWdobHkgNS04IGRCbSByZWZsZWN0
ZWQgdG8gUlgyLiBTaW5jZSB0aGUgU0RSIGlzIG9ubHkgcmF0ZWQgdG8gcmVjZWl2ZSBtYXhpbXVt
IDAgZEJtIEknbSB3b25kZXJpbmcgaWYgc29tZW9uZSBoYXMgYW55IGlkZWFzIG9uIGhvdyB0byBo
YW5kbGUgdGhpcy4gSSdtIHVuc3VyZSBpZiB0aGlzIHBvd2VyIHdpbGwgc2ltcGx5IGZyeSB0aGUg
Ym9hcmQgYW5kIEkgc2hvdWxkIGltcGxlbWVudCBhIHBvd2VyIGxpbWl0ZXIgb3IgaWYgdGhlcmUg
YXJlIG90aGVyIHdvcmthcm91bmRzLg0KPiANCj4gQXBwcmVjaWF0ZSBhbnkgaGVscCB5b3UgY2Fu
IHByb3ZpZGUuDQo+IEJlc3QgcmVnYXJkcywNCj4gTWFydGluIEVsZnZlbGluDQo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
