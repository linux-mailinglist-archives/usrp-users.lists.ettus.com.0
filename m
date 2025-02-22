Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D57A407D1
	for <lists+usrp-users@lfdr.de>; Sat, 22 Feb 2025 12:12:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0707E385A68
	for <lists+usrp-users@lfdr.de>; Sat, 22 Feb 2025 06:12:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740222727; bh=u7xvSbOT1/aHILJdbLClLze+zp4mEq1M0C/GjY554VA=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=jk7R+Q92DMyNrapA7dfTqmHwuB/E9A7gs+bjnpwUYPG6EH8mbH8bTRVDhgQ7GTvDB
	 uWu2oD4X9S56KGkXv3PwHh+ewnwgquglRcPMqLHVCip8drEfPYTyfHagFORqfVtcna
	 e/27uJsNycx62o/AYN99V1A5SAyhoDfHY/5UIVyD/BcWOWTUiYW0qplHgp7qh1sqjx
	 8aoGqqX8BHfvAJQyrx/5lifL5hmU271IC8qjrZLBQLPDCVCEqjTl/IOAcvviGs09+k
	 eYZFpBVNdWpPLOnG4NiP+3cCieHmJrL89F99AIaO2Uywc2XMQN5V5CPdDhyerGsUEJ
	 b5j8A9oWaXi1A==
Received: from omta39.uswest2.a.cloudfilter.net (omta39.uswest2.a.cloudfilter.net [35.89.44.38])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E6F8385917
	for <usrp-users@lists.ettus.com>; Sat, 22 Feb 2025 06:12:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="qiKpzzQY";
	dkim-atps=neutral
Received: from eig-obgw-5005a.ext.cloudfilter.net ([10.0.29.234])
	by cmsmtp with ESMTPS
	id lL9JtCQ9pf1UXlnQNtxli4; Sat, 22 Feb 2025 11:11:59 +0000
Received: from vps.tictalk.in ([119.18.48.61])
	by cmsmtp with ESMTPS
	id lnQKt0vSDhQfUlnQLteddR; Sat, 22 Feb 2025 11:11:59 +0000
X-Authority-Analysis: v=2.4 cv=Negt1HD4 c=1 sm=1 tr=0 ts=67b9b0ff
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=T2h4t0Lz3GQA:10 a=j0z1oGNQ4lYA:10 a=etiEgX_XAAAA:8 a=kVywuAJEAAAA:8
 a=bVcRKlJM5R0rckJqsqUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=-1zhkmE011UA:10 a=MLbIUA-Bjd6y1alW9qBG:22 a=26tcdy2dAj9m90MLnbb2:22
 a=IOVrdXkZsZi_Xkr5h5Fc:22 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=I+lxu9kAe5WUOWmKXA8Lc+jrCLyoMMNkjhkVBPv0Tlo=; b=qiKpzzQY8VGIX/n8b+sZPXhQk+
	4XWdu4FljGOT157NJxSDJhPKhOydk9Ix6M/IU7949YXjvw+W1zzWebsvW9K+mt909w1GbfOkC2dXs
	WGwFDlsKCZrbyT+y3d7O+KOjwjdX4StuRYzmVaYmY+ZH1R2pHQvMzoASheqLoE93XIzHPqBSV48mZ
	dmTQf0Awv0M8/HOhzKNAQzBOuPhx+oyC3OxsMfHpdSN6fyzhU4SoJ6IOoluC9jwotNdXpWaliBO2v
	SfKlMZFzJ6cUeII4MgiC+WX+Afv3G9fpSJ4LjUDP/dNSmJ63M7dFg9xE0ci9KB9Nr+ptP3X0RSOZb
	m80VYa9g==;
