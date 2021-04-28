Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5F936E10D
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 23:39:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4EC1F384AE6
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 17:39:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="i1Q+FyuU";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="WnR39xSW";
	dkim-atps=neutral
Received: from email3-east.aero.org (email3-east.aero.org [130.221.184.167])
	by mm2.emwd.com (Postfix) with ESMTPS id 37961384635
	for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 17:38:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1619645901; x=1651181901;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:mime-version;
  bh=jc+duMWbjaTnVyMkvf9w4im102tCoeEHHibmlSV5isY=;
  b=i1Q+FyuUwsr/3LBHQgmuRbSRM/bZOKJpsOXx+sefK646gi39HF8DgdfD
   0ZrlS0CXPl8dumzlE/0nAbPYI2PRz9NGrePmjbDxW4+McxMsEHFJC94jZ
   DVzztu4dBY81v9ZvVL5Ve9rw9BhfYWkLMQ1SPCI1GripZp7ZvkzNWmrXd
   U=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="4929972"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400";
   d="scan'208,217";a="4929972"
IronPort-PHdr: =?us-ascii?q?A9a23=3A7QlQWB/Opet/Gf9uWNLoyV9lXQAupqn0MwgJ6?=
 =?us-ascii?q?5Eul7NJdOG58o//OFDEjd1iiVbIWcPQ7PcXw+bVsqW1X2sG7N7BtX0Za5VDW?=
 =?us-ascii?q?lcDjtlehA0vBsOJSCiZZP7nZiA3BoJOAVli+XzoPk1cGcK4bFrX8TW+6DcIE?=
 =?us-ascii?q?UD5Mgx4bu3+Bo/ViZGx0Oa/s53eaglFnnyze7R3eRy7twKXsdMZ0uNf?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AP41zPamALqCZA/kJWflZtkozP0npDfLt3D?=
 =?us-ascii?q?Abvn1ZSRFFG/GwvcaogfgdyFvImC8cMUtQ+uyoFaGcTRrnmKJdzpIWOd6ZMD?=
 =?us-ascii?q?XOnEuNAMVc4ZD5wzvmchefysd42b17e6ZzTP3cZGIVse/A7AO1E8ktzbC8mc?=
 =?us-ascii?q?jC79v29HtxURpsL5hp8gYRMHf4LmRNWAJECZAlfaD82uN7oVObFkg/X4CQKX?=
 =?us-ascii?q?kBQuTZ4/jMkouOW29iOyIa?=
X-IPAS-Result: =?us-ascii?q?A2EPAACB1Ilgh2xBL2hXAxwBAQEBAQEHAQESAQEEBAEBg?=
 =?us-ascii?q?gMHAQELAYEiAS9RgVdoC4Q5g0gDhFlgiHOKM4obhiSBJQNLCQsBAQEBAQEBA?=
 =?us-ascii?q?QEHAh0BFAIEAQEDA4FVgnUCF4FmJjQJDgIEDgEBAQUBAQEBAQYDAQICEAEBA?=
 =?us-ascii?q?QENCwkIKRqFUA2DVYEIAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBBQKBCD0BAQEBAwEiHQEBNwEPAgEGAg4DBAEBKAMCAgIfBwoUCQgCB?=
 =?us-ascii?q?A4FCIJpgX9SBQMvAY0zkG0Cih96gTKBAYIEAQEGBASFJA0LWIE7CYE6AYJ4g?=
 =?us-ascii?q?nETP0YBAYZTN4FVQoETQ4JfPoIegiYGDwoVEYJQNoIrgisTgkyBQpEcgy2Hd?=
 =?us-ascii?q?p4XLywHgxOBIQYLhy+NG4FnhVUQpRakPo9ThG0CBAIEBQIOAQEGgVR6gRozG?=
 =?us-ascii?q?jCCRWdQFwIOjh8Zg1eKXUMwOAIGAQkBAQMJfIsDAYEPAQE?=
