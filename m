Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE603EAE15
	for <lists+usrp-users@lfdr.de>; Fri, 13 Aug 2021 03:16:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 064D4384B60
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 21:16:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SNxQ/Zss";
	dkim-atps=neutral
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id A52C238476F
	for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 21:15:52 -0400 (EDT)
Received: by mail-qv1-f42.google.com with SMTP id g6so4343677qvj.8
        for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 18:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-transfer-encoding;
        bh=o5jnCAPT4TrOyziHmIClrHu/9R0LqYjb3psM1vYJF9I=;
        b=SNxQ/ZsshUgMHtKF2HlQFuqOfqT5o7CE7DOqPebs98SJPQhio+X/XcI+tf2SzEvVBC
         bPpAhE8iqmYV90/f8rfbOCcVVMXiHQ+bJYzsTbCnAqNQBjPGJRehmfvdwqkvFMKSW7Bl
         zQxL9OsfIocwAGUgCkLbfsuoj8JP5AdW2H67t8nsREGASCLs2mVxGda4IXd0VGWZ3lhu
         dAphCmEKC8J2urg8Aj2tlSK8yCuGRtshaipD3+vRJmWfUIOw5/pcmsnyOrJcxLb8hab/
         Tpy8sdASEoEEZo6aglwXIH3sUBxBQEkp4zH8Q2qnTUIrKZak8TTcDjwsBRhxh6IaTqwU
         H0rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to:content-transfer-encoding;
        bh=o5jnCAPT4TrOyziHmIClrHu/9R0LqYjb3psM1vYJF9I=;
        b=D5WJFXMKfvtGGo6YAynCYyYHID/Ctm41uXLRDXQ8OSUtFCKZH2SPluqCey4uPaa3ZH
         3qPNjPiMPid0BrSYg1Z97StZAyHBLvOhMpF9ss0cQZR8t7F7dYgzVZsfFBtek7X0jzUl
         nD+5efYkwMOqqvo0ROhM9pWIl6zFzGnG6ulLhZa4vZ2CqMOOumjHF0Rt1MPSaS12o6Pc
         Ncz0zTLmQs99slPRd0sz4RHmmGRbEnBXWvg+NRgptE1wGpnvyTUlQVYzup3RZWlHI7bW
         g4QAwvhpDjZUSahDGYZnrtfz7DnGDkuwV7vaNQOYXxcfZEn+QNUz7sme/9QsXP5raN0u
         Sdbw==
X-Gm-Message-State: AOAM530KGtbEMYNFUZa0tqBvKo+1es0Dsl3WJ31oUMCCgYj0JNAnGE0i
	by+krF6ay0k4PCut/E7QqlC5841JumOtjg==
X-Google-Smtp-Source: ABdhPJy79R60dtt3y//ENhD3RIi6iPy/Ubc0uEPRbLrVym20McdJ4m5iDODBv5rlI8svW54/uAjDwg==
X-Received: by 2002:a0c:f488:: with SMTP id i8mr212773qvm.16.1628817351867;
        Thu, 12 Aug 2021 18:15:51 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id v22sm42528qtw.18.2021.08.12.18.15.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 18:15:51 -0700 (PDT)
