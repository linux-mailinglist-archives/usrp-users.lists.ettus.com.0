Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A244EF8D6
	for <lists+usrp-users@lfdr.de>; Fri,  1 Apr 2022 19:22:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C1072384B65
	for <lists+usrp-users@lfdr.de>; Fri,  1 Apr 2022 13:22:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648833720; bh=CCvPg8Xd2ZyPwO+4aKaHorb3PLiwiOOmJneJ2DlcuiE=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=u/zqIuf4hwrq+k1RnKGaIhhAH8V9PojZ8ycM7UxjhdCLgrhiEpRMnpMW+jJ0mPwDx
	 UTg3tRfpBPnbcCCVXyVIR3r3v6B/wXnPZkLQ0ghpx8WW4Rzvi63Vno3CKeU+BDwWbm
	 987iY7lYoZFh95bQ4mfPOFoS8PvfaC1YiAFlllYGzzjj4MdqtJcM7JQSRjDgSvqs5k
	 YohxAtwXwJxBTlOzvsjlHEi2ZqLkJK656ExU18sDACtzHuVoNo43sin6K5sY/YQ8fc
	 oI8MchTsCrGfKn+IsArm1DwZw5u7S1Bmb6MRBrlGwcuDwPaeNRXwATq2c1wRxn1Wtw
	 TK/mLkcotQ9SQ==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id B5D06384ADE
	for <usrp-users@lists.ettus.com>; Fri,  1 Apr 2022 13:21:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AFbyeB3n";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id k125so2698693qkf.0
        for <usrp-users@lists.ettus.com>; Fri, 01 Apr 2022 10:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=IrXyceJiR8Xaa8CcPFmCrVvRamGF5KoGSgmo99cgooE=;
        b=AFbyeB3nT0odB29+5qsq9bSeuiGMZef3acojKHzcynBZIjD08viLP4fxpdVH5L3RR8
         w9UXGz0xrSylLde5FJeVa547EIUaQC7DpcHx55gqZUOtBJH88c//Ea5wCHC89hlTGPFQ
         QGgCUC0Di2uNXfWYJFkqJXuNi2qIOdi+Ex/+Gp5hSSf+7H9ulAKIocvQFX+1w86IOz5P
         o/zKn3ISTJ4ZACQKWWaMRWIu34IMPzjy0IwP8pdLJTCxNhVN9LvOFYq1M02J/zCTRzS9
         p7A3uEPL5JQSty4S9VNCi5sNnjy3iAClcp9t6HSxASlnuaBAWzMPAI8WY7tN/i4HW3/V
         SQ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=IrXyceJiR8Xaa8CcPFmCrVvRamGF5KoGSgmo99cgooE=;
        b=d6tja8Y3fd1IsVz7fK59xVVR4mr7puQZC5HEdEYCitrs1Hg/QZMOqajuUWLLAe2Kz0
         oFnkm4YMptpwjI0BbyuDI6KrCO5K4vdSVvxv2L5pXBR98ZDbdg9V9rlT6r+hAxQMClji
         W8cgsF8OQnKLlk2N2hFwlFEWymwvBXn/N2LpIrwHqjMkbgfQ+8ZLL2wiDx1ODrFhHol3
         WKSTig7ejWw27pCAIWcBkFGfaZGGnkLxHmj/84iXUAAZC8JMTFrbdM1Tlq5IhjjpYjQH
         w4bUwlrRnn1mVBhELReys/xP/OAErslQtJ1G42XVyRTDiOtoZni5qjYB++AOXq0pTn6P
         CQKA==
X-Gm-Message-State: AOAM531EYrC5eUmBMGTVINxEZ0AiYwwrTL+oKdnEBU6Ce+VR84M//hSe
	fYmnMDeZ0frKYZRkhVhEqQQgIGp4FQc=
X-Google-Smtp-Source: ABdhPJy8zdjQ97jlmZQvAj2B9q92JbVBc6+u6YTP8TF9JgwvHOOFaYoikRWEkdzBdzMD7JRKJMXZFQ==
X-Received: by 2002:a05:620a:2588:b0:680:f657:fbd6 with SMTP id x8-20020a05620a258800b00680f657fbd6mr7029233qko.287.1648833669067;
        Fri, 01 Apr 2022 10:21:09 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id b21-20020a05620a04f500b0067b4895472esm1625384qkh.5.2022.04.01.10.21.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Apr 2022 10:21:08 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 1 Apr 2022 13:21:06 -0400
