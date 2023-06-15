Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C3B731A07
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jun 2023 15:33:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E7258384AE5
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jun 2023 09:33:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686835987; bh=AopwsYeKMvW5/fGC1zvTvg/aUtlnvIWkJvQyIFKu2MU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LGCQqVUjZulAE/toIhema6xymkCPeFf4DkaL2M7PIrcX5O/OJKvUU7ZOHE6l5NjA+
	 aYbiO2aQ+Hoin54S46BLt6XV+04MOzx35J/bQSv6lkCBsW+zqrDBm3zMQFr9MZJ7xQ
	 y/UJcjVnEfoLhedyy/PFi0UJbdjuis9YpsCPVYdse4+SNKWoKRe0VBknOw7eg3nKmr
	 MHDli+pePrnXnKmi1o0VgFCcpXx4KZyJustwhIJmyhJJiqO0XRBlZ9wS260av1wU70
	 uaM7StZcyjyMNOzl26Y/QeOPELlyrb3fPRQLwwnIDDoMp53sCccUdFo3E5664PFvzd
	 7zhVT++GgxHtg==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 45FF3384957
	for <usrp-users@lists.ettus.com>; Thu, 15 Jun 2023 09:32:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CGRt6rUi";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-3f9b4a656deso29844151cf.0
        for <usrp-users@lists.ettus.com>; Thu, 15 Jun 2023 06:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686835927; x=1689427927;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=krO6zdSUIlLm+xyLwMnnUxYbD3ca2UwCOGJ9+7Xl2Bw=;
        b=CGRt6rUi8gDdP5pDOKVshqEHzVFnZdvhm4CrWiY9zt99GyQcwRS2+azSY8Zyb9EtSV
         AmjuINXqInbc6DPJ7xXARZgjokaSKIxZ4RwydRrt9U/n0lpV5zysNGa3uUz2Yb9uPKXe
         iGbNUD6hqj1rxsfJCjHmLhRPCR/SWqGjPIiUmYg36lj2z9vBgAUo1gAkZM/7dmslA5g9
         3L/vvdo43RkQtlkYvkpNEBIn0Y0omyrnElG8ztWgQIyLtQqAH6ao22YnsvtFAbvSMTsD
         78OxKd6LWg7jUa/+wnUnckNVAQZsM2djNR0vM3sqCsPVWBmnnxU9EodW2CjqxUAAIzxS
         WKqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686835927; x=1689427927;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=krO6zdSUIlLm+xyLwMnnUxYbD3ca2UwCOGJ9+7Xl2Bw=;
        b=bhIPRq04/iqAOAY9tEllHOwcR1DjpNovDzpQ3DZ9R4o5fEsAK7mEWdPBfr1qgFE86i
         sDDcyt45zEPD1pgV7iUc3uQub6UIZNuO5X4F0aNW8RdlaRlDxx4LXSLtWI7LaLSc1voZ
         sJlXeS2v9Z1X1fKEV98PnZ/cJGKSFntQeo0UW0fY21kYppJv4cT8fwW+bxXbCL6BgYAX
         UI0LWVIFNOuL7lHE8hCNNnT8ziUipw+PW53Wtq8bfsXMPKgFC5woAxSwiI4C8Smb58ZN
         Xeed2AJsrDoS7wEB5lANiZnM3LF0FBwWZ9QynttOecWOo7aHn1bUQ0whDZCOOGDQWBX0
         4Xew==
X-Gm-Message-State: AC+VfDzGcmOrYfMkT5TM3xtvDCsJ3iiiWOzmnRx0+b5WYISB/j2v4aan
	h9NXv0/2hQtI2GYorQ3k9nGTsEbb11wnGw==
X-Google-Smtp-Source: ACHHUZ6B4Hyzf0OW5wzlqob9xvg2Zt46wD58Ae/qy5s7uT4v2Ky/O1noU1VWsFbMsioIB7lb374F/A==
X-Received: by 2002:ac8:7e86:0:b0:3f5:2d80:e5f0 with SMTP id w6-20020ac87e86000000b003f52d80e5f0mr6223611qtj.40.1686835927265;
        Thu, 15 Jun 2023 06:32:07 -0700 (PDT)
Received: from [192.168.2.183] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id e5-20020ac84b45000000b003ef13aa5b0bsm6218856qts.82.2023.06.15.06.32.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jun 2023 06:32:06 -0700 (PDT)
Message-ID: <b87ade32-d119-2a53-4cbc-efe60212a90c@gmail.com>
Date: Thu, 15 Jun 2023 09:32:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAOkUcStztZNDcFMHftzcZXXnQwDbYAOeHZ+eBpJJoNUY8pmGUw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOkUcStztZNDcFMHftzcZXXnQwDbYAOeHZ+eBpJJoNUY8pmGUw@mail.gmail.com>
Message-ID-Hash: DXJNB5PCQXOHJCQVPGHKUD45DW2WWXIZ
X-Message-ID-Hash: DXJNB5PCQXOHJCQVPGHKUD45DW2WWXIZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.0 - Reading FPGA core temperature - USRP2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DXJNB5PCQXOHJCQVPGHKUD45DW2WWXIZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTUvMDYvMjAyMyAwNjozMSwgY3liZXJwaG94IHdyb3RlOg0KPiBIaSBBbGwNCj4NCj4gSSB3
b3VsZCBsaWtlIHRvIHJlYWQgdGhlIEZQR0EgY29yZSB0ZW1wZXJhdHVyZSBvZiB0aGUgS2ludGV4
IHdpdGhpbiANCj4gdGhlIFVTUlAyOTc0LCBhbmQgYW55IG90aGVyIHRlbXBlcmF0dXJlIHNlbnNv
ciBhdmFpbGFibGUsIGlkZWFsbHkgb24gDQo+IHRoZSBSRiBib2FyZHMuDQo+DQo+DQo+IElzIHRo
ZXJlIGFuIEFQSSBmb3IgdGhpcz8NCj4NCj4gdGhhbmtzDQo+IG1hcmlubw0KWW91IGNhbiB1c2Ug
dGhlICJ1c3JwX2xpc3Rfc2Vuc29ycyIgZXhhbXBsZXMgYXBwIHRvIGxpc3QgYWxsIHRoZSBzZW5z
b3JzIA0KdGhhdCBhcmUgYXZhaWxhYmxlIHRvIHRoZSBBUEkgLS0gYW5kIGxvb2sgYXQgdGhlIGNv
ZGUNCiDCoCB0byBzZWUgaG93IGl0IHVzZXMgdGhlIHNlbnNvcnMgQVBJLg0KDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
