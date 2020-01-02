Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CC012E900
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2020 17:57:12 +0100 (CET)
Received: from [::1] (port=51920 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1in3mZ-0002xN-1i; Thu, 02 Jan 2020 11:57:11 -0500
Received: from mail-eopbgr700048.outbound.protection.outlook.com
 ([40.107.70.48]:19840 helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1in3mW-0002sW-7n
 for usrp-users@lists.ettus.com; Thu, 02 Jan 2020 11:57:08 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IDaBfMSdZDvAAxMtL8Vx5ffNnhnAkx7RSWVv4sQhwxDz0jJW3P74NStgoxe3MgIdx2CQUiDyuaFtSxmQjXmfKvbIpS1bXXox1qF0H9oTBN5Owi75AOrVy8CH0cQ2tUwWSSWLnifMwNqiSCWc2eHOANPKCfmHqi3gjCDJcFIuAVZvmE1EjjXqyfISygbA/+rfv2NunsNExwxLLLnxm2J+zS/++TTLBPmLm5IfvFKFdgYXXZT11RwC6YpemY9HGZo0liYU5yby+rAxkUfK9O1mhs0Izmg5nNrrwQClLuBI7N5fYsmMnRuunsskHeLhApVTXDK+V46PIHPLW63B9nx4Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RT9bRzVDiSjAyiSzudXHrU/EtSy7zkGLeMTVLrEmwvc=;
 b=X58ljrycOYLuPqfYecW9NQ9xk0BJTeqb1pPXph/IB8akAtltcuD9+G0bltRRZ0bfWq+In+DkRwlHFwN6jgZpqwn8ZoTBQAUGhNn0cRu2YJrint3WyGcHwedj0saVFyAM4Mc+BhRJAc8vBDSr9Aq33kjfSnPQ7Ylx5evcSo3UQDkpod97C5FlaB6H8okh4LPyC45zDRQUTZyTQbjf8UwD+H/MZZV9oNHgTFw+KVz9xqsZZi+KmpNXGDbm4tT86IcBfQ4iTw0DNLOdTEOqUn1bAQ8qnKYxlwgy0vW20zuyNweTnbd2RnVjGR1qMrHKURDBWdwytG0j6w9TsBYWelc1tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RT9bRzVDiSjAyiSzudXHrU/EtSy7zkGLeMTVLrEmwvc=;
 b=lUgKojvKI+SOoXFlQbEe6XAgJ5N2CYQQm8xGoQ8MfMsdpc24sGDEPUxINHvicCbv9f8crgAdBrMol9BIVtlup2i6Wzit2F0LliefIGBCzyFP2O1fvT5Zml4s/yhqZEtPTvJsP03ks7vhQ+7IBChn2R6kTwgJoSp465tF5GbCZL8=
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com (52.132.151.149) by
 MW2PR1901MB2090.namprd19.prod.outlook.com (52.132.151.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Thu, 2 Jan 2020 16:56:24 +0000
Received: from MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::c5ee:2e44:f17e:c324]) by MW2PR1901MB2137.namprd19.prod.outlook.com
 ([fe80::c5ee:2e44:f17e:c324%5]) with mapi id 15.20.2581.007; Thu, 2 Jan 2020
 16:56:24 +0000
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [USRP-users] Building RFNoC image with default blocks fails,
 [DRC MDRV-1] Multiple Driver Nets: Net has multiple drivers
Thread-Index: AQHVvQ8z9YxP/pXUkUmVRC/rVQJ7O6fPVgeAgAO+ysWABIZ1AIAAAQKwgAABQoCAAABF0IAAAfqAgAAAxmA=
Date: Thu, 2 Jan 2020 16:56:24 +0000
Message-ID: <MW2PR1901MB2137796A867DDB5331057D34C6200@MW2PR1901MB2137.namprd19.prod.outlook.com>
References: <MW2PR1901MB2137457D7A0A319B788A4264C62A0@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <758569ee796e2542bd4ecab8262eec008833363b.camel@ettus.com>
 <MW2PR1901MB213725DFFB9B0B5E41DA85EFC6270@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <CAEXYVK7LePWMpkm7-=gHOa-oFH_hOTQAQxVeMnfh9PgzPUWp6A@mail.gmail.com>
 <MW2PR1901MB2137B95238D836E603F9CBB2C6200@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <CAEXYVK6n3NroyojeqbZkZ2KeXOE-DQz48od0z=CtdAoEjzPwOg@mail.gmail.com>
 <MW2PR1901MB21377D89A41FDE1BB0DE1A15C6200@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <CAEXYVK6OsAs4z2WiL8Opni9QsaaPo804sE8RN=SiUBKkWwKngw@mail.gmail.com>
In-Reply-To: <CAEXYVK6OsAs4z2WiL8Opni9QsaaPo804sE8RN=SiUBKkWwKngw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jerrid.plymale@canyon-us.com; 
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: deaa097a-a1db-40f5-6e20-08d78fa4b3a8
x-ms-traffictypediagnostic: MW2PR1901MB2090:
x-microsoft-antispam-prvs: <MW2PR1901MB2090357723013B66726C5A4FC6200@MW2PR1901MB2090.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0270ED2845
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39830400003)(376002)(346002)(136003)(396003)(199004)(189003)(9686003)(66946007)(7696005)(33656002)(76116006)(2906002)(66476007)(66446008)(4744005)(64756008)(66556008)(71200400001)(44832011)(55016002)(5660300002)(6506007)(53546011)(508600001)(81156014)(52536014)(8936002)(6916009)(8676002)(26005)(81166006)(86362001)(186003)(4326008)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR1901MB2090;
 H:MW2PR1901MB2137.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:3; 
