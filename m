Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLsiO+ZUcmkIiwAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jan 2026 17:48:38 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFD76A46B
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jan 2026 17:48:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17892389699
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jan 2026 11:48:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769100516; bh=dxinptbMpZ/0E9krB/ujTHkWWXWWeAWkMFNsadBhEm4=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=AcbH4wrkSrGg5Vx1B5xfnM2eVPS7hYKMyMQsDGYoagjA541fjCMDJJRgRUinkhU6g
	 2Davfd2PJ4Q3V+gX5bvYnK9wT+HbGSCtIjAEGNh3kjkOTMaMsDNNWP7fDYMaj/38bK
	 l188Fqas8AUvq5k4pQ728SnILceGN/j1B5A3/pRsRwKnAve/G0O0l3FhSVlakvlmoD
	 j7x2EvpxN/smL5s5/4b2y0xe6R8dSYSn1xXlMWtRHDC2o+zNQr/VcKMRCRSwsslQQP
	 I4aJhCX+6rPzuDOSC3e/mjDQzhwDqXK/YZtuysrIyzaDzwzqTFkju9fo5puUPlr+/D
	 ptdAtpDL/cvqQ==
Received: from lxmtout2.gsi.de (lxmtout2.gsi.de [140.181.3.112])
	by mm2.emwd.com (Postfix) with ESMTPS id 9415D389407
	for <usrp-users@lists.ettus.com>; Thu, 22 Jan 2026 11:48:06 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by lxmtout2.gsi.de (Postfix) with ESMTP id 931F220350E9;
	Thu, 22 Jan 2026 17:48:04 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at lxmtout2.gsi.de
