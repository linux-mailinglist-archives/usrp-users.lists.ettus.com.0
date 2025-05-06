Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFF4AAD0BE
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 00:04:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94036385C9C
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 18:04:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746569088; bh=jueBgdN1FihK1w2fI0H/MhacNtgqCQa1mDKyuP1ma5Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=kh894VuhRCvN06szBuBgdCMFE0ft0ZPZI1mDvnY3yLVykENZOTtoUGiGWpOHY1Tie
	 EFDdASGae+p4V6URtp4xBf/WIj2Pb5RFMqkXIk7Ju6Et8Pl8XHHbRV+b0rgrU9QkuY
	 twUwHW7kw1K3vSgJ4LaQAxf8Hcz8CZEb5sd/Aa8Lc2AAE0xENm7LHUsAy3SZbCjCHB
	 bFZACchW9tlhoed645CEJclnUnlwWk4f57tepwCvWv966KC/WPcjNvsUfbxqVP++tX
	 ocbosfhLh2pNAWQt3HCcAR1QPCZnwcNg92chxGScSAlu3tARuTa92c02/aBBo/J7dG
	 fr0mP2cFvhU/g==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D09A385778
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 18:04:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MdQDwFKt";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-476977848c4so81667251cf.1
        for <usrp-users@lists.ettus.com>; Tue, 06 May 2025 15:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746569079; x=1747173879; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cyC77vfa9fkZ/W8Ib7dogWzVNrMXtYkKwJLQcBUCJ0Y=;
        b=MdQDwFKtL+9DHZdgysnIPNXinWzJqxDxEhB26qE5nDwrRuojK3PQMLTFRHdFtlN/cj
         ffd6aK36ywFa2h1AY7rzBJq9MsmrRGFpJmiupY+K7jSwU8kRrT7e0XUT2IqTdQ6iYKvW
         bXncy7BgDPAE40TPXCZNfGG4IylMQ92JC7se9VWtZhl/dvgI4V208nS3U4fX0jsuFG6c
         Dxc3FQZxwBSy1YhmYcX2FuxhlPYrl+1Nf0AF2Sm0f3zSj9tWxyn38SDTeD8FQEJbZHwz
         wsmnj1e+M72pFsEqC8Zjk4J6his8hphmw8MX5EVqMOaOgshFrtH5brxcTFV14kgz1P/M
         fnLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746569079; x=1747173879;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cyC77vfa9fkZ/W8Ib7dogWzVNrMXtYkKwJLQcBUCJ0Y=;
        b=fpJE+Yn46Be2w2hCnWXV7fCvxLuMqPWvgvWZdrTQOQrliNNdywH0Va02qOYSzmIXRx
         gLX1DeTwASR18Px8LMQOIXscmMBTnBFjsrC27tQs5FmkDbkotdvO427JIVAPDp4ooLP8
         G7ApO9d4jPIKC+bjliLJAfX6f+bs4KQrpSrBqyVfKCSDbyd9ix4yAMjK2g+tHpec5xw9
         Q8gzStPfPyxsjd6g7IJvXAP0ZBORePfKR1w3+tswvqbqaiQtCfgme7p9XQOjqq2ncWta
         7tOJWvjvegxmd5MVBBJh+Eb5dFhDmZYsuFmcdL+rZKnd0YyI+gR9c7yzMuz4tPzW5PLD
         mK1w==
X-Gm-Message-State: AOJu0YzSCnAvSdobYz0Doe2ZaccP4bAwhGa/qVAvaqD0XZ5+1qr+1fXZ
	YM9zU2d9q7lv6NIRCu7rwmE/AliOHPVieO4e3CxFfBRpNTiC7peg1kuRfMZq
X-Gm-Gg: ASbGncuxiMhAlpUbhNE/lm96IdystSNrFte2pjT0qRULDZkM6idz72oxweu5dmbq592
	/lgKvE0gkjvZVvX+F3tZIRYzeRyvuACcraMvDUebYJ6mXIa58P7o4j40h50atqP5B/sFTz0z++R
	eFOjw/L58e+l/zxztMIyoxsWgs3yHXpCou/979Q0wCY/GMzF0Zawe/r6pxeD3//j8Sk2hSQIQy2
	K3700UEB/Bv+QFhHSQdChqaYneZcPfrmBNuDItHsnZw7B93HWwXSkpLHh28H4V0DIORgv1TDYJN
	wGSET8YOZ2XIocw8K4ug6DascmBXlUb6eIVRHY4M+aOAhVi0NA==
X-Google-Smtp-Source: AGHT+IEiVyH4ssFn99rzRWaVkvjuvWfbmiT5NzINTjdl7gfDIbemSEeqaj8FXyG4JGST+AxjAOE3EA==
X-Received: by 2002:ac8:7fd3:0:b0:477:e70:6664 with SMTP id d75a77b69052e-492276750a6mr11166501cf.36.1746569079281;
        Tue, 06 May 2025 15:04:39 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-49221842ee3sm3261301cf.47.2025.05.06.15.04.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 15:04:38 -0700 (PDT)
