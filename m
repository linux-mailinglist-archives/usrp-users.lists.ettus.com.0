Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10070A1B047
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 07:15:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D496385817
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 01:15:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737699336; bh=fW5H4q1ouZ73rEvWjDej7lwCpPxxI8EHsmSfK6KlCfc=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=scr2DwdfuT3MoEUlMN/Q5DdyadXtG68G07hYkm2IrtkILMP93rez6Rm9pN6FFS93Q
	 5TSJo3TqqkcHu+eCBkkybxDyJc3HmnwFw59sDf/7El2agGXvb7lsmO78eSxmUsJpig
	 oTknSdt/vB1N2jt6KI5gORDM6Jxbx62pFiyTM2pGj9klSjiJV3uD4An7PMe4ZLzhuF
	 V1zOdmsDhVMXX+BIDlkvOsYatiX/VKpmWZeNNQpa6gzV0kHoRq9tAfvoSde0QERtVd
	 G3aKrhSchZ9K0nah8vQ7YHENbeOVWjhypaRpgPzW8nCRlTzBztjwHR26GrEBrCYOPm
	 DK+vMVu925ONw==
Received: from omta039.useast.a.cloudfilter.net (omta039.useast.a.cloudfilter.net [44.202.169.38])
	by mm2.emwd.com (Postfix) with ESMTPS id 3849B3857A4
	for <usrp-users@lists.ettus.com>; Fri, 24 Jan 2025 01:14:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="wVLZQSmL";
	dkim-atps=neutral
Received: from eig-obgw-6008a.ext.cloudfilter.net ([10.0.30.227])
	by cmsmtp with ESMTPS
	id b9Ayt9RvV1T3hbCxytkdFB; Fri, 24 Jan 2025 06:14:54 +0000
Received: from 119-18-48-61.webhostbox.net ([119.18.48.61])
	by cmsmtp with ESMTPS
	id bCxvt0dYcJExYbCxwtTxAA; Fri, 24 Jan 2025 06:14:54 +0000
X-Authority-Analysis: v=2.4 cv=CPEsXwrD c=1 sm=1 tr=0 ts=67932fde
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=VdSt8ZQiCzkA:10 a=j0z1oGNQ4lYA:10 a=kVywuAJEAAAA:8 a=etiEgX_XAAAA:8
 a=18meSoXKFWZNaluV30EA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=26tcdy2dAj9m90MLnbb2:22 a=MLbIUA-Bjd6y1alW9qBG:22 a=IOVrdXkZsZi_Xkr5h5Fc:22
 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=S8YJYD+f/KJU6LTnsjtP7XWX3dtqYRpjEaPuEg62dac=; b=wVLZQSmLSHrjAL91uM095uQDoH
	SPUvVJVBY8hI4S6aTceSRtQWBFphtnkFWbQGMGxweK97n9Jgql/gUikmLoEThr6K+TbdUbjMomPbj
	zxDz1FIVBpzTbKC7CORK/A7aYchQbe8qwiYNIlUIx9Jr8tm7Y1JQgSQ11Ej9f8XGARr+Zm7bZ8X1l
	De3gzDHUVwmi9rSCNiAOXS8tBhDdZWDyA2jo78IQC7suLX4tVbIshzlhdLCgcVBhLzRESsmA0QwZ5
	4EWHeCFHNMGo7TlZK/fSV4qDCZ//SreVhS7g1pdn4mDScS5mAl+dWsl4nU6OATuTQWmnuWzeJMr5U
	Ky3mpK7A==;
