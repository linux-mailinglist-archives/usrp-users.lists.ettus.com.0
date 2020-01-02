Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9E312E8EC
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2020 17:49:11 +0100 (CET)
Received: from [::1] (port=45880 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1in3en-0001dy-W6; Thu, 02 Jan 2020 11:49:09 -0500
Received: from mail-mw2nam10on2045.outbound.protection.outlook.com
 ([40.107.94.45]:6193 helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1in3ej-0001Yd-Lt
 for usrp-users@lists.ettus.com; Thu, 02 Jan 2020 11:49:05 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y3wbXO8nI4YH9m5znEwpMjVftRYZnRORgXuCiM9NoJKTOec1lYjD3M33ncpi8taEbupOnuOIz16ta7vuzF0aLyOHc4N/B6PFp6hqhPHX/Ir+lGe+IiHjqwlyrndmHeLdMG4ca078FfCsWWsR4KL9b+sLkde9RYwTaoWcgObfgnTrRiZXeHFBolaih6GzI/yNAkW+k1cu/YiW5Y89zmRizmPL6/DLjwmO7BpTrthQIOSEdjKTTqU/IddupkT4o4sXQ2UxMS6X8CJSZFqSTYvVvmWl9OWXcn7wi2fa1bEi4V+/sW4WrGkyeXL7wVrkX6fa/IOoGOAvFfTCkdXE1Y9wZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TvTFshUnxT/7fxEaSrNyp3ehse0D2YeXcvzEMt0GJaQ=;
 b=BOHnJeb4AT/T/S6d4RFQx8KAIgMrrfAisvgF1bNDRuyQLp5edSDLAnenHMb9n1Bo0K+C5MAjjTFO1nLsBmyFLQXn3Ls7temSoDVEefBaUNMsIOPAHuGW063xce+Uvpg1Nkq9J1pcO8aaRyVo5aCBwI648FRvFEhTfgriNQomcCdzPJUhp6iqNtwPQxu3s3a13RvNBKMLGLFnSNjy3euUGAFX7IofLVrGxM0Sn044EfU6EeJUDWWhWQzlCL9A9Fp/ymOEYc+j5x2ZUYkr4VWrHJq3w7d7ngEnsueSxcTiENbrylmuDJRuYbg6AQkvrHHQLr0ZXQPeOOhrxaOljfltzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TvTFshUnxT/7fxEaSrNyp3ehse0D2YeXcvzEMt0GJaQ=;
 b=R1m1Azy1NjttX0hi9VGsuCSpIRn/Q8Z9SjG5VhbYyNIspQ/YeWkxY/XDT8rPu0Q72LprK2Bvlr35oGTjJHE059FRttsG6+b2x0Pu3zWPhO4y/8tZlF9r3FK4/FvEXD6OYEZ1iEVnmor6X9HKqtHbo3PEgySR078Q1OEmgcXwEug=
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com (52.132.151.149) by
 MW2PR1901MB2171.namprd19.prod.outlook.com (52.132.150.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Thu, 2 Jan 2020 16:48:22 +0000
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::c5ee:2e44:f17e:c324]) by MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::c5ee:2e44:f17e:c324%5]) with mapi id 15.20.2581.007; Thu, 2 Jan 2020
 16:48:22 +0000
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [USRP-users] Building RFNoC image with default blocks fails,
 [DRC MDRV-1] Multiple Driver Nets: Net has multiple drivers
Thread-Index: AQHVvQ8z9YxP/pXUkUmVRC/rVQJ7O6fPVgeAgAO+ysWABIZ1AIAAAQKwgAABQoCAAABF0A==
Date: Thu, 2 Jan 2020 16:48:22 +0000
Message-ID: <MW2PR1901MB21377D89A41FDE1BB0DE1A15C6200@MW2PR1901MB2137.namprd19.prod.outlook.com>
References: <MW2PR1901MB2137457D7A0A319B788A4264C62A0@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <758569ee796e2542bd4ecab8262eec008833363b.camel@ettus.com>
 <MW2PR1901MB213725DFFB9B0B5E41DA85EFC6270@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <CAEXYVK7LePWMpkm7-=gHOa-oFH_hOTQAQxVeMnfh9PgzPUWp6A@mail.gmail.com>
 <MW2PR1901MB2137B95238D836E603F9CBB2C6200@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <CAEXYVK6n3NroyojeqbZkZ2KeXOE-DQz48od0z=CtdAoEjzPwOg@mail.gmail.com>
