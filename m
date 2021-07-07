Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 768E43BEEC2
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 20:35:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E24C384C91
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 14:35:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="b6iINGLE";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="ZYfdOZF1";
	dkim-atps=neutral
Received: from mfe.dren.mil (mfe.dren.mil [140.32.59.234])
	by mm2.emwd.com (Postfix) with ESMTPS id 222A9384757
	for <usrp-users@lists.ettus.com>; Wed,  7 Jul 2021 14:34:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=s1.dkim;
 bh=nUqUBw2SVYNSuvGlCgWBxOcfKmmdFUHiRMX8xWy2ZIw=;
 b=b6iINGLE1qkPAhIPvAM0zDK5t1PrbdBD/Oyk3GhwZFCVvpuo93J4hpmnxwBY3CnuqIok
 J5jxEbCx+jX/MvbMEgp7hCoxWBsfOnj1lq7nxO3ciRqvNwcCjh2jyGgssLabR5cIiCtQ
 eQHcaIpDOQWXu+mqicMuHPLJ0jBIKPLbmpY=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=s2.dkim;
 bh=nUqUBw2SVYNSuvGlCgWBxOcfKmmdFUHiRMX8xWy2ZIw=;
 b=ZYfdOZF1vkD1I83VZc04Gb1JioDhu1xqOUpPYsmjUJbSkN0j7/OLstFeX4b0+GPy4UOv
 C8wwwZF3/qUEiW3K6fc/Aav4DeAG5K+B8HlFGGWjbtURkKQETMyOovEQX0Rd+swrg0o3
 OcAlRuESHNJklBvJp2kYxfD+5frmL6GbgImTylzDFr+HHx4GCwKCumqvOtBPkN747+Lx
 pgbaV8XoR29tEDK2xnTVjFB1iK0hft/frgktKoay24usuIuykU05PQAc7NiDT1/BLtCt
 KdFegm4F+yNz38qRFsKkCxv2zX7H6SB0pq1mJ+lyrmYQclz7/JuiJTQeMLMpRTSY9O9t Sw==
Received: from rde-gw2.erdc.dren.mil (rde-gw2.erdc.dren.mil [134.164.23.111])
	by ppae.dren.mil (8.16.1.2/8.16.1.2) with ESMTPS id 167IYTxZ020227
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 7 Jul 2021 18:34:29 GMT
X-IronPort-AV: E=Sophos;i="5.84,221,1620709200";
   d="scan'208";a="61306417"
Received: from unknown (HELO ERDC-EX1.erdc.dren.mil) ([134.164.254.13])
  by rde-gw2.erdc.dren.mil with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Jul 2021 13:34:28 -0500
Received: from ERDC-EX1.erdc.dren.mil (134.164.254.13) by
 ERDC-EX1.erdc.dren.mil (134.164.254.13) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2176.14; Wed, 7 Jul 2021 13:34:29 -0500
Received: from ERDC-EX1.erdc.dren.mil ([fe80::b0df:9b58:9980:1cc8]) by
 ERDC-EX1.erdc.dren.mil ([fe80::b0df:9b58:9980:1cc8%6]) with mapi id
 15.01.2176.014; Wed, 7 Jul 2021 13:34:29 -0500
To: Marcus D Leech <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] UHD Transmit and Receive times
Thread-Index: AddylCI2tPSlPApyRuSvT7DPUnWswwAQyR0AACEl1vA=
Date: Wed, 7 Jul 2021 18:34:29 +0000
Message-ID: <1be59b4396804dce8b6726391452b7d5@erdc.dren.mil>
References: <6e5084fbdd8d459b9b7602bf3d5562e2@erdc.dren.mil>
 <19FAD5E2-BAA1-423E-AD5B-62E82376520C@gmail.com>
In-Reply-To: <19FAD5E2-BAA1-423E-AD5B-62E82376520C@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [134.164.254.60]
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Message-ID-Hash: XRUTTS2X45VROYROTJWTYWAHZ5PGKMRR
X-Message-ID-Hash: XRUTTS2X45VROYROTJWTYWAHZ5PGKMRR
X-MailFrom: Carl.L.Wolsieffer@erdc.dren.mil
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Transmit and Receive times
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XRUTTS2X45VROYROTJWTYWAHZ5PGKMRR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
Content-Transfer-Encoding: base64

