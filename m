Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CE86F0A31
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 18:47:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5062838403C
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 12:47:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682614061; bh=8/9mdrvSijXeK6GZiTEpD3iXoafTPIpDD08sr24kxhc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mTBU/06N2+QWMkqcL80eIUzdP37VWq7VMvEwFQ6m0Yb7IDgr+2iHlFxGstYWjdOAN
	 uxwYouhuxI4DWn8dY9uG4SXDdAUP5K5U9IKlTsGfdYxEpL2YOtpcD5ZZiu2cFlWHNJ
	 hZF5TJJRAiIOEII4Li2pPJ3dMhFZ65NuYze8bvmGubdJ08RIcPE7KZjj2bGPFv193O
	 bnc1uGQGrOPS1z8d21TQ/F8U9zLVGx6ZqxUdOSySah/csVAHmFrQyKVBG63HzD3ytY
	 d16b9ZMH+aihwlx25TlYE1ff1tKO8B2h6hMYvt6CMkiUm3ynr+J+wBDDNZyaDWqL9V
	 fdexmRm9p4yUQ==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 997B3384507
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 12:46:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Fj2P7iuy";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-5ef414ce24eso42400586d6.3
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 09:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682614018; x=1685206018;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=276eGUj7ITjJzKde0Cu2mFVA62hi/2dz8ZXtzHD9CSs=;
        b=Fj2P7iuyaEXEGxjOpzHnv6RUjemHfjZfjUWHmFXSbHF+NBRp1O2TZ0FNN7drmVHLua
         2B1+6I8vIC11wMLXBm+CddmiInSqQwlhx6JSoLYuXdSGN0PukWPCJtKy0GST8Xf+Pw2x
         p2VLlnAUpbgzTaY1UTKlMeEA9DtDVITRtlExrkaMATUBpWFnDaSDVoGBwWi9txgZKCP0
         A7LFNoyDoECiVZdpjo5YnMRKAU89Ijk6ugSM5KDRjWnoLJeEcGbUl0f4EpJMok3s9GtC
         tvfm5J2YFYAxvlHLx9OYhJ/9ZeNqsTstLjobQ+WRHQklYP37HW4Pfy8tC8nFgS/ueCD6
         1GqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682614018; x=1685206018;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=276eGUj7ITjJzKde0Cu2mFVA62hi/2dz8ZXtzHD9CSs=;
        b=droEPBuEAaMwBZZWdyQbWDGmEKbl4wfPaq/z9hofQ3sNgdMHkbSSl15ZkpafrJHvvx
         w4cvosyrrzIAJfwfLBe8Lb0XFaQAQcY6/U0bDB1D0Rxj2SfANiivRVoUa4s/+pnOHtDw
         +FkM/km9B8klZNMcJa+X0I3EIdLuK8bLM7xMbzEBdMktmLmBFMcWEhu/VRqTzxzfNnF3
         Bjt9cVezN80tR8OIEoFSkTPUIqEkc0xu+CqWSM7Yq3EwEcCXwspZGFOd6OOmo+1z0iwP
         hQyWDVZHBKPogN9DQjqWGOUW3JDZcumV+04b/ML9b6pbmljCKwEZDrFpGkOrMCMPgzwT
         IwUQ==
X-Gm-Message-State: AC+VfDwTfDdTSFPQrpnnk25BkJdPUbh6GP7TZJJZJva0Kk0Vfz5P81i/
	a/Rr6w5l2zJo6q+kuBEl55IPzpd5Asg=
X-Google-Smtp-Source: ACHHUZ6gXiJwb1/w2RdsLVL9YvFVhKCcD264v9gHT2Iyx0IK605KLoMb9/eTK79dby9Xb9KqTQPHWw==
X-Received: by 2002:a05:6214:c21:b0:5f7:5ae9:813d with SMTP id a1-20020a0562140c2100b005f75ae9813dmr3053328qvd.39.1682614017676;
        Thu, 27 Apr 2023 09:46:57 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id k5-20020a056214102500b006166d870243sm84299qvr.43.2023.04.27.09.46.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 09:46:57 -0700 (PDT)
Message-ID: <53ccbae5-ec74-e262-3924-d7ceb035f220@gmail.com>
Date: Thu, 27 Apr 2023 12:46:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <M5LIfRdisudzM8vjpb1TozrASTXh7qDVr7XC3xU59w@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <M5LIfRdisudzM8vjpb1TozrASTXh7qDVr7XC3xU59w@lists.ettus.com>
Message-ID-Hash: 2VJG2Y3CDJNHJOIXFLSFURY32QMSX5OD
X-Message-ID-Hash: 2VJG2Y3CDJNHJOIXFLSFURY32QMSX5OD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2VJG2Y3CDJNHJOIXFLSFURY32QMSX5OD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMDQvMjAyMyAxMjo0MCwgZGF2aWQuZmVybmFuZGVzQHZpdmVyaXMuZnIgd3JvdGU6DQo+
DQo+IEkgdGVzdGVkIHdpdGgg4oCcTm8gU3luY+KAnSBpbiBib3RoIFNpbmsgYW5kIHNvdXJjZSBh
bmQgdGhlcmUgaXMgbm8gDQo+IGRpZmZlcmVuY2UuIEkgdGVzdGVkIHVzaW5nIHRoZSDigJxTdGFy
dCBUaW1l4oCdIHBhcmFtZXRlciBpbiBvcmRlciB0byANCj4gc3RhcnQgZmlyc3QgdGhlIFJ4IGFu
ZCB0aGVuIHNvbWUgc2Vjb25kcyBsYXRlciB0aGUgVHgsIGJ1dCBJIGhhdmUgbm8gDQo+IGx1Y2su
LuKApg0KPg0KPg0KQ291bGQgeW91IHNoYXJlIHdpdGggdXMgdGhlIG91dHB1dCBvZjoNCg0KdWhk
X3VzcnBfcHJvYmUgLS1hcmdzICJhZGRyPTxhZGRyZXNzLW9mLVgzMTAsdHlwZT14MzAwIg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
