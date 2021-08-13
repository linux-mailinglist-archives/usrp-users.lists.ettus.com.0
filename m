Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 540153EAE12
	for <lists+usrp-users@lfdr.de>; Fri, 13 Aug 2021 03:13:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 99A27384829
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 21:13:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UKhex1+J";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 9F81A384415
	for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 21:12:39 -0400 (EDT)
Received: by mail-qt1-f172.google.com with SMTP id w10so6989485qtj.3
        for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 18:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=gB7kVZ84TlO+Ur0bMOGw19KPVvBY3JU2sS5EmuVGw+Y=;
        b=UKhex1+J+thPFvDcCuV7Hd8Z6VUHZV2jnBZBA2mYM6fQr94pb1z9mEmQQB54LoRrWs
         0ax67EvYpUtSP8lb2+nLre010Q9lWGwoeAP55lvJ6phxFwGuXaoY1V3DsQO4/5Tw5O6C
         urXi9zG32ZiLmT34PD/3zAhGehmgCikeQptRDueNEIAN4ENjcZvBdCR9pu24BuvoyUfy
         43egvoA2xv4sBHxQA7QVrWoEOuENjxTIZK574KcpF/LBndrku7pn9QQ8yu5K1mz11uKS
         U/NpKFh1Ryur8iKaPKkiMelQfyhekFMbVqhapQcpeeHmUvadhWGTGr3lYH+Y5szv7Efe
         SBcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=gB7kVZ84TlO+Ur0bMOGw19KPVvBY3JU2sS5EmuVGw+Y=;
        b=cYo/RXS+Un6nEIYoRo2UjVsT8NY2g2FxBXo+GIqWSa4SljysVXtJLrSvB4LJ/rUJ1e
         EkCmalLfjxDxaLwlgkdFifblF94F3MbOHFKH+qzK5cxNLwrHOhx/I/yo2jZN85+4nCPj
         QCo4Ltu6YuLNrm+GvF25nIaIvEwoRTYAG9K3tPEErEVr9oHLlHX7IwTzLe6Myv/s3Brk
         0rvPbAZLbT9Ky3c3Eu77pm/35JBFnHMthCnlMeh50TPYRBCJPrd/9fu1Z9z0Y3H0+/j5
         AaOBkmxj+dU9bPNr4qiNJmD0MENthATsuahN0j4/LlogMeWrc4wIhW7FEz/NCa74l/Le
         mkkQ==
X-Gm-Message-State: AOAM533ktzlNljoVfb779EtNiBljCcZ2ulDttynSTsSU1I1SUz/M5YO4
	qbPHKUfgO36qJXsZ+pMrN28=
X-Google-Smtp-Source: ABdhPJzMy68ea3dMINRmVGqaTUD3pZBzsAFVvGfI4XZ6Pui0rBEnDDSCNQk5QuRDZIZoey/DJK8RsA==
X-Received: by 2002:a05:622a:243:: with SMTP id c3mr6665489qtx.61.1628817158982;
        Thu, 12 Aug 2021 18:12:38 -0700 (PDT)
Received: from smtpclient.apple ([2601:151:c000:a810:9dc:aff4:95dc:5202])
        by smtp.gmail.com with ESMTPSA id p16sm2345687qkp.108.2021.08.12.18.12.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 18:12:38 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 12 Aug 2021 21:12:37 -0400
Message-Id: <EF9340E6-7FB6-4EF7-9A01-BAE6D553CF31@gmail.com>
References: <6115BD3E.6020403@gmail.com>
In-Reply-To: <6115BD3E.6020403@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: CPQFTXOKSV3LMUVNKKEVUPKIRK66RKWB
X-Message-ID-Hash: CPQFTXOKSV3LMUVNKKEVUPKIRK66RKWB
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Bobbi Taylor <bobbi.taylor@student.nmt.edu>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD no devices found
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CPQFTXOKSV3LMUVNKKEVUPKIRK66RKWB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW4gYW4gYXR0ZW1wdCB0byBoZWxwIG91dCB3aXRoIHRoaXMgSSBqdXN0IGZpcmVkIHVwIG15IG9s
ZCBOMjEwIGFuZCBpdCBzaG93cyB1cCBpbiB1aGRfZmluZF9kZXZpY2VzIHdpdGggVUhEIHY0LjAu
MC4wDQoNCkkgaGF2ZSBhIGZyZXNoIGluc3RhbGwgb2YgVWJ1bnR1IDIwLjA0IA0KVXNiMyB0byBF
dGhlcm5ldCBkb25nbGUNCkRlZmF1bHQgbmV0d29yayBzZXR0aW5ncyBleGNlcHQgZm9yIHNldHRp
bmcgbXkgdXAgYWRkcmVzcyB0byAxOTIuMTY4LjEwLjEgKG15IHJhZGlvIGlzIDE5Mi4xNjguMTAu
NCkgYW5kIHRoZSBuZXRtYXNrIHRvIDI0DQoNCg0KDQo8ZW5kIHRyYW5zbWlzc2lvbj4NCg0KPiBP
biBBdWcgMTIsIDIwMjEsIGF0IDIwOjMyLCBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5A
Z21haWwuY29tPiB3cm90ZToNCj4gDQo+IO+7vw0KPiBPbiAwOC8xMi8yMDIxIDA3OjUwIFBNLCBC
b2JiaSBUYXlsb3Igd3JvdGU6DQo+PiBJIGp1c3QgcmVzZXQgaXQgYWdhaW4sIHRoZSBJUCBhZGRy
ZXNzIHdhcyBjb3JyZWN0LCB0aGUgQ1BMRCBhbmQgZmlybXdhcmUgbGlnaHRzIHdlcmUgb24sIGFu
ZCBJIGNvdWxkIHBpbmcgaXQuIEJ1dCBhcyBzb29uIGFzIEkgdHJ5IHRvIGxvYWQgYW4gaW1hZ2Us
IEkgc3RpbGwgZ2V0IHRoZSBObyBVSEQgZGV2aWNlcyBmb3VuZCBlcnJvci4NCj4+IA0KPj4gDQo+
PiA8bWltZS1hdHRhY2htZW50LnBuZz4NCj4+IA0KPj4gDQo+PiANCj4gSXMgdGhpcyBpbnNpZGUg
YSBWTSBvciBvbiBhICJiYXJlIG1ldGFsIiBMaW51eCBzeXN0ZW0/DQo+IA0KPiBJcyBwb3J0IDQ5
MTUyIGFuZCA0OTE1MyAib3BlbiIgZm9yIFVEUD8NCj4gDQo+IEFyZSB5b3Ugc3VyZSB0aGF0IHRo
ZXNlIGFyZSBOMjEwIGRldmljZXM/DQo+IA0KPiBJZiB5b3UgcmV2ZXJ0IHRvIFVIRCAzLjE1IG9y
IGV2ZW4gMy4xNCwgZG9lcyB0aGUgYmVoYXZpb3IgY2hhbmdlPw0KPiANCj4gDQo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
