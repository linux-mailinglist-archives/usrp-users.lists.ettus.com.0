Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A20782E7A
	for <lists+usrp-users@lfdr.de>; Mon, 21 Aug 2023 18:36:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0541538439C
	for <lists+usrp-users@lfdr.de>; Mon, 21 Aug 2023 12:36:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692635778; bh=FGf4afMmH7BvQbwQkuqlyvOVs37Fb5lndVkihRg+nsI=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=F6lBIz8q1FiIzYaWtT5UOfcY5I9+saTyIn2pzmc3WK3bWsrUAsVppPtQQ1/87zpgI
	 jUGFa6t13pQ8erzue7l+uY8c2EzfM8NAitWSC41WyNnwrmT7YSYICj8D5D0MdmyJfK
	 ZIXpHGyhLgrJ3FOetXuFVU5vmMbcWxSizGGfzAXbdrP8y/jDWno8j+78OK/2mIPpGH
	 BEt9NrR9ohgphE3/YNWkl1AngNoLQ4zBiuRo9gPxSX3HmGGl8Jg5ysujnvsb2bHVTe
	 ZHpfU6HZ9OBtPuupwOhd1TZ0KxgfOwMSyYxk7gvFjR5xrCYSSKC57t1dwS2xDDInvY
	 xDcwcG0HRXkvQ==
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	by mm2.emwd.com (Postfix) with ESMTPS id E240C384209
	for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 12:35:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZDH1lnvR";
	dkim-atps=neutral
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-44d4d997dcfso476057137.0
        for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 09:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692635746; x=1693240546;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QdW6wPPiXGz47S31lekobkZ+L6e5OUzV5TUxmLgVMcU=;
        b=ZDH1lnvR3+Lu4RTLnfnNgMUQexjlpEhhzFMAvzdm9AZwZnYQ5tENSFzNmZEk+2i7FZ
         sKSax+sfeT60++lo+CGOQs1+ViAT/6ZUInir58/3trfk91kERyyQitFgHZT+8zoGsA1e
         S26fZ6NDvNMpATE2OAXRHMYMFWIT/9dDtG6FNfnTZcjXq6OKISoGrzvHX61G0BCg8b+A
         KCC2N52KMJE/NqJYUhlSkfTrum7MVfvz83LpsC6GmUlxhITO16pXdF4s2pK5x0lPVSbo
         9HGl8SXfFseppUHZzoloALsebUdreZZ4xCvsp5BcoQuGCobZmhosQskkK15aPF91KDpH
         eGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692635746; x=1693240546;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QdW6wPPiXGz47S31lekobkZ+L6e5OUzV5TUxmLgVMcU=;
        b=HfqbNr2PZFIiYUzNJov2MFCBuqUwu1XKVRW8bd09+SGtr4wt0NJDeluHA0H2+cMXUb
         No0qz3GO+gIqjN1SbI1jzzIvhGZluXgCKntxWc0le9qA51Q9OoZ/PnNdRb+qaxkwLpzj
         neV5PT9xiM/4J25xm+ZsY4guB/yAjUVR2djy1c9C35uSVLmCrRznFTNlIBXdDkh2AxI+
         8VXGKg7F9mSxrS4KtLPb3sMzwKMM5p2gNie12K9VNsU6iKN8Bwp1pum2vlGDlfx35wzv
         a8KKxvKNLqjHRdZITshl2CiYSmAjFqBRR9cMzqMC6GZBsdssHcADgSXONQdZPqGZbX2t
         LF6g==
X-Gm-Message-State: AOJu0Yz2q/0ttmooAOeBX1InJvpJUjCPSRHnbN75G9y/X+mZ72VFo1t9
	Yvz2ppmZ0pgdacqFnOSZGT8=
X-Google-Smtp-Source: AGHT+IEXNJ0dIcj/mEILDes0L6OD3dn8ylyEMvKrWhI7wGmyxKQ5wNHSdrmYoysTq2wLSbvF+NezSg==
X-Received: by 2002:a67:fdc3:0:b0:44d:4aa1:9d3f with SMTP id l3-20020a67fdc3000000b0044d4aa19d3fmr3255525vsq.4.1692635746273;
        Mon, 21 Aug 2023 09:35:46 -0700 (PDT)
