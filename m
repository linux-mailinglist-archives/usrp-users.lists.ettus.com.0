Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5282EAAC9C8
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 17:46:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2D6F43862A8
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 11:46:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746546389; bh=xhScSgi/nPfJPLBimAYbHAOSuDWJBsNfBQaVpDZs0ek=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=aLIAPEmGChoGelkUtxy11ljmfHvpfBeSB+6mhwvZBdhBquB5fWRKtEt5RuhCvrJz0
	 ZPXsrLoyMmZoBNCCNg3PdItZK296Ce87G0jnv1+wFo3ZMQMbD3v//w+7sgnlZbplCY
	 38jOfqwVRJ26Tzs5ZdRmTRjp0ZwyoF5GZLckjkA/MSFs89ynCuQy3QmnyjO5y4XvHG
	 6C96xua1P3BlNLoMszGOGonZsfU0qLbZCN1pHzEF7fgaoxgQ0YVRMDzUpOj1lGhkdu
	 C2gVxpLkVRxJx/CFzF/7mOpxiN3GDj6bBDSdRHQf2j8dEe73hmt01mE7DUHWvqOiOX
	 HtZ1dmklzNmtg==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id DFB1E385EE5
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 11:46:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hKceSlYs";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6f0ad744811so49196776d6.1
        for <usrp-users@lists.ettus.com>; Tue, 06 May 2025 08:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746546379; x=1747151179; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Go65ADvC+nLxP9f2I/Z1N+I8Nexa3161MjD4ZELm8y4=;
        b=hKceSlYsjgh16p64dFsGt//SVB8KjQlc+6tt9BCqNkSEdOD+7hsRCN6RJsHCCDUW8k
         jxoGFniWAM28iIloiFEgRM3MHd+/kEkY0RupjHoY7oN7EfqvPyPebTKRQSMvjcLUr1uc
         xW9TKkTw3V+qI4T5owKg3j7TXanvUHIw2VMQ8LrA8IeJkGR8GwOYHWT5H1W/XfwG1QyV
         r5L1IUXZAkFZJ4phypqF1XZcAuR+UKTLueSgwPjUSuhpf92xKfUy7/e6Ongey4Y62nDe
         NSbmJWgw5EyxIG4UvGu/gon7IIuOYkfTRvRcPbVevWV/uPoQhit7M80MIJS7f1mR3KyK
         Gn1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746546379; x=1747151179;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Go65ADvC+nLxP9f2I/Z1N+I8Nexa3161MjD4ZELm8y4=;
        b=fOdSnC/qaNMohj91vEBIyFhjIoQhPhu7cjtbHJGV7UJO3njBCduoCsbuitNgL7KriA
         iK/TXVl35/ROzvBU37tES2D9i8+MdayoZAfJwXMk5MHxIKeXawIWUGzHiAY2WZJ+nHQe
         yWjDEIc19E8D8bkkNab/TdDAZreghVv/rsucHm2hLVM5Gd41BawkLV/xSBf5wzhbIvIB
         Tvi3x1nDhzqUpW3XOqsh/E9e0pn6lmxXn3xc8xHK7Vm4SapIz27OlJqx61SY5N4YeK+B
         1PXDJAbD5kskaagEpyB5mAaDb4wVjawjiWzTG/2+DYeAsdLEsyniaut0D7KPOzAv1E2q
         n5dw==
X-Gm-Message-State: AOJu0YwGyN2VFkyogKU4M8kSkyv1vAv1CUmTQycFZy5+M6SZAAv0HIoC
	FR/f7whhXozbEKZViPwMzTVq1ctmzJH7pEgW7/ZRtPtnOGq6q7kOF0/KapJc
X-Gm-Gg: ASbGncs0Xn9KVz3frspUbKBivzDg42d9ffVG5w6EfSSpjzLFY8Ey+B9LgzAo0vTAFBM
	pU151ozVI0iC9eFUtlBoH4QhSvtBbgp+dftue0it0+EkPpg/IHpCXthN05fhjnzeeZFt6G71jT0
	vKvi9IWm4AgpqoshwG4rK6WO/ZrqdCintNlQTYM2t4lF8j2eh4v/H+oz3uLOjxdfbo92cvWT7c7
	Oi/VT2smMZH3lLWmESLuNaHBIPJozOAeC8jKgksrjVwd85jjVF0aTU+MdhDhSJJ7OTShLRgMfB0
	bhETJ6/nmIjy/WEoddmMxi354BSOfAtiKd0ztdhJ0h/pkooBwWwekgaz1rh1
