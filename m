Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CEA50A945
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 21:34:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3ABDF384C34
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 15:34:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650569660; bh=YCgaHl8jhyJpn9OIg6b0exzJyGDbWmAKPZVxnN4A4+E=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Uk4XWn0/ltEHhnj3xpwV79ZErRiQa8BSWCAGzG2M17DEB55iDuSZibSU5Cn1I8SFX
	 qFAXEQDgop1vQRLQYyV5lnJhQXJsKzAFajY1nPbug3oz5C4ea9V3siDsWBuhlX1tcD
	 hBcaIWX2De4CAUhaKvyubwD0p7js5DCMfqe8DnzjBkvKTUq7EGofLzufQ7zyRdLHU1
	 JNOHknA9Zf7iR7J2NGsIaKIm+SgPH1JW/EdpNlpR0TTsbmkF508aob3Y0+aXLK9Jzt
	 Hs0c6RAYnbSfffiH2els5ARvYrjzzuNlXwUZaL2DjWaFjFcd+6+A/kOwmUswY4Yjgn
	 z2ryC2O6Ams9A==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 1ECA8383DB1
	for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 15:33:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="b6GyX718";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id x24so4025946qtq.11
        for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 12:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BhNWXEqGVW8C2HvXsLy2YPp4D2GjtGoddOR++bZhdH0=;
        b=b6GyX7188cJxS3105+oxDkg+NHoFzT0oD5550gwOYONKV6Q4BFb55SUCc/CLFjLG88
         oweULcftdxWF+R8eMygnvnFaZc8XMs/j998imEb23eVX9sZ08IHkE3q0ldo5rUqDVStJ
         LzKo4v/L0b5q2LHC89LuPztxdE2sepSUt/tbhAFiclUeK+3QhSj/WkGz5UyCN7dJz1v6
         /2CKgNgPXqkvUeHSApYM/0R4Pa33m7eqkGbl1cJD5vIP6wlS+P4H3qwqsBRW1H4VrHWC
         Y+2D0VIXKdq26xQjEAOKKZUEVkq55pV6CFW1dNndPTP0f/WqNUIpKcmFytJR98hrxgGD
         g+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BhNWXEqGVW8C2HvXsLy2YPp4D2GjtGoddOR++bZhdH0=;
        b=2YLXwMl0qIMp7xb7Wp0ZZwqf7J/eu/WZfYXVrsKj5/pDEE9nW5Rnj5DoF3B4CRbXew
         T9371o+W6ximKNdE08iptXWzc0wfjJxkJmG5gcVnBVacbqyBzPg1pGBeEp0V3n6wP3jF
         uf8frOfpEDqHU9SjgFmMdQMVWWpTN2TiNsI6ngyRNtyUHgWbsAIuWliJBCX7YXUZqh/u
         sfkoX/FmfAsnAHKrmIey6ZAX1fkJo/oVHaGYN16ZIxwTnXbg5j4fPx6OTMXzVqaHTFYq
         lacaGPEc9yfqv2klYm3jLCwFbiyL4Bb1pFm0b6MRiPHcPibXTczBZIE9v6+zramIhN8j
         RWWQ==
X-Gm-Message-State: AOAM530Ulo944icgcksPiZeKOa7jbtaXZtMnY2KRqK6mhXeDIk0j1AK6
	WX2KhGh8z1YbA5K17hI6w2E=
X-Google-Smtp-Source: ABdhPJzsWQ5C2qY/W5qFnlR+uhEvrTlE45OowHX5c8IxYBxHXrbJnTFXBiLjQozT441rM/kTYxpDPg==
X-Received: by 2002:a05:622a:1884:b0:2f2:133e:6434 with SMTP id v4-20020a05622a188400b002f2133e6434mr784834qtc.666.1650569599532;
        Thu, 21 Apr 2022 12:33:19 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id d17-20020ac85d91000000b002f3359b32c2sm4251898qtx.78.2022.04.21.12.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 12:33:18 -0700 (PDT)
