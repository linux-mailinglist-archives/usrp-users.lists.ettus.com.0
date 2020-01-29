Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7732A14C3DA
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2020 01:13:37 +0100 (CET)
Received: from [::1] (port=51918 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwaz7-0000g0-DZ; Tue, 28 Jan 2020 19:13:33 -0500
Received: from email6-west.aero.org ([130.221.16.31]:34268)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <prvs=29055daac=kyle.a.logue@aero.org>)
 id 1iwaz2-0000WG-NB
 for usrp-users@lists.ettus.com; Tue, 28 Jan 2020 19:13:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
 t=1580256808; x=1611792808;
 h=from:to:subject:date:message-id:mime-version;
 bh=vwkvyRc/6t0cODiUmpfUCmDpSBnXRMamhKzjOIlo88g=;
 b=fahrR82H1yNtNDHIZV4G6dJAM+m5GymkGtsgfxu6/Q/ZHmwW4s57u/La
 xjrTuAe4EJ5EPzF5Pg9kR9/I6d4Rz5jIiRVa4zcjL2fQMDWSX50OeIOSF
 Fs+6Hr4wOgImXLtKz8DkQgIXOxDDLSBKrOfkztkblIcLjzz0udAimnSIH U=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6000,8403,9514"; a="6091415"
X-IronPort-AV: E=Sophos;i="5.70,375,1574150400"; d="scan'208,217";a="6091415"
IronPort-PHdr: =?us-ascii?q?9a23=3AE6UfLxYsCWhbX+wEljCfUOX/LSx94ef9IxIV55?=
 =?us-ascii?q?w7irlHbqWk+dH4MVfC4el20gObRp3VvvRDjeee87vtX2AN+96giDgDa9QNMn?=
 =?us-ascii?q?1NksAKh0olCc+BB1f8Kavpfig3Ws0EUFhq4nyTOEVPH4D5fVKB6nA=3D?=
X-IPAS-Result: =?us-ascii?q?A2EDBgAHzTBeh21AL2hlg2YvUIFmAwQLKgqECoNGA4U6h?=
 =?us-ascii?q?V15lROHNANUCQEBAQEBAQEBAQcBLQIBAQKBSoJ0AheCNDgTAgMNAQEBBAEBA?=
 =?us-ascii?q?QEBBQMBAgIQAQEBCA0JCCmFPgELg05xAQEBAQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBBQKBDFYRHQEBOBEBDD4CBDAnBBsagwSBfk0DLgECo?=
 =?us-ascii?q?mkCgTmIYQEBdIEygn8BAQWFCxhXgTUJgTiNHIEcgViHNx6DDjKCLJBVhV4/m?=
 =?us-ascii?q?GoHgjyWUpp8jmCbDQIEAgQFAg4BAQWBaYF7TTCDL1AYDY43g1mKU0MxgSmLe?=
 =?us-ascii?q?wGBDwEB?=
