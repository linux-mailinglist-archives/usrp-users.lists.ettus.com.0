Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E17CA588ED4
	for <lists+usrp-users@lfdr.de>; Wed,  3 Aug 2022 16:43:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D159438098D
	for <lists+usrp-users@lfdr.de>; Wed,  3 Aug 2022 10:43:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659537794; bh=G+oZwfqNLHK8CT5MZHZ5vysSelwn0RwDnUKkxHYg+H8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=R8cz3Bdwh9F5J9z34YvbiqH5wpzy5GkjTfgwMYRwIN1ptfwf1GKZShrfsggVOQ3tW
	 ueNO4hoOkaip3AB8rp8vf5mPj1cvOKRJCYgeGKyZsAghhluwDTCVyC54c3r75iB3eH
	 cozs1QUtkcFavAEoI8seA3ezeIa8t95l6uTMztjDLiTGVv+jeedGHn3jJyi9/cxSZP
	 iX17caWiedhLZeAu61/+VgLxt7DJaFPcCz2aSNLqsi9GiwggaI8mNvrNGiZyZsdBph
	 YIHFgveXNUHCkIsdhOl5SMNOkLxCBth9SIPNUVhJid3byrRKpj2lcSLd2YzzBJjqfg
	 RrMSbbtR5vYkw==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 646C3380FF6
	for <usrp-users@lists.ettus.com>; Wed,  3 Aug 2022 10:22:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="BCvnU811";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id m8so21625027edd.9
        for <usrp-users@lists.ettus.com>; Wed, 03 Aug 2022 07:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=8fln323i/dJSsw5ZwBDTCgIUHKapGjTgIVP7Dcyl8pA=;
        b=BCvnU811DiRrenXx5btfuD4V52iDn+/bJ+ryYzIbwFeSSYxggnJNKwwsWMioSVLm2E
         RNTHUTt05RO3Mo9m6qCLJSRhZJ/YwU+D/zODGVkh6yJR1RnouvbCna9bg6CveHNr/i35
         rQ1q3PjxM2QE5oaLIqmm3w8m+ptJFgWL9HCO7MnOvYJxRyNvlp1IoRs3ZsJM0SHXKZsf
         iEj6Zw78RII1UO8WrZh0ZbxgLzgfbrdvfn8AY8NIHea/h66fwds7fBKKCVfSC2lbG0wj
         so7/rJAEpU5SwJs8A9zi/DTW8fBh0O9nI20OHMPvD63Emu81Qq/bwN7kQfu6gT1R/Jww
         91IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=8fln323i/dJSsw5ZwBDTCgIUHKapGjTgIVP7Dcyl8pA=;
        b=F4njzZzqNxT58SjW6ijwocn11Az5qm+VGa+9yrK1HAbRkzC3TjEzoen+4VlmuGQ1K2
         VfEpMihbeIGtWaQgbncUeZOhcECHRUTPHAmnoA/kkKXOgjB+mBbkszJceo7vw+qpasWi
         qQRj6qk5RoG5BCpK9j1ly8jGDbHUnlofdZqqrb17dfeAk+vZmpPA7U4KIxI62jOo0zGG
         qNGT9G941qcpr7U7WAI2ewTQ1pgCa4lI+YEo54BfbQGWPMPaYiWGqTIoL4VjXEgLlkWG
         bF4LKbqUfmg012l8ArhKABX4cKn6TJfy7X6xw2Ejn11ZbQf/GHaiKZnreVp6pogtp+QD
         43bA==
X-Gm-Message-State: AJIora+mQnf7sidUlPKlSKHhOhjyaZmwCnw/4HObTbMJ60ECCD6M+Nt7
	QQ6p544HoxORd2r2cS//b/h8z6jLYzlpsJk6
