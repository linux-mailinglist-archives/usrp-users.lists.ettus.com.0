Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7A3536361
	for <lists+usrp-users@lfdr.de>; Fri, 27 May 2022 15:40:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A2542384563
	for <lists+usrp-users@lfdr.de>; Fri, 27 May 2022 09:40:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653658810; bh=/hB6EP2mtWysCiEXaJpljPCfFwX7nRau51Bz9qh4ZdU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mS53IzifRuYF8hYB1PLNw0h+ykE5Ka+yiZSlhh5aOly61xKKqzXbZd8PlXrEL7bsC
	 UUut1Bl1WyK6xGoLLRBz1stUDQuJ5M8FD5WQZuqKzdtqhxIl3d2AHPLT3OpX3tznF6
	 G9KnSZ7d9cKnktegjvvZzXTXhT1ePJws5W7/C5PYq1mwbRcg35TOxcvmU13DmgtXUf
	 ESOSMt154m3QAb2J24JtNjb/G+3ypbPtk+eYxyxxouGouHkXA+N9Ni9mjOUWuiY6nU
	 k9FxN3RQGufsaHU0DPzKjsV5AFicbQKxDB1NWej+rVVII0W9qo+4wHf+x5mFhOY4UC
	 IvO2FnIq3TTbw==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id DF097384070
	for <usrp-users@lists.ettus.com>; Fri, 27 May 2022 09:39:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WOtosCTR";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id x7so5329500qta.6
        for <usrp-users@lists.ettus.com>; Fri, 27 May 2022 06:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=laJTKtFWnXJ8VC9rNj709DtNR67AaLouGtw+RKy+B88=;
        b=WOtosCTRTk+vasKHSwrAQjEygmyhSnMfRooln6esVvYfnaHnAVf800L+r+kCYcQ2w8
         FeegTWPY8Q2crJeKisScPTuf3nwjdHh0cSiWDQoBoGbR5IGfgwnLg52W51LTAmp+J+gw
         pcV8LarwnjPq4dQAmbTPfng9lQAD0QDg3CawVHtg1BWWULz4lPmyhA4tzbha25i7JfSL
         AQ3MdsPaaEMiYU5ig65Vr+ouk004A0dxqlo3R+bIV6Idz8lsq+NZSI826m12p96DvOO6
         h4gKTpgcDnhcRPVlRkssIpC2rRd0SY7yFyc/YXAp+VE9RYKDZuNzhRe2rRG2tqdu0NAe
         837g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=laJTKtFWnXJ8VC9rNj709DtNR67AaLouGtw+RKy+B88=;
        b=M3n/dQxGACx7o3vU8F5WzYBc1A2cQkKVVrlwWwrCan3ujiNfyFrz39v3BECKWpQQv4
         LAVDeXsmqSC8TnQ8GoEhbp4DFAzcqwUzSv5BIw36pRYDc2u35zur60fe3XYmW2DJmYU0
         tl86HTkuiuOwbhta8/VIoX2Dshl70ZDizHBR2KWH1lOE5CKGhjUzbw6EToxgC3yuu+J3
         u0NU5c77n2ssSjlNYaFkKkHgW/sINJW1JygUQmdQGs0mESoCmJUoJUQ8lQtpeOKXkqU/
         P7wdaBjpkasbKJIBT0hSZIdETh47GH9q7jMOVo22Qr7u0R9dqneAP0R+a4bfBGvMl2ER
         F6Ow==
X-Gm-Message-State: AOAM533zRPgM5bfv0NRelMQk6miiYg+nXTLpzozo6l15H1ZKZkPDJ/w2
	irMr+34kYXsmTqFNmr6FN9zKuzX2DEc=
X-Google-Smtp-Source: ABdhPJwvS4ak0nYAaRCaYLb/g82U7aDnRYOO5nmcecXOBtclCliAnxD8naI/nsPYFeT2SU0aqq2+yA==
X-Received: by 2002:ac8:7d50:0:b0:2f9:442b:a2c9 with SMTP id h16-20020ac87d50000000b002f9442ba2c9mr14557595qtb.189.1653658742006;
        Fri, 27 May 2022 06:39:02 -0700 (PDT)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id o21-20020a05620a0d5500b006a3750e8b25sm2741126qkl.82.2022.05.27.06.39.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 May 2022 06:39:01 -0700 (PDT)
