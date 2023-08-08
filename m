Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACEF7749B8
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 22:02:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5B63E383E37
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 16:02:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691524934; bh=LIkmsgqOyIi2YZeLZR67Sf5sconZ0cf8PIJqCFI50V8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Z3O+BqUQkjHs/DrNruu5b7zQkTAP0lJVH6xjGUyrhTLyu9IQk9NwSoup94FC3dac9
	 c47v4itYsl2wQ7zZqliEH1JSYFktcU9jL9rmddhB9WYCkqr6ngYhw4bni1er68JpiE
	 UzQUTj4QpmdW8UmyZyEaoINHZU9edayiCimN6qRC77A5XtnfBo9Cc8RStjY8loQnnx
	 Rsgi/yPHx46x/sgN0q+ymGiN/xGIgIjh+gl6pdIzCyUgHGWcfKiqZneVJj2Jr9DgzT
	 lcQAKGB0JxgukfrSFFPMv7aHt0bhmUUmA86OmXUQJRZ2iirFX0TgB4zKNZezuUkNRs
	 SYR4LcNF44u3A==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 256CB380BB2
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 16:02:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oXVzghET";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-63d03d3cac6so30410316d6.2
        for <usrp-users@lists.ettus.com>; Tue, 08 Aug 2023 13:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691524919; x=1692129719;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LNe6iBsy2LOhIP/ftuQGGZSgV2o9gZbbiOZcW15NVho=;
        b=oXVzghET/x72oF1hLus7NawPWUaQblOq+fDFvwMbcDbNZJUVeDrigXB6mFOgAil93+
         Dok/Y9tdIA+hk1KLwPwGqLtzCGfz225x776WdHRSj0ew0LBGk/e+mnRuP9UmESawB1IW
         DRwQmUbFSuqulvLjNxoHJFGLkAt7dcoHiVEvLk+PZd/yZ9gYwK6tPyvCWWArrj9A0T67
         7TnqYJ4eSqDe5/YLD/6jfWyaXvfsaYqZ8yyB4J7YXQZx+mhVWdvJxnbtEig750csGgDI
         jarYOAEVq5dtMgDtDQP9Nopixv2lerMxiGhD+CvqoEG9rbBfStu9DwsUZqgpuVxfAdOt
         WWtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691524919; x=1692129719;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LNe6iBsy2LOhIP/ftuQGGZSgV2o9gZbbiOZcW15NVho=;
        b=MCHtiOSVa2P/bE9yTMyu3nQI5jDTVjfE+9FPQ6talfyruhKpK/cdxlcKzHQXg/2mYk
         Ljf1lsxLxmCR8S2t21fDBtN6iktRvhL3rvsvx9OKPG5lyu3s8OeYYklKwh8vdBGlIBgR
         tfsuV3U3r2F1746hSrMf6Nnlep3S/VxCsO7jGDUQc4xpwmyAI8WcW6B6Ezl36hq4fMg2
         xPE1m72Kxj+gcTY7JmQ9/8MFp+ITsnfOixrBs5EZT8A2Pmc+5BBNsIVRLzVWeqDq+jcs
         CNf/sWiM8oRt1dNuLAwu1TD1dRfUEZqN2lxRy4kDyL388q9bFQkxHWz7i+8hArAohPBW
         VdOg==
X-Gm-Message-State: AOJu0Ywnge+4zTNewUWOA/OF4eJxRUVqSZRC+/VLTLQfxknJ0v/dRJlA
	MR9ogxDeJa4d/vG32xuHESCV1QGinTY=
X-Google-Smtp-Source: AGHT+IFxwsCXi8/Uq7Y7zvFm1Yhjsdihm8bK5GiHMvLGZHavV52YzItauFEFVv+9lv7G/d4aGvySYA==
X-Received: by 2002:ad4:5009:0:b0:636:955e:3dd7 with SMTP id s9-20020ad45009000000b00636955e3dd7mr465172qvo.42.1691524919435;
        Tue, 08 Aug 2023 13:01:59 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id e7-20020ac84147000000b00403c82c609asm3628748qtm.14.2023.08.08.13.01.59
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 13:01:59 -0700 (PDT)
Message-ID: <8b89c671-7b52-741c-6feb-9e79c934163e@gmail.com>
Date: Tue, 8 Aug 2023 16:01:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <dQgVLGOkz9gmMFLxRWtzZAEeXkIUYyFu7Y6nV8H7nw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <dQgVLGOkz9gmMFLxRWtzZAEeXkIUYyFu7Y6nV8H7nw@lists.ettus.com>
Message-ID-Hash: UECSQ3FDKN3ZGUT4G47OO5B4AHIXTYQV
X-Message-ID-Hash: UECSQ3FDKN3ZGUT4G47OO5B4AHIXTYQV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UECSQ3FDKN3ZGUT4G47OO5B4AHIXTYQV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDgvMDgvMjAyMyAxNTo1NSwgZWRlbm1jbGF1Z2hsaW4xMjNAZ21haWwuY29tIHdyb3RlOg0K
Pg0KPiBNb3N0IGRlZmluaXRlbHksIGJ1dCBJIGFtIGN1cnJlbnRseSBhd2F5IG9mIG15IHdvcmtz
dGF0aW9uIHRoZXJlZm9yZSBJIA0KPiBjYW5ub3Qgc2hhcmUgdGhhdCBmaWxlIHJpZ2h0IG5vdy4N
Cj4NCj4gSSB3aWxsIGNvcHkgaXRzIGNvbnRlbnRzIHRvIHRoaXMgdGhyZWFkIHRvbW9ycm93LCBp
dCB3aWxsIGJlIHBvc3RlZCANCj4gaGVyZSBpbiAxMiBob3VycyBhdCB0aGUgbW9zdC4gV2lsbCB0
aGF0IGJlIGFuIGlzc3VlPw0KPg0KPiBQbGVhc2UsIGV4Y3VzZSBtZSBmb3IgdGhpcyBvbmUhDQo+
DQo+IFJlZ2FyZHMsDQo+DQo+IEVkZW4uDQo+DQo+DQpObyB3b3JyaWVzLsKgIEknbGwgY2hlY2sg
YmFjayB0b21vcnJvdy4NCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tCg==