Received: from mail-bl2gcc02lp2109.outbound.protection.outlook.com (HELO
 GCC02-BL0-obe.outbound.protection.outlook.com) ([104.47.64.109])
 by email6-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 16:12:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VRu6Z2IuIyq9aGiUHMFN0mSKq8zDLavZq38/5J06h69TcvCje4WL6BA8jDqmEhzv/7g4Mpt58BhaujyFQ6XYKgMXCNuhLCtykoBCRF73eYk1LYkbIloV7fBWfQ9KkrpQKJxOYfUlEYAwT5kP1j5lUQ1tF3F5uGMhx5O/SJvVPcbLBUYCBN/Kmb2hUgWreHdbEN82bnMZPU1A7Ywp9DxTNERdILNKmnKVQbaGd9m+wBDc6QSw577/Z8oHFt29btUXsZGZLi8DMN1s48UFQUL06Xe603+bBN+7RB+7oi9b4KgnS2vDTWq+IFwohBHuijkRp8HXGwSjD/8WdkYJcSclmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vwkvyRc/6t0cODiUmpfUCmDpSBnXRMamhKzjOIlo88g=;
 b=aqQRULUBalgyj6Gp/IS0MkITt9iHLu3H/oelh9IJ6S3qyH1afYClAhj6yr4PpEOWyhge5wEBhkFLeaUuui2f3pUMo+2i8z+qcYBugCAFbXM42usMfRJi/QbyPM54Y1cEacqOZBanQvzF8e8SDFEi7w9zV0PqGodnkm7qBxN0zxNlGR/UQfrb8cB911JYlRchLYJUSQdr4pbxkv4BsS6oFCxxbSBwfrYJw+3ygZTeKrbiInp7IX5fVjpOUNWL2MsvN5icEZk8XISjVFirRKs/X7wde0Oj/UmUeqXpW3zzXitmdXz3eXtUM3R/tMExTIpu+C+f6QwRjNXP5X5SxeDvYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vwkvyRc/6t0cODiUmpfUCmDpSBnXRMamhKzjOIlo88g=;
 b=vcpYtLGlpPfTn4KtAuU516F3vbuZ5aigI0FMJsDz+XVekEnEOVq2X9aDw/6hRlGwWWyKKyL4mEMqeimdErGk55io5leq+pyPv94Y8giz5LdgEjiurEnYXpEADtL/GZFlOCdXyqINXCyZ5RU/Ogd4U6C4Vo2W7TL8vwn7+bpBN/A=