Message-ID: <62ebe64a-3750-5b1e-faef-5e766c32ad56@gmail.com>
Date: Fri, 27 May 2022 09:39:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAFPzw1mTwQ9yfkH8tJDTYjPmDfLUjWtTZz7OYZ8TJtxgaJBcLg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFPzw1mTwQ9yfkH8tJDTYjPmDfLUjWtTZz7OYZ8TJtxgaJBcLg@mail.gmail.com>
Message-ID-Hash: RFWQFLV45BB5VPT7D2DQN3MM355RMFKF
X-Message-ID-Hash: RFWQFLV45BB5VPT7D2DQN3MM355RMFKF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Underflows with 200Msps TX and UBX
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RFWQFLV45BB5VPT7D2DQN3MM355RMFKF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNS0yNyAwNzo0NywgQW5hYmVsIEFsbW9kb3ZhciB3cm90ZToNCj4gSGVsbG8sDQo+
DQo+IEkgYW0gdHJ5aW5nIHRvIHRyYW5zbWl0IGEgMjAwTXNwcyBzaWduYWwgd2l0aCBhbiBYMzEw
IGFuZCBhIFVCWC0xNjAgDQo+IHVzaW5nIHRoZSBleGFtcGxlIGNvZGUgJ3R4X3NhbXBsZXNfZnJv
bV9maWxlLmNwcCcuIFRoZSBmaWxlIGNvbnRhaW5zIA0KPiBjb21wbGV4IHNhbXBsZXMgb2YgdHlw
ZSBkb3VibGUuIEJ1dCBJIGdldCBVbmRlcmZsb3dzIGNvbnN0YW50bHkuDQo+IFRoZSBob3N0IGlz
IGFuIEhQIFo0IHJ1bm5pbmcgVWJ1bnR1IDIwMjAgYW5kIFVIRCA0LjAuIFdoYXQgY291bGQgYmUg
DQo+IHRoZSBwcm9ibGVtPyBXaGF0IGNoYXJhY3RlcmlzdGljcyBzaG91bGQgbXkgaG9zdCBoYXZl
IHRvIGF2b2lkIHVuZGVyZmxvd3M/DQo+DQo+IFRoYW5rcyBpbiBhZHZhbmNlLA0KPiBHcmVldGlu
Z3MNCj4gQW5hYmVsDQo+DQpZb3UncmUgYXNraW5nIHlvdXIgZGlzayBzdWJzeXN0ZW0gdG8gb3Bl
cmF0ZSBhdCAxLjZHYnl0ZS9zZWNvbmQuIFRoYXQncyANCnVubGlrZWx5IHRvIHN1Y2NlZWQsIGV2
ZW4gd2l0aCBhbiBTU0QuDQoNClRyeSBjb3B5aW5nIHRoZSBmaWxlIGludG8gYSByYW1kaXNrLCBp
ZiBpdCBpc24ndCB0b28gbGFyZ2UuDQoNCkkgZG9uJ3Qga25vdyBhbnl0aGluZyBhYm91dCB0aGUg
WjQsIGJ1dCB0byBzdXBwb3J0IGhpZ2ggc2FtcGxlIHJhdGVzLCANCnlvdXIgY29tcHV0ZXIgbmVl
ZHMgdG8gYmUgZmFzdCwgbXVsdGktY29yZSwgYW5kIGhhdmUgdGhlIGZhc3Rlc3QgUkFNIA0KdGhh
dCBjYW4gYmUNCiDCoCB1c2VkIGluIHRoZSBzeXN0ZW0uDQoNClRoaXMgZG9jdW1lbnQgbWF5IGFs
c28gYmUgdXNlZnVsOg0KDQpodHRwczovL2tiLmV0dHVzLmNvbS9VU1JQX0hvc3RfUGVyZm9ybWFu
Y2VfVHVuaW5nX1RpcHNfYW5kX1RyaWNrcw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
