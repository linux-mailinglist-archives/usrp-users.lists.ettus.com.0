Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 77865A718FF
	for <lists+usrp-users@lfdr.de>; Wed, 26 Mar 2025 15:43:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B574385B26
	for <lists+usrp-users@lfdr.de>; Wed, 26 Mar 2025 10:43:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743000228; bh=uaHrFtLml1I3IyAT8Rrabfnozndi4xDQtKiBjWSHtn8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LGPLw1XvCGKszYV54ZiqmpI9uvpY1GaNmrCs5moSpgdvq9a+6GRSsT/mfClOnDpPQ
	 pyQZk6dIfCKyMZQxsZtRiCuWeedBaldTtze2XLghA97Y4/SFGPIelK5Wow2y9cqzLA
	 jeXsZfhgt/91fSYBSyOfOubCWevC2ZgXGgm/Yh6anxsbGMIWLvMVfenDj6mx/gSZrV
	 4YMxkPKPvZaqBCXk8soRFPe9VFp4khu0SBZiIXnrwg+LqyZhbAJL6/8vt3BbOtsYPc
	 ZitODtQFNPo/sGfTeNJ8ogKd29sRWe+drr4P6etlW0VvXJEfyw13Wfw53synNyq6+9
	 UKK1TBkzza8Fw==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 55E0A3858DE
	for <usrp-users@lists.ettus.com>; Wed, 26 Mar 2025 10:42:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dNsx5xdo";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6ecf99dd567so38900786d6.0
        for <usrp-users@lists.ettus.com>; Wed, 26 Mar 2025 07:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743000164; x=1743604964; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YM6+tPHzN8aBIPssr0GSJYdfLExlxV5cdJTVqRfKa6k=;
        b=dNsx5xdoVeDG8gi75/e5vx5Xz42KLKVGtbYsmcQws4bQ5xmAYhTy8EL8U/JBmoz34H
         blKTDsM82KIbIa6fpKg4irghUfDh0xQIJBO3vGBMgBiDV60SImBux3uk+OQfy/27Yy5Z
         Rv8mN2wb3hNCMzi84DRCTl9LVCiCm9gdinHjQYlk6F0TU+ZvlI1HL9tOn8mfgkxngvjT
         G1AL0KAEAUiOMUVGoxhc0YdIntj1YGZhyKF7NuXlWoYHCsHK/eW816+/ify533r8lYl+
         nw14tkUdZQfIYG9UkgJnPXE5KoSmyQejQ8+pBnH1JaFQN4FjMotf6hXJDol69nYQylYP
         9QGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743000164; x=1743604964;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YM6+tPHzN8aBIPssr0GSJYdfLExlxV5cdJTVqRfKa6k=;
        b=Zs8HFiEsOwofztqhiKMXDHIgEzSa3u+Qv2ccSjs9jADIOnEJUavrFh4yJoKKh8qULm
         mO/yxp1xD3d2s0U5+r75U3MtwXDnkYigsopTjtkOZznpAbkBf4isRULgMkBRbVGLuydf
         XZrM3M0CQv7uzcl6nJLhQE89YZWvbwqN509tVTHLlfLiRb15D+0+t6jGZvoYx+Ny5Q4h
         xbU/Rj/WkMNKSNDlw+FumN2YIEfqv6AS8P2T843BD6k7N50pHseoPngPe6jmyShdbyyO
         pTBk6+QkBV56vTudK9cjn4xbLace7S+qobBUnTx2n96cGxSm+JY3B18n70e5w1ioCk53
         DmJw==
X-Gm-Message-State: AOJu0YyI2UYaP4DR/2DSnQF2SnUbycPO6SStBeRE2HE51pJ7cnf3mgAX
	3aQFSnyfzxFIcbNZfW7b8M/ZOEBvoDO1FWt0U8My+PUfL80JVx+rYBG5OA==
X-Gm-Gg: ASbGncu8KwauejYVtAVdrrvLclxKebUygHglZIpXd0lNqhoZQyye1xcBz+yMLCxMLYP
	L7O/oXrd6tDuix0a1/vG8JhKsyTo2xNhoVc/pBkMWwxizrAva8Xv4azpivUOPW5R8j7lnJTMsjD
	6MmXoYYazT1uEJOfz91/9AjaRR0MND6nlGwKCpjEeXJcq+ElO3P1fzwRTrA1Ut+AnMHmZsn1rIH
	Z0OiiNS2zcSGHJSO52SD8ImJuG4erX/MgkDY1OpCmwHusPNFQnuplBPff2tTTSi5PqiqWR42Ki0
	oEIvu/3OfP/goeg+fvZABA55gawDZ/DRNOCAMmnOoaK2Oi79eg71GL4=
