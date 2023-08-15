Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E1977CE99
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 16:59:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4743B384AE1
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 10:59:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692111543; bh=OkD60uWunUR6mPtY1lItCs2SyqJnt/s1lqoo1dinOZw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=UAvM42s0c9bXwDBCpXRZ1t8Ke0/sai6Su+xNjNvg9LesiY81XrqdgVbdteNnCSaJ2
	 LBw/2fR0/IB3FTzTISYQwzIarGtH0T30XhkwZaUfxdw9XmE2sJ+y/i4KY6ABXEoXRF
	 4wwvjVi/TPXUvFliDxFz2etdr36KV57EyBWa8HBQWiGga7esRHMkYHLCLX2jw6MY64
	 kvHqzBJTgeS5/CdbAivUYh1dRo2z46P+jtNx9/yj/v2UNll6rR4NKCNdvaz5OD3cOW
	 yZSzzUkcdkpSCH1Zfldc9G4Y4LgJJLVRIFmdzw20/fgtaP9kCmUqO+zSWNTx6qDwUm
	 qOLX2APMAZYJQ==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 3EEA238007C
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 10:58:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="M5O22qH4";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6418dd60676so29316536d6.2
        for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 07:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692111529; x=1692716329;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XZNz7w0WiAL13Xwpz465QJjR5pDnevzugzMo6m51JrM=;
        b=M5O22qH4XgFXqB6EjZTQ2GfnH+f3AULWlJptWs+MO1/Gh0uycGElTdXdhJ3klenPyF
         GhxU2BsiUW+7402uVNt+Mh2ipU77QFl4uEuvo68c5pgCH+O5CFPtDxsE3aOPxAfgqDe0
         ZYFZTd0tano60F6Y9k+OMcTAGV+jektu3aMoBs9HUX3mXoiobfvA+aUDxme/VIXvp4mU
         U/Q/qYH/JBIJhZ+Ovb3n82s6RuRxRC3Nxx8RBq4WAMvIPHZbB6017XmUEbQ5arl84iEk
         763IzjUejAdRwkHpu+Hcrbd2OqX7OU2+stNln5/a64KNCiTMtodmtjiY0zGgTyiDJ2pp
         DwjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692111529; x=1692716329;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XZNz7w0WiAL13Xwpz465QJjR5pDnevzugzMo6m51JrM=;
        b=PhvmB0elAyyYC0+fjSm1tRamlIvAqXO4Jd5tqKlnPdgnQvmZpmSGMIlxCq0D8FN0fc
         9UCV8Y9XwAl7gQsZAMbfOJe/M2y8IUzjw46x2UXxUbZB4I/Lukq7atWq5e9+NPf3xrh3
         cWI0QRdBfN6NefW9eWuJJ5Y9i1VgbL45ev8nlEcC2xZV8Yvj7Jz2rQgqtdvsVcHxh1Mh
         ytFZHkaK1s8uc6CWxb6Zn+liIPuT0EqSydurm/RJhvSExyPSIKsmD5ro+BbphyPSQjot
         MShgHRmJvtHxg0ELOdzE1hPA/366iHNIo0GbbjlwlWitSxp3jiy9KD9dUo2Di5XpsuEc
         AF6Q==
X-Gm-Message-State: AOJu0Yz94zOweYsvTwiy4lYaQ82PDvQxEI8gFfDzTwPKMxBGWzaboFav
	CBZjkDAkMFZNpnUl9rB27spZcrDMsyY=
X-Google-Smtp-Source: AGHT+IFbk+T6cVq5mckUEzVoS6PIlBhhxFqiZ4x4bCrBPwc/vvaBfZcnjED4hQvi8zkcDAZlMscSSQ==
X-Received: by 2002:a0c:b4d9:0:b0:63d:d83:8808 with SMTP id h25-20020a0cb4d9000000b0063d0d838808mr12571503qvf.63.1692111529382;
        Tue, 15 Aug 2023 07:58:49 -0700 (PDT)
