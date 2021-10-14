Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A93F042E232
	for <lists+usrp-users@lfdr.de>; Thu, 14 Oct 2021 21:51:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A4DC3844AA
	for <lists+usrp-users@lfdr.de>; Thu, 14 Oct 2021 15:51:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="casx/68b";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id EC640384493
	for <USRP-users@lists.ettus.com>; Thu, 14 Oct 2021 15:50:23 -0400 (EDT)
Received: by mail-qt1-f176.google.com with SMTP id z24so6814251qtv.9
        for <USRP-users@lists.ettus.com>; Thu, 14 Oct 2021 12:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=CKSh0mVE7gEN89coZMFzRPfXcLpBQf5LNKbumyT5pbI=;
        b=casx/68bpcGxyYVB31U9/VaY6WsecTQyhI7BTvQ5MrxhROVyZLUPSNrvZa6tfCh9wO
         zNuth5TVWaGAHbjh/b4+zr8mdB77PoagjO7S+CFz/VQ4+E7xLcU9GgFnMKD5isD9t1hE
         cqfQdr8+Ms2L3n+c+7px6620rUi8u9EMLQruX3XzJddtigHXvXIJsdBACkqktKFImhPN
         UqEQsvwZlOEUSjva7Bmr97GKiHDxnO3zP+Z/1VWmPtry/wvMdoq279H+0DjZn1HsQEJH
         leleRRI3P0HDv8e149a2d5A8FbV/svwdt7qORjiCbW1YmlXCfZyiaBN9pilGGyCFujHZ
         w+1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=CKSh0mVE7gEN89coZMFzRPfXcLpBQf5LNKbumyT5pbI=;
        b=irfAicwMUIq7Fi8O0q5e3KzpyrwWIjhmy5We7sy3qvzI+YCrj7xP3KQrDl/l0yNY+N
         8ZSFKxr4Mlcz7Q2xBLGzfyaOjx2ZY2ICiIbO5bkP6gjv45H33WaXPARwH7Y8xpQwBgdC
         FO1pqzs/cZ3tB+KMyQkPSymxeVDmke8vH43tqfYy+NlDMR3ET5z+gJfnVmxkm+m5j9Pn
         64Aq27+bU+pyrJZmMezbY2+24q6KHwW9sDp1sYLs8UeQ2ON6Sfpyu9yImIzikYlob7D8
         ZPBkD6SRNl2Zo9risYEDg8xkNYZ2CmlSiL4tfR08l7jtKJztugdP43h7IfWf/PyGC0sb
         28sg==
X-Gm-Message-State: AOAM530VADX5VBK8aNI1xc91oIB8txc+DNeOtjrxPuwIjHZ4ZrH/xtG9
	E365kilf61roj1Kj8TjF/di8oorncmI=
X-Google-Smtp-Source: ABdhPJy0HlpNOwVqle0eGb6iRWkkXTQNOX3c1YRKSf9+C2YPsFJV2IFrzqwrSNnEpzEpRFVYN59w7w==
X-Received: by 2002:ac8:5a0d:: with SMTP id n13mr8926146qta.198.1634241023245;
        Thu, 14 Oct 2021 12:50:23 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.gmail.com with ESMTPSA id 201sm1770790qkh.43.2021.10.14.12.50.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Oct 2021 12:50:22 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 14 Oct 2021 15:50:22 -0400
Message-Id: <564F776E-53EB-4128-A46E-D0C4047BD66C@gmail.com>
References: <CAErymBgdKeG9dKdwN_LTmYW0=gXTvO+POuGZ6Ge9VOkk5X33aw@mail.gmail.com>
In-Reply-To: <CAErymBgdKeG9dKdwN_LTmYW0=gXTvO+POuGZ6Ge9VOkk5X33aw@mail.gmail.com>
To: Achilleas Anastasopoulos <anastas@umich.edu>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: D62JOOPJCIIU4HE5BK7VJDF3M4B2SJXP
X-Message-ID-Hash: D62JOOPJCIIU4HE5BK7VJDF3M4B2SJXP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X310 with internal GPSDO: GSM led in front panel
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D62JOOPJCIIU4HE5BK7VJDF3M4B2SJXP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNpbmcgdWhkX3VzcnBfcHJvYmUgaXMgb25lIHdheS4gWW91IGNhbiBhbHNvIHVzZSB0aGUgc3lu
Y190b19ncHMgZXhhbXBsZSB3aGljaCB3aWxsIGJhbGsgaWYgdGhlcmUgaXNu4oCZdCBhIEdQUy4g
DQoNCk15IHJlY29sbGVjdGlvbiBpcyB0aGF0IHRoZSBQUFMgbGlnaHQgd2lsbCBzdGFydCBibGlu
a2luZyBvbmNlIHRoZSBHUFMgaGFzIGFjcXVpcmVkIGxvY2suIFdoaWNoIGNhbiB0YWtlIDEwcyBv
ZiBtaW51dGVzIGZyb20gYSBjb2xkIHN0YXJ0LiANCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQo+
IE9uIE9jdCAxNCwgMjAyMSwgYXQgMjozMyBQTSwgQWNoaWxsZWFzIEFuYXN0YXNvcG91bG9zIDxh
bmFzdGFzQHVtaWNoLmVkdT4gd3JvdGU6DQo+IA0KPiDvu78NCj4gSSBoYXZlIHNvbWUgcXVlc3Rp
b25zIHJlZ2FyZGluZyB0aGUgb3BlcmF0aW9uIG9mIFgzMTAuDQo+IA0KPiAxKSBIb3cgZG8gSSBr
bm93IGlmIEkgaGF2ZSBhbiBpbnRlcm5hbCBHUFNETyAod2UgaGF2ZSAyMCBVU1JQcyBpbiB0aGUg
TGFiIGFuZCBJIHJlbWVtYmVyIHdlIGJvdWdodCBzb21lIG9mIHRoZW0gd2l0aCBHUFNETykuIEkg
a25vdyB0aGF0IHdoZW4gSSBkbyAidWhkX3VzcnBfcHJvYmUiLCBhIGRldmljZSB3aXRob3V0IEdQ
U0RPIHNheXMgIm5vIGludGVybmFsIEdQU0RPIGRldGVjdGVkIiBidXQgaW4gdGhlIGFic2VuY2Ug
b2YgdGhpcyBtZXNzYWdlLCBzaG91bGQgSSBhc3N1bWUgdGhlcmUgaXMgb25lIGluc2lkZT8NCj4g
DQo+IDIpIFVwb24gcG93ZXJpbmcgdXAgdGhlIFVTUlAgYW5kIGFzc3VtaW5nIEkgaGF2ZSBhbiBh
Y3RpdmUgYW50ZW5uYSBjb25uZWN0ZWQgaW4gdGhlIGJhY2sgc2lkZSAoR1BTIGFudGVubmEpIGlu
cHV0LCBzaG91bGQgSSBleHBlY3QgdGhhdCBhdCBzb21lIHBvaW50IHRoZSBHUFMgbGVkIChmcm9u
dCBwYW5lbCkgd2lsbCBzdGFydCBibGlua2luZz8gb3IgZG8gSSBoYXZlIHRvIGRvIHNvbWV0aGlu
ZyB0byBpbml0aWF0ZSBHUFMgYWNxdWlzaXRpb24/DQo+IA0KPiB0aGFua3MNCj4gQWNoaWxsZWFz
DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
