Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 212B9A65F70
	for <lists+usrp-users@lfdr.de>; Mon, 17 Mar 2025 21:45:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5B49C385F41
	for <lists+usrp-users@lfdr.de>; Mon, 17 Mar 2025 16:45:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742244324; bh=PwPW8wV4qrPszRA+JEXVs6+/cy7jqd1rtf0hkMZYYDg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=q97UFu+4d2t6zDsavwx4DdWaooLoiSISQ2H5WjJO0nCA1wnVZWUT04NHF9quGrSGt
	 WVDkY4CCQIhegCD9kY838r6tuloCx0UEGtvn9I8VEw6mDav5CVOxBnjzpIzKoSIiyf
	 Prxpc6jn6vkk3/jGKFshFf2RIHiGb9osUB0f5g4RWCdCobL0L7QCB5aKFMJCy+w1VE
	 51crFwaN79QA4dk78DgQhvqKfa0wCGh9MU34plj/HLnBPm/gMG1GPHiYUw+W1mrU9P
	 pNwH9chfT0ehz+KjHCI+w1WXoUfNLWhEPG0fxnD08Usaf+0rN5E5f+Gx59YlZS3odg
	 hGlZa/9cMrf0g==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 94987385E23
	for <usrp-users@lists.ettus.com>; Mon, 17 Mar 2025 16:44:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Qi668wno";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-476a1acf61eso37106891cf.1
        for <usrp-users@lists.ettus.com>; Mon, 17 Mar 2025 13:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742244281; x=1742849081; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6mrRtjcap2fLsMnjRnljLIXvwn2gZ5mOd5xMQRYXbqw=;
        b=Qi668wnoHHg8f9srX7HI8cPGbmlZ9EPlQq8u0uAvFHb1bwAdqaMMu1v05CL9sj9dTY
         icmXMXq4HYZo+VXyS0CbkcBPovDe0KlKVDkseaHODpJ1pYsfJHszgb8JYmSSzsp7jeCS
         58dy3oTFvYwdd6LO16DJXx5V7cxFvUCbvHCPH10D0CWC4AdQC9nt9vEHv7Mx8v4+621o
         h9W0o/T+wtvULMUlUTLS+q1otgf5eaw9wLRJgXeuc6f3U34OpWw12Gsep/Z1RzanfSh1
         WLJymsussJWRJ/XAipySeqMDlctk5xzUZQBa7K9yPmiHA9qGa/QT30TS086Ua/vaBVDl
         ttAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742244281; x=1742849081;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6mrRtjcap2fLsMnjRnljLIXvwn2gZ5mOd5xMQRYXbqw=;
        b=r1s9OJZ6NImPTG7VW86W4NEtcchu6GafGyFI75sjYS3FRrc5Kpn2MXAzLuO6j+uzS7
         q+HktRWDxWpVWbUh8Q6LL/iXLMBaMsJOVpJmNvM9uPujDYlKnWHBP/MBRXPkYmMMGXJc
         ytfoW7q07J/ld8nwFyfdRIoTCTYaxY7QB/rV1ppXRE3+xNVyabxoP3v79i0qavXy9fMX
         cjPPlR742gCcNU/UTf5Nvj0KYc1ezmiGh6esTSYro4qVHr24Kf6ze6nUG/WeGKnUB4BW
         mqeyXJIAcOOVswmeGazTwR9Hvy6C7ObKiEKy4g0oRRm6FcI3fbfi5wIm8aFGGXtnOfPw
         y7uA==
X-Gm-Message-State: AOJu0YyMMJC/SXsC0HnoPYwi4x6F15rNJLUBbOqZd2IFs1cJftXMuKsz
	OhY1IPVgAA8Ln62Tum9PUB58xmLZsU4AQ58VaOEw9J7v3sgTitnSbknfsKkC
