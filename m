Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8F5680466
	for <lists+usrp-users@lfdr.de>; Mon, 30 Jan 2023 04:39:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04A6A383F99
	for <lists+usrp-users@lfdr.de>; Sun, 29 Jan 2023 22:39:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675049980; bh=DkaF7dwPija/XEvtfDXnr3g6F0Q8sys63kKCAh0Jgcw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MdoYzaLG5vT+zse4mdxBUhVQeYRsMhgeQ6fZsD+Mg6xOonsNQ6udtUgJ/h2N+8bfO
	 zFd0yQ4zHv8FrgcT59Sw2R+AfHYUp3bh+lHrMTy9gk9ZFANPlilyGieAhYdDJ4p/Ve
	 ty/a9IDgFb7e5s26VrGSOd4PoMUf7id181i6hxByVqfJCD265CztKXyUPaU4xYDCue
	 z4vz6M4R75im8OwZ5tFHRsMfobLBJMuvkPIrZ0jPfuppGw5sBVR+oKab26Ij02//x2
	 S58O51FXWy6698ra1w4zjy/YBWRtR5XhcegyYOtkxb3WgiqMvwL8FxDD0I7uNcJSsE
	 tkezTsnKQ5mMw==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 8A513383DD5
	for <usrp-users@lists.ettus.com>; Sun, 29 Jan 2023 22:38:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iE1Nhxat";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id jf11so4341841qvb.4
        for <usrp-users@lists.ettus.com>; Sun, 29 Jan 2023 19:38:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UdyeDTiSY/RTSSM1mXIPonrtUu0SdaiDdonA+h/cJQY=;
        b=iE1Nhxat7lCXDtyA18yewXUYNPSNA31GXQqImtTZI268N/NS3O/4x5NOy55qfB5pom
         +DdPcALuAoGleqi5HcbLXykZ1N6vyeRI1wWua14A2nqgw4B23Bz4An92qCD4mT6rdBdD
         U+N4FYV9yxanOCXDteGtC3m9k+8bnmpsrQWbouLeztdWKkHTnruZUWnP8HsSOfL0B/7e
         m3jYFC5lhWOLmtMOiuzOZmK9cis2Bt/plep53A8QwVzrQHsYwHpjGIaHrN1m4inRJkJ5
         8pqr/hlQaLsgz2ISVwd7LIqMmtpjwioAnDi7mtRplhrunH1xwpn/JQ0Io/rGrAPxKr/k
         2mfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UdyeDTiSY/RTSSM1mXIPonrtUu0SdaiDdonA+h/cJQY=;
        b=aFd2M0QqIUaVmoCj3sqqiAA2LULQf6JTqHOD6oR09JDq7AfJUypFYbT24HyPiU0FVE
         6MY22wcyQTsmIvcdRMxGPiT/VGQapJ8GBZQbOu7WC/epshN5sdHYiUPTXVrbYJc3AnGV
         TWeqnaAfB5x8P8wjuvN3nsiT63CCus8gaJJwmUoKralQ3yFyzopC88mneSF8Gl1xyA2d
         I/E3vRXdQdBhTXFl2PDUhVExX+6hs4dNm+DYov5roo/qTea8R544bSpRdoGfM1F+ZlYV
         52mXWckMIsK9QItnoToyDIbTxL3OXIHs3ivlkM8WIFNe77u2EM+Wrh6iRHmaSZEKQs8d
         4ZQQ==
X-Gm-Message-State: AO0yUKVpL8m9mnrDciH5uwZpH/FX/w0N3px6nmH6vq01toMgNu8XWQDG
	rjkdybRNQQhCrhM/u5GWvfgXyFjinZI=
X-Google-Smtp-Source: AK7set/ILZb0EUPGSQ0uHjJ0JRnNitlI9+wEZ5CHF3FUoR9xmlN+rHnIfrVNtjFqtPuy9RaItvTjrQ==
X-Received: by 2002:a0c:808a:0:b0:539:cee8:1996 with SMTP id 10-20020a0c808a000000b00539cee81996mr10580220qvb.22.1675049904760;
        Sun, 29 Jan 2023 19:38:24 -0800 (PST)
