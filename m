Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E94BA9DE6
	for <lists+usrp-users@lfdr.de>; Mon, 29 Sep 2025 17:52:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A636E3865C3
	for <lists+usrp-users@lfdr.de>; Mon, 29 Sep 2025 11:52:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759161153; bh=iKaRwUzKgb5gOeZS0KOHlvXfCnhTurnzNflvHkEnq74=;
	h=From:In-Reply-To:Date:References:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=DKFC3/x9he4xBuTDSubPmpiXXPfVnP24XavLJGfdqKQA7yrxHyWWArtMCuQyeaPXU
	 V93LRbkTWdgJo4Xg7b/T8MZvEKmqZVn2SH2OMMQ/KhhX2r4sZedmJM3UPM+WsJUnnZ
	 0/C63WbFrrtJcQuoWg0mXKxPT58otM1HWmvrnD9/j68QDGZEBjtv2aodKKcZZQBXhc
	 044dWcjX24EFpaYBLPSL//r4zONYgKuvL4O9pNtOReA5+fI1lqxF6DUrrb+CmSj/gt
	 aCySlSBnwfySU5RjzwjUuhWFiAPbnkfDUcxL1a/pOV6bqbVlWjG2beOdF+gBu7uhHb
	 bPuDCImbXmprw==
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 76CE73865BD
	for <usrp-users@lists.ettus.com>; Mon, 29 Sep 2025 11:51:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ionconcepts-com.20230601.gappssmtp.com header.i=@ionconcepts-com.20230601.gappssmtp.com header.b="VfKBtjR7";
	dkim-atps=neutral
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-32eb45ab7a0so5429427a91.0
        for <usrp-users@lists.ettus.com>; Mon, 29 Sep 2025 08:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ionconcepts-com.20230601.gappssmtp.com; s=20230601; t=1759161089; x=1759765889; darn=lists.ettus.com;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mCoxdFA92DovSPaZi03dqTSlMVQi5nDAS/dYJfH+plw=;
        b=VfKBtjR7HCqPzbw0MjxL+oH/D6PFx158jWbmynZT53nmgk/S4mfB5LIKj/M2ptzhKR
         ypBHobzg89KJkDODyW+ODLtqZCka0UeL22lsx++jdT7AN/WJRHqUYb3vRUKccptJedw3
         OA07EtfVkDfHrFQTp7EZNT/wf1COw8NNFeIjigchPXzclmrflITz0z/eef713mQRRI19
         gbfnBqHqAgsVK73f2V7tiCSrX8OY0ztQRwCjQRVGOTLLCiZ8hzzhiKmR2+D90p0/s3dw
         vYUF6Saju3POgE02OLf255irnfPdCcTYj8GZjnuN6+Hlyj0aoMNvfCKZOHdgmHoerZfM
         LH1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759161089; x=1759765889;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mCoxdFA92DovSPaZi03dqTSlMVQi5nDAS/dYJfH+plw=;
        b=unQ6EO0cu+b2K89h2nVuK7/gFUPG/OXaIgzcCRrtpqAVM+Cz+OGDQVS1LT5eqmCrC8
         mq5SM8YIURPfGvbiXv2lqmlomPoGBolODz4/Uxj4SVJ1bYlEEtLKwV6Z08/0UDLJ7pMz
         pREu9J1lvPKXrqf1FvHd5JRVuKoYS3Tl2GKfKVZgpracz2TMfZnqd/zg6a/zcjpQLHXd
         YR4dfsYhIgRe4eRcBkiE5t0tMpTWqkSl5SLrgyIOjrifUZfZYWLxEx8iXsBvqEwAwfe1
         4jaaYrrz9WWrmNh/fSkkfgSfTnbHwhXnsSpf1vkCSRtKPWVTHceUzhswS2L2Q4FrPbz1
         +dZA==
X-Gm-Message-State: AOJu0Yxce9cmW9fRBTzu8aA1jr8FSY0TWIwAl6+v9Got+gi7p51bdyKa
	M8poAkgOJiyJuuDVC60jPpVs7sU2OSGqghKQ0FoJPMkC5GMZCR5VTrEC/4BDvXVjFvJQ4XfMabQ
	CL+hN
