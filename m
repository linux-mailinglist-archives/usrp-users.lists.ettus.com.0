Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 010346A7194
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 17:54:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA896383BC0
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 11:54:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677689669; bh=+1tUJFZLecwdiqSMy4Zw97Amih+iTKg0d6bysFlWuGk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FEaw1Ja6QnIm/3ojdKcMCrUDxBnbYisgyZ5w2vqURrQP3GPkZ/V8ZCHA/1oHQKJU8
	 PdjrGni4K6se/AamfPPxJgQU26H/vvGrQ7hU3nie//DQ+xAQ5dCcMbz1qiQmT9ntUk
	 xR1tVsD1jIC2yDxigWuxlbrnKFnqKjgzMCYlEUZDXTXFeG9pHKGBOYFy+saI0G0k0G
	 /2scuHWEbzaOcHJ9KQOoQVW51AwF+6XNPQt6MsfRwk3ywOf+jyITUOyGKRjoSYJYzj
	 BeKcFGa24ItUgSS+r6Gj6ZDN+mvHf/PVlypRIXe0w5qR7XFpxtQdDTrHUFd3/dKevt
	 99W9TPR4xRvjg==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 05F16383A26
	for <usrp-users@lists.ettus.com>; Wed,  1 Mar 2023 11:54:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YnImVwH2";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id op8so9680652qvb.11
        for <usrp-users@lists.ettus.com>; Wed, 01 Mar 2023 08:54:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dRlt2NvAEBWaYOF4B1U30KKaQa4oI8ueiVoSm35tuV8=;
        b=YnImVwH26tiky8UA1Pj7ZK2d3rZJWB8khLpDvsN3gzGdM+XmzzILlAOYEvERt7T5sJ
         Id91YXwDiUOs4ouF3xR2qPMhfrJxlyrEDctwcGwhbyvM4Bvviyt6PqrMX9ZgsrSbGg9f
         EKnP0uegmTZqVlphXgFj0C6QZlvt9JBbxb1G2rHPNNDG9CPmpuFL1UJepfx1mjt5PIO5
         hizrvtUf+zNrY1QyU5mw45I/MprNUvov2WNqc6QGLTT1X4OzktkBTT1sFxzjre3s4gLN
         D7rcU3S7NTEXo+Ir3wMUGo4d2LqZsKPcLf9dDRMRekO3QONvWPmN2dmmFtpsvfPNiWC2
         2Iuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dRlt2NvAEBWaYOF4B1U30KKaQa4oI8ueiVoSm35tuV8=;
        b=PjcJrkRa2KYc69FBa87Txq40PaVrMApN3meU9YeO08TK6EP25grka47Zos8YB3qSk7
         QfcknCEMm1drDxoKRsLUuEMYPXU2KyNvj2c8QGi9/P/xlb+0hns2tYiUHE+hHbfzPv6x
         CvLWNuqSEW+iuD0akU1sINPv2VVf9rN3MD+rJA1iR5eUQuJ2A0hGK8HZjE4/VoETmDB9
         qopPwPwZpb74Y3bivEe63hK+3qHH3la+ur34QO+ZQMyMmeHWlEUR7L9BKAN/yDm05Pob
         +gbH0fcnzyHoJKtOg5jkv5AXFwuwLBV985ecaUDKzwqFlnXHoiPX6IRIN88GNWCWsPS1
         9/+A==
X-Gm-Message-State: AO0yUKXQDF2qMd9AEG1itMthCK7atorVIfznxKLrQVdUVAyG1biOYDTh
	i3wtoWsw9aLa61RDUlrTMJSGb+xS3ZY=
X-Google-Smtp-Source: AK7set8AeXkXzJucK61rYu7cAihca/bqzWj7qfUk55g6sattBb0kQCX4Bj6sfJBVDYTseOMILTt7mQ==
X-Received: by 2002:a05:6214:1313:b0:537:7bd7:29d4 with SMTP id pn19-20020a056214131300b005377bd729d4mr14801825qvb.47.1677689662179;
        Wed, 01 Mar 2023 08:54:22 -0800 (PST)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id p16-20020a05620a15f000b0071d0f1d01easm9070136qkm.57.2023.03.01.08.54.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Mar 2023 08:54:21 -0800 (PST)
