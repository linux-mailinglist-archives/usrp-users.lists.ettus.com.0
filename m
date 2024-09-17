Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B080B97B3E5
	for <lists+usrp-users@lfdr.de>; Tue, 17 Sep 2024 20:09:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D36E380964
	for <lists+usrp-users@lfdr.de>; Tue, 17 Sep 2024 14:09:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1726596574; bh=l6YkpPJpZ8hm7YOMabYX+Wx+r5ddc0I9ZSRq9q4G72k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SyBvgFhAcL5U8RQ9t/lk/bZ5mTuvJ5D2y0DHmrBJ0d4Ne9vwC/CB5KUnbRRLW+diu
	 w35yHB9SRuQCZZlkECtLsjmnYPq0x1UvpM+pUapj/j1+3nrR7Jk2B6/6XQSFDzZ4oW
	 Gwz5rtFy8HEOc2+s6htX44SdO0FComEu8gArZxntY6thxL0G2SBhp8tbXxukBpSYEV
	 stDswEvLUiHhzT3U5H4BiRWAMo5RtpoV6+qvYRfFRqbup0KSxMRrHQ1Z5P3TYCFgis
	 USgLgO062hU9hmGktERm0fripsAabIFFbOuMDSW3tG2WkShk2g1cceoYoOnf3de4Cs
	 FiAHHc4DokzmQ==
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E835384534
	for <usrp-users@lists.ettus.com>; Tue, 17 Sep 2024 14:08:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JbnTdG5p";
	dkim-atps=neutral
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6c358b72615so52654746d6.0
        for <usrp-users@lists.ettus.com>; Tue, 17 Sep 2024 11:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726596510; x=1727201310; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N/D/TMoP9/01T6/C+2NSJVVwBYUn7zGJfErN36Xye00=;
        b=JbnTdG5pHEGYr+Jc1g7HayNgoWup1zPcxNmVAlndF1zt3fZdeARcX/kU5ifL+l7z9U
         6Yj/DAPb8Zhmh3Nqda3KeYspcEQbZcOSbpmm1AKnLJP9zN45pT8Odxp2Iv4ePT62Tz73
         5tKlf2+T3z7hR8U/eIxyPG2sz285TN4lw2oHInp9ilaeIz7hS3DKZS4RqaBZqO7kQEDg
         WOzQiU9gTPqvh9ymSnpUnphPImTkNVTRjDMNzEJoWe31l+bPlT8ekiNkDIYBQ7IlRKfc
         JrrVhTzqQc0IcJxs6RZM0L2a/fumEqvVX8k7VyHmR3JqGbRi6UNKTTJL0svf2iJ9jA0+
         u4MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726596510; x=1727201310;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N/D/TMoP9/01T6/C+2NSJVVwBYUn7zGJfErN36Xye00=;
        b=imIszWhIXSEQLDGCcshyPO3ZmB/GRSIZoLOhRug/sTs9kj8HgCAG5iCjECj+o0glxv
         U17oZfMHkaDc1c6AHWRu8wMB1Mde5uopfLmsTIWD3rdXoRI8x/jL2X4a+neUc9X6Uhz+
         qMvo5yNtC79j5XJWrMIgyUyYr5nm16JDkaGDiVSd9WAWA/tRMK8rmB3xmGwQFQgPZhM5
         tsGdyXkttgU6F31rmO2Uu2fQdnroXQG/QNiy2EoNM3pU03ztSa24PnNkHH5lFiimbd8z
         0OzbgvRG0XJWMubXp2NfmaPiw/nSm3FcCwI03n2TBEHn57uS7aARs7BYl0WwaCMp0l9E
         uSRw==
X-Gm-Message-State: AOJu0YwEMwREIppvBX3P3Z48LdT0vlSBCJpe49qXPueMbQV+tlwyounr
	lPKigMV0nmjTKWOPBnycWKC4iKoRTHaSlpbklZYbFTs92Oc+CoDzEbwTpQ==
X-Google-Smtp-Source: AGHT+IGzHUuOUIjvxka61+n5YUE3h59oVd4DT0d0I5iC1uobP+5GUeZKE1pdtbPAzZWogXC730uQ5g==
X-Received: by 2002:a0c:ef47:0:b0:6c5:7789:b695 with SMTP id 6a1803df08f44-6c57789b6c4mr279194816d6.42.1726596510436;
        Tue, 17 Sep 2024 11:08:30 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-22-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6c58c628d9fsm36823766d6.20.2024.09.17.11.08.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2024 11:08:30 -0700 (PDT)
