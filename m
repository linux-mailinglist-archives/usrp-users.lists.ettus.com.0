Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E19D35F70
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2019 16:41:20 +0200 (CEST)
Received: from [::1] (port=46404 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYX6J-0002RU-Ds; Wed, 05 Jun 2019 10:41:15 -0400
Received: from otransport-8.outbound.emailsrv.net ([52.20.59.36]:42341)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hYX6F-0002HV-2S
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 10:41:11 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-8.outbound.emailsrv.net (Postfix) with ESMTPS id B206261367;
 Wed,  5 Jun 2019 14:40:30 +0000 (UTC)
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2055.outbound.protection.outlook.com [104.47.46.55])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id 78E90A268C;
 Wed,  5 Jun 2019 14:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6XlhtWv6aV8zbmgbxd2F1CQ7JG+RtipbAScoO6s+AjI=;
 b=jk/AiVJ4PggwL7pONPCQ+KoWX/Vd6gaGpR9aBuCRbXtL1mhKDyPUnCdGrjWKrK5Plm9883RVJOh/fUEZoBuf3TJY6I73jQHO9MxsT7Mp/h4Ab/eFDWmw8rxDEv5B4nycaxYRuGF+z/l5u9z2id/d6/ewTmFNxinqO2juwqgvoQA=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2484.namprd12.prod.outlook.com (52.132.11.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Wed, 5 Jun 2019 14:40:28 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1943.018; Wed, 5 Jun 2019
 14:40:28 +0000
To: Robin Coxe <coxe@close-haul.com>, Ettus Mail List
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] offset tuning on the TwinRX
Thread-Index: AQHVGvKLJAorX2ahCk+tb/lW4V0L76aL1FMAgAFO36M=
Date: Wed, 5 Jun 2019 14:40:28 +0000
Message-ID: <BL0PR12MB23403E7486A123F8268DDB4DAF160@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB23402C2808CD82D3A68A4E1BAF150@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <DM5PR10MB1945DB08DA13F4B6E9C32CDAAB150@DM5PR10MB1945.namprd10.prod.outlook.com>
In-Reply-To: <DM5PR10MB1945DB08DA13F4B6E9C32CDAAB150@DM5PR10MB1945.namprd10.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7c5786aa-bcb2-41e7-c18a-08d6e9c3c113
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:BL0PR12MB2484; 
x-ms-traffictypediagnostic: BL0PR12MB2484:
x-microsoft-antispam-prvs: <BL0PR12MB248431EB3C77F91880152DEEAF160@BL0PR12MB2484.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(396003)(39830400003)(346002)(366004)(136003)(199004)(189003)(66066001)(33656002)(11346002)(8676002)(8936002)(25786009)(102836004)(66556008)(53546011)(105004)(7736002)(53936002)(446003)(81166006)(71190400001)(19627405001)(6436002)(9686003)(55016002)(71200400001)(476003)(52536014)(5660300002)(54896002)(81156014)(14444005)(73956011)(316002)(66476007)(64756008)(486006)(6246003)(99286004)(66446008)(256004)(6506007)(76176011)(14454004)(2906002)(68736007)(508600001)(110136005)(26005)(229853002)(66946007)(74316002)(186003)(3846002)(6116002)(7696005)(86362001)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2484;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tUddWaIMUarmypqAs/sYE345PqFRecawm25WwieKWP/ll6zOhTwNUDjRlcVRGaipizvvKlkgtEt7nrWrxSzRvgUgeGcuJAKMhp8uDfehWjpLU0XzBKXz37mpRnfwv0Dz4m5WNKMhfCP5wkfSQq6K2tx155SOhV95j7Fo6WrppjXUgIwJEvG3KLUJB/Nt/x+cmbGdQ3CI7ArJqaA2sObBUMNs1ru/ASLkGj7FVwXp6JY8VV64z/+T0jh/iB9i+erFRwBL7/354o0VxEmG1IR4BiFsotAgya3tQOF9SEaNwY7+Leyn5qP0nCokp5AU0pOcaWiJkWv3Te+Y9uoGKDsoT7o+9Hg3YVNvZ/U7jSplFissrtRq2WjBWiJKPiDWXkpp8852urEIAi6zKnn439e063ikO2SiX9ZRii9KGZQbyrA=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c5786aa-bcb2-41e7-c18a-08d6e9c3c113
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 14:40:28.6066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2484
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-bn3nam04lp2055.outbound.protection.outlook.com|104.47.46.55|NAM04-BN3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.46.55, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-10750-c
X-Mailprotector-ID: feb7637e-6dd2-4a80-adad-80eaee0f1f59
Subject: Re: [USRP-users] offset tuning on the TwinRX
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
Content-Type: multipart/mixed; boundary="===============2233900116591475001=="
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

--===============2233900116591475001==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23403E7486A123F8268DDB4DAF160BL0PR12MB2340namp_"

