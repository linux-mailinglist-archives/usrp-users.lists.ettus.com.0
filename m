Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A81A74EB187
	for <lists+usrp-users@lfdr.de>; Tue, 29 Mar 2022 18:11:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90C08384016
	for <lists+usrp-users@lfdr.de>; Tue, 29 Mar 2022 12:11:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648570296; bh=FOYLSsW6JryL/vrywURX8YJ0H2MRhr59CpUI7IYKUEY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XLLng+V8lI+GxSYgqHbl3pMuc2Yhvn5qtwgAldMQK2r8qprSiDXD4+HcIfXZKTUGp
	 SO6v7o+BLiFcw2uIwlcvsLTz2s6ZX8TmeJ1KgbPHsrGWvS9PAbypUSFyyiIyi6VMaV
	 Hru5RXZbGDncxrWXkuDSqxl871JPPSuskOd1mCzpwXCIT4QPXiFB5ZqgrSt/secqti
	 2MoMj9z40289Bbc6Ry0ZrOLsVGiGW+kQZ9Mluj/oB7F7KBDJkqDc4vHg8V5Xgj3Gev
	 A5rIEMRExrQTZf9Pqg+24AIjgccKvN3/vzLjx3pfNhhZjm5R+5kbx3cFm4GeWXv+lI
	 QFebkbfmNeswQ==
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 07056384655
	for <usrp-users@lists.ettus.com>; Tue, 29 Mar 2022 12:10:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="FedhzUtO";
	dkim-atps=neutral
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-2e68c95e0f9so189404217b3.0
        for <usrp-users@lists.ettus.com>; Tue, 29 Mar 2022 09:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=PuqcHlU57Gcs7OhbQfWvnauhC48Tl7CASMmdtdu1AU4=;
        b=FedhzUtOBQJ0ZNNK9e54r5bu/jApJ43sQYmnkAoFWhFfYN83sYKYQLMJkQ+QlYskqh
         TchvJXYkqcZ8WloLOZSQc29GppnP9DqEshqPdB2v9+2GEvl/tYBLLRXNW8/sDyoxrhYT
         lQ6+Xavcd+56SWJJrF3urTg7P1knYSWKyWNFAwS2d34uaHo15xKk6n0E4MSqejHzDp2o
         oQXB3fk38RpGnJyjLvRWwD3J7rgiepDPSQZFzFIYrltsTVOMvUALFQcsNCn6KW0DhJ4l
         lFeZIGuqsoY9i0kyNatAAx+MsXrAmWjA1bSjzxwTj287vg7UhhDx29fs5mjbVxAT3its
         4Ljw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=PuqcHlU57Gcs7OhbQfWvnauhC48Tl7CASMmdtdu1AU4=;
        b=k+epU8utfm3mK0J9/E8IQEbYq8GHgWwTHg7DC8exBPNsMFlOompZXE6yF8hCCTS5iP
         PuR2Q+EEhfm1PWyr/gCds3lfn/m2aNhGRBq64AEq2yUfwMfvqpRUzc/R/D70nFLwcvEX
         125pqmPlz8ebsHWjMlG8Mz95DvAXs/1WEpm3nHkisIZ0fN4LndAc5m0HhcQDAcehzAEr
         7AtzjUrSH9UGQ0Uwtk5oTDTfKXPiAQlN4vPqp3nTy6vTjtutVrqzy/kfg7nWkYWpsQsI
         nhPqrhtg7FuiCl6ZcWCMcT3Zvh3gG9DouQCt2eDxBrACVx7t4pqWZ6wZtijLnh+sQFvb
         /Byw==
X-Gm-Message-State: AOAM5311rkDCVGv5mx5PYcEn1jnXiyqRihDdPSpQcOoUSoAiO1V61DeH
	5qSsaQufR4V/Z3/I45HPl90oJpaRL6RgoNhFQxPWnQ==
X-Google-Smtp-Source: ABdhPJzl0eLMuX2WGMrqHpM2FAeuWNcsDeUEXl/61tMMNaC+98OohlZq+tJ7MYGK9TF9RIoQo6zJ5B72TvSgM2mY5dA=
X-Received: by 2002:a0d:dcc3:0:b0:2d1:44a4:14be with SMTP id
 f186-20020a0ddcc3000000b002d144a414bemr31553798ywe.76.1648570244152; Tue, 29
 Mar 2022 09:10:44 -0700 (PDT)
