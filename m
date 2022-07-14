Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF415750E6
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jul 2022 16:33:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4687838403C
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jul 2022 10:33:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657809200; bh=YImGV9WGihsVYj7Tg7xipurIdQAS0N+g6O/uFSM9Kxs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=I5QZ8IKl2I0+S/70VldSxy4swKWj/7tNHsKGz6RcuFHzs7yf8Q1+LSNEA+FHBrW18
	 KTbgt4nfYCoDJmgpcaXr8/9kOClFacqcPxQHna3tR5ROjjYL8gvLyrZGG1zymmUvvX
	 aHu2DW9vFG6Ku6YtdehBNli3+X0/X9WlOzgJ2OVDUPRNKT90kULrrsxX26XVsJN1Ao
	 mGMBn6czoYu8++GDOXCzWxx8vCxJgKr36PqGl9aLtDsPZbZIpdcvZVS3Tgko/FQZGO
	 +qtLXNaFov92PSVu2hZw9OBipPn+l32F3AATNYbHHYHjwCqkWek9rVqHWEL4xYRzYZ
	 Ie8SG6c70Z4KQ==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id EA015380EFB;
	Thu, 14 Jul 2022 10:22:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UYbabFgz";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id fd6so2630962edb.5;
        Thu, 14 Jul 2022 07:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=pq7MzDyINA7K6fbU0UIS1VUupm0/kIL/6mWpjX+1ocE=;
        b=UYbabFgzm0+Xu9HKjpqZhcChFkqhg7lny+KZ5E0mjIs1mUY6U2pi8hM70CK6hzscDw
         R4ZMGXcJn3RYZtuuQ37SvYfWvRTft6dsj2ZLeU1DtMgTKCDOf3OUOKxG+UtKPkl2i7G+
         sX8fq9jV0aY70S9AZ8RL1CryT0A+gBCCswnsz06jUGJknKps/BvatllU8eMxQLTYlHES
         nb2mfmtSKOqUeONqkyNERqEdGvruRXTbUblz0okWA/pBJmefUm7uHHDo23/52V+kKldp
         noBxuoz4cRXn8u+H88r5AdvpJoF6xgT1ui8apt/Wrb7wxkNmAR/Z6MX9sxaQJ3JnWt2n
         XkAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=pq7MzDyINA7K6fbU0UIS1VUupm0/kIL/6mWpjX+1ocE=;
        b=ru2qREu7qZat275Ak0NHUmE/+7x5K/mGZ7EVYnUNbf7jz3OoF/NNOKPb/bwiBDPq/U
         yQdOnAf7qTCMufYKIgSJoKKuedID6/0CI0HZKuIbrB7/D/DQUTqr+Sk3FfrswIMwq9cG
         H0BuxhxyqveOb34vcuU/SeNjno9Cc4BsxQe//kH3SQN5sMWt4rPLDItZF5h6/2y79NQV
         6OuR+muJ3bxXAlJtyjnChNBLErl64OWJ6yXD0W/4EhYFuXpurIkPsbwYB85VsxXHCBky
         olziibv3n0POi6165u81S0ASBn40SD3QR/VJhXqm266V40xbfx02f/9fQ1ykrmvytmv2
         0Htw==
X-Gm-Message-State: AJIora+JTxfGcuvzB0+HQRYr4ac9iuEZIPQRsw0RWwE/fL7gfu3jhJ+4
	riaDLVh2jCz4hZeIT1VqmpdmFzFMsn9/Y3zd1OpeWpjz
X-Google-Smtp-Source: AGRyM1ulZjVEH6l309EHMXDAo/AHI7LA9oGndz/0BivWroiQaLj4LAFDFeLkEQWlHc1b4jZJpsya9W6U2sJdpCT14MY=
X-Received: by 2002:a05:6402:b9b:b0:43a:5aac:ed6 with SMTP id
 cf27-20020a0564020b9b00b0043a5aac0ed6mr12552782edb.131.1657808570976; Thu, 14
 Jul 2022 07:22:50 -0700 (PDT)
