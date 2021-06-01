Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB94397476
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jun 2021 15:38:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE4623840A4
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jun 2021 09:38:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="J15c3jaa";
	dkim-atps=neutral
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id C0A62383DD3
	for <usrp-users@lists.ettus.com>; Tue,  1 Jun 2021 09:37:36 -0400 (EDT)
Received: by mail-qv1-f50.google.com with SMTP id 5so7172654qvk.0
        for <usrp-users@lists.ettus.com>; Tue, 01 Jun 2021 06:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:in-reply-to:to;
        bh=n1H9bqZE9Fx/jKpB8pkidnHVQszA4nDL9RG+7k6gBUM=;
        b=J15c3jaa9H/qd7QLMYk/BTMGhtONQv3KhBZkNWP+OCQ2CNq7R/7ibo9v0EXxZlo1xx
         l9OXCwEB1MMjMcrthNiMIMazXPDrcU94blXY93OK4d56hTOJds8mjIGYIHaDsNcgej8e
         iZleo/SeL9E3LQl0Mjy6OQf0ecDDZ7zHvw+Fo3YoPlj87GTgB8Z+N9sJhvLD28p4qPeU
         T/jP2uvjibRk+Q6opRgBnfqRFQU4fFQVt+Ljwhhsd/fYOG3mD0whInzv95t6Uu/Jhy6S
         NzWKw6zzlre6tYfA+i7MeBQhUyj868dLZEJp4LO44G3Sdpp0qdgSMug/FUm28Nc9fPLZ
         WK2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:in-reply-to:to;
        bh=n1H9bqZE9Fx/jKpB8pkidnHVQszA4nDL9RG+7k6gBUM=;
        b=YpoCvFcbvq+CmYRK7AWihCDz22HXjBGOJbkLCkN64/hj1j7QuDGiRjLSGeUmeZH7KL
         IFBMpWvtfXUEDtyR6f2k+q84uv0YoUOQi+V8VeIVwV8K/+zVtIGxLfBipvOyCxKILVzh
         j5Y3WX0FWkeoyN+Ag2JREUQUfGq0Tkms1WINlZWwneS+CzIhibwbTQr+KCUdiyO4fR/7
         Zwoe237qshbvxBT+GG6sQZHRXC+ROifh0JOO5hwlM9Nwi8y8VspESfVOlDQEGsxyiu2o
         BQbPGDagBeMXqD7djEOrdxTb3x098HEGIikZBDWOnZxNkExm/9ScH/5zDOt/M0nQAeXL
         gl2w==
X-Gm-Message-State: AOAM5337mUJsoKsNDCK9yZ/QUO1J2ROcqP/4+s8V/cyeSQRT7sSdXZpF
	DKEsOz7sfsTi9hOxkMO/j8f7hp5Gm2uadA==
X-Google-Smtp-Source: ABdhPJwkQsm4LNTCtJi8tquEjA/yxPiCtrvqKSoN8oiEtQ6R+WOdNtsvNKu2zJAUl6PLMXhIL/dqxA==
X-Received: by 2002:ad4:5569:: with SMTP id w9mr20099165qvy.59.1622554655835;
        Tue, 01 Jun 2021 06:37:35 -0700 (PDT)
Received: from ?IPv6:2601:151:c000:a810:977:59f3:4aec:dcc? ([2601:151:c000:a810:977:59f3:4aec:dcc])
        by smtp.gmail.com with ESMTPSA id p19sm11111123qki.119.2021.06.01.06.37.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 06:37:35 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 1 Jun 2021 09:37:34 -0400