Received: from mail-dm3gcc02lp2108.outbound.protection.outlook.com (HELO GCC02-DM3-obe.outbound.protection.outlook.com) ([104.47.65.108])
  by email3-east.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2021 14:38:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XoJDAaoKBjXmnhwapcYzAdLM9ZrCVD7K8rMJgXpn4vS8clqwYy+6Ed/nzNk0aqIHqE21TFw0aEVjGsY6S1IM4XonrJeT/yEvIN8rWSYFXaGVSucewBPWHI+7C5iVMXE4i5oxNTVE646eBCf5HdvaxC4ly5uf8rGmfCbViHeP1Wre60D2H02z1Wu0UbprYVxF5qyc+duDR146d729PiW3G+uUPmDdoYm4DTuhJps0jxCHR2UtjWQ1eJ96KFs0tb3lc4udGsuKgLnw05a2h+Y7H/nPlbK3GZgCnujxjanlHliPxL05M/8FaqR5eQnCqc+6ucOyMYHKHWjes4Oh1ute/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jc+duMWbjaTnVyMkvf9w4im102tCoeEHHibmlSV5isY=;
 b=jLqkEyr4BZtSTqq2pFAXhpg0KM8ftZaEFMdPcM2vQgXNrdswBouWqpnX0fXYp3zEe6XBLuAwCNNsdQj9ejc/8ef825CSKKJvCe/zLyF1W/sBeLAnXltTGmGnWIPK4NM8Dlwafe1SmnsiJjoA0+QgCnSvxipCv51HNfnRaICbtthZbAFLaMURJr+8YZtAFE/puN1R0XKSbGHZ0nmdaHS4aVxWB9jnH3S+OldFnb5dKmykdoJyQWNmvxZ9Y823kic+3uXxoLdEzpH6gy5qBdLYZtlJT1Q+b/NM4QOh75Y54pq1gN059GLrIM2XygGriSEfC9M5Nb5QQfgS1cv6sNmrGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jc+duMWbjaTnVyMkvf9w4im102tCoeEHHibmlSV5isY=;
 b=WnR39xSWauvB7QDCgyXDwtPKraoZU/LcBFfFEaDTuwGf34Ym1z2QPzj0Q+Et3mTzK+vrNNnlhbjMT0qVlMhd5HZ7XHkRtAGbwtKYz4Gj7QV7J81oUA4RXhhx+M97BKwRvyW6LITJFX0ldWxOt+t9vS29hvwKCpTnIPCbucJQocI=