X-Gm-Gg: ASbGnctXT3jT/pi/1sWC1xR1OXnRe0uC3LeyBH5/TyQd4392MC/fO6gRUcJuBBSqkCR
	r7NZ07Ai9adDQJlm4EHVwaGoxul4c7BW2ZBaTeuyV4pBIqRQjtnaZCQg/1TmOWnOE/cl7aZtUiT
	6m37LQk1bVUxPg7GCu0TpaGrZVPZv/1HjSTk6ACyH+M0ySLV4TmRubDao8SWC6Cy98aJadbqAmY
	crEXAFUmDuuaFq/2mTT+q2k7ipptMo3BPDnftMhHFQ/azQdbk119q/iNeRpR7ZEzXaf0EVDvAqt
	E8hGXT041H1xIbqfgEO3S8Ph2gQuecqaQ87WXuVDR3GPQ1lPNU3S63zIvqQSlP2uLf4WQImS6UZ
	mg2AuNWVwa1ChS5YTwomsruX6K8sW6nSpC2tUNwtDV5D2ULAh3CQkoTQwJ4KWSxslVr+a9794Pz
	4Tv/QIL88Pg0rvPQvd8RXYg37sesbD
X-Google-Smtp-Source: AGHT+IHtjdCfVuutprQV9j3LdqdytaEtLN8xsVdxd6J3JpLnOpDtHuRHuyKLwZPVpzm26KhVmNyIlw==
X-Received: by 2002:a17:90b:4f47:b0:32e:9daa:7347 with SMTP id 98e67ed59e1d1-3342a242c87mr17939566a91.7.1759161089378;
        Mon, 29 Sep 2025 08:51:29 -0700 (PDT)
