Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A35B03F6B5A
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 23:49:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E246E384B73
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 17:49:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="n/JNV3B8";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 25F32384718
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 17:48:22 -0400 (EDT)
Received: by mail-qv1-f49.google.com with SMTP id a5so4496163qvq.0
        for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 14:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=liMLcS5UUuyAbwhm9f0ujnKugPDJcp/iY/Loiv/H2Pc=;
        b=n/JNV3B8lVU+ReFxFakocZIntgKUxDTn75K2brnINEj+g6pQxYxVpwYaSLp7xUzMrl
         87KVQzqGmxPg8HWIvdcFOUXF/lgTvvDd/X8+JaZg6XMeniONRxP5hmKs7Kt4bL4gEOfx
         XSJWV8qn1Zxy8RcTBUpH+e84G/3giT4kLd8zNDyjL3JQdDYyJ6nSTh0ilvSt5Gv+Hsch
         X8XkS/S7GLIgUbowg4wac6hOSQLjjpIoYLAX/3hx2fXsOfyIy/8xSGi/vWOONvmwRBpi
         GJOB9a7aXKlqrohsrPx6lHmRlflTgPI0ZmhYWq99ZKDKOOCWbDkfUYQXmLlCbUuYIV6K
         xBPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=liMLcS5UUuyAbwhm9f0ujnKugPDJcp/iY/Loiv/H2Pc=;
        b=P/YM2UqByE4PhShKSwMi9xDgJ/A9wvcNZ+bmibmXDN1o4d2Ck5NNO9anJVcH8BqzRL
         VvAH1DHWrY1egIEcPEDi9aP35JBT4TpDcHunHYKgy3UpFw5PSlQzaShyDxBll2YDr6eU
         dIP9ZgsqyIsGFPVlxya1+7VKra+gnv8S4HPOXN0ipvsv/+4QTSwpbC9elXFXw0wfUwIx
         0KH8wOY7WtvT8aEAt1fdW5BdbzSb66yuWame1RRAZO4y06Xa/gb1FO6G2GCLi+XHLSgb
         Jbjsgq/NezQrcS8c9gn8CduAXlgawnpvZ1XAJR4wJCHm+v7ocQXthEVzl+7bnTP1bUVA
         L3PQ==
X-Gm-Message-State: AOAM531/0m8lotvU7TpeuBvDyg0/bUoXoL5arpLbkcVtyGmCsu/+iNhG
	K9tHsu3P540kjb3l0bhjNoAN0tcSwbH3WA==
X-Google-Smtp-Source: ABdhPJy2m6+PAjS4o+JaZAPee+v/iG3L8G0cpMk0tnvf43NE3K9rDrQ93BVGQPTms0fPDIIIkX4bgg==
X-Received: by 2002:a0c:a9c9:: with SMTP id c9mr9390446qvb.11.1629841702211;
        Tue, 24 Aug 2021 14:48:22 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id g12sm8831143qtq.92.2021.08.24.14.48.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 14:48:21 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 24 Aug 2021 17:48:21 -0400
Message-Id: <5E3EFBEC-7B05-4A36-9AB7-0C6558C18655@gmail.com>
References: <CAPRRyxsM=2UogKNO1Z6idwXU+FZ3bX0H7kDkQQtw_WP60Dh-1Q@mail.gmail.com>
In-Reply-To: <CAPRRyxsM=2UogKNO1Z6idwXU+FZ3bX0H7kDkQQtw_WP60Dh-1Q@mail.gmail.com>
To: Ivan Zahartchuk <adray0001@gmail.com>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: IUSTCV2KP3CJ4YCYVCLUGWNGVD6WEPFF
X-Message-ID-Hash: IUSTCV2KP3CJ4YCYVCLUGWNGVD6WEPFF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting lenght of fft RFNoC UHD 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IUSTCV2KP3CJ4YCYVCLUGWNGVD6WEPFF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93IGFyZSB5b3UgZG9pbmcgdGhlIHN0ZWFtaW5nPyBPdmVyIHdoYXQgY2hhbm5lbD8gRGlyZWN0
bHkgaW50byB0aGUgRTMxMD8gSSBkb27igJl0IGtub3cgd2hhdCB0aGUgTVRVIGlzIG9mIHRoYXQg
Y2hhbm5lbCBidXQgaXQgd291bGQgbm90IHN1cnByaXNlIG1lIGlmIGl0IGNhbuKAmXQgaGFuZGxl
IGxhcmdlciBwYWNrZXRzLiANCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQo+IE9uIEF1ZyAyNCwg
MjAyMSwgYXQgNTo0MCBQTSwgSXZhbiBaYWhhcnRjaHVrIDxhZHJheTAwMDFAZ21haWwuY29tPiB3
cm90ZToNCj4gDQo+IO+7vw0KPiBIaSwNCj4gSSB0cnkgdG8gc2V0IGxlbmd0aCBvZiBmZnQgPSA1
MTIgb3IgMTAyNCBmb3IgVVNSUCBFMzEwIChSRk5vQyBVSEQgNCksIGJ1dCB3aGVuIHRoZSB2YWx1
ZSBpcyBzZXQgSSBoYXZlbmB0IHJlY2VpdmVkIHRoZSBkYXRhLiBXaGVuIHRoZSBmZnQgPSAyNTYg
aXRgcyB3b3JrIGZpbmUuDQo+IE15IGdyYXBoIGxvb2tzIGxpa2UgdGhpczoNCj4gMC9SYWRpbyMw
OjA9PT4wL0ZGVCMwOjANCj4gMC9GRlQjMDowPT0+MC9TRVAjMDowDQo+IA0KPiBTZXR1cCBvZiBt
eSBTRVAgaXM6DQo+IA0KPiBzdHJlYW1fZW5kcG9pbnRzOg0KPiAgIGVwMDogICAgICAgICAgICAg
ICAgICAgICAgICMgU3RyZWFtIGVuZHBvaW50IG5hbWUNCj4gICAgIGN0cmw6IFRydWUgICAgICAg
ICAgICAgICAgICAgICAgIyBFbmRwb2ludCBwYXNzZXMgY29udHJvbCB0cmFmZmljDQo+ICAgICBk
YXRhOiBUcnVlICAgICAgICAgICAgICAgICAgICAgICMgRW5kcG9pbnQgcGFzc2VzIGRhdGEgdHJh
ZmZpYw0KPiAgICAgYnVmZl9zaXplOiAzMjc2OCAgICAgICAgICAgICAgIyBJbmdyZXNzIGJ1ZmZl
ciBzaXplIGZvciBkYXRhDQo+IA0KPiBIb3cgY2FuIEkgc2V0IHZhbHVlIGZmdCBsZW5ndGggNTEy
IG9yIDEwMjQgYW5kIGhvdyBpdGBzIHdvcms/DQo+IEkgd291bGQgZ3JlYXRseSBhcHByZWNpYXRl
IHlvdXIgYW5zd2VyLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tCg==
