Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E567A4B17
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 16:34:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5409938552F
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 10:34:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695047680; bh=pNVxlqyZU4r6OfYKnjg4E8eZEBOOG+xzQ29YfZaS6j8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=emO3eZGItH++JKb9JhafMBdhdTJSx9b+teZgDa0/XQkfWzbWGfTejF93ELJmQBCKg
	 DbkfvL414y8bbwlJWJ5YumFDt8T4jwLhmxAuh2aJ0JuoB7K2s/kr80CPYo3H7zkgN+
	 W2RjuW7f3wmYw3/SP27k8Kdc5QZMSNlDEIJXlmwts0KNFAyNtLpBqMFXC0HdfXTPN6
	 57Uxos7MHmTf835sVK1+tsZbE0I+VERpQDlv5nPBjwtPW3jHFII/wFNHlPT0orgbXV
	 9Te53xKWNy1MBM6rBPe6n3PLh1qvGtcGyizkXdNh2plKJ4Tz5x62mc4VOaHHLdDSJL
	 IuWDQJJgtsErA==
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	by mm2.emwd.com (Postfix) with ESMTPS id CFBD9385263
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 10:34:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y88rCwiI";
	dkim-atps=neutral
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3a9ee3c7dbbso3021089b6e.1
        for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 07:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695047664; x=1695652464; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lunfaJ9reG+3AV7pA1sS7RoMnLfV24Vijao2b/T/nJw=;
        b=Y88rCwiIs/1kEJimCEPpzLM7QNq6gr8x3DQuz7rflFAXQls7TtpzPJsUlkU/uGt82/
         Foq+9B/DdrW5uI/7s4V0MX3HYrt+lNQBT4BwMHppWw6GgYsPIRZUvM/qlQ0pv1tKYWHh
         ZUDkJWL1VBGEg/qov7GGsiTBzVqMjQxEU7BgvAmFO6gi9EnBuq6M96M0j4I27rZw4W2u
         AhLcxEQa1zxcdx0Ogbe37qy28MYXmGHnKI4lnLekJG8VxwsknC0Dd2ptr+O6dJg6k2Bw
         Br+86Qit/aQt74sMwT3l7KkG2q+magBPYTYtKCf78aVLWrta3E/Ky11jLJtuJJBxyUmR
         32cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695047664; x=1695652464;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lunfaJ9reG+3AV7pA1sS7RoMnLfV24Vijao2b/T/nJw=;
        b=S3aZvjVyr+mduOzm47qcfyfC3ZYI43Eeep1VyKuHgx0tO9qmvnf9IUaNWwdkfs0Yr1
         cFtm8Ju9+lb32vh6RAl5vRCDe7dZKC/mSDF2MpMCLd74qnLBK4hC5zydVI3/ro2obwyC
         b5IcakJ4NwixTMQDFswAe9n0sdyVhvbIs8KtyTeLBRZzpPQ7GXSddDF8geYN2NrulavX
         cZuhyQp39vK7tJZQd8BSpSDcBSWhZKEkuMj5pzEUHVyiNgtqSQMuTkrD8WOL25gpU8er
         wKKFMfAvMP5KuAE2WYph4y8HsKpMjBdHQuHDZ9sYf5OPBXye+f6agYbZse6QZMT2sjzg
         Lr+A==
X-Gm-Message-State: AOJu0Yw2RMoijNW2pGvTxn5fC3/vduXP9FimcTdrAylwqZfp+WABmIRH
	M3OpfvGhM9oeJSTBKXnbN6OwIM9wpa8vOg==
X-Google-Smtp-Source: AGHT+IH3GYLMjddBsHVcf2BhyGQZ9be4/5eVebG9szx+jTQaw0W9LN0najg3L727GXKXZDHMB8xvcg==
X-Received: by 2002:a05:6870:a2c9:b0:1bb:a891:47fc with SMTP id w9-20020a056870a2c900b001bba89147fcmr10565425oak.8.1695047663795;
        Mon, 18 Sep 2023 07:34:23 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id o21-20020ac872d5000000b004120400921csm3016478qtp.94.2023.09.18.07.34.23
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 07:34:23 -0700 (PDT)
Message-ID: <f7f0ddf4-549d-cf7f-e82b-8335643d84e8@gmail.com>
Date: Mon, 18 Sep 2023 10:34:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <5RnC2plypU3R3YKSjZaYX8ojGRwqpx2bqpBRcJhSRk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <5RnC2plypU3R3YKSjZaYX8ojGRwqpx2bqpBRcJhSRk@lists.ettus.com>
Message-ID-Hash: JSWHB2PYQOFIZVF3I6I46D2ED5AERA6R
X-Message-ID-Hash: JSWHB2PYQOFIZVF3I6I46D2ED5AERA6R
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Delay between TX and RX channels
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JSWHB2PYQOFIZVF3I6I46D2ED5AERA6R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTgvMDkvMjAyMyAxMDowOSwgaDU3amFmYXJpQGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gVGhh
bmsgeW91LCBNYXJjdXMsDQo+DQo+IFllcywgSSBhbSB0cnlpbmcgd2l0aCBjb3JyZWxhdGlvbiBw
ZWFrLg0KPg0KPiBZZXMsIGZvciByYWRhciBhcHBsaWNhdGlvbiB0aGUgVFggYW5kIFJYIElRIHNh
bXBsZXMgd2l0aCBzYW1lIHNpemUgDQo+IHNhdmVkIHRvIHR3byBmaWxlcy4gSSBuZWVkIHRvIGNh
bGN1bGF0ZSBhbmQgcmVtb3ZlIHRoYXQgZGVsYXkuDQo+DQo+IERvZXMgdGhpcyBncm91cCBkZWxh
eSBpcyBmaXhlZCBvciBjaGFuZ2luZyBkdXJpbmcgdGhlIFRYL1JYPw0KPg0KPg0KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpJIHNo
b3VsZCBhZGQgdGhhdCB0aGF0ICphbmFsb2cqIGNvbnRyaWJ1dGlvbnMgdG8gZGVsYXkgV0lMTCBk
cmlmdCBhIA0KbGl0dGxlIGJpdCB3aXRoIGNoYW5nZXMgaW4gdGVtcGVyYXR1cmUsIHRoaXMgaW5j
bHVkZXMgdGhpbmdzIGxpa2UNCiDCoCBjaXJjdWl0LWJvYXJkIGxpbmUgbGVuZ3RocyBhbmQgdGhl
IGdyb3VwLWRlbGF5IHByb3BlcnRpZXMgb2YgYW5hbG9nIA0KZmlsdGVycy4NCg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxp
bmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
