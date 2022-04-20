Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCE3507F10
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 04:46:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E37A383FE8
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 22:46:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650422816; bh=+tZgubBKm8VIoNFYv1cFMMGmxemu4vt2DBJtyDCTsqI=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rI+rWGGhfD1vGmUiq7qg3bixlkUOARJaA2ksBMJNcwIL3TFU7/IH+F2N0RgO+KrAO
	 tfRpCTdN1LwptZNTOsz67gzlPM3i6+GzDbz3HY+n2QNf2T9Rr2uL1CP4oMULregyVG
	 NdxQ2+umIGHuDpT6FdnsJK58WcrlvOROc1WTpub9m1nRQx97vuitaB9IYgDLBx+Ibe
	 eFvv4Nrfh9nIgTnkMiB/CITeIeVZHOr9USVw3Tb6gbqtXIIjmytx23Ze0ocTQbcp7Q
	 1zqokq9tR+EFMFUjkt71T8PTcaT2HXzMf1s2p7p6KQ9Z1O5kORGPdZZe0rjk6fUxJr
	 VPSL43KNknTzA==
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 58E01384900
	for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 22:45:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L162GfaF";
	dkim-atps=neutral
Received: by mail-wm1-f41.google.com with SMTP id n126-20020a1c2784000000b0038e8af3e788so323149wmn.1
        for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 19:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=ZbC9/x+gom8Mn7+/dEq3vtrw4bGHLZcB4vfG6PWAjJg=;
        b=L162GfaFbtPvc5+pYAe0Thq0Y6X2ZFYnYfeSFPJiGOBNWUg1Bo3z01Wjq9hJZOpJi4
         F+u1pNdbyWDXHlHVRAKUZ/b9HN0KAumGN5Bq7vIKq9TouSPZe+HHApQ06z+jUFixAZAX
         Ho0RpzpsvGrA2wfqVwI9ch3HFgFbnTWS1dNOEm8WnuHYWZ4Gpq5lv4sYseiY5aRLafj9
         xtbjBQEVVqoerOlid5XChP6F6YLgDjzKtOMHTHKrBn6v9q5ma1HCPB7w68tTwyxtVEqA
         lpOvD0hzL75VxTtsD8IFu3Owkwp7f/Q5Hnl62uOXgYOWBzmm2oLoBJXe96ZI6w7Vrrst
         BpKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=ZbC9/x+gom8Mn7+/dEq3vtrw4bGHLZcB4vfG6PWAjJg=;
        b=O4LgsMZUKzRZXN23nMnKjJc4XjRPM0SzUUL1pQDnTt35Q7i+FjHrvD7eBYmICRw6Uj
         b28r5pPOjrdGCBvrWA/sVUf1r9xc/US8Lo+LHZMGrzFZYWeMFCPICeqnvrgWGTR8Jjzr
         a6umTxni2rqyQUvp0uJFSHKI0TfZ4YaAsQ7AeoZFqp8PMvtgb5J2v2yJZKDdYuh+/Oh4
         Y4lf8zfSsjMZ3RMJ/TrEbTr3/G6aELRbKEaZPk1dc2VijdcirKLX6RfuY7OFc7HzAgGu
         Kvm6+dMkYAYKFJKkH6EIEmsj0ge48nfax0xFIiT+015+X7QwOPAtWp2GX+QCnd+Kwy+a
         LJYg==
X-Gm-Message-State: AOAM532K81U3tlmmi57kz73q4FY58URYinx++v3bK4EZQXckMio6PFku
	wR7ZzLLCS2FrJBitrmUK7Y4iAOSpBtTi3/Byc2MpPPosP+M=
X-Google-Smtp-Source: ABdhPJwykD1ErTJjTIlBDUcG3NFJuuqkw9xqABIxMwHJ03g2F3ugtOnHUhyQHhw2MODPybCtWYxSsvUMZGSl2kVIEao=
X-Received: by 2002:a7b:c94a:0:b0:38e:c252:4a58 with SMTP id
 i10-20020a7bc94a000000b0038ec2524a58mr1367228wml.177.1650422748351; Tue, 19
 Apr 2022 19:45:48 -0700 (PDT)
