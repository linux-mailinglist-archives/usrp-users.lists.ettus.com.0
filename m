Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CABDA73418E
	for <lists+usrp-users@lfdr.de>; Sat, 17 Jun 2023 16:04:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DE6F3384204
	for <lists+usrp-users@lfdr.de>; Sat, 17 Jun 2023 10:04:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687010647; bh=QosE9SJ9oCwhYvliUr1lNY2Dfp5rhOsiov39n+HLlXQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vUCGvt6nAf7SxsZJw4cW9fTBjIFW/7uYlQg7NwLHVXMGtfeZlwGdNDFuxkhAm147g
	 sLaicY+A1sGmA6wQKKzfqGR3ChRWbFsEG0dhTKPzPAKLzXF0wniD/qdIKHTPcdayq9
	 BGTlWw+WLMamZD0M8IJlSULarWJu8u20M2Z25r2LB8yp0eQDjh2ZiN0cUlG794nel6
	 FIYFbQzEcFl49RGvqjxa+JqeGr0e/ZyihTCj88CQqW1ryEbhTf1jP71UNd4y3ktISS
	 InzwSJeVd9JDwxK0IU0zbrL9vQ+gGeyPdeIi6aqod7nHJmC40tDv7ikBufx6gxENxz
	 hICTXnTjY+c2g==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id A7223384204
	for <usrp-users@lists.ettus.com>; Sat, 17 Jun 2023 10:03:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nguy7ZPR";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-762339bf0a0so96605785a.2
        for <usrp-users@lists.ettus.com>; Sat, 17 Jun 2023 07:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687010623; x=1689602623;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wYobFRuldKeA0amkeTRB/mm3cvdF7HbSVAhzeW73uNU=;
        b=nguy7ZPRA8LuJOIg/hUnSoSAEB5kyyGqzGIQErkO/mZFbFhFQgsQwzmBZ5BdtsJgFq
         2/A/5WFH5GCRP1pOB+Y757a71JOYmpriv3JexT37RCaAp9WkQ0PzX93TgsmTdOk+hGlh
         UsXjg+eGqpjqEEkcmKTnV4/p0f8T8XHGSlOapn6T6/rGnjhLTS1VscxuRFQGeK9yXVCm
         I4/+02/2TbR4KJRnYw4aHV6BtoqxPuDqEEwXKW9zYqKzp8pibBA6pbfCmbkR9xMJE80B
         hAq4YtHMW17DM3AcPaIjLfo+tJazqUQXVxzmSxV8Jpw7KSGPMTrrRRURrpo9f49bhylc
         0lFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687010623; x=1689602623;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wYobFRuldKeA0amkeTRB/mm3cvdF7HbSVAhzeW73uNU=;
        b=eOcXsMe+XCF/vOZZcOqtNAbgq9u80R45gy36tltsEhn19xzC2XGvlTlLC3VKU5klaD
         CNU35bmBOAJYlHDTeGUVo8ZYDvHnmO4PQh0oZDbqz4nq1sd7jbZQD4jP7beHPKM6TYD1
         +WVWbF2WhH4lHuAlhLy87/gbobQuJ/WNGWOVrYUoRON/IJgy/TsieqQ+n0nPnuoQ+GLl
         Re1KJCNkWUXTxgrFH5pkBKboZobtB+mfAkElfewEx8b/ZnU1HOZdgvNInTvFdoc0NLJ0
         LxId1fiGEog2NHhEpOld9UM0jguiKenenLpjTLgvboKYq0Aqdv7tONtRlFexvlz0BETe
         j8MQ==
X-Gm-Message-State: AC+VfDzXtH7++ywt1g+bCetkGfskf0Z6ztSojKiO5ab0rcRB3Af00FrM
	4SgboEdy4b0z0NEfiex+gr9K2+EcfJ4=
X-Google-Smtp-Source: ACHHUZ7d3Jk090yvgXeXMkLiYvPzjQGMrMiwWtNatWtA2e5OdHJ1gAey/uu0LIAfzbbwJarTIH+4oQ==
X-Received: by 2002:a05:620a:21d6:b0:760:7913:e5d8 with SMTP id h22-20020a05620a21d600b007607913e5d8mr4007205qka.78.1687010622673;
        Sat, 17 Jun 2023 07:03:42 -0700 (PDT)
