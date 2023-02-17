Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BB70569B275
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 19:42:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8ACBC3844D7
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 13:42:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676659321; bh=Dd3cs+48WvRGwHUMExIUXoiaB/TEi3xk3THVmoEAxc0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RpPDH9+wucaLvCRip+heZ1UGYugm48MfahBlRXeAUEJ/FlCk9fOETswt85jMaUSrW
	 jFNtJO/vHJG47cSr0EBJ3AMQ2/GTdWQEK6BnzzZIeVN5HjzU1gRcVJ/rmzLT5E5quf
	 KWdAmlTuFm7R3a8gqwlNB30PDkc4t91p97iUmbtXdv2ywVF5G96nTI0bCNmiczda5O
	 qB5uhVeJsEcuonWmsY8X7s5QXHn4Kxyf1YRrE6ViGVzHjwPVU1C0cl77Ru1KVYTuAE
	 ScL3Qc4M9wBLMuGNjqh1CMQBsodBz3q9k9P6Mlx2m3086GMercdC5PAx4oVCuTCMhd
	 RfG7oIN9jXOrw==
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 527383844D7
	for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 13:41:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aSO+i4Lv";
	dkim-atps=neutral
Received: by mail-il1-f174.google.com with SMTP id t2so678416ilm.6
        for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 10:41:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xa8XPHhCpv7niGe8+HDMai+Qm24gU8kLqqMDL1gp460=;
        b=aSO+i4LvOdUjB8yrERMypODS2QEouuU3tN2nVFAcIPvm2oa3WYi719OGBs6GzFCXr4
         x/dNpdppEMD9+msZuiGjQJ6tRb+qStFmDUzShEY+95dwjCQP1GfcaQanPkWhEY0RUAWf
         XrRELJRF5PDFS7wNa16j0vG6DXmXH7bSTQBkftgresNYOjg0eKAnlHoDlzjtWFbBlSGH
         WJ/MffVTe99kr4wWvGbZhbxDJ+BvY0oOS1q+9c+IexjXjknlh2sYmAfNa5MgRRDuDHpO
         tDXqtm/6I6gsLcQKdkTGo0ytiuXV17i09R6Nr3gl5V7KdFGPDUZlz7RLMxVOPCYhHVb/
         ziGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xa8XPHhCpv7niGe8+HDMai+Qm24gU8kLqqMDL1gp460=;
        b=t7t5J3g2oYhD7pI+iaDts3uCXuVPstaZahcs2o75MqXsdUxPuBfFbo3jtjKiUEdTNv
         5AEFfcB1R5a2sXg5Uy21aXiAZJ02IviypeW/OQVvkqnUfTqLiR6PtKkcHYp8cXDeJVAb
         B273GTtH8DJXQQKbfxpeLl3B93mD1zLIs9CriPCOdBvlRY1+slDjL7dX7vgbGZzPla2r
         64fKRmXUoeWRx9hcmMc8NCshHG1Np1Dkmpi+A812D4Oce5m9x4ZfbO0KGJK5CKJDkp9X
         gQCdrMENnj9V5HVjptn6j8DC+wB/KTlCSuQMNy/6jqmDtRKbvsgwqDe/dJ6C4cYeGYGN
         5r6w==
X-Gm-Message-State: AO0yUKXvt2ia2jpTMHB7r6ZGorHdWkjdpRiweryirCf/C7VHymuozrow
	rJqKnGedr8orXT1DpPtSpURswEqGB40=
X-Google-Smtp-Source: AK7set/V/Yd1OBqgdi1wgOwqWHNemUtBTmfuPoHJiJsHq918kd/s8HS+wvVs0UOSZraKICAwPH4Fxw==
X-Received: by 2002:a05:6e02:1a69:b0:315:d9ba:a392 with SMTP id w9-20020a056e021a6900b00315d9baa392mr2453923ilv.17.1676659315484;
        Fri, 17 Feb 2023 10:41:55 -0800 (PST)
