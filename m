Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1164C382164
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 00:11:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C86D384088
	for <lists+usrp-users@lfdr.de>; Sun, 16 May 2021 18:11:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cgodKjlT";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 20216383F8A
	for <USRP-users@lists.ettus.com>; Sun, 16 May 2021 18:10:30 -0400 (EDT)
Received: by mail-qt1-f177.google.com with SMTP id j19so3610988qtp.7
        for <USRP-users@lists.ettus.com>; Sun, 16 May 2021 15:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=XhSkcp+xlo9p0zNy10iPOEW53E7BNMdq4XFZfob+hiA=;
        b=cgodKjlToyeGU5l9/Y2d6A1TsBR1bzpw7PCSyTQ2q5bY+YJFvfV1TKboM9D0Iz5DPZ
         R5lOyrWzECO/Qvyf3zJjJaCSkaMOGUGGs6HHayz5slFfATOG88Hrv2iGwrPm+m6wxLme
         CmOcRdJz3Gcj+vH2cq9OFMc2UQCuWQQT4FTACA2fjg7ZiL2gDLnYrY2Jl0mdiHKObQ9p
         n2cZ2ys2fo9p9b72Q8QwbGjHdUBh8jQTp1YP0y5wm4S1wERLLZBjdY3yASdpbKAqONzC
         apLFKymebN5q2Dy/NOrK8OJdXyyw8H+Z1iS6WPiHb/+MpsDP1WZqPG45vuCVLkNhy9oX
         T6Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=XhSkcp+xlo9p0zNy10iPOEW53E7BNMdq4XFZfob+hiA=;
        b=dtVNNzkWIluDZPQ9yHi7EMJYFO9z/2TwSa/KzI2E7YNCpGCiPGteYAZ7vg0Yr6Vwgm
         u+H7JmZ0qFto7g83eL5CSJVgeXKxCQKWl7QzuEskZwktsAo8ZPwE5ivCzDMId46pMQHM
         E0PyQZ8E6ewnBa7lOpY42Xt/yiAtm42Q9v2K39Qv3mYfM63YtTujFsWDPtp1Pnqpohmt
         1bdFXCEOjcA3byxxMraKBptHhZXVcmuWEd8q+WBfZGSabm8F8mLrB03RMqSvehTr5LHz
         8h0g+6nyVJgyYGBkqMIk/6xGAyaOiAEr0TJJweP3hrf8RLRpEBpRrEvl+Hh94QN3tLLB
         N/LA==
X-Gm-Message-State: AOAM5328zwg92O/gx7iMfgRO/oNPovS0BwNg94WASrBo9e4DuZc6FC31
	Gyh08s5iUtlXMY9Pf4EQjEhKdST0MXQ=
X-Google-Smtp-Source: ABdhPJx8epZwWFsbpMP6fNlXK71iyVlsSWWTWFKplWIG0elP0+7lIZw15+Y28qUtJTxxn5Qo3uimQw==
X-Received: by 2002:ac8:7d0c:: with SMTP id g12mr40024176qtb.224.1621203029545;
        Sun, 16 May 2021 15:10:29 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id x13sm9019652qtj.12.2021.05.16.15.10.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 May 2021 15:10:29 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sun, 16 May 2021 18:10:28 -0400
