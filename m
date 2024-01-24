Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FAF83B3A8
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jan 2024 22:11:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAD4F385235
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jan 2024 16:11:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706130713; bh=DW1pm9VJTRdCE6taMs8ssGCLcZe7oMQcYm65b/lpWDc=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=aqu1Ui5nr0hhWBW+vv3Ql+3Fzxy4zAEYdqvjpcbHEMQYv3q1vQ59V4WKk8OR7oAAY
	 j2S4fHRBFd3NBEQECeO8Lobvl6G46uwuouN6Fkjls7tPfxlSmPCROSgUOnuzQMKGfE
	 ghnmH2R5vJSFlRW+J/ajIqv+xjOgSAUnI8GAhM1Abh31gcysI6/8M+lBHa7W7kfYNn
	 LIm13fZmYH4zzmK8Uer2wr7JlCJTo3pmZFLEImERG7l6VS5c/xGwZcT1uhD2z9XJAn
	 e/qC2pXUdpHZDyE3wu6xvk+ZTVUiTpRD/uEQ6WY6eBwIAs0QunMFfCx+mWUmXqvRFT
	 5txC/SVZMJ91w==
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 0CB73384BF2
	for <usrp-users@lists.ettus.com>; Wed, 24 Jan 2024 16:11:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="WkEB7JGt";
	dkim-atps=neutral
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3392b045e0aso4036765f8f.2
        for <usrp-users@lists.ettus.com>; Wed, 24 Jan 2024 13:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1706130697; x=1706735497; darn=lists.ettus.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U63VPU+8pTBaoYsY8HZTc1NIZxxOgThrQOHNQBGn8MM=;
        b=WkEB7JGtBNaFPs5TmyAPbi1hGGQn5SIS9xwmraX53IdgemGnmVluxN40c7xVwCG2lx
         pPLn90aLAGIUTDsAa30D/76J3Qne0bBSa92wSi4/udfi9zQEHnmIPCp8DFvUVs4KpqQn
         a07VvYQg9nhUNziNMbBLy1atWWS7the6/GEgawf84yl99RPUosgHoy1G+XuIHKuPXtcc
         mZSpuUM5MaQhmMv6Km8ul0R0Gea6/HHa6FsJGEx+5Tf+NcErcDdRU8y4Jtxnxv2WSuug
         bMe9AvP45QTDbhvcmKl5X4IftRDcjeQIFVgZQ70Wg5pAb4GSM4NHR+wJtXk7ITiW1z2b
         W1iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706130697; x=1706735497;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U63VPU+8pTBaoYsY8HZTc1NIZxxOgThrQOHNQBGn8MM=;
        b=JU4zJShaoej3x8C/w02q23T5Q9UEmeaJ7JjSM+K6izdfOoGzZ3pzCy3Cd5LNxbOjFo
         dB8gWp6luO/Zx13P4KDIx+bh/+L3s9Xy/CTy/OL+GKid2H4k2pxz9Peq+K2OoYrvXB9d
         dHL/9ZqJGeQxRW+GunWyWaRPH7EHPlPCgW4WmGhg6hK11YVfbm8NNqmNZS8axJ8bvj6v
         zhHgWebrlp89P6jKF6sIoMsHboFAhywziykdSvbEFspYZmj0LiUAzknThZsrcgqiU3/Q
         ijPuMoivw8TXHfMkluN+7BnnQ0WFDG3B0XO+EWAoJvAZL2LfZ2gLxaWbLJ8oHXTdNp5B
         MCWA==
X-Gm-Message-State: AOJu0Yzbug+XbHw5wuxSVCLADfGLIB2XxGNt0PJv9oL57ckYtsQ1szj2
	zPhsOY5Y5WvnN7vq0nFN6zxl2174Fyqj/9Pqgezx1wSG2UmUt8AUmDf4W6Zossk2mMmQF6m4Q5P
	biKyrMtx+ipixLsXOcHexNgSMxsza33yOVSxD
