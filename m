Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 806B6A1C0E6
	for <lists+usrp-users@lfdr.de>; Sat, 25 Jan 2025 05:15:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 206A2385B7F
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 23:15:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737778538; bh=cSobMxilH0w7L/m3Lcjhr3s/WhQfslNc5dF4k8U9zek=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=xvtraULUAJbp32+moe6iaJZKnED6GOyAoRe/+1Wjf+DSM8hlMoRkWyOkFi9lOxs/6
	 6cgyI5jewYYqf46K7rWL7Weug7MOk82qTqeHTwEGGOHPPVevx/04jwc2b6c6Cvx34n
	 7NRBLIq3ZadqK/hKHjiaIiTk+VRmXDKnA71HK39nj/UdmRnSK4PpFD1A8dAr5RAx7x
	 bLVnLUcX4w8SvPsqwDCg5t50ywT/NcyozkGd8tATts/tAfiBgCH5IOWXftN8vnsO3U
	 jw/6l80nURalpNeY5D553dg1/zkDns9dxt1GqT7P0Hq7LH07zJHJCMcs6MVaskFRiq
	 rr9K/aFZX/fdg==
Received: from omta039.useast.a.cloudfilter.net (omta039.useast.a.cloudfilter.net [44.202.169.38])
	by mm2.emwd.com (Postfix) with ESMTPS id 2EFD8385AF8
	for <usrp-users@lists.ettus.com>; Fri, 24 Jan 2025 23:14:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="nExPlPeq";
	dkim-atps=neutral
Received: from eig-obgw-6009a.ext.cloudfilter.net ([10.0.30.184])
	by cmsmtp with ESMTPS
	id avZHt5kpS1T3hbXZNtrrzZ; Sat, 25 Jan 2025 04:14:53 +0000
Received: from 119-18-48-61.webhostbox.net ([119.18.48.61])
	by cmsmtp with ESMTPS
	id bXZJtneyjp6oLbXZMtdM1X; Sat, 25 Jan 2025 04:14:53 +0000
X-Authority-Analysis: v=2.4 cv=ANS2oedo c=1 sm=1 tr=0 ts=6794653d
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=VdSt8ZQiCzkA:10 a=j0z1oGNQ4lYA:10 a=kVywuAJEAAAA:8 a=etiEgX_XAAAA:8
 a=0sp5uNRQwCQO_o2aiS0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=26tcdy2dAj9m90MLnbb2:22 a=MLbIUA-Bjd6y1alW9qBG:22 a=IOVrdXkZsZi_Xkr5h5Fc:22
 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vjIw1wJ2MxFWOibcA6EbHKqa+5dt2x2PKfWKbLHH8QQ=; b=nExPlPeqDt+X8HBRXb1fUtU4y2
	7V63uv41IuoKa3jwN23xxmi3i/Va0xUEXc9PAn7cQmsLHktL2Vur6/jQ1LMs3Oh7UVg10CHRyLkcP
	FqdDHHQJD/8KiKy5v01Fv4kIho1HjPCW/U8TO357CBTT3lwdbz5QDXaL48tfjLPpm4s81EvNYFwVn
	QQUCEedMyISEOrjgUK/vD0Z/jFOiBm3Ftsx2mpBL+lzzNViRtrIX1OSxY4PBUTWwuAqfvbbfkZAL5
	csg6qWlGDPAIY8ohatWVetdmU5xR8O4CUS38n6y10oq/PzVUJmhA87iVcZrrarf8Efzo4B3wVsJGU
	WHLlC5zg==;
