Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 259198CC346
	for <lists+usrp-users@lfdr.de>; Wed, 22 May 2024 16:35:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E945038565F
	for <lists+usrp-users@lfdr.de>; Wed, 22 May 2024 10:35:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1716388546; bh=LPhp7zMvfAjtlMIG6BuNdwNTpH1rcjCzuS8y1CCxffo=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=RTtpG+1ZUDJXwQyAu+fZmTiy9xJLsR7x9QY/wfz7vCH/7+N06qaanea1jI2NRUdMa
	 d5RZhbn7xAlnf7tqcirOYkIU2vQYFEpk/l1wAv9h3rtRcTnrI9OlInFg+7vekJxLEz
	 diJGCQ8etHy3S77SJKfbfIB9e5wkSbKt9p1rJ3QqSAmfXqN7c0YFy0UAXlblIVBDHQ
	 6GCA3ckrzqLy/i5iEogQzXnaBBbquYtxZJjoOhUyTL2t8Tsr1szuEUtcDpyFtpryGw
	 NQXRmZ5fLL512HBLnhnkYa2vplNKi0UEswjwdqQPbGjCj2MmrtDxoFk7eFIEcS2fRV
	 ScXxmZLYICbEw==
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 8F6E13856BE
	for <usrp-users@lists.ettus.com>; Wed, 22 May 2024 10:35:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="EzsKP7l1";
	dkim-atps=neutral
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-51f45104ef0so6488650e87.3
        for <usrp-users@lists.ettus.com>; Wed, 22 May 2024 07:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1716388541; x=1716993341; darn=lists.ettus.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dAGsPNy9yMd77gHSdqgggUZcmRFSRulsJTRN6Qqzn0c=;
        b=EzsKP7l1S3Td68wfTsZylgLZqorbb1UEzRln85iI6qURWsmryRKHkfWPamuUPQWkul
         Jyhy+cKaQexe21Ksk0ffl32YtrRQn61+hpURN7owFfEolPPo5hmw7L658p80dqm88ll5
         HqFPwsyFHsZAfYxkRuhOJ+0OJgQ4P0ERX1zHLsJ8ROHvK9CvoPynhp06DzhlU1/vZ3/l
         sxgjiF7l2afeInmcWzddiRSSfmEI8Larq28r0cmlxOMp4wcd2xmoI/h80g4bjiOemLjE
         WKUqeWiOM/LI6s9Q3sxvUTxUHtBFCfjLaS1usBJY7MMEX3nTpeeWK+2RMUHiXl0waq3a
         W4OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716388541; x=1716993341;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dAGsPNy9yMd77gHSdqgggUZcmRFSRulsJTRN6Qqzn0c=;
        b=q+amQkSjwNxmW2xaa+HYIEm2e5+IoDJA0TtuTWd/dyBLNFUIyRyB+vrz40O0EjqVWd
         /V41gDsGxV71Dghpccc3vQuEh+NJ9fc+nJkzf49dMJz/X9MFNupLGz6tMD6k65e01lnt
         3OrW4lJ4H07OPIuzacV0tOV58IADjWO8tbuqFBsJnmB62Ny3s2CPu9MR1jcRN2DEfS0v
         RIgV40Rf0pD436ptReNyEm6yGrq42kJ62tKUGl/ms8FIXZfDKg/b28nS3Nk0q/PHMoGY
         XInOwVbuVygXIpq8KiPmv0HqCBK0I2iYC42B9H3/8nQwh2jk+iq/P/P1op2iDHcWpcPd
         bQCw==
X-Forwarded-Encrypted: i=1; AJvYcCUZjSxiPz0iXAX9/A0SNlkr8ORSHJ8YlCu8GZbdFD+hQIl0vTuPo8QfNDGKbgNIeKvXnuSWDf5WMKmt045uxELUL+lai5tLU1tZGA==
X-Gm-Message-State: AOJu0YwQ7Lar0WUb6e5XX2PCIaD5T3PHFFkOD/+xdKq4M2eID+ub9P86
	nnHIymvGTUYAoU65X5pTomrMmhVSGtueBi8kiSLNl6RiJnUk7tJRQI2yyRbD4wlgynHQANtlIkA
	yGNJweQGHJhxo4BuM4GfUXix32lAWjaA50h/Z
