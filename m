Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 707976F0771
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 16:30:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BDF3D383F3A
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 10:30:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682605837; bh=7yXQWDgvEEmuStemdvcFqKn3ggtu2+be5Q59209LKpE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=u74uiHpRtbf5SKUbF/owpZLvwX31mEFq6m54nvKpBl2G5EyIOddeK6Mjfy5jpEcuq
	 yUTR6716KEDzlajc06v0RhyQ2AfQt3UWsajc+Sf9yM513DZJv0HcR6QaHQzEVhsIqM
	 hIWQvRwz2oIsXild9u/0JUR4mbkVRLsypPnWPrOGT1RZd7K5nXrku66gaFJv0JUgug
	 2o+TYCpdM/LQTG+Y+mr4o5PTOJjDQjScfPh52vRBBdGBazOnCQCAjKSElYuTn82Sd/
	 NdUaaY01i5p3ysVo0IMZdZlqNBTwYWFj/zcwMOkjSzu2cnXG/g/jnFpn4PLp+Z+Apd
	 6FibNj90ANACQ==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 6A4C7383F31
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 10:29:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="b1OPTzJL";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-5ed99ebe076so82791026d6.2
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 07:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682605793; x=1685197793;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RdyVpQk/firEbHLylUfjvFsLOn4wmg1idS2b7dcX5jY=;
        b=b1OPTzJLx2lR4TtjCaLc5T0lYiKUAV7bFN+RS9PKfImjr3ZP5SS/QJF9aRu3Hr16Uq
         MvU+kT/HWfK7bUBStQ3DVlO2OrliNfEWbi1Uv7yVDveeG3138h2aKqQz/Hei/JY4NraA
         IvroNMUvWNc9gVc538pv91E+98HCfKbYGvq2dr44SpRZkHmt9NGebxvoUTqSxiLizSxt
         oqfyGF+nbPmuv8QfDB+LySjYSalQyMexMkdnUO7o4o/OnUsjCVA3YcYmBFm6H1DAUkog
         0/XJ00q8cJJhs+vphdlHYkYM9hZ6LrKb1WmqwLttlDOZskWb8hGfv/3itJRPRA6GXENS
         G1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682605793; x=1685197793;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RdyVpQk/firEbHLylUfjvFsLOn4wmg1idS2b7dcX5jY=;
        b=cB8+3d9aMNHivP8xUB1P9DLMvCfAAJvUkYnfdGL+mJ930y33bbLj0pwV6MYrtA9Kmw
         Q5r0koVCY/zV/lS3Ygs8Zhwc0omMkUX6RmzwN2YXUdJEDOzGVDn4T1Suu3A4opca9oX3
         Yh99+Us6hCx7Y62JN49KAbVXZ4EzHEeYoAkGtdKCdKsfMNCIUCoU07w2Tjdv15x3ptIl
         rcYGsz5/oxPdIbBXnU05PaRIno1S/NYqhK2z/4tv9PMrFL2sBiTDxg6r97RQeKgZxckn
         nIfvZ7uuRCASz0Ngs5R3gQOwvr4cur7wwTBWODHGj+Yshm+rfNZA0izVAEhXr4vrdJvp
         nKjw==
X-Gm-Message-State: AC+VfDwi0d/OfVesx3sIpcfopAVIHgpPkz0s0lBHQny3GBaZAlnEHoHH
	OUEtT02O3Rgue7bcu1Xyk1qMDOHnV/E=
X-Google-Smtp-Source: ACHHUZ6rp9MykruqxqVATi3mfsZTiOV8EsBb7XSiWMu4ApMiJrGT3C9+oZ3X5f6X+a00djw7Y7KoZA==
X-Received: by 2002:a05:6214:5193:b0:5b8:6efe:77f4 with SMTP id kl19-20020a056214519300b005b86efe77f4mr2351120qvb.46.1682605793550;
        Thu, 27 Apr 2023 07:29:53 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id a11-20020a0ce34b000000b0061672f78795sm574127qvm.143.2023.04.27.07.29.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 07:29:53 -0700 (PDT)
Message-ID: <834f7f2c-d14b-924f-3089-44d5c4025274@gmail.com>
Date: Thu, 27 Apr 2023 10:29:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <e1npWlLULkbLJZKattbBTmg4U1E1dUic2bisozLmxY@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <e1npWlLULkbLJZKattbBTmg4U1E1dUic2bisozLmxY@lists.ettus.com>
Message-ID-Hash: SOUMJPNPR7GUFGF53K6SRXWKHAWXH7NJ
X-Message-ID-Hash: SOUMJPNPR7GUFGF53K6SRXWKHAWXH7NJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SOUMJPNPR7GUFGF53K6SRXWKHAWXH7NJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMDQvMjAyMyAxMDoyMSwgaDU3amFmYXJpQGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gSGkg
TWFyY3VzLA0KPg0KPiBUaGFuayB5b3UgZm9yIHN1cHBvcnQuDQo+DQo+IEkgdHJpZWQgdG8gdGVz
dCBUWCBhbmQgUlggb3BlcmF0aW9uIHNlcGFyYXRlbHkuIEkgc2V0IFVTUlAgWDQxMCBhcyANCj4g
cmVjZWl2ZXIsIGl0IGNhbiB3b3JrcyB3aXRoIHNhbXBsZSByYXRlIG1vcmUgdGhhbiAxMDBNc3Bz
LiBCdXQgZm9yIFRYIA0KPiBjb25maWd1cmF0aW9uLCBpdCBjYW4gbm90IGhhbmRsZSBtb3JlIHRo
YW4gMTBNc3BzIGFuZCBJIGhhdmUgc2V2ZXJhbCANCj4gVSwgdW5kZXJmbG93IGVycm9yLg0KPg0K
PiBXaGlsZSBJIGFtIHVzaW5nIGJvdGggVFggYW5kIFJYIGNvbmZpZ3VyYXRpb24gc2ltdWx0YW5l
b3VzbHkgaXQgY2FuIA0KPiBub3QgZ28gYmV5b25kIDEwTXNwcy4gQlRXLCBoZXJlIGlzIG15IFRY
IHNpZGUgY29kZToNCj4NCj4gU2lnbmFsX3NvdXJjY2UgKFRyaWFuZ2xlKeKAlC0+VkNPKENvbXBs
ZXgp4oCU4oCUPlVIRC9VU1JQX1NpbmsNCj4NCj4gQW55IHN1Z2dlc3Rpb24/IFRoYW5rIHlvdS4N
Cj4NCj4NClRyeSB1c2luZyB0aGUgInR4X3dhdmVmb3JtcyIgVUhEIGV4YW1wbGUtLWl0IGRvZXNu
J3QgdXNlIEdudSBSYWRpby4NCg0KVGhlIHNpZ25hbC1zb3VyY2UgYmxvY2sgaW4gR251IFJhZGlv
IGlzbid0IHBhcnRpY3VsYXJseSBzcGVlZHksIGFuZCBHbnUgDQpSYWRpbyBpbiBnZW5lcmFsIHJl
cXVpcmVzIG1vcmUgcmVzb3VyY2VzIHRoYW4NCiDCoCBzb21ldGhpbmcgdGhhdCBpcyBjYXJlZnVs
bHkgaGFuZC1jb2RlZC7CoCBJdCdzIG5vdCBiYWQsIGJ1dCBhdCByYXRlcyANCmxpa2UgMTAwTXNw
cywgYSBoYW5kLWNvZGVkIHByb2dyYW0gd2lsbCBkbyBiZXR0ZXIuDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
