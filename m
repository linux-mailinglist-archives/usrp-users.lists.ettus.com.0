Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C959171689C
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 18:04:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA37338467B
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 12:04:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685462690; bh=yZI3uOcYo17Idz+rMNhqIjghT87n9p/Y86Mo4fDddYw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=UBdbnW4g++uTaf6O9bA4Q/r3MikDRiHQppI5UjWgtnOomQ445eE+2ZbLxvmv1GEo8
	 7nbhnrSuxtWU5cbNVrpnniSG5R9nW5wfIxXxgiIvL1ovLfjtnOA4JAqOahsbUb+xsT
	 uTMsDshTZB3XaJwrVBw8ZZ+C9Cz45CFN2rPceCehoavq2Vu7xbQ25+UyKHytxKOEN/
	 /dqEmgf1zhmfZGgio5c9UEr5BCpHZVGTOG88t56SsV6oCZ0qYjS4JcuoxVRFZilrTW
	 +/rw0ahVCKUiO2MI1K9oheQbtJJZnPBmnmiUMhAA/SA3iZxZUIZ7hrHxtc4bO5cjgs
	 lkaMTnI0kWWMg==
Received: from mx-out.tlen.pl (mx-out.tlen.pl [193.222.135.158])
	by mm2.emwd.com (Postfix) with ESMTPS id 7EE69380097
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 12:03:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=o2.pl header.i=@o2.pl header.b="tNSB3/N8";
	dkim-atps=neutral
Received: (wp-smtpd smtp.tlen.pl 21470 invoked from network); 30 May 2023 18:03:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
          t=1685462612; bh=M+jVJPGqiIwbIC+V8LIIqIetmE6u1wRLzOx18mcl2io=;
          h=Subject:To:From;
          b=tNSB3/N8Usn69gVLpx7ue8oJy7psYQ80ibJ1AgzRuL1bbpc4lmwO60JyCLAOYaymU
           bFSlfpnE33LdZQDtr4yzlPBSs2nqIuVI1DvYKS4YjF/EJ+SPqd3s9NOZ+c/si9m0Dx
           uxFUbfu0BSxFn50tE+mLVLerfVyMgYj7F7YwC0XQ=
Received: from 109.95.143.25.r.toneticgroup.pl (HELO [192.168.1.231]) (perper@o2.pl@[109.95.143.25])
          (envelope-sender <perper@o2.pl>)
          by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <usrp-users@lists.ettus.com>; 30 May 2023 18:03:32 +0200
Message-ID: <f77e6d5b-6a4b-beb2-80cf-2f69992bf4c9@o2.pl>
Date: Tue, 30 May 2023 18:03:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8@lists.ettus.com>
 <CAFche=gYq5ctyMW7_GVrCzhr8WxcjQz3ydNkV6geHAUS72K=bQ@mail.gmail.com>
 <DB4P189MB2440C719A5A6A88A67B4F7608D7C9@DB4P189MB2440.EURP189.PROD.OUTLOOK.COM>