Received: from [::1] (port=33530 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tbCxp-0006uP-34;
	Fri, 24 Jan 2025 01:14:50 -0500
MIME-Version: 1.0
Date: Fri, 24 Jan 2025 01:14:49 -0500
From: kavinraj@atindriya.co.in
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <4887de4b-39c0-444b-8dbd-26b91fc30808@gmail.com>
References: <c0b8b26f43b81d3bc15a37088f15b44d@atindriya.co.in>
 <4887de4b-39c0-444b-8dbd-26b91fc30808@gmail.com>
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <d575f299c7786b09057001c0b6b20599@atindriya.co.in>
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
X-CMAE-Envelope: MS4xfD1VSKwVDAu6z2XFwM5V3vtWP8Kn1OL//12cugzFcD+1DCpD53SanFGU2R56YAiMLvdLVEmRXaiUw716oxmG+Nl/MSRtBSqv1Nnd5cmrp2OwiflDAtA0
 JEI9O/Agw1xtKFJBILxSNd+Gzf/n1CgXJ3o9cgFCq4WdoWlSGKOrAFHIipTlBUZs6jS69+J/4a+P8htIF2VDPvMOCbf+P1uzOQ6tKcQ68/osMFWWbEHKAglA
Message-ID-Hash: XZW7EYROIGEC5DFLVLKJ4JYUUL7WMUZD
X-Message-ID-Hash: XZW7EYROIGEC5DFLVLKJ4JYUUL7WMUZD
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : B205MINI-I board
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XZW7EYROIGEC5DFLVLKJ4JYUUL7WMUZD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQogICBJbiB1aGRfcnhfc3RyZWFtZXJfaXNzdWVfc3RyZWFtX2NtZChyeF9zdHJlYW1lciwm
c3RyZWFtX2NtZCk7IGZ1bmN0aW9uIA0Kc2VnbWVudGF0aW9uIGZhdWx0IGlzIGNvbWluZy4gU28s
IGhvdyB0byByZXNvbHZlIHRoaXMgZXJyb3I/DQoNCg0KDQoNCg0KDQoNCg0KDQoNCg0KDQpPbiAy
MDI1LTAxLTI0IDAxOjA0LCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6DQo+IE9uIDI0LzAxLzIwMjUg
MDA6MzMsIGthdmlucmFqQGF0aW5kcml5YS5jby5pbiB3cm90ZToNCj4+IEhpLA0KPj4gwqDCoCBS
ZWNlbnRseSwgSSBoYXZlIGJvdWdodCBVU1JQIEIyMDVtaW5pIGJvYXJkLiBJIGFtIHdvcmtpbmcg
b24gaXQuIEkgDQo+PiBoYXZlIGRvd25sb2FkZWQgdGhlIFVIRCBkcml2ZXIgZnJvbSB0aGUgdWJ1
bnR1IHBhY2thZ2Uoc3VkbyBhcHQtZ2V0IA0KPj4gaW5zdGFsbCBsaWJ1aGQtZGV2IHVoZC1ob3N0
KS4NCj4+IA0KPj4gwqDCoCBXaGVuIHRoZSBib2FyZCBpcyBjb25uZWN0ZWQgdG8gdGhlIFBDIGl0
IGlzIGRldGVjdGVkIHdoZW4gSSBnaXZlIA0KPj4gdGhlIHVoZF9maW5kX2RldmljZXMgaXQgc2hv
d3MgdGhlIHNlcmlhbCxuYW1lLHByb2R1Y3QgYW5kIHR5cGUuDQo+PiANCj4+IMKgwqAgU28sIEkg
aGF2ZSB3cml0dGVuIHRoZSBjb2RlIGZvciByZWNlaXZpbmcgdGhlIGRhdGEuIFdoZW4gSSBhbSBi
dWlsZCANCj4+IHRoZSBjb2RlIGl0IGRvZXNuJ3Qgc2hvdyBhbnkgZXJyb3IuIFdoZW4gSSBydW4g
dGhlIHByb2dyYW0gc29tZSBBUEkgDQo+PiBmdW5jdGlvbnMgYXJlIHdvcmtpbmcgZmluZS4gd2hl
biBpdCByZWFjaCB0aGUgDQo+PiB1aGRfcnhfc3RyZWFtZXJfaXNzdWVfc3RyZWFtX2NtZChyeF9z
dHJlYW1lciwmc3RyZWFtX2NtZCk7IGFuZCANCj4+IHVoZF9yeF9zdHJlYW1lcl9yZWN2KHJ4X3N0
cmVhbWVyLCBidWZmc19wdHIsIFNBTVBMRVNfUEVSX0JVUlNULCANCj4+ICZyeF9tZXRhZGF0YSwg
YnVyc3RfZHVyYXRpb24sIGZhbHNlLCAmaXRlbXNfcmVjZWl2ZWQpO8KgIGl0IA0KPj4gYXV0b21h
dGljYWxseSB0ZXJtaW5hdGVzIHRoZSBwcm9ncmFtLg0KPj4gDQo+PiDCoMKgIFdoZW4gSSBkZWJ1
ZyBsaW5lIGJ5IGxpbmUsIGFmdGVyIHJlYWNoaW5nIHRoZSBhYm92ZSBmdW5jdGlvbiBpdCANCj4+
IHNob3dzIGxpa2UgTm8gc291cmNlIGF2YWlsYWJsZSBmb3IgInVoZF9yeF9zdHJlYW1lcl9pc3N1
ZV9zdHJlYW1fY21kKCkgDQo+PiBhdCAweDdmZmZmNzIyN2NmZSIgLsKgIFdoYXQgbWF5IGJlIHRo
ZSBpc3N1ZT8NCj4+IA0KPj4gwqDCoCBBbHNvIEkgd2FudCB0byBjb25maWd1cmUgdGhlIEdQSU8g
cGlucyBpbiB0aGUgYm9hcmQuIEZvciB0aGF0IEkgDQo+PiBuZWVkIEdQSU8gYmFuayBuYW1lLCBD
YW4geW91IGdpdmUgbWUgdGhlIEdQSU8gYmFuayBuYW1lIG9mIHRoaXMgYm9hcmQ/DQo+PiANCj4+
IA0KPj4gV2l0aCByZWdhcmRzLA0KPj4gS2F2aW5yYWouDQo+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4gVGhlcmUncyBhbHNv
IGEgImdwaW8iIHV0aWxpdHkgaW4gdGhlIGV4YW1wbGVzLCB3aGljaCBpbmNsdWRlcyBhIA0KPiAi
LS1saXN0LWJhbmtzIiBvcHRpb24uDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11
c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
