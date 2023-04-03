Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD9B6D450D
	for <lists+usrp-users@lfdr.de>; Mon,  3 Apr 2023 14:59:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C98A7383BE5
	for <lists+usrp-users@lfdr.de>; Mon,  3 Apr 2023 08:59:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680526779; bh=TdMkSHnP6D04O9UpgGMNQprAKf1rsHMOIhyVNseRkXY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Qel26eXXajs6KqRJJJKX+RmW+p4ogz2Tt0+ZZ8bGRWPfVjqgOKpsv/arjcdcpU4HP
	 hxugL5tkn2cj0PER0rzr17i1aI0YJmw1LM85wUAnCy9sNI30Z5XRUsjk119QrvE/7B
	 kUkO+nnZgksq5ILF9j+TRKbqKLuKqir9iFOTYVGyZ9/cP47cKQQUF+Hz1y4UWnZ0zj
	 G5MNmOUG5ZeZu0/mh1ZvTKFXewLFcrSd/zXlkrEiXM2nXeAojzandaHY8g2/AHrejH
	 I7T+rJQd419f+LMEOSoEbCMH38dDHjTrYLjkcYTW9SpDqLBGP8E8JnrJzSTgYsE6Yp
	 +/bPhW9oJvsJw==
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 3BC4E383BE5
	for <usrp-users@lists.ettus.com>; Mon,  3 Apr 2023 08:59:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dwFGw5EV";
	dkim-atps=neutral
Received: by mail-wr1-f50.google.com with SMTP id m2so29256567wrh.6
        for <usrp-users@lists.ettus.com>; Mon, 03 Apr 2023 05:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680526773; x=1683118773;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0XiM0yS2D48AiR1H7lUxH8t4yqc5JvPNb63ggUKhJqI=;
        b=dwFGw5EVtJ+KIyjIFOyuLE5brIyh7E5bqDwRkQOTgAjzP9jbpM5bjbNaitAj8cYjTl
         3MqduS3F7Nh/L5gpYpbIUlaPxRZGw92bljxtFhLQI8C/LkboPMiR/TEgTcRjulVhQwui
         5dGE9akZxZTUItsvdZfeyeDf8e6EwfBjnR5vjwZMgC6itYdGWEkmDrkH0Py4ygUE91jb
         sjTqiY4BKrhKZJWf9uXqPEwz/xw0Gio62S/4XAxOgBJXXkDF7hY4YGxmwI5d4KRxyAAT
         rTsbml35GolCxOdq53VivTrhGe6mDd64ALU7VufEkvS1AZS1f5uZwg0PUZ+g6AvlIT2N
         uepA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680526773; x=1683118773;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0XiM0yS2D48AiR1H7lUxH8t4yqc5JvPNb63ggUKhJqI=;
        b=vvmI05kH8o93PTSnSL9yl61NJ7cpg7UeAqkuA28/YTz8kjojTXHXyo1Z22GpdZYLaN
         c7P+xTnkAXsIY4yoxhi6yG1k8uc0qrzDlZPR83k2+kWJfksE3qbM53g9Sxr8+k9KbJYW
         1Dea6aO2prtsc2MDr869AcE/6IUDR0uUZRgqiAscnWDqQBd3I+xYKOn5MZOj62qBTp1P
         n+3SNF1BHu5e8BYnq/Z1wWcVE67/YXkoveEGXVoxGbaKJt3Uvn8rUpqRiW/7B8fEtzbO
         IECHxRBQS7HHM5uK3rB8I9B5/tQf0PbouHD0CaVJ/Y9MV7CfkHCGgNQBMTP1vF39Gyit
         ulFA==
X-Gm-Message-State: AAQBX9ep6KeQG+IAUf1kZFuhr2PJim4Gdgb0ef8tl9HP5xWQjtkxHuWd
	DPnPerBjgQ9B5WqtLuYZM+BdadQZo80=
X-Google-Smtp-Source: AKy350alqxpRW9K2eWcflau5XI0OGgQX7bJ/Rl8D3UaERciFZIykL6cs1F9ct+IH7foyvEdwFWom+A==
X-Received: by 2002:adf:db4b:0:b0:2d9:eb77:90d2 with SMTP id f11-20020adfdb4b000000b002d9eb7790d2mr25757576wrj.70.1680526772883;
        Mon, 03 Apr 2023 05:59:32 -0700 (PDT)
