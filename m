Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDAEAACFE1
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 23:42:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 809DD3861AE
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 17:42:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746567770; bh=SSQljFH58PJfnP3HWgxckDrTwR7jZu29WES05tmsDng=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=a9Zhn/Q0TNQpSM7ef3wZS7fRoaXlfBgo+70O3WiQUFb8dcTIPhSlfmhqjRmlH0CQR
	 LOAFW6gwCay6BDXe3L/iBbebehi9+o0V/VFpdhCg6m6iiyRKsODd5jnyDfaqHKBnfg
	 NZJoiWgUHBa8YrO5HdbB47qdM0sh08Yq0KjSUbGYRzF3UfgzGZcWRzVL2qKMVGdwZR
	 LcWcZH/Q1tJj8+MEE6jxX/7rISHoYTA0jfWSl5aru4m+Xh9ip1edTVbeW5fqwFIAhK
	 QcU/clLbaENtiQplkxWZU+r0T8b80HXAg42AhJ9+qvk/LRObKw/6e/n9hLo7zFQG1n
	 triCPKFL+muvg==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 45B67386117
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 17:42:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iOi2h/XB";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-47698757053so86339701cf.0
        for <usrp-users@lists.ettus.com>; Tue, 06 May 2025 14:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746567761; x=1747172561; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5Xwv7DHMtbdQkc2IHWvVXS0PqVM6shEbzaDjEpxwtgA=;
        b=iOi2h/XBOKnXa1sib+oAad8460CsA6Wu1Kbdn608uIufUMUhqiZx/gPAciPx8DtEZa
         Pf6LLwj15q8FNmSKGCRj9JVZQ9lpOvEUmNrdW0Oc2OQSkid4Bj0I+yZCt2SAWcAvAY+0
         lcTnpfd/y1/IbzNkhNsAeZCtjreIs6YRrms/1vc5HuVBSGHK25/0vvzbBOgQSdnXvsIP
         f8cHfXj8WFOZUF06O6vpB4ch07D3HYHRXil3TShSkNPPxfl045toeswCO0oZ0nLfFZC9
         IjoNVO6LJpTe6ZZaG51vXg8m2VBpe7jG2qU6fths2WeG7zyqH5+TYVAGTYIjrB6cNog9
         ePsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746567761; x=1747172561;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5Xwv7DHMtbdQkc2IHWvVXS0PqVM6shEbzaDjEpxwtgA=;
        b=qcAI2IS8reHY6090fcE8FZIaFyQ+zBR8njvO6oXRr42zZXFDsrgCwkRubva8HDCpIv
         hV3nquS9tyumeLazmOeGG6uaGP7eVCKR8VFpoRy2gI0lpJQYSst4D8z3CryVuRcW5ZfJ
         HupKQnAT9EQqmzPHodlpGILKutzguUwqX0/JzARnPSaf2Me442Mg+SJPKVIidcxoYo5y
         ivynJtLQ6KBZsHVIjWXBFeUH4YVs1+VTHWD0g4OLxUg2hL84JmB974W0zzLzjMULZQuU
         FA6KGfW62pQxXgAygGhJuKBVGdWWMcEytU1brfAIps+vYPVnb+cuPxUcJQYFBF456uyZ
         VcRA==
X-Gm-Message-State: AOJu0Yzvec2If1RjXmGutSDu81C8oAyOdYYLZ0rEuWTUFBUnOg9axjvJ
	1AlFfmUx7sOHLRtaktpnwj5QQ0zLmO+4ho1akoyJIxkmo0LTo58UsjHvzA8p
X-Gm-Gg: ASbGncsJobPT+3RP5gsM583gs1M7nK3eWfKRkuNG7UqwwYvv4PJknzUvQe23xWcPg4V
	Xuht0myELVF4fGaSkcK9zyNg0AxR0XZrGvIrGJ1wU4wfbfpH1vDpI5RffTc3IQVoQ/DInI5HuYG
	8CghwGkxTFxJUiHvNTnRQyz9wpCNHU80p08GPgJBRAK2Vd7BjCFJFUYPBS5VD6ZKoWTriSSCYmk
	VDo36RHyUNivgc87e0vc4dnX/cl/dXGtgop/QGwckhLcZ7gC4R6YKTRAdwq4Bj4nd6vd8UIrBeB
	gxl18UkII9vPvqcb9d+rTg+8AJga0IAkysT1NFPIik+H6n7ASw==
