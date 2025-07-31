Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE4EB17364
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 16:49:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2950D386409
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 10:49:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753973378; bh=SmT2CDpJ+yDR01A+e/LX5+5Beqf9Z4E4kVHC43k3wb8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hpRhOHBiSwgkGCApzRVc2TSSPlAyC1WViwLpvuPAvVnuV+ql4pDLKE2SBJuU9FGCr
	 ghPULDA3RH2CGUxgyKPHEyFv3Tds5Ak6+byFCks9payLyP4pc5/7ev74LWKSHNHia8
	 eHDY+PzyKjPw5sNrcr1pQ8JCvon3vz/spA6ngBiFL1+qbRydGBBJta5akUrnO0kMlv
	 IGnkL1F9SoyhBR7OoJ6W4DhAA7EEUXeMLAkbiQlePcyUP9K6mtMbYaCxJ+jHNk4CLM
	 T7MLYsiNCD0D9+eJEEMUj31j8BLiLTLCZZ43fbgAMlVvosuPKKt9HhQxvybuKMUcTU
	 7PQ8jsJRNY8kQ==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id A3CB13863C7
	for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 10:49:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kb5InkTR";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7e32c9577ddso96745485a.0
        for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 07:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753973349; x=1754578149; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YiETLpGeerd7o71CrRaY0mSjv/7u3ZNHSa4AjQspF8E=;
        b=kb5InkTRLK8MwWhaG2Ta26ytmtvqZxDPAeYYJ776TXor6VA3of5FwmRGGtLd4vUP8r
         J7mct1e8XHdh6b77uy9PAPLFBfJPZpbH+1DKb6c7X26Paipn+icGkzhiCZPf+1IdB2y3
         UsFYAzV7F0lN0AT2BOTDnBmjiLZe4/sWJzUKIkR+1Z/HqjTmoSEYh6ebR1brYHgH+zEg
         /dKi6sgCEJt1+Gb9azOZCKJnPNnem7swBYWmbYfX4hs7C3FcuS229BYBt+cqVjrpXNkW
         +VbZYEPHJybUEobNQiJU7fLakMt+x9IN5ExAtGXCJ87RfRT0T64WiSfUQq2qjRYI1LMt
         bWKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753973349; x=1754578149;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YiETLpGeerd7o71CrRaY0mSjv/7u3ZNHSa4AjQspF8E=;
        b=gtkWtO3jgwtSAk7Mel66tMduHkNRzEP3+96pa+2CKFBFFzVrSAO0cGbSsbMzJ0xmtn
         qRu960loZZUXfjzHthSpX+R8a6kmzta0VTfvWDDQl3EMkiDnIL47FCGvrkcgBAWAymTv
         7v0Gk+gutRb2qEbFD2ZLXSJO8OQxK0trMrHxM2K8ceEn+2YY6C1AlcrcNdiPaqKGjbae
         pPZSIMMS+vdsXsyH2TX1qmCHyDH4N2h8DkeMRvKJSEFc93IxG4VvbAyZB6Q1qR5GYMGN
         573icNXqVbsnaYU7Q9k71FU29oXsQj6or8Zrg7h4i2U5sGAFEVJ8ojSeQHEt7RRsnTlj
         4lTA==
X-Gm-Message-State: AOJu0YwIvN7Yqk9nFZ7U1auF28X6674yG86DoS6Jrgn+7CvXedHDpXPT
	oqpVy5zW76ImuVfaiAXhfJmwdcY41siyr+pN7RJ3Kd4MP+bxn4VduGZeyoEOxg==
X-Gm-Gg: ASbGncsb4fpIRTjo2lsmbFBJogTOrCItL2Rftpt/4ovYheWpxW8PI0fStpNXjt+Va3v
	ohC6cvfl0E95h1ywx+Ijksoki7W7BEOCPgQmvPqee5/+hEzvkSCctI1XjvlhLptDRaf/PRyrI+0
	VPPIu7xMgqUvJyyTj5LkrjUNXNOSt12mQ40xCMydWGl15+HPiRno8ihMlNHUIcbM5xYZWDZ1OmP
	/RTUi0KURqXV4O2eGlHU7tsG81jX5bbmVUmPrGvtCpqoAQuMSQLkycbmiJOK/FZhNukG7v2WEtI
	LW0qePKVmes6nvKKUzvHumx1PCNviK2alpDT+yrRmZbCTNFF0bqmEXX0NMe2Wlye+EOCxmKRCwN
	4ulkFWOdLRWC1wcm5UV4+bDaVX8bqIF6IlSKhqlVN5g==
X-Google-Smtp-Source: AGHT+IHaMah2kAkXy877o7L095KWwcUl8ZxoQD2tVOkpY54kWkam9egNhWoDG/ruUtek8X8/w/H5sQ==
X-Received: by 2002:a05:620a:444d:b0:7e6:391c:41ae with SMTP id af79cd13be357-7e66f3b0047mr956889985a.58.1753973349494;
        Thu, 31 Jul 2025 07:49:09 -0700 (PDT)
