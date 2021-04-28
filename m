Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9122636E0CC
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 23:12:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00E31383F63
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 17:12:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="c6IP+4gh";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="IA1lHdoM";
	dkim-atps=neutral
Received: from email3-east.aero.org (email3-east.aero.org [130.221.184.167])
	by mm2.emwd.com (Postfix) with ESMTPS id 8EB34383E73
	for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 17:11:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1619644280; x=1651180280;
  h=from:to:subject:date:message-id:mime-version;
  bh=M2CLXdnGFznqE4OAna3fXUIGgnD64n+Q8K1zN/2tI78=;
  b=c6IP+4ghdGzhjzZdDYv39d6TzC/haPh80/eaiB6EgcWelyzZP++8vt2A
   e/3Vhi0BOi6zeoU9mZgu4NTVrhD2vBDTeANMXzx63HZlXPaAGhFq/FZuq
   21e6/FiCTOyocnWlEHmIqVfOk29R/3NDUk6oR0+mVdL5rGZbquTnSLe0m
   s=;
x-SBRS: 3.5
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="4929780"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400";
   d="scan'208,217";a="4929780"
IronPort-PHdr: =?us-ascii?q?A9a23=3ACqTWLxIjzKYecqPKadmcuZoyDhhPgJ39IxIV5?=
 =?us-ascii?q?5w7irlHbqWk+dH4MVfC4el25HfNXJ7H8LRJl/bLqObrXmlTqZqCsXVXdptKW?=
 =?us-ascii?q?ldFjMgNhAUvDYaDDlGzN//laSE2XaEgHF9o9n22Kw5ZTcD5YVCBpnyp8SVUF?=
 =?us-ascii?q?wnjKBEzLePwScbeis2t3LW0/JveKwxDmDu6Z+Z0KxO75QXcv8Ubm81sMKE0n?=
 =?us-ascii?q?xLEuHwOfP5ZlgtV?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ABRHwa6PlUQFAdcBcT9Xw55DYdL4zR+YMi2?=
 =?us-ascii?q?QD/3taDTRIb82VkN2vlvwH1RnyzA0cQm0khMroAsS9aFvm39pQ7ZMKNbmvGD?=
 =?us-ascii?q?PntmyhMZ144eLZqQHIMxbVstRQ3aIIScNDIfX7B1RikILe6A63D94vzLC8gc?=
 =?us-ascii?q?aVrM3ZyGpgShwvTqlm4RtwBArzKDwOeCBtA50lGJ2AovdWvjbIQwVfUu2XJF?=
 =?us-ascii?q?kgG9LCqdrCiY78bXc9ayIPxQGSgVqTmdrHOjeC2BN2aVJy6JMD1USArADj/K?=
 =?us-ascii?q?WktJiAu1fh/kve9Y5fltek6vYrPr3qtuEvJj/hihmlae1aMtXs0gwdmv2l61?=
 =?us-ascii?q?ohjbD30nQdFvlz8H/YcyWUphbgymDboVMTwkLi0lORjD/fp9X4TlsBeqh8rL?=
 =?us-ascii?q?9eGyG412MQ+PVHlI5b1WOQsJRaSTnamj7m2tTOXxZ20mKpvHsLi4co/jZieL?=
 =?us-ascii?q?pbTIUUgZ0U/UtTHptFNjn98pobHO5nC9yZzOpKcGmdc2vSsgBUsZGRd0V2Oi?=
 =?us-ascii?q?3DblkJu8ST3TQTtmt+1VEkyMsWmWpF054hVZ9e5aDhPr5znL9DCu8aBJgNSN?=
 =?us-ascii?q?spcI+SMCjgUBjMOGWdLRDMD6ccIU/ArJbx/fE7/+evdJsUzIYjmZjIXV9C3F?=
 =?us-ascii?q?RCNX7GOImr5tlm4xrNSGKyUXDG0cdF/aV0vbX6Wf7qPES4ORETuvrlh89aLt?=
 =?us-ascii?q?zQWv61Np4TKeTkN3HSFYFA2BC7XYJTJ3kYWMgcoc06RFqKv8LOJuTRx6PmWc?=
 =?us-ascii?q?eWAICoPScvW2v5DHdGYSP6I99Y6Fu3HlXihgLKZn/rckvj3J55HaTA5dIPwI?=
 =?us-ascii?q?wVOoAkiHlUtX2JouWwbRxLqOgfYVZ3KrKPqNLCmUCGuULzq1hPFjUYJEBP+7?=
 =?us-ascii?q?nkW25NvmYxQjjJWIdGnc6ed2BU1GaAPTllQartYUVijlxq5KO6KIGRzyg+C9?=
 =?us-ascii?q?ShdnmXlWcXuWjideZnpoSTocjiYZ82FZAgReh4EhjKDQV8nUJwpH5EcxJsfD?=
 =?us-ascii?q?6qKhr+zaGkhocTHufRap11hxqqO9ddrRvkxDehjNBqQnsQRDi1V8GLxQ4oWj?=
 =?us-ascii?q?pPn1V0t6sSmqCJlzrqKWwxho0DQShxQXXSBLJNFwKeYopI3rjtZQFrVG+PwS?=
 =?us-ascii?q?WAlAtbQBuay2wCwmj6aSGEc/DCBVRQ/nhez6bx6VtxMmGQZVh5ZHx2uZB0fF?=
 =?us-ascii?q?62zUpbwKuOfO6+wmGRYlwNzqUGPDbJbSAbLwluy9q0vSTl6wqqBDEj3NEjL+?=
 =?us-ascii?q?bdBLMsf/XPwXurMpSPjrxDEPlO/pppXeqexNMjQKaaYUuSIzz5Ae9yhFDQqX?=
 =?us-ascii?q?YhJSVuqH4r1fnvwwbo6WCk3Hg5RfreSW4WOI0zMpWZ9SzjQf3NzZByydQytu?=
 =?us-ascii?q?G0On/qatGHxbrMBgQzWi/7sCqzVaUwtZtQvagur7N9EJnQTCvQ2Bh8rWkDBd?=
 =?us-ascii?q?axkFlbXb9y77/AMJJ+ZsAeeypW+VwyidSERXFbzDDeE6s5ZlEij3jSItOP7f?=
 =?us-ascii?q?7JsNMUczC8mDc=3D?=
