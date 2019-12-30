Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7675912D3D0
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2019 20:19:16 +0100 (CET)
Received: from [::1] (port=41148 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1im0ZI-00068r-ML; Mon, 30 Dec 2019 14:19:08 -0500
Received: from email6-west.aero.org ([130.221.16.31]:56511)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <prvs=260050951=kyle.a.logue@aero.org>)
 id 1im0ZF-00064I-EY
 for usrp-users@lists.ettus.com; Mon, 30 Dec 2019 14:19:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
 t=1577733545; x=1609269545;
 h=from:to:subject:date:message-id:references:mime-version;
 bh=QpCcqqS7ET1cwzFJ2JyX8cWvrMruAAcGtG6EwijGg2A=;
 b=dj6RjQkV2SB4qfAIZrX0P/u0ugTilYulHUYcnxQAebTCgy+zqhjfbDwh
 dOZfSyLFDOA1Cbp2ILSmLaqrj6NDVwAo1tFn3JuX3SIg36pUaP84ZiiMH
 jg19ZqX0irQv5+QJdZwFrR65yeUr+8bMQGtkiDhJ/4BteKMLPA8AJ0QTm M=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6000,8403,9486"; a="5855417"
X-IronPort-AV: E=Sophos;i="5.69,376,1571727600"; d="scan'208,217";a="5855417"
IronPort-PHdr: =?us-ascii?q?9a23=3AhTgWTR9DGFlajf9uRHGN82YQeigqvan1NQcJ65?=
 =?us-ascii?q?0hzqhDabmn44+8YB7E/fs4iljPUM2b8P9Ch+fM+4HYEW0bqdfk0jgZdYBUER?=
 =?us-ascii?q?oMiMEYhQslVc2UDUC9JbjuaCMnEexLWUViuXahPhsdFQ=3D=3D?=
X-IPAS-Result: =?us-ascii?q?A2GIAQC0TApeh2tBL2hlHgELHIFxC4ElL1CBZgMECyoKg?=
 =?us-ascii?q?36DRgOFOoVCeX2UEYYPgSQDGDwJAQEBAQEBAQEBBwEtAgEBAoFKgnQCF4F3N?=
 =?us-ascii?q?AkOAgMNAQEBBAEBAQEBBQMBAgIQAQEBCA0JCCmFPgELg045OAEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQUCgQw0CgYSER0BATgPAgEIA?=
 =?us-ascii?q?wE+AgICMCUCBBsagwCBek0DLgECoDoCgTiIYAEBdIEygn4BAQWFBhhYgTQJg?=
 =?us-ascii?q?TaNF4EcgRFHgkw+hEsVgnkygiyNe4JChVc/mEQHgjeWNJpXjlKaVgIEAgQFA?=
 =?us-ascii?q?g4BAQWBUniBGk0wgkdoUBgNjRINDQmDUIpTQzGBKI54AYEPAQE?=
Received: from mail-dm3gcc02lp2107.outbound.protection.outlook.com (HELO
 GCC02-DM3-obe.outbound.protection.outlook.com) ([104.47.65.107])
 by email6-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 11:18:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OnsegZQs6vXkjLtyACBYezWQqPmD6rIHyFTBcZWLSZqCgEWwhzidNZcUFsHZXyW+4seVJkEyLHKcwuWJ62k9RHl9sM+S5/inCIwHh8pCYGKJLGYq2MR5RpLJoyGYQl3zzlqbRFXq6nO75QepgDpdWsR0Uk++1sCI6bbXLMmD0GPsih/zbo7eP3F31fdNhg9PJFMOLqho5h4pS39EioqkCRZtPeQ4MJgW5V9IjPQRNlUftrHfdHLZEZbqGX9uARZoq/tMnmBP1UiRsNi73EmafSb1Kks6B/hhEnCPyfVNI4r7gRqOMVNJBJyd3zcm7YgDBBEv8T+rFf1Sb2hzfA3lWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QpCcqqS7ET1cwzFJ2JyX8cWvrMruAAcGtG6EwijGg2A=;
 b=oJLCQEtG/hsbRI7hCjBz1KWuz+6IzpY9LrqAzuvqvsOJ0+gbFrHefTxI8RJZ4o5N2eLJR0nWCkhTZPdOgju0x/Gi2jiFDPW4H7EdXxk84F6FGp0hyQaMPLGF5KmdE4RGr4+20y0e+zz/aBs7CQyvZpnrpB4fXrbbLC9s9fyhdygwcejmXgmWLnJAjh71rLSz2/feNq+UVzOEkWg8hHmvVmLm1gAZHvXv05lkZR0IeCN5mWR0f4uOCiFrNYAhumLHJywAmx2IEY3Fr7GJGTPkyc6Yw6LSInRgfafbVUar2UMdecKaT5db9NVeWlPkTNJM48bJkZNaoEaXL+3RuFofJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QpCcqqS7ET1cwzFJ2JyX8cWvrMruAAcGtG6EwijGg2A=;
 b=tzFRXgvhJYDKdrsU7iDb/B+HuUqyqcPiLOLrbZsaHlijtRQk+gEMKQnf/plLLBIrjcshdFGuf8/naEBOGms4bp5YnSJ5kd93O1xYtUuCKn8CHVjxUqsdcvBR8YK6Rx1Ol2tOZPV2S20lf0KV4Fx/0nmInpYdNEEGZceO/sq6B4A=
