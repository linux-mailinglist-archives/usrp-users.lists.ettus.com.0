Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C17AFA4058B
	for <lists+usrp-users@lfdr.de>; Sat, 22 Feb 2025 05:56:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0AB0B385A18
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 23:56:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740200201; bh=8cjOJzx1VxPNGFZvFUqK6t37D8iZxhXzuQMNfc3fDuU=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=MvXnSu0PJjTPGH3epgtssEpI67hwIisnwftwwh4EvRTPlrCv1ZNtLGpJNdxQDIzdA
	 Y0+hFrsNQc1QXSrnQKbCOFVJ0OCdelJbapaKtgM99p6fcMmPWVjE9FTYIEvQCiMqtP
	 jLD23OhsujOTXkrdhxCD80K7eX49glDV9houJ6x+PRVmnZF+I9AU2y5Ywixl7dy0UN
	 r29O0Iud78fQPjQArGMIb2K7gkyvGKqIXVzo7X2eQNhYqYfVwrMrENdS0k4GSxZHWU
	 HG6Ss8H1x3kXSudK1P4W2TLr2uOS3cvbv/1cB3hO784uyMsQ3b/qochCRHvXeK2ldw
	 lkA27a8w2V7Mg==
Received: from omta35.uswest2.a.cloudfilter.net (omta35.uswest2.a.cloudfilter.net [35.89.44.34])
	by mm2.emwd.com (Postfix) with ESMTPS id 5EC013850B6
	for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 23:56:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="bw80vyg3";
	dkim-atps=neutral
Received: from eig-obgw-5006a.ext.cloudfilter.net ([10.0.29.179])
	by cmsmtp with ESMTPS
	id lZCbtQ8dFMETllhZ5tXT7D; Sat, 22 Feb 2025 04:56:35 +0000
Received: from vps.tictalk.in ([119.18.48.61])
	by cmsmtp with ESMTPS
	id lhZ1tC4On8j7elhZ3tUytK; Sat, 22 Feb 2025 04:56:35 +0000
X-Authority-Analysis: v=2.4 cv=VPzbncPX c=1 sm=1 tr=0 ts=67b95903
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=T2h4t0Lz3GQA:10 a=j0z1oGNQ4lYA:10 a=kVywuAJEAAAA:8 a=etiEgX_XAAAA:8
 a=L6kUJmWul96YTkVttiwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=26tcdy2dAj9m90MLnbb2:22 a=MLbIUA-Bjd6y1alW9qBG:22 a=IOVrdXkZsZi_Xkr5h5Fc:22
 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=pla4igjqSrpO0CLUbmWUunsr61Pg4zFXW1cjZYdwtr0=; b=bw80vyg3o8gRd6yRfIuyFZkbJV
	v+KaM8kDmhNo+LCWXDnZ1DFQakJEC46hBPsrkmLF/B6TyFEd3cV7sB+/VAbSz/X46vx1sbt4ivY33
	gBjTS0r5mKPYiePyAp8TJGSH30LXkRIUQtE8eInvbNlYity9oKnfBJ8jJZ27hLLdkGKgog4sX8NOj
	v3u3EdLqRhlIK2Vhzi/zRByYiv9y7t4BFANzIvWoG2MEo7Di1+CGMTbWVsGWZ6upOc5TSMZ9BMVOd
	tk8LTRC08l3nHiVvIAqQqWtSAIaYvX6KwRQqV4Hmqy7Q3z4VLQ0BHQ1Nurnd06AnKU857Jzx0uVPQ
	UuKls6MQ==;
