Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEB6507C60
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 00:04:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A111238459C
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 18:04:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650405880; bh=P+RI80Xvba+Ucs3HyV9pHLFAqTY0IFhi/sLwzyZQfJU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=onYqlqn2CXVt+EeQNHJWpI3y0u18gjXiJEwVc+FlMexNap6XFm9yg9VDRJuGEPf+C
	 i2qGxnfFQ6i0xeT/CHJF+Y3z6Gt2RqTJXPLaIKGELBtIRkr4nfy6YmxhmzhXz7UdJz
	 rKeDk4ajvnxl1tg05GDqQXusEu/i3zPqx8k1uz6lXbGC6dI+8Qecnf7wzaAwIZ0H8s
	 hmUyq7BnN1edBOwfogM/jKm57TlsQLMRuk2lnljCc7LBLaW+ZdS194odju2lvYb+lb
	 cn80qkK53UvYHHByrojyBAqJEyxQJur50W7cnwric1WvKqknpiIQlH6XZmP5/Ei9n1
	 9UzUibS4wxQxw==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 574EE38456A
	for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 18:03:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pekf3I1U";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id a5so72271qvx.1
        for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 15:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=bQnxMtRLlKEoOyhnbYl6bW8xAjCQg6Z/q+lTR+R7kdQ=;
        b=pekf3I1UvZVp17c1heAL8kiIYsWMtzhfQXW6nO7Y9HdS7QW6dNCOrOBJYD5aBzhx+p
         y4Ew9wJB6GfKKSD/Im7UE5yzHZ6Nczl3aGj84MfXFgZIGAKSHSCyquGIavH3Uso7oyER
         OuUef2ALUABfTHHdsfV72NALxhHeLIN2Zhq0yZysqEQrow8z+AzkJJcA8JJFZ8xK2pxy
         qFfYlDOAiCIFXIZNq0cD2yrWWNfZiUjhzJj4aX0LL5n5IGuVcnP8kzgl8/JowMIGpPHz
         EtKVekkyK7sBTeQail1hFX+/hGuTjiJrfATxi0nddqfkbyaQRgyxUVGWR7kqdsy3V0D6
         w5MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=bQnxMtRLlKEoOyhnbYl6bW8xAjCQg6Z/q+lTR+R7kdQ=;
        b=oxyv0Wh0ynCKcsjmZFJeJRSuz53yf/Zo6dhZsNCsApmvUYsVCGjuI8cVDgKiBdMTSu
         M6BF8T/NCibVusUhKQlzOv0IpjiTjQStrjTxXSYVmtP3cqNvPV9w72UeGj40I10nkWe1
         mIsEL/Q9x8BqgheSWhP1X0zZw6PKj7sCdVUCKRoM2k6PDN9x7F9II4mSB3bDPhoBCfMW
         scfj5MKa5Fl7PgunlfOZHqrcIh1KW16XDF2M5p0LXkW7JYg4UmbjnKEuaGq5HRS5Bbbz
         yW/W/Tm9MPr9f1NUUyrqLey7MxJ2AWhc4xqGj5vMI52+8U3hrl+oQGkIxAMAGEUWU/A9
         CvpA==
X-Gm-Message-State: AOAM530WryM17Gxi+oXyKvQom5h35d2I1gee0fS3C+d9vKcW2HlgKhAn
	W0EwfYgKdxaEo2PFIsL4F8qs4L2wluqoiQ==
X-Google-Smtp-Source: ABdhPJxxyog9v6FmbtPg324YQ2N7tRuC4SIr26O1vqzIrYjSEi6kkpez6htG6zqzxe4/t4rFcCGhfA==
X-Received: by 2002:a05:6214:2b07:b0:432:f7e6:e443 with SMTP id jx7-20020a0562142b0700b00432f7e6e443mr13455201qvb.125.1650405808269;
        Tue, 19 Apr 2022 15:03:28 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id 2-20020a05620a06c200b0069ea498aec7sm600563qky.16.2022.04.19.15.03.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 15:03:27 -0700 (PDT)
Message-ID: <17c6ff8a-23d3-857d-cd9e-8c7481f5f225@gmail.com>
Date: Tue, 19 Apr 2022 18:03:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAPT2EegX83McE_TznHb_vPcsgJSw46mBfE9O5mjnnGx8hrt3uw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAPT2EegX83McE_TznHb_vPcsgJSw46mBfE9O5mjnnGx8hrt3uw@mail.gmail.com>
Message-ID-Hash: OIDRFR7OIO2LN6JYRVYCJV6EQTQV4L5Z
X-Message-ID-Hash: OIDRFR7OIO2LN6JYRVYCJV6EQTQV4L5Z
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with connecting BasicRX Daughterboard with X310 RF B
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OIDRFR7OIO2LN6JYRVYCJV6EQTQV4L5Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNC0xOSAxNTowNSwgU2hpY2hlbiBaaGFuZyB3cm90ZToNCj4gSGVsbG8gZXZlcnlv
bmUsDQo+DQo+IEkgYW0gZG9pbmcgc29tZSBleHBlcmltZW50c8KgYW5kIEkgbmVlZCB0byBidWls
ZCB0aGUgMiBieSAyIA0KPiBjb21tdW5pY2F0aW9uIHVzaW5nIFgzMTAgd2l0aCB0aGXCoEJhc2lj
UlggRGF1Z2h0ZXJib2FyZC4gSSB1c2UgdGhlIA0KPiBYMzEwIGFzIGJvdGggdGhlIHRyYW5zbWl0
dGVyIGFuZCByZWNlaXZlci4gSSBjYW4gc3VjY2Vzc2Z1bGx5IHRlc3QgdGhlIA0KPiAxIGJ5IDEg
Y2FzZSwgaG93ZXZlciwgd2hlbiBJIHRlc3QgdGhlIDIgYnkgMiBjYXNlLCB0aGUgb3ZlcmZsb3cg
DQo+IGhhcHBlbmVkIGFuZCB0aGUgcHJvZ3JhbSBjb3VsZCBub3QgYmUgc3RvcHBlZC4gVGhlIFJG
IEIgY2hhbm5lbCBzZWVtcyANCj4gbm90IHRvIHdvcmsgKCBMRUQgbGlnaHQgZm9yIFJGIEIgUlgg
bm90IGZsYXNoKS4NCj4NCj4gSSBoYXZlIGF0dGFjaGVkIHRoZSBmbG93Y2hhcnQgZm9ywqB5b3Vy
IHJlZmVyZW5jZS4NCj4NCj4gQmVzdCwNCj4gU1oNCj4NCldoYXQgaXMgeW91ciBjb21wbGV0ZSBo
YXJkd2FyZSBjb25maWd1cmF0aW9uP8KgIEkgYXNzdW1lIDLCoCB4IEJhc2ljUlggYW5kIA0KMiB4
IEJhc2ljIFRYPw0KDQpJdCBtYXkganVzdCBiZSB0aGUgY2FzZSB0aGF0IHlvdXIgY29tcHV0ZXIg
c2ltcGx5IGlzbid0IHVwIHRvIHRoZSB0YXNrIA0Kb2YgbW92aW5nIDIwTXNzcCBvZiBkYXRhIGlu
IGFuZCBvdXQgb2YgdGhlIHJhZGlvLCBhbG9uZyB3aXRoIGRvaW5nIDIgeCANCkZGVHMgYW5kIGNv
bXB1dGluZyB0aGUNCiDCoCBub2lzZSBzb3VyY2VzLg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
