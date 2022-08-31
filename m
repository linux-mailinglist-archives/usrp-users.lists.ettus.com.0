Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 499B85A889A
	for <lists+usrp-users@lfdr.de>; Wed, 31 Aug 2022 23:55:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6DC03868EB
	for <lists+usrp-users@lfdr.de>; Wed, 31 Aug 2022 17:55:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1661982925; bh=+bElX1q8oGwkxIYDzXaa1paXxJaq4Od56ZFTC28Ci8Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hNFnvzbNP7HGqa9Cv7qdXfRB8Z+EV/sdyVQz2bAqcR71qGTlowttqlBjkVih0p2ze
	 vHcfH0IwGpmU1xiZCvDxUF+SsxVpftzD7ZpHtTxBPtbYR6+dM6ItuQhQw7dJ8JWd1m
	 m6ceISe+LQhefBD3gPBLgUOxlhTeSsaVZlL283G1PW5cj8vKu1yKzvF7XWq18goDhN
	 2WYdjaniIKhTsYyg5PGkCPd6UV2jSLyDZf+nemA51oDSH9ac2Q99NLQLG845evWNSf
	 gmNuRbXvNafdbsSGAeSQ8q/LZhB5gwaAe0hLbLbZa2XY+imCc4BI4qO39z7VcMjU1T
	 Qr4UhUgN+Mhyw==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 6AEBA380C7E
	for <usrp-users@lists.ettus.com>; Wed, 31 Aug 2022 17:54:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PnaYrg2e";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id y15so8828903qvn.2
        for <usrp-users@lists.ettus.com>; Wed, 31 Aug 2022 14:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=qJqUloEg6CUteNkipS5NL47zQGUoNPxL9CDzuCanzqg=;
        b=PnaYrg2e+BlAxVchWEu4XTgE0KL5x8+rDDXdgmobrbMB3fWsXffgP/k1SrwKsMwvAj
         cj56j8wfHNiqttgDWIceX7fN+qlJBvP7s6ZoI95Axpja+TTiFSGbtlf4TV5E2IGSMkUc
         AV2w6nxoI+5dhlavDr7zybBxUJ0UHPVdv+MJgq76g/eNdUTleM4K+17h8i0Yttuf1ePv
         bZ380WUGYbFiBSCpaeHEKf+ZjfmvqYL/SeGGo5xE3xgAqxV7siATFn1D+JDGVMU3VJLB
         eYfuXHIwFQ+0T/jgih1jrBSWBBWI+gPRwQE8P295RYvUiCnbzDA3UKCXTKecitTxocHe
         RjJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=qJqUloEg6CUteNkipS5NL47zQGUoNPxL9CDzuCanzqg=;
        b=7v7Y6XvpndSIbh2VR9PM0z7OK2mi1NVBxpB53FwxPkV0GR74nel4a4baPafLeN4sq5
         nQCWPBXzZWjddRM08yTR0xqaO9Tnwib+y84zGepQKWncab0YauXthuXavmdExGsgDvpk
         kB/7Uf7hKkp6rqvzfdb6sZeCDsnt8hOPqIunbDrKJqr+3bg2BC0p9PDpUrcBj0ThnwKN
         BZjOeLsq/bfrR+dQY8GmAiJ+7Ra41j4D7h21wT8D52wVRqINbXpL26wYLIHl6w00xBWu
         0LznKgy7DUn7GxVylAszcy7mqQf2sg65+nhrRY5m6P1zR7lq8w7JYWHYHUxMcsiMdeie
         I3Vw==
X-Gm-Message-State: ACgBeo2zms1LQtUYD/6kV+avmvtcAhzT7s2M8suPijDwu80Bg1j9Ao4G
	i+5jLUO1zhnSCmEb+sw8P0AvqYgPppA=
