Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D33712DAE5
	for <lists+usrp-users@lfdr.de>; Tue, 31 Dec 2019 19:16:55 +0100 (CET)
Received: from [::1] (port=47882 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1imM4W-0002gb-Ei; Tue, 31 Dec 2019 13:16:48 -0500
Received: from email3-east.aero.org ([130.221.184.167]:19873)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <prvs=261699141=kyle.a.logue@aero.org>)
 id 1imM4S-0002OZ-Fh
 for usrp-users@lists.ettus.com; Tue, 31 Dec 2019 13:16:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
 t=1577816204; x=1609352204;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=GX/T4FgkZuk7OURM389P5PfNRjco8BYNmhTEoBt8I9Y=;
 b=yVg4oowDEpbACENfjw/VVEJy7aUOPqJbQPLIoXywssJ8EjiOArdXM818
 dLTYhI+nyxB3IlGxJWyDkt8xj10Ql73KcDZR1EadKIn7EXreIGcBPr1xz
 RLKpSBXTrLBJRXuAu+ljsN+wuOa6VSy/xHT4xA8HrDqcAo/bsr/UrzV9g k=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6000,8403,9487"; a="1478437"
X-IronPort-AV: E=Sophos;i="5.69,380,1571727600"; d="scan'208,217";a="1478437"
IronPort-PHdr: =?us-ascii?q?9a23=3AQJAqeBFkGI/0P/dXGn1vc51GYnJ96bzpIg4Y7I?=
 =?us-ascii?q?YmgLtSc6Oluo7vJ1Hb+e4z0A3SRYuO7fVChqKWqK3mVWEaqbe5+HEZON0pNV?=
 =?us-ascii?q?cejNkO2QkpAcqLE0r+ef37ayF8FYJGU1B48lmyPFJSXsHkaA6arw=3D=3D?=
X-IPAS-Result: =?us-ascii?q?A2ErAABrjwteh2dBL2hlHAEBAQEBBwEBEQEEBAEBgWgHA?=
 =?us-ascii?q?QELAYEkAS5QgQBmAwQLKgqDf4NGA4RaYIVDeX1pkymGD4EkAxgvDQkBAQEBA?=
 =?us-ascii?q?QEBAQEHARgBFAIBAQKBSoJ0AheBdzQJDgIDDQEBAQQBAQEBAQUDAQICEAEBA?=
 =?us-ascii?q?QgNCQgphT4BC4NOOTgBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEFAoEMPQEBAQEDARERHQEBOA8CAQgEDQQBASsCAgImCh0IAgQTCBqDA?=
 =?us-ascii?q?IF6TQMuAQKibgKBOIhgAQF0gTKCfgEBBYUGGFiBNAmBNgGNFoEcgRFHgkw+h?=
 =?us-ascii?q?EsGD4J5MoIsjXuCQoVXP5hEB4I3kEyFaJpXjlKaVgIEAgQFAg4BAQWBUniBG?=
 =?us-ascii?q?k0wgkdoUBgNjRINDQmDUIpTQzGBKI1xAYEPAQE?=
Received: from mail-dm3gcc02lp2103.outbound.protection.outlook.com (HELO
 GCC02-DM3-obe.outbound.protection.outlook.com) ([104.47.65.103])
 by email3-east.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 10:16:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m3ATPfVHRzaZ28mWI/TPUxtzJjkrVVjWk94rS48XHm3IEhFw9zs6bPoFpzSXejJeWkxmmhAm81V6pOvvy+5YXzRCwDHfRNauDp4yr148VJYXAxzosAp9bPZvanoSckVOHU6+jlzd2cQnO9RNxG7qEHyXCxsEur2eTguFv7hRxNvehbHVHw2IySYQBkNjcbDs5FM6cpPv/eph4XA+cs6Vrj5nqDjC6IEkC/VxrSsR7bKli4UYMvl8U+snbEYbGd8xNySoJXxKFmYdt8xWh1nN8df31xbt0XXnDTbsFC6y6/Imn9MOdk/xvfXtPqoUg37JeaXnHVgtZRNgushlWAxR5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GX/T4FgkZuk7OURM389P5PfNRjco8BYNmhTEoBt8I9Y=;
 b=LEliAutFVS5iQrnUcZXmwBYcoUzljJSrukeTF9e/z0orBEinuvSh3gjVrtqRD9m8hVVCOaZHGUU0KAwf4KEDdOLaEIMvuDrEhX32ZHAYIBepE8P3v0TZFvaOzv3gKDyvljLzwshuN6ns5bh7eapcwbKEj6xH4muXHCCpzRkG4UoI5UbbwDKC0d9AscRgApa+6nmV+XUXPuijCXyg2BxgT2U1BkwbapZZL6i+x62Nzvb902Ld76E2XxyKLUC6WaYNM9y95ceftCGx4+BsColkR1mPH4mlaD3qQS5reWbOdxfc3eRRJmmD06ZOOIYreVKEORCdZP1wow809P42/QzeXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GX/T4FgkZuk7OURM389P5PfNRjco8BYNmhTEoBt8I9Y=;
 b=xfb9Zo8hYuKNrngcu8A33J3m5X/alXidv4KvgBlRLJmBWVa+s4ameeprnouYIhBWnZa1SPDL0ClqTS5OIRk3vn859FaMVdi7qKLS+kaUb4PMPg0/S58ehGpaV2TkUogPKLRPIk6F8JVrWD1fF84TUSXltrIJlNaiB0Q993wNfDw=
