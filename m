Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEE367D841
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 23:15:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80E71383B03
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 17:15:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674771331; bh=14hMd/THSacr+FB1eDd5PXhXrwrOAQE/wHf/N1hJkpc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=VisyH0OXf4UDX8v9BCZw2NhhUvZbNqnYi9jf7RynIIq/8VRjOBIGB425+D0tvANHE
	 ftlfZDRYP+hsZ1p7bfMF/BjQ7TgOxrW48rl9DCynVHKR0+u6SHDZwJJ73+ur78yLg5
	 ScSXmf2PMc0h5XupQcNCtotNi/11sVEIrCLtCjiSpKs1MCY0W4fjYqscv7iuf3yvhW
	 BeQgQ4WU9Ld2mVD16Mc1DARLHEGm5c+9LgoDDArmLkdPGLqmTCf4a2dBDQ5jqM4+mL
	 OPiH0UlNNbsYozUIGc6x44mfEx+Mib5rBSBnB48+skv+pnBD9037RJc+U5CuTFrNg8
	 vedsXEVwMtdJw==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 9EBF6384277
	for <usrp-users@lists.ettus.com>; Thu, 26 Jan 2023 17:14:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ltyf0jk1";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id e8so2609736qts.1
        for <usrp-users@lists.ettus.com>; Thu, 26 Jan 2023 14:14:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8lps6X7jh+Mpzdj/3AYiVwwcRQNhCxfg22v+FQLXvRA=;
        b=Ltyf0jk1m867Wq5mXfX/GnqU/sawpvny6XR3VKYy2r9uN+F8Er+xDOhFfqL7Xxj45O
         JPV4X8tqZW1z/Zaoko0prJXc+qZLSDZy+LPiw3NuIvLvQ3zDeCSkJ681An4bIQn9mEkZ
         6SrRtdMHoa195deqaztadQESGbkZ4bPMnpUACvdHqJn2ro8baN/oWBlKnsk+XpIf/gTx
         xkl9u9eMUUJC0rmoEckpH2ObXydiDBEPfIsgVgXxQdcTefWfkd+GW+7LvA93ZpefImri
         e3w9DkcOn0we7Nd2Omda47sGWZC31zSPCeuI8+SZdKTBXpItvDsVbQvrWh1ZpC6CVbBo
         fnNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8lps6X7jh+Mpzdj/3AYiVwwcRQNhCxfg22v+FQLXvRA=;
        b=XAL+v8C5j5C9xgbaQhqP0CUgbDzI/4hULqg0XJ+IrI0v4CrSyFxJASgchhasB1X1VG
         wB3vseLs2YXULZd+xdGxtMzSqlxkyIukbRTrueVqFPVqrt5k9y0oEeSoFvXF8wVtl+BF
         oMo2Vj0Ts1C/RS9xHdKXNAhmX4R1+BySO0DWHSfOdq8geVpfVwYLw3Jnoo7XEn4ga0XO
         N4e3MovngJfaEHkpPp4/24TXBJTOYwMpcQaD7D1OG+Z7ohKJdkf687SnaPM00fqy3UmO
         jOMAfBw+2RBvRMKaz5fdvQuh7L6j9x/n8RzvZ8mEQA86FNcFMMxFK8RfcqUBS3DArMtP
         FFUQ==
X-Gm-Message-State: AO0yUKW/myBFaooO0ckn12ocLdR+7vRZAH7ZBkqqUVYKuP1nSeAAqSVo
	Mq6F+opMpojszGeviHOC42i78Q9yaeQ=
X-Google-Smtp-Source: AK7set9IQn//AeqOQMkF3hJvUUe6WUxcKliVyNQ1MxeHzIeA0EqlkhWQqG4P45cMW8UncHZ4nPkEjA==
X-Received: by 2002:ac8:7d91:0:b0:3b8:1f33:ab57 with SMTP id c17-20020ac87d91000000b003b81f33ab57mr444000qtd.59.1674771275904;
        Thu, 26 Jan 2023 14:14:35 -0800 (PST)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id a19-20020ac84353000000b003a530a32f67sm1469039qtn.65.2023.01.26.14.14.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 14:14:35 -0800 (PST)
