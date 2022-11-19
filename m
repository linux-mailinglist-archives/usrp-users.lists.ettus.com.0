Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE24D631124
	for <lists+usrp-users@lfdr.de>; Sat, 19 Nov 2022 22:44:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DCFC93842B3
	for <lists+usrp-users@lfdr.de>; Sat, 19 Nov 2022 16:44:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668894265; bh=fBenCP9qqaROrQOo4dzwEhYMUnFpeS/3jhOiDwm97jY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fPG5C19+O/IOS2gVnKT+iQD2waVZO5btevW7AYUKDX4aLt948MEKQFNgPdtUIPWua
	 HLKoTCeZjt9V3oN0WkwVf8h02+x2jEj1xTWD5+lQytgiJ/KLEX328kWmC8v8zU7dza
	 tHUC7VlxHmkQ3+So5m/pL4X7+XKqYnrarcLxh0nH0lux3Hq+BZomoi2E40livwE0Ge
	 xIr9Tj3dy6Kec/O9esa/GUVqQs0F3Qvrko1H2nhNyoxMZnoNEl5hMQgfDAqYg0c5KI
	 RsMHnRTs2vIAHm/n4K/xz3E38Qw7RFcSpNpQo6nzoDqqbq6yEoWltmC0u22GPAZqCZ
	 aERg2UbEqMZSA==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 107BF384299
	for <usrp-users@lists.ettus.com>; Sat, 19 Nov 2022 16:43:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mCKPfiS6";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id d7so5816211qkk.3
        for <usrp-users@lists.ettus.com>; Sat, 19 Nov 2022 13:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XIe/36YYU2Mnf2fdFD0JbqDsOe4B2apmxbM7XrAtg/c=;
        b=mCKPfiS65E+w95zsgTv2SfrjsAiIxh58X4AtEARO3pHqA9dlJT9vnLTV+5eqCIagvr
         jjyX8Oi24PJg7ASSE/hrUTlGKYRnoKNFITLNA13g/gXVJe7tCC38Cqsgd0jzhuJzZ0R9
         G94NuNuucr4s+HcMWRKHzQIbSIwOClQC1YfIeOAtipEFvIYskgdMv/zwfkmx5ISjZctL
         xUo2h9msuJkgTlNiopbatVtUgrjsSZ6kw+jZC1gvUST6zAoya3yg++KXXcgCxD7i2B7X
         jRSTbS+u2SuxS2+99MzHBf0lk0B5VWoAAtfJXcVMrBAinRzT8ocfeJnaZhbeEsJpSdKk
         M9jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XIe/36YYU2Mnf2fdFD0JbqDsOe4B2apmxbM7XrAtg/c=;
        b=YM6V0VSmbu2NLk56QsPgpQjjShiEX0Fi5ycScK3mRNsjvP2sqttTo6iAvCPRegcn7v
         ZyUgbgOodItlOFLNCD+smQq9/wppN6IL2wl6eBc1X4xYyx0fGDdjfpldm9gYRQHbBwNi
         /eV+8GMVpw6wZs7mFhcABiCt9fZURN/hCu+HKWD5J8Xb8vHopH0wAt6nr9uZoBgjAnqw
         9H/d96nO9zKKXeXp8+ckNpA0aB4KlgJI2J3MqGfXql3QgOZvME+SWoZKyxi9R68eZyYY
         WvYfEtZ+J3ZpUQ836o2Qh/0sWS5tB4ip+dLShYT0U8nHD8UoY53z4UMWW1FfnYSFEU6d
         E42Q==
X-Gm-Message-State: ANoB5pl8GyUTVIoQ17YQILztwzsBYlqEyFvrmLmPMFsYk/RV7c3YydJY
	tX9Zarn2p+VU6P2GEOmgWzUDVeAkQGI=
X-Google-Smtp-Source: AA0mqf6myjQ4DtgqAngGWI+ijbWwjEVbJxcnEXIbt2nYMMqe+GlYbBJFUftngc1n2jUU4qKxvRVpJA==
X-Received: by 2002:a37:9186:0:b0:6fa:6c8f:8309 with SMTP id t128-20020a379186000000b006fa6c8f8309mr11267190qkd.226.1668894215161;
        Sat, 19 Nov 2022 13:43:35 -0800 (PST)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id l21-20020a37f915000000b006fa7b5ea2d1sm5236457qkj.125.2022.11.19.13.43.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Nov 2022 13:43:34 -0800 (PST)
Message-ID: <a664a3a7-b59c-c1d7-54f5-608fa3642d03@gmail.com>
Date: Sat, 19 Nov 2022 16:43:33 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SjMnf5fJ0VNhdYQqeNknHsmEan2AgwsZTaOAoAxoo@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SjMnf5fJ0VNhdYQqeNknHsmEan2AgwsZTaOAoAxoo@lists.ettus.com>
Message-ID-Hash: EQ3ZGL2LZORW6KYPNSTXIJN643OJSXQC
X-Message-ID-Hash: EQ3ZGL2LZORW6KYPNSTXIJN643OJSXQC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Jackson Labs LC_XO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EQ3ZGL2LZORW6KYPNSTXIJN643OJSXQC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTkvMTEvMjAyMiAxNTo0MSwgc2lkZHN1YnJhQGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gRG9l
cyBhbnlvbmUgaGF2ZSBhbnkgZXhwZXJpZW5jZSB1c2luZyB0aGUgSmFja3NvbiBMYWJzIExDX1hP
LCBUQ1hPIEdQU0RPPw0KPg0KPg0KPiBBIGNvbGxlYWd1ZSBpcyBvcmRlcmluZyBvbmUgZm9yIGEg
c2VwYXJhdGUgdXNpbmcgY2FzZSBidXQgZnJvbSANCj4gcmV2aWV3aW5nIHRoZSBzcGVjIHNoZWV0
IGFuZCBzY2hlbWF0aWMgaXQgc2VlbXMgbGlrZSBpdCB3b3VsZCBmaXQgDQo+IHJpZ2h0IG9uIHRo
ZSBHUFNETyBzbG90IGZvciBhIEIyMDAvQjIxMD8gSGFzIGFueW9uZSB1c2VkIHRoaXMgR1BTRE8g
b24gDQo+IGEgVVNSUCBiZWZvcmU/IFdvdWxkIGl0IGJlIGNvbXBhdGlibGU/DQo+DQo+DQo+IFRo
YW5rcywNCj4NCj4gU2lkZA0KPg0KPg0KVGhlIExDX1hPIGlzIGluIGZhY3QgdGhlIG1vZHVsZSB0
aGF0IEV0dHVzIHVzZXMgZm9yIHRoZSBCMnh4IHNlcmllcywgYnV0IA0KSSAqdGhpbmsqIHRoYXQg
dGhlIHZlcnNpb24gdGhleSB1c2UNCiDCoCAoYW5kIHNlbGwpIGhhcyBtb2RpZmllZCBmaXJtd2Fy
ZS4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
