Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECCE705AD4
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 00:54:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A8CF384B48
	for <lists+usrp-users@lfdr.de>; Tue, 16 May 2023 18:54:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684277697; bh=hj1LmtZnoffTnbYg2EOyhSdlqpi/x0U4OJjZekLI/TI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=V0N7rBPsw7RlRjUDS2tMeZmqmtSEsJr9ER8675srMiHEczH83Mbv95xbCPu3A8+LL
	 xNHU6QhKsiwML5efpDJdT+qR9UJkmEAhnCPZrf9i2NycQ3jPixOQ/adwswpvayN5Iw
	 R3vSB6lkFBQOvTGPqulpKqqpBTnooHzSkozBCvxEJc42d6RswZCjWp/0F87M7SWCY0
	 vntY3Qm8N1xo5+eH8cqnMRMpvVa9m2L0OLVh36iXx54Gi/0n/QVtvAiGCnqZosZF+G
	 nAzfoQQkTp3Z+UXizKVl2rg1zDJmPn42YI9g0TRR57MlHcLCgwFmkX6/S47Itwm8S3
	 GrIkUSBaztzig==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 8DF3B384B3E
	for <usrp-users@lists.ettus.com>; Tue, 16 May 2023 18:53:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qGD8/pQs";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-75776686671so13006185a.1
        for <usrp-users@lists.ettus.com>; Tue, 16 May 2023 15:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684277635; x=1686869635;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AM/PyUNj7SudJx8jDit22tJTE7E8z+rG0xdbzNwzPck=;
        b=qGD8/pQsfQ0x1g11CLaHEKCCYekl6ox2ikF+Y14Lc+QuoC+i8LYKG6K8G8gtmN1M80
         T22g7LG719wnxNDBXIzqySe4VpYhEBa2J0xYtvxTqFh4XTZAoujMQMr3Cwji3ilA2jWC
         4YeB+eadtSUfRruhCeOfzW8Jugil7G4U5q2WvMWIfWLPYvk5Ps2pvHDIdX8pfYxyLa84
         17HKd/AMq1TKqZ2RFIhU3gxi1hOLC+A/zGeMekatnOqr6DnPeN9uM7POz/CzuA3gZMrN
         B4oVVeZMPjEO3HC4a/tlXU3Jy4Kdscthoq6q7TVq0YbnLmw9Py/JLv3aXZCRZ7WtNKcZ
         4Srg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684277635; x=1686869635;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AM/PyUNj7SudJx8jDit22tJTE7E8z+rG0xdbzNwzPck=;
        b=gambaM7bybXdY8+fpOnn34mxbafi6IaqaCzkdnP9rGZV86yeCB8QaMzHKHpwGfnBnH
         1zBt0GILMoCjtdQ3+iLtzo59yOhqfbTxzFwlp8acgPGeYdWJJcW7QG7ePTPoP61A2vO2
         vUOo2qmAz3tLGc2qQ2ZbAzo1UUpSLmPRk7KRNH29aNn1RXmxtWM863ECfxBleW6KrOdh
         h6aWDN+mdn/Rjo+4RX4ls+PMEiu3WHekTZFFgZrQSBuPD2b9fEnJXmEOVy+L+mII26Wi
         RxqFcrCxi2uT+7ZH+vMpqyUXxMkOoT6SOQAMgOp3ghUK4JsM/Tv/sISGX0G4SDG2xkoF
         VRFg==
X-Gm-Message-State: AC+VfDy73oHtPPho/Mp/XOwTjRIlCWUYWei6B7fF5jRC2HfHNBp0ZPRF
	ExcdWVB9jYw6pta6x/d2VGTrt0gYlpc=
X-Google-Smtp-Source: ACHHUZ7/hs1Ai6Yatnj7/YqDjUtgI8U3/ZJ/SJ4SVd9nDDH0+Mf61L+AG1TqLoMnRIkl7YjWQxD13g==
X-Received: by 2002:a05:6214:c8c:b0:621:6886:d4db with SMTP id r12-20020a0562140c8c00b006216886d4dbmr33699309qvr.38.1684277635658;
        Tue, 16 May 2023 15:53:55 -0700 (PDT)
Received: from [192.168.2.148] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id m9-20020ae9e009000000b0075931950b5esm188108qkk.74.2023.05.16.15.53.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 15:53:55 -0700 (PDT)
Message-ID: <042981ee-d31d-bab0-99fe-65c0a43d8476@gmail.com>
Date: Tue, 16 May 2023 18:53:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <bbdssfZP66eCOPtb3bkdZ88vJnw0TCxU43IG8cpVM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <bbdssfZP66eCOPtb3bkdZ88vJnw0TCxU43IG8cpVM@lists.ettus.com>
Message-ID-Hash: J5T54YQCK35MEHYZZRPT7LXDPTL5YF2G
X-Message-ID-Hash: J5T54YQCK35MEHYZZRPT7LXDPTL5YF2G
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 rx_frontend properties
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J5T54YQCK35MEHYZZRPT7LXDPTL5YF2G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTYvMDUvMjAyMyAxODo0Miwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBIZWxs
bywNCj4NCj4gSSBhbSBjdXJyZW50bHkgd29ya2luZyB3aXRoIHRoZSB4NDEwLiBJIGFtIGN1cmlv
dXMgYWJvdXQgcGFydCBvZiB0aGUgDQo+IG91dHB1dCBvZiB1aGRfdXNycC1wcm9iZSDigJR0cmVl
LiBQYXJ0aWN1bGFybHksIHRoZXNlIHByb3BlcnRpZXPigKYNCj4NCj4gL2Jsb2Nrcy8wL1JhZGlv
IzAvZGJvYXJkL3J4X2Zyb250ZW5kcy8wL0xPMS9lbmFibGVkDQo+DQo+IC9ibG9ja3MvMC9SYWRp
byMwL2Rib2FyZC9yeF9mcm9udGVuZHMvMC9MTzEvdGVzdF9tb2RlDQo+DQo+DQo+IEkgZG9udCBy
ZWNhbGwgc2VlaW5nIGRvY3VtZW50YXRpb24gb24gdGhpcywgYW5kIEkgc3RydWdnbGVkIHRvIGZp
bmQgDQo+IGFueSByZWZlcmVuY2UgdG8gdGhlc2UgaW4gdGhlIFVIRCBzb2Z0d2FyZS4gRG9lcyBh
bnlib2R5IGhhdmUgaW5zaWdodCANCj4gaW50byB3aGF0IHByb3BlcnRpZXMgdGhlc2UgcmVwcmVz
ZW50LiBRdWVyeWluZyBpdCB3aXRoIGEgc3RyaW5nLCBpbnQsIA0KPiB2ZWN0b3IsIGFuZCBkb3Vi
bGUgYWxsIHlpZWxkIGEgdHlwZSBlcnJvci4NCj4NCj4gVGhhbmtzDQo+DQo+IEpvZQ0KPg0KPg0K
QWxtb3N0IGNlcnRhaW5seSB0aGVyZSB0byBmYWNpbGl0YXRlIGludGVybmFsIHNhbml0eSB0ZXN0
aW5nIG9yIFFBIHRlc3RpbmcuDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbQo=