MIME-Version: 1.0
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Wed, 20 Apr 2022 05:45:37 +0300
Message-ID: <CAAxXO2HLcWstb43sCwUPQ=GjCd2VZTq3XEnJNemF4dZosxqk0Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 64YDE4V6KTPI4PDH3WZYN3M3WEUBS7GB
X-Message-ID-Hash: 64YDE4V6KTPI4PDH3WZYN3M3WEUBS7GB
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD compilation in Ubuntu 20.04 (focal)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/64YDE4V6KTPI4PDH3WZYN3M3WEUBS7GB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkkgdXNlZCB0byBoYXZlIFVidW50dSAxNC4wNCBhbmQgaGFkIG5vIGlzc3VlcyB3aXRo
IHVoZC4gUmVjZW50bHkgaSBoYWQNCnRvIHVwZ3JhZGUgdG8gVWJ1bnR1IDIwLjA0LCBhbmQgSSBj
YW4ndCBmaW5kICphbnkqIHVoZCB2ZXJzaW9uIHRoYXQNCmNhbiBjb21waWxlIGluIGl0LiBJIGhh
dmUgdHJpZWQgb3ZlciAyMCBmcm9tIGdpdCBmcm9tIDMuOS4wIHRvDQozLjExLjU6KA0KDQpXaXRo
IGVhcmxpZXIgcmVsZWFzZXMgbGlrZSAzLjkueCBJIGdldCBpbnRvIGJvb3N0IHByb2JsZW1zLCBh
bmQNCnNvbWV0aGluZyBsaWtlICJuYXRpdmUiIG5vdCBkZWZpbmVkLg0KSW4gbW9yZSByZWNlbnQg
cmVsZWFzZXMgbGlrZSAzLjExLnggSSBnZXQ6DQoNCkluIGZpbGUgaW5jbHVkZWQgZnJvbQ0KL2hv
bWUvbmlrb3Mvd29yay91aGQvaG9zdC9saWIvdXNycC9jb3Jlcy9ncGlvX2F0cl8zMDAwLmNwcDo4
Og0KL2hvbWUvbmlrb3Mvd29yay91aGQvaG9zdC9saWIvdXNycC9jb3Jlcy9ncGlvX2F0cl8zMDAw
LmhwcDoyMDo0MjoNCmVycm9yOiBleHBlY3RlZCBjbGFzcy1uYW1lIGJlZm9yZSDigJh74oCZIHRv
a2VuDQogICAyMCB8IGNsYXNzIGdwaW9fYXRyXzMwMDAgOiBib29zdDo6bm9uY29weWFibGUgew0K
ICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4NCm1ha2Vb
Ml06ICoqKiBbbGliL0NNYWtlRmlsZXMvdWhkLmRpci9idWlsZC5tYWtlOjEyMzc6DQpsaWIvQ01h
a2VGaWxlcy91aGQuZGlyL3VzcnAvY29yZXMvZ3Bpb19hdHJfMzAwMC5jcHAub10gRXJyb3IgMQ0K
bWFrZVsxXTogKioqIFtDTWFrZUZpbGVzL01ha2VmaWxlMjo2NTU6IGxpYi9DTWFrZUZpbGVzL3Vo
ZC5kaXIvYWxsXSBFcnJvciAyDQptYWtlOiAqKiogW01ha2VmaWxlOjE2MzogYWxsXSBFcnJvciAy
DQoNClRoaXMgc2VlbXMgbGlrZSBhIGMrKyBpc3N1ZS4uLg0KDQpJcyB0aGVyZSBhbnkgZ2l0IHJl
bGVhc2UgdGhhdCBjb21waWxlcyBpbiBVYnVudHUgMjAuMDQ/DQpJIGtub3cgdGhhdCB5b3UgbGlz
dCBpbiBzdXBwb3J0ZWQgdmVyc2lvbnMsIG9ubHkgVWJ1bnR1IDE0LjA0ICYgMTYuMDQsDQpidXQg
SSBzdXNwZWN0IHRoaXMgaXMgb3V0ZGF0ZWQsIHNpbmNlIFVidW50dSBkb2Vzbid0IHN1cHBvcnQg
dGhlbSBhbnkNCm1vcmUsIGFuZCBpbiB1aGQgaW5zdGFsbGF0aW9uIHlvdSBkZXNjcmliZSAyMC4w
NCBidWlsZCBpbnN0cnVjdGlvbnMuDQoNClRJQQ0KTmlrb3MKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
