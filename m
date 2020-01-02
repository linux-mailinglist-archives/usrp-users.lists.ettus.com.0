Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7136612E8D5
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2020 17:43:04 +0100 (CET)
Received: from [::1] (port=42544 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1in3Ys-00010A-Nm; Thu, 02 Jan 2020 11:43:02 -0500
Received: from mail-co1nam11on2085.outbound.protection.outlook.com
 ([40.107.220.85]:1889 helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1in3Yo-0000vl-L2
 for usrp-users@lists.ettus.com; Thu, 02 Jan 2020 11:42:58 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QENZ/aBPoauWYvExal9BiElcyP3VNdMLbk+YQZv7oNmeOfPloceLZEvvq822a3CFGCCNa7fMaVsIC2uFF8NDFb4z+DSCxFmSvoZge2oNgaQ+ie/gtRfT/R6in3UUSDIUuhMhjZz/rOB4uY6so1LO8Vp+HzaZQx4mQK+qxQ2r6WDRK7AWIg/oPZNlIdpsbJW7QAPh+ocLOL6+P0uUwhDaykif2iLPEMTTLyNabY3zl+eeQ8QUdWYuJvdM/L9W817d7t3Ak/kQhg523sJAIpod5u64zz5xo2Z7rOnt+K2fSbO/y1D5ABPzHzH6lm3UOYYckROf5exk5YTHPqy/v11WVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5GVUKbiB46B02n9t4En2ZqXCooI04Pv2eKzTQOmP3w8=;
 b=nnFtqXzS5RSU0//cM/TkIgYyEBcHQsBKtSzFHJhBUAZkQoXoguNIR9WZFmOXu4VIZCVi94tXqo4YI3LwKK4jWNSiATNR0Nf/g3rBAX2gxi4/AE958FwhrUGh+MpDM7Vn+OLArDrsF73bBe1U19MdcDj0o0G/+t4W617uzYKuVEh07ym5CoZiTUDrnfJF6gjM/GIl2CtYS1yTNuZq3hZj6oeSdhqCZBE6KZNU4t6NKsVaH2+S/fbU2x3ZzeZQWHQ1E6e/7cVrNzF8VUKmAtvhP3/OmGXLacW0KBcOLGXAU1leJIBvPyAGEdC0MvmQ2jdMnuDSWmnSKyLh3bA+V0RrOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5GVUKbiB46B02n9t4En2ZqXCooI04Pv2eKzTQOmP3w8=;
 b=BQ+3/Qiyets/xn/m1A+Ou/Qgpiun3A67lFGqarRyJF4kspAajwndk6zjivP9NkKZSp/nJ645hRfarS/ezGZkzTqi+STE+Ejw+hrGXQc2OD5WS6fL0kHJApKI1bwlcDFLOdnDL5tHu7hbx3i5tGCItJGfdT/nfdbxIYtFf6Kx8O0=
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com (52.132.151.149) by
 MW2PR1901MB2012.namprd19.prod.outlook.com (52.132.148.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Thu, 2 Jan 2020 16:42:16 +0000
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::c5ee:2e44:f17e:c324]) by MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::c5ee:2e44:f17e:c324%5]) with mapi id 15.20.2581.007; Thu, 2 Jan 2020
 16:42:16 +0000
To: Brian Padalino <bpadalino@gmail.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Building RFNoC image with default blocks fails,
 [DRC MDRV-1] Multiple Driver Nets: Net has multiple drivers
Thread-Index: AQHVvQ8z9YxP/pXUkUmVRC/rVQJ7O6fPVgeAgAO+ysWABIZ1AIAAAQKw
Date: Thu, 2 Jan 2020 16:42:16 +0000
Message-ID: <MW2PR1901MB2137B95238D836E603F9CBB2C6200@MW2PR1901MB2137.namprd19.prod.outlook.com>
References: <MW2PR1901MB2137457D7A0A319B788A4264C62A0@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <758569ee796e2542bd4ecab8262eec008833363b.camel@ettus.com>
 <MW2PR1901MB213725DFFB9B0B5E41DA85EFC6270@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <CAEXYVK7LePWMpkm7-=gHOa-oFH_hOTQAQxVeMnfh9PgzPUWp6A@mail.gmail.com>