In-Reply-To: <CAEXYVK6n3NroyojeqbZkZ2KeXOE-DQz48od0z=CtdAoEjzPwOg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jerrid.plymale@canyon-us.com; 
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63f5945b-3133-4af5-b16c-08d78fa3946e
x-ms-traffictypediagnostic: MW2PR1901MB2171:
x-microsoft-antispam-prvs: <MW2PR1901MB2171D9FA5DFE8450887CDB25C6200@MW2PR1901MB2171.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:792;
x-forefront-prvs: 0270ED2845
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(136003)(346002)(39830400003)(199004)(189003)(508600001)(26005)(76116006)(86362001)(66946007)(316002)(186003)(8676002)(71200400001)(33656002)(2906002)(4744005)(81166006)(81156014)(8936002)(44832011)(5660300002)(52536014)(53546011)(4326008)(7696005)(64756008)(66476007)(6506007)(66446008)(66556008)(9686003)(6916009)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR1901MB2171;
 H:MW2PR1901MB2137.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: canyon-us.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ll1F8gy89zfc99L1rkxzqivBgvwpqyQzRGoFGbHP+c6E06S2ZnOoZ9sDP/IbQHELGtkIz8DQ3o/EEXD+bWtIkLnvfW9KTBTy5iGrE9rLyc2vy1zNnK9J/0QFK7GaitxOt44p66/G4jibVtA7rlO16Q8WrLWEnGvhW1wkV5DnTueZXJYuPh9rqCjEc821gEx64Nw8kNPGJODYjkGidEXIN6FtV5ddbedvamHv5j2oQgS/OmMmvl3UvJrc3D/mjLIX7Q6q+vdmBrI6CgBxLp/88auD4Oact86T9Y2QOE2omKIJbDQynATp8F0n+KL3h+3NckvWTvy9Ym+H/oo7jllFCQCUXqNGwNOKBS8myzJY8KELZX+mo+COb9duy5QSrZCUqc4RAaVwCXps+T4qkdo2knAPTWnh2ZECWecB67WBar4ygzIEzPc/wiD4mcqZO2Py
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63f5945b-3133-4af5-b16c-08d78fa3946e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2020 16:48:22.7389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BRkwwEJZ4hm4Yczi1+68VK8oHjEOOoPrWkB4bzA0QH580ohSdq0HhMZvyuceKbEd71uCpcknhrBWEIKxY0g1xdkvypz8JUwXmWOW/qMg9TY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR1901MB2171
Subject: Re: [USRP-users] Building RFNoC image with default blocks fails,
 [DRC MDRV-1] Multiple Driver Nets: Net has multiple drivers
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jerrid Plymale via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6872090637235847170=="
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

--===============6872090637235847170==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW2PR1901MB21377D89A41FDE1BB0DE1A15C6200MW2PR1901MB2137_"

--_000_MW2PR1901MB21377D89A41FDE1BB0DE1A15C6200MW2PR1901MB2137_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBhbSB0cnlpbmcgdG8gZ2VuZXJhdGUgYSBjdXN0b20gUkZOb0MgRlBHQSBJbWFnZSB1c2luZyB0
aGlzIHZlcnNpb24gb2YgVUhELg0KDQpCZXN0IFJlZ2FyZHMsDQoNCkplcnJpZA0KDQpGcm9tOiBC
cmlhbiBQYWRhbGlubyA8YnBhZGFsaW5vQGdtYWlsLmNvbT4NClNlbnQ6IFRodXJzZGF5LCBKYW51
YXJ5IDIsIDIwMjAgODo0NCBBTQ0KVG86IEplcnJpZCBQbHltYWxlIDxqZXJyaWQucGx5bWFsZUBj
YW55b24tdXMuY29tPg0KQ2M6IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQpTdWJqZWN0OiBS
ZTogW1VTUlAtdXNlcnNdIEJ1aWxkaW5nIFJGTm9DIGltYWdlIHdpdGggZGVmYXVsdCBibG9ja3Mg
ZmFpbHMsIFtEUkMgTURSVi0xXSBNdWx0aXBsZSBEcml2ZXIgTmV0czogTmV0IGhhcyBtdWx0aXBs
ZSBkcml2ZXJzDQoNCk9uIFRodSwgSmFuIDIsIDIwMjAgYXQgMTE6NDIgQU0gSmVycmlkIFBseW1h
bGUgPGplcnJpZC5wbHltYWxlQGNhbnlvbi11cy5jb208bWFpbHRvOmplcnJpZC5wbHltYWxlQGNh
bnlvbi11cy5jb20+PiB3cm90ZToNCkhlbGxvIEJyaWFuLA0KDQpJIGhhdmUgaW5zdGFsbGVkIFVI
RCAzLjE1LjAuMC0xMjQtZ2ViNDQ4MDQzDQoNCkFuZCB0aGlzIGlzIHdoYXQgeW91J3JlIHRyeWlu
ZyB0byBidWlsZD8NCg0KQnJpYW4NCg==

