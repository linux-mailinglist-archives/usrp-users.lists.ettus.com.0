Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2AF372A65
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 14:51:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F837383C64
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 08:51:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WX0SNXs/";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 4B6A7384149
	for <usrp-users@lists.ettus.com>; Tue,  4 May 2021 08:50:37 -0400 (EDT)
Received: by mail-qk1-f181.google.com with SMTP id u20so8300849qku.10
        for <usrp-users@lists.ettus.com>; Tue, 04 May 2021 05:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=0HpWeaCxkUl8GTVOPxOZgvxtREc+I857IHsvqaPQb5o=;
        b=WX0SNXs/Le+TJSiMLA+xuIy0pMX0t+6OgPtsnzZSHviAEtdXIMzMkY55S59u//Nr8+
         Nd9myYgI+dabQbMNMx5zmBMkXLjwZxTMuPc9O3Ovr8AoKq/gpyT6lQT0Q/AF9yPvl6vO
         JHxVCMaMiICSJ+i8dodKqP0d0Z1pAshCT3KFJXjbKZkbiIwwzo1oCkQfFaFURMciiftb
         a8BSzfECwKT2EVaduuVqRj8OaeJhBnuUmvVIt3ORncRIs0eJCMlvg7ArLCZhof8aizRE
         qe35ywmXNkKDnqTjZ0/E0JvbyJirPNeUvqJFiZ7wMwoUBlaFpwxSYxoBFOSZxfE70C2H
         iO2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=0HpWeaCxkUl8GTVOPxOZgvxtREc+I857IHsvqaPQb5o=;
        b=K3xSxJQhT7cE1u7uZFRCu+T8/sdJxmrJyuHNwd5bS8wRsGWy5vJnP50Oe3rMVxIyc1
         MwcFDHmfNB8ukKSHrvn0+f9OmI4hMkvNlbdUKJZO5jyVSpEReY9twN1rA57MiCl6ylao
         Ab/jvOQWQp8p2pURy48qkMkNet0bq5YnkICc35QsE+X6R/Jl2L39y+/245NOo4FbPzq9
         EVVF3CnOS6bEn08GtarUWdNJu4btGTNjC/oZ2TW5iPH+iTa3rT2caB+xptGQXa8LivZW
         8c4IHasjyMoB3n0bm8X9F6qU1O1C+uaQ21KVD7GXkvZK4ZsA2feTo2xLOYzznZZ3VhQw
         b4Yg==
X-Gm-Message-State: AOAM533BqgOBCIFRcYmHvoZMardB3CvRVWOCR1n6GhX8kxxFgOcIB6w/
	nIwbD0dB2aXKN7Op1N1n9JLL1YZXi0A=
X-Google-Smtp-Source: ABdhPJy0otyH1A+GN6w9+kHrH3k/KGTl0TYlCyCcyDcpLBtrVZT3Hj2LntGuuByWNM9sc2k6jCdw7g==
X-Received: by 2002:ae9:eb55:: with SMTP id b82mr12095792qkg.116.1620132636344;
        Tue, 04 May 2021 05:50:36 -0700 (PDT)
Received: from [192.168.11.82] (071-012-109-042.biz.spectrum.com. [71.12.109.42])
        by smtp.gmail.com with ESMTPSA id d19sm2255682qtd.29.2021.05.04.05.50.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 May 2021 05:50:36 -0700 (PDT)