Received: from [192.168.2.210] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id r8-20020adfdc88000000b002de99432fc8sm9727398wrj.49.2023.04.03.05.59.31
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 05:59:32 -0700 (PDT)
Message-ID: <5f235864-eb0a-4810-6d43-e463bb70ac89@gmail.com>
Date: Mon, 3 Apr 2023 08:59:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <95ea5508-ba7c-d6b0-2536-81d3c41a102e@sma-rty.com>
 <bf18e170-7ccb-3a59-58b8-df34ef15ccc3@gmail.com>
 <f01adedb-4d6c-8db3-df02-ae01571dbd94@sma-rty.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <f01adedb-4d6c-8db3-df02-ae01571dbd94@sma-rty.com>
Message-ID-Hash: XIDMEPCNLR4TFYBIWUQSCDT5NZIDYIII
X-Message-ID-Hash: XIDMEPCNLR4TFYBIWUQSCDT5NZIDYIII
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Info about processor frequency
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XIDMEPCNLR4TFYBIWUQSCDT5NZIDYIII/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDMvMDQvMjAyMyAwNToyMiwgRmVkZXJpY28gQ2l2ZXJjaGlhIHdyb3RlOg0KPiBIaSBNYXJj
dXMsDQo+DQo+IHRoYW5rIHlvdXIgZm9yIHlvdXIgYW5zd2VyIGFuZCBzb3JyeSBmb3IgdGhlIGxh
dGUgcmVwbHkuDQo+DQo+IFllcywgSSBtZWFuIGhvc3QgQ1BVIGZyZXF1ZW5jeS4gSSB3YXMgd29u
ZGVyaW5nIGhvdyBJIGNhbiBnZXQgdGhlIA0KPiA8aW5oZXJlbnQtY29tcGxleGl0eS1wZXItc2Ft
cGxlPi4gRG8geW91IGhhdmUgYW55IGhpbnRzIG9uIHRoaXMgb3IgDQo+IHByb3ZpZGUgbWUgd2l0
aCBhbiBleGFtcGxlPw0KPg0KPiBJZiB3ZSBjb25zaWRlciBhbiBhcHBsaWNhdGlvbiB0aGF0IHNp
bXBseSBnYXRoZXIvdHJhbnNtaXQgdGhlIGRhdGEgDQo+IGZyb20vdG8gVVNSUCB3aXRob3V0IGFk
ZGluZyBhbnkgcGFydGljdWxhciBwcm9jZXNzaW5nIChzb21ldGhpbmcgbGlrZSANCj4gYSBsb29w
YmFjayBhcHBsaWNhdGlvbiksIHdoYXQgaXMgdGhlIGNvbXBsZXhpdHkgdG8gcGxheSB3aXRoIHRo
ZSANCj4gc2FtcGxlcz8gTWF5IEFSTSBwcm9jZXNzb3JzLCB3aXRoIGxvdyBmcmVxdWVuY3kgc3Vj
aCBhcyAxLjRHSHosIGhhbmRsZSANCj4gdGhlIHN0cmVhbSB3aXRob3V0IHNob3dpbmcgUlQgaXNz
dWVzPw0KPg0KPiBUaGFua3MgYSBsb3QuDQo+DQo+IEJlc3QgUmVnYXJkcywNCj4NCj4gRmVkZXJp
Y28NCj4NCkkgY2Fubm90IHRlbGwgeW91IHByZWNpc2VseSBob3cgbWFueSBpbnN0cnVjdGlvbnMg
YXJlIHJlcXVpcmVkIHRvIA0KY29uZHVjdCBhbnkgZ2l2ZW4gdGFzay4NCg0KV2hhdCBtb3N0IHBl
b3BsZSBkbyBpcyB1c2UgYW4gYXBwbGljYXRpb24gbGlrZSAidG9wIiBvbiBMaW51eCB0byBtb25p
dG9yIA0KdGhlIENQVSB1c2FnZSB3aGVuIHRoZWlyIGFwcGxpY2F0aW9uIGlzIHJ1bm5pbmcuDQoN
Ckp1c3QgdGhlIGJhc2ljcyBvZiBnZXR0aW5nIHNhbXBsZXMgaW50byBhbmQgb3V0IG9mIHlvdXIg
YXBwbGljYXRpb24gbWF5LCANCm9uIGF2ZXJhZ2UsIHRha2UgZG96ZW5zIG9yIGV2ZW4gaHVuZHJl
ZHMgb2YgaW5zdHJ1Y3Rpb25zDQogwqAgcGVyIHNhbXBsZS7CoCBUaGVyZSdzIGRyaXZlcnMgaW4g
dGhlIG9wZXJhdGluZy1zeXN0ZW0ga2VybmVsLCBhbmQgdGhlIA0KbGF5ZXJzIG9mIGxpYnJhcnkg
KFVIRCkgdGhhdCBhcmUgaW52b2x2ZWQgYXMgd2VsbC4NCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
