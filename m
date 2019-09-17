Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB1EB5039
	for <lists+usrp-users@lfdr.de>; Tue, 17 Sep 2019 16:20:34 +0200 (CEST)
Received: from [::1] (port=48042 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iAELI-0001r4-1E; Tue, 17 Sep 2019 10:20:32 -0400
Received: from mail1.bemta26.messagelabs.com ([85.158.142.115]:46237)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Joern.Skorstad@Nkom.no>)
 id 1iAELE-0001lh-5T
 for usrp-users@lists.ettus.com; Tue, 17 Sep 2019 10:20:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=s1;
 t=1568729986; i=@nkom.no;
 bh=IlbitV1gDTgdhkiDFg7QerNNJsMbe12JeJHNobCXgeY=;
 h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
 Content-Type:Content-Transfer-Encoding:MIME-Version;
 b=fKCZSiZ0tQu7Ispu6j+hXH3pVBYrvWqeYpegU36KuPBnzHyn9c0iOexs833x+Ju26
 QB9/1RnsbNe1mTC69R6JyEIF286j6BQG7g8aDqx+/XPDHS0esYAERi/iqBFJUuT7IS
 lbuvNcQzq2bk4SEqcAJhB9yluUiT9VsNybitzwyiUXJRrkAc4W0Oiha3aZBLqkcmQD
 gZkHBiRjCpVgH7ZTMMKtiygdU3ZmxLA5GyZMuEdi3cm/cOrG22CWkLBPCUSGG0Mo+G
 /7jIRnRKNSNX0bam5d7UEeS34xurN769+efxwFNkNCKtdcJwaWkag9P6/N0BjIo3oa
 AieTWfgMcm2jQ==
Received: from [85.158.142.199] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-4.bemta.az-b.eu-central-1.aws.symcld.net id 22/54-31151-28BE08D5;
 Tue, 17 Sep 2019 14:19:46 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIKsWRWlGSWpSXmKPExsViF5OXq9v0uiH
 W4N9JKYsLnXPYHRg9Jq48xBzAGMWamZeUX5HAmrGwsZetYIlaxa7jU1gaGJ+odjFycQgJtDBK
 TJ2xjrWLkZODTcBe4ujMNhYQW0TAVuLPrIXMILawgLPEkS1LoeIuEotWXGSDsP0krp2byAhis
 wioSkx7eh/M5hWwk5i5/j07xIJZTBJXPs4Aa+YEGjR74TGgBAcHo4CsxNwmXpAws4C4xIyjd8
 BKJAQEJJbsOc8MYYtKvHz8jxXCVpJ4u3E7lG0lsfv5dnYIW1NiyqpDULaCxLmtZ9ggbHmJ/S+
 nMIOsYgaqWb9LH2KVosSU7ofsEGcKSpyc+YRlAqPYLCRXzELomIWkYxaSjgWMLKsYLZKKMtMz
 SnITM3N0DQ0MdA0NjXXNdS3N9BKrdJP0Ukt1k1PzSooSgZJ6ieXFesWVuck5KXp5qSWbGIExl
 lLInrCD8emsN3qHGCU5mJREeWdNaYgV4kvKT6nMSCzOiC8qzUktPsQow8GhJMHb/gooJ1iUmp
 5akZaZA4x3mLQEB4+SCG8zSJq3uCAxtzgzHSJ1itGSY8LLuYuYOS6cXQIkj8xduohZiCUvPy9
 VSpw37yVQgwBIQ0ZpHtw4WEq6xCgrJczLyMDAIMRTkFqUm1mCKv+KUZyDUUmY980LoCk8mXkl
 cFtfAR3EBHSQZnItyEEliQgpqQamhJD3DwrZGOc++z9d3fyQTf2tom/Suce1vzSvqbvwJ9PVb
 O+KuysDo9yWekm80Sh72zLh+Lv1L6tt9Vy39/5ZNC1+y6OF6wyLjxb369tdvfJuDp9zy/qXU7
 9fCHEyyDqdUp3XOOXJ282vjrs1zPyqmOOVseLROaZLB0x+XLj54efR3IxL1TrmjtM81mW5mPK
 4h6ey9Z0KlN2aZvKaRc7tZOM0DZUZfXpun3eeP/DHa9XbL/1r3cwbr1k4z5no9YOjw6rC6BjH
 wulVZ7VVDqYdKr5qPlEr4fsUw0u5pu5Luk+9ufNs34lHDhOSIxa2z7RomCGUJsOSa/mVt7Q5w
 IT9oQTHjP8fOBlcfkoYCP/RU2Ipzkg01GIuKk4EANqQBRrEAwAA
