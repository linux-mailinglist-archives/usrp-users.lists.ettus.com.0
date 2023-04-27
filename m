Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5981D6F0B01
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 19:37:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 882393845EC
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 13:37:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682617035; bh=d83uXoCzzpWcZ/ZTwmB+KNemZqseKkfdDv1EJRuW92w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=dtD2NhFwaWe6FcqtvsCaFD5UsQ4VUj1Z2ccTwgjrwOMXcxF6QdvfwC4c4YAnvyXDa
	 sIiAXLcaqKjHRxVchahCSRfNJVlISTIvC0Rnfs7htBIVJ0cfIlldGlBRTa+1PwhjHM
	 5tvJbkR8fDh8nPZbwZ0l//oM91XWBQ41+6ppjyaJJvdBBoheZTr6OHTyusyHKyDTa0
	 L7dOUUTsDAOkThkNINVJkpbkhWEDd0P4nxIL1y9SlDa5v4ghSZ1iFqGsKrwD5yyu3F
	 O2Haoh6rTO5azQHUdBIP9efAmZDagxp5IVhbdgrQIat1mc/AosBl1EaWwXYRev/Jeq
	 JtXe87d8bFLpA==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 06A4A3842A9
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 13:36:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="e9EpMPhN";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-5ef4d902708so82722366d6.2
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 10:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682616995; x=1685208995;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I9HTE0TIzKcUqrxnJFEUD4+nDOsb9A6zeFChZvx3RCY=;
        b=e9EpMPhNE3Gc9F2S57kUpoldeMIw08vKL2WkaoPvYHnrh+VqDiQESrs6OTACSZbm4G
         SO4YrWZ26Qg/5U8fRbQ1aRCjrAkSuy0YxDVWIx6Mag/NujF5X05aTu9Skm3k6wWgGHSQ
         uI5BsWpimVNRk6yubwp4uaMkR5TCXY1a7aKdn08iKiAsfAtDSyqTK4vunDNlZCaQf+R5
         dhX3OAl3QzOuRQ+6pnuzJ2gljrwVTW/O6NoPX04sN3moen/6I4QZX2hqmwLhZW8P+4ey
         VHA2aHJH850L8z7nFGg9f/sOurWDigCjNqWhJO2AT+RjyaLb1fivC43gXgG5LBM62ZIf
         jvSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682616995; x=1685208995;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I9HTE0TIzKcUqrxnJFEUD4+nDOsb9A6zeFChZvx3RCY=;
        b=QB/CRtPgpR/Hg99begRUQUDUoK4fRcmJ5Cxiw+tHPSHtHrhSoSYnENROPFP1oKxnpx
         Xp323qtnJvN0AhAy+oMXeV9Fr9x/6m8sOuKzLDGp7r0hRo6TNqWy4M6NSww70s+Vy3q7
         pXnezGD61/hc4v/pZ5mTXYk5UMNy6W3HPVDRxRslQyEDohNAl0zVqX+1zyhSCM/GocOO
         iDg+NO74rPLKb3sRGw8u0qKEs4pusmLfIkH8TGybPBYD8Q9sUza7e9AXOt6h5fmfdQ+T
         KOesrq6zF5MOfNsXTFfhJlLV+W2EpaFfVIfdh23mWa8uIsdX9cBiks63O4JteB9YZZnN
         8FBw==
X-Gm-Message-State: AC+VfDwOTlT2spdrGh5bZHJfF+qHdN5yYoh1tbtQa4LvgUhBX2G3QeR+
	O6pBR6Oj/LchFHgPFotNKPD6I9RxJiE=
X-Google-Smtp-Source: ACHHUZ6mJjNotL9vSydbzFsI5UE7hrZlXGr9Ziu7c0yXDgdabTRJOVZgY5iSbqbXXOtA0B794ZVnKg==
X-Received: by 2002:a05:6214:5015:b0:5f1:5cf1:b4c0 with SMTP id jo21-20020a056214501500b005f15cf1b4c0mr3688917qvb.38.1682616995363;
        Thu, 27 Apr 2023 10:36:35 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id g11-20020a05620a40cb00b00706b09b16fasm6115622qko.11.2023.04.27.10.36.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 10:36:35 -0700 (PDT)
