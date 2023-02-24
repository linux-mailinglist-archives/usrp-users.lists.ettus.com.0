Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F816A2096
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 18:44:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B3EC1384577
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 12:44:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677260646; bh=mLZT6tMz7IUbqZUa+dSiEKg5wP4crlCMTpbhF4GwSeE=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=QwbbABtfwtpf4PnGo9HjGP4psDLV38EQ55HtYNCbD+nUUsRIPTnyFmvGcinA+vrwF
	 Zg7Z6TLDniVCyoW0gQECOpPB7qtm49f5d8Mqv5btLCq/6o4russFk4p1H0Pp02SWdo
	 HR85l6Szh2cMmstHFwtvny9l/dhejx2fDjS+p3p9z5Gj6bIbMdKowsysITON249Pap
	 xRRLhDn1QHNt2uuPX+zc+uNCKD0Hvz9CoyoOhe4G2PsufqN4fc1fJoCfrj8uRS3Vsc
	 gVZ2FcQ+5F8im5nhdMs7GRRWwFRUvbSe2PE1onLiGlxgEtiCZcqgDaPZb9SUJ01qfC
	 eIRh6TDxlcAjg==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B9F2384506
	for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 12:43:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="G/lQQiSP";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id b6so216677qtb.1
        for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 09:43:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ycEjUaF8WgrlMyzt6ok+G/1QksEWl+ktXketLyYNuA=;
        b=G/lQQiSP5LipdWbrd8Xyp3tBPlLENiwGva0iyO981RF3pqRYmMccgtIzWcITS/6hWp
         5kI4uex9hAlB04oAnm5vifEtwgGqUx9URKRj9ChMeJHllPXCErDg8EkfDGlNZOHVV+2A
         6A8n1dKWIJIcZuENN5UGuOnIkJZJ85OO6PhPZyzWQ+bAs6vBT2QCap3wcH/bt1sGchSw
         yEr8Ry4rk8+9jdZYxMMts4SYz9B+WMdp2NnbYUXw8zh2bkUrH3JDcQKWR+mWA73jc1G1
         jMlhXdrQXJgOdAeNYU9lz5UMYND0BucfuWILcJTnTs7wGJLLWdm686wCeikWbRTDas8g
         BFMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8ycEjUaF8WgrlMyzt6ok+G/1QksEWl+ktXketLyYNuA=;
        b=tJ0Sk5OFaA3FyNPE+M8NKCjstjBpMxXATdDQnD8xrtPPo8891DXU36UrDQzMzUVT7a
         bu/BfuFVQmsCLCglHWj/pt9hCON+0VuHKSJdZ8Ygd4gJaunvXt04fTnbp8CEdLvIRyJu
         eOD3ixzPK5OJW4BMrbC/T4smM+pAyabGdM7DxdAyJebx8ORVoDVj/sqh5vrqbBkppKvN
         syqcvaud/JAEa7KnZz9/0uvVoZC6jHaiq/pgKM6kCiI1tDx9VezCcKD5v0w2/7WljAMI
         qUVOgPxwfMbKilJFgolfak4OHET+aGOlMKv2R08unKWSQP9RK4OQlTNvqATF7ce6Azn0
         Kotg==
X-Gm-Message-State: AO0yUKXM4BEd+YjRJv0zKTFYCfsT77e800sfK81gPfSsIqNv30gynIE1
	Ckrp886kILCwkC54OfZNG11Br7qUL/E=
X-Google-Smtp-Source: AK7set/JoHFQ7E3fHriSORvN/xRy9VYoD3kzivPGId+3eeSHP1sUS76o8gKcI9E1ltuOxKnMZQA2hw==
X-Received: by 2002:a05:622a:1e0b:b0:3b8:2ea9:a09c with SMTP id br11-20020a05622a1e0b00b003b82ea9a09cmr10952029qtb.1.1677260607619;
        Fri, 24 Feb 2023 09:43:27 -0800 (PST)