X-Env-Sender: Joern.Skorstad@Nkom.no
X-Msg-Ref: server-18.tower-244.messagelabs.com!1568729985!640831!1
X-Originating-IP: [62.92.110.109]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.43.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 7514 invoked from network); 17 Sep 2019 14:19:46 -0000
Received: from 109.110.92.62.static.cust.telenor.com (HELO smtp.nkom.no)
 (62.92.110.109)
 by server-18.tower-244.messagelabs.com with ECDHE-RSA-AES256-SHA encrypted
 SMTP; 17 Sep 2019 14:19:46 -0000
Received: from EXMBX01.npta.no ([10.10.2.97]) by EXCAS.npta.no ([::1]) with
 mapi id 14.03.0468.000; Tue, 17 Sep 2019 16:19:45 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] E310 filter settings and LO lock question
Thread-Index: AdVrx/r1EotD1tO5T8upaAUrEvc6ewAHlLiAAALHFoAAKJYr4AAKd6SAAClHraA=
Date: Tue, 17 Sep 2019 14:19:45 +0000
Message-ID: <D71B2B9BB39CE44CACCAB6646DF20CFD48D7C07E@exmbx01>
References: <ecbac5bf-b40a-4c93-980b-cc6f7c852f1a@email.android.com>
 <BC4D9856-CF67-47A5-BBFF-74B38B0F72EA@gmail.com>
 <4e120fcf-28e9-d02b-8523-3a7273b2f7aa@elitecoding.org>
 <D71B2B9BB39CE44CACCAB6646DF20CFD48D79E3D@exmbx01>
 <40721168-f9fa-bd3c-7dc4-47e610e059df@elitecoding.org>
In-Reply-To: <40721168-f9fa-bd3c-7dc4-47e610e059df@elitecoding.org>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.231.27]
x-tm-as-product-ver: SMEX-11.0.0.1251-8.100.1062-24916.003
x-tm-as-result: No--24.717000-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: [USRP-users] E310 filter settings and LO lock question
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Skorstad=2CJ=C3=B8rn_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?B?U2tvcnN0YWQsSsO4cm4=?= <Joern.Skorstad@Nkom.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