Message-Id: <EE289C16-0325-4D8B-BF7B-135E4C5EAFD0@gmail.com>
References: <4b71e4d6-fca0-0f8a-3640-31b488daccc9@olifantasia.com>
In-Reply-To: <4b71e4d6-fca0-0f8a-3640-31b488daccc9@olifantasia.com>
To: Martin <usrp-users-list@olifantasia.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: YZPIYXEGUEIE3YBGV6KWU4R7UZLAY2LQ
X-Message-ID-Hash: YZPIYXEGUEIE3YBGV6KWU4R7UZLAY2LQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E310 sg1 does not find its own UHD RF hardware with uhd_usrp_probe --args "type=e300"
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YZPIYXEGUEIE3YBGV6KWU4R7UZLAY2LQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SeKAmW0gY3VycmVudGx5IHRyeWluZyB0byByZXByb2R1Y2UgYnV0IG9uIGFuIHNnMyBzeXN0ZW0u
IEhhdmluZyBlbnRpcmVseSBkaWZmZXJlbnQgcHJvYmxlbXMuIA0KDQpTZW50IGZyb20gbXkgaVBo
b25lDQoNCj4gT24gTWF5IDE2LCAyMDIxLCBhdCA1OjMzIFBNLCBNYXJ0aW4gPHVzcnAtdXNlcnMt
bGlzdEBvbGlmYW50YXNpYS5jb20+IHdyb3RlOg0KPiANCj4g77u/T24gMTUtMDUtMjAyMSAxODoz
MywgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPj4+IE9uIDA1LzE1LzIwMjEgMTA6MTkgQU0sIE1h
cnRpbiB3cm90ZToNCj4+PiBPbiAxNC0wNS0yMDIxIDIxOjI2LCBNYXJjdXMgRCBMZWVjaCB3cm90
ZToNCj4+Pj4gV2hhdCBoYXBwZW5zIGlmIHlvdSBkb27igJl0IHNwZWNpZnkgYW55IGFyZ3MgYXQg
YWxsPw0KPj4+IFRoZW4gSSBhbHNvIGdldCBObyBEZXZpY2UgZm91bmQuDQo+Pj4gDQo+Pj4gTWFy
dGluDQo+PiBNYXJ0aW46DQo+PiBXaGVyZSBkaWQgeW91IGdldCB5b3VyIHNkaW1nIGZyb20/DQo+
IA0KPiBPbiBhIGhvc3Qgc3lzdGVtIHdpdGggVUhEIDMuMTUgaW5zdGFsbGVkIEkgZGlkOg0KPiAN
Cj4gc3VkbyB1aGRfaW1hZ2VzX2Rvd25sb2FkZXIgLXQgc2RpbWcgLXQgZTMxMCAtdCBzZzENCj4g
DQo+IFtJTkZPXSBJbWFnZXMgZGVzdGluYXRpb246IC91c3Ivc2hhcmUvdWhkL2ltYWdlcw0KPiBU
aGUgZmlsZSBzaXplIGZvciB0aGlzIHRhcmdldCAoODMyLjMgTWlCKSBleGNlZWRzIHRoZSBkb3du
bG9hZCBsaW1pdCAoMTAwLjAgTWlCKS4gQ29udGludWUgZG93bmxvYWRpbmc/IFt5L05deQ0KPiBb
SU5GT10gRG93bmxvYWRpbmcgZTN4eF9lMzEwX3NnMV9zZGltZ19kZWZhdWx0LXYzLjE1LjAuMC56
aXAsIHRvdGFsIHNpemU6IDg3MjcyOS45MyBrQg0KPiBbSU5GT10gSW1hZ2VzIGRvd25sb2FkIGNv
bXBsZXRlLg0KPiANCj4gVGhpcyBzZWVtcyB0byBkb3dubG9hZCB0aGlzIGZpbGUgYW5kIGV4dHJh
Y3RzIGl0Og0KPiBodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9iaW5hcmllcy9jYWNoZS9lM3h4L21l
dGEtZXR0dXMtdjMuMTUuMC4wL2UzeHhfZTMxMF9zZzFfc2RpbWdfZGVmYXVsdC12My4xNS4wLjAu
emlwDQo+IA0KPiBJIHdyb3RlIHRoZSBleHRyYWN0ZWQgaW1hZ2UgdG8gYSA4IEdCIHNkY2FyZCB3
aXRoIGRkLg0KPiANCj4gSSBhbHNvIHRyaWVkIGRvd25sb2FkaW5nIHRoZSBhYm92ZSBmaWxlIGJ5
IGhhbmQgYW5kIGFuZCBleHRyYWNpbmcgaXQgdG8gdGhlIHNkY2FyZC4gVGhhdCBoYXMgdGhlIGV4
YWN0IHNhbWUgcmVzdWx0Lg0KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQo=
