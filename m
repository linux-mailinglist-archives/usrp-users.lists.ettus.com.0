Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E42C23958A
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2019 21:28:31 +0200 (CEST)
Received: from [::1] (port=41254 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hZKXN-00083A-8a; Fri, 07 Jun 2019 15:28:29 -0400
Received: from otransport-16.outbound.emailsrv.net ([18.232.37.98]:44531)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hZKXJ-0007vR-Qv
 for usrp-users@lists.ettus.com; Fri, 07 Jun 2019 15:28:25 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-16.outbound.emailsrv.net (Postfix) with ESMTPS id 77F6961650;
 Fri,  7 Jun 2019 19:27:45 +0000 (UTC)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam04lp2058.outbound.protection.outlook.com [104.47.45.58])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id F169FA26C0;
 Fri,  7 Jun 2019 19:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gZ+90TJoSD8YnwHa0tjQqTe81I54kbFrkjIBoLQrgbE=;
 b=CHVtbVEjrWnjCNMHodkesBhvGHLoy9k4puHFL1i+woU1DFBZmys4BlZ2uFb4P/BUBKmzpD/k32FX93MAUHIU8AFMRoiT6RwwJEys4MqWGW1LyYTuykdEry6Jk2vXoYanXaknKlcGtHRYEKIbt11DvmIlyYo67pSkvmKU3Smgxtg=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2818.namprd12.prod.outlook.com (20.177.207.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Fri, 7 Jun 2019 19:27:43 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1965.011; Fri, 7 Jun 2019
 19:27:43 +0000
To: Sylvain Munaut <246tnt@gmail.com>
Thread-Topic: [USRP-users] offset tuning on the TwinRX
Thread-Index: AQHVGvKLJAorX2ahCk+tb/lW4V0L76aL1FMAgAFO36OAAA56AIADZgsF
Date: Fri, 7 Jun 2019 19:27:43 +0000
Message-ID: <BL0PR12MB234020F8B37615CE70BD7E95AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB23402C2808CD82D3A68A4E1BAF150@BL0PR12MB2340.namprd12.prod.outlook.com>
 <DM5PR10MB1945DB08DA13F4B6E9C32CDAAB150@DM5PR10MB1945.namprd10.prod.outlook.com>
 <BL0PR12MB23403E7486A123F8268DDB4DAF160@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <CAHL+j0_dd7tAZL1xyHbOAr5_1xceN-m6J2N=mGRfVAn3Mrngdg@mail.gmail.com>
In-Reply-To: <CAHL+j0_dd7tAZL1xyHbOAr5_1xceN-m6J2N=mGRfVAn3Mrngdg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1ad0938-2054-470e-c122-08d6eb7e3686
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:BL0PR12MB2818; 
x-ms-traffictypediagnostic: BL0PR12MB2818:
x-microsoft-antispam-prvs: <BL0PR12MB2818DF0B4DA8CB937FB321CDAF100@BL0PR12MB2818.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(396003)(366004)(376002)(136003)(346002)(199004)(189003)(7696005)(74316002)(236005)(54896002)(73956011)(9686003)(66946007)(52536014)(316002)(6506007)(2906002)(186003)(86362001)(4326008)(64756008)(6436002)(53546011)(6606003)(81156014)(66066001)(66556008)(66446008)(8936002)(76176011)(99286004)(25786009)(229853002)(66476007)(8676002)(6246003)(81166006)(53936002)(1411001)(14454004)(3846002)(446003)(6116002)(33656002)(71190400001)(508600001)(76116006)(486006)(6916009)(5660300002)(68736007)(5070765005)(26005)(102836004)(476003)(7736002)(19627405001)(256004)(54906003)(71200400001)(11346002)(55016002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2818;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sHsu1sLVsW+EHAQX2gaaQdkw+IYFVyTKK63tB/T4wbCClTM++63vXU/LVwo49oMVFqbhceqhVZenVZgXWwumTtBMpjVYuulKKA/KqHottTC9TpKMwuuEpQzzlfH6N/0/2KI4Q16DYcbHfZj+fFw+r+upiLyb1FYtLXvbZYem8Wseex1BydJC89dj8uYeH+eeA3NSiypoB17B1orDtWAvAPxlCnllV0Ust0GNM+kFFvk56zwUDR5kX5qYtu7ndWGVaTUKfHzM65tkxA3N6Do3Et/q3HultzC3Wj7I1SNVwbSdKC/HmCcAhBDmW4q42l3fd7fmG2QLxq4AQ3KruG0Gqap1DmZH/2a2vuxEebY5IHZr21wWf15/YptkAeJCBNYuNpD1BjEgqGLEHYqNU7J5/M3j+2d7XV6IpABnACX73rk=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1ad0938-2054-470e-c122-08d6eb7e3686
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 19:27:43.1811 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2818
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-co1nam04lp2058.outbound.protection.outlook.com|104.47.45.58|NAM04-CO1-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.45.58, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-12225-c
X-Mailprotector-ID: b5126743-ebc1-46d3-a9f5-512f8ebb2341
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
Cc: Ettus Mail List <usrp-users@lists.ettus.com>,
 Robin Coxe <coxe@close-haul.com>
Content-Type: multipart/mixed; boundary="===============6967311198293934385=="
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

--===============6967311198293934385==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB234020F8B37615CE70BD7E95AF100BL0PR12MB2340namp_"

--_000_BL0PR12MB234020F8B37615CE70BD7E95AF100BL0PR12MB2340namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QSBnb29kIHdyaXRlLXVwLCB0aGFua3MgU3VsdmFpbi4NCg0KDQpJIGZvcmdvdCBhbGwgYWJvdXQg
aG93IHRoZXkgZnVuY3Rpb25lZC4gIEkgd29ya2VkIG9uIGFuIFNEUiBwcm9qZWN0IGEgbWlsbGlv
biB5ZWFycyBhZ28gKGJlZm9yZSBTRFIgd2FzIGEgdGhpbmcpIHRoYXQgZGlkIHRoaXMuICBJIGp1
c3QgdXNlZCBpdCBhbmQgZGlkbid0IHJlYWxpemUgdGhhdCBpdCB3YXMgYSBzdXBlci1oZXQsIGFu
ZCB0aGVuIEkgZm9yZ290IGFsbCBhYm91dCBpdCBvbmNlIEkgc3RhcnRlZCB1c2luZyBVU1JQcy4N
Cg0KDQpUaGFua3MuDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCkZyb206
IFN5bHZhaW4gTXVuYXV0IDwyNDZ0bnRAZ21haWwuY29tPg0KU2VudDogV2VkbmVzZGF5LCBKdW5l
IDUsIDIwMTkgMTE6MzEgQU0NClRvOiBKYXNvbiBNYXR1c2lhaw0KQ2M6IFJvYmluIENveGU7IEV0
dHVzIE1haWwgTGlzdA0KU3ViamVjdDogUmU6IFtVU1JQLXVzZXJzXSBvZmZzZXQgdHVuaW5nIG9u
IHRoZSBUd2luUlgNCg0KDQoNCk9uIFdlZCwgSnVuIDUsIDIwMTkgYXQgNDo0MSBQTSBKYXNvbiBN
YXR1c2lhayB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208bWFpbHRv
OnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPj4gd3JvdGU6DQpPSywgdGhhbmtzIGV2ZXJ5b25l
LiAgSSBndWVzcyBJIGhhdmUgc29tZSBzdXBlcmhldCByZWFkaW5nIHVwIHRvIGRvIPCfmYIuDQoN
CkluIGEgbnV0c2hlbGwsIGl0J3MgX2Fsd2F5c18gdXNpbmcgTE8gb2Zmc2V0IDopDQoNClRoZSBS
RiBwYXRoIGFsd2F5cyBicmluZ3MgdGhlIHNpZ25hbCB0byBzb21lIElGICAoMTUwIE1IeiBJSVJD
KSwgdGhlbiB0aGUgRERDIGJsb2NrcyBkbyB0aGUgc2hpZnQgdG8gYmFzZWJhbmQgREMgZGlnaXRh
bGx5Lg0KDQpTbyBpdCdzIHByZXR0eSBtdWNoIGxpa2UgaWYgeW91IGhhZCBzZXQgdGhlIGxvX29m
ZnNldCA9IDE1MCBNSHouDQoNClRoZSBmaW5lciBwb2ludHMgYXJlIDoNCiAtIEl0J3Mgbm90IGRv
aW5nIEkvUSBzYW1wbGluZywgaXQgdXNlcyBvbmUgQURDIGZvciBvbmUgY2hhbm5lbCBhbmQgdGhl
IG90aGVyIGZvciB0aGUgc2Vjb25kIG9uZS4NCiAtIEl0J3MgYWN0dWFsbHkgdXNpbmcgYmFuZC1w
YXNzIHNhbXBsaW5nIHNpbmNlIHRoZSBJRiBpcyBoaWdlciB0aGFuIGZzIC8gMi4NCg0KQnV0IG9m
IGNvdXJzZSB0aGF0IG1lYW5zIHRoZSBoYXJkd2FyZSBEREMgYmxvY2tzIGluIHRoZSBmcGdhIGFy
ZSB1c2VkIGFscmVhZHkgYW5kIHRoYXQncyB3aHkgeW91IGNhbid0IChhbmQgdGhlcmUgd291bGQg
YmUgbm8gcG9pbnQgYW55d2F5KSB0byBhcHBseSBzb21lIHNlY29uZCBsZXZlbCBvZiBsb19vZmZz
ZXQuDQoNCg0KQ2hlZXJzLA0KDQogICAgIFN5bHZhaW4NCg==

--_000_BL0PR12MB234020F8B37615CE70BD7E95AF100BL0PR12MB2340namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPjwhLS0gUCB7bWFyZ2luLXRvcDowO21hcmdpbi1ib3R0b206MDt9IC0t
Pjwvc3R5bGU+DQo8L2hlYWQ+DQo8Ym9keSBkaXI9Imx0ciI+DQo8ZGl2IGlkPSJkaXZ0YWdkZWZh
dWx0d3JhcHBlciIgc3R5bGU9ImZvbnQtc2l6ZToxMnB0O2NvbG9yOiMwMDAwMDA7Zm9udC1mYW1p
bHk6Q2FsaWJyaSxIZWx2ZXRpY2Esc2Fucy1zZXJpZjsiIGRpcj0ibHRyIj4NCjxwIHN0eWxlPSJt
YXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowIj5BIGdvb2Qgd3JpdGUtdXAsIHRoYW5rcyBTdWx2
YWluLjwvcD4NCjxwIHN0eWxlPSJtYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowIj48YnI+DQo8
L3A+DQo8cCBzdHlsZT0ibWFyZ2luLXRvcDowO21hcmdpbi1ib3R0b206MCI+SSBmb3Jnb3QgYWxs
IGFib3V0IGhvdyB0aGV5IGZ1bmN0aW9uZWQuJm5ic3A7IEkgd29ya2VkIG9uIGFuIFNEUiZuYnNw
O3Byb2plY3QgYSBtaWxsaW9uIHllYXJzIGFnbyAoYmVmb3JlIFNEUiB3YXMgYSB0aGluZykgdGhh
dCBkaWQgdGhpcy4mbmJzcDsgSSBqdXN0IHVzZWQgaXQgYW5kIGRpZG4ndCByZWFsaXplIHRoYXQg
aXQgd2FzIGEgc3VwZXItaGV0LCBhbmQgdGhlbiBJIGZvcmdvdCBhbGwgYWJvdXQgaXQNCiBvbmNl
IEkgc3RhcnRlZCB1c2luZyBVU1JQcy48L3A+DQo8cCBzdHlsZT0ibWFyZ2luLXRvcDowO21hcmdp
bi1ib3R0b206MCI+PGJyPg0KPC9wPg0KPHAgc3R5bGU9Im1hcmdpbi10b3A6MDttYXJnaW4tYm90
dG9tOjAiPlRoYW5rcy48L3A+DQo8YnI+DQo8YnI+DQo8ZGl2IHN0eWxlPSJjb2xvcjogcmdiKDAs
IDAsIDApOyI+DQo8aHIgc3R5bGU9ImRpc3BsYXk6aW5saW5lLWJsb2NrO3dpZHRoOjk4JSIgdGFi
aW5kZXg9Ii0xIj4NCjxkaXYgaWQ9ImRpdlJwbHlGd2RNc2ciIGRpcj0ibHRyIj48Zm9udCBmYWNl
PSJDYWxpYnJpLCBzYW5zLXNlcmlmIiBzdHlsZT0iZm9udC1zaXplOjExcHQiIGNvbG9yPSIjMDAw
MDAwIj48Yj5Gcm9tOjwvYj4gU3lsdmFpbiBNdW5hdXQgJmx0OzI0NnRudEBnbWFpbC5jb20mZ3Q7
PGJyPg0KPGI+U2VudDo8L2I+IFdlZG5lc2RheSwgSnVuZSA1LCAyMDE5IDExOjMxIEFNPGJyPg0K
PGI+VG86PC9iPiBKYXNvbiBNYXR1c2lhazxicj4NCjxiPkNjOjwvYj4gUm9iaW4gQ294ZTsgRXR0
dXMgTWFpbCBMaXN0PGJyPg0KPGI+U3ViamVjdDo8L2I+IFJlOiBbVVNSUC11c2Vyc10gb2Zmc2V0
IHR1bmluZyBvbiB0aGUgVHdpblJYPC9mb250Pg0KPGRpdj4mbmJzcDs8L2Rpdj4NCjwvZGl2Pg0K
PGRpdj4NCjxkaXYgZGlyPSJsdHIiPg0KPGRpdiBkaXI9Imx0ciI+PGJyPg0KPC9kaXY+DQo8YnI+
DQo8ZGl2IGNsYXNzPSJ4X2dtYWlsX3F1b3RlIj4NCjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJ4X2dt
YWlsX2F0dHIiPk9uIFdlZCwgSnVuIDUsIDIwMTkgYXQgNDo0MSBQTSBKYXNvbiBNYXR1c2lhayB2
aWEgVVNSUC11c2VycyAmbHQ7PGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tIiBpZD0iTFBsbms4NDE2MDkiIGNsYXNzPSJPV0FBdXRvTGluayIgcHJldmlld3JlbW92ZWQ9
InRydWUiPnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsgd3JvdGU6PGJyPg0KPC9k
aXY+DQo8YmxvY2txdW90ZSBjbGFzcz0ieF9nbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHgg
MHB4IDBweCAwLjhleDsgYm9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7IHBh
ZGRpbmctbGVmdDoxZXgiPg0KPGRpdiBkaXI9Imx0ciI+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWls
eTpDYWxpYnJpLEFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29s
b3I6cmdiKDAsMCwwKSI+DQpPSywgdGhhbmtzJm5ic3A7ZXZlcnlvbmUuJm5ic3A7IEkgZ3Vlc3Mg
SSBoYXZlIHNvbWUgc3VwZXJoZXQgcmVhZGluZyB1cCB0byBkbyA8c3BhbiBpZD0ieF9nbWFpbC1t
XzUwNzIwNjI3MzE4NTk0MTI5Nzfwn5mCIiB0aXRsZT0iOnNsaWdodF9zbWlsZToiPg0K8J+Zgi48
L3NwYW4+PC9kaXY+DQo8L2Rpdj4NCjwvYmxvY2txdW90ZT4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8
ZGl2PkluIGEgbnV0c2hlbGwsIGl0J3MgX2Fsd2F5c18gdXNpbmcgTE8gb2Zmc2V0IDopPC9kaXY+
DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5UaGUgUkYgcGF0aCBhbHdheXMgYnJpbmdzIHRoZSBz
aWduYWwgdG8gc29tZSBJRiZuYnNwOyAoMTUwIE1IeiBJSVJDKSwgdGhlbiB0aGUgRERDIGJsb2Nr
cyBkbyB0aGUgc2hpZnQgdG8gYmFzZWJhbmQgREMgZGlnaXRhbGx5LjwvZGl2Pg0KPGRpdj48YnI+
DQo8L2Rpdj4NCjxkaXY+U28gaXQncyBwcmV0dHkgbXVjaCBsaWtlIGlmIHlvdSBoYWQgc2V0IHRo
ZSBsb19vZmZzZXQgPSAxNTAgTUh6LjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+VGhl
IGZpbmVyIHBvaW50cyBhcmUgOjwvZGl2Pg0KPGRpdj4mbmJzcDstIEl0J3Mgbm90IGRvaW5nIEkv
USBzYW1wbGluZywgaXQgdXNlcyBvbmUgQURDIGZvciBvbmUgY2hhbm5lbCBhbmQgdGhlIG90aGVy
IGZvciB0aGUgc2Vjb25kIG9uZS4mbmJzcDs8L2Rpdj4NCjxkaXY+Jm5ic3A7LSBJdCdzIGFjdHVh
bGx5IHVzaW5nIGJhbmQtcGFzcyBzYW1wbGluZyBzaW5jZSB0aGUgSUYgaXMgaGlnZXIgdGhhbiBm
cyAvIDIuPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5CdXQgb2YgY291cnNlIHRoYXQg
bWVhbnMgdGhlIGhhcmR3YXJlIEREQyBibG9ja3MgaW4gdGhlIGZwZ2EgYXJlIHVzZWQgYWxyZWFk
eSBhbmQgdGhhdCdzIHdoeSB5b3UgY2FuJ3QgKGFuZCB0aGVyZSB3b3VsZCBiZSBubyBwb2ludCBh
bnl3YXkpIHRvIGFwcGx5IHNvbWUgc2Vjb25kIGxldmVsIG9mIGxvX29mZnNldC48L2Rpdj4NCjxk
aXY+PGJyPg0KPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5DaGVlcnMsPC9kaXY+DQo8
ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj4mbmJzcDsgJm5ic3A7ICZuYnNwO1N5bHZhaW4mbmJzcDs8
YnI+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Jv
ZHk+DQo8L2h0bWw+DQo=

--_000_BL0PR12MB234020F8B37615CE70BD7E95AF100BL0PR12MB2340namp_--


--===============6967311198293934385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6967311198293934385==--