Received: from [192.168.2.164] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id n19-20020a056638121300b003b49e7d990asm1637709jas.30.2023.02.17.10.41.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Feb 2023 10:41:55 -0800 (PST)
Message-ID: <d9568b3e-38a3-c32a-7808-e2529efa4f34@gmail.com>
Date: Fri, 17 Feb 2023 13:41:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CANvw1+RzoBzytLFxQUvH1uYu03VpUNp97PXaqaKF6JvVAS5u6Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANvw1+RzoBzytLFxQUvH1uYu03VpUNp97PXaqaKF6JvVAS5u6Q@mail.gmail.com>
Message-ID-Hash: JOS2EI2I4YX3PWGV4EJ3HFN3ZLH2AQ6R
X-Message-ID-Hash: JOS2EI2I4YX3PWGV4EJ3HFN3ZLH2AQ6R
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Continuous stream receive process
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JOS2EI2I4YX3PWGV4EJ3HFN3ZLH2AQ6R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTcvMDIvMjAyMyAxMzozNCwgQW5pbCBHdXJzZXMgdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+
IEhpIGFsbCwNCj4NCj4gSSBoYXZlIGEgc2ltcGxlIHF1ZXN0aW9uIGFib3V0IHRoZSBjb250aW51
b3VzIHN0cmVhbS4gQXMgeW91IGFsbCBrbm93LCANCj4gVVNSUCBSWCBsaWdodHMgaW5kaWNhdGUg
d2hldGhlciBpdCdzIHJlY2VpdmluZyBzYW1wbGVzIG9yIG5vdC4gT24gDQo+IGNvbnRpbnVvdXMg
c3RyZWFtaW5nLCB0aGVzZSBsaWdodHMgYXJlIHR1cm5lZCBvbiBpZiB0aGUgcmVjdiBmdW5jdGlv
biANCj4gaXMgY2FsbGVkIGZyb20gdGhlIGhvc3QgY29tcHV0ZXIoc3RheSBvbiB1bnRpbCB0aGUg
ZW5kIG9mIHJlY3YgDQo+IGZ1bmN0aW9uIGNhbGwpLiBJbiB0aGVvcnksIHRoZSBjb250aW51b3Vz
IHN0cmVhbWluZyBtb2RlIHNob3VsZCANCj4gcmVjZWl2ZSBhbmQgYnVmZmVyIHRoZXNlIHNhbXBs
ZXMuIFNvLCBzaG91bGRuJ3QgdGhlIGxpZ2h0cyBiZSBvbiB1bnRpbCANCj4gdGhlIGNvbnRpbnVv
dXMgc3RyZWFtaW5nIHN0b3Aobm90IHVudGlsIHRoZSBlbmQgb2YgcmVjdiBmdW5jdGlvbiBjYWxs
KT8NCj4NCj4gSWYgdGhpcyBpcyBob3cgaXQgc2hvdWxkIGJlLCB0aGVuIG15IHVuZGVyc3RhbmRp
bmcgb2YgY29udGludW91cyANCj4gc3RyZWFtIGlzIHdyb25nLiBJZiBJIGRvbid0IGNhbGwgcmVj
diBmdW5jdGlvbiwgZG9lc24ndCBVU1JQIHJlY2VpdmUgDQo+IHNhbXBsZXMgYW5kIGJ1ZmZlciB0
aGVtKG9uIGNvbnRpbnVvdXMgc3RyZWFtaW5nIG1vZGUpPw0KVGhlIGxpZ2h0IGlzIHR1cm5lZCBv
biB3aGVuIGEgcmVjZWl2ZSBzdHJlYW1lciBpcyBjcmVhdGVkLCBhcyBmYXIgYXMgSSBrbm93Lg0K
DQpJZiB5b3VyIGFwcGxpY2F0aW9uIGRvZXNuJ3QgY2FsbCByZWN2KCksIHNvbWUgbnVtYmVyIG9m
IHNhbXBsZXMgd2lsbCBiZSANCmJ1ZmZlcmVkIGluIHZhcmlvdXMgcGFydHMgb2YgdGhlIGxpYnJh
cnkgYW5kIE9TIGRyaXZlcnMsIGFuZA0KIMKgIHRoZW4gdGhleSdsbCBqdXN0IHN0YXJ0IGdldHRp
bmcgZHJvcHBlZC4NCg0KSW4gZ2VuZXJhbCwgeW91ciBhcHBsaWNhdGlvbiBhYnNvbHV0ZWx5LCBw
b3NpdGl2ZWx5LCBuZWVkcyB0byBjYWxsIA0KcmVjdigpIHRvIGNvbnN1bWUgc2FtcGxlcyBhcyBm
YXN0IGFzIHRoZXkncmUgcHJvZHVjZWQsIG9uIGF2ZXJhZ2UuDQogwqAgU2hvcnQtdGVybSBzaG9y
dGZhbGxzIGFyZSAic29ha2VkIHVwIiBieSBidWZmZXJzLCBidXQgaWYgeW91ciANCmFwcGxpY2F0
aW9uIGNhbm5vdCAia2VlcCB1cCIsIG5vIGFtb3VudCBvZiBidWZmZXJpbmcgd2lsbCBzYXZlIGl0
Lg0KDQoNCg0KDQo+DQo+DQo+IFRoYW5rcywNCj4gQS4NCj4NCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
