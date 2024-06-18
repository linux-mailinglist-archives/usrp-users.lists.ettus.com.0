Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58ABB90C09A
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2024 02:42:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 633F1385471
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 20:42:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718671331; bh=cSIwtA850o7L4VxqwHfIO/+JxCNyqOqj49BMTyexHA0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=b22U1imaLLXUeYmHccfg1TaAnqf/0mpQ94TY7dfeG7K+Aqgqo1q96Q0Vww+BePPnr
	 c3tsLbXmjyCcWQUIY4ggw5atV9Hsz7aM+5hO3yQSzVXMrv2uLe3Iu1Yy2uzNuUhwhl
	 QsMs1YOz1wzwuO09Vg/fcTMQM/W3TUZpoC33szB4gwxCG68bx9IwFf944LyQFf2zDs
	 ZGurBaMDVtK1nsePlqDy8K+CJPtJXBJwoq/mY7/8KYjpQrx43AG7cpFMAfA0Oc8z25
	 +a5EUkWRe/BygQO0KJY+qNJB135NT2Q4YBI1ymmDFLo9s3wmRGiUIsXZS5HSdnmg1O
	 AQNAdmYBSM+TA==
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A211385367
	for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 20:41:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IlzttnWE";
	dkim-atps=neutral
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-79767180a15so333045385a.1
        for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 17:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718671266; x=1719276066; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TEEVibwTT7HU7JtwByqdyMcqn/pavh1PBI0mSgwa/v8=;
        b=IlzttnWEHhhwoajV/KR7Bk5eCbg+dablb+UaB3MJYqSfljIRbuDsSeBbItuv+lIGx6
         dkJIEfwFUnQf/gffCcqfuzUSQXIW5z16LRCWQJgyN9eZ3OZ34lnCyJDqs4iTjTQXfBHS
         J6QXFkLVh2dinD/pat4cyzMnWwSocMmQCFpJvg+rywr+MTPKAwhIllCWrFZMPOrIo9RI
         7xN4T85kmfCjTrwOA9AF7V+7vjpGaRfNpzKIid3p3m904y5WhujS9UlcYPRVZsLXoUuH
         F70u4CMFh94vygu2yxorA+hSGWFDh9cDxFk8MSkpLtb59JmT6LIeQkPC+Q/Gq8Op4oeh
         J2Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718671266; x=1719276066;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TEEVibwTT7HU7JtwByqdyMcqn/pavh1PBI0mSgwa/v8=;
        b=qG5qe79kusZ0GMK/x5g5BeuoHyWBNbG4ID47B8OWn1gBwZa0BDvgNyR1S0253hU/YQ
         LsXnXoiAJIHKAhjHX/7Ws0YOlip8LXnhJWnnwrsVvaXdYgl9gohFgfV1hzJqaH6C3GxA
         opib1KvBV1X3pYhHsRV6yEkfKI1ma8xr7g9S4kbEDCbU32m4XXZYgnbAuCh9UnGMj/+m
         aVmu59H+a/4fFs2YcN/c47gFJUNkNsa94Q1M0mm/RYuZG0rcuxFFykEGD7Zv1y8ZhhGz
         PW+O+u+Sz+57iU01p+2fHjNfB3aMK3oHwb43vCLBYwY7J5h5gyTbY4NP0/AvAalAWraj
         QF8w==
X-Gm-Message-State: AOJu0YxuwjwWVTS/adS5JMpXsAMnxaPi4DJWcF3AcM9X55bpqCYQHj+d
	HB7Wce5qMtAAgQwkvlleAsy49/2ZQ6tqQ4MoMvTMpfFQgV+Yz6VGtQ0oSQ==
X-Google-Smtp-Source: AGHT+IHFWlRW5TsCuYptS+IowEUHZNkAH8rajuaaGoSbLyv5ecEuftBQ3pNgChaD/Gkf7+RhXK6P5Q==
X-Received: by 2002:a05:620a:1a81:b0:795:4c20:5f9e with SMTP id af79cd13be357-798d2693c23mr1246982085a.53.1718671266341;
        Mon, 17 Jun 2024 17:41:06 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-192.dsl.bell.ca. [174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-798ab4c0a22sm470331285a.58.2024.06.17.17.41.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 17:41:06 -0700 (PDT)
Message-ID: <9e019973-0499-408b-ae22-990cce4ff16e@gmail.com>
Date: Mon, 17 Jun 2024 20:41:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DBf1x17WGIqH4QirbWWApwVW9TwmgjFzIQmwhZAyj0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DBf1x17WGIqH4QirbWWApwVW9TwmgjFzIQmwhZAyj0@lists.ettus.com>
Message-ID-Hash: 4KQPCUV56KTZBZQV2BKGDVBU4J2UBYA2
X-Message-ID-Hash: 4KQPCUV56KTZBZQV2BKGDVBU4J2UBYA2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4KQPCUV56KTZBZQV2BKGDVBU4J2UBYA2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTcvMDYvMjAyNCAyMDoyOSwgY2pvaG5zb25Ac2VycmFub3N5c3RlbXMuY29tIHdyb3RlOg0K
Pg0KPiBJdCBpcyB0aGUgc3dpdGNoIHRoYXQgaXMgaW50ZXJuYWwgdG8geW91IGhhcmR3YXJlIG9u
IFVTUlAtMjk3NC4NCj4NCj4gWW91IGNhbiBzZWUgdGhlIHN3aXRjaCBiZWxvdyAoZnJvbSB5b3Vy
IGRvY3VtZW50YXRpb24pLiBJ4oCZbSBzZW5kaW5nIA0KPiBmcm9tIHRoZSBTQkMgKFNpbmdsZSBi
b2FyZCBjb21wdXRlcikgc2hvd24gaW4gdGhlIGRpYWdyYW0uDQo+DQo+DQo+IGh0dHBzOi8va2Iu
ZXR0dXMuY29tL0ZpbGU6Mjk3NF9ibGtfZGlhX2hpTGV2ZWxfdjAxLnBuZw0KPg0KUmlnaHQuwqAg
SSdkIGZvcmdvdHRlbiBhYm91dCB0aGUgMjk3NCwgd2hpY2ggaGFzIGhpc3RvcmljYWxseSBiZWVu
IA0Kc3VwcG9ydGVkIGJ5IG90aGVyIHBhcnRzIG9mIHRoZSBvcmdhbml6YXRpb24sIGFuZCBJJ20N
CiDCoCBub3QgZmFtaWxpYXIgd2l0aCBpdC4NCg0KWW91IG1pZ2h0IHRyeSBvcGVuaW5nIGFuIG9m
ZmljaWFsIHN1cHBvcnQgdGlja2V0IGZvciBpdCwgYXNzdW1pbmcgdGhhdCANCnlvdSBoYXZlIGEg
c3VwcG9ydCBjb250cmFjdCwgb3IgdGhlIGRldmljZSBpcw0KIMKgIHVuZGVyIHRoZSAiaW5pdGlh
bCBicmluZy11cCIgcHJvdmlzaW9ucyBvZiB0aGUgTkkgcHJvZHVjdCBzdXBwb3J0IA0KYXJyYW5n
ZW1lbnRzOg0KDQpodHRwczovL3d3dy5uaS5jb20vZW4vc3VwcG9ydC5odG1sDQoNCg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
