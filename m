Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D20A65AC4EF
	for <lists+usrp-users@lfdr.de>; Sun,  4 Sep 2022 17:21:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 564993845FA
	for <lists+usrp-users@lfdr.de>; Sun,  4 Sep 2022 11:21:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662304906; bh=4UUpXpkrl1gtQVhDsE02Dt6f4Fhh5RJKRNwkNEKu7J0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=znGmpvsrvG3X1ZkDV8RoVeMtZRFMZU9fOfYFzleKcIbEmpBzHQhwhzwhRdhI4IouY
	 hkXW0heZuvfyAhRAtZouPV7Ig97Y2hTp8DqXA63NCus84GcXhiVRcTIuC235K/PQJN
	 4ErZ6W9/FVMsNhLv2UPyAfhKlOaeR+hJBNs6CgXDMqRvVzqFOTb1mSPrwS8I5v6BgU
	 5P0HnmhGMNQ8N+cT7t6wZRi2v8+sO9IzpHkTz8TDUziyPGP3keHF1YBr+tovYnMp6y
	 +REJU4WzxZMKAFzg7lPge/9jAu4rnjrLUzDrB7HJZdBJcE5EIoSPtJn7Pv2gQglHrJ
	 RJyocPEyypMRg==
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 193DD3845F5
	for <usrp-users@lists.ettus.com>; Sun,  4 Sep 2022 11:19:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Lfxd6PlP";
	dkim-atps=neutral
Received: by mail-il1-f181.google.com with SMTP id r7so3591969ile.11
        for <usrp-users@lists.ettus.com>; Sun, 04 Sep 2022 08:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=oauSWpsaKZaexS6SrA6Y1Ak59sXnnQP537Awxex6USc=;
        b=Lfxd6PlP3z7yCFdaEyI1q5KYwNZNvOI976IRJykT4CHXQYfW7oH30x/WY4IUmCfyYn
         RMMNwmZw2Hne9tWt1JPnwBtoWOiBb6SodfUhOgHfPIuDUkci0IP8+rlAMsmNB018IF1B
         4/59b86yo12exD7ACvezj86AniblpYCRcWC8Eroz0/7OKaWaNKpptdc6AQJWwy7qb5cA
         u+9pJR+Db/M0toel+sQQ5C0ZO7HeC9lx8f/33/RKgPIUe0KgwtMHDnE8z3oK36A9KEyW
         xRQWKIZ8NPyKuiH40dODfX3JFIQB9w09lXH3LOULAHgW5jlFv5mdbiTA7iUqSRyNlSPE
         4+Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=oauSWpsaKZaexS6SrA6Y1Ak59sXnnQP537Awxex6USc=;
        b=zn+CcVDc2ChmwCEDphxSC4F+kN5lkKYl4rZGiL4JZ2bKflE7sEfbyxE3kA8rJpY41y
         ZpNtD+D4YFVof1PlS1rXVoF/anX+XWxPQ7yN+TAZjEPo3FO7wL8zn3XOaEaAwQzOWMDE
         kSI6HCufTO/BuI+ANoXiAPCxt2BaHakLFRYV9J40HbW29HuqCl6MF01To2anvobvIdje
         FSo99h2LiJZWEi9rHgNOielLsFqcZ9oXT1ZVYLEgpAp+9R+BCDOkNFqSybMonz5DFBNv
         WHyK0c4Jq+wIcxAzsd914pmnGoObb0VehGuZSU7n06geJ9qJVs3JvsLyM+xopB5te4Oe
         g0NQ==
X-Gm-Message-State: ACgBeo1veqIc+9w4GIDw7ev+bmqG37lR8QEtYeFz2shwQH6YsiqJFL9F
	7qHfbpXve0VUtrmVthO7T1Ste7vQzrc=
X-Google-Smtp-Source: AA6agR7esVw3lUfWww1+hzt5dDjHQJArM+cSNmY2C61QguY3lQ9CJpovE6mBCWHt0oa0IE9kRZGtfQ==
X-Received: by 2002:a05:6e02:20ef:b0:2e4:2335:5dcc with SMTP id q15-20020a056e0220ef00b002e423355dccmr24315482ilv.195.1662304787109;
        Sun, 04 Sep 2022 08:19:47 -0700 (PDT)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id c17-20020a023311000000b00349dccb3855sm3112914jae.72.2022.09.04.08.19.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Sep 2022 08:19:46 -0700 (PDT)
Message-ID: <861c7e82-1aff-b3e7-4b5a-11e135fd13a0@gmail.com>
Date: Sun, 4 Sep 2022 11:19:44 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR14MB41922A7E923337CFAF62D8DCCD7C9@MN2PR14MB4192.namprd14.prod.outlook.com>
 <afb82e6a-2b2d-3657-097e-25dca75438c8@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <afb82e6a-2b2d-3657-097e-25dca75438c8@ettus.com>
Message-ID-Hash: DXOHX7BBJMMOPD3MQ7T46DTY42TW6URK
X-Message-ID-Hash: DXOHX7BBJMMOPD3MQ7T46DTY42TW6URK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 operation temperature
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DXOHX7BBJMMOPD3MQ7T46DTY42TW6URK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOS0wNCAwNTowNiwgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+IERlYXIgWGluZ2pp
YW4sDQo+DQo+DQo+IHRoZSBFdHR1cyBVU1JQIFgzMTAgaXMgbm90IGNsaW1hdGUgY2hhbWJlci1y
YXRlZCBhcyBmYXIgYXMgSSBrbm93Lg0KPg0KPiBUaGUgTkktVVNSUCAyOTQwLCBob3dldmVyLCBp
cywgYW5kIHlvdSdsbCBub3RpY2UgdGhlIGhhcmR3YXJlIGlzIA0KPiBpZGVudGljYWwsIGJ1dCBj
b21lcyB3aXRoIG1vcmUgZ3VhcmFudGVlcyAoYW5kIGEgbWF0Y2hpbmcgcHJpY2UgdGFnKTsgDQo+
IGh0dHBzOi8vd3d3Lm5pLmNvbS9kb2NzL2RlLURFL2J1bmRsZS91c3JwLTI5NDAtc2VyaS9wYWdl
L3NlcmkuaHRtbCANCj4gbWlnaHQgYmUgb2YgaW50ZXJlc3QuDQo+DQo+DQo+IEJlc3QgcmVnYXJk
cywNCj4gTWFyY3VzDQpJbiB0aGUgdHJhZGl0aW9uIG9mICJhbmVjZG90ZXMgIT0gZGF0YSIsIEkn
bSBvcGVyYXRpbmcgYW4gWDMxMCBhdCB0aGUgDQptb21lbnQgaW4gdGhlIG5vdC1lbnZpcm9ubWVu
dGFsbHktY29udHJvbGxlZA0KIMKgIGVsZXZhdGlvbiBjYWJpbiBvZiBhIHJhZGlvIHRlbGVzY29w
ZS7CoCBJdCdzIGluc2lkZSBhbiBpbnN1bGF0ZWQgDQoicm9hZGllIGNhc2UiLCBhbmQgb25jZSB3
aW50ZXIgYXJyaXZlcywgd2UnbGwgcHV0IHRoZQ0KIMKgIGZyb250L2JhY2sgY292ZXJzIG9uIHRo
ZSByb2FkaWUgY2FzZSB0byBrZWVwIGl0IHdhcm0uwqDCoCBJIGhhdmUgbm90IA0KaGFkIGEgcHJv
YmxlbSBzbyBmYXIuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20K
