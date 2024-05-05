Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CE08BC3BB
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2024 22:46:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E4A14384616
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2024 16:46:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714942015; bh=vxtoVajhjUtALfl0lW3iXhuUIbPVeofYhOciQylenNI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=rj++XYu7bz4Nd7wh4gYne3XrBiAR3AcHudj9b5PBAjxzOCNZLmEBUatPgl9pYcQEM
	 iIP2WFsvYJFEjTuctSe7c0U3JOSi06JOFOWFjMNCSo3r1khNBIZW9/bdTI+9PGPTTr
	 cePQE5X8P2enKq+Wru4ccu5bAJ6L8mIlpH5lokrJeQbo3yOwvRv02c8YoCZlDBtebt
	 NRPN56939jWo+MHRc1tIsPw4ht14fvHLe9Ga7xoNiH9TBS0gcyNyHD3e4pjiq9mjpr
	 4Pt6Q+qDpxEvSi/cepSABjb5tZ9VyNNWnaGxfJNjvO6GPfnkzGtR6Q94hbWzIWxbNz
	 hwoAyLtlm0wEw==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D17B383B81
	for <usrp-users@lists.ettus.com>; Sun,  5 May 2024 16:46:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g2EmNRyX";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-78ef9ce897bso115765585a.0
        for <usrp-users@lists.ettus.com>; Sun, 05 May 2024 13:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714941986; x=1715546786; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EJYPDrqBmWZ1jE4EHpILYyq8ltimTDxsTcIt+EQ9O3Q=;
        b=g2EmNRyXVzUtC/N27016YnbznKG0Q0IMlj1lFSA7hiL4UD/veVTw4XQx6uL0hJIrU8
         VpZSUJArJsL/U8E8VaR+Z2P0ZcDBe1EAOQ0T4ltac8/QUJRSxMYrZXxyPQ47+n9rzZT+
         RE3hlc+xB/NvYZLCQXRiwypODE+Ulf0RWsKJtTyCIEykyvpg69zyH2NcLSK5AlKEJHnq
         bOND3PXwlVcicpx1lOlzsFaEgRFHHdHsdJXAr77fZLaVVtXC18/2W/+Da6dcrzepx4S+
         BYNfuEHrR4mqHZtcj25GWCW8UJAvqjgVOuLXJPjizzKv+bD7PKVTAebTIrIZzzCXBl6N
         A4QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714941986; x=1715546786;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EJYPDrqBmWZ1jE4EHpILYyq8ltimTDxsTcIt+EQ9O3Q=;
        b=aKXyfMEJ0UsqKZxJ2eR7GXSS/fFCX3s+S5kfqpQahYIRfv/YaSqOh9VrLZa1I91XbU
         QHCfb7FDaoZss1LpCUanlS7U8S6tpXuAGs/ain3SRIRqs8lNAuUCjfpE2NC8jLzjZax8
         r1PNLTL/Gyvmu9EMjB0VvukmTxxWmLunUMpuSUsEyuc9FwqQGi197Hr3/CZmhscur4eC
         A36+wlsaFX+CkekynV18QL0S6IIl5tfucKfL4Vo3Bw9SEiJyvbzX6DNsv8KAkaFcR40W
         iP52g5T3fJrb24OKgCTZ3aosW8KS2RFU9BjawboqBtw/yxW/4u8ABTOSmS9s7B2V8Ih7
         lFuw==
X-Gm-Message-State: AOJu0YxEpsT5M9C6FN/nU9KFA+Y7jNCUH6QSnRWSRoGk1rm8CxcDPJXi
	xw1W6J9uWAYDbDWyJ55Rg+/zpZbLCuvgZDKAcAmPAdRSVsNQt+KNspYU9Q==
X-Google-Smtp-Source: AGHT+IF86Bzo4cMTkUuy6N4Pn0TFvstCsyyGf7ENeBijGYOpESJHbN+pz2PDmAgx5frwVj1NZwui5Q==
X-Received: by 2002:a05:622a:94:b0:43a:62ac:5888 with SMTP id o20-20020a05622a009400b0043a62ac5888mr9792995qtw.13.1714941985855;
        Sun, 05 May 2024 13:46:25 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id ff22-20020a05622a4d9600b0043a0acc96e4sm4345716qtb.30.2024.05.05.13.46.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 May 2024 13:46:25 -0700 (PDT)
