Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 197E45540A2
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jun 2022 04:43:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01DF638431D
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jun 2022 22:42:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655865779; bh=auTdxMB7RbvdSbhbyeQssP7/4OGXlsz7RfhIrNt9lWY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=OELfCgEdvio+zD3+tBUDPbKM91djj+9PRYwqYKSep9/Iyyhtxy22UzQtPK/yzfL87
	 cB4DwcrVUqU9nU9aoqgQIZ1DXGyuW6Sj96mDTDoF316U7kQeby8Jn9G7Jx7Hh3Qh7X
	 9urx14ZMa2xwfsJeeEf5dNIjFkS3TFFmMCFnRHQj0NfCNtS6UjGRgGvi2qtB2Pwpok
	 fQwC8zzI797cHATScUWLGi7+0SBzhnXRd2A3aGFGMfF8DbkLS6zhvWk3Qixc/M9zAX
	 ozQ+bCkZs22DitIlmIFSUGOo2odrnSQ5XuwHDTEuvHIGRTHb863KLLlRb3cgiNAQkF
	 BkglEEa2QAtUA==
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2106.outbound.protection.outlook.com [40.107.223.106])
	by mm2.emwd.com (Postfix) with ESMTPS id 449B73842F5
	for <usrp-users@lists.ettus.com>; Tue, 21 Jun 2022 22:42:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=umass.onmicrosoft.com header.i=@umass.onmicrosoft.com header.b="EiEpwTVm";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d+wvSOGmIwLZR1rpP5jzNGWs+7Q13pyGFg+lLg3e8iI5rGQ9hJkwKGZPNh+2k3h70rxFJKEZWcRTY2VnhGzwNgEuWO1eudiWpcJEK+Lod35OD/w9vro5nzC9C/gxg/KlHW8gVcuRrokPNnW1tCgoojGazEFNVJEDhSvI7pJW1VEXh7sbszkQEX4s55epVFN3EzxuRkyOPFWmzeHYWCvsrpCcv8ySAcDXLIS55eqRYtoOZZ7KXN2HzmNTyn+HXUV3bpldUKE4wPUbdPYnrA8iEW25PmnGpxQXHc3/gTp/IP3CONQRI7j+5mdwwmb0esXgUuWiafVXq2bkRo0UzIGxBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vuyi1G8tIZV+kYn9zAUrzfkEciksaooAns+iU/PkUPY=;
 b=cuy7+w/R3Fd4H8h0FKHF4q/2k0GP4DPoe7bHK2dy9qbbjVqQ3UYeU6luQ6k14PT97Jdwdy7UakhgU1fAJ4ieqVFZnxWkJmPG8Is3F9P8HG0gombRhO8xZvrNr11VIxBwYzJBU3lNKmVYg/S71m0df3iucaQr6FyiQ9M6d+21Gk1yA4s5AOfuTXWhNpAnpkc2zydcTWk1amgTAYrORyRiE65oUeIITvx//nincCYBnaSKdNN3XcKWm3wfntX+bbjX+ZE5sraHO2Z1v4b95KQnk6ZZTJMMYYUzpH0NKj+3aFZMPNx+W2Hbq5vh3Kn+skzcRsNQlSkSEmIG1SrOTxTyVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=umass.edu; dmarc=pass action=none header.from=umass.edu;
 dkim=pass header.d=umass.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umass.onmicrosoft.com;
 s=selector2-umass-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vuyi1G8tIZV+kYn9zAUrzfkEciksaooAns+iU/PkUPY=;
 b=EiEpwTVm9E4kLe4NLafu83ivtarT5CCVdvevVNX/RAdpOS3hYn0FhCFeev9GEAkkDlCFWERQFq6IVngBgSSbBpVuw+Y6WFkQKzMM/7+JhT+p91UtdDDQUjjaSOGTOEEgyWfPRGTUgmuElCvE8JzJ2B3HgmItpZj6YSTMHroD8h0=
