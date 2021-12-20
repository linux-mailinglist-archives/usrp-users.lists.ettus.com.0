Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA4A47B0C8
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 17:00:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A9005384C10
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 11:00:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ccnp70NZ";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 65456384BB1
	for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 10:59:51 -0500 (EST)
Received: by mail-qk1-f177.google.com with SMTP id 132so9744730qkj.11
        for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 07:59:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=402goVb530kXzXttZ/Y7RBiVTJ8JvZDC/q2IB431Ifk=;
        b=ccnp70NZELmzy4ASvj9orn/+3++YafkRj2nDj4zbl/037WFSSLSOELMnKkuIU++0CX
         HKg6ffwewi9G1PmH12bqgBs0yq0Q/CbPofvfcNNavO6OjNnYhtRkpfJpmzG1ziUpquFX
         W2Swv1iZRk9Of2EDwDh83AXXrnxK8AjrlOyB1OgXWNed7hNuMybUX3gY+EahZJCj841q
         VRnZU5sk2IJbPuHhgLfxr+7npM9NvwXcU4Yiu4UbpsxiD7E8yyLIt8kEGNZby7nudVVv
         jcNfZyWLwoNovGcgqZxqnSTYTq4xATtfBX8wvs2yLcWK3+GVrfeYUWpD55jDXKrpLRxL
         UJbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=402goVb530kXzXttZ/Y7RBiVTJ8JvZDC/q2IB431Ifk=;
        b=JgjQ84aqpCtSuC+cF5Q35B1Hn0dIBu6kVVXKT43we/Whd++Kwsm2rQ1VUZutAUTNok
         vppxrJj2QnMj/BRqfS1uvIB+jhOmZ1URwoLqRxWC6jI2A8LEzeFodJ72o8dw+aFiPraP
         SBA6mFAw0eo2KfacW5K43hmmKFJJySC/XPAHo1N1sh9tJ6BHGzPWUxN1/U8NHz85dXu+
         iDJKSIwtaN+3E7ttDboardJUk5xqa1YhxlUrdsGjg3wloQgBbSFlC3kBLfl24MPUZyzO
         IYFmemBY+OwSzQbZ/N9XvsGyjq6Z0uelSuVdYJ6EXS9TFYMa09pbQz8N0t6KGa9dwLrm
         Z6IA==
X-Gm-Message-State: AOAM530B53uuxWnNemTJB2mzmp3zPLzrMdFVy1d9ibbQmSYslwYokxjl
	LGeD4S923dCjSvY/0MPMOlD01mbDWDw=
X-Google-Smtp-Source: ABdhPJwwPyFs0H36C3LNQX/z49X7ooVV2FlWP1+wwCpDAfCdaESDz1tJ8YdYhqYTvx9RUlZra2vMIQ==
X-Received: by 2002:a05:620a:4406:: with SMTP id v6mr9971755qkp.627.1640015990892;
        Mon, 20 Dec 2021 07:59:50 -0800 (PST)
Received: from smtpclient.apple ([2600:380:9053:c7f5:6c42:6fb3:dd86:200f])
        by smtp.gmail.com with ESMTPSA id y10sm11849215qkp.128.2021.12.20.07.59.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Dec 2021 07:59:50 -0800 (PST)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 20 Dec 2021 10:59:48 -0500
