Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9A68BC35C
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2024 22:01:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2241B384A27
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2024 16:01:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714939315; bh=MAqpmMab9JN6Z0Wa+7ZhNECYVtrSKeasV6LYdL5+VeA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=AU4Q+Cd1QxsLC5oFdrFwzRlxCRSzYpfOsMItCfAdg2yxSlVzcBLDT14BRyqxiOB7b
	 1b3Z/GDrlto2dBoK67Jb7oh0gAj5UkbxLk1aSMFJQhW5vKLfnj8q9VotmVocWQQSe4
	 fz30ImmQhM0dEHqmFChp0VqcvegP1EqZaeaTbcSvYHWTH79/k22HS5C081AHWhXg2k
	 AgNaCDtaynjvWzTpb2xdx4agrZBDJ5T18NPd4G3gmhdXq0CTnV/DXvDnvVABlXjgrX
	 nBAvEEVvib6W5mBJ+/VqSYzoKtI7UpVflccVsEKawtdsF8ZUZSwqOoE5dN/17qhNIo
	 aPCJ1ngn3jWnQ==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 4308238417D
	for <usrp-users@lists.ettus.com>; Sun,  5 May 2024 16:00:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="esy2PH72";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a59a17fcc6bso259557566b.1
        for <usrp-users@lists.ettus.com>; Sun, 05 May 2024 13:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1714939252; x=1715544052; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bGa+AN1+L7JQVFIq3rre08phFKrGLOGICczHGDypNco=;
        b=esy2PH727HI/mOpf6gkycbAyXqsdoB6JZdlOe/W/kibacMxtIFaumzmYmZ7EAF6n2Z
         XXrzPa95ACE93IRwZMb/EQC2zjwRMPXIw0xG79+OQIEZ2mNUXXhUNFx3D83Ts3+tB4oo
         YzrEYuNQXM3N9059R5Z7tiG1SKWaK7s7pNHJ+zhIcnsMHbtIjj/8tjNPTeiMVEmIUWft
         0TUS1LWw6aoFAmVMYgvCdbcXbw/NvGmCcxDvbEcqxUHIFZjjrXEkMmcoRlT5cwHMstXK
         eHOyHq+Z+5by4bSWJ66JhTrS3iHLlfDih2Fz0LMwnjhcYZLawG7Nh/dp59GN8FDoG5xS
         iQnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714939252; x=1715544052;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bGa+AN1+L7JQVFIq3rre08phFKrGLOGICczHGDypNco=;
        b=CpWG0dj38bqI4aIO6Nz64YukCLwV9F+1bltgiMEk41Ba7iO7vPj1k0T+9nmJV8KRkT
         m7yPtb4A1fHipk9F6Jie5qWewRomIfxeaupZq/RSaON9kDsixwCKtoVnIyNhBNBD5ubI
         sBMocPihwKapai0uA4/FeOHwW3FSvdiUeuU7M+R0CxcXNfFkinDFdxi37HviQKeoM8qi
         bpez2eScBt7H1wHe+Q0Nq0j8B62dpG501ypIUVQFKD4YiQ61mhQSO2Fle54YKnG9/EaG
         JUjyGzwU93A9zfkREvErut95JkQaLZXYPo2lOa0VdAjFrPeysbEoQ9PfAZaQbytXNTrJ
         5sXw==
X-Gm-Message-State: AOJu0Yxp3fwz4h9IOwFsRzqgWuQlME++kwHffGcnT/yahzHwOaWeYVMp
	V22t0ezZQdpau+naJFiejTicwsy3BJ/gR/Vx4j+WWgUgs8IEcWZp44f0MpzMaJr8AHEVqxrkVtP
	mBE4=
X-Google-Smtp-Source: AGHT+IHk77ze5uNRem/qBeM5myEVxb+oCxV2suP+G19XXFXEw9tANKQn/QgkCpGApCKy/j1cQa8wlQ==
X-Received: by 2002:a17:906:f348:b0:a59:a282:5dbb with SMTP id hg8-20020a170906f34800b00a59a2825dbbmr3256243ejb.49.1714939252255;
        Sun, 05 May 2024 13:00:52 -0700 (PDT)
