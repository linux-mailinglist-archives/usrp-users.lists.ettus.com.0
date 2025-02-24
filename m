Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A31FA417B6
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 09:46:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E78C038617D
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 03:46:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740386762; bh=d56KDvPYcC4PO3O9EqvHQ6NZU8TRX5VaTntogO5E4F4=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=IeOHtjupePuvmVpdeXA0xBUZR/uRh1Q6iMj3tu/2TaNKwAr3WW9bC/9o5gX1dZbtV
	 mbyjGDjn7FGEmLWKgI3wSFMDCpPcdO4w3YKvCc082O7+mcNgN/t0v+dnr2tI/w9yvg
	 ovT67t697Ad9Rk2rUb7FCbSshqo9D/PGcSAgyQKq8KRGKxNRWkOpFQqLWWnI44km8P
	 mIQLo9vdKp+EU7sI4KtysruWLKKDDz5YXBKbmEf7TU5LzIYPltc10fz8UDizPnQYu3
	 8EFcjjINdwHYlxuXNSCn6+0qYtYh9mnbbsT2aTDjMD2Fbcec1cpnhlWKsK9efdmSYl
	 n5dQNVWleh0bw==
Received: from omta035.useast.a.cloudfilter.net (omta035.useast.a.cloudfilter.net [44.202.169.34])
	by mm2.emwd.com (Postfix) with ESMTPS id 3EA3C3860A0
	for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2025 03:45:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="qfK8iLUa";
	dkim-atps=neutral
Received: from eig-obgw-5006a.ext.cloudfilter.net ([10.0.29.179])
	by cmsmtp with ESMTPS
	id mEhBtYHHkzZPamU5MtB4TA; Mon, 24 Feb 2025 08:45:08 +0000
Received: from vps.tictalk.in ([119.18.48.61])
	by cmsmtp with ESMTPS
	id mU5JtPfic8j7emU5Ltg7KS; Mon, 24 Feb 2025 08:45:08 +0000
X-Authority-Analysis: v=2.4 cv=VPzbncPX c=1 sm=1 tr=0 ts=67bc3194
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=T2h4t0Lz3GQA:10 a=j0z1oGNQ4lYA:10 a=vnREMb7VAAAA:8 a=etiEgX_XAAAA:8
 a=kVywuAJEAAAA:8 a=bcOmaSttzQ9LiwaEh-4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=-1zhkmE011UA:10 a=MLbIUA-Bjd6y1alW9qBG:22 a=26tcdy2dAj9m90MLnbb2:22
 a=IOVrdXkZsZi_Xkr5h5Fc:22 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Dx3loyFFloXztnRZGwowKeHwZSPfsFRymfFkP4x7M+M=; b=qfK8iLUaEW01MO9WEXmQxrV9l1
	Dhmzd46AsAFLhv1MmBdB6fF7PUoCqCwdcfPIJ1pAFgRfGN3iOQoHYBtdQVNwakgmv9foGpg0HVto3
	90I6Mt92d82KX0aZSQAteUVx4o+uiaxihaapnpCHs6tn+iOj1JL1oG1ZzX3hQNmRD4IRYT6n/Ub8k
	dUjAQzu8JTFKJg3wxC2RPHlSt1uxnhpNJwHG93PYVyT7Gyu7WGjUaKG+T2QFUnV9zimikXnYAEgrd
	BXk8S0pVSLvfYLbiMzFtWAer9sgA+SWW5kRtCSVJtyrY6EKPh8PBha9cuoIsSdbc/RRnHaFIrrFnT
	DsHwDoXw==;
