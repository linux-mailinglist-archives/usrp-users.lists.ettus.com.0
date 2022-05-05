Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7524751C3FF
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 17:32:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C755384838
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 11:32:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651764761; bh=hzN/yiO5gOgd45OYD4onDAg9AEW9X5IscbUYGvtP5es=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=W64QMkSMqgz5w5f9oXZr9lXUDcVtSNKqfrQD3kRGaahjlQPMCDTMRcIWp1GMcRaJs
	 e2m69j6kwACnPclse4X+rWbXUSB1BdgdfJ1SNWSgyvVs66wQnsbRTgjtvtpPPPxCmP
	 3gZFGzObDqCzv+kPh6Wo6pUFlgA5UdVm0qZMX2EfMhoswf7Sy3FafLadCvXuEzMEY3
	 m7Hat/NL2LijIV0SvWHzvk4S7FVyKKm/0nvfhjrLoZgOh1RkoUJuVaGYYRQ5wE6ztv
	 mBPUuT/0rESGhG+EuDFho/2ybW0BsRgh0AUQibTI9jRXHUSsp17ICgqY6ctZo3FJSk
	 GbC1tx9vdfiXQ==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 9344138463F
	for <usrp-users@lists.ettus.com>; Thu,  5 May 2022 11:31:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="X9CEZd7N";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id s4so3436136qkh.0
        for <usrp-users@lists.ettus.com>; Thu, 05 May 2022 08:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=XOi28SRehDJpy6cJ+ZxPhJ5fnAR8ZA+hXgiAi6vriXQ=;
        b=X9CEZd7N9WJ8USlAd+Q5hVV7gqw33CYEaD/l3S0xVCWHxeTarJENcd/cd6RkoO1Oyz
         02rnVN+H4ccfNvYEXukQw1Kv4YgBRf92/3ZEQ6X8Syp7Azf03NQM44CRBGQ3JOJOlccl
         AAZRKq4QPzG6XW74MCpeVUqqZEKRJu9Ul8r2eU+kFy5YpEyEG0jr8MFZpW6jU5FGti6N
         lNgz4Gj0vi4TBYd6UHBcI57tBO/cnPAg/AScBe9OQPq2+CmMBv5rsHaCFuV4yiGIkbSz
         XIExh8zwfPg+wJNMH0V0i5rtPxqDehN+XmdsQ9Pt6e5HaFuYY2kCJFePLPSQH2ykWjDm
         ED/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=XOi28SRehDJpy6cJ+ZxPhJ5fnAR8ZA+hXgiAi6vriXQ=;
        b=K5oI3sIKvrtjfcCC7RY4OqAqKOWrjXcNNjNGUVyOdAqOAuHWqZMBhqoMjs3uVfVT39
         7TAqRaD8ySbEQcmj2d7MVez3kXU2w8Tfhe1IVsuDKCfrlwS8Zd+V7Lf/2via0UfnJxvy
         wcCJgWEaBTh0tGtlQPPOrFilnOTzPXEXIVNI1Y5pUYSnkoSUO+LbtTT9A474Y2N/l6qf
         7xgNyZNRWzpvsUDP8bAK1+as+RjV38dMe1wVP02Hx2W2Jdvf8T+5rXvrdfOPJuC5HYEc
         FvLQnDyGdR/kdnB0lhMdjikk/WP2uEgGa5SVj2pw6f4cpD4AOuRU5UwkTTEQcr3xwrId
         LWig==
X-Gm-Message-State: AOAM530ACqi48Prz6w1XnFd/pam1LoDdd0fFIIt2PvzuwoTrcG2pvifI
	Gw2w4yI9Vb/IltQarAwFnzvw+EA0ck4=
