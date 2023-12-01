Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7041801297
	for <lists+usrp-users@lfdr.de>; Fri,  1 Dec 2023 19:26:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE28738506C
	for <lists+usrp-users@lfdr.de>; Fri,  1 Dec 2023 13:26:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701455189; bh=3bvlMKahSKs9MgbutkUelEKkRDIBZY0x9gNUjCDrFlk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=m7YfFirDS0xKInkTjn7xY4TTc/ASytRUDss44CHqK199+OR2slCfVPz8Q8mA4eELr
	 Y26bvlGaV/T0Gs7I/e9VzSJOwaqwQ2WoUsUHocbMXmebd2G7tcg/8/8OXb45zL24Z9
	 uGyY6BOD1TP1WTxu6+vaCTceuUK5eYIPO9wlEvrfwcZgjYO5KtZ0bSALTcWsHpPRcL
	 kOzV7uwCKF2pSYJyuNyxgCEI54V1M2qnaZ3mspPyuzaljp1FCoFx/5IuYH0vFOZ4EL
	 q5NFeBtEyl5KNIuC8ovQTbvxPwT0GnSSP5uynf/F9TSNCctNdIN7TFsGTtDgeHY6uX
	 7VJDzMK1C5V5A==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id B23DC385AB2
	for <usrp-users@lists.ettus.com>; Fri,  1 Dec 2023 13:25:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JOaDKd2q";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-77d72aeae3bso126185785a.1
        for <usrp-users@lists.ettus.com>; Fri, 01 Dec 2023 10:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701455138; x=1702059938; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xxm+9ua8lmAAiLxNePNQHCPfNF/8SvRBDnqHHZ/v0c0=;
        b=JOaDKd2qeEGNTiqioEghwJHrzW2kU18cKz8IEfdXW3edk1UQQo2j8VRyYR+3RhGgRF
         MS7KRy+PC/3ocilwwolX4FhisKJm2Pr5wDhXjytL6i13lgjhEaACNySDKaONh+HT2sAj
         wiSogbjiXFyl6R0cU+oPIOctEI0rRKCR3D7+WtSakVWr4P1MZmKXHewz3FqIjZKlLMlL
         IyH54/JCIt93BBs4ror+aPHjqdCpQuj6Swkkg7sxwy6eYNV6ola+nSCMFhqJlCoubQc4
         CANFqKnSE7KfhsTseHEjR+0rMUb1m/HbVN2tc310XmaSVG7Qehl/KQ9P0qJzOxpQtuOY
         +zMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701455138; x=1702059938;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xxm+9ua8lmAAiLxNePNQHCPfNF/8SvRBDnqHHZ/v0c0=;
        b=idDhBLQkkXSGmzHNVuXC4KaKwM+PKBub/egUI7qW+ll/diPISKkRr6FEjyKcHJ4mnJ
         KlpIwqOKNEpABAMSbgbKeZIBj2g6Umv8uOKjigvjNicONfBg9hgl2aFdnYOlkwy+8QOg
         GIV2/R8Nf3OOT3jbnefdSpI8YtzcJCx47J58Z7Pq/b+Jm47MUXPLavzUwzSylfFR4oF9
         oboR1vSYG7QksfNLFGbM5jBkxAU1THO2NFL6ZFi09gvs6kpL3/gDP+dtpDGQ50USupm8
         0F4RtNNkgUHu7DlcPY/8TFP6dxwptvPC8EK44gfNRtohni1AN53EUsr4qHvb1nhNcD42
         hOZA==
X-Gm-Message-State: AOJu0Yyx3lH0ufCim0opLzsU1N4o0KaZOl4DpbummCV0VcRcmrZzYB2R
	CYThjlywADOzE1YVl3BouO38QN56MzQ=
X-Google-Smtp-Source: AGHT+IHbprLER+8dmYmsU3sP+VUVIK8se9ExtHNf6EJvJjSkyEpxEoyYBdERut/fearDT8X4R6ASPQ==
X-Received: by 2002:a05:620a:901:b0:77b:ec3a:27c8 with SMTP id v1-20020a05620a090100b0077bec3a27c8mr26558403qkv.63.1701455137757;
        Fri, 01 Dec 2023 10:25:37 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-146.dsl.bell.ca. [174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id rg3-20020a05620a8ec300b0077703f31496sm1709750qkn.92.2023.12.01.10.25.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Dec 2023 10:25:37 -0800 (PST)
Message-ID: <2ea210ca-e947-4a44-8520-7d3db0a019ef@gmail.com>
Date: Fri, 1 Dec 2023 13:25:36 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <wBxUcGddJUZvXwhdTiRy4ajDIENSKf3c9YnpfAeQE@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <wBxUcGddJUZvXwhdTiRy4ajDIENSKf3c9YnpfAeQE@lists.ettus.com>
Message-ID-Hash: 5R743BQCMTV6YEWZCFROP7WTCNUO3FSH
X-Message-ID-Hash: 5R743BQCMTV6YEWZCFROP7WTCNUO3FSH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5R743BQCMTV6YEWZCFROP7WTCNUO3FSH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDEvMTIvMjAyMyAxMjo0NywgcHVydmEuam9zaGlAcGhkLnVuaXBpLml0IHdyb3RlOg0KPg0K
PiBNYW55IHRoYW5rcyBtYXJjdXMuIEhlcmUgaXMgdGhlIHJlc3VsdCBmb3IgdWhkX3VzcnBfcHJv
YmUgLS1hcmdzIA0KPiAiYWRkcj08dGhlYWRkcmVzcz4sdHlwZT1uM3h4LHByb2R1Y3Q9bjMxMCIN
Cj4NCj4NCj4gRXJyb3I6IExvb2t1cEVycm9yOiBLZXlFcnJvcjogTm8gZGV2aWNlcyBmb3VuZCBm
b3IgLS0tLS0+DQo+DQo+IERldmljZSBBZGRyZXNzOg0KPg0KPiBhZGRyOiA8dGhlYWRkcmVzcz4N
Cj4NCj4gdHlwZTogbjN4eA0KPg0KPiBwcm9kdWN0OiBuMzEwDQo+DQo+DQo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCkhvdyBhcmUg
eW91IGNvbm5lY3RpbmcgeW91ciBob3N0IGNvbXB1dGVyIHRvIHlvdXIgTjMxMCByYWRpbz/CoCBB
cmUgeW91IA0KdXNpbmcgdGhlIFJKLTQ1IG1hbmFnZW1lbnQgcG9ydCwgb3IgdGhlDQogwqAgU0ZQ
MCBwb3J0Pw0KDQpXaGF0IGFkZHJlc3MgYXJlIHlvdSAicGluZ2luZyIgdGhlIGRldmljZSBhdD8N
Cg0KSXMgdGhpcyBhIG5ldyBkZXZpY2Ugb3Igb25lIHRoYXQgc29tZW9uZSBlbHNlIG1heSBoYXZl
IGNoYW5nZWQgdGhlIA0Kc29mdHdhcmUgb24/DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11
c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