X-Google-Smtp-Source: AGRyM1sVuUA1NQvFzvRX2RK9K89W8h1TVVLT3+fIIK/frvoqc3arlLpd/hrXqMGi3n+7nHXAPJ6uOw==
X-Received: by 2002:a05:6402:5249:b0:43c:cb3e:d7f8 with SMTP id t9-20020a056402524900b0043ccb3ed7f8mr26446709edd.56.1659536543138;
        Wed, 03 Aug 2022 07:22:23 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3849:ddfc::d8d? ([2001:9e8:3849:ddfc::d8d])
        by smtp.gmail.com with ESMTPSA id w7-20020aa7cb47000000b0043a7134b381sm9586394edt.11.2022.08.03.07.22.22
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Aug 2022 07:22:22 -0700 (PDT)
Message-ID: <c9ee0128-1484-e246-6cb5-de9e035d9e11@ettus.com>
Date: Wed, 3 Aug 2022 16:22:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <H7eF9EnYkdH4fpAXJ7k8MHrEUYl5zcyB9dkIdHE7o@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <H7eF9EnYkdH4fpAXJ7k8MHrEUYl5zcyB9dkIdHE7o@lists.ettus.com>
Message-ID-Hash: Z5NYX6ISZYDBNTT4GMWAP5MUYOYTWGXZ
X-Message-ID-Hash: Z5NYX6ISZYDBNTT4GMWAP5MUYOYTWGXZ
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: nr-softmodem run error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z5NYX6ISZYDBNTT4GMWAP5MUYOYTWGXZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkhDQoNClRoaXMgaXMgaW5jcmVkaWJseSBoYXJkIHRvIGRlYnVnIHdpdGggdGhpcyBsaXR0bGUg
aW5mbywgYnV0IHRoZSBtb3N0IGxpa2VseSBjYXNlIHdvdWxkIA0Kc3RpbGwgYmUgYW4gQVBJIG1p
c21hdGNoIGJldHdlZW4gdGhlIHZlcnNpb24gb2YgQm9vc3Qgb3IgVUhEIHRoYXQgeW91IHVzZSBm
b3IgTlItU29mdG1vZGVtIA0KYW5kIGZvciB5b3VyIFVIRCBidWlsZC4gTWFrZSBzdXJlIHlvdSBk
b24ndCBoYXZlIG11bHRpcGxlLCBwb3RlbnRpYWxseSBjb25mbGljdGluZyANCnZlcnNpb25zIG9m
IFVIRCBvciBCb29zdCBpbnN0YWxsZWQuDQoNCkJlc3QgcmVnYXJkcywNCk1hcmN1cw0KDQpESVND
TEFJTUVSOiBBbnkgYXR0YWNoZWQgQ29kZSBpcyBwcm92aWRlZCBBcyBJcy4gSXQgaGFzIG5vdCBi
ZWVuIHRlc3RlZCBvciB2YWxpZGF0ZWQgYXMgYSBwcm9kdWN0LCBmb3IgdXNlIGluIGEgZGVwbG95
ZWQgYXBwbGljYXRpb24gb3Igc3lzdGVtLCBvciBmb3IgdXNlIGluIGhhemFyZG91cyBlbnZpcm9u
bWVudHMuIFlvdSBhc3N1bWUgYWxsIHJpc2tzIGZvciB1c2Ugb2YgdGhlIENvZGUuIFVzZSBvZiB0
aGUgQ29kZSBpcyBzdWJqZWN0IHRvIHRlcm1zIG9mIHRoZSBsaWNlbnNlcyB0byB0aGUgVUhEIG9y
IFJGTm9DIGNvZGUgd2l0aCB3aGljaCB0aGUgQ29kZSBpcyB1c2VkLiBTdGFuZGFyZCBsaWNlbnNl
cyB0byBVSEQgYW5kIFJGTm9DIGNhbiBiZSBmb3VuZCBhdCBodHRwczovL3d3dy5ldHR1cy5jb20v
c2RyLXNvZnR3YXJlL2xpY2Vuc2VzLy4NCg0KTkkgd2lsbCBvbmx5IHBlcmZvcm0gc2VydmljZXMg
YmFzZWQgb24gaXRzIHVuZGVyc3RhbmRpbmcgYW5kIGNvbmRpdGlvbiB0aGF0IHRoZSBnb29kcyBv
ciBzZXJ2aWNlcyAoaSkgYXJlIG5vdCBmb3IgdGhlIHVzZSBpbiB0aGUgcHJvZHVjdGlvbiBvciBk
ZXZlbG9wbWVudCBvZiBhbnkgaXRlbSBwcm9kdWNlZCwgcHVyY2hhc2VkLCBvciBvcmRlcmVkIGJ5
IGFueSBlbnRpdHkgd2l0aCBhIGZvb3Rub3RlIDEgZGVzaWduYXRpb24gaW4gdGhlIGxpY2Vuc2Ug
cmVxdWlyZW1lbnQgY29sdW1uIG9mIFN1cHBsZW1lbnQgTm8uIDQgdG8gUGFydCA3NDQsIFUuUy4g
RXhwb3J0IEFkbWluaXN0cmF0aW9uIFJlZ3VsYXRpb25zIGFuZCAoaWkpIHN1Y2ggYSBjb21wYW55
IGlzIG5vdCBhIHBhcnR5IHRvIHRoZSB0cmFuc2FjdGlvbi4gIElmIG91ciB1bmRlcnN0YW5kaW5n
IGlzIGluY29ycmVjdCwgcGxlYXNlIG5vdGlmeSB1cyBpbW1lZGlhdGVseSBiZWNhdXNlIGEgc3Bl
Y2lmaWMgYXV0aG9yaXphdGlvbiBtYXkgYmUgcmVxdWlyZWQgZnJvbSB0aGUgVS5TLiBDb21tZXJj
ZSBEZXBhcnRtZW50IGJlZm9yZSB0aGUgdHJhbnNhY3Rpb24gbWF5IHByb2NlZWQgZnVydGhlci4N
Cg0KT24gMDMuMDguMjIgMTU6MjUsIGsxOTAzMzg0NC0tLSB2aWEgVVNSUC11c2VycyB3cm90ZToN
Cj4NCj4gRGVhciBBbGwsDQo+DQo+IEnigJl2ZSBzdWNjZXNzZnVsbHkgYnVpbHQgdWhkIGFuZCBv
dGhlciBkZXBlbmRlbmNpZXMsIGJ5IGV4ZWN1dGluZyB0aGlzIGNvbW1hbmQ6IHxzdWRvIA0KPiAu
L25yLXNvZnRtb2RlbSAtTyANCj4gLi4vLi4vLi4vdGFyZ2V0cy9QUk9KRUNUUy9HRU5FUklDLU5S
LTVHQy9DT05GL2duYi5zYS5iYW5kNzguZnIxLjEwNlBSQi51c3JwYjIxMC5jb25mIA0KPiAtLXNh
IC1FIC0tY29udGludW91cy10eHwuDQo+DQo+IEkgZ290IGZvbGxvd2luZyBlcnJvcjogbnItc29m
dG1vZGVtOiAvdXNyL2luY2x1ZGUvYm9vc3Qvc21hcnRfcHRyL3NoYXJlZF9wdHIuaHBwOjczNDog
DQo+IHR5cGVuYW1lIGJvb3N0OjpkZXRhaWw6OnNwX21lbWJlcl9hY2Nlc3M8VD46OnR5cGUgYm9v
c3Q6OnNoYXJlZF9wdHI8VD46Om9wZXJhdG9yLT4oKSANCj4gY29uc3QgW3dpdGggVCA9IHVoZDo6
cHJvcGVydHlfdHJlZTsgdHlwZW5hbWUgYm9vc3Q6OmRldGFpbDo6c3BfbWVtYmVyX2FjY2VzczxU
Pjo6dHlwZSA9IA0KPiB1aGQ6OnByb3BlcnR5X3RyZWUqXTogQXNzZXJ0aW9uIGBweCAhPSAwJyBm
YWlsZWQuIEFib3J0ZWQuDQo+DQo+IE1ZIHNvZnR3YXJlIGluZm9ybWF0aW9uIGlzIGxpbnV4OyBH
TlUgQysrIHZlcnNpb24gNy40LjA7IEJvb3N0XzEwNjUwMTsgVUhEXzMuMTQuMS4xLXJlbGVhc2Uu
DQo+DQo+IENhbiBhbnlvbmUgaGVscCBtZSBvbiB0aGlzIGVycm9yPw0KPg0KPiBUaGFua3MgYSBs
b3QuDQo+DQo+IFdhcm0gcmVnYXJkcywNCj4NCj4gR3VhbmcNCj4NCj4NCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
