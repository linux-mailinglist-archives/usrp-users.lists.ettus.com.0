Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F3CA1B02D
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 06:58:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 510683852E6
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 00:58:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737698328; bh=eaDEBcIIdMmlQELCUaNe0dULxkLhTOvRvXsrwk6Lv7I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WvyTuEvwYWJVE5gs7b/oEEGjRtMaFNke2DYa0qhxudgV5FA2tk0p0Wj4CcJf7+wYm
	 aMSYdpFjk76LyG2Ehabs/aKjsQiWxR8iq3c4DrDdGuHgS3p0E8ptnXf90OAFflS3tZ
	 OlxIR+AcJoJRdzVVJ0+usYWtZTAagX+Ok6gXcBHgTGNzmJxChTGRgrN/kXVu8gXqYM
	 BU62onYzie+gYiyFPubRpkvpLDvYVD/LftZ3FwtRIE4iui2mDn5v8pT/gqqh9J0WSJ
	 l4d2qGwxYEE62gyikw160fuVdRDmHAGRSOYU9ZFfdAHK+UO2yCNRwcJOveJFwEmtuu
	 qbiAe1DIfK2JQ==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id D7184384A89
	for <usrp-users@lists.ettus.com>; Fri, 24 Jan 2025 00:58:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HMlk5RSZ";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7b6f0afda3fso93115285a.2
        for <usrp-users@lists.ettus.com>; Thu, 23 Jan 2025 21:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737698303; x=1738303103; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+eSBjiNtUqQ+mUOEaavebFeZZqN2JPqlowYmas4ZhTM=;
        b=HMlk5RSZzQoo6pMWrNdWx9C26TsvP77VxB+e65wINx2MY3J9Y9QJIe7lB48cc4/KMo
         bv+PjyVoKjjjH8VtK3Hpd5uDehy+huQ7/mAOupdZLlrXowJR9aG2x7NH0KLLWzpjtv9K
         Ob+qqnEWDH6DMFEiKM56lPjzc5SRpd3TnKJj1bcStp7pz05eMKN7AJce3t5Mck9KSKbd
         fD5pnKbNNkfZfnk7FabskytUJyquHPXAfXaNrK8jUm2xYdb3YFpwEz2NexG0e0bRSZeA
         MobtxxUsc/oPe7xOLZEIhZGq/rMRYC08knV0A00OObVBt4h6rmIchdRDJmTuKibvFWQP
         0d6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737698303; x=1738303103;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+eSBjiNtUqQ+mUOEaavebFeZZqN2JPqlowYmas4ZhTM=;
        b=qb6e1w2O1DLr2qcZisvZaYkfNYzmFv5PhMqRiDKyj+6R2yNILg9+fLR8EWWbWHa/C/
         UW+Qy4Eui1TWkr9skNTDtr/SAxpwIQp1zhVOvAEnLEMTJteEY/VlcE5nhplkgnLgPYw2
         a0u7ZfP1odSEJOWR5Xpgp+mcCoB78uMajoeEQ6XF72979Shvw8Wy+M4klKPYPVpo3R95
         /aTQLhIbjV3xbNO7ciTtt0eUkMNoYCl75+JZoojLwFJDX80x2bcglJdiyJW/2N26YGGy
         YpbtT6SDZdLvRSaeXde7TxsdeVgyDsvzcgFMFV0/Fv83s8tCrpeOnLzpABHIAuvQr0VC
         GibQ==
X-Gm-Message-State: AOJu0Yx9vySE14NQXs+UT+X/Sraw5Odgh8iL5VChdHDxssMJBM4LHotO
	J5kftoiTZInd9TBP2GBAgAwpNHCHpDoc0SH6zSa+YIQQI8u1of8lgWD2xw==
X-Gm-Gg: ASbGnctgBpW/Q079omFrHIlBkMtuerwzAv6duJYq8WGq4o6oGZEIMJXRPfzS1nTK0SE
	DrsEO0PESl3eVAMWszvIkyRqgzMhDm6yvRU/Ebg/wqEVgiPIRNhc7yv7RVahtZksiRWUyJInknj
	sEpXwDOO4gMr5bI9Bexja+LKBLcfFp67CvivT3pYe5Ae4ugv1D0vZdxYE2Cva9PNR6EZu0L4sml
	u6dmTJZqakqiQ1zcwk+xxmaI/NwQmXSApAVd7t6uqtzvrvlZyRX5M64qXEQdOzQwlw8sb7F6y4o
	EtpM/9/gqB4Wt9pSZP4gx/4zR8eEjU36rG+1Tvf12Jo3K/2ja2Zkra22IkRSJYUi/rmuhwUzAb3
	odqdDFpTZvxVShA==
X-Google-Smtp-Source: AGHT+IHHH/pLcYMxrfiGTCcM45jF+ZVaiI93FJ2jD7vnNyNpmCxRFEwQ0pGEI7GB9EyRVAQpJ56fmQ==
X-Received: by 2002:a05:620a:430b:b0:7b6:d736:55c1 with SMTP id af79cd13be357-7be6325bba0mr4842524685a.48.1737698302775;
        Thu, 23 Jan 2025 21:58:22 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7be9ae8aaf1sm61380485a.40.2025.01.23.21.58.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 21:58:21 -0800 (PST)