Received: from BYAPR09MB3318.namprd09.prod.outlook.com (20.179.56.16) by
 BYAPR09MB2615.namprd09.prod.outlook.com (52.135.226.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11; Tue, 31 Dec 2019 18:16:00 +0000
Received: from BYAPR09MB3318.namprd09.prod.outlook.com
 ([fe80::d867:168a:2e94:1f6d]) by BYAPR09MB3318.namprd09.prod.outlook.com
 ([fe80::d867:168a:2e94:1f6d%5]) with mapi id 15.20.2581.007; Tue, 31 Dec 2019
 18:16:00 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] E320 Auto-Booting function not working?
Thread-Index: AQHVBJOUQ3A+1YLBrk2g2oI0T7I3JafWAwMe
Date: Tue, 31 Dec 2019 18:16:00 +0000
Message-ID: <BYAPR09MB331838CEAA139F8CE6838F77B9260@BYAPR09MB3318.namprd09.prod.outlook.com>
References: <CAG_kd15s77ODO84U83rUwRit-Q_cpi2kw+3ouGRDGFsa_neFkA@mail.gmail.com>,
 <BYAPR09MB331813D85FED66A63173847DB9270@BYAPR09MB3318.namprd09.prod.outlook.com>
In-Reply-To: <BYAPR09MB331813D85FED66A63173847DB9270@BYAPR09MB3318.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kyle.a.logue@aero.org; 
x-originating-ip: [130.221.224.7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1f1cdcf2-920b-4ce4-9fa8-08d78e1d7d87
x-ms-traffictypediagnostic: BYAPR09MB2615:
x-microsoft-antispam-prvs: <BYAPR09MB261588D2230B817CF10FFAA0B9260@BYAPR09MB2615.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0268246AE7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(136003)(39850400004)(396003)(346002)(189003)(199004)(6506007)(33656002)(81156014)(5660300002)(53546011)(316002)(52536014)(86362001)(71200400001)(81166006)(2906002)(8676002)(9686003)(186003)(26005)(8936002)(55016002)(76116006)(7696005)(6916009)(19627405001)(66446008)(478600001)(66946007)(4744005)(91956017)(64756008)(66556008)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR09MB2615;
 H:BYAPR09MB3318.namprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2nJCwjWttYbpvcq+xoAS21T3etaZAvQT8QsN6UDC8ebW1qOa8CngtXVNNOyfdZLVGk5LTQIMarsKvcZaaTdsttZHpB9/aXiKj3mUayZ8APdke0EjeSvF4sGYBlhYPnlUvvTHVFKDEImZ9EcoSYHEX8sZhxw1LGSzJIFSZMduY4f0klMc4ts1vwBNIZJuerGWQCfoj1CIidShCwjujJeJA2slwGjKyK5tUVo+0nL6j9I/innM+Dgy5s9nQEoKa36slkMxhkjyZomEjhoNWSGciXc8EwYJE8s7tkqTyXEyUaSf1XOvO5NwuBzEDSDV23D+mWl0s6yxQ25VXjJ+YDWMn+fraMnf/9ccl4D8tLpImczrdPcWt8k4pU/TH9PyM/9NGdaCi/WMEahkI5RKLhaAg+ju4JRtF+TLVeClOqZ0JI7t3sOSxLBZqUmyPwgUYNV8
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f1cdcf2-920b-4ce4-9fa8-08d78e1d7d87
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Dec 2019 18:16:00.5231 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U1cZVfBYPcgUJNuUYX7YGtTyjwLxlAVjLsnDRI2m8glv5Sek3NQknhkm4OB2hECW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR09MB2615
Subject: Re: [USRP-users] E320 Auto-Booting function not working?
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
From: Kyle A Logue via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Kyle A Logue <kyle.a.logue@aero.org>
Content-Type: multipart/mixed; boundary="===============4851812664460600898=="
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

--===============4851812664460600898==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR09MB331838CEAA139F8CE6838F77B9260BYAPR09MB3318namp_"

--_000_BYAPR09MB331838CEAA139F8CE6838F77B9260BYAPR09MB3318namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIHVoZCAzLjE1IGltYWdlIGFsc28gZG9lcyBub3Qgd29yayB3aXRoIGF1dG9ib290IHJpZ2h0
IG5vdy4NCiQgY2F0IC9ldGMvbWVuZGVyL2FydGlmYWN0X2luZm8NCmFydGlmYWN0X25hbWU9ZTMy
MF8zLjE1LXRodWQtdXBkYXRlX2RlZmF1bHRfZTMyMA0KJCBtZDVzdW0gdXNycF9lMzIwX2ZzLm1l
bmRlcg0KZWVjMzIwN2M0ZDhmMjIyMWMxZDNjZTFhZmU2ZGIwYmEgdXNycF9lMzIwX2ZzLm1lbmRl
cg0KDQpLeWxlDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KRnJvbTogS3lsZSBB
IExvZ3VlDQpTZW50OiBNb25kYXksIERlY2VtYmVyIDMwLCAyMDE5IDExOjE4DQpUbzogdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20gPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KU3ViamVj
dDogUmU6IFtVU1JQLXVzZXJzXSBFMzIwIEF1dG8tQm9vdGluZyBmdW5jdGlvbiBub3Qgd29ya2lu
Zz8NCg0KDQpBcyBvZiB0b2RheSB0aGUgRTMyMCBtZW5kZXIgaW1hZ2Ugc3RpbGwgc2VlbXMgdG8g
bm90IGF1dG9ib290IGNvcnJlY3RseSBhZnRlciBzZWV0aW5nIEVFUFJPTS4gSSBjYW4gY29uZmly
bSBpdCBzZXRzIHRoZSBiaXQgY29ycmVjdGx5Lg0KDQokIG1kNXN1bSB1c3JwX2UzMjBfZnMubWVu
ZGVyDQpmOGUxOGEwNjY3MDEyNTk0MzA5MTAyNDI1MjdjY2NjOCAgdXNycF9lMzIwX2ZzLm1lbmRl
cg0KDQpLeWxlIExvZ3VlDQpFbmdpbmVlcmluZyBNYW5hZ2VyIOKanSBDb21tIFNvZnR3YXJlIElt
cGxlbWVudGF0aW9uIERlcHQNClRoZSBBZXJvc3BhY2UgQ29ycG9yYXRpb24NCg==

--_000_BYAPR09MB331838CEAA139F8CE6838F77B9260BYAPR09MB3318namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNv
bG9yOiByZ2IoMCwgMCwgMCk7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNTUsIDI1NSwgMjU1KTsi
Pg0KVGhlIHVoZCAzLjE1IGltYWdlIGFsc28gZG9lcyBub3Qgd29yayB3aXRoIGF1dG9ib290IHJp
Z2h0IG5vdy48L2Rpdj4NCjxibG9ja3F1b3RlIHN0eWxlPSJtYXJnaW4tdG9wOiAwcHg7IG1hcmdp
bi1ib3R0b206IDBweDsiPg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmksIEFyaWFs
LCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAw
LCAwKTsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI1NSwgMjU1LCAyNTUpOyI+DQokIGNhdCAvZXRj
L21lbmRlci9hcnRpZmFjdF9pbmZvPGJyPg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWls
eTogQ2FsaWJyaSwgQXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMnB0
OyBjb2xvcjogcmdiKDAsIDAsIDApOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjU1LCAyNTUsIDI1
NSk7Ij4NCmFydGlmYWN0X25hbWU9ZTMyMF8zLjE1LXRodWQtdXBkYXRlX2RlZmF1bHRfZTMyMDwv
ZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2Es
IHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsgYmFja2dy
b3VuZC1jb2xvcjogcmdiKDI1NSwgMjU1LCAyNTUpOyI+DQokIG1kNXN1bSB1c3JwX2UzMjBfZnMu
bWVuZGVyPGJyPg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQ2FsaWJyaSwgQXJp
YWwsIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAs
IDAsIDApOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjU1LCAyNTUsIDI1NSk7Ij4NCmVlYzMyMDdj
NGQ4ZjIyMjFjMWQzY2UxYWZlNmRiMGJhIHVzcnBfZTMyMF9mcy5tZW5kZXI8L2Rpdj4NCjxkaXYg
c3R5bGU9ImZvbnQtZmFtaWx5OiBDYWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlm
OyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiByZ2IoMCwgMCwgMCk7IGJhY2tncm91bmQtY29sb3I6
IHJnYigyNTUsIDI1NSwgMjU1KTsiPg0KPGJyPg0KPC9kaXY+DQo8L2Jsb2NrcXVvdGU+DQo8ZGl2
IHN0eWxlPSJmb250LWZhbWlseTogQ2FsaWJyaSwgQXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJp
ZjsgZm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyBiYWNrZ3JvdW5kLWNvbG9y
OiByZ2IoMjU1LCAyNTUsIDI1NSk7Ij4NCkt5bGU8YnI+DQo8L2Rpdj4NCjxkaXYgaWQ9ImFwcGVu
ZG9uc2VuZCI+PC9kaXY+DQo8aHIgc3R5bGU9ImRpc3BsYXk6aW5saW5lLWJsb2NrO3dpZHRoOjk4
JSIgdGFiaW5kZXg9Ii0xIj4NCjxkaXYgaWQ9ImRpdlJwbHlGd2RNc2ciIGRpcj0ibHRyIj48Zm9u
dCBmYWNlPSJDYWxpYnJpLCBzYW5zLXNlcmlmIiBzdHlsZT0iZm9udC1zaXplOjExcHQiIGNvbG9y
PSIjMDAwMDAwIj48Yj5Gcm9tOjwvYj4gS3lsZSBBIExvZ3VlPGJyPg0KPGI+U2VudDo8L2I+IE1v
bmRheSwgRGVjZW1iZXIgMzAsIDIwMTkgMTE6MTg8YnI+DQo8Yj5Ubzo8L2I+IHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tICZsdDt1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSZndDs8YnI+DQo8
Yj5TdWJqZWN0OjwvYj4gUmU6IFtVU1JQLXVzZXJzXSBFMzIwIEF1dG8tQm9vdGluZyBmdW5jdGlv
biBub3Qgd29ya2luZz88L2ZvbnQ+DQo8ZGl2PiZuYnNwOzwvZGl2Pg0KPC9kaXY+DQo8ZGl2Pg0K
PHA+PGZvbnQgZmFjZT0iSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiI+QXMgb2YgdG9kYXkg
dGhlIEUzMjAgbWVuZGVyIGltYWdlIHN0aWxsIHNlZW1zIHRvIG5vdCBhdXRvYm9vdCBjb3JyZWN0
bHkgYWZ0ZXIgc2VldGluZyBFRVBST00uIEkgY2FuIGNvbmZpcm0gaXQgc2V0cyB0aGUgYml0IGNv
cnJlY3RseS48YnI+DQo8L2ZvbnQ+PC9wPg0KPHA+PGZvbnQgZmFjZT0iSGVsdmV0aWNhLCBBcmlh
bCwgc2Fucy1zZXJpZiI+JCBtZDVzdW0gdXNycF9lMzIwX2ZzLm1lbmRlciA8YnI+DQpmOGUxOGEw
NjY3MDEyNTk0MzA5MTAyNDI1MjdjY2NjOCZuYnNwOyB1c3JwX2UzMjBfZnMubWVuZGVyPGJyPg0K
PC9mb250PjwvcD4NCjxmb250IGZhY2U9IkhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYiPjxi
Pkt5bGUgTG9ndWU8L2I+PGJyPg0KPC9mb250Pjxmb250IGZhY2U9IkhlbHZldGljYSwgQXJpYWws
IHNhbnMtc2VyaWYiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6OHB0Ij4NCjxkaXY+PGk+RW5naW5l
ZXJpbmcgTWFuYWdlciA8c3Bhbj48c3Bhbj48c3Bhbj7imp08L3NwYW4+PC9zcGFuPjwvc3Bhbj4g
Q29tbSBTb2Z0d2FyZSBJbXBsZW1lbnRhdGlvbiBEZXB0PGJyPg0KPC9pPjwvZGl2Pg0KPGRpdj48
aT5UaGUgQWVyb3NwYWNlIENvcnBvcmF0aW9uPC9pPjwvZGl2Pg0KPC9zcGFuPjwvZm9udD48L2Rp
dj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_BYAPR09MB331838CEAA139F8CE6838F77B9260BYAPR09MB3318namp_--


--===============4851812664460600898==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4851812664460600898==--

