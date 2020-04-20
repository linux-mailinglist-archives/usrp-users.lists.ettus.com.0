Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 998111B12FB
	for <lists+usrp-users@lfdr.de>; Mon, 20 Apr 2020 19:28:05 +0200 (CEST)
Received: from [::1] (port=36046 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQaDC-000455-Hz; Mon, 20 Apr 2020 13:28:02 -0400
Received: from email3-east.aero.org ([130.221.184.167]:38571)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <prvs=3726b1985=kyle.a.logue@aero.org>)
 id 1jQaD8-0003zD-PA
 for usrp-users@lists.ettus.com; Mon, 20 Apr 2020 13:27:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
 t=1587403678; x=1618939678;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=T+M1zBoD+gfJwm86zOeRM3ZQQWPLvMcOXU/hpVHMht4=;
 b=LRt6laCnen++SL6n67+7S12QazWd9mhqT9kyHzO1WkFnh/AdvbeNdOzs
 wRD9+4bTPpzNB96DykY5qv7RYdRKMO606B/76KaxEsJKVBZcvasBZpP7h
 kD7gI0kQ7ulzKlBua9k4sS/ifK4lwdvES7I1CFKjlon7WKVKHlp7yQiD5 8=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6000,8403,9597"; a="2475257"
X-IronPort-AV: E=Sophos;i="5.72,407,1580803200"; d="scan'208,217";a="2475257"
IronPort-PHdr: =?us-ascii?q?9a23=3AVP+6FRVcRj79N8odnL1RsCDLLU/V8LGuZFwc94?=
 =?us-ascii?q?YnhrRSc6+q45XlOgnF6O5wiEPSA9mJ8OpK3uzRta2oGXcN55qMqjgjSNRNTF?=
 =?us-ascii?q?dE7KdehAk8GIiAAEz/IuTtank5DcBPElYj+3a0LEV9EcvkYBvVuHLhpTM=3D?=
X-IPAS-Result: =?us-ascii?q?A2FABQBa2p1eh21AL2hmDg8BAQEJAREFBQGBewKBIwEuU?=
 =?us-ascii?q?YFmAwQLKgqEE4NGA4U5hS95gWaTRIczA0oKCgEBAQEBAQEBAQYCGAEUAgQBA?=
 =?us-ascii?q?QKBToJ0AheCHTkFDQIDDQEBAQUBAQEBAQUDAQICEAEBAQgNCQgphV0Mg1R+A?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBBQKBDD0BAQEBA?=
 =?us-ascii?q?wERER0BATgPAgEIEQQBASsCAgImCh0IAgQBEggagwSBf00DLgGlDQKBOYhhA?=
 =?us-ascii?q?QF0gTKDAAEBBYU+GFeBNwmBOIJjilSBHIERQ4IfLj6EUAYPgnsyggsikSuGE?=
 =?us-ascii?q?UqZfweCR5FyhhaCVo0/jD0dj1CcawIEAgQFAg4BAQWBal+BGU0wgkVnUBgNk?=
 =?us-ascii?q?Vgag1mKGD1DMYEpjRsBgQ8BAQ?=
