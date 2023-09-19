Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F097A647A
	for <lists+usrp-users@lfdr.de>; Tue, 19 Sep 2023 15:11:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 59EDA3867A0
	for <lists+usrp-users@lfdr.de>; Tue, 19 Sep 2023 09:11:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695129063; bh=pGkza0PQeXBFpOfuOA4p+jzob2zDyxGkdObL846yLt8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=aOE5UYf8msS5cMx9pr+PoqgS8YInEHLMeOOcEtdTiPc4A9uWo2/t+TClfC4eXubWK
	 Zn1ElTS9bTzTjLrS+xT4wDXeEIjJbdUvFQA4gLx9VwY1vCOj7KFGawOX4QubOtgfG0
	 bpsZQr/lUmdv/bY4yvkOCclAUSQbMqMS/SW/RnrybyyfeLtsGWjkP2S9zH9AHHhvbW
	 TjHHicWITH4lv4n8QPrQYHVJIbUQHhhH5g10rmoMScJwk95FdZ8qqciirslS0TyYYB
	 3konC6nRF4sH+P945Q2HcDQreRy9UDXHNs9Hfh71hUTMU+eRqaOgOLTGcUNk5fLLel
	 8N048DdREeZFw==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 7EF3C386279
	for <usrp-users@lists.ettus.com>; Tue, 19 Sep 2023 09:10:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VhSJsPrV";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-76f2843260bso370084485a.3
        for <usrp-users@lists.ettus.com>; Tue, 19 Sep 2023 06:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695129009; x=1695733809; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wntPuj1F3Hspj3kfy/0u4El4IRj8FkjtJK0g9ibIeUg=;
        b=VhSJsPrVAO0QFViQQGYgO/HH3KD69JDN8YGpNMuDjBZzgXHXO/YEdpsniOVvRaqa4Z
         4vgkEtbvDOxwVJjtrU33aFkaEdx9iNnYTVidK8J+DO2ZVbnJMgpGy3dvfRUVrEEqfsim
         RzLJj8LaAp38Ndnupw+sNqXDwvnMfwPEOUw5YE/N8u9HWV4BzoyXNdXeoUOLRKXlpAV1
         kWWFUHgZ9WEsK6EX/yD9Ra7pK/IoXF3K2jtkMNAwqf9ImdDn67KqNJQXgpvv5Dh2lEIx
         1qML9rg5t3dl9Hx/QuxD5MU2JsbshJ9qCreD+CQvdV+B1zlB3W0abOSUxAkrvNT+PMz+
         tE8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695129009; x=1695733809;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wntPuj1F3Hspj3kfy/0u4El4IRj8FkjtJK0g9ibIeUg=;
        b=PBlcj3l0NKKIGoK9BMla9TB0zqPj4CngJOm3MJG9gwfeXLkUjhkmnQz0QIJUjdDBkd
         6TdOjwQBWYb2dx230WAqp6+XWDUJmSAAUIuXm0m9B18vNXMZItuDBrWmQT5EA6KrmjtF
         lXSO0e5ZJmqzrVjORaR0rOjXo2Snag6V9EXbF5jFnIawB9TnLNLRT/20DF+rZmKGPTZC
         sPm9gaDGJXQmXUJego7BIp5Kyqx036MsmZ/bgeLwBgLKnDwUwEqmjDgsNXByh7Q7drwu
         j5C9jbojWhJX9GBE4ZR4rncb7NL9kSLVkbQ9IN16JQGedWJjdMwghR/aNEdiDdkXivj8
         sPDw==
X-Gm-Message-State: AOJu0YyQKJF4Hbo9s2AR9sNrA6leaz4MvB+d94Gm2afArI2Q+8gbWwtd
	+ytciS9aUoyXcLXflSg012McBlWXCl43Rg==
X-Google-Smtp-Source: AGHT+IFHSZsDDk6i2G937h2x2IjzzrTWCS5q+v/tzso5Q4+nFmXs1sa56IaRCNR74KevYLXu08f/GA==
X-Received: by 2002:a05:620a:31a7:b0:76f:f0b:a1ba with SMTP id bi39-20020a05620a31a700b0076f0f0ba1bamr13019186qkb.30.1695129008701;
        Tue, 19 Sep 2023 06:10:08 -0700 (PDT)
