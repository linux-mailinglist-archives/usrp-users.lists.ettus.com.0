Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7D658F2E7
	for <lists+usrp-users@lfdr.de>; Wed, 10 Aug 2022 21:17:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C676383FE2
	for <lists+usrp-users@lfdr.de>; Wed, 10 Aug 2022 15:17:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660159047; bh=qLhmzmjIMAjkLGWB47TzXkN0LBn7sjwItoKgFRoPQho=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=POhe1dVpcuUlaQSfaclaLdgRADORzIR7XfyIB/odMZs8sR1LznbDKjFtVFEtur/Ve
	 jxo0SLXWig8ZQfCAQQ/eOs4Q9Th/AYPB60Cl52DrkgACEafhfAJBRqQ6vK26IAbh3M
	 XnFhvlVHjFhGrEunOAUJbH++YzQzDiCEcoyVUVjIE4C6rCFfj2WebR0Ow3DD7N3KXG
	 DwEdbeDGyznmJFlYujloF6kI2I/GJfwuZH2K9VMpsHQfa2NmHM404Try/Bh526QdAM
	 v9MXcNNet0qH1IkBfAszA7LTAhiN2Xz778RaMlFk++0+TB86Tx7NBlB/fC8k0l8tvE
	 Azt+5vM1VH7sg==
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 5A75A383F75
	for <usrp-users@lists.ettus.com>; Wed, 10 Aug 2022 15:16:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LSPWc9H6";
	dkim-atps=neutral
Received: by mail-io1-f49.google.com with SMTP id v185so12929179ioe.11
        for <usrp-users@lists.ettus.com>; Wed, 10 Aug 2022 12:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=GbWqJBmaxxHyJKjRMMtpQVVvRPgl1QyxU4cgaihUSoY=;
        b=LSPWc9H6LhiYnijPVobudj2Pizi8/s5cW0KmS/xR9LM4/kLEhgybO/PCgZnRBbyjaa
         SeaIvSgNoCuOV2r7ySYszf7frjg8KVjfU26qmoZIwFVe7uIahviQHEO+2YlvlNp1A7L5
         MfGJZmoOaoh6zQydbTIZ79QRpaSmTEMr3NNUclr5vS1RNAwow8Q4zHMVRoSmvIRMEtnh
         wcAZ1p6INrBwODhDVoSkj5bLQI9WeV2BL/TRbo3h8CmjyqYK9uxc1/SWj2S333/K0b9V
         cYXrrhxR1bR7e/KdtwjKhhZvZOJIaKxTQVhk02LB/vVUVlhf/iBmBf9cqUGTQMyFN+Bm
         XWmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=GbWqJBmaxxHyJKjRMMtpQVVvRPgl1QyxU4cgaihUSoY=;
        b=7RBkVVou5anaH3RztWaxc7RpLazEKuxWO0lb1131LK1AUVAcJF58C2M+zfN9Wuthr8
         0cjNVf9uHS/LDeEWUp5mGJ71juuNiQmjjjLD4jQ+h+PryAs3YEUj1swkPhEGz8/61X96
         qEvWPTVwsIiBo2jSBWqVycIfSsvaqbQMxYDLd2LEviVsfAxKBLERDKDw6/JBEd/1F7Cu
         PNnJyXFMNlLLH4fX004mHaWWaTTq1Emk7MSYq35UuadNF1gHz6x30giZc7WXvRCE1raj
         Si06DOqr3i2P66a2miw1M3/N9A0mDnGG/HtvAkSI1WrqFPQ2AAH4jq5kwxe5vXrsTt4g
         DKAw==
X-Gm-Message-State: ACgBeo0VQgreFLdimhqZzuIcceMzw5kWjPtDDsW4v/sQD7j14gHea7sc
	BKLcyzTyr8j6B3pUVjTZm26LEN1YAaM=
X-Google-Smtp-Source: AA6agR5YN09y9a1IYXGHZlNIysJaTIL3b6Ij3vjNvqi8qiixf76P5fEvpiSJgQYI83qG5t4XvB20jg==
X-Received: by 2002:a02:b799:0:b0:343:390a:4f66 with SMTP id f25-20020a02b799000000b00343390a4f66mr2780029jam.222.1660158974179;
        Wed, 10 Aug 2022 12:16:14 -0700 (PDT)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id n13-20020a6b590d000000b0067bf5ee5866sm2679114iob.54.2022.08.10.12.16.13
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Aug 2022 12:16:13 -0700 (PDT)
Message-ID: <9f5f6e96-fb2e-64cd-365b-ad4941e8a7d6@gmail.com>
Date: Wed, 10 Aug 2022 15:16:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <12wYRWCywXfMMcKx6Fwi6NjTp3hBNGO5cXWdkuHEg@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <12wYRWCywXfMMcKx6Fwi6NjTp3hBNGO5cXWdkuHEg@lists.ettus.com>
Message-ID-Hash: RZRSEPI7UJARFBGX3LZ5G6TXTWEGBN3L
X-Message-ID-Hash: RZRSEPI7UJARFBGX3LZ5G6TXTWEGBN3L
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transmission power for N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RZRSEPI7UJARFBGX3LZ5G6TXTWEGBN3L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOC0xMCAxNDo1Niwgc2t5dW5nLS0tIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPg0K
PiBIaSBhbGwsDQo+DQo+DQo+IElzIGl0IHBvc3NpYmxlIGZvciBtZSB0byBzZXQgdGhlIHRyYW5z
bWlzc2lvbiBwb3dlciBvZiBOMzEwIHdoZW4gSSANCj4gaW1hZ2UgdGhlIGZpbGVzeXN0ZW0gaW1h
Z2Ugb3Igc29tZXRoaW5nPyBvciBpcyB0aGVyZSBhbnkgY29uZmlnIGZpbGUgDQo+IHRoYXQgSSBj
YW4gdXNlPw0KPg0KPiBJ4oCZbSB0cnlpbmcgdG8gZGVwbG95IE9BSSA1RyBSQU4gdXNpbmcgbjMx
MCBhbmQgdGhlIHNwZWNhbiBkb2VzIG5vdCANCj4gY2F0Y2ggYW55dGhpbmcuIEkgd29uZGVyIGlm
IHRoaXMgaXMgYmVjYXVzZSB0aGUgdHJhbnNtaXNzaW9uIHBvd2VyIGZvciANCj4gdGhhdCBmcmVx
dWVuY3kgKDMuM0dIeikgaXMgdG9vIGxvdy4NCj4NCj4NCj4gSSBhcHByZWNpYXRlIHlvdXIgYW5z
d2VycyBpbiBhZHZhbmNlLg0KPg0KPg0KVFggZ2FpbiBpcyBzZXQgZW50aXJlbHkgYnkgdGhlIGFw
cGxpY2F0aW9uIHdoZW4gaXQgY3JlYXRlcyBhICJzZXNzaW9uIiANCndpdGggdGhlIGRldmljZS7C
oCBJdCBpcyBub3QgYSBwZXJzaXN0ZW50IHRoaW5nLCBzbyB5b3UNCiDCoCBuZWVkIHRvIGZpZ3Vy
ZSBvdXQgaG93IHRvIHRlbGwgeW91ciAqYXBwbGljYXRpb24qIHRvIHNldCB0aGUgVFggZ2FpbiAN
CndoZW4gaXQgc3RhcnRzIHVwLg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20K