Message-ID: <4df3d6df-b7d3-43b6-a4d6-68b1bbdc3486@gmail.com>
Date: Sun, 5 May 2024 16:46:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <VULdau3WpJoUrqZUJXWIJAj1F1uG6S8Yd17gPfqx8@lists.ettus.com>
 <14e82baa-39e1-4364-8914-a079b1e45d25@gmail.com>
 <5de6679c-80f4-4f42-9ee8-b224ade27fdb@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <5de6679c-80f4-4f42-9ee8-b224ade27fdb@ettus.com>
Message-ID-Hash: HQZ7IXUS4BMAHXASAH36SPLVPKQNFOHG
X-Message-ID-Hash: HQZ7IXUS4BMAHXASAH36SPLVPKQNFOHG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sharing one UHD device across multiple hosts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HQZ7IXUS4BMAHXASAH36SPLVPKQNFOHG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDUvMDUvMjAyNCAxNjowMCwgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+IFRoYXQgYWx0ZXJu
YXRlIHN0cmVhbWluZyB0YXJnZXQgZnVuY3Rpb25hbGl0eSByZS1lbWVyZ2VkIGluIGxhdGVyIFVI
RCANCj4gdmVyc2lvbnMgZm9yIFJGTm9DLXN1cHBvcnRlZCBkZXZpY2VzLg0KSXMgdGhlcmUgYW4g
ZXhhbXBsZSBvZiB0aGlzIHNvbWV3aGVyZT/CoCBJIG9ubHkgdmFndWVseSByZW1lbWJlciBzZWVp
bmcgDQp0aGlzLi4uDQoNCg0KPg0KPiBPbiAwNS4wNS4yNCAxNzozNSwgTWFyY3VzIEQuIExlZWNo
IHdyb3RlOg0KPj4gT24gMDUvMDUvMjAyNCAxMToyNywgam1hbG95YW5AdW1hc3MuZWR1IHdyb3Rl
Og0KPj4+DQo+Pj4gSGVsbG8sDQo+Pj4NCj4+PiBJIGFtIHdvbmRlcmluZyBpZiBpdCBpcyBwb3Nz
aWJsZSB0byBhbGxvdyBhbm90aGVyIGhvc3QgZGV2aWNlIHRvIA0KPj4+IHN0YXJ0IGEgc2Vzc2lv
biB3aXRoIGFuIHg0MTAgYWZ0ZXIgaXQgYWxyZWFkeSBoYXMgYSBzZXNzaW9uIHdpdGggYSANCj4+
PiBkaWZmZXJlbnQgaG9zdCBkZXZpY2UuIEluIG90aGVyIHdvcmRzLCBtdWx0aXBsZSBkZXZpY2Vz
IHNoYXJpbmcgb25lIA0KPj4+IFVTUlAgZGV2aWNlIGF0IHRoZSBzYW1lIHRpbWUuDQo+Pj4NCj4+
PiBJIGtub3cgaXQgaXMgcG9zc2libGUgdG8g4oCcaGlqYWNr4oCdIGEgc2Vzc2lvbiB0byBwZXJm
b3JtIHNvbWUgbXBtIA0KPj4+IGZ1bmN0aW9ucywgYnV0IEkgd291bGQgbGlrZSB0byBzdHJlYW0g
c2VwYXJhdGUgY2hhbm5lbHMgb24gdGhlIHg0MTAgDQo+Pj4gZGV2aWNlIGFjcm9zcyBzZXBhcmF0
ZSBob3N0IGRldmljZXMuDQo+Pj4NCj4+Pg0KPj4gSSBkb24ndCBiZWxpZXZlIHRoYXQgdGhlcmUn
cyBhbnkgc3VjaCBmZWF0dXJlIGJ1aWx0LWluIHRvIFVIRC4gVGhlIA0KPj4gVVNSUCBOMnh4IGhh
cyBhbiAiYWx0ZXJuYXRpdmUgc3RyZWFtIGRlc3RpbmF0aW9uIiBBUEksIGJ1dA0KPj4gwqAgdGhh
dCBkaWQgbm90IG1ha2UgaXQgaW50byBmdXR1cmUgVVNSUHMgYXMgZmFyIGFzIEkga25vdy4NCj4+
DQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4g
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+
IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQo=
