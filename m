Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E5B39E6FC
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jun 2021 21:00:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DEA85384925
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jun 2021 15:00:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="qf/LQF9r";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="hFoCFtkF";
	dkim-atps=neutral
Received: from mfe.dren.mil (mfe.dren.mil [140.32.59.234])
	by mm2.emwd.com (Postfix) with ESMTPS id 8D936383FD8
	for <USRP-users@lists.ettus.com>; Mon,  7 Jun 2021 14:59:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=s1.dkim;
 bh=OWYsUbEbIyqatOkPLhVj0Izoqdiy2bHUXZlGVITwE/k=;
 b=qf/LQF9rDN+U+wIcpx0ycVibnFbXOfohKcwazax9uxu2/w1tdWTNdp6epw9QwbOVw5BO
 hm/wlAC4txBJK3UUGB6/YdZh0emcWZXWnfNK6+tS1a548hk9fKyH6pq1yCYlF3K3C0oZ
 RLyl4IAIzL+Mq3QYTJ9T30SblqMVJUJz4ac=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=s2.dkim;
 bh=OWYsUbEbIyqatOkPLhVj0Izoqdiy2bHUXZlGVITwE/k=;
 b=hFoCFtkFRxDKMf4mCGEmPx/TLphT7Tmmn/XfeOA4RDZe7oSOf42HlAJXzufbDHXCkbmb
 6ajlTmJ0KbItaS8SMMe20zS2xFTf+OvEMD/JMeA1XrbPMzUDGepI9II/fueJANQknNv5
 a/QH16JTokJXYt/NyO8EnRSG7DWOFASZpFqz+utSZr2ZVSkPv6QHM5X+CiNYD+2Zf5PI
 QxkxVrnKejtqsNw2RbJq4bdru0cG+CUNQMau9W8d0gvlso7qtZcafDqbvpmlsMz5th6Q
 3ymDAlMJnlCZr2CDuG2FLeUl1P8dAAwZmu3OCsUNgUHukYmZJE45xc/vtfemVHa7zN3I EA==
Received: from rde-gw2.erdc.dren.mil (rde-gw2.erdc.dren.mil [134.164.23.111])
	by ppae.dren.mil (8.16.1.2/8.16.1.2) with ESMTPS id 157Ixsls018863
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <USRP-users@lists.ettus.com>; Mon, 7 Jun 2021 18:59:54 GMT
X-IronPort-AV: E=Sophos;i="5.83,255,1616475600";
   d="scan'208";a="60677283"
Received: from unknown (HELO ERDC-EX1.erdc.dren.mil) ([134.164.254.13])
  by rde-gw2.erdc.dren.mil with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Jun 2021 13:59:53 -0500
Received: from ERDC-EX1.erdc.dren.mil (134.164.254.13) by
 ERDC-EX1.erdc.dren.mil (134.164.254.13) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2176.2; Mon, 7 Jun 2021 13:59:54 -0500
Received: from ERDC-EX1.erdc.dren.mil ([fe80::ed7c:3b0b:662d:e788]) by
 ERDC-EX1.erdc.dren.mil ([fe80::ed7c:3b0b:662d:e788%6]) with mapi id
 15.01.2176.012; Mon, 7 Jun 2021 13:59:54 -0500
To: Marcus D Leech <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] tx_samples_from_file warnings for ettus x310
Thread-Index: AddbwNgDkyr7SNGQQbKbPf+SaFwn0QAM3c2AAAljfXA=
Date: Mon, 7 Jun 2021 18:59:54 +0000
Message-ID: <8240441d45754de2afcd994d046b84e8@erdc.dren.mil>
References: <2f98f5900d5144c79e511d32856ae76e@erdc.dren.mil>
 <CFCA6582-65A0-42FC-9A0B-9CCDD06A36F3@gmail.com>