MIME-Version: 1.0
References: <VI1PR04MB41449224096D758652637DBBC6899@VI1PR04MB4144.eurprd04.prod.outlook.com>
 <CAAxXO2HsH=j+EgPhSn0upzfGniqbeNTFdcPsCyK0QvPNOb+67g@mail.gmail.com>
 <CAAxXO2GH6VbjhG6GCW=K7GmVHuhE_36SAp75uA51+anBaoS5GQ@mail.gmail.com> <VE1PR04MB74851B6AC738A19802E35001DC889@VE1PR04MB7485.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB74851B6AC738A19802E35001DC889@VE1PR04MB7485.eurprd04.prod.outlook.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Thu, 14 Jul 2022 17:22:39 +0300
Message-ID: <CAAxXO2GHypimKXTvNZCo0hTu0yC_0_qt+ChcAT4ovgaxLry2qw@mail.gmail.com>
To: =?UTF-8?Q?Katarina_Rado=C5=A1?= <krados@fesb.hr>
Message-ID-Hash: QENFNTBUXDAQ52DWZKUJMMUHCND7L22G
X-Message-ID-Hash: QENFNTBUXDAQ52DWZKUJMMUHCND7L22G
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?B?TWFydGEgQnJracSH?= <Marta.Brkic.00@fesb.hr>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "usrp-users-request@lists.ettus.com" <usrp-users-request@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with collecting GNSS signals by using GNSS-SDR and USRP N210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QENFNTBUXDAQ52DWZKUJMMUHCND7L22G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCklmIHlvdSB1c2UgU1NEcywgeW91IGFyZSBldmVuIGZhc3RlciB0aGFuIGhhcmQgZGlz
a3M6KQ0KUlhMTyBpcyBwYXJ0IG9mIHlvdXIgVUJYIHNwZWMuIEkgZG9uJ3QgaGF2ZSBvbmU6KA0K
SXQgc2VlbXMgdGhhdCBpdCBoYXMgdG8gZG8gc29tZXRoaW5nIHdpdGggbG9ja2luZyB5b3VyIEdQ
UyBwb3NpdGlvbnMuLi4NCkEgcmVhZGVyIGxvY2sgd291bGQgYmUgYSBsb2NrIG9uIHlvdXIgcmVh
ZGluZywgYW5kIGNvdWxkIGV4cGxhaW4geW91cg0KIkQicywgZHJvcHBlZCBzYW1wbGVzLCB3aGVu
IHlvdSB1c2UgaXQuDQpUaGF0ICJSWCIgb24gdGhlICJSWExPIiBsb29rcyBzdXNwaWNpb3VzLCBi
dXQgZnJvbSB5b3VyIHNheWluZyBpcyBqdXN0DQphIGxvY2sgb24gdGhlIHJlY2VpdmVyIGxvY2F0
aW9uLi4uDQpDb3VsZCBpdCBiZSB0aGF0IHVudGlsIHlvdXIgTjIxMCBsb2NrcyB0byBhIGxvY2F0
aW9uLCBpdCByZWNlaXZlcw0Kc2FtcGxlcywgYW5kIHRoZXJlZm9yZSBkcm9wcyB0aGVtPw0KSSBk
b24ndCBrbm93IG11Y2ggYWJvdXQgeW91ciBjb25maWd1cmF0aW9uLCBzbyBJIGJldHRlciBsZXQg
c29tZW9uZQ0KZWxzZSB3aXRoIG1vcmUga25vd2xlZGdlIGFib3V0IGl0LCBhbnN3ZXIuDQoNCkJS
DQpOaWtvcw0KDQpPbiBUaHUsIEp1bCAxNCwgMjAyMiBhdCA0OjQ2IFBNIEthdGFyaW5hIFJhZG/F
oSA8a3JhZG9zQGZlc2IuaHI+IHdyb3RlOg0KPg0KPiBIaSBOaWtvcywNCj4NCj4gdGhhbmsgeW91
IGZvciB5b3VyIHJlc3BvbnNlLg0KPiBXZSBkb24ndCBoYXZlIEhERCBhbmQgd2Ugb25seSBoYXZl
IFNTRCBvbiBvdXIgbGFwdG9wLg0KPiBJcyBpdCBuZWNlc3NhcnkgdG8gaGF2ZSBoYXJkIGRpc2sg
aW4gb3JkZXIgdG8gcnVuIHRoaXM/DQo+DQo+ICBSZWdhcmRpbmcgdGhlIGxvY2tzLCBjb3VsZCB5
b3UgZXhwbGFpbiB1cyB3aGF0IHJlYWRlciBsb2NraW5nIGlzIGV4YWN0bHk/DQo+DQo+IEJlc3Qg
cmVnYXJkcywNCj4gS2F0YXJpbmEgYW5kIE1hcnRhDQo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+IEZyb206IE5pa29zIEJhbGthbmFzIDxuYmFsa2FuYXNAZ21haWwuY29tPg0K
PiBTZW50OiBUaHVyc2RheSwgSnVseSAxNCwgMjAyMiAxOjM3IFBNDQo+IFRvOiBNYXJ0YSBCcmtp
xIcgPE1hcnRhLkJya2ljLjAwQGZlc2IuaHI+DQo+IENjOiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbSA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+OyB1c3JwLXVzZXJzLXJlcXVlc3RAbGlz
dHMuZXR0dXMuY29tIDx1c3JwLXVzZXJzLXJlcXVlc3RAbGlzdHMuZXR0dXMuY29tPjsgS2F0YXJp
bmEgUmFkb8WhIDxrcmFkb3NAZmVzYi5ocj4NCj4gU3ViamVjdDogUmU6IFtVU1JQLXVzZXJzXSBI
ZWxwIHdpdGggY29sbGVjdGluZyBHTlNTIHNpZ25hbHMgYnkgdXNpbmcgR05TUy1TRFIgYW5kIFVT
UlAgTjIxMA0KPg0KPiAuLi5vciB5b3VyIGxvY2tzLiBBcmUgeW91IGxvY2tpbmcgeW91ciByZWFk
ZXI/DQo+IFdoYXQgZXhhY3RseSBhcmUgeW91IGxvY2tpbmc/DQo+DQo+IE5pa29zDQo+DQo+IE9u
IFRodSwgSnVsIDE0LCAyMDIyIGF0IDQ6MjggUE0gTmlrb3MgQmFsa2FuYXMgPG5iYWxrYW5hc0Bn
bWFpbC5jb20+IHdyb3RlOg0KPiA+DQo+ID4gSGksDQo+ID4NCj4gPiBUbyBzZXQgdGhyZWFkIHBy
aW9yaXR5LCB5b3UgbmVlZCB0byBhZGQgeW91ciB1c2VyIHRvIGdyb3VwIHVzcnAuLi4NCj4gPiAi
RCIgbWVhbnMgZHJvcHBlZCBwYWNrYWdlcy4gWW91IGFyZSBub3QgcmVhZGluZyBmYXN0IGVub3Vn
aC4NCj4gPiBTaW5jZSB5b3VyIGxhc3QgcnVuIHdhcyBhbHNvIGF0IDQgTWh6IHdpdGhvdXQgYW55
ICJEInMsIGl0IHNlZW1zIHlvdXINCj4gPiBwcm9ibGVtIGlzIHdpdGggeW91ciBoYXJkIGRpc2sg
SS9PLi4uDQo+ID4NCj4gPiBIVEgNCj4gPiBOaWtvcw0KPiA+DQo+ID4gT24gV2VkLCBKdWwgMTMs
IDIwMjIgYXQgMTozOSBQTSBNYXJ0YSBCcmtpxIcgPE1hcnRhLkJya2ljLjAwQGZlc2IuaHI+IHdy
b3RlOg0KPiA+ID4NCj4gPiA+IEhpLA0KPiA+ID4NCj4gPiA+IHdlIGhhdmUgcHJvYmxlbSB3aXRo
IGNvbGxlY3RpbmcgR05TUyBzaWduYWxzIGZvciBHTlNTIHNwb29maW5nIGJ5IHVzaW5nIFVTUlAg
TjIxMCAoZGF1Z2h0ZXJib2FyZCBVQlgtNDApLCBhY3RpdmUgR05TUyBhbnRlbm5hIChHUFNHbG9u
YXNzLTM2LU4tR0EpIGFuZCBHTlNTLVNEUi4NCj4gPiA+IEZpcnN0bHksIHdlIGZvbGxvd2VkIGFs
bCBzdGVwcyBmcm9tIEdOU1MtU0RSIGNvbmZpZ3VyYXRpb24gcGFnZSBhbmQgd2Ugc3VjY2Vzc2Z1
bGx5IGdvdCB0aGUgcG9zaXRpb24gZml4ZXMgd2l0aCBkb3dubG9hZGVkIGZpbGUgb2YgcmF3IHNp
Z25hbCBzYW1wbGVzIGFzIGF0IHRoZSBsaW5rLg0KPiA+ID4gQWZ0ZXJ3YXJkcywgd2UgdHJpZWQg
dG8gZ2V0IHRoZSBwb3NpdGlvbiBmaXhlcyB3aXRoIGFjdGl2ZSBHTlNTIGFudGVubmEgYnV0IHVu
c3VjY2Vzc2Z1bGx5LiBXZSBzZXQgYWxsIHRoZSBwYXJhbWV0ZXJzIGFzIGF0IHRoZSBpbnN0cnVj
dGlvbnMgYXQgdGhlIGxpbmsgYW5kIHJhbiAnbXlfR1BTX3JlY2VpdmVyLmNvbmYnIGZpbGUuIEFz
IHRoZSByZXN1bHQsIHdlIGdvdCBwcmludGVkICdEJyAocGxlYXNlIHNlZSBzY3JlZW5zaG90cyAx
IGFuZCAyIGF0dGFjaGVkKS4gV2UgdHJpZWQgdG8gc29sdmUgdGhpcyBwcm9ibGVtIGJ5IGZvbGxv
d2luZyB0aGUgaW5zdHJ1Y3Rpb25zIGF0IEVUVFVTIHBhZ2UgYnV0IG5vdGhpbmcgd29ya2VkIGlu
IG91ciBjYXNlLg0KPiA+ID4NCj4gPiA+IFRoZW4sIHdlIHRyaWVkIHRvIHNldCB0aGUgc2FtcGxp
bmcgZnJlcXVlbmN5IHRvIDJNSHogYW5kIHRoZXJlIHdhcyBubyBwcmludGVkICdEJyBhZnRlciBy
dW5uaW5nIHRoZSBjb25mIGZpbGUuIEhvd2V2ZXIsIHdlIGRpZG4ndCBnZXQgdGhlIHBvc2l0aW9u
IGZpeGVzIGFuZCB3ZSBvbmx5IGdvdCAnTG9zcyBvZiBsb2NrIGluIGNoYW5uZWwnIChzY3JlZW5z
aG90IDMpLiAgV2Ugc2VhcmNoZWQgZm9yIHRoZSBzb2x1dGlvbiBhbmQgd2Ugd29uZGVyIGlmIG1p
c3NlZCBzb21ldGhpbmcgb3Igd2UgZG8gbm90IGhhdmUgYWxsIG5lY2Vzc2FyeSBlcXVpcG1lbnQg
KHdlIHNhdyB0aGF0IGJpYXMtdGVlIGlzIG5lZWRlZCBmb3Igc29tZSBkYXVnaHRlcmJvYXJkcyku
DQo+ID4gPg0KPiA+ID4gV2Ugd291bGQgYmUgdGhhbmtmdWwgaWYgeW91IGNvdWxkIGhlbHAgdXMg
d2l0aCBvdXIgcHJvYmxlbS4NCj4gPiA+DQo+ID4gPiBUaGFuayB5b3UgaW4gYWR2YW5jZSBhbmQg
YmVzdCByZWdhcmRzLA0KPiA+ID4gS2F0YXJpbmEgUmFkb8WhIGFuZCBNYXJ0YSBCcmtpxIcNCj4g
PiA+DQo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPiA+ID4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20NCj4gPiA+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQo=
