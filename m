Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0E099392D
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 23:27:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E27183859D7
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 17:27:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728336465; bh=j46JFnz+IGGW3MtDn0bbKm+NdhpMObpq47bzekPECWc=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=eImv4PeOmorJNdBtXQ+O6QLo8kbWL2W+ulAbG4hpv7NPmhvQ2iFkePOjReNtxmS0w
	 CKp33itfADCOO0PaEyPDQu6E4fRJMiNzUIEmh/kqZ9VEeTnqQ24qb+oeJT1ktA4c9A
	 JQmE18mSPS6n2k9JwSN2E7zKiHN7sI29m3X26bXoiInSRcx8CxuF4s/qPds7fxjaF2
	 pmf56O1sqfUXTAipw0nL4kYSnreFao7f7rVJ8u/vQsIjTy5if5usDWH1wYR1hevOr1
	 E3WYoZJhnQfEKsUkiLtXaAakYk3kCk4sW9zGCDC9DUD8XADSJGLAhXGAtc8rj1qEQP
	 b7zDWp4Bbskrw==
Received: from resqmta-a2p-658918.sys.comcast.net (resqmta-a2p-658918.sys.comcast.net [96.103.146.52])
	by mm2.emwd.com (Postfix) with ESMTPS id AF98D3858C1
	for <usrp-users@lists.ettus.com>; Mon,  7 Oct 2024 17:26:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="NT3oFtQQ";
	dkim-atps=neutral
Received: from resomta-a2p-647654.sys.comcast.net ([96.103.145.231])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 256/256 bits)
	(Client did not present a certificate)
	by resqmta-a2p-658918.sys.comcast.net with ESMTPS
	id xncNsRM2itQNYxvFhsC32J; Mon, 07 Oct 2024 21:26:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1728336410;
	bh=Fsi+XuItXFC5DRDwbzu9ASTpZ7LakyrhdAU3f8eidw8=;
	h=Received:Received:Message-ID:Date:MIME-Version:Subject:To:From:
	 Content-Type:Xfinity-Spam-Result;
	b=NT3oFtQQVZUBv1Uc43FUtxZ+OwtK+6OASH7hEDvCHMsaU0aa3cX/RH7nD1gR4/Ct9
	 0ttKrPH+MaLUPaXXmXIvmQEk/qiJp/Qj1AH7hYIRly9eWS8lRlaMcldG6BwwRA/0Wt
	 80ioq827iZUgzSnCbdP7yW/FxX56NpNsNj4oWc1usrv1EKMVWyd2+Qe9JHWNYuDq3q
	 /+ohC+leTKB3ZlJ0ZHlW2Z1oVAHgabuxVqcZXm/OoV21326sMBceMAFL803yUkxbUt
	 wV6xOVua3MT/Sa012GuA2MMdPZEbGHBsVT2j9Lmf3dDzwYxia5mZOJUvv+kc53sWXm
	 VlDtV0rZ+0vPw==
