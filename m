Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2104AAA4A
	for <lists+usrp-users@lfdr.de>; Sat,  5 Feb 2022 17:54:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 20890385E7D
	for <lists+usrp-users@lfdr.de>; Sat,  5 Feb 2022 11:54:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gnuradio-org.20210112.gappssmtp.com header.i=@gnuradio-org.20210112.gappssmtp.com header.b="wsWaNoEt";
	dkim-atps=neutral
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by mm2.emwd.com (Postfix) with ESMTPS id CC8B2385E7D
	for <usrp-users@lists.ettus.com>; Sat,  5 Feb 2022 11:53:36 -0500 (EST)
Received: by mail-wr1-f42.google.com with SMTP id f17so17126461wrx.1
        for <usrp-users@lists.ettus.com>; Sat, 05 Feb 2022 08:53:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gnuradio-org.20210112.gappssmtp.com; s=20210112;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=5Ie1/1DOZ8UKFDFAE42LVQKXV5Vhmvhn4+bn9C70WtU=;
        b=wsWaNoEtfq/mVNx6e6cSmxyG2+tj14rqSy4dh7uf8MwEGfYpgCkyaXFOP6ihORVf8g
         V7Ee88CVvjuSIS06bwwp//TBRsQwDuHEIYfoNM/wxKnwuGINWk2XDmeIMW1TfXkAGHDA
         ANZYeTePFq2w9gAkz7hSoHJCD89UINbKhcTNkFA3E3BiLdAVv+Spht+6pBd0Way4u57u
         a2gvDn9EmmMShSKx3JEt7VvLv0SwatEz2yyJf0DdaTv01n/AMkIaWNaRdhzBAWKFVbKE
         h6KVdhqr3BKl0rSEP70FY43QKtcYMTRnjZfNUirU6edN876cstXC89lMyaAVc87SYoNz
         liig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=5Ie1/1DOZ8UKFDFAE42LVQKXV5Vhmvhn4+bn9C70WtU=;
        b=vf9rxJy7G3BZcb6mXj2+oX56mK5cZvNRNu24yrewERLOqoCIWf/Npb3lE5K+BzaYye
         R7MTkK5vgX/Ht8/Iz0SaydQszHquSlnSN4WqjLJ0/YVDPsXMZGVOg6WnVqtD0cUY4HQS
         5Db9Wi1i5oi8mz0fs5s8c3Lq6RoQqyJXS6UtICUrugJJP81nssWgD84x6uo7r9Ic8Tqp
         kFyyPBmNKaB6eZ0yJrJuSqPuUy4YldyJj15iMmUwAo+P6YiTGv7LyuycPgN0ZcWxlODu
         CFTolJE/0YkHaxFSsSB1Fy763O16tGUUiy5T9uaKprWA82EXi8I2yvv8zmoMbzLGZVrP
         104A==
X-Gm-Message-State: AOAM531uQHGXOZ/sD2FjCxH2ItJYRgdDQwtDWKmQUbNcTndji2388bdT
	3oIrDLf4QHo/qE3iHYQUYbm+7g==
X-Google-Smtp-Source: ABdhPJypyOgTO/0/lB6gpxB6eH3Fyto5p4ZtAks5r2nKlylqoPNfYqfEN8p3cEqtFb+9ItBExvdK8g==
X-Received: by 2002:a05:6000:1886:: with SMTP id a6mr3696315wri.565.1644080015727;
        Sat, 05 Feb 2022 08:53:35 -0800 (PST)
Received: from smtpclient.apple ([2a02:8071:3ed7:af00:34ad:75d2:a303:5afe])
        by smtp.gmail.com with ESMTPSA id i94sm4864943wri.21.2022.02.05.08.53.35
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Feb 2022 08:53:35 -0800 (PST)
From: Andrej Rode <arode@gnuradio.org>
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
Message-Id: <0BF48C91-7B91-47FE-9DC6-846C6EBC6EE0@gnuradio.org>
Date: Sat, 5 Feb 2022 17:53:34 +0100
To: discuss-gnuradio@gnu.org,
 usrp-users@lists.ettus.com,
 osmocom-sdr@lists.osmocom.org
