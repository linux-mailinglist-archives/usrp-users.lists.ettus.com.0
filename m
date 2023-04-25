Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E27626ED91F
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 02:04:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1CFDE3848E2
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 20:04:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682381069; bh=76YlPmBA7qsiTeFjCiWzt+swl7OtS5tbRfelEyq3y2o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=1AuVJNSK9eJ8hdNhc6f8rA82iAwn5XYw0CVcxtZhK8HiAPxxjEu28NgQm2pDYpjng
	 +kwW6hFUP6adtaxV08t12sP/QwfArXInzXcgeRwtFSw5QN/SoIS3/hbVxG9yTuvBGc
	 wMlFW+DJg05YUiknVzjxg8w4LdOxa2zzGRAurDEvzXRuke1GlHXdQr/U3QinmQONPw
	 oGU3QDNtasS8KTdzfb9F/qUUAhKaPE3meIGyETov0OEEOeQAIiv/DXPb/jwbdRSkQU
	 H4nMbazrF9RLbyl0uGEXDJsMVgWA4jRdtNHZ6JZENccp4kQ0RA6s6ZRP+F6FK7ldhk
	 EScbIhQ+FX0KQ==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 6CE4E384896
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 20:03:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cZuPP8//";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-74e13e46cb9so261824485a.1
        for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 17:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682381026; x=1684973026;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B8NEKBH2G5Xz2p9hGr5qJa/TOOrpScAW230DF/MAPfw=;
        b=cZuPP8//dpr/dxDDIplow+h9vZH/GYRzsg631iKcG3dATMt6L1IyAN2mQ4OJRAPvxI
         3hYv7HNgTXGQVi+hGErVPkfjJcP8aVyOlBhgrQln5TLFrBqjzGwKWvAAiWAAA4PwI93h
         6sgam/CTewYP6A93AM+W+uKTccwivbuZ+rLEqHyRVI6j9aNJzkc6KTSFPhmojWvl/iOE
         /74YXcnw27wCjBk2w1utoa2dAn308j/Ip6d67m6JPKar6ZNo5HEtsxmDDGQV8Uz2pkwB
         m5+ktKG+E9xvN5vqO9+cd3yB/p9mB2prxHJv5JrTvUVH4DyLNrC45jsr8St2PTsAi8to
         XqLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682381026; x=1684973026;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B8NEKBH2G5Xz2p9hGr5qJa/TOOrpScAW230DF/MAPfw=;
        b=jMKTpeFSxisuuNQBFVe2GsXVcbLfF5XTlkmLcdxz6iyCa56+Bs/1yztvjdmGl1z+Gt
         GeQ5GFO7wKfaGtA1FWkTlx7JbPwYsyIe9yrS0CzMUBUq/BtQPyimoZrZGeip24xVIBIw
         cehlfJpuMz3cxzK0Ei9B/s3887dSl+436tutbFrMgLtZnO1s9mxctJf2LK/Ko8kG/4ii
         1O0kdikLaq9P62ndkNI5Cwn/0Ogcex17GTMaYmEsfllAvHLaAMxKOnwu6aa12YFf/mBL
         htrDjxok0EQqqe8d8xu/m2K3enCHhf0niGf4lAGp+SbdpcdEQ/ZGMlWV3URrlfzwValW
         bMTA==
X-Gm-Message-State: AAQBX9f2wVCOW4xmm+2aHssEzUe6Vfh0jbVHrNkWcvIQ0nB3er0SqzB+
	cpHgY7EzifzCtNOKfZVKdArH2wD5/4E=
X-Google-Smtp-Source: AKy350atuZAX1UMR6qgWlgK+qZQ2sgOZbxnrrAYhZsGg3bW09FqF4v2uZcSBmVy7SXRK/8ZWspgdgw==
X-Received: by 2002:ac8:5a54:0:b0:3ef:4c4b:7e4c with SMTP id o20-20020ac85a54000000b003ef4c4b7e4cmr22206762qta.31.1682381026543;
        Mon, 24 Apr 2023 17:03:46 -0700 (PDT)
