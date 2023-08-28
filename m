Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 871FA78B269
	for <lists+usrp-users@lfdr.de>; Mon, 28 Aug 2023 16:00:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41738384ADC
	for <lists+usrp-users@lfdr.de>; Mon, 28 Aug 2023 10:00:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693231237; bh=G378VQFQ+huXElw8s1EUCwRsK+azjlAejLYReLBMpGw=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=mc9oOmyIQqBuX2X8xYLnyCHkycpgQA9RYy5eef2d+1w4U+YZM5187WtsXUsFpRSm1
	 rFOZMeYOEPrzZLJiuVQkXWMrW29SsHIq7CBjXbAsAFQVckdMkfetYxZNkHXZ+CYgsq
	 fAhcO0Yii6PIPgSg4Fk0cs2Jk9AFWoKdkIpETI9614Qxm4bhzs5or8hzbtW5SKUwsT
	 WkHfuc/VIzaUVr89R7mf35jK7u13dYFBhVmqE2OYACGXoKOuSt4t8eaDZY2swvMC9B
	 ZzalB2Lp3px9b4CbVB9umskqvOWafSa9iGkmC1kfoP6qcBg0piA0j/zaWOLXj8Wsnr
	 /2a9G5tZNtsFQ==
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 92D6E384ABC
	for <USRP-users@lists.ettus.com>; Mon, 28 Aug 2023 10:00:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gRFPJydt";
	dkim-atps=neutral
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-49059b1ca83so306886e0c.2
        for <USRP-users@lists.ettus.com>; Mon, 28 Aug 2023 07:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693231205; x=1693836005;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JTP9HC22uCDEV+pqEFJU2SDX8j+u9tD9slqFHvwdTUo=;
        b=gRFPJydt5A7QghNKdcifKbqqdzRp+NNAMH1LIQ2aeDAnoI4hJYr0561UVpi9tMUzt+
         aAVSBqF8r7ZB6Vc/IrympnPNTtfET6l3340uHuIaNG/Ncex1t3y/Ic1lFDQE0Rw+6sP3
         WSb4HOBJIPtzQEVoSPXj2Ny4fLu4dRFYUAGmxgCgs7yngHBAsln1rzGAA2ffBv7f3rLf
         6dqF57isOeKgB+9jFB8uOa4CH9jd0frqLruEikZ0NIE28xvLXTIsPINEWzhHTQo8MBYn
         zlP3TWM1fNHL1T9KSjoO4C7CLkO0PPc9nRjDRCrUR2Z3YkKVSo+BLnNEerOW9xFhOV/H
         ZFwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693231205; x=1693836005;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JTP9HC22uCDEV+pqEFJU2SDX8j+u9tD9slqFHvwdTUo=;
        b=jh6wnNiIx23LIC2mxyJDsN9IDoDvNvC1UI4ZJGD8YphkfQZbpA7+cb+a2vxpmI6wvY
         I65H2qq7RVvsyu9IK+h8DF8rIGoFWFd8qKf0/CcT7zlk63FsARSziWZun1QG9kKarSgr
         KBsyJZJgqtDI09RF4WdowgxA/7DyV7QVH5RPzLj8rtaroNz+/maXeHKmlWQ97pj2Rgfn
         ndvAz/Mo++aLPhYsppEWuBeGYraOXLaFXA5ezK8/DlAdCM4r9zXnGLlip/uzn8LlibSl
         I4oTgkfWsYyCJYxHCimB2+N3GTVNXw1S/rNb1gIkbTP07hEK1fbJg1CFB8p2NbghzEmZ
         RFYA==
X-Gm-Message-State: AOJu0YybvwoSrDuvqRjVrDipBCdR8SlmP84sb1m7Y3kVcLkkB3sROAIN
	LCeXS7c/+PK3ON9j5SGcttBf3skPdl3dHw==
X-Google-Smtp-Source: AGHT+IHy9CirYg9oP4PBxxFHRpl8skqHk1uMi5cuOy0QxNLFZDiAvoLULPHtU+IKSfYXgfYJGaXdqA==
X-Received: by 2002:a67:f94d:0:b0:44e:a69b:3d2b with SMTP id u13-20020a67f94d000000b0044ea69b3d2bmr6988638vsq.17.1693231204853;
        Mon, 28 Aug 2023 07:00:04 -0700 (PDT)