Message-Id: <F1593053-75C8-4524-B3EC-CF59421293AA@gmail.com>
References: <CD66EE6A-A119-43AE-B116-DC22797F6C39@gmail.com>
In-Reply-To: <CD66EE6A-A119-43AE-B116-DC22797F6C39@gmail.com>
To: usrp-users@lists.ettus.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: VG6ZGZQLLQ5SMOIF3SWBHGSLFTD63BSA
X-Message-ID-Hash: VG6ZGZQLLQ5SMOIF3SWBHGSLFTD63BSA
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] SFP+ assignments in RFNoC on X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VG6ZGZQLLQ5SMOIF3SWBHGSLFTD63BSA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rm9sbG93aW5nIHVwIG9uIHRoaXMgYXMgbm8gb25lIGZyb20gZXR0dXMgcmVzcG9uZGVkIHRvIHRo
ZSBvcmlnaW5hbC4gV291bGQgYmUgcmVhbGx5IGdyZWF0IGlmIHNvbWVvbmUgZnJvbSBldHR1cyBj
b3VsZCByZXNwb25kIGFuZCBsZXQgbWUga25vdyBJZiB0aGlzIGlzIHBvc3NpYmxlIHdpdGggUkZO
b0MvVUhEIHdpdGggb3Igd2l0aG91dCBHTlVSYWRpby4gDQpUaGUgcXVlc3Rpb24gaXMsIGhvdyBj
YW4gSSBhc3NpZ24gYSBoaWdoIHJhdGUgcngtb25seSBJL1Egc3RyZWFtIG92ZXIgU0ZQKyB2aWEg
ZWl0aGVyIEF1cm9yYSBvciBFdGhlcm5ldCBwcm90b2NvbCB3aGlsZSBhbHNvIGlzc3VpbmcgY29u
dHJvbCBjb21tYW5kcyBhbmQgYSBsb3cgcmF0ZSBUWC9SWCBzdHJlYW0gb3ZlciAxRyBFdGhlcm5l
dC4gVGhpcyBzZWVtcyBsaWtlIHRoZSBtb3N0IGJhc2ljIG9mIHVzZSBjYXNlcyBmb3IgdGhlIEhB
L0hHIGltYWdlcywgYnV0IEkgY2Fu4oCZdCBnZXQgaXQgdG8gd29yay4gDQoNCknigJltIHVzaW5n
IFVIRDQuMCB3aXRoIEdOVVJhZGlvIDMuOC4yDQoNCi1JbiB0aGUgSEcgaW1hZ2UgY2FzZSBJ4oCZ
bSB1c2luZyBhbiBYMzEwIGNvbm5lY3RlZCB2aWEgU0ZQKyBhbmQgMUcgRXRoZXJuZXQgdG8gYSBw
YyANCg0KLUluIHRoZSBIQSBpbWFnZSBjYXNlIGltIHVzaW5nIGEgaG9zdCBQQyBhbmQgY29ubmVj
dGluZyB0aGUgc2Vjb25kIFgzMTAgdmlhIFNGUCsgKGJvdGggcmFkaW9zIHJ1bm5pbmcgSEEgaW1h
Z2UpLiANCg0KQ2FuIHNvbWVvbmUgaGVscCB3aXRoIHRoaXM/DQpUaGFua3MNCg0KPGVuZCB0cmFu
c21pc3Npb24+DQoNCj4gT24gTWF5IDE0LCAyMDIxLCBhdCAwMjozMywgUGF1bCBBdHJlaWRlcyA8
bWF1ZC5kaWIxOTg0QGdtYWlsLmNvbT4gd3JvdGU6DQo+IA0KPiDvu79IaSB0aGVyZToNCj4gSW0g
dHJ5aW5nIHRvIHdyYXAgbXkgaGVhZCBhcm91bmQgdXNpbmcgUkZOb0MvVUhENCBhbmQgdGhlIFgz
MTAuIEl2ZSBnb3R0ZW4gYmFzaWMgZmxvd2dyYXBocyB3b3JraW5nIGFuZCBJ4oCZbSBidWlsZGlu
ZyBjdXN0b20gaW1hZ2VzIGluIFZpdmFkby4gUmlnaHQgbm93IEnigJltIHdvcmtpbmcgb24gdGhl
IGRlZmF1bHQgWEcgaW1hZ2UuIA0KPiBJIHdvdWxkIGxpa2UgdG8gc2VuZCB0aGUgcmVjZWl2ZWQg
c2FtcGxlcyBmcm9tIG9uZSBVQlgxNjAgdG8gMiBkaWZmZXJlbnQgcGh5c2ljYWwgb3V0cHV0cyBv
biB0aGUgeDMxMC4gVGhlIHN0cmVhbXMgd2lsbCBiZSBkZWNpbWF0ZWQgdG8gZGlmZmVyZW50IHJh
dGVzIChpLmUuIHN0cmVhbTA9aGlnaC1yYXRlL3N0cmVhbTE9bG93LXJhdGUpLiBJcyB0aGVyZSBh
IHdheSBpbiBHTlVSYWRpby9yZm5vYyB0byByb3V0ZSByeCBzdHJlYW0wIHRvIFNGUCsgUG9ydCAw
IGFuZCByeCBzdHJlYW0xIHRvIFNGUCsgUG9ydCAxPyBJIGNhbuKAmXQgc2VlbSB0byBmaW5kIGFu
eSByZWxldmFudCBkb2N1bWVudHMgb24gYXNzaWduaW5nIHJhZGlvIElELCBhZGRyZXNzIG9yIHBv
cnRzLiBDYW4geW91IGhlbHA/DQo+IA0KPiBUaGFua3MhDQo+IA0KPiA8ZW5kIHRyYW5zbWlzc2lv
bj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
