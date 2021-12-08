Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB6846DDE5
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 22:53:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 033DE384A3D
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 16:53:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="HKtZhgxA";
	dkim-atps=neutral
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 622C538437E
	for <usrp-users@lists.ettus.com>; Wed,  8 Dec 2021 16:52:52 -0500 (EST)
Received: by mail-yb1-f182.google.com with SMTP id 131so9205638ybc.7
        for <usrp-users@lists.ettus.com>; Wed, 08 Dec 2021 13:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=aGz30TcjDwlWXPvn+wZlJHDc+DHDZ8euxm7rwvvauYs=;
        b=HKtZhgxAAT/0S438OPV00tp0N1/bWGlMbgBmMIJ5mNm43y1Mxy1E9homyF4BMLSIlY
         3K0lYqFAgizLNfmdYbhe/vIOtATMBGK/ENo+U1Xgrk+TXYhf8yKQTiK/KW+6rbqnSiUu
         IGjlD5bsgEms+xlpyDRtGTxxd/VvcCEpNhUWUVomeQ+qtoCmxGkaMwk8jvlIKoYpD/No
         hgLnkci0iEWURdKfiHObDhpeX7b+5gKD2qjdBkE/QXaAsKa9HT8h/9OW+Hz/j6UIy8fb
         9fNltiN2bz64+ED0HPNn9vUNlmkPgJrBpYteKkjUUonHY/a/hO+ehefy87pDFziDjUWR
         jH9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=aGz30TcjDwlWXPvn+wZlJHDc+DHDZ8euxm7rwvvauYs=;
        b=d0H/aryevm2brGDs0be1ME+EtCzucp5trQ2AmC829MutPkk/x4lbVKOKvAJiErpKYJ
         AUzn4NwKtgKxqeAthA/d/CdXNYI1qgZuTLd4+00HenltatWtQnZ9bDg9w9Hw9YRKUKFj
         RbEik4mxecycKSMQbazwARt8VM9DrSO4S8Fji5Smponiu0TqTIeXfpHII3JkqUxsebgM
         BDOIplZB41yk6hinHn1ySFYySpRlXH1sK52SQ4fGKI+6EPxV3VHUdZF1krBrSScd0zSt
         ve4rLOblyF/sVpWfCPUkXAILLNhGmewPT/2aM+H/5nJ0Db2ITUhALMdemMqcU9uyO9Rg
         lRyw==
X-Gm-Message-State: AOAM530ma8Cxa0/sn+3OgK1Z0NtMz4Ng8p+ve3adBd2Rf0wrYouRBmYE
	uUUawtA/C+LDZee2ufOxO4+lSeYBzy0rdUp1d9ZHuvxT1zY=
X-Google-Smtp-Source: ABdhPJz4pTSQiRXrzbaroRG7X+QqxFHwrYbw/WQreiYdFL6nAUHQYnOuSxXb0Di1TrrOYCfa2WmvRldRuDG2UxJg2e0=
X-Received: by 2002:a25:b3c1:: with SMTP id x1mr1555710ybf.647.1639000371543;
 Wed, 08 Dec 2021 13:52:51 -0800 (PST)
MIME-Version: 1.0
References: <B67BC271-3FD1-4728-ACFC-B1F0B655662C@egr.msu.edu>
 <CAB__hTQ1bfM1Nzu+Fmd8J7AMSDK-bFAkDOg+QwtSn9r3jHTFZg@mail.gmail.com> <57189909-1FD3-49D8-9AB7-4A8D9E64A737@egr.msu.edu>