Received: from smtpclient.apple (h208-100-179-5.bendor.broadband.dynamic.tds.net. [208.100.179.5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33838745ff3sm1623943a91.27.2025.09.29.08.51.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Sep 2025 08:51:29 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
From: Ian Buckley <ianb@ionconcepts.com>
In-Reply-To: <899f5b67-809c-494b-a4d2-1b7be3a3b1e3@destevez.net>
Date: Mon, 29 Sep 2025 08:51:18 -0700
Message-Id: <6504F6BE-ECE9-4123-8D19-C9BA6DB5C358@ionconcepts.com>
References: <899f5b67-809c-494b-a4d2-1b7be3a3b1e3@destevez.net>
To: =?utf-8?Q?Daniel_Est=C3=A9vez?= <daniel@destevez.net>
X-Mailer: Apple Mail (2.3826.600.51.1.1)
Message-ID-Hash: SWXG3ZFT24T7AJH24JC4KD2MWCSRCNQL
X-Message-ID-Hash: SWXG3ZFT24T7AJH24JC4KD2MWCSRCNQL
X-MailFrom: ianb@ionconcepts.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Half duplex with USRP B2xx and GNU Radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SWXG3ZFT24T7AJH24JC4KD2MWCSRCNQL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlcmUgc2hvdWxkIGJlID49IDUwZEIgaXNvbGF0aW9uIGJldHdlZW4gUlgyIGFuZCBSWC9UWCBv
biB0aGUgZGlyZWN0IHBhdGggdGhyb3VnaCB0aGUgc3dpdGNoZXMgYnV0IG9mIGNvdXJzZSB0aGVy
ZSBpcyBsb3RzIG9mIG9wcG9ydHVuaXR5IGZvciBjb3VwbGluZyBpbiBvdGhlciBwbGFjZXMgaW4g
dGhlIHNpZ25hbCBjaGFpbiBhbmQgdGhhdOKAmXMgbm90IG11Y2ggZm9yIGEgc2Vuc2l0aXZlIHJl
Y2VpdmVyLg0KDQpaZXJvaXppbmcgUlggc2FtcGxlcyBiZWZvcmUgdGhlIEREQyBpbnB1dCBiYXNl
ZCBvbiBydW5fdHggd29ya3Mgd2VsbCBidXQgeW91IGRvIGhhdmUgdG8gYWNjb3VudCBmb3IgdGhl
IGdyb3VwIGRlbGF5IG9mIHRoZSBBRDkzNjEgYWxzbyB3aGljaCBpcyBub24gdHJpdmlhbCwgc28g
eW91IG1heSBoYXZlIHRvIGV4dGVuZCB0aGUgdGFpbCBvZiB6ZXJvaXphdGlvbiBkZXBlbmRpbmcg
b24gaWYgeW91IGFyZSBzZW5zaW5nIHBvd2VyIG9yIGFjY2VzcyBjb2RlLg0KDQpBIG1lc3NhZ2Ug
cGFzc2luZyBpbnRlcmZhY2UgZnJvbSBUWCBidXJzdCBsb2dpYyB0byBSWCBwYWNrZXQgZGV0ZWN0
IG1pZ2h0IG5vdCBiZSBhIGJhZCBTL1cgc29sdXRpb24sIGJ1dCB5b3UgaGF2ZSBhIHByZXR0eSB0
aWdodCB0aW1pbmcgY29uc3RyYWludCB0aGVyZSB3aXRoIGl0IHJhY2luZyB0aGUgUkYgcGF0aC4g
TWF5YmUgdGhlcmUgaXMgYSBoYWNrIGhlcmUgd2hlcmUgeW91IGlzc3VlIGEgY291cGxlIHRpbWVk
IFJYIGNvbW1hbmRzIHdoaWxzdCBpc3N1aW5nIHRoZSBUWCBidXJzdCDigKZzb21ldGhpbmcgbGlr
ZSBhIENPUkRJQyBvZmZzZXQgdGhhdCBtb3ZlcyB0aGUgc2lnbmFsIG91dCBvZiB0aGUgcmVjZWl2
ZXIgdHJhY2tpbmcgYmFuZHdpZHRoLg0KDQo+IE9uIFNlcCAyOSwgMjAyNSwgYXQgMzoxNeKAr0FN
LCBEYW5pZWwgRXN0w6l2ZXogPGRhbmllbEBkZXN0ZXZlei5uZXQ+IHdyb3RlOg0KPiANCj4gSGVs
bG8sDQo+IA0KPiBJIGFtIGltcGxlbWVudGluZyBhIGhhbGYtZHVwbGV4IG1vZGVtIHdpdGggR05V
IFJhZGlvIGFuZCBhIFVTUlAgQjJ4eCB0aGF0IHVzZXMgQ1NNQSB0byBjb250cm9sIG1lZGl1bSBh
Y2Nlc3MuIEkgaGF2ZSBhIEdOVSBSYWRpbyBmbG93Z3JhcGggd2l0aCBhIFVTUlAgU291cmNlIGFu
ZCBVU1JQIFNpbmsgYmxvY2tzIGJvdGggc2V0IHRvIHVzZSB0aGUgVFgvUlggYW50ZW5uYS4gVGhl
IFVTUlAgU2luayBibG9jayB1c2VzIGJ1cnN0IHRyYW5zbWlzc2lvbi4gV2hlbiBhIGJ1cnN0IGlz
IHNlbnQsIHRoZSBCMnh4IGF1dG9tYXRpY2FsbHkgc3dpdGNoZXMgdGhlIHJlY2VpdmUgdG8gdGhl
IFJYMiBwb3J0Lg0KPiANCj4gVGhlIGlzc3VlIGlzIHRoYXQgdGhlcmUgaXMgZW5vdWdoIGxlYWth
Z2UgdGhyb3VnaCB0aGUgUlgyIHBvcnQgdGhhdCB0aGUgc3lzdGVtIGlzIGFibGUgdG8gcmVjZWl2
ZSBpdHMgb3duIHRyYW5zbWl0IHBhY2tldHMgd2l0aCBnb29kIFNOUi4gVGhpcyBpcyBhIHByb2Js
ZW0gZm9yIHRoZSBDU01BIHN5c3RlbSBiZWNhdXNlIGl0IG1ha2VzIHRoZSBzeXN0ZW0gZGV0ZWN0
IHRoYXQgdGhlIGNoYW5uZWwgaXMgYnVzeSB3aGlsZSBpdCBpcyB0cmFuc21pdHRpbmcgaXRzIG93
biBwYWNrZXQuIER1ZSB0byB0aGUgbGF0ZW5jeSBiZXR3ZWVuIHRoZSBSWCBhbmQgVFggc3RyZWFt
cyBpbiBHTlUgUmFkaW8sIHRoaXMgcHJldmVudHMgdGhlIG1vZGVtIGZyb20gdHJhbnNtaXR0aW5n
IGJhY2stdG8tYmFjayBwYWNrZXRzICh3aGljaCBpcyBhbGxvd2VkIGFuZCBleHBlY3RlZCBieSB0
aGlzIENTTUEgc2NoZW1lKSwgYmVjYXVzZSB3aGVuIHRoZSBzZWNvbmQgcGFja2V0IGlzIGFib3V0
IHRvIGJlIHNlbnQsIHRoZSBtb2RlbSByZWNlaXZlciBpcyBzdGlsbCBzZWVpbmcgdGhlIGVuZCBv
ZiB0aGUgcHJldmlvdXMgcGFja2V0IGFuZCBkZXRlcm1pbmVzIHRoYXQgdGhlIGNoYW5uZWwgaXMg
c3RpbGwgYnVzeS4NCj4gDQo+IFRvIHNvbHZlIHRoaXMgaXNzdWUsIEkgd291bGQgbGlrZSB0aGUg
VVNSUCBTb3VyY2UgdG8gcmVjZWl2ZSBlaXRoZXIgemVyb3MsIG5vIHNhbXBsZXMgYXQgYWxsLCBv
ciBzb21ldGhpbmcgdGhhdCBhdCBsZWFzdCBkb2VzIG5vdCBoYXZlIHNvIG11Y2ggbGVha2FnZSBv
ZiBpdHMgb3duIFRYIHNpZ25hbC4NCj4gDQo+IElzIGl0IHBvc3NpYmxlIHRvIGRvIHRoaXMgZWl0
aGVyIGJ5IGFwcHJvcHJpYXRlIGNvbmZpZ3VyYXRpb24gaW4gR05VIFJhZGlvIG9yIFVIRD8NCj4g
DQo+IEkndmUgYmVlbiBzdHVkeWluZyB0aGUgc291cmNlcyBvZiBVSEQgYW5kIEdOVSBSYWRpbyB0
byBzZWUgaG93IHRoaXMgY291bGQgYmUgZG9uZS4gVGhlIG9ubHkgdGhpbmcgSSBoYXZlIGZvdW5k
IGlzIHRoYXQgdGhpcyB3b3VsZCBiZSBwb3NzaWJsZSB3aXRoIGEgc21hbGwgY2hhbmdlIHRvIHRo
ZSBGUEdBIGltYWdlLiBGb3IgaW5zdGFuY2UsIHRoaXMgbGluZQ0KPiANCj4gaHR0cHM6Ly9naXRo
dWIuY29tL0V0dHVzUmVzZWFyY2gvdWhkL2Jsb2IvbWFzdGVyL2ZwZ2EvdXNycDMvbGliL3JhZGlv
XzIwMC9yYWRpb19sZWdhY3kudiNMNDQ2DQo+IA0KPiBjb3VsZCBiZSBtb2RpZmllZCB0byByZXBs
YWNlIHRoZSBSWCBzYW1wbGVzIGJ5IHplcm9zIHdoZW5ldmVyIHJ1bl9yeCBpcyBhc3NlcnRlZC4N
Cj4gDQo+IEhvd2V2ZXIgSSB3b3VsZCBwcmVmZXIgbm90IHRvIGJ1aWxkIGEgbW9kaWZpZWQgRlBH
QSBpbWFnZSBmb3IgdGhpcyBzeXN0ZW0sIHNvIEkgd2FzIHdvbmRlcmluZyBpZiBvdGhlciBzb2x1
dGlvbnMgZXhpc3QuDQo+IA0KPiBCZXN0LA0KPiBEYW5pZWwuDQo+IA0KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