received-spf: None (protection.outlook.com: canyon-us.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4ShTe4ww85dwjMHvxpqXiLKdyWNQvg/hikFcFfI3Q4LQjFCI/u/hmDS8ZBTVcHzfstRv3lOcOc9roE2Nd8e3r/QNDAZskHT9XqRIXq7R2cayPLbQOMqc3hn+nB+XHiCThdhj3r1vWMrC/o6Vqh3HGhDjo1ZkWxztcbv75fntqtpiVk+4i1pxYWwDkLIqZ1Yw0iOAlGW3R2hdsVtxhOUtljNW93wqq6dgtbIYxSlKd0xLCvAFhAdVJLLdiYT/MkeD5OceXFGuzIQMYNhH4UBxDoYQ0y0IDJBy6FJfsHclERHA244XEKv8L5szBfhS8FGSpWAFUTmMtnXOBy/ZTBseIXnDxoCxCrpCcuvM+x0MsjZAZEvrAieuSA9422WFGDpRd7CyMaOkgS3yS0yOTif2ihu3dhdk3gfmA4C7FLhUidZPPm1WwhGUxk61fi0vqIpu
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-Network-Message-Id: deaa097a-a1db-40f5-6e20-08d78fa4b3a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2020 16:56:24.5664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OOYr5ihio0ptKhtfnSwvGG4CF2+mJ2Gr5bOECtd/rVZ8Nxceaa5bFnjndK0zMEL2QrSBeQkoKtoV4ocSmTjFZXDHxOiCGL3Fb5pz0xm+pnE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR1901MB2090
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
Content-Type: multipart/mixed; boundary="===============5560207939936506967=="
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

--===============5560207939936506967==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW2PR1901MB2137796A867DDB5331057D34C6200MW2PR1901MB2137_"

--_000_MW2PR1901MB2137796A867DDB5331057D34C6200MW2PR1901MB2137_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzLCBJIGhhdmUganVzdCBiZWVuIGZvbGxvd2luZyB0aGUgZ3VpZGUgb24gdGhlIGdldHRpbmcg
c3RhcnRlZCB3aXRoIFJGTm9DIHBhZ2UuDQoNCkJlc3QgUmVnYXJkcywNCg0KSmVycmlkDQoNCkZy
b206IEJyaWFuIFBhZGFsaW5vIDxicGFkYWxpbm9AZ21haWwuY29tPg0KU2VudDogVGh1cnNkYXks
IEphbnVhcnkgMiwgMjAyMCA4OjUyIEFNDQpUbzogSmVycmlkIFBseW1hbGUgPGplcnJpZC5wbHlt
YWxlQGNhbnlvbi11cy5jb20+DQpDYzogdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NClN1Ympl
Y3Q6IFJlOiBbVVNSUC11c2Vyc10gQnVpbGRpbmcgUkZOb0MgaW1hZ2Ugd2l0aCBkZWZhdWx0IGJs
b2NrcyBmYWlscywgW0RSQyBNRFJWLTFdIE11bHRpcGxlIERyaXZlciBOZXRzOiBOZXQgaGFzIG11
bHRpcGxlIGRyaXZlcnMNCg0KT24gVGh1LCBKYW4gMiwgMjAyMCBhdCAxMTo0OCBBTSBKZXJyaWQg
UGx5bWFsZSA8amVycmlkLnBseW1hbGVAY2FueW9uLXVzLmNvbTxtYWlsdG86amVycmlkLnBseW1h
bGVAY2FueW9uLXVzLmNvbT4+IHdyb3RlOg0KSSBhbSB0cnlpbmcgdG8gZ2VuZXJhdGUgYSBjdXN0
b20gUkZOb0MgRlBHQSBJbWFnZSB1c2luZyB0aGlzIHZlcnNpb24gb2YgVUhELg0KDQpPSy4gIFNv
IHlvdSd2ZSBjaGVja2VkIG91dCBmZGUyYTk0ZWI3MjMxYWY4NTk2NTNkYjhjYWFmNzc3YWUyYjY2
MTk5IGFuZCB5b3UncmUgdHJ5aW5nIHRvIGJ1aWxkIGEgcmVndWxhciBpbWFnZSB3aXRoIFZpdmFk
byAyMDE4LjMuICBDb3JyZWN0Pw0KDQpCcmlhbg0K

--_000_MW2PR1901MB2137796A867DDB5331057D34C6200MW2PR1901MB2137_
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
cGxlIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5Z
ZXMsIEkgaGF2ZSBqdXN0IGJlZW4gZm9sbG93aW5nIHRoZSBndWlkZSBvbiB0aGUgZ2V0dGluZyBz
dGFydGVkIHdpdGggUkZOb0MgcGFnZS48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+QmVzdCBSZWdh
cmRzLDxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286
cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5KZXJyaWQ8bzpwPjwvbzpwPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PGI+RnJvbTo8L2I+IEJyaWFuIFBhZGFsaW5vICZsdDticGFkYWxpbm9AZ21haWwuY29tJmd0
OyA8YnI+DQo8Yj5TZW50OjwvYj4gVGh1cnNkYXksIEphbnVhcnkgMiwgMjAyMCA4OjUyIEFNPGJy
Pg0KPGI+VG86PC9iPiBKZXJyaWQgUGx5bWFsZSAmbHQ7amVycmlkLnBseW1hbGVAY2FueW9uLXVz
LmNvbSZndDs8YnI+DQo8Yj5DYzo8L2I+IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPGJyPg0K
PGI+U3ViamVjdDo8L2I+IFJlOiBbVVNSUC11c2Vyc10gQnVpbGRpbmcgUkZOb0MgaW1hZ2Ugd2l0
aCBkZWZhdWx0IGJsb2NrcyBmYWlscywgW0RSQyBNRFJWLTFdIE11bHRpcGxlIERyaXZlciBOZXRz
OiBOZXQgaGFzIG11bHRpcGxlIGRyaXZlcnM8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj5PbiBUaHUsIEphbiAyLCAyMDIwIGF0IDExOjQ4IEFNIEplcnJpZCBQbHltYWxlICZs
dDs8YSBocmVmPSJtYWlsdG86amVycmlkLnBseW1hbGVAY2FueW9uLXVzLmNvbSI+amVycmlkLnBs
eW1hbGVAY2FueW9uLXVzLmNvbTwvYT4mZ3Q7IHdyb3RlOjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+
DQo8ZGl2Pg0KPGJsb2NrcXVvdGUgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci1sZWZ0OnNvbGlk
ICNDQ0NDQ0MgMS4wcHQ7cGFkZGluZzowaW4gMGluIDBpbiA2LjBwdDttYXJnaW4tbGVmdDo0Ljhw
dDttYXJnaW4tcmlnaHQ6MGluIj4NCjxkaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIg
c3R5bGU9Im1zby1tYXJnaW4tdG9wLWFsdDphdXRvO21zby1tYXJnaW4tYm90dG9tLWFsdDphdXRv
Ij5JIGFtIHRyeWluZyB0byBnZW5lcmF0ZSBhIGN1c3RvbSBSRk5vQyBGUEdBIEltYWdlIHVzaW5n
IHRoaXMgdmVyc2lvbiBvZiBVSEQuPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9i
bG9ja3F1b3RlPg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+
PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+T0suJm5ic3A7IFNvIHlv
dSd2ZSBjaGVja2VkJm5ic3A7b3V0Jm5ic3A7ZmRlMmE5NGViNzIzMWFmODU5NjUzZGI4Y2FhZjc3
N2FlMmI2NjE5OSBhbmQgeW91J3JlIHRyeWluZyB0byBidWlsZCBhIHJlZ3VsYXIgaW1hZ2UmbmJz
cDt3aXRoIFZpdmFkbyAyMDE4LjMuJm5ic3A7IENvcnJlY3Q/PG86cD48L286cD48L3A+DQo8L2Rp
dj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwv
ZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkJyaWFuPG86cD48L286cD48L3A+DQo8
L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_MW2PR1901MB2137796A867DDB5331057D34C6200MW2PR1901MB2137_--


--===============5560207939936506967==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5560207939936506967==--

