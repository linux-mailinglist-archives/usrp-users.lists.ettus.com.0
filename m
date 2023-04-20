Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 077176E95E5
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 15:33:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2E3B6384018
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 09:33:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681997627; bh=0PhYDfPCwCOWPTMDeaSS2LnQ69m25WtyONIOVtT0QTI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=dZtL8sKIj8lG7vCuXdFk8M3VfRZ6CWOYslEvHmiKmxruddWaPAQXRlH171zax/dJc
	 qBtjvIpQrZbPcNupJ5kRT6XOg28xvcH8q031ZdYgmVrZsR6PJIdtbJD1PdnGqLHOdi
	 oD2yxW6FXbkugAHotPx3sDSvMGoy/1CtLInujdLrzWg9wcF7DBr9YEq6RW+fm+eUQU
	 eOcEZV2sNR16c5AtRgvGTOOZ6p1302d8ZOcwh9NeatYyuy+ihzi19Hyf48qtTuIJ2T
	 1HhdaWD/dix9tKcEKDQFrwDSXvJJyhvtyqXXWBTBpAxT3xOvgOBy0CfStfSpf0Xg8U
	 VVIETe/4HiiHA==
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by mm2.emwd.com (Postfix) with ESMTPS id C7D0D384018
	for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 09:33:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aVXRyoGa";
	dkim-atps=neutral
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-54fc337a650so41779637b3.4
        for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 06:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681997621; x=1684589621;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=73QMjZk4LahLJK63NLxJ53iEWUaLNaGpYbfQZQaAt34=;
        b=aVXRyoGaldkoGa8HiensMft5y8t7/S0shnV6hFxMnfv4yz6nIA3mblU//gAaDoTyYq
         9x7XARnmQLk964A/RRBKwHFK9v/I8B2jtw0KrjQlU9n2thuGPUvYJe7IEPl5HwWIr3GZ
         hYdjjvVSRqKvGy5CYCyUjy3PrAdjaAgbIMrsdCvTOkpivENUs5hlm5hufyOH+Owhxium
         gKQ+FlwjcbyLAJ92fgyZZnJufU0bLo0H3Uap1TBdhMRj7KXhumOn8AoRipJlUTXDx8Gs
         4a9Q9KTfdEkicWbvpNrX20Plw0mA5LJ0djGRGa2rVEhjUHwGZXBj30En6LW+LERvLiCn
         uNmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681997621; x=1684589621;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=73QMjZk4LahLJK63NLxJ53iEWUaLNaGpYbfQZQaAt34=;
        b=fVVWe41Vd3LYMik5LFyb007++kWS8KtSlSxhA32o3tVawqydco494qsfz60XRlp7m1
         eMh4b6G+fgkz48lzl0sXZRNoy5gLPB7LJUPGzYVWg9DXeHZGc083YcJMda2ty6QuyBbQ
         HPAMpzlUfyK8IEhy2PkxNKd+j/WBtrvoc4qISCkzN67U6HJ3rrsUHeJ5GyIUir/pQRb2
         5XwPxeCyLJkE9yT85V8HjloXFuUib9IeUVR2sCOabYNh28PrB7J0mXCumxzFpHbHcVoa
         XdDN5/JTU1KbTeeTM5sYTdoSYX+jEGh33l2BiSsXGOcRfTZHJjG/+tks3mutVPtdKxAS
         /UGQ==
X-Gm-Message-State: AAQBX9eVktm+7Z+hfpWO+55pfHH/C3em5MCJDpdCgvX0yRvf3Pq9rNIN
	pXwuER+EqezUW56VEfjbNVgOM6l6a+E=
X-Google-Smtp-Source: AKy350a59dYReibcuQuoT63MFcvobG7eMoH6TPc7rNOo+ZCFEYRt6yzHQGxazv6WaKetOIpRv7LYqQ==
X-Received: by 2002:a0d:f907:0:b0:54f:e1ac:96a with SMTP id j7-20020a0df907000000b0054fe1ac096amr736658ywf.7.1681997621611;
        Thu, 20 Apr 2023 06:33:41 -0700 (PDT)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id dl4-20020a05620a1d0400b0074df7f62c83sm432430qkb.49.2023.04.20.06.33.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 06:33:41 -0700 (PDT)
Message-ID: <3d3cd45c-0d41-3635-7f38-159234333233@gmail.com>
Date: Thu, 20 Apr 2023 09:33:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <28E46AED-B0D0-43D2-ADC4-B4B020B78F15@icloud.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <28E46AED-B0D0-43D2-ADC4-B4B020B78F15@icloud.com>
Message-ID-Hash: R4BHJKYWXMW3EAIW4J3EFUH6EYM457VP
X-Message-ID-Hash: R4BHJKYWXMW3EAIW4J3EFUH6EYM457VP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using X310 with two hosts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R4BHJKYWXMW3EAIW4J3EFUH6EYM457VP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAvMDQvMjAyMyAwODo1OSwgQW5kcmVhIGRlIEplc3VzIFRvcnJlcyB2aWEgVVNSUC11c2Vy
cyB3cm90ZToNCj4gSGVsbG8gZXZlcnlib2R5LA0KPg0KPiBJIHdhcyB3b25kZXJpbmcgaWYgYW4g
dXNycCB4MzEwIHdpdGggdHdvIGRhdWdodGVyIGJvYXJkcyBjYW4gYmUgdXNlZCBzaW11bHRhbmVv
dXNseSB3aXRoIHR3byBob3N0IGNvbXB1dGVycyB1c2luZyB0aGUgdHdvIFNGUCBpbnRlcmZhY2Vz
Lg0KPiBUaGUgZGF1Z2h0ZXIgYm9hcmRzIHdvdWxkIGJlIHRoZSBVQlgxNjAgYW5kIEkgbmVlZCB0
aGUgdXNycCB0byBydW4gT3BlbmFpcmludGVyZmFjZSBzaW11bGF0aW9ucy4NCj4NCj4gVGhhbmtz
IGluIGFkdmFuY2UsDQo+IEFuZHJlYSBkZSBKZXN1cyBUb3JyZXMNCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KVW5mb3J0dW5hdGVs
eSwgdGhhdCBpc24ndCBzdXBwb3J0ZWQuwqDCoCBUaGUgVUhEIGludGVyZmFjZSBhbmQgdGhlIHJh
ZGlvIA0KbmVlZCB0byBtYWludGFpbiBhIGZhaXIgYW1vdW50IG9mICJob3VzZWtlZXBpbmciDQog
wqAgaW5mb3JtYXRpb24gYmV0d2VlbiB0aGVtLCBhbmQgZGlzdHJpYnV0aW5nIHRoYXQgYWNyb3Nz
IGhvc3RzIHdvdWxkIGJlIA0KY2hhbGxlbmdpbmcsIGFsdGhvdWdoIG5vdCBpbXBvc3NpYmxlLsKg
IEJ1dCBzdWNoDQogwqAgYSB1c2UgY2FzZSB3YXMgbmV2ZXIgcmVhbGx5IGNvbnRlbXBsYXRlZC4N
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