Received: from [192.168.2.182] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id op52-20020a05620a537400b007186c9e167esm5815830qkn.52.2023.01.29.19.38.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jan 2023 19:38:24 -0800 (PST)
Message-ID: <02a6562d-20c6-e318-9dda-500e72bc2609@gmail.com>
Date: Sun, 29 Jan 2023 22:38:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <2e1b9d2c.edb5d.18600b67c54.Webtop.89@bigpond.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <2e1b9d2c.edb5d.18600b67c54.Webtop.89@bigpond.com>
Message-ID-Hash: NLRQ5WSA4CY2FURCSXOBPFAUNCI6OA3S
X-Message-ID-Hash: NLRQ5WSA4CY2FURCSXOBPFAUNCI6OA3S
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200mini spurs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NLRQ5WSA4CY2FURCSXOBPFAUNCI6OA3S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjkvMDEvMjAyMyAyMjoyNiwgREFWSUQgQUJFTCB3cm90ZToNCj4gSSBoYXZlIGEgQjIwMG1p
bmkuwqAgQXMgYSB0ZXN0IG9mIHNwZWN0cmFsIHB1cml0eSwgSSBnZW5lcmF0ZWQgYSBDVyANCj4g
c2lnbmFsIGF0IDE3NS4wMDI1IE1IeiB1c2luZyBHbnVyYWRpbyzCoCBJIHNlZSBzcHVycyBhdCAr
Ly0gMTMyLjUga0h6LCANCj4gYXQgLTUwIGRCYzsgd2l0aCBvZmZzZXRzIG9mIDI2NSBrSHrCoCBh
dCAtNjAgZEJjOyBhbmQgYW5vdGhlciBhdCA3MDIuNSANCj4gS2h6YXQgLTYwIGRCYy4NCj4NCj4g
SXMgdGhpcyBleHBlY3RlZCBiZWhhdmlvciBmb3IgdGhlIEIyMDAgbWluaSwgcGxlYXNlPw0KPg0K
PiBTb21lIGZ1cnRoZXIgZGV0YWlsOiB0aGUgR251cmFkaW8gZmxvd2dyYXBoIGlzIGEgc2lnbmFs
IHNvdXJjZSANCj4gZ2VuZXJhdGluZyBhIHNpbmUgd2F2ZWZvcm0gYXQgMjUwMCBIeiwgZm9sbG93
ZWQgYnkgYSBsb3dwYXNzIGZpbHRlci7CoCANCj4gVGhlIFVTUlAgc2luayBoYXMgYSBmcmVxdWVu
Y3kgb2YgMTc1IE1IeiB3aXRoIGFuIExPIG9mZnNldCBvZiAxNSBNSHouwqAgDQo+IFNhbXBsZSBy
YXRlIGlzIDM4NCBrSHouwqAgVGhlIHNwdXJzIGFyZSBwcmVzZW50IG9uIG90aGVyIGNhcnJpZXIg
DQo+IGZyZXF1ZW5jaWVzIHdpdGggdGhlIHNhbWUgb2Zmc2V0cy4NCj4NCj4gVGhhbmtzDQo+DQo+
IERhdmUgQWJlbCBWSzFESkENCj4NCj4NClRoYXQncyBhbG1vc3QgY2VydGFpbmx5ICJpbiBzcGVj
IiBmb3IgdGhlIEFEOTM2MyBjaGlwIHRoYXQgZG9lcyBhbGwgdGhlIA0KImhlYXZ5IGxpZnRpbmci
IG9uIHRoZSBSRiBzaWRlIG9mIHRoaW5ncy4NCg0KRG9lcyB0aGUgYmFzZWJhbmQgYW1wbGl0dWRl
IGFmZmVjdCB5b3VyIG9ic2VydmVkIHNwdXIgcGVyZm9ybWFuY2U/IFRoYXQgDQppcywgaWYgeW91
ciBzaWduYWwgc291cmNlIGhhcyBhbg0KIMKgIGFtcGxpdHVkZSB0aGF0IGlzIHNvbWV3aGF0LWxl
c3MgdGhhbiAxLjAgKGxpa2UgMC44NSkgZG8gdGhlIHNwdXJzIA0KcmVkdWNlIGNvcnJlc3BvbmRp
bmdseT8NCg0KDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQo=
