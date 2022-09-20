Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F995BED32
	for <lists+usrp-users@lfdr.de>; Tue, 20 Sep 2022 20:55:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 060993841A8
	for <lists+usrp-users@lfdr.de>; Tue, 20 Sep 2022 14:55:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663700126; bh=lLGz2qm258TfF023GDx63JVfhWlnIca6oCw410z5How=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XXH3NwthyHPfmww1/wqie3i5L2iXCjJHTO5J4imz6hnn+qo307URBUhtqJBoSfrOw
	 kpRFPnHXGI4bRs56Yu5vO4wvql1wCuUMSUIv1wo4K/lZ9lAbgi6UZ4Wr1M94m11dqU
	 h0ahFZ+oSZ1CHAdYzaYch0J4478445twhExC9qkCJLlWXN6jEUdV0+tMaLzEUcx+Z2
	 QhHIzHb/dSusbi72Em4UNou69zLSUKM8NHJ1rw9hsQMVG4l0D0gaCxoi+T0qj5XHUM
	 HRzeQyP+Q3ZqahtGLk3WxunqJrAlrI1NnfcN/gYoAjoowmjxE/oeH/N9sEqhPvnCRv
	 k4wd4kLUHPjYQ==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id E649A384027
	for <usrp-users@lists.ettus.com>; Tue, 20 Sep 2022 14:54:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="psSxrbWF";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id j10so2434677qtv.4
        for <usrp-users@lists.ettus.com>; Tue, 20 Sep 2022 11:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=nvoYKp6GataI7t+OUGnSF7iphkdVIp8zs3TLgbi33+k=;
        b=psSxrbWFI0K1TbJstTEZ9NR/uycbVWH4AZXoYGH9bJjnPhuV8nTYtgNK6/ZalHpfwW
         EnngJJdp3B1QITRmEy9ZoDhDlGeEWvAFaYi+wJJ+wJ7iHqPM+Y2zv8bF2lKnQiEswEdM
         F5xg9Nno+0yb564faBJkd6WnDyR9cIc3HakP9kI5SAmVcYGG+93Pv8OuyUXYbFuPlXVy
         nBW3e6KvA9vg75wcALSrPOzm0GvKFULh2s8Y/exO5Qc4JujerOljGmXHfdarCbFn9z2N
         ND+0CQWYpxrhvVOGjo7g8wHqCh+wc49ZmE7uQhmA9JHoyvnWkb9PnyRUtmTc3DBGdFR3
         3Juw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=nvoYKp6GataI7t+OUGnSF7iphkdVIp8zs3TLgbi33+k=;
        b=AAAbVz4XC/pEADQPbSUi9RJsjz2c2lU/Aiwk7YtVrI8UDsLJAopuK6X4q7B+0vE8+1
         q/JQApQBrSET60NSj8D1SsIjeNskD5fbPv0hOHSpOBqnstG0kAyFccaVzMTvY3PwXk5P
         pDk7XfqVM2T1hV8PLo98qkmUtu4cvfk0SNT70N9XMhMhgAuvwb99WRI9yImW0mNzDQMr
         xMfFA4IhIE6W5zKReKz6d9Jz+ryr5mkPcP6VzFT3Rrx8y70mKMPiM/ZtF2Z3os+QlpQT
         ylyhweNknPADcYxfUvHjM6i7rVJw9S1TssnSe8kWF4UpYqXgDfXRrprvZosEuIzRbF25
         VUTQ==
X-Gm-Message-State: ACrzQf1Mojq/+U5NYtdCfvZPN3qfCNLJZKho2+ZBkngj2iO4owNecdsA
	GUXsXH1ZyUzBAgbXqgVz49Fyh8QSGGM=
X-Google-Smtp-Source: AMsMyM7KamwmTiH/Funp6teyzK69DZvTOmcKe4ea6AGVoBy9MHZwmeEQ+HzTbNkzWipmY6gotMcqjQ==
X-Received: by 2002:a05:622a:1827:b0:35b:bb7f:6851 with SMTP id t39-20020a05622a182700b0035bbb7f6851mr20321328qtc.457.1663700077116;
        Tue, 20 Sep 2022 11:54:37 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id q14-20020a37f70e000000b006bba46e5eeasm314901qkj.37.2022.09.20.11.54.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 11:54:36 -0700 (PDT)
Message-ID: <4a163a2d-7be4-a9f4-f499-14fb3f673623@gmail.com>
Date: Tue, 20 Sep 2022 14:54:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <rPXD4EuEfQO3iG9VPkr0EPGARSnSiC5yf0xwgeiPwU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <rPXD4EuEfQO3iG9VPkr0EPGARSnSiC5yf0xwgeiPwU@lists.ettus.com>
Message-ID-Hash: SYZICUYGEI4XTEZUY3ZN5QDVAQL7WAJZ
X-Message-ID-Hash: SYZICUYGEI4XTEZUY3ZN5QDVAQL7WAJZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: set_command_time() question
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SYZICUYGEI4XTEZUY3ZN5QDVAQL7WAJZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOS0yMCAxNDo0OSwgcmkyODg1NkBtaXQuZWR1IHdyb3RlOg0KPg0KPiBJ4oCZbSB1
c2luZyBhIFVCWC0xNjAgZGF1Z2h0ZXJjYXJkLiBJ4oCZbSBhbHNvIG5vdCB0dW5pbmcgdGhlIFJG
IA0KPiBmcmVxdWVuY3ksIG9ubHkgdGhlIGRzcCBmcmVxdWVuY3kuIEnigJl2ZSBtYW5hZ2VkIHRv
IGdldCBMaW51eCB0byBrZWVwIA0KPiB1cCB3ZWxsIGVub3VnaCBpdCBzZWVtcyB0aHJvdWdoIHRo
cmVhZCBwaW5uaW5nLg0KPg0KPg0KPiBJIGhhdmUgb25lIHJlbWFpbmluZyBxdWVzdGlvbi4gSXMg
dGhlcmUgYSBtZXRob2QgZm9yIGlzc3VpbmcgDQo+IHNldF9jb21tYW5kX3RpbWUoKSB0byBhbiBp
bmRpdmlkdWFsIGRhdWdodGVyYm9hcmQgKHNheSBvbmx5IHRoZSBBIHNpZGUgDQo+IG9mIHRoZSBV
U1JQKSwgb3IgZG9lcyBpdCBoYXZlIHRvIGJlIGZvciB0aGUgZW50aXJlIHN5c3RlbT8NCj4NCj4N
CkkgdGhpbmsgaXQncyBnbG9iYWwgYWNyb3NzIHRoZSBtb3RoZXJib2FyZC7CoMKgIFdoZW4gdGhl
cmUncyBhIA0Kc2V0X2NvbW1hbmRfdGltZSgpIGluIGVmZmVjdCwgYWxsIGNvbW1hbmRzIHdpbGwg
Z2V0IHByb2Nlc3NlZA0KIMKgIGF0IHRoYXQgdGltZSwgcmVnYXJkbGVzcyBvZiB3aGF0IGNoYW5u
ZWwgdGhleSBhcmUgZm9yLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tCg==
