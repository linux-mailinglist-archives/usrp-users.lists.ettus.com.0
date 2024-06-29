Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B8191CD0F
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jun 2024 15:22:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BAFF53855AB
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jun 2024 09:22:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719667356; bh=kspT7HP4Ib0RsEmA7zSmlwpgOgfkzDaXc//P112OA58=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ku5SVnXrscfABrgRHVpKIkw5IPbn5HEdHvZkty+8QVolSgdQ+7aKJFGQccW5SdK8M
	 LsMRKiN76qwlRSDcDIl+gdVV9xtKOS+halzBCjh4qstlxWTEd8kmPOm8IW6kFXco5Y
	 s4NckUZjSTP5MRwOVWmC506/a2lXbIle2nNb7E90br9OhdLydmCdxbNnrT4uHtg09U
	 k5tZ8JaTqcLL4YQUK9hYSp+S4POyWAjvQK8H8mAXctxJDKzPGVOQLskj7Q42PleGdr
	 9Vy5b5qxRvLFwroiMp2P5Qur/i8J3+EPFsmOoPQodNlIaoEVp8cofV9OFGsjG0KXXc
	 oMEnwQ7WjRe6w==
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	by mm2.emwd.com (Postfix) with ESMTPS id A09FA385503
	for <usrp-users@lists.ettus.com>; Sat, 29 Jun 2024 09:21:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Wwjos9dU";
	dkim-atps=neutral
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3d5611cdcb7so592985b6e.3
        for <usrp-users@lists.ettus.com>; Sat, 29 Jun 2024 06:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719667313; x=1720272113; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wGlSyumZU9NMjdjBzlzYIhm/C+I4NPj0F6Y3tt9skUo=;
        b=Wwjos9dU8B48tY2kKS7tBXe7e2E4YY3EwVXMM0jorNX3d8XzC6xlqyCFSxh2AGdh+k
         Gyd/PcDDCjPt173UrPp6ApfnCAFnKgKcmdXz0y8cwW4Rc3d6L8yikDb7ahUYmWnz8fQF
         mbkma3dFdhmhsKYr1CNo5Wv7NZcP2nDWomIlKtKPdtrV6KBAGKznUAJrVC6i/9IZvnXa
         ORtdmYodDOIUOb1+dmh26yLf8YpJalfTAVAt/ERaC/V/LJyB4rQ11zKYQCor701Kecfn
         zzhpGkAgk4HRg4T1IYxgER5V64Smb61v8os63AV+M+91eMUiivS/Fxsswm7LcQGb14yN
         +M+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719667313; x=1720272113;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wGlSyumZU9NMjdjBzlzYIhm/C+I4NPj0F6Y3tt9skUo=;
        b=dNVHTiVAqQzXO5vEoqovBrRCywZZYBUTQBGr94Ko4u1hKY+1v1IRUupjz8Yn0ixZJ8
         ySkwcNayKTmWVO5qxdFBxlmP/Nb2Abu9DUR6EiKwuJ1MtdlnlSYNlspxRQfJ7z8OhxpS
         +19xKqt+15ewptweQXsxnDPrUj/5NjM0Ri+TJXoXzmQXLuVFm6C1sdI1ObEkgmEvftzQ
         n+Yd4IzbAXS1AepsZRpre8i0gQSaItTcBqevFLRfwh08BIvDnpyEx7wBnwt/OsOu6alZ
         z1H97kueHORBhk2LNJGX/QyOkKBNIzQaHxUJb9gk39nN0Rdh3XESL3ACyQOB/hlsnEOb
         li3g==
X-Gm-Message-State: AOJu0YwVcxN0YVRASGCNN5SWFirNxGPWicjwuT+J3xTO4XdYG3gTVh/O
	rDmKWPInYu9zHqGra+v5rBNgVFiFAeZmgM+FWDQREJHB4e39VAdd4GBgoQ==
X-Google-Smtp-Source: AGHT+IErrdHmZqvoqdaaTBuimpQtrkoX101zN0ajjHqKdrU+qeO+OmlxANrVsrGjQ3qj9qkJRQIRPQ==
X-Received: by 2002:a05:6808:f07:b0:3d5:1f50:188a with SMTP id 5614622812f47-3d6b31eb9eemr953543b6e.24.1719667313379;
        Sat, 29 Jun 2024 06:21:53 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-22-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6b5a705bc83sm12847716d6.131.2024.06.29.06.21.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Jun 2024 06:21:53 -0700 (PDT)
Message-ID: <a39267f5-9892-47b1-8055-4d4cd8659e6c@gmail.com>
Date: Sat, 29 Jun 2024 09:21:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <iyrslmkZzJMIrlAZRq9w3Oil5W3mL5jy1KkNIQGook@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <iyrslmkZzJMIrlAZRq9w3Oil5W3mL5jy1KkNIQGook@lists.ettus.com>
Message-ID-Hash: RBLEYMJVJYTBUU3VRGMW4O5I66CNR2EJ
X-Message-ID-Hash: RBLEYMJVJYTBUU3VRGMW4O5I66CNR2EJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Cannot find N210 FPGA images in Ubuntu uhd installation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RBLEYMJVJYTBUU3VRGMW4O5I66CNR2EJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjgvMDYvMjAyNCAxMzo1OSwgaG9vc2FjMTlAaG90bWFpbC5jb20gd3JvdGU6DQo+DQo+IHNl
Y29uZCBzY3JlZW5zaG90IGF0dGFjaGVkOg0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpUaGUgdXRpbGl0aWVzIChhdCBs
ZWFzdCBvbiBVYnVudHUgMjIuMDQpIGFyZSBpbiAvdXNyL2xpYi91aGQvdXRpbHMsIGFuZCANCnRo
ZSBpbWFnZXMgZGlyZWN0b3J5IGlzIC91c3Ivc2hhcmUvdWhkL2ltYWdlcy4NCg0KR2l2ZW4gdGhh
dCBVYnVudHUgcGFja2FnZXMgZmFpcmx5LW1vZGVybiB2ZXJzaW9ucyBvZiBVSEQsIGFkZGluZyB0
aGUgUFBBIA0Kd2Fzbid0IHJlYWxseSBuZWNlc3NhcnkuwqAgSW5kZWVkLCB0aGUNCiDCoCBzdXBw
b3J0IGNvZGUgZm9yIFVTUlAgTjIxMCBoYXNuJ3QgY2hhbmdlZCBpbiBzZXZlcmFsIHllYXJzLi4u
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
