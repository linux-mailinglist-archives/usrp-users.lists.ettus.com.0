Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EABC911499
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2019 09:55:57 +0200 (CEST)
Received: from [::1] (port=39566 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hM6ZL-0004a4-Ff; Thu, 02 May 2019 03:55:51 -0400
Received: from mail-eopbgr00104.outbound.protection.outlook.com
 ([40.107.0.104]:15854 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.91) (envelope-from <demel@ant.uni-bremen.de>)
 id 1hM6Yn-0004UY-K6
 for usrp-users@lists.ettus.com; Thu, 02 May 2019 03:55:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector1-ant-unibremen-de01i;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ujS8vT9Io37HhEpBNncTaXLLR479HsijulCaDCHcQuM=;
 b=VmSx/6dOIfOhO/y/ymK57jNHuaTVw09Uy6Uas71sZjXsX4jdoupbH1jK44xwUFozp7LB31Gbg4VY+MuQxMNRRqmmUw7nYhG94R/UasxSaYP/gLfrTQoQH/cq0clHmRb/O4XnyqxcWhPITMTxAb0Qb6EQDpGQUgypOCOdC6RKX9A=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3461.eurprd04.prod.outlook.com (52.133.17.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Thu, 2 May 2019 07:54:35 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::55cc:4406:327:9259]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::55cc:4406:327:9259%3]) with mapi id 15.20.1835.018; Thu, 2 May 2019
 07:54:34 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Introducing Theseus Cores: Open source FPGA cores
 for DSP and SDR