Received: from [192.168.2.174] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id n5-20020a0ce545000000b0064711ec77b9sm3070816qvm.81.2023.08.21.09.35.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Aug 2023 09:35:45 -0700 (PDT)
Message-ID: <9e29a01e-bf7b-35fd-09dc-280449f06dac@gmail.com>
Date: Mon, 21 Aug 2023 12:35:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Paul Atreides <maud.dib1984@gmail.com>
References: <2bfda6d3-da35-7cff-93f5-4d94deabffd0@gmail.com>
 <4CACAAE4-2E91-485D-9BA2-39276BEABC91@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <4CACAAE4-2E91-485D-9BA2-39276BEABC91@gmail.com>
Message-ID-Hash: WHZJNF5N6MAUEGEZPNTMJJYBV4B37JFA
X-Message-ID-Hash: WHZJNF5N6MAUEGEZPNTMJJYBV4B37JFA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410 and PCIe connection
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WHZJNF5N6MAUEGEZPNTMJJYBV4B37JFA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjEvMDgvMjAyMyAxMjoyNCwgUGF1bCBBdHJlaWRlcyB3cm90ZToNCj4gQSBRU0ZQIFBDSWUg
Y2FyZCB3aWxsIHdvcmsgb24gYSBkZXNrdG9wIGZvciB0aGUgWDQxMC4gTmF0aW9uYWwgaW5zdHJ1
bWVudHMgc2VsbHMgdGhlIGtpdCB3aXRoIHRoZSBuZWNlc3NhcnkgY2FibGUuDQo+DQo+IDxlbmQg
dHJhbnNtaXNzaW9uPg0KU3VyZSwgYnV0IHRoZSBYNDEwIGFjdHVhbGx5IGluY2x1ZGVzIGEgUENJ
ZSBYOCBoYXJkd2FyZSBpbnRlcmZhY2UuIFRoZSANCnVzdWFsIHJlYXNvbiBmb3IgcHJlZmVycmlu
ZyB0aGUgUENJZSBkaXJlY3QNCiDCoCBpbnRlcmZhY2UgaXMgdG8gcmVkdWNlIGxhdGVuY3ksIGFs
dGhvdWdoIGluIHJlYWxpdHkgaXQgbWFrZXMgb25seSBhIA0KcXVpdGUtc21hbGwgZGlmZmVyZW5j
ZS4NCg0KDQo+PiBPbiBBdWcgMjEsIDIwMjMsIGF0IDEwOjU0LCBNYXJjdXMgRC4gTGVlY2ggPHBh
dGNodm9uYnJhdW5AZ21haWwuY29tPiB3cm90ZToNCj4+DQo+PiDvu79PbiAyMS8wOC8yMDIzIDA3
OjI5LCAuIEFFUk1BTiBUVUVSWFVOIHdyb3RlOg0KPj4+IEhpIFVTUlAgdXNlciwNCj4+Pg0KPj4+
IEkgYW0gdXNpbmcgVVNSUCB4NDEwLCBhbmQgd29uZGVyaW5nIGlzIHRoZXJlIHBvc3NpYmxlIHRv
IHVzZSBQQ0llIGZvciBzdHJlYW1pbmcgZGF0YSBpbnN0ZWFkIG9mIHNmcCs/DQo+Pj4gSWYgcG9z
c2libGUsIGlzIHRoZXJlIGFueW9uZSBrbm93IGhvdyB0byBjb25uZWN0IGRldmljZSB0byB0aGUg
aG9zdCBhbmQgd2hhdCBzaG91bGQgYmUgdGhlIOKAnGFyZ3PigJ0gZm9yIFVTUlA/DQo+Pj4NCj4+
PiBCZXN0IHJlZ2FyZHMuDQo+Pj4NCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KPj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tDQo+Pj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPj4gTXkgZ3Vlc3MsIGJhc2VkIG9uIGN1
cnNvcnkgaW5zcGVjdGlvbiwgaXMgdGhhdCB0aGUgUENJZSBpbnRlcmZhY2VzIGRvbid0IHlldCBo
YXZlIHNvZnR3YXJlIHN1cHBvcnQuDQo+Pg0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
