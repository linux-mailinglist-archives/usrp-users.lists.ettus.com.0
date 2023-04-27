Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E146F0997
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 18:14:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 371AB38478B
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 12:14:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682612078; bh=iRDtMlQeGSKa6XCSLGjQouBVdjBlWeQgikX4DcizM7M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FnQrsRjEQRgw5i/xBUklP6h/NXTper5mvj7y6ohlt3KN2oSP9UOkMjfxuY7bKRFSD
	 XCV4rQoqpbwXniC9w8gQ5XRjRG3RRrjVOLc+hWUlzOD2sUnpzZJWfh0l2cEFii8DSI
	 TFy8sdcI+il/3WIYzfP7usIUdFOwudVceUpzI0UpRCxwJ8CBg/zEpgqt/p4Egw3lvk
	 wWsuAVaEvNzv/m1yoJOA+VkDLSPGABIyeE5utFkACTTj1yHuaso7I/Ga1cpGJrBW3+
	 mBBTsCvG4P/oeEoIZB4Zq61hv48/o6XYsCHNUgLlenRmYTl8s3uj9wEl7TNYM3UicM
	 MHntrbcj89Dfw==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 2AE50383DD8
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 12:13:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AZeUmUZ2";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-3f0596e2c00so25618591cf.3
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 09:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682612033; x=1685204033;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2yjoXnxRxxkbB6Tamq1YUBVbfa7+/jyLD85pf8ZC/es=;
        b=AZeUmUZ25pD4AbuAcCsNHs8MmvGEkBFZLt8BMDdczxVMiOlOQtUACdbRtfI1/zbhDB
         gZR71tmGf1oA1VYVFHhRORcRB0/q8HS7U8+YOlZscnBHhtJ3T+Wbjqo5oz22pBj2ICDs
         pP/efTeotQncNIEVIzAMnEDYcAtSvyDSoUlSCYYFVBLMZOs57j59E2EX+4P97yRwmQNo
         0/1TNO7/NuPaCTSG3HYR9d/086+WWZCyzmzsJS5VIwpXQ7DlL0Z7pMu9rAY6ZsZXoRtE
         3+KBVZCTgLSstZABXSNtZ1N9iui+ics7P+JNEE1mw2A+C6G4yyaEHPXI9DydWmUlrf7k
         Vi5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682612033; x=1685204033;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2yjoXnxRxxkbB6Tamq1YUBVbfa7+/jyLD85pf8ZC/es=;
        b=XCWfbaC+FxPBvX2ll1DE4ICj/ExAMiFAxuxZEZjDXscssX8s0X3efVLu8yMsrYDk2h
         TVBhwbijFekxEN6Qu/m+6burNQiyAbmvEZi2Nz9rJK5fhLGF31B5vlj9OQT+lgxvHNOi
         pM5KsE8AlNE7Teb/ow/MJAfYto6o6DghYeObug5GQsqAP1Hnk8bUQDWJYUTWChBxjMQF
         NVLjxGJmChtTK7STLABRtLgz98FNTb2Pd3aNId9kO75h6K0dENa39+YiSJUYembHbOip
         MCHxqn19N+Ir1rt2LKNUJVluCplRLm1CLXJ5xCfGVQ3wlbC9/q83VlmGwNO3DBctdfiY
         2OfA==
X-Gm-Message-State: AC+VfDwPiqUBXvT9eLarid26zVaken6I9m0OTvs3kcPBnN/Yn9k7qlHP
	lNzH5gHdgP5PiY5pSk3bdZjVByNuCwQ=
X-Google-Smtp-Source: ACHHUZ6s1DcP8PvJsI5v1XtaZo69aH1TRajjdGDP7gqxI2egJTz+o6wSiYn2BIg/pQ8ZCqlUrCTNwA==
X-Received: by 2002:a05:622a:13ca:b0:3ef:3fd8:9209 with SMTP id p10-20020a05622a13ca00b003ef3fd89209mr3522469qtk.48.1682612033468;
        Thu, 27 Apr 2023 09:13:53 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id i3-20020a05620a27c300b0074236d3a149sm6033371qkp.92.2023.04.27.09.13.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 09:13:52 -0700 (PDT)
Message-ID: <70f6c471-e4aa-800b-35c4-482d80eb40cd@gmail.com>
Date: Thu, 27 Apr 2023 12:13:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <KqHtkyJ3IGSJx9GAxqQRNU7LhinylFEMHmpPBrSs3I@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <KqHtkyJ3IGSJx9GAxqQRNU7LhinylFEMHmpPBrSs3I@lists.ettus.com>
Message-ID-Hash: F7CPKMTZBKE3KKMLOFGBBSAX7J5HOH2E
X-Message-ID-Hash: F7CPKMTZBKE3KKMLOFGBBSAX7J5HOH2E
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F7CPKMTZBKE3KKMLOFGBBSAX7J5HOH2E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMDQvMjAyMyAxMjowNSwgZGF2aWQuZmVybmFuZGVzQHZpdmVyaXMuZnIgd3JvdGU6DQo+
DQo+IFRoYW5rcyBmb3IgdGhlIGluZm9ybWF0aW9uLCBJIGRpZG7igJl0IGtub3cgaXQuIFNhZGx5
LCBJIHBlcmZvcm1lZCB0ZXN0cyANCj4gd2l0aCAxTXNwcyBhbmQgMC41TXNwcyBhbmQgMjAgZGIg
R2FpbiBpbiBSeCBhbmQgaXQgZG9lc27igJl0IGNoYW5nZS4NCj4NCj4gSSdtIHRyeWluZyB0byBm
aWd1cmUgb3V0IGlmIHRoZXJlIGlzIGFueSBjb25kaXRpb24gb2Ygd2hlbiBpdCB3b3JrcyANCj4g
YW5kIHdoZW4gaXQgZG9lc24ndCwgYnV0IEkgY2FuJ3QsIGl0IHNlZW1zIHF1aXRlIHJhbmRvbS4N
Cj4NCj4NCk9uIGEgaHVuY2gsIHRyeSBzZXR0aW5nICJObyBTeW5jaCIgZm9yIHRoZSBjbG9jay1z
eW5jaHJvbml6YXRpb24uIEluIGFueSANCmNhc2UsIHlvdSBzaG91bGRuJ3QgaGF2ZSBib3RoIHlv
dXIgc291cmNlIGFuZCBzaW5rDQogwqAgdHJ5aW5nIHRvIHN5bmNoIHRoZSBkZXZpY2UgY2xvY2su
DQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