Received: from MN2PR14MB4192.namprd14.prod.outlook.com (2603:10b6:208:1dd::12)
 by MW4PR14MB5389.namprd14.prod.outlook.com (2603:10b6:303:188::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.15; Wed, 22 Jun
 2022 02:41:57 +0000
Received: from MN2PR14MB4192.namprd14.prod.outlook.com
 ([fe80::a90a:5a33:14f8:909f]) by MN2PR14MB4192.namprd14.prod.outlook.com
 ([fe80::a90a:5a33:14f8:909f%8]) with mapi id 15.20.5353.022; Wed, 22 Jun 2022
 02:41:57 +0000
From: Xingjian Chen <xingjian@umass.edu>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: How to setup N321 master clock rates ?
Thread-Index: AQHYhd4CkqcOhqcid0qdI0TF6X+pdK1asg+AgAAFAuI=
Date: Wed, 22 Jun 2022 02:41:57 +0000
Message-ID: 
 <MN2PR14MB41926F8FD091AF888E8BCA30CDB29@MN2PR14MB4192.namprd14.prod.outlook.com>
References: 
 <MN2PR14MB4192956CB99727BB17CC8922CDB29@MN2PR14MB4192.namprd14.prod.outlook.com>
 <09b2f83b-c780-3a4b-71ea-ef676b679a1d@gmail.com>
In-Reply-To: <09b2f83b-c780-3a4b-71ea-ef676b679a1d@gmail.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=umass.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7a1f9fd8-0340-4905-989a-08da53f8c692
x-ms-traffictypediagnostic: MW4PR14MB5389:EE_
x-microsoft-antispam-prvs: 
 <MW4PR14MB53898B12C727EF71B9B48DB6CDB29@MW4PR14MB5389.namprd14.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Z8OFnJRouq8MlwsJPpIWZ2irqm0/DYvxCu7yIF+WfvHuxXqHOnNs/sXLX4JJYvJHx4QxCDblSnCk+G+yMOsgb/3okjEBz7rzN7KdVmyaz8SLvVuNPnPbCTWASetNIyCR2QMSuQf9xPX3Hh5jc8IfHIUstUZWjMK3NX1b8kom6lahUk6pIXU4dSC2h9V2E9/xbObUXedjjEPWRxOXcdBt+jLqHMSrAYOByGNNLuqGlQhOL4HfRx4xRSYe77xjCQL5Gsi+1nzgSVradClacqPtzU9xj2gDRVQT6AUSrZ3N74PwngarbLUIivmp8+/OrtuRlr8Vo1L/wTMc1R6dOuZXySHJlutla8Rskwiz4pUGXAPE60ow6iV7foO8EHqj4CzJjLrUKKTyfAyjLlkZ4mCrF0hHoNbB2OSug1QKf5gSrqHLyQLYpKTMY1CSBX+i+HtIJ5F4PankFoZhrJWddXlEwZgKwBCx0H7997c28BwEsr18mBqw7OeH9LRyWE3qKQUM/X8SB9Ewuweysu1DjJu3WpATmeKTdpNHFucO5uVSs7ycqzh/ETvYS7H+/r/rKM8bjyWXaLMNFVAVEhc8bCR5IdPDjGWXnL3FqX3DM945LZ3SGXuwoXkRtWIqK1jF7eSd1PZNriyqaqIZ/KGsD6UBI62cGkTOIXUrgMyLo1jlMWfYwyQS1GG4BQF2MbKxE68roFBkRKksL5c0rv72CiXN58Eroakxm+ReiDYvLtgXj96y+PjOYoxNILK5eIUleBB9ockSpEE45ziZ9qBGnZLyvA8AHvzE3WhQjb7um6rmhG0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR14MB4192.namprd14.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(396003)(346002)(39860400002)(136003)(366004)(9686003)(75432002)(41300700001)(71200400001)(76116006)(66476007)(66556008)(110136005)(19627405001)(66946007)(8676002)(186003)(64756008)(66446008)(316002)(786003)(86362001)(38100700002)(2906002)(8936002)(26005)(478600001)(52536014)(7696005)(6506007)(53546011)(966005)(38070700005)(83380400001)(166002)(122000001)(33656002)(5660300002)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?qRUEGNtEnQyWX1H78TTW9bjgN81lPCz87KRBMhx5KxRaiVXizM9rAyA0eBDG?=
 =?us-ascii?Q?Z8gw7pwINKgTdtXrRo+8UT4nXnIzWtRTbAKqqjWD506IyYMNiRy8l/Tu43xR?=
 =?us-ascii?Q?bYv+V4tF9Pd+boQAzsUmUFe9lLKvgmdtMTLDHfz5KSTqSJ/SZuJ1HnQYIz4N?=
 =?us-ascii?Q?oZWsEiUoGrHMFjnvDRD36GsrUCVYkPeYnQyvN2MKn3gYXn3je4zT4LgcNG+Z?=
 =?us-ascii?Q?QGgKAsKInnSLELgQZa+eCiN3iAjVm+qo2+32LQE6JQ9eu7ywsqAROVpNAFhL?=
 =?us-ascii?Q?oClwzT4AXqSvDIFJ/0B+lGqXOrwEQoHTKrh6TWnimJktMeqez/S9NZSYqPwX?=
 =?us-ascii?Q?8oZAvjoIYvjpCI1299p0rU31BlmBnIuajtuLL5NnLgWkZj1lflcAU5I32MFx?=
 =?us-ascii?Q?inEQBstLGwR29kz7J8lBuWMhF07E0lrNB+VY3q/U2+TOavqIVdqPo+3OPfxR?=
 =?us-ascii?Q?Xiwvl2kFUIVQSXBWp2jCVJF93ElCcYswdtd28BJardpBIwM7kLlJIk9Ja/Au?=
 =?us-ascii?Q?FFlI24TOVUcwNcfWooVnIr5ZC5BX9GTcYkwx3NP7peyHhCkfhm+4ar4Idw4s?=
 =?us-ascii?Q?2ZJwb3mh4WgJO9Rak3G8uDI2Pgq4/lgqP4kouILLG+LCQAhp6fWdBx/+ojHK?=
 =?us-ascii?Q?T9ok2tVfvhrIhD4rPTfaNLcWnFcdhrTB31Vjt1DxYE2FEoz+NlapCAARVN5i?=
 =?us-ascii?Q?Po2Y/70+w/qupBGeHfrZGsD4+B9HpejEfoQWYFCzvnbZJZDd180Q10MElkw2?=
 =?us-ascii?Q?v31k+Y0WOM3bBjwxtJAbPSvix4od6+NyKCoDAan/3p/iVlriC3AMSrD3oqsZ?=
 =?us-ascii?Q?2qghxC2oMq/4I/3rJ+leOi+Dz2LKr3Ti/5DTZGZiCkQJPZHct97V+VLnEqm6?=
 =?us-ascii?Q?wVseZzJHaIh0/CWSY1G/bragT9l/Xcb3xMhNFjNKWMmZJFH1ptT5eMNumQyU?=
 =?us-ascii?Q?Q0DjtDBIIhBaFQgYienS5cA4OPTll1Sa83VyvyS5EyMOQ/KImnxxq2AkEMwv?=
 =?us-ascii?Q?VDv6oFB8kcfDTPY98XFXH3anFJA+HxODox6z1+Huu0o7ND+GjT0wEvxMnfxz?=
 =?us-ascii?Q?QxEcMVoYs9+lQ30+/KCSsYrrYzMgVzvJSY7Oduu3FaN+VoY3p/lZiv3peR//?=
 =?us-ascii?Q?nJJnqZ2N3HxniiUSURTIcYZNtmpYv3ODnUrHNovQwtrgbmTj8IEIbFTj4rIx?=
 =?us-ascii?Q?MvrQEEBzS5C6DeloZ53CgV1xi8Bdppxh6ezg/ZQoC9VqD7X45Py/MOI+Jm3n?=
 =?us-ascii?Q?FASgk4oVsJK8G3KWpzhQTXsxnilqnccShFOJSlhVV2ehctIRzCQ4vVACMV4C?=
 =?us-ascii?Q?AZtBNst8AbOXzPu09vt4CMMlbT55MFVfXfqbZU2TuKketbG0fdOo/2GYTQhu?=
 =?us-ascii?Q?szO+D+o8Q/GnvsMbg+Ig0LNXHetgaXoYIbe2HfCYwSzJVaKlAh653Zj+UkoO?=
 =?us-ascii?Q?sahFYz81eV8iePIYck/j1nPfN4Nkax5OtsHnrWz75ODjEGDWXE/3hkps+jbN?=
 =?us-ascii?Q?bK+JpSbqu2b9ytCFk7sgHDj2d7+NMcGpRYv5xHDS1OUWw0pm4lHM21wfUa4o?=
 =?us-ascii?Q?cPqix08fVWYqA5wtF9soztt9Uz0WS376Xo863nUBt7AvNw8pfKGHc2VKu/Ad?=
 =?us-ascii?Q?7Yvbb1oz8StzlyGd9YPQ1wH0536EZMO5ShHempLAwWcc6WGNybZKeBtOISQg?=
 =?us-ascii?Q?EvV3mPpOSxzFOqUlEsAkfREFs9yO5ksKGpj1NvLQgBKBTP0R?=
MIME-Version: 1.0
X-OriginatorOrg: umass.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR14MB4192.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a1f9fd8-0340-4905-989a-08da53f8c692
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2022 02:41:57.4681
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7bd08b0b-3395-4dc1-94bb-d0b2e56a497f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: svMIgwTyubtJRXFIr5YlvpQhgOyl/m6xn3V9yhiCNilCeNce9B7YjD9PFz2bi6mcRNhBiNG5H2kbA+5IJVdj8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR14MB5389
Message-ID-Hash: TLT7WFB3LZLYIBX5COMXGF5OMDJJW6TF
X-Message-ID-Hash: TLT7WFB3LZLYIBX5COMXGF5OMDJJW6TF
X-MailFrom: xingjian@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to setup N321 master clock rates ?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VYHS4TDOCIMLF2ALPYLXO7XQE3HYCKEQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4073258715046952243=="

--===============4073258715046952243==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR14MB41926F8FD091AF888E8BCA30CDB29MN2PR14MB4192namp_"

--_000_MN2PR14MB41926F8FD091AF888E8BCA30CDB29MN2PR14MB4192namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

It worked. For other people have the same question: Use this:

uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(args);
args=3D"master_clock_rate=3D200e6"
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Tuesday, June 21, 2022 22:22
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: How to setup N321 master clock rates ?

On 2022-06-21 22:19, Xingjian Chen wrote:
Dear all,
I have an N321 and trying to change the tx rx rate by using argument --rate=
. But it fails to change it since the master clock rate is 245.76MHz and th=
e tx or rx rate can only be a fraction of that.
May I know how to change the master clock rates to 200MHz. The default is 2=
45.76MHz. Is there any simple command to do that by the C++ file control me=
thod? Thank you in advance.



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


Simply use the "master_clock_rate=3D" device argument when creating the mul=
ti_usrp device in your program.

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Support=
ed_Sample_Rates



--_000_MN2PR14MB41926F8FD091AF888E8BCA30CDB29MN2PR14MB4192namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
It worked. For other people have the same question: Use this:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(args);<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
args=3D&quot;master_clock_rate=3D200e6&quot;</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, June 21, 2022 22:22<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: How to setup N321 master clock rates ?</fo=
nt>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-06-21 22:19, Xingjian Chen wrote:<=
br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Dear all,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
I have an N321 and trying to change the tx rx rate by using argument --rate=
. But it fails to change it since the master clock rate is 245.76MHz and th=
e tx or rx rate can only be a fraction of that.&nbsp;</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
May I know how to change the&nbsp;<span style=3D"font-size:12pt; background=
-color:rgba(0,0,0,0); display:inline!important">master clock rates</span><s=
pan style=3D"font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grand=
e&quot;,sans-serif; font-size:14px; background-color:rgb(255,255,255); disp=
lay:inline!important"><span style=3D"font-family:Calibri,Arial,Helvetica,sa=
ns-serif; font-size:12pt; background-color:rgba(0,0,0,0)">&nbsp;to
 200MHz. The default is&nbsp;245.76MHz. Is there any simple command to do t=
hat by the C++ file control method? Thank you in advance.</span></span></di=
v>
<br>
<fieldset class=3D"x_moz-mime-attachment-header"></fieldset>
<pre class=3D"x_moz-quote-pre">____________________________________________=
___
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.=
com</a>
</pre>
</blockquote>
Simply use the &quot;master_clock_rate=3D&quot; device argument when creati=
ng the multi_usrp device in your program.<br>
<br>
<a class=3D"x_moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide#Supported_Sample_Rates">https://kb.et=
tus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Supported_Sample_Rat=
es</a><br>
<br>
<br>
</div>
</body>
</html>

--_000_MN2PR14MB41926F8FD091AF888E8BCA30CDB29MN2PR14MB4192namp_--

--===============4073258715046952243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4073258715046952243==--