X-Google-Smtp-Source: AGHT+IFMNtqVB1piWvvzbXmBUA/vq6uz5PYGgnGMBmHG0gLfxk5lx7lXOysIhm6ImXv1mDk9Gp4accR+BLjLnTa6bss=
X-Received: by 2002:a05:600c:524f:b0:40e:a5ec:45e7 with SMTP id
 fc15-20020a05600c524f00b0040ea5ec45e7mr1481664wmb.137.1706130696460; Wed, 24
 Jan 2024 13:11:36 -0800 (PST)
MIME-Version: 1.0
References: <jcruQmHQZeKDZZaLSX1gllzmNKa3cT9CH517aGVnU@lists.ettus.com> <ab8ed2aa-f7a2-413e-83e9-c79a1e54c1cf@gmail.com>
In-Reply-To: <ab8ed2aa-f7a2-413e-83e9-c79a1e54c1cf@gmail.com>
Date: Wed, 24 Jan 2024 16:11:24 -0500
Message-ID: <CAB__hTRoWd8xwFkOqVKsVh5nCo8b_Yi59Jcya-KHKihr=g1URQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: G7PSILSVKQD2LWUSAKBWVLQEPQNX3GVA
X-Message-ID-Hash: G7PSILSVKQD2LWUSAKBWVLQEPQNX3GVA
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting Dropped packets
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G7PSILSVKQD2LWUSAKBWVLQEPQNX3GVA/>
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