Received: from [192.168.2.158] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id q11-20020a37f70b000000b0074de91e3907sm3924096qkj.123.2023.04.24.17.03.46
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Apr 2023 17:03:46 -0700 (PDT)
Message-ID: <54c6f132-cf2f-647e-7d22-5d285d454658@gmail.com>
Date: Mon, 24 Apr 2023 20:03:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <glIKeyAK64GdXagYHgHjJgB2GSdepWR9IiQpcaqGVfg@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <glIKeyAK64GdXagYHgHjJgB2GSdepWR9IiQpcaqGVfg@lists.ettus.com>
Message-ID-Hash: EKJYACYXGRVYK6ZTV3UVU2HMQY35YH6S
X-Message-ID-Hash: EKJYACYXGRVYK6ZTV3UVU2HMQY35YH6S
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting USRP X410 sampling rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EKJYACYXGRVYK6ZTV3UVU2HMQY35YH6S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjQvMDQvMjAyMyAxNjo1NCwgaDU3amFmYXJpQGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gSGks
DQo+DQo+IHdoaWxlIG1hc3RlciBjbG9jayBpbiBVU1JQIFg0MTAgaXMgbXVsdGlwbGljYXRpb24g
b2YgMTIyODgwMDAwLCBob3cgSSANCj4gY2FuIHNldCB0aGUgc2FtcGxlIHJhdGUgZXhhY3RseSB0
byAxMDBNIGluIGdudXJhZGlvLiBUaGFuayB5b3UuDQo+DQo+DQpTZWUgaGVyZToNCg0KaHR0cHM6
Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfdXNycF94NHh4Lmh0bWwjeDR4eF91cGRhdGlu
Z19mcGdhX3R5cGVzDQoNCkxvb2tzIGxpa2Ugc3VwcG9ydGVkIG1hc3RlciBjbG9jayByYXRlcyBh
cmUgMjQ1Ljc2TUh6IG9yIDI1ME1IeiBmb3IgdGhlIA0KXzIwME1IeiBpbWFnZS4NCg0KRm9yIHRo
ZSBfNDAwTWh6IGltYWdlLCB0aGUgbWFzdGVyIGNsb2NrIGNhbiBiZSBzZXQgdG8gNTAwTUh6LCBC
VVQhISEhISANClRoZXJlJ3Mgbm8gRERDL0RVQyBpbiB0aGF0IGltYWdlIGJ5IGRlZmF1bHQuDQoN
ClNvLCB0aGUgY2xvc2VzdCB5b3UgY2FuIGdldCBvbiB0aGUgWDQxMCB3aXRoIGV4aXN0aW5nIGlt
YWdlcyBpcyAxMjVNc3BzIA0Kb3V0IG9mIHRoZSByYWRpby7CoMKgIFlvdSBjb3VsZCAqdGhlb3Jl
dGljYWxseSoNCiDCoCByZS1zYW1wbGUgaW4gR251IFJhZGlvIHVzaW5nIGEgcG9seXBoYXNlIHJl
c2FtcGxlciwgYnV0IHJlc2FtcGxpbmcgDQpmcm9tIDEyNU1zcHMgdG8gMTAwTXNwcyB3b3VsZCBi
ZQ0KIMKgIGV5ZS13YXRlcmluZ2x5IGV4cGVuc2l2ZSBJIHRoaW5rLCBhbmQgdHJ5aW5nIHRvIGRv
IGEgdmVyeSBleHBlbnNpdmUgDQpyZXNhbXBsaW5nIGF0IGFuIGlucHV0IHJhdGUgb2YgMTI1TXNw
cyBsaWtlbHkNCiDCoCBjb3VsZG4ndCBiZSBzdXBwb3J0ZWQgd2l0aGluIEdudSBSYWRpby4NCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
