Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E136CCCC2
	for <lists+usrp-users@lfdr.de>; Wed, 29 Mar 2023 00:02:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6677238456C
	for <lists+usrp-users@lfdr.de>; Tue, 28 Mar 2023 18:02:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680040975; bh=wX879FYoBXEixJmO4xLB2g1PUdi8mZ2zwVcxXSBhs8I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oVgVo5y19EoQOl2Foc/XNKpYfHhXICrazRrK8BqDJ4C5I3AbvLx3hbvvVSi3oKuhL
	 TP/iFvZXuJA2Qq7UpJqoyI6bK2aUaZFvHyVsKdkBj8h7h0ZelWaXiRof5Cujudgm0M
	 qNED9aHqxQw3/6reWnj8w1S2D6eDyRsMQwY0ozNFo6HKeE0/Uqy+uyyfeG9uYBB+j1
	 WzJtUZJbZgdSmOApDQKtJ85wdsvFNmFZQFOf92rchdYrRUdFG+TV67vv12G83mijkG
	 /JLYBbD8fjuK6WMOKOGWqoqrxzLvMWr1vmwHS+8S22FrdelKf4evP17CjZB/o1rwwj
	 r6ZXrWDiu6kew==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id BD72D3841D1
	for <usrp-users@lists.ettus.com>; Tue, 28 Mar 2023 18:02:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dWKGzVHf";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id h16so6611989qtn.7
        for <usrp-users@lists.ettus.com>; Tue, 28 Mar 2023 15:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680040968;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HJyt1IQioUYf1SltSHoJyKZM8PVMWt9t8Pyb3cNEqr0=;
        b=dWKGzVHfzWirA2ThK992AI0GnowejjBfP2IYdeG7gFa8AiCQ24Hlp2/ZV/sc+/13i8
         r1DUrDyHxYmjBmprOaRS/J0MvM+jDQTDs5XxeXBoPtmtKUyn7dxEwDecUKHVeVlDMuzT
         XqFbUy0VHag6x4UdzoV42siHvJAod3m5i2mc0DPco0XzQ30nxukpEexYQoWq0sBO8d5p
         m43rtBidDmQGeDNlVvG5HOY5zhnJJkrroaPjtWzX+M16Ux/OpBlSljxEQRB+7USX1IvI
         VdQ127kHDfOpaIMPTtkLv91FkjpOnosXbkw9xQW+TxAeSoTkfZvK//oyJrmMJIw7O41n
         oL9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680040968;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HJyt1IQioUYf1SltSHoJyKZM8PVMWt9t8Pyb3cNEqr0=;
        b=1J0qbou3EDFyoYv2Xnzj4n5RbVEk2bF0ynzAASPrErMWlAsynzGbXtCPH36GWGndPV
         FDaHGDeg4sy9jj2WY9nmoKMj43IGGi7Te9G25cbuvJ26G4eXkRAubiJCwUhdLpERP6fY
         d5MtKLpQZoKo9xA6Fs5hK6ItK7/VEiKbNHLty+3K7L4JxROsadx6PfEfU8OcwydJfvtF
         NJEE6cAYyJXEuyoW8zDfLeJIjvpCfwHktZEB+EYoMvx57VvoeUxmUuocLXV0TsBPp3ZK
         Kjxk+pMWvZivJ9pIo75wo2qLcMu2RsYf3NNibcgOqxVGV4F9dX1LXaFiXV5EG7V0tvgp
         49rg==
X-Gm-Message-State: AO0yUKWX7hSZ5R3r/9vqCOI2JJq9olXJk68Pubeyg7v3pdhm0D7sR+m4
	+3p/007XuxxXjG9s0bgfD/V2anVTaA0=
X-Google-Smtp-Source: AK7set+Nae+lTud+gumSxQFjbbXGJWRSRnI1NEis/FjHCfQUaXyKAGwujZee3JU0Oe3uUFvqlA1hsQ==
X-Received: by 2002:ac8:5c84:0:b0:3e3:8be5:c3d4 with SMTP id r4-20020ac85c84000000b003e38be5c3d4mr30424100qta.37.1680040967896;
        Tue, 28 Mar 2023 15:02:47 -0700 (PDT)
Received: from [192.168.2.156] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id m15-20020ac8688f000000b003e4e9aba4b3sm1710997qtq.73.2023.03.28.15.02.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 15:02:47 -0700 (PDT)
Message-ID: <bb6f0b97-382d-e31c-7f22-69bbd0c79436@gmail.com>
Date: Tue, 28 Mar 2023 18:02:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <9OjrJaikLbN99A2A6Do9Efv3dQ75BC4sjKv0ncAGY@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <9OjrJaikLbN99A2A6Do9Efv3dQ75BC4sjKv0ncAGY@lists.ettus.com>
Message-ID-Hash: ROYJH5AA7CQUEFE2QZNC5TDNXG6PSJQH
X-Message-ID-Hash: ROYJH5AA7CQUEFE2QZNC5TDNXG6PSJQH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini i very high lo-leakage, image rejection and aggressive DC correction.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ROYJH5AA7CQUEFE2QZNC5TDNXG6PSJQH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMDMvMjAyMyAwNjozMywgc29yaW5nQGF5ZWNrYS5jb20gd3JvdGU6DQo+DQo+IEkgYW0g
Z2VuZXJhdGluZyBtb2R1bGF0ZWQgc2lnbmFsLiBJIGFtIHZhcnlpbmcgdGhlIGRpZ2l0YWwgc2ln
bmFsIA0KPiBhbXBsaXR1ZGUuIEluIG9yZGVyIHRvIG9ic2VydmUgdGhlIGltYWdlIEkgdXNlIHRo
ZSBsby1vZmZzZXQuIEkgZ2V0IGEgDQo+IGxvdyBpbWFnZSByZWplY3Rpb24uIEFuYWxvZyBkZXZp
Y2VzIHBlb3BsZSB0b2xkIG1lIHRoYXQgdGhpcyBzaG93cyB0aGUgDQo+IGNoaXAgaXMgbm90IGNh
bGlicmF0ZWQgcHJvcGVybHkuDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCkkgdGhpbmsgd2UncmUgZ29pbmcgdG8gbmVl
ZCBtb3JlIGRldGFpbHMgb2YgeW91ciBzZXR1cCwgaW5jbHVkaW5nIA0KZXhhY3RseSBob3cgeW91
J3JlIGdlbmVyYXRpbmcgeW91ciBiYXNlYmFuZCBzaWduYWxzLg0KDQpBREkgY2xhaW1zIGJldHRl
ciB0aGFuIGFib3V0IC01MGRCYyBmb3IgaW1hZ2VzLCBhbmQgSSBkaWQgc29tZSBjcnVkZSANCnRl
c3RzLCBhcyBkaWQgYW5vdGhlciB1c2VyIHdpdGggYSBsYWINCiDCoCBzcGVjLWFuLCBhbmQgdGhl
IGRldmljZSBpcyBhY3RpbmcgbW9yZS1vci1sZXNzIGFjY29yZGluZyB0byBzcGVjLg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