Message-ID: <6115C7C6.5040202@gmail.com>
Date: Thu, 12 Aug 2021 21:15:50 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Paul Atreides <maud.dib1984@gmail.com>
References: <6115BD3E.6020403@gmail.com> <EF9340E6-7FB6-4EF7-9A01-BAE6D553CF31@gmail.com>
In-Reply-To: <EF9340E6-7FB6-4EF7-9A01-BAE6D553CF31@gmail.com>
Message-ID-Hash: 6UBJD4VW3TGQY4QOOPTN62D32VBVI6IZ
X-Message-ID-Hash: 6UBJD4VW3TGQY4QOOPTN62D32VBVI6IZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Bobbi Taylor <bobbi.taylor@student.nmt.edu>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD no devices found
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6UBJD4VW3TGQY4QOOPTN62D32VBVI6IZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDgvMTIvMjAyMSAwOToxMiBQTSwgUGF1bCBBdHJlaWRlcyB3cm90ZToNCj4gSW4gYW4gYXR0
ZW1wdCB0byBoZWxwIG91dCB3aXRoIHRoaXMgSSBqdXN0IGZpcmVkIHVwIG15IG9sZCBOMjEwIGFu
ZCBpdCBzaG93cyB1cCBpbiB1aGRfZmluZF9kZXZpY2VzIHdpdGggVUhEIHY0LjAuMC4wDQo+DQo+
IEkgaGF2ZSBhIGZyZXNoIGluc3RhbGwgb2YgVWJ1bnR1IDIwLjA0DQo+IFVzYjMgdG8gRXRoZXJu
ZXQgZG9uZ2xlDQpUaG9zZSBhcmVuJ3QgcmVhbGx5IHJlY29tbWVuZGVkIGZvciBhY3R1YWwgdXNl
IChVU0IzIHRvIDFHaUdlIGRvbmdsZXMpLiAgDQpNYW55IG9mIHRoZW0gYXJiaXRyYXJpbHkgcmUt
b3JkZXINCiAgIHBhY2tldHMuICBCdXQgZm9yIHF1aWNrIHNhbml0eSB0ZXN0cywgc2VlbSB0byB3
b3JrIE9LLg0KDQo+IERlZmF1bHQgbmV0d29yayBzZXR0aW5ncyBleGNlcHQgZm9yIHNldHRpbmcg
bXkgdXAgYWRkcmVzcyB0byAxOTIuMTY4LjEwLjEgKG15IHJhZGlvIGlzIDE5Mi4xNjguMTAuNCkg
YW5kIHRoZSBuZXRtYXNrIHRvIDI0DQo+DQo+DQo+DQo+IDxlbmQgdHJhbnNtaXNzaW9uPg0KPg0K
Pj4gT24gQXVnIDEyLCAyMDIxLCBhdCAyMDozMiwgTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJy
YXVuQGdtYWlsLmNvbT4gd3JvdGU6DQo+Pg0KPj4g77u/DQo+PiBPbiAwOC8xMi8yMDIxIDA3OjUw
IFBNLCBCb2JiaSBUYXlsb3Igd3JvdGU6DQo+Pj4gSSBqdXN0IHJlc2V0IGl0IGFnYWluLCB0aGUg
SVAgYWRkcmVzcyB3YXMgY29ycmVjdCwgdGhlIENQTEQgYW5kIGZpcm13YXJlIGxpZ2h0cyB3ZXJl
IG9uLCBhbmQgSSBjb3VsZCBwaW5nIGl0LiBCdXQgYXMgc29vbiBhcyBJIHRyeSB0byBsb2FkIGFu
IGltYWdlLCBJIHN0aWxsIGdldCB0aGUgTm8gVUhEIGRldmljZXMgZm91bmQgZXJyb3IuDQo+Pj4N
Cj4+Pg0KPj4+IDxtaW1lLWF0dGFjaG1lbnQucG5nPg0KPj4+DQo+Pj4NCj4+Pg0KPj4gSXMgdGhp
cyBpbnNpZGUgYSBWTSBvciBvbiBhICJiYXJlIG1ldGFsIiBMaW51eCBzeXN0ZW0/DQo+Pg0KPj4g
SXMgcG9ydCA0OTE1MiBhbmQgNDkxNTMgIm9wZW4iIGZvciBVRFA/DQo+Pg0KPj4gQXJlIHlvdSBz
dXJlIHRoYXQgdGhlc2UgYXJlIE4yMTAgZGV2aWNlcz8NCj4+DQo+PiBJZiB5b3UgcmV2ZXJ0IHRv
IFVIRCAzLjE1IG9yIGV2ZW4gMy4xNCwgZG9lcyB0aGUgYmVoYXZpb3IgY2hhbmdlPw0KPj4NCj4+
DQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4g
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+
IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20K
