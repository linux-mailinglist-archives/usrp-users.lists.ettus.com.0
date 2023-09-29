Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B72357B3CCA
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 00:55:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C5196385609
	for <lists+usrp-users@lfdr.de>; Fri, 29 Sep 2023 18:55:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696028136; bh=lQS4KaOyjKIE8K4YB9wzFeruy8FV372cVcttTLsV/ec=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gtthf2D22OMmyu1/WlFM34QDowLJf+Gs9Dsf+Jirb2zW6gM6HTcfQlV1bK9+pb9/u
	 yIh2R024X6L0tT+HKG1w/qs2bixYGgybnO8XDMWhmmWvW3sH8QZyRxtIrbJrGyaAhD
	 s+aH59IluSDm8Poo4vo4ZFExvHp40DzcAB8LeC5TfuFjJrNaGL6PVlspD/SVfUH0qy
	 ivB8Dmhz2BxsmKJfFDeim8t7VBPZ1wwf0WJuHmJwqMtlYds07+GMg8Xgh0/B/Bc3QT
	 6/ZFL9NysQYiF9GJ2BG4sgSXIIzG0WpzSaQbdCY+4hSCtgxRM2uJe63280jfjB6HdE
	 7P0Su4c7eWcYg==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 8B539385609
	for <usrp-users@lists.ettus.com>; Fri, 29 Sep 2023 18:55:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="f/0Gm1Ko";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-4196ae80fc3so16880241cf.0
        for <usrp-users@lists.ettus.com>; Fri, 29 Sep 2023 15:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696028133; x=1696632933; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3FJkrtDhIO10EukKc2polDOAj3Z/lIP3cSR04OLd59k=;
        b=f/0Gm1KoafwPtBJPH/TO4K3YRFTtVWH/OrPOcAjEz+8KbC6cxYVXYVY3TzA4iUpvi4
         P+3UJdaTTxMPFr56SlLIg9y+KEysD70DglFtpY3ZkdIRIXqKnN1AvUXmpccMDwnO+9v/
         tNZJe6lQfN9l+WxF4DdY8SLLL82uzNl6YV4uie/mi2cxqkdPhksah4U5xjxVyrRzxMOK
         S1YeWbhSSX+f3NoZmCFzJiFBsqtlForM/YUlAObPI/ZefY3QZsElkbroZJXgoAZhvmye
         rSl+exjM+UsHtIMz3J9958lmcL9OjMAojO4rJeizvx8zQ9ZvfB4kvZQT7vwNX9237M2j
         Q2mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696028133; x=1696632933;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3FJkrtDhIO10EukKc2polDOAj3Z/lIP3cSR04OLd59k=;
        b=o2y2gTFMLfue7t9LboDGCkX7SCzeqLjEYJWPEPYHmLuM/AlEDrLIm6V8oYTzInbowr
         H/nnsh5RsRyTewj5EfnGHfMETU35J14dWOc984ug/R6zb9Mk8enIcuXgrg37aVMySeDh
         C8zOZY3eSRop6tQs2mL2OXuWZAUbcAuYXyr+2SN5YC6J6WEbb90gA7GXgKSAOGLde5iX
         be/auDM4YBulG6aun2hIL+NXFYseBHHggxnN0sItJTuURPu75UQkNKC9LnG4LrTFSjsx
         ngq1zqq8JZ5EvDMFevwpsJ/OjGtKI72PHdhSsFuUUuSFBMkZ+artyep/EhBhpGhdcqU4
         uBEw==
X-Gm-Message-State: AOJu0YzCjj9keFCHPOLLs+BiX6pCDCsuZpvRla25W7kTFkp4Uct7Esiy
	HkbZikaEWcG2l9kEfjgbQVzEHKiuu1s=
X-Google-Smtp-Source: AGHT+IHHoBtosDfru91Iw3sgNympf2AMvLSVxm3C5DD4+KUW8vdrib+OCabe3T0erzijAJMv8pkwrQ==
X-Received: by 2002:ac8:584a:0:b0:419:5357:fe5b with SMTP id h10-20020ac8584a000000b004195357fe5bmr6660318qth.62.1696028132750;
        Fri, 29 Sep 2023 15:55:32 -0700 (PDT)
Received: from [192.168.2.156] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id r15-20020ac87eef000000b004181a3eeff4sm4007542qtc.5.2023.09.29.15.55.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 15:55:32 -0700 (PDT)
Message-ID: <07dd4a91-684f-27d2-1dc6-4985904a4ad6@gmail.com>
Date: Fri, 29 Sep 2023 18:55:23 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <cpwAx5ymNAEAVPW8YLqUkZsxKDhv4jbQj8PlHRPYw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <cpwAx5ymNAEAVPW8YLqUkZsxKDhv4jbQj8PlHRPYw@lists.ettus.com>
Message-ID-Hash: IVQ7ZO25ERNT4B6HFH3RYLWOUF7DUZ3A
X-Message-ID-Hash: IVQ7ZO25ERNT4B6HFH3RYLWOUF7DUZ3A
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK with X310 and Intel X520-DA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IVQ7ZO25ERNT4B6HFH3RYLWOUF7DUZ3A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjkvMDkvMjAyMyAxNjo1OCwgc2hhbmVmbGFuZGVybWV5ZXJAZ21haWwuY29tIHdyb3RlOg0K
Pg0KPiBUaGUgWEcgaW1hZ2UuDQo+DQo+DQpIbW0uwqDCoCBTbyB5b3UgbWF5IGJlIG1pc3Npbmcg
c29tZSAiRFBESyBMb3JlIiB0aGF0IEkgaGF2ZW4ndCANCmludGVybmFsaXplZCAoSSBkb24ndCB1
c2UgRFBESyBteXNlbGYpLsKgIEkgZG9uJ3Qgc2VlIGFueXRoaW5nDQogwqAgaW4gdGhlIFVIRCBh
bmQgRFBESyBkb2N1bWVudGF0aW9uIGluIHRoZSBFdHR1cyBLbm93bGVkZ2UgQmFzZSB0aGF0IA0K
bGVhcHMgb3V0IGF0IG1lLg0KDQpCdXQgeW91IG1heSBoYXZlIHRvIGRpdmUgaW50byBnZW5lcmFs
IERQREsgZG9jdW1lbnRhdGlvbi4NCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