In-Reply-To: <CAEXYVK7LePWMpkm7-=gHOa-oFH_hOTQAQxVeMnfh9PgzPUWp6A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jerrid.plymale@canyon-us.com; 
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad71c78e-9b12-46da-a72e-08d78fa2b9de
x-ms-traffictypediagnostic: MW2PR1901MB2012:
x-microsoft-antispam-prvs: <MW2PR1901MB201201FB69736E6015D2351DC6200@MW2PR1901MB2012.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 0270ED2845
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(366004)(39830400003)(396003)(189003)(199004)(110136005)(5660300002)(52536014)(316002)(8936002)(186003)(55016002)(8676002)(44832011)(66446008)(558084003)(508600001)(6506007)(9326002)(81166006)(81156014)(9686003)(26005)(7696005)(71200400001)(86362001)(33656002)(64756008)(76116006)(66946007)(66476007)(66556008)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR1901MB2012;
 H:MW2PR1901MB2137.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: canyon-us.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PEER+j+ul8fR/KTVKdgyFjZWDgchNKd9Ty/VieY5JqQ10sKsvK2mj7bPPnSFqBA16mHv2WMEPb+R0tXEEr+vx0ICgqOhTn4/zdZvFBQRnT40CB1VdiEd5xzXW182Mw10UGYPb7UzD94FfP9oSGGuVSAOy8Fhv7Y6NjmlsgyQdxnRX+EojDViDNupITNvcLnvaLNBjiJHkRqyjXGu0KEqtQEbdqmS88DBI1Hjye/v8dlbrMNO9wXAKob6W1kG5Ys/h0BpCtHP/miIwVk6MmVgfctmaU0YfF6BTwUNcT4Ok0yRnarhjjmtM5ZCM5m4ePAZt47S4h6XW5rRc7QX9O8w/uVM1vmOAz++m0aWmHKJ2kLgqWefLsxRVpDAEjlm6kXIEvp/8k08UMjzSgojEm6qNcWns5cgERarUJ0ISreCPWQwrwzXrPLrnLQSdF7mlySx
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad71c78e-9b12-46da-a72e-08d78fa2b9de
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2020 16:42:16.0715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QapBKKAnQc3Ntfir4FN9YRRUWyF4XzJd6GjfQhH+h3WO/wjqSvjfuAzFigj16tPOfo6P3fIa9uBFfzpmldEkYCZJ+9Isf+HqszhObNPv+pI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR1901MB2012
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
Content-Type: multipart/mixed; boundary="===============0000916213563208117=="
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

--===============0000916213563208117==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW2PR1901MB2137B95238D836E603F9CBB2C6200MW2PR1901MB2137_"

--_000_MW2PR1901MB2137B95238D836E603F9CBB2C6200MW2PR1901MB2137_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gQnJpYW4sDQoNCkkgaGF2ZSBpbnN0YWxsZWQgVUhEIDMuMTUuMC4wLTEyNC1nZWI0NDgw
NDMNCg0KQmVzdCBSZWdhcmRzLA0KDQpKZXJyaWQNCg==

--_000_MW2PR1901MB2137B95238D836E603F9CBB2C6200MW2PR1901MB2137_
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
LXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1zaXplOjEwLjBwdDsNCglmb250LWZhbWlseToiQ2Fs
aWJyaSIsc2Fucy1zZXJpZjt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo4LjVpbiAxMS4w
aW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGluO30NCmRpdi5Xb3JkU2VjdGlvbjEN
Cgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHht
bD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3ht
bD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6
ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBl
bGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iRU4tVVMiIGxp
bms9ImJsdWUiIHZsaW5rPSJwdXJwbGUiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPkhlbGxvIEJyaWFuLDxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5J
IGhhdmUgaW5zdGFsbGVkIFVIRCAzLjE1LjAuMC0xMjQtZ2ViNDQ4MDQzPG86cD48L286cD48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPkJlc3QgUmVnYXJkcyw8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SmVycmlkIDxv
OnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_MW2PR1901MB2137B95238D836E603F9CBB2C6200MW2PR1901MB2137_--


--===============0000916213563208117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0000916213563208117==--