X-IPAS-Result: =?us-ascii?q?A2FYAQDmzolgh2VBL2hXA4JggSMwUYFXaAuEOYNIA4U5n?=
 =?us-ascii?q?UGGJIElA1QLAQEBAQEBAQEBBwIyAgQBAQMDgVWCdQIXgWYmNAkOAgQOAQEBB?=
 =?us-ascii?q?QEBAQEBBgMBAgIQAQEBAQsNCQgpGoVQAQyDVYEIAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBBQKBCGcdAQE4EQEGBj4CBDAnBBuCaYF/U?=
 =?us-ascii?q?gUDLwGNHpBtAosZgTKBAYIEAQEGBASFJBhYgTsJgTqCeYJxEz9GAQGCXIQug?=
 =?us-ascii?q?VVCgVaHYUWCUDaCK5dogy2Hdp5GLAeDEwSBHQYLhy+UVxClFpUpnmiEbQIEA?=
 =?us-ascii?q?gQFAg4BAQaBVIIUMxowgyxQFwIOjjiDV4pdQzA4AgYBCQEBAwl8iwMBgQ8BA?=
 =?us-ascii?q?Q?=
Received: from mail-dm3gcc02lp2101.outbound.protection.outlook.com (HELO GCC02-DM3-obe.outbound.protection.outlook.com) ([104.47.65.101])
  by email3-east.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2021 14:11:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fnTri8PcXTVvp3vzXz7Y/1uR5Mgosl1pyHIqF/10XYlcgdMVueqaNceiw1lKIKRT7SmpsU60SivtcZtt+uEWxomeO6w6JMazfxQ+Sc/1WRPmluvO95thSPGJ2eo4nqYX1el0im50a7epzSvHUUVvSMEksqFtaGTlXBXQgoGBuMfa62addQE5BsXhpCWwaJMoxP1AEQG/d2YzHIa5sYTJ+VUnXubf+j127cxjxprngqXC1R9DjPVffCZxTzyGyV2a+8inZaBdWWvPlPsJzVyDuTtl8gTvM+aHFtCLv5ri3NC8Y7PvQWkHEqWxaA+qIQnPDTmHhqVyj52UJtVrjGXTKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M2CLXdnGFznqE4OAna3fXUIGgnD64n+Q8K1zN/2tI78=;
 b=NarsYTCJu4cThEXct2xEKOyWV7Cpufk0917rpokfq5UYOyB0x7sR3owxfZSzOHF+7rRR3Khsk3//G6XU5dBL9SDr5vgmXGWyxL72gyN5uCmpkeEtTJJGnGXYLdFC8jlCnRghzPketqo+2r3nQq8R4dJU1oIGFtfWSPVkVlYzhBQHuihLpl+mP8u0L/g6aoUbSJyw4IazGDKyI8SMujojx6LqthP9LWw0o+t0i2eZbSs76GaUw/1NJdQjdNIvrxL+J+1mpJmM5BoolQRw8J0szhh92fgwN/UGOHeN/VJtb3RZ+pWHO9e3eanAxXlJQhhap9cMO47VMzXKvTv47CNuMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M2CLXdnGFznqE4OAna3fXUIGgnD64n+Q8K1zN/2tI78=;
 b=IA1lHdoMui8QJtm032GyhJOWgFuzRMYa0L/q6fs3YzlpoK/VCv3Woz7cVjqJbd9z8XRnPh1SJVqKDiRPleShWFQMJ6jMb8/UbGtGTfEAc78K79bc0eMJrkDhBRTZhC0RATLUYM3NSBYsHbZLfJPXqzyKfEjIGW7NEGdnHDOpx+I=
