Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D77373C21
	for <lists+usrp-users@lfdr.de>; Wed,  5 May 2021 15:16:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B92B4384136
	for <lists+usrp-users@lfdr.de>; Wed,  5 May 2021 09:16:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="RRDBhP5x";
	dkim-atps=neutral
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 203E3384175
	for <usrp-users@lists.ettus.com>; Wed,  5 May 2021 09:15:59 -0400 (EDT)
Received: by mail-ot1-f50.google.com with SMTP id r26-20020a056830121ab02902a5ff1c9b81so1608963otp.11
        for <usrp-users@lists.ettus.com>; Wed, 05 May 2021 06:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=9DBgYqhlmwW10IuhmYtlRPj/LpqIym/I+bItz0RZruM=;
        b=RRDBhP5xn+tOTClUmhdQEwcJTfi6sYs5jnDh+OR1J7umZm5gADRncJcMOJVB//2h2E
         dSLfnG4nwlKt/dpj/8EPqOsxUHyQnLY5LYmfF+k8VkhTRhSb2QxjY1NcO7lbDuAV77VJ
         zoKlS4iuR5MzSx8eXhj416G3BumMJLYLTzjPwAoRHN5xIamxaY5pRMuvJG49sxmLipKd
         xV2eOrzaCtOkiiHj+gaOIC9rVxOo3Og3nKxckFlvl5IbCG2cKYqNuKSPYQMOG+gyjGK0
         HhGoOCR/HiGKpKHuA1EC0Tb+hdsT54a+2UoHEOVy+3KPn5h5WfKT4COSjeXJV3RU4Xpc
         tRRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=9DBgYqhlmwW10IuhmYtlRPj/LpqIym/I+bItz0RZruM=;
        b=ZYTBBuJXD8MG2eJxLuobTRwamGtJfy4ybxeqrAodUTDHVme316fGo/I7R1lVx8o85r
         Ep/BBGX63aFoNz6/hkLr3hEba4ek4RZfbbex87XMaGbnKmn0S0uwjWsA1905HnedSlrL
         61Ygze22vJhY6XTeF7LmZ8ZE24ppTsE8nvOf7Wml2oSlY3vpDXaEC9cOm7BDg2wsTkzW
         E2fR+iiNDEviJxkkpVFP+oxfrMS4KexO4X0VpAYQpCRnQKKfK+M9ubQSYuC03mvAVn2v
         jZTmyJbyerHgzkaN24iW5+x0+v3qYRfLfrZr0HCP46uKQkrja/UMM11g1jpoVjVpciAM
         344Q==
X-Gm-Message-State: AOAM532k9iJrZOq3oRZJJQ10Hmxf9nTafi5WWXLSBzsH/0vdY55rOMIm
	/H8axOTSw0cIh1bBVVH4c8HyCOcpSst7doJQSd6etQ==
X-Google-Smtp-Source: ABdhPJwNZO/vsILoF9DyVzJAZKT0RiA6RKFm2ZttiDOCELU4FuaBy5ZP7EJNLAycJdFPlkiDkPw32FatCdY+BeXDP6s=
X-Received: by 2002:a9d:6145:: with SMTP id c5mr6950856otk.58.1620220558275;
 Wed, 05 May 2021 06:15:58 -0700 (PDT)
