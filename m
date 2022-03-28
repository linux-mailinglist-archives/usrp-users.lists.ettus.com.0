Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 350B94EA27C
	for <lists+usrp-users@lfdr.de>; Mon, 28 Mar 2022 23:35:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 78FF238442C
	for <lists+usrp-users@lfdr.de>; Mon, 28 Mar 2022 17:35:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648503312; bh=HrfwM0I7sdCjfLCfWtzAuW4jPV5GIxosSMhF4qzZ4EQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Aex/Kp/+lWSsjrPjHsC31x0pD2hNIGs5NdVFGDN34QCLHbZbQfxiGt09h66xmxner
	 DSOMcqYurv6AFgzmE+NucPS/mXphy6pP1NtG+REeUFgoaaqj+o4BbBZZC9d5PqwGpu
	 MOVMOqD2SPuO2/tuypzY5UDoszS9Q8Svl/pcrhwKwFrV40ULJIjpZiHwLvXHIY6v5A
	 1/jrxRJm2wgokg6N7CukMPnPuSiH2psp7KLjr1jBqTYNnFCL38HR/8SdxdiElkCLtY
	 m3wW2JZq89q0gfanPPzwW9ZCV5NgXklOSFzkgCCyJEtAwo1nsGgvIJBv2Gdf/AmfWa
	 gAfdqknEzlJLw==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 917F83843E4
	for <usrp-users@lists.ettus.com>; Mon, 28 Mar 2022 17:34:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Pa2IIukl";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id b18so13632651qtk.13
        for <usrp-users@lists.ettus.com>; Mon, 28 Mar 2022 14:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=br3I8boll0uK0FGGI6LjctFZt1mO75hfP+IeQF8DXjc=;
        b=Pa2IIuklRM+L7UDnlw66b6TpzefI6+HMjej3oYzisB6UCwFkVpw/Dhx25ymYNKzweJ
         vr2zG71XymcpsiNb+FnG1szzZDaSBjIbDd5cL0Mzl08jDx+oLnVqL8GI+tGskrfHFV5E
         PIvcRD3DrOLb7bFakggf/3LQezC49APnTzsE9QPD0rpSLAm0T3qhxi8462pLEBV6ht1f
         mT3vtLUh/wiuwTZzRBRKufakBNTx3xkTsQtc7tzKU2ph3qEHkgeiwZ+1nCp2Lz2YMFTh
         HPcX15B5YwMXpoUVM5xWjEpRDUAq5kpGla+YNNry+uvIK8mSDTXUpqtotziRFBt5yP0L
         lKdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=br3I8boll0uK0FGGI6LjctFZt1mO75hfP+IeQF8DXjc=;
        b=p+IVBzCIWZ8sSbVvpE+5FLClDXY3OfCj3GVVKxuqaKDns0DQjulUue3TQ44MfU3joB
         cmX+Rouyqq2eIzD64NpIV032Vgq87wA1wJn0N2UUE897SV5YqQg4Qh/lCmwlBncbe7jj
         IXm0BmXz5AdmEQUyOR93Uxwa2eGNiGgpjk3lzdYrWXSgv4AZ3XoRUBGTrc183iG4My8p
         uw5D/hi1F2oC/CO4bf2Vi6U+9OFeDbPyuSxqX3XL/2y3mBWhbUg728zJ/8bCLbpcmpTL
         fEj2naEi4VRj6EKYlWnriuGHfa8nOtKF/IWV22wf8dacxz/bNoi1lMXQ/QFi8kHjZ+Rx
         JGcQ==
X-Gm-Message-State: AOAM530KjvXsLv70RL0cO/tS6g/35KWYEtIR2tFgME5XLN02Up5oHJfG
	WU1gz1QrNgiX6UJxuwqKyIxdxYq4x+k=
X-Google-Smtp-Source: ABdhPJxRDLw75oJmOR+isDDwIsYdevKH1CANvcp6xyW0HV6RQy/xKxkwUF0QhAL1auSCFzgzkfxFpw==
X-Received: by 2002:a05:622a:446:b0:2e1:b95e:3b48 with SMTP id o6-20020a05622a044600b002e1b95e3b48mr24033750qtx.310.1648503243875;
        Mon, 28 Mar 2022 14:34:03 -0700 (PDT)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id e14-20020ac85dce000000b002e1ee68d2d9sm13713729qtx.95.2022.03.28.14.34.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Mar 2022 14:34:03 -0700 (PDT)
Message-ID: <24e50ec7-656d-b49c-36e3-a0b3dce4c04e@gmail.com>
Date: Mon, 28 Mar 2022 17:34:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <UqyP0dluXKcvxZCZtNIuPSCvZPQKc7h5nFrpCogQ@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <UqyP0dluXKcvxZCZtNIuPSCvZPQKc7h5nFrpCogQ@lists.ettus.com>
Message-ID-Hash: HRNKUP4EV27QKARN2YXRWMKAPSRD4EP5
X-Message-ID-Hash: HRNKUP4EV27QKARN2YXRWMKAPSRD4EP5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Apply transmit scaling factor
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HRNKUP4EV27QKARN2YXRWMKAPSRD4EP5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMy0yOCAxNzozMiwgcmkyODg1NkBtaXQuZWR1IHdyb3RlOg0KPg0KPiBJcyB0aGVy
ZSBhIGNvbnZlbmllbnQgaW4gdGhlIFVIRCBBUEkgdG8gYXBwbHkgYSBkaWdpdGFsIHNjYWxpbmcg
ZmFjdG9yIA0KPiBiZWZvcmUgdHJhbnNtaXR0aW5nIGEgYnVyc3Q/DQo+DQo+IEkgaGF2ZSBhIEMr
KyBhcHBsaWNhdGlvbiBhbmQgWDMxMCBhdHRhY2hlZCB0byBhIGJlYW1mb3JtaW5nIGFudGVubmEs
IA0KPiBhbmQgSSB3YW50IHRvIGFjY291bnQgZm9yIHRoZSBzY2FuIGxvc3MuIEkga25vdyB0aGVy
ZSBhcmUgYSBudW1iZXIgb2YgDQo+IHdheXMgdG8gYWNoaWV2ZSB0aGlzLCBzdWNoIGFzIGhhbmRs
aW5nIGl0IGluIG15IG93biBzb2Z0d2FyZSBvciBsaWtlbHkgDQo+IHVzaW5nIGFuIFJGTm9DIGJs
b2NrIChhbHRob3VnaCBJ4oCZdmUgbmV2ZXIgZG9uZSBpdCBiZWZvcmUpLCBidXQgSSB3YW50IA0K
PiB0byBrbm93IGlmIHRoZXJl4oCZcyBhbiBlYXNpZXIgd2F5IGZpcnN0Lg0KPg0KPg0KWW91IGNh
biBhZGp1c3QgdGhlIFJGIGdhaW4gaWYgeW91IGRvbid0IHdhbnQgdG8gZG8gaXQgYXQgYmFzZWJh
bmQgaW4gDQp5b3VyIHNvZnR3YXJlLsKgIFdoYXQgbWFnbml0dWRlIG9mIGJhbmR3aWR0aCBhcmUg
d2UgdGFsa2luZyBhYm91dD8NCg0KV2hpY2ggZGF1Z2h0ZXJjYXJkcywgYW5kIHdoYXQga2luZCBv
ZiBnYWluIHJhbmdlIHRvIHlvdSBuZWVkIHRvIGFjaGlldmUgDQp0byBiYWxhbmNlIG91ciB5b3Vy
IGJlYW1mb3JtZXI/DQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQo=
