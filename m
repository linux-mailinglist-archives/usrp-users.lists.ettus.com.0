Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8BB4EAFB8
	for <lists+usrp-users@lfdr.de>; Tue, 29 Mar 2022 16:59:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D5FC3848CF
	for <lists+usrp-users@lfdr.de>; Tue, 29 Mar 2022 10:59:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648565988; bh=zHqpQ+FKW9dgJildOvhrBKQt03F+1HI1UvupAlXRjjw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DdCRQ6p+4sTFbfsCSX1CABgO+30+LKmX9GPudKKwPNxdGLcIR2YHHOLSvDZSf7h/a
	 cqcOcheq2YDU5pwox5RNXEnoPHRmZoxLB0TDKb5N37rIfW6xaxyi1Ja/REmHjxNLxt
	 rmT4bgFbS2C+iPh4oUEQdNDNXl0WjUVRnjBisSataQZcT5gZzmAswVyx53NnfPyrRz
	 dkMIPwziCUB5N5B1oUb2dwwwEqpVpbR61DKmkO/qTrQoF4ef8x5Gdybu/6SIJ2O9Lf
	 BjqkrWM1MisIQoSgdBjODiGh1QfFoD5S/4I3BJb8CFK6QXnDGShwXv2jGPsM8UhxQt
	 ZrlKrCXxYdnUw==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 1D95B3847FA
	for <usrp-users@lists.ettus.com>; Tue, 29 Mar 2022 10:58:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YN4xC0gn";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id c4so15453150qtx.1
        for <usrp-users@lists.ettus.com>; Tue, 29 Mar 2022 07:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=qxN8OqKO5/Yr9cXlx5JbL2gRKOLciTFVD0Q0NW7c9xw=;
        b=YN4xC0gngWqtoqEw6X3g+7P7CRM3CPsz87BKX8BIyf5c7GcgR3Tz9d+qmrVCNziGLy
         2KIvmskJ4yhspZG0ZYCWNxpINAmsl4f8wQHGZLDHqBHbUqj2lGjDEQu/mHLZdI9THF7c
         TTKiKY/iIU1Xi+iemy2OXKN4Goqi3KgZ1pRlsIZ3MFPiYA5shPcbyluVhHbxyrXECf+p
         qf6TsJSK8bzSvN6LTDvc/zDtZDvpa+cOgDXBIqRXW3xlkplnGOruT/e2T14dbe219N8x
         KEP3sLvcvGnb7nng7wA+S6CeYGDuwY4Xff2GuOdMhkebqOzsTGW/PJ3s4JcP2jRoO5D4
         F1wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qxN8OqKO5/Yr9cXlx5JbL2gRKOLciTFVD0Q0NW7c9xw=;
        b=UBgiJP+2+6mBhIs8XwS37AdlW/Mv8M9OyrwL6jwhgEO2Q3TkDv9v/J+v1ILtYpAbg+
         is2tf75s9dd1QzX/3a5YH5dQvjriSPjZzygemqv3HqN/HbEA8HwSFQ9xGvIcgDz6k9RA
         z2otg3Dd2OsX8tlOB2NTdTmJ8LxTJJ6Ynu9os5ve8ZFPwL6572SkpP2CuMR66kH/Qjk/
         SwkmARRMmSTL2x9DiICVEtnuhpAUeKqfDU7OrCkA1oHAHdDMNV9wpSul1HAAHI/me71W
         6oTLkw4p2o590+AI5FhvPfKu8B+iPfFVxIU9rm4Kwr/CgXv6H6UdZR5uL1pUMlaMfjPj
         sKxQ==
X-Gm-Message-State: AOAM533Or8VF1bnHqJCxqMp0Q7vyqE0Y5fbL5yEEOz66JP82x7es7OcS
	Pa1Nc13n7JQRbuL4Xx2iG0VzLtg4aI0=