--_000_BL0PR12MB23403E7486A123F8268DDB4DAF160BL0PR12MB2340namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T0ssIHRoYW5rcyBldmVyeW9uZS4gIEkgZ3Vlc3MgSSBoYXZlIHNvbWUgc3VwZXJoZXQgcmVhZGlu
ZyB1cCB0byBkbyDwn5mCLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KRnJv
bTogUm9iaW4gQ294ZSA8Y294ZUBjbG9zZS1oYXVsLmNvbT4NClNlbnQ6IFR1ZXNkYXksIEp1bmUg
NCwgMjAxOSAyOjQxIFBNDQpUbzogSmFzb24gTWF0dXNpYWs7IEV0dHVzIE1haWwgTGlzdA0KU3Vi
amVjdDogUmU6IFtVU1JQLXVzZXJzXSBvZmZzZXQgdHVuaW5nIG9uIHRoZSBUd2luUlgNCg0KSGkg
SmFzb24uICAgWWVzLCBpdCBpcyBhIHN1cGVyLWhldCByZWNlaXZlci4gICBBbGwgb3RoZXIgRXR0
dXMgcmFkaW9zIGVtcGxveSBkaXJlY3QgY29udmVyc2lvbiB0cmFuc2NlaXZlcnMuDQoNCi1Sb2Jp
bg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpGcm9tOiBVU1JQLXVzZXJz
IDx1c3JwLXVzZXJzLWJvdW5jZXNAbGlzdHMuZXR0dXMuY29tPiBvbiBiZWhhbGYgb2YgSmFzb24g
TWF0dXNpYWsgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KU2Vu
dDogV2VkbmVzZGF5LCBKdW5lIDUsIDIwMTkgMjozMSBBTQ0KVG86IEV0dHVzIE1haWwgTGlzdA0K
U3ViamVjdDogW1VTUlAtdXNlcnNdIG9mZnNldCB0dW5pbmcgb24gdGhlIFR3aW5SWA0KDQpBbiBh
c3NvY2lhdGUgd2FzIGFza2luZyBtZSBhYm91dCB0aGUgVHdpblJYICh3aGljaCBJIGhhdmVuJ3Qg
cmVhbGx5IHVzZWQpLiAgSGUgYXBwYXJlbnRseSB1c2VzIG9mZnNldCB0dW5pbmcgb24gdGhlIEIg
c2VyaWVzIG9mdGVuIGZvciBoaXMgZ251cmFkaW8gZmxvd2dyYXBocy4gIEhlIHdhcyB0cnlpbmcg
dG8gZG8gaXQgd2l0aCB0aGUgVHdpblJYIGFuZCBjYW4ndCBmaW5kIHRoZSBob29rcyBmb3IgaXQu
ICBJIGxvb2tlZCBhcm91bmQgYnJpZWZseSBhbmQgY2FtZSB1cCBlbXB0eSBhcyB3ZWxsLiAgSSBh
c3N1bWUgdGhhdCB0aGVyZSBpcyBzb21ldGhpbmcgYWJvdXQgdGhlIFR3aW5SWCB0aGF0IHByZXZl
bnRzIG9mZnNldCB0dW5pbmcsIHNvIEkgd2FzIGN1cmlvdXMgd2hhdCB0aGF0IG1pZ2h0IGJlLg0K
DQpUaGFua3MNCg==

