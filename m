Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EE623E051
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 20:29:02 +0200 (CEST)
Received: from [::1] (port=53676 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3kdQ-0002g1-EO; Thu, 06 Aug 2020 14:29:00 -0400
Received: from mail-dm6nam10on2040.outbound.protection.outlook.com
 ([40.107.93.40]:52577 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1k3kdM-0002X2-S7
 for USRP-users@lists.ettus.com; Thu, 06 Aug 2020 14:28:56 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lr6KTFZGIq1+227MCpVhxXOYVeY+d4LUsggr/gLtc6rGH/fyQHeKNqBdH4Txl7v4y+K/X2h53/3UDOxRPMa6EECyatTVFsVhFmR7QDqwM9V6PjENxx6XWs97jdJzAeKzcqhLC8VZ9jUq5I3M/RffyIqCFgJmhuJUihff1/yRAkTO43RdCupNBJhNL9S64+U5rrl0NQUH2MWuVS/0RP/DZjcW9BhnGgRfVoLzwGRYbcvebBd34fUCxOwUTVPtkdY8ZWAn3OB6RJHRkCiSzU3UQvJ4edUAgnT4rnTh5ziWm2Vf0AkMzrAalk9Uh0nWUb8pDrc/v1f0hlw+mEw6Znbzog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mV1wwgP3PNTfa7qQFLt2mtr+cJ1y/iNwzAuTbeJIieU=;
 b=D/VUp1B+vQ0w3s2MmG/5YUWCmfPQwpBGqOEHVJXC3y9crPSAl91K537B2Ysf3wfg07ROLRglizeluWC0/WuaCSZdu8yZ3o9lGO+z/nv59gLS9FY9EWrFndY4dSbsHbmvZ2L520Ev3B5jwCzHV4Iur5kJgbBMaMIOjdYZ11zH+Qw4p9c9DWS9x3/O8jiu9SimceQA7MJ1SzKeL8bVc2ZhYibQZm7IlNyZLFm0z5nPNhJYnravYa8slp11v409t6O5WpEGJ9a+WnbNikuxvkzwXU9igDLXwHlhOv4cTOoU/s7eIb8XkYvhrXOnL3UhAR3Vxk5saxKjOkBNAs32Eq5EGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mV1wwgP3PNTfa7qQFLt2mtr+cJ1y/iNwzAuTbeJIieU=;
 b=VuyQmqvBqddwbo6URa4GtV4mMvVVs2YYBmAkWBDmQnvw7VocCmQWmVANTH8HcUXirhEOZGyfpyll8wKNGrE6/04nNRIQW2nmcKkYnQC7u0fksO0FMj7J4EFjOUUDAhsO1VnK+Pu9m2cgiW2/rzAehekvd51JiixwYg/WsAhB9Iw=
Received: from MW3PR19MB4268.namprd19.prod.outlook.com (2603:10b6:303:4f::17)
 by MWHPR19MB0031.namprd19.prod.outlook.com (2603:10b6:301:6a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.15; Thu, 6 Aug
 2020 18:28:14 +0000
Received: from MW3PR19MB4268.namprd19.prod.outlook.com
 ([fe80::d91a:dc76:10a:e643]) by MW3PR19MB4268.namprd19.prod.outlook.com
 ([fe80::d91a:dc76:10a:e643%9]) with mapi id 15.20.3261.015; Thu, 6 Aug 2020
 18:28:14 +0000
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [USRP-users] Signal transmission on a USRP X310
Thread-Index: AQHWbBe66KsuxaU9ckeZYi1/jo+tgqkrV2uwgAAJc4CAAAU8IA==
Date: Thu, 6 Aug 2020 18:28:14 +0000
Message-ID: <MW3PR19MB426868CA935E2B6360B879C3C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
References: <MW3PR19MB42683E64A27B9B0C0A3D0683C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
 <CA9262F8-E745-4A74-934E-557490486CD4@gmail.com>
 <MW3PR19MB42688D343319432B7156AE09C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
 <CAEXYVK5y-7cf9Y1uCpU3CpQ8KKuueu3eq28SvtfErvgXu-+X+Q@mail.gmail.com>
In-Reply-To: <CAEXYVK5y-7cf9Y1uCpU3CpQ8KKuueu3eq28SvtfErvgXu-+X+Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=canyon-us.com;
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4fc530e0-1e4a-4a69-c62e-08d83a367b86
x-ms-traffictypediagnostic: MWHPR19MB0031:
x-microsoft-antispam-prvs: <MWHPR19MB00314B9B9E06CCF770993D0DC6480@MWHPR19MB0031.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cPdzB29maeXO9syusX7yOLaUMQ5jailrC4j558YrU8SXiXb235mLjuUlafdbzjAHUgHvI238BZ19wLPsDauBdMtUw6KeVvJa/Mg91Qhe/CV2qQ2e+G23Pv32joVAitsZRMVBCJJL9kdVu1taa6Cb4rVsljMqRae0m8t69pa6Ux571+kIE+MZaBAQ620kcRoUzxVWfyOF14m9JM5bLI1HLKQGgXSVpiUtXhECaETif7cDIbLjZ98WRWDcM7wolUE6RPDgYEZALiBRHyDj+LE0GvC5uAD/skL2YDadpxjg4RoGpYsokc4UZYY1xwo9g7ICc7R/cs0AmUSurplc2chuxg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR19MB4268.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(136003)(39840400004)(376002)(396003)(71200400001)(76116006)(66946007)(66476007)(66556008)(64756008)(6916009)(86362001)(66446008)(55016002)(52536014)(44832011)(5660300002)(9686003)(508600001)(54906003)(4326008)(33656002)(186003)(316002)(8936002)(7696005)(2906002)(26005)(8676002)(53546011)(4744005)(6506007)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: pTwVDtweOUPGQCFXPf4imfwEaUzNxGJZ7Xk79O+Cbu0wD3gdSbugy1AKHzMAWvx7S5d8kNP9SDEChKdEZv8wo1TBKwcbO34pme07XYYAiR54p41VdG7SFsy01kMccr3qJp9vavW9d0FZ75RNptXfJePpRDLuj5lhgq5XwBlw1icWaeTRbMQpwoldxxh4M8KcnPLx2vTXyeK8v0zGOosWFt3/kxS1t12rrcYwHyJQw2u2TpVRw7l7O9aL/PYQTWo2zl/2Bo+OoxisqqNzBtBQvKhI8hPBQRBLXn1DeGSY9BM93YTTDm2bfEJIvDDvbfiN6OoR5CtyRN/6SffdUmMYWB4d2QYzzUNgM61KAOLcPBBLl1cadtuFwMCreiRx1uhpsKfhK9L69WeZhVhyVhzXlbuE9Zw+okE72kErYDS9DyxYRx8wCgZbDQspTCyNU4Wxb2ZFcK63FjZnOcStLFOMkkH/TQF3a6qMn+JhST3/CM45PjFYLZxlyp1p0/odRTpxdunaXaHTUd/rYeGG+9ZkcpzXx6czgIlyUjxlX0Tzsdsr0vBWREvnUqxkhrzkBp+vMTRVlk4N67Sh6mmPd/APd+sQ7mvxm83t0X7UWHS0ykoI+Y04hJl3oJy0jaDwRyFRfkA7kSMfSJpvel/LAxlZnQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR19MB4268.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fc530e0-1e4a-4a69-c62e-08d83a367b86
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2020 18:28:14.6934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u71j1AGt/NnFA3sWaUC8/65rSDHe2tK44Fk90/8w5bOkTBgjwP/KRJL+2vS38RPFnJiInHj6h0dYs9wqNePFjBiIuCtl3eB6zfkPxim/n9s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR19MB0031
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
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1264343309495506432=="
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

--===============1264343309495506432==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW3PR19MB426868CA935E2B6360B879C3C6480MW3PR19MB4268namp_"

--_000_MW3PR19MB426868CA935E2B6360B879C3C6480MW3PR19MB4268namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBhbSBzZWVpbmcgYSBzaWduYWwgc3RyZW5ndGggYmV0d2VlbiAtNjUgYW5kIC03MCBkQm0sIGFw
cHJveGltYXRlbHksIGV2ZW4gd2hlbiB0cmFuc21pdHRpbmcgYWxsIDDigJlzLg0KDQpCZXN0IFJl
Z2FyZHMsDQoNCkplcnJpZCBQbHltYWxlDQoNCkZyb206IEJyaWFuIFBhZGFsaW5vIDxicGFkYWxp
bm9AZ21haWwuY29tPg0KU2VudDogVGh1cnNkYXksIEF1Z3VzdCA2LCAyMDIwIDExOjA4IEFNDQpU
bzogSmVycmlkIFBseW1hbGUgPGplcnJpZC5wbHltYWxlQGNhbnlvbi11cy5jb20+DQpDYzogTWFy
Y3VzIEQgTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPjsgdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20NClN1YmplY3Q6IFJlOiBbVVNSUC11c2Vyc10gU2lnbmFsIHRyYW5zbWlzc2lvbiBv
biBhIFVTUlAgWDMxMA0KDQpPbiBUaHUsIEF1ZyA2LCAyMDIwIGF0IDI6MDIgUE0gSmVycmlkIFBs
eW1hbGUgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPG1haWx0bzp1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4+IHdyb3RlOg0KSXQgZG9lcywgYW5kIGFjdHVhbGx5
IGl0IGhhcyBhIHN0cmVuZ3RoIGNsb3NlciB0byAtNzAgZEJtLCBJIGhhZCBteSBtYXJrZXJzIGlu
IHRoZSB3cm9uZyBwbGFjZSB3aGVuIEkgdGhvdWdodCB0aGUgc2lnbmFsIHdhcyBhdCAtMTAwIGRC
bS4NCg0KSWYgeW91IHRyYW5zbWl0IGFsbCAwJ3Mgd2l0aCB0aGUgZ2FpbiB0dXJuZWQgYWxsIHRo
ZSB3YXkgZG93biwgd2hhdCBzdHJlbmd0aCBkbyB5b3Ugc2VlIGNvbWluZyBmcm9tIHRoZSByYWRp
byBvbiB0aGUgY2Fycmllcj8NCg0KQnJpYW4NCg==

--_000_MW3PR19MB426868CA935E2B6360B879C3C6480MW3PR19MB4268namp_
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
cjpibHVlOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KLk1zb0NocERlZmF1bHQNCgl7
bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMt
c2VyaWY7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4gMTEuMGluOw0KCW1hcmdp
bjoxLjBpbiAxLjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29y
ZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFw
ZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZd
LS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+
DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3ht
bD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSJibHVlIiB2
bGluaz0icHVycGxlIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj5JIGFtIHNlZWluZyBhIHNpZ25hbCBzdHJlbmd0aCBiZXR3ZWVuIC02NSBhbmQgLTcw
IGRCbSwgYXBwcm94aW1hdGVseSwgZXZlbiB3aGVuIHRyYW5zbWl0dGluZyBhbGwgMOKAmXMuPG86
cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPkJlc3QgUmVnYXJkcyw8bzpwPjwvbzpwPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+SmVycmlkIFBseW1hbGU8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxv
OnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRvcDpz
b2xpZCAjRTFFMUUxIDEuMHB0O3BhZGRpbmc6My4wcHQgMGluIDBpbiAwaW4iPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PGI+RnJvbTo8L2I+IEJyaWFuIFBhZGFsaW5vICZsdDticGFkYWxpbm9AZ21h
aWwuY29tJmd0OyA8YnI+DQo8Yj5TZW50OjwvYj4gVGh1cnNkYXksIEF1Z3VzdCA2LCAyMDIwIDEx
OjA4IEFNPGJyPg0KPGI+VG86PC9iPiBKZXJyaWQgUGx5bWFsZSAmbHQ7amVycmlkLnBseW1hbGVA
Y2FueW9uLXVzLmNvbSZndDs8YnI+DQo8Yj5DYzo8L2I+IE1hcmN1cyBEIExlZWNoICZsdDtwYXRj
aHZvbmJyYXVuQGdtYWlsLmNvbSZndDs7IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPGJyPg0K
PGI+U3ViamVjdDo8L2I+IFJlOiBbVVNSUC11c2Vyc10gU2lnbmFsIHRyYW5zbWlzc2lvbiBvbiBh
IFVTUlAgWDMxMDxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
T24gVGh1LCBBdWcgNiwgMjAyMCBhdCAyOjAyIFBNIEplcnJpZCBQbHltYWxlIHZpYSBVU1JQLXVz
ZXJzICZsdDs8YSBocmVmPSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iPnVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsgd3JvdGU6PG86cD48L286cD48L3A+DQo8L2Rp
dj4NCjxkaXY+DQo8YmxvY2txdW90ZSBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLWxlZnQ6c29s
aWQgI0NDQ0NDQyAxLjBwdDtwYWRkaW5nOjBpbiAwaW4gMGluIDYuMHB0O21hcmdpbi1sZWZ0OjQu
OHB0O21hcmdpbi1yaWdodDowaW4iPg0KPGRpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
IiBzdHlsZT0ibXNvLW1hcmdpbi10b3AtYWx0OmF1dG87bXNvLW1hcmdpbi1ib3R0b20tYWx0OmF1
dG8iPkl0IGRvZXMsIGFuZCBhY3R1YWxseSBpdCBoYXMgYSBzdHJlbmd0aCBjbG9zZXIgdG8gLTcw
IGRCbSwgSSBoYWQgbXkgbWFya2VycyBpbiB0aGUgd3JvbmcgcGxhY2Ugd2hlbiBJIHRob3VnaHQg
dGhlIHNpZ25hbCB3YXMgYXQgLTEwMCBkQm0uPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2
Pg0KPC9ibG9ja3F1b3RlPg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7
PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SWYgeW91IHRy
YW5zbWl0IGFsbCAwJ3Mgd2l0aCB0aGUmbmJzcDtnYWluIHR1cm5lZCBhbGwgdGhlIHdheSBkb3du
LCB3aGF0IHN0cmVuZ3RoIGRvIHlvdSBzZWUgY29taW5nIGZyb20gdGhlIHJhZGlvIG9uIHRoZSBj
YXJyaWVyPzxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj5CcmlhbjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+
DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_MW3PR19MB426868CA935E2B6360B879C3C6480MW3PR19MB4268namp_--


--===============1264343309495506432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1264343309495506432==--

