Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 697666E1683
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 23:33:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 671E9384120
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 17:33:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681421587; bh=0UXnIiVfNcEODoS4mzKebFl807y7o0cukYUG7TdFHuw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=iDQ5/bdf/9IZEFXGbTK3YoJnxak06FqoACf5fCSeZlNSP8HWuWxz2v/t2u6GJ6Gs3
	 gEEuHrwz9Tnr9fAzuKg8ykGF7paPyWqPVopIKPWLkCuvLcgIx9RP5nl8x+12mt9WVA
	 WH5vHc21IZZjvbA0y/2rXnTVqNCaJqcqVIunYKHi4HtT14NOmwG5ZHooYO9xpIipNF
	 pqjjgMr+dMrf2CHo43ZiCwpcDMCHzvVvNzjp0NbYPdQwqy19bRC2Hu47fxJoahIKrB
	 JPWT80iE4rGDqU+7/Hdh/3yxjTc3VJD4nvqeUrt2PLol+zMllmQtzoWxr5ploebzEl
	 Y08veD0r8TuzA==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id DC9E7383F00
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 17:32:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mRK0qHEp";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id qh25so5854837qvb.1
        for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 14:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681421543; x=1684013543;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c3t0XDuziizBoXRt6l6n5tXKZIAXfj2IkIZWsHlzsqQ=;
        b=mRK0qHEp6dXZI666zd0ZuBfuSG9E/Qywb91K8O0Lree7xOibwR7iYSh03sf8Fc6vjW
         WJl1NUKSQa8iQLziF+hWaQHIb+v++3q1O7lAm+b0Kic4xzFnf6n1MY4788Gf1sMMY6GQ
         3G2MZ9NQHps5GSFU8dRQItQM5l4T4RpybbpmeE5iR5m0cs484J0y0ziS03aY00jhO94z
         u0E7VKC00OZFNjzSLuc4dBnTELOZDYvHdAbXPhPuJUcYTPTYaQlPAqSLWE+LozU+3vBI
         N9BvYlc/RAk+FnEsAQjuneTrtl0Y9juiFoMSkvNAUOSYvmMqTBGxamWUbjDHx77rwpR9
         TOpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681421543; x=1684013543;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c3t0XDuziizBoXRt6l6n5tXKZIAXfj2IkIZWsHlzsqQ=;
        b=fglhcknYAhVyMqvd749B5+CIgVWrIrZqbFlrYaTDSFqC1vksP5OL97dga4Vk5c8IJ5
         gu/dsaknAnPQ7cWA3uxt6Zqxob4qqvFxgQCSI9oRYuIWAdN5MC7qqKHHcOOcuV9h3PMk
         HAFatie8JtiXlQjVkg/gMz5dCDJ8i9j+q7pyVMveH4IdNlVRqIE5/ZanEeulnKn/RbKB
         PLjGU8rC+EkSwoSDv8JpPveC2ZdmgoF5vEqk2dlYTpCkqBxKAEuVFENvXJ7zW+YR13H/
         U2ei77Eh9ceFyg67u7QyGrB/qDfzY1iRlVTne/m6JFBVxkkmU5KZdz6hHVbfuEaR8oDK
         fYDg==
X-Gm-Message-State: AAQBX9flb5KNWMmb/AjykbWFvXbiRJOTbQZkuChI2RHs5egG66NuMilw
	hcoM0SX+ZEaU7gb9x3iA1V1JIoJNjeU=
X-Google-Smtp-Source: AKy350bmvsVZxNZoc66i1ViwwUcn8qJXSOyhHT+Q7pBD8mRzGoo6KTyk00FDBYOWwACks00Pyq9NcA==
X-Received: by 2002:a05:6214:5008:b0:5a6:24f6:724d with SMTP id jo8-20020a056214500800b005a624f6724dmr98451qvb.13.1681421543014;
        Thu, 13 Apr 2023 14:32:23 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id lx13-20020a0562145f0d00b005dd8b9345b8sm690153qvb.80.2023.04.13.14.32.22
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Apr 2023 14:32:22 -0700 (PDT)
Message-ID: <6633af1b-5726-e020-83f4-24454739e486@gmail.com>
Date: Thu, 13 Apr 2023 17:32:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <20230408021338.994254D94B@mail.futurelabusa.com>
 <d5460510-c3e2-9f3f-31ea-2bf55fedcf7e@gmail.com>
 <20230411011218.5513E4D94B@mail.futurelabusa.com>
 <ec810fb7-3220-4fbb-3ce5-31385a878931@gmail.com>
 <20230413210221.4BED44D905@mail.futurelabusa.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <20230413210221.4BED44D905@mail.futurelabusa.com>