X-Google-Smtp-Source: AGHT+IF8630ctIs+naCJ3uShrct0iCxWTdJvYUulHV7as+CesQw9Wwe77l+9ZOxY6dFfAg8z3WkmEg==
X-Received: by 2002:ad4:5c4c:0:b0:6f4:c237:9709 with SMTP id 6a1803df08f44-6f528c9ca62mr240658796d6.25.1746546378856;
        Tue, 06 May 2025 08:46:18 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6f50f3c4492sm71770876d6.35.2025.05.06.08.46.18
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 08:46:18 -0700 (PDT)
Message-ID: <3af642e9-2fe2-4908-933f-19228643a23f@gmail.com>
Date: Tue, 6 May 2025 11:46:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <S0aRC4mmc6QOy3Rbd28sbEqKRBOJGzPiyl6oVIqO5w@lists.ettus.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <S0aRC4mmc6QOy3Rbd28sbEqKRBOJGzPiyl6oVIqO5w@lists.ettus.com>
Message-ID-Hash: 3R6AX3MUT7UMIAAJK6JDZAXW4EJO67XC
X-Message-ID-Hash: 3R6AX3MUT7UMIAAJK6JDZAXW4EJO67XC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205mini Discovery Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3R6AX3MUT7UMIAAJK6JDZAXW4EJO67XC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMDUvMjAyNSAxMTo0MCwgd2h3QGFwcGxpZWRyYWRhci5jb20gd3JvdGU6DQo+DQo+IFdl
IGhhdmUgYSBjb3VwbGUgb2YgQjIwNW1pbmkgYm9hcmRzIGxlZnQgb3ZlciBmcm9tIGEgcHJldmlv
dXMgam9iLCANCj4gdHJ5aW5nIHRvIHJlLXB1cnBvc2UuIEJvdGggYWN0aW5nIHRoZSBzYW1lOg0K
Pg0KPiAxKSBQbHVnIGludG8gVVNCIGFuZCBnZXQgYW1iZXIgcG93ZXIgbGlnaHQuDQo+DQo+IDIp
IHVoZF9maW5kX2RldmljZXMgcmVwb3J0cyDigJxObyBEZXZpY2VzIEZvdW5k4oCdLg0KPg0KPiAz
KSDigJxzdWRvIGxzdXNi4oCdIGRvZXMgbm90IHJlcG9ydCBhbnl0aGluZyBsb29raW5nIGxpa2Ug
dGhlIEIyMDVtaW5pLg0KPg0KPiA0KSAvdXNyL2xpYi91aGQvdXRpbHMvYjJ4eF9meDNfdXRpbHMg
cmVwb3J0cyDigJxjYW5ub3Qgb3BlbiBkZXZpY2XigJ0NCj4NCj4gSXMgdGhlcmUgc29tZSBpbml0
aWFsIGZpcm13YXJlIG9uIHRoZSBkZXZpY2UgdGhhdCBpcyBwb3NzaWJseSANCj4gY29ycnVwdGVk
PyBEbyBJIG5lZWQgdG8gcHJvZ3JhbSB0aGUgZGV2aWNlIHZpYSBKVEFHPyBJcyB0aGVyZSBhIA0K
PiBzcGVjaWFsIHByb2dyYW1taW5nIGNhYmxlIGZvciB0aGlzIHB1cnBvc2U/DQo+DQo+DQo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20N
CklmIHBsdWdnZWQgaW4gdG8gYSBVU0IgMi4wIHBvcnQsIHlvdSBtYXkgbmVlZCBhICJZIiBjYWJs
ZSB0byBleHRyYWN0IA0KcG93ZXIgZnJvbSAqMiogVVNCIHBvcnRzLg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