Received: from [192.168.2.199] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id b10-20020a05620a118a00b0075cc5e34e48sm7541257qkk.131.2023.06.17.07.03.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 07:03:42 -0700 (PDT)
Message-ID: <333e6acf-fd34-23c7-eec3-1e81a94df2c6@gmail.com>
Date: Sat, 17 Jun 2023 10:03:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3Ps64+RMO8_==-95ZGEziAPzdmMAXTHan+TkGCYav3qVhg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAA=S3Ps64+RMO8_==-95ZGEziAPzdmMAXTHan+TkGCYav3qVhg@mail.gmail.com>
Message-ID-Hash: B32XFL3UQ7TMPVE2H6Y542O27FOBHLAE
X-Message-ID-Hash: B32XFL3UQ7TMPVE2H6Y542O27FOBHLAE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What is delay change frequency USRP daughterboard when i used PCIe vs Ethernet?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B32XFL3UQ7TMPVE2H6Y542O27FOBHLAE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTcvMDYvMjAyMyAwOToxMywgc3Agd3JvdGU6DQo+IFdoYXQgaXMgdGhlIGRlbGF5IGNoYW5n
ZSBmcmVxdWVuY3kgVVNSUCBkYXVnaHRlcmJvYXJkIHdoZW4gSSB1c2VkIFBDSWUgDQo+IHZzIEV0
aGVybmV0Pw0KPiBJIGhhdmUgYSBVU1JQIHgzMTAsIGFuZCB3aGVuIEkgc2VuZCBhIGNoYW5nZSBm
cmVxdWVuY3kgdG8gY2hhbmdlIHRoZSANCj4gZnJlcXVlbmN5IGl0IHRha2VzIGxvbmcgLjIgbXMs
IHRoaXMgZGVsYXkgaXMgZm9yIHRoZSBldGhlcm5ldCBjb21tYW5kIA0KPiBzZW50IHRvIHRoZSBk
YXVnaHRlcmJvYXJkIEkgbWVhc3VyZSBpdCB3aXRoIGNwcCBjb2RlLCBidXQgSSBoYWQgbm90IA0K
PiBhbnkgUENJZSwgYnV0IHRoaXMgaXMgYSBxdWVzdGlvbiBmb3IgbWU/DQo+IE15IHF1ZXN0aW9u
IGlzIGZvciBQQ0llIHdoYXQncyBhIGRlbGF5IGZvciBjaGFuZ2UgZnJlcXVlbmN5IHRoYXQgDQo+
IGVmZmVjdMKgdGhlIGRhdWdodGVyYm9hcmQ/DQo+IENhbiBhbnlvbmUgZ3VpZGUgbWU/DQo+IHRo
YW5rcyBpbiBhZHZhbmNlDQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NClRoZSBmcmVxdWVuY3ktc2V0dGluZyBsYXRlbmN5IGlz
wqAgKnV0dGVybHkgZG9taW5hdGVkKiBieSB0aGUgdGltZSBpdCANCnRha2VzIGZvciB0aGUgUExM
IHN5bnRoZXNpemVyIHRvIGFjaGlldmUgbG9jaywgYW5kIFRIQVQNCiDCoCBpcyBkZXBlbmRlbnQg
b24gd2hpY2ggZGF1Z2hlcmJvYXJkIHlvdSBoYXZlLCBhbmQgaG93IGJpZyBhIGZyZXF1ZW5jeSAN
CmNoYW5nZSB5b3UncmUgbWFraW5nLsKgwqAgVGhlIGZyYWN0aW9uIG9mIHRoZSBsYXRlbmN5DQog
wqAgY2F1c2VkIGJ5IHRoZSBjb21tdW5pY2F0aW9ucyBjaGFubmVsIGlzIGxhcmdlbHkgaW1tYXRl
cmlhbC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQo=
