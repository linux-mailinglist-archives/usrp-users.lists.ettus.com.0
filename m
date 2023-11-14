Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFFF7EBA2B
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 00:15:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03F2438578E
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 18:15:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700003735; bh=HkBAEYKV4exhAQuCo8eDE5WHa0E+eH6y+8vrVUrsxps=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=EKnBD+lqQZwINh7HWdh9C/42ygL5+DuZ0AkckjCKlhDns0a5ykKp0hFQGV7Wa/VDZ
	 2s+hCIBDZFQtu38ktsIuaRoI7Pf/GF1qNYMSyhWB1Vfo+ALWC71orR3skR+/Bu/IVq
	 NxcAMTbonuKJpzA1L7+SECcoRVz2QZQfs+Wmk3gJpT0tkF6D2k2mPz1rKqNG5h9A04
	 6Ix5bj86CuT9teJkCvj0m3j27w1uE5AsD3Py3SlzBhqKKoNDm/iZ1hkwQoQfBZP8zD
	 RxIow4socD1+civVEWpJcWJ8kqx8zyJ1ElhjQAvqYVj5PUQD8v9bFwGBZoPz2wzMeq
	 X3wWzcIrfFPfA==
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 1790938576B
	for <usrp-users@lists.ettus.com>; Tue, 14 Nov 2023 18:14:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gD7PN3Ej";
	dkim-atps=neutral
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-5c08c47c055so49835087b3.1
        for <usrp-users@lists.ettus.com>; Tue, 14 Nov 2023 15:14:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700003698; x=1700608498; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fEbcsXeh0/ykcFypMwe+qHxo81VklG52NxhAm0eVtHY=;
        b=gD7PN3EjHEkdg2igpC1mjaRGaz8A43+LgzRmlWrkVEdHTRp/RxIfCOwkLWCg3m+gdQ
         lq9YkQkIBZ2rAq37EZFIZOvpuQYK140lFo0QGbZZ74wnWlgdZlSqaLGJU6OTTZmS4F13
         3cYLOZoaXHK55Wk7QBpOtt7eZpAXlcebZj4XxE2kAajLVwjPlWw8/d7NYo46xX5wCS0C
         N4m9YOkzJ7arPjCVUjFCuZfyT7mgwDL8/BOeRkJ/jt8cIOVgfn+NjhQU1Xjj506V3zpy
         pBCO+v/Rj5A/eNS/vLr3CESMT2uFEWtdR+krSCQMU+iaIw5OfyHIDBp8lZUS6t29VM2r
         t7mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700003698; x=1700608498;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fEbcsXeh0/ykcFypMwe+qHxo81VklG52NxhAm0eVtHY=;
        b=HfLBWT+6LUUhRrcf5yrA0aOWTAVEkX5/yQEFURXG0GFVfdQLt8A5DQcUOgm+Xxsae9
         pnVux4drTfMKzGbUl13wivvFYq4ALTKi1ITvKb/T1S8X36Dzkn9/Px5bTjxvA5gn4WsL
         C36uzstHEQQumKYpUazGZfVyD4XdUvcvdrxQWb8WXhobCnwC+1erVwwlr6KOFf+zrTDm
         eSO3hStzezu6lZe3E2I2+fG3Url6PFatHlkYClcyTMCLg1psU1naMlGCEMybFynDVQDs
         WwdKWptvuvtZbYhcVRhe/B8OnlQva9dJdZIwMN24ePfDVwqBjaK2oD6iVpFnfzn9Acpt
         uAtA==
X-Gm-Message-State: AOJu0YyZIptwUOO+tc/XBoGVDtj+W5cQ3m0c4L5rW61ZC1fb+6XzMO5m
	nfqdtfVxLnNbIt/FaExyKb3vqpIeEoQ=
X-Google-Smtp-Source: AGHT+IExMDmJ8/GatGw6FU4dzidfZnqfiXOCas2Moc5tIB8BfgbK1kkyXzX18sjDmhKoPLZgeR6V5Q==
X-Received: by 2002:a0d:cd86:0:b0:5a7:af0c:bf97 with SMTP id p128-20020a0dcd86000000b005a7af0cbf97mr11773133ywd.6.1700003698181;
        Tue, 14 Nov 2023 15:14:58 -0800 (PST)
Received: from [192.168.2.175] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id i18-20020a0cfcd2000000b00677adcfd261sm34497qvq.89.2023.11.14.15.14.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Nov 2023 15:14:57 -0800 (PST)
Message-ID: <86ea9e64-6be4-4a63-a550-e915dab92d59@gmail.com>
Date: Tue, 14 Nov 2023 18:14:49 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <2NvKETQYSWrPAtzelokWuYDmI0Jb4VHa54FtGJJtg@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <2NvKETQYSWrPAtzelokWuYDmI0Jb4VHa54FtGJJtg@lists.ettus.com>
Message-ID-Hash: KBGP62XOEHM637ZYT5FDT45GCJZOY444
X-Message-ID-Hash: KBGP62XOEHM637ZYT5FDT45GCJZOY444
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 stuck in reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KBGP62XOEHM637ZYT5FDT45GCJZOY444/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTQvMTEvMjAyMyAxNzo0MCwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBJIHdh
cyBldmVudHVhbGx5IGFibGUgdG8gcmVzb2x2ZSB0aGUg4oCcW0ZBSUxFRF0gRmFpbGVkIHRvIHN0
YXJ0IEZpbGUgDQo+IFN5c3RlbSBDaGVjayBvbiBSb290IERldmljZS7igJ0gdXNpbmcgZnNjayB0
b29scy4NCj4NCj4gSSBzdGlsbCBhbSBub3QgYWJsZSB0byBzc2ggaW50byB0aGUgeDQxMCBob3dl
dmVyLiBUaGUgYWRkcmVzc2VzIHRvIG5vdCANCj4gYXV0b21hdGljYWxseSBjaGFuZ2UgdG8gdGhl
IGRlZmF1bHQgdmFsdWVzKGkuZSBzZnAwID0gMTkyLjE2OC4xMC4yKSwgDQo+IGFuZCBtYW51YWxs
eSBjaGFuZ2luZyB0aGVtIGRvZXMgbm90IGFwcGVhciB0byB3b3JrIGVpdGhlci4NCj4NCj4NCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQ0KVGhlIG1hbmFnZW1lbnQgY29uc29sZSBvZiB0aGUgWDQxMCAoaWYgaXQncyBsaWtlIG90aGVy
cyBvZiBpdHMgdHlwZSkgDQp1c2VzIERIQ1AgYnkgZGVmYXVsdCwgYW5kIHlvdSdsbCBoYXZlIHRv
IGZpZ3VyZSBvdXQgd2hhdA0KIMKgIGFkZHJlc3MgdG8gdXNlIGJhc2VkIG9uIHRoYXQuwqAgSWYg
aXQncyBsaWtlIG90aGVyIHNpbWlsYXIgZGV2aWNlcyAoSSANCmRvbid0IGhhdmUgb25lIGluIG15
IGNvbGxlY3Rpb24geWV0KSwgeW91IGNhbm5vdA0KIMKgIFNTSCBpbiB2aWEgdGhlIFNGUCBwb3J0
cy0tdGhleSBhcmUgc3RyaWN0bHkgZm9yIGRhdGEgc3RyZWFtaW5nLCBhbmQgDQpjZXJ0YWlubHkg
bm90IGZvciBtdW5kYW5lIHRhc2tzIGxpa2UgU1NIIG1hbmFnZW1lbnQuDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