Message-ID-Hash: IBMORCSMO3U5PG6EXTRU72NDONYZP5GS
X-Message-ID-Hash: IBMORCSMO3U5PG6EXTRU72NDONYZP5GS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Halting issue with USRP socket connection - how to set SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IBMORCSMO3U5PG6EXTRU72NDONYZP5GS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTMvMDQvMjAyMyAxNzowMiwgSmltIFNjaGF0em1hbiB3cm90ZToNCj4gRXZlbiB3aXRoIGFs
bCB0aGUgcmVjb21tZW5kZWQgc2V0dGluZ3MsIGFuZCBhIHZlcnkgZmFzdCBjb21wdXRlciB0aGF0
IGlzIGRvaW5nIG5vdGhpbmcgZXhjZXB0IHNlbmRpbmcgdGhlIGRhdGEsIGl0IGlzIG1heWJlIDUw
LzUwIHRoYXQgYSAyIGhvdXIgc2ltdWxhdGlvbiBjYW4gYmUgY29uZHVjdGVkIHdpdGhvdXQgYW4g
dW5kZXJydW4uIFRoZSBsb25nZXN0IHJ1biBJIGhhdmUgYmVlbiBhYmxlIHRvIGRvIHdpdGhvdXQg
YW4gdW5kZXJydW4gaXMgYWJvdXQgMi41IGhvdXJzLg0KPg0KPiBUaGUgc2FtcGxlIHJhdGUgaXMg
MTIuNSBNc2FtcC9zZWMgYXQgMTYgYml0IEkgKyAxNiBiaXQgUSBvciA0MDAgTWJpdC9zZWMuDQo+
DQo+IEZvciBvdXIgYXBwbGljYXRpb24sIHRoYXQgaXMgdW5hY2NlcHRhYmxlLiBJIG5lZWQgdG8g
YmUgYWJsZSB0byBydW4gZm9yIGRheXMgd2l0aG91dCBkYXRhIGxvc3MuDQo+DQo+IEl0IGlzIGEg
bXlzdGVyeSB0byBtZSB3aHkgYSAxMCBHYml0IGNvbm5lY3Rpb24gY2Fubm90IHN1cHBvcnQgNDAw
IE1iaXQvc2VjIFVEUCByZWxpYWJseS4NCj4NCj4gQW55IGlkZWFzIGFib3V0IGhvdyB3ZSBjYW4g
Y29tcGxldGVseSBlbGltaW5hdGUgdW5kZXJydW5zPw0KPg0KPiBBdCB0aGUgbW9tZW50LCBJIGFt
IHVuY2VydGFpbiB3aGV0aGVyIHRoZSBwcm9ibGVtIGlzIG9jY3VycmluZyBvbiB0aGUgaG9zdCBv
ciBvbiB0aGUgcmFkaW8uIEkgc3VzcGVjdCB0aGUgcmFkaW8sIGJ1dCBJIHdpbGwgZG8gc29tZSB0
ZXN0aW5nIG9mIHRoZSBob3N0IHRvIHNlZSB3aGF0IFVEUCBkYXRhIHJhdGUgaXQgY2FuIHN1cHBv
cnQgd2l0aG91dCBsb3NzLg0KPg0KPiBUaGFua3MhDQo+DQo+DQpXaXRoIHJlc3BlY3QsIGl0J3Mg
dW5saWtlbHkgdG8gYmUgdGhlIHJhZGlvLCBwZXIgc2UgKHVubGVzcyBzb21ldGhpbmcgaXMgDQpC
Uk9LRU4pLsKgIFN0cmVhbWluZyBpcyBoYW5kbGVkIGVudGlyZWx5IGJ5IHRoZQ0KIMKgIEZQR0Eg
bWFjaGluZXJ5LCBhbmQgdW5saWtlIGEgZ2VuZXJhbC1wdXJwb3NlIGNvbXB1dGVyLCBydW5uaW5n
IGEgDQpnZW5lcmFsLXB1cnBvc2UgT1MsIHBlcmZvcm1hbmNlIGlzIHV0dGVybHkNCiDCoCBkZXRl
cm1pbmlzdGljLsKgIEl0IGRvZXNuJ3QgaGF2ZSAib3RoZXIgdGhpbmdzIiBnb2luZyBvbiB0aGF0
IG1pZ2h0IA0KcHJlZW1wdCB3aGF0IGl0J3MgZG9pbmcsIGV0Yy4NCg0KSSB0aGluayB5b3UnZCBt
ZW50aW9uZWQgdGhhdCB0aGUgaGFyZHdhcmUgaW52b2x2ZWQgaXMgYSBVU1JQIE4zMTA/wqDCoMKg
IA0KV2hpbGUgaXQgZG9lcyBoYXZlIGEgYnVpbHQtaW4gTEludXggbWFjaGluZSwgc2luY2UgeW91
J3JlDQogwqAgdXNpbmcgaXQgZnJvbSBhbm90aGVyIGhvc3QsIHRoZcKgIExpbnV4IG1hY2hpbmUg
aXMgYmFzaWNhbGx5IA0KdW5pbnZvbHZlZCBpbiBzdHJlYW1pbmcsIG90aGVyIHRoYW4gc2Vzc2lv
biBzZXQtdXAgYW5kIHRlYXItZG93bg0KIMKgIHZpYSBNUE0uDQoNCkNoZWNrIHRoZSBsb2dzIG9u
IHlvdXIgaG9zdCBtYWNoaW5lLS1kb2VzIHRoZSBuZXR3b3JrIGludGVyZmFjZSBnbyANCnVwL2Rv
d24gZHVyaW5nIHlvdXIgc3RyZWFtaW5nP8KgIElmIHNvLCB0aGF0IGNvdWxkDQogwqAgaW5kaWNh
dGUgYSB3aXJpbmcgcHJvYmxlbS4NCg0KQXJlIHlvdSBydW5uaW5nIGluIGEgbmF0aXZlIGhhcmR3
YXJlIG1hY2hpbmUsIG9yIGluIGEgVk0/wqDCoCBXaW5kb3dzIG9yIA0KTGludXg/DQoNCklmIHlv
dSBzaW1wbHkgdXNlIHRoZSAidHhfd2F2ZWZvcm1zIiBleGFtcGxlIGF0IHlvdXIgZGVzaXJlZCBz
YW1wbGUgDQpyYXRlLCBkbyB5b3UgZXZlbnR1YWxseSBnZXQgdW5kZXJydW5zIG9yIG5vdD8NCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