X-Gm-Gg: ASbGncvcf3TYUPTXGXgWv22VAtz7M+1kVP7f9cGS6hlyQ5EPK6YjjT7JwwVk4if/EET
	21FPYHoQYwhWAlTAv0b+ApBM7vF9NOlXfZtCV8SrMAOMN+dvgJLCOg+3MnQuCY6bFr34tW7Si/I
	7AU5akzma0qztud0fbHvN8ATwcOrUQbxJMFAl4fNwlXacFc2r2OyvZhgbneafDYL/tx83RlRId2
	BXddwomV9paTI8bfmZlJa/dY404jJAz/5L0p1RcQP36oPdCeCfCSRvwOqIwi95XwaNTNeKrC+jD
	ALL5yzRFUNe2U4mSK7DaMK+yoy2hLLuk8gGpUvP6M+9ERZ6P1xBiThI=
X-Google-Smtp-Source: AGHT+IGxkuJridyBHSy9qCi+oYx7iSYJD0hTTsAkkJZBIP958AspjWQU14nyNh762cDyfahKxNU0tQ==
X-Received: by 2002:a05:622a:4d08:b0:476:7e6b:d28c with SMTP id d75a77b69052e-476fca1158cmr18077741cf.32.1742244281587;
        Mon, 17 Mar 2025 13:44:41 -0700 (PDT)
Received: from [192.168.2.170] ([142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-476bb661364sm57153651cf.36.2025.03.17.13.44.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Mar 2025 13:44:41 -0700 (PDT)
Message-ID: <11142f61-7d6c-4466-8ed7-adbbe3fef187@gmail.com>
Date: Mon, 17 Mar 2025 16:44:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CAEXYVK4u-jMUbq2zw-ckyFREnyFeZMXjyLP4GiG709HGMcYPbw@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEXYVK4u-jMUbq2zw-ckyFREnyFeZMXjyLP4GiG709HGMcYPbw@mail.gmail.com>
Message-ID-Hash: 3DSLCUEV6XUXIRTQAX52L2JRMIQTBXOC
X-Message-ID-Hash: 3DSLCUEV6XUXIRTQAX52L2JRMIQTBXOC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: New X440 with fsck issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3DSLCUEV6XUXIRTQAX52L2JRMIQTBXOC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTcvMDMvMjAyNSAxNjozNywgQnJpYW4gUGFkYWxpbm8gd3JvdGU6DQo+IEkgcmVjZWl2ZWQg
YW4gWDQ0MCBhbmQgaXQgZGlkbid0IHJlc3BvbmQgdG8gYmVpbmcgc3NoJ2QgaW50bywgc28gSSAN
Cj4gbG9va2VkIGF0IHRoZSBjb25zb2xlLiBJdCB0ZWxscyBtZSB0aGF0IC9kZXYvbW1jYmxrMHAy
IGZhaWxzIGZzY2suDQo+DQo+IFNob3VsZCBJIHRyeSBsb2FkaW5nIGFuIEZTIG9udG8gL2Rldi9t
bWNibGswcDM/IFdoYXQgc2hvdWxkIEkgZm9sbG93IA0KPiB0byB0cnkgYW5kIHJlY292ZXIgdGhp
cyBicmFuZCBuZXcgcmFkaW8/DQo+DQo+IFRoYW5rcywNCj4gQnJpYW4NCj4NCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KVGhpcyBt
aWdodCBiZSBoZWxwZnVsOg0KDQpodHRwczovL2tiLmV0dHVzLmNvbS9VU1JQX1g0MTAvWDQ0MF9H
ZXR0aW5nX1N0YXJ0ZWRfR3VpZGUjVVNCX0FjY2Vzc190b19lTU1DDQoNCkkgZG9uJ3QgaGF2ZSBh
biBYNDQwIGluIG15IGNvbGxlY3Rpb24sIHNvIHByb2JhYmx5IGZvbGxvd2luZyB0aGUgDQppbnN0
cnVjdGlvbnMgb24gZmxhc2hpbmcgYSBuZXcgRlMgb250byB0aGUgY29ycmVjdCBwYXJ0aXRpb24N
CiDCoCBpcyB0aGUgcmlnaHQgb25lLsKgIEkgaGF2ZSBubyBpZGVhIHdoeSBpdCB3b3VsZCBhcnJp
dmUgZnJvbSB0aGUgDQpmYWN0b3J5IHdpdGggYSBicm9rZW4gRlMsIHRob3VnaC4NCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