Received: from [192.168.2.208] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7e67f5c30ffsm94094885a.33.2025.07.31.07.49.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 07:49:09 -0700 (PDT)
Message-ID: <dbfaeec2-5f95-4447-a6c4-4b79b5f7f249@gmail.com>
Date: Thu, 31 Jul 2025 10:48:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <fWj6MRI5rIJLRu5Z8SjLUqE2poC1Ckawlvp0SQtY0@lists.ettus.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <fWj6MRI5rIJLRu5Z8SjLUqE2poC1Ckawlvp0SQtY0@lists.ettus.com>
Message-ID-Hash: GJ4NTG3ZJWSQWL3JQLA5ZXDXME6E4FAM
X-Message-ID-Hash: GJ4NTG3ZJWSQWL3JQLA5ZXDXME6E4FAM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Underflow Issue During Transmission and Reception with USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GJ4NTG3ZJWSQWL3JQLA5ZXDXME6E4FAM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyNS0wNy0zMSAxMDowNSwgZ2VjaGIyMUBnbWFpbC5jb20gd3JvdGU6DQo+DQo+DQo+IFdo
ZW4gSSBydW4gdGhlIGZvbGxvd2luZyBjb21tYW5kOg0KPg0KPiAvdXNyL2xpYi91aGQvZXhhbXBs
ZXMvdHhfc2FtcGxlc19mcm9tX2ZpbGUgLS1mcmVxIDI0ODRlNiAtLXJhdGUgM2U2IA0KPiAtLWdh
aW4gMTAgLS13aXJlZm10IHNjMTYgLS1yZWY9aW50ZXJuYWwgLS1maWxlIA0KPiAvaG9tZS91YnVu
dHV0eC91aGQvZXhhbXBsZXMvdHhfdHJhbnNtaXRfZGF0YS5kYXQgLS1yZXBlYXQNCj4NCj4gVUhE
IGdlbmVyYXRlcyB0aGlzIHdhcm5pbmc6DQo+DQo+IOKAnFRoZSByZXF1ZXN0ZWQgaW50ZXJwb2xh
dGlvbiBpcyBvZGQ7IHRoZSB1c2VyIHNob3VsZCBleHBlY3QgDQo+IENJQ8Kgcm9sbG9mZi7CoFNl
bGVjdCBhbiBldmVuIGludGVycG9sYXRpb24gdG8gZW5zdXJlIHRoYXQgYSBoYWxmYmFuZCANCj4g
ZmlsdGVyIGlzwqBlbmFibGVkLuKAnQ0KPg0KPiBUaGUgdHJhbnNtaXNzaW9uIGFwcGVhcnMgdG8g
cnVuIHdpdGhvdXQgZXJyb3JzLCBidXQgSSBkb27igJl0IHNlZSBhbnkgDQo+IHNpZ25hbCBvbiB0
aGUgc3BlY3RydW0gYW5hbHl6ZXIuIENvdWxkIHlvdSBwbGVhc2UgY2xhcmlmeSB3aGF0IHRoaXMg
DQo+IHdhcm5pbmcgbWVhbnMgYW5kIGlmIGl0IG1pZ2h0IGJlIHJlbGF0ZWQgdG8gd2h5IHRoZSBz
aWduYWwgaXNu4oCZdCANCj4gc2hvd2luZyB1cD8NCj4NCj4gVGhhbmtzLg0KPg0KPg0KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpZ
b3UgaGF2ZW4ndCBzYWlkIHdoaWNoIGRhdWdodGVyY2FyZChzKSB5b3UgaGF2ZSBpbnN0YWxsZWQs
IHNvIHRoYXQgd2lsbCANCmZhY3RvciBpbnRvIHRoZSBhbnN3ZXIuDQoNCkJ1dCBhIGNvdXBsZSBv
ZiBtYWluIHBvaW50czoNCg0KM2U2IFNQUyBkb2Vzbid0IGRpdmlkZSB0aGUgbWFzdGVyLWNsb2Nr
IG9uIHRoZSBYMzEwIHByZWNpc2VseSAoZGVmYXVsdHMgDQp0byAyMDBNSHopLCBzbyBVSEQgd2ls
bCBmaW5kIGEgcmF0ZcKgIHRoYXQgaXMgY2xvc2UgdGhhdCBET0VTIHNhdGlzZnkgdGhlIA0KcmVx
dWlyZW1lbnQgdGhhdCB0aGUNCiDCoCBzYW1wbGUgcmF0ZSBiZSBhbiBpbnRlZ2VyIGZyYWN0aW9u
IG9mIHRoZSBtYXN0ZXIgY2xvY2sgcmF0ZS4NCg0KSU4gQURESVRJT04sIHRoZSByZXN1bHRpbmcg
cmF0ZSBwcm9kdWNlcyBhbiBpbnRlcnBvbGF0aW9uICpmYWN0b3IqIHRoYXQgDQppcyBvZiBvZGQg
b3JkZXIsIHNvIHRoZSBmaWx0ZXIgYXJyYW5nZW1lbnQgaW4gdGhlIERVQyAodGhhdCByYXRlLWNo
YW5nZXMgDQp5b3VyDQogwqAgZGVzaXJlZCBzYW1wbGUgcmF0ZSB0byB0aGUgcmF0ZSB0aGF0IHRo
ZSBEQUNzIG9wZXJhdGUgYXQpIHdpbGwgDQpwcm9kdWNlIGEgdHlwaWNhbCBoYWxmLWJhbmQgcm9s
bC1vZmYuwqAgVGhpcyBpcyBub3JtYWwgd2l0aCBEVUMvRERDIA0KaW1wbGVtZW50YXRpb25zIG9m
DQogwqAgdGhpcyB0eXBlLg0KDQpTbywgaWYgeW91ciBkYXRhIGFyZSBzYW1wbGVkIGF0IGV4YWN0
bHkgMy4wME1TUFMsIHlvdXIgZW50aXJlIFRYIA0Kc3BlY3RydW0gd2lsbCBiZSBzb21ld2hhdCAi
b2ZmIiwgYnV0IHNob3VsZCBzdGlsbCBzaG93IHVwLsKgIFdoYXQgDQpkYXVnaHRlcmNhcmQocykg
YXJlIHlvdSB1c2luZz8NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQo=