SnVsaWFuLCANCg0KbWFueSB0aGFua3MgZm9yIHlvdXIgZXh0ZW5zaXZlIGFuc3dlciENCg0KUmVn
YXJkcywNCkpvcm4NCg0KDQpKb3JuLA0KDQp3aGlsZSB0dW5pbmcsIHNhbXBsZXMgd2lsbCBjb250
aW51ZSB0byBmbG93IGZyb20gdGhlIGRldmljZSB0byB5b3VyIGhvc3QgKGlmIHlvdXIgcmVjdiBs
b29wIGlzIHJ1bm5pbmcgaW4gYSBzZXBhcmF0ZSB0aHJlYWQpLg0KSG93ZXZlciwgd2hpbGUgVUhE
IGlzIHByb2Nlc3NpbmcgeW91ciBjYWxsIHRvICdzZXRfcnhfZnJlcScgdGhlcmUgd2lsbCBiZSBz
b21lIHRyYW5zaWVudCBiZWhhdmlvciB2aXNpYmxlIGluIHRoZSByZWNlaXZlZCBzYW1wbGVzLg0K
VGh1cywgeW91IHNob3VsZCBwcm9iYWJseSBkaXNjYXJkIGFsbCByZWNlaXZlZCBzYW1wbGVzIHdo
aWxlIHdhaXRpbmcgZm9yICdzZXRfcnhfZnJlcScgdG8gZmluaXNoLg0KDQpUaGUgdHVuaW5nIHBy
b2Nlc3Mgb24gdGhlIEUzMTAvQjIxMCBpcyBhY3R1YWxseSByZWxhdGl2ZWx5IGludm9sdmVkIChj
YWxpYnJhdGlvbiB3aXNlKS4gVGhlIGZyb250LWVuZCBJQyBoYXMgdG8gcGVyZm9ybSBjYWxpYnJh
dGlvbiBvZiBzZXZlcmFsIHN0YWdlcyB3aGVuIGNoYW5naW5nIGZyZXF1ZW5jeS4gU29tZSBvZiB0
aG9zZSBjYWxpYnJhdGlvbiBzdGVwcyBvbmx5IGhhcHBlbiBldmVyeSAxMDAgTUh6IHdoaWNoIGlz
IHdoeSB5b3Ugd2lsbCBub3RpY2UgdGhhdCBzb21lIGNhbGxzIHRvICdzZXRfcnhfZnJlcScgd2ls
bCB0YWtlIGNvbnNpZGVyYWJseSBsb25nZXIgdGhhbiBvdGhlcnMuDQoNCldoaWxlICdzZXRfcnhf
ZnJlcScgaXMgYmxvY2tpbmcgZHVyaW5nIHRoaXMgY2FsaWJyYXRpb24gcHJvY2VzcywgdGhlcmUg
YXJlIG90aGVyIHBhcnRzIGluIHRoZSBmcm9udC1lbmQgdGhhdCBtaWdodCAoZGVwZW5kaW5nIG9u
IHlvdSBpbnB1dCkgdGFrZSBzb21lIG1vcmUgdGltZSB0byBzZXR0bGUgKHRoZSBEQyBvZmZzZXQg
YW5kIElRIGltYmFsYW5jZSBjb3JyZWN0aW9uLCBmb3IgZXhhbXBsZSkuDQpTbyBpdCdzIG5vdCBh
IGJhZCBpZGVhIHRvIGdpdmUgdGhlIGRldmljZSBzb21lIGV4dHJhIHRpbWUgYWZ0ZXIgJ3NldF9y
eF9mcmVxJyBpcyBkb25lIGJlZm9yZSBwcm9jZXNzaW5nIHNhbXBsZXMgYWdhaW4uDQoNCkhvcGUg
dGhpcyBoZWxwcy4gTGV0IG1lIGtub3cgaWYgeW91IGhhdmUgYW55IGZ1cnRoZXIgcXVlc3Rpb25z
Lg0KQ2hlZXJzLA0KSnVsaWFuDQoNCk9uIDE2LjA5LjE5IDE1OjM4LCBTa29yc3RhZCxKw7hybiB2
aWEgVVNSUC11c2VycyB3cm90ZToNCj4gTWFueSB0aGFua3MgZm9yIHlvdXIgYW5zd2Vycy4gRG8g
eW91IGtub3cgaWYgdGhlIEUzMTAgd2lsbCBoYWx0IHRoZSBkYXRhIHN0cmVhbSB3aGlsZSBjaGFu
Z2luZyBmaWx0ZXIvZnJlcXVlbmN5LCBvciBkbyBJIG5lZWQgdG8gdGFrZSB0aGlzIGludG8gYWNj
b3VudCBpbiB0aGUgc29mdHdhcmUgd2hpbGUgY2hhbmdpbmcgZnJlcXVlbmNpZXM/DQo+IA0KPiAN
Cj4gSm9ybiwNCj4gDQo+IHJlZ2FyZGluZyB5b3VyIG90aGVyIHF1ZXN0aW9uLCBmaWx0ZXIgc2Vs
ZWN0aW9uIG9uIHRoZSBFMzEwIGlzIGhhbmRsZWQgYnkgVUhELCBpbnRlcm5hbGx5Lg0KPiANCj4g
Q2hlZXJzLA0KPiBKdWxpYW4NCj4gDQo+IE9uIDE1LjA5LjE5IDIwOjU0LCBNYXJjdXMgRCBMZWVj
aCB2aWEgVVNSUC11c2VycyB3cm90ZToNCj4+IE15IHJlY29sbGVjdGlvbiBpcyB0aGF0IHRoZSBB
RDkzNjEgUkYgY2hpcCBkb2VzbuKAmXQgaGF2ZSBhbiBleHRlcm5hbCBsb2NrIGluZGljYXRvci4N
Cj4+DQo+PiBTZW50IGZyb20gbXkgaVBob25lDQo+Pg0KPj4+IE9uIFNlcCAxNSwgMjAxOSwgYXQg
OToxNyBBTSwgU2tvcnN0YWQsSsO4cm4gdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tPiB3cm90ZToNCj4+Pg0KPj4+IEhpIGFsbCwNCj4+Pg0KPj4+DQo+Pj4NCj4+PiBJ
IGFtIGN1cnJlbnRseSB3b3JraW5nIG9uIGEgcHJvamVjdCB1c2luZyBhIFVTUlAgRTMxMCB0byBv
dXRwdXQgYW4gRkZUIHBsb3Qgb3ZlciBhIGdpdmVuIGZyZXF1ZW5jeSByYW5nZSAodXN1YWxseSBi
aWdnZXIgdGhhbiB0aGUgcG9zc2libGUgc2FtcGxlIHJhdGUpLiBUaGUgcHJvZ3JhbSBpcyB3cml0
dGVuIGluIEMrKyB1c2luZyB0aGUgVUhEIGxpYnJhcnkuIEZyZXF1ZW5jeSByYW5nZSBpcyBhY2hp
ZXZlZCBieSBjaGFuZ2luZyB0aGUgTE8gZnJlcXVlbmN5IHJlZ3VsYXJseS4gVGhlIHByb2dyYW0g
c2VlbXMgdG8gd29yaywgaG93ZXZlciBJIGhhdmUgdHdvIHF1ZXN0aW9ucyBJIGNhbuKAmXQgZmlu
ZCB0aGUgYW5zd2VyIHRvIGluIHRoZSBVSEQgbWFudWFsOg0KPj4+DQo+Pj4NCj4+Pg0KPj4+IFRo
ZSBFMzEwIGhhcyBhbmFsb2cgZmlsdGVycyBvbiB0aGUgUlggYW5kIFRYIHBvcnRzLiBUaGUgZG9j
dW1lbnRhdGlvbiBpcyBhIGxpdHRsZSBzaG9ydCBvbiBob3cgdGhlc2UgZmlsdGVycyBhcmUgY29u
dHJvbGxlZC4gQXJlIHRoZXkgc2VsZWN0ZWQgYXV0b21hdGljYWxseSBiYXNlZCBvbiB0aGUgTE8g
ZnJlcXVlbmN5LCBvciBkbyB0aGV5IG5lZWQgdG8gYmUgbWFudWFsbHkgc2VsZWN0ZWQ/IElmIHNv
LCBob3c/IEFuZCB3aGF0IHdvdWxkIGJlIHRoZSAoZXN0aW1hdGVkKSBjaGFuZ2VvdmVyIHRpbWUg
YmV0d2VlbiBmaWx0ZXJzPw0KPj4+DQo+Pj4NCj4+Pg0KPj4+IExPIGxvY2sg4oCTIEkgdHJpZWQg
dG8gZGV0ZWN0IGlmIExPIGlzIGxvY2tlZCBhZnRlciBhIHR1bmUgcmVxdWVzdCB1c2luZyB0aGUg
VUhEIG1hbnVhbCBhcyBhIHJlZmVyZW5jZS4gSWYgSSBpbmNsdWRlIHRoZSBmb2xsb3dpbmcgZGly
ZWN0bHkgYWZ0ZXIgYSB0dW5lIHJlcXVlc3Qgbm90aGluZyBpcyBwcmludGVkOg0KPj4+DQo+Pj4g
ICAgd2hpbGUgKCF1c3JwLT5nZXRfcnhfc2Vuc29yKCJsb19sb2NrZWQiKS50b19ib29sKCkpIHN0
ZDo6Y291dCA8PCANCj4+PiAiUExMIHVubG9ja2VkISIgPDwgc3RkOjplbmRsOw0KPj4+DQo+Pj4N
Cj4+Pg0KPj4+IElzIHRoZXJlIHNvbWUgb3RoZXIgd2F5IHRvIGRldGVjdCBMTyBsb2NrPw0KPj4+
DQo+Pj4NCj4+Pg0KPj4+IFJlZ2FyZHMsDQo+Pj4NCj4+PiBKb3JuDQo+Pj4NCj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4+IFVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0DQo+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+PiBodHRwOi8v
bGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5j
b20NCj4+DQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QNCj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tDQo+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vy
c19saXN0cy5ldHR1cy5jb20NCj4+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0DQo+IFVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tDQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5m
by91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQ0KPiANCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5m
by91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