Received: from BYAPR09MB3318.namprd09.prod.outlook.com (20.179.56.16) by
 BYAPR09MB2549.namprd09.prod.outlook.com (52.135.226.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Mon, 30 Dec 2019 19:18:21 +0000
Received: from BYAPR09MB3318.namprd09.prod.outlook.com
 ([fe80::d867:168a:2e94:1f6d]) by BYAPR09MB3318.namprd09.prod.outlook.com
 ([fe80::d867:168a:2e94:1f6d%5]) with mapi id 15.20.2581.007; Mon, 30 Dec 2019
 19:18:21 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] E320 Auto-Booting function not working?
Thread-Index: AQHVBJOUQ3A+1YLBrk2g2oI0T7I3JQ==
Date: Mon, 30 Dec 2019 19:18:21 +0000
Message-ID: <BYAPR09MB331813D85FED66A63173847DB9270@BYAPR09MB3318.namprd09.prod.outlook.com>
References: <CAG_kd15s77ODO84U83rUwRit-Q_cpi2kw+3ouGRDGFsa_neFkA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kyle.a.logue@aero.org; 
x-originating-ip: [130.221.224.7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bde819db-9fb0-4d22-d6f6-08d78d5d08d2
x-ms-traffictypediagnostic: BYAPR09MB2549:
x-microsoft-antispam-prvs: <BYAPR09MB25492060A90BDC6CD3B4B1B0B9270@BYAPR09MB2549.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0267E514F9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(396003)(346002)(366004)(376002)(136003)(189003)(199004)(6916009)(81166006)(66476007)(6506007)(76116006)(81156014)(7696005)(86362001)(66556008)(64756008)(26005)(316002)(186003)(8676002)(71200400001)(66946007)(8936002)(66446008)(33656002)(52536014)(9686003)(4744005)(5660300002)(55016002)(2906002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR09MB2549;
 H:BYAPR09MB3318.namprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1/Z7f26V2kpgYDLBNjiZ9RCXLJnZS8CEhaEGbtaUCRflJ8uBqEdQgI9ctWhVhgysVOUv8Xi5nEn6eyNbf2etueC0ou6vMCXS2VhcGXTGzukpDallPS8jC/RcFDCsnWoGlbVeHxOrDE9hkbhVYUyKVZrTQIo9hpnMl2TToESjlHpqr2a+1r/zgOkJe7j9J19Xg7djCMIX3+cqsRktOMGsMFiTFbaLGcXOyTuLzwRHrUowH5ohHYFwl5kz7x3RWScN6jDk/ij/jTn0WHXtNzsTkDdPoGEm9g0tccVPBz4D8CPCqsPMmSFOeVqHBQ7bybjnPKyfqu1zWjwDJyo3479alg5LuvDxCT3zXIyBGafhuGZsM0otxKZ7PAgqOIrkkcka4obXhXvKHAGn98YRHffWa7taljFComkRpMIIU9AvWKhkro4Y/oCD9AU2btlhIabn
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-Network-Message-Id: bde819db-9fb0-4d22-d6f6-08d78d5d08d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2019 19:18:21.4965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j08ftdtssBl/B5EpRyad3unLlwweH76Nc4HZqEZYOZ3AYanl2AGeMA40keGf9M28
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR09MB2549
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
Content-Type: multipart/mixed; boundary="===============6114146522275985352=="
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

--===============6114146522275985352==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR09MB331813D85FED66A63173847DB9270BYAPR09MB3318namp_"

--_000_BYAPR09MB331813D85FED66A63173847DB9270BYAPR09MB3318namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXMgb2YgdG9kYXkgdGhlIEUzMjAgbWVuZGVyIGltYWdlIHN0aWxsIHNlZW1zIHRvIG5vdCBhdXRv
Ym9vdCBjb3JyZWN0bHkgYWZ0ZXIgc2VldGluZyBFRVBST00uIEkgY2FuIGNvbmZpcm0gaXQgc2V0
cyB0aGUgYml0IGNvcnJlY3RseS4NCg0KJCBtZDVzdW0gdXNycF9lMzIwX2ZzLm1lbmRlcg0KZjhl
MThhMDY2NzAxMjU5NDMwOTEwMjQyNTI3Y2NjYzggIHVzcnBfZTMyMF9mcy5tZW5kZXINCg0KS3ls
ZSBMb2d1ZQ0KRW5naW5lZXJpbmcgTWFuYWdlciDimp0gQ29tbSBTb2Z0d2FyZSBJbXBsZW1lbnRh
dGlvbiBEZXB0DQpUaGUgQWVyb3NwYWNlIENvcnBvcmF0aW9uDQo=

--_000_BYAPR09MB331813D85FED66A63173847DB9270BYAPR09MB3318namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5Pg0KPHA+PGZvbnQgZmFj
ZT0iSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJpZiI+QXMgb2YgdG9kYXkgdGhlIEUzMjAgbWVu
ZGVyIGltYWdlIHN0aWxsIHNlZW1zIHRvIG5vdCBhdXRvYm9vdCBjb3JyZWN0bHkgYWZ0ZXIgc2Vl
dGluZyBFRVBST00uIEkgY2FuIGNvbmZpcm0gaXQgc2V0cyB0aGUgYml0IGNvcnJlY3RseS48YnI+
DQo8L2ZvbnQ+PC9wPg0KPHA+PGZvbnQgZmFjZT0iSGVsdmV0aWNhLCBBcmlhbCwgc2Fucy1zZXJp
ZiI+JCBtZDVzdW0gdXNycF9lMzIwX2ZzLm1lbmRlciA8YnI+DQpmOGUxOGEwNjY3MDEyNTk0MzA5
MTAyNDI1MjdjY2NjOCZuYnNwOyB1c3JwX2UzMjBfZnMubWVuZGVyPGJyPg0KPC9mb250PjwvcD4N
Cjxmb250IGZhY2U9IkhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYiPjxiPkt5bGUgTG9ndWU8
L2I+PGJyPg0KPC9mb250Pjxmb250IGZhY2U9IkhlbHZldGljYSwgQXJpYWwsIHNhbnMtc2VyaWYi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDhwdDsiPg0KPGRpdj48aT5FbmdpbmVlcmluZyBNYW5h
Z2VyIDxzcGFuPjxzcGFuPjxzcGFuPuKanTwvc3Bhbj48L3NwYW4+PC9zcGFuPiBDb21tIFNvZnR3
YXJlIEltcGxlbWVudGF0aW9uIERlcHQ8YnI+DQo8L2k+PC9kaXY+DQo8ZGl2PjxpPlRoZSBBZXJv
c3BhY2UgQ29ycG9yYXRpb248L2k+PC9kaXY+DQo8L3NwYW4+PC9mb250Pg0KPC9ib2R5Pg0KPC9o
dG1sPg0K

--_000_BYAPR09MB331813D85FED66A63173847DB9270BYAPR09MB3318namp_--


--===============6114146522275985352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6114146522275985352==--

