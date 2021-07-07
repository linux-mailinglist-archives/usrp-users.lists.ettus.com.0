Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E16123BF038
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 21:23:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B5B033848CF
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 15:23:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="F/p48Llf";
	dkim-atps=neutral
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E13038460E
	for <usrp-users@lists.ettus.com>; Wed,  7 Jul 2021 15:22:58 -0400 (EDT)
Received: by mail-qt1-f175.google.com with SMTP id g8so2866733qth.10
        for <usrp-users@lists.ettus.com>; Wed, 07 Jul 2021 12:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-transfer-encoding;
        bh=AjhoNdCV/yRBjXTeT/M/hQ/pO4ODARIl4ytd3CPuVMs=;
        b=F/p48LlfFx482wKmuMlW0MHdHtUEVOYYj2A9cJ6nClgGm47IwmjKS5NO+OUqNb9wZU
         2L3wUeBYrzAyn+YsDsJyN9eGUB6OIM6hPyRuS8fqPOqFoKivrBZCHoJKHFb8sp3dPP+B
         kAgX0eL1LuvOOe1X5A0qlYZ9BShG9HilAQv5ELbZzITDlIclV4OdD8Lq3f9qtTAL6BCo
         6fMkM/YvnWW4uMa3iHOl6wm90ljLEJBuEm9MuKZlbGkg+NlIVI3kAhR7NDrYDRQ3dkGz
         eYGQNjmP4g2e+ImH4qEras2RgmhsgH7eYA62uoKn31SLeJjWmVwgnvjmj36PY+VU938k
         dnWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to:content-transfer-encoding;
        bh=AjhoNdCV/yRBjXTeT/M/hQ/pO4ODARIl4ytd3CPuVMs=;
        b=c7wdVlhYmCOfF78DxiIBZ5mO27N3wQm44or3JcpSG4ZDwDCBt+qppkFT8A0Lw1jtx1
         GCIRE45+UXnSUwaJ/Z/LESkVe1i8v26PGhhHtNPB0xfFKyEXj6vBntJh+v3M/3rpgRKW
         +cozGAl79NM/4ZNGi5Yyce2SuBtMXsfoMcO3T/iEkFh9AH/9YGrCiDdh5enYY7CuBk8X
         OuIdYIBDzjySdsY2cX1p07QV8rl21GR/39cG0lR9qmziobUCjkcu/XkubWoas2ssYvyZ
         b7hNDz6oHflvcE1cDEyHAl6DtM3B48/PevdBO+BO0sxz3JB0H80bx3DR0kOpknfksiPE
         +FDA==
X-Gm-Message-State: AOAM53197Xdl/d7XS/NW5PM3ug2Fu1EfH6bFGBJZsJe5/k9kv7BjDQ7q
	aKByUoaVdFt5Ai6lu3yXA1FeJjnSphiVIA==
