Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FF77746DE
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 21:05:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 59B38383B67
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 15:05:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691521514; bh=gVOeuJwgoKU2tVAcZu1p/GZB6UpJGZFL1OdLv1NsM6U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=G6kZw+poHl4Nyr2j3jyp1gGFAIwOw/LkzrPhDxq22U3KhK60HrriYCILfrSOxUM8T
	 jGVkdpf0F3dKcKxRX7+M1hJVCBmB/EPD83gvU5NNwbRsUI1Xe8mmHRaTVtH8bKIdBb
	 5iGBnQtswlPQd7ufaCkViCS/QlCG0dWRAJXP+Mv9Yf297h1eND6Uv0ooAZk8pgIBSA
	 BCz8gw3MobDTlhbIEtlsVcN5Fvr7kdo8VcNgAU0neM8dz0ggYHcIF25n/WFmrZyYKg
	 my6cqZ4uOvbsH0OXd+Zqrmi1kfHKnqLnUCpw4xGG5mLFHwacvIc8QeGETCsCmNnpLw
	 HU2Hb5YBQgArQ==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 788B6383B67
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 15:04:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rRnUzwQi";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-63cf96c37beso1080136d6.0
        for <usrp-users@lists.ettus.com>; Tue, 08 Aug 2023 12:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691521479; x=1692126279;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vtx7QD8pH2KS+lfYX6QPAr8P0+oEOs/ao6JEyVLAzro=;
        b=rRnUzwQilBrQ7v4vjiJkEg0k0EdZ4H9nbE694BFVudLeaqCHrgxvB81p5s+Er5T1xY
         ccmqe/MkxMv+aQIvzVRIrbeOq+XT10p02nQToK1do7+afXOpRIO5IHhV/PKQD/BjtiCO
         KbsqeklqWsTjZxW5hfNRf+v77B8OIF31MoK1YCkJfMp940kUNwwnrE6Tvu9l1C5+YpQh
         ZJJ6Grqha5wlA4eqXIw1Oxwq7HQvDhzq1+7Fr4nTMmLC8dr38u8mty/JVErZFJsnK2eH
         M3EngxgFUymc1y20huIUtuqpzHjjaoxtMffvwxTZu6LbgoeGWiiXsHwRBxQcmGGryo7S
         huQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691521479; x=1692126279;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vtx7QD8pH2KS+lfYX6QPAr8P0+oEOs/ao6JEyVLAzro=;
        b=mIITrWKQ7vU2qqZl2qKOk8wrnAy4vYgxP2AxSu8NCtg11UBGcapORxlFdhMTvXpxhm
         TSJEluVOqa6soqTyxNVF79hYOrpdfjhdU+oV98WmVRAMD/5EUR5UCPYufrkhQsWSAo4t
         vEpuATdqbziRbaTc9XiWHL6oE2XTgakgUfPjvekWyZuTRQa31M7t/chC0L7Akr0aMG37
         Ksl2XWp5H5A8FUgF6o0KMor+3jvij69kA/30F2xUsnxzG8fp3HWdgtHmlmP/z+YK9wWL
         j/w9Mr/xgG+54mPm55QGIHjg+mp5xzzA6JMrrQsO72V2PABYMmk3PFT9MQkhnkW/LOTd
         AjiA==
X-Gm-Message-State: AOJu0Yy6s3tNkQJRgCVBrqFeWbNvpJL3KVyb+GCrnT2FoIDZiIwiUIqJ
	xp+OpwlyX9sapEanheZnMyQL2bXSzrQ=
X-Google-Smtp-Source: AGHT+IG5lq3l8smyboQW0msc52YA+ZsAN879GhblK5WenLu5AI2RB5VLeQubjY18uGDes7BKXak+ZA==
X-Received: by 2002:a05:6214:230d:b0:63d:580:9c68 with SMTP id gc13-20020a056214230d00b0063d05809c68mr12536507qvb.32.1691521478775;
        Tue, 08 Aug 2023 12:04:38 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id a19-20020a0cca93000000b00631f40503cbsm3876962qvk.12.2023.08.08.12.04.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 12:04:38 -0700 (PDT)
Message-ID: <308f91e2-067f-9fb7-9ab1-2302de6e3f25@gmail.com>
Date: Tue, 8 Aug 2023 15:04:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <VEqy8TGiPIurGHwSiX8YcxzYVN1vmZYxxoEbLTzFBAY@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <VEqy8TGiPIurGHwSiX8YcxzYVN1vmZYxxoEbLTzFBAY@lists.ettus.com>
Message-ID-Hash: FGLU2BL33RD5CTFKP3X7VURNEUBMHHDO
X-Message-ID-Hash: FGLU2BL33RD5CTFKP3X7VURNEUBMHHDO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FGLU2BL33RD5CTFKP3X7VURNEUBMHHDO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDgvMDgvMjAyMyAxNTowMCwgZWRlbm1jbGF1Z2hsaW4xMjNAZ21haWwuY29tIHdyb3RlOg0K
Pg0KPiBIaSBhZ2FpbiBNYXJjdXMsDQo+DQo+IEkgc2VlLCBzbywgSSBhbSBndWVzc2luZyBJIGJl
dHRlciBjb250YWN0IHRoZSBFdHR1cyBhbmQgYXNrIHRoZW0gdG8gDQo+IHNlbmQgbWUgYSBuZXcg
aW1hZ2Ugb3IgdGhlIGRldmljZSBuZWVkIGEgd2hvbGUgRUVQUk9NIHJlcGxhY2VtZW50PyANCj4g
V2hhdCBhY3Rpb24gd291bGQgeW91IHJlY29tbWVuZCBtZSB0byB0YWtlPw0KPg0KPiBTb3JyeSBp
ZiBJIGFtIHNvdW5kaW5nIGZvb2xpc2gsIGJ1dCB0aGlzIGV4Y2VlZHMgbXkgZXhwZXJpZW5jZSBh
Ym91dCANCj4gU0RS4oCZcy4gVGhhbmsgeW91IGluIGFkdmFuY2UgYW5kIHNvIGZhciBmb3IgdGhl
IGFuc3dlcnMhDQo+DQo+IEJlc3QgUmVnYXJkcywNCj4NCj4gRWRlbi4NCj4NCj4NCj4NCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0K
SWYgeW91IHNlbmQgYSBub3RlIHRvIHN1cHBvcnRAZXR0dXMuY29tLCB0aGV5IG1heSBiZSBhYmxl
IHRvIGlzc3VlIGFuIA0KUk1BIGFuZCBkbyBhIGZhY3RvcnktcmVzZXQgdHlwZSB0aGluZy4NCg0K
SXQgd291bGQgYmUgcG9zc2libGUgdG8gY3JlYXRlIGFuIGltYWdlIHRoYXQgaW5jbHVkZXMgdGhl
IEVFUFJPTSBhcmVhIA0Kd2l0aCAic2Vuc2libGUiIHZhbHVlcywgYnV0IHRoYXQgd291bGQgYWxz
byByZXF1aXJlDQogwqAgcnVubmluZyBhIG1vZGlmaWVkIHZlcnNpb24gb2YgVUhEIHRoYXQgZG9l
c24ndCBoYXZlIGFueSAic2FmZWd1YXJkcyIuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11
c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