MIME-Version: 1.0
References: <MIm2CZbks9o74skxjfnGWlu4Fvhm1mk3pXicSNlKNfk@lists.ettus.com> <3c23070a-897f-1f03-0c8b-d63ec6695d9b@gmail.com>
In-Reply-To: <3c23070a-897f-1f03-0c8b-d63ec6695d9b@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 29 Mar 2022 12:10:33 -0400
Message-ID: <CAB__hTRqw=Gxv=Op46m1v05Hc1FjoQ1OcRm9oF5RDvK_zG9f2Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: KG6QN5MGSS7TP7ATZHURKRBBQHYQNDJV
X-Message-ID-Hash: KG6QN5MGSS7TP7ATZHURKRBBQHYQNDJV
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Apply transmit scaling factor
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KG6QN5MGSS7TP7ATZHURKRBBQHYQNDJV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXIgMjksIDIwMjIgYXQgMTA6NTkgQU0gTWFyY3VzIEQuIExlZWNoDQo8cGF0Y2h2
b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBPbiAyMDIyLTAzLTI5IDA5OjU1LCByaTI4
ODU2QG1pdC5lZHUgd3JvdGU6DQo+ID4NCj4gPiBJ4oCZbSB1c2luZyBhIFVCWC0xNjAgZGF1Z2h0
ZXJib2FyZC4gTXkgYXBwbGljYXRpb24gdXNlcyBsZXNzIHRoYW4gNTANCj4gPiBNSHogb2YgYmFu
ZHdpZHRoIGF0IGJhc2ViYW5kLg0KPiA+DQo+ID4gSW4gcGFzdCBleHBlcmltZW50YXRpb24gSeKA
mXZlIGRvbmUsIGNoYW5naW5nIHRoZSBSRiBnYWluIHRha2VzIG9uIHRoZQ0KPiA+IG9yZGVyIG9m
IDEgbXMsIGFuZCBJIG5lZWQgdG8gYWRqdXN0IGZvciBkaWZmZXJlbnQgYmVhbSBhbmdsZXMgYW4g
b3JkZXINCj4gPiBvZiBtYWduaXR1ZGUgZmFzdGVyIHRoYW4gdGhhdC4NCj4gPg0KPiA+DQo+ID4N
Cj4gQWgsIGluIHdoaWNoIGNhc2UsIHlvdXIgYmFzZWJhbmQtYmFzZWQgYXBwcm9hY2ggbWFrZXMg
c2Vuc2UuDQo+DQo+IFNvIHVubGVzcyB5b3VyIGV4aXN0aW5nIGNvZGViYXNlIGlzICJvbiB0aGUg
ZWRnZSIgb2YgYmVpbmcgdW5hYmxlIHRvDQo+IGtlZXAtdXAgYXQgeW91ciBzYW1wbGUgcmF0ZXMs
IHRoZW4gZG9pbmcgYSBjb21wbGV4IG11bHRpcGx5IGluIHNvZnR3YXJlDQo+IHdvdWxkIGJlIHRo
ZSB3YXkgdG8gZ28uDQo+DQo+IEl0IGNvdWxkIGFsc28gYmUgZG9uZSBpbiBSRk5vQywgYnV0IHlv
dSdkIGhhdmUgdG8gcmFtcC11cCBvbiBSRk5vQywgYW5kDQo+IHVubGVzcyB0aGVyZSdzIGEgc3Ry
b25nIHBlcmZvcm1hbmNlIHJlYXNvbiBmb3IgZG9pbmcgaXQgaW4gUkZOb0MsIHN0aWNrDQo+IHdp
dGggdGhlDQo+ICAgIHNvZnR3YXJlIHNpZGUuDQoNClllcywgaXQgc2VlbXMgdGhhdCBTVyBpcyBw
cm9iYWJseSB0aGUgYmVzdCB3YXkgdG8gZ28uIEhvd2V2ZXIsIGlmIHlvdQ0KZGlkIHdhbnQgdG8g
ZG8gaXQgaW4gcmZub2MuIFRoZSBleGFtcGxlIHJmbm9jIGJsb2NrIGlzIGEgImNvbXBsZXgNCm11
bHRpcGxpZXIiIGJsb2NrLCBzbyBpdCByZWFsbHkgaXMgbm90IGRpZmZpY3VsdCB0byBkbyBvbiB0
aGUgRlBHQS4NClRoZSBjaGFsbGVuZ2UgaXMgdGhhdCB5b3UgbmVlZCB0byBidWlsZCBpdCB3aGlj
aCByZXF1aXJlcyBhbiBleHBlbnNpdmUNClhpbGlueCBWaXZhZG8gbGljZW5zZS4NClJvYgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
