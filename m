Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B314823DF98
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 19:51:10 +0200 (CEST)
Received: from [::1] (port=53306 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3k2m-0006B2-Fb; Thu, 06 Aug 2020 13:51:08 -0400
Received: from mail-eopbgr760059.outbound.protection.outlook.com
 ([40.107.76.59]:3546 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1k3k2h-000637-JE
 for USRP-users@lists.ettus.com; Thu, 06 Aug 2020 13:51:03 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WHnvS0a0CeZ0FZaA7sHZ/ur6QXMbroN+GyykDOVv9wgTLSC9MHVxSeLros1FxJ3knO0sDrukI8oolt0ZkSAQF8reRGGCXCF/ke0MHXkjQ2/wP4cidJfq40DzcfFncTB0R6BecAYxJf3Q50d8HxXtGM0xfDbUQ1bMNROJ+lRpyjeWCn2Lp+ZGcG/qxaSV+D7TnUM/02KL0HiL5K1c995qy6bH8fRX8exTVxMktG6W0Weze7/xHs45+JG66/lokm7OhnTTy2p4ElZzuOUyQtZ9x8vK1lov1Ez40GLE+bwH4JZOTfTzs2AYPvqf1/HX94wTSjPs6dVp8dmCaptJ9I3YIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UG0ySY5eX9BssRtYATYi454x+3I6nApWgoYzN28GUBo=;
 b=MSufqUxfad/oygrc15mQBnKq8MudBdg0uCLNjYQxK/C74eAOS7SV/s2LeOyNPgoPLRR075/fCUh6pQ7wKeMZYa7Mtscxgaj1grCibc6psCieS1MrRHJGyd5wfvPsnygDByLvglhNZRG1gLaNbPgGL18uJ2tA2DGSCEiGeXlBTqRsEEaCuAm/rp0xaa61/lVZXbBOBKrouopSpA2pV6kcLECXiCr4uGNw5bJnKcEmypCQvCeEXvnPVhEiCarYJA22Sy4YsPs7Wcfzy3Y/P3B/pY+klEqMiPxlcMVeTRjANcyhDFfgFjnZi0yr855No9ouGfdkGgzbFLVBh4fhiDeAeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UG0ySY5eX9BssRtYATYi454x+3I6nApWgoYzN28GUBo=;
 b=cCOYZlVHl8i25kWMGzjJZsLJCPY/WRH9GAcKcbpBC9UMIlpW/1Yc6of/xndBShMMVeL2Lg8BfeWO09dcJGAf03eaQ98/lx8298cVUC56th1TX6hoODT+IX+4e/Zmp6bUcYSgyqTFSnUorJ5HcHn4+vM+H5UL6nh8S6ygSBN2K9M=
Received: from MW3PR19MB4268.namprd19.prod.outlook.com (2603:10b6:303:4f::17)
 by MWHPR19MB0910.namprd19.prod.outlook.com (2603:10b6:300:9c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.18; Thu, 6 Aug
 2020 17:50:20 +0000
Received: from MW3PR19MB4268.namprd19.prod.outlook.com
 ([fe80::d91a:dc76:10a:e643]) by MW3PR19MB4268.namprd19.prod.outlook.com
 ([fe80::d91a:dc76:10a:e643%9]) with mapi id 15.20.3261.015; Thu, 6 Aug 2020
 17:50:20 +0000
To: Marcus D Leech <patchvonbraun@gmail.com>
CC: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: [USRP-users] Signal transmission on a USRP X310
Thread-Index: AQHWbBe66KsuxaU9ckeZYi1/jo+tgqkrV2uw
Date: Thu, 6 Aug 2020 17:50:20 +0000
Message-ID: <MW3PR19MB42688D343319432B7156AE09C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
References: <MW3PR19MB42683E64A27B9B0C0A3D0683C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
 <CA9262F8-E745-4A74-934E-557490486CD4@gmail.com>
In-Reply-To: <CA9262F8-E745-4A74-934E-557490486CD4@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=canyon-us.com;
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5ba240d6-9207-4ed1-335a-08d83a31300d
x-ms-traffictypediagnostic: MWHPR19MB0910:
x-microsoft-antispam-prvs: <MWHPR19MB0910FFF72667E4251D2AB2B7C6480@MWHPR19MB0910.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7yDaU5onC7eOTaK8eQAu7SKbx2W4g5Int273fQkol4oKw3g3NUPu8+6H3k4HdmByQCO/3IvPHZyKpEcWQQRGMsb8iusinHynwjQxEln/oCC7iXR9O/02efMZhSz6XAKala9Pmq+phdpaB9svKuivTZnlDiCqkg+sPMJ8I6H2XyPDluZ3snrslkqxWQaUA7GHTh76FzDjiQ5pxS3jbsoC2rVuUnnAWc5pE43PTpSrATCokR52c61RiM8kVrCsIP0f6rESEndwdaFuLBrjeflzwLRlWHbwTy46eNds87rOYjnMpeOpdVINlvh2BNyMUB0zzPpkg67VGNJKoa3RdwZO99ecxLWcy2tWItDKQRKrmupBfTDJcvHEzX0/WPwoyCMnGwaEg8AowUe2IqRKR7nVQw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR19MB4268.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(39840400004)(366004)(136003)(396003)(376002)(86362001)(966005)(52536014)(6916009)(166002)(7696005)(71200400001)(316002)(26005)(5660300002)(44832011)(8936002)(186003)(2906002)(9686003)(66946007)(508600001)(33656002)(64756008)(76116006)(53546011)(6506007)(55016002)(66446008)(8676002)(4326008)(83380400001)(66556008)(66476007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: nbt8NzVFfV41/XmtIJdfSfpTdKYy/l3ipbSgGVY3DsUPn1FiLXARBz6+Rk+jqU64WT3O1oPs9ffvfslHZlKfJFQUWlWiDGN1EyefSeiETK6K5AOd+DUan9tR1jlrU8DsY5khKDk7IJuPPiw996t8mFI5esZ8savYTP3+PApBrdL52voLp5P+PttzQT+02PubA7i612O9yf3CX3SdqhU+Ii4Adz5OOmnnM59L6SDwi6r07IL8UQJBlodJmpvWq/LVOPsGE72/mzUaDk6OeLTt84gBm2KPRCq3eYAqYvVILY9oXXR4lJoqwHCjqLPkjPiCVqcH0k/tVAow32s6zSLj0fM2AZmnNuOvWYPLgMUva/N3gAO0hQ+slrnrb2huW0YkToDv22KUcv6g7A8i8uuc8teWEzDTn7LW1e6GW8kvjqkgNp98HtyihauYaHHYRl+YWB1Y0uD25BJ5v3Uo5LaZ+oWek+YptsJTNEcklkFEaqoSMdPTbicOvieHmyOd3Od6l2Q9ELupTTtZHYFUY9mX2yXKOf3dPLG+n9XIqw1HYjYyMZ786kb0DI9H/kMuQ/pkpw/IHDdGzNB5P1VOHIbF5utD2McuyZ0yWkU2lm649XZ9OqItgbjmZThISNzYCUte2FXTRquLwXpcZook2TWwfw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR19MB4268.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ba240d6-9207-4ed1-335a-08d83a31300d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2020 17:50:20.6068 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n6koN2QP0fIRbHQfDQ2mfoUYMoPm3USfUIYc6vf7QGXoZ49TSfdl5dOZdRAlMrId7edEbYMNVWqdwG/X6J30tmcZA7SXuW3Kyy/7oMrYgNk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR19MB0910
Subject: Re: [USRP-users] Signal transmission on a USRP X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============3884543819582338149=="
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

--===============3884543819582338149==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW3PR19MB42688D343319432B7156AE09C6480MW3PR19MB4268namp_"

--_000_MW3PR19MB42688D343319432B7156AE09C6480MW3PR19MB4268namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQgZG9lcywgYW5kIGFjdHVhbGx5IGl0IGhhcyBhIHN0cmVuZ3RoIGNsb3NlciB0byAtNzAgZEJt
LCBJIGhhZCBteSBtYXJrZXJzIGluIHRoZSB3cm9uZyBwbGFjZSB3aGVuIEkgdGhvdWdodCB0aGUg
c2lnbmFsIHdhcyBhdCAtMTAwIGRCbS4NCg0KQmVzdCBSZWdhcmRzLA0KDQpKZXJyaWQgUGx5bWFs
ZQ0KDQpGcm9tOiBNYXJjdXMgRCBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+DQpTZW50
OiBUaHVyc2RheSwgQXVndXN0IDYsIDIwMjAgMTA6MzQgQU0NClRvOiBKZXJyaWQgUGx5bWFsZSA8
amVycmlkLnBseW1hbGVAY2FueW9uLXVzLmNvbT4NCkNjOiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQ0KU3ViamVjdDogUmU6IFtVU1JQLXVzZXJzXSBTaWduYWwgdHJhbnNtaXNzaW9uIG9uIGEg
VVNSUCBYMzEwDQoNCkRvZXMgdGhlIHNwdXIgZm9sbG93IHRoZSB0dW5lZCBmcmVxdWVuY3k/DQpT
ZW50IGZyb20gbXkgaVBob25lDQoNCg0KT24gQXVnIDYsIDIwMjAsIGF0IDE6MTIgUE0sIEplcnJp
ZCBQbHltYWxlIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWls
dG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+PiB3cm90ZToNCu+7vw0KTWFyY3VzLA0KDQpP
ayB0aGF0IG1ha2VzIHNlbnNlLCBJIHRob3VnaHQgaXQgbWlnaHQgYmUgc29tZXRoaW5nIHRvIGRv
IHdpdGggdGhlIG1peGVycyBhbmQgbGVha2FnZSwgYnV0IEkgd2FzbuKAmXQgc3VyZS4gU28gSSBo
YXZlIHRyaWVkIGxvd2VyaW5nIHRoZSBnYWluIHRvIDAgZEIsIGFuZCB0aGVyZSBpcyBubyBjaGFu
Z2UgaW4gdGhlIHNpZ25hbC4gVGhlIHNpZ25hbCBkb2VzIGNhdXNlIHByb2JsZW1zIGFzIEkgYW0g
d29ya2luZyBvbiBhIEdQUyByZWxhdGVkIGFwcGxpY2F0aW9uLCBzbyBldmVuIHRob3VnaCAtMTAw
IGRCbSBpcyBhIHdlZWsgc2lnbmFsLCBpdHMgc3RpbGwgc3Ryb25nZXIgdGhhbiBHUFMuIEFyZSB0
aGVyZSBhbnkgb3B0aW9ucyBvdGhlciB0aGFuIHByZS1maWx0ZXJpbmcgdGhlIHJlY2VpdmVkIHNp
Z25hbCB0byBtaXRpZ2F0ZSB0aGUgdW5kZXNpcmVkIHNpZ25hbCBhcm91bmQgYmFzZWJhbmQ/IElz
IHRoZXJlIGEgd2F5IHVzaW5nIGhhcmR3YXJlIEkgY2FuIHJlZHVjZSBsZWFrYWdlIGF0IHRoZSB0
ZXJtaW5hbD8NCg0KQmVzdCByZWdhcmRzLA0KDQpKZXJyaWQgUGx5bWFsZQ0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0DQpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20+DQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11
c2Vyc19saXN0cy5ldHR1cy5jb20NCg==

--_000_MW3PR19MB42688D343319432B7156AE09C6480MW3PR19MB4268namp_
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
cjojMDU2M0MxOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KLk1zb0NocERlZmF1bHQN
Cgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1zaXplOjEwLjBwdDt9DQpAcGFn
ZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGlu
IDEuMGluIDEuMGluO30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0K
LS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpl
eHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0
ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6
ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0t
Pg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iRU4tVVMiIGxpbms9IiMwNTYzQzEiIHZsaW5rPSIjOTU0
RjcyIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5J
dCBkb2VzLCBhbmQgYWN0dWFsbHkgaXQgaGFzIGEgc3RyZW5ndGggY2xvc2VyIHRvIC03MCBkQm0s
IEkgaGFkIG15IG1hcmtlcnMgaW4gdGhlIHdyb25nIHBsYWNlIHdoZW4gSSB0aG91Z2h0IHRoZSBz
aWduYWwgd2FzIGF0IC0xMDAgZEJtLg0KPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkJlc3QgUmVn
YXJkcyw8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9v
OnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SmVycmlkIFBseW1hbGU8bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxk
aXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci10b3A6c29saWQgI0UxRTFFMSAxLjBwdDtwYWRk
aW5nOjMuMHB0IDBpbiAwaW4gMGluIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPkZyb206PC9i
PiBNYXJjdXMgRCBMZWVjaCAmbHQ7cGF0Y2h2b25icmF1bkBnbWFpbC5jb20mZ3Q7IDxicj4NCjxi
PlNlbnQ6PC9iPiBUaHVyc2RheSwgQXVndXN0IDYsIDIwMjAgMTA6MzQgQU08YnI+DQo8Yj5Ubzo8
L2I+IEplcnJpZCBQbHltYWxlICZsdDtqZXJyaWQucGx5bWFsZUBjYW55b24tdXMuY29tJmd0Ozxi
cj4NCjxiPkNjOjwvYj4gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208YnI+DQo8Yj5TdWJqZWN0
OjwvYj4gUmU6IFtVU1JQLXVzZXJzXSBTaWduYWwgdHJhbnNtaXNzaW9uIG9uIGEgVVNSUCBYMzEw
PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86
cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibWFyZ2luLWJv
dHRvbToxMi4wcHQiPkRvZXMgdGhlIHNwdXIgZm9sbG93IHRoZSB0dW5lZCBmcmVxdWVuY3k/PG86
cD48L286cD48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+U2VudCBmcm9tIG15IGlQ
aG9uZTxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PGJyPg0KPGJyPg0KPG86cD48L286cD48L3A+DQo8YmxvY2txdW90ZSBzdHlsZT0ibWFyZ2luLXRv
cDo1LjBwdDttYXJnaW4tYm90dG9tOjUuMHB0Ij4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxl
PSJtYXJnaW4tYm90dG9tOjEyLjBwdCI+T24gQXVnIDYsIDIwMjAsIGF0IDE6MTIgUE0sIEplcnJp
ZCBQbHltYWxlIHZpYSBVU1JQLXVzZXJzICZsdDs8YSBocmVmPSJtYWlsdG86dXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20iPnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsgd3JvdGU6
PG86cD48L286cD48L3A+DQo8L2Jsb2NrcXVvdGU+DQo8L2Rpdj4NCjxibG9ja3F1b3RlIHN0eWxl
PSJtYXJnaW4tdG9wOjUuMHB0O21hcmdpbi1ib3R0b206NS4wcHQiPg0KPGRpdj4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPu+7vyA8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPk1h
cmN1cyw8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPiZuYnNwOzxvOnA+PC9v
OnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+T2sgdGhhdCBtYWtlcyBzZW5zZSwgSSB0aG91
Z2h0IGl0IG1pZ2h0IGJlIHNvbWV0aGluZyB0byBkbyB3aXRoIHRoZSBtaXhlcnMgYW5kIGxlYWth
Z2UsIGJ1dCBJIHdhc27igJl0IHN1cmUuIFNvIEkgaGF2ZSB0cmllZCBsb3dlcmluZyB0aGUgZ2Fp
biB0byAwIGRCLCBhbmQgdGhlcmUgaXMgbm8gY2hhbmdlIGluIHRoZSBzaWduYWwuIFRoZSBzaWdu
YWwgZG9lcyBjYXVzZSBwcm9ibGVtcyBhcyBJIGFtIHdvcmtpbmcgb24NCiBhIEdQUyByZWxhdGVk
IGFwcGxpY2F0aW9uLCBzbyBldmVuIHRob3VnaCAtMTAwIGRCbSBpcyBhIHdlZWsgc2lnbmFsLCBp
dHMgc3RpbGwgc3Ryb25nZXIgdGhhbiBHUFMuIEFyZSB0aGVyZSBhbnkgb3B0aW9ucyBvdGhlciB0
aGFuIHByZS1maWx0ZXJpbmcgdGhlIHJlY2VpdmVkIHNpZ25hbCB0byBtaXRpZ2F0ZSB0aGUgdW5k
ZXNpcmVkIHNpZ25hbCBhcm91bmQgYmFzZWJhbmQ/IElzIHRoZXJlIGEgd2F5IHVzaW5nIGhhcmR3
YXJlIEkgY2FuIHJlZHVjZQ0KIGxlYWthZ2UgYXQgdGhlIHRlcm1pbmFsPzxvOnA+PC9vOnA+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+Jm5ic3A7PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj5CZXN0IHJlZ2FyZHMsPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj4mbmJzcDs8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkplcnJpZCBQ
bHltYWxlPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzxicj4NClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0PGJyPg0KPGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIj5V
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQo8YSBocmVmPSJodHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20iPmh0
dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0
dHVzLmNvbTwvYT48bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPC9kaXY+
DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_MW3PR19MB42688D343319432B7156AE09C6480MW3PR19MB4268namp_--


--===============3884543819582338149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3884543819582338149==--