Received: from lxmtout2.gsi.de ([127.0.0.1])
	by localhost (lxmtout2.gsi.de [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id occHt01RnzIn; Thu, 22 Jan 2026 17:48:04 +0100 (CET)
Received: from srvEX6.campus.gsi.de (unknown [10.10.4.96])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lxmtout2.gsi.de (Postfix) with ESMTPS id 315FB20350E3;
	Thu, 22 Jan 2026 17:48:04 +0100 (CET)
Received: from [140.181.69.163] (140.181.3.12) by srvEX6.campus.gsi.de
 (10.10.4.96) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Thu, 22 Jan
 2026 17:48:04 +0100
Message-ID: <4ee48674-ce39-4bad-8068-f478a04c44f8@gsi.de>
Date: Thu, 22 Jan 2026 17:48:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Martin Braun <martin.braun@ettus.com>
References: <CABQiKjyLQZqYX=R45sOzGgEz734g8p5siB000cd=R2L0P0zPUg@mail.gmail.com>
 <CAFOi1A5ykqB8vgS9dgxfOXWu8BzbiCSo5HO+HvjsLVg-wFOG0Q@mail.gmail.com>
 <3463ae64-2df0-44c5-a12d-c705a238175c@gmail.com>
 <CAFOi1A4ana0ED+Vcvv1zw+FAMyS3Bzr4tpaB9V9bN8FE7EcXtA@mail.gmail.com>
From: Philipp Niedermayer <p.niedermayer@gsi.de>
Content-Language: de-DE, en-GB
In-Reply-To: <CAFOi1A4ana0ED+Vcvv1zw+FAMyS3Bzr4tpaB9V9bN8FE7EcXtA@mail.gmail.com>
X-Originating-IP: [140.181.3.12]
X-ClientProxiedBy: srvEX8.Campus.gsi.de (10.10.4.160) To srvEX6.campus.gsi.de
 (10.10.4.96)
Message-ID-Hash: LDPHVOHAAT7LY7HLRJGRPQ2VKIDS3RY7
X-Message-ID-Hash: LDPHVOHAAT7LY7HLRJGRPQ2VKIDS3RY7
X-MailFrom: P.Niedermayer@gsi.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP-2952R (X310) PCIe interface issue with UHD (built from OAI source)on Ubuntu 22.04
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LDPHVOHAAT7LY7HLRJGRPQ2VKIDS3RY7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8348630466664677279=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.41 / 15.00];
	SIGNED_SMIME(-2.00)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,multipart/alternative,text/plain];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	DMARC_POLICY_SOFTFAIL(0.10)[gsi.de : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:+,4:~,5:~,6:+];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	HAS_ATTACHMENT(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	HAS_XOIP(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.niedermayer@gsi.de,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gsi.de:mid,ettus.com:email,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: 9AFD76A46B
X-Rspamd-Action: no action

--===============8348630466664677279==
Content-Language: de-DE, en-GB
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-512; boundary="------------ms020507090903010907090203"

--------------ms020507090903010907090203
Content-Type: multipart/alternative;
 boundary="------------7Rkt5HQzyp7RKdo8HwSL2805"

--------------7Rkt5HQzyp7RKdo8HwSL2805
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFydGluLA0KDQp0aGVyZSdzIG9uZSBtZXRyaWMgd2hlcmUgUENJZSBvdXRwZXJmb3Jt
cyBFdGhlcm5ldDogTGF0ZW5jeS4NCg0KV2UgaGF2ZSBhIGxvb3BiYWNrICh2aWEgaG9zdCkg
YXBwbGljYXRpb24gd2hlcmUgd2UgY2FuIHNlZSB0aGF0IHRoZSANCnNpZ25hbCBsYXRlbmN5
IGZyb20gVVNSUCBYMzEwIFJYIHRvIFRYIGlzIGJldHRlciBmb3IgUENJZSBiYXNlZCANCmNv
bm5lY3Rpb24gY29tcGFyZWQgdG8gRXRoZXJuZXQsIGJvdGggaW4gdGVybXMgb2YgYXZlcmFn
ZSBsYXRlbmN5IGFuZCANCmppdHRlci4gVG8gZ2l2ZSBzb21lIG51bWJlcnMsIG9uZSBvZiBv
dXIgZmxvd2dyYXBocyBoYXMgMS42N8KxMC4xNSBtcyANCmxhdGVuY3kgb3ZlciBQQ0llOyB3
aXRoIDEwR8KgRXRoZXJuZXQtYmFzZWQgY29ubmVjdGlvbiBpdCBkcm9wcyBkb3duIHRvIA0K
Mi4zwrEwLjkgbXMgKDFzaWdtYSkuIEVzcGVjaWFsbHkgdGhlIGppdHRlciBpcyBwcm9ibGVt
YXRpYyBhcyBpdCBtZWFucyANCnRoYXQgbGF0ZW5jeSBjYW4gZ28gdXAgdG8gPiA0IG1zLiBJ
IGtub3cgaXQncyBhIHZlcnkgc3BlY2lmaWMgdXNlIGNhc2UsIA0KYnV0IHRoZSBzdGF0ZW1l
bnQgImJldHRlciBjaG9pY2Ugb24gYW55IG1ldHJpYyIgaXMgbm90IGNvcnJlY3QgaGVyZSBm
cm9tIA0Kb3VyIGxhYidzIGV4cGVyaWVuY2UgOykNCg0KQW5vdGhlciBuaWNlIGZlYXR1cmUg
b2YgUENJZTogb25lIGNhbiBzcGVjaWZ5IGRpZmZlcmVudCBGUEdBIGltYWdlcyBpbiANCmZs
b3dncmFwaHMgYW5kIGNsaWNraW5nIHRoZSAiUGxheSIgYnV0dG9uIGluwqBHTlUgUmFkaW8g
bG9hZHMgdGhlIGNvcnJlY3QgDQppbWFnZSBmb3Igd2hhdGV2ZXIgZmxvd2dyYXBowqB5b3Ug
YXJlIGN1cnJlbnRseSB3b3JraW5nIHdpdGggDQphdXRvbWF0aWNhbGx5LiBGb3IgRXRoZXJu
ZXQgdGhlcmUgaXMgYXQgbGVhc3Qgb25lIHNlcGFyYXRlIHN0ZXAgcmVxdWlyZWQgDQp0byBm
bGFzaCB0aGUgaW1hZ2UgZmlyc3QuIEl0IHdvcmtzLCBidXQgSSB3b3VsZCBhcmd1ZSBpdCdz
IGEgZG93bnNpZGUgaW4gDQp0ZXJtcyBvZiB1c2FiaWxpdHkuDQoNCkhvcGUgeW91IGd1eXMg
ZG9uJ3QganVzdCBkcm9wIFBDSWUgc3VwcG9ydCENCg0KQmVzdA0KUGhpbGlwcA0KDQoNCipG
cm9tOiogTWFydGluIEJyYXVuIDxtYXJ0aW4uYnJhdW5AZXR0dXMuY29tPg0KDQoqU2VudDoq
IFRodXJzZGF5LCAyMiBKYW51YXJ5IDIwMjYgYXQgMTQ6MTENCg0KKlRvOiogVVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20gPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KDQoqU3Vi
amVjdDoqIFtVU1JQLXVzZXJzXSBSZTogVVNSUC0yOTUyUiAoWDMxMCkgUENJZSBpbnRlcmZh
Y2UgaXNzdWUgd2l0aCANClVIRCAoYnVpbHQgZnJvbSBPQUkgc291cmNlKW9uIFVidW50dSAy
Mi4wNA0KDQoNCj4gSGV5IFZpc2h3YW5hdGgsDQo+DQo+IE9rLCB0aGFua3MgZm9yIHVwZGF0
aW5nIHRoZSBpc3N1ZS4NCj4gVGhlIHN0YW5kYXJkIHdvcmthcm91bmQgd2UgcmVjb21tZW5k
IGlzIHRvIHVzZSBFdGhlcm5ldCwgbm90IFBDSWUuIA0KPiBJdCdzIGdlbmVyYWxseSB0aGUg
YmV0dGVyIGNob2ljZSBvbiBhbnkgbWV0cmljcyAodGhyb3VnaHB1dCwgY2FibGUgDQo+IG1h
bmFnZW1lbnQsIGVhc2Ugb2Ygc2V0dXApIGFuZCByZWFsbHkgaGFzIG5vIGRvd25zaWRlcy4N
Cj4NCj4gLS1NDQo+DQo+IE9uIFdlZCwgSmFuIDIxLCAyMDI2IGF0IDEwOjIy4oCvQU0gVmlz
aHdhbmF0aCANCj4gPGtvdXNoaWtwc3Zpc2h3YW5hdGhAZ21haWwuY29tPiB3cm90ZToNCj4N
Cj4gICAgIEhpIE1hcnRpbiwNCj4NCj4gICAgIFRoYW5rIHlvdSBmb3IgeW91ciBtZXNzYWdl
Lg0KPg0KPiAgICAgSSBoYXZlIG5vdyB1cGRhdGVkIHRoZSBidWcgcmVwb3J0IGF0IHRoZSBs
aW5rIHlvdSBzaGFyZWQgKElzc3VlDQo+ICAgICAjODE4KSB3aXRoIG15IHN5c3RlbSBkZXRh
aWxzIGFuZCBvYnNlcnZhdGlvbnMgc28gdGhhdCB0aGUNCj4gICAgIGluZm9ybWF0aW9uIGlz
IGF2YWlsYWJsZSBmb3IgcmVmZXJlbmNlLg0KPg0KPiAgICAgSSB3b3VsZCByZWFsbHkgYXBw
cmVjaWF0ZSBpdCBpZiB5b3UgY291bGQga2luZGx5IHRha2UgYSBsb29rIGF0DQo+ICAgICB0
aGUgcmVwb3J0IHdoZW4geW91IGdldCBhIGNoYW5jZS4gSWYgeW91IGhhdmUgYW55IHN1Z2dl
c3Rpb25zLA0KPiAgICAgcG90ZW50aWFsIGZpeGVzLCBvciBrbm93biB3b3JrYXJvdW5kcyBm
b3IgdGhpcyBpc3N1ZSwgeW91cg0KPiAgICAgZ3VpZGFuY2Ugd291bGQgYmUgdmVyeSBoZWxw
ZnVsLg0KPg0KPiAgICAgUGxlYXNlIGxldCBtZSBrbm93IGlmIGFueSBhZGRpdGlvbmFsIGxv
Z3Mgb3IgaW5mb3JtYXRpb24gYXJlDQo+ICAgICBuZWVkZWQgZnJvbSBteSBzaWRlLg0KPg0K
PiAgICAgVGhhbmtzIGFnYWluIGZvciB5b3VyIHN1cHBvcnQuDQo+DQo+ICAgICBSZWdhcmRz
LA0KPiAgICAgVmlzaHdhbmF0aA0KPg0KPg0KPg0KPiAgICAgT24gMjAvMDEvMjYgMTQ6Mzgs
IE1hcnRpbiBCcmF1biB3cm90ZToNCj4+ICAgICBIaSBWaXNod2FuYXRoLA0KPj4NCj4+ICAg
ICBjYW4geW91IHBsZWFzZSBhbWVuZCB0aGlzIGJ1ZyByZXBvcnQ6DQo+PiAgICAgaHR0cHM6
Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvdWhkL2lzc3Vlcy84MTggLi4ud2l0aCB5b3Vy
DQo+PiAgICAgc3lzdGVtIGRldGFpbHMgc28gd2UgY2FuIGdldCBhIGJpZ2dlciBwaWN0dXJl
IG9mIHdoYXQncyBoYXBwZW5pbmcuDQo+Pg0KPj4gICAgIFRoYW5rcyENCj4+DQo+PiAgICAg
LS1NYXJ0aW4NCj4+DQo+PiAgICAgT24gU2F0LCBKYW4gMTcsIDIwMjYgYXQgMjozMuKAr1BN
IFAgUyBWaXNod2FuYXRoIEtvdXNoaWsNCj4+ICAgICA8a291c2hpa3BzdmlzaHdhbmF0aEBn
bWFpbC5jb20+IHdyb3RlOg0KPj4NCj4+ICAgICAgICAgSGVsbG8gY29tbXVuaXR5LA0KPj4N
Cj4+ICAgICAgICAgSSBhbSBzZWVraW5nIGd1aWRhbmNlIHJlZ2FyZGluZyB1c2luZyAqVVNS
UC0yOTUyUiAoWDMxMCkqDQo+PiAgICAgICAgIG92ZXIgKlBDSWUqIG9uIGEgTGludXggaG9z
dCwgYW5kIEkgd291bGQgYXBwcmVjaWF0ZSBhbnkNCj4+ICAgICAgICAgc3VnZ2VzdGlvbnMg
b3Iga25vd24tZ29vZCBjb25maWd1cmF0aW9ucy4NCj4+DQo+PiAgICAgICAgICpTeXN0ZW0g
YW5kIHNvZnR3YXJlIHNldHVwOioNCj4+DQo+PiAgICAgICAgICAqDQo+Pg0KPj4gICAgICAg
ICAgICAgSG9zdCBPUzogVWJ1bnR1IDIyLjA0IExUUw0KPj4NCj4+ICAgICAgICAgICoNCj4+
DQo+PiAgICAgICAgICAgICBVU1JQOiBOSSBVU1JQLTI5NTJSIChYMzEwKSwgUENJZSAoUklP
KSBpbnRlcmZhY2UNCj4+DQo+PiAgICAgICAgICAqDQo+Pg0KPj4gICAgICAgICAgICAgVUhE
OiBCdWlsdCBmcm9tIHNvdXJjZSAoVUhEIHZlcnNpb24gYnVuZGxlZCB3aXRoIC8NCj4+ICAg
ICAgICAgICAgIHJlZmVyZW5jZWQgYnkgT0FJIHNvdXJjZSB0cmVlKQ0KPj4NCj4+ICAgICAg
ICAgICoNCj4+DQo+PiAgICAgICAgICAgICBOSSBMaW51eCBEZXZpY2UgRHJpdmVyczogKk5J
IFVTUlAgMjAyNSBRMiDCoGRyaXZlciBsaW5rag0KPj4gICAgICAgICAgICAgPGh0dHBzOi8v
d3d3Lm5pLmNvbS9lbi9zdXBwb3J0L2Rvd25sb2Fkcy9kcml2ZXJzL2Rvd25sb2FkLm5pLXVz
cnAuaHRtbD9zcnNsdGlkPUFmbUJPb3I2RUVlMFdLQks2N2JXNmh0SWd3WUhyU1pIQ3FqUU5q
SVRLM044Z0VMVHYtSkI1QWJPIzU2NTQ0Nj4qDQo+Pg0KPj4gICAgICAgICAgKg0KPj4NCj4+
ICAgICAgICAgICAgIEluc3RhbGxlZCBOSSBwYWNrYWdlczoNCj4+DQo+PiAgICAgICAgICAg
ICAgbw0KPj4NCj4+ICAgICAgICAgICAgICAgICBuaS1mcGdhLWludGVyZmFjZQ0KPj4NCj4+
ICAgICAgICAgICAgICBvDQo+Pg0KPj4gICAgICAgICAgICAgICAgIG5pLXJpby1teGllDQo+
Pg0KPj4gICAgICAgICAgICAgIG8NCj4+DQo+PiAgICAgICAgICAgICAgICAgbmktcnNlcmll
cw0KPj4NCj4+ICAgICAgICAgICAgICBvDQo+Pg0KPj4gICAgICAgICAgICAgICAgIG5pLWh3
Y2ZnLXV0aWxpdHkNCj4+DQo+PiAgICAgICAgICAgICAgbw0KPj4NCj4+ICAgICAgICAgICAg
ICAgICBuaS11c3JwLXJpbw0KPj4NCj4+DQo+PiAgICAgICAgICpVc2UgY2FzZToqDQo+PiAg
ICAgICAgIEkgYW0gdHJ5aW5nIHRvIGludGVyZmFjZSB0aGUgVVNSUC0yOTUyUiB3aXRoIGFu
ICpPQUktYmFzZWQNCj4+ICAgICAgICAgaG9zdCBtYWNoaW5lKiwgdXNpbmcgVUhEIG92ZXIg
UENJZSAoUklPKSwgbm90IEV0aGVybmV0Lg0KPj4NCj4+ICAgICAgICAgKk9ic2VydmVkIGJl
aGF2aW9yOioNCj4+DQo+PiAgICAgICAgICAqDQo+Pg0KPj4gICAgICAgICAgICAgVGhlIGRl
dmljZSBpcyBkZXRlY3RlZCBjb3JyZWN0bHkgdXNpbmcgfHVoZF9maW5kX2RldmljZXN8DQo+
Pg0KPj4gICAgICAgICAgKg0KPj4NCj4+ICAgICAgICAgICAgIFtJTkZPXSBbVUhEXSBsaW51
eDsgR05VIEMrKyB2ZXJzaW9uIDExLjQuMDsgQm9vc3RfMTA3NDAwOw0KPj4gICAgICAgICAg
ICAgVUhEXzQuOC4wLkhFQUQtMC1nMzA4MTI2YTQNCj4+ICAgICAgICAgICAgIC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+PiAgICAgICAg
ICAgICAtLSBVSEQgRGV2aWNlIDANCj4+ICAgICAgICAgICAgIC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+PiAgICAgICAgICAgICBEZXZp
Y2UgQWRkcmVzczoNCj4+ICAgICAgICAgICAgIMKgIMKgIHNlcmlhbDoNCj4+ICAgICAgICAg
ICAgIMKgIMKgIGZwZ2E6IEhHDQo+PiAgICAgICAgICAgICDCoCDCoCBuYW1lOg0KPj4gICAg
ICAgICAgICAgwqAgwqAgcHJvZHVjdDogWDMxMA0KPj4gICAgICAgICAgICAgwqAgwqAgcmVz
b3VyY2U6IFJJTzANCj4+ICAgICAgICAgICAgIMKgIMKgIHR5cGU6IHgzMDANCj4+ICAgICAg
ICAgICAgIHwNCj4+ICAgICAgICAgICAgIHwNCj4+DQo+PiAgICAgICAgICAqDQo+Pg0KPj4g
ICAgICAgICAgICAgVUhEIGZpbmRzIGFuZCBzZWxlY3RzIHRoZSBjb3JyZWN0IEZQR0EgaW1h
Z2UNCj4+ICAgICAgICAgICAgICh8dXNycF94MzEwX2ZwZ2FfSEcubHZiaXR4fCkNCj4+DQo+
PiAgICAgICAgICAqDQo+Pg0KPj4gICAgICAgICAgICAgSG93ZXZlciwgfHVoZF91c3JwX3By
b2JlfCBmYWlscyBkdXJpbmcgUklPIGluaXRpYWxpemF0aW9uDQo+PiAgICAgICAgICAgICB3
aXRoOg0KPj4NCj4+ICAgICAgICAgICAgIHxSdW50aW1lRXJyb3I6IHgzMDBfaW1wbDogQ291
bGQgbm90IGluaXRpYWxpemUgUklPDQo+PiAgICAgICAgICAgICBzZXNzaW9uLiBVbmtub3du
IGVycm9yLiAoRXJyb3IgY29kZSAtNjMxNTApfA0KPj4NCj4+ICAgICAgICAgICoNCj4+DQo+
PiAgICAgICAgICAgICB2aXNod2FuYXRoQHZpc2h3YW5hdGg6fiQgc3VkbyB1aGRfdXNycF9w
cm9iZQ0KPj4gICAgICAgICAgICAgW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNp
b24gMTEuNC4wOyBCb29zdF8xMDc0MDA7IFVIRF80LjguMC5IRUFELTAtZzMwODEyNmE0DQo+
PiAgICAgICAgICAgICBbSU5GT10gW1gzMDBdIFgzMDAgaW5pdGlhbGl6YXRpb24gc2VxdWVu
Y2UuLi4NCj4+ICAgICAgICAgICAgIFtJTkZPXSBbWDMwMF0gQ29ubmVjdGluZyB0byBuaXVz
cnByaW9ycGMgYXQgbG9jYWxob3N0OjU0NDQuLi4NCj4+ICAgICAgICAgICAgIFtJTkZPXSBb
WDMwMF0gVXNpbmcgTFZCSVRYIGJpdGZpbGUgL3Vzci9sb2NhbC9zaGFyZS91aGQvaW1hZ2Vz
L3VzcnBfeDMxMF9mcGdhX0hHLmx2Yml0eA0KPj4gICAgICAgICAgICAgRXJyb3I6IFJ1bnRp
bWVFcnJvcjogeDMwMF9pbXBsOiBDb3VsZCBub3QgaW5pdGlhbGl6ZSBSSU8gc2Vzc2lvbi4g
VW5rbm93biBlcnJvci4gKEVycm9yIGNvZGUgLTYzMTUwKQ0KPj4gICAgICAgICAgICAgfHwN
Cj4+DQo+PiAgICAgICAgIFRoaXMgc3VnZ2VzdHMgdGhlIGZhaWx1cmUgb2NjdXJzIGFmdGVy
IEZQR0EgaW1hZ2Ugc2VsZWN0aW9uLA0KPj4gICAgICAgICBkdXJpbmcgTkktUklPIHNlc3Np
b24gaW5pdGlhbGl6YXRpb24uDQo+Pg0KPj4gICAgICAgICAqUXVlc3Rpb25zOioNCj4+DQo+
PiAgICAgICAgIDEuDQo+Pg0KPj4gICAgICAgICAgICAgSXMgKk5JIExpbnV4IERldmljZSBE
cml2ZXJzIDIwMjUgUTIqIGtub3duIHRvIGJlDQo+PiAgICAgICAgICAgICBjb21wYXRpYmxl
IHdpdGggVUhEIChlc3BlY2lhbGx5IHdoZW4gVUhEIGlzIGJ1aWx0IGZyb20NCj4+ICAgICAg
ICAgICAgIE9BSSBzb3VyY2VzKSBmb3IgWDMxMC9VU1JQLTI5NTJSIG92ZXIgUENJZT8NCj4+
DQo+PiAgICAgICAgIDIuDQo+Pg0KPj4gICAgICAgICAgICAgQXJlIHRoZXJlIGFueSAqcmVj
b21tZW5kZWQgVUhEIHZlcnNpb25zKiBvciBjb21taXRzIGtub3duDQo+PiAgICAgICAgICAg
ICB0byB3b3JrIHJlbGlhYmx5IHdpdGggVVNSUC0yOTUyUiArIFBDSWUgb24gVWJ1bnR1IDIy
LjA0Pw0KPj4NCj4+ICAgICAgICAgMy4NCj4+DQo+PiAgICAgICAgICAgICBIYXMgYW55b25l
IHN1Y2Nlc3NmdWxseSB1c2VkICpPQUkgd2l0aCBVU1JQLTI5NTJSIG92ZXINCj4+ICAgICAg
ICAgICAgIFBDSWUqLCBhbmQgaWYgc28sIGNvdWxkIHlvdSBzaGFyZSB0aGUgc29mdHdhcmUg
c3RhY2sNCj4+ICAgICAgICAgICAgIHZlcnNpb25zPw0KPj4NCj4+ICAgICAgICAgNC4NCj4+
DQo+PiAgICAgICAgICAgICBBcmUgdGhlcmUgYWRkaXRpb25hbCBOSS1SSU8gb3Iga2VybmVs
IHJlcXVpcmVtZW50cyB0aGF0DQo+PiAgICAgICAgICAgICBVSEQgZGVwZW5kcyBvbiBmb3Ig
UENJZS1iYXNlZCBYMzEwIGRldmljZXM/DQo+Pg0KPj4gICAgICAgICBBbnkgaW5zaWdodHMs
IGtub3duIGxpbWl0YXRpb25zLCBvciByZWNvbW1lbmRlZA0KPj4gICAgICAgICBkb3duZ3Jh
ZGUvdXBncmFkZSBwYXRocyB3b3VsZCBiZSB2ZXJ5IGhlbHBmdWwuDQo+Pg0KPj4gICAgICAg
ICBUaGFuayB5b3UgZm9yIHlvdXIgdGltZSBhbmQgc3VwcG9ydC4NCj4+DQo+PiAgICAgICAg
IFJlZ2FyZHMsDQo+PiAgICAgICAgIFZpc2h3YW5hdGgNCj4+DQo+Pg0KPj4gICAgICAgICBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4gICAg
ICAgICBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQ0KPj4gICAgICAgICBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo+Pg0KPg0KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLXVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG91c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0K
--------------7Rkt5HQzyp7RKdo8HwSL2805
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Martin,</p>
    <p>there's one metric where PCIe outperforms Ethernet: Latency.=C2=A0=
</p>
    <p>We have a loopback (via host) application where we can see that
      the signal latency from USRP X310 RX to TX is better for PCIe
      based connection compared to Ethernet, both in terms of average
      latency and jitter. To give some numbers, one of our flowgraphs
      has 1.67=C2=B10.15 ms latency over PCIe; with 10G=C2=A0Ethernet-bas=
ed
      connection it drops down to 2.3=C2=B10.9 ms (1sigma). Especially th=
e
      jitter is problematic as it means that latency can go up to &gt; 4
      ms. I know it's a very specific use case, but the statement
      "better choice on any metric" is not correct here from our lab's
      experience ;)</p>
    <p>Another nice feature of PCIe: one can specify different FPGA
      images in flowgraphs and clicking the "Play" button in=C2=A0GNU Rad=
io
      loads the correct image for whatever flowgraph=C2=A0you are current=
ly
      working with automatically. For Ethernet there is at least one
      separate step required to flash the image first. It works, but I
      would argue it's a downside in terms of usability.</p>
    <p>Hope you guys don't just drop PCIe support!</p>
    <p>Best<br>
      Philipp</p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">
      <div id=3D"rwhHeaders"
style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm=
 0cm;width:100%">
        <p style=3D"margin:0cm"><span><b>From:</b> Martin Braun
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:martin.brau=
n@ettus.com">&lt;martin.braun@ettus.com&gt;</a></span></p>
        <p style=3D"margin:0cm"><span><b>Sent:</b> Thursday, 22 January
            2026 at 14:11</span></p>
        <p style=3D"margin:0cm"><span><b>To:</b>
            <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:USRP-use=
rs@lists.ettus.com">USRP-users@lists.ettus.com</a>
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@=
lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a></span></p>
        <p style=3D"margin:0cm"><span><b>Subject:</b> [USRP-users] Re:
            USRP-2952R (X310) PCIe interface issue with UHD (built from
            OAI source)on Ubuntu 22.04</span></p>
      </div>
      <br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFOi1A4ana0ED+Vcvv1zw+FAMyS3Bzr4tpaB9V9bN8FE7EcXtA@mail.gmai=
l.com"
style=3D"border:none !important; padding-left:0px !important; margin-left=
:0px !important;">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hey Vishwanath,<br>
        <br>
        <div>Ok, thanks for updating the issue.</div>
        <div>The standard workaround we recommend is to use Ethernet,
          not PCIe. It's generally the better choice on any metrics
          (throughput, cable management, ease of setup) and really has
          no downsides.</div>
        <br>
        --M</div>
      <br>
      <div class=3D"gmail_quote gmail_quote_container">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 21, 2026 at
          10:22=E2=80=AFAM Vishwanath &lt;<a
            href=3D"mailto:koushikpsvishwanath@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">kous=
hikpsvishwanath@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>
            <p><span>Hi Martin,</span></p>
            <p><span>Thank you for your message.</span></p>
            <p><span>I have now updated the bug report at the link you
                shared (Issue #818) with my system details and
                observations so that the information is available for
                reference.</span></p>
            <p><span>I would really appreciate it if you could kindly
                take a look at the report when you get a chance. If you
                have any suggestions, potential fixes, or known
                workarounds for this issue, your guidance would be very
                helpful.</span></p>
            <p><span>Please let me know if any additional logs or
                information are needed from my side.</span></p>
            <p><span>Thanks again for your support.</span></p>
            <p><span>Regards,</span><br>
              <span>Vishwanath<br>
              </span></p>
            <p><br>
              <br>
            </p>
            <div>On 20/01/26 14:38, Martin Braun wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Hi Vishwanath,</div>
                <div><br>
                </div>
                <div>can you please amend this bug report:=C2=A0<a
href=3D"https://github.com/EttusResearch/uhd/issues/818" target=3D"_blank=
"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">https://github.com/EttusResearch/uhd/issues/818</a>
                  ...with your system details so we can get a bigger
                  picture of what's happening.</div>
                <div><br>
                </div>
                <div>Thanks!</div>
                <div><br>
                </div>
                <div>--Martin</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jan 17, 202=
6
                  at 2:32=E2=80=AFPM P S Vishwanath Koushik &lt;<a
                    href=3D"mailto:koushikpsvishwanath@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">koushikpsvishwanath@g=
mail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                  <div dir=3D"ltr">
                    <p>Hello community,</p>
                    <p>I am seeking guidance regarding using <strong>USRP=
-2952R
                        (X310)</strong> over <strong>PCIe</strong> on a
                      Linux host, and I would appreciate any suggestions
                      or known-good configurations.</p>
                    <p><strong>System and software setup:</strong></p>
                    <ul>
                      <li>
                        <p>Host OS: Ubuntu 22.04 LTS</p>
                      </li>
                      <li>
                        <p>USRP: NI USRP-2952R (X310), PCIe (RIO)
                          interface</p>
                      </li>
                      <li>
                        <p>UHD: Built from source (UHD version bundled
                          with / referenced by OAI source tree)</p>
                      </li>
                      <li>
                        <p>NI Linux Device Drivers: <strong>NI USRP
                            2025 Q2=C2=A0<a
href=3D"https://www.ni.com/en/support/downloads/drivers/download.ni-usrp.=
html?srsltid=3DAfmBOor6EEe0WKBK67bW6htIgwYHrSZHCqjQNjITK3N8gELTv-JB5AbO#5=
65446"
                              target=3D"_blank" moz-do-not-send=3D"true">=
=C2=A0driver
                              linkj</a></strong></p>
                      </li>
                      <li>
                        <p>Installed NI packages:</p>
                        <ul>
                          <li>
                            <p>ni-fpga-interface</p>
                          </li>
                          <li>
                            <p>ni-rio-mxie</p>
                          </li>
                          <li>
                            <p>ni-rseries</p>
                          </li>
                          <li>
                            <p>ni-hwcfg-utility</p>
                          </li>
                          <li>
                            <pre>ni-usrp-rio</pre>
                            <p><br>
                            </p>
                          </li>
                        </ul>
                      </li>
                    </ul>
                    <p><strong>Use case:</strong><br>
                      I am trying to interface the USRP-2952R with an <st=
rong>OAI-based
                        host machine</strong>, using UHD over PCIe
                      (RIO), not Ethernet.</p>
                    <p><strong>Observed behavior:</strong></p>
                    <ul>
                      <li>
                        <p>The device is detected correctly using <code>u=
hd_find_devices</code></p>
                      </li>
                      <li>
                        <p>[INFO] [UHD] linux; GNU C++ version 11.4.0;
                          Boost_107400; UHD_4.8.0.HEAD-0-g308126a4<br>
--------------------------------------------------<br>
                          -- UHD Device 0<br>
--------------------------------------------------<br>
                          Device Address:<br>
                          =C2=A0 =C2=A0 serial: <br>
                          =C2=A0 =C2=A0 fpga: HG<br>
                          =C2=A0 =C2=A0 name: <br>
                          =C2=A0 =C2=A0 product: X310<br>
                          =C2=A0 =C2=A0 resource: RIO0<br>
                          =C2=A0 =C2=A0 type: x300<br>
                          <code><br>
                          </code></p>
                      </li>
                      <li>
                        <p>UHD finds and selects the correct FPGA image
                          (<code>usrp_x310_fpga_HG.lvbitx</code>)</p>
                      </li>
                      <li>
                        <p>However, <code>uhd_usrp_probe</code> fails
                          during RIO initialization with:</p>
                        <pre><code>RuntimeError: x300_impl: Could not ini=
tialize RIO session.
Unknown error. (Error code -63150)</code></pre>
                      </li>
                      <li>
                        <pre>vishwanath@vishwanath:~$ sudo uhd_usrp_probe=

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.8.0.HEAD-=
0-g308126a4
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
[INFO] [X300] Using LVBITX bitfile /usr/local/share/uhd/images/usrp_x310_=
fpga_HG.lvbitx
Error: RuntimeError: x300_impl: Could not initialize RIO session. Unknown=
 error. (Error code -63150)
<code>
</code></pre>
                      </li>
                    </ul>
                    <p>This suggests the failure occurs after FPGA image
                      selection, during NI-RIO session initialization.</p=
>
                    <p><strong>Questions:</strong></p>
                    <ol>
                      <li>
                        <p>Is <strong>NI Linux Device Drivers 2025 Q2</st=
rong>
                          known to be compatible with UHD (especially
                          when UHD is built from OAI sources) for
                          X310/USRP-2952R over PCIe?</p>
                      </li>
                      <li>
                        <p>Are there any <strong>recommended UHD
                            versions</strong> or commits known to work
                          reliably with USRP-2952R + PCIe on Ubuntu
                          22.04?</p>
                      </li>
                      <li>
                        <p>Has anyone successfully used <strong>OAI
                            with USRP-2952R over PCIe</strong>, and if
                          so, could you share the software stack
                          versions?</p>
                      </li>
                      <li>
                        <p>Are there additional NI-RIO or kernel
                          requirements that UHD depends on for
                          PCIe-based X310 devices?</p>
                      </li>
                    </ol>
                    <p>Any insights, known limitations, or recommended
                      downgrade/upgrade paths would be very helpful.</p>
                    <p>Thank you for your time and support.</p>
                    <p>Regards,<br>
                      Vishwanath</p>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre wrap=3D"" class=3D"moz-quote-pre">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------7Rkt5HQzyp7RKdo8HwSL2805--

--------------ms020507090903010907090203
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: Kryptografische S/MIME-Signatur

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG9w0BBwEAAKCC
Dg4wggbmMIIEzqADAgECAhAxAnDUNb6bJJr4VtDh4oVJMA0GCSqGSIb3DQEBDAUAMIGIMQsw
CQYDVQQGEwJVUzETMBEGA1UECBMKTmV3IEplcnNleTEUMBIGA1UEBxMLSmVyc2V5IENpdHkx
HjAcBgNVBAoTFVRoZSBVU0VSVFJVU1QgTmV0d29yazEuMCwGA1UEAxMlVVNFUlRydXN0IFJT
QSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTAeFw0yMDAyMTgwMDAwMDBaFw0zMzA1MDEyMzU5
NTlaMEYxCzAJBgNVBAYTAk5MMRkwFwYDVQQKExBHRUFOVCBWZXJlbmlnaW5nMRwwGgYDVQQD
ExNHRUFOVCBQZXJzb25hbCBDQSA0MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA
s0riIl4nW+kEWxQENTIgFK600jFAxs1QwB6hRMqvnkphfy2Q3mKbM2otpELKlgE8/3AQPYBo
7p7yeORuPMnAuA+oMGRb2wbeSaLcZbpwXgfCvnKxmq97/kQkOFX706F9O7/h0yehHhDjUdyM
yT0zMs4AMBDRrAFn/b2vR3j0BSYgoQs16oSqadM3p+d0vvH/YrRMtOhkvGpLuzL8m+LTAQWv
QJ92NwCyKiHspoP4mLPJvVpEpDMnpDbRUQdftSpZzVKTNORvPrGPRLnJ0EEVCHR82LL6oz91
5WkrgeCY9ImuulBn4uVsd9ZpubCgM/EXvVBlViKqusChSsZEn7juIsGIiDyaIhhLsd3amm8B
S3bgK6AxdSMROND6hiHT182Lmf8C+gRHxQG9McvG35uUvRu8v7bPZiJRaT7ZC2f50P4lTlnb
LvWpXv5yv7hheO8bMXltiyLweLB+VNvg+GnfL6TW3Aq1yF1yrZAZzR4MbpjTWdEdSLKvz8+0
wCwscQ81nbDOwDt9vyZ+0eJXbRkWZiqScnwAg5/B1NUD4TrYlrI4n6zFp2pyYUOiuzP+as/A
Znz63GvjFK69WODR2W/TK4D7VikEMhg18vhuRf4hxnWZOy0vhfDR/g3aJbdsGac+diahjEwz
yB+UKJOCyzvecG8bZ/u/U8PsEMZg07iIPi8CAwEAAaOCAYswggGHMB8GA1UdIwQYMBaAFFN5
v1qqK0rPVIDh2JvAnfKyA2bLMB0GA1UdDgQWBBRpAKHHIVj44MUbILAK3adRvxPZ5DAOBgNV
HQ8BAf8EBAMCAYYwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHSUEFjAUBggrBgEFBQcDAgYI
KwYBBQUHAwQwOAYDVR0gBDEwLzAtBgRVHSAAMCUwIwYIKwYBBQUHAgEWF2h0dHBzOi8vc2Vj
dGlnby5jb20vQ1BTMFAGA1UdHwRJMEcwRaBDoEGGP2h0dHA6Ly9jcmwudXNlcnRydXN0LmNv
bS9VU0VSVHJ1c3RSU0FDZXJ0aWZpY2F0aW9uQXV0aG9yaXR5LmNybDB2BggrBgEFBQcBAQRq
MGgwPwYIKwYBBQUHMAKGM2h0dHA6Ly9jcnQudXNlcnRydXN0LmNvbS9VU0VSVHJ1c3RSU0FB
ZGRUcnVzdENBLmNydDAlBggrBgEFBQcwAYYZaHR0cDovL29jc3AudXNlcnRydXN0LmNvbTAN
BgkqhkiG9w0BAQwFAAOCAgEACgVOew2PHxM5AP1v7GLGw+3tF6rjAcx43D9Hl110Q+BABABg
lkrPkES/VyMZsfuds8fcDGvGE3o5UfjSno4sij0xdKut8zMazv8/4VMKPCA3EUS0tDUoL01u
gDdqwlyXuYizeXyH2ICAQfXMtS+raz7mf741CZvO50OxMUMxqljeRfVPDJQJNHOYi2pxuxgj
KDYx4hdZ9G2o+oLlHhu5+anMDkE8g0tffjRKn8I1D1BmrDdWR/IdbBOj6870abYvqys1qYlP
otv5N5dm+XxQ8vlrvY7+kfQaAYeO3rP1DM8BGdpEqyFVa+I0rpJPhaZkeWW7cImDQFerHW9b
KzBrCC815a3WrEhNpxh72ZJZNs1HYJ+29NTB6uu4NJjaMxpk+g2puNSm4b9uVjBbPO9V6sFS
G+IBqE9ckX/1XjzJtY8Grqoo4SiRb6zcHhp3mxj3oqWi8SKNohAOKnUc7RIP6ss1hqIFyv0x
XZor4N9tnzD0Fo0JDIURjDPEgo5WTdti/MdGTmKFQNqxyZuT9uSI2Xvhz8p+4pCYkiZqpahZ
lHqMFxdw9XRZQgrP+cgtOkWEaiNkRBbvtvLdp7MCL2OsQhQEdEbUvDM9slzZXdI7NjJokVBq
3O4pls3VD2z3L/bHVBe0rBERjyM2C/HSIh84rfmAqBgklzIOqXhd+4RzadUwggcgMIIFCKAD
AgECAhEA1ZBgQnSJuTR8cXVujp3b/jANBgkqhkiG9w0BAQwFADBGMQswCQYDVQQGEwJOTDEZ
MBcGA1UEChMQR0VBTlQgVmVyZW5pZ2luZzEcMBoGA1UEAxMTR0VBTlQgUGVyc29uYWwgQ0Eg
NDAeFw0yNDEyMDQwMDAwMDBaFw0yNjEyMDQyMzU5NTlaMIGaMQswCQYDVQQGEwJERTEPMA0G
A1UECBMGSGVzc2VuMTwwOgYDVQQKDDNHU0kgSGVsbWhvbHR6emVudHJ1bSBmw7xyIFNjaHdl
cmlvbmVuZm9yc2NodW5nIEdtYkgxFzAVBgNVBGETDk5UUkRFLUhSQiAxNTI4MSMwIQYJKoZI
hvcNAQkBFhRwLm5pZWRlcm1heWVyQGdzaS5kZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCC
AgoCggIBANGDDBss4T9z/SpIY6oS9mX7izIJnpzOXzoEoFewhzHFrG1zdKQXJkFkxGq9XHlg
j+Y9ObhPWHGDt5MeGv4l1eoAmPuhhRq4w4fz0jZqRecbX0Pt2/UIRIcvDB5vVY1aYUOaHx//
71wX3qKZiUuEmzCvz+9tG/yz61UUoCsJYSC+CwnnK69vDEjBJdZewhmY3d8yDBZQGsXmF2S+
RPuEyiN9ULe8F299mxX34bHfUxdqn3paCF2ujXD68ZVdkQk9yP/xlyWQWclBk1Yo9vk5MKD4
1DvUaV+S0Pk5/J4QThpRpkGcjItJkM3NzEsua+FjVh4oMlwSP7kbepGGaJ/kHXkxwpxRGiJk
/cwmRyI1X5PVvDGt0xaB3YNoM7cDiivBHS4jphb4ItB4Qp6guA8k2CpnFmro1y6nx6Y8rD+6
kEUjis/I+pvQB3Pxp+836lE6o9/czhgBEPmJdjloDb1rResEVK+ckifqHL1HGHrFlGUEkCFf
hQw7rXqyzACxfJJaTHYuvjxJUgb6VD5JHaWEp/4Rp8zKNvnrTDNXTZ8q+e0GaCTt0gcaIgOc
A6V4EeDUaW9yGIy40iReHVJkdx7/rZDTCZtcgeLhtdOTGuSHHuQpe3k1h2AVlsshvkbeZbjA
Q7tfyk1nwoOnWn1BJZ5uTjLeDeCw2aCeVUDT8tg3NX9HAgMBAAGjggGyMIIBrjAfBgNVHSME
GDAWgBRpAKHHIVj44MUbILAK3adRvxPZ5DAdBgNVHQ4EFgQUnBN5YxdPSwDFTa3cjKLNtyam
DBIwDgYDVR0PAQH/BAQDAgWgMAwGA1UdEwEB/wQCMAAwHQYDVR0lBBYwFAYIKwYBBQUHAwQG
CCsGAQUFBwMCMFAGA1UdIARJMEcwOgYMKwYBBAGyMQECAQoDMCowKAYIKwYBBQUHAgEWHGh0
dHBzOi8vc2VjdGlnby5jb20vU01JTUVDUFMwCQYHZ4EMAQUCAjBCBgNVHR8EOzA5MDegNaAz
hjFodHRwOi8vR0VBTlQuY3JsLnNlY3RpZ28uY29tL0dFQU5UUGVyc29uYWxDQTQuY3JsMHgG
CCsGAQUFBwEBBGwwajA9BggrBgEFBQcwAoYxaHR0cDovL0dFQU5ULmNydC5zZWN0aWdvLmNv
bS9HRUFOVFBlcnNvbmFsQ0E0LmNydDApBggrBgEFBQcwAYYdaHR0cDovL0dFQU5ULm9jc3Au
c2VjdGlnby5jb20wHwYDVR0RBBgwFoEUcC5uaWVkZXJtYXllckBnc2kuZGUwDQYJKoZIhvcN
AQEMBQADggIBAIBmQZxkYRM5fy00mOQpCOlJmxuyoRzFOo344Ti9xsX8OSrAqNU8Z9JZclxn
cTA6VoTPukOvz7VIAAFLWBzDtnIsrDmgRkwrRoTpY0Ln7pKcSbh+KlaK/tIJ9rXg2caUWFMg
DS/qqaGyU3RrqX7XZQvfqu9uo/em3lWmWwYkNR/9uUd5Hs9J/J3q6ZP8EFt7Yntcxs/2158s
n1jrHydVlqw9NXaqhXa9pAj2XkXNR12MiB80spjEinGrNtcZ2dURpi9pj5sfRYnVqrlNUNVn
SJ4aUouS1gxDeQcliKBWWFIt8vhG9Lharjj58ItUBH+z4O7ArZcvm+RANiqsBMMPoY1efS5H
mqNZq+f8YzJfnBUPqkTQjgAHtPbEsPGJBn7gyOIOkaYABOknHo1mlCX5fV5ZcBTBb7LwLc9a
N8dEbGC3ti9ulFcSriXO3PIpcLX2GlFYmIHENRZDnpFsHd8B+MJxO9EBDM3WMH2yhnaw3Pti
xO49gG8rp8wmIemaZ7py1kBHIW6s9XmDI7676zf8N8nWTJuL1hAJZ/yxiTWUlfENQJ9l8Y/E
ptLZsDNhyJxoOsPn991LQ3OBmjmHxMjOYv/QUef7j290qrqc+QfG3xnnwkIxKV4fFmq781MJ
9r+BBfqhMc/gTVyScDtktU3fj1HaLhfnJ8uxHOBPOOL9en2GMYIFSDCCBUQCAQEwWzBGMQsw
CQYDVQQGEwJOTDEZMBcGA1UEChMQR0VBTlQgVmVyZW5pZ2luZzEcMBoGA1UEAxMTR0VBTlQg
UGVyc29uYWwgQ0EgNAIRANWQYEJ0ibk0fHF1bo6d2/4wDQYJYIZIAWUDBAIDBQCgggK+MBgG
CSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI2MDEyMjE2NDgwM1ow
TwYJKoZIhvcNAQkEMUIEQPgelCeiFCFr8pvsdKTmAuZPBPlyEgsQemorNaCGvUU3X7H8RdxP
YzGcU7VnN2svGScMvSdp/jWHTEhxmWsfOsIwagYJKwYBBAGCNxAEMV0wWzBGMQswCQYDVQQG
EwJOTDEZMBcGA1UEChMQR0VBTlQgVmVyZW5pZ2luZzEcMBoGA1UEAxMTR0VBTlQgUGVyc29u
YWwgQ0EgNAIRANWQYEJ0ibk0fHF1bo6d2/4wbAYLKoZIhvcNAQkQAgsxXaBbMEYxCzAJBgNV
BAYTAk5MMRkwFwYDVQQKExBHRUFOVCBWZXJlbmlnaW5nMRwwGgYDVQQDExNHRUFOVCBQZXJz
b25hbCBDQSA0AhEA1ZBgQnSJuTR8cXVujp3b/jCCAVcGCSqGSIb3DQEJDzGCAUgwggFEMAsG
CWCGSAFlAwQBKjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwDQYIKoZIhvcNAwICAQUwDQYI
KoZIhvcNAwICAQUwBwYFKw4DAgcwDQYIKoZIhvcNAwICAQUwBwYFKw4DAhowCwYJYIZIAWUD
BAIBMAsGCWCGSAFlAwQCAjALBglghkgBZQMEAgMwCwYJYIZIAWUDBAIEMAsGCWCGSAFlAwQC
BzALBglghkgBZQMEAggwCwYJYIZIAWUDBAIJMAsGCWCGSAFlAwQCCjALBgkqhkiG9w0BAQEw
CwYJK4EFEIZIPwACMAgGBiuBBAELADAIBgYrgQQBCwEwCAYGK4EEAQsCMAgGBiuBBAELAzAL
BgkrgQUQhkg/AAMwCAYGK4EEAQ4AMAgGBiuBBAEOATAIBgYrgQQBDgIwCAYGK4EEAQ4DMA0G
CSqGSIb3DQEBAQUABIICAJmvSzHZ61ZtSjtrT/IxuJhQOy+b/2CV8J9IFsFbVT8wklZqDCoE
n0z0nkKf31cHmjWlT8p/cdGYg0a4OiQ8Sz2Adqx7IBkLhRG2WAoy0Yx8VTCA8N+hOp7TIMgm
Ap2RB2sw+1GHenbaML3/ZGg9TPETnADsTG+qsLCqVeAB1Af1iSZ1n+EFl216k5HTQ1yq6J5f
RcQ1ETYdHBJIrfmeS0py32Eoyuq/L2pHV0e74Kk4isE9TUrhwuWrowxgtqSIeFAcyvs+sckg
bGZmY6dSuk7Zion5nAvNStjPgnUdDCvANwbyyINm1BvBpZSOHwwbMEO9gOg3NtZoWq1eRm85
EuqXE0ev9RcBod4BbsOfYeX/EB65huPgTX6naEfV18jnu2JrLvpBZkwD8Fxg+pHMoQGrIzNK
CqF5Xxa062PtKnLGDsrduhuluKd6uEyKkWv+qwcP0DY6jnf2a4okDkLey+nlVAIe9mcY+Pax
gS3Q8qW6uO7z3Lbd0oIiRbE37E/GYp99y6h2mFjrqLsV2JdLH3vSVX3uvSv9VXEJkUE72sKI
MKOKi1CUeBCRApQcdmj855nx3HLRXfPrcUrVvUghRzaKMZSHDtpWlpL5NZ5M21mZ7WQ7Ceg8
dZgW6r11EC2lfi25zkkub7jM390e11NVflYRQ+Y5RNBWyHn7m7NLxwWsAAAAAAAA
--------------ms020507090903010907090203--

--===============8348630466664677279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8348630466664677279==--
