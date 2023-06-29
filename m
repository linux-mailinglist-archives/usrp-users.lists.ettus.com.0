Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CC567742BED
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 20:34:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 16007384526
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 14:34:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688063659; bh=6eQbZyBXp9vp0OzQ/UjSbFzTjD18LPqA82oFdNZObRk=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=hoM1D76k/87SNjLcJ/hfJ86zzymE0JZbkjzsZBzDNF5Xsxcp1wthk9NrOLBaNKuPY
	 QEycIi4MijTZdCsHeSVIb+OePkIfrcDvKed4sG7YBrg76Yo2XhHk8iPCFWVLGGaSX5
	 NdyTRN4vmo+AsWvsfzWvXLxAu6Z2JeDe9iJxzOmDxfhWdXJj8vpgBwEDtAmY7dLahk
	 Q+6KbF8owpqqhSITXbKVZGqTuGx0g3YYnHZwPu/7/h5qW+YAC0lhyjFh2QfoM3jPLP
	 ptv7jg6v0IMJVEfqVx8cVTjSjKXtkSzsJSbsYkwWUUj5Lh2wUGEy1kF3dJQR6rBbTE
	 W7+P6rIV2pzVg==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id CCDD6384346
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 14:33:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gq9orJoI";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-634f59e7d47so7174616d6.2
        for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 11:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688063599; x=1690655599;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KQfSnk+FrctfS3YRU9geEaJnawvYj8zdREn/k9Ndv9w=;
        b=gq9orJoID0noNMlxJ7HH/u6d/srG6JUAoxsI6dMkVV8wKT3pHWw3Y694G4xss4HRxX
         6dTCZamTy2l2yNayDjKBvblebZNSAmbTsZbzFhkPbXAmQoSTrShw6m0/naSHlfBfnTVl
         RdDD8j5MwKRnpz4FL62F0V2Www1WlqXuCyeCFnHAWSHlZw22gQHDNk4PoEx3OPsfWtq2
         PryKm4LV/5YH8oAJBL6n13QFfNYvqTSZHsjfhJUFK3sK19v2WThXbvO6m+8+q3BHK0ye
         HAdnvs945XfTJnf7LsgSoYUPMCwiPHKiOco4Ykeh9rEJsrkb6d47YO2JlgXeXHT31bvS
         fx5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688063599; x=1690655599;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KQfSnk+FrctfS3YRU9geEaJnawvYj8zdREn/k9Ndv9w=;
        b=V0tnf9tITE35Ov0d4r0UM1wf6WwNpa//ydztP6FeN0DgU+1Qzox7F3KvXW73/3Gtaj
         dPXL5EhCmqQB4nMWNmIBY/Sc1U/Af3Ng/cpzAzZc5PGVp+iN52LNrmGopBUgYpCyT84/
         /c8t9s+RZhVQ6f0A2U4f0of+QpsPcr2dcqN21lVVWH+rnFvYpJV4W+KYwY6Nrt2tKVkT
         Lq2eU68DUL7iy/59BynvwB4mopVTh7YdiagFAEEslj/+MreY8FRws5rw0lODRlzJYBo+
         0RAA+DbZKTFqlW1uVM/WnrFnd/UVbdc6oZvMy6R/GdijwGja88qHTQHPsecYqrjkIL2c
         kvqw==
X-Gm-Message-State: ABy/qLbNpO5HcUFEMVhOOsH6ne6IVS+k4brPDp6JxkG9P10svXjP6SV4
	BG+tKe2fWPxgLmoy7nixU52ZLFNu4TA=
X-Google-Smtp-Source: APBJJlF4BaF+pa/nGIDEdTj2RFqwJwm9Unhzdx80loTbN3YJW5A18LPOmpQx6LuJs2pFjMFy1f4qtA==
X-Received: by 2002:ad4:4ee8:0:b0:626:272b:28e9 with SMTP id dv8-20020ad44ee8000000b00626272b28e9mr595982qvb.24.1688063598977;
        Thu, 29 Jun 2023 11:33:18 -0700 (PDT)
Received: from smtpclient.apple ([2600:380:1822:6859:e49a:5ed3:98f3:9d3a])
        by smtp.gmail.com with ESMTPSA id e1-20020ad44421000000b0062dfdafa0b7sm7216447qvt.136.2023.06.29.11.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jun 2023 11:33:18 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 29 Jun 2023 14:33:07 -0400
Message-Id: <C6A57FB3-CB76-4F3B-AC3B-9C3FF871CEDA@gmail.com>
References: <e4210d55-383f-d271-0788-4dedf32b71bf@gmail.com>
In-Reply-To: <e4210d55-383f-d271-0788-4dedf32b71bf@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (20F75)
Message-ID-Hash: IYUFJXHXMM74KCVUBDMXAYZEE2EOGU2G
X-Message-ID-Hash: IYUFJXHXMM74KCVUBDMXAYZEE2EOGU2G
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_image_builder
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IYUFJXHXMM74KCVUBDMXAYZEE2EOGU2G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVhLCBJ4oCZbSBhbiBpbnRlcm1pdHRlbnQgUkZOb0MgdXNlci4gIG5vIGlzc3VlcyBidWlsZGlu
ZyBVSEQsIGp1c3Qgd29uZGVyaW5nIGlmIHRoZSBpbWFnZSBidWlsZGVyIG1vZHVsZSBpc27igJl0
IGdldHRpbmcgaW5jbHVkZWQgaW4gdGhlIHNvdXJjZSBidWlsZC4gDQoNCjxlbmQgdHJhbnNtaXNz
aW9uPg0KDQo+IE9uIEp1biAyOSwgMjAyMywgYXQgMTE6NTEsIE1hcmN1cyBELiBMZWVjaCA8cGF0
Y2h2b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4g77u/T24gMjkvMDYvMjAyMyAxMTo0
NCwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPj4gDQo+PiBJbiBteSBleHBlcmllbmNlLCBn
ZXR0aW5nIFVIRCB0byBydW4gb24gVWJ1bnR1IDIyIGlzIGEgaHVnZSBoYXNzbGUuIElmIHlvdSBj
YW4sIEkgcmVjb21tZW5kIGRvd25ncmFkaW5nIHRvIDIwLjA0KGJ1dCBubyBsb3dlcikgYW5kIGl0
IHNob3VsZCBpbnN0YWxsIGZhaXJseSBlYXNpbHkuDQo+PiANCj4+IA0KPiBJIGJ1aWx0IFVIRCA0
LjQuMC4wIG9uIDIyLjA0IGp1c3QgdGhlIG90aGVyIG5pZ2h0LCBhbmQgaW5zdGFsbGVkIGl0IGFs
b25nc2lkZSB0aGUgdmVyc2lvbiB0aGF0IGNvbWVzIHdpdGggVWJ1bnR1IDIyLjA0DQo+ICAgKFVI
RCA0LjEuMC41KS4gIEkgaGF2ZW4ndCB0ZXN0ZWQgaXQgZXh0ZW5zaXZlbHkgKGJlY2F1c2UgdGhl
IGlzc3VlIHdhcyBhYm91dCBidWlsZGluZyBpdCkuDQo+IA0KPiBOb3csIEknbSBub3QgYW4gUkZO
T0MgZ3V5LCBzbyBJIGRpZG4ndCBleGVyY2lzZSBhbnkgb2YgdGhhdCBzdHVmZi4uLg0KPiANCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