Message-ID: <be6db947-0870-955e-14da-c0f1e4768efb@gmail.com>
Date: Wed, 1 Mar 2023 11:54:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <jTLN1r7p7ylgXzKE4thguJC5xOm7cVr5fus8Sf5NwA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <jTLN1r7p7ylgXzKE4thguJC5xOm7cVr5fus8Sf5NwA@lists.ettus.com>
Message-ID-Hash: UOYL4IQR7V7MLUIHNG3OEK47MBP3E7WO
X-Message-ID-Hash: UOYL4IQR7V7MLUIHNG3OEK47MBP3E7WO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wrong Measurement Results
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UOYL4IQR7V7MLUIHNG3OEK47MBP3E7WO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDEvMDMvMjAyMyAwOTozMCwgaGVucnkucG93ZWxsLnh4QGdtYWlsLmNvbSB3cm90ZToNCj4N
Cj4gSSBkb27igJl0IHVuZGVyc3RhbmQgaG93IHRoaXMgaGFwcGVuLiBFdmVyeXRoaW5ncyBhcmUg
c2FtZSwgSSBqdXN0IA0KPiBjaGFuZ2UgVVNSUC4NCj4NCj4gRmlyc3QsIEkgdHJpZWQgd2l0aCBV
U1JQIEIyMDAgYW5kIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gMCBhbmQgMTgwIA0KPiBkZWdyZWUg
aXMgM2RCLg0KPg0KPiBUaGVuIEkgcGx1ZyBQaWNvIFZOQSwgdGhlIGRpZmZlcmVuY2UgaXMgemVy
by4gVGhlbiBJIHBsdWcgTmFubyBWTkEgDQo+IChJdOKAmXMgNTAgZG9sbGFyIFZOQSBjaGVhcC4p
IHRoZSBkaWZmZXJlbmNlIGlzIHplcm8uDQo+DQo+IEkgcGx1ZyBteSBvdGhlciBVU1JQLCBJdOKA
mXMgQjIxMC4gVGhlIGRpZmZlcmVuY2UgaXMgMCw3ZEIuDQo+DQo+IEFueXRoaW5nIGNoYW5nZWQg
ZXhjZXB0IFVTUlAuDQo+DQo+IEFmdGVyIG9mIGFsbCB0aGlzIEkgcGx1ZyBVU1JQIEIyMDAgYWdh
aW4gYW5kIHRoZSBkaWZmZXJlbmNlIGlzIDNkQi4NCj4NCj4gV2hlbiBJIGNoYW5nZSB0aGUgZnJl
cXVlbmN5LCBhdCBzb21lIGZyZXF1ZW5jaWVzIHRoZXJlIGlzIG5vIA0KPiBkaWZmZXJlbmNlIGJl
dHdlZW4gMCBhbmQgMTgwIGRlZ3JlZS4gSSBzaGFyZSB3aXRoIHlvdSB0aGUgZGF0YS4gV2hlbiAN
Cj4gaG9ybiBhbnRlbm5hIGF0IDAgZGVncmVlIGFudCByb3RhdGUgMTgwIGRlZ3JlZS4NCj4NCj4N
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQ0KSG93IGZhciBhcGFydCBhcmUgdGhlIGhvcm5zP8KgIFdoYXQgYXJlIHlvdSBUWCBhbmQg
UlggZ2FpbiBzZXR0aW5ncz8NCg0KRG8geW91IGhhdmUgYSBsYWJvcmF0b3J5IHNpZ25hbCBnZW5l
cmF0b3IgeW91IGNhbiB1c2UgdG8gdmVyaWZ5IA0KbGluZWFyaXR5IG9mIHRoZSByZWNlaXZlcnM/
DQoNCkNhbiB5b3Ugc2hhcmUgdGhlIGNvZGUgeW91J3JlIHVzaW5nIHRvIHRha2UgdGhlc2UgbWVh
c3VyZW1lbnRzPw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tCg==