From: Josh Starling <joshstarling92@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
Message-Id: <E4FD46C1-987F-4E16-A017-59EB665A28BA@gmail.com>
Date: Tue, 4 May 2021 07:50:32 -0500
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3654.60.0.2.21)
Message-ID-Hash: HA55E3WZPKGCSHDCXRLHVF5BN4VD2DFP
X-Message-ID-Hash: HA55E3WZPKGCSHDCXRLHVF5BN4VD2DFP
X-MailFrom: joshstarling92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 RFNoC FPGA Image
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HA55E3WZPKGCSHDCXRLHVF5BN4VD2DFP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gYWxsLA0KDQpJ4oCZbSBtYWtpbmcgdGhlIHRyYW5zaXRpb24gZnJvbSBVSEQgMy4xNCB0
byAzLjE1IG9uIG15IEUzMTAgZGV2aWNlcy4gV2l0aCAzLjE0IEkgd2FzIGFibGUgdG8gc3VjY2Vz
c2Z1bGx5IG1ha2UgRlBHQSBpbWFnZXMgd2l0aCBkaWZmZXJlbnQgUkZOb0MgYmxvY2tzIGNvbWJp
bmF0aW9ucyBhbmQgY29ycmVjdGx5IGxvYWQgdGhlbSB0byB0aGUgZGV2aWNlLiBXaXRoIDMuMTUg
SeKAmW0gcnVubmluZyBpbnRvIGFuIGlzc3VlIHdoZXJlIEkgbWFrZSBhbiBpbWFnZSB3aXRoIHRo
ZSBzaWcgZ2VuIGFuZCBkaWdpdGFsIGdhaW4gYmxvY2sgYnV0IHdoZW4gSSBmbGFzaCB0aGUgZGV2
aWNlIGFuZCBydW4gdWhkX3VzcnBfcHJvYmUgSSBnZXQgYWxsIHRoZSBSRk5vQyBibG9ja3MgZm9y
IHJ1bm5pbmcgZm9zcGhvciAoZS5nLiB0aGUgd2luZG93LCBGRlQsIGZvcnNwaG9yLCBGSUZPLCBG
SVIsIHdpbmRvdywgYW5kIHJhZGlvIGJsb2NrcykgLiBUaGlzIGlzIGNsZWFuIFZNIHNvIHRoZXJl
4oCZcyBubyBvbGQgZm9zcGhvciBiaXQgZmlsZXMgb24gbXkgZmlsZSBzeXN0ZW0uDQoNCkhhcyBh
bnlvbmUgcmFuIGludG8gYW55IGlzc3VlIGxpa2UgdGhpcyB3aXRoIFVIRCAzLjE1PyANCg0KVGhl
IGNvbW1hbmQgSeKAmXZlIHVzZWQgdG8gZmxhc2ggdGhlIGltYWdlIGlzIGJlbG93DQp1aGRfaW1h
Z2VfbG9hZGVyIC0tYXJncyAidHlwZT1lM3h4LGFkZHI9MTkyLjE2OC41MC41IiAtLWZwZ2EtcGF0
aCB1c3JwX2UzMTBfc2czX3Jmbm9jX2ZwZ2EuYml0DQoNCldoaWNoIHJldHVybnMgdGhhdCBpcyBz
dWNjZXNzZnVsbHkgdXBkYXRlIHRoZSBmcGdhIGltYWdlLiBJIGhhdmUgbm90aWNlZCB0aGF0IHdo
ZW4gSSBmbGFzaCB0aGUgc3RvY2sgaW1hZ2UgdXNpbmcgdGhlIGNvbW1hbmQgYmVsb3cgaXQgcmV0
dXJucyB0aGF0IGl0IHVwZGF0ZWQgYm90aCB0aGUgZnBnYSBpbWFnZSBhbmQgdGhlIGNvbXBvbmVu
dCBkdHMuIEFmdGVyIGZsYXNoaW5nIHRoZSBzdG9jayBpbWFnZSB1aGRfdXNycF9wcm9iZSBnb2Vz
IGJhY2sgdG8gcmVwb3J0aW5nIG9ubHkgdGhlIFJhZGlvLCBEVUMsIGFuZCBEREMgYmxvY2tzLg0K
dWhkX2ltYWdlX2xvYWRlciAtLWFyZ3MgInR5cGU9ZTN4eCxhZGRyPTE5Mi4xNjguNTAuNeKAnQ0K
DQpJ4oCZbSBydW5uaW5nIHRoaXMgd2l0aCBVYnVudHUgMTguMDQgYW5kIFZpdmFkbyAyMDE4LjMu
IEFueSBoZWxwIHdvdWxkIGJlIGdyZWF0bHkgYXBwcmVjaWF0ZWQuIA0KDQpUaGFua3MNCkpvc2gK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