X-Google-Smtp-Source: AGHT+IGaz3xUB78MOBVbyI6X+4v0OELd7o+JEpQnoWgULnCB6ixT/SL3iKFVgFQiJ7ySTw+ojUVdVMR6bCqjeydX8WY=
X-Received: by 2002:ac2:4c10:0:b0:518:95b6:176f with SMTP id
 2adb3069b0e04-526c068ea7cmr1272885e87.50.1716388540742; Wed, 22 May 2024
 07:35:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAKtd9vZ-PSEoxzJEd75a9+qi0G2KSS+mCFBONviF1vjNPi=xYQ@mail.gmail.com>
 <2862204e-0827-47dd-b0b9-242fcef9cbcf@gmail.com> <CAKtd9vZN207i0JRF86-kRga7T_ixfOat8MQf5EyVA6rYpEHgqw@mail.gmail.com>
 <ef55f6e4-5124-4c19-80e2-8d7592c1cbd9@gmail.com>
In-Reply-To: <ef55f6e4-5124-4c19-80e2-8d7592c1cbd9@gmail.com>
Date: Wed, 22 May 2024 10:35:29 -0400
Message-ID: <CAB__hTSz0EnaHrpr+mRZHiSXYfb-YaofAJ2oGWR1BGaOMrLKAA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 2DBQVP4ZSYTJM5HKUJSW7J6EEBSNIO6Z
X-Message-ID-Hash: 2DBQVP4ZSYTJM5HKUJSW7J6EEBSNIO6Z
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Hamid Niknami <hniknami@logitech.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Recording and playing back RF Activity
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2DBQVP4ZSYTJM5HKUJSW7J6EEBSNIO6Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXkgMjEsIDIwMjQgYXQgOTozNOKAr1BNIE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2
b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBPbiAyMS8wNS8yMDI0IDIxOjA1LCBIYW1p
ZCBOaWtuYW1pIHdyb3RlOg0KPg0KPiBUaGFuayB5b3UgZm9yIHlvdXIgcmVwbHkuIFJFZ2FyZGlu
ZyB0aGUgd3JpdGUgc3BlZWQsIEkgYXNzdW1lIHRoYXQgZmFzdCBTRDtzIHNob3VsZCBiZSBhYmxl
IHRvIGVhc2lseSBkbyB0aGF0Og0KPg0KPiBUaGUgTlZNZSBHZW40IHg0IGludGVyZmFjZSBkZWxp
dmVycyBleHRyZW1lIHBlcmZvcm1hbmNlIG9mIHVwIHRvIDcsNTAwTUIvcyBzZXEuIHJlYWQgYW5k
IDYsODUwTUIvcyBzZXEuIHdyaXRlIHNwZWVkcy4NCj4NCj4gV2VsbCwgb2YgY291cnNlLCBmYXN0
IGRpc2stZHJpdmVzIGFyZSBuZWNlc3NhcmlseSBjb25uZWN0ZWQgdG8gYSBjb21wdXRlciwgd2l0
aCB0aGUgYXR0ZW5kYW50IG9wZXJhdGluZy1zeXN0ZW0gYW5kDQo+ICAgQ1BVIGJvdHRsZW5lY2tz
LiAgSXQncyBub3QgbGlrZSB0aGUgU0RSIGp1c3QgZGlyZWN0bHkgdGFsa3MgdG8geW91IGRpc2sg
ZHJpdmVzIHdpdGggbm8gaW50ZXJ2ZW5pbmcgInN5c3RlbSBzdHVmZiIuDQo+DQo+DQo+IEJ5IHN5
bmNocm9uaXphdGlvbiwgSSBtZWFuIHRoYXQgYWxsIHRocmVlIFNEUnMgc3RhcnQgc2FtcGxpbmcg
YXQgdGhlIHNhbWUgdGltZSAod2l0aCBsZXNzIHRoYW4gMXVzIGRpZmZlcmVuY2UpLg0KPg0KPiBU
aGF0IHNob3VsZCBiZSBkb2FibGUuDQo+DQo+DQo+IFRoZSBxdWVzdGlvbnMgdGhhdCBJIGhhdmUg
YXJlIGFzIGJlbG93Og0KPiBRMSkgQ29uc2lkZXJpbmcgdGhlIGZhY3QgdGhhdCBJIHdpbGwgaGF2
ZSBhIG1pbmltdW0gb2YgdGhyZWUgU0RScywgY2FuIG9uZSBpbnN0YW5jZSBvZiB0aGUgR05VIFJh
ZGlvIHJ1bm5pbmcgb24gbXkgUEMgaGFuZGxlIHRocmVlIG9yIG1vcmUgU0RScz8NCj4NCj4gS2Vl
cGluZyBpbiBtaW5kICpwZXJmb3JtYW5jZSogY29uc2lkZXJhdGlvbnMsIHRoYXQgc2hvdWxkbid0
IGJlIGFuIGlzc3VlLiAgIEdudSBSYWRpbyBwbGFjZXMgZWFjaCBibG9jayBpbiBpdHMgb3duIHRo
cmVhZCwNCj4gICBhbmQgZm9yIHF1aXJreSByZWFzb25zIGVhY2ggb2YgeW91ciBCMnh4IGJsb2Nr
cyB3aWxsIG5lZWQgdG8gYmUgc2VwYXJhdGUuDQo+DQo+DQo+IFEyKSBJcyB0aGVyZSBhbnkgcmVh
ZHkgdG8gdXNlIEdOVSBSYWRpbyBGbG93IGdyYXBoIGZvciBzdWNoIGEgc2NoZW1lIHRvIHdvcms/
DQo+DQo+IFRoZXJlIG1heSBiZS4gIFlvdSBjb3VsZCBjaGVjayBjZ3Jhbi5vcmcsIG9yIGFzayBv
biB0aGUgZGlzY3Vzcy1nbnVyYWRpbyBtYWlsaW5nIGxpc3QuICBCdXQsIHJlYWxseSwgdGhlIHNl
dA0KPiAgICJ1c2VmdWwgYW5kIGludGVyZXN0aW5nIHRoaW5ncyBvbmUgbWlnaHQgZG8gYXQgdGhl
IGludGVyc2VjdGlvbiBvZiByYWRpbywgRFNQLCBhbmQgY29tcHV0ZXJzIiBpcyBsYXJnZS10by1p
bmZpbml0ZS4NCj4gICBTbyBleHBlY3Rpbmcgc29tZXRoaW5nICJvdXQgdGhlcmUiIHRoYXQgZG9l
cyBleGFjdGx5IHRoZSB0aGluZyB5b3Ugd2FudCB0byBkbyBpcywgSSB3b3VsZCBzYXksIG5haXZl
Lg0KPg0KPg0KPiBRMykgQ2FuIHlvdSBzdWdnZXN0IGFueSBvdGhlciBsb3cgY29zdCBhcHByb2Fj
aCBmb3IgcmVjb3JkaW5nIGFuZCBwbGF5aW5nIGJhY2sgMTAwTUh6IGJhbmR3aWR0aCBhdCAyLjRH
SHo/DQo+DQo+IE5vdCBpbW1lZGlhdGVseS4gIEJ1dCBJJ3ZlIGJlZW4gYW4gU0RSIGd1eSBzaW5j
ZSAyMDA0LCBhbmQgYSBVU1JQIGd1eSBzaW5jZSBzaG9ydGx5IGFmdGVyIHRoYXQuICBTbywgdGhh
dCdzIGtpbmQgb2YNCj4gICB3aGVyZSBteSBoZWFkLXNwYWNlIGlzIGF0Lg0KDQpIaSBIYW1pZCwN
Ckkgd2lsbCBqdXN0IGFkZCBhIGZldyBjb21tZW50cy4NCjEpIElmIHlvdSB3YW50IDEwMCBNSHog
YmFuZHdpZHRoLCBJIHdvdWxkIGhpZ2hseSByZWNvbW1lbmQgZ2V0dGluZyBhDQptb2RlbCB0aGF0
IGNhbiBoYW5kbGUgdGhhdCBiYW5kd2lkdGggKHN1Y2ggYXMgWDMwMCwgWDMxMCwgZXRjKS4NCkFs
dGhvdWdoIHRoaXMgZGV2aWNlIGlzIG1vcmUgZXhwZW5zaXZlIHRoYW4gMyBCMjAwIGRldmljZXMs
IGl0IHdpbGwgYmUNCm11Y2ggZWFzaWVyIGFuZCBwcm92aWRlIGEgZnVsbHkgY29oZXJlbnQgMTAw
IE1IeiBzaWduYWwuDQoyKSBpZiB5b3Ugd2FudCB0byByZWNvcmQgdG8gdGhlIFBDLCBJIHdvdWxk
IHJlY29tbWVuZCByZWNvcmRpbmcgdG8gYQ0KUkFNLWRyaXZlIChyYW1mcykgaWYgcG9zc2libGUu
IFRoaXMsIG9mIGNvdXJzZSwgZGVwZW5kcyBvbiB3aGV0aGVyDQp5b3VyIFBDIGhhcyBlbm91Z2gg
UkFNIHRvIGhvbGQgeW91ciByZXF1aXJlZCBudW1iZXIgb2Ygc2FtcGxlcy4gSWYgeW91DQpoYXZl
IGVub3VnaCBSQU0sIHlvdSB3aWxsIGhhdmUgbGVzcyBwcm9ibGVtcyAoc3VjaCBhcyBvdmVyZmxv
dywNCm91dC1vZi1zZXF1ZW5jZSBwYWNrZXRzKSBpZiB5b3UgcmVjb3JkIHRvIGEgUkFNLWJhc2Vk
IGZpbGUgYW5kIHRoZW4NCnRyYW5zZmVyIGl0IHRvIHlvdXIgU1NEIGxhdGVyLg0KMykgaWYgeW91
ciBzYW1wbGUgZGVwdGggcmVxdWlyZW1lbnQgaXMgZXZlbiBzaG9ydGVyLCBpdCBpcyBwb3NzaWJs
ZQ0KdGhhdCB0aGUgb25ib2FyZCBkZXZpY2UgUkFNIGNvdWxkIHN0b3JlIHlvdXIgcmVjb3JkaW5n
ICh1bmxlc3MgeW91DQp3YW50IGl0IHNhdmVkIGZvciBsYXRlciB1c2UpLiAgVGhlIFJGTm9DIFJl
cGxheSBibG9jayBjYW4gcmVjb3JkIHRoZQ0KaW5jb21pbmcgUnggc2lnbmFsICh1cCB0byAxR0Ig
b3IgMjUwTVMgb24gdGhlIFgzeHgsIEkgdGhpbmspIHdoaWNoIHlvdQ0KY291bGQgbGF0ZXIgcGxh
eSBvdXQgZnJvbSBkZXZpY2UgUkFNIHRvIHRoZSBUeCBwYXRoLiBCdXQsIHRoaXMgbWF5IG5vdA0K
YmUgYXMgZWFzeSBmcm9tIGdudXJhZGlvIChpJ20gbm90IHJlYWxseSBzdXJlKSBzbyBpdCBtaWdo
dCByZXF1aXJlIGENCmN1c3RvbSBwcm9ncmFtIChweXRob24gb3IgYysrKSB1c2luZyB0aGUgVUhE
IEFQSS4NClJvYgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tCg==
