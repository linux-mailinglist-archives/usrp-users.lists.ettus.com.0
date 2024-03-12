Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBD0879C85
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 21:00:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E300F385043
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 16:00:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710273624; bh=/a3i1jrVbbol1pritXXIuCD2dxO7y6S4q5lj4iLnHfA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Hw4NGO1X5C8w2fF9uVzyfbHFm7B+zVZ7zhP4ITHuDH85kLJJQInnALi7koZMuSSgK
	 zSgwDXAE6/Ofmc5CpclDWFkzBXR1jJzxAQBqXRdZsyuh5O6gCb69oJhgwVh+y410X7
	 d3rJYebjD62d4cHkm6OGcb0ogIyFYS8VTolOsjbAnJx7j3KtQ48jKN6TC7YV3AlPlp
	 oaXRYDZ0T8n25USwMd1Jjmz5QtNGYju/hIS95kyjzgP/DncoQ7MQ3yBfFeY0MPGHXZ
	 0pqjKi6M3J0qUC3HHoUp8Ohg7fWnS3AFXxDK9DuFtSoSGM5Nyp7w5DlhcD7tPdf1lA
	 mkOG3vk1fDDBQ==
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 819C6384904
	for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 15:59:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Xs0N2NE/";
	dkim-atps=neutral
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6e6ac58fceaso794316b3a.1
        for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 12:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710273587; x=1710878387; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cUj6ApH0z8cNqWwJIgAotcyCRSWky2V5FdEAw2NAFrw=;
        b=Xs0N2NE/l2RxAye1LoOhm1ZXYsW9Y6AF7h9ybzq+/APQHj1G/JF3kpCq1/eSPVJJUV
         HLRbQ4x8Eg+gKjPt8ZUAQvmg1s5SDAdK6RXx+iTRfl1gBPutEoi9o2rAVZTYKtMfdh3O
         LLPHoqqDTgOO5By0hoTIcCwLBHFEjG4iDzD/hgxfaaEfSbqfkRbRFTzQ52rxRKTaIW0m
         R7s6Dn7axeIlA+34PYZIw4gGxtU49WgLB/gXmKaPN9AGpqDUzlW7WQtWJDLmHl1Qp+4Y
         ybUuI2XU5B7ubpb3xxNPP1fYh2PMGuVHYcEw7otR8B9emu8JZPpjmwsz75N9/oayLdf5
         W3sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710273587; x=1710878387;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cUj6ApH0z8cNqWwJIgAotcyCRSWky2V5FdEAw2NAFrw=;
        b=ihIdzP/W5Sp+5ZHygMTEsOAo2IB+7D23dEVg+lyPHA96xL6QKZ5CKj2KPcrrAXgtwO
         ca1HC66JhxuBXG7hawmq9tL6QHb0tV/dpPMDXDELbrl6ZUpWk3Su4hgVycI72Iv+VgA9
         L6crcLduTM9OY1WEY4Xui+hhHD2BejNZqQ6eWu0tRX+CY3dQyCygt8F1aRMEqLc9sZVj
         5IV46Gns0aGraVvug/znL/VvA6JU4/bFlJp2nayHtgJpae6enN2kvqdPvwJGswp4/Psl
         tBwQiLpi6vk3c1fh0jHBl/YuQIuxJeLJhcWYGiRPN1xxrTC7n17rJTujlg5YTuPSJ3DG
         Kbjw==
X-Gm-Message-State: AOJu0Yyxv9HNUPafVzan6wmgcGbYAW2PPOvZnTQHTQS/iSE/PRqVhMs+
	W9KCdebAsQLMo74eAJnJDx2aTsl+9p1OwlhrcUUEQEsr2ZAbqmuejzZXHMZWjH8=
