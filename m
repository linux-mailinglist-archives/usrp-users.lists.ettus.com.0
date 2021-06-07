Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1616739E85A
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jun 2021 22:23:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 99871384AB0
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jun 2021 16:23:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="MR9xJf/X";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=erdc.dren.mil header.i=@erdc.dren.mil header.b="FqHX/k+J";
	dkim-atps=neutral
Received: from mfw.dren.mil (mfw.dren.mil [140.32.61.234])
	by mm2.emwd.com (Postfix) with ESMTPS id B106C3842F5
	for <USRP-users@lists.ettus.com>; Mon,  7 Jun 2021 16:22:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=s1.dkim;
 bh=e/7n8lP2ReLNDRNTj1iv9TjlYzdCNl97OloIOF0Nbdw=;
 b=MR9xJf/XOmvjuxAmme5TuEP2eO4sP5WKshTO1G3CH+1AQRcfipqoA0JDEYHi8Ugsz6xq
 VXx6wtqCpluYbf2zEbJVGoOFxuPqbLIHQvDszuJHGeZ3hVS0/uWIxVRUzjXkKNmVKULh
 KNBoS7gHhsKny9RcDCs4O6k25cotdat9thA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdc.dren.mil; h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=s2.dkim;
 bh=e/7n8lP2ReLNDRNTj1iv9TjlYzdCNl97OloIOF0Nbdw=;
 b=FqHX/k+J02c52n3nXLDBnI9x3B90Q5TXm1oywor03i8n2fpRykjI3QSNml5LYujLMcHJ
 pJbwJt5oYlIf/fMGk781bhtBjgfKi4SA4U8S1s/Cp9vBhtgr5VoN/kGlRhCFeyFx+3uW
 aKYPCFz+YN+CtjD9ddMcqW79vM1GivifgXR53CAanqrFYLxTmYBNN1hDDagxRn22aUsa
 IZP4lRP4xamxQKwWK3Z+4ffiuQSLqRTJHTZfuSVRfx1kJUV2LuLxueYayAdXBxxcrKCN
 Xp+9l/XvWytBjLlCciVMs4o+ZlnfsqNB3aSX9QwiE6ELo4zzDkiyKxCG0LcKJaykDlXt aQ==
Received: from rde-gw2.erdc.dren.mil (rde-gw2.erdc.dren.mil [134.164.23.111])
	by ppaw.dren.mil (8.16.1.2/8.16.1.2) with ESMTPS id 157KMdvK025661
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <USRP-users@lists.ettus.com>; Mon, 7 Jun 2021 20:22:39 GMT
X-IronPort-AV: E=Sophos;i="5.83,255,1616475600";
   d="scan'208";a="60680143"
Received: from unknown (HELO ERDC-EX1.erdc.dren.mil) ([134.164.254.13])
  by rde-gw2.erdc.dren.mil with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Jun 2021 15:22:39 -0500
Received: from ERDC-EX4.erdc.dren.mil (134.164.254.16) by
 ERDC-EX1.erdc.dren.mil (134.164.254.13) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2176.2; Mon, 7 Jun 2021 15:22:39 -0500
Received: from ERDC-EX1.erdc.dren.mil (134.164.254.13) by
 ERDC-EX4.erdc.dren.mil (134.164.254.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2176.2; Mon, 7 Jun 2021 15:22:39 -0500
Received: from ERDC-EX1.erdc.dren.mil ([fe80::ed7c:3b0b:662d:e788]) by
 ERDC-EX1.erdc.dren.mil ([fe80::ed7c:3b0b:662d:e788%6]) with mapi id
 15.01.2176.012; Mon, 7 Jun 2021 15:22:38 -0500
To: Marcus D Leech <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] tx_samples_from_file warnings for ettus x310
Thread-Index: AddbwNgDkyr7SNGQQbKbPf+SaFwn0QAM3c2AAAljfXD//8PoAIAASohA
Date: Mon, 7 Jun 2021 20:22:38 +0000
Message-ID: <6ef28b22c28d468da6c5b74405833854@erdc.dren.mil>
References: <8240441d45754de2afcd994d046b84e8@erdc.dren.mil>
 <7EC7607F-5969-486A-A478-D656CBB270B3@gmail.com>