Message-ID: <9988148e-995d-4b1f-a531-604236d790a0@gmail.com>
Date: Tue, 6 May 2025 18:04:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CAG16vQVXsvOTdQfO-RpNO74hqXK+D7vXqeyh=SW8cWsd=ABq+Q@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAG16vQVXsvOTdQfO-RpNO74hqXK+D7vXqeyh=SW8cWsd=ABq+Q@mail.gmail.com>
Message-ID-Hash: IWPDQCGPDJPZFKM5DB442X775IM6XI2Z
X-Message-ID-Hash: IWPDQCGPDJPZFKM5DB442X775IM6XI2Z
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling rate in E320 with RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IWPDQCGPDJPZFKM5DB442X775IM6XI2Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMDUvMjAyNSAxMDoxMiwgTWFyaWEgTXXDsW96IHdyb3RlOg0KPiBIaSBhbGwsDQo+DQo+
IFdlIG9ic2VydmUgZGlmZmVyZW50IGJlaGF2aW91ciB1c2luZyB0aGUgRTMyMCByYWRpbyB3aXRo
IHRoZSBVSEQ6IA0KPiBVU1JQX1NPVVJDRSBibG9jayBhbmQgdGhlIFJGTm9DIFJhZGlvIGJsb2Nr
IHdpdGggYSBsb3cgc2FtcGxpbmcgcmF0ZS4NCj4gV2UgYXJlIGF0dGVtcHRpbmcgdG8gc2V0IHRo
ZSBzYW1wbGluZyByYXRlIHRvIDI1IGtIeiBmb3IgYm90aCBibG9ja3MuIA0KPiBJbiB0aGUgVUhE
IGJsb2NrLCB3ZSBhY2hpZXZlIHRoaXMgYnkgY29uZmlndXJpbmcgdGhlIHNhbXBsaW5nIHJhdGUg
dG8gDQo+IDI1IGtIei4gU2ltaWxhcmx5LCBpbiB0aGUgUkZOb0MgYmxvY2ssIHdlIHNldCB0aGUg
c2FtcGxpbmcgcmF0ZSBvZiB0aGUgDQo+IFJGTm9DIHJhZGlvIGJsb2NrIHRvIDI1IGtIeiBhbmQg
dGhlIG91dHB1dCByYXRlIG9mIHRoZSBEREMgdG8gMjUga0h6Lg0KPiBXaGVuIHdlIGxvb2sgYXQg
dGhlIG91dHB1dCBvZiB0aGUgYmxvY2tzLCB3ZSBlZmZlY3RpdmVseSBvYnNlcnZlIGEgDQo+IHNp
Z25hbCBvZiAyNSBrSHogaW4gdGhlIFVIRCBibG9jaywgd2hpbGUgaW4gdGhlIFJGTm9DIHJhZGlv
IGJsb2NrLCB3ZSANCj4gb2JzZXJ2ZSBhIGxhcmdlciBiYW5kd2lkdGggb2YgYXBwcm94aW1hdGVs
eSAyNTAga0h6Lg0KPiBIb3cgY2FuIHdlIGNvcnJlY3RseSBjb25maWd1cmUgYm90aCB0aGUgUmFk
aW8gYW5kIEREQyBibG9ja3MgaW4gUkZOb0MgDQo+IHRvIGhhdmUgYW4gb3V0cHV0IG9mIDI1IEtI
ej8gSXMgaXQgcG9zc2libGU/DQo+DQo+IEtpbmQgUmVnYXJkcywNCj4NCj4gTWFyaWENCj4NCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQ0KU2luY2UgdGhlIGxvd2VzdCBtYXN0ZXIgY2xvY2sgcmF0ZSBpbiB0aGUgRTMyMCBpcyAyNTBr
SHosIGEgKlBPU1NJQkxFKiANCmNvbmZpZ3VyYXRpb24gaXMgdG8gcnVuIHRoZSByYWRpbyBhdCB0
aGF0IG1hc3Rlci1jbG9jaywNCiDCoCBhbmQgdGhlIEREQyBibG9jayB3aXRoIGFuIGFwcHJvcHJp
YXRlIGRlY2ltYXRpb24gZmFjdG9yLg0KDQpXaGF0IHlvdSBtaWdodCBiZSBhYmxlIHRvIGRvIGlz
IHRvIHJ1biB5b3VyIG9yZGluYXJ5ICJtdWx0aV91c3JwIiBVSEQgDQpjb2RlIHdpdGggdGhlIGxv
Z2dpbmcgbGV2ZWwgdHVybmVkIHVwLCBzbyB0aGF0IGl0DQogwqAgKm1pZ2h0KiB0ZWxsIGhvdyBp
dCBpcyBjb25maWd1cmluZyB0aGUgUkZOb0MgYmxvY2tzIGluc2lkZSB0aGUgDQpyYWRpby7CoCBS
ZW1lbWJlciBpdCBoYXMgYmVlbiB0aGUgY2FzZSBmb3IgcXVpdGUgc29tZSB0aW1lDQogwqAgdGhh
dCBtdWx0aS11c3JwIG5vdyBsaXZlcyAqT04gVE9QKiBvZiBSRk5vQywgYW5kIHNpbXBseSBjb25m
aWd1cmVzIA0KUkZOb0MgYmxvY2tzIGluIHRoZSBVU1JQIGhhcmR3YXJlIGFwcHJvcHJpYXRlbHku
DQoNCmh0dHBzOi8va2IuZXR0dXMuY29tL1RoZV9VSERfbG9nZ2luZ19mYWNpbGl0eQ0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