X-Google-Smtp-Source: AA6agR4YpG4ZCJl/yz37IgWcqewYgii1XqC1IyfrvXKUmjXSANEvAztiZjzq8GpUZEqMYo5LezsrPA==
X-Received: by 2002:ad4:5de7:0:b0:496:d0f8:7000 with SMTP id jn7-20020ad45de7000000b00496d0f87000mr21868234qvb.12.1661982868736;
        Wed, 31 Aug 2022 14:54:28 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id n3-20020a05620a294300b006b97151d2b3sm11030689qkp.67.2022.08.31.14.54.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 14:54:28 -0700 (PDT)
Message-ID: <97625c6b-2b8b-61b6-290d-b572828b4462@gmail.com>
Date: Wed, 31 Aug 2022 17:54:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <alpN7X6VU8mje4VA8MnFusAzyOE85TuwoNDJDIFBAY@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <alpN7X6VU8mje4VA8MnFusAzyOE85TuwoNDJDIFBAY@lists.ettus.com>
Message-ID-Hash: W7IRLK2K2E773NTDG55I7JYQMNSFYDBG
X-Message-ID-Hash: W7IRLK2K2E773NTDG55I7JYQMNSFYDBG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: set_command_time() question
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W7IRLK2K2E773NTDG55I7JYQMNSFYDBG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOC0zMSAxNDo0OSwgcmkyODg1NkBtaXQuZWR1IHdyb3RlOg0KPg0KPiBUaGlzIGlz
IGEgVVNSUCB4MzEwLCBhbmQgSeKAmW0gaXNzdWluZyBhIGNvbW1hbmQgZXZlcnkgfjE1MCB1cy4g
SSANCj4gaW5jcmVhc2VkIHRoZSBzaXplIG9mIHRoZSB0aW1lZCBjb21tYW5kIEZJRk8gaW4gdGhl
IEZQR0EgdG8gNjQuDQo+DQpUaGF0IG1heSBiZSBhIGZhaXJseSBhbWJpdG91cyBjYWRlbmNlIGZv
ciB0aGUgUkYgUExMIG9uIHRoZSANCmRhdWdodGVyY2FyZCwgZGVwZW5kaW5nIG9uIHRoZSBjYXJk
LsKgwqAgQ2VydGFpbmx5IExpbnV4IHN1c3RhaW5pbmcNCiDCoCB0aGF0IGtpbmQgb2YgY2FkZW5j
ZSBpbiBzY2hlZHVsaW5nIGlzIHVubGlrZWx5IHRvIGJlIGxvbmctdGVybSANCnN1c3RhaW5hYmxl
Lg0KDQo+IE92ZXIgbG9uZyBwZXJpb2RzIG9mIHRpbWUsIEkgaGF2ZSBoaWNjdXBzIGxpa2Ugc2hv
d24gYWJvdmUgb24gdGhlIA0KPiBvcmRlciBvZiBldmVyeSAyMCBtcyBvciBzby4gSSB0aGluayB3
aGF04oCZcyBoYXBwZW5pbmcgaXMgSeKAmW0gbm90IHF1aXRlIA0KPiBrZWVwaW5nIHRoZSBVU1JQ
IHF1ZXVlIGZ1bGwgd2hlbiB0aGUgT1MgaW50ZXJydXB0cyB0aGUgdGhyZWFkLCBidXQgSeKAmW0g
DQo+IGhhdmluZyB0cm91YmxlIGRpYWdub3NpbmcuIFRoZXJlIGRvZXNu4oCZdCBhcHBlYXIgdG8g
YmUgYSBiYWNrIHByZXNzdXJlIA0KPiBtZWNoYW5pc20gZm9yIHRpbWVkIGNvbW1hbmRzIGluIHRo
ZSBzYW1lIHdheSB0aGVyZSBpcyBmb3IgdGhlIA0KPiB0eF9zdHJlYW1lciwgc28gSSBoYXZlIHRv
IHRyYWNrIGJ5IGVsYXBzZWQgdGltZSBob3cgZnVsbCBJIHRoaW5rIHRoZSANCj4gVVNSUCBxdWV1
ZSBpcy4NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQo=