In-Reply-To: <7EC7607F-5969-486A-A478-D656CBB270B3@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [134.164.254.60]
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Message-ID-Hash: 3EN6PCGL4SAHXJX3B24ABXWGFIADN6VP
X-Message-ID-Hash: 3EN6PCGL4SAHXJX3B24ABXWGFIADN6VP
X-MailFrom: Carl.L.Wolsieffer@erdc.dren.mil
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tx_samples_from_file warnings for ettus x310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3EN6PCGL4SAHXJX3B24ABXWGFIADN6VP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
Content-Transfer-Encoding: base64

T2ssIGlmIHRoZXkgYXJlIHdhcm5pbmdzIHRoYXQgYXJlbid0IGNhdXNlIGZvciBjb25jZXJuIEkg
d29uJ3Qgd29ycnksIGhvd2V2ZXIgZm9yIGFkZGl0aW9uYWwgaW5mbyBJIGp1c3QgdHJpZWQgdGhl
IGZvbGxvd2luZyBlZGl0Og0KDQotLWFyZ3MgYWRkcj0xOTIuMTY4LjQwLjIsc2tpcF9kdWM9MSxz
a2lwX2RyYW09MQ0KDQpBZ2FpbiB1c2luZyAtLXJhdGUgMjAwZTYuIEl0IGRpZCBub3QgcmVtb3Zl
IGVpdGhlciB3YXJuaW5nLiBIb3dldmVyIHRoZSBmaXJzdCBmZXcgbGVhZGluZyB1bmRlciBmbG93
cyBhcmUgZ29uZSB3aGljaCBpcyBzdXJwcmlzaW5nIGFzIEkgdGhvdWdodCB0aGF0IHdhcyBtb3Jl
IGEgcmVmbGVjdGlvbiBvZiBQQydzIHBlcmZvcm1hbmNlIHRoYW4gd2hhdCB0aGUgeDMxMCdzIEZQ
R0Egd2FzIGRvaW5nLg0KDQoNCg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTog
TWFyY3VzIEQgTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPiANClNlbnQ6IE1vbmRheSwg
SnVuZSA3LCAyMDIxIDM6MTkgUE0NClRvOiBXb2xzaWVmZmVyLCBDYXJsIEwuIEVSREMtUkRFLUNS
TC1OSCBDSVYgPENhcmwuTC5Xb2xzaWVmZmVyQGVyZGMuZHJlbi5taWw+DQpDYzogVVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20NClN1YmplY3Q6IFJlOiBbVVNSUC11c2Vyc10gdHhfc2FtcGxlc19m
cm9tX2ZpbGUgd2FybmluZ3MgZm9yIGV0dHVzIHgzMTANCg0KSeKAmW0gbm93IHRoaW5raW5nIHRo
YXQgYXQgMjAwTXNwcyBpdCBkb2VzbuKAmXQgdXNlIHRoZSBEVUMgbW9kdWxlIHdpdGhpbiBSRk5P
YyBzaW5jZSB0aGUgQURDIHJ1bnMgYXQgdGhhdCByYXRlLiBTbyB0aGlzIGlzIHBlcmhhcHMgYW5k
IGVuaWdtYXRpYyB3YXkgb2Ygc2F5aW5nIHRoYXQgaXTigJlzIHNraXBwaW5nIHRoZSBEVUMgbW9k
dWxlPw0KDQoNCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQo+IE9uIEp1biA3LCAyMDIxLCBhdCAy
OjU5IFBNLCBXb2xzaWVmZmVyLCBDYXJsIEwuIEVSREMtUkRFLUNSTC1OSCBDSVYgPENhcmwuTC5X
b2xzaWVmZmVyQGVyZGMuZHJlbi5taWw+IHdyb3RlOg0KPiANCj4g77u/SGkgTWFyY3VzLA0KPiAN
Cj4gWWVzIHRoZSAiPiBbV0FSTklOR10gWzAvUmFkaW8jMF0gQXR0ZW1wdGluZyB0byBzZXQgdGlj
ayByYXRlIHRvIDAuIFNraXBwaW5nLiIgSXMgc3RpbGwgdGhlcmUgd2hlbiBJIGp1c3QgdHJpZWQg
YXQgMk1zcHMsIHRoZSAiW1dBUk5JTkddIFtSRk5PQzo6R1JBUEg6OkRFVEFJTF0iIG1lc3NhZ2Ug
aXMgZ29uZSBob3dldmVyLiBOb3Qgc3VyZSBpZiB0aGF0J3Mgb25lIHRvIGJlIGNvbmNlcm5lZCBh
Ym91dCBvciBub3QuDQo+IA0KPiANCj4gVGhhbmtzIGZvciB5b3VyIHJlc3BvbnNlIQ0KPiBDYXNl
eQ0KPiANCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFyY3VzIEQgTGVl
Y2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPg0KPiBTZW50OiBNb25kYXksIEp1bmUgNywgMjAy
MSAyOjI1IFBNDQo+IFRvOiBXb2xzaWVmZmVyLCBDYXJsIEwuIEVSREMtUkRFLUNSTC1OSCBDSVYg
DQo+IDxDYXJsLkwuV29sc2llZmZlckBlcmRjLmRyZW4ubWlsPg0KPiBDYzogVVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20NCj4gU3ViamVjdDogUmU6IFtVU1JQLXVzZXJzXSB0eF9zYW1wbGVzX2Zy
b21fZmlsZSB3YXJuaW5ncyBmb3IgZXR0dXMgeDMxMA0KPiANCj4gRG9lcyB0aGUgZXJyb3IgaGFw
cGVuIGF0IGxvd2VyIHNhbXBsZQ0KPiBSYXRlcz8gIEnigJltIHRoaW5raW5nIHRoYXQgcGVyaGFw
cyB0aGUgdHhfc2FtcGxlc19mcm9tX2ZpbGUgZXhhbXBsZSBoYXNu4oCZdCBiZWVuIHByb3Blcmx5
IGNvbnZlcnRlZCB0byB0aGUgbmV3ZXIgUkZOT0MgaW5mcmFzdHJ1Y3R1cmUgdGhhdOKAmXMgdW5k
ZXJuZWF0aC4gDQo+IA0KPiBTZW50IGZyb20gbXkgaVBob25lDQo+IA0KPj4gT24gSnVuIDcsIDIw
MjEsIGF0IDE6MzIgUE0sIFdvbHNpZWZmZXIsIENhcmwgTC4gRVJEQy1SREUtQ1JMLU5IIENJViB2
aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOg0KPj4gDQo+
PiDvu79IZWxsbyBhbGwsDQo+PiANCj4+IFdoaWxlIHRyeWluZyB0byBjb25maXJtIGlmIHRoZSB4
MzEwIChVQlgtMTYwKSBjYW4gd29yayB3aXRoIGEgDQo+PiBzaW5nbGVtb2RlIGZpYmVyIG9wdGlj
IDEwR2JlIEkgaGF2ZSBiZWVuIHVzaW5nIHRoZSANCj4+IHR4X3NhbXBsZXNfZnJvbV9maWxlIGFu
ZCByeF9zYW1wbGVzX3RvX2ZpbGUuIFRoZSByeF9zYW1wbGVfZnJvbV9maWxlIA0KPj4gc2VlbXMg
dG8gZ28gb3ZlciBhbHJpZ2h0IHdyaXRpbmcgNTAwbXMgd29ydGggb2YgZGF0YSBkb3duIGF0IDIw
ME1zcHMsIA0KPj4gYnV0IHRoZSBUeCBzaWRlIGdpdmVzIG1lIHR3byB3YXJuaW5ncyB0aGF0IEkg
aGF2ZSBub3QgYmVlbiBhYmxlIHRvIA0KPj4gdHJhY2sgZG93biBpbiBkb2N1bWVudGF0aW9uIG9y
IG9uIG1lc3NhZ2UgYm9hcmRzLiBBcyBhbiBhc2lkZSBpbiANCj4+IHJlYWRvdXQgeW91J2xsIHNl
ZSBhIGZldyB1bmRlcmZsb3dzIGFzIHdlbGwgLSB3aGlsZSBJIGRpZCBtb3N0IG9mIHRoZSANCj4+
IHBlcmZvcm1hbmNlIHVwZ3JhZGVzIChhc2lkZSBmcm9tIERQREsgd2hpY2ggaXMgc3RpbGwgcGVu
ZGluZyksIEknbSANCj4+IGNhbGxpbmcgc2FtcGxlcyBmcm9tIGZpbGUgZnJvbSBhbiBvbGRlciBI
REQsIEknbSB1cGdyYWRpbmcgb3ZlciB0byBhbiANCj4+IFNTRCBpbiBuZXh0IGRheSBvciB0d28g
c28gSSBhbSBiYW5raW5nIG9uIHRoYXQgbWl0aWdhdGluZyB0aGF0IGlzc3VlLCANCj4+IGhlbmNl
IHdoeSBJJ20gYWxzbyBsaW1pdGVkIHRvIGFib3V0IDUwMG1zIGF0IGEgdGltZSB0byB0ZXN0DQo+
PiANCj4+IFBTIGFueW9uZSBoYXZlIGV4cGVyaWVuY2UgdXNpbmcgdGhlIHNpbmdsZSBtb2RlIGZp
YmVyIG9wdGljIGNhYmxpbmcgYW5kIHRyYW5zY2VpdmVyIG92ZXIgMTBHYmU/IE1vc3Qgb2YgRXR0
dXMgbGl0ZXJhdHVyZSBzYXlzIHRoZXkndmUgb25seSB0ZXN0ZWQgb3ZlciBtdWx0aW1vZGUsIGJ1
dCB0aGUgbG9uZ2VyIGRpc3RhbmNlcyBhbGxvdHRlZCBieSB1c2luZyBzaW5nbGUgbW9kZSBtYWtl
IGl0IGFuIGFwcGVhbGluZyBvcHRpb24gZm9yIG15IHN5c3RlbS4NCj4+IA0KPj4gDQo+PiAkIC4v
dHhfc2FtcGxlc19mcm9tX2ZpbGUgLS1hcmdzICdhZGRyPTE5Mi4xNjguNDAuMicgLS1maWxlIA0K
Pj4gdXNycF9zYW1wbGVzLmRhdCAtLWZyZXE9MjQwMDAwMDAwMCAtLWxvLW9mZnNldCAxMDAwMDAg
LS1nYWluIDAgLS1yYXRlDQo+PiAyMDAwMDAwMDANCj4+IA0KPj4gQ3JlYXRpbmcgdGhlIHVzcnAg
ZGV2aWNlIHdpdGg6IGFkZHI9MTkyLjE2OC40MC4yLi4uDQo+PiBbSU5GT10gW1VIRF0gbGludXg7
IEdOVSBDKysgdmVyc2lvbiA5LjMuMDsgQm9vc3RfMTA3NDAwOyANCj4+IFVIRF80LjAuMC5IRUFE
LXJlbGVhc2UgW0lORk9dIFtYMzAwXSBYMzAwIGluaXRpYWxpemF0aW9uIHNlcXVlbmNlLi4uDQo+
PiBbSU5GT10gW1gzMDBdIE1heGltdW0gZnJhbWUgc2l6ZTogODAwMCBieXRlcy4NCj4+IFtJTkZP
XSBbWDMwMF0gUmFkaW8gMXggY2xvY2s6IDIwMCBNSHogVXNpbmcgRGV2aWNlOiBTaW5nbGUgVVNS
UDoNCj4+IERldmljZTogWC1TZXJpZXMgRGV2aWNlDQo+PiBNYm9hcmQgMDogWDMxMA0KPj4gUlgg
Q2hhbm5lbDogMA0KPj4gICBSWCBEU1A6IDANCj4+ICAgUlggRGJvYXJkOiBBDQo+PiAgIFJYIFN1
YmRldjogVUJYIFJYDQo+PiBSWCBDaGFubmVsOiAxDQo+PiAgIFJYIERTUDogMQ0KPj4gICBSWCBE
Ym9hcmQ6IEINCj4+ICAgUlggU3ViZGV2OiBVbmtub3duICgweGZmZmYpIC0gMA0KPj4gVFggQ2hh
bm5lbDogMA0KPj4gICBUWCBEU1A6IDANCj4+ICAgVFggRGJvYXJkOiBBDQo+PiAgIFRYIFN1YmRl
djogVUJYIFRYDQo+PiBUWCBDaGFubmVsOiAxDQo+PiAgIFRYIERTUDogMQ0KPj4gICBUWCBEYm9h
cmQ6IEINCj4+ICAgVFggU3ViZGV2OiBVbmtub3duICgweGZmZmYpIC0gMA0KPj4gDQo+PiBTZXR0
aW5nIFRYIFJhdGU6IDIwMC4wMDAwMDAgTXNwcy4uLg0KPj4gQWN0dWFsIFRYIFJhdGU6IDIwMC4w
MDAwMDAgTXNwcy4uLg0KPj4gDQo+PiBTZXR0aW5nIFRYIEZyZXE6IDI0MDAuMDAwMDAwIE1Iei4u
Lg0KPj4gU2V0dGluZyBUWCBMTyBPZmZzZXQ6IDAuMTAwMDAwIE1Iei4uLg0KPj4gQWN0dWFsIFRY
IEZyZXE6IDI0MDAuMDAwMDAwIE1Iei4uLg0KPj4gDQo+PiBTZXR0aW5nIFRYIEdhaW46IDAuMDAw
MDAwIGRCLi4uDQo+PiBBY3R1YWwgVFggR2FpbjogMC4wMDAwMDAgZEIuLi4NCj4+IA0KPj4gQ2hl
Y2tpbmcgVFg6IFRYTE86IGxvY2tlZCAuLi4NCj4+IFtXQVJOSU5HXSBbMC9SYWRpbyMwXSBBdHRl
bXB0aW5nIHRvIHNldCB0aWNrIHJhdGUgdG8gMC4gU2tpcHBpbmcuDQo+PiBVVQ0KPj4gRG9uZSEN
Cj4+IA0KPj4gW1dBUk5JTkddIFtSRk5PQzo6R1JBUEg6OkRFVEFJTF0gQ2Fubm90IGZvcndhcmQg
YWN0aW9uIHR4X2V2ZW50IGZyb20gMC9SYWRpbyMwOklOUFVUX0VER0U6MCwgbm8gbmVpZ2hib3Vy
IGZvdW5kIQ0KPj4gDQo+PiANCj4+IA0KPj4gQ2FzZXkgV29sc2llZmZlcg0KPj4gUmVzZWFyY2gg
RWxlY3RyaWNhbCBFbmdpbmVlciAtIFNpZ25hdHVyZSBQaHlzaWNzIEJyYW5jaCBDb2xkIFJlZ2lv
bnMgDQo+PiBSZXNlYXJjaCAmIEVuZ2luZWVyaW5nIExhYm9yYXRvcnkNCj4+IDcyIEx5bWUgUmQs
IEhhbm92ZXIgTkggMDM3NTUNCj4+ICg2MDMpIDY0Ni00MjU0IChvZmZpY2UpDQo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4gVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gVG8gdW5zdWJzY3JpYmUg
DQo+PiBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
