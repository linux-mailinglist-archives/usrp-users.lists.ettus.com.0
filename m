Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C932769E2C1
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 15:55:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6009C38136A
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 09:55:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676991350; bh=Lr93B4rH6USb0oGLiVfhHnO+y7159vS+O9/RwR0voXQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wZJcMxH0Zo6lZHgKCPUnZ/LdFNlX29iO04YPwghRrJ5MkSKzBQwbY/Wd6gpLcph/8
	 G2pwBvw0hZv2Mp2dOwlz36r+gXNaNjxTfkIw+MmtENwfx6aURcIoLFDJ2oe+uBbE9/
	 pV9SLp2Y57izldP6kRGBtm0+t/tbTJlfOWWYeIbcwuPiLtyYr9WPcKb6jYbYmW+kPA
	 AhzhA+rAybSec4fpdeFGoXMhBbyg1GkGkd26Evp1enLOAdUF5Ld+rh3LvmQ4nMqo7p
	 FKXRTA18EHWQvWPGCdJPaI78MjMu4P+/XywbBfkp1/Y3+8AP+mpnq6/iwydmm4vL3Q
	 1ELekpPBNvKwQ==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D2C5380C19
	for <usrp-users@lists.ettus.com>; Tue, 21 Feb 2023 09:55:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lsyLbXe9";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id d5so4368439qtn.13
        for <usrp-users@lists.ettus.com>; Tue, 21 Feb 2023 06:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u9Ahr+G4HzBd6Qnvl4pomarfQ17UhHsZsZxo6BWC1OE=;
        b=lsyLbXe9EFI8gg+5bk5tqsqwOoBIqktgDANIOlNVHHByp2C1p7dlC0uFd3AolfWkWR
         6J1TMCuD5Z8yBfpSsgnH9bv5DPc3LdYRUC9zGb3qy04qO+bVfLdNKW8R+SuTRwzzeBJw
         PwvDkeIuZyGYQ+zp7l2sysA0f1679L/5+U1kP5CYfYYg1w0Cr6c6hHllDJAyazUe/v83
         RYOOckUI6CEYJBltXaoezp/ZH2SkCq3m0tTi4JhypsbwnL0GrkwlUUTP9LI7o9hBKh26
         ULl7y+9qQ29LHhv88tus3C3I1rpJWRfJrJUyk6gsf3v4yf1o+rexq7x719MPf92PuCMK
         Pigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u9Ahr+G4HzBd6Qnvl4pomarfQ17UhHsZsZxo6BWC1OE=;
        b=fEg1EwBinJ25zoXy+d+INbpkaLTwJU5d8XVMMKCiseHgKMC9UyhSbDAr6eOjHK/wP2
         KbCdUvqFu+EE+No3TxKN8MrgU0ufHJQqw/rgzA1A05DV2U7DnNnPdOy0B1bulNxx3fkc
         VvukDEI9mP7ZTltdOwBrjswUjWBy3GPWJsNKAOM6R/8syjFae1n2cXzDLOqVH12x12T0
         S24AXeydw5xWS5kkhs/ErxGFoaM4WOs//itslnOw5eYHEUiYnL5kzECs2E78CZkjsdTq
         2j3DxmomjNVGrPjCeTQhriC6D3Odk7fLK0zPu4Vd97g8q3DmCNRvQru17u8JCI9GRHap
         2hkw==
X-Gm-Message-State: AO0yUKXiexsOIoS6Psy9B78SplauzGHB7ll3jTBblXBarHyMmfJhAVq6
	z57i4oSsGz2+DwhRaGni7x5qO1BDFTI=
X-Google-Smtp-Source: AK7set9IdtMfGJKjPPa4HnvElYDZFMTJJ//T14uFk0QnFiS3VCxfZrgeP6M7dX/LfrTbCRHVT/aS3Q==
X-Received: by 2002:a05:622a:15d0:b0:3b8:2e92:94e7 with SMTP id d16-20020a05622a15d000b003b82e9294e7mr6457469qty.44.1676991301730;
        Tue, 21 Feb 2023 06:55:01 -0800 (PST)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id c129-20020ae9ed87000000b0073d7e81f8b5sm6384374qkg.35.2023.02.21.06.55.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Feb 2023 06:55:01 -0800 (PST)
Message-ID: <297ee565-a992-6709-342d-928cf3346560@gmail.com>
Date: Tue, 21 Feb 2023 09:55:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <YbJG1Y3gfFEPMO2om77FPpVaCiSC5PizAlecRtnp0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <YbJG1Y3gfFEPMO2om77FPpVaCiSC5PizAlecRtnp0@lists.ettus.com>
Message-ID-Hash: YYLG7BYP6NNSAHID2ZHXNLGFHYV73K6M
X-Message-ID-Hash: YYLG7BYP6NNSAHID2ZHXNLGFHYV73K6M
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 - All LEDs are off
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YYLG7BYP6NNSAHID2ZHXNLGFHYV73K6M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjEvMDIvMjAyMyAwNDo1MSwgYWxpLm1haGJhc0BicnVuZWwuYWMudWsgd3JvdGU6DQo+DQo+
IEhpIFdhZGUsDQo+DQo+IFRoYW5rIHlvdSBmb3IgeW91ciByZXNwb25zZS4NCj4NCj4gVGhpcyBv
bmUgaGFzIGJlZW4gc3VnZ2VzdGVkIGJ5IHRoZSBFVFRVUyBzdXBwb3J0LiBMdWNraWx5IGl0IGhl
bHBlZCB0byANCj4gc29sdmUgdGhlIGlzc3VlLiBUaGFuayB5b3UgdGhvdWdoLg0KPg0KPiBPdXQg
b2YgaW50ZXJlc3QgYW5kIGZvciB0aGUgZnV0dXJlIHJlZmVyZW5jZSAoYXMgd2UgaGF2ZSBhIG51
bWJlciBvZiANCj4gVVNSUHMpLCB3aGF0IHdvdWxkIHRoZSBvcHRpb25zIGJlIGlmIGEgZGV2aWNl
IGlzIGRhbWFnZWQ/DQo+DQo+DQo+IEtpbmQgcmVnYXJkcywNCj4NCj4gQWxpDQo+DQo+DQpJZiBh
IGRldmljZSBmYWlscywgYW5kIGl0J3Mgd2l0aGluIHRoZSB3YXJyYW50eSBwZXJpb2QsIHlvdSBj
YW4gc2VuZCBhIA0Kbm90ZSB0byBzdXBwb3J0QGV0dHVzLmNvbSwgYW5kIHRoZXkgd2lsbCBpc3N1
ZSBhbg0KIMKgIFJNQSBhbmQgeW91IHNlbmQgdGhlIGRldmljZSBiYWNrIGZvciByZXBsYWNlbWVu
dCBvciByZXBhaXIuDQoNClNlZTrCoCBXYXJyYW50eSBhbmQgcmVwYWlyIGhlcmU6DQoNCmh0dHBz
Oi8vd3d3LmV0dHVzLmNvbS9zdXBwb3J0L29yZGVyaW5nLWhlbHAvDQoNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