--_000_MW2PR1901MB21377D89A41FDE1BB0DE1A15C6200MW2PR1901MB2137_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQph
OmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xv
cjpibHVlOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFuLk1z
b0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpwdXJw
bGU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpwLm1zb25vcm1hbDAsIGxpLm1zb25v
cm1hbDAsIGRpdi5tc29ub3JtYWwwDQoJe21zby1zdHlsZS1uYW1lOm1zb25vcm1hbDsNCgltc28t
bWFyZ2luLXRvcC1hbHQ6YXV0bzsNCgltYXJnaW4tcmlnaHQ6MGluOw0KCW1zby1tYXJnaW4tYm90
dG9tLWFsdDphdXRvOw0KCW1hcmdpbi1sZWZ0OjBpbjsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZv
bnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCnNwYW4uRW1haWxTdHlsZTE4DQoJe21z
by1zdHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5z
LXNlcmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxl
LXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0K
QHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBpbiAx
LjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24x
O30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRz
IHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtp
ZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1h
cCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRp
Zl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSJibHVlIiB2bGluaz0icHVy
cGxlIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5J
IGFtIHRyeWluZyB0byBnZW5lcmF0ZSBhIGN1c3RvbSBSRk5vQyBGUEdBIEltYWdlIHVzaW5nIHRo
aXMgdmVyc2lvbiBvZiBVSEQuPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkJlc3QgUmVnYXJkcyw8
bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SmVycmlkPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxi
PkZyb206PC9iPiBCcmlhbiBQYWRhbGlubyAmbHQ7YnBhZGFsaW5vQGdtYWlsLmNvbSZndDsgPGJy
Pg0KPGI+U2VudDo8L2I+IFRodXJzZGF5LCBKYW51YXJ5IDIsIDIwMjAgODo0NCBBTTxicj4NCjxi
PlRvOjwvYj4gSmVycmlkIFBseW1hbGUgJmx0O2plcnJpZC5wbHltYWxlQGNhbnlvbi11cy5jb20m
Z3Q7PGJyPg0KPGI+Q2M6PC9iPiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxicj4NCjxiPlN1
YmplY3Q6PC9iPiBSZTogW1VTUlAtdXNlcnNdIEJ1aWxkaW5nIFJGTm9DIGltYWdlIHdpdGggZGVm
YXVsdCBibG9ja3MgZmFpbHMsIFtEUkMgTURSVi0xXSBNdWx0aXBsZSBEcml2ZXIgTmV0czogTmV0
IGhhcyBtdWx0aXBsZSBkcml2ZXJzPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+T24gVGh1LCBKYW4gMiwgMjAyMCBhdCAxMTo0MiBBTSBKZXJyaWQgUGx5bWFsZSAmbHQ7PGEg
aHJlZj0ibWFpbHRvOmplcnJpZC5wbHltYWxlQGNhbnlvbi11cy5jb20iPmplcnJpZC5wbHltYWxl
QGNhbnlvbi11cy5jb208L2E+Jmd0OyB3cm90ZTo8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRp
dj4NCjxibG9ja3F1b3RlIHN0eWxlPSJib3JkZXI6bm9uZTtib3JkZXItbGVmdDpzb2xpZCAjQ0ND
Q0NDIDEuMHB0O3BhZGRpbmc6MGluIDBpbiAwaW4gNi4wcHQ7bWFyZ2luLWxlZnQ6NC44cHQ7bWFy
Z2luLXJpZ2h0OjBpbiI+DQo8ZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxl
PSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0byI+SGVs
bG8gQnJpYW4sPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibXNv
LW1hcmdpbi10b3AtYWx0OmF1dG87bXNvLW1hcmdpbi1ib3R0b20tYWx0OmF1dG8iPiZuYnNwOzxv
OnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1zby1tYXJnaW4tdG9w
LWFsdDphdXRvO21zby1tYXJnaW4tYm90dG9tLWFsdDphdXRvIj5JIGhhdmUgaW5zdGFsbGVkIFVI
RCAzLjE1LjAuMC0xMjQtZ2ViNDQ4MDQzPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0K
PC9ibG9ja3F1b3RlPg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9v
OnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+QW5kIHRoaXMgaXMg
d2hhdCB5b3UncmUgdHJ5aW5nIHRvIGJ1aWxkPzxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxk
aXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5CcmlhbjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8
L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_MW2PR1901MB21377D89A41FDE1BB0DE1A15C6200MW2PR1901MB2137_--


--===============6872090637235847170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6872090637235847170==--