In-Reply-To: <CFCA6582-65A0-42FC-9A0B-9CCDD06A36F3@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [134.164.254.60]
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Message-ID-Hash: GIQODFLAS62T3NEGRMC3DIDHWFC7AVXK
X-Message-ID-Hash: GIQODFLAS62T3NEGRMC3DIDHWFC7AVXK
X-MailFrom: Carl.L.Wolsieffer@erdc.dren.mil
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tx_samples_from_file warnings for ettus x310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GIQODFLAS62T3NEGRMC3DIDHWFC7AVXK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
Content-Transfer-Encoding: base64

SGkgTWFyY3VzLA0KDQpZZXMgdGhlICI+IFtXQVJOSU5HXSBbMC9SYWRpbyMwXSBBdHRlbXB0aW5n
IHRvIHNldCB0aWNrIHJhdGUgdG8gMC4gU2tpcHBpbmcuIiBJcyBzdGlsbCB0aGVyZSB3aGVuIEkg
anVzdCB0cmllZCBhdCAyTXNwcywgdGhlICJbV0FSTklOR10gW1JGTk9DOjpHUkFQSDo6REVUQUlM
XSIgbWVzc2FnZSBpcyBnb25lIGhvd2V2ZXIuIE5vdCBzdXJlIGlmIHRoYXQncyBvbmUgdG8gYmUg
Y29uY2VybmVkIGFib3V0IG9yIG5vdC4NCg0KDQpUaGFua3MgZm9yIHlvdXIgcmVzcG9uc2UhDQpD
YXNleQ0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogTWFyY3VzIEQgTGVlY2gg
PHBhdGNodm9uYnJhdW5AZ21haWwuY29tPiANClNlbnQ6IE1vbmRheSwgSnVuZSA3LCAyMDIxIDI6
MjUgUE0NClRvOiBXb2xzaWVmZmVyLCBDYXJsIEwuIEVSREMtUkRFLUNSTC1OSCBDSVYgPENhcmwu
TC5Xb2xzaWVmZmVyQGVyZGMuZHJlbi5taWw+DQpDYzogVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20NClN1YmplY3Q6IFJlOiBbVVNSUC11c2Vyc10gdHhfc2FtcGxlc19mcm9tX2ZpbGUgd2Fybmlu
Z3MgZm9yIGV0dHVzIHgzMTANCg0KRG9lcyB0aGUgZXJyb3IgaGFwcGVuIGF0IGxvd2VyIHNhbXBs
ZQ0KUmF0ZXM/ICBJ4oCZbSB0aGlua2luZyB0aGF0IHBlcmhhcHMgdGhlIHR4X3NhbXBsZXNfZnJv
bV9maWxlIGV4YW1wbGUgaGFzbuKAmXQgYmVlbiBwcm9wZXJseSBjb252ZXJ0ZWQgdG8gdGhlIG5l
d2VyIFJGTk9DIGluZnJhc3RydWN0dXJlIHRoYXTigJlzIHVuZGVybmVhdGguIA0KDQpTZW50IGZy
b20gbXkgaVBob25lDQoNCj4gT24gSnVuIDcsIDIwMjEsIGF0IDE6MzIgUE0sIFdvbHNpZWZmZXIs
IENhcmwgTC4gRVJEQy1SREUtQ1JMLU5IIENJViB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20+IHdyb3RlOg0KPiANCj4g77u/SGVsbG8gYWxsLA0KPiANCj4gV2hpbGUg
dHJ5aW5nIHRvIGNvbmZpcm0gaWYgdGhlIHgzMTAgKFVCWC0xNjApIGNhbiB3b3JrIHdpdGggYSAN
Cj4gc2luZ2xlbW9kZSBmaWJlciBvcHRpYyAxMEdiZSBJIGhhdmUgYmVlbiB1c2luZyB0aGUgDQo+
IHR4X3NhbXBsZXNfZnJvbV9maWxlIGFuZCByeF9zYW1wbGVzX3RvX2ZpbGUuIFRoZSByeF9zYW1w
bGVfZnJvbV9maWxlIA0KPiBzZWVtcyB0byBnbyBvdmVyIGFscmlnaHQgd3JpdGluZyA1MDBtcyB3
b3J0aCBvZiBkYXRhIGRvd24gYXQgMjAwTXNwcywgDQo+IGJ1dCB0aGUgVHggc2lkZSBnaXZlcyBt
ZSB0d28gd2FybmluZ3MgdGhhdCBJIGhhdmUgbm90IGJlZW4gYWJsZSB0byANCj4gdHJhY2sgZG93
biBpbiBkb2N1bWVudGF0aW9uIG9yIG9uIG1lc3NhZ2UgYm9hcmRzLiBBcyBhbiBhc2lkZSBpbiAN
Cj4gcmVhZG91dCB5b3UnbGwgc2VlIGEgZmV3IHVuZGVyZmxvd3MgYXMgd2VsbCAtIHdoaWxlIEkg
ZGlkIG1vc3Qgb2YgdGhlIA0KPiBwZXJmb3JtYW5jZSB1cGdyYWRlcyAoYXNpZGUgZnJvbSBEUERL
IHdoaWNoIGlzIHN0aWxsIHBlbmRpbmcpLCBJJ20gDQo+IGNhbGxpbmcgc2FtcGxlcyBmcm9tIGZp
bGUgZnJvbSBhbiBvbGRlciBIREQsIEknbSB1cGdyYWRpbmcgb3ZlciB0byBhbiANCj4gU1NEIGlu
IG5leHQgZGF5IG9yIHR3byBzbyBJIGFtIGJhbmtpbmcgb24gdGhhdCBtaXRpZ2F0aW5nIHRoYXQg
aXNzdWUsIA0KPiBoZW5jZSB3aHkgSSdtIGFsc28gbGltaXRlZCB0byBhYm91dCA1MDBtcyBhdCBh
IHRpbWUgdG8gdGVzdA0KPiANCj4gUFMgYW55b25lIGhhdmUgZXhwZXJpZW5jZSB1c2luZyB0aGUg
c2luZ2xlIG1vZGUgZmliZXIgb3B0aWMgY2FibGluZyBhbmQgdHJhbnNjZWl2ZXIgb3ZlciAxMEdi
ZT8gTW9zdCBvZiBFdHR1cyBsaXRlcmF0dXJlIHNheXMgdGhleSd2ZSBvbmx5IHRlc3RlZCBvdmVy
IG11bHRpbW9kZSwgYnV0IHRoZSBsb25nZXIgZGlzdGFuY2VzIGFsbG90dGVkIGJ5IHVzaW5nIHNp
bmdsZSBtb2RlIG1ha2UgaXQgYW4gYXBwZWFsaW5nIG9wdGlvbiBmb3IgbXkgc3lzdGVtLg0KPiAN
Cj4gDQo+ICQgLi90eF9zYW1wbGVzX2Zyb21fZmlsZSAtLWFyZ3MgJ2FkZHI9MTkyLjE2OC40MC4y
JyAtLWZpbGUgDQo+IHVzcnBfc2FtcGxlcy5kYXQgLS1mcmVxPTI0MDAwMDAwMDAgLS1sby1vZmZz
ZXQgMTAwMDAwIC0tZ2FpbiAwIC0tcmF0ZSANCj4gMjAwMDAwMDAwDQo+IA0KPiBDcmVhdGluZyB0
aGUgdXNycCBkZXZpY2Ugd2l0aDogYWRkcj0xOTIuMTY4LjQwLjIuLi4NCj4gW0lORk9dIFtVSERd
IGxpbnV4OyBHTlUgQysrIHZlcnNpb24gOS4zLjA7IEJvb3N0XzEwNzQwMDsgDQo+IFVIRF80LjAu
MC5IRUFELXJlbGVhc2UgW0lORk9dIFtYMzAwXSBYMzAwIGluaXRpYWxpemF0aW9uIHNlcXVlbmNl
Li4uDQo+IFtJTkZPXSBbWDMwMF0gTWF4aW11bSBmcmFtZSBzaXplOiA4MDAwIGJ5dGVzLg0KPiBb
SU5GT10gW1gzMDBdIFJhZGlvIDF4IGNsb2NrOiAyMDAgTUh6DQo+IFVzaW5nIERldmljZTogU2lu
Z2xlIFVTUlA6DQo+ICBEZXZpY2U6IFgtU2VyaWVzIERldmljZQ0KPiAgTWJvYXJkIDA6IFgzMTAN
Cj4gIFJYIENoYW5uZWw6IDANCj4gICAgUlggRFNQOiAwDQo+ICAgIFJYIERib2FyZDogQQ0KPiAg
ICBSWCBTdWJkZXY6IFVCWCBSWA0KPiAgUlggQ2hhbm5lbDogMQ0KPiAgICBSWCBEU1A6IDENCj4g
ICAgUlggRGJvYXJkOiBCDQo+ICAgIFJYIFN1YmRldjogVW5rbm93biAoMHhmZmZmKSAtIDANCj4g
IFRYIENoYW5uZWw6IDANCj4gICAgVFggRFNQOiAwDQo+ICAgIFRYIERib2FyZDogQQ0KPiAgICBU
WCBTdWJkZXY6IFVCWCBUWA0KPiAgVFggQ2hhbm5lbDogMQ0KPiAgICBUWCBEU1A6IDENCj4gICAg
VFggRGJvYXJkOiBCDQo+ICAgIFRYIFN1YmRldjogVW5rbm93biAoMHhmZmZmKSAtIDANCj4gDQo+
IFNldHRpbmcgVFggUmF0ZTogMjAwLjAwMDAwMCBNc3BzLi4uDQo+IEFjdHVhbCBUWCBSYXRlOiAy
MDAuMDAwMDAwIE1zcHMuLi4NCj4gDQo+IFNldHRpbmcgVFggRnJlcTogMjQwMC4wMDAwMDAgTUh6
Li4uDQo+IFNldHRpbmcgVFggTE8gT2Zmc2V0OiAwLjEwMDAwMCBNSHouLi4NCj4gQWN0dWFsIFRY
IEZyZXE6IDI0MDAuMDAwMDAwIE1Iei4uLg0KPiANCj4gU2V0dGluZyBUWCBHYWluOiAwLjAwMDAw
MCBkQi4uLg0KPiBBY3R1YWwgVFggR2FpbjogMC4wMDAwMDAgZEIuLi4NCj4gDQo+IENoZWNraW5n
IFRYOiBUWExPOiBsb2NrZWQgLi4uDQo+IFtXQVJOSU5HXSBbMC9SYWRpbyMwXSBBdHRlbXB0aW5n
IHRvIHNldCB0aWNrIHJhdGUgdG8gMC4gU2tpcHBpbmcuDQo+IFVVDQo+IERvbmUhDQo+IA0KPiBb
V0FSTklOR10gW1JGTk9DOjpHUkFQSDo6REVUQUlMXSBDYW5ub3QgZm9yd2FyZCBhY3Rpb24gdHhf
ZXZlbnQgZnJvbSAwL1JhZGlvIzA6SU5QVVRfRURHRTowLCBubyBuZWlnaGJvdXIgZm91bmQhDQo+
IA0KPiANCj4gDQo+IENhc2V5IFdvbHNpZWZmZXINCj4gUmVzZWFyY2ggRWxlY3RyaWNhbCBFbmdp
bmVlciAtIFNpZ25hdHVyZSBQaHlzaWNzIEJyYW5jaCBDb2xkIFJlZ2lvbnMgDQo+IFJlc2VhcmNo
ICYgRW5naW5lZXJpbmcgTGFib3JhdG9yeQ0KPiA3MiBMeW1lIFJkLCBIYW5vdmVyIE5IIDAzNzU1
DQo+ICg2MDMpIDY0Ni00MjU0IChvZmZpY2UpDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tIFRvIHVuc3Vic2NyaWJlIA0KPiBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