From: Piotr Krysik <perper@o2.pl>
In-Reply-To: <DB4P189MB2440C719A5A6A88A67B4F7608D7C9@DB4P189MB2440.EURP189.PROD.OUTLOOK.COM>
X-WP-MailID: 65ba7298280f5d1c89293ff58527764b
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [MQOh]                               
Message-ID-Hash: 5MUPVUR5PO5QIJBZ6HEKB33GAELFBFYN
X-Message-ID-Hash: 5MUPVUR5PO5QIJBZ6HEKB33GAELFBFYN
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 not powering on
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5MUPVUR5PO5QIJBZ6HEKB33GAELFBFYN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGVsbG8NCg0KSSd2ZSBnb3QgYSBzaW1pbGFyIGlzc3VlOiBjb21wbGV0ZWx5IG5ldyBVU1JQIFg0
MTAgdGhhdCBkb2Vzbid0IHJlYWN0IHRvIA0KcG93ZXIgYnV0dG9uLg0KTW9yZSBzcGVjaWZpY2Fs
bHksIHRoZXJlIGlzIGEgbGl0dGxlIHNpZ24gb2YgbGlmZSAtIGl0IGNvbnN0YW50bHkgcHJpbnRz
IA0Kc29tZXRoaW5nIGxpa2UgdGhpcyBvbiBVQVJUIHRoYXQgSSBzdXBwb3NlIGlzIGEgcG9ydCBv
ZiBTVE0zMiANCm1pY3JvY29udHJvbGxlcjoNCiDCoC0tLSBVQVJUIGluaXRpYWxpemVkIGFmdGVy
IHJlYm9vdCAtLS0NCltSZXNldCBjYXVzZTogcmVzZXQtcGluIHBvd2VyLW9uXQ0KW0ltYWdlOiBS
TywgdGl0YW5pdW1fdjAuMC4xMzgyMS0yYmE5NzRiMmQgMjAyMS0wNy0xNSAxMTowNToxMCANCkBk
YzZhOWYwY2Y4ZDddDQpbMC4wMO+/vQ0KDQotLS0gVUFSVCBpbml0aWFsaXplZCBhZnRlciByZWJv
b3QgLS0tDQpbUmVzZXQgY2F1c2U6IHJlc2V0LXBpbiBwb3dlci1vbl0NCltJbWFnZTogUk8sIHRp
dGFuaXVtX3YwLjAuMTM4MjEtMmJhOTc0YjJkIDIwMjEtMDctMTUgMTE6MDU6MTAgDQpAZGM2YTlm
MGNmOGQ3XQ0KWzAuMDDvv70NCg0KLi4uDQoNCkRvIHlvdSBoYXZlIGFueSBpZGVhcyBob3cgdG8g
c29sdmUgdGhlIGlzc3VlIG90aGVyIHRoYW4gcmV0dXJuaW5nIHRoZSANCmRldmljZT8NCg0KLS0N
CkJlc3QgUmVnYXJkcywNClBpb3RyIEtyeXNpaw0KDQoNClcgZG5pdSAxOS4wNS4yMDIzIG/CoDE1
OjQxLCBBcmphbiBGZXRhIHZpYSBVU1JQLXVzZXJzIHBpc3plOg0KPg0KPiBIaSBXYWRlLA0KPg0K
PiBDb2luY2lkZW50YWxseSBJIGp1c3QgbWVhc3VyZWQgdGhlIG91dHB1dCB2b2x0YWdlIG9mIHRo
ZSBwb3dlciBzdXBwbHkgDQo+IGFuZCBmb3VuZCB0aGF0IHRoZSB0aHJlZSBvZiB0aGVtIHdvYmJs
ZSBhcm91bmQgOCB0byA5IHZvbHRzLiBUaGV3IA0KPiBwb2ludCBpcyB0aGF0IEkgaGF2ZSB0d28g
b2YgdGhlbSBhbmQgdGhleSBkbyB0aGUgc2FtZSB0aGluZywgd2hpY2ggDQo+IHJhaXNlcyB0aGUg
c3VzcGljaW9uIGl0IGlzIG5vdCBhIGNvaW5jaWRlbmNlLg0KPg0KPiBJIGd1ZXNzIEkgc2hvdWxk
IGNoZWNrIHRoYXQgdGhlIEFDIHBvd2VyIHNvdXJjZSBpcyBub3QgcGxheWluZyBhIGJhZCANCj4g
am9rZSBvbiBtZS4NCj4NCj4gVGhhbmsgeW91LA0KPg0KPiBBcmphbg0KPg0KPiAqQXJqYW4gRkVU
QSoNCj4gU0RSIEVuZ2luZWVyDQo+DQo+IDxodHRwOi8vd3d3LnJoZWFncm91cC5jb20vPg0KPg0K
PiAqUkhFQSBHUk9VUCoNCj4NCj4gMiwgUnVlIGTigJlBcmxvbiwgTC04Mzk5IFdpbmRob2YNCj4N
Cj4gT2ZmaWNlOsKgKzMyICgwKeKApnwgTW9iaWxlOiArMzkgMzI4NzA3MTA0Mg0KPg0KPiB3d3cu
cmhlYWdyb3VwLmNvbSANCj4gPGh0dHA6Ly90LnNpZGVraWNrb3BlbjU0LmNvbS9lMXQvYy81L2Yx
OGRRaGIwUzdsQzhkRE1QYlcybjB4NmwyQjluTUpXN3Q1WFlnMkJweVJGVzhxU3RweDNNeTd4UFcy
Qlc0emI1NmRUVDZmNV9YLXJnMDI/dD1odHRwJTNBJTJGJTJGd3d3LnJoZWFncm91cC5jb20lMkYm
c2k9NjI1MTY3MTg3NjUzNDI3MiZwaT04NGQ4ZDZmNS0zZmQxLTQ5NjItOWJmZC03YjJiMjI1YjYz
MDY+DQo+DQo+ICpGcm9tOipXYWRlIEZpZmUgPHdhZGUuZmlmZUBldHR1cy5jb20+DQo+ICpTZW50
OiogMTkgTWF5IDIwMjMgMTU6MzUNCj4gKlRvOiogQXJqYW4gRmV0YSA8YS5mZXRhQHJoZWFncm91
cC5jb20+DQo+ICpDYzoqIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+ICpTdWJqZWN0Oiog
UmU6IFtVU1JQLXVzZXJzXSBSZTogWDQxMCBub3QgcG93ZXJpbmcgb24NCj4NCj4NCj4gCQ0KPg0K
PiBZb3UgZG9uJ3Qgb2Z0ZW4gZ2V0IGVtYWlsIGZyb20gd2FkZS5maWZlQGV0dHVzLmNvbS4gTGVh
cm4gd2h5IHRoaXMgaXMgDQo+IGltcG9ydGFudCA8aHR0cHM6Ly9ha2EubXMvTGVhcm5BYm91dFNl
bmRlcklkZW50aWZpY2F0aW9uPg0KPg0KPiAJDQo+DQo+ICpDYXV0aW9uOipUaGlzIGVtYWlsIHdh
cyBzZW50IGZyb20gYW4gZXh0ZXJuYWwgc291cmNlLCBkbyBub3QgY2xpY2sgDQo+IGxpbmtzIG9y
IG9wZW4gYXR0YWNobWVudHMgdW5sZXNzIHlvdSByZWNvZ25pemUgdGhlIHNlbmRlciBlbWFpbCAN
Cj4gYWRkcmVzcyBhbmQga25vdyB0aGUgY29udGVudCBpcyBzYWZlLg0KPg0KPiBIaSBBcmphbiwN
Cj4NCj4gSSBoYXZlIG5vdCBoZWFyZCBvZiB0aGlzIGJlZm9yZS4gSXQgc2hvdWxkIGJlIGFzIHNp
bXBsZSBhcyBjb25uZWN0aW5nIA0KPiBhbiBhcHByb3ByaWF0ZSBBQyBjYWJsZSB0byB0aGUgWDQx
MCBwb3dlciBzdXBwbHkgYnJpY2ssIHBsdWdnaW5nIHRoZSANCj4gQUMgY2FibGUgaW50byB0aGUg
d2FsbCwgdGhlbiBwbHVnZ2luZyB0aGUgNi1waW4gcG93ZXIgY2FibGUgaW50byB0aGUgDQo+IFg0
MTAgYW5kIHByZXNzaW5nIHRoZSBwb3dlciBidXR0b24uIElmIHlvdSBoYXZlbid0IGFscmVhZHks
IHRyeSANCj4gZGlzY29ubmVjdGluZyBldmVyeXRoaW5nIGZyb20gdGhlIFg0MTAgaXRzZWxmIGV4
Y2VwdCB0aGUgcG93ZXIgY2FibGUgDQo+IGFuZCBwb3dlcmluZyBpdCBvbi4gQWxzbyB0cnkgZGlm
ZmVyZW50IEFDIGNhYmxlcyAodGhlIG9uZSB0aGF0IA0KPiBjb25uZWN0cyB0aGUgcG93ZXIgc3Vw
cGx5IGJyaWNrIHRvIHRoZSB3YWxsIHNvY2tldCkuIElmIHlvdSBoYXZlIGEgDQo+IHZvbHRhZ2Ug
bWV0ZXIgeW91IGNvdWxkIGFsc28gbWVhc3VyZSB0aGUgdm9sdGFnZSBvbiB0aGUgcG93ZXIgc3Vw
cGxpZXMgDQo+IHRvIGNvbmZpcm0gdGhleSdyZSBPSy4gSSBzdWdnZXN0IHlvdSBjb250YWN0IHN1
cHBvcnRAZXR0dXMuY29tIGlmIHlvdSANCj4gY2FuJ3QgZ2V0IGl0IHRvIHdvcmsuDQo+DQo+IFdh
ZGUNCj4NCj4gT24gRnJpLCBNYXkgMTksIDIwMjMgYXQgMjo1NeKAr0FNIEFyamFuIEZldGEgdmlh
IFVTUlAtdXNlcnMgDQo+IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6DQo+DQo+
ICAgICBTb3JyeSwgbm8gcXVlc3Rpb24gaW4gdGhlIG1lc3NhZ2UgOikuDQo+DQo+ICAgICBIYWQg
YW55b25lIGhhZCB0aGlzIGtpbmQgb2YgaXNzdWUgYmVmb3JlPw0KPg0KPiAgICAgVGhhbmtzLA0K
Pg0KPiAgICAgQXJqYW4NCj4NCj4gICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+ICAgICBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiAgICAgVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPg0KPg0KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