X-Google-Smtp-Source: AGHT+IECpdFDuUIHtNFCEFrk5GY4uoXT7YlDJGzPDxX641LCCH7Ss+Yxs2R267r5DS8/2PLfMZv1tQ==
X-Received: by 2002:a05:6214:20ad:b0:6e6:6535:17dd with SMTP id 6a1803df08f44-6eb3f284a28mr287329886d6.7.1743000164117;
        Wed, 26 Mar 2025 07:42:44 -0700 (PDT)
Received: from [192.168.2.170] ([142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6eb3ef33e4bsm68217476d6.53.2025.03.26.07.42.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Mar 2025 07:42:43 -0700 (PDT)
Message-ID: <ebed1fe1-d487-4bf9-8bab-d7ec29ca910b@gmail.com>
Date: Wed, 26 Mar 2025 10:42:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <buPmixowFqBNjcHYfLX6r17HUMSoFxZbBs7YZTE1mIg@lists.ettus.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <buPmixowFqBNjcHYfLX6r17HUMSoFxZbBs7YZTE1mIg@lists.ettus.com>
Message-ID-Hash: FMAEHSYMTHUN2YPU4HHCEKOKMYOIMIO4
X-Message-ID-Hash: FMAEHSYMTHUN2YPU4HHCEKOKMYOIMIO4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [X310] set_command_time introduces unexpected delay dependent on sampling rate.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FMAEHSYMTHUN2YPU4HHCEKOKMYOIMIO4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjYvMDMvMjAyNSAwNjoxMywgamUuYW1naGFyQGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gSSdt
IHVzaW5nIHRpbWVkIGNvbW1hbmRzIHRvIHNldCB0aGUgUlggZ2FpbiBhdCBhIHByZWNpc2UgbW9t
ZW50IHdpdGggDQo+IHRoZSBmb2xsb3dpbmcgY29tbWFuZDoNCj4NCj4gc2V0X2NvbW1hbmRfdGlt
ZShtZC50aW1lX3NwZWMgKyB1aGQ6OnRpbWVfc3BlY190KDAuMDIpLCAwKTsNCj4NCj4gSG93ZXZl
ciwgSSBub3RpY2VkIHRoYXQgdGhlcmUgaXMgYSBkZWxheSBiZXR3ZWVuIHRoZSBzcGVjaWZpZWQg
dGltZSANCj4gYW5kIHRoZSBhY3R1YWwgdGltZSB3aGVuIHRoZSBnYWluIGlzIGFwcGxpZWQuIFRo
aXMgZGVsYXkgaXMgDQo+IHNpZ25pZmljYW50bHkgbGFyZ2VyIHRoYW4gdGhlIGNvbXBvbmVudCBs
YXRlbmN5IHJlc3BvbnNpYmxlIGZvciANCj4gY2hhbmdpbmcgdGhlIGdhaW4gYW5kIGFwcGVhcnMg
dG8gZGVwZW5kIG9uIHRoZSBzYW1wbGluZyBmcmVxdWVuY3kuIA0KPiBTcGVjaWZpY2FsbHksIHRo
ZSBkZWxheSBpcyBhcHByb3hpbWF0ZWx5IDIwIHNhbXBsZXMuDQo+DQo+IEnigJltIHRyeWluZyB0
byB1bmRlcnN0YW5kIHdoeSB0aGlzIGRlbGF5IGlzIG11Y2ggZ3JlYXRlciB0aGFuIHRoZSANCj4g
ZXhwZWN0ZWQgY29tcG9uZW50IGxhdGVuY3kgYW5kIHdoeSBpdCBzY2FsZXMgd2l0aCB0aGUgc2Ft
cGxpbmcgDQo+IGZyZXF1ZW5jeS4gQW55IGluc2lnaHRzIG9uIHRoaXMgYmVoYXZpb3I/DQo+DQo+
IFJlZ2FyZHMuDQo+IEphbWFsZWRkaW5lDQo+DQo+DQpBIGNoYW5nZSBpbiBzaWduYWxzIHByZXNl
bnRlZCB0byB0aGUgaGVhZCBvZiB0aGUgRERDIGNoYWluIHdpbGwgdGFrZSANCnNvbWUgbnVtYmVy
IG9mIHNhbXBsZSB0aW1lcyB0byBwcm9wYWdhdGUgdGhyb3VnaCB0aGUNCiDCoMKgIGZpbml0ZS1s
ZW5ndGggZmlsdGVycyBpbiB0aGUgRERDLsKgIFRoZXkgZG9uJ3QgKGFuZCwgaW5kZWVkLCBjYW5u
b3QpIA0KaGF2ZSB6ZXJvIGdyb3VwIGRlbGF5Lg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
