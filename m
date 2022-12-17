Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DB764F748
	for <lists+usrp-users@lfdr.de>; Sat, 17 Dec 2022 04:09:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 423E5383B67
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 22:09:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671246577; bh=0aTMan+eg58Xs24b8MAKBBDo29b14S6cUDz5xpbfGss=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0ebYUK39yMy4rTVZ10d1VxVloBktwjTKRH6jm9AmZm3k3LAjtrQ8Y3mItGB0or+wI
	 gVcJUeUIErKgel1U/XgytN1NuIbaDcNfXZM5gH7Pm2BoOC8qzjud3APXodyGdLDuFH
	 0tyRuDt2QYsu6krZTTJ1BBilGGVvLTNQqoiddx4jk+9XPVGwS/UPx6yk9Jw9VaT0AD
	 nGMesgF90Glle1VfHLFV3vEvfjACxD7pbJ4JyU5LJM+cmBh/he84OR2Gup/eXeLIgY
	 brngTW+8zJyv90HzNcFD9pwjmGiUzCHdJDLZvGFGH1hAYOAK4KWVUk+HzezF9Q8lde
	 I8mBBkXpKI6xA==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id D5900384462
	for <usrp-users@lists.ettus.com>; Fri, 16 Dec 2022 22:08:52 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Fj1AWC0/";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id d2so2837133qvp.12
        for <usrp-users@lists.ettus.com>; Fri, 16 Dec 2022 19:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jhCQcZEGqooAp+9nJq6ikiT0/o6AfUVOHhaGFfP0k9k=;
        b=Fj1AWC0/Mcj2L0kbvrS2OWa2xRrVl7rw/MM838cBSI5Yb1Jy8B7/ZARCUtWYy1l1ya
         kOfqeM3A59i6Rqfh9IZP4/dv3bNyeORJy+/ADId5HUAOn8WC4zwbFJUMTFutnBc6oHxm
         MGt8mzxU9ahqgugga2ljYH73TGQBsyABZlGE0RV/h5WsP1ll1/jJuPQgRzGzWjpQtyPr
         raoG93jxF9vPOGmwuZjSpLkYq+/rKwwo9egk0UaN3e8sYwk8nfetgoQ9kF3tFBMuLrwa
         RuRJZFc9AXgDqIf8pO5FH/q2DJ7nN+/8R3PTkT6f7l49ZXEFAUUQf8FHdwr+fRMC6EYH
         7BBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jhCQcZEGqooAp+9nJq6ikiT0/o6AfUVOHhaGFfP0k9k=;
        b=HjDBS9zD0NCiHsdpFspeFt/2I19WItJx+0CykzDMQsfh6neAy5PhfiErz5AeneOA+Z
         RCES47AybHMyOB0yFIjLOisSRsKKJQ0FxjmhAN7RSDuONEEmwpic4/T4j6lFllLuO/IU
         Oxdk6q/QUpov9JvrIArq01ap59MHFX2+luI6duA1FAkdpXmgUC+jAXu4hIwIByaLvztG
         7zqlGNUe1JY7xj85+RPgUNGWCLNKFOTXE0vj2H6MOPqhcM3X1rkE+qIrzZdpYAtJWhiL
         dH4SuZo4f7VL9fsuE31esm5xUNtvKddb8zKWhELrcZeYeSwswStOu8TP3HkhKgrM4gCl
         WlRg==
X-Gm-Message-State: ANoB5pnGuO6NeGpiR50pFlhjipqsRemDD5/ENQmBqYuNB8rC5vzSXIBM
	KZLhtmG3ceaFjfFoOpLBk0jHY+F0GxTscg==
X-Google-Smtp-Source: AA0mqf67TuIDi4/MvVfdwiJ3KvufAR1xc2T7scuARHDDUj9CuuaC/9YUouLSLWbqeB0WWs8K4Pm9rQ==
X-Received: by 2002:a05:6214:1914:b0:4c7:73b7:b849 with SMTP id er20-20020a056214191400b004c773b7b849mr49245606qvb.29.1671246531996;
        Fri, 16 Dec 2022 19:08:51 -0800 (PST)
Received: from [192.168.2.210] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id i17-20020a05620a405100b006fcb77f3bd6sm2895402qko.98.2022.12.16.19.08.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 19:08:51 -0800 (PST)
Message-ID: <8de7ee4a-35ff-3b7f-2393-d015cae07476@gmail.com>
Date: Fri, 16 Dec 2022 22:08:50 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <F387B265-2071-4821-ACAA-BB8A02E5F232@me.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <F387B265-2071-4821-ACAA-BB8A02E5F232@me.com>
Message-ID-Hash: VGXHKMKGVMBKRKM6EX7QDN2KVGOKCPEK
X-Message-ID-Hash: VGXHKMKGVMBKRKM6EX7QDN2KVGOKCPEK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD routable through port forwarding?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VGXHKMKGVMBKRKM6EX7QDN2KVGOKCPEK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTYvMTIvMjAyMiAyMToyOCwgTG91aXMgQnJvd24gdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+
IEkgaGF2ZSBhbiBYMzAwIGFuZCBOMjEwIEnigJlkIGxpa2UgdG8gYWNjZXNzIHRocm91Z2ggbXkg
ZmlyZXdhbGwgdmlhIGEgVUhEIGJhc2VkIGFwcC4gIElzIHRoaXMgcG9zc2libGUsIGFuZCB3aGlj
aCBwb3J0IHNob3VsZCBJIGZvcndhcmQ/DQo+DQo+IFRoYW5rcywNCj4gTG91DQo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCldlIGRv
bid0IHJlY29tbWVuZCB1c2luZyBVU1JQcyB0aHJvdWdoIHJvdXRlcnMgLS0gdGhleSBoYXZlIGEg
ZGUtbWluaW1pcyANCklQIHJvdXRpbmcgc3RhY2sgaW4gdGhlbSwgYW5kIHNob3VsZCBiZSB0aG91
Z2h0DQogwqAgb2YgbW9yZSBhcyBhIGhhcmR3YXJlIGRldmljZSB0aGF0IGhhcHBlbnMgdG8gdXNl
IGV0aGVybmV0IGFzIGEgDQoiZGV2aWNlIGJ1cyIgdGhhbiBhIGZpcnN0LWNsYXNzIElQIGhvc3Qu
DQoNClRoZXJlIGFyZSBhbHNvIGJvdGggcGVyZm9ybWFuY2UgYW5kIHJlbGlhYmlsaXR5IGlzc3Vl
cy0tdGhlIHByb3RvY29scyANCnVzZWQgYXJlIFVEUCBiYXNlZCwgYW5kIHRoZXkgZG9uJ3QgaGF2
ZSBhbnkNCiDCoCByZXRyYW5zbWl0IGNhcGFiaWxpdHksIHNvIGNhbm5vdCBoYW5kbGUgcGFja2V0
LWxvc3MgdGhhdCBpcyANCmluZXZpdGFibGUgb24gbXVsdGktaG9wIHJvdXRlZCBjb25uZWN0aW9u
cy4NCg0KVGhhdCBzYWlkLCB0aGUgVURQIHBvcnRzIGludm9sdmVkIGF0IDQ5MTUyIGFuZCA0OTE1
MyBhcyBJIHJlY2FsbC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQo=