T24gV2VkLCBKYW4gMjQsIDIwMjQgYXQgMjo0M+KAr1BNIE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2
b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBPbiAyNC8wMS8yMDI0IDEzOjAwLCBqbWFs
b3lhbkB1bWFzcy5lZHUgd3JvdGU6DQo+ID4NCj4gPiBIZWxsbywNCj4gPg0KPiA+DQo+ID4gSSBj
dXJyZW50bHkgaGF2ZSBhbiBhcHBsaWNhdGlvbiB3aGVyZSBJIGFtIGJ1cnN0IHJlY2VpdmluZyhh
Ym91dCA4MA0KPiA+IG1pY3JvIHBlciBtaWxsaSBzZWNvbmQpIHdpdGggdGhlIGV0dHVzIFg0MTAg
YXQgdGhlIGZ1bGwgc2FtcGxlIHJhdGUNCj4gPiBhY3Jvc3MgNCBjaGFubmVscy4gSSBhbSBnZXR0
aW5nIG9jY2FzaW9uYWwgaXNzdWVzIHdoZXJlIGRhdGEgaXMNCj4gPiBkcm9wcGVkICh0ZXJtaW5h
bCBtZXNzYWdlcyBzaG93IOKAnETigJ0gZXJyb3IpLiBJIGhhdmUgYmVlbiBhYmxlIHRvIGdldA0K
PiA+IERQREsgdG8gd29yayBidXQgdGhhdCBkb2VzIG5vdCBzZWVtIHRvIGhhdmUgcmVzb2x2ZWQg
dGhlIGlzc3VlLiBCeSBteQ0KPiA+IGNhbGN1bGF0aW9uLCB0aGlzIGNvbWVzIG91dCB0byBhIGRh
dGEgcmF0ZSBvZiA1LjEyKjEwXjkgR2JpdC9zDQo+ID4NCj4gPiBUaGUgY3VycmVudCBob3N0IGNv
bXB1dGVyIGhhcyBhbiBpOS0xMzkwMEtTLCBOdm1lLCAxMjggR0Igb2YgUkFNLCBhbmQNCj4gPiBJ
IGFtIGN1cnJlbnRseSB1c2luZyBhIE1lbGxhbm94IDEwMCBHYml0IFFTRlAgbmV0d29yayBjYXJk
DQo+ID4NCj4gPiBJIHdvdWxkIHNheSBpbiBnZW5lcmFsLCBJIGFtIGFibGUgdG8gc2F2ZSBqdXN0
IHVuZGVyIDEwMCUgb2YgYWxsIHRoZQ0KPiA+IGRhdGEgSSByZXF1ZXN0IGZyb20gdGhlIHg0MTAs
IGhvd2V2ZXIsIGZvciBvdXIgYXBwbGljYXRpb24sIGl0IGlzIHZlcnkNCj4gPiBjcml0aWNhbCB0
aGF0IHdlIGRvIG5vdCBsb3NlIGFueSBkYXRhLiBJZiBJIHJ1biB0aGUgZGVmYXVsdCBDR180MDAN
Cj4gPiBpbWFnZSB3aXRoIGJlbmNobWFyayByYXRlKDEgY2hhbm5lbCBvbmx5KSwgSSBkbyBub3Qg
Z2V0IGRyb3BwZWQgZGF0YS4NCj4gPiBUaGUgb25seSBzaWduaWZpY2FudCBkaWZmZXJlbmNlIGJl
dHdlZW4gbXkgY3VzdG9tIGhvc3Qgc29mdHdhcmUgYW5kDQo+ID4gYmVuY2htYXJrX3JhdGUuY3Bw
IGlzIEkgc2F2ZSBkYXRhIHRvIGEgLmRhdCBmaWxlKHNpbWlsYXIgdG8NCj4gPiByeF9zYW1wbGVz
X3RvX2ZpbGUuY3BwKSAuDQo+ID4NCj4gPiBJIGhhdmUgbG9va2VkIGF0IHRoZSB0dW5pbmcgbm90
ZXMgaGVyZQ0KPiA+IGh0dHBzOi8va2IuZXR0dXMuY29tL0dldHRpbmdfU3RhcnRlZF93aXRoX0RQ
REtfYW5kX1VIRC4gSSBoYXZlIHRyaWVkDQo+ID4gRFBESywgY29yZSBpc29sYXRpb24vIGRpc2Fi
bGluZyBzeXN0ZW0gaW50ZXJydXB0cywgbmljZSBwcmlvcml0eSwNCj4gPiBtdWx0aXRocmVhZGlu
Zy91aGQ6OnNldF90aHJlYWRfcHJpb3JpdHksIGJ1dCBub25lIGhhdmUgc2VlbWVkIHRvDQo+ID4g
cmVzb2x2ZSB0aGUgaXNzdWUuDQo+ID4NCj4gPiBXaGF0IEkgaGF2ZSBub3RpY2VkIGlzIHRoYXQg
d2hlbiBJIGdldCBhIOKAnETigJ0gZXJyb3IsIGl0IGNvcnJlc3BvbmRzIHRvDQo+ID4gcmVjdigp
IHJldHVybmluZyBhIG51bWJlciBvZiBzYW1wbGVzIGxlc3MgdGhhbiBzYW1wbGVzIHBlciBidWZm
ZXIsDQo+ID4gZm9sbG93ZWQgYnkgYSByZXR1cm4gdmFsdWUgb2YgMC4NCj4gPg0KPiA+IE15IGN1
cnJlbnQgYXNzdW1wdGlvbiBpcyB0aGF0IHRoZSB0YXNrIG9mIHNhdmluZyBkYXRhIHRvIE5WTUUg
aXMNCj4gPiBjcmVhdGluZyBhIGNyaXRpY2FsIHBhdGggdGhhdCBjYW50IGJlIHJlc29sdmVkIHdp
dGggdGhyZWFkDQo+ID4gcHJpb3JpdGl6YXRpb24gb3IgbXVsdGl0aHJlYWRpbmcuIE9yLCBtYXli
ZSBJIGFtIGp1c3Qgbm90IGRvaW5nIHRocmVhZA0KPiA+IHByaW9yaXR5IG9yIG11bHRpdGhyZWFk
aW5nIGNvcnJlY3RseS4gRWl0aGVyIHdheSwgaXQgaXMgc3RyYW5nZSB0byBtZQ0KPiA+IHRoYXQg
cmVjdigpIGNhbiByZXR1cm4gYSBudW1iZXIgb2Ygc2FtcGxlcyBsZXNzIHRoYW4gYnVmZmVyIG91
dHNpZGUgb2YNCj4gPiBhIHN0b3Agc2lnbmFsIG9yIHRpbWVvdXQgc2lnbmFsLg0KPiA+DQo+ID4N
Cj4gPiBBbnkgaGVscC9zdWdnZXN0aW9uIGFyZSBhcHByZWNpYXRlZCwNCj4gPg0KPiA+IEpvZQ0K
PiA+DQo+ID4NCj4gVGhhdCBzdWdnZXN0cyB0aGF0IHBhY2tldHMgYXJlIGdldHRpbmcgZHJvcHBl
ZCBzb21ld2hlcmUgaW4gdGhlIG5ldHdvcmsNCj4gc3RhY2sgLS0gcG9zc2libHkgdGhlIG5ldHdv
cmstY2FyZCBpbnRlcmZhY2UgaW50bw0KPiAgICB0aGUga2VybmVsLg0KPg0KPiBZb3UgaGF2ZSBk
b25lIGFsbCB0aGUgdGhpbmdzIGhlcmU6DQo+DQo+IGh0dHBzOi8va2IuZXR0dXMuY29tL1VTUlBf
SG9zdF9QZXJmb3JtYW5jZV9UdW5pbmdfVGlwc19hbmRfVHJpY2tzDQo+DQo+DQo+IEluY2x1ZGlu
ZyBpbmNyZWFzaW5nIHRoZSBudW1iZXIgb2YgcmluZyBidWZmZXJzIGluIHRoZSBuZXR3b3JrIGNh
cmQ/DQo+DQoNCkhpIEpvZSwNCkkgbm90aWNlZCB0aGF0IHlvdSBoYXZlIDEyOEdCIFJBTS4gIElm
IHlvdSB0dXJuIHRoaXMgaW50byBhIDEyMEdCIFJBTQ0KZHJpdmUsIGlzIHRoaXMgc3VmZmljaWVu
dCBtZW1vcnkgZGVwdGggZm9yIHlvdXIgbmVlZHM/IElmIHRoaXMgaXMNCnBvc3NpYmxlLCB0aGVy
ZSBpcyBhIGdvb2QgY2hhbmNlIGl0IHdpbGwgc29sdmUgeW91ciBpc3N1ZS4NCg0KUHJpb3IgdG8g
RFBESywgSSB0cmllZCB0byBzYXZlIHRvIGZhc3QgU1NEIGFuZCBJIGFsd2F5cyBoYWQgcHJvYmxl
bXMNCmF0IGhpZ2ggcmF0ZXMgKFgzMTAsIGV0YywgIG5vdCBYNDEwIHJhdGVzKS4gSSB3YXMgYWx3
YXlzIGFibGUgdG8gc29sdmUNCnRoZSBwcm9ibGVtIGJ5IHNhdmluZyB0byBhIFJBTSBkcml2ZS4g
IEF0IG9uZSBwb2ludCBJIGV2ZW4gd3JvdGUgYQ0Kc2VwYXJhdGUgdXRpbGl0eSB0byBjb250aW51
YWxseSBtb25pdG9yIGFuZCBjb3B5IGZpbGVzIGZyb20gdGhlIFJBTQ0KZHJpdmUgdG8gdGhlIFNT
RCBzbyB0aGF0IHRoZSBSQU0gZHJpdmUgbmV2ZXIgYWN0dWFsbHkgZmlsbGVkLiAgRXZlbg0Kd2hl
biBJIHRveWVkIHdpdGggRFBESyAoYSBsb25nIHRpbWUgYWdvKSwgSSBoYWQgbXVjaCBpbXByb3Zl
ZCBiZWhhdmlvcg0Kc2F2aW5nIHRvIFNTRCBidXQgc3RpbGwgbm90IGFzIGdvb2QgYXMgd2hlbiBJ
IHNhdmVkIHRvIFJBTSBkcml2ZSB3aGljaA0KYWx3YXlzIGhhcyBnaXZlbiBtZSBwZXJmb3JtYW5j
ZSB0aGF0IHJpdmFscyBiZW5jaG1hcmtfcmF0ZS4NClJvYgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
