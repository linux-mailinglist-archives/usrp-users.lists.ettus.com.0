Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 934F43F250A
	for <lists+usrp-users@lfdr.de>; Fri, 20 Aug 2021 04:56:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D96723846BF
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 22:56:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YAf83feC";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 69F62383F57
	for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 22:55:44 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id az7so9472315qkb.5
        for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 19:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=HS8Nkye2TLdMEteUvTbVL/Zo+SpB1JtE+29IBF9aGXs=;
        b=YAf83feCbsA8SPO+yj1razc5Sdm2QF7iHXECa4b8NB/VJ9qEiJUBBEpbM/yRifKBrX
         nBhCRNykQxxmJ0WLJURISrAuju5WFhzFIaxGuTAOrD2gKi6UQcHK347CRY/Pc5lOC1aX
         Li0TBa5V54JrK9U7ytc1h51LMRerud38sayJZVbmwBOQ0uvmbR129WdIJcNTU/LCF9ON
         PwIeftvggB1vquxYmTVSzI87/eHW8BGHa5hDCzRupE5afXxXiKDSlSBD438eSNk0pjLx
         lm7L83ncpV2Uqf1EUYS+y2mctgu2DOLzR2zDBP7Do/R/U9AOtyhGZLE3ibyK/Qm7O1VE
         Rq8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=HS8Nkye2TLdMEteUvTbVL/Zo+SpB1JtE+29IBF9aGXs=;
        b=WXNeF7gdaBSSbcGD/hFQKDwvDVEH97XscfC8/tpHr9z0ly76cT32zIwsXIMUclq4sG
         2yLHCC0K15QZdfqYycMWJXYx+TviSnkZOdZuMmlKGHbF18QOkg9L7iafokDmvhL5Z3Lu
         vI4J3a3Ti3YPn95PV7v2uHEXy7uh2ajkw09nKk4vJJIpnoRq3TYcTgzTI7az2oSFLLIi
         WE9a06G6YaqUA4c3Byo74Ik3n25uzVaFcPHDOlbZG+g0V4eL9CLdcjhoy+NU+NtWIBsa
         cpie/ySewqmZtH4mpYO8r3OYJ8c6PsudZxGp1rlLSMDuaGC8QHCO/dbmMSS/dAbzK+CR
         wsKA==
X-Gm-Message-State: AOAM531D58WQ0JJabvKbVjuFPw9pY09gggUzpFlxDRtgamsW9gt4JpW9
	A1rVX/kJGJrScKtbiaDtk4LEltRSTkg98Q==
X-Google-Smtp-Source: ABdhPJwieOSC7+s+PS3DMdwcML5LLk90hgXVOgytMirBByuJY67T1Zw+kd3y2PuBF2SG4VhYVZPk5Q==
X-Received: by 2002:a05:620a:2185:: with SMTP id g5mr6874123qka.244.1629428143669;
        Thu, 19 Aug 2021 19:55:43 -0700 (PDT)