Received: from [192.168.2.156] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id x6-20020a05622a000600b003b82a07c4d6sm8245565qtw.84.2023.02.24.09.43.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 09:43:27 -0800 (PST)
Message-ID: <d03e3519-acff-2e4e-b9b1-a6953a67d041@gmail.com>
Date: Fri, 24 Feb 2023 12:43:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <DB6PR02MB2981E698C5CE0E3D6829D9DEE7AB9@DB6PR02MB2981.eurprd02.prod.outlook.com>
 <b3cda3ac-b1c2-5788-1fe7-14e06d710c3b@gmail.com>
 <DB6PR02MB2981F4FF97EE0FBC112DF396E7AB9@DB6PR02MB2981.eurprd02.prod.outlook.com>
 <b0bcd12f-a3e4-8c99-2d23-005ff6824217@gmail.com>
 <DB6PR02MB298163AD80446D2D087D4E52E7A89@DB6PR02MB2981.eurprd02.prod.outlook.com>
 <e03719d3-1105-8610-0949-a57c67ef0607@gmail.com>
 <CAB__hTS4D2PLxvnUFJ_TKX3F_GvDq_UcA=09cviDrJDs=DKh3w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTS4D2PLxvnUFJ_TKX3F_GvDq_UcA=09cviDrJDs=DKh3w@mail.gmail.com>
Message-ID-Hash: YZXBNZTL3EMLKJG4FM54SQFOVNJXDHMF
X-Message-ID-Hash: YZXBNZTL3EMLKJG4FM54SQFOVNJXDHMF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Peter Featherstone (XENINT)" <peter.featherstone@xenint.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: libuhd - read IQ samples without discontinuities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YZXBNZTL3EMLKJG4FM54SQFOVNJXDHMF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjQvMDIvMjAyMyAxMTowNiwgUm9iIEtvc3NsZXIgd3JvdGU6DQo+IEhpIFBldGVyLA0KPiBF
YWNoIHJlY3YoKSBjYWxsIHJldHVybnMgbWV0YWRhdGEgd2l0aCBhIHRpbWVzdGFtcC4gWW91IGNh
biB2ZXJpZnkNCj4gZWFjaCByZWNlaXZlIGhhcyBhZHZhbmNlZCBleGFjdGx5IHRoZSByaWdodCBh
bW91bnQgb2YgdGltZQ0KPiBjb3JyZXNwb25kaW5nIHRvIDE2ayBzYW1wbGVzLiAgSWYgdGhpcyB2
ZXJpZmllcywgeW91IGhhdmVuJ3QgZHJvcHBlZA0KPiBhbnl0aGluZy4gIFRoZSBtZXRhZGF0YSBh
bHNvIGluY2x1ZGVzIHRoZSBPdmVyZmxvdyBpbmRpY2F0aW9uLiBUbyBiZQ0KPiBob25lc3QsIEkg
aGF2ZSBubyBpZGVhIHdoeSB5b3UgYXJlbid0IHNlZWluZyB0aGUgIk8iIHJpZ2h0IGF3YXkuDQo+
IFJvYg0KVGhlcmUgYXJlIHNvbWUgbm90ZXMgb24gdGhlIHRyYW5zcG9ydCBoZXJlOg0KDQpodHRw
czovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV90cmFuc3BvcnQuaHRtbCN0cmFuc3BvcnRf
dXNiDQoNCkkndmUgdXNlZCAibnVtX3JlY3ZfZnJhbWVzIiBpbiB0aGUgcGFzdCB0byBoZWxwIHdp
dGggb2NjYXNpb25hbCBvdmVycnVucyANCmF0IGhpZ2hlciByYXRlcy7CoCBUaGVzZSBwYXJhbWV0
ZXJzLCBmcm9tDQogwqAgd2hhdCBJIHVuZGVyc3RhbmQsIGFyZSB1c2VkIHRvIGNvbmZpZ3VyZSB0
aGUgc2Vzc2lvbiB3YXkgZG93biBhdCB0aGUgDQpib3R0b20gb2YgbGlidXNiLCBhbmQsIG5lYXIg
YXMgSSBjYW4gdGVsbCwNCiDCoCBvbiBMaW51eCwgdGhlIHJlc291cmNlcyBpbXBsaWVkIGJ5IHRo
ZW0gYXJlIHNoYXJlZCBhbW9uZyBhbGwgDQpwcm9jZXNzZXMgdXNpbmcgdGhlIGxpYnVzYiBzdWJz
eXN0ZW0uDQoNClVIRCBieSBkZWZhdWx0IHNldHMgIm51bV9yZWN2X2ZyYW1lcyIgdG8gMzIsIGFu
ZCB0aGUgbWF4IHZhbHVlIGZvciB0aGlzIA0KYXBwZWFycyB0byBiZSB2ZXJ5IHN5c3RlbSBkZXBl
bmRlbnQsDQogwqAgYW5kIGFsc28gZGVwZW5kZW50IG9uIHdobyBlbHNlIGlzIHVzaW5nIHRoZSBr
ZXJuZWwgInJhdyIgVVNCIHN1YnN5c3RlbS4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