X-Mailer: Apple Mail (2.3693.60.0.1.1)
Message-ID-Hash: LURQE2MU4662GT2KEJ2JIJELKFBIV4YE
X-Message-ID-Hash: LURQE2MU4662GT2KEJ2JIJELKFBIV4YE
X-MailFrom: arode@gnuradio.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] FOSDEM 2022 - Free Software Radio Devroom
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LURQE2MU4662GT2KEJ2JIJELKFBIV4YE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLCANCg0KSeKAmWQgbGlrZSB0byBpbnZpdGUgeW91IGFsbCB0byBqb2luIHRoZSBGcmVl
IFNvZnR3YXJlIFJhZGlvIERldnJvb20gYXQgdGhlIEZPU0RFTSAyMDIyIG9ubGluZSBldmVudCB0
b21vcnJvdyBGZWJydWFyeSA2dGggMjAyMiBhdCAxMzAwIChDRVQpLiANCldlIGhhdmUgYSByYW5n
ZSBvZiB2ZXJ5IGludGVyZXN0aW5nIHByZXNlbnRhdGlvbnMgcmFuZ2luZyBmcm9tIHByb2plY3Qg
dXBkYXRlcywgaW1wbGVtZW50YXRpb24gb2YgaGFyZHdhcmUgYWNjZWxlcmF0b3JzIGZvciBTb2Z0
d2FyZSBSYWRpbyANCnVwIHRvIHJlY2VpdmluZyBjb21tdW5pY2F0aW9uIGZyb20gdGhlIG1vc3Qg
ZGlzdGFudCBhcnRpZmljaWFsIG9iamVjdCBmcm9tIEVhcnRoLg0KDQpZb3UgY2FuIGZpbmQgdGhl
IGZ1bGwgc2NoZWR1bGUgaGVyZTogaHR0cHM6Ly9mb3NkZW0ub3JnLzIwMjIvc2NoZWR1bGUvdHJh
Y2svZnJlZV9zb2Z0d2FyZV9yYWRpby8NCg0KWW91IGNhbiBlaXRoZXIgam9pbiBqdXN0IHRoZSBs
aXZlc3RyZWFtIG9mIHRoZSBldmVudCwgYnV0IEkgcmVhbGx5IGVuY291cmFnZSB5b3UgdG8gam9p
biB0aGUgTWF0cml4IGNoYXQgdG8gYXNrIHF1ZXN0aW9ucyB5b3UgbWlnaHQgaGF2ZSBhbmQgY29u
dGludWUgZGlzY3Vzc2lvbiANCmFib3V0IHRoZSBwcmVzZW50YXRpb24gYWZ0ZXIgaXQgaXMgZmlu
aXNoZWQsIHlvdSBjYW4gZXZlbiBqb2luIHRoZSB2aWRlbyBjYWxsIGZvciBhIG1vcmUgZGlyZWN0
IHdheSBvZiBjb21tdW5pY2F0aW9uLiBZb3UgY2FuIGZpbmQgaW5mb3JtYXRpb24gYWJvdXQgdGhl
IGNoYXQgc3lzdGVtIGhlcmU6DQpodHRwczovL2Zvc2RlbS5vcmcvMjAyMi9wcmFjdGljYWwvb25s
aW5lLy4gSWYgeW91IGFyZSBhbHJlYWR5IGEgbWVtYmVyIG9mIHRoZSBHTlUgUmFkaW8gTWF0cml4
IHNlcnZlciwgeW91IGRvbuKAmXQgaGF2ZSB0byBjcmVhdGUgYSBuZXcgYWNjb3VudCBvciBhbnl0
aGluZy4gWW91IGNhbiBzaW1wbHkgdmlzaXQ6DQpodHRwczovL21hdHJpeC50by8jLyNzcGFjZS1y
YWRpby1kZXZyb29tOmZvc2RlbS5vcmcgdG8gam9pbiB0aGUgZGVkaWNhdGVkICJGcmVlIFNvZnR3
YXJlIFJhZGlvIERldnJvb20gc3BhY2UiLiBUaGlzIHNwYWNlIGNvbnRhaW5zIHRoZSBtYWluIGNo
YXRyb29tIGR1cmluZyB0aGUgZGV2cm9vbSBidXQgYWxzbw0KeW91IHdpbGwgZmluZCBhbGwgZGVk
aWNhdGVkIHByZXNlbnRhdGlvbiBjaGF0cm9vbXMgaW4gdGhlcmUgYWZ0ZXIgdGhlIHByZXNlbnRh
dGlvbiBoYXMgZmluaXNoZWQgdG8gY29udGludWUgaW4tZGVwdGggZGlzY3Vzc2lvbi4NCg0KRHVy
aW5nIHRoZSBwcmVzZW50YXRpb24geW91IGNhbiBhc2sgcXVlc3Rpb25zIGluIHRoZSBjaGF0IGFu
ZCB1cHZvdGUgcXVlc3Rpb25zIG9mIG90aGVycywgYXQgdGhlIGVuZCBvZiB0aGUgcHJlc2VudGF0
aW9uIHRoZXJlIHdpbGwgYmUgYSBzaG9ydCBsaXZlIFEmQSB3aGVyZSBhIHByZXNlbnRhdGlvbiBo
b3N0IHdpbGwgYWRkcmVzcyBzYWlkIHF1ZXN0aW9ucyBkaXJlY3RseSB0byB0aGUgcHJlc2VudGVy
Lg0KSWYgeW91ciBxdWVzdGlvbiBpcyBub3QgYW5zd2VyZWQgZHVyaW5nIHRoaXMgdGltZSB5b3Ug
YXJlIHdlbGNvbWUgdG8gam9pbiB0aGUgcHJlc2VudGF0aW9uIGNoYXRyb29tIHRvIGFzayB5b3Vy
c2VsZi4NCg0KSSBob3BlIHRvIOKAnHNlZeKAnSBtYW55IG9mIHlvdSB0b21vcnJvdy4gQW5kIGEg
YmlnIHRoYW5rcyBmb3IgZXZlcnlvbmUgcHJlc2VudGluZyBvciBoZWxwaW5nIHRvIG1ha2UgdGhp
cyBEZXZyb29tIHBvc3NpYmxlIHRoaXMgeWVhciENCg0KQ2hlZXJzDQpBbmRyZWoNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