Received: from [::1] (port=50350 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tmU5H-0003c1-0J;
	Mon, 24 Feb 2025 03:45:03 -0500
MIME-Version: 1.0
Date: Mon, 24 Feb 2025 03:45:03 -0500
From: kavinraj@atindriya.co.in
To: Martin Braun <martin.braun@ettus.com>
In-Reply-To: <CAFOi1A6cNimH2QuNARK_Ls6bss_cWj1Mty0--WHDet69fO4xiA@mail.gmail.com>
References: <4bf5c92ac30f933582427d87157a88c1@atindriya.co.in>
 <756c5135-0f06-4085-8bbb-ac5793b96e21@gmail.com>
 <1936f8facaa71cf7a2c6312aacbcdb42@atindriya.co.in>
 <9458cc31-7a51-4259-9bd3-9352749b6964@gmail.com>
 <1dc1550af10e8946b5157262cb57120b@atindriya.co.in>
 <5bf8be31-6416-4f54-b93e-b5fb021fe01e@gmail.com>
 <594aa31a69b35f8e23be755e5075d740@atindriya.co.in>
 <CAFOi1A6cNimH2QuNARK_Ls6bss_cWj1Mty0--WHDet69fO4xiA@mail.gmail.com>
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <5503a163d7cf84d2043aa19a5d1e3c6b@atindriya.co.in>
X-Sender: kavinraj@atindriya.co.in
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.atindriya.co.in
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - atindriya.co.in
X-Get-Message-Sender-Via: server.atindriya.co.in: authenticated_id: kavinraj@atindriya.co.in
X-Authenticated-Sender: server.atindriya.co.in: kavinraj@atindriya.co.in
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4xfA85/F2/lzLxnb7Q6WX9nc6/3HtfirtpSM/O+anwC/zQfiFOq/v5oXM3kLLZKPw70IOTCIBVLgq+y3W8dghm/WeYOM+oJP31/nUIQltdqcc7wSnDn7nn
 d0FO3mgbb55p1AniQlgGNtEfrjigkCb86VG4ENQJUGc7o3Q4kf6ib/i+aRXLDeqWGj1zeX1egMH9gI0jvI0UcNZMkoiC3ny3jVI=
Message-ID-Hash: XJS4XVGWLHSYA6MT55IVDIA6DMSTLAAO
X-Message-ID-Hash: XJS4XVGWLHSYA6MT55IVDIA6DMSTLAAO
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : GPIO in USRP B205Mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XJS4XVGWLHSYA6MT55IVDIA6DMSTLAAO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQogICBXaGF0IGlzIHRoZSBtaW5pbXVtIHRpbWUgdG8gdG9nZ2xlIHRoZSBHUElPIHBpbj8N
CiAgIEkgd2FudCB0byBtYWtlIHRoZSBHUElPIHBpbiBoaWdoIGZvciAxbWljcm9zZWNvbmQgYW5k
IGxvdyBmb3IgDQoxbWlsbGlzZWNvbmRzLiBIb3cgaSBhY2hpZXZlIHRoaXMgdGhyb3VnaCBjb2Rl
Pw0KDQoNClRoYW5rcy4NCg0KDQoNCk9uIDIwMjUtMDItMjQgMDE6NTcsIE1hcnRpbiBCcmF1biB3
cm90ZToNCj4gWW91IGRvbid0IHNwZWNpZnkgYSBkZWxheSwgeW91IHNlbmQgb25lIHRpbWVkIGNv
bW1hbmQgdG8gbWFrZSB0aGUgcGluDQo+IGdvIEhJR0gsIGFuZCBhbm90aGVyIHRpbWVkIGNvbW1h
bmQgdG8gbWFrZSBpdCBnbyBMT1cuIEFuZCB0aGUgdHdvDQo+IGNvbW1hbmQtdGltZXMgc2hvdWxk
IGJlICJ5b3VyIGRlbGF5IiBhcGFydC4NCj4gDQo+IFRoaXMgbWF5IGhlbHA6DQo+IGh0dHBzOi8v
d3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9cHBEMDZaRVRuZWsmdD03NXMmcHA9eWdVUFozSmpiMjRn
ZFhOeWNDQm5jR2x2DQo+IA0KPiAtLU0NCj4gDQo+IE9uIFNhdCwgRmViIDIyLCAyMDI1IGF0IDEy
OjEy4oCvUE0gPGthdmlucmFqQGF0aW5kcml5YS5jby5pbj4gd3JvdGU6DQo+IA0KPj4gSGksDQo+
PiBIb3cgdG8gZ2l2ZSB0aGUgZGVsYXkgaW4NCj4+IHVoZF91c3JwX3NldF9jb21tYW5kX3RpbWUo
dWhkX3VzcnBfaGFuZGxlDQo+PiBoLGludDY0X3QgZnVsbF9zZWNzLGRvdWJsZSBmcmFjX3NlY3Ms
c2l6ZV90IG1ib2FyZCkgZnVuY3Rpb24/DQo+PiANCj4+IE9uIDIwMjUtMDItMjIgMDA6MTAsIE1h
cmN1cyBELiBMZWVjaCB3cm90ZToNCj4+PiBPbiAyMS8wMi8yMDI1IDIzOjU2LCBrYXZpbnJhakBh
dGluZHJpeWEuY28uaW4gd3JvdGU6DQo+Pj4+IEhpLA0KPj4+PiBDYW4gSSB1c2UgdXNsZWVwKDEp
IG9yIGFueSBvdGhlciB0ZWNobmlxdWUgaXMgdGhlcmUgZm9yIEdQSU8gLg0KPj4+PiANCj4+PiBZ
b3UgbWlnaHQgYmUgYWJsZSB0byB1c2UgdGltZWQgY29tbWFuZHM6DQo+Pj4gDQo+Pj4gDQo+PiAN
Cj4gaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfdGltZWRjbWRzLmh0bWwjdGlt
ZWRjbWRzX2dlbl9jbWRzDQo+Pj4gDQo+Pj4gQnV0IHNpbmNlIHVzbGVlcCgpIGNhbm5vdCBndWFy
YW50ZWUgYW55IGtpbmQgb2YgbWF4aW11bSBwZXJpb2QNCj4+IHRoYXQNCj4+PiB5b3VyIHByb2Nl
c3Mgd2lsbCBnbyB0byBzbGVlcCwgaXQgaXMgYW4gdW5yZWxpYWJsZQ0KPj4+IG1ldGhvZCB3aGVu
IHByZWNpc2lvbiBhbmQgcmVwZWF0YWJsZSB0aW1pbmcgb2YgQU5ZIGtpbmQgb2YNCj4+ICJkb2lu
Zw0KPj4+IHN0dWZmIHdpdGggZXh0ZXJuYWwgaGFyZHdhcmUiIGlzIHJlcXVpcmVkLiAgRXZlbiBp
Zg0KPj4+IHVzbGVlcCgpIGF0IG1pY3Jvc2Vjb25kLXNjYWxlIGludGVydmFscyAqV0FTKiByZWxp
YWJsZSBhbmQNCj4+PiByZXBlYXRhYmxlLCB0aGVyZSdzIG5vIGd1YXJhbnRlZSBhYm91dCBhbGwg
dGhlICpvdGhlciogdGhpbmdzDQo+Pj4gdGhhdCBhcmUgcmVxdWlyZWQgdG8gbGF1bmNoIGEgY29t
bWFuZCBvdmVyIGENCj4+IGxhdGVuY3ktbm90LWd1YXJhbnRlZWQNCj4+PiBidXMgdG8gdGhlIGV4
dGVybmFsIGhhcmR3YXJlLCBpbmNsdWRpbmcga2VybmVsLWxheWVyDQo+Pj4gVVNCIGRyaXZlcnMs
IGV0YywgZXRjLg0KPj4+IA0KPj4+IA0KPj4+PiANCj4+Pj4gT24gMjAyNS0wMi0yMSAyMzozNywg
TWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPj4+Pj4gT24gMjEvMDIvMjAyNSAyMzoyMiwga2F2aW5y
YWpAYXRpbmRyaXlhLmNvLmluIHdyb3RlOg0KPj4+Pj4+IEhpLA0KPj4+Pj4+IFRoYW5rcyBmb3Ig
YW5zd2VyaW5nLg0KPj4+Pj4+IENhbiB5b3UgZXhwbGFpbiBtZSBjbGVhcmx5Pw0KPj4+Pj4+IA0K
Pj4+Pj4+IFRoYW5rcy4NCj4+Pj4+IEknZCBzdWdnZXN0LCBhdCBhIG1pbmltdW0sIGxvb2tpbmcg
YXQgdGhlIE1BTiBwYWdlIGZvciB1c2xlZXAoKS4NCj4+Pj4+IA0KPj4+Pj4gDQo+Pj4+Pj4gDQo+
Pj4+Pj4gDQo+Pj4+Pj4gDQo+Pj4+Pj4gT24gMjAyNS0wMi0yMSAyMzoxMSwgTWFyY3VzIEQuIExl
ZWNoIHdyb3RlOg0KPj4+Pj4+PiBPbiAyMS8wMi8yMDI1IDIzOjA1LCBrYXZpbnJhakBhdGluZHJp
eWEuY28uaW4gd3JvdGU6DQo+Pj4+Pj4+PiBIaSwNCj4+Pj4+Pj4+IEluIFVTUlAgQjIwNW1pbmkt
aSBJIGFtIGFibGUgdG8gYWNjZXNzIHRoZSBHUElPIFBpbi4gSQ0KPj4gaGF2ZSB0bw0KPj4+Pj4+
Pj4gY3JlYXRlIGEgUHVsc2UgaW4gdGhlIEdQSU8gcGluLiBJIHdhbnQgdG8gbWFrZSBoaWdoIHRo
ZSBncGlvDQo+PiBwaW4NCj4+Pj4+Pj4+IGZvciAxbWljcm9zZWNvbmQgYW5kIGxvdyBmb3IgOTk5
bWljcm9zZWNvbmRzLiBIb3cgdG8gYWNoaWV2ZQ0KPj4gdGhpcw0KPj4+Pj4+Pj4gdGltaW5ncyB0
aHJvdWdoIGNvZGluZy4gQ2FuIHlvdSBnaXZlIG1lIHRoZSBzb2x1dGlvbiBmb3INCj4+IHRoaXM/
DQo+Pj4+Pj4+PiANCj4+Pj4+Pj4+IEluIGNvZGluZyBhZnRlciBtYWtpbmcgaGlnaCBJIGFtIGdp
dmluZyB1c2xlZXAoMSkgZnVuY3Rpb24NCj4+IGJ1dA0KPj4+Pj4+Pj4gd2hlbiBJIGFtIGNoZWNr
IGluIHRoZSBvc2NpbGxvc2NvcGUgaXQgaXMgc2hvd2luZw0KPj4gNjRtaWNyb3NlY29uZHMuDQo+
Pj4+Pj4+PiBIb3c/DQo+Pj4+Pj4+PiANCj4+Pj4+Pj4+IA0KPj4+Pj4+PiBCZWNhdXNlIGFuIGFw
cGxpY2F0aW9uLWxhbmQgcHJvZ3JhbSBleGVjdXRpbmcgb24gYW4gb3JkaW5hcnkNCj4+Pj4+Pj4g
Z2VuZXJhbC1wdXJwb3NlIG9wZXJhdGluZyBzeXN0ZW0gaXMgdW5saWtlbHkgdG8gYmUgYWJsZSB0
bw0KPj4+Pj4+PiBhY2hpZXZlIHJlcGVhdGFibGUsIDF1c2VjLXNjYWxlIHRpbWluZy4gIFRoaXMg
aGFzIG5vdGhpbmcgdG8NCj4+IGRvLA0KPj4+Pj4+PiBwZXIgc2UsIHdpdGggVUhEIG9yIFVTUlBz
LCBidXQgcmF0aGVyLCB0byB1bmRlcnN0YW5kaW5nDQo+Pj4+Pj4+IGhvdyBhcHBsaWNhdGlvbnMg
ZXhlY3V0ZSBpbiBhIGdlbmVyYWwtcHVycG9zZSBvcGVyYXRpbmcNCj4+IHN5c3RlbQ0KPj4+Pj4+
PiB0aGF0IGlzbid0IHJ1dGhsZXNzbHkgb3B0aW1pemVkIGZvciAiaGFyZCIgcmVhbC10aW1lIHRh
c2tzLg0KPj4+Pj4+PiANCj4+Pj4+Pj4gDQo+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+Pj4+Pj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+Pj4+Pj4+IFRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8NCj4+IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+Pj4+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4+Pj4g
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+
Pj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20NCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tDQo+Pj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJz
LWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tDQo+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
