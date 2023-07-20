Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8FA75B2B4
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jul 2023 17:31:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88540384B24
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jul 2023 11:31:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689867093; bh=8RHhr5/AuLvgwVusObqgoAHI+xnxUI6WJt8jZTJbu/4=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HXldr9L7+GOuzHMObEv6od9rVvcpea3x2RNePa1cjEWN8CY+g5fi/u1g92LHemFTd
	 eZpbjLYSncyYFhN2TqZDZnkH/3KNir9udcdwoHnXyrn6mqzabiWI77VeGSsOSevJKd
	 7trgYzay5nW6CDlZn07Bl0AWXnWXPlYu2Cd/CUFvsLHdcl1OaVCFa8NcMjef5LmnAr
	 F4MA1KW9fWFJ+9MoYhJ/a8Kbi7W8G13wJoBE2o3aWO91mxZDcvMN+IyqQivzZ3nkB3
	 OCZAv632aLAVtwusqonGmRHKWnE5ZMfefnmaJXytgxGgD7Q+UhIgBiWuNWMUjQuwml
	 gDXdZpzmnMXHg==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id F40E8384083
	for <usrp-users@lists.ettus.com>; Thu, 20 Jul 2023 11:30:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NXIZo2c9";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-634a3682c25so7249126d6.3
        for <usrp-users@lists.ettus.com>; Thu, 20 Jul 2023 08:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689867054; x=1690471854;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VPvHgayCpDSYNPPnwqiMa+yx2GiPhMS6xvJo8331AKY=;
        b=NXIZo2c9wADF8tEykwoz1FB94ahejU826SUCGLsJ3BvRYaCPkdYXA6pLBKEAesLm60
         CAAIxIYLCFGj6GvoR8kcVeyJbpV/W+Ny1Gfa7abU93pRYnB60GgNcEYY+vCxP+4yU9ye
         6Dv+uUtuTZMojiEvssBTfp1ziDPIylXoV8upGU/Yssu8/PLx+NhbTOoCKd4pDwq2IJ5u
         zHvHkHEK7H/HzP/jb27GM1FRaP+cJ4BEUxkOw6ZCG48UMkA1hYF6GKUsy5IeuDrDxxCg
         up9Y+SnXV7xHLByZVuEwmkJWUqC/7VsGGWNTdqoUhHgN/6ljIX88ljQPn0ZFebYqtCBT
         6d+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689867054; x=1690471854;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VPvHgayCpDSYNPPnwqiMa+yx2GiPhMS6xvJo8331AKY=;
        b=ABDLiBONYdHVtQXU726nSfdcCY57Zth7cx2d2o4g23eVPWtzOLC0h4Fb5zo9YKdRaK
         e0lQx8plPp6k/cUc9yeUi1VyoZGkLypeYAyhof+ow4wyvrQNtXPFuwK3x4zMQEpZFSTK
         0+6jwFvUfypFtKfcI1Z1N9s+z9unJrlRYy4F0asTY+u0dVsNWGc/J3YXlOU6X4XUvVw+
         sIrwCTad5A79cbliddWHdFo2uXA7qRun3NNoqQxMlm85+JXzI7iuFpo/JLnFvLvrYN2N
         SsXr+rSHsQ+rLMC2GUfHNXrQziwET0Ra7UQqi+f7YViu6/YgU1wwk1GZd5j33QNHx8ed
         pjVg==
X-Gm-Message-State: ABy/qLbEB0AWY/PhrfqTXjyrSHrIt9tUaesqrSICyzEl+XwnzDlyBk0s
	4szEk9aWQaAOHT6k4wpZjkTO8hfqjtU=
X-Google-Smtp-Source: APBJJlHCbi/zsXUwverYMyhmmZGzL45AmedLQWc/LOkx+hyUvs369S4pqx9kTgZ22mi8W5IxA86hEw==
X-Received: by 2002:a05:6214:1a0a:b0:637:ca3:67e8 with SMTP id fh10-20020a0562141a0a00b006370ca367e8mr6190440qvb.39.1689867054326;
        Thu, 20 Jul 2023 08:30:54 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id r12-20020a0ccc0c000000b0063645f62bdasm456645qvk.80.2023.07.20.08.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jul 2023 08:30:54 -0700 (PDT)
