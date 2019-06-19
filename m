Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A84F4C3FE
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jun 2019 01:13:27 +0200 (CEST)
Received: from [::1] (port=47428 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdjld-00058f-UW; Wed, 19 Jun 2019 19:13:25 -0400
Received: from otransport-10.outbound.emailsrv.net ([52.22.72.116]:44109)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hdjla-00050T-Kz
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 19:13:22 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-10.outbound.emailsrv.net (Postfix) with ESMTPS id 1CAD2616CF;
 Wed, 19 Jun 2019 23:12:42 +0000 (UTC)
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam03lp2055.outbound.protection.outlook.com [104.47.41.55])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id BC991A2441;
 Wed, 19 Jun 2019 23:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uQKQAgixOE8gS94o8Med60/qBidIEA6zcgOQwcdaBZY=;
 b=Q1fneob6Yu/KN2+KzvgwGrbs8C+WKJEyMVhBA5N0xOpIX39AEnn+Tiy8ItKz+8N1URjdkdCA1GuwSt+fO//3nsskQzDgORLZ286VgD7Yo1pcVVsuDhf9Fz+b9KDkOO2LVXRG9V04ZE6vskSwpig6tknmXsrIzn0/4Yq7xBl9hhI=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2435.namprd12.prod.outlook.com (52.132.11.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.15; Wed, 19 Jun 2019 23:12:40 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 23:12:40 +0000