Received: from ?IPV6:2001:16b8:cc5c:6d00:10fc:1619:bea3:90d1? ([2001:16b8:cc5c:6d00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id mb15-20020a170906eb0f00b00a59cc6d06f2sm547604ejb.218.2024.05.05.13.00.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 May 2024 13:00:51 -0700 (PDT)
Message-ID: <5de6679c-80f4-4f42-9ee8-b224ade27fdb@ettus.com>
Date: Sun, 5 May 2024 22:00:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <VULdau3WpJoUrqZUJXWIJAj1F1uG6S8Yd17gPfqx8@lists.ettus.com>
 <14e82baa-39e1-4364-8914-a079b1e45d25@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <14e82baa-39e1-4364-8914-a079b1e45d25@gmail.com>
Message-ID-Hash: FQDPTX2JXJRGUGL3USLLGQISGEVFE327
X-Message-ID-Hash: FQDPTX2JXJRGUGL3USLLGQISGEVFE327
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sharing one UHD device across multiple hosts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FQDPTX2JXJRGUGL3USLLGQISGEVFE327/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

VGhhdCBhbHRlcm5hdGUgc3RyZWFtaW5nIHRhcmdldCBmdW5jdGlvbmFsaXR5IHJlLWVtZXJnZWQg
aW4gbGF0ZXIgVUhEIHZlcnNpb25zIGZvciANClJGTm9DLXN1cHBvcnRlZCBkZXZpY2VzLg0KDQpP
biAwNS4wNS4yNCAxNzozNSwgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPiBPbiAwNS8wNS8yMDI0
IDExOjI3LCBqbWFsb3lhbkB1bWFzcy5lZHUgd3JvdGU6DQo+Pg0KPj4gSGVsbG8sDQo+Pg0KPj4g
SSBhbSB3b25kZXJpbmcgaWYgaXQgaXMgcG9zc2libGUgdG8gYWxsb3cgYW5vdGhlciBob3N0IGRl
dmljZSB0byBzdGFydCBhIHNlc3Npb24gd2l0aCANCj4+IGFuIHg0MTAgYWZ0ZXIgaXQgYWxyZWFk
eSBoYXMgYSBzZXNzaW9uIHdpdGggYSBkaWZmZXJlbnQgaG9zdCBkZXZpY2UuIEluIG90aGVyIHdv
cmRzLCANCj4+IG11bHRpcGxlIGRldmljZXMgc2hhcmluZyBvbmUgVVNSUCBkZXZpY2UgYXQgdGhl
IHNhbWUgdGltZS4NCj4+DQo+PiBJIGtub3cgaXQgaXMgcG9zc2libGUgdG8g4oCcaGlqYWNr4oCd
IGEgc2Vzc2lvbiB0byBwZXJmb3JtIHNvbWUgbXBtIGZ1bmN0aW9ucywgYnV0IEkgd291bGQgDQo+
PiBsaWtlIHRvIHN0cmVhbSBzZXBhcmF0ZSBjaGFubmVscyBvbiB0aGUgeDQxMCBkZXZpY2UgYWNy
b3NzIHNlcGFyYXRlIGhvc3QgZGV2aWNlcy4NCj4+DQo+Pg0KPiBJIGRvbid0IGJlbGlldmUgdGhh
dCB0aGVyZSdzIGFueSBzdWNoIGZlYXR1cmUgYnVpbHQtaW4gdG8gVUhELiBUaGUgVVNSUCBOMnh4
IGhhcyBhbiANCj4gImFsdGVybmF0aXZlIHN0cmVhbSBkZXN0aW5hdGlvbiIgQVBJLCBidXQNCj4g
wqAgdGhhdCBkaWQgbm90IG1ha2UgaXQgaW50byBmdXR1cmUgVVNSUHMgYXMgZmFyIGFzIEkga25v
dy4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
Cj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20N
Cj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tCg==