Received: from [IPV6:2601:647:4b00:aafb:8556:b73d:e580:b1c8]
 ([IPv6:2601:647:4b00:aafb:8556:b73d:e580:b1c8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 256/256 bits)
	(Client did not present a certificate)
	by resomta-a2p-647654.sys.comcast.net with ESMTPSA
	id xvFgsb3MPLQwZxvFhsQf1j; Mon, 07 Oct 2024 21:26:49 +0000
Message-ID: <36596c17-6d46-4bc0-b682-fb1dc19e4a83@comcast.net>
Date: Mon, 7 Oct 2024 14:26:48 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <1hIYAC9aaQbrg89Shz4zifzEIEMakHdKW6A0BHXHgw@lists.ettus.com>
Content-Language: en-US
In-Reply-To: <1hIYAC9aaQbrg89Shz4zifzEIEMakHdKW6A0BHXHgw@lists.ettus.com>
X-CMAE-Envelope: MS4xfC8kbRP62R21JFoyW3tPo0rjs3Hnm+wbCM1Y9bpgVS3Q8/UCM7fNiNAdHVUDndTX0wSBOGkuJX4AggJbcP0ZHUVgcBRjZ4UGTygiWI0nO8WANAMfxDBR
 zDOQc4DoJ4VShcFceh6mePoxhC+b40hl7CvAbufhK/0QUp+/z8Hl2WUNYgq7WnNJRt89MR6+AaBAxYk5goV+7Egn4EcONsypVVSOgbCwAnsEVxOk37Elesdt
 pbWW8Sd3u6wpuLMdguzmQiAgZq3Fa6kR8W/xg5bN6bBYTu/CaVIIFznnQVzq7SAIo8SNxngcEQE8sq2jcjMHUw==
Message-ID-Hash: DIIYOEKVA5G6DVH2B2JCO3PXUPU5XCMY
X-Message-ID-Hash: DIIYOEKVA5G6DVH2B2JCO3PXUPU5XCMY
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: "buffer_double_mapped :warning: allocate_buffer:" for dvbt_rx_8k.grc
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DIIYOEKVA5G6DVH2B2JCO3PXUPU5XCMY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

VGhvc2UgYnVmZmVyIHdhcm5pbmdzIGFyZSBub3JtYWwgYW5kIGNhbiBiZSBpZ25vcmVkLiBUaGV5
IGFyZSBqdXN0IGZyb20gDQpibG9ja3MgdXNpbmcgdmVjdG9yIHNpemVzIHRoYXQgYXJlIG5vdCBh
IHBvd2VyIG9mIDIuDQoNClRoZSBpbnB1dCBmaWxlIChhZHYxNi5jZmlsZSkgaXMgbm90IGEgVHJh
bnNwb3J0IFN0cmVhbSwgaXQncyBhbiBJUSBmaWxlIA0Kb2YgYSBEVkItVCB0cmFuc21pc3Npb24u
IFRoZSBmbG93IGdyYXBoIHN0b3BzIGFmdGVyIGEgd2hpbGUgYmVjYXVzZSB0aGUgDQoicmVwZWF0
IiBwYXJhbWV0ZXIgb24gdGhlIGZpbGUgc291cmNlIGlzIHNldCB0byAiTm8iLg0KDQpUaGUgSVEg
ZmlsZSBpcyBwcm92aWRlZCB0byB0ZXN0IHRoZSBmbG93IGdyYXBoLiBUaGUgbmV4dCBzdGVwIHdv
dWxkIGJlIA0KdG8gZGlzYWJsZSB0aGUgZmlsZSBzb3VyY2UgYW5kIHRocm90dGxlIGJsb2NrIGFu
ZCBlbmFibGUgdGhlIFVIRCBVU1JQIA0Kc291cmNlIGJsb2NrIChvciBzb21lIG90aGVyIHNvdXJj
ZSBibG9jayBmb3IgeW91ciBzcGVjaWZpYyBTRFIpIGFuZCB0cnkgDQp0byByZWNlaXZlIGEgc2ln
bmFsIG92ZXIgdGhlIGFpci4NCg0KQW5kIGFzIE1hcmN1cyBzYWlkLCB0aGlzIGlzIHJlYWxseSBh
IEdOVSBSYWRpbyBxdWVzdGlvbi4NCg0KUm9uDQoNCk9uIDEwLzcvMjQgMDk6NDMsIGg1N2phZmFy
aUBnbWFpbC5jb20gd3JvdGU6DQo+DQo+IEhpLCBJIGFtIHJ1bm5pbmcg4oCcZHZidF9yeF84ay5n
cmPigJ0gd2l0aCBzYW1wbGUgdHMgZmlsZS4gVGhlIHJlc3VsdCBzYXZlIA0KPiB0byB0aGUgb3V0
cHV0IGZpbGUgYW5kIGFsc28gd2l0aCBVRFAgc2luayBJIGNhbiBzZWUgdGhlIHZpZGVvIHN0cmVh
bSANCj4gaW4gdGhlIHZsYy4gQnV0IGV2ZXJ5IHRpbWUgaXQgc3RvcCBhZnRlciBhIHdoaWxlIGFu
ZCBnZW5lcmF0ZWQgb3V0cHV0IA0KPiB0cyBmaWxlIHdpdGggZml4ZWQgc2l6ZSBvZiAyNS4yTUIu
IGhlcmUgaXMgdGhlIHdhcm5pbmcgSSByZWNlaXZlIGdudSANCj4gcmFkaW86DQo+DQo+IFFTb2Nr
ZXROb3RpZmllcjogQ2FuIG9ubHkgYmUgdXNlZCB3aXRoIHRocmVhZHMgc3RhcnRlZCB3aXRoIFFU
aHJlYWQNCj4NCj4gYnVmZmVyX2RvdWJsZV9tYXBwZWQgOndhcm5pbmc6IGFsbG9jYXRlX2J1ZmZl
cjogdHJpZWQgdG8gYWxsb2NhdGUgMTAgDQo+IGl0ZW1zIG9mIHNpemUgNjA0OC4gRHVlIHRvIGFs
aWdubWVudCByZXF1aXJlbWVudHMgMTI4IHdlcmUgYWxsb2NhdGVkLiANCj4gSWYgdGhpcyBpc24n
dCBPSywgY29uc2lkZXIgcGFkZGluZyB5b3VyIHN0cnVjdHVyZSB0byBhIHBvd2VyLW9mLXR3byAN
Cj4gYnl0ZXMuIE9uIHRoaXMgcGxhdGZvcm0sIG91ciBhbGxvY2F0aW9uIGdyYW51bGFyaXR5IGlz
IDQwOTYgYnl0ZXMuDQo+DQo+IGJ1ZmZlcl9kb3VibGVfbWFwcGVkIDp3YXJuaW5nOiBhbGxvY2F0
ZV9idWZmZXI6IHRyaWVkIHRvIGFsbG9jYXRlIDQzIA0KPiBpdGVtcyBvZiBzaXplIDE1MDQuIER1
ZSB0byBhbGlnbm1lbnQgcmVxdWlyZW1lbnRzIDEyOCB3ZXJlIGFsbG9jYXRlZC4gDQo+IElmIHRo
aXMgaXNuJ3QgT0ssIGNvbnNpZGVyIHBhZGRpbmcgeW91ciBzdHJ1Y3R1cmUgdG8gYSBwb3dlci1v
Zi10d28gDQo+IGJ5dGVzLiBPbiB0aGlzIHBsYXRmb3JtLCBvdXIgYWxsb2NhdGlvbiBncmFudWxh
cml0eSBpcyA0MDk2IGJ5dGVzLg0KPg0KPiBidWZmZXJfZG91YmxlX21hcHBlZCA6d2FybmluZzog
YWxsb2NhdGVfYnVmZmVyOiB0cmllZCB0byBhbGxvY2F0ZSA0IA0KPiBpdGVtcyBvZiBzaXplIDQ4
Mzg0LiBEdWUgdG8gYWxpZ25tZW50IHJlcXVpcmVtZW50cyAxNiB3ZXJlIGFsbG9jYXRlZC4gDQo+
IElmIHRoaXMgaXNuJ3QgT0ssIGNvbnNpZGVyIHBhZGRpbmcgeW91ciBzdHJ1Y3R1cmUgdG8gYSBw
b3dlci1vZi10d28gDQo+IGJ5dGVzLiBPbiB0aGlzIHBsYXRmb3JtLCBvdXIgYWxsb2NhdGlvbiBn
cmFudWxhcml0eSBpcyA0MDk2IGJ5dGVzLg0KPg0KPiBidWZmZXJfZG91YmxlX21hcHBlZCA6d2Fy
bmluZzogYWxsb2NhdGVfYnVmZmVyOiB0cmllZCB0byBhbGxvY2F0ZSAxMCANCj4gaXRlbXMgb2Yg
c2l6ZSA2MDQ4LiBEdWUgdG8gYWxpZ25tZW50IHJlcXVpcmVtZW50cyAxMjggd2VyZSBhbGxvY2F0
ZWQuIA0KPiBJZiB0aGlzIGlzbid0IE9LLCBjb25zaWRlciBwYWRkaW5nIHlvdXIgc3RydWN0dXJl
IHRvIGEgcG93ZXItb2YtdHdvIA0KPiBieXRlcy4gT24gdGhpcyBwbGF0Zm9ybSwgb3VyIGFsbG9j
YXRpb24gZ3JhbnVsYXJpdHkgaXMgNDA5NiBieXRlcy4NCj4NCj4gYnVmZmVyX2RvdWJsZV9tYXBw
ZWQgOndhcm5pbmc6IGFsbG9jYXRlX2J1ZmZlcjogdHJpZWQgdG8gYWxsb2NhdGUgNDAgDQo+IGl0
ZW1zIG9mIHNpemUgMTYzMi4gRHVlIHRvIGFsaWdubWVudCByZXF1aXJlbWVudHMgMTI4IHdlcmUg
YWxsb2NhdGVkLiANCj4gSWYgdGhpcyBpc24ndCBPSywgY29uc2lkZXIgcGFkZGluZyB5b3VyIHN0
cnVjdHVyZSB0byBhIHBvd2VyLW9mLXR3byANCj4gYnl0ZXMuIE9uIHRoaXMgcGxhdGZvcm0sIG91
ciBhbGxvY2F0aW9uIGdyYW51bGFyaXR5IGlzIDQwOTYgYnl0ZXMuDQo+DQo+IGJ1ZmZlcl9kb3Vi
bGVfbWFwcGVkIDp3YXJuaW5nOiBhbGxvY2F0ZV9idWZmZXI6IHRyaWVkIHRvIGFsbG9jYXRlIDEw
IA0KPiBpdGVtcyBvZiBzaXplIDYwNDguIER1ZSB0byBhbGlnbm1lbnQgcmVxdWlyZW1lbnRzIDEy
OCB3ZXJlIGFsbG9jYXRlZC4gDQo+IElmIHRoaXMgaXNuJ3QgT0ssIGNvbnNpZGVyIHBhZGRpbmcg
eW91ciBzdHJ1Y3R1cmUgdG8gYSBwb3dlci1vZi10d28gDQo+IGJ5dGVzLiBPbiB0aGlzIHBsYXRm
b3JtLCBvdXIgYWxsb2NhdGlvbiBncmFudWxhcml0eSBpcyA0MDk2IGJ5dGVzLg0KPg0KPiBhbnkg
c29sdXRpb24uIHRoYW5rIHlvdS4NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
