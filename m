Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B76A7AC53A
	for <lists+usrp-users@lfdr.de>; Sat, 23 Sep 2023 23:41:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C82883850AF
	for <lists+usrp-users@lfdr.de>; Sat, 23 Sep 2023 17:41:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695505267; bh=J5sS4ReR8OCUxK1lZbdpiZ8H8mCdC+XTq0fI/14qCSA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=PfD73iNaI1iinTETeIFU0t7KL74nHDvQlLps9RvvHeJqiQUkJ9zyFEoPCsw752mO+
	 T4vNWwjjlVGYDC+oHx/jsxJCqR8TCGNKObsnZoLq0nSJ4HaoPJ9hoN5BQnMuCH3LSX
	 COGqDbF3lcQeFcD5YLB+1MhCoCq5wJ+0I7T0URuTu+K2Pi8ZYFgVSzdc+HWxIn5uZn
	 0oiBLzLs/FjvPGVeJjsLQFG2p6pAsNmkNILvbrC6fD+Tu0wgyw45Sb897WtdQbKH78
	 OQkQ+Ui6k7QB2xk+CpZxQgJw76N8jAYc82AUV6O8N80tj+kkkndpIbQncVD14JgBp2
	 4PLLeCZDeIs+Q==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 729AF384E99
	for <usrp-users@lists.ettus.com>; Sat, 23 Sep 2023 17:40:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="PTaOHZ9L";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-53339349956so4486564a12.3
        for <usrp-users@lists.ettus.com>; Sat, 23 Sep 2023 14:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1695505251; x=1696110051; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aMQW1AmJgN3bsSwmM3sOHmCircdDimhKgHTUmIvO9bc=;
        b=PTaOHZ9LZ8wT4uk5qkL0DceAh2gaee2BRjYcIPtaUoNWouwicfRTQrDe431fQWTm8Y
         /VDGBm/TiyFZnQhoQ+lTULbqa83HHDmZK02M+6SeKSToyMILk2/hlMkYE+vPKglTlJL/
         SeT1kMB5ecV6aTMtfh+lBRPq9jydUB2jSr1oITAMWqZBXgKAQkuddtVyE4pfono1MBoZ
         qiK+EfIfRCRjsx2mnM5NsctYCWZpPN2vXC9CPDS5sncDjtP8tYPwgQhAwFbQk205EGyA
         0LZAramxlIlsaQsXotqi0Iu7aY5vkLbZs8O47sAs2QPDJHN1a/mMeWCPBaE3jPselN/C
         W/DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695505251; x=1696110051;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aMQW1AmJgN3bsSwmM3sOHmCircdDimhKgHTUmIvO9bc=;
        b=vsrXcdkbW+JfYUnUj5UmX8L5cY3YdSvZwbLCp1iV2ZkK7nvyPn/mwavWV7KOIGsCdR
         UPcknomJwnVTA/U7HINdXXZlznZQNh7/HcaNRO/HVmGQFZ6i8HSUlkmMX00GnG6NOsg/
         n24oJwYqeK70wbZ+GG+DQyZVjVd3qjjjAsOPXTD7+r2xQgYt1HABf2FYkja3KFztmHn+
         HWoBlDn0Vv+TBEgjJRlHtBBvZiwiVY4sSaYIHZb4hCpwcC4MxskpoBAnv8upWKSHgYj9
         8ZzkcPe9f7koLPrM+DT501XBqKnOnd+Fsum9sH+dBnlyUd+F0FHIao/NP6pzRDpA6zHp
         d8Sg==
X-Gm-Message-State: AOJu0YzGYfetMYXMuh0AqT4iyZnKh3amSRLaIefMbdJ8bMABHLm/xuhO
	YvCeKUkhl45o2xeByvEfR0GU330cXxXLjIUHQphX3w==
