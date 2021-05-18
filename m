Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E183879EC
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 15:27:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 785B4385C65
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 09:27:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DyOrtiby";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id EB2D4384334
	for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 09:26:54 -0400 (EDT)
Received: by mail-qt1-f179.google.com with SMTP id t20so7372189qtx.8
        for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 06:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=08+KSFBOmA0fI+m3bL7Evmc7JOmAbDlRIX9mD40+fho=;
        b=DyOrtibywgz2aaLnSoYuIzxxRxv+WlF2DwCXxdvQaXzTKFjJsiD+7pQIdLVhmD5Xhx
         LVBNq9cOxSboYmmWLsBvFzKwy3rHKNBvLzqQ3p6dzvIs1sXyINNwP+fVdMnUGpRFAcZr
         nJzhx/I08OqQ+jCkU82crmQaAOwghs3gagZ2X4g0ckMPMpQCvLMQrmLLapcZ4UbVEWW7
         w3/lGJ+bmRt8Cwd0OKuMJTZF67p5FXLUqkiMch/bdSkkbXnZnVlP2/KKPHYNVvjQcrtj
         QBjR5GsTVPZSCeilm6/Tw9Fc2DbhQp1w6Q8A8tcsdDlQ+m8HQzMImXr0bG6CFs6PfWNv
         Pyfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=08+KSFBOmA0fI+m3bL7Evmc7JOmAbDlRIX9mD40+fho=;
        b=jPXZMOP0hwe27k3/UekSqMY0Gq67JKJBKmFkYDO/p34MQazoOCqqWll2DSbXH2LYh9
         i2p0BlKdL72W8T1QjWlcPtPelyTta6XBW8CwVkxwPzR3pCB7eSAO9427+fg4hBX53Ojd
         m6/iZp7Wy0h/3rWmX8kCEVGflnEsEod1xLQSn0PHZCxLePYOsp5ZCoN5yaDkrgY+t4+d
         LY40bFrVTI2YpAzfK4UHxZwYlF4T6prM0JmF0J7K2pLuCtE3vKlVyZltB7VdIE1YIVyq
         DIpR8IQ8r2fKyM5w0PjaftR+6v/4WlBDLComgaQR9567Gp/JiqjNJ5okeUAsQZeRTmBd
         J6ow==
X-Gm-Message-State: AOAM533//726HMb9KgSLUM99HWApWfvJdLsIPzp5VlZkDSA2B98REJ2K
	sYDCzyNZ+5IBCMewb0a5qtUkJj27oz0=
X-Google-Smtp-Source: ABdhPJzc67TNYyAnGYUctEijAz8cXM6xo1VdS8xy4drkl2YsBFhsf7HcE4zZUyf7mrfl7QVL9thmXg==
X-Received: by 2002:a05:622a:3d1:: with SMTP id k17mr4548851qtx.50.1621344414052;
        Tue, 18 May 2021 06:26:54 -0700 (PDT)
Received: from ?IPv6:2600:380:9017:c18e:894f:cb51:df11:a4f7? ([2600:380:9017:c18e:894f:cb51:df11:a4f7])
        by smtp.gmail.com with ESMTPSA id n19sm12315500qtp.65.2021.05.18.06.26.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 May 2021 06:26:53 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 18 May 2021 09:26:51 -0400