X-Google-Smtp-Source: ABdhPJwq7kO/7y9aW6T61RxaROs7TYJUDhX2EtD96IzA8ElbtOA4j/5NvIg5TJ4l8sxrDOvBtzik5g==
X-Received: by 2002:a05:620a:4045:b0:69f:e555:3fdf with SMTP id i5-20020a05620a404500b0069fe5553fdfmr14936313qko.365.1651764691765;
        Thu, 05 May 2022 08:31:31 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id c1-20020ac853c1000000b002f39b99f693sm984297qtq.45.2022.05.05.08.31.31
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 08:31:31 -0700 (PDT)
Message-ID: <79f66fd3-5361-0491-499f-2849b1b03867@gmail.com>
Date: Thu, 5 May 2022 11:31:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <a708bc85-d957-82a5-7556-cb030b973ef7@bath.edu>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <a708bc85-d957-82a5-7556-cb030b973ef7@bath.edu>
Message-ID-Hash: PIZOO2BYND7MCEROOZUGSTYSC7X5VJPF
X-Message-ID-Hash: PIZOO2BYND7MCEROOZUGSTYSC7X5VJPF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 : setting different frequencies on different channels
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PIZOO2BYND7MCEROOZUGSTYSC7X5VJPF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNS0wNSAxMDoxOCwgUGV0ZXIgRmVhdGhlcnN0b25lIHdyb3RlOg0KPiBIaSBhbGws
DQo+DQo+IFNvbWUgaGVscCB3b3VsZCBiZSBncmVhdC4NCj4NCj4gSSBoYXZlIGFuIEUzMjAgYW5k
IHdvdWxkIGxpa2UgdG8gY2FwdHVyZSBJUSBzYW1wbGVzIG9uIDIgZGlmZmVyZW50IA0KPiBjaGFu
bmVscyBhdCBkaWZmZXJlbnQgZnJlcXVlbmNpZXMuDQo+DQo+IElzIHRoaXMgcG9zc2libGU/DQpU
aGUgc2hvcnQgYW5zd2VyIGlzICJubyIgLS0gYmVjYXVzZSB0aGVyZSdzIG9ubHkgMSBSRiBMTyBm
b3IgZWFjaCBvZiBUWCANCmFuZCBSWCAtLSB0aGF0J3MgaG93IHRoZSBBRDkzNjEgY2hpcA0KIMKg
IGRvZXMgTUlNTy4NCg0KVGhlIGxvbmdlciBhbnN3ZXIgaXMgdGhhdCBpZiB5b3VyIHR3byBmcmVx
dWVuY2llcyBhcmUgd2l0aGluIHRoZSBhbmFsb2cgDQpiYW5kd2lkdGggb2YgdGhlIEFEOTM2MSwg
eW91IGNhbiBkbyBzb21lDQogwqAgRERDIHRyaWNrcyB0byBicmluZyB0aGVtIGJvdGggZG93biB0
byBiYXNlYmFuZCBiZWZvcmUgcHJlc2VudGF0aW9uIHRvIA0KdGhlIGhvc3QuwqAgSW4geW91ciBj
YXNlLCB0aGlzIGlzbid0IHBvc3NpYmxlLCBzaW5jZQ0KIMKgIHRoZSAic3BsaXQiIGlzIG92ZXIg
MUdIei4NCg0KDQo+DQo+IFdoZW4gSSBydW4gdGhlIGZvbGxvd2luZzoNCj4NCj4NCj4gdXNycC0+
c2V0X3J4X2ZyZXEoMi4xZTksIDApOw0KPg0KPiBwcmludGYoIkNoYW5uZWwgMCBmcmVxICVmXG4i
LCB1c3JwLT5nZXRfcnhfZnJlcSgwKSk7DQo+DQo+IHByaW50ZigiQ2hhbm5lbCAxIGZyZXEgJWZc
biIsIHVzcnAtPmdldF9yeF9mcmVxKDEpKTsNCj4NCj4gdXNycC0+c2V0X3J4X2ZyZXEoMy4yZTks
IDEpOw0KPg0KPiBwcmludGYoIkNoYW5uZWwgMCBmcmVxICVmXG4iLCB1c3JwLT5nZXRfcnhfZnJl
cSgwKSk7DQo+DQo+IHByaW50ZigiQ2hhbm5lbCAxIGZyZXEgJWZcbiIsIHVzcnAtPmdldF9yeF9m
cmVxKDEpKTsNCj4NCj4NCj4NCj4gSSBnZXQ6DQo+DQo+DQo+DQo+IENoYW5uZWwgMCBmcmVxIDIu
MWU5DQo+DQo+IENoYW5uZWwgMSBmcmVxIDIuMWU5DQo+DQo+IENoYW5uZWwgMCBmcmVxIDMuMmU5
DQo+DQo+IENoYW5uZWwgMSBmcmVxIDMuMmU5DQo+DQo+DQo+IERvIHlvdSBoYXZlIHRvIGNvbmZp
Z3VyZSB0aGUgY2hhbm5lbHMgb3Igc29tZXRoaW5nPw0KPg0KPg0KPiBUaGFua3MsDQo+DQo+IFBl
dGUNCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4g
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4g
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQo=