Message-ID: <2c25e478-831a-94b0-95f4-51d0835a4e7d@gmail.com>
Date: Thu, 20 Jul 2023 11:30:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: friedtj@free.fr
References: <253020606.65756797.1689346704238.JavaMail.zimbra@free.fr>
 <7b567967-a9f7-6223-3120-a13a4ce6d9cf@gmail.com>
 <1665021956.105780246.1689833084445.JavaMail.zimbra@free.fr>
 <d8b3e016-3255-7757-92ff-8a0edbdcc3f2@gmail.com>
 <1697525267.109285969.1689864097045.JavaMail.zimbra@free.fr>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1697525267.109285969.1689864097045.JavaMail.zimbra@free.fr>
Message-ID-Hash: XKSJLJUWI62WSWWRA4SIJS6INOCEHGY6
X-Message-ID-Hash: XKSJLJUWI62WSWWRA4SIJS6INOCEHGY6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 1-PPS synchronization
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XKSJLJUWI62WSWWRA4SIJS6INOCEHGY6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAvMDcvMjAyMyAxMDo0MSwgZnJpZWR0akBmcmVlLmZyIHdyb3RlOg0KPj4gSSBkb24ndCBz
ZWUgYSBzdHJlYW1pbmcgdGltZSBzcGVjaWZpZWQgaW4gdGhlIGdlbmVyYXRlZCBjb2RlIHRoYXQg
eW91DQo+PiBzdXBwbGllZC4NCj4gSSB1c2VkDQo+ICAgICAgICAgIHNlbGYuYmxvY2tzX2hlYWRf
MCA9IGJsb2Nrcy5oZWFkKGdyLnNpemVvZl9ncl9jb21wbGV4KjEsIChpbnQoNipzYW1wX3JhdGUp
KSkNCj4gYW5kDQo+ICAgICAgICAgIHNlbGYuY29ubmVjdCgoc2VsZi5ibG9ja3NfaGVhZF8wLCAw
KSwgKHNlbGYuYmxvY2tzX2ZpbGVfc2lua18wLCAwKSkNCj4gICAgICAgICAgc2VsZi5jb25uZWN0
KChzZWxmLmJsb2Nrc19pbnRlcmxlYXZlXzAsIDApLCAoc2VsZi5ibG9ja3NfaGVhZF8wLCAwKSkN
Cj4gYW5kIHNpbmNlIEkgaW50ZXJsZWF2ZSAyIGNvbXBsZXggc3RyZWFtcyBJIGV4cGVjdCA2KnNh
bXBfcmF0ZSB0byBsYXN0IDMgc2Vjb25kcw0KPg0KPj4gVHJ5IHNldHRpbmcgYSAiU3RhcnQgVGlt
ZSIgaW4geW91ciBVSEQgc291cmNlIGJsb2NrIG9mIHBlcmhhcHMgIjIuMCIgLS0NCj4+IHRoaXMg
d2lsbCBhcnJhbmdlIGZvciBzdHJlYW1pbmcgdG8gY29tbWVuY2UgMiBzZWNvbmRzDQo+PiBhZnRl
ciBpdCByZXNldHMgdGhlIHRpbWVzdGFtcCBjbG9jay7CoCBPdGhlcndpc2UsIHN0cmVhbWluZyBp
cyBzdGFydGVkDQo+PiBhdCBzb21lIHJhbmRvbSB0aW1lLg0KPiBPSyB3aWxsIHRyeSB0aGF0LiBU
aGUgc2V0dGluZyBpbiB0aGUgUHl0aG9uIHNjcmlwdCBpcyB0aGUgb25lIHByb3ZpZGVkIGJ5IEdS
Qy4NCj4gSW5kZWVkIGFkZGluZyBhdCB0aGUgZW5kIG9mIHRoZSBfX2luaXRfXyhzZWxmKSBnZW5l
cmF0ZWQgYnkgR1JDDQo+ICAgICAgICAgIGN1cnJfaHdfdGltZSA9IHNlbGYudWhkX3VzcnBfc291
cmNlXzEuZ2V0X3RpbWVfbGFzdF9wcHMoKQ0KPiAgICAgICAgICBzZWxmLnVoZF91c3JwX3NvdXJj
ZV8xLnNldF90aW1lX25leHRfcHBzKChjdXJyX2h3X3RpbWUrMS4wKSkNCj4gICAgICAgICAgc2Vs
Zi51aGRfdXNycF9zb3VyY2VfMS5zZXRfc3RhcnRfdGltZSgoY3Vycl9od190aW1lKzEuMSkpDQo+
IHNlZW1zIHRvIGRvIHRoZSB0cmljayB3aXRoIHRoZSAxc3QgUFBTIGVkZ2UgYWx3YXlzIGFsaWdu
ZWQgdG8gdGhlIHNhbWUgc2FtcGxlIGluZGV4Lg0KPiBUb28gYmFkIEdSQyBkb2VzIG5vdCBnZW5l
cmF0ZSB0aGUgYXBwcm9wcmlhdGUgY29kZTogSSBjYW5ub3Qgc2VlIGFueSBpbXBhY3Qgd2hlbg0K
PiBjaGFuZ2luZyB0aGUgU3RhcnQgVGltZSAoc2Vjb25kcykgb2YgdGhlIFVIRDogVVNSUCBTb3Vy
Y2UgYmxvY2suDQo+DQpIbW1tLCB1c2luZyBHUiAzLjEwLjEuMSwgc2V0dGluZyBhICJzdGFydCB0
aW1lIiBvZiAxLjQgZW5kcyB1cCANCmdlbmVyYXRpbmcgdGhpcyBjb2RlIGluIHRoZSAucHk6DQoN
CiDCoMKgwqDCoMKgIHNlbGYudWhkX3VzcnBfc291cmNlXzAuc2V0X2NlbnRlcl9mcmVxKDAsIDAp
DQogwqDCoMKgwqDCoMKgwqAgc2VsZi51aGRfdXNycF9zb3VyY2VfMC5zZXRfYW50ZW5uYSgiUlgy
IiwgMCkNCiDCoMKgwqDCoMKgwqDCoCBzZWxmLnVoZF91c3JwX3NvdXJjZV8wLnNldF9nYWluKDAs
IDApDQoNCiDCoMKgwqDCoMKgwqDCoCBzZWxmLnVoZF91c3JwX3NvdXJjZV8wLnNldF9zdGFydF90
aW1lKHVoZC50aW1lX3NwZWMoMS40KSkNCiDCoMKgwqDCoMKgwqDCoCBzZWxmLmJsb2Nrc19udWxs
X3NpbmtfMCA9IGJsb2Nrcy5udWxsX3NpbmsoZ3Iuc2l6ZW9mX2dyX2NvbXBsZXgqMSkNCg0KPj4g
QWxzbywgcmF0aGVyIHRoYW4gbG9va2luZyBmb3IgdGhlIFBQUyBlZGdlIGluIHRoZSBkYXRhLCB0
aGUgIkZpbGUgTWV0YQ0KPj4gU2luayIgaW5jbHVkZXMgbWV0YS1kYXRhLCBsaWtlIHRpbWVzdGFt
cHMtYXMtc2Vlbi1ieS10aGUtcmFkaW8uDQo+IFRoZSBQUFMgZWRnZSB3YXMganVzdCB0byBjaGVj
ayB0aGUgY29uc2lzdGVuY3kgb2YgdGhlIGRhdGUgbGFzdCBhY2Nlc3MgZGF0ZQ0KPiAod2hpY2gg
c2VlbXMgY29uc2lzdGVudCB3aXRoIG15IGV4cGVjdGF0aW9uKSBhbmQgdGhlIHBvc2l0aW9uIG9m
IHRoZSBhY3R1YWwNCj4gZGF0YSAod2hpY2ggSSBjYW5ub3QgZmlndXJlIG91dCBieSBhbmFseXpp
bmcgdGhlIElRIHN0cmVhbSkuIEkgZGlkIGNoZWNrIHRoYXQgdGhlDQo+IG1ldGEgZGF0YSBhcmUg
Y29uc2lzdGVudCAod2l0aCBteSBhYm92ZSBleGFtcGxlIHRoZSBkYXRhIHN0YXJ0IHN0cmVhbWlu
ZyBhdCAxLjEgcw0KPiBvZiB0aGUgaW50ZXJuYWwgdGltZXIgb2YgdGhlIFNEUiBzb3VyY2UpIGJ1
dCBteSBvYmplY3RpdmUgaXMgdGhlIGNvbXBhcmlzb24gd2l0aA0KPiB0aGUgc3lzdGVtIHRpbWUs
IHdoaWNoIEkgYW0gbm93IG9uIGJldHRlciB0cmFja3MgdG8gYWNoaWV2ZSB3aXRoIHRoZXNlIGlu
cHV0cy4NCj4NCj4gVGhhbmtzLg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