Received: from [::1] (port=48930 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tlhYw-0001kp-2M;
	Fri, 21 Feb 2025 23:56:30 -0500
MIME-Version: 1.0
Date: Fri, 21 Feb 2025 23:56:30 -0500
From: kavinraj@atindriya.co.in
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <9458cc31-7a51-4259-9bd3-9352749b6964@gmail.com>
References: <4bf5c92ac30f933582427d87157a88c1@atindriya.co.in>
 <756c5135-0f06-4085-8bbb-ac5793b96e21@gmail.com>
 <1936f8facaa71cf7a2c6312aacbcdb42@atindriya.co.in>
 <9458cc31-7a51-4259-9bd3-9352749b6964@gmail.com>
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <1dc1550af10e8946b5157262cb57120b@atindriya.co.in>
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
X-CMAE-Envelope: MS4xfDXwjqUa/8NKuHU692CNaZ2auVZr+P4EmrjAdnP/4OAW5JEoU4eygOetobYg+do9zQvuq6cax4kmPfJMrvILxr64V28ppSoTFvtnJekfnN6LMHmZ0j6m
 ArkIew2qT4tLTyo+8aPAZOfWUb0wZkks34H0tt7lIndWVkkI9abzpVLdBsTgtSLByYMJvz8RjnzRdFBF3YbLYxSNtstWGiRzubc=
Message-ID-Hash: TIR4VB44OMNU27KOVSZ7UFBMJEIDTMWA
X-Message-ID-Hash: TIR4VB44OMNU27KOVSZ7UFBMJEIDTMWA
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : GPIO in USRP B205Mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TIR4VB44OMNU27KOVSZ7UFBMJEIDTMWA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQogICBDYW4gSSB1c2UgdXNsZWVwKDEpIG9yIGFueSBvdGhlciB0ZWNobmlxdWUgaXMgdGhl
cmUgZm9yIEdQSU8gLg0KDQoNCk9uIDIwMjUtMDItMjEgMjM6MzcsIE1hcmN1cyBELiBMZWVjaCB3
cm90ZToNCj4gT24gMjEvMDIvMjAyNSAyMzoyMiwga2F2aW5yYWpAYXRpbmRyaXlhLmNvLmluIHdy
b3RlOg0KPj4gSGksDQo+PiDCoFRoYW5rcyBmb3IgYW5zd2VyaW5nLg0KPj4gwqBDYW4geW91IGV4
cGxhaW4gbWUgY2xlYXJseT8NCj4+IA0KPj4gVGhhbmtzLg0KPiBJJ2Qgc3VnZ2VzdCwgYXQgYSBt
aW5pbXVtLCBsb29raW5nIGF0IHRoZSBNQU4gcGFnZSBmb3IgdXNsZWVwKCkuDQo+IA0KPiANCj4+
IA0KPj4gDQo+PiANCj4+IE9uIDIwMjUtMDItMjEgMjM6MTEsIE1hcmN1cyBELiBMZWVjaCB3cm90
ZToNCj4+PiBPbiAyMS8wMi8yMDI1IDIzOjA1LCBrYXZpbnJhakBhdGluZHJpeWEuY28uaW4gd3Jv
dGU6DQo+Pj4+IEhpLA0KPj4+PiDCoMKgIEluIFVTUlAgQjIwNW1pbmktaSBJIGFtIGFibGUgdG8g
YWNjZXNzIHRoZSBHUElPIFBpbi4gSSBoYXZlIHRvIA0KPj4+PiBjcmVhdGUgYSBQdWxzZSBpbiB0
aGUgR1BJTyBwaW4uIEkgd2FudCB0byBtYWtlIGhpZ2ggdGhlIGdwaW8gcGluIGZvciANCj4+Pj4g
MW1pY3Jvc2Vjb25kIGFuZCBsb3cgZm9yIDk5OW1pY3Jvc2Vjb25kcy4gSG93IHRvIGFjaGlldmUg
dGhpcyANCj4+Pj4gdGltaW5ncyB0aHJvdWdoIGNvZGluZy4gQ2FuIHlvdSBnaXZlIG1lIHRoZSBz
b2x1dGlvbiBmb3IgdGhpcz8NCj4+Pj4gDQo+Pj4+IMKgwqAgSW4gY29kaW5nIGFmdGVyIG1ha2lu
ZyBoaWdoIEkgYW0gZ2l2aW5nIHVzbGVlcCgxKSBmdW5jdGlvbiBidXQgDQo+Pj4+IHdoZW4gSSBh
bSBjaGVjayBpbiB0aGUgb3NjaWxsb3Njb3BlIGl0IGlzIHNob3dpbmcgNjRtaWNyb3NlY29uZHMu
IA0KPj4+PiBIb3c/DQo+Pj4+IA0KPj4+PiANCj4+PiBCZWNhdXNlIGFuIGFwcGxpY2F0aW9uLWxh
bmQgcHJvZ3JhbSBleGVjdXRpbmcgb24gYW4gb3JkaW5hcnkgDQo+Pj4gZ2VuZXJhbC1wdXJwb3Nl
IG9wZXJhdGluZyBzeXN0ZW0gaXMgdW5saWtlbHkgdG8gYmUgYWJsZSB0bw0KPj4+IMKgIGFjaGll
dmUgcmVwZWF0YWJsZSwgMXVzZWMtc2NhbGUgdGltaW5nLsKgIFRoaXMgaGFzIG5vdGhpbmcgdG8g
ZG8sIA0KPj4+IHBlciBzZSwgd2l0aCBVSEQgb3IgVVNSUHMsIGJ1dCByYXRoZXIsIHRvIHVuZGVy
c3RhbmRpbmcNCj4+PiDCoCBob3cgYXBwbGljYXRpb25zIGV4ZWN1dGUgaW4gYSBnZW5lcmFsLXB1
cnBvc2Ugb3BlcmF0aW5nIHN5c3RlbSB0aGF0IA0KPj4+IGlzbid0IHJ1dGhsZXNzbHkgb3B0aW1p
emVkIGZvciAiaGFyZCIgcmVhbC10aW1lIHRhc2tzLg0KPj4+IA0KPj4+IA0KPj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+Pj4gVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+PiBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