--_000_BL0PR12MB23403E7486A123F8268DDB4DAF160BL0PR12MB2340namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNv
bG9yOiByZ2IoMCwgMCwgMCk7Ij4NCk9LLCB0aGFua3MmbmJzcDtldmVyeW9uZS4mbmJzcDsgSSBn
dWVzcyBJIGhhdmUgc29tZSBzdXBlcmhldCByZWFkaW5nIHVwIHRvIGRvIDxzcGFuIGlkPSLwn5mC
IiB0aXRsZT0iOnNsaWdodF9zbWlsZToiPg0K8J+Zgi48L3NwYW4+PC9kaXY+DQo8ZGl2IGlkPSJT
aWduYXR1cmUiPg0KPGRpdj4NCjxkaXYgaWQ9ImFwcGVuZG9uc2VuZCI+PC9kaXY+DQo8ZGl2IHN0
eWxlPSJmb250LWZhbWlseTpDYWxpYnJpLEFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250
LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQo8YnI+DQo8L2Rpdj4NCjxociB0YWJpbmRl
eD0iLTEiIHN0eWxlPSJkaXNwbGF5OmlubGluZS1ibG9jazsgd2lkdGg6OTglIj4NCjxkaXYgaWQ9
ImRpdlJwbHlGd2RNc2ciIGRpcj0ibHRyIj48Zm9udCBmYWNlPSJDYWxpYnJpLCBzYW5zLXNlcmlm
IiBjb2xvcj0iIzAwMDAwMCIgc3R5bGU9ImZvbnQtc2l6ZToxMXB0Ij48Yj5Gcm9tOjwvYj4gUm9i
aW4gQ294ZSAmbHQ7Y294ZUBjbG9zZS1oYXVsLmNvbSZndDs8YnI+DQo8Yj5TZW50OjwvYj4gVHVl
c2RheSwgSnVuZSA0LCAyMDE5IDI6NDEgUE08YnI+DQo8Yj5Ubzo8L2I+IEphc29uIE1hdHVzaWFr
OyBFdHR1cyBNYWlsIExpc3Q8YnI+DQo8Yj5TdWJqZWN0OjwvYj4gUmU6IFtVU1JQLXVzZXJzXSBv
ZmZzZXQgdHVuaW5nIG9uIHRoZSBUd2luUlg8L2ZvbnQ+DQo8ZGl2PiZuYnNwOzwvZGl2Pg0KPC9k
aXY+DQo8ZGl2Pg0KPGRpdj4NCjxkaXY+DQo8ZGl2Pg0KPGRpdiBzdHlsZT0iZGlyZWN0aW9uOmx0
ciI+SGkgSmFzb24uICZuYnNwOyZuYnNwO1llcywgaXQgaXMgYSBzdXBlci1oZXQgcmVjZWl2ZXIu
ICZuYnNwOyZuYnNwO0FsbCBvdGhlciBFdHR1cyByYWRpb3MgZW1wbG95IGRpcmVjdCBjb252ZXJz
aW9uIHRyYW5zY2VpdmVycy4gJm5ic3A7PC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdiBz
dHlsZT0iZGlyZWN0aW9uOmx0ciI+LVJvYmluPC9kaXY+DQo8L2Rpdj4NCjxkaXY+PGJyPg0KPC9k
aXY+DQo8ZGl2IGNsYXNzPSJ4X21zLW91dGxvb2staW9zLXNpZ25hdHVyZSI+PC9kaXY+DQo8L2Rp
dj4NCjxkaXY+Jm5ic3A7PC9kaXY+DQo8aHIgdGFiaW5kZXg9Ii0xIiBzdHlsZT0iZGlzcGxheTpp
bmxpbmUtYmxvY2s7IHdpZHRoOjk4JSI+DQo8ZGl2IGlkPSJ4X2RpdlJwbHlGd2RNc2ciIGRpcj0i
ZGlyPSZxdW90O2x0ciZxdW90OyI+PGZvbnQgZmFjZT0iQ2FsaWJyaSwgc2Fucy1zZXJpZiIgY29s
b3I9IiMwMDAwMDAiIHN0eWxlPSJmb250LXNpemU6MTFwdCI+PGI+RnJvbTo8L2I+IFVTUlAtdXNl
cnMgJmx0O3VzcnAtdXNlcnMtYm91bmNlc0BsaXN0cy5ldHR1cy5jb20mZ3Q7IG9uIGJlaGFsZiBv
ZiBKYXNvbiBNYXR1c2lhayB2aWEgVVNSUC11c2VycyAmbHQ7dXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20mZ3Q7PGJyPg0KPGI+U2VudDo8L2I+IFdlZG5lc2RheSwgSnVuZSA1LCAyMDE5IDI6MzEg
QU08YnI+DQo8Yj5Ubzo8L2I+IEV0dHVzIE1haWwgTGlzdDxicj4NCjxiPlN1YmplY3Q6PC9iPiBb
VVNSUC11c2Vyc10gb2Zmc2V0IHR1bmluZyBvbiB0aGUgVHdpblJYDQo8ZGl2PiZuYnNwOzwvZGl2
Pg0KPC9mb250PjwvZGl2Pg0KPG1ldGEgY29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PWlzby04
ODU5LTEiPg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6Q2FsaWJyaSxBcmlhbCxIZWx2ZXRpY2Es
c2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigwLDAsMCkiPg0KQW4gYXNzb2Np
YXRlIHdhcyBhc2tpbmcgbWUgYWJvdXQgdGhlIFR3aW5SWCAod2hpY2ggSSBoYXZlbid0IHJlYWxs
eSB1c2VkKS4mbmJzcDsgSGUgYXBwYXJlbnRseSB1c2VzIG9mZnNldCB0dW5pbmcgb24gdGhlIEIg
c2VyaWVzIG9mdGVuIGZvciBoaXMgZ251cmFkaW8gZmxvd2dyYXBocy4mbmJzcDsgSGUgd2FzIHRy
eWluZyB0byBkbyBpdCB3aXRoIHRoZSBUd2luUlggYW5kIGNhbid0IGZpbmQgdGhlIGhvb2tzIGZv
ciBpdC4mbmJzcDsgSSBsb29rZWQgYXJvdW5kIGJyaWVmbHkNCiBhbmQgY2FtZSB1cCBlbXB0eSBh
cyB3ZWxsLiZuYnNwOyBJIGFzc3VtZSB0aGF0IHRoZXJlIGlzIHNvbWV0aGluZyBhYm91dCB0aGUg
VHdpblJYIHRoYXQgcHJldmVudHMgb2Zmc2V0IHR1bmluZywgc28gSSB3YXMgY3VyaW91cyB3aGF0
IHRoYXQgbWlnaHQgYmUuPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpDYWxpYnJpLEFy
aWFsLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCww
KSI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkNhbGlicmksQXJpYWws
SGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4N
ClRoYW5rczwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8
L2h0bWw+DQo=

--_000_BL0PR12MB23403E7486A123F8268DDB4DAF160BL0PR12MB2340namp_--


--===============2233900116591475001==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2233900116591475001==--

