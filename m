Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BA68074C5
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 17:20:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5EA2A3851DB
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 11:20:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701879600; bh=QjxTDRV7+Pkb3EcVnqFr8n7DXeB4I6UmHw/qxW0pYeE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=QSoqLfJtJq4MPjfbetnSGsTdqi69fWBZsYevAsb+SUE1tE/O8SrwJ/VPmJotBdxQL
	 ZoH64dUtLQqJWmXxzozaQulcyeqTVSUbtMWiIWkoLJ7yI90jfTVZg7PCCU/fC0vS/z
	 u4QDa5oc/L0LSHUdKpAwWmlJhNs3958vVr2B6cYruTzaCbOcijR+pHIdV/zScvmCAR
	 A2MduapfRXKr+Ak4UACW8zLIi+gRh6nf4qA9jggP9HvIL+vfcoZiFJPzvBAXw/oY5G
	 +V2r454V5KaI1zpHXc18SoKlsMSLGpDdTVLlwyBsUwwRJUrwJw8bHV+pGAM3MsOu1z
	 DPaDV4EaY8vJg==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id CCB11384F8A
	for <usrp-users@lists.ettus.com>; Wed,  6 Dec 2023 11:19:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aazT6Q/c";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-77f2f492a43so35712085a.2
        for <usrp-users@lists.ettus.com>; Wed, 06 Dec 2023 08:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701879570; x=1702484370; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GNVaM5qX5LpZmgs1TBj1rXKtmxEg3IaBj1+z02ogMWM=;
        b=aazT6Q/cgCj7Dl3ZinxAPNrw8jVAdG5O9eHxLagdws+aalFXvoR0tyUBRqYt1M+EHv
         M3FjfPG3HTyT2kwBNCl/5NGHGsjRZvdwPuGOq/8Nh0YfS75kWJrR9mraiqrFMWLpgyl8
         eiAy3+8DdQ1VCX3kADt9nImpdNU63Ol5QJ6+xanWhiqJc59ka6fNX84dMmhiIdQi7z5n
         bNOT4O6B9E+nkIdS9nFQZmNZfO2jMRU3s9ManGxM7nbwldP6UlLIZUp7w5ebO6Hc367e
         ohygScX+kLPZJL7KPSxCXm6Qymmo7Cd/s3MIfp9v1Pm0iAhk3WOZ/t8fU/HMviMbMgja
         HQVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701879570; x=1702484370;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GNVaM5qX5LpZmgs1TBj1rXKtmxEg3IaBj1+z02ogMWM=;
        b=iVNQSkiCRJDw6nVn/OI3N4dXW2ig3BHi/ZWPuG3JaRiAGZbxiUNWMPrQgD5X+4VcAB
         nTFTHWjeaVuGRJutaU6xDxqxN3hlQMrBYBk5DX92VNUnLoL9mIdbSC0MmAiuZuwsbn5U
         eMx6Hv+bpi6c7KjFiAKdfmOLwBLI28GyuOyfb78f2WYEKOsZIP7jb136os6M+GYU4Dof
         LrtM7TT242AGIxgetuze8XeaOCoxNceRbs2Upbv1idm3BApgesV+GDaInMdCc2YTZ/xU
         +bB6uIgdkHMFuHvJyd5EDHjBfyBT24J+Tq46Uu9EtdeOJJxG/zlLxD+ZyqaiQt6+LtcU
         aNaw==
X-Gm-Message-State: AOJu0YxoYK1pKKZd/J9faz0x8Uc2Rq7FtmGhx0mwDbP3FrUF78L2UMDp
	Ra2DGy4r6AYV38zZWvNRj9uhz1kJ+ic=
X-Google-Smtp-Source: AGHT+IEL45+fRzgoHlyhLlJlH8mZ3o75+IXdRhB3SO/pbjJaZkT2qExITuxVAWc3IFuFiUlMFDJ3QA==
X-Received: by 2002:a05:6214:5592:b0:67a:a721:cb1a with SMTP id mi18-20020a056214559200b0067aa721cb1amr1113270qvb.123.1701879570184;
        Wed, 06 Dec 2023 08:19:30 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-146.dsl.bell.ca. [174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id de8-20020ad45848000000b0067a4f49a13csm83924qvb.127.2023.12.06.08.19.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 08:19:29 -0800 (PST)
Message-ID: <f15f8de1-2c4c-4a5a-9488-b4a416d32523@gmail.com>
Date: Wed, 6 Dec 2023 11:19:29 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <QpCVeTMaowTKyyP9BYa3jgPsUyl7o1CFdQvrmBTKzo@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <QpCVeTMaowTKyyP9BYa3jgPsUyl7o1CFdQvrmBTKzo@lists.ettus.com>
Message-ID-Hash: FJQRKM2GTEEWF7XK6JNRTACR75YGWASV
X-Message-ID-Hash: FJQRKM2GTEEWF7XK6JNRTACR75YGWASV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FJQRKM2GTEEWF7XK6JNRTACR75YGWASV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMTIvMjAyMyAxMToxNywgcHVydmEuam9zaGlAcGhkLnVuaXBpLml0IHdyb3RlOg0KPg0K
PiBEZWFyIE1hcmN1cywNCj4NCj4gTWFueSB0aGFua3MuIFdoZW4gSSB0cmllZCB0byB1cGRhdGUg
dGhlIGltYWdlIHRvIG15IFNEIGNhcmQgb24gbXkgaG9zdCANCj4gUEMsIG15IFBDIHN0b3BwZWQg
d29ya2luZyBhcyBpdCBzaG93ZWQgbWUgYW4gZXJyb3IgZm9yIEJJT1MgVUVGSSANCj4gVXRpbGl0
eSBib290IG1vZGUuIE9uY2UsIEkgd2lsbCBmaXggdGhpcyBidWcsIEkgd2lsbCB0cnkgeW91ciBz
b2x1dGlvbiANCj4gYW5kIExldCB5b3Uga25vdyBzb29uLiBIb3dldmVyLCB0aGFuayB5b3UgZm9y
IHlvdXIgYWx3YXlzIHN1cHBvcnQuDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NClRoYXQgc291bmRzIGxpa2UgeW91IHRy
aWVkIHRvIHdyaXRlIHRoZSBpbWFnZSB0byB0aGUgd3JvbmcgZGV2aWNlLCBhbmQgDQptZXNzZWQg
dXAgeW91ciBib290IHBhcnRpdGlvbiBvbiB5b3VyIGhvc3QgUEMuDQoNCkl0J3MgcmVhbGx5IHJl
YWxseSBpbXBvcnRhbnQgdG8gbWFrZSBzdXJlIHlvdSdyZSB3cml0aW5nIHRvIHRoZSBjb3JyZWN0
IA0KZGV2aWNlLsKgIFRoaXMgaGFzIG5vdGhpbmcsIHBlciBzZSwgdG8gZG8gd2l0aCBVSEQsDQog
wqAgYnV0IGp1c3Qgb3JkaW5hcnkgc3lzdGVtLW1hbmFnZW1lbnQgc3R1ZmYuDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