X-Google-Smtp-Source: AGHT+IEj08lu/V17lBiZrNjbKWKvRqvDZZNZ8bzNfy7sHtIn/QLtZELxLSla78Lm9vOeDOamfqxS/Q==
X-Received: by 2002:a05:6402:c18:b0:533:c55f:582a with SMTP id co24-20020a0564020c1800b00533c55f582amr1805939edb.27.1695505251098;
        Sat, 23 Sep 2023 14:40:51 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3878:f900:10fc:1619:bea3:90d1? ([2001:9e8:3878:f900:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id y14-20020aa7c24e000000b00531050807a9sm3695475edo.13.2023.09.23.14.40.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 14:40:50 -0700 (PDT)
Message-ID: <e4e27517-f1b3-79d9-d0d2-4fb6cafda00f@ettus.com>
Date: Sat, 23 Sep 2023 23:40:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAPRRyxvFFoPU8cCDFigOb+obsZGtE_nNz6q8WppVyU7q3oR0Ug@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAPRRyxvFFoPU8cCDFigOb+obsZGtE_nNz6q8WppVyU7q3oR0Ug@mail.gmail.com>
Message-ID-Hash: KMOIQNMX7OQ5A6XBAEZ5NPXWYAAXB6GS
X-Message-ID-Hash: KMOIQNMX7OQ5A6XBAEZ5NPXWYAAXB6GS
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B200 Data Reception Issue on Windows 10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KMOIQNMX7OQ5A6XBAEZ5NPXWYAAXB6GS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

U291bmRzIGxpa2UgdGhlIFVTQiBob3N0IGNvbnRyb2xsZXIncyBXaW5kb3dzIGRyaXZlciBhbmQv
b3IgY29udHJvbGxlciBmaXJtd2FyZSBjb21pbmcgDQp3aXRoIHRoYXQgZHJpdmVyIGxlYXZlIHRo
aW5ncyB0byBiZSBkZXNpcmVkLiBJIGhvbmVzdGx5IGRvbid0IGhhdmUgYSBnb29kIHJlY29tbWVu
ZGF0aW9uIA0KdGhlcmUsIG90aGVyIHRoYW4gdG8gbWFrZSBzdXJlIHlvdXIgV2luZG93cyBkcml2
ZXJzIGFyZSB1cCB0byBkYXRlIOKAkyBXaW5kb3dzIGlzIG5vdCBwZXIgc2UgDQp3b3JzZSB0aGFu
IExpbnV4IGF0IFVTQi4NCg0KQmVzdCwNCg0KTWFyY3VzDQoNCk9uIDIzLjA5LjIzIDIzOjI4LCBJ
dmFuIFphaGFydGNodWsgd3JvdGU6DQo+IEhlbGxvLiBJIGhhdmUgYW4gaXNzdWUgd2l0aCByZWFk
aW5nIGRhdGEgZnJvbSB0aGUgVVNSUCBCMjAwIG9uIFdpbmRvd3MgMTAuIFdoZW4gSSBydW4gDQo+
IHRoZSBiZW5jaG1hcmtfcmF0ZSB3aXRoIGEgMjAgTUh6IHJlY2VwdGlvbiBiYW5kd2lkdGgsIEkg
c2VlIGxvc3NlcyBvZiBtb3JlIHRoYW4gNTAgDQo+IHBlcmNlbnQuIEhvd2V2ZXIsIHRoZXJlIGFy
ZSBubyBsb3NzZXMgZHVyaW5nIHRyYW5zbWlzc2lvbi4gSSBoYXZlIGZvbGxvd2VkIGFsbCB0aGUg
DQo+IGluc3RydWN0aW9ucywgaW5jbHVkaW5nIG1vZGlmeWluZyB0aGUgcmVnaXN0cnkgYW5kIGRp
c2FibGluZyBwb3dlciBtYW5hZ2VtZW50IGZvciBVU0IuIA0KPiBUaGUgc2FtZSBpc3N1ZSBvY2N1
cnMgZXZlbiB3aGVuIHVzaW5nIGFuIGV4dGVybmFsIHBvd2VyIHN1cHBseS4gQ2FuIHlvdSBwbGVh
c2UgYWR2aXNlIG9uIA0KPiB3aGF0IHRoZSBwb3NzaWJsZSBwcm9ibGVtcyBtaWdodCBiZT8gT24g
dGhlIHNhbWUgUEMsIHdoZW4gdXNpbmcgVWJ1bnR1LCBJIGNhbiByZWNlaXZlIDUwIA0KPiBNSHog
d2l0aCBhbG1vc3Qgbm8gbG9zc2VzLg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11
c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
