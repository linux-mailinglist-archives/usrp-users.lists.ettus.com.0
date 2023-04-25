Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 739046EE84E
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 21:36:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B48A2383C33
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 15:35:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682451359; bh=PVYvDUIPr7ziGqtbwLgRLVm6P7FFvRJA5sT7g43tfMA=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Srz4GzrvrpnpivO4a5LO+vtbOIlfPT1IOsGXGNiqbei0g0zDdGtqi+7Ep3UkYeYr4
	 Fqsj5FZMIpdhRdBrJMBiEGCzj+T0swydD2A+ovPhYJjDxUNPZ6iBwsIXqwhSjbhO4s
	 k1zw1Nb+5ABb/3WhAkUDTSpKlqjsTq/rJ9N/h1lFReD6eST01lkcJTGRVUQBFq8Uz2
	 ch8T8LRDg5nR9J4SSSX8qkmHkF3tHjQqa2M4dYMdfG9NehR8usmr8Sn4jYf8aZ4ar+
	 cVHID2Ukah1eG0oSpFheFDa4m3LA1QLm0UH6sp9O1IurtGdrOpF4s/ZiBtSbCYjQHo
	 QwWGMPwegjJQQ==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 0DD72384855
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 15:35:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ca+8dbOB";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-94f6c285d92so1167850866b.3
        for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 12:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1682451339; x=1685043339;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lNmDXpM6A//opKyfBjWRItoIKHfpbWil/2aXh9prkgc=;
        b=ca+8dbOBr2avRmiIWFPOenA+IQx3VkvrPT1UhA4uOHFAokFv6eew0tOTNE+Ej+5GL+
         KMaMgJ4lTWD9K9u+zVn5plyR6tKnNDbcIwoRS1TQhbWAPD1xx4JsJEX9BbXXaJLaIkts
         mgls7GuEVLo4KqfLgz27azP5HX58a7ZjhpPlRGKROb72W3GmCcC3IsWRUZUaZS4FgjCk
         cmsqkAmjeC5D7+xEpxO/o1uK+VUoHyhrdtAqfNGlrWDHetoMOFRlS/L0l47uE7XDXsoF
         4Y2u/BQ98Q2XX2p65oxZ76N3lRlI8r1z3fKHQPdrpF+w7lgVQ1xBHKA1icLNhGOl4n9+
         azqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682451339; x=1685043339;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lNmDXpM6A//opKyfBjWRItoIKHfpbWil/2aXh9prkgc=;
        b=PVLvSJKxb5Rj0z7bv5cECyRzsOFvSDWPgJ3AXaSzd+PFNTBvX5CedV9uJ1vsRQItg+
         LeuPzf0eM0k97HIw41m/G0zR7UweMq+xEpXVNqLz2R2q6dvM3B4z+hOQuCMk3XelcN4F
         p8c7L8lx75lXSXd2g7uyUyJYgVuHuQ4E75B4gX4YegNEcX2D2Xr6Y3wiKnT+zBaegtpw
         mbWTA7E7IsV98B7usRJbl8OoLIRhD+5erZpx1Zy/kUkrPQqmHP1zhHLxZrnYfPaON5Ac
         wRmIlOw8VYa7HYXFbLXND8JDwp0TfqiNsWRzb8rdGu+jAtodareVrCzwt1YlQ6lzgP3j
         70ZQ==
X-Gm-Message-State: AAQBX9dWywGts440GS44UMZ6+59wWe9cojRZU6lRwCt1IkoHBfXvNiTG
	WZecJiHf2hjsUGCVewtNel8YWgcQHpR/AZ17GAgHhw==
X-Google-Smtp-Source: AKy350Z9//EVNI0p9BytDlUaT8CGLV3xtpXnzDXY553ZIRb2IORJQ9rjHIOcalpzuomKytRHsQNQsN8BacQ0fqdN1ek=
X-Received: by 2002:a17:907:8d02:b0:94f:59aa:8a7c with SMTP id
 tc2-20020a1709078d0200b0094f59aa8a7cmr12787322ejc.20.1682451338585; Tue, 25
 Apr 2023 12:35:38 -0700 (PDT)
MIME-Version: 1.0
References: <tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM@lists.ettus.com>
 <20230425143440.1139F4D935@mail.futurelabusa.com> <6676e9c4-ce09-4f04-d60f-2cc5ad449eb4@gmail.com>
 <ZEgALNgcA3A7TRfW@l1.fu-lab.com> <b060d427-5b6c-240f-d8dd-359e9c96fb45@gmail.com>
In-Reply-To: <b060d427-5b6c-240f-d8dd-359e9c96fb45@gmail.com>
Date: Tue, 25 Apr 2023 15:35:27 -0400
Message-ID: <CAB__hTRfxiM9U9yAgp83y_h16=uv8vbRw6p78iCei+B0uAMjWQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: XVHWUYTBCCRNPGGLKFXVX5MYSA24SWHT
X-Message-ID-Hash: XVHWUYTBCCRNPGGLKFXVX5MYSA24SWHT
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: James Schatzman <jcs@l1.fu-lab.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XVHWUYTBCCRNPGGLKFXVX5MYSA24SWHT/>
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

T24gVHVlLCBBcHIgMjUsIDIwMjMgYXQgMTI6MzTigK9QTSBNYXJjdXMgRC4gTGVlY2gNCjxwYXRj
aHZvbmJyYXVuQGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IE9uIDI1LzA0LzIwMjMgMTI6MzAsIEph
bWVzIFNjaGF0em1hbiB3cm90ZToNCj4gPiBJIGRvbid0IGtub3cgaWYgdGhpcyBpcyBuZXcgaW5m
b3JtYXRpb24gYnV0IHdlIGhhdmUgb2JzZXJ2ZWQgc29tZQ0KPiA+IGFkZGl0aW9uYWwgYmVoYXZp
b3JzOg0KPiA+DQo+ID4gMSkgVGhlIHJhZGlvIHJlcG9ydHMgZHJvcHBlZCBVRFAgcGFja2V0cy4g
V2h5IGlzIGl0IGRyb3BwaW5nIHRoZW0/DQo+IEhvdyBhcmUgeW91IGRldGVybWluaW5nIHRoaXM/
ICBGb3Igc3RyZWFtaW5nLCB0aGUgTGludXggaW4gdGhlIFp5bnEgaXMNCj4gZW50aXJlbHkgb3V0
IG9mIHRoZSBwaWN0dXJlLg0KDQpNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgZHJvcHBlZCBwYWNr
ZXRzIGluIFVIRCBtZWFuIHRoYXQgdGhlDQpyZWNlaXZpbmcgZW50aXR5IHJlY2VpdmVkIGNvbnNl
Y3V0aXZlIHBhY2tldHMgdGhhdCBkaWQgbm90IGhhdmUNCmNvbnNlY3V0aXZlIGluZGljZXMuICBT
bywgaWYgdGhlIEZQR0EgZGV0ZWN0ZWQgc3VjaCBhIGNvbmRpdGlvbiwgaXQNCndvdWxkIHNlbmQg
YW4gYXBwcm9wcmlhdGUgZXJyb3IgbWVzc2FnZSBiYWNrIHRvIFVIRCB3aGljaCB3b3VsZA0KcHJv
ZHVjZSB0aGUgIkQiIG9yICJTIi4gIEZvciBVbmRlcnJ1bnMsIGl0IHdvdWxkIGJlIHRoZSBSYWRp
byBibG9jaw0KdGhhdCBzZW5kcyB0aGUgZXJyb3IgbWVzc2FnZSBiYWNrIHRvIFVIRC4NClJvYgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
