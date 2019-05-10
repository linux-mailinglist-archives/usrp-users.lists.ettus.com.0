Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 654F919AD9
	for <lists+usrp-users@lfdr.de>; Fri, 10 May 2019 11:40:53 +0200 (CEST)
Received: from [::1] (port=37746 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hP21C-0004KU-Kf; Fri, 10 May 2019 05:40:42 -0400
Received: from mail-eopbgr80112.outbound.protection.outlook.com
 ([40.107.8.112]:9198 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.91) (envelope-from <demel@ant.uni-bremen.de>)
 id 1hP20e-0004F6-FX
 for usrp-users@lists.ettus.com; Fri, 10 May 2019 05:40:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector1-ant-unibremen-de01i;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ecw2lcPaz14nJcun/wwbK4rRspvZ9tI7EHDSJyIU4pc=;
 b=j9lSxqiEAIYfznLyDx7zew+L99aHKNt915CK25d7/LSF70iEfcUcgi4jksiE1aa09zwZ/eEF5uL017HA71wIPdn8SX2p+spa3OcZiwzHE5pqNmLH9XdFaeyerOL6Cf9+A8aYBR1u85bcvOBaVBmksW7ldtiUuWyA5ReeBBBYmxc=
Received: from HE1PR04MB3082.eurprd04.prod.outlook.com (10.171.196.24) by
 HE1PR04MB3290.eurprd04.prod.outlook.com (10.170.255.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Fri, 10 May 2019 09:39:23 +0000
Received: from HE1PR04MB3082.eurprd04.prod.outlook.com
 ([fe80::949c:e8e0:811c:55ec]) by HE1PR04MB3082.eurprd04.prod.outlook.com
 ([fe80::949c:e8e0:811c:55ec%3]) with mapi id 15.20.1856.012; Fri, 10 May 2019
 09:39:23 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] [EXT] Re: Configuration in sysctl.conf
Thread-Index: AQHVBxQ/sKltVaQHV0WNog2tL7GNqQ==
Date: Fri, 10 May 2019 09:39:22 +0000
Message-ID: <63758a2b-3922-2239-abd2-8e11929e4563@ant.uni-bremen.de>
References: <467ab47ac30943458c17957c0f605687@TELMBXC13BA020.telecomitalia.local>
 <5CD4326A.1050705@gmail.com>
 <CAB__hTQAH2mNnE=ZR4RtGOZGbOyEg9HJJYjsXyPhnZypQyYXyQ@mail.gmail.com>
 <5796d50f6c794ea4a20c858044b6082d@TELMBXC13BA020.telecomitalia.local>
In-Reply-To: <5796d50f6c794ea4a20c858044b6082d@TELMBXC13BA020.telecomitalia.local>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR06CA0016.eurprd06.prod.outlook.com
 (2603:10a6:20b:14::29) To HE1PR04MB3082.eurprd04.prod.outlook.com
 (2603:10a6:7:20::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=demel@ant.uni-bremen.de; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [134.102.176.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5fa29585-a0e9-4633-ced0-08d6d52b6229
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7025125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:HE1PR04MB3290; 
x-ms-traffictypediagnostic: HE1PR04MB3290:
x-ms-exchange-purlcount: 5
x-microsoft-antispam-prvs: <HE1PR04MB3290BBB0E40B6905DF626F3BA90C0@HE1PR04MB3290.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(39830400003)(366004)(396003)(136003)(189003)(199004)(446003)(2616005)(2351001)(81166006)(11346002)(6436002)(99286004)(966005)(229853002)(14454004)(25786009)(7736002)(6306002)(305945005)(2501003)(6512007)(81156014)(6486002)(486006)(26005)(8676002)(786003)(316002)(476003)(68736007)(5660300002)(386003)(3846002)(6116002)(508600001)(5640700003)(102836004)(8936002)(186003)(6506007)(74826001)(53546011)(52116002)(71190400001)(6246003)(76176011)(5024004)(71200400001)(66556008)(64756008)(66446008)(73956011)(66946007)(66476007)(31696002)(6916009)(53936002)(66066001)(31686004)(75402003)(2906002)(74482002)(86362001)(256004)(14444005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR04MB3290;
 H:HE1PR04MB3082.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: ant.uni-bremen.de does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: m5fVBAt0+KAxlKQMG/lvaKp0yydZT4FvwuLobToMCEbsMAPkjSjAyKUrrsRn2ZOWHRg5bjFX/ApTbhRaa8Bct01uYxKqBxYH2wH7KBfj1h4f9dluF4gcHU0rlax5x1rfX10yXOUaS4bmZ401sAyiT1fUrPNNnajR2X+lpi1RAMTkM91k+gDcuO+7yhbgZ/PmDKY4jVVY2JJTKyZ1KWk0zu9IWDPjqLtqk17R7jdfUW5lCS+K043HRPZrVFMDUGieEuIKbTkI0vMGynNidahxZJk8nDOJaJFrOCVPSlXmJH9ayFLgnvGq6X6trbG/Mrjws/LO71QGvLm5la9VirXJu0PLzAtogeED2sSQP7WF2Wq5xldnnqnpNKZFBa3f1tdKV7Y6U4fB3Enwt2pKoshu4xiBlFdn4OCqmXTiYH2Z+ds=
Content-ID: <FFC1F149FC180A458E5B2A0ED0251277@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fa29585-a0e9-4633-ced0-08d6d52b6229
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 09:39:22.9512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR04MB3290
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] [EXT] Re: Configuration in sysctl.conf
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

SGkgRGFuaWVsZSwNCg0KYWxsIG9mIHdoYXQgeW91IGRlc2NyaWJlIGlzIGludGVuZGVkIGJlaGF2
aW9yLg0KDQpGaXJzdCBvZmYsIFVIRCB0ZWxscyB5b3UgKmV4YWN0bHkqIHdoYXQgdG8gZG8uIFJ1
bjoNCmBzdWRvIHN5c2N0bCAtdyBuZXQuY29yZS53bWVtX21heD0yNDg2Mjk3OWANCk5vdGhpbmcg
ZWxzZS4gSnVzdCBjb3B5IHRoZSBwcmV2aW91cyBsaW5lIHdpdGhvdXQgdGhlIGBgLg0KVGhlIHNh
bWUgZ29lcyBmb3IgdGhlIHJtZW0gcGFydC4NClRoZXNlIGNoYW5nZXMgYXJlIHZhbGlkIGFzIGxv
bmcgYXMgeW91ciBtYWNoaW5lIHJ1bnMuIEl0IGlzIG5vdCBhIA0KcGVybWFuZW50IGNoYW5nZS4g
VGh1cywgeW91IG5lZWQgdG8gcmVydW4gdGhpcyBjb21tYW5kIGFmdGVyIGV2ZXJ5IA0KcmVib290
LiBUaGlzIGlzIGFsc28gaW50ZW5kZWQuIFJlYXNvbmFibGUgZGVmYXVsdHMgYXJlIHNldCBmb3Ig
eW91ciANCmV2ZXJ5ZGF5IHVzZS4gVUhEIGRvZXMgc3RyZXNzIHRoZSBuZXR3b3JrIHF1aXRlIGEg
bG90IHdpdGggYSBsb3Qgb2YgSVEgDQpzYW1wbGVzLCB0aHVzLCB5b3Ugc2VlIGEgd2FybmluZyB0
aGF0IHRlbGxzIHlvdSB3aGF0IHRvIGRvIHRvIGltcHJvdmUgDQpwZXJmb3JtYW5jZS4gT3RoZXIg
YXBwbGljYXRpb25zIG1pZ2h0IHdvcmsgd29yc2UgdGhlbi4gQnV0IGFzIGxvbmcgYXMgDQp5b3Ug
d2FudCB0byB1c2UgYSBVU1JQIGFuZCBVSEQsIHRoaXMgaXMgZmluZS4NCg0KVGhlIHdob2xlIGAv
cHJvY2AgZm9sZGVyIHN0cnVjdHVyZSBleGlzdHMgZm9yIHRoZSBwdXJwb3NlIHRoYXQgeW91ciAN
CkxpbnV4IGtlcm5lbCBjb21tdW5pY2F0ZXMgaW5mb3JtYXRpb24gdG8geW91LiBMb3RzIG9mIHRv
b2xzIG1ha2UgdXNlIG9mIA0KdGhhdCBbMF0uIFRoaXMgaXMgbm90aGluZyBVSEQgcmVsYXRlZCBi
dXQgTGludXggaW4gZ2VuZXJhbC4gQ2VydGFpbmx5IA0Kd29ydGh3aGlsZSB0byBsZWFybiBhYm91
dCBpdC4NClN0YXJ0aW5nIGZyb20gdGhlcmUsIHlvdSBjYW4gZmlndXJlIG91dCB3aGF0IHRoZSBh
Y3R1YWwgY29tbWFuZCBkb2VzIGFuZCANCmhvdyB5b3Ugd291bGQgcHJvY2VlZCBpZiB5b3Ugd291
bGQgd2FudCB0byBtYWtlIHRoaXMgY2hhbmdlIHBlcm1hbmVudC4NCg0KQ2hlZXJzDQpKb2hhbm5l
cw0KDQpbMF0gaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvUHJvY2ZzDQoNCkFtIDA5LjA1
LjE5IHVtIDE2OjQwIHNjaHJpZWIgRGlzY28gRGFuaWVsZSB2aWEgVVNSUC11c2VyczoNCj4gVGhl
IG51bWJlciB0aGF0IHNlZW1zIGNvbmZpZ3VyZWQgZXZlcnkgdGltZSBJIHJ1biB1aGRfdXNycF9w
cm9iZSBpcw0KPiANCj4gMTA0ODU3NiB0aGF0IGlzIHRoZSB2YWx1ZSBwcmVzZW50IGluIHRoZSBm
aWxlIHdtZW1fbWF4IGluIHRoZSBkaXJlY3RvcnkNCj4gDQo+IC9wcm9jL3N5cy9uZXQvY29yZS8N
Cj4gDQo+IEkgc2VhcmNoZWQgYWxzbyB0aGUgd2F5IHRvIG1vZGlmeSB0aGlzIHZhbHVlIGFuZCBJ
IGZvdW5kOg0KPiANCj4gc3VkbyAtcyAtSA0KPiANCj4gZWNobyAyNDg2Mjk3OSA+IC9wcm9jL3N5
cy9uZXQvY29yZS93bWVtX21heA0KPiANCj4gSWYgbm93IEkgdGVzdCB0aGUgbnVtYmVyIHByZXNl
bnQgaW4gdGhlIGZpbGU6DQo+IA0KPiBjYXQgwqDCoC9wcm9jL3N5cy9uZXQvY29yZS93bWVtX21h
eA0KPiANCj4gdGhlIHJlc3VsdCBpcyAyNDg2Mjk3OQ0KPiANCj4gYW5kIHRoZSBjb21tYW5kIHVo
ZF91c3JwX3Byb2JlIGRvZXMgbm90IHJlcG9ydCB3YXJuaW5nLg0KPiANCj4gQnV0IGlmIEkgcmVz
dGFydCB0aGUgbGludXggYm94LA0KPiANCj4gY2F0IMKgwqAvcHJvYy9zeXMvbmV0L2NvcmUvd21l
bV9tYXgNCj4gDQo+IHByb2R1Y2UgMTA0ODU3NiBhZ2Fpbg0KPiANCj4gKkZyb206KlVTUlAtdXNl
cnMgW21haWx0bzp1c3JwLXVzZXJzLWJvdW5jZXNAbGlzdHMuZXR0dXMuY29tXSAqT24gQmVoYWxm
IA0KPiBPZiAqUm9iIEtvc3NsZXIgdmlhIFVTUlAtdXNlcnMNCj4gKlNlbnQ6KiBnaW92ZWTDrCA5
IG1hZ2dpbyAyMDE5IDE2OjI4DQo+ICpUbzoqIE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2b25icmF1
bkBnbWFpbC5jb20+DQo+ICpDYzoqIHVzcnAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tPg0KPiAqU3ViamVjdDoqIFtFWFRdIFJlOiBbVVNSUC11c2Vyc10gQ29uZmlndXJhdGlvbiBp
biBzeXNjdGwuY29uZg0KPiANCj4gSGF2ZSB5b3UgZG9uZSB0aGUgc2FtZSBmb3IgInJtZW1fbWF4
Ij/CoCDCoFBlcmhhcHMgdGhlIGNvbnRpbnVlZCB3YXJuaW5nIA0KPiBtZXNzYWdlcyBhcmUgcmVs
YXRlZCB0byB0aGlzIHJhdGhlciB0aGFuIHdtZW1fbWF4Pw0KPiANCj4gUm9iDQo+IA0KPiBPbiBU
aHUsIE1heSA5LCAyMDE5IGF0IDEwOjAxIEFNIE1hcmN1cyBELiBMZWVjaCB2aWEgVVNSUC11c2Vy
cyANCj4gPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIDxtYWlsdG86dXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20+PiB3cm90ZToNCj4gDQo+ICAgICBPbiAwNS8wOS8yMDE5IDA4OjI1IEFNLCBE
aXNjbyBEYW5pZWxlIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPiANCj4gICAgICAgICBIaSENCj4g
DQo+ICAgICAgICAgSeKAmW0gdXNpbmcgYSBYMzEwIG9uIGEgbGludXggYm94IFVCVU5UVSAxOC4w
NA0KPiANCj4gICAgICAgICBFeGVjdXRpbmcgdGhlIGNvbW1hbmQg4oCcdWhkX3VzcnBfcHJvYmXi
gJ0NCj4gDQo+ICAgICAgICAgSSBvYnRhaW4gYSBsb3Qgb2YgW1dBUk5JTkddW1VEUF0gcmVsYXRl
ZCB0byB0aGUgZGltZW5zaW9uIG9mIHRoZQ0KPiAgICAgICAgIHNlbmQgYnVmZmVyDQo+IA0KPiAg
ICAgICAgIFRoZW4gdGhlcmUgaXMgdGhlIHNlbnRlbmNlOg0KPiANCj4gICAgICAgICBQbGVhc2Ug
cnVuOiBzdWRvIHN5c2N0bCAtdyBuZXQuY29yZS53bWVtX21heD0yNDg2Mjk3OQ0KPiANCj4gICAg
ICAgICBTbyBJ4oCZdmUgd3JpdHRlbiBpbiB0aGUgZmlsZSAvZXRjL3N5c2N0bC5jb25mLCBhdCB0
aGUgZW5kDQo+IA0KPiAgICAgICAgIG5ldC5jb3JlLndtZW1fbWF4PTI0ODYyOTc5DQo+IA0KPiAg
ICAgICAgIEkgcmVzdGFydGVkIHRoZSBob3N0IGJ1dCByZXJ1bm5pbmcgdWhkX3VzcnBfcHJvYmUg
SSByZW9idGFpbiB0aGUNCj4gICAgICAgICBzYW1lIHdhcm5pbmcuDQo+IA0KPiAgICAgICAgIENv
dWxkIHlvdSBoZWxwIG1lPw0KPiANCj4gICAgICAgICBQUzogTm93IEnigJltIHVzaW5nIGEgMTBH
QiBFdGhlcm5ldCBib2FyZCBwbHVnZ2VkIGluIHRoZQ0KPiAgICAgICAgIHdvcmtzdGF0aW9uLCB1
c2luZyBhIGNvdXBsZSBvZiBmaWJlciBvcHRpY3MgYmV0d2VlbiB0aGUgWDMxMCBhbmQNCj4gICAg
ICAgICB0aGUgd29yayBzdGF0aW9uDQo+IA0KPiAgICAgICAgIFRoYW5rIHlvdQ0KPiANCj4gICAg
IFBlcmhhcHMgeW91IGhhdmUgYSBzeW50YXggZXJyb3IgaW4geW91ciBzeXNjdGwgZmlsZT8NCj4g
DQo+IA0KPiANCj4gICAgICAgICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18NCj4gDQo+ICAgICAgICAgbG9nbzENCj4gDQo+ICAgICAgICAgRGlyZXppb25lIGUg
Q29vcmRpbmFtZW50byBWaXZlbmRpIFNBDQo+IA0KPiAgICAgICAgICoNCj4gICAgICAgICAqKkRh
bmllbGUgRGlzY28qDQo+ICAgICAgICAgKkNULlRBLkVJKg0KPiANCj4gDQo+ICAgICAgICAgVmlh
IFJlaXNzIFJvbW9saSwgMjc0IOKAkyAxMDE0OCBUb3Jpbm8NCj4gICAgICAgICB0ZWwgLiArMzkg
MDExIDIyOCA3MjcxDQo+ICAgICAgICAgY2VsbC4gKzM5IDMzMSA2MDAgMTExMw0KPiANCj4gICAg
ICAgICBGYXguICszOSAwNiA0MTg2IDUxOTYNCj4gICAgICAgICBUaW0gT2ZmaWNpYWw6ICpGYWNl
Ym9vayoNCj4gICAgICAgICA8aHR0cHM6Ly93d3cuZmFjZWJvb2suY29tL1RpbU9mZmljaWFsUGFn
ZT4gLSAqVHdpdHRlcioNCj4gICAgICAgICA8aHR0cHM6Ly90d2l0dGVyLmNvbS90aW1fb2ZmaWNp
YWw+DQo+ICAgICAgICAgKnd3dy50aW0uaXQqIDxodHRwOi8vd3d3LnRpbS5pdC8+DQo+IA0KPiAg
ICAgICAgIFF1ZXN0byBtZXNzYWdnaW8gZSBpIHN1b2kgYWxsZWdhdGkgc29ubyBpbmRpcml6emF0
aQ0KPiAgICAgICAgIGVzY2x1c2l2YW1lbnRlIGFsbGUgcGVyc29uZSBpbmRpY2F0ZS4gTGEgZGlm
ZnVzaW9uZSwgY29waWEgbw0KPiAgICAgICAgIHF1YWxzaWFzaSBhbHRyYSBhemlvbmUgZGVyaXZh
bnRlIGRhbGxhIGNvbm9zY2VuemEgZGkgcXVlc3RlDQo+ICAgICAgICAgaW5mb3JtYXppb25pIHNv
bm8gcmlnb3Jvc2FtZW50ZSB2aWV0YXRlLiBRdWFsb3JhIGFiYmlhdGUNCj4gICAgICAgICByaWNl
dnV0byBxdWVzdG8gZG9jdW1lbnRvIHBlciBlcnJvcmUgc2lldGUgY29ydGVzZW1lbnRlIHByZWdh
dGkNCj4gICAgICAgICBkaSBkYXJuZSBpbW1lZGlhdGEgY29tdW5pY2F6aW9uZSBhbCBtaXR0ZW50
ZSBlIGRpIHByb3Z2ZWRlcmUNCj4gICAgICAgICBhbGxhIHN1YSBkaXN0cnV6aW9uZSwgR3Jhemll
Lg0KPiANCj4gICAgICAgICAvVGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2htZW50cyBpcyBjb25m
aWRlbnRpYWwgYW5kIG1heSBjb250YWluDQo+ICAgICAgICAgcHJpdmlsZWdlZCBpbmZvcm1hdGlv
biBpbnRlbmRlZCBmb3IgdGhlIGFkZHJlc3NlZShzKSBvbmx5Lg0KPiAgICAgICAgIERpc3NlbWlu
YXRpb24sIGNvcHlpbmcsIHByaW50aW5nIG9yIHVzZSBieSBhbnlib2R5IGVsc2UgaXMNCj4gICAg
ICAgICB1bmF1dGhvcmlzZWQuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQs
IHBsZWFzZQ0KPiAgICAgICAgIGRlbGV0ZSB0aGlzIG1lc3NhZ2UgYW5kIGFueSBhdHRhY2htZW50
cyBhbmQgYWR2aXNlIHRoZSBzZW5kZXIgYnkNCj4gICAgICAgICByZXR1cm4gZS1tYWlsLCBUaGFu
a3MuIC8NCj4gDQo+ICAgICAgICAgKlJpc3BldHRhIGwnYW1iaWVudGUuIE5vbiBzdGFtcGFyZSBx
dWVzdGEgbWFpbCBzZSBub24gw6gNCj4gICAgICAgICBuZWNlc3NhcmlvLioNCj4gDQo+ICAgICAg
ICAgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gDQo+
ICAgICAgICAgVVNSUC11c2VycyBtYWlsaW5nIGxpc3QNCj4gDQo+ICAgICAgICAgVVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20gIDxtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQo+
IA0KPiAgICAgICAgIGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3Jw
LXVzZXJzX2xpc3RzLmV0dHVzLmNvbQ0KPiANCj4gICAgIF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+ICAgICBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdA0K
PiAgICAgVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPG1haWx0bzpVU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbT4NCj4gICAgIGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5m
by91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQ0KPiANCj4gDQo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
DQo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20v
bWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQ0KPiANCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20v
bWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