Received: from [192.168.2.19] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id k186sm2641483qkd.47.2021.08.19.19.55.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 19:55:43 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <Smou4TUXp29NTR43gywelgFW4TudrsuU5aHCEg43fE@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <6e3c64c9-7624-1a0e-94b7-23ff57b6e525@gmail.com>
Date: Thu, 19 Aug 2021 22:55:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <Smou4TUXp29NTR43gywelgFW4TudrsuU5aHCEg43fE@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: K22BHGWVPBCO5FAPY5WYPA3Q6ISDNJ3S
X-Message-ID-Hash: K22BHGWVPBCO5FAPY5WYPA3Q6ISDNJ3S
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Frequency synchronization with B205-mini and B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K22BHGWVPBCO5FAPY5WYPA3Q6ISDNJ3S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0wOC0xOSAxMDoxMSBwLm0uLCBrbTVlc0B2aXJnaW5pYS5lZHUgd3JvdGU6DQo+DQo+
IFRoYW5rcywgTWFyY3VzLiBUaGlzIGlzIHdoYXQgc3VwcG9ydCB0b2xkIG1lIGFzIHdlbGwuIFdo
YXQgaXMgdGhlIA0KPiBwdXJwb3NlIG9mIHRoZSBFWFQgUkVGIG9uIHRoZSBCMjA1LW1pbmkgaWYg
bm90IGZvciBzeW5jaHJvbml6YXRpb24/IElzIA0KPiBpdCBvbmx5IHRvIGhhdmUgYSBoaWdoZXIg
ZnJlcXVlbmN5IGFjY3VyYWN5IGZvciBzdGFuZGFsb25lIGFwcGxpY2F0aW9uPw0KPg0KUHJldHR5
LW11Y2gsIHllcy7CoCBUaGVyZSB3ZXJlIGhvcGVzIHRoYXQgaXQgY291bGQgYmUgdXNlZCBmb3Ig
DQpjcm9zcy1kZXZpY2Ugc3luY2hyb25pemF0aW9uLCBidXQgdGhlIERQTEwgaW4gdGhlIEZQR0Eg
c2ltcGx5IGlzbid0IHVwIA0KdG8gdGhlIHRhc2suwqAgVGhlDQogwqAgcmVzaWR1YWwgbXV0dWFs
IHBoYXNlLW5vaXNlIGlzIGp1c3QgdG9vIG11Y2guDQoNCg0KPiBJIGludGVuZCB0byBwaGFzZS1j
YWxpYnJhdGUgYW4gYW50ZW5uYSBvbiB0aGUgZ3JvdW5kIGJ5IGZseWluZyB0aGUgDQo+IEIyMDUt
bWluaSBhcm91bmQgaXQgb24gYSBkcm9uZS4gSSBpbnRlbmQgdG8gdXNlIEdQU0RPcyBvbiB0aGUg
ZHJvbmUgDQo+IGFuZCBvbiB0aGUgZ3JvdW5kIGZvciBmcmVxdWVuY3kgc3luY2hyb25pemF0aW9u
LiBJIGltYWdpbmUgaWYgdGhlIG1pbmkgDQo+IHdvbuKAmXQgd29yayBJ4oCZbGwgaGF2ZSB0byB1
c2UgYW5vdGhlciBCMjEwIGluc3RlYWQgKHdoaWNoIGlzIGFub3RoZXIgDQo+IGVuZ2luZWVyaW5n
IGhlYWRhY2hlIHRvIGRlYWwgd2l0aCkuDQo+DQo+DQpQaGFzZSBjYWxpYnJhdGlvbiBzaG91bGRu
J3QgcmVxdWlyZSBhIGNhbGlicmF0b3IgdGhhdCBpcyBzeW5jaHJvbm91cyB0byANCnRoZSByZWNl
aXZlcnMtLXRoZSByZWNlaXZlcnMgbmVlZCB0byBiZSBzeW5jaHJvbm91cyB0byBlYWNoIG90aGVy
LsKgIEkndmUgDQpkb25lDQogwqAgc29tZXRoaW5nIHNpbWlsYXIgKHdpdGhvdXQgdGhlIGRyb25l
KSB1c2luZyBhbiBleHRlcm5hbCBub2lzZSANCmdlbmVyYXRvciBiYXNlZCBvbiBhIEIyeHguwqAg
QnV0IGV2ZW4gc29tZXRoaW5nIGxpa2UgYSBkaW9kZSBub2lzZSANCmdlbmVyYXRvciBhbmQNCiDC
oCBkaXJlY3Rpb25hbCBjb3VwbGVyIHJpZ2h0IHVwIGF0IHRoZSBhbnRlbm5hIHNob3VsZCB3b3Jr
Lg0KDQpUdXJuIG9uIHRoZSBub2lzZSBnZW5lcmF0b3IsIHVzZSBmYXN0IGNvbnZvbHV0aW9uIHRv
IGNvbXB1dGUgdGhlIA0KY3Jvc3MtY29ycmVsYXRpb24sIGFuZCBkZXJpdmUgdGhlIGRlbGF5cyBh
bmQgcGhhc2VzLg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20K
