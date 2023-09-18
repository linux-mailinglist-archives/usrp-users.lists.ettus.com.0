Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 046F47A4AFF
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 16:13:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5BA87384E89
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 10:13:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695046389; bh=HBf2+bdnN8INt6SynchzFrkWAWUiaDWH6eKOzd9mYkk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Kgb0rhikI0Bqhh/Hyg7QoXzv5Y5MoK1sA0N/ZYsQBZ/l2rbVTALDfJ9ND5vjfQgzq
	 cf4c1CNh7rvVvEQYzmf1WhQNHx3nuhN1/1RdizTG9lg8GbmD6R4Tbeel8cQ9R8yVtC
	 4pKbUahyHwY1/bRrxOCyHNAVb01+IYZs0h+o5hymW85ETGh1/JUIBeWnjdfI+r8LgW
	 0knAD2/p+4EdtuacQOxUGkDxTe+2PslIxI7CGGkJN/5IlKNv+Bh+ZNu6CAoTVP1KH2
	 noY/SvXytDtFhXmlUWHbZEVBIDjj1LngQL/cbkms3WqL5EOsZjn5u3fesXgwty4C5d
	 Y6YY0FRh+CuYg==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 50D81384FDA
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 10:12:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DGC9BMT+";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6563022e3d3so19831306d6.3
        for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 07:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695046373; x=1695651173; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SLDCH/pykyoKE0VlGUxyoWZh+NEIVOVCNnA15FrIoS8=;
        b=DGC9BMT+2MQ1pyFs5/CTwx41WWVwb9tF5JcMN6r1N6SkZnanu3KmuEyPTcYsVKv2yp
         jTVR9Xni+VqmXqiyBQiPSJSUkyy+48fFYmwQWG3uBfthon8f76sH8q73uNgemATmYakI
         kryhzKzNgBDgLmsf98F1VGDeXjRiZA++ac3ShfuFNgADpia0v431j7YbZFeBC9W8/lV+
         PPvt9JGck5u/lCCdzh7DjDaA67FRSH3AChjW2qx7yY73DRhj7MCLSMyDsRg4NO4lc7b6
         Dn7n3MJ5f2wzb+rjPNmvChuXVoneGlDBYaPf+ao/SrCzADmmqg4S3vW1uenzuTSDl8Gc
         gmtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695046373; x=1695651173;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SLDCH/pykyoKE0VlGUxyoWZh+NEIVOVCNnA15FrIoS8=;
        b=jQ0tl8Z3w7EcsaW/3yLHOtJI170ZnE3TBR5htlOx2uyVqWj312mISiRv91RcjDDylE
         PEU+AO8WICkhlIKirFwOYLc/Yc3y7TB8HJWVZJ5zCCOQNY9ygcKGj47J8yvZiz6M2xX9
         ViI9eI72JfY2AH8aMbiSzPcENjNHEkFX3Wbc2UB9tZxNdxKzqLbUX09Icw+flq8WytL4
         3DK7SYtLrkWgoyZtBQUdIoaxWl8ohidBc9MIi/HjerS1eN4gje/2FdMY5qvQaeNWfVZ5
         iHp6sBeYt7V3SHpGZXPdves9K1hKz8679jrQO75kNOgyK9U/ZtwQpdUfD53+ob3HTwDg
         T+pg==
X-Gm-Message-State: AOJu0YwHSurePa6Hkk/uBgMuEKTY3Qh3wtaS5bCe3TJAfVCB9/12J8z+
	qy1OlRVFJ31rhIUKL8mib2VEYK/bLiCh3A==
X-Google-Smtp-Source: AGHT+IHPIT8ico/U5Il8qlcFHErUiL7hsD5s23dO2Udv6ibzRPsb4VFmAqMB8pLcy45BnfS3nFPbgA==
X-Received: by 2002:a0c:c209:0:b0:64f:4dbe:c675 with SMTP id l9-20020a0cc209000000b0064f4dbec675mr9119667qvh.25.1695046373408;
        Mon, 18 Sep 2023 07:12:53 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id l2-20020a0cac02000000b00655e428604esm3509610qvb.137.2023.09.18.07.12.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 07:12:53 -0700 (PDT)
Message-ID: <74606cb4-4336-7248-5872-7c8a8fc20788@gmail.com>
Date: Mon, 18 Sep 2023 10:12:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <5RnC2plypU3R3YKSjZaYX8ojGRwqpx2bqpBRcJhSRk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <5RnC2plypU3R3YKSjZaYX8ojGRwqpx2bqpBRcJhSRk@lists.ettus.com>
Message-ID-Hash: 3WEWSLRKKDX6PUWAYDA56KZRJW55CABQ
X-Message-ID-Hash: 3WEWSLRKKDX6PUWAYDA56KZRJW55CABQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Delay between TX and RX channels
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3WEWSLRKKDX6PUWAYDA56KZRJW55CABQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTgvMDkvMjAyMyAxMDowOSwgaDU3amFmYXJpQGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gVGhh
bmsgeW91LCBNYXJjdXMsDQo+DQo+IFllcywgSSBhbSB0cnlpbmcgd2l0aCBjb3JyZWxhdGlvbiBw
ZWFrLg0KPg0KPiBZZXMsIGZvciByYWRhciBhcHBsaWNhdGlvbiB0aGUgVFggYW5kIFJYIElRIHNh
bXBsZXMgd2l0aCBzYW1lIHNpemUgDQo+IHNhdmVkIHRvIHR3byBmaWxlcy4gSSBuZWVkIHRvIGNh
bGN1bGF0ZSBhbmQgcmVtb3ZlIHRoYXQgZGVsYXkuDQo+DQo+IERvZXMgdGhpcyBncm91cCBkZWxh
eSBpcyBmaXhlZCBvciBjaGFuZ2luZyBkdXJpbmcgdGhlIFRYL1JYPw0KPg0KRm9yIGFueSBnaXZl
biBjb25maWd1cmF0aW9uIG9mIHNhbXBsZS1yYXRlIGFuZCBmcmVxdWVuY3kgdHVuaW5nLCB0aGUg
DQpncm91cCBkZWxheSBpcyBmaXhlZCwgYW5kIGNhbiBzaW1wbHkgYmUgbWVhc3VyZWQgZnJvbQ0K
IMKgIHRpbWUgdG8gdGltZSBhbmQgZmFjdG9yZWQgaW4gdG8geW91ciBzaWduYWwgcHJvY2Vzc2lu
Zy4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