Message-Id: <A0A8A47A-03C8-4449-B6B4-3D19BD5EEC9A@gmail.com>
References: <20220401165020.kdzbyckz7xrxhk5o@barbe>
In-Reply-To: <20220401165020.kdzbyckz7xrxhk5o@barbe>
To: =?utf-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>
X-Mailer: iPhone Mail (19D52)
Message-ID-Hash: HU662L2NG7VWWMWZD2MIIEAODP26II3J
X-Message-ID-Hash: HU662L2NG7VWWMWZD2MIIEAODP26II3J
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Copy file from N310 to host, slow transfer rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HU662L2NG7VWWMWZD2MIIEAODP26II3J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBzZWVtcyBsaWtlbHkuIA0KDQpTZW50IGZyb20gbXkgaVBob25lDQoNCj4gT24gQXByIDEs
IDIwMjIsIGF0IDEyOjUxIFBNLCBDw6lkcmljIEhhbm5vdGllciB2aWEgVVNSUC11c2VycyA8dXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOg0KPiANCj4g77u/SGkgUm9iLA0KPiANCj4+
IE9uIDAxLzA0LzIyIDEwOjQwLCBSb2IgS29zc2xlciB3cm90ZToNCj4+IEkgYW0gdHJ5aW5nIHRv
IGNvcHkgc29tZSBsYXJnZSBmaWxlcyAofjUwME1CKSBmcm9tIHRoZSBOMzEwIHRvIHRoZSBob3N0
Lg0KPj4gVGhlIHRyYW5zZmVyIHJhdGUgSSBnZXQgdXNpbmcgc2NwIG9yIHNzaGZzIChtb3VudGlu
ZyBpbiBlaXRoZXIgZGlyZWN0aW9uKQ0KPj4gaXMgYWJvdXQgMTJNQi9zLiBHaXZlbiB0aGF0IHRo
ZSBpbnRlcmZhY2UgaXRzZWxmIGNhbiBkbyA+MTAwTUIvcywgSSdtDQo+PiB3b25kZXJpbmcgaWYg
dGhlcmUgaXMgYSBmYXN0ZXIgbWV0aG9kLiBPbmUgdGhpbmcgSSB0cmllZCB3YXMgdG8gc2V0dXAg
YSBSQU0NCj4+IGZpbGUgc3lzdGVtIG9uIGJvdGggdGhlIE4zMTAgYW5kIHRoZSBob3N0IGFuZCBj
b3B5IGZyb20gb25lIFJBTSBmaWxlIHN5c3RlbQ0KPj4gdG8gdGhlIG90aGVyLiBCdXQsIHN0aWxs
IG5vIGJldHRlciB0aGFuIDEyIE1CL3MuIEFueSBpZGVhcyBvbiBmYXN0ZXINCj4+IHRyYW5zZmVy
cz8NCj4gDQo+IENvdWxkIGl0IGJlIHRoZSBOMzEwJ3MgQ1BVIHRoYXQgY2Fubm90IGVuY3J5cHQg
ZmFzdGVyIHRoYW4gMTIgTUIvcz8NCj4gVGhlcmUgc2hvdWxkIGJlIGEgcHJvY2VzcyB3aXRoIGFs
bW9zdCAxMDAlIENQVSBpbiAidG9wIC1vICslQ1BVIiBpbiB0aGF0IGNhc2UuDQo+IElmIHRoaXMg
aXMgdGhlIGNhc2UgYW5kIGl0IGlzIGEgZGlyZWN0IGNvbm5lY3Rpb24sDQo+IHlvdSBjb3VsZCBk
cm9wIHRoZSBuZWVkIG9mIGVuY3J5cHRpb24gdG8gc3BlZWQgdXAgdGhlIHRyYW5zZmVyDQo+IChl
Zy4gcHl0aG9uIC1tIGh0dHAuc2VydmVyLCB0YXIgKyBuYykuDQo+IA0KPiBSZWdhcmRzDQo+IC0t
IA0KPiANCj4gQ8OpZHJpYyBIYW5ub3RpZXINCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
