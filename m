Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B20366AE9
	for <lists+usrp-users@lfdr.de>; Wed, 21 Apr 2021 14:38:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C90838432E
	for <lists+usrp-users@lfdr.de>; Wed, 21 Apr 2021 08:38:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kIHC+zYR";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 714FE383E56
	for <USRP-users@lists.ettus.com>; Wed, 21 Apr 2021 08:36:52 -0400 (EDT)
Received: by mail-qk1-f170.google.com with SMTP id q136so21622429qka.7
        for <USRP-users@lists.ettus.com>; Wed, 21 Apr 2021 05:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=jSje5/KJ9gUsmz09fTd6cFcdoLqGASQGWaFf2zpjXPM=;
        b=kIHC+zYRJ8IYN3I1VZgmwnJ/mCcJi5DkGNJFKAn9XdNv1mdI4rFJ7Yi6JLc26hCJoC
         vhU+7/SKNW+zeWBVZxOIqDYjUaELLSKazOTcBImvFN+6tY67sP7pOtXkY643FJ2vgefr
         WgDnZl1oGGL3IircNf9tUk/Lw+Zk7Io0IlcS/Cf5bU96tguQ2zp0e7MmBSCH6IMY/D6q
         e74336pZ/1OnVjlpI9HRnc+U4Eg0ICuPdySpyj0SAy8SGtOc4qJJJnhntKf7lUzR7kTB
         uy9pY367QzPSU9W4EPTNLa0YtvOHgTzaFqEbkUbkFveReJHNWc+lA1J1my1AEJrdII3y
         5y2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=jSje5/KJ9gUsmz09fTd6cFcdoLqGASQGWaFf2zpjXPM=;
        b=RNop+QxVUw89IMktABWikQvx7pk5gI17sGqQe2MqPNAcBBHm+3Ag+bDixn9HvmgOnT
         OaUZG0PJaHqUpAtuw+zEvnZTatkERzh6vGrYmvdYmRVj8arumE+6eQkCoNX/LkJ8E22E
         UdX8L2lomc6KXjdsRBwrO7Tg32oXcsN5IbEj87mXF5zc6tF7qHdWfbkt4qaSTeRt8rT2
         89jpTzYzqF/kgtBG1bCUAl5mQlRYl3KVb2jBcmhVCOnCPWHfJRP6uf/P9jVXYho/3eLL
         HmS8iXzK6fqui8CxsKtiuSI0C+IqO0kYw5s1MfAbzwb3cGRVNCz0/khQypNIFSqT6sq1
         5Npw==
X-Gm-Message-State: AOAM533vhZlNMzpDPbpjDvdLQ3FSVP+7Uwgsr3FHaYr3ckj1vhZOsyjv
	M9MmgfnoiSLwnAJXoKi3IYI=
X-Google-Smtp-Source: ABdhPJxLxXJY6K8eH0eURpwtY4J5+Bvh/Sxj+nbIB26uME8q9r+8LwQiFNVZ5sW3SHsPYz+x+XCk4A==
X-Received: by 2002:a37:65c1:: with SMTP id z184mr22838533qkb.431.1619008611939;
        Wed, 21 Apr 2021 05:36:51 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id d4sm1682911qtp.23.2021.04.21.05.36.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 05:36:51 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 21 Apr 2021 08:36:50 -0400