Received: from [::1] (port=55106 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tlnQE-00089B-22;
	Sat, 22 Feb 2025 06:11:54 -0500
MIME-Version: 1.0
Date: Sat, 22 Feb 2025 06:11:54 -0500
From: kavinraj@atindriya.co.in
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <5bf8be31-6416-4f54-b93e-b5fb021fe01e@gmail.com>
References: <4bf5c92ac30f933582427d87157a88c1@atindriya.co.in>
 <756c5135-0f06-4085-8bbb-ac5793b96e21@gmail.com>
 <1936f8facaa71cf7a2c6312aacbcdb42@atindriya.co.in>
 <9458cc31-7a51-4259-9bd3-9352749b6964@gmail.com>
 <1dc1550af10e8946b5157262cb57120b@atindriya.co.in>
 <5bf8be31-6416-4f54-b93e-b5fb021fe01e@gmail.com>
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <594aa31a69b35f8e23be755e5075d740@atindriya.co.in>
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
X-CMAE-Envelope: MS4xfCABdV3RmgdKP7WgjtpVhL8MKGEYMNLl0JjQ8ebjH1oWaDk3fk5TtK8A72VnDPSq6iQmG+VSHuM5ZVhuNZ21ANwUqLVlQZDd8jo7muGYcapINnMQMz1i
 k+V0FUhWxByniGrxphLSTqUM46eVSaTao9pGSZl+GKQ5IPpfQm+Q9IYhfLTQ9VN1A9yB3l0tRYU+J6jGaI3nYmSNdIuk65Th5Vs=
Message-ID-Hash: T5TI4BPVHRVMKW3GWSJZQDP2MB2J3OK7
X-Message-ID-Hash: T5TI4BPVHRVMKW3GWSJZQDP2MB2J3OK7
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : GPIO in USRP B205Mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T5TI4BPVHRVMKW3GWSJZQDP2MB2J3OK7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQogICBIb3cgdG8gZ2l2ZSB0aGUgZGVsYXkgaW4gdWhkX3VzcnBfc2V0X2NvbW1hbmRfdGlt
ZSh1aGRfdXNycF9oYW5kbGUgDQpoLGludDY0X3QgZnVsbF9zZWNzLGRvdWJsZSBmcmFjX3NlY3Ms
c2l6ZV90IG1ib2FyZCkgZnVuY3Rpb24/DQoNCg0KDQoNCg0KDQoNCg0KDQpPbiAyMDI1LTAyLTIy
IDAwOjEwLCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6DQo+IE9uIDIxLzAyLzIwMjUgMjM6NTYsIGth
dmlucmFqQGF0aW5kcml5YS5jby5pbiB3cm90ZToNCj4+IEhpLA0KPj4gwqAgQ2FuIEkgdXNlIHVz
bGVlcCgxKSBvciBhbnkgb3RoZXIgdGVjaG5pcXVlIGlzIHRoZXJlIGZvciBHUElPIC4NCj4+IA0K
PiBZb3UgbWlnaHQgYmUgYWJsZSB0byB1c2UgdGltZWQgY29tbWFuZHM6DQo+IA0KPiBodHRwczov
L2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV90aW1lZGNtZHMuaHRtbCN0aW1lZGNtZHNfZ2Vu
X2NtZHMNCj4gDQo+IEJ1dCBzaW5jZSB1c2xlZXAoKSBjYW5ub3QgZ3VhcmFudGVlIGFueSBraW5k
IG9mIG1heGltdW0gcGVyaW9kIHRoYXQgDQo+IHlvdXIgcHJvY2VzcyB3aWxsIGdvIHRvIHNsZWVw
LCBpdCBpcyBhbiB1bnJlbGlhYmxlDQo+IMKgIG1ldGhvZCB3aGVuIHByZWNpc2lvbiBhbmQgcmVw
ZWF0YWJsZSB0aW1pbmcgb2YgQU5ZIGtpbmQgb2YgImRvaW5nIA0KPiBzdHVmZiB3aXRoIGV4dGVy
bmFsIGhhcmR3YXJlIiBpcyByZXF1aXJlZC7CoCBFdmVuIGlmDQo+IMKgIHVzbGVlcCgpIGF0IG1p
Y3Jvc2Vjb25kLXNjYWxlIGludGVydmFscyAqV0FTKiByZWxpYWJsZSBhbmQgDQo+IHJlcGVhdGFi
bGUsIHRoZXJlJ3Mgbm8gZ3VhcmFudGVlIGFib3V0IGFsbCB0aGUgKm90aGVyKiB0aGluZ3MNCj4g
wqAgdGhhdCBhcmUgcmVxdWlyZWQgdG8gbGF1bmNoIGEgY29tbWFuZCBvdmVyIGEgbGF0ZW5jeS1u
b3QtZ3VhcmFudGVlZCANCj4gYnVzIHRvIHRoZSBleHRlcm5hbCBoYXJkd2FyZSwgaW5jbHVkaW5n
IGtlcm5lbC1sYXllcg0KPiDCoCBVU0IgZHJpdmVycywgZXRjLCBldGMuDQo+IA0KPiANCj4+IA0K
Pj4gT24gMjAyNS0wMi0yMSAyMzozNywgTWFyY3VzIEQuIExlZWNoIHdyb3RlOg0KPj4+IE9uIDIx
LzAyLzIwMjUgMjM6MjIsIGthdmlucmFqQGF0aW5kcml5YS5jby5pbiB3cm90ZToNCj4+Pj4gSGks
DQo+Pj4+IMKgVGhhbmtzIGZvciBhbnN3ZXJpbmcuDQo+Pj4+IMKgQ2FuIHlvdSBleHBsYWluIG1l
IGNsZWFybHk/DQo+Pj4+IA0KPj4+PiBUaGFua3MuDQo+Pj4gSSdkIHN1Z2dlc3QsIGF0IGEgbWlu
aW11bSwgbG9va2luZyBhdCB0aGUgTUFOIHBhZ2UgZm9yIHVzbGVlcCgpLg0KPj4+IA0KPj4+IA0K
Pj4+PiANCj4+Pj4gDQo+Pj4+IA0KPj4+PiBPbiAyMDI1LTAyLTIxIDIzOjExLCBNYXJjdXMgRC4g
TGVlY2ggd3JvdGU6DQo+Pj4+PiBPbiAyMS8wMi8yMDI1IDIzOjA1LCBrYXZpbnJhakBhdGluZHJp
eWEuY28uaW4gd3JvdGU6DQo+Pj4+Pj4gSGksDQo+Pj4+Pj4gwqDCoCBJbiBVU1JQIEIyMDVtaW5p
LWkgSSBhbSBhYmxlIHRvIGFjY2VzcyB0aGUgR1BJTyBQaW4uIEkgaGF2ZSB0byANCj4+Pj4+PiBj
cmVhdGUgYSBQdWxzZSBpbiB0aGUgR1BJTyBwaW4uIEkgd2FudCB0byBtYWtlIGhpZ2ggdGhlIGdw
aW8gcGluIA0KPj4+Pj4+IGZvciAxbWljcm9zZWNvbmQgYW5kIGxvdyBmb3IgOTk5bWljcm9zZWNv
bmRzLiBIb3cgdG8gYWNoaWV2ZSB0aGlzIA0KPj4+Pj4+IHRpbWluZ3MgdGhyb3VnaCBjb2Rpbmcu
IENhbiB5b3UgZ2l2ZSBtZSB0aGUgc29sdXRpb24gZm9yIHRoaXM/DQo+Pj4+Pj4gDQo+Pj4+Pj4g
wqDCoCBJbiBjb2RpbmcgYWZ0ZXIgbWFraW5nIGhpZ2ggSSBhbSBnaXZpbmcgdXNsZWVwKDEpIGZ1
bmN0aW9uIGJ1dCANCj4+Pj4+PiB3aGVuIEkgYW0gY2hlY2sgaW4gdGhlIG9zY2lsbG9zY29wZSBp
dCBpcyBzaG93aW5nIDY0bWljcm9zZWNvbmRzLiANCj4+Pj4+PiBIb3c/DQo+Pj4+Pj4gDQo+Pj4+
Pj4gDQo+Pj4+PiBCZWNhdXNlIGFuIGFwcGxpY2F0aW9uLWxhbmQgcHJvZ3JhbSBleGVjdXRpbmcg
b24gYW4gb3JkaW5hcnkgDQo+Pj4+PiBnZW5lcmFsLXB1cnBvc2Ugb3BlcmF0aW5nIHN5c3RlbSBp
cyB1bmxpa2VseSB0byBiZSBhYmxlIHRvDQo+Pj4+PiDCoCBhY2hpZXZlIHJlcGVhdGFibGUsIDF1
c2VjLXNjYWxlIHRpbWluZy7CoCBUaGlzIGhhcyBub3RoaW5nIHRvIGRvLCANCj4+Pj4+IHBlciBz
ZSwgd2l0aCBVSEQgb3IgVVNSUHMsIGJ1dCByYXRoZXIsIHRvIHVuZGVyc3RhbmRpbmcNCj4+Pj4+
IMKgIGhvdyBhcHBsaWNhdGlvbnMgZXhlY3V0ZSBpbiBhIGdlbmVyYWwtcHVycG9zZSBvcGVyYXRp
bmcgc3lzdGVtIA0KPj4+Pj4gdGhhdCBpc24ndCBydXRobGVzc2x5IG9wdGltaXplZCBmb3IgImhh
cmQiIHJlYWwtdGltZSB0YXNrcy4NCj4+Pj4+IA0KPj4+Pj4gDQo+Pj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4+Pj4gVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+Pj4+IFRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4+IFVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+Pj4g
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20K