X-Google-Smtp-Source: AGHT+IGRTVniCYO/j/B5WV5XdI3QgJsY7wktWR2uEH3/LJs8nqv/1hAtqxaHVzLhqW9C94TrcuX39g==
X-Received: by 2002:a05:622a:6085:b0:476:af18:239d with SMTP id d75a77b69052e-49227e424c3mr10586191cf.51.1746567761077;
        Tue, 06 May 2025 14:42:41 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4922174b4casm2951861cf.36.2025.05.06.14.42.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 14:42:40 -0700 (PDT)
Message-ID: <9a1b6218-c420-4a88-afe2-af29a89d23bd@gmail.com>
Date: Tue, 6 May 2025 17:42:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <3xfUWORCCTzqcoRfgPtb2rkS1pX8xhI4VAyxu4rQCA@lists.ettus.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <3xfUWORCCTzqcoRfgPtb2rkS1pX8xhI4VAyxu4rQCA@lists.ettus.com>
Message-ID-Hash: CF3GLF5FI4Y6SYBEDZWS74TJ2JJRGIRI
X-Message-ID-Hash: CF3GLF5FI4Y6SYBEDZWS74TJ2JJRGIRI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205mini Discovery Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CF3GLF5FI4Y6SYBEDZWS74TJ2JJRGIRI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMDUvMjAyNSAxNjo1NSwgd2h3QGFwcGxpZWRyYWRhci5jb20gd3JvdGU6DQo+DQo+IFdl
IHRyaWVkIHBsdWdnaW5nIHRoZSB1bml0IGludG8gc2V2ZXJhbCBQQ+KAmXMgYW5kIGxhcHRvcHMs
IGFuZCBpdCBzZWVtcyANCj4gdGhlIGRldmljZSBpcyBub3QgZW51bWVyYXRpbmcuIEkgYW0gc3Rh
cnRpbmcgdG8gdGhpbmsgdGhlIEZYMyBFRVBST00gDQo+IGlzIGNvcnJ1cHQuIElzIHRoZXJlIGEg
d2F5IGZvciB0aGUgdXNlciB0byByZXNldCB0aGUgRlgzIGZpcm13YXJlIHRvIA0KPiBmYWN0b3J5
IHNldHRpbmc/IElzIGEgcHJvZ3JhbW1pbmcgY2FibGUsIEZYMyBpbWFnZSwgYW5kIHByb2dyYW1t
ZXIgDQo+IGF2YWlsYWJsZT8NCj4NCj4NCkknbSB0cnlpbmcgdG8gZmluZCB0aGF0IG91dC7CoCBJ
ZiBpdCB3b24ndCBlbnVtZXJhdGUsIHRoZXJlJ3Mgbm8gd2F5IHRvIA0KZ2l2ZSB0aGUgRlgzIGEg
ZmFjdG9yeS1mcmVzaCBib290IGltYWdlIG92ZXIgVVNCLg0KDQpUaGlzIGhhcyBoYXBwZW5lZCBz
byByYXJlbHkgaW4gdGhlIDE1wqAgeWVhcnMgSSd2ZSBzdXBwb3J0ZWQgVVNSUCBkZXZpY2VzIA0K
dGhhdCBJIGRvbid0IGhhdmUgYSBwcm9jZWR1cmUgY29tbWl0dGVkIHRvIG1lbW9yeS4NCg0KSXMg
aXQgcG9zc2libGUgdGhhdCB0aGlzIGRldmljZSB3YXMgIndpcGVkIiBhY2NvcmRpbmcgdG8gbWls
aXRhcnkgDQpzZWN1cml0eSBzdGFuZGFyZHMgZm9yIHN1Y2ggZGV2aWNlcz8NCg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