Thread-Index: AQHU/h6z4YxwIMJifkKBRJISU99Fk6ZXfE+A
Date: Thu, 2 May 2019 07:54:34 +0000
Message-ID: <ef9bff18-8c8c-5a74-398d-9b50d0bfea9d@ant.uni-bremen.de>
References: <CADRnH23yQxEPTYysMECCwvgYvN7RZucmDH+x4QLPDJZcJUR4og@mail.gmail.com>
In-Reply-To: <CADRnH23yQxEPTYysMECCwvgYvN7RZucmDH+x4QLPDJZcJUR4og@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR0502CA0048.eurprd05.prod.outlook.com
 (2603:10a6:20b:56::25) To AM6PR0402MB3911.eurprd04.prod.outlook.com
 (2603:10a6:209:1c::10)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=demel@ant.uni-bremen.de; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [134.102.176.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f3d3538-35eb-42df-3159-08d6ced36adc
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7025125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:AM6PR0402MB3461; 
x-ms-traffictypediagnostic: AM6PR0402MB3461:
x-ms-exchange-purlcount: 5
x-microsoft-antispam-prvs: <AM6PR0402MB34615299E17E293AF8EE2ED9A9340@AM6PR0402MB3461.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(39830400003)(396003)(376002)(136003)(53754006)(199004)(189003)(2351001)(786003)(75402003)(508600001)(8676002)(316002)(31686004)(74826001)(81156014)(5660300002)(81166006)(305945005)(966005)(53936002)(99286004)(74482002)(7736002)(66446008)(86362001)(2906002)(31696002)(66476007)(64756008)(73956011)(66556008)(66946007)(5024004)(76176011)(229853002)(68736007)(186003)(6916009)(256004)(6486002)(11346002)(71190400001)(71200400001)(2501003)(66066001)(446003)(6246003)(6306002)(6512007)(14454004)(102836004)(8936002)(26005)(476003)(3846002)(6116002)(5640700003)(2616005)(6506007)(486006)(6436002)(25786009)(386003)(52116002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR0402MB3461;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: ant.uni-bremen.de does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2C/dMDsfadVlL/1ZcJSp1VMX+yMNe0P3won3KX63pWf+roH+YRQqYPhAgSjuRzt38Qjtk7cA0TZRTYkY1F3kogje1njGUQyo5qZYpbvSU9dj5kgq8kafZqRT98Fo9df7OpEO2P9D1kUO6TrUNx+BrBGB3fpQpAE/6zXgewrx2CVCshDkUO/5pi/RRT8GBpgqoU7oMBq3hv9Apm3HFEGdUDdaB5+x+WTfZvmx1+skwLEJLg9WjKrI4bQp9QDazLFZT+79MIR/nTiXCXSFZCTr/eNgMKkXHK25f9SEtGt8+UTzP+RJtRtY2OT+aycEmtj23r2XXWN6VXwljqBt1EJkErI+CuBXTwUxH3vyDdDe4dVQRSDyTID72nwHzvhLt7npHwGnNFpsd/x3haXtSTVa0VnX4c3YhBnS2VtXqk0wmLE=
Content-ID: <723FE6C95DAAC54C8B12C56DE2274C55@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f3d3538-35eb-42df-3159-08d6ced36adc
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 07:54:34.7892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3461
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Introducing Theseus Cores: Open source FPGA cores
 for DSP and SDR
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
From: Johannes Demel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Johannes Demel <demel@ant.uni-bremen.de>
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

SGkgRUosDQoNCnRoaXMgc291bmRzIGxpa2UgYSB2ZXJ5IGludGVyZXN0aW5nIHByb2plY3QuIFNp
bmNlIHlvdSBhc2tlZCBmb3IgaWRlYXMsIA0KSSBndWVzcyBpdCB3b3VsZCBiZSBuaWNlIHRvIGhh
dmUgYSBTY2htaWRsJkNveCBzdHlsZSBPRkRNIA0Kc3luY2hyb25pemF0aW9uIGJsb2NrLg0KDQpD
aGVlcnMNCkpvaGFubmVzDQoNCkFtIDI5LjA0LjE5IHVtIDAyOjAwIHNjaHJpZWIgRUogS3JlaW5h
ciB2aWEgVVNSUC11c2VyczoNCj4gSGkgYWxsLA0KPiANCj4gSSdtIHZlcnkgaGFwcHkgdG8gYW5u
b3VuY2UgdGhlICh2ZXJ5IG1vZGVzdCkgcmVsZWFzZSBvZiB0aGUgVGhlc2V1cyANCj4gQ29yZXMg
cHJvamVjdDogaHR0cHM6Ly9naXRsYWIuY29tL3RoZXNldXMtY29yZXMvdGhlc2V1cy1jb3Jlcw0K
PiANCj4gVGhlc2V1cyBDb3JlcyBpcyBkZXNpZ25lZCB0byBwcm92aWRlIG9wZW4gc291cmNlIEZQ
R0EgY29yZXMgZm9yIGRpZ2l0YWwgDQo+IHNpZ25hbCBwcm9jZXNzaW5nIGFuZCBzb2Z0d2FyZSBk
ZWZpbmVkIHJhZGlvLCBwbHVzIHRoZSBtZWFucyB0byAqdXNlKiANCj4gdGhlIEZQR0EgY29yZXMg
aW4gcmVhbCBsaWZlLi4uLiBJbiBwcmFjdGljZSwgdGhhdCBtb3N0bHkgbWVhbnMgRlBHQSBjb2Rl
IA0KPiBwcm9wYWdhdGVzIHVwIHRocm91Z2ggUkZOb0MgYmxvY2tzIHdoaWNoIGhhdmUgYm90aCBV
SEQgYW5kIEdudXJhZGlvIA0KPiBzb2Z0d2FyZSBob29rcyBmb3IgdXNlcnMgdG8gYXR0YWNoIHRv
LiBJbiB0aGUgZnV0dXJlIGl0IHdvdWxkIGJlIGdyZWF0IA0KPiB0byBzdXBwb3J0IG90aGVyIEZQ
R0EgcGxhdGZvcm1zIGlmIHRoZXJlJ3MgaW50ZXJlc3QgdG9vLg0KPiANCj4gU28gZmFyLCBUaGVz
ZXVzIENvcmVzIHByb3ZpZGVzIHRoZSBmb2xsb3dpbmcgUkZOb0MgRlBHQSBibG9ja3MgYW5kIA0K
PiBjb3JyZXNwb25kaW5nIHNvZnR3YXJlOg0KPiAtICpQb2x5cGhhc2XCoE0vMiBDaGFubmVsaXpl
cio6IEEgcG9seXBoYXNlIGNoYW5uZWxpemVyIHdoZXJlIGVhY2ggDQo+IGNoYW5uZWwgb3V0cHV0
cyAyeCBzYW1wbGUgcmF0ZSBhbmQgaXMgY29tcGF0aWJsZSB3aXRoIA0KPiBwZXJmZWN0LXJlY29u
c3RydWN0aW9uLiBUaGFua3MgdG8gUGhpbCBWYWxsYW5jZSBmb3IgcmUtaW1wbGVtZW50aW5nIHRo
ZSANCj4gY2hhbm5lbGl6ZXIgZGVzY3JpYmVkIGluIGhpcyBHUkNvbiAyMDE3IHByZXNlbnRhdGlv
bi0tIGl0IHdvcmtzIQ0KPiAtICoiMS10by1OIiBEREMgQ2hhaW4qOiBQYXJhbWV0ZXJpemVkIGlu
c3RhbnRpYXRpb25zIG9mICJOIiBpbmRlcGVuZGVudCANCj4gRERDcywgd2hlcmUgZWFjaCBEREMg
aXMgY29ubmVjdGVkIHRvIHRoZSAqZmlyc3QqIGlucHV0IChhIHZlcnkgYmFzaWMsIA0KPiBicnV0
ZSBmb3JjZSBjaGFubmVsaXplcikuIE5vdGUgSSd2ZSBzZWVuIHNldmVyYWwgbWFpbGluZyBsaXN0
IA0KPiBkaXNjdXNzaW9ucyBpbiB0aGUgcGFzdCB5ZWFyIGFib3V0IDEtdG8tNCBvciAxLXRvLTgg
RERDIGNoYW5uZWxpemVycyAtLSANCj4gdGhpcyBibG9jayBwcm92aWRlcyB0aGUgZ2VuZXJhbGl6
ZWQgdmVyc2lvbiBvZiB0aGF0IHNjZW5hcmlvLg0KPiAtICpEVUMgKyBEREMgUmF0aW9uYWwgUmVz
YW1wbGVyKjogQSAiaGFja2VkIiByYXRpb25hbCByZXNhbXBsZXIsIA0KPiBjb25zaXN0aW5nIG9m
IGEgRFVDIGFuZCBhIEREQyBiYWNrLXRvLWJhY2suIEl0J3Mgbm90IHByZXR0eSwgYnV0IGl0IGNh
biANCj4gb2NjYXNpb25hbGx5IGJlIGhlbHBmdWwuDQo+IA0KPiBGdXJ0aGVybW9yZSwgaW4gYW4g
ZWZmb3J0IHRvIFRSWSB0byBjcmVhdGUgYW4gb3BlbiBzb3VyY2UgRlBHQSBwcm9qZWN0IA0KPiB0
aGF0IGRvZXNudCBjYXRhc3Ryb3BoaWNhbGx5IGJyZWFrIG9uIGEgcmVndWxhciBiYXNpcywgd2Un
dmUgc2V0IHVwIA0KPiBjb250aW51b3VzIGludGVncmF0aW9uIHRlc3RzIGZvciBib3RoIHNvZnR3
YXJlIGFuZCBGUEdBLiBEb2NrZXJmaWxlcyBhcmUgDQo+IHByb3ZpZGVkIGhlcmUgKGh0dHBzOi8v
Z2l0bGFiLmNvbS90aGVzZXVzLWNvcmVzL3RoZXNldXMtZG9ja2VyKS7CoFRoZXNldXMgDQo+IENv
cmVzIGFsc28gcHVzaGVzIHRhZ2dlZCBkb2NrZXIgaW1hZ2VzIGZvciB2YXJpb3VzIHZlcnNpb25z
IG9mIFVIRCBhbmQgDQo+IEdudXJhZGlvLCB3aGVyZSB0aGUgYnJhbmNoZXMgZm9yIFVIRC0zLjEz
LCBVSEQtMy4xNCwgVUhEJ3MgbWFzdGVyLCBhbmQgDQo+IGdudXJhZGlvJ3MgbWFpbnQtMy43IGFy
ZSByZWJ1aWx0IHdlZWtseS4gVGhpcyBtYXkgYmUgb2YgYXV4aWxpYXJ5IHVzZSB0byANCj4gcGVv
cGxlIGJ1aWxkaW5nIFVIRCBhbmQgZ251cmFkaW8gaW4gYSBDSSBzY2VuYXJpbzogDQo+IGh0dHBz
Oi8vaHViLmRvY2tlci5jb20vdS90aGVzZXVzY29yZXMNCj4gPGh0dHBzOi8vZ2l0aHViLmNvbS90
aGVzZXVzLWNvcmVzL3RoZXNldXMtY29yZXM+DQo+ICpXaGF0J3MgbmV4dD8/KsKgSXQncyBhIG1v
ZGVzdCBsaXN0IG9mIGZlYXR1cmVzIHNvIGZhciwgYnV0IEknbSBzdXJlIHdlIA0KPiBjYW4gYWxs
IHN5bXBhdGhpemUgdGhhdCB0aGluZ3MgbW92ZSBzbG93bHkgd2hlbiBkZXZlbG9waW5nIEZQR0Eg
Y29kZS4gDQo+IEhlcmUncyBhIHF1aWNrIHJ1bmRvd24gb2YgYSBmZXcgaWRlYXMgb24gdGhlIGhv
cml6b246DQo+IC0gQXJiaXRyYXJ5IHJlc2FtcGxpbmcNCj4gLSBDaGFubmVsIGRvd25zZWxlY3Rp
b24gZm9yIHRoZSBNLzIgY2hhbm5lbGl6ZXIgKGN1cnJlbnRseSBhbGwgY2hhbm5lbHMgDQo+IG11
c3QgYmUgb3V0cHV0Li4uIGl0J3MgZmFyIG1vcmUgdXNlZnVsIHRvIHNlbGVjdCBhIHN1YnNldCBv
ZiBjaGFubmVscyB0byANCj4gcmV0dXJuIGFuZCBqdXN0IGdyYWIgdGhvc2UpDQo+IC0gQ2hhbm5l
bCByZWNvbnNvbnN0cnVjdGlvbiAqYWZ0ZXIqIHRoZSBNLzIgY2hhbm5lbGl6ZXIgKG1heWJlKQ0K
PiAtIE9GRE0gcmVjZWl2ZXIgKG1heWJlKQ0KPiANCj4gV2UgbmVlZCBtb3JlIGlkZWFzIGFuZCBj
b250cmlidXRvcnMhIE5vdyB0aGF0IHRoaXMgdGhpbmcgZXhpc3RzLCBJIHdvdWxkIA0KPiBMT1ZF
IHRvIHNlZSBUaGVzZXVzIENvcmVzIGZpbGwgaXRzZWxmIG91dCB3aXRoIHNvbWUgb2YgdGhlIG1v
cmUgY29tbW9uIA0KPiBEU1AgdXRpbGl0aWVzIHRoYXQgcmVhbGx5IHNob3VsZCBiZSBhdmFpbGFi
bGUgYXMgb3Blbi1zb3VyY2UuLi4gaXQgd291bGQgDQo+IGJlIGFic29sdXRlbHkgYW1hemluZyB0
byBwcm92aWRlIGEgbGlicmFyeSBvZiBjb21wb25lbnRzIGFuZCANCj4gYXBwbGljYXRpb25zIGZv
ciBGUEdBIGRldmVsb3BlcnMgaW4gYSBzaW1pbGFyIHdheSB0aGF0IGdudXJhZGlvIHByb3ZpZGVz
IA0KPiBmb3IgdGhlIHNvZnR3YXJlIGNvbW11bml0eS4gUGxlYXNlIHJlYWNoIG91dCB3aXRowqBz
dWdnZXN0aW9ucyBmb3IgDQo+IHJlbGV2YW50IEZQR0EgdXRpbGl0aWVzIG9yIGFwcGxpY2F0aW9u
cyB5b3UnZCBsaWtlIHRvIHNlZSAtLSBvciBldmVuIA0KPiBiZXR0ZXIsIGlmIHlvdSBoYXZlIGlk
ZWFzIG9yIGNvZGUgeW91J3JlIHdpbGxpbmcgdG8gc2hhcmUgd2l0aCB0aGUgDQo+IHByb2plY3Qh
IElmIHlvdSBhcmUgaW50ZXJlc3RlZCBpbiBnZXR0aW5nIGludm9sdmVkIGluIGFueSB3YXksIEkg
d291bGQgDQo+IGJlIGhhcHB5IHRvIGhlYXIgZnJvbSB5b3UuDQo+IA0KPiBDaGVlcnMsDQo+IEVK
DQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdA0KPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0K
PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0
cy5ldHR1cy5jb20NCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0
cy5ldHR1cy5jb20K
