Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6CC38C75A
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 15:00:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2136438542C
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 09:00:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g3HJBpzn";
	dkim-atps=neutral
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 09AEA385335
	for <USRP-users@lists.ettus.com>; Fri, 21 May 2021 08:59:51 -0400 (EDT)
Received: by mail-qv1-f46.google.com with SMTP id ee9so10288832qvb.8
        for <USRP-users@lists.ettus.com>; Fri, 21 May 2021 05:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=EE6Kd0rqxbQJ6cLQHuqIVsBCjlYFdj9zg3IA+MW3SRM=;
        b=g3HJBpznWX3DVFZ4nQ+iQH7dJBms2TyLn/geILwwQ1T+6cDNS+Tp00RBCJVUHGVM+6
         f7eSKhS8fdTVjFZEcAwTaHmSNEOKK9nI+IwYpv4jJpfRzeNLUravyVc9bpJebbYLQyrb
         zHsVGQ7dTGKsZikEAylbbKZbETvkili4/69lrMnpHSGVrhA1Fn6FNJvM+MIC8lezM9b5
         TBda6NbtxG6t3P5aECO9ozYKQAo57QqKI0xwUt88SnMJ+39YgGk0f8WVIEhqRBGL8X5b
         DEB424lBjslaW22ByO1aCVmh4NlAo3lzIhRTVi1uwTCsq+GUGNYIfOoeyv9/WIZ91NZr
         YE4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=EE6Kd0rqxbQJ6cLQHuqIVsBCjlYFdj9zg3IA+MW3SRM=;
        b=Yjeah1V9NBIlZpPdPBSOSGc7IedQQz727V7OLqmoqzMjgwmcBEGxBbeFvodwQz8Lf9
         cgwGBOv9EZ8vZSvL8I2if+Hh3mrEBTkGq700E62bPCMhfxRhFvxgCaBKfxlWdUCajAho
         tmDxNisxYeFSevXtgAcnQzHv2bEKE62raO6Muf7LEMrKpCKSZ+OZ2CdCtCu3RrmKp5mA
         f+piwCkfXKzTc/nY6AUrrHcBQ7NM0ztvfj5QWgtNijHi2XBOWqn/NVjkdxBP9f6wxMrm
         pGGM5n4WhKEHCScw9dw+AyVUXAaLBEBMiGpk23x6x9lpXkM+smo4itNbA4ChYmWYoXbr
         qw+Q==
X-Gm-Message-State: AOAM530xFB2ziiam5xadiAd/4tSQolhEfv7hxpJAQ44baRBSwj0T+ZFf
	bl4GHavQU38Rwnz5264rqcA=
X-Google-Smtp-Source: ABdhPJziBTnyyP5kQvn7UzCgK/mGmwNf4s8P8QGHd/kShuyUUpBP12bHtshRL75pZNWAd+bpYisxCg==
X-Received: by 2002:ad4:4e67:: with SMTP id ec7mr12643523qvb.58.1621601991471;
        Fri, 21 May 2021 05:59:51 -0700 (PDT)
Received: from [192.168.2.132] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id l10sm4697192qtn.28.2021.05.21.05.59.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 05:59:50 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 21 May 2021 08:59:50 -0400
Message-Id: <B1692FB6-D27A-4CEE-A5B4-C99195A6F4C2@gmail.com>
References: <BN6PR19MB3138AF42C6927FF3CA550BC4A4299@BN6PR19MB3138.namprd19.prod.outlook.com>
In-Reply-To: <BN6PR19MB3138AF42C6927FF3CA550BC4A4299@BN6PR19MB3138.namprd19.prod.outlook.com>
To: Jeff S <e070832@hotmail.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: XQJ3HPMG4VODOA7HWBE54B7Y274LKJZV
X-Message-ID-Hash: XQJ3HPMG4VODOA7HWBE54B7Y274LKJZV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Exception
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XQJ3HPMG4VODOA7HWBE54B7Y274LKJZV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T25jZSB0aGlzIGhhcHBlbnMsIGlzIHRoZSBYMzEwIHBpbmcgYWJsZT8gDQoNCldoYXQgZG9lcyBp
ZmNvbmZpZyBzYXkgYWJvdXQgdGhlIGludGVyZmFjZT8NCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0K
DQo+IE9uIE1heSAyMSwgMjAyMSwgYXQgODo1MSBBTSwgSmVmZiBTIDxlMDcwODMyQGhvdG1haWwu
Y29tPiB3cm90ZToNCj4gDQo+IO+7v0kndmUgYmVlbiBydW5uaW5nIGFuIFgzMTAgZm9yIHF1aXRl
IGEgd2hpbGUsIGFuZCByZWNlbnRseSBnb3QgdGhlIGZvbGxvd2luZyBtZXNzYWdlOg0KPiANCj4g
ICAgIltFUlJPUl0gW1VIRF0gQW4gdW5leHBlY3RlZCBleGNlcHRpb24gd2FzIGNhdWdodCBpbiBh
IHRhc2sgbG9vcC5UaGUgdGFzayBsb29wIHdpbGwgbm93IGV4aXQsIHRoaW5ncyBtYXkgbm90IHdv
cmsuc2VuZDogTmV0d29yayBpcyB1bnJlYWNoYWJsZSINCj4gDQo+IE15IGN1cnJlbnQgY29uZmln
dXJhdGlvbiBpczoNCj4gDQo+IFVidW50dSAxOC4wNA0KPiBVSEQgVUhELTQuMCAoOGYyNzMzMCwg
My8xNi8yMSkNCj4gR05VIFJhZGlvIHYzLjguMi4wLTExMi1nZTIwZmZhM2MNCj4gUU5BUCBUaHVu
ZGVyYm9sdCAzIHRvIDEwR2JFIEFkYXB0ZXINCj4gDQo+IEkgZ290IHRoZSBtZXNzYWdlIG9uY2Ug
eWVzdGVyZGF5IGFuZCBvbmNlIHRvZGF5LiAgSSBoYXZlIGJlZW4gdXNpbmcgdGhpcyBjb25maWd1
cmF0aW9uIGZvciB3ZWVrcy4gIEhvdyB3b3VsZCBJIHRyb3VibGVzaG9vdCB0aGlzIGV4Y2VwdGlv
bj8NCj4gDQo+IFJlZ2FyZHMsDQo+IEplZmYNCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