Received: from [::1] (port=34992 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tbXZD-0007Ck-2F;
	Fri, 24 Jan 2025 23:14:48 -0500
MIME-Version: 1.0
Date: Fri, 24 Jan 2025 23:14:48 -0500
From: kavinraj@atindriya.co.in
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <5b987588-26c2-4a61-b7e0-6185ffd0d0b8@gmail.com>
References: <c0b8b26f43b81d3bc15a37088f15b44d@atindriya.co.in>
 <4887de4b-39c0-444b-8dbd-26b91fc30808@gmail.com>
 <d575f299c7786b09057001c0b6b20599@atindriya.co.in>
 <5b987588-26c2-4a61-b7e0-6185ffd0d0b8@gmail.com>
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <663ea36f08f89d2e628acbe8cd024f47@atindriya.co.in>
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
X-CMAE-Envelope: MS4xfO7siQM0LSwVQqyDXlS7GarfAHnq/ltew0Rm5hLCYbxz396SqYfs6nQPPhqckb2B786QcGUl9pmxeKnFfaSvFM1m6rzqIys/wm+5dUc2IzwAmKFYFBgc
 tRC08i9EFVxfOPqACKQyPaXu8AIa1/2N/4bm4VNeqPfvaZKCOBYKapgnv0xtwMJrCALJ1S6OepQRWbtVeUoUmm1wZ7tgGlVz15O1k6DzKXHzmXpOevb9hC9A
Message-ID-Hash: DZ6OJWBVKFREKHUPJGY2Z6SMG3AYYXSF
X-Message-ID-Hash: DZ6OJWBVKFREKHUPJGY2Z6SMG3AYYXSF
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : B205MINI-I board
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DZ6OJWBVKFREKHUPJGY2Z6SMG3AYYXSF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQogICAgSSBoYXZlIG9uZSBpc3N1ZSBpbiBhY2Nlc3NpbmcgdGhlIEdQSU8gcGluIGluIEIy
MDVtaW5pLWkgYm9hcmQuDQogICAgd2hhdCBpcyB0aGUgbWFzayB2YWx1ZSBpbiB0aGUgQVBJIHVo
ZF91c3JwX3NldF9ncGlvX2F0dHIoKSBmdW5jdGlvbj8NCg0KICAgIEkgaGF2ZSB3cml0dGVuIGNv
ZGUgdG8gYWNjZXNzIHRoZSBwaW4gMSBhbmQgMi4gRm9yIHRoYXQgSSBoYXZlIGdpdmVuIA0KdGhl
IG1hc2sgdmFsdWUgYXMgMHgwMSBhbmQgMHgwMi4gSSBhbSBhYmxlIHRvIGNvbnRyb2wgdGhlIEdQ
SU8gcGluIDEgDQp3aXRoIG1hc2sgdmFsdWUgMHgwMS4gQnV0LCBJIGFtIHVuYWJsZSB0byBhY2Nl
c3MgdGhlIEdQSU8gcGluIDIgd2l0aCANCm1hc2sgdmFsdWUgMHgwMi4NCiAgICBXaGF0IG1heSBi
ZSB0aGUgaXNzdWU/DQogICAgVGhlIGZvbGxvd2luZyBpcyB0aGUgY29kZSBJIGhhdmUgd3JpdHRl
bi4NCg0KY29uc3QgY2hhciogYmFuayA9ICJGUDAiOw0Kc2l6ZV90IG1ib2FyZCA9IDA7DQoNCnVo
ZF91c3JwX3NldF9ncGlvX2F0dHIodXNycCwgYmFuaywgIkNUUkwiLCAwLCAweDAxLCBtYm9hcmQp
Ow0KdWhkX3VzcnBfc2V0X2dwaW9fYXR0cih1c3JwLCBiYW5rLCAiQ1RSTCIsIDAsIDB4MDIsIG1i
b2FyZCk7DQoNCnVoZF91c3JwX3NldF9ncGlvX2F0dHIodXNycCwgYmFuaywgIkREUiIsIDEsIDB4
MDEsIG1ib2FyZCk7DQp1aGRfdXNycF9zZXRfZ3Bpb19hdHRyKHVzcnAsIGJhbmssICJERFIiLCAx
LCAweDAyLCBtYm9hcmQpOw0KDQp1aGRfdXNycF9zZXRfZ3Bpb19hdHRyKHVzcnAsIGJhbmssICJP
VVQiLCAwLCAweDAxLCBtYm9hcmQpOw0KdWhkX3VzcnBfc2V0X2dwaW9fYXR0cih1c3JwLCBiYW5r
LCAiT1VUIiwgMCwgMHgwMiwgbWJvYXJkKTsNCg0KVGhhbmtzLA0KS2F2aW5yYWouDQoNCg0KDQoN
Cg0KT24gMjAyNS0wMS0yNCAwMToyOCwgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPiBPbiAyNC8w
MS8yMDI1IDAxOjE0LCBrYXZpbnJhakBhdGluZHJpeWEuY28uaW4gd3JvdGU6DQo+PiBIaSwNCj4+
IMKgIEluIHVoZF9yeF9zdHJlYW1lcl9pc3N1ZV9zdHJlYW1fY21kKHJ4X3N0cmVhbWVyLCZzdHJl
YW1fY21kKTsgDQo+PiBmdW5jdGlvbiBzZWdtZW50YXRpb24gZmF1bHQgaXMgY29taW5nLiBTbywg
aG93IHRvIHJlc29sdmUgdGhpcyBlcnJvcj8NCj4+IA0KPj4gDQo+IFRoZSBVSEQgc291cmNlIGlu
Y2x1ZGVzIHNvbWUgZXhhbXBsZXMgaW4gQzoNCj4gDQo+IHJ4X3NhbXBsZXNfYy5jDQo+IHR4X3Nh
bXBsZXNfYy5jDQo+IA0KPiANCj4gVGhlc2UgZXhhbXBsZXMgYXBwZWFyIHRvIHdvcmsganVzdCBm
aW5lLg0KPiANCj4gDQo+PiANCj4+IA0KPj4gDQo+PiANCj4+IA0KPj4gDQo+PiANCj4+IA0KPj4g
DQo+PiANCj4+IE9uIDIwMjUtMDEtMjQgMDE6MDQsIE1hcmN1cyBELiBMZWVjaCB3cm90ZToNCj4+
PiBPbiAyNC8wMS8yMDI1IDAwOjMzLCBrYXZpbnJhakBhdGluZHJpeWEuY28uaW4gd3JvdGU6DQo+
Pj4+IEhpLA0KPj4+PiDCoMKgIFJlY2VudGx5LCBJIGhhdmUgYm91Z2h0IFVTUlAgQjIwNW1pbmkg
Ym9hcmQuIEkgYW0gd29ya2luZyBvbiBpdC4gDQo+Pj4+IEkgaGF2ZSBkb3dubG9hZGVkIHRoZSBV
SEQgZHJpdmVyIGZyb20gdGhlIHVidW50dSBwYWNrYWdlKHN1ZG8gDQo+Pj4+IGFwdC1nZXQgaW5z
dGFsbCBsaWJ1aGQtZGV2IHVoZC1ob3N0KS4NCj4+Pj4gDQo+Pj4+IMKgwqAgV2hlbiB0aGUgYm9h
cmQgaXMgY29ubmVjdGVkIHRvIHRoZSBQQyBpdCBpcyBkZXRlY3RlZCB3aGVuIEkgZ2l2ZSANCj4+
Pj4gdGhlIHVoZF9maW5kX2RldmljZXMgaXQgc2hvd3MgdGhlIHNlcmlhbCxuYW1lLHByb2R1Y3Qg
YW5kIHR5cGUuDQo+Pj4+IA0KPj4+PiDCoMKgIFNvLCBJIGhhdmUgd3JpdHRlbiB0aGUgY29kZSBm
b3IgcmVjZWl2aW5nIHRoZSBkYXRhLiBXaGVuIEkgYW0gDQo+Pj4+IGJ1aWxkIHRoZSBjb2RlIGl0
IGRvZXNuJ3Qgc2hvdyBhbnkgZXJyb3IuIFdoZW4gSSBydW4gdGhlIHByb2dyYW0gDQo+Pj4+IHNv
bWUgQVBJIGZ1bmN0aW9ucyBhcmUgd29ya2luZyBmaW5lLiB3aGVuIGl0IHJlYWNoIHRoZSANCj4+
Pj4gdWhkX3J4X3N0cmVhbWVyX2lzc3VlX3N0cmVhbV9jbWQocnhfc3RyZWFtZXIsJnN0cmVhbV9j
bWQpOyBhbmQgDQo+Pj4+IHVoZF9yeF9zdHJlYW1lcl9yZWN2KHJ4X3N0cmVhbWVyLCBidWZmc19w
dHIsIFNBTVBMRVNfUEVSX0JVUlNULCANCj4+Pj4gJnJ4X21ldGFkYXRhLCBidXJzdF9kdXJhdGlv
biwgZmFsc2UsICZpdGVtc19yZWNlaXZlZCk7wqAgaXQgDQo+Pj4+IGF1dG9tYXRpY2FsbHkgdGVy
bWluYXRlcyB0aGUgcHJvZ3JhbS4NCj4+Pj4gDQo+Pj4+IMKgwqAgV2hlbiBJIGRlYnVnIGxpbmUg
YnkgbGluZSwgYWZ0ZXIgcmVhY2hpbmcgdGhlIGFib3ZlIGZ1bmN0aW9uIGl0IA0KPj4+PiBzaG93
cyBsaWtlIE5vIHNvdXJjZSBhdmFpbGFibGUgZm9yIA0KPj4+PiAidWhkX3J4X3N0cmVhbWVyX2lz
c3VlX3N0cmVhbV9jbWQoKSBhdCAweDdmZmZmNzIyN2NmZSIgLsKgIFdoYXQgbWF5IA0KPj4+PiBi
ZSB0aGUgaXNzdWU/DQo+Pj4+IA0KPj4+PiDCoMKgIEFsc28gSSB3YW50IHRvIGNvbmZpZ3VyZSB0
aGUgR1BJTyBwaW5zIGluIHRoZSBib2FyZC4gRm9yIHRoYXQgSSANCj4+Pj4gbmVlZCBHUElPIGJh
bmsgbmFtZSwgQ2FuIHlvdSBnaXZlIG1lIHRoZSBHUElPIGJhbmsgbmFtZSBvZiB0aGlzIA0KPj4+
PiBib2FyZD8NCj4+Pj4gDQo+Pj4+IA0KPj4+PiBXaXRoIHJlZ2FyZHMsDQo+Pj4+IEthdmlucmFq
Lg0KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
Pj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQ0KPj4+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tDQo+Pj4gVGhlcmUncyBhbHNvIGEgImdwaW8iIHV0aWxpdHkgaW4gdGhl
IGV4YW1wbGVzLCB3aGljaCBpbmNsdWRlcyBhIA0KPj4+ICItLWxpc3QtYmFua3MiIG9wdGlvbi4N
Cj4+PiANCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tDQo+Pj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20K