Message-Id: <CE5DBEB0-BFFA-4F68-A614-DF91D2772412@gmail.com>
References: <d7a81a89-0247-8527-63bd-bd3efb0403df@itsystems.it>
In-Reply-To: <d7a81a89-0247-8527-63bd-bd3efb0403df@itsystems.it>
To: Paolo Palana <p.palana@itsystems.it>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: L4X57GRW4RKIIL3GH2UCE3WMBA2D7Y3F
X-Message-ID-Hash: L4X57GRW4RKIIL3GH2UCE3WMBA2D7Y3F
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SFP+ assignments in RFNoC on X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L4X57GRW4RKIIL3GH2UCE3WMBA2D7Y3F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91IGZvciB0aGUgcmVwbHkhDQpBZnRlciByZWFkaW5nIHRocm91Z2ggdGhlIFJGTm9D
IHNwZWMgSSB0aGluayB0aGUgZmVhdHVyZSB3ZeKAmXJlIHRhbGtpbmcgYWJvdXQgaXMgd2hhdCBJ
IHdvdWxkIGNhc3VhbGx5IGNhbGwg4oCcdHJhbnNwb3J0IHNlbGVjdGlvbuKAnSAgDQpUcmFuc3Bv
cnQgYmxvY2tzIChFdGhlcm5ldCwgYXVyb3JhLCBTRlApIGhhdmUgdGhlaXIgb3duIGNhbGxvdXRz
IGluIHRoZSBsb3ctbGV2ZWwgc291cmNlIGNvZGUsIGJ1dCBkb27igJl0IGhhdmUgZXhwb3N1cmUg
YXQgdGhlIEdOVVJhZGlvLWJsb2NrIGxldmVsLiANCklmIHlvdSBydW4gc2F5IGJlbmNobWFya19y
eCB3aXRoIHRoZSDigJTigJxjaGFubmVscz0wLDHigJ0gZmxhZywgb24gbXkgbWFjaGluZSB0aGF0
IERPRVMgcHJvZHVjZSBzdHJlYW1zIG9uIGJvdGggU0ZQ4oCZcy4gDQoNCkl0IHdvdWxkIGJlIHZl
cnkgaGVscGZ1bCBpZiBzb21lb25lIGZyb20gRXR0dXMgUmVzZWFyY2ggY291bGQgd3JpdGUgdXAg
YSBxdWljayBsaXN0IG9mIHRoZSBmb2xsb3dpbmcgYXJncyBpbiB0aGVpciBjdXJyZW50IHZhbGlk
IHN5bnRheDoNCi1zdHJlYW0gYXJndW1lbnRzDQotYmxvY2sgYXJndW1lbnRzDQotZ3JhcGgvZGV2
aWNlIGFyZ3VtZW50cyANCg0KQSBicmllZiBkZXNjcmlwdGlvbiBhbmQgd2hldGhlciBvciBub3Qg
dGhleSBjYW4gYmUgYWNjZXNzZWQgaW4gR05VUmFkaW8gdmlhIFJGTm9DIGJsb2Nrcy9QeXRob24g
QVBJL0MrKyBBUEkgd291bGQgYWxzbyBoZWxwLiANCg0KSeKAmXZlIGJlZW4gZGlnZ2luZyB0aHJv
dWdoIHRoZSBzb3VyY2UgY29kZSBhbmQgaXTigJlzIGJlZW4gZGlmZmljdWx0IHRvIGZpbmQgdGhl
IHZhbGlkIGFyZ3VtZW50cyBhbmQgdGhlaXIgc3ludGF4LiANCkZvciBleGFtcGxlLCBmb3IgZGV2
aWNlIGFkZHJlc3MgaXMgaXQgaXAtYWRkcjAsIGFkZHIwIG9yIGFkZHI/DQoNClRoYW5rcw0KDQo8
ZW5kIHRyYW5zbWlzc2lvbj4NCg0KPiBPbiBNYXkgMTgsIDIwMjEsIGF0IDAyOjM0LCBQYW9sbyBQ
YWxhbmEgPHAucGFsYW5hQGl0c3lzdGVtcy5pdD4gd3JvdGU6DQo+IA0KPiDvu79IaSwNCj4gDQo+
IEkgbmV2ZXIgdXNlZCBVSEQ0LCBidXQgYXQgbGVhc3QgaW4gVUhEMy4xNSBhbmQgcHJldmlvdXMg
dmVyc2lvbnMsIGZvciB0aGUgYmVzdCBvZiBteSBrbm93bGVkZ2UsIHRoZXJlIGlzIG5vdyB3YXkg
dG8gZXhwbGljaXRseSBhc3NpZ24gYSBnaXZlbiBzdHJlYW0gdG8gYSBnaXZlbiBzZnArIChhbmQg
bGV0IG1lIHNheSB0aGlzIGlzIGEgc2luKS4gQXMgZmFyIGFzIEkgY2FuIHVuZGVyc3RhbmQgdGhl
IGFzc2lnbm1lbnQgaXMsIGluIHNvbWUgd2F5IHN0YXRpYywgdGhlIGZpcnN0IGNoYW5uZWwgaXMg
c3RyZWFtZWQgb24gc2ZwKzAsIHRoZSBzZWNvbmQgb24gc2ZwKzEsIHRoZSB0aGlyZCBhZ2FpbiBv
biBzZnArMCBhbmQgc28gb24uDQo+IA0KPiBIb3BlIHRoaXMgY2FuIGJlIGhlbHBmdWwNCj4gDQo+
IA0KPj4gT24gNS8xNC8yMSA4OjMzIEFNLCBQYXVsIEF0cmVpZGVzIHdyb3RlOg0KPj4gDQo+PiBI
aSB0aGVyZToNCj4+IEltIHRyeWluZyB0byB3cmFwIG15IGhlYWQgYXJvdW5kIHVzaW5nIFJGTm9D
L1VIRDQgYW5kIHRoZSBYMzEwLiBJdmUgZ290dGVuIGJhc2ljIGZsb3dncmFwaHMgd29ya2luZyBh
bmQgSeKAmW0gYnVpbGRpbmcgY3VzdG9tIGltYWdlcyBpbiBWaXZhZG8uIFJpZ2h0IG5vdyBJ4oCZ
bSB3b3JraW5nIG9uIHRoZSBkZWZhdWx0IFhHIGltYWdlLg0KPj4gSSB3b3VsZCBsaWtlIHRvIHNl
bmQgdGhlIHJlY2VpdmVkIHNhbXBsZXMgZnJvbSBvbmUgVUJYMTYwIHRvIDIgZGlmZmVyZW50IHBo
eXNpY2FsIG91dHB1dHMgb24gdGhlIHgzMTAuIFRoZSBzdHJlYW1zIHdpbGwgYmUgZGVjaW1hdGVk
IHRvIGRpZmZlcmVudCByYXRlcyAoaS5lLiBzdHJlYW0wPWhpZ2gtcmF0ZS9zdHJlYW0xPWxvdy1y
YXRlKS4gSXMgdGhlcmUgYSB3YXkgaW4gR05VUmFkaW8vcmZub2MgdG8gcm91dGUgcnggc3RyZWFt
MCB0byBTRlArIFBvcnQgMCBhbmQgcnggc3RyZWFtMSB0byBTRlArIFBvcnQgMT8gSSBjYW7igJl0
IHNlZW0gdG8gZmluZCBhbnkgcmVsZXZhbnQgZG9jdW1lbnRzIG9uIGFzc2lnbmluZyByYWRpbyBJ
RCwgYWRkcmVzcyBvciBwb3J0cy4gQ2FuIHlvdSBoZWxwPw0KPj4gDQo+PiBUaGFua3MhDQo+PiAN
Cj4+IDxlbmQgdHJhbnNtaXNzaW9uPg0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tDQo+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