X-Google-Smtp-Source: ABdhPJxRqL+SzIm+i7XO00Z5uEi2bfReV2OoJ1InbR/v0ZSnZ+kdXkYP9Y8oOgcQd5nR6L3IMSgFCA==
X-Received: by 2002:a05:622a:1996:b0:2e0:ffd3:a2d5 with SMTP id u22-20020a05622a199600b002e0ffd3a2d5mr27496786qtc.390.1648565931261;
        Tue, 29 Mar 2022 07:58:51 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id h6-20020ac85e06000000b002e1e8a98abbsm15832638qtx.41.2022.03.29.07.58.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Mar 2022 07:58:50 -0700 (PDT)
Message-ID: <3c23070a-897f-1f03-0c8b-d63ec6695d9b@gmail.com>
Date: Tue, 29 Mar 2022 10:58:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MIm2CZbks9o74skxjfnGWlu4Fvhm1mk3pXicSNlKNfk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MIm2CZbks9o74skxjfnGWlu4Fvhm1mk3pXicSNlKNfk@lists.ettus.com>
Message-ID-Hash: 6AZ22YYOVPEZMKLDXDAFMXFPTFKQVLP2
X-Message-ID-Hash: 6AZ22YYOVPEZMKLDXDAFMXFPTFKQVLP2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Apply transmit scaling factor
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6AZ22YYOVPEZMKLDXDAFMXFPTFKQVLP2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMy0yOSAwOTo1NSwgcmkyODg1NkBtaXQuZWR1IHdyb3RlOg0KPg0KPiBJ4oCZbSB1
c2luZyBhIFVCWC0xNjAgZGF1Z2h0ZXJib2FyZC4gTXkgYXBwbGljYXRpb24gdXNlcyBsZXNzIHRo
YW4gNTAgDQo+IE1IeiBvZiBiYW5kd2lkdGggYXQgYmFzZWJhbmQuDQo+DQo+IEluIHBhc3QgZXhw
ZXJpbWVudGF0aW9uIEnigJl2ZSBkb25lLCBjaGFuZ2luZyB0aGUgUkYgZ2FpbiB0YWtlcyBvbiB0
aGUgDQo+IG9yZGVyIG9mIDEgbXMsIGFuZCBJIG5lZWQgdG8gYWRqdXN0IGZvciBkaWZmZXJlbnQg
YmVhbSBhbmdsZXMgYW4gb3JkZXIgDQo+IG9mIG1hZ25pdHVkZSBmYXN0ZXIgdGhhbiB0aGF0Lg0K
Pg0KPg0KPg0KQWgsIGluIHdoaWNoIGNhc2UsIHlvdXIgYmFzZWJhbmQtYmFzZWQgYXBwcm9hY2gg
bWFrZXMgc2Vuc2UuDQoNClNvIHVubGVzcyB5b3VyIGV4aXN0aW5nIGNvZGViYXNlIGlzICJvbiB0
aGUgZWRnZSIgb2YgYmVpbmcgdW5hYmxlIHRvIA0Ka2VlcC11cCBhdCB5b3VyIHNhbXBsZSByYXRl
cywgdGhlbiBkb2luZyBhIGNvbXBsZXggbXVsdGlwbHkgaW4gc29mdHdhcmUgDQp3b3VsZCBiZSB0
aGUgd2F5IHRvIGdvLg0KDQpJdCBjb3VsZCBhbHNvIGJlIGRvbmUgaW4gUkZOb0MsIGJ1dCB5b3Un
ZCBoYXZlIHRvIHJhbXAtdXAgb24gUkZOb0MsIGFuZCANCnVubGVzcyB0aGVyZSdzIGEgc3Ryb25n
IHBlcmZvcm1hbmNlIHJlYXNvbiBmb3IgZG9pbmcgaXQgaW4gUkZOb0MsIHN0aWNrIA0Kd2l0aCB0
aGUNCiDCoCBzb2Z0d2FyZSBzaWRlLg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