Received: from smtpclient.apple ([174.93.1.40])
        by smtp.gmail.com with ESMTPSA id j14-20020a0ce00e000000b0064f66ae4be3sm2591198qvk.88.2023.08.28.07.00.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Aug 2023 07:00:04 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 28 Aug 2023 09:59:44 -0400
Message-Id: <0A02A2E3-B01F-4F04-AE32-72A1869BD8C5@gmail.com>
References: <378ef88c-9528-4b60-90ff-a1cf8ee0dd60@app.fastmail.com>
In-Reply-To: <378ef88c-9528-4b60-90ff-a1cf8ee0dd60@app.fastmail.com>
To: Steven Murdoch <steven@lists.murdoch.is>
X-Mailer: iPhone Mail (20B101)
Message-ID-Hash: YJW64GNQFFK5COFSWDZBIYRDRH3D2MED
X-Message-ID-Hash: YJW64GNQFFK5COFSWDZBIYRDRH3D2MED
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Powering an active antenna from B205mini-i
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YJW64GNQFFK5COFSWDZBIYRDRH3D2MED/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlcmXigJlzIG5vIGJ1aWx0IGluIGJpYXMgdGVlIGZvciB0aGUgUkYgcG9ydHMgb24gYW55IFVT
UlAuIA0KDQpGb3IgVVNSUHMgd2l0aCBHUFMgYW50ZW5uYSBpbnB1dHMsIHRob3NlIGlucHV0cyBo
YXZlIGEgNVYgYmlhcyBvbiB0aGVtLiANCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQo+IE9uIEF1
ZyAyOCwgMjAyMywgYXQgNzo0NiBBTSwgU3RldmVuIE11cmRvY2ggPHN0ZXZlbkBsaXN0cy5tdXJk
b2NoLmlzPiB3cm90ZToNCj4gDQo+IO+7v0hlbGxvLA0KPiANCj4gUGVyaGFwcyBJ4oCZbSBtaXNz
aW5nIHNvbWV0aGluZyBvYnZpb3VzIGJ1dCBJIGhhdmVu4oCZdCBiZWVuIGFibGUgdG8gZmluZCBh
biBleHBsaWNpdCBzdGF0ZW1lbnQgd2hldGhlciBvciBub3QgdGhlIFVTUlAgQjIwNW1pbmktaSBy
ZWNlaXZlciBoYXMgYSBiaWFzLVQgdG8gc3VwcGx5IHBvd2VyIHRvIGFuIGFjdGl2ZSBhbnRlbm5h
LiBEb2VzIGFueW9uZSBrbm93IHdoZXRoZXIgaXQgZG9lcywgYW5kIGlmIHNvIGhvdyB0byBlbmFi
bGUgaXQgYW5kIGl0cyBzcGVjaWZpY2F0aW9ucz8NCj4gDQo+IElmIGl0IGRvZXMgbm90LCBkb2Vz
IGFueW9uZSBoYXZlIGFueSByZWNvbW1lbmRhdGlvbnMgZm9yIGEgZ29vZCB2YWx1ZSBiaWFzLVQs
IGlkZWFsbHkgc21hbGwgYW5kIHdpdGhvdXQgbmVlZGluZyBhIHNlcGFyYXRlIHBvd2VyIHN1cHBs
eSAod2hpY2ggd291bGQgZGVmZWF0IHRoZSBjb252ZW5pZW5jZSBvZiBhIGJ1cy1wb3dlcmVkIGRl
dmljZSkuIA0KPiANCj4gVGhpcyBpcyBmb3IgdXNlIHdpdGggYSBMMSAoMSw1NzUgTUh6KSBhY3Rp
dmUgR1BTIGFudGVubmEgd2hpY2ggbmVlZHMgMi4z4oCTNS41ViAxNi42bUEuIA0KPiANCj4gVGhh
bmtzIGluIGFkdmFuY2UhDQo+IA0KPiBCZXN0IHdpc2hlcywNCj4gU3RldmVuDQo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