MIME-Version: 1.0
References: <d49767f2c24d46afb9c3546118083d2f@external.thalesgroup.com>
In-Reply-To: <d49767f2c24d46afb9c3546118083d2f@external.thalesgroup.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 5 May 2021 09:15:47 -0400
Message-ID: <CAB__hTQE5wbeM-hqS2SmY0MzCbm+4zhtgEPff4RdO9GkYGsvLA@mail.gmail.com>
To: COURANT Frederique - Contractor <frederique.courant@external.thalesgroup.com>
Message-ID-Hash: ITJEL3DYU6JIP6LPS5UIRXVIQN5P773E
X-Message-ID-Hash: ITJEL3DYU6JIP6LPS5UIRXVIQN5P773E
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Read and write register personal RFNOC block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ITJEL3DYU6JIP6LPS5UIRXVIQN5P773E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRnJlZGVyaXF1ZSwNCkkgdGhpbmsgdGhhdCB0aGUgZmlyc3Qgc3RlcCBpcyB0byBmb3JnZXQg
YWJvdXQgc2V0X2FyZyBhbmQgZ2V0X2FyZyBmb3INCm5vdyAodW50aWwgeW91IGdldCB0aGluZ3Mg
YmVoYXZpbmcgcHJvcGVybHkpLiAgVGhlIGdldC9zZXQgYXJnIGFyZQ0KdXNlZCB0byBhY2Nlc3Mg
dmFsdWVzIGluIHRoZSBVSEQgcHJvcGVydHkgdHJlZSBhbmQgdGhlIGNvbmZpZ3VyYXRpb24NCm9m
IHlvdXIgeG1sIG1lYW5zIHRoYXQgd2hlbiB5b3UgdXNlIHNldF9hcmcsIGl0IHdpbGwgYXV0b21h
dGljYWxseQ0KY2FsbCBzcl93cml0ZS4gQnV0IGdldF9hcmcgZG9lcyBub3QgaW50ZXJhY3Qgd2l0
aCB0aGUgRlBHQSBpbiB5b3VyDQpjYXNlLg0KDQpTbywgY29uc2lkZXJpbmcgc3Jfd3JpdGUsIHNy
X3JlYWQzMiBhbmQgeW91ciBGUEdBIHJlZ2lzdGVyDQppbXBsZW1lbnRhdGlvbiwgeW91ciBGUEdB
IGltcGxlbWVudGF0aW9uIHR5cGljYWxseSBoYXMgc2VwYXJhdGUNCnNlY3Rpb25zIGZvciBzZXR0
aW5nIHJlZ2lzdGVycyBhbmQgcmVhZGJhY2sgb2YgcmVnaXN0ZXJzLiAgTG9vayBhdA0Kc29tZSBv
ZiB0aGUgRXR0dXMgZXhhbXBsZXMuICBBbmQsIGl0IGlzIGNvbW1vbiBmb3IgdGhlIHNldCBhZGRy
ZXNzIGFuZA0KdGhlIGdldCBhZGRyZXNzIHRvIGJlIGRpZmZlcmVudC4gIFBlcmhhcHMgdGhpcyBp
cyBiZWNhdXNlIEV0dHVzIGhhcw0KcmVzZXJ2ZWQgYWRkcmVzc2VzIDAtMTI3IGZvciB0aGUgInNl
dCIgZnVuY3Rpb25hbGl0eSwgYnV0IHRoZSBzYW1lIGlzDQpub3QgdHJ1ZSBmb3IgImdldCIgYWRk
cmVzc2VzIHdoaWNoIG9mdGVuIHN0YXJ0IGF0IDAuICBCb3R0b20gbGluZSBpcw0KdGhhdCB5b3Vy
IEZQR0EgY3VzdG9tIGNvZGUgbmVlZHMgdG8gaGFuZGxlIHNlcGFyYXRlbHkgYm90aCBnZXQgJiBz
ZXQNCmZ1bmN0aW9uYWxpdHkuDQoNCk9uY2UgaW1wbGVtZW50ZWQsIHlvdSBzaG91bGQgYmUgYWJs
ZSB0byB2ZXJpZnkgcHJvcGVyIG9wZXJhdGlvbiBvZg0KeW91ciByZWdpc3RlcnMgaW4gYSB0ZXN0
YmVuY2guIFRoaXMgd2lsbCB0ZWxsIHlvdSBpZiB5b3VyDQppbXBsZW1lbnRhdGlvbiBpcyB3b3Jr
aW5nIGFzIHlvdSBleHBlY3QuDQpSb2INCg0KT24gV2VkLCBNYXkgNSwgMjAyMSBhdCA4OjU1IEFN
IENPVVJBTlQgRnJlZGVyaXF1ZSAtIENvbnRyYWN0b3IgdmlhDQpVU1JQLXVzZXJzIDx1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6DQo+DQo+IEhlbGxvIFVzZXJzLA0KPg0KPg0KPg0K
PiBJIGhhdmUgY3JlYXRpbmcgYSBwZXJzb25uYWwgYmxvY2sgYnV0IHdoZW4gSSByZWFkIHRoZSB2
YWx1ZSBvZiBteSByZWdpc3RlciBpdCByZXR1cm4gYWx3YXlzIHRoZSBzYW1lIHZhbHVlLg0KPg0K
PiBXaGVuIEkgdXNlIHNldF9hcmcgYW5kIGdldF9hcmcgdGhlIHZhbHVlIGNoYW5nZSBsaWtlIEkg
d2FudCBidXQgd2hlbiBJIHRyeSB0byByZWFkIHRoZSByZWdpc3RlciB0aGF0IGlzIGFzc29jaWF0
aW5nIHdpdGggdGhlIHByZWNlZGVudCBhcmcgd2l0aCBzcl9yZWFkMzIgaXQgbG9vayBsaWtlcyB0
aGF0IHRoZSB2YWx1ZSBkaWRu4oCZdCBjaGFuZ2UuDQo+DQo+IEZvciBleGFtcGxlIGluIG15IHht
bCBmaWxlIEkgaGF2ZSA6DQo+DQo+IDxyZWdpc3RlcnM+DQo+DQo+ICAgICAgICAgICAgICAgPHNl
dHJlZz4NCj4NCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxuYW1lPlJFR19DRkc8L25h
bWU+DQo+DQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YWRkcmVzcz4xMzA8L25hbWU+
DQo+DQo+ICAgICAgICAgICAgICAgPC9zZXRyZWc+DQo+DQo+IDwvcmVnaXN0ZXJzPg0KPg0KPg0K
Pg0KPiA8YXJncz4NCj4NCj4gICAgICAgICAgICAgICA8YXJnPg0KPg0KPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgPG5hbWU+Y29uZmlnPC9uYW1lPg0KPg0KPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgPHR5cGU+aW50PC90eXBlPg0KPg0KPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgPHZhbHVlPjA8L3ZhbHVlPg0KPg0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
PGFjdGlvbj4NCj4NCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
U1JfV1JJVEUo4oCcUkVHX0NGR+KAnSwgJGNvbmZpZykNCj4NCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDwvYWN0aW9uPg0KPg0KPiAgICAgICAgICAgICAgIDxhcmc+DQo+DQo+IDwvYXJn
cz4NCj4NCj4NCj4NCj4gSWYgSSB1c2Ugc3JfcmVhZDMyIGZvciByZWFkIGF0IHRoZSBhZGRyZXNz
IDEzMCBpdCBhbHdheXMgcmV0dXJuIDEwIGV2ZW4gaWYgSSBoYXZlIHRyeSB0byBtb2RpZnkgdGhl
IHZhbHVlIHdpdGggc3Jfd3JpdGUo4oCcUkVHX0NGR+KAnSwgMTAwMCkgb3Igc3Jfd3JpdGUoMTMw
LCAxMDAwKQ0KPg0KPiBJdCBpcyB0aGUgc2FtZSBwcm9ibGVtIGlmIEkgY2hhbmdlIHRoZSB2YWx1
ZSB3aXRoIHNldF9hcmco4oCcY29uZmln4oCdLCAxMDAwKSwgaXTigJlzIG9rYXkgd2hlbiBJIHJl
YWQgd2l0aCBnZXRfYXJnKOKAnGNvbmZpZ+KAnSkgSSBvYnRhaW4gMTAwMCBidXQgc3Jfd3JpdGUg
cmV0dXJuIGFsd2F5cyAxMC4NCj4NCj4NCj4NCj4gSeKAmW0gd29ya2luZyB3aXRoIFVIRCAzLjEz
IGluIEMrKy4NCj4NCj4NCj4NCj4gVGhhbmtzIGZvciB5b3VyIGhlbHAuDQo+DQo+DQo+DQo+IFJl
Z2FyZHMuDQo+DQo+DQo+DQo+IEZyZWQNCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