Received: from BY3PR09MB7316.namprd09.prod.outlook.com (2603:10b6:a03:34c::21)
 by BY5PR09MB6002.namprd09.prod.outlook.com (2603:10b6:a03:240::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.28; Wed, 28 Apr
 2021 21:38:19 +0000
Received: from BY3PR09MB7316.namprd09.prod.outlook.com
 ([fe80::1535:dae:5b5f:307f]) by BY3PR09MB7316.namprd09.prod.outlook.com
 ([fe80::1535:dae:5b5f:307f%7]) with mapi id 15.20.4065.027; Wed, 28 Apr 2021
 21:38:18 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [USRP-users] Bare metal development on X310
Thread-Index: AQHXPHI4Q6t75kHhek2lIoIUcM1pOarKckMAgAABm0Q=
Date: Wed, 28 Apr 2021 21:38:18 +0000
Message-ID: 
 <BY3PR09MB7316062E0274087C3ABD493EEC409@BY3PR09MB7316.namprd09.prod.outlook.com>
References: 
 <BY3PR09MB73167120DD55101EA0FA542EEC409@BY3PR09MB7316.namprd09.prod.outlook.com>,<CAEXYVK7F=BP2frJdgdbrdOEWqV_WQeJ6vugmJ2bZXPTuVTE=+w@mail.gmail.com>
In-Reply-To: 
 <CAEXYVK7F=BP2frJdgdbrdOEWqV_WQeJ6vugmJ2bZXPTuVTE=+w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=aero.org;
x-originating-ip: [130.221.224.7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e1136ae-93d6-4684-ef8d-08d90a8df060
x-ms-traffictypediagnostic: BY5PR09MB6002:
x-microsoft-antispam-prvs: 
 <BY5PR09MB6002F5974877C4407C563A93EC409@BY5PR09MB6002.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 HlMo+81J9ssGjAdMVjKu+Z8OcSJ54bbGOxXfJTkVVqiyshJncY1GGnlINODicz1Q/ZAB2FH8N0XkhHaLtK2BkkfSA2J0XLozzPLG3E7rUAwmv74UNaQqYWQdiaoHq6eUUAhcGyquCPIXJnlMoHNvisGFuXP8F9QLQQ6XfSQtSQ4DHSAGbKGUkaCZYN3cOCm7I/Y+0VE2r7kn8va6c5XntZt8YxNoYJoMm86D+JwZ7GqSa79RzZYBeV3ww0DrxO6LECmWFcQL6BsbsjhiMSZdxCfi1jHqeFbD72XewlCAesFzloUCt/RAzLcP3Mz6OzBWO36rr0c5nd4NYsnfELPHEOYKMPu92yFr4lQ7KZS3WkmbTUsSQyqjdcq5HAKYC6KPVgI29ySfuRPhoEXU8n+gZsUcBYMCIVyLTPptx9PlJGVsAigjOswlDV9SWXP/308riD3mx4qpYKasQzZct/Fy+4LuexncjhCZp2ZQdAWm/VsOOvmaH3mi/3iPvI4ndCFhZN+dEX8TlDSeGwX5YvCeVh7SCggjQxtuscEMEDbY4Fishzh7tkfVy7bwpQtk3wUDuUhheKvQlC8kIL30LP/GpNFaQ1p43eupcWukSXgYti8=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR09MB7316.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(396003)(39840400004)(376002)(346002)(366004)(9686003)(76116006)(186003)(6506007)(4326008)(53546011)(55016002)(44832011)(38100700002)(122000001)(86362001)(66476007)(478600001)(66946007)(64756008)(66446008)(71200400001)(5660300002)(66556008)(8936002)(8676002)(33656002)(19627405001)(6916009)(2906002)(83380400001)(26005)(316002)(7696005)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?eVFFS0xXUDk0dk04NFpMTGNFSHU4MHZNTU0vbU9DNlpiSGsrb0VCNDI2azVi?=
 =?utf-8?B?eFJrUk9LN2tUcFlZd2NrWUlvRzFYYVVRNitBTTluM0s3MzJNalI2enA0YVkw?=
 =?utf-8?B?ay83d2tLY2ZSNnc3SDZYYThKYlZXSmtIcXpsNXEvL0JLcXlVZERCVzdqRHBu?=
 =?utf-8?B?YU0zdnBGcW50ZWx2NEVKWHRjZVRyTHdLSFVtSU1LWGpSOUd4cnF4UVZORytD?=
 =?utf-8?B?aEhoRnYxU0JFd1dFTGlhM3ZGZGRMclN0L1oxcFIwOHNFdjA3Z1FMMkJVVXhV?=
 =?utf-8?B?OEVOTjhCWlNncFluYi85YlQ5RGFsL2UvMlN2VnFUSC9UNkZoVkQwNGx4akRk?=
 =?utf-8?B?ZXZrbzJYanRnb0szOUpqc1E5SVBnSkNPNnZEU2U5WnptMUltTlk1RHZyb2dY?=
 =?utf-8?B?VFBLQThpM0xLSGlHcEx1S0dXb0FFMHlxMU9NQ2xkd1RqQi96QlN1NVMvMXpq?=
 =?utf-8?B?TVF0Ymo2MnExUWExdGJlS0R2VE91VnlvMHRPYm5FY3Y0RHk4QXFYMUFSMWNz?=
 =?utf-8?B?ckhOUmxsdEp0S0FEZjdZQUNFblI0Qkt2ZXpXNWJVQ3RwbXB0dnBuc1ArUXEz?=
 =?utf-8?B?VXczbnZEWjliYzN6WTMvTVlVKzJTakVYQ0NmcDFLNjFvWU1IVTNtSDJMYkdo?=
 =?utf-8?B?dmJjOVhsVG9DSXVSY2J4aVVBSFJ5VW9Cbmg0Z1lmWUgzbE5XWGRBWUlFQWJH?=
 =?utf-8?B?K3hrVFZZNjVJcDBYT0xQemMvUmdhQXAyNkhVRmkrSnRQZi9nTndwY3Q2Rzds?=
 =?utf-8?B?aVM0RDZwVjI4NVlYYWhvZ3FhbXRlZXhMSnFlZHI5QjFnbVpnVFVnZHpBYUVw?=
 =?utf-8?B?dDhYRi9sRWp2cDRpc3RJVFhIYVM2TTF0b1JLRTM0QTFkczU1bmJhbHNCWWRW?=
 =?utf-8?B?OTF2TmU3ZzRXaFFFdElEcURyNkhUWitNaVYrUEF2Wld0b1JCYnZTdkNTSHhp?=
 =?utf-8?B?amZ0SHU0cFlqR3lXM1REc2lGVW5JcEIySXVGSTB3NGkrT0V3NnFDTVFPbStT?=
 =?utf-8?B?ZmdzdGwrYmpDdGRueDh0VGF4TzAyRFcrL2paOXR3L2lrT24vSTR3L1Erbi9k?=
 =?utf-8?B?UTg0aCtJb0tBN2d4bURBUmhJTkJNSEtBOENIZjllN3dxNWlPQjB3SjYySjZh?=
 =?utf-8?B?VG5od1hrckZvWVZIczZkRmZRNHNHb3FNQVI3RWM1ZDRNclF2Q2hsekh5eFRk?=
 =?utf-8?B?anRIQWRlNVBhSjYxc3A1aTFZZ1RIMS9RZ1BxSTlBcnpMcjBYYWFJNWo3bFB3?=
 =?utf-8?B?RWF3dlJab095OWpiMWVpcGVPeWU3ejdPZ3lWRHh0VE9vZ3hxbkNjRTdUeGFE?=
 =?utf-8?B?YmhPR1FWaS9MQ3JUQnRpQlQvUFJTdHZ4L0ZlbVFhbWs2TnZwVjYyaFcwbGN4?=
 =?utf-8?B?ZnJKWWdRVDNMSStTWk1ZS2dmcGR0ZjN1bENlSXNkamcxRi9UQ2dqTnB5Y0h5?=
 =?utf-8?B?MWRNNjRMNEM4NzhnZ1U1NktOaGtESUFibTJLOElNVFZUNHNBQW5INUZJYWRW?=
 =?utf-8?B?dWN0K2hodGpOQitiOUNBTG9qeDdWSjhTMUpoUHM2ekQxNXFNZG1ZOUFnWU9x?=
 =?utf-8?B?dGdSMzJCVUhPRWNGRlJEbkxSM1JhUEVjQnoydUdKZTJybVg3Q1h3Ty9qRlp1?=
 =?utf-8?B?YnIrRGM1SkN6djI4YlA2WEVzTWt4U1l2TkZWN21Oald6c0FNNkxrdU4rRy8w?=
 =?utf-8?B?TnNKK3lqQmtpTEhPNmxKbWhZZ2FZeTRxOTVsd3lqQVMvMk42NlpDNVRFbnp4?=
 =?utf-8?Q?eUGqzwq6iOOecc6yng=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY3PR09MB7316.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e1136ae-93d6-4684-ef8d-08d90a8df060
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2021 21:38:18.7315
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR09MB6002
Message-ID-Hash: YL2UFV6IWPACO7TAKHXFLBTQVDMKAOD5
X-Message-ID-Hash: YL2UFV6IWPACO7TAKHXFLBTQVDMKAOD5
X-MailFrom: prvs=745c430d6=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bare metal development on X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OTICD2ZSPPHAIFHR4PAIWYVDUDQMQWZR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0451288508039596866=="

--===============0451288508039596866==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY3PR09MB7316062E0274087C3ABD493EEC409BY3PR09MB7316namp_"

--_000_BY3PR09MB7316062E0274087C3ABD493EEC409BY3PR09MB7316namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhdCdzIHdoYXQgSSB3YXMgYWZyYWlkIG9mLiAgTm90ZSB0aGF0IEkgZG8gbm90IG5lZWQgYW55
IGRhdWdodGVyIGNhcmRzIChqdXN0IExGVFgvTEZSWCksIHdoaWNoIHJlZHVjZXMgdGhlIG51bWJl
ciBvZiBjb25maWd1cmF0aW9uIGl0ZW1zLg0KTXkgbWFpbiBjb25jZXJuIGlzIHRoYXQgSSB3YXMg
Z29pbmcgdG8gdGFrZSBvdmVyIHRoZSBldGhlcm5ldCBpbnRlcmZhY2UuICBJIGd1ZXNzIEkgY2Fu
IHRha2Ugb3ZlciBvbmUgYW5kIGxlYXZlIHRoZSBvdGhlciBvbmUgZm9yIFVIRC4gIEkgYW0gYWxz
byBjb25jZXJuZWQgdGhhdCB0aGUgVUhEIHdpbGwgY29tcGxhaW4gbG91ZGx5IG9uY2UgaSBzdGFy
dCB0YWtpbmcgYmxvY2tzIG91dCBvZiB0aGUgZmxvd2dyYXBoIHRoYXQgaXQgZXhwZWN0cyB0byBi
ZSB0aGVyZS4NCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX18NCg0KRXVnZW5lIEdyYXl2ZXIs
IFBoLkQuDQpBZXJvc3BhY2UgQ29ycC4sIFByaW5jaXBhbCBFbmdpbmVlcg0KVGVsOiAzMTAuMzM2
LjEyNzQNCl9fX19fX19fX19fX19fX19fX19fX19fXw0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KRnJvbTogQnJpYW4gUGFkYWxpbm8gPGJwYWRhbGlub0BnbWFpbC5jb20+DQpT
ZW50OiBXZWRuZXNkYXksIEFwcmlsIDI4LCAyMDIxIDI6MjkgUE0NClRvOiBFdWdlbmUgR3JheXZl
ciA8ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmc+DQpDYzogdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20gPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KU3ViamVjdDogUmU6IFtVU1JQLXVzZXJz
XSBCYXJlIG1ldGFsIGRldmVsb3BtZW50IG9uIFgzMTANCg0KT24gV2VkLCBBcHIgMjgsIDIwMjEg
YXQgNToxMSBQTSBFdWdlbmUgR3JheXZlciA8ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmc8bWFpbHRv
OmV1Z2VuZS5ncmF5dmVyQGFlcm8ub3JnPj4gd3JvdGU6DQpIZWxsbywNCg0KSSBhbSBwbGFubmlu
ZyB0byB1c2UgYW4gWDMxMCAod2UgaGF2ZSBhdCBsZWFzdCA1MCBvZiB0aGVtIGFyb3VuZCDwn5mC
ICkgZm9yIGFuIGFsbC1oZGwgcHJvamVjdC4gIEhhcyBhbnlvbmUgdXNlZCBpdCB3L291dCBSRk5v
QyBvciBVSEQ/ICBIb3cgbXVjaCBzZXR1cCBmb3Igb24tYm9hcmQgY29tcG9uZW50cyBpcyB0aGVy
ZT8gIENhbiBJIGRvIGl0IHcvb3V0IHRoZSBzb2Z0d2FyZSBydW5uaW5nIG9uIGEgUEM/DQoNClRo
YXQncyBwcmV0dHkgYW1iaXRpb3VzLg0KDQpGcm9tIHdoYXQgSSd2ZSBzZWVuLCBhbGwgdGhlIFBM
TCBwcm9ncmFtbWluZywgUkYgc3dpdGNoZXMsIGFuZCBnZW5lcmFsIHNldHVwL2hvdXNla2VlcGlu
ZyBpcyBkb25lIGluIFVIRCB3aXRoIHZlcnkgbGl0dGxlIGhlbHAgYnkgd2F5IG9mIGEgc29mdCBD
UFUgaW4gdGhlIEZQR0EuDQoNCkkgYW0gbm90IHN1cmUgd2hhdCB5b3VyIHRpbWVsaW5lIGlzLCBi
dXQgeW91J2QgYmUgcmVkb2luZyBhIGxvdCBvZiBlbmdpbmVlcmluZyBlZmZvcnQganVzdCB0byBn
ZXQgdG8gYSBuZXcgYmFzZWxpbmUuICBZb3UgbWlnaHQgd2FudCB0byBjb25zaWRlciBhIHNtYWxs
L2NoZWFwIFNCQyB3aXRoIGdpZ2FiaXQgZXRoZXJuZXQgdGhhdCBydW5zIGxpbnV4L1VIRCBhbmQg
ZG9lcyB0aGUgaG91c2VrZWVwaW5nLCBhbmQgeW91IGNyZWF0ZSB5b3VyICJhbGwtaGRsIiBwcm9q
ZWN0IGFzIGEgc2luZ2xlIFJGTm9DIGJsb2NrLiAgVGhlIG90aGVyIFJGTm9DIGJsb2NrIHlvdSBo
YXZlIGluIHRoZXJlIHdvdWxkIGJlIHRoZSBSYWRpbyBibG9jayBpdHNlbGYgLSBzbyB0aGUgUkZO
b0MgaW5mcmFzdHJ1Y3R1cmUgb3ZlcmhlYWQgd291bGQgYmUgbWluaW1pemVkLCB0aGVvcmV0aWNh
bGx5Lg0KDQpEbyB5b3UgdGhpbmsgdGhpcyBpcyBhIHBvc3NpYmlsaXR5LCBvciBhcmUgeW91IHJl
YWxseSBzdGVhZGZhc3Qgb24gcmVhbGx5IGRvaW5nIGFuIGFsbC1oZGwgcHJvamVjdD8NCg0KQnJp
YW4NCg==

--_000_BY3PR09MB7316062E0274087C3ABD493EEC409BY3PR09MB7316namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNv
bG9yOiByZ2IoMCwgMCwgMCk7Ij4NClRoYXQncyB3aGF0IEkgd2FzIGFmcmFpZCBvZi4mbmJzcDsg
Tm90ZSB0aGF0IEkgZG8gbm90IG5lZWQgYW55IGRhdWdodGVyIGNhcmRzIChqdXN0IExGVFgvTEZS
WCksIHdoaWNoIHJlZHVjZXMgdGhlIG51bWJlciBvZiBjb25maWd1cmF0aW9uIGl0ZW1zLjwvZGl2
Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNh
bnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KTXkgbWFp
biBjb25jZXJuIGlzIHRoYXQgSSB3YXMgZ29pbmcgdG8gdGFrZSBvdmVyIHRoZSBldGhlcm5ldCBp
bnRlcmZhY2UuJm5ic3A7IEkgZ3Vlc3MgSSBjYW4gdGFrZSBvdmVyIG9uZSBhbmQgbGVhdmUgdGhl
IG90aGVyIG9uZSBmb3IgVUhELiZuYnNwOyBJIGFtIGFsc28gY29uY2VybmVkIHRoYXQgdGhlIFVI
RCB3aWxsIGNvbXBsYWluIGxvdWRseSBvbmNlIGkgc3RhcnQgdGFraW5nIGJsb2NrcyBvdXQgb2Yg
dGhlIGZsb3dncmFwaCB0aGF0IGl0IGV4cGVjdHMgdG8NCiBiZSB0aGVyZS48L2Rpdj4NCjxkaXY+
DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQ2FsaWJyaSwgQXJpYWwsIEhlbHZldGljYSwgc2Fu
cy1zZXJpZjsgZm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQo8YnI+DQo8
L2Rpdj4NCjxkaXYgaWQ9IlNpZ25hdHVyZSI+DQo8ZGl2Pg0KPG1ldGEgY29udGVudD0idGV4dC9o
dG1sOyBjaGFyc2V0PVVURi04Ij4NCjxkaXYgaWQ9ImRpdnRhZ2RlZmF1bHR3cmFwcGVyIiBkaXI9
Imx0ciIgc3R5bGU9ImNvbG9yOnJnYigwLDAsMCk7IGZvbnQtZmFtaWx5OkNhbGlicmksQXJpYWws
SGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBiYWNrZ3JvdW5kLWNvbG9yOnJn
YigyNTUsMjU1LDI1NSkiPg0KPHAgc3R5bGU9Im1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRv
bTogMHB4OyI+PHNwYW4gc3R5bGU9ImNvbG9yOmJsYWNrOyBmb250LWZhbWlseTomcXVvdDtBcmlh
bCZxdW90OyxzYW5zLXNlcmlmOyBmb250LXNpemU6MTBwdCI+PHNwYW4gaWQ9Im1zLXJ0ZXJhbmdl
cGFzdGUtc3RhcnQiPjwvc3Bhbj48c3BhbiBzdHlsZT0iY29sb3I6cmdiKDAsMCwwKTsgZm9udC1m
YW1pbHk6QXJpYWwsc2Fucy1zZXJpZjsgZm9udC1zaXplOjEzLjMzcHgiPl9fX19fX19fX19fX19f
X19fX19fX19fXzwvc3Bhbj48c3BhbiBpZD0ibXMtcnRlcmFuZ2VwYXN0ZS1lbmQiPjwvc3Bhbj48
YnI+DQo8L3NwYW4+PC9wPg0KPHAgc3R5bGU9Im1hcmdpbi10b3A6IDBweDsgbWFyZ2luLWJvdHRv
bTogMHB4OyI+PHNwYW4gc3R5bGU9ImNvbG9yOmJsYWNrOyBmb250LWZhbWlseTomcXVvdDtBcmlh
bCZxdW90OyxzYW5zLXNlcmlmOyBmb250LXNpemU6MTBwdCI+RXVnZW5lIEdyYXl2ZXIsIFBoLkQu
PGJyPg0KQWVyb3NwYWNlIENvcnAuLCBQcmluY2lwYWwgRW5naW5lZXI8YnI+DQpUZWw6IDMxMC4z
MzYuMTI3NDxicj4NCl9fX19fX19fX19fX19fX19fX19fX19fXzwvc3Bhbj48YnI+DQo8L3A+DQo8
L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjxkaXYgaWQ9ImFwcGVuZG9uc2VuZCI+PC9k
aXY+DQo8aHIgc3R5bGU9ImRpc3BsYXk6aW5saW5lLWJsb2NrO3dpZHRoOjk4JSIgdGFiaW5kZXg9
Ii0xIj4NCjxkaXYgaWQ9ImRpdlJwbHlGd2RNc2ciIGRpcj0ibHRyIj48Zm9udCBmYWNlPSJDYWxp
YnJpLCBzYW5zLXNlcmlmIiBzdHlsZT0iZm9udC1zaXplOjExcHQiIGNvbG9yPSIjMDAwMDAwIj48
Yj5Gcm9tOjwvYj4gQnJpYW4gUGFkYWxpbm8gJmx0O2JwYWRhbGlub0BnbWFpbC5jb20mZ3Q7PGJy
Pg0KPGI+U2VudDo8L2I+IFdlZG5lc2RheSwgQXByaWwgMjgsIDIwMjEgMjoyOSBQTTxicj4NCjxi
PlRvOjwvYj4gRXVnZW5lIEdyYXl2ZXIgJmx0O2V1Z2VuZS5ncmF5dmVyQGFlcm8ub3JnJmd0Ozxi
cj4NCjxiPkNjOjwvYj4gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gJmx0O3VzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tJmd0Ozxicj4NCjxiPlN1YmplY3Q6PC9iPiBSZTogW1VTUlAtdXNlcnNd
IEJhcmUgbWV0YWwgZGV2ZWxvcG1lbnQgb24gWDMxMDwvZm9udD4NCjxkaXY+Jm5ic3A7PC9kaXY+
DQo8L2Rpdj4NCjxkaXY+DQo8ZGl2IGRpcj0ibHRyIj4NCjxkaXYgZGlyPSJsdHIiPk9uIFdlZCwg
QXByIDI4LCAyMDIxIGF0IDU6MTEgUE0gRXVnZW5lIEdyYXl2ZXIgJmx0OzxhIGhyZWY9Im1haWx0
bzpldWdlbmUuZ3JheXZlckBhZXJvLm9yZyI+ZXVnZW5lLmdyYXl2ZXJAYWVyby5vcmc8L2E+Jmd0
OyB3cm90ZTo8YnI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9InhfZ21haWxfcXVvdGUiPg0KPGJsb2Nr
cXVvdGUgY2xhc3M9InhfZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44
ZXg7IGJvcmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpOyBwYWRkaW5nLWxlZnQ6
MWV4Ij4NCjxkaXYgZGlyPSJsdHIiPg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6Q2FsaWJyaSxB
cmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigwLDAs
MCkiPg0KSGVsbG8sPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpDYWxpYnJpLEFyaWFs
LEhlbHZldGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+
DQo8YnI+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkNhbGlicmksQXJpYWwsSGVs
dmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NCkkg
YW0gcGxhbm5pbmcgdG8gdXNlIGFuIFgzMTAgKHdlIGhhdmUgYXQgbGVhc3QgNTAgb2YgdGhlbSBh
cm91bmQgPHNwYW4gaWQ9InhfZ21haWwtbV8tNDc4MTAwMjg0NDUxMjA0MzIzNPCfmYIiPg0K8J+Z
giApIGZvciBhbiBhbGwtaGRsIHByb2plY3QuJm5ic3A7IEhhcyBhbnlvbmUgdXNlZCBpdCB3L291
dCBSRk5vQyBvciBVSEQ/Jm5ic3A7IEhvdyBtdWNoIHNldHVwIGZvciBvbi1ib2FyZCBjb21wb25l
bnRzIGlzIHRoZXJlPyZuYnNwOyBDYW4gSSBkbyBpdCB3L291dCB0aGUgc29mdHdhcmUgcnVubmlu
ZyBvbiBhIFBDPzwvc3Bhbj48L2Rpdj4NCjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPGRpdj48YnI+
DQo8L2Rpdj4NCjxkaXY+VGhhdCdzIHByZXR0eSZuYnNwO2FtYml0aW91cy48L2Rpdj4NCjxkaXY+
PGJyPg0KPC9kaXY+DQo8ZGl2PkZyb20gd2hhdCBJJ3ZlIHNlZW4sIGFsbCB0aGUgUExMIHByb2dy
YW1taW5nLCBSRiBzd2l0Y2hlcywgYW5kIGdlbmVyYWwgc2V0dXAvaG91c2VrZWVwaW5nIGlzIGRv
bmUgaW4gVUhEIHdpdGggdmVyeSBsaXR0bGUgaGVscCBieSB3YXkgb2YgYSBzb2Z0IENQVSBpbiB0
aGUgRlBHQS48L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PkkgYW0gbm90IHN1cmUgd2hh
dCB5b3VyIHRpbWVsaW5lIGlzLCBidXQgeW91J2QgYmUgcmVkb2luZyBhIGxvdCBvZiBlbmdpbmVl
cmluZyBlZmZvcnQganVzdCB0byBnZXQgdG8gYSBuZXcgYmFzZWxpbmUuJm5ic3A7IFlvdSBtaWdo
dCB3YW50IHRvIGNvbnNpZGVyIGEgc21hbGwvY2hlYXAgU0JDIHdpdGggZ2lnYWJpdCBldGhlcm5l
dCB0aGF0IHJ1bnMgbGludXgvVUhEIGFuZCBkb2VzIHRoZSBob3VzZWtlZXBpbmcsIGFuZCB5b3Ug
Y3JlYXRlIHlvdXINCiAmcXVvdDthbGwtaGRsJnF1b3Q7IHByb2plY3QgYXMgYSBzaW5nbGUgUkZO
b0MgYmxvY2suJm5ic3A7IFRoZSBvdGhlciBSRk5vQyBibG9jayB5b3UgaGF2ZSBpbiB0aGVyZSB3
b3VsZCBiZSB0aGUgUmFkaW8gYmxvY2sgaXRzZWxmIC0gc28gdGhlIFJGTm9DIGluZnJhc3RydWN0
dXJlIG92ZXJoZWFkIHdvdWxkIGJlIG1pbmltaXplZCwgdGhlb3JldGljYWxseS48L2Rpdj4NCjxk
aXY+PGJyPg0KPC9kaXY+DQo8ZGl2PkRvIHlvdSB0aGluayB0aGlzIGlzIGEgcG9zc2liaWxpdHks
IG9yIGFyZSB5b3UgcmVhbGx5IHN0ZWFkZmFzdCBvbiByZWFsbHkgZG9pbmcgYW4gYWxsLWhkbCBw
cm9qZWN0PzwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+QnJpYW48L2Rpdj4NCjwvZGl2
Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_BY3PR09MB7316062E0274087C3ABD493EEC409BY3PR09MB7316namp_--

--===============0451288508039596866==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0451288508039596866==--