Message-Id: <6671CB8A-6924-4003-A6D4-5F7E4DA0022A@gmail.com>
References: <DB8PR09MB370832A1BDA187238CCD6A5D957B9@DB8PR09MB3708.eurprd09.prod.outlook.com>
In-Reply-To: <DB8PR09MB370832A1BDA187238CCD6A5D957B9@DB8PR09MB3708.eurprd09.prod.outlook.com>
To: Michael Hermann <michael.hermann@hotmail.de>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: S5TVJVCH5OPE2DEKCLM233I53OQ55KYR
X-Message-ID-Hash: S5TVJVCH5OPE2DEKCLM233I53OQ55KYR
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: gr-ettus FPGA-only flowgraphs in GNUradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S5TVJVCH5OPE2DEKCLM233I53OQ55KYR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rm9yIHdoYXQgaXTigJlzIHdvcnRoLCB0aGUgUkZOb0MgYmxvY2tzIGFyZSBpbmNsdWRlZCBpbiBH
TlVSYWRpbyAzLjkgaW4gYm90aCBtYWludC0zLjkgYW5kIHRhZyAzLjkuNA0KSSBoYXZlbuKAmXQg
dGVzdGVkIHRoZW0geWV0LCBidXQgaXQgYXBwZWFycyBhcyB0aG91Z2ggdGhleSBhcmUgYWN0aXZl
bHkgYmVpbmcgbWFpbnRhaW5lZC4gDQoNCjxlbmQgdHJhbnNtaXNzaW9uPg0KDQo+IE9uIERlYyAy
MCwgMjAyMSwgYXQgMDU6MjYsIE1pY2hhZWwgSGVybWFubiA8bWljaGFlbC5oZXJtYW5uQGhvdG1h
aWwuZGU+IHdyb3RlOg0KPiANCj4g77u/SGVsbG8sDQo+IA0KPiBpIGFtIGN1cnJlbnRseSB3b3Jr
aW5nIG9uIGEgc21hbGwgcHJvamVjdCB1c2luZyBhbiBVU1JQIFgzMTAgY29tYmluZWQgd2l0aCBV
SEQgNC4wLCBnci1ldHR1cyAzLjggYW5kIEdOVXJhZGlvIDMuOCBvbiBVYnVudHUgMjAuMDQuDQo+
IFRoZSBmaW5hbCBnb2FsIHdvdWxkIGJlIHRvIGltcGxlbWVudCB0aGUgZm9sbG93aW5nIGZsb3dn
cmFwaCBvbiBhbiBGUEdBIHdpdGhvdXQgdHJhbnNmZXJyaW5nIGRhdGEgdG8gdGhlIGhvc3QgaW4g
YmV0d2VlbjoNCj4gDQo+IFJYIFJhZGlvICggLT4gRERDKSAtPiBGSVIgKC0+IERVQykgLT4gVFgg
UmFkaW8NCj4gDQo+IEkgZm9sbG93ZWQgdGhlIHdvcmtzaG9wIGV4YW1wbGUgYW5kIGltcGxlbWVu
dGVkIHRoZSBnYWluIGJsb2NrIHN1Y2Nlc3NmdWxseSBhbmQgaXQgd29ya3MgZm9yIHRoZSBtZW50
aW9uZWQgZXhhbXBsZXMuIEkgdHJpZWQgdG8gaW1wbGVtZW50IHRoZSBhYm92ZSBtZW50aW9uZWQg
Zmxvd2dyYXBoIHdpdGggdGhlIGdhaW4gYmxvY2sgaW5zdGVhZCBvZiBhIEZJUiBmaWx0ZXIgZm9y
IHRlc3RpbmcgcHVycG9zZXMuIFRoaXMgc2V0dXAgZG9lcyBub3Qgc2VlbSB0byB3b3JrIGNvcnJl
Y3RseSBldmVuIHRvdWdoIEdOVXJhZGlvIGRvZXMgbm90IGRpc3BsYXkgYW55IGVycm9ycyBtZXNz
YWdlcy4gVGhlIFRYIFJhZGlvIGRvZXMgbm90IHRyYW5zbWl0IGEgc2lnbmFsLCBldmVuIGlmIHRo
ZXJlIGlzIGFuIGlucHV0IG9uIHRoZSBSWCBSYWRpbyBQYXJ0LiBXZWlyZGx5IGVub3VnaCwgaWYg
aSB1c2UgdGhlIGZvbGxvd2luZyBmbG93Z3JhcGgNCj4gDQo+IFJYIFJhZGlvICAtPiBEREMgLT4g
UlggU3RyZWFtZXIgLT4gVFggU3RyZWFtZXIgLT4gZ2FpbiAtPiBEVUMgLT4gVFggUmFkaW8NCj4g
DQo+IHRoZSBzZXR1cCB3b3JrcyBhbmQgc3VjY2Vzc2Z1bGx5IHJlbGF5cyB0aGUgc2lnbmFsIGJ1
dCByb3V0ZXMgdGhlIGRhdGEgdGhyb3VnaCB0aGUgaG9zdCB3aGljaCBpIHdhbnQgdG8gYXZvaWQg
c2luY2UgdGhlIGdvYWwgaXMgdG8gZnVsbHkgcHJvY2VzcyB0aGUgc2lnbmFsIG9uIHRoZSBGUEdB
Lg0KPiANCj4gR3JlZXRpbmdzIGFuZCB0aGFua3MgaW4gYWR2YW5jZSwNCj4gTWljaGFlbA0KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
