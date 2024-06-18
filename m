Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8C390C0AD
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2024 02:48:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB0D738549A
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 20:48:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718671694; bh=P2WTINf4haTfJa2MQAfzwvJc4pK/RYpEJpKkqu9idYE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=L8Bc1Z4vBrJatHoW5fEov/CB4QqAFFZcjV5noHiFvVTjf8DzZ8fz0JYXSIiNO9vQ7
	 +9n706UBLaH1VKkFzMuSSEqF5n1TL1eq+fv/TkbVlz/x+EbwHbz9NsPqRe0A3xIfdE
	 Qsm2ZqnGgRuhdDM0DtosUS8Xlfo8+u9ovV5mlJsqC1kKUuN9y0X/V30xzVACLaTVbZ
	 wtQHftIPZ5e7GccpsOJk6SoMn8DPbfWOOUqcpC3a0klq0wEw9dQNV4GCKhVjeYjAqV
	 ixRHm9aL/0Yyp2Qh8eAFEC/mj/Lbo9cttb51IYTIbSzRQaOQcoucS01BrXmDJs5gvF
	 x6aPWm50/nm/w==
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 4044F385094
	for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 20:47:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZeHUvJ6E";
	dkim-atps=neutral
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3d21c4eec2dso2603188b6e.1
        for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 17:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718671631; x=1719276431; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OFbDgWfZ+rEmmtjIPGTsa8btKJqz701Pz3anaoJU0a4=;
        b=ZeHUvJ6EkHjUBxBqe0ekvCz44FDwKojrUQ30RHGyIuVV6CMvrAyTM7w0kAmSOCrRnw
         pSmOp8j/wfn6GMzdgSYndQboUDEmAgrdINiSpYW/jMDG+y86iQO2mZQ6Qw2CxVaYv2Bb
         MrP02DF92OuKGNAtCYQYfaWLcRAmXNtKQh26Tshk41Ezd1/iVqvnIpjvCo4OC1/1l/6f
         NjIsmhNMPskjhdHZBJjaSU6mIVQ+0CYHo2KMFUcJ8iZP4/j27O1qwKcro5ZIpPhlnpod
         LfHs1xz51qKpEIqe/27remift9V6viQukyyOlDFaBatpByjXXFepFEjVhWSK7wsvMH4Z
         ex+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718671631; x=1719276431;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OFbDgWfZ+rEmmtjIPGTsa8btKJqz701Pz3anaoJU0a4=;
        b=oIQFIDzUFIDA+na5htO7E1JT/qu/73doba2rT/QbqA3BNWT4LG+3r33VZsufd8H4Px
         lEjExkEQ+/TkpMa8mxI+oAkEIhasPtJ8QjKwsDUlvHjMHN20pgaWZExkDOCvVo82UjB+
         IwnscVfKZLGiqiPcGoVZbRvcThbgnCtdK/Omd9FW0BKk/ypfk0EIAasmEt9Ed+26bc/O
         4RG24u6amjwzExKjJuzrwuB73XVCgIcSws4y+fxfykCL+kQThgRCObkWOhm4DAGWSI8e
         t7rDBwiDiUhnKZcGBVzzg1/9gyoGPDGL315yjxb5AwJ6P+ZC8rJZoLpASCpNuYFFc2Mb
         yJKQ==
X-Gm-Message-State: AOJu0YzCxZICiLoW2Qvay7pbAzDGYj/2WE7vmJGdDfi1l6HLe5ay/6VR
	naFvuo+uPEmIWRr5tapdQPeNFOsHOhBHIEutYyf532opBlhROeR+r8ujEQ==
X-Google-Smtp-Source: AGHT+IEVU8yA4ynvWr/9xBDQ1Mzfv58VP0gVB4W/jXWvsvS6qAs/HUJ+y76HPWRUe9ab5h/6DrIKcA==
X-Received: by 2002:a05:6808:2381:b0:3d2:200b:9258 with SMTP id 5614622812f47-3d24e8cc565mr12932130b6e.14.1718671631234;
        Mon, 17 Jun 2024 17:47:11 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-192.dsl.bell.ca. [174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-798aaecc7f3sm476193185a.43.2024.06.17.17.47.10
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 17:47:10 -0700 (PDT)
Message-ID: <4e9892d2-863e-4464-87ab-36d23df2dc19@gmail.com>
Date: Mon, 17 Jun 2024 20:47:10 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DBf1x17WGIqH4QirbWWApwVW9TwmgjFzIQmwhZAyj0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DBf1x17WGIqH4QirbWWApwVW9TwmgjFzIQmwhZAyj0@lists.ettus.com>
Message-ID-Hash: Q6CPQ7FMWGD6QMYAI26RGCHBL3XQ6GQB
X-Message-ID-Hash: Q6CPQ7FMWGD6QMYAI26RGCHBL3XQ6GQB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q6CPQ7FMWGD6QMYAI26RGCHBL3XQ6GQB/>
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
ZXR0dXMuY29tL0ZpbGU6Mjk3NF9ibGtfZGlhX2hpTGV2ZWxfdjAxLnBuZw0KPg0KPg0KPg0KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
DQpJbnRlcmVzdGluZ2x5IGVub3VnaCwgSSBqdXN0IHRyaWVkIGEgcGluZyAtcyA4MTAwIG9uIG15
IFgzMTAsIGFuZCB0aGVuIGEgDQpwaW5nIC1zIDgxMDUsIGFuZCB0aGUgODEwNSBmYWlsZWQuwqAg
TG9va2luZyBhdA0KIMKgIHByZXZpb3VzIGxvZyBtZXNzYWdlcyBmb3IgbXkgYXBwbGljYXRpb24g
aXQgYWxzbyBjbGFpbXMgODAwMCBieXRlIA0KbWF4aW11bSBmcmFtZSBzaXplLCBzbyB0aGlzIG1h
eSBiZSBhIGxpbWl0YXRpb24NCiDCoCBpbiB0aGUgUEhZL01BQyBpbXBsZW1lbnRhdGlvbiBpbiB0
aGUgWDMxMCBGUEdBLg0KDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQo=
