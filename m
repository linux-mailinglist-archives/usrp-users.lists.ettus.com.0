Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC40A6A0344
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 08:24:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0B78E3840CA
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 02:24:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677137091; bh=AE0iTdIV86Y8BIjZOZq8LsnMIj2rORCun7ZgOx4HpaA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=OVaH79f0lb9peZczBT2JVptqmucVOcamkKro/lNTmGxXI+eEJ48ga0zAuDvLO8ISB
	 XNHb1pvBxTTQ0KEYgomm6DkZG4viMs+II3i4L/yZ2DGQ70/V/upyEgOmEPFGkGxnFb
	 aGdmer2Ef0b8olmd3j+gvduL1j+yEzW8u84OelnEinFYZCY7zwQ2jiPOyQOzGncGWR
	 WZHkHXVk7Id6nM7PW4X0JN64nXYv2YRMcYK6smml0kSj431gSOEnLQOA8yPBJmhqr7
	 UngcqTQwgyhMQsCBvnrFr0gtGWg5GpitcEbyh+G5P+s/MdbWaZ8A+2OTLfiMUN8YCd
	 CF8zBZIZOi4xQ==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id EC6D93840CA
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 02:24:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nNzcZ+Wb";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id op8so10991329qvb.11
        for <usrp-users@lists.ettus.com>; Wed, 22 Feb 2023 23:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GwmRlmQX9ewXH7gJnyJyNWb/VAW0BFbQ3EJGOxhJk3Y=;
        b=nNzcZ+Wb5t2SWjgy4MmZuYOcQNTTtI7TWY68SlbTDgZeSAuxasiZ3cnD6HO0YJXaZD
         1ozXocTsJwUg9xcXJ3mkiVjZcATW7rHOeW4KVnsKkH3OINN1BzhJ/Jkh1IUVf+LA1hJ6
         BJLu3zcZWLdptITUyKG2+zxyCc9LDw/PsHmDdFMC46EQhSlQWZ8xIkyTGnLo7aSucOgU
         q9blGvUlgc3ccZF9qzgeAxJuC6NNxiCK02NBVe1NzpNlw5QYkbc3jYga0giQCoBsBZi2
         0F5uxf45JlJXUcTAJSYjio24vYdD5CzMi9R82K2vEvJbpp9UiqOoRnECP9Hc21Qkmn8w
         zdpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GwmRlmQX9ewXH7gJnyJyNWb/VAW0BFbQ3EJGOxhJk3Y=;
        b=xg7CI/zpaPl0XLqNB17n9+/LBAwVSOIXL+BZYRYFzDUv+cR1uH8ifN8X/gL6d8e8WR
         tnp+gZVI3EA6yGMkivScL1VW3mQ6liBGnGS9F/5/mEeVlodB3ycn3Jm0M2QWP6Euoaq9
         Yafh8Fpe5IDI5ADa9bVRMH2sm5rlngBjKNieHYCfUE/B2l0te7VI71JAJJeg375aRbfD
         iCfBd3Ia6svENHUcUF0j6jmSLIPIXuvda9KO06+wnO8ezK0/em9UMWpXGpt+59A2FCmx
         xPbY/C28It+6hRclL5KvP4eOsjkevrmTGPChDhc7dx1GbWf2jQg5ycp2AE8g5AkcWEHo
         6Itg==
X-Gm-Message-State: AO0yUKV8RScQiP6oqTsQyDB73pUSbtqHPyTWBOAKB0eDiO+pq2sL4VX7
	+5YSyUhw0a+XjFq+PYECTW+6LGk1Ao8=
X-Google-Smtp-Source: AK7set9FeUS5uVEhPw3CYNVRpLKOiQE+Qr+QPfaS0G/B3eJhV5bCcHp83RLZbH5sbCfDncNQQJVrUw==
X-Received: by 2002:a05:6214:2aaa:b0:56b:ff69:7df8 with SMTP id js10-20020a0562142aaa00b0056bff697df8mr16342291qvb.51.1677137084048;
        Wed, 22 Feb 2023 23:24:44 -0800 (PST)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id z7-20020ac875c7000000b003b2d890752dsm9048858qtq.88.2023.02.22.23.24.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Feb 2023 23:24:43 -0800 (PST)