Received: from mail-bl2gcc02lp2109.outbound.protection.outlook.com (HELO
 GCC02-BL0-obe.outbound.protection.outlook.com) ([104.47.64.109])
 by email3-east.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 10:27:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BwehJrRGOwm9ht8VwhQcjxr1oqk5JSgSm8uLeqEPZS+6L8X5qfFhQxGtA0U9WHeUYnVWCdt9yOefXqhfmy4HFytdb6/4yQ3ft9kKOCeTohObZ7kZQxgiQa8dKu5vorgQjFgbQY9uFbCRpc9OBgpQ6tZi8jDfYrsC1Lc7TLto2e1np/9gsYTNTZirBdnCpPCK+wFbn0170I/zre4zQDYpKHJrwLoeu5FXP+vYghz7cGpwN35gdR5CAxfuGxxtEm7fvG7b+HglRp9vHQD71e84LKByhljks/QJcLzUYmzBhWZs1H/dmMDQtyWO7uUE0y6Y+HHHaHyEXUEnTW+YD9a2Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T+M1zBoD+gfJwm86zOeRM3ZQQWPLvMcOXU/hpVHMht4=;
 b=ViHT44Fh1Xg33o1kFAxkmesD2TwdcDstHASjdmHwDBgvZ7Khv+QFgQQAW2tu2aKxQK75qHqQ1XmSXxY+90Aq13b88gVe+0Tmv52VfjiZhzq+kWcHZKsCKA3yb0x7YqbBG1r9w1QpE09eNWVONLPVOAPFMTTVZleqgvRmUqoWHYOf5FKpMXEMD82RqW4jzpmIiLQjEAM2jorpmVma33BBZqXwkK6vXn9UJ/SwKrcVSKG4IPSShTjmFOqFWKu1dowOwhuQI4XpG5g/WINjrQrk4xW/c4QkYxDdBHnf+vISNWv6Lbq+95B6ySYKMDK0iHRUrHn5oEhsDBGcZ96EKCxApA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T+M1zBoD+gfJwm86zOeRM3ZQQWPLvMcOXU/hpVHMht4=;
 b=yYyNSUQjVjzeQj/Zh0ZSiipUu55WgHeir6giTAv7Aj3zAG3vvKTc6jcDFWV94jfH6NMnA0Bps4vhweupL7eG1pA21yPPUs4cI+sCVK50XdRBt0lKuphyEORaAUd8XMrFZEaFwlGDSbsfx79Hf3hPfQdTJuZKE7z3kg+JCc96sRQ=
