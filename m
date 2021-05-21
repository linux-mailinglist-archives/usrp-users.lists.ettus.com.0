Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 711B938C760
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 15:01:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B5A00385317
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 09:01:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="biuuLf7L";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 836CD385407
	for <USRP-users@lists.ettus.com>; Fri, 21 May 2021 09:00:34 -0400 (EDT)
Received: by mail-qt1-f179.google.com with SMTP id t20so15171943qtx.8
        for <USRP-users@lists.ettus.com>; Fri, 21 May 2021 06:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=CARDGT0Bw2H/vZw/ZRng1xy/iDyTBjNDmEUnx3UdPdQ=;
        b=biuuLf7LS4yYDL6pJrSCU424usDg3IQhU4Fzn5iaXcOY1QsAfmbJHLHy5j/I0GIj55
         jTdOlGVUFV66kQpc8jE2uraQaYchV96SdLJZtfp0nAbikqm2eTmAdH6dtIboNIJvNeu7
         w3On/UucKDG/V7V4W786L5YCrIE5DKFGM4wWbdsCaWbmCjVuYDbjL6zt/cLYi2djjDPv
         DCbmJPSb4KRlUTgEH1eyanbtSbpjfpZ/hzWY+Fiaxw4/q9tsnCjDUu/l8OXLUVoQI6cq
         nZ7Y3ebEDlzAklRdQmAquYuokpGLgS6zf6f6be1I15OllOSGcnaDBPZ7cOENMwL+jQ7z
         ktQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=CARDGT0Bw2H/vZw/ZRng1xy/iDyTBjNDmEUnx3UdPdQ=;
        b=AiAmBYDJ13X+NCDqK0vj74XT24FrOFtiXd/IF0FdsMAVS5t699TcCqkgBlCP7TJ/30
         kYFKWRgArYVdSVtMMf5mw76dAmIYTgkrlh58lKbqHlKkbnwYyodK24uY6fzB1sJkViil
         QEfHpYP8fMIEb4hKavH5wY26ixS0/TGWj1MBz96hbYxSSRzRWxMbGPHciOKXVYjm7uIC
         MY5NSTZsHW4CoptHeL1givlJD/DKY8QE1eW/8xUcejwFJ01mGjjAf2PCOvz4oLKH7ARP
         dEAWrU7FGEQlC9fHtD9pGjCPP45kVeEnKMEuZXpg1oncTFBqcD7jIWNwN6y2l22JuAQe
         d1dA==
X-Gm-Message-State: AOAM532KNV0Mp/cB2o+PnUwjw4DIotYJHoVbJAl0E9lxTzTqxmF4Cyoi
	hzFVqIETQuaqjA7uihmjYXA=
X-Google-Smtp-Source: ABdhPJyQD1Zs5Qwu1xYWYjMDERtUp1u3/4fiANCZF+9CWicIr4AH72EXForB6xc5zpQah2V7cC2PBQ==
X-Received: by 2002:ac8:5846:: with SMTP id h6mr11088760qth.215.1621602034082;
        Fri, 21 May 2021 06:00:34 -0700 (PDT)