Message-ID: <b1735491-697f-e19c-36eb-8452a22e4021@gmail.com>
Date: Thu, 23 Feb 2023 02:24:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <uha8yb8Y42db0RlmUn44vZgPSebbGEYo14wZncYhQ@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <uha8yb8Y42db0RlmUn44vZgPSebbGEYo14wZncYhQ@lists.ettus.com>
Message-ID-Hash: N7ZHWFZ43EDLDR2PX7VFOWVAQYPMVC7Z
X-Message-ID-Hash: N7ZHWFZ43EDLDR2PX7VFOWVAQYPMVC7Z
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wrong Measurement Results
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N7ZHWFZ43EDLDR2PX7VFOWVAQYPMVC7Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjMvMDIvMjAyMyAwMjowMiwgaGVucnkucG93ZWxsLnh4QGdtYWlsLmNvbSB3cm90ZToNCj4N
Cj4gSSB3YW5uYSBtYWtlIHRoaXMgb3BlcmF0aW9uIGluIGZhci1maWVsZCBzbyBpIGNhbGN1bGF0
ZWQgZnJvbSAoMkReMikvzrsgDQo+IGFuZCBtYWRlIHRoaXMgZGlzdGFuY2UgYWxtb3N0IDJtZXRl
ci4gTXkgaG9ybnMgYXJlIGdvb2QgYXQgNEdIeiBpIGFtIA0KPiB3b3JraW5nIGF0IHRoaXMgZnJl
cS4gSSBhZGp1c3QgUlggYW5kIFRYIGdhaW4gd2l0aCByYW5nZSBvcGVyYXRvciBpbiANCj4gR05V
LCBJIG1lYW4gZm9yIHRoZSBvYnNlcnZhdGlvbiBJIGFtIGNoYW5naW5nIGdhaW4uIFRvIHNlZSB0
aGUgc2lnbmFsLCANCj4gSSBuZWVkIHRvIG1ha2UgNzBkQiBnYWluIHNvIGkgc2V0IDMwZEIgUlgg
Z2FpbiBhbmQgNDBkQiBUWCBnYWluLiBJIA0KPiByYWlzZWQgZ2FpbnMgNjBkQiBmb3Igb2JzZXJ2
YXRpb24gYnV0IG5vdGhpbmcgY2hhbmdlLiBCeSB0aGUgd2F5LCBpZiANCj4gdHggZ2FpbiBpcyBh
dCA0MGRiIGFuZCByeCBnYWluIGlzIGF0IDMwZGIsIHRoZSBzaWduYWwgbGV2ZWwgaXMgLTc1ZEIu
DQo+DQo+IFRoYW5rcyBmb3IgdGhlIGFkdmljZS4gSSB3aWxsIHRyeSBhdHRlbnVhdG9yLg0KPg0K
Pg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tDQpUaGUgYWJzb2x1dGUgbWF4aW11bSBwb3dlciBvdXRwdXQgb2YgdGhlIFVTUlAgQjIw
MCBhdCA0R0h6IGlzIHByb2JhYmx5IA0Kbm8gYmV0dGVyIHRoYW4gKzdkQm0sIGFuZCB0aGUgZ2Fp
biBjb250cm9sIHJhbmdlDQogwqAgb2YgVFggaXMgYXJvdW5kIDgwZEIuwqAgU28gYXQgYSBUWCBn
YWluIHNldHRpbmcgb2YgNDBkQiwgeW91J3JlIGF0IA0KYWJvdXQgLTMzZEJtIGNvbWluZyBvdXQg
b2YgdGhlIFRYIGhvcm4uDQoNCkZvciBSWCB0aGUgbWF4aW11bSBnYWluIHNldHRpbmcgaXMgYWJv
dXQgNzJkQiBhcyBJIHJlY2FsbC7CoMKgIFNvLCB5b3UnbGwgDQpoYXZlIGFib3V0IDQwZEIgYXR0
ZW51YXRpb24gaW4gcGxhY2UgYmV0d2VlbiB0aGUNCiDCoCBmaXJzdCBhbmQgMm5kIGdhaW4gc3Rh
Z2VzIGluIHRoZSBSWCBzaWduYWwgY2hhaW4uwqAgV2l0aCBzdWNoIGEgc2hvcnQgDQpwYXRoLCB0
aGlzIHdvbid0IG1hdHRlciBtdWNoLCBleGNlcHQgeW91ciBub2lzZSBmaWd1cmUNCiDCoCB3aWxs
IGJlIHF1aXRlIHBvb3IuDQoNCkZ1cnRoZXIsIHRoZSBudW1iZXJzIGNvbWluZyBvdXQgb2YgR251
IFJhZGlvIGFyZSAqdXR0ZXJseSANCnVuY2FsaWJyYXRlZCouwqDCoMKgwqAgVGhlIGhhcmR3YXJl
IGFuZCBzaWduYWwgcHJvY2Vzc2luZyBjaGFpbg0KIMKgIHdpbGwgZ2VuZXJhbGx5IGtlZXAgdGhl
IHBvd2VyIHJlbGF0aW9uc2hpcHMgbGluZWFyLCBidXQgeW91IGhhdmUgb25seSANCnRoZSB2YWd1
ZXN0IGlkZWEgb2Ygd2hhdCBhIHNpZ25hbCBkaXNwbGF5aW5nIGFzIC03NWRCDQogwqAgaW4gYSBH
bnUgUmFkaW8gRkZUIGFjdHVhbGx5ICptZWFucyogd2l0aCByZXNwZWN0IHRvIGFjdHVhbCByZWNl
aXZlZCANCnBvd2VyIGxldmVscy7CoCBXaGF0IHlvdSBkbyBrbm93IGlzIHRoYXQgdHdvIHNpZ25h
bHMNCiDCoCB0aGF0IGRpZmZlciBieSAobGV0J3Mgc2F5KSAxMGRCIGF0IHRoZSBhbnRlbm5hIHRl
cm1pbmFscyB3aWxsIGJlIA0KZGlzcGxheWVkIGFzIDEwZEIgZGlmZmVyZW50IGluIGFuIEZGVCBk
aXNwbGF5LsKgwqAgVGhhdCB3aWxsDQogwqAgYmUgdHJ1ZSBhcyBsb25nIGFzIHlvdSBzdGF5IGF3
YXkgZnJvbSB0aGUgImVkZ2VzIiAtLSB5b3Ugd2FudCB0byBiZSANCndlbGwgYWJvdmUgdGhlIHN5
c3RlbSBub2lzZSB0ZW1wZXJhdHVyZSBhdCB0aGUNCiDCoCBib3R0b20gZW5kLCBhbmQgd2VsbCBi
ZWxvdyB0aGUgcG9pbnQgd2hlcmUgYW5hbG9nIG9yIHNhbXBsaW5nIA0Kbm9uLWxpbmVhcml0aWVz
IGNyZWVwIGluLg0KDQpGdXJ0aGVyIHRoaW5ncyB0byBjb25zaWRlci7CoMKgwqAgSXMgeW91ciBW
TkEgYSBzd2VwdCwgYW5hbG9nLCBWTkEsIG9yIA0Kc29tZXRoaW5nIG1vcmUgc29waGlzdGljYXRl
ZCBhbmQgZGlnaXRhbD/CoCBJZiBpdCdzDQogwqAgZGlnaXRhbCwgYW5kIHVzaW5nIGFuIEZGVCBm
b3Igc3BlY3RyYWwgZGlzcGxheSwgaXMgaXQgdXNpbmcgdGhlIHNhbWUgDQp3aW5kb3dpbmcgYW5k
IHNjYWxpbmcgZnVuY3Rpb25zIGFzIEdudSBSYWRpbz8NCiDCoCBMaWtlbHkgbm90Lg0KDQpUaGF0
IHlvdSdyZSBtZWFzdXJpbmcgcmVhbC13b3JsZCBFTSBwcm9wZXJ0aWVzIG9mIGEgcGFpciBvZiBh
bnRlbm5hcywgDQphbmQgZmluZGluZyB0aGF0IHR3byBkaWZmZXJlbnQgaW5zdHJ1bWVudHMgcmV0
dXJuDQogwqAgc2xpZ2h0bHkgZGlmZmVyZW50IHJlc3VsdHMgaXMgbm90LCBpbiBmYWN0LCB0aGF0
IHN1cnByaXNpbmcuDQoNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tCg==
