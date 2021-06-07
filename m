Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB1239D544
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jun 2021 08:45:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 525F2384487
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jun 2021 02:45:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="2QB69PH3";
	dkim-atps=neutral
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by mm2.emwd.com (Postfix) with ESMTPS id A50CE383F8A
	for <USRP-users@lists.ettus.com>; Mon,  7 Jun 2021 02:44:43 -0400 (EDT)
Received: by mail-wm1-f52.google.com with SMTP id s70-20020a1ca9490000b02901a589651424so3392695wme.0
        for <USRP-users@lists.ettus.com>; Sun, 06 Jun 2021 23:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=DWxQveHLYmtyiuGmnqMnpMVep/x3ZM0cjy4JbXEBBtM=;
        b=2QB69PH3oTMn9G/5la66av0YOgAxouzo9qNkoQzU4xwFVQRsMtnhidFmCbDsbQtT1D
         ox/AI7pOpKv70LrpwcWAfGXpoHzz2PRZX2wL6YMMq/p3aALzX5soY9cH2ovGGmppCc5O
         k2jKFycsDGAdSwR6chLynYAYVr/PlUl/pDJKnAgz1gzcKesua/XIiS63Uw1UQ/jHinQ5
         PhAa2e8hOVVR6sEKJheqI4kKTXD7g4OHmGfDZLHuGI1b4/ncF6kft/gR6WyTbsRAWiIQ
         qmJweBzJfAKOVy8pPoh9nuaWET1sf1PsFeevdihZIStmtikUrrOcExyo75bO/g8Hn70M
         ZhdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=DWxQveHLYmtyiuGmnqMnpMVep/x3ZM0cjy4JbXEBBtM=;
        b=eboCUiDZdkcKUdp1mvfmlSowB6eNeDbwmTHpLCOl2amQfh0LmNMHeuy5frr0C0nHy1
         COh6InlAjwu974s77KVO3mImnCDKgzB6KdA3mUUFaUHgr1VJzb0Kf0jpFv8KMWTtxnXj
         NGRzSwHQ0PTr1GfQV6e2HWOiNNFMwGit8Yx9rpnbEOOL8t4HXxvyEHAo7FxLsRe9ODMG
         mMw7qbCja+3w+UzPPzhoTmIyrcFMZyGhVPK6cJK34QZo5D8Bq1HV6h15MT41g6HvHzg/
         TcYidY/qtnbhA91vF+PVMYVyC28nY+rRE4RtPYSIKoX1EYMWu0rN7/jiaocRgM/QVVIU
         PCBA==
X-Gm-Message-State: AOAM530C/6SjL0QmQCXbq9Iml3WU5prbvAWseiYdsq7Z5XntWfTDCgHf
	4+RHJSof/GD8tvjBHAZLux1/zG5T0RLkJOyj
X-Google-Smtp-Source: ABdhPJwWaNxJ2HWGNHBZ0cPqO71f4lZ2GANT9TPU5jQMxw/DrSr00z8Y2W0/Xo3M4pSRfVWZSN1J/g==
X-Received: by 2002:a05:600c:3586:: with SMTP id p6mr6603068wmq.28.1623048282425;
        Sun, 06 Jun 2021 23:44:42 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-195.hsi.kabel-badenwuerttemberg.de. [46.223.162.195])
        by smtp.gmail.com with ESMTPSA id n12sm14929782wrs.19.2021.06.06.23.44.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Jun 2021 23:44:41 -0700 (PDT)
To: Marcus D Leech <patchvonbraun@gmail.com>
References: <87530d24-793c-8c71-5683-b452b4aeee15@ettus.com>
 <B4BC6EE3-2352-471F-9A22-ACF447E7DC95@gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <e8761759-1955-baf6-5ce0-b95e267199c2@ettus.com>
Date: Mon, 7 Jun 2021 08:44:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <B4BC6EE3-2352-471F-9A22-ACF447E7DC95@gmail.com>
Content-Language: en-US
Message-ID-Hash: AJBNXFFSEZKWJ4D5BSRKH2LJMWWUZ2YK
X-Message-ID-Hash: AJBNXFFSEZKWJ4D5BSRKH2LJMWWUZ2YK
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ncondict@gmail.com, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Uhd_find_devices --args<addr>
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AJBNXFFSEZKWJ4D5BSRKH2LJMWWUZ2YK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWFyY3VzLA0KDQpPbiAwNi4wNi4yMSAwMzozNywgTWFyY3VzIEQgTGVlY2ggd3JvdGU6DQo+
IElzbuKAmXQgc2QtcmVzb2x2IHBhcnQgb2Ygc3lzdGVtZD8NCkNlcnRhaW5seSBpczsgaXQgaGFw
cGVucyB0byBiZSB0aGUgcHJvY2VzcyB0aGF0IGlzIHRoZSBvcmlnaW4gb2YgdGhlIHN5c2NhbGwg
dGhhdCBzZWVtcyB0bw0KY3Jhc2ghDQo+IE5vIHVzZXIgbGFuZCBwcm9jZXNzIHNob3VsZCBldmVy
IGJlIGFibGUgdG8gZG8gYW55dGhpbmcgdG8gY2F1c2UgYSBrZXJuZWwgb29wcywgbW9kdWxvIGtl
cm5lbCBidWdzLCB3aGljaCB0aGlzIGNsZWFybHkgaXMuIA0KDQorIE1vZHVsbyBoYXJkd2FyZSB0
aGF0J3MgYnVnZ3kgaW4gdW5leHBlY3RlZCB3YXlzLCB0aGF0J3Mgd2hhdCBJJ20gc3VzcGVjdGlu
ZyBoZXJlLA0KanVkZ2luZyBmcm9tIHRoZSBmaXJzdCB0cmFjZWJhY2sgaGVyZSB0aGF0IGhhcHBl
bnMgaW4gZXh0NCBjb2RlLg0KDQpDaGVlcnMsDQoNCk1hcmN1cw0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