Message-ID: <1d81d416-1a75-40b1-aea1-f62599ad1d61@gmail.com>
Date: Fri, 24 Jan 2025 00:58:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <c0b8b26f43b81d3bc15a37088f15b44d@atindriya.co.in>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <c0b8b26f43b81d3bc15a37088f15b44d@atindriya.co.in>
Message-ID-Hash: EZJJDNAL5B76TPQ7VXQI74CY2E6O2ACJ
X-Message-ID-Hash: EZJJDNAL5B76TPQ7VXQI74CY2E6O2ACJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : B205MINI-I board
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EZJJDNAL5B76TPQ7VXQI74CY2E6O2ACJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjQvMDEvMjAyNSAwMDozMywga2F2aW5yYWpAYXRpbmRyaXlhLmNvLmluIHdyb3RlOg0KPiBI
aSwNCj4gwqDCoCBSZWNlbnRseSwgSSBoYXZlIGJvdWdodCBVU1JQIEIyMDVtaW5pIGJvYXJkLiBJ
IGFtIHdvcmtpbmcgb24gaXQuIEkgDQo+IGhhdmUgZG93bmxvYWRlZCB0aGUgVUhEIGRyaXZlciBm
cm9tIHRoZSB1YnVudHUgcGFja2FnZShzdWRvIGFwdC1nZXQgDQo+IGluc3RhbGwgbGlidWhkLWRl
diB1aGQtaG9zdCkuDQo+DQo+IMKgwqAgV2hlbiB0aGUgYm9hcmQgaXMgY29ubmVjdGVkIHRvIHRo
ZSBQQyBpdCBpcyBkZXRlY3RlZCB3aGVuIEkgZ2l2ZSANCj4gdGhlIHVoZF9maW5kX2RldmljZXMg
aXQgc2hvd3MgdGhlIHNlcmlhbCxuYW1lLHByb2R1Y3QgYW5kIHR5cGUuDQo+DQo+IMKgwqAgU28s
IEkgaGF2ZSB3cml0dGVuIHRoZSBjb2RlIGZvciByZWNlaXZpbmcgdGhlIGRhdGEuIFdoZW4gSSBh
bSBidWlsZCANCj4gdGhlIGNvZGUgaXQgZG9lc24ndCBzaG93IGFueSBlcnJvci4gV2hlbiBJIHJ1
biB0aGUgcHJvZ3JhbSBzb21lIEFQSSANCj4gZnVuY3Rpb25zIGFyZSB3b3JraW5nIGZpbmUuIHdo
ZW4gaXQgcmVhY2ggdGhlIA0KPiB1aGRfcnhfc3RyZWFtZXJfaXNzdWVfc3RyZWFtX2NtZChyeF9z
dHJlYW1lciwmc3RyZWFtX2NtZCk7IGFuZCANCj4gdWhkX3J4X3N0cmVhbWVyX3JlY3Yocnhfc3Ry
ZWFtZXIsIGJ1ZmZzX3B0ciwgU0FNUExFU19QRVJfQlVSU1QsIA0KPiAmcnhfbWV0YWRhdGEsIGJ1
cnN0X2R1cmF0aW9uLCBmYWxzZSwgJml0ZW1zX3JlY2VpdmVkKTvCoCBpdCANCj4gYXV0b21hdGlj
YWxseSB0ZXJtaW5hdGVzIHRoZSBwcm9ncmFtLg0KPg0KPiDCoMKgIFdoZW4gSSBkZWJ1ZyBsaW5l
IGJ5IGxpbmUsIGFmdGVyIHJlYWNoaW5nIHRoZSBhYm92ZSBmdW5jdGlvbiBpdCANCj4gc2hvd3Mg
bGlrZSBObyBzb3VyY2UgYXZhaWxhYmxlIGZvciAidWhkX3J4X3N0cmVhbWVyX2lzc3VlX3N0cmVh
bV9jbWQoKSANCj4gYXQgMHg3ZmZmZjcyMjdjZmUiIC7CoCBXaGF0IG1heSBiZSB0aGUgaXNzdWU/
DQpUaGF0IGp1c3QgbWVhbnMgdGhhdCB0aGUgZGVidWdnZXIgZG9lc24ndCBrbm93IHdoZXJlIHRv
IGZpbmQgdGhlIHNvdXJjZSANCmNvZGUuwqAgSWYgdGhlIHByb2dyYW0gYXV0b21hdGljYWxseSB0
ZXJtaW5hdGVkLCB5b3UNCiDCoCBsaWtlbHkgcGFzc2VkIGFuIGFyZ3VtZW50IHdpdGggYSB3aWxk
IHBvaW50ZXIgdGhhdCBwb2ludGVkIGF0IGludmFsaWQgDQptZW1vcnkuwqAgVGhhdCdzIGp1c3Qg
YSBwcm9ncmFtbWluZyBpbiBDL0MrKyBxdWVzdGlvbi4NCg0KDQo+DQo+IMKgwqAgQWxzbyBJIHdh
bnQgdG8gY29uZmlndXJlIHRoZSBHUElPIHBpbnMgaW4gdGhlIGJvYXJkLiBGb3IgdGhhdCBJIA0K
PiBuZWVkIEdQSU8gYmFuayBuYW1lLCBDYW4geW91IGdpdmUgbWUgdGhlIEdQSU8gYmFuayBuYW1l
IG9mIHRoaXMgYm9hcmQ/DQo+DQo+DQpTZWUgaGVyZToNCg0KaHR0cHM6Ly9maWxlcy5ldHR1cy5j
b20vbWFudWFsL3BhZ2VfZ3Bpb19hcGkuaHRtbCN4Z3Bpb19mcGFuZWxfeGFtcGxlDQoNClRoZXJl
J3MgYSAiZ2V0X2dwaW9fYmFua3MoKSIgZnVuY3Rpb24gdGhhdCBjYW4gc2hvdyB5b3UgYmFuayBu
YW1lKHMpLg0KDQoNCj4gV2l0aCByZWdhcmRzLA0KPiBLYXZpbnJhai4NCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