In-Reply-To: <57189909-1FD3-49D8-9AB7-4A8D9E64A737@egr.msu.edu>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 8 Dec 2021 16:52:39 -0500
Message-ID: <CAB__hTRj7gNxyZTgnknG9e0YCUjcEGr-py2b-zhjOPPDymHEbA@mail.gmail.com>
To: Jason Merlo <merlojas@egr.msu.edu>
Message-ID-Hash: GZ3UZ55TXCPTKLEZDULHJZTKO43T5LDJ
X-Message-ID-Hash: GZ3UZ55TXCPTKLEZDULHJZTKO43T5LDJ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: In-place Local Clock Update
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GZ3UZ55TXCPTKLEZDULHJZTKO43T5LDJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtIHdoeSBkbyB5b3Ugd2FudCB0byBhdm9pZCB1c2luZyBQUFM/DQo+DQo+IEnigJltIHdvcmtp
bmcgb24gdGVjaG5pcXVlcyBmb3IgYWxpZ25pbmcgdGhlIGNsb2NrcyBvbiB0aGUgWDMxMCdzIGlu
IGVudmlyb25tZW50cyB3aGVyZSBhIHNoYXJlZCBmcmVxdWVuY3kgcmVmZXJlbmNlIGFuZCBQUFMg
ZGlzdHJpYnV0aW9uIGJ5IGNvbnZlbnRpb25hbCBtZWFucyAoY2FibGVkLCBvciB2aWEgR05TUykg
aXMgbm90IGZlYXNpYmxlLg0KPg0KPiAtIGFyZSB5b3UgdXNpbmcgYSBjb21tb24gMTAgTUh6IHJl
Zj8NCj4NCj4gRm9yIHRlc3RpbmcgcHVycG9zZXMgSSBoYXZlIGEgc2hhcmVkIDEwIE1IeiByZWZl
cmVuY2UgdG8ga2VlcCB0aGUgY2xvY2tzIGZyb20gZHJpZnRpbmcsIHNvIEkgb25seSBuZWVkIHRv
IHJlbW92ZSB0aGUgaW5pdGlhbCB0aW1pbmcgYmlhcy4NCj4NCj4gLSB3aGF0IGlzIHRoZSBsZXZl
bCBvZiAic3luY2hyb25vdXMiIHlvdSBhcmUgbG9va2luZyBmb3I/ICBBcmUgeW91IGhvcGluZyB0
byBoYXZlIHNpbXVsdGFuZW91cyBzYW1wbGluZyBhY3Jvc3MgYWxsIGNoYW5uZWxzPw0KPg0KPiBU
aGUgZ29hbCBpcyBmb3IgdGhlIHNhbXBsaW5nIHRvIG9jY3VyIHdpdGhpbiArLy0wLjUgY2xvY2sg
Y3ljbGVzIGJldHdlZW4gdHdvIFgzMTBzIHdoaWxlIHRoZSBzaGFyZWQgZnJlcXVlbmN5IHJlZmVy
ZW5jZSBpcyBwcmVzZW50OyB0aGUgdGltZSBiaWFzIGVzdGltYXRvciBoYXMgYmVlbiB2ZXJpZmll
ZCB0byBoYXZlIHN1ZmZpY2llbnQgYWNjdXJhY3kgdG8gc3VwcG9ydCB0aGlzLCB0aHVzIEnigJlt
IGxpbWl0ZWQgYnkgdGhlIGFjY3VyYWN5IHdpdGggd2hpY2ggSSBjYW4gc2V0IHRoZSBjbG9jay4g
VG8gYWNoaWV2ZSB0aGUgZ29hbCwgdGhlIHRoZSBjbG9jayBzZXQgb3BlcmF0aW9uIHdvdWxkIG5l
ZWQgdG8gYmUgYWNjdXJhdGUgdG8gd2l0aGluIG9uZSBjbG9jayBjeWNsZSB3aGljaCBJIGJlbGll
dmUgcmVxdWlyZXMgYSBtZXRob2Qgb2Ygc2V0dGluZyB0aGUgbG9jYWwgdGltZSBvZmZzZXQgKGZl
dGNoLCBhZGQsIHdyaXRlLWJhY2spIHRoYXQgb2NjdXJzIHdpdGggYSBkZXRlcm1pbmlzdGljIGxh
dGVuY3kgdGhhdCBjYW4gYmUgY2FsaWJyYXRlZCBmb3IuDQo+IEluIHRoZW9yeSwgdGhpcyBzaG91
bGQgYmUgcG9zc2libGUgb24gdGhlIEZQR0EsIGJ1dCBJ4oCZbSB3b25kZXJpbmcgaWYgdGhpcyBp
cyBwb3NzaWJsZSB2aWEgZXhpc3RpbmcgbWVhbnMgaW4gdGhlIFVIRCBBUEksIG9yIGlmIGl0IG1h
eSBiZSBpbXBsZW1lbnRlZCB1c2luZyBjdXN0b20gUkZOb0MgYmxvY2tzIHNvbWVob3cuDQoNCkkg
ZG9uJ3Qgc2VlIGhvdyBpdCBjb3VsZCB3b3JrIGV2ZW4gb24gdGhlIEZQR0EuICBUaGUgRlBHQXMg
ZnJvbSBVU1JQcw0KMSBhbmQgMiBzdGFydCBvZmYgd2l0aCBkaWZmZXJlbnQgY2xvY2tzLiBIb3cg
aXMgaXQgaGVscGZ1bCB0byBoYXZlDQplYWNoIEZQR0EgcmVhZCBpdHMgb3duIGNsb2NrIGFuZCBh
ZGQgYW4gb2Zmc2V0PyAgVGhlIHByb2JsZW0gaXMgeW91DQpoYXZlIG5vIHdheSB0byBrbm93IHRo
ZSBkZWx0YSBiZXR3ZWVuIHRoZSBjbG9ja3MgdW5sZXNzIHlvdSBjb3VsZA0KZ3VhcmFudGVlIHRo
YXQgZWFjaCBkZXZpY2UgcmVhZHMgaXRzIGNsb2NrIGF0IHRoZSBzYW1lIHRpbWUuIERvZXNuJ3QN
CnNlZW0gcG9zc2libGUgaWYgdGhlICdjb21tb24gZGVub21pbmF0b3InIGlzIHRoZSBQQyBzZW5k
aW5nIGdldCgpDQpjb21tYW5kcyBvdmVyIExpbnV4L0V0aGVybmV0LiBBbmQsIGlmIHRoZSBQQyBp
cyBub3QgdGhlIGNvbW1vbg0KZGVub21pbmF0b3IsIHdoYXQgaXM/DQoNCkRvZXMgeW91ciBwcm9i
bGVtIGFsbG93IGZvciB0aGUgZGV2aWNlcyB0byBiZSBsaW5rZWQgYnkgZmliZXIgaW4gYQ0KV2hp
dGUgUmFiYml0IHRpbWluZyBzY2VuYXJpbz8gIElmIHNvLCB0aGlzIGNvdWxkIGJlIHVzZWQgdG8g
c3luYyB0aGUNCmRldmljZXMuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