UGFydCBvZiB0aGUgZ29vZCBuZXdzIHRoZXJlIGlzIEknbSB1dGlsaXppbmcgdGhlIGZ1bGwgMjAw
IE1zcHMgY2xvY2sgc3BlZWQgc28gSSd2ZSBiZWVuIHNraXBwaW5nIGJvdGggZHVjIG9uIFRYIGFu
ZCBkZGMgb24gUlgsIHRodXMgaG9wZWZ1bGx5IG1pbmltaXppbmcgYW55IGZyb250IGVuZCBkZWxh
eXMgdG8gYmUgbWVhc3VyZWQNCg0KSSdtIHNsaWdodGx5IGNvbmZ1c2VkIGFib3V0IHRoZSBSeCBt
ZXRhZGF0YSBwb3J0aW9uOiBJIGtub3cgaW4gdGhlIHVoZCBuYW1lc3BhY2UgdGhlcmUgaXMgdGhl
IHJ4X21ldGFkYXRhX3Qgc3RydWN0LCBidXQgYXMgZmFyIGFzIEkgY2FuIHRlbGwsIEkgYXMgdGhl
IHVzZXIgaGF2ZSBiZWVuIHNldHRpbmcgdGhvc2UgdmFsdWVzIGluIHRoZSBjb2RlIGluIGFuIGVm
Zm9ydCB0byBoZWxwIHN5bmNocm9uaXplIGJvdGggVHggYW5kIFJ4LiBBcmUgeW91IHNheWluZyB0
aGlzIHZhbHVlIEkndmUgYmVlbiBzZXR0aW5nIGZvciB0aW1lX3NwZWMgd2lsbCBiZSB0aGUgbW9z
dCBhY2N1cmF0ZSBhcHByb3hpbWF0aW9uIG9mIHRoZSBmaXJzdCByZWNlaXZlZCBzYW1wbGUgKGFu
ZCB3aGVuIGZpcnN0IHNhbXBsZSB3YXMgdHgnZCBmb3IgdGhhdCBtYXR0ZXI/KQ0KDQpUaGFua3Mg
YXMgYWx3YXlzLA0KQ2FzZXkNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IE1h
cmN1cyBEIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4gDQpTZW50OiBUdWVzZGF5LCBK
dWx5IDYsIDIwMjEgNToyNSBQTQ0KVG86IFdvbHNpZWZmZXIsIENhcmwgTC4gRVJEQy1SREUtQ1JM
LU5IIENJViA8Q2FybC5MLldvbHNpZWZmZXJAZXJkYy5kcmVuLm1pbD4NCkNjOiB1c3JwLXVzZXJz
IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NClN1YmplY3Q6IFJlOiBbVVNSUC11c2Vyc10g
VUhEIFRyYW5zbWl0IGFuZCBSZWNlaXZlIHRpbWVzDQoNClRoZSBSWCBtZXRhZGF0YSBpbmNsdWRl
cyB0aW1lIHN0YW1wcy4gVGhlIHRpbWUgc3RhbXAgY2xvY2tzIChhbmQgdGhpcyBldmVudCB0aW1p
bmcpIHdpbGwgYmUgYXMgZ29vZCBhcyB5b3VyIGNvbW1vbiByZWZlcmVuY2UgY2xvY2suIA0KDQpU
aGVyZSB3aWxsIGJlIGFuIGluZXZpdGFibGUgbGF0ZW5jeSBkdWUgdG8gdGhlIERTUCBncm91cCBk
ZWxheSBpbmhlcmVudCBpbiB0aGUgRFVDLCB3aGljaCB5b3Ugd2lsbCBoYXZlIHRvIG1lYXN1cmUu
IEl04oCZcyB1c3VhbGx5IG9uIHRoZSBvcmRlciBvZiAxMHMgb2Ygc2FtcGxlIHRpbWVzIGJ1dCBj
YW4gdmFyeSBmcm9tIHZlcnNpb24gdG8gdmVyc2lvbiBvZiB0aGUgRlBnQSBjb2RlIGFuZCBzYW1w
bGUgcmF0ZSBzZXR0aW5ncy4gDQoNClNlbnQgZnJvbSBteSBpUGhvbmUNCg0KPiBPbiBKdWwgNiwg
MjAyMSwgYXQgNToxNiBQTSwgV29sc2llZmZlciwgQ2FybCBMLiBFUkRDLVJERS1DUkwtTkggQ0lW
IHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6DQo+IA0K
PiDvu79IZWxsbywNCj4gDQo+IEkgYW0gdXNpbmcgdHdvIHgzMTBzIGJvdGggaG9zdGVkIGZyb20g
YSBjb21tb24gUEMuIEkndmUgc3RpdGNoZWQgdG9nZXRoZXIgYSBmZXcgVUhEIGV4YW1wbGVzIHRv
IHRyYW5zbWl0IGEgcHJlLXJlY29yZGVkIHdhdmVmb3JtIGZyb20gb25lIHgzMTAgYW5kIHJlY2Vp
dmUgYXQgdGhlIG90aGVyIGF0IHRoZSBleGFjdCBzYW1lIHRpbWUuIEknbSB1c2luZyBhbiBGTUNX
IHdhdmVmb3JtIGFuZCB3b3VsZCBsaWtlIHRvIHJ1biBhIGNvcnJlbGF0aW9uIG9uIHRoZSByZWNl
aXZlZCBzaWduYWwgdG8gbWFrZSBhbiBhdHRlbXB0IGF0IG1lYXN1cmluZyBkaXN0YW5jZSBiZXR3
ZWVuIHRoZSBUeCBhbmQgUnguIEkgdXNlZCBhIGNvbW1vbiByZWZlcmVuY2UgYW5kIFBQUyBiZXR3
ZWVuIHRoZSB0d28geDMxMHMgYW5kIHNjaGVkdWxlZCBhIHRyYW5zbWl0IGFuZCByZWNlaXZlIGJ5
IHBhc3NpbmcgYSB0aW1lX3NwZWMgaW4gdGhlIHR4X21ldGFkYXRhIHZhcmlhYmxlIGZvciB0aGUg
dHhfc3RyZWFtLT5zZW5kKCkgZnVuY3Rpb24gYXMgd2VsbCBhcyB0aGUgdGltZV9zcGVjIHZhcmlh
YmxlIG9mIHRoZSByeF9zdHJlYW0tPmlzc3VlX3N0cmVhbV9jbWQgZnVuY3Rpb24uDQo+IA0KPiBN
eSBxdWVzdGlvbiBpczogaG93IG11Y2ggc3RvY2sgZG8gSSBwdXQgaW4gdGhlc2UgdGltZV9zcGVj
IHZhbHVlcz8gSXMgdGhlcmUgc29tZSB0aW1lc3RhbXAgSSBjYW4gcmV0cmlldmUgdGhhdCB3aWxs
IHRlbGwgbWUgc29tZXRoaW5nIGNsb3NlciB0byB0aGUgdHJ1dGggYWJvdXQgd2hlbiB0aGUgZmly
c3Qgc2FtcGxlIHdhcyBlbWl0dGVkIGZyb20gdGhlIHRyYW5zbWl0dGVyIG9yIHdhcyByZWNvcmRl
ZCBhdCB0aGUgcmVjZWl2ZXI/IE9yIGNhbiBJIHJlbHkgb24gdGhlIFNEUiBhZGhlcmluZyBwcmV0
dHkgc3RyaWN0bHkgdG8gdGhlIHRpbWVfc3BlYyB2YWx1ZSBpdCB3YXMgcGFzc2VkIHByb3ZpZGVk
IGl0IHdhcyBzZXQgc3VmZmljaWVudGx5IGZhciBpbiBmdXR1cmUgdG8gZ2l2ZSBTRFIgdGltZSB0
byBzY2hlZHVsZSBjb21tYW5kcz8NCj4gDQo+IA0KPiBUaGFua3MhDQo+IENhc2V5DQo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIFRvIHVuc3Vic2NyaWJl
IA0KPiBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
