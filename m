Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A272A1B02F
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 07:05:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 06D9C385A7B
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 01:05:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737698716; bh=/exF9oerKRmU304A7Or0M1CHrULyz34mlz0IkCUWzJw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qygItThR7LKutsDRAAxV+hIZXWPds0DGGiYk9+DtLovDHM7ufX8SZkZhXn5XHF5rB
	 ML+wLx2K5YEDqivYXXiVSuJuWPcoNMqslyJ/KIFigIZfkBJHyY1N3jhb6EMZu7cVD1
	 UqjjiGHij2LB5c0dW/RW+rV7CZCM78zSCswCLBQKJPNsJYcNji6x70v1PmzREJz0nJ
	 coes7DU68B1HzKWnz61eFRKQ+75caP0roFfNKaDXzG6DkdTFxEKcDIQuuF0WmkyhKe
	 vfCpKgfQ8maml3S3+QZ00MBmjLWei2eOt3z/ys+kL3g0RmoFN/eFxAbypXFCCorRhj
	 EhBffnieXuFyw==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 69378385260
	for <usrp-users@lists.ettus.com>; Fri, 24 Jan 2025 01:04:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mSFR0zy7";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6dd1962a75bso13410786d6.3
        for <usrp-users@lists.ettus.com>; Thu, 23 Jan 2025 22:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737698659; x=1738303459; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=crMR01Q//h0Bt1kktfg7BgCCVmRZ1t8dilG7e1l8up4=;
        b=mSFR0zy7KKm7xvCe9N2UD3IABcqv9kd16kdHn6xEmXIfllOLs1XhzCP1+W6MyNlwsY
         ySa//BsycZq561ov8jY/zqTdpIxMPmjTtsLvdqitsLkni7Gq7S9K42exuMtJiL6TskOs
         kjSHiizwaCEmLJdraFbTuBf+CEDepP3WfyzhvYAUOCCIFynHJcMuaaoJSR1oCFp8goi4
         9hOT2C5jaKdfRg4dJe1pJcXlCI4CqBdEhTppEgy6Du6IU6fSQHgSd5GEWf8BlxuF2/P6
         x5IjFPItMxmG4ifPRYmN4GanYCLyHpN2p1ouUxW2f0hiJuTRU9xz31rAd4jN03DEElNy
         Tvcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737698659; x=1738303459;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=crMR01Q//h0Bt1kktfg7BgCCVmRZ1t8dilG7e1l8up4=;
        b=vlQIqq/D0cQr5TmnrZnsiFjy2GYc4T/tHD/j2i3TN37eRwCPtB0kJtKa30pZO+gdFV
         U/jnVnclhSNQjLU1hcv093muZrRPZhDGDy5MVw595EZio0scZrIgOwjg8iChFfsoizoh
         hrHf6A1E1f1Hr6IMyBF82IBIMtkij6JKKggE8cvLDapM/2YSqH/PafxsO1dcclw6HCVO
         hylNc3xNQOr2/uHmBKf6p5Uaqx2GURDUcl1MG3VVAC0nM78RPTDihFZZfHhNv0tD6vJK
         LvjpP5MZl48fPG9SlgRkwm/YqQe7m/1Xk4Lr9WKvSz3ZpXQ9+QsA+J/t+B5SNUeCfhlA
         wIDQ==
X-Gm-Message-State: AOJu0Ywcc3NEm04fnF4QSxn1S6SDzISt4/9QEoW4S5mZf7RgmArlAxhh
	5dTAOwIleKoDN0n0Jz5a9F1PhKV1gd2GAoqCmVL0HAA4x7yNE3l2Gc23SQ==
X-Gm-Gg: ASbGnctCv8uMUSOeCiR3xrpVPVbDx7y4JiQaErTNGXDsNPcZFJp/rFEG1bRK3brxDmi
	fRwP/Lc+hRRL+7r4w6lAjctooThXAJkyT5z4gkUWsnqR19CupCyTjItjrtBNVghtxSGkEjRxqZ4
	j/mjMpN4iDz/ikUFMZ80+a+/s1+WsOMVUyy2RVj5AutvXbY/AxQh7RkI8CQ3M9dKPz2eVp32WcP
	LNyGNQQqcEj4293U2aITNmE1HcyyFFj2OMJq3n9KH4RHNRMjaCRMsdGLUxFiFqFHsnccmVPrYMZ
	7FDr3xRvu6TTxG4aQ4nmgGRISJjGGOzcSvoj5zdQaGoGC3lJTpJvyHQuzr2MbO2UcYSUkjEAC0l
	4YIemsKC82h1p1Q==
X-Google-Smtp-Source: AGHT+IF+qjffn3jIbos5Zp2g3IHnJlCANfbA0yiO4+C3CRKiEr9E4GkKbcbhtx4+cFAaSu4j4qAr5g==
X-Received: by 2002:a05:6214:2261:b0:6d8:80e8:d567 with SMTP id 6a1803df08f44-6e1b217d694mr493140196d6.18.1737698659035;
        Thu, 23 Jan 2025 22:04:19 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6e2057a8377sm5726806d6.91.2025.01.23.22.04.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 22:04:18 -0800 (PST)
Message-ID: <4887de4b-39c0-444b-8dbd-26b91fc30808@gmail.com>
Date: Fri, 24 Jan 2025 01:04:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <c0b8b26f43b81d3bc15a37088f15b44d@atindriya.co.in>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <c0b8b26f43b81d3bc15a37088f15b44d@atindriya.co.in>
Message-ID-Hash: D43X4BXRW67S73DWBPKLTUQDNT64DRER
X-Message-ID-Hash: D43X4BXRW67S73DWBPKLTUQDNT64DRER
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : B205MINI-I board
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D43X4BXRW67S73DWBPKLTUQDNT64DRER/>
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
DQo+DQo+IMKgwqAgQWxzbyBJIHdhbnQgdG8gY29uZmlndXJlIHRoZSBHUElPIHBpbnMgaW4gdGhl
IGJvYXJkLiBGb3IgdGhhdCBJIA0KPiBuZWVkIEdQSU8gYmFuayBuYW1lLCBDYW4geW91IGdpdmUg
bWUgdGhlIEdQSU8gYmFuayBuYW1lIG9mIHRoaXMgYm9hcmQ/DQo+DQo+DQo+IFdpdGggcmVnYXJk
cywNCj4gS2F2aW5yYWouDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20NClRoZXJlJ3MgYWxzbyBhICJncGlvIiB1dGlsaXR5IGluIHRo
ZSBleGFtcGxlcywgd2hpY2ggaW5jbHVkZXMgYSANCiItLWxpc3QtYmFua3MiIG9wdGlvbi4NCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