Message-Id: <BDAC3FE1-9C1E-4464-B249-479E402B344E@gmail.com>
References: <CA+SYr1-=KD4d86B6m9Ru-pGYd3Eok-mW+L2JiMPU1sL0xZpejQ@mail.gmail.com>
In-Reply-To: <CA+SYr1-=KD4d86B6m9Ru-pGYd3Eok-mW+L2JiMPU1sL0xZpejQ@mail.gmail.com>
To: Margaux Bougeard <margaux.bgd1@gmail.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: CR6IZKSQWMBTQSI24C2OI73DG52SGCKS
X-Message-ID-Hash: CR6IZKSQWMBTQSI24C2OI73DG52SGCKS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transmitter thanks to USRP E312 with high sample rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CR6IZKSQWMBTQSI24C2OI73DG52SGCKS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlcmXigJlzIG5vIHdheSB0aGUgQVJNIENQVSBjYW4gc3VzdGFpbiByYXRlcyBvZiBtb3JlIHRo
YW4gcGVyaGFwcyA4TXNwcyB1bmRlciBpZGVhbCBjaXJjdW1zdGFuY2VzLiANCg0KVGhlIENQVXMg
cnVuIGF0IGxlc3MgdGhhbiAxR0h6LiBUaGVyZeKAmXMgb25seSB0d28gb2YgdGhlbS4gWW914oCZ
cmUgZHJpdmluZyB0aGlzIHdpdGggUHl0aG9uLiANCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQo+
IE9uIEFwciAyMSwgMjAyMSwgYXQgODoxNyBBTSwgTWFyZ2F1eCBCb3VnZWFyZCA8bWFyZ2F1eC5i
Z2QxQGdtYWlsLmNvbT4gd3JvdGU6DQo+IA0KPiDvu78NCj4gSSB3YW50IHRvIHVzZSB0aGUgVVNS
UCBFMzEyIHRvIHRyYW5zbWl0IGEgc2VxdWVuY2UsIHdpdGggSVEgZGF0YSwgY29udGludW91c2x5
LiBGb3IgdGhhdCBJIHVzZSBVSEQgNC4wLjAuMCBhbmQgSSBjcmVhdGVkIGEgUHl0aG9uIHNjcmlw
dCB0aGF0IHJ1bnMgb24gdGhlIFVTUlAuIEZvciBteSBhcHBsaWNhdGlvbiwgSSBuZWVkIHRvIHVz
ZSB0aGUgbWF4aW11bSBzYW1wbGUgcmF0ZSBpbmRpY2F0ZWQgYnkgdGhlIGRhdGFzaGVldCAoNjEs
NDQgTUh6KS4gSG93ZXZlciwgdGhlIGNvbnRpbnVvdXMgdHJhbnNtaXNzaW9uIG9mIG15IHNlcXVl
bmNlIG9ubHkgd29ya3MgY29ycmVjdGx5IGZvciBhIGxvdyBzYW1wbGUgcmF0ZS4gRm9yIHRoZSB0
cmFuc21pc3Npb24gSSB1c2UgdGhlIGZ1bmN0aW9uIHN0cmVhbWVyLnNlbmQoZGF0YSwgbWV0YWRh
dGEpIG9mIHRoZSBVSEQsIHRoYXQgSSBwdXQgaW4gYSB3aGlsZSBsb29wIHRvIGhhdmUgYSBjb250
aW51b3VzIHRyYW5zbWlzc2lvbi4gSSBub3RpY2VkIHNldmVyYWwgcHJvYmxlbXMgOiANCj4gLSBG
cm9tIGEgc2FtcGxlIHJhdGUgb2YgMSBNSHosIHRoZSBVU1JQIHNlbmRzIG1lIGJhY2sgJ1Mnczsg
SSBzYXcgdGhhdCBpdCBpbmRpY2F0ZXMgYSAiU2VxdWVuY2UgZXJyb3Igb24gVHgiIA0KPiAtIElm
IHRoZSBzaXplIG9mIG15IGRhdGEgaW4gdGhlIHNlbmQoKSBmdW5jdGlvbiBleGNlZWRzIDM2NCwg
SSBhbHNvIGdldCAnVSdzLiBTbyBJIGhhdmUgdW5kZXJmbG93LiANCj4gDQo+IFdoYXQgaXMgdGhl
IHByb2NlZHVyZSB0byBjcmVhdGUgYSB0cmFuc21pdHRlciB3aXRoIGEgc2FtcGxlIHJhdGUgb2Yg
NjEsNDQgTUh6IHdpdGggdGhlIFVTUlAgRTMxMiA/IEkgd29uZGVyIGlmIEkgYW0gbm90IGxpbWl0
ZWQgYnkgdGhlIHNhbXBsZSBkYXRhIHRyYW5zZmVyIHJhdGUgb2YgQVJNIHByb2Nlc3Nvci4gDQo+
IA0KPiBUaGFua3MgZm9yIHlvdXIgaGVscC4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