X-Google-Smtp-Source: ABdhPJzvzV+ujkNLumAFFoWJN+prk5HYbu54lZw5opxuYUPzYcCWPAAwB7pRYF+esMWYpcwwQmZhPA==
X-Received: by 2002:ac8:6b4a:: with SMTP id x10mr22080913qts.295.1625685777572;
        Wed, 07 Jul 2021 12:22:57 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id g19sm7704qtg.36.2021.07.07.12.22.56
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Jul 2021 12:22:57 -0700 (PDT)
Message-ID: <60E5FF10.9050301@gmail.com>
Date: Wed, 07 Jul 2021 15:22:56 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
References: <6e5084fbdd8d459b9b7602bf3d5562e2@erdc.dren.mil> <19FAD5E2-BAA1-423E-AD5B-62E82376520C@gmail.com> <1be59b4396804dce8b6726391452b7d5@erdc.dren.mil>
In-Reply-To: <1be59b4396804dce8b6726391452b7d5@erdc.dren.mil>
Message-ID-Hash: 6XZ6Q4A5FSCRYKXO2GFQ3CQH43DJHBND
X-Message-ID-Hash: 6XZ6Q4A5FSCRYKXO2GFQ3CQH43DJHBND
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Transmit and Receive times
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6XZ6Q4A5FSCRYKXO2GFQ3CQH43DJHBND/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDcvMDcvMjAyMSAwMjozNCBQTSwgV29sc2llZmZlciwgQ2FybCBMLiBFUkRDLVJERS1DUkwt
TkggQ0lWIHdyb3RlOg0KPiBQYXJ0IG9mIHRoZSBnb29kIG5ld3MgdGhlcmUgaXMgSSdtIHV0aWxp
emluZyB0aGUgZnVsbCAyMDAgTXNwcyBjbG9jayBzcGVlZCBzbyBJJ3ZlIGJlZW4gc2tpcHBpbmcg
Ym90aCBkdWMgb24gVFggYW5kIGRkYyBvbiBSWCwgdGh1cyBob3BlZnVsbHkgbWluaW1pemluZyBh
bnkgZnJvbnQgZW5kIGRlbGF5cyB0byBiZSBtZWFzdXJlZA0KPg0KPiBJJ20gc2xpZ2h0bHkgY29u
ZnVzZWQgYWJvdXQgdGhlIFJ4IG1ldGFkYXRhIHBvcnRpb246IEkga25vdyBpbiB0aGUgdWhkIG5h
bWVzcGFjZSB0aGVyZSBpcyB0aGUgcnhfbWV0YWRhdGFfdCBzdHJ1Y3QsIGJ1dCBhcyBmYXIgYXMg
SSBjYW4gdGVsbCwgSSBhcyB0aGUgdXNlciBoYXZlIGJlZW4gc2V0dGluZyB0aG9zZSB2YWx1ZXMg
aW4gdGhlIGNvZGUgaW4gYW4gZWZmb3J0IHRvIGhlbHAgc3luY2hyb25pemUgYm90aCBUeCBhbmQg
UnguIEFyZSB5b3Ugc2F5aW5nIHRoaXMgdmFsdWUgSSd2ZSBiZWVuIHNldHRpbmcgZm9yIHRpbWVf
c3BlYyB3aWxsIGJlIHRoZSBtb3N0IGFjY3VyYXRlIGFwcHJveGltYXRpb24gb2YgdGhlIGZpcnN0
IHJlY2VpdmVkIHNhbXBsZSAoYW5kIHdoZW4gZmlyc3Qgc2FtcGxlIHdhcyB0eCdkIGZvciB0aGF0
IG1hdHRlcj8pDQo+DQo+IFRoYW5rcyBhcyBhbHdheXMsDQo+IENhc2V5DQo+DQo+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1hcmN1cyBEIExlZWNoIDxwYXRjaHZvbmJyYXVu
QGdtYWlsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgSnVseSA2LCAyMDIxIDU6MjUgUE0NCj4gVG86
IFdvbHNpZWZmZXIsIENhcmwgTC4gRVJEQy1SREUtQ1JMLU5IIENJViA8Q2FybC5MLldvbHNpZWZm
ZXJAZXJkYy5kcmVuLm1pbD4NCj4gQ2M6IHVzcnAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tPg0KPiBTdWJqZWN0OiBSZTogW1VTUlAtdXNlcnNdIFVIRCBUcmFuc21pdCBhbmQgUmVj
ZWl2ZSB0aW1lcw0KPg0KPiBUaGUgUlggbWV0YWRhdGEgaW5jbHVkZXMgdGltZSBzdGFtcHMuIFRo
ZSB0aW1lIHN0YW1wIGNsb2NrcyAoYW5kIHRoaXMgZXZlbnQgdGltaW5nKSB3aWxsIGJlIGFzIGdv
b2QgYXMgeW91ciBjb21tb24gcmVmZXJlbmNlIGNsb2NrLg0KPg0KPiBUaGVyZSB3aWxsIGJlIGFu
IGluZXZpdGFibGUgbGF0ZW5jeSBkdWUgdG8gdGhlIERTUCBncm91cCBkZWxheSBpbmhlcmVudCBp
biB0aGUgRFVDLCB3aGljaCB5b3Ugd2lsbCBoYXZlIHRvIG1lYXN1cmUuIEl04oCZcyB1c3VhbGx5
IG9uIHRoZSBvcmRlciBvZiAxMHMgb2Ygc2FtcGxlIHRpbWVzIGJ1dCBjYW4gdmFyeSBmcm9tIHZl
cnNpb24gdG8gdmVyc2lvbiBvZiB0aGUgRlBnQSBjb2RlIGFuZCBzYW1wbGUgcmF0ZSBzZXR0aW5n
cy4NCj4NCj4gU2VudCBmcm9tIG15IGlQaG9uZQ0KPg0KPj4gT24gSnVsIDYsIDIwMjEsIGF0IDU6
MTYgUE0sIFdvbHNpZWZmZXIsIENhcmwgTC4gRVJEQy1SREUtQ1JMLU5IIENJViB2aWEgVVNSUC11
c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOg0KPj4NCj4+IO+7v0hlbGxv
LA0KPj4NCj4+IEkgYW0gdXNpbmcgdHdvIHgzMTBzIGJvdGggaG9zdGVkIGZyb20gYSBjb21tb24g
UEMuIEkndmUgc3RpdGNoZWQgdG9nZXRoZXIgYSBmZXcgVUhEIGV4YW1wbGVzIHRvIHRyYW5zbWl0
IGEgcHJlLXJlY29yZGVkIHdhdmVmb3JtIGZyb20gb25lIHgzMTAgYW5kIHJlY2VpdmUgYXQgdGhl
IG90aGVyIGF0IHRoZSBleGFjdCBzYW1lIHRpbWUuIEknbSB1c2luZyBhbiBGTUNXIHdhdmVmb3Jt
IGFuZCB3b3VsZCBsaWtlIHRvIHJ1biBhIGNvcnJlbGF0aW9uIG9uIHRoZSByZWNlaXZlZCBzaWdu
YWwgdG8gbWFrZSBhbiBhdHRlbXB0IGF0IG1lYXN1cmluZyBkaXN0YW5jZSBiZXR3ZWVuIHRoZSBU
eCBhbmQgUnguIEkgdXNlZCBhIGNvbW1vbiByZWZlcmVuY2UgYW5kIFBQUyBiZXR3ZWVuIHRoZSB0
d28geDMxMHMgYW5kIHNjaGVkdWxlZCBhIHRyYW5zbWl0IGFuZCByZWNlaXZlIGJ5IHBhc3Npbmcg
YSB0aW1lX3NwZWMgaW4gdGhlIHR4X21ldGFkYXRhIHZhcmlhYmxlIGZvciB0aGUgdHhfc3RyZWFt
LT5zZW5kKCkgZnVuY3Rpb24gYXMgd2VsbCBhcyB0aGUgdGltZV9zcGVjIHZhcmlhYmxlIG9mIHRo
ZSByeF9zdHJlYW0tPmlzc3VlX3N0cmVhbV9jbWQgZnVuY3Rpb24uDQo+Pg0KPj4gTXkgcXVlc3Rp
b24gaXM6IGhvdyBtdWNoIHN0b2NrIGRvIEkgcHV0IGluIHRoZXNlIHRpbWVfc3BlYyB2YWx1ZXM/
IElzIHRoZXJlIHNvbWUgdGltZXN0YW1wIEkgY2FuIHJldHJpZXZlIHRoYXQgd2lsbCB0ZWxsIG1l
IHNvbWV0aGluZyBjbG9zZXIgdG8gdGhlIHRydXRoIGFib3V0IHdoZW4gdGhlIGZpcnN0IHNhbXBs
ZSB3YXMgZW1pdHRlZCBmcm9tIHRoZSB0cmFuc21pdHRlciBvciB3YXMgcmVjb3JkZWQgYXQgdGhl
IHJlY2VpdmVyPyBPciBjYW4gSSByZWx5IG9uIHRoZSBTRFIgYWRoZXJpbmcgcHJldHR5IHN0cmlj
dGx5IHRvIHRoZSB0aW1lX3NwZWMgdmFsdWUgaXQgd2FzIHBhc3NlZCBwcm92aWRlZCBpdCB3YXMg
c2V0IHN1ZmZpY2llbnRseSBmYXIgaW4gZnV0dXJlIHRvIGdpdmUgU0RSIHRpbWUgdG8gc2NoZWR1
bGUgY29tbWFuZHM/DQo+Pg0KPj4NCj4+IFRoYW5rcyENCj4+IENhc2V5DQo+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gVG8gdW5zdWJzY3JpYmUNCj4+
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NClRoZSBy
eF9tZXRhZGF0YV90IGluY2x1ZGVzIGEgInRpbWVzcGVjIiBtZW1iZXIgd2hpY2ggaXMgdGhlIGhh
cmR3YXJlIA0KdGltZXN0YW1wIG9mIHRoZSBmaXJzdCBzYW1wbGUgaW4gdGhlIGJ1ZmZlciBhc3Nv
Y2lhdGVkDQogICB3aXRoIHRoaXMgbWV0YWRhdGEgKGluIGEgcmVjdigpKSBjYWxsLg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