Received: from [192.168.2.193] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id o12-20020a0ce40c000000b0063d561ea04csm1279112qvl.102.2023.08.15.07.58.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 07:58:49 -0700 (PDT)
Message-ID: <5ae6a11b-aaa2-fa07-4de1-d83c8f57a433@gmail.com>
Date: Tue, 15 Aug 2023 10:58:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAEtk-vU2oUedb9wutZLcQhJBSXJN0Gob6WAxmUtVTs-66sa3Cg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEtk-vU2oUedb9wutZLcQhJBSXJN0Gob6WAxmUtVTs-66sa3Cg@mail.gmail.com>
Message-ID-Hash: IU23WNKLWANADWL5HDUT7YGTHWXRP36V
X-Message-ID-Hash: IU23WNKLWANADWL5HDUT7YGTHWXRP36V
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 not found and power cycle needed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IU23WNKLWANADWL5HDUT7YGTHWXRP36V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTUvMDgvMjAyMyAwMjo0MywgRnJhbmNpc2NvIEdhbGxhcmRvIGzDs3BleiB3cm90ZToNCj4g
SGksDQo+DQo+IFdlIGhhdmUgYSByZW1vdGUgc3RhdGlvbiB3aXRoIGFuIFVTUlAgQjIxMC4NCj4N
Cj4gV2Ugb2JzZXJ2ZWQgdGhhdCBzb21ldGltZXMgdGhlIHJlbW90ZSBtYWNoaW5lIGNhbm5vdCBm
aW5kIHRoZSBVU1JQIA0KPiBCMjEwIChJIHRoaW5rIGl0IGhhcyB0byBkbyB3aXRoIHVuY29udHJv
bGxlZCBwb3dlciBjeWNsZXMsIGJ1dCBJIGFtIA0KPiBub3QgMTAwJSBzdXJlIGFib3V0IHRoZSBy
b290IGNhdXNlLiBUaGUgcG9pbnQgaXMgdGhhdCBzb21ldGltZXMgaXQgDQo+IGhhcHBlbnMpLg0K
Pg0KPiBUaGUgb25seSB3YXkgdG8gc29ydCBpdCBvdXQgaXMgdG8gZGlzY29ubmVjdCB0aGUgcG93
ZXIgc3VwcGx5IGFuZCB0aGUgDQo+IFVTQiBjYWJsZSBmcm9tIHRoZSBVU1JQLCBhbmQgdGhlbiB0
aGUgcmVtb3RlIG1hY2hpbmUgY2FuIGRldGVjdCBpdCANCj4gYWdhaW4uIGkuZS4gZG9pbmcgYSBj
b21wbGV0ZSBwb3dlciByZWJvb3QgdG8gdGhlIFVTUlAuDQo+DQo+IEl0IGlzIG5vdCBhIGtpbGxl
ciBiZWNhdXNlIHRoZSBwcm9ibGVtIGlzIG5vdCBhbHdheXMgaGFwcGVuaW5nLCBidXQgaXQgDQo+
IGlzIGFubm95aW5nIGJlY2F1c2UgaXQgaW1wbGllcyBzZW5kaW5nIHNvbWVib2R5IHRvIGRpc2Nv
bm5lY3QgYW5kIA0KPiBjb25uZWN0IHRoZSBVU1JQIEIyMTAgY2FibGVzLg0KPg0KPiBJcyBhbnli
b2R5IGV4cGVyaWVuY2luZyBhIHNpbWlsYXIgaXNzdWU/IEFueSBpZGVhIGhvdyB0byBmaXggaXQ/
DQo+DQo+IFRoZSByZW1vdGUgbWFjaGluZSB1c2VzIFVidW50dSAyMi4wNC4zIExUUyBhbmQgdGhl
IFVIRCBkcml2ZXJzLg0KPg0KPiBUaGFua3MhDQo+IEZyYW4NCj4NCkkndmUgc2VlbiB0aGlzIHNw
b3JhZGljYWxseSB3aXRoIEIyeHggb3ZlciB0aGUgeWVhcnMgSSd2ZSBiZWVuIHVzaW5nIA0KdGhl
bS7CoCBGb3IgZXhhbXBsZSwgb24gc29tZSBoYXJkd2FyZSwgdGhlIHN5c3RlbSBjYW5ub3QNCiDC
oCBzZWUgdGhlIGRldmljZSBvbiByZWJvb3QsIGFuZCB5b3UgaGF2ZSB0byByZXBsdWcvcG93ZXIt
Y3ljbGUgZm9yIHRoZSANCnN5c3RlbSB0byBldmVuIHNlZSBpdC4NCg0KV2hlbiB0aGlzIGhhcHBl
bnMsIGRvZXMgaXQgc2hvdyB1cCBpbiAibHN1c2IiID8NCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
