Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5C84100C8
	for <lists+usrp-users@lfdr.de>; Fri, 17 Sep 2021 23:38:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8389A384473
	for <lists+usrp-users@lfdr.de>; Fri, 17 Sep 2021 17:37:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EafczbNX";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 2E5723843F7
	for <USRP-users@lists.ettus.com>; Fri, 17 Sep 2021 17:37:14 -0400 (EDT)
Received: by mail-qv1-f49.google.com with SMTP id w8so1226031qvu.1
        for <USRP-users@lists.ettus.com>; Fri, 17 Sep 2021 14:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=nEO/U9Y+4o+cqZRDmompSrfzYLW8i6XCCtTO8PDQLH0=;
        b=EafczbNXf2wkTLdTwZ5c2rXdEscewYLH2ud6AEADF5G9pDYMtgwVa5r09ug0y7Egn3
         0ZrzpuQhFdBJ9/OXAkGPpc3XRZZjvSbSdFu8jo06QIqt1pLWcrlYZdUptkPYnGVNkQk2
         zntCCbfEW3wD9O3Co7K5lgzMna0tux35ZlSxfYDxsS58huyJCuX6fe7uA4qG4xiQzAWy
         rG6Ysqu4iqWguDZtbxF3wUxKMNHmkkYlKS8acO3oAQv1jKTq1cQp1D7wu45vIash+Wnc
         p8m+NxKLlTvwqn9TdqKbX8X7Q0/36jZHCn3kQMXkBI9j7PlhLB5vsSTC2CXTGRaCUaZR
         Q7DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=nEO/U9Y+4o+cqZRDmompSrfzYLW8i6XCCtTO8PDQLH0=;
        b=gnHG0BmkpQMoDWe9fxB011UHF9LFxwxzg7cz7hCKMlN6s4LdPugfor5tPqN8wLA5AX
         a6Sz2uh+RnmitHLlieuFICjshxDmp+ZaF3CmiYAKalGUnHsoqKJMTG1fOtpgVuplu/qb
         pZoAH8v5EdiBJ0V9/vqDY3HKfqXAg/MxDuMA7pTFsuNAuErBB/1J0mJ4NX59zOE46VB0
         z6ev9qX/4fkwqH5gH6oyrGcm7dHVcbf2qGhaxpaRV9h3pUqgMJya4ikZCudn/hkbnzv0
         Jetdys+HGdXR+oTH644oRSgSNxcOV1cbygbhofrwCs63V4aD1HplULDJBfjO+jNpK9ks
         JesA==
X-Gm-Message-State: AOAM5307FbLSj3pde37aw8mwJRI+w33BxP4hntO/JdpZkwaorWQqHoHv
	koRl94iXkkkzHnKqbGOQpx7wjQWm5c//0w==
X-Google-Smtp-Source: ABdhPJyP6RPg2gMa531YlhNHHZi4ljIVC5+OcilB0YN2+XSZ84UyIm/95JQeM4A6EtXfvT0zzZBGJg==
X-Received: by 2002:a05:6214:56a:: with SMTP id cj10mr13588048qvb.60.1631914634542;
        Fri, 17 Sep 2021 14:37:14 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id l12sm203913qki.81.2021.09.17.14.37.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Sep 2021 14:37:14 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 17 Sep 2021 17:37:13 -0400
Message-Id: <83EFBB8A-6FB0-41C0-BB04-74EB465B103B@gmail.com>
References: <4c01dabe-99c7-8fdc-1c7f-130c400ff95f@rurisond.com>
In-Reply-To: <4c01dabe-99c7-8fdc-1c7f-130c400ff95f@rurisond.com>
To: Tom Riddle <triddle@rurisond.com>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: 5ODD4E4FHW3VY6CSCHJQAC5GVVWXKDIB
X-Message-ID-Hash: 5ODD4E4FHW3VY6CSCHJQAC5GVVWXKDIB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Upgrading E310 to UHD 4.2.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5ODD4E4FHW3VY6CSCHJQAC5GVVWXKDIB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WW91IGNhbiB1c2UgdWhkX2ltYWdlc19kb3dubG9hZGVyIGFuZCBzcGVjaWZ5IOKAlHR5cGUgc2Rp
bWcg4oCUdHlwZSBlMzEwLiBUaGlzIHdpbGwgZG93bmxvYWQgYW5kIHNkIGNhcmQgaW1hZ2UgdGhh
dCBtYXRjaGVzLiBUaGVuIHByb2dyYW0gdGhlIGFzIGNhcmQuIA0KDQpTZW50IGZyb20gbXkgaVBo
b25lDQoNCj4gT24gU2VwIDE3LCAyMDIxLCBhdCA1OjIwIFBNLCBUb20gUmlkZGxlIDx0cmlkZGxl
QHJ1cmlzb25kLmNvbT4gd3JvdGU6DQo+IA0KPiDvu79IaSwNCj4gDQo+IEkndmUgdXBncmFkZWQg
bXkgaG9zdCBzaWRlIHRvIFVIRCA0LjIuMC4gQ2FuIHNvbWVvbmUgcG9pbnQgbWUgdG8gaW5zdHJ1
Y3Rpb25zIG9uIGhvdyB0byB1cGRhdGUgdGhlIFVIRCB0byA0LjIuMCBvbiBteSBFMzEwLi4uIHRo
YW5rcyBpbiBhZHZhbmNlLCBUb20NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