Received: from BY5PR09MB4520.namprd09.prod.outlook.com (2603:10b6:a03:1d4::11)
 by BY5PR09MB5202.namprd09.prod.outlook.com (2603:10b6:a03:244::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.20; Mon, 20 Apr
 2020 17:27:15 +0000
Received: from BY5PR09MB4520.namprd09.prod.outlook.com
 ([fe80::41b8:9d1:f282:5128]) by BY5PR09MB4520.namprd09.prod.outlook.com
 ([fe80::41b8:9d1:f282:5128%5]) with mapi id 15.20.2921.030; Mon, 20 Apr 2020
 17:27:15 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, AKINYELE
 ITAMAKINDE <aitamakinde@abuad.edu.ng>
Thread-Topic: [USRP-users] Conversion of .dat file to a readable data using
 GNU octave
Thread-Index: AQHWEzKJUdntkH81jUSbyM2hsXW1z6iCSm2K
Date: Mon, 20 Apr 2020 17:27:15 +0000
Message-ID: <BY5PR09MB4520E299D24A13BDA43947A5B9D40@BY5PR09MB4520.namprd09.prod.outlook.com>
References: <CAD-eGGoiu=aswUWerQ7cDVYm-FVmJ6jRSoe+9WcKNdfPTsKW-g@mail.gmail.com>
In-Reply-To: <CAD-eGGoiu=aswUWerQ7cDVYm-FVmJ6jRSoe+9WcKNdfPTsKW-g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kyle.a.logue@aero.org; 
x-originating-ip: [130.221.224.7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dd64e0fb-c709-44ed-1346-08d7e55011c2
x-ms-traffictypediagnostic: BY5PR09MB5202:
x-microsoft-antispam-prvs: <BY5PR09MB5202D81CEC881525C9FAE270B9D40@BY5PR09MB5202.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03793408BA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR09MB4520.namprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(136003)(376002)(346002)(39850400004)(396003)(5660300002)(86362001)(26005)(8936002)(7696005)(66446008)(81156014)(6506007)(53546011)(66556008)(66476007)(2906002)(66946007)(64756008)(8676002)(76116006)(316002)(52536014)(186003)(19627405001)(55016002)(9686003)(71200400001)(110136005)(33656002)(478600001)(142923001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lnR1m4r/voLinPVLSPciy65GFby4nyvdsLQCZUevQMEeRsc2RwgyTPlgL+SwVKgSNSNSTDVTdYImABNoAU6EF7juPeKmQj+PxOnbHyLUzbot0x0OV6nUP8vXG7Xso/VQAsgDQxs7DevUCSrq9M0A1bWcYJxy1eiDKGNVxG1AeQ82ndagp9ewxX8qjpysZWvEL/I+VQ0o11a7aHjIHXCR6SnX6Qz4jQPYjk4RoOkm/wTjGE9I2esobEj9vMIqE52uMhd3kXYBQM9D9CLQ67UZ2Qrk6lCAvFxfAG/DfkwsNrJIRLJmZlQIDNu0KnVwBPdPPRrTBShRmpFeyqRzWu+4gkZoVj02REy4ozwaJi0YzejgY3rn0JN3wc0sVBRCWoyuPxyEwCx2gkzfS0/xA/PzmZQEvCD/TlJC/FbLAfoVnXtHHodAI32ILJgErg5f3QrEMRnSZtEjcgbcuKmMJPbZq15T3raUUenC9hBpn+7wvbfQH1+nF6GPkSb5TEfJpJk4
x-ms-exchange-antispam-messagedata: 4tEVWSWaEtQyunWA0xlH8WhzqzRJt85Dce6lhY8Y1/AzQdmZ9/4T+c42xitXWzgPDdF9IPPxtoOnzwQb2n20r6WcpiQtKrVtsnZX7NFSx2RUeyrke6480QsBi5K77lIAx9aw9th8syU1oWLhDIwPWA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-Network-Message-Id: dd64e0fb-c709-44ed-1346-08d7e55011c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2020 17:27:15.2418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ax/RaLy+4DYT3k1tovC91KUmrKTUATSdoIASCwrcUE2fPfog3Z0hjCpaDLcGD8AG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR09MB5202
Subject: Re: [USRP-users] Conversion of .dat file to a readable data using
 GNU octave
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
Content-Type: multipart/mixed; boundary="===============3335462585600902376=="
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

--===============3335462585600902376==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY5PR09MB4520E299D24A13BDA43947A5B9D40BY5PR09MB4520namp_"

--_000_BY5PR09MB4520E299D24A13BDA43947A5B9D40BY5PR09MB4520namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXNzdW1pbmcgeW91IGhhdmUgeW91ciBmaWxlIHNpbmsgY29uZmlndXJlZCB0byBjb21wbGV4LCB0
aGUgZGF0YSAod2hpY2ggeW91IHNob3VsZG4ndCBqdXN0IHNhdmUgYXMgLmRhdCAtIGNvbnNpZGVy
IC5mYzMyIG9yIHNpZ21mKSBzaG91bGQgc2ltcGx5IGJlIGludGVybGVhdmVkIGZsb2F0MzIuIFNv
IGl0IGxvb2tzIGxpa2UNCg0KWyhmbG9hdDMyIHJlYWwpLCAoZmxvYXQzMiBpbWFnKSwgKGZsb2F0
MzIgcmVhbCksIChmbG9hdDMyIGltYWcpLCAuLi4gXQ0KDQppbiBweXRob24geW91IGNhbiByZWFk
IHRoYXQgdy9gbnAuZnJvbWZpbGUoeHl6LCBkdHlwZT1ucC5jb21wbGV4NjQpYC4gVGhlcmUgbXVz
dCBiZSBhbiBlcXVpdmFsZW50IGluIG9jdGF2ZS4NCg0KS3lsZSBMb2d1ZQ0KRW5naW5lZXJpbmcg
TWFuYWdlciDimp0gQ29tbSBTb2Z0d2FyZSBJbXBsZW1lbnRhdGlvbiBEZXB0DQpUaGUgQWVyb3Nw
YWNlIENvcnBvcmF0aW9uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KRnJvbTog
VVNSUC11c2VycyA8dXNycC11c2Vycy1ib3VuY2VzQGxpc3RzLmV0dHVzLmNvbT4gb24gYmVoYWxm
IG9mIEFLSU5ZRUxFIElUQU1BS0lOREUgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tPg0KU2VudDogV2VkbmVzZGF5LCBBcHJpbCAxNSwgMjAyMCAwNzozMA0KVG86IHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NClN1
YmplY3Q6IFtVU1JQLXVzZXJzXSBDb252ZXJzaW9uIG9mIC5kYXQgZmlsZSB0byBhIHJlYWRhYmxl
IGRhdGEgdXNpbmcgR05VIG9jdGF2ZQ0KDQpJIGFtIHdvcmtpbmcgb24gY2hhbm5lbCBzb3VuZGlu
ZyB1c2luZyBVU1JQIGFuZCBHTlUgcmFkaW8gcGxhdGZvcm1zLiBJIGFtIGV4cGVyaWVuY2luZyBk
aWZmaWN1bHR5IGluIGNvbnZlcnRpbmcgdGhlIC5kYXQgZmlsZSBvZiBzaW5rIGZpbGUgYXQgcmVj
ZWl2ZXIgb2YgZmxvdyBncmFwaCBpbnRvIHJlYWRhYmxlIGRhdGEgdXNpbmcgR05VIG9jdGF2ZS4g
Q2FuIHNvbWVib2R5IGhlbHAgbWUgdG8gYWNoaWV2ZSB0aGlzPyBUaGFua3MNCg==

--_000_BY5PR09MB4520E299D24A13BDA43947A5B9D40BY5PR09MB4520namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNv
bG9yOiByZ2IoMCwgMCwgMCk7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNTUsIDI1NSwgMjU1KTsi
Pg0KQXNzdW1pbmcgeW91IGhhdmUgeW91ciBmaWxlIHNpbmsgY29uZmlndXJlZCB0byBjb21wbGV4
LCB0aGUgZGF0YSAod2hpY2ggeW91IHNob3VsZG4ndCBqdXN0IHNhdmUgYXMgLmRhdCAtIGNvbnNp
ZGVyIC5mYzMyIG9yIHNpZ21mKSBzaG91bGQgc2ltcGx5IGJlIGludGVybGVhdmVkIGZsb2F0MzIu
IFNvIGl0IGxvb2tzIGxpa2U8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBDYWxpYnJp
LCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiBy
Z2IoMCwgMCwgMCk7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNTUsIDI1NSwgMjU1KTsiPg0KPGJy
Pg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQ2FsaWJyaSwgQXJpYWwsIEhlbHZl
dGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyBi
YWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjU1LCAyNTUsIDI1NSk7Ij4NClsoZmxvYXQzMiByZWFsKSwg
KGZsb2F0MzIgaW1hZyksJm5ic3A7KGZsb2F0MzIgcmVhbCksIChmbG9hdDMyIGltYWcpLCAuLi4g
XTwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRp
Y2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsgYmFj
a2dyb3VuZC1jb2xvcjogcmdiKDI1NSwgMjU1LCAyNTUpOyI+DQo8YnI+DQo8L2Rpdj4NCjxkaXYg
c3R5bGU9ImZvbnQtZmFtaWx5OiBDYWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlm
OyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiByZ2IoMCwgMCwgMCk7IGJhY2tncm91bmQtY29sb3I6
IHJnYigyNTUsIDI1NSwgMjU1KTsiPg0KaW4gcHl0aG9uIHlvdSBjYW4gcmVhZCB0aGF0IHcvYG5w
LmZyb21maWxlKHh5eiwgZHR5cGU9bnAuY29tcGxleDY0KWAuIFRoZXJlIG11c3QgYmUgYW4gZXF1
aXZhbGVudCBpbiBvY3RhdmUuPC9kaXY+DQo8ZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6
IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsg
Y29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2IGlkPSJTaWduYXR1cmUi
Pg0KPGRpdj48L2Rpdj4NCjxkaXYgaWQ9ImRpdnRhZ2RlZmF1bHR3cmFwcGVyIiBkaXI9Imx0ciIg
c3R5bGU9ImZvbnQtc2l6ZTogMTJwdDsgZm9udC1mYW1pbHk6IENhbGlicmksIEhlbHZldGljYSwg
c2Fucy1zZXJpZjsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPHNwYW4gaWQ9Im1zLXJ0ZXJhbmdl
cGFzdGUtc3RhcnQiPjwvc3Bhbj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6Q29uc29sYXMsbW9u
b3NwYWNlOyBmb250LXNpemU6OHB0Ij48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6Q29uc29sYXMs
bW9ub3NwYWNlOyBmb250LXNpemU6OHB0Ij48Yj48L2I+PGI+S3lsZSBMb2d1ZTwvYj48YnI+DQo8
c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6Q29uc29sYXMsbW9ub3NwYWNlOyBmb250LXNpemU6OHB0
Ij4NCjxkaXY+PGk+RW5naW5lZXJpbmcgTWFuYWdlciA8c3Bhbj48c3Bhbj48c3Bhbj7imp08L3Nw
YW4+PC9zcGFuPjwvc3Bhbj4gQ29tbSBTb2Z0d2FyZSBJbXBsZW1lbnRhdGlvbiBEZXB0PGJyPg0K
PC9pPjwvZGl2Pg0KPGRpdj48aT5UaGUgQWVyb3NwYWNlIENvcnBvcmF0aW9uPC9pPjwvZGl2Pg0K
PC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpDb25zb2xhcyxtb25vc3BhY2U7IGZvbnQt
c2l6ZTo4cHQiPg0KPGRpdj48L2Rpdj4NCjwvc3Bhbj48L3NwYW4+PC9zcGFuPjxzcGFuIGlkPSJt
cy1ydGVyYW5nZXBhc3RlLWVuZCI+PC9zcGFuPjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjxkaXYg
aWQ9ImFwcGVuZG9uc2VuZCI+PC9kaXY+DQo8aHIgc3R5bGU9ImRpc3BsYXk6aW5saW5lLWJsb2Nr
O3dpZHRoOjk4JSIgdGFiaW5kZXg9Ii0xIj4NCjxkaXYgaWQ9ImRpdlJwbHlGd2RNc2ciIGRpcj0i
bHRyIj48Zm9udCBmYWNlPSJDYWxpYnJpLCBzYW5zLXNlcmlmIiBzdHlsZT0iZm9udC1zaXplOjEx
cHQiIGNvbG9yPSIjMDAwMDAwIj48Yj5Gcm9tOjwvYj4gVVNSUC11c2VycyAmbHQ7dXNycC11c2Vy
cy1ib3VuY2VzQGxpc3RzLmV0dHVzLmNvbSZndDsgb24gYmVoYWxmIG9mIEFLSU5ZRUxFIElUQU1B
S0lOREUgdmlhIFVTUlAtdXNlcnMgJmx0O3VzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tJmd0Ozxi
cj4NCjxiPlNlbnQ6PC9iPiBXZWRuZXNkYXksIEFwcmlsIDE1LCAyMDIwIDA3OjMwPGJyPg0KPGI+
VG86PC9iPiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSAmbHQ7dXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20mZ3Q7PGJyPg0KPGI+U3ViamVjdDo8L2I+IFtVU1JQLXVzZXJzXSBDb252ZXJzaW9u
IG9mIC5kYXQgZmlsZSB0byBhIHJlYWRhYmxlIGRhdGEgdXNpbmcgR05VIG9jdGF2ZTwvZm9udD4N
CjxkaXY+Jm5ic3A7PC9kaXY+DQo8L2Rpdj4NCjxkaXY+DQo8ZGl2IGRpcj0ibHRyIj5JIGFtIHdv
cmtpbmcgb24gY2hhbm5lbCBzb3VuZGluZyB1c2luZyBVU1JQIGFuZCBHTlUgcmFkaW8gcGxhdGZv
cm1zLiBJIGFtIGV4cGVyaWVuY2luZyBkaWZmaWN1bHR5IGluIGNvbnZlcnRpbmcgdGhlIC5kYXQg
ZmlsZSBvZiBzaW5rIGZpbGUgYXQgcmVjZWl2ZXIgb2YgZmxvdyBncmFwaCBpbnRvIHJlYWRhYmxl
IGRhdGEgdXNpbmcgR05VIG9jdGF2ZS4gQ2FuIHNvbWVib2R5IGhlbHAgbWUgdG8gYWNoaWV2ZSB0
aGlzPyBUaGFua3M8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_BY5PR09MB4520E299D24A13BDA43947A5B9D40BY5PR09MB4520namp_--


--===============3335462585600902376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3335462585600902376==--