Message-ID: <f78c8157-12bd-c8dd-7abe-22b7c75ebf05@gmail.com>
Date: Thu, 21 Apr 2022 15:33:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Nikos Balkanas <nbalkanas@gmail.com>
References: <CAAxXO2HLcWstb43sCwUPQ=GjCd2VZTq3XEnJNemF4dZosxqk0Q@mail.gmail.com>
 <21b31060-a1eb-fba3-09f8-2adb30a21df1@gmail.com>
 <CAAxXO2GyFBEOVM3tiOdDaPkr8=97F9-XmhrVn9PYyzsZZCa+FA@mail.gmail.com>
 <c53f0375-befa-92d0-cb40-4e5a42af914a@gmail.com>
 <CAAxXO2FnhEtyPbrZ1dvVOBxLXPTEynNXYvLm3pNWEbdqkbcEWQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2FnhEtyPbrZ1dvVOBxLXPTEynNXYvLm3pNWEbdqkbcEWQ@mail.gmail.com>
Message-ID-Hash: JHC4RHEBMM2YYXSL3XHHGRFGCNI2EVTW
X-Message-ID-Hash: JHC4RHEBMM2YYXSL3XHHGRFGCNI2EVTW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD compilation in Ubuntu 20.04 (focal)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JHC4RHEBMM2YYXSL3XHHGRFGCNI2EVTW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNC0yMSAxMTozOSwgTmlrb3MgQmFsa2FuYXMgd3JvdGU6DQo+IEFhYWggT0suIEkg
YXNrZWQgYmVmb3JlIHdoZXRoZXIgdGhlcmUgd2FzIGEgcmVhZHkgVUhEIHZlcnNpb24gZm9yDQo+
IDIwLjA0LCBidXQgbm9vbmUgYW5zd2VyZWQuDQo+IEFmdGVyIEkgdHJpZWQgMjAgb2YgdGhlbSwg
SSBhc3N1bWVkIHRoZXJlIHdhcyBub25lOigNCj4gSSBjaG9zZSAzLjkuNSBhcyB0aGUgb2xkZXN0
IHN0YWJsZSwgVUhEIHJlbGVhc2UuDQo+IElzIFVIRCAzLjE1LjAuMCBzdGFibGU/IGNtYWtlIHNh
eXMgaXQgaXMgdW5zdGFibGUsIGRldmVsb3BtZW50OigNCj4NCj4gTmlrb3MNCj4NCkkgbGl0ZXJh
bGx5IGFuc3dlcmVkIHRoaXMgcXVlc3Rpb24gb24gdGhlIGxpc3QgYSBmZXcgZGF5cyBhZ28sIHdo
aWNoIGlzIA0Kd2h5IEknbSBzdXJwcmlzZWQgdGhhdCBpdCBoYWQgY29tZSB1cCBhIDJuZCB0aW1l
Lg0KDQpJIHVzZSB0aGUgcGFja2FnZWQtYnktVWJ1bnR1IDMuMTUgdmVyc2lvbiBhbmQgaGF2ZSBo
YWQgbm8gcHJvYmxlbXMsIGJ1dCANCm15IHVzZSBjYXNlIGlzIG5vdCB0aGUgc2FtZSBhcyB5b3Vy
IHVzZSBjYXNlLCB3aGljaA0KIMKgIGlzIG5vdCB0aGUgc2FtZSB1c2UtY2FzZSBhcyBGcmVkJ3Ms
IHdoaWNoIGlzIG5vdCB0aGUgc2FtZSB1c2UtY2FzZSBhcyANCkplbm5pZmVyJ3MsIHdoaWNoIGlz
IG5vdCB0aGUgc2FtZSB1c2UtY2FzZSBhcyBKb2hubnkncy4NCg0KWU1NViwgZXRjLCBldGMuDQoN
ClVIRCAzLjE1IHdhcyBhbiBvZmZpY2lhbCByZWxlYXNlLsKgwqAgVUhEIGhhcyBtaWdyYXRlZCBp
bnRvIDQueCB2ZXJzaW9ucyANCmF0IHRoaXMgcG9pbnQsIGFuZCBJIGJlbGlldmUgdGhhdCBVYnVu
dHUgMjIuMDQgd2lsbCBpbmNsdWRlDQogwqAgYSBVSEQgNC54IHZlcnNpb24sIGFsdGhvdWdoIEkn
bSBub3Qgc3VyZSB3aGljaCBvbmUuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20K
