Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E11586C80
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 16:02:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F36363811B4
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 10:02:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659362529; bh=akaLGCv60wjVFDU9N+wjTLVNWIUZNUVOI8TnlLcHTq4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=EfA6bAICepgpXihtPez0adZsRpuzFSpSoDlUqWNTp4GGf/+l9ob1bYqobCStTA1FG
	 EVvaVqNwcr2vthv6hFqbv8+/1Jezf5vv2IM8BUMfVhbCbA0aJG+6GMAq/pHWFIQCVB
	 5O3kGJUgRA85I8m/tx0GazHQE1iDuzqxCPUQ7aLSvHaNjjK8fqllX+YvDpOHp+T/A5
	 OBPW5K76FxmFbonxpogBSNCxoaXfZNKXT0zZECLaOGgBYh07QMi32HXzHh1pJgYNOY
	 4DJmeNTjrsp6CXJjsCHUqFyn+vdhyhxm2SyNv+1GNrTXI9qjQUjYgEDB9YnYnMyRo/
	 bbz7ubmQxnGBg==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id B6E743810B9
	for <usrp-users@lists.ettus.com>; Mon,  1 Aug 2022 09:59:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QBOKFzhi";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id e5so8042107qts.1
        for <usrp-users@lists.ettus.com>; Mon, 01 Aug 2022 06:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=UvHOU3giO6s6FHTyPKRxEj6jhKzVQRsWYXsv4J7wj9o=;
        b=QBOKFzhiAeqzsmXCB9ACGwbcRCkhwSOeNEc1YiEvKapUI3lrYkeJNwfPhTAE6js7b8
         5K2IB/qeT7ymqyIn+LT/l/czgI2nEMZNvyqAkLG0vo/uIr8S4nUFFgrlvevwcVEw+VlM
         GujUwFjTBBjNMwgDGb+vyjIUabF+yO+wgrHaO6z9mwXVPi9vpOV9cvuywWWK4dWr4H2v
         OY9N9JPU8/DZSwU8oh/uhONW9KeVxqQ8TVk4sRTwo0U5gxundstd3SaWDAnrCc4rINzK
         yybZf8jDEwCibovwQYdfHuU3MlAUSi445DvKtiBD0jK3RCIfD2TcMsiBl9waD9d/QEF/
         X6kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=UvHOU3giO6s6FHTyPKRxEj6jhKzVQRsWYXsv4J7wj9o=;
        b=NK0nWYh9n4RW6wQbw2SHU6AuIUW4EDQxsTVJkw4QjzE4MRw2LeknYL0Ap5ymhhciAh
         WXMMLor36JFk1llGYuUc1Gc7c/wnyB8BICVoWe72YiVnpHotl8usHIpnqznreNMR1Yhq
         xyQiP1tTnF+r0nCikLChAV7daP9AkdZzUUpXxf2nrrIWIAjJQY1cEGvmFNB20qY2Hy+2
         zvXFzatY3sN7MAr1o2t77y8BnNIqtP/7m4fAHHXAY2vIqlE1b8YPysvyiShXzZmfCf9J
         /mkiNEWI45r/yR50x2CCp9RkNtf7qjBRW20AjW/DfszmTfgW31wGW6ybD41CenB/Asur
         3ysg==
X-Gm-Message-State: AJIora8PCwd4d9cis6s6Eckvt9zo2XbmICH3cM+h82npj1lNevQnxJXq
	XzLJSFbJqUuzTplCixGrFQrqkzxRA3U=
X-Google-Smtp-Source: AGRyM1uCeMyepkw51mVhYB+YrHNY/2QlSCefn4l9nd2aOaPr9VpuSWuCfFZYqxMVyDuOk0gFd2tMIg==
X-Received: by 2002:ac8:5f48:0:b0:31f:c78:e596 with SMTP id y8-20020ac85f48000000b0031f0c78e596mr14211898qta.169.1659362395921;
        Mon, 01 Aug 2022 06:59:55 -0700 (PDT)
Received: from [192.168.2.182] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id w12-20020a05620a444c00b006af3bc9c6bbsm8852593qkp.52.2022.08.01.06.59.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Aug 2022 06:59:55 -0700 (PDT)
Message-ID: <322d7217-81c3-64f3-b37a-4fa81c874ed4@gmail.com>
Date: Mon, 1 Aug 2022 09:59:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DGTT1gkdzjUFIP5Jril9sRDzclNJARs6DBQLGzpsgoM@lists.ettus.com>
 <66cc52b3-7d63-8299-a770-c705d0e8efa1@gmail.com>
 <20220801090620.biarppbagmc6bbwd@barbe>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <20220801090620.biarppbagmc6bbwd@barbe>
Message-ID-Hash: RYXTLZEY27I3EVF5ZLPI5JXERPVZ6FBX
X-Message-ID-Hash: RYXTLZEY27I3EVF5ZLPI5JXERPVZ6FBX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 Sample Rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RYXTLZEY27I3EVF5ZLPI5JXERPVZ6FBX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOC0wMSAwNTowNiwgQ8OpZHJpYyBIYW5ub3RpZXIgdmlhIFVTUlAtdXNlcnMgd3Jv
dGU6DQo+IE9uIDIwMjItMDctMjkgMTg6MjEgLTA0MDAsIE1hcmN1cyBELiBMZWVjaCB3cm90ZToN
Cj4+IFdlbGwsIEknbGwgbm90ZSB0aGF0IDQxLjY2N01zcHMgaXMgTk9UIGEgcHJvcGVyIGZyYWN0
aW9uIG9mIEFOWSBvZiB0aGUgMw0KPj4gc3VwcG9ydGVkIG1hc3Rlci1jbG9jayByYXRlczoNCj4+
DQo+PiAxMjVNSHoNCj4gSSB0aGluayBpdCBpcywgd2l0aCBhbiBvZGQgZGVjaW1hdGlvbiBmYWN0
b3IgKDEyNS8zID0gNDEuNjY2Li4pLA0KPiB3aGljaCBpcyBub24gb3B0aW1hbC4NCkluZGVlZC7C
oCBJIGRvbid0IGtub3cgd2hldGhlciB0byBibGFtZSBteSBhZ2luZyBmaW5nZXJzLCBvciBhZ2lu
ZyBleWVzIA0KZm9yIHRoYXQgYmxvb3Blci4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