Received: from DM6PR09MB4494.namprd09.prod.outlook.com (20.179.167.88) by
 DM6PR09MB4646.namprd09.prod.outlook.com (20.180.60.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Wed, 29 Jan 2020 00:12:44 +0000
Received: from DM6PR09MB4494.namprd09.prod.outlook.com
 ([fe80::1d21:dbda:b992:8f41]) by DM6PR09MB4494.namprd09.prod.outlook.com
 ([fe80::1d21:dbda:b992:8f41%5]) with mapi id 15.20.2665.026; Wed, 29 Jan 2020
 00:12:44 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E320 POE+ Adapter Suggestions
Thread-Index: AQHV1jhBQPwMJKSDyE21LOyYcVCyog==
Date: Wed, 29 Jan 2020 00:12:44 +0000
Message-ID: <DM6PR09MB44944794B7E0120493575601B9050@DM6PR09MB4494.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kyle.a.logue@aero.org; 
x-originating-ip: [130.221.224.7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8aa1f1a5-bbce-47ac-44ae-08d7a44ff6c4
x-ms-traffictypediagnostic: DM6PR09MB4646:
x-microsoft-antispam-prvs: <DM6PR09MB464676AB046AE8D69573737CB9050@DM6PR09MB4646.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02973C87BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(396003)(39860400002)(136003)(189003)(199004)(71200400001)(66556008)(6916009)(66476007)(66446008)(64756008)(55016002)(186003)(316002)(9686003)(5660300002)(4744005)(91956017)(76116006)(86362001)(66946007)(8676002)(6506007)(2906002)(52536014)(8936002)(478600001)(7696005)(81166006)(81156014)(19627405001)(33656002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR09MB4646;
 H:DM6PR09MB4494.namprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MbMWlcxoK9ub3Tq9mFJkpvP9HblQcHZYqNht+xeULd3AnsDcjObXYNygcTxUS0pbmE/spSqoFKAkiDWc7eXAfMyoYGthOzpEx5UXwikileE4Laxp5F8hmolb/NoA3FL6popMuqjEzHqWKKi51m63buMM35aYneJkyzjbpuiwgUTyCgNHcQ9VOH0riHWUgofDepc39gda5uMzh+DdBhpO8hghKhItx2xiWHTZyvgGKHvmH5YVaNcDVzOlxvrihjP8cBjIQ12YIGoQK3r5a6jciEPOb+/p7TwsjOTLB7aYVHH1t2OUXfJ6CIZFX2osXbK8EWmkMKKzXnC2/gXCHa1qHubiaGXzrnLlGXsEJPhlGIsYC1DonmvtYvL3CjmSeyvelUq9Kwq12xB93QydlA5k/oZggRzze1Auo4A9wfb+qay417sWqhOSkUz43pHCs/l+
x-ms-exchange-antispam-messagedata: W+8bxzaLPkIG1MMWGXHzEcIpS8CDPVS90EmJ5pPiiVMpcYq+sQrSY53F9TEYYn+IHQAqEs6dp6lnXHpy3T08Bf362Q8X8TDabSXEQYnmkq+HqtO2IY0s02Jel2ewHrfk1CYmi8E1EBZD1G21cbQo/w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-Network-Message-Id: 8aa1f1a5-bbce-47ac-44ae-08d7a44ff6c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2020 00:12:44.4060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9iGzSkwJ86ya6yCfJ3ZUS1/jexHqf/YgxMeGBxOdEbig9icoAJBmLoe2RxkkpOQN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR09MB4646
Subject: [USRP-users] E320 POE+ Adapter Suggestions
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
Content-Type: multipart/mixed; boundary="===============3063814401399594897=="
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

--===============3063814401399594897==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR09MB44944794B7E0120493575601B9050DM6PR09MB4494namp_"

--_000_DM6PR09MB44944794B7E0120493575601B9050DM6PR09MB4494namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSdtIGludGVyZXN0ZWQgaW4gdXNpbmcgYSBFMzIwIHZpYSBQT0UrIHRvIGRlbGl2ZXIgMTJ2IHBv
d2VyLiBEb2VzIGFueW9uZSBoYXZlIHN1Z2dlc3Rpb25zIGZvciBpbmplY3RvcnMvYWRhcHRlcnMg
dG8gdXNlIGluIGNvbWJpbmF0aW9uIHdpdGggdGhlIEUzMjA/IFBPRSsgaXMgc3VwcG9zZWQgdG8g
YmUgYWJsZSB0byBkZWxpdmVyIHVwIHRvIDMwVywgd2hpY2ggaXMgY29udmVuaWVudGx5IGhvdyB0
aGUgRTMyMCBpcyAxMlYgcmF0ZWQuIEkgZm91bmQgb25lIGFuIEFtYXpvbiB0aGF0IHdpbGwgZG8g
MjRXIChTTUFLTsKuIEFjdGl2ZSBHaWdhYml0IFBvRSBTcGxpdHRlciBBZGFwdGVyLCBJRUVFIDgw
Mi4zYXQgY29tcGxpYW50LCBVcCBUbyAxMDAgbWV0ZXJzLCA1ViAvIDEyViAvMTh2IE91dHB1dCks
IGlzIHRoZXJlIGEgYmV0dGVyIGFsdGVybmF0aXZlPw0KDQpJIGtub3cgSSB3aWxsIGhhdmUgdG8g
bWFrZSBhIGNhYmxlLiBUaGFua3MuDQoNCkt5bGUgTG9ndWUNCkVuZ2luZWVyaW5nIE1hbmFnZXIg
4pqdIENvbW0gU29mdHdhcmUgSW1wbGVtZW50YXRpb24gRGVwdA0KVGhlIEFlcm9zcGFjZSBDb3Jw
b3JhdGlvbg0K

--_000_DM6PR09MB44944794B7E0120493575601B9050DM6PR09MB4494namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNv
bG9yOiByZ2IoMCwgMCwgMCk7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNTUsIDI1NSwgMjU1KTsi
Pg0KSSdtIGludGVyZXN0ZWQgaW4gdXNpbmcgYSBFMzIwIHZpYSBQT0UmIzQzOyB0byBkZWxpdmVy
IDEydiBwb3dlci4gRG9lcyBhbnlvbmUgaGF2ZSBzdWdnZXN0aW9ucyBmb3IgaW5qZWN0b3JzL2Fk
YXB0ZXJzIHRvIHVzZSBpbiBjb21iaW5hdGlvbiB3aXRoIHRoZSBFMzIwPyBQT0UmIzQzOyBpcyBz
dXBwb3NlZCB0byBiZSBhYmxlIHRvIGRlbGl2ZXIgdXAgdG8gMzBXLCB3aGljaCBpcyBjb252ZW5p
ZW50bHkgaG93IHRoZSBFMzIwIGlzIDEyViByYXRlZC4gSSBmb3VuZA0KIG9uZSBhbiBBbWF6b24g
dGhhdCB3aWxsIGRvIDI0VyAoU01BS07CriBBY3RpdmUgR2lnYWJpdCBQb0UgU3BsaXR0ZXIgQWRh
cHRlciwgSUVFRSA4MDIuM2F0IGNvbXBsaWFudCwgVXAgVG8gMTAwIG1ldGVycywgNVYgLyAxMlYg
LzE4diBPdXRwdXQpLCBpcyB0aGVyZSBhIGJldHRlciBhbHRlcm5hdGl2ZT88L2Rpdj4NCjxkaXYg
c3R5bGU9ImZvbnQtZmFtaWx5OiBDYWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlm
OyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiByZ2IoMCwgMCwgMCk7IGJhY2tncm91bmQtY29sb3I6
IHJnYigyNTUsIDI1NSwgMjU1KTsiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZh
bWlseTogQ2FsaWJyaSwgQXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAx
MnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjU1LCAyNTUs
IDI1NSk7Ij4NCkkga25vdyBJIHdpbGwgaGF2ZSB0byBtYWtlIGEgY2FibGUuIFRoYW5rcy48YnI+
DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBDYWxpYnJpLCBBcmlhbCwgSGVsdmV0
aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiByZ2IoMCwgMCwgMCk7Ij4N
Cjxicj4NCjwvZGl2Pg0KPGRpdiBpZD0iU2lnbmF0dXJlIj4NCjxkaXY+PC9kaXY+DQo8ZGl2IGlk
PSJkaXZ0YWdkZWZhdWx0d3JhcHBlciIgZGlyPSJsdHIiIHN0eWxlPSJmb250LXNpemU6IDEycHQ7
IGNvbG9yOiByZ2IoMCwgMCwgMCk7IGZvbnQtZmFtaWx5OiBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNh
bnMtc2VyaWY7Ij4NCjxzcGFuIGlkPSJtcy1ydGVyYW5nZXBhc3RlLXN0YXJ0Ij48L3NwYW4+PHNw
YW4gc3R5bGU9ImZvbnQtZmFtaWx5OkNvbnNvbGFzLG1vbm9zcGFjZTsgZm9udC1zaXplOjhwdCI+
PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkNvbnNvbGFzLG1vbm9zcGFjZTsgZm9udC1zaXplOjhw
dCI+PGI+S3lsZSBMb2d1ZTwvYj48YnI+DQo8c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6Q29uc29s
YXMsbW9ub3NwYWNlOyBmb250LXNpemU6OHB0Ij4NCjxkaXY+PGk+RW5naW5lZXJpbmcgTWFuYWdl
ciA8c3Bhbj48c3Bhbj48c3Bhbj7imp08L3NwYW4+PC9zcGFuPjwvc3Bhbj4gQ29tbSBTb2Z0d2Fy
ZSBJbXBsZW1lbnRhdGlvbiBEZXB0PGJyPg0KPC9pPjwvZGl2Pg0KPGRpdj48aT5UaGUgQWVyb3Nw
YWNlIENvcnBvcmF0aW9uPC9pPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpDb25zb2xhcyxtb25v
c3BhY2U7IGZvbnQtc2l6ZTo4cHQiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpDb25zb2xhcyxt
b25vc3BhY2U7IGZvbnQtc2l6ZTo4cHQiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpDb25zb2xh
cyxtb25vc3BhY2U7IGZvbnQtc2l6ZTo4cHQiPjwvc3Bhbj48L3NwYW4+PC9zcGFuPjxzcGFuIGlk
PSJtcy1ydGVyYW5nZXBhc3RlLWVuZCI+PC9zcGFuPjwvZGl2Pg0KPC9zcGFuPjxzcGFuIHN0eWxl
PSJmb250LWZhbWlseTpDb25zb2xhcyxtb25vc3BhY2U7IGZvbnQtc2l6ZTo4cHQiPjwvc3Bhbj48
L3NwYW4+PC9zcGFuPjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_DM6PR09MB44944794B7E0120493575601B9050DM6PR09MB4494namp_--


--===============3063814401399594897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3063814401399594897==--