Message-ID: <97ee42a1-1e00-5686-d86b-8f425255aca3@gmail.com>
Date: Thu, 27 Apr 2023 13:36:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PdsHKwYBKRyYR85Maxr65vFeBwLCSc19O1PQBuISvg@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PdsHKwYBKRyYR85Maxr65vFeBwLCSc19O1PQBuISvg@lists.ettus.com>
Message-ID-Hash: Q6HNPOTZTS7JVWB7WS77D3CPUPFXUPG4
X-Message-ID-Hash: Q6HNPOTZTS7JVWB7WS77D3CPUPFXUPG4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q6HNPOTZTS7JVWB7WS77D3CPUPFXUPG4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMDQvMjAyMyAxMzoyNSwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBDdXJy
ZW50bHksIEkgYW0gdXNpbmcgMTkyLjE2OC4yMC4yKGFzIGlmIHRyeWluZyB0byBzdHJlYW0gZnJv
bSBwb3J0IA0KPiBTRlAxIGluc3RlYWQgb2YgU0ZQMCkgaG93ZXZlciwgc3dpdGNoaW5nIHRvIGVp
dGhlciBwb3J0IGFuZCB1c2luZyANCj4gZWl0aGVyIDE5Mi4xNjguMTAuMiBvciAxOTIuMTY4LjIw
LjIgZGlkIG5vdCByZXN1bHQgaW4gYW55IGNoYW5nZS4gSSBhbSANCj4gdW5hYmxlIHRvIHBpbmcg
dGhyb3VnaCB0aG9zZSBhZGRyZXNzZXMgYW5kIEkgZW5zdXJlZCB0aGF0IHRoZSBNVFUgaXMgDQo+
IHNldCB0byA5MDAwLg0KPg0KPg0KSWYgeW91IGNhbm5vdCBwaW5nIHRob3NlIGludGVyZmFjZXMs
IHRoZXJlJ3Mgc29tZXRoaW5nIHdyb25nIGluIHRoZSANCm5ldHdvcmsgc2V0dXAuwqAgWW91ciBo
b3N0IG5ldHdvcmsgY2FyZCBpc24ndCBzZXR1cCBwcm9wZXJseS4NCiDCoCBUaGUgUEhZIGxheWVy
IGhhcyBhIHByb2JsZW0gKGJyb2tlbiBjYWJsZSwgZXRjKS7CoMKgwqAgSG93IGFyZSB5b3UgDQpw
aHlzaWNhbGx5IGNvbm5lY3RlZCB0byB0aGUgTjMyMT/CoCBIYXMgYW55b25lIGNoYW5nZWQNCiDC
oCBpdHMgYWRkcmVzcyB0byBzb21ldGhpbmcgZWxzZT8NCg0KWW91ciBuZXR3b3JrIGNhcmQgd2ls
bCBoYXZlIGxpZ2h0cyB0aGF0IGxpZ2h0IHVwIHdoZW4gdGhlcmUncyBhIHZhbGlkIA0KUEhZIGxh
eWVyIGNvbm5lY3Rpb24tLWRvIHRoZXkgbGlnaHQgdXA/DQoNCklzIHlvdXIgaG9zdCBOSUMgYWN0
dWFsbHkgY2FwYWJsZSBvZiAxMEdpR2UgY29ubmVjdGl2aWl0eT8NCg0KDQo+IFdoZW4gSSB1c2Ug
d2lyZXNoYXJrIG9uIHRoZSBob3N0IGNvbXB1dGVyIGFuZCBhdHRlbXB0IHRvIGNvbm5lY3QgdXNp
bmcgDQo+IHRoZSBub24gbWFuYWdlbWVudCBhZGRyZXNzZXMoaS5lIC4vcnhfc2FtcGxlc190b19m
aWxlIC0tYXJncyANCj4gYWRkcj0xOTIuMTY4LjIwLjIsbWdtdF9hZGRyPTE5Mi4xNjguMS4xNTEp
LCBJIG5vdGljZSB0aGF0IGhvc3QgDQo+IGNvbXB1dGVyIGlzIHNob3V0aW5nIGxvb2tpbmcgZm9y
IDE5Mi4xNjguMjAvMTAuMiwgYnV0IGlzIHlldCBzdGlsbCANCj4gdW5hYmxlIGZpbmQgaXQsIGFu
ZCB0aGVuIGl0IHJlcG9ydHMgYmFjayB0aGUgZXJyb3IgbWVudGlvbmVkIGF0IHRoZSANCj4gYmVn
aW5uaW5nIG9mIG15IHBvc3QuDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11
c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
