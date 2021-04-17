Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E81B362D68
	for <lists+usrp-users@lfdr.de>; Sat, 17 Apr 2021 06:04:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 500C3383F3E
	for <lists+usrp-users@lfdr.de>; Sat, 17 Apr 2021 00:04:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asleep-ai.20150623.gappssmtp.com header.i=@asleep-ai.20150623.gappssmtp.com header.b="gpQviYPK";
	dkim-atps=neutral
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 330D1383E6E
	for <usrp-users@lists.ettus.com>; Sat, 17 Apr 2021 00:03:52 -0400 (EDT)
Received: by mail-pl1-f172.google.com with SMTP id t22so14654494ply.1
        for <usrp-users@lists.ettus.com>; Fri, 16 Apr 2021 21:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asleep-ai.20150623.gappssmtp.com; s=20150623;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :cc:to;
        bh=8kWJWMvaZEoLc4TI9oNYDErssOufPFUpVFsCvNZ1fzc=;
        b=gpQviYPKz6IQ1vZhlRaNYMOMQvq4UlF2Q2j8YvXHJLrsq8AS+PBUylprOZP1125HZA
         GthhO7cSWQleOkxGAu0MGv5wZLxqdqGSSkpxICCZiylSZP/BUl6mLjEch/gljfwLbVAC
         oj1Txr1kg4TINmT6ejCOuMRN1gPc/HXkBxAtbUhzYr2g4Lk+XpCPGbpP0EI5YxERkR3v
         Pg/13/hLJXhaNq64xWPq5wGmZt/49AdvqXY0SGpXLiALrpXBf6m/CZZ7zXaknq5CMzGG
         riTD4hTh7jkHIdR+3w7K2aTPG+8PC6SEPzbW8H3gNywBFqIP4yESVBuBFw7tT5nhh2Zy
         WaZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:cc:to;
        bh=8kWJWMvaZEoLc4TI9oNYDErssOufPFUpVFsCvNZ1fzc=;
        b=RJ79VM0KQKdNq6/ZMh+BYZgv9dd9nP5+qCYdhPT3cE7kPTT0jCfwxebHfeL6RvVcnz
         qtN5dT9e+5xvdWaCiSLftfdd2fz5/UdPrxFRnDlcxEOD08tZcYHUccbKqkZDoALb4h0v
         kj8Ouo9LpWfBCpL1OO3IR5T/DGZ3ivsAoNIAFCXUixp9feNgOcqpZNjglSvIrTXxVAH+
         yQ7KVEdAZgBydcffsDM+2N6iA8RAp+7K5bJ3Gnc5vkLNHCIFeBCk5mX54EYQrkpebXpt
         K0vowdYuBvPqYuwHMFdEufgkkhhq32DT+LFHLLwast8ogxUu6ud+nwh5ktONv7fBHFgX
         FSlw==
X-Gm-Message-State: AOAM532lkoe4H1Nqs6ZpS7oQRvJ2+vHpE74oRqxHmgkj3vjd4dmTzyhk
	VEaH4R9k+ESjgiGDnWhAZcdzlF9ndYjgmA==
X-Google-Smtp-Source: ABdhPJxZ+pNcn47xmaVvsXz6GAlu91djOOjdcRbfA1MlUK5+0uFRTlLyYtymcIHsUq23CrUt1ebdUQ==
X-Received: by 2002:a17:902:8d83:b029:e6:508a:7b8d with SMTP id v3-20020a1709028d83b02900e6508a7b8dmr12861432plo.18.1618632231029;
        Fri, 16 Apr 2021 21:03:51 -0700 (PDT)
Received: from [192.168.10.68] ([61.74.181.17])
        by smtp.gmail.com with ESMTPSA id t23sm6680138pju.15.2021.04.16.21.03.49
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 21:03:50 -0700 (PDT)
From: Louis Jung <insomnia@asleep.ai>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
Message-Id: <F5A36F4D-8976-4576-BB8D-E400289E8A1E@asleep.ai>
Date: Sat, 17 Apr 2021 13:03:45 +0900
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3654.60.0.2.21)
Message-ID-Hash: XK3MXM3JOUP47JKKAHJFOAXHMGXNBDGQ
X-Message-ID-Hash: XK3MXM3JOUP47JKKAHJFOAXHMGXNBDGQ
X-MailFrom: insomnia@asleep.ai
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: insomnia@asleep.ai
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310, RFNoC OFDM Sync block error 
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XK3MXM3JOUP47JKKAHJFOAXHMGXNBDGQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGVhciBhbGwsDQoNCknigJltIHRyeWluZyB0byBydW4gV2ktRmkgT0ZETSByZWNlaXZlciBpbiBF
MzEwLg0KDQpIb3dldmVyLCB3aGVuIEkgdHJpZWQgdG8gYnVpbGQgY3VzdG9tIGZwZ2EgaW1hZ2Ug
d2l0aCBmZnQsIHdpbmRvdywgYW5kIHNjaG1pZGxfY294IGJsb2NrcywgaXQgYWx3YXlzIGZhaWxz
IHdpdGggdGhlIGVycm9yOg0KJydFUlJPUjogW1BsYWNlIDMwLTY0MF0gUGxhY2UgQ2hlY2sgOiBU
aGlzIGRlc2lnbiByZXF1aXJlcyBtb3JlIFNsaWNlIExVVHMgY2VsbHMgdGhhbiBhcmUgYXZhaWxh
YmxlIGluIHRoZSB0YXJnZXQgZGV2aWNlLiBUaGlzIGRlc2lnbiByZXF1aXJlcyA2MjUwNyBvZiBz
dWNoIGNlbGwgdHlwZXMgYnV0IG9ubHkgNTMyMDAgY29tcGF0aWJsZSBzaXRlcyBhcmUgYXZhaWxh
YmxlIGluIHRoZSB0YXJnZXQgZGV2aWNlLiBQbGVhc2UgYW5hbHl6ZSB5b3VyIHN5bnRoZXNpcyBy
ZXN1bHRzIGFuZCBjb25zdHJhaW50cyB0byBlbnN1cmUgdGhlIGRlc2lnbiBpcyBtYXBwZWQgdG8g
WGlsaW54IHByaW1pdGl2ZXMgYXMgZXhwZWN0ZWQuIElmIHNvLCBwbGVhc2UgY29uc2lkZXIgdGFy
Z2V0aW5nIGEgbGFyZ2VyIGRldmljZS4gUGxlYXNlIHNldCB0Y2wgcGFyYW1ldGVyICJkcmMuZGlz
YWJsZUxVVE92ZXJVdGlsRXJyb3IiIHRvIDEgdG8gY2hhbmdlIHRoaXMgZXJyb3IgdG8gd2Fybmlu
Zy7igJ0NCg0KSXMgaXQgaW5mZWFzaWJsZSBpbiBFMzEwIG9yIEkgbWlzY29uZmlndXJlZCBzb21l
dGhpbmc/DQoNCklmIHBvc3NpYmxlLCBjYW4geW91IHN1Z2dlc3QgYW55IG1ldGhvZCB0byBpbmNs
dWRlIGl0Pw0KDQooSeKAmXZlIHNlbnQgdGhpcyBlbWFpbCB0byB0aGUgZ251cmFkaW8gbWFpbGlu
ZyBsaXN0LCBidXQgZ3VpZGVkIHRvIHRoaXMgbWFpbGluZyBsaXN0IGJ5IE1hcmN1cywgVGhhbmtz
ISkNCg0KQmVzdCwNCg0KTG91aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQo=