X-Google-Smtp-Source: AGHT+IGB9MOrvQHuEDO7viRE7ekgoQ73SvTm8oFPtFkeYIXzLHVSPrR2M4W9Lxh2lGnEhDNySutkGQ==
X-Received: by 2002:a05:6a00:804:b0:6e5:30b8:d46b with SMTP id m4-20020a056a00080400b006e530b8d46bmr549820pfk.18.1710273587290;
        Tue, 12 Mar 2024 12:59:47 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-156.dsl.bell.ca. [174.93.0.156])
        by smtp.googlemail.com with ESMTPSA id d1-20020a62f801000000b006e6253bbcb7sm6399881pfh.61.2024.03.12.12.59.46
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 12:59:46 -0700 (PDT)
Message-ID: <e740d276-afd3-4cb2-baef-a5317ced161f@gmail.com>
Date: Tue, 12 Mar 2024 15:59:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Hz0aebtwtXdj0pE78PDP3dLX9tkjq1y4MQ4kttYQ@lists.ettus.com>
 <CAB__hTStH_tXoNdu8c2jHUn4GYf5f_r+6NzapQG_L8t2FmodpA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTStH_tXoNdu8c2jHUn4GYf5f_r+6NzapQG_L8t2FmodpA@mail.gmail.com>
Message-ID-Hash: F6WXB5AIAACTGS4EIE5OCMJ6UAFCHGSB
X-Message-ID-Hash: F6WXB5AIAACTGS4EIE5OCMJ6UAFCHGSB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Extending duration of high-rate captures with the X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F6WXB5AIAACTGS4EIE5OCMJ6UAFCHGSB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMDMvMjAyNCAxNTozOSwgUm9iIEtvc3NsZXIgdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+
IEhpIFphY2ssDQo+IEkgd291bGQgbm90IGNvdW50IG9uIGVxdWFsIHBlcmZvcm1hbmNlIGJldHdl
ZW4gc2F2aW5nIHRvIGEgUkFNIGZpbGUgDQo+IHN5c3RlbSB2ZXJzdXMgYWxsb2NhdGluZyB5b3Vy
IG93biBidWZmZXJzLCBidXQgSSBkb24ndCBrbm93IHRoZSANCj4gcmVhc29uLiBJIHRoaW5rIGl0
IGlzIHdvcnRoIGEgdHJ5IHRvIGNvbmZpZ3VyZSBhcyBsYXJnZSBhIFJBTSBmaWxlIA0KPiBzeXN0
ZW0gYXMgeW91IGNhbiBhbmQgcnVuIHJ4X3NhbXBsZXNfdG9fZmlsZSAod2hpY2ggd2lsbCBub3Qg
Y3JlYXRlIA0KPiBsYXJnZSBSQU0gYnVmZmVycykuIFBsdXMsIHRoaXMgaXMgYSBwcmV0dHkgZWFz
eSB0ZXN0IHRvIHJ1bi4NCldyaXRpbmcgdG8gUkFNIHZpYSBhIFJBTSBmaWxlc3lzdGVtIHN0aWxs
IGluY3VycyB0aGUgbWFjaGluYXRpb25zIG9mIHRoZSANCk9TIGtlcm5lbCBzaW1pbGFyIHRvIHdo
YXQgaXQgd291bGQgZG8gZm9yIEFOWSBmaWxlc3lzdGVtLA0KIMKgIHNvIGl0IGNhbm5vdCBiZSBh
cyBmYXN0IGFzIHNpbXBseSBtb3ZpbmcgYnl0ZXMgaW50byBhIGJpZyBidWZmZXIgaW4gDQp5b3Vy
IGFwcGxpY2F0aW9uLi4uDQoNCkhvd2V2ZXIsIGl0J3MgYXdmdWxseSBjb252ZW5pZW50LCBzaW5j
ZSBpdCBoYXMgYWxsIHRoZSBzYW1lIHNlbWFudGljcyANCihvdGhlciB0aGFuIHBlcnNpc3RlbmNl
KSBvZiBhIGZpbGVzeXN0ZW0gb24gcGVyc2lzdGVudA0KIMKgIG1lZGlhLg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