Received: from [192.168.2.193] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id w20-20020ac87194000000b004166905aa2asm3745037qto.28.2023.09.19.06.10.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Sep 2023 06:10:08 -0700 (PDT)
Message-ID: <a04e8503-f49c-1510-5321-e5550e37d005@gmail.com>
Date: Tue, 19 Sep 2023 09:09:59 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <8tgp67TWZySZBgo36drX2iYAR0dsvnusaC8JSP9PWxI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <8tgp67TWZySZBgo36drX2iYAR0dsvnusaC8JSP9PWxI@lists.ettus.com>
Message-ID-Hash: YET2IYWB7ECHT3H7DWLBYJPTJNDLYEBW
X-Message-ID-Hash: YET2IYWB7ECHT3H7DWLBYJPTJNDLYEBW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Bypassing_U807_and_U805_=28SKY13335=E2=88=92381LF=29?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YET2IYWB7ECHT3H7DWLBYJPTJNDLYEBW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTkvMDkvMjAyMyAwMzoyNCwgb3V6YW5fdHNAaG90bWFpbC5jb20gd3JvdGU6DQo+DQo+DQo+
DQo+IDUwLTU0IGRCIFRYL1JYIGlzb2xhdGlvbiBpcyB2ZXJ5IGxvdyBhcyBhIGR5bmFtaWMgcmFu
Z2Ugb2YgbWFueSANCj4gYXBwbGljYXRpb25zLiBGb3Igb3VyIGFwcGxpY2F0aW9uLCB0aGlzIGlz
IG91ciBtYWluIHByb2JsZW0uIFRoYXQgaXMgDQo+IHdoeSB3ZSB3YW50IHRvIHRyeSB0byBieXBh
c3MgYW5kIHNlZSBpZiB0aGUgaXNvbGF0aW9uIG9mIHRoZSBjYXJkIA0KPiBpbmNyZWFzZXMuIFRo
ZXJlIGlzIG5vIGRhdGEgYWJvdXQgdGhlIFRYL1JYIGlzb2xhdGlvbiBvZiBBRDkzNjQgaW4gaXRz
IA0KPiBkYXRhc2hlZXQuIFRoZXJlIGlzIHNvbWUgaW5mb3JtYXRpb24gaW4gdGhlIGZvcnVtcyBp
bmRpY2F0aW5nIHRoYXQgdGhlIA0KPiBUWDEvUlgxIGlzb2xhdGlvbiBpcyBtZWFzdXJlZCBhcyA2
NSBkQi4NCj4NCkxldCdzIGFzc3VtZSA2NWRCIG9uIHRoZSBBRDkzNjEuwqDCoCBJZiB5b3UncmUg
dHJhbnNtaXR0aW5nIGF0LCBsZXQncyBzYXkgDQorMTBkQm0sIHRoYXQgbWVhbnMgLTU1ZEJtIGlz
ICJzZWVuIiBieSB0aGUgUlggcGF0aCwNCiDCoCBpbiBhZGRpdGlvbiB0byB5b3VyIHNpZ25hbCBv
ZiBpbnRlcmVzdCBhbmQgb3RoZXIgInN0dWZmIiB0aGF0IGlzIA0KcHJlc2VudGVkIHRvIHRoZSBS
WCBwYXRoLsKgwqAgSWYgdGhhdCdzIHRvbyBtdWNoLCB5b3UgY2FuIGNvbnNpZGVyDQogwqAgbG93
ZXJpbmcgdGhlIFRYIHBvd2VyIG92ZXIgdGhlIFVTUlAsIGFuZCB1c2luZyBleHRlcm5hbCBSRiAN
CmdhaW4vaXNvbGF0aW9uL2R1cGxleGluZyB0byBhY2hpZXZlIHRoZSBmaW5hbCBzeXN0ZW0gcmVx
dWlyZW1lbnRzLg0KIMKgIFNEUnMgc2hvdWxkIGJlIGNvbnNpZGVyZWQgKmNvbXBvbmVudHMqIGlu
IGFuIG92ZXJhbGwgUkYgKnN5c3RlbSANCmRlc2lnbiouwqAgVGhhdCBtZWFucyB0aGF0IG9mdGVu
LCB5b3UnbGwgbmVlZCB0byBlbmdpbmVlcg0KIMKgIG90aGVyIGJpdHMgb2YgInBsdW1iaW5nIiBh
cm91bmQgdGhlbS4NCg0KTm93LCBpbiB0aGUgcGFzdCB3aGVuIGN1c3RvbWVycyBoYXZlIHdhbnRl
ZCB0byBkbyBzb21ldGhpbmcgbGlrZSB0aGlzLCANCnRoZXkgc2ltcGx5IGRlcG9wdWxhdGVkIEM4
MDksIHdoaWNoIGlzIHRoZSBjYXBhY2l0b3INCiDCoCB0aGF0IGxpbmtzIHRoZSBUWC1zaWRlIHN3
aXRjaCB0byBVODA3LsKgwqDCoMKgwqAgVGhlcmUncyBubyBpbXBlZGFuY2UtYnVtcCANCmltcGxp
Y2F0aW9ucyBmb3IgdGhpcyBzaW5jZSB0aGUgZGVzaXJlZCBhbnRlbm5hIGNvbmZpZ3VyYXRpb24N
CiDCoCBkb2Vzbid0IHVzZSB0aGF0IHBhdGh3YXkgYXQgYWxsLS1pdCBqdXN0IGltcHJvdmVzIHRo
ZSBpc29sYXRpb24gYSBiaXQgDQpvbiB0aGUgY3Jvc3MtdGFsayBwYXRod2F5LsKgIEJ1dCBhcyBJ
IHNhaWQsIHRoZSBUWC9SWA0KIMKgIGlzb2xhdGlvbiBvbiB0aGUgQUQ5MzYxIGlzbid0IHNwZWN0
YWN1bGFyLS1ub3QgdGhlIDgwLTkwZEIgeW91J2QgZ2V0IA0Kd2l0aCBzZXBhcmF0ZSBUWC9SWCBz
dWJzeXN0ZW1zIGFuZCBhIGR1cGxleGVyLg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11
c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