Message-ID: <b276bfdb-c59e-bb9f-92b1-c7ab94ad67da@gmail.com>
Date: Thu, 26 Jan 2023 17:14:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Y9Lxt1qeGzi9rym+@vm01308.protagio.nl>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Y9Lxt1qeGzi9rym+@vm01308.protagio.nl>
Message-ID-Hash: ITLYK4FI3OJZM4MM62TKNEBJWGX234VJ
X-Message-ID-Hash: ITLYK4FI3OJZM4MM62TKNEBJWGX234VJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UBX-160 LO filtering
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ITLYK4FI3OJZM4MM62TKNEBJWGX234VJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjYvMDEvMjAyMyAxNjozMywgTWFyay1KYW4gQmFzdGlhbiB3cm90ZToNCj4gSGksDQo+DQo+
IE9uIHBhZ2UgNyBvZiB0aGUgVUJYLTE2MCBzY2hlbWF0aWNzDQo+IGh0dHBzOi8vZmlsZXMuZXR0
dXMuY29tL3NjaGVtYXRpY3MvdWJ4L1VCWC0xNjBfcmV2RS5wZGYNCj4gdGhlcmUgaXMgYSBMTyBm
aWx0ZXIgc2VsZWN0aW9uIHdpdGggdGhyZWUgcGF0aHM6DQo+IC0gODAwIE1Iei0yLjIgR0h6DQo+
IC0gcGFzc3Rocm91Z2ggKG5vIGZpbHRlcikNCj4gLSBsb3dwYXNzIDQwMCBNSHouLjgwMCBNSHoN
Cj4gTmV4dCB0byB0aGF0LCB0aGVyZSBpcyBhbHNvIGEgd2F5IHRvIG1lYXN1cmUgdGhlIExPIG9u
IEozLg0KPg0KPiBRdWVzdGlvbjoNCj4gLSBJcyB0aGlzIExPIGZpbHRlciBhdXRvbWF0aWNhbGx5
IHNlbGVjdGVkLCBhbmQgd2hlcmUgc2hvdWxkIEkgbG9vayBmb3IgdGhlIHJ1bGVzID8NCj4gLSBJ
cyB0aGVyZSBzb21lIHdheSB0byBjb250cm9sIHRoaXMgTE8gZmlsdGVyIHNlbGVjdGlvbiB2aWEg
VUhELCBzaW1pbGFyIHRvIGEgdHVuZSByZXF1ZXN0Pw0KPg0KPiAtIFRoZSBJUSBtaXhlciBBREw1
MzcxIGRvY3VtZW50YXRpb24gd2FybnMgdGhhdCB0aGUgTE8ncyAzcmQgaGFybW9uaWMNCj4gbmVl
ZHMgdG8gYmUgd2VsbCBzdXBwcmVzc2VkLiBJcyB0aGVyZSBiZW5lZml0IHRvIGJlIGdhaW5lZA0K
PiBieSB1c2luZyBhbiBleHRlcm5hbCwgbW9yZSBmaWx0ZXJlZCBMTyBpbnN0ZWFkIG9mIHRoZSBv
bi1ib2FyZCBVQlgtMTYwIExPIHBsdXMgaXRzIGZpbHRlcnMgPw0KPg0KPiBNYXJrLUphbg0KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
DQpJcyB0aGlzIGEgImp1c3QgY3VyaW91cyIgdHlwZSBvZiBxdWVzdGlvbiwgb3IgYXJlIHlvdSBz
ZWVpbmcgaXNzdWVzIHRoYXQgDQp5b3UgYmVsaWV2ZSBtYXkgYmUgZHVlIHRvIHRoZSBVQlgNCiDC
oCBMTyBhbmQgTWl4ZXIgYXJjaGl0ZWN0dXJlPw0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