To: Chris Gobbett <gobbo@tpg.com.au>
Thread-Topic: Re: [USRP-users] E320 with larger SD card
Thread-Index: AQHVJrwXtVhqj8KwE0ewAOiKvLySv6ajlvwAgAAEg4A=
Date: Wed, 19 Jun 2019 23:12:40 +0000
Message-ID: <2ec7c512-449a-4d1b-8db7-5c0d013dba79@gardettoengineering.com>
References: <d69386c0f5b0f1339eee9da920334aed03a817ac@new-postoffice.tpg.com.au>
In-Reply-To: <d69386c0f5b0f1339eee9da920334aed03a817ac@new-postoffice.tpg.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BL0PR01CA0026.prod.exchangelabs.com (2603:10b6:208:71::39)
 To BL0PR12MB2340.namprd12.prod.outlook.com
 (2603:10b6:207:4c::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-referenced-uid: 2765
x-is-generated-message-id: true
x-local-message-id: <2ec7c512-449a-4d1b-8db7-5c0d013dba79@gardettoengineering.com>
x-originating-ip: [2601:14f:0:1f02:75c6:2a4c:12bd:d0c6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 73739b3d-545f-404d-aa58-08d6f50ba028
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2435; 
x-ms-traffictypediagnostic: BL0PR12MB2435:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB2435A4618FB24F37ECF7FA8AAFE50@BL0PR12MB2435.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(39830400003)(376002)(136003)(396003)(51914003)(13464003)(199004)(189003)(14454004)(229853002)(81156014)(81166006)(11346002)(86362001)(6116002)(446003)(8936002)(31696002)(186003)(476003)(2616005)(46003)(73956011)(31686004)(66556008)(68736007)(66946007)(53936002)(6436002)(76176011)(71200400001)(486006)(236005)(5660300002)(6246003)(99286004)(52116002)(71190400001)(6486002)(386003)(6506007)(66476007)(66446008)(64756008)(25786009)(102836004)(7736002)(6306002)(54896002)(53546011)(6916009)(256004)(2906002)(6512007)(508600001)(8676002)(36756003)(4326008)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2435;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: b5U4uyRisyBJb3viZzmo49hXFj3plzLOAg7yp8ft51pZyOqf2JUdlIFEkzOgnuvapMrUXPIMi73h0ZRN6KpxQZHKMrZmgssGpd+M3uo9Xwc2lrpMnkkQwwOvOUY1vjzIQda0j7POz42iQJ0TWP3wQTWk3R69GaZF7Y/jcMvppEaDfvFr6GagBT81/b7i2uyot9Q3+NCK6qpuI6JzYvkDUJknqgpn+JiXIFHJLfJV2bxk5Xn5hrUJRIm9nmYdbnpUD6yi0cSeR1simgMhCdGbhrRxnej27iMUZLFbvj7QQ8Km5KYDS4v+mrPDDIg+EiSSGmUHyEM1zmSL/3sPKWDMg6Y2zXPD9o1yTRoOzfNYTa01sF/sq/lVEm4Eb7h74Eqh9Y2yWPsj3aL3rjIONT2JMg0HGkLawNXlkBgz6nQjrr8=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73739b3d-545f-404d-aa58-08d6f50ba028
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 23:12:40.3107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2435
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-dm3nam03lp2055.outbound.protection.outlook.com|104.47.41.55|NAM03-DM3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.41.55, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-14999-c
X-Mailprotector-ID: acb8efd0-87c3-4041-9ab7-b0ae8c24d8d7
Subject: Re: [USRP-users] E320 with larger SD card
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
From: Jason Matusiak via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Matusiak <jason@gardettoengineering.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4997615011225603524=="
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

--===============4997615011225603524==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2ec7c512449a4d1b8db75c0d013dba79gardettoengineeringcom_"

--_000_2ec7c512449a4d1b8db75c0d013dba79gardettoengineeringcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2hyaXMsIHRoYW5rcyBmb3IgdGhlIHRpcHMuDQoNClNvIEkgcHV0IGEgZnJlc2ggbG9hZCBvbiBh
IGNhcmQsIHRoZW4gdXNlZCBncGFydGVkIHRvIGV4dGVuZCB0aGUgZGF0YSBwYXJ0aXRpb24gdG8g
ZmlsbCB0aGluZ3Mgb3V0LiBUaGF0IGlzbid0IGVub3VnaCwgYW5kIHlvdXIgaW5zdHJ1Y3Rpb25z
IGNlcnRhaW5seSBzaG93IG1vcmUgc3RlcHMuIEJ1dCBJIGRvbid0IHVuZGVyc3RhbmQgd2hhdCB5
b3UgbWVhbiB3aXRoIHRoZSBwYXJ0aXRpb25zIGluIHRoZSBtaWRkbGUuDQoNCkknbGwgcmVhZCB1
cCBvbiBNZW5kZXIgYW5kIHNlZSBpZiB0aGF0IGFuc3dlcnMgaXQgZm9yIG1lLiBUaGFua3MgYWdh
aW4uDQpPbiBKdW4gMTksIDIwMTksIGF0IDY6NTYgUE0sIENocmlzIEdvYmJldHQgPGdvYmJvQHRw
Zy5jb20uYXU8bWFpbHRvOmdvYmJvQHRwZy5jb20uYXU+PiB3cm90ZToNCg0KSGkgSmFzb24sDQoN
CkkndmUgaGFkIGx1Y2sgd2l0aCB0aGUgZm9sbG93aW5nOg0KLSBiYWNrdXAvY2xvbmUgdGhlIG9y
aWdpbmFsIFNEQ2FyZCBpbWFnZSB0byBkaXNrIGFuZC9vciBsYXJnZXIgU0RDYXJkICh1c2luZyBk
ZCBvciBvdGhlcndpc2UpDQotIG9uIHRoZSBuZXcgY2FyZCwgcmVzaXplL3NoaWZ0IHRoZSBkYXRh
IHBhcnRpb24gdG8gdGhlIGVuZCBvZiB0aGUgY2FyZCAodXNpbmcgZ3BhcnRlZCkNCi0gcmVzaXpl
IHRoZSB0d28gZmlsZXN5c3RlbS9rZXJuZWwgcGFydGl0aW9ucyB0byBmaWxsIGluIHRoZSBlbXB0
eSBzcGFjZSBpbiB0aGUgbWlkZGxlLCBidXQgdGhleSBuZWVkIHRvIGJlIHRoZSBzYW1lIHNpemUg
KHVzaW5nIGdwYXJ0ZWQpDQoNClJlYWQgdXAgb24gTWVuZGVyIGZvciBtb3JlIGluZm8gb24gdGhl
IHBhcnRpdGlvbiBsYXlvdXQgKGh0dHBzOi8vZG9jcy5tZW5kZXIuaW8vMS43L2RldmljZXMvZ2Vu
ZXJhbC1zeXN0ZW0tcmVxdWlyZW1lbnRzI3BhcnRpdGlvbi1sYXlvdXQpLiBJdCdzIGEgcGFpbiB0
aGF0IHRoZXkgd2VudCB3aXRoIE1lbmRlciBmb3IgdGhlIGRlZmF1bHQgRTMyMCBjYXJkOyBpdCBj
dXRzIHRoZSAndXNhYmxlJyBmaWxlIHN5c3RlbSBzcGFjZSBpbiBoYWxmLCBhdCB0aGUgYmVuZWZp
dCBvZiBoYXZpbmcgMiBpbmRlcGVuZGVudCBmaWxlc3lzdGVtIHBhcnRpdGlvbnMuLi4gSSBoYXZl
bid0IGhhZCB0aW1lIHRvIGZpZGRsZSBhcm91bmQgYW5kIGRpdGNoIHRoZSBtZW5kZXIgZm9yIGEg
J25vcm1hbCcgcGFydGl0aW9uIGxheW91dCwgYnV0IEknZCBhc3N1bWUgaXQncyBwb3NzaWJsZS4N
Cg0KQ2hlZXJzLA0KQ2hyaXMNCg0KDQoNCi0tLS0tIE9yaWdpbmFsIE1lc3NhZ2UgLS0tLS0NCkZy
b206DQoiSmFzb24gTWF0dXNpYWsiIDxqYXNvbkBnYXJkZXR0b2VuZ2luZWVyaW5nLmNvbT4NCg0K
VG86DQoiRXR0dXMgTWFpbCBMaXN0IiA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQpDYzoN
Cg0KU2VudDoNCldlZCwgMTkgSnVuIDIwMTkgMTY6Mjk6MzggKzAwMDANClN1YmplY3Q6DQpbVVNS
UC11c2Vyc10gRTMyMCB3aXRoIGxhcmdlciBTRCBjYXJkDQoNCg0KDQpJIHdhbnRlZCB0byB1c2Ug
YSBsYXJnZXIgU0QgY2FyZCB0aGFuIHRoZSBvbmUgdGhhdCBhcyBzdXBwbGllZCwgYnV0IEkgYW0g
aGF2aW5nIGlzc3Vlcy4gIEkgbG9hZGVkIHVwIHRoZSBjYXJkLCBhbmQgdGhlbiBleHRlbmRlZCB0
aGUgZGF0YSBwYXJ0aXRpb24gdG8gdXNlIHVwIHRoZSByZXN0IG9mIHRoZSBmcmVlIHNwYWNlIChh
Ym91dCAxMDBHQikuICBCdXQgdGhlbiBpdCBkb2Vzbid0IGJvb3QuDQoNCg0KSSBhbSB3b25kZXJp
bmcgaWYgdGhlIGNoYW5nZSB0byBhIHBhcnRpdGlvbiBzaXplIHNjcmV3ZWQgdXAgc29tZXRoaW5n
IGluIGEgY29uZmlnIGZpbGUgc29tZXdoZXJlLiAgSXMgdGhlcmUgYSB3YXkgdG8gZml4IHRoaXMg
d2l0aG91dCByZWJ1aWxkaW5nIGEgZG9ja2VyIGltYWdlPyAgSSBhbSB1c2luZyB0aGUgVUhEIDMu
MTQuMC4wLiB0aGF0IGhhcyB0aGUgc21hbGxlciBkYXRhIHBhcnRpdGlvbiAoVUhEIDMuMTQuMS4w
IGhhcyBhIGxhcmdlciBkYXRhIHBhcnRpdGlvbiwgYnV0IGRvZXNuJ3QgaW5jbHVkZSBhbnkgR1Iv
cHl0aG9uIHBhY2thZ2VzLCBzbyBJIG5lZWQgdG8gdXNlIHRoZSBvbGRlciBpbWFnZSkuDQoNCg0K
VGhhbmtzLg0K

--_000_2ec7c512449a4d1b8db75c0d013dba79gardettoengineeringcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <02ABEC792E14B145A3E2DD8EE4C8F874@namprd12.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ6b29tOiAw
JTsiPg0KPGRpdiBkaXI9ImF1dG8iPkNocmlzLCB0aGFua3MgZm9yIHRoZSB0aXBzLjxicj4NCjxi
cj4NCjwvZGl2Pg0KPGRpdiBkaXI9ImF1dG8iPlNvIEkgcHV0IGEgZnJlc2ggbG9hZCBvbiBhIGNh
cmQsIHRoZW4gdXNlZCBncGFydGVkIHRvIGV4dGVuZCB0aGUgZGF0YSBwYXJ0aXRpb24gdG8gZmls
bCB0aGluZ3Mgb3V0LiBUaGF0IGlzbid0IGVub3VnaCwgYW5kIHlvdXIgaW5zdHJ1Y3Rpb25zIGNl
cnRhaW5seSBzaG93IG1vcmUgc3RlcHMuIEJ1dCBJIGRvbid0IHVuZGVyc3RhbmQgd2hhdCB5b3Ug
bWVhbiB3aXRoIHRoZSBwYXJ0aXRpb25zIGluIHRoZSBtaWRkbGUuDQo8YnI+DQo8YnI+DQo8L2Rp
dj4NCjxkaXYgZGlyPSJhdXRvIj5JJ2xsIHJlYWQgdXAgb24gTWVuZGVyIGFuZCBzZWUgaWYgdGhh
dCBhbnN3ZXJzIGl0IGZvciBtZS4gVGhhbmtzIGFnYWluLjwvZGl2Pg0KPGRpdiBjbGFzcz0iZ21h
aWxfcXVvdGUiPk9uIEp1biAxOSwgMjAxOSwgYXQgNjo1NiBQTSwgQ2hyaXMgR29iYmV0dCAmbHQ7
PGEgaHJlZj0ibWFpbHRvOmdvYmJvQHRwZy5jb20uYXUiIHRhcmdldD0iX2JsYW5rIj5nb2Jib0B0
cGcuY29tLmF1PC9hPiZndDsgd3JvdGU6DQo8YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUi
IHN0eWxlPSJtYXJnaW46IDBwdCAwcHQgMHB0IDAuOGV4OyBib3JkZXItbGVmdDogMXB4IHNvbGlk
IHJnYigyMDQsIDIwNCwgMjA0KTsgcGFkZGluZy1sZWZ0OiAxZXg7Ij4NCiZuYnNwOyA8YnI+DQpI
aSBKYXNvbiwNCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PkkndmUgaGFkIGx1Y2sgd2l0aCB0aGUg
Zm9sbG93aW5nOiA8L2Rpdj4NCjxkaXY+LSBiYWNrdXAvY2xvbmUgdGhlIG9yaWdpbmFsIFNEQ2Fy
ZCBpbWFnZSB0byBkaXNrIGFuZC9vciBsYXJnZXIgU0RDYXJkICh1c2luZyBkZCBvciBvdGhlcndp
c2UpDQo8L2Rpdj4NCjxkaXY+LSBvbiB0aGUgbmV3IGNhcmQsIHJlc2l6ZS9zaGlmdCB0aGUgZGF0
YSBwYXJ0aW9uIHRvIHRoZSBlbmQgb2YgdGhlIGNhcmQgKHVzaW5nIGdwYXJ0ZWQpDQo8L2Rpdj4N
CjxkaXY+LSByZXNpemUgdGhlIHR3byBmaWxlc3lzdGVtL2tlcm5lbCBwYXJ0aXRpb25zIHRvIGZp
bGwgaW4gdGhlIGVtcHR5IHNwYWNlIGluIHRoZSBtaWRkbGUsIGJ1dCB0aGV5IG5lZWQgdG8gYmUg
dGhlIHNhbWUgc2l6ZSAodXNpbmcgZ3BhcnRlZCkNCjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4N
CjxkaXY+UmVhZCB1cCBvbiBNZW5kZXIgZm9yIG1vcmUgaW5mbyBvbiB0aGUgcGFydGl0aW9uIGxh
eW91dCAoaHR0cHM6Ly9kb2NzLm1lbmRlci5pby8xLjcvZGV2aWNlcy9nZW5lcmFsLXN5c3RlbS1y
ZXF1aXJlbWVudHMjcGFydGl0aW9uLWxheW91dCkuIEl0J3MgYSBwYWluIHRoYXQgdGhleSB3ZW50
IHdpdGggTWVuZGVyIGZvciB0aGUgZGVmYXVsdCBFMzIwIGNhcmQ7IGl0IGN1dHMgdGhlICd1c2Fi
bGUnIGZpbGUgc3lzdGVtIHNwYWNlIGluIGhhbGYsDQogYXQgdGhlIGJlbmVmaXQgb2YgaGF2aW5n
IDIgaW5kZXBlbmRlbnQgZmlsZXN5c3RlbSBwYXJ0aXRpb25zLi4uIEkgaGF2ZW4ndCBoYWQgdGlt
ZSB0byBmaWRkbGUgYXJvdW5kIGFuZCBkaXRjaCB0aGUgbWVuZGVyIGZvciBhICdub3JtYWwnIHBh
cnRpdGlvbiBsYXlvdXQsIGJ1dCBJJ2QgYXNzdW1lIGl0J3MgcG9zc2libGUuDQo8L2Rpdj4NCjxk
aXY+PGJyPg0KPC9kaXY+DQo8ZGl2PkNoZWVycywgPC9kaXY+DQo8ZGl2PkNocmlzIDwvZGl2Pg0K
PGRpdj48YnI+DQo8YnI+DQo8YmxvY2txdW90ZT48YnI+DQotLS0tLSBPcmlnaW5hbCBNZXNzYWdl
IC0tLS0tIDxicj4NCjxkaXYgc3R5bGU9IndpZHRoOjEwMCU7YmFja2dyb3VuZDpyZ2IoMjI4LDIy
OCwyMjgpOyI+DQo8ZGl2IHN0eWxlPSJmb250LXdlaWdodDpib2xkOyI+RnJvbTogPC9kaXY+DQom
cXVvdDtKYXNvbiBNYXR1c2lhayZxdW90OyAmbHQ7amFzb25AZ2FyZGV0dG9lbmdpbmVlcmluZy5j
b20mZ3Q7IDwvZGl2Pg0KPGJyPg0KPGRpdiBzdHlsZT0iZm9udC13ZWlnaHQ6Ym9sZDsiPlRvOiA8
L2Rpdj4NCiZxdW90O0V0dHVzIE1haWwgTGlzdCZxdW90OyAmbHQ7dXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20mZ3Q7IDxicj4NCjxkaXYgc3R5bGU9ImZvbnQtd2VpZ2h0OmJvbGQ7Ij5DYzogPC9k
aXY+DQo8YnI+DQo8ZGl2IHN0eWxlPSJmb250LXdlaWdodDpib2xkOyI+U2VudDogPC9kaXY+DQpX
ZWQsIDE5IEp1biAyMDE5IDE2OjI5OjM4ICYjNDM7MDAwMCA8YnI+DQo8ZGl2IHN0eWxlPSJmb250
LXdlaWdodDpib2xkOyI+U3ViamVjdDogPC9kaXY+DQpbVVNSUC11c2Vyc10gRTMyMCB3aXRoIGxh
cmdlciBTRCBjYXJkIDxicj4NCjxicj4NCjxicj4NCjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMnB0
O2NvbG9yOiMwMDAwMDA7Zm9udC1mYW1pbHk6Q2FsaWJyaSwgSGVsdmV0aWNhLCBzYW5zLXNlcmlm
OyIgZGlyPSJsdHIiPg0KPHAgc3R5bGU9Im1hcmdpbi10b3A6MDttYXJnaW4tYm90dG9tOjA7Ij5J
IHdhbnRlZCB0byB1c2UgYSBsYXJnZXIgU0QgY2FyZCB0aGFuIHRoZSBvbmUgdGhhdCBhcyBzdXBw
bGllZCwgYnV0IEkgYW0gaGF2aW5nIGlzc3Vlcy4mbmJzcDsgSSBsb2FkZWQgdXAgdGhlIGNhcmQs
IGFuZCB0aGVuIGV4dGVuZGVkIHRoZSBkYXRhIHBhcnRpdGlvbiB0byB1c2UgdXAgdGhlIHJlc3Qg
b2YgdGhlIGZyZWUgc3BhY2UgKGFib3V0IDEwMEdCKS4mbmJzcDsgQnV0IHRoZW4gaXQgZG9lc24n
dA0KIGJvb3QuPC9wPg0KPHAgc3R5bGU9Im1hcmdpbi10b3A6MDttYXJnaW4tYm90dG9tOjA7Ij48
YnI+DQo8L3A+DQo8cCBzdHlsZT0ibWFyZ2luLXRvcDowO21hcmdpbi1ib3R0b206MDsiPkkgYW0g
d29uZGVyaW5nIGlmIHRoZSBjaGFuZ2UgdG8gYSBwYXJ0aXRpb24gc2l6ZSBzY3Jld2VkIHVwIHNv
bWV0aGluZyBpbiBhIGNvbmZpZyBmaWxlIHNvbWV3aGVyZS4mbmJzcDsgSXMgdGhlcmUgYSB3YXkg
dG8gZml4IHRoaXMgd2l0aG91dCByZWJ1aWxkaW5nIGEgZG9ja2VyIGltYWdlPyZuYnNwOyBJIGFt
IHVzaW5nIHRoZSBVSEQgMy4xNC4wLjAuIHRoYXQgaGFzIHRoZSBzbWFsbGVyIGRhdGENCiBwYXJ0
aXRpb24gKFVIRCAzLjE0LjEuMCBoYXMgYSBsYXJnZXIgZGF0YSBwYXJ0aXRpb24sIGJ1dCBkb2Vz
bid0IGluY2x1ZGUgYW55IEdSL3B5dGhvbiBwYWNrYWdlczxzcGFuIHN0eWxlPSJmb250LWZhbWls
eTpDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWYsIEVtb2ppRm9udCwgJ0FwcGxlIENvbG9y
IEVtb2ppJywgJ1NlZ29lIFVJIEVtb2ppJywgTm90b0NvbG9yRW1vamksICdTZWdvZSBVSSBTeW1i
b2wnLCAnQW5kcm9pZCBFbW9qaScsIEVtb2ppU3ltYm9scztmb250LXNpemU6MTZweDsiPiwNCiBz
byBJIG5lZWQgdG8gdXNlIHRoZSBvbGRlciBpbWFnZTwvc3Bhbj4pLjwvcD4NCjxwIHN0eWxlPSJt
YXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowOyI+PGJyPg0KPC9wPg0KPHAgc3R5bGU9Im1hcmdp
bi10b3A6MDttYXJnaW4tYm90dG9tOjA7Ij5UaGFua3MuPC9wPg0KPC9kaXY+DQo8L2Jsb2NrcXVv
dGU+DQo8L2Rpdj4NCjwvYmxvY2txdW90ZT4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_2ec7c512449a4d1b8db75c0d013dba79gardettoengineeringcom_--


--===============4997615011225603524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4997615011225603524==--