Received: from [192.168.2.132] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id b3sm4346589qtg.55.2021.05.21.06.00.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 06:00:33 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 21 May 2021 09:00:33 -0400
Message-Id: <157DBD65-B914-4138-9752-C21735C0AF8E@gmail.com>
References: <20210521094441.yvoqqxrqv7ioh23v@barbe>
In-Reply-To: <20210521094441.yvoqqxrqv7ioh23v@barbe>
To: =?utf-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: ZGD5YCGL5UCGJ6GYWC57CAWYYSPJUX3G
X-Message-ID-Hash: ZGD5YCGL5UCGJ6GYWC57CAWYYSPJUX3G
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E312 died
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZGD5YCGL5UCGJ6GYWC57CAWYYSPJUX3G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGF2ZSB5b3UgdHJpZWQgZGlzY29ubmVjdGluZyB0aGUgYmF0dGVyaWVzIHRvIHNlZSBpZiBpdCB3
aWxsIHN0YXJ0IHdpdGhvdXQgdGhlbT8NCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQo+IE9uIE1h
eSAyMSwgMjAyMSwgYXQgNTo0NSBBTSwgQ8OpZHJpYyBIYW5ub3RpZXIgdmlhIFVTUlAtdXNlcnMg
PHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToNCj4gDQo+IO+7v0RlYXIgYWxsLA0K
PiANCj4gSSBib3VnaHQgc29tZSBFMzEyIGxhdGVseS4NCj4gU29tZSB3ZWVrcyBhZ28sIG9uZSBv
ZiB0aGVtIGRpZWQ6DQo+IC0gcmVmdXNlIHRvIHBvd2VyIG9uDQo+IC0gdGhlIGxlZCBzdGF5cyBv
ZmYgZXZlbiBhZnRlciBwbHVnZ2luZyB0aGUgcG93ZXIgc3VwcGx5DQo+IA0KPiBJIHRob3VnaHQg
aXQgd2FzIGp1c3QgYW4gaGFyZHdhcmUgZGVmZWN0Lg0KPiBJIHdhcyBnb2luZyB0byByZXF1ZXN0
IGZvciBhIHJlcGFpciBhbmQgbW92ZSBvbi4NCj4gQnV0LCB5ZXN0ZXJkYXksIGFub3RoZXIgb25l
IGRpZWQuLi4NCj4gDQo+IEkgd291bGQgbGlrZSB0byB1bmRlcnN0YW5kIGFuZCBhdm9pZCBhIDN0
aCBkZWF0aC4NCj4gSGFzIGFueW9uZSBldmVyIGhhZCB0aGlzPw0KPiANCj4gSSBhbSBub3QgZXZl
biBkb2luZyBhbnl0aGluZyBjcmF6eSB3aXRoIHRob3NlIG9uZXMuDQo+IFRoZXkgYXJlIHVzZWQg
YXMgYmVhY29uICh0cmFuc21pdCBhIHBheWxvYWQgcGVyaW9kaWNhbGx5KS4NCj4gV2hlbiBJIGdv
dCB0aGVtOg0KPiAtIEkgdXBncmFkZWQgdGhlbSB0byBVSEQ0DQo+IC0gc2V0IGEgc3RhdGljIElQ
IGFuZCBlbmFibGVkIG1ETlMNCj4gLSBidWlsdCBhIGNwcCBwcm9ncmFtIHNpbWlsYXIgdG8gdHhf
YnVyc3QgKHJlYWQgYSBmaWxlLCBzZW5kIHBlcmlvZGljYWxseSkNCj4gLSBjb25maWd1cmUgYSBz
eXN0ZW1kIHRpbWVyIHRvIHN0YXJ0IHRoZSBwcm9ncmFtIGF0IGJvb3QgYXMgc29vbiBhcw0KPiB0
aGUgcmFkaW8gaXMgYXZhaWxhYmxlIChzbyB0aGF0IEkgbmV2ZXIgaGF2ZSB0byBkcm9wIGEgc2hl
bGwpDQo+IA0KPiBXaGVuIEkgbmVlZCB0aGVtLCB0aGUgcHJvY2VkdXJlIGlzIHNpbXBsZToNCj4g
LSBwb3dlciB0aGVtIG9uDQo+IC0gcGx1ZyB0aGVtIGlmIHRoZWlyIGJhdHRlcmllcyBhcmUgZW1w
dHkNCj4gLSBnbyBvbiB3aXRoIHRoZSByZXN0IG9mIHRoZSBleHBlcmltZW50DQo+IC0gd2hlbiBJ
IGFtIGRvbmUgZXhwZXJpbWVudGluZywgcG93ZXIgdGhlbSBvZmYgYW5kIHVucGx1ZyB0aGVtDQo+
IA0KPiBUaGV5IHdvdWxkIHJlc3QgaW4gYSBsYWIgdW50aWwgSSBuZWVkIHRvIGRvIGFub3RoZXIg
ZXhwZXJpbWVudC4NCj4gQW5kIHR3aWNlLCB3aGVuIEkgd2VudCBiYWNrLCBvbmUgb2YgdGhlbSB3
b24ndCBwb3dlciBvbiBhbnltb3JlLg0KPiANCj4gUmVnYXJkcw0KPiAtLSANCj4gDQo+IEPDqWRy
aWMgSGFubm90aWVyDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQo=