Message-ID: <88b40f46-1ddc-4c9d-b6f0-443c4f943818@gmail.com>
Date: Tue, 17 Sep 2024 14:08:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <zBCferk8uZIHJ2ROQnLHY4ElIaOuswWbgH14OhyHT0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <zBCferk8uZIHJ2ROQnLHY4ElIaOuswWbgH14OhyHT0@lists.ettus.com>
Message-ID-Hash: XMWXNZFS2IBVAWCBHWSIHDG4MT55UIDW
X-Message-ID-Hash: XMWXNZFS2IBVAWCBHWSIHDG4MT55UIDW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Phase synchronization correction in OFDM reception / X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XMWXNZFS2IBVAWCBHWSIHDG4MT55UIDW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTcvMDkvMjAyNCAxNDowNSwgcGF2LnZpZWlyYUBnbWFpbC5jb20gd3JvdGU6DQo+DQo+IEkg
YW0gYnVpbGRpbmcgYW4gT0ZETSB0cmFuc21pc3Npb24gYW5kIHJlY2VwdGlvbiBzeXN0ZW0sIGJ1
dCBJIGFtIA0KPiBoYXZpbmcgZGlmZmljdWx0eSByZWNvdmVyaW5nIHRoZSBCUFNLIGNvbnN0ZWxs
YXRpb24gZHVyaW5nIHJlY2VwdGlvbiwgDQo+IGFzIHRoZSBzaWduYWwgaGFzIGEgbGFyZ2UgcGhh
c2Ugcm90YXRpb24uIEkgdXNlIGEgUExMIGJlZm9yZSBzeW1ib2wgDQo+IHN5bmNocm9uaXphdGlv
biwgYnV0IEkgaGF2ZSBub3QgYmVlbiBhYmxlIHRvIHNvbHZlIHRoZSBwaGFzZSByb3RhdGlvbiAN
Cj4gcHJvYmxlbS4NCj4NCj4gRG9lcyBhbnlvbmUgaGF2ZSBhbnkgc3VnZ2VzdGlvbnM/DQo+DQo+
IEkgdXNlIGFuIE9GRE0gc2lnbmFsIGdlbmVyYXRlZCBieSBhbiBNRzM3MDAgKEFucml0c3UpIGFu
ZCB0aGUgDQo+IHByb2dyYW1taW5nIGlzIGRvbmUgaW4gUHl0aG9uLg0KPg0KPiBJIGFwcHJlY2lh
dGUgYW55IHN1Z2dlc3Rpb25zIGluIGFkdmFuY2UuDQo+DQo+IEkNCkkgd2lsbCBub3RlIHRoYXQg
dGhpcyB0eXBlIG9mIHF1ZXN0aW9uIGlzbid0IHNwZWNpZmljIHRvIFVTUlBzLCBidXQgbW9yZSAN
CmEgRFNQIHF1ZXN0aW9uLsKgwqAgWW91IG1pZ2h0IGZydWl0ZnVsbHkgcmVwZWF0IHlvdXIgcXVl
c3Rpb24NCiDCoCBvbiB0aGUgZGlzY3Vzcy1nbnVyYWRpbyBtYWlsaW5nIGxpc3QgLS0gdGhlcmUg
bWF5IGJlIG1vcmUgZ2VuZXJpYyBEU1AgDQpwZW9wbGUgdGhlcmUgdGhhbiBoZXJlLg0KDQpJIGRv
bid0IGtub3cgbXVjaCBhYm91dCB5b3VyICpzcGVjaWZpYyogY2FzZSwgYnV0IGluIGdlbmVyYWws
IG9uZSBjYW5ub3QgDQpleHBlY3QgdHdvIHJhbmRvbWx5IGNob3NlbiBkZXZpY2VzIHRvIGJlDQog
wqAgaW4tcGhhc2Ugd2l0aCByZXNwZWN0IHRvIGVhY2ggb3RoZXIsIHNvIGlmIHlvdXIgcmVjZWl2
ZXIgZXhwZWN0cyB0aGF0IA0KaXQgaXMgaW4tcGhhc2Ugd2l0aCByZXNwZWN0IHRvIHRoZSB0cmFu
c21pdHRlciwNCiDCoCB3aXRob3V0IGFueSBraW5kIG9mIHBoYXNlLWVzdGltYXRlIGFuZCBjb3Jy
ZWN0aW9uLCBpdCB3aWxsIHJvdXRpbmVseSANCm5vdCB3b3JrLg0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