Received: from BY3PR09MB7316.namprd09.prod.outlook.com (2603:10b6:a03:34c::21)
 by BY3PR09MB7745.namprd09.prod.outlook.com (2603:10b6:a03:34d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21; Wed, 28 Apr
 2021 21:11:18 +0000
Received: from BY3PR09MB7316.namprd09.prod.outlook.com
 ([fe80::1535:dae:5b5f:307f]) by BY3PR09MB7316.namprd09.prod.outlook.com
 ([fe80::1535:dae:5b5f:307f%7]) with mapi id 15.20.4065.027; Wed, 28 Apr 2021
 21:11:18 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Bare metal development on X310
Thread-Index: AQHXPHI4Q6t75kHhek2lIoIUcM1pOQ==
Date: Wed, 28 Apr 2021 21:11:18 +0000
Message-ID: 
 <BY3PR09MB73167120DD55101EA0FA542EEC409@BY3PR09MB7316.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=aero.org;
x-originating-ip: [130.221.224.7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 11181a3e-8759-49ff-333d-08d90a8a2a63
x-ms-traffictypediagnostic: BY3PR09MB7745:
x-microsoft-antispam-prvs: 
 <BY3PR09MB774537BAE650F028B2A663BDEC409@BY3PR09MB7745.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 gilQYAfm3BOtJEvj99Rf3/VjPT8lqgIRir85/3OXD6gu5UbXtfL6ZvicRK2VJJhiy4GuiJS3HS3SIs7Boe2ulA3qYaZuF8AawgNgEOygexvA5N+wucwjq2Mq/F8nJ6Ksko4Ghrx7YKduu6oQJI3QQa8Fv6aqKeKcDt0h22Q1L3LuAbURufjZirynCtRw70CajxI7IIMLOdrfI6bLsCL1KtcopFun+NrxZ84aqWiJF+HAgsph3dHT5pKSNnwshMiPXZUOtoeT8nNlEN1YKE+LJBc1HG3cU4dlxl71V/yHFLolr8Cz7Mf7/kyyjDzLN1D+z2iWINRX27t2UJgqVCE7hKjC06RXuD2qnGMmo8qQU+ir78DhxzUihdranSJzGVq8+SkMTRl41ACLa9dUJyA4UlAzcnfbQz6rDq/kD1N4UUqQDEfKs9trTb6bTgycRv5wez+NiDaapjjFizovgDeH4HiwAuuWOK6rsAtm8YiHj9zhXp3/NKj+s6C8vapBEaG3uVRzTJjiPUJKGFisL0lTUmmxquoMsiXHzjWwYidaZHblaH/RprCt9hySKvKs42tg3tEhR2pv8zF7AlxQdbrfwx2N3YhTMwpgRPi4Jd94ZI8=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR09MB7316.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(8936002)(9686003)(6506007)(316002)(7696005)(76116006)(66556008)(71200400001)(55016002)(6916009)(52536014)(26005)(19627405001)(44832011)(478600001)(66946007)(66476007)(66446008)(64756008)(4744005)(8676002)(2906002)(38100700002)(122000001)(86362001)(5660300002)(186003)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?utf-8?B?K3ZTVjhJN2E0K045elNNRVA5Nm5POXpkT3BoNzd2Q2M4bm44NVlUUURLUVF0?=
 =?utf-8?B?blk4dmo2cTdiaitZcnB5aG1kNHFaakxnaHdSMjlkTEFzU2Z0UklZUzdFU2dR?=
 =?utf-8?B?NmxhQ011NWFZemJYZ09sOENFK00rbm4ycE5yUkFuWUZvR2lVa3ZtbEszWmpC?=
 =?utf-8?B?VERDTDhRd05USU9yeFE3OTA3UUNDaTJuSDM1RzlFQmcvNkpLSmpUdmRHZXRv?=
 =?utf-8?B?ZGdybzAzclpNNjJ0d3JrRytqWlVRZHlyckV3MUxQc3ZMN2I0cXI3ZkN5Q3RG?=
 =?utf-8?B?ZXhhak9oTkVmMHd6a0NwTmY4L2xSeEROV1AvcEZSeXBmQTd5VTFBcFNlNFV6?=
 =?utf-8?B?V0pMU1NwUHo3dUFXNUxORXMxc1JsbmxvWFJ0Z3dOTmtEU2RSV1VFc3dIRlBt?=
 =?utf-8?B?dU5YOU52NEpBSGduM0F2QVQ0dVFyR1ZYWjBlb2pxVFNySVNaWlo5VDJSL0o5?=
 =?utf-8?B?NEJ1TVV5SWRiM1lrMjg2SUsrbGtJb3pXMTVIZTRRajhDYWQ2aVF0Zis4dVVu?=
 =?utf-8?B?YmZkZEVQWTAxejY2c2V4Z0ltUVd6bnE4UWduUHBpKzFJVW4xVnRFUEdacnJv?=
 =?utf-8?B?MUxHN2kzVFliOTQySTZkVGdma3hkOWsxenlFY2lvZ2hVQUJlSjBveTRYdjlV?=
 =?utf-8?B?WTZiVFFCL0UySGJwbStXSURWdlVCZm8vcjdVTXMrcDcwdXBLQ2YzVkhLVVVB?=
 =?utf-8?B?dTkyOWdvN3JaTTZGM3laTk9SU0JQbG9mMEtBckhSU3UzZm0ya296cnl2NkhP?=
 =?utf-8?B?d1BaR09xb0xxeHdvakI5N0NPd2dWSkhaeTV5WENPTE5ZVE5Ob2VkbXJWdHUx?=
 =?utf-8?B?cHR1NkFZK0RCYlhKY2pEK3FNMzIrTnk0SU5Kc1pnaVRhZnZjZWs4TXhhNGdS?=
 =?utf-8?B?QzQ0eHVGTXRMeXd2REdSUE15ak95cUw3R3MzdzRNWTdFcnlqWXdIK1R4NjFa?=
 =?utf-8?B?OFpBayttbG1BYW1NWXRqYlN5MEZadWl0Sjk3RFJDQkNBaFl4UmM1NG1DeVEz?=
 =?utf-8?B?bnY1amJ5bDJWdEhCQmlaKzVibW9wbHRPS2NVWkVIeXRTTDNtcm5aWDFSeWpv?=
 =?utf-8?B?TldLN1NvMnNzZjIvckVRS2M5Y0hYMjEyMmIrdkNBbUN3d0x5V1NENjlLN0J6?=
 =?utf-8?B?YXY3UElKdFhWeG0vYmFybkxudlc0M3RLRmdRRnkvOUlmVkUrT0NTUXBiWGNs?=
 =?utf-8?B?WHpzdmIzQmlkYW1ONm1kRno0ZW52SSsyUEgvYjJxcFdUZkN0R0xBTVlRL0wy?=
 =?utf-8?B?eTIyRFVwZmJuQm1nc2Y5V2pQcU9HSTNudlloY3FkZG9VRktRMHcwaW5jMVF3?=
 =?utf-8?B?NUxoTHdyODJBSU1pQnB3WWNkdXMvUkU5a2h1SExYRllSVGltQ2FUcFY5aTU3?=
 =?utf-8?B?QlZieHpnZ3lOeWFUbExsNWtUN2ZrUU83dnA3MmRYVGkrSzRIeUVnMzBkUWhy?=
 =?utf-8?B?MG1kV2h3VktYKzZkVVp5MU9sZ0RiMlEveDBRWFEya0JvK1psM1lBV3lvSkZJ?=
 =?utf-8?B?dlk0Q0thSWNyVUFLSmpwaVRTTWs1K2VqcFZsdERBZWEvTWtNK3NvTFU4WEFw?=
 =?utf-8?B?WHRhMlZUMmpIUDJMRkdCOHFZY2R3dzVCZ0VZL0pIa201Y3lsdmsvd3A1d3Q1?=
 =?utf-8?B?dGpiRDNsaWxCRWFGWVhzeG1UNUxHRFpmNExRWXdheFFyK0FYZGkxVFgrNjUw?=
 =?utf-8?B?bnY2WSt1UnlYbzJBNlp3ZXJ1QXdzbm9VZUlleFcrVldIcnI4Vk1reTFSVSsv?=
 =?utf-8?Q?zfXDf/TpgTOlTxoy2g=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY3PR09MB7316.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11181a3e-8759-49ff-333d-08d90a8a2a63
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2021 21:11:18.1479
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY3PR09MB7745
Message-ID-Hash: CRHA7MPYYTUG3LCN63342U2HX3D7HTQC
X-Message-ID-Hash: CRHA7MPYYTUG3LCN63342U2HX3D7HTQC
X-MailFrom: prvs=745c430d6=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Bare metal development on X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XA77GVCBMHB3BXR4MIDVZDDDLVY4QP3Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5991335759494284562=="

--===============5991335759494284562==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY3PR09MB73167120DD55101EA0FA542EEC409BY3PR09MB7316namp_"

--_000_BY3PR09MB73167120DD55101EA0FA542EEC409BY3PR09MB7316namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCkkgYW0gcGxhbm5pbmcgdG8gdXNlIGFuIFgzMTAgKHdlIGhhdmUgYXQgbGVhc3Qg
NTAgb2YgdGhlbSBhcm91bmQg8J+ZgiApIGZvciBhbiBhbGwtaGRsIHByb2plY3QuICBIYXMgYW55
b25lIHVzZWQgaXQgdy9vdXQgUkZOb0Mgb3IgVUhEPyAgSG93IG11Y2ggc2V0dXAgZm9yIG9uLWJv
YXJkIGNvbXBvbmVudHMgaXMgdGhlcmU/ICBDYW4gSSBkbyBpdCB3L291dCB0aGUgc29mdHdhcmUg
cnVubmluZyBvbiBhIFBDPw0KDQpUaGFua3MNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX18N
Cg0KRXVnZW5lIEdyYXl2ZXIsIFBoLkQuDQpBZXJvc3BhY2UgQ29ycC4sIFByaW5jaXBhbCBFbmdp
bmVlcg0KVGVsOiAzMTAuMzM2LjEyNzQNCl9fX19fX19fX19fX19fX19fX19fX19fXw0K

--_000_BY3PR09MB73167120DD55101EA0FA542EEC409BY3PR09MB7316namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNv
bG9yOiByZ2IoMCwgMCwgMCk7Ij4NCkhlbGxvLDwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1p
bHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJw
dDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250
LWZhbWlseTogQ2FsaWJyaSwgQXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXpl
OiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQpJIGFtIHBsYW5uaW5nIHRvIHVzZSBhbiBY
MzEwICh3ZSBoYXZlIGF0IGxlYXN0IDUwIG9mIHRoZW0gYXJvdW5kIDxzcGFuIGlkPSLwn5mCIj7w
n5mCICkgZm9yIGFuIGFsbC1oZGwgcHJvamVjdC4mbmJzcDsgSGFzIGFueW9uZSB1c2VkIGl0IHcv
b3V0IFJGTm9DIG9yIFVIRD8mbmJzcDsgSG93IG11Y2ggc2V0dXAgZm9yIG9uLWJvYXJkIGNvbXBv
bmVudHMgaXMgdGhlcmU/Jm5ic3A7IENhbiBJIGRvIGl0IHcvb3V0IHRoZSBzb2Z0d2FyZSBydW5u
aW5nIG9uIGEgUEM/PC9zcGFuPjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGli
cmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6
IHJnYigwLCAwLCAwKTsiPg0KPHNwYW4+PGJyPg0KPC9zcGFuPjwvZGl2Pg0KPGRpdiBzdHlsZT0i
Zm9udC1mYW1pbHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQt
c2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPHNwYW4+VGhhbmtzPC9zcGFuPjwv
ZGl2Pg0KPGRpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBDYWxpYnJpLCBBcmlhbCwgSGVs
dmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNvbG9yOiByZ2IoMCwgMCwgMCk7
Ij4NCjxicj4NCjwvZGl2Pg0KPGRpdiBpZD0iU2lnbmF0dXJlIj4NCjxkaXY+DQo8bWV0YSBjb250
ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9VVRGLTgiPg0KPGRpdiBpZD0iZGl2dGFnZGVmYXVsdHdy
YXBwZXIiIGRpcj0ibHRyIiBzdHlsZT0iY29sb3I6cmdiKDAsMCwwKTsgZm9udC1mYW1pbHk6Q2Fs
aWJyaSxBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGJhY2tncm91
bmQtY29sb3I6cmdiKDI1NSwyNTUsMjU1KSI+DQo8cCBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyBt
YXJnaW4tYm90dG9tOiAwcHg7Ij48c3BhbiBzdHlsZT0iY29sb3I6YmxhY2s7IGZvbnQtZmFtaWx5
OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMHB0Ij48c3BhbiBpZD0i
bXMtcnRlcmFuZ2VwYXN0ZS1zdGFydCI+PC9zcGFuPjxzcGFuIHN0eWxlPSJjb2xvcjpyZ2IoMCww
LDApOyBmb250LWZhbWlseTpBcmlhbCxzYW5zLXNlcmlmOyBmb250LXNpemU6MTMuMzNweCI+X19f
X19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjxzcGFuIGlkPSJtcy1ydGVyYW5nZXBhc3RlLWVu
ZCI+PC9zcGFuPjxicj4NCjwvc3Bhbj48L3A+DQo8cCBzdHlsZT0ibWFyZ2luLXRvcDogMHB4OyBt
YXJnaW4tYm90dG9tOiAwcHg7Ij48c3BhbiBzdHlsZT0iY29sb3I6YmxhY2s7IGZvbnQtZmFtaWx5
OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMHB0Ij5FdWdlbmUgR3Jh
eXZlciwgUGguRC48YnI+DQpBZXJvc3BhY2UgQ29ycC4sIFByaW5jaXBhbCBFbmdpbmVlcjxicj4N
ClRlbDogMzEwLjMzNi4xMjc0PGJyPg0KX19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjxi
cj4NCjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1s
Pg0K

--_000_BY3PR09MB73167120DD55101EA0FA542EEC409BY3PR09MB7316namp_--

--===============5991335759494284562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5991335759494284562==--
