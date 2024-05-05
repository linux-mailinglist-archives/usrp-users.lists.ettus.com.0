Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DA28BC1AB
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2024 17:36:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 25A70384D83
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2024 11:36:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714923395; bh=8NJ7X1h/PeMtgZ7GLFG2clzNGpilzTj1fDrMzJoPef8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=jc4cE6pDudryGbNwkDY6N7+LR2o8qJwjZpvQlJaTvsAnfAr+hflQDB1kDlfSA+eVp
	 03xa+OjxYypWNljdbHu6FUgsBzr3BxVjhx1GexSj9Xf0W5BM977nLBZoqq06wxINsb
	 T8R9GwuQdzv9r2CeACTyQu+s8XbDSo25QV2yYcJeI+NJlNDdUFCVExh1HkYmQFYQ6g
	 kaIAJCYyGR2o7N4Kgx257InxiG3QuBIFhouEAUQppMPPZYgFybiDeWJeATdGj1rLzm
	 TnE6zGk1nmHcaANJS+/hBgvialVq69moza86ilgqIzqzK872qg05s98mW4+sOsAzRi
	 //rQLC4c8ZI+w==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 71DA1380FF6
	for <usrp-users@lists.ettus.com>; Sun,  5 May 2024 11:36:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CcoVEU+E";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-69b44071a07so14706556d6.3
        for <usrp-users@lists.ettus.com>; Sun, 05 May 2024 08:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714923365; x=1715528165; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EfjZGlvtmjXFdVFKkhvoPOEB7KRfjMWvQgMr5BA6KP8=;
        b=CcoVEU+EGuQM5xTaDT1xusx9pCYMlyljs0Pb+iHGfQOeqdlhl3waZjX97UFAKtY2FB
         BW61HunMSGIEHZYJk/owN9HL108e584v3NMliW76UvJPR9jffHyYCfL4j+T7B6Si8+FB
         A8pmHdQy+RAL+lDJv8D7TABWY4QNfXAnH6eiamIJNcPRa8eOR3bviCeg5zR8HB0ZEU/V
         1DtUkOwC2MNW8p6npySYybAt4q1qwiT+wxKumu0oPfbBPRt014xWVnyg9MVZ6BglmHag
         CxueFBd7c0aYvYYDpcP0C1cbk7NuIRDPcsg5QaRnp2wDwvNsKXejp6sFXCt5zYL+FDeg
         v8Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714923365; x=1715528165;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EfjZGlvtmjXFdVFKkhvoPOEB7KRfjMWvQgMr5BA6KP8=;
        b=dyQ9Y8tWt/2A1RejSpg/wy7DXdXRgMnEr7rG0hHbMkAW/tEX7oOksjaSngXrjiQ1Vf
         Nr3uGykgMpJzJOD10S4W03+2KFhROtsnSUvJOO6scQJq3kd2W/yAxKsqdbTigtA9VFz3
         9WKUG4IVRxdTbKekbfc1CDCpMq0wsu8dFX2bMlmt+gyQHpd6+5dS+554Gz+Z6PT66g71
         UUCRodRwNfbr1GwNkPaA0EJQtZ8AnVHjCjUQJK4Iobwad9BWTC9QUhyFSzmib4WGz6dL
         mlae0j0kA3+cvVyJsnWOT2DyG+J/ei2CDLRCZ/MfLg2j6aESih+I4SEOjl1rxmUIaMOB
         41wQ==
X-Gm-Message-State: AOJu0YyZfcFW5Z9offyjePdMFDObrpfk7VcU+NalH9nF9X3B0KlSG2g0
	Qt1eh6t/oPbDGLfhI2kkpxnUr9Xr1/EXDoUVDR6tdlyVKj1aQLvRrdV9Gw==
X-Google-Smtp-Source: AGHT+IE2NHV3xOPTUX1WPRuSno9U3goU9EEz8/4czLX4gWAmRPpJ1fwI6vWXL37JtwEikcCL3e4RLw==
X-Received: by 2002:a05:6214:1d2e:b0:6a0:c8db:f5a with SMTP id f14-20020a0562141d2e00b006a0c8db0f5amr10973254qvd.41.1714923364609;
        Sun, 05 May 2024 08:36:04 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id n9-20020ad444a9000000b006a0fe3cdc2csm3038965qvt.81.2024.05.05.08.36.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 May 2024 08:36:03 -0700 (PDT)
Message-ID: <14e82baa-39e1-4364-8914-a079b1e45d25@gmail.com>
Date: Sun, 5 May 2024 11:35:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <VULdau3WpJoUrqZUJXWIJAj1F1uG6S8Yd17gPfqx8@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <VULdau3WpJoUrqZUJXWIJAj1F1uG6S8Yd17gPfqx8@lists.ettus.com>
Message-ID-Hash: Z5CCZOOYTH3V7UHQUZ27LDQNJJXBJAGH
X-Message-ID-Hash: Z5CCZOOYTH3V7UHQUZ27LDQNJJXBJAGH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sharing one UHD device across multiple hosts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z5CCZOOYTH3V7UHQUZ27LDQNJJXBJAGH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDUvMDUvMjAyNCAxMToyNywgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBIZWxs
bywNCj4NCj4gSSBhbSB3b25kZXJpbmcgaWYgaXQgaXMgcG9zc2libGUgdG8gYWxsb3cgYW5vdGhl
ciBob3N0IGRldmljZSB0byBzdGFydCANCj4gYSBzZXNzaW9uIHdpdGggYW4geDQxMCBhZnRlciBp
dCBhbHJlYWR5IGhhcyBhIHNlc3Npb24gd2l0aCBhIGRpZmZlcmVudCANCj4gaG9zdCBkZXZpY2Uu
IEluIG90aGVyIHdvcmRzLCBtdWx0aXBsZSBkZXZpY2VzIHNoYXJpbmcgb25lIFVTUlAgZGV2aWNl
IA0KPiBhdCB0aGUgc2FtZSB0aW1lLg0KPg0KPiBJIGtub3cgaXQgaXMgcG9zc2libGUgdG8g4oCc
aGlqYWNr4oCdIGEgc2Vzc2lvbiB0byBwZXJmb3JtIHNvbWUgbXBtIA0KPiBmdW5jdGlvbnMsIGJ1
dCBJIHdvdWxkIGxpa2UgdG8gc3RyZWFtIHNlcGFyYXRlIGNoYW5uZWxzIG9uIHRoZSB4NDEwIA0K
PiBkZXZpY2UgYWNyb3NzIHNlcGFyYXRlIGhvc3QgZGV2aWNlcy4NCj4NCj4NCkkgZG9uJ3QgYmVs
aWV2ZSB0aGF0IHRoZXJlJ3MgYW55IHN1Y2ggZmVhdHVyZSBidWlsdC1pbiB0byBVSEQuIFRoZSBV
U1JQIA0KTjJ4eCBoYXMgYW4gImFsdGVybmF0aXZlIHN0cmVhbSBkZXN0aW5hdGlvbiIgQVBJLCBi
dXQNCiDCoCB0aGF0IGRpZCBub3QgbWFrZSBpdCBpbnRvIGZ1dHVyZSBVU1JQcyBhcyBmYXIgYXMg
SSBrbm93Lg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tCg==
