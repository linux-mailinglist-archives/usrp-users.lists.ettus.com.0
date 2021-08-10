Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C80E3E84F3
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 23:08:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6152A3846FA
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 17:08:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=augustusaerospace.onmicrosoft.com header.i=@augustusaerospace.onmicrosoft.com header.b="ubsHKBxi";
	dkim-atps=neutral
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2101.outbound.protection.outlook.com [40.107.223.101])
	by mm2.emwd.com (Postfix) with ESMTPS id 2EB6A383F95
	for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 17:07:27 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FFH27g8lFIU3HQD0TEt5jhcqanbCApoSxvoCIoXWt4Sxq3RENaBTQxShlkjB/08VvLlnpClgvhPo//E1UB8UXQzn9ih6evUTVFp+kB7B7/EKDYuswFkf+Pht2zXdhI3/AEwBYu5f+n066cfH3b80bu+S6rL/ZA59BN6JGcQwOcng6qSjtdwptWMcHS20kvvSFVOoN+O1uJwAoC8PYpHxLI5gIbi+Kmsx6rqm+ss4pq3jXFDHen2djO22nhhnOqLA7yvJWdnuqm+f3wUvA4/CVN/KgkoafBBT9G9iKrtSAev0NAxNciBtEuQ1sbd0EbbDB1WfbkDJFFf4R3xtJmCmww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qtjnlNHmhKxlwP4nmgkiP6CfqCcELB/IWfzCXlgD3+0=;
 b=KpygUFlTzujLQZHRUafxAqzxKnbdMXfOhrxLycwn7GoF1PbQsJ8hOGpZETlWNrhmgR+OjRrC/WgN6QyntndXoGECsuFOwAfxxU9pv8RKFxCyFol64tRBPVuV+KxptW2pEthsZVbuOX9YByckCOTJFc1i+K8Zhl9dhgvf8ok/ZoyIKSYduwZWbCBJpXVlfYLR7kQ/WUqcNxPbgs6MZT5PrhiGjldaoiHhLHU9YElqcVdprXiH2lWgNCbx6Hq2g9Jkin5iaqc2q8Hwd/nAFfYF4NutK0rH8PQS2u1/8lkt+xidFM0d4PRqqzlGNPSZHlQlid3Irt9R9Hnq03DfZTOnzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=augustusaero.com; dmarc=pass action=none
 header.from=augustusaero.com; dkim=pass header.d=augustusaero.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=augustusaerospace.onmicrosoft.com;
 s=selector1-augustusaerospace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qtjnlNHmhKxlwP4nmgkiP6CfqCcELB/IWfzCXlgD3+0=;
 b=ubsHKBxitO/crY1s0Q+6hLwFm4ryFzUFPKsQU6PfqI2uIkws2pNvdB/lEKr2r8y3usvrmCB4XvIQeMooRk3xIKU0XqyjTTsoavRYD1QTWus/QVLGfRBPd6+2k8omv1onnmAjv9YQtCIy9hK/XgL1WtMfzo1SjcqomdvM8zkGTjE=
Received: from BN7PR05MB4500.namprd05.prod.outlook.com (2603:10b6:406:fb::28)
 by BN8PR05MB6530.namprd05.prod.outlook.com (2603:10b6:408:4e::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.5; Tue, 10 Aug
 2021 21:07:25 +0000
Received: from BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::3cc7:bea2:75e7:4b21]) by BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::3cc7:bea2:75e7:4b21%6]) with mapi id 15.20.4415.014; Tue, 10 Aug 2021
 21:07:25 +0000
From: Jonathan Tobin <Tobin@augustusaero.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, Brian Padalino
	<bpadalino@gmail.com>
Thread-Topic: [USRP-users] Re: Too Many Samples in a Single Burst
Thread-Index: 
 AQHXixlt7MMSt7rLTUiLfYIQFhPkb6tnSLGAgAANz1mAANWeAIAADfA4gAAPkoCAAwlFUYAAARnwgAAjZAiAAKtLgIAAoRu1gAAPlQCAAAbPAIAAZdSw
Date: Tue, 10 Aug 2021 21:07:25 +0000
Message-ID: 
 <BN7PR05MB450016DE050AD136763D5F5BD5F79@BN7PR05MB4500.namprd05.prod.outlook.com>
References: 
 <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610DE851.70308@gmail.com>
 <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610EA718.1080908@gmail.com>
 <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610EBFD9.2060400@gmail.com>
 <BN7PR05MB450047CE239680F69CB94A0ED5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <BN7PR05MB45009AF50E6C4419B7D2837DD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAEXYVK7VhtzWybERTn1emuLRW3T6GeFhi8QiABpyj2G_jRO2sA@mail.gmail.com>
 <BN7PR05MB4500466BB13226803348260AD5F79@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAEXYVK7-jo67VbrkrCZ6YqDzoVsY-D7JXBYwbFhOrrJOP0eWag@mail.gmail.com>
 <61129418.2030705@gmail.com>
In-Reply-To: <61129418.2030705@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=augustusaero.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4bf1bd6d-afa9-4346-4cf0-08d95c42daa4
x-ms-traffictypediagnostic: BN8PR05MB6530:
x-microsoft-antispam-prvs: 
 <BN8PR05MB653086BA7DB3FA5398BD7388D5F79@BN8PR05MB6530.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 5UJS350neMhItz52G1s6DUCTCotkXTljX/D43Jq1GJ6KKfVYu/Lq6A3ks9EJuPXnRzzI3TbKIV/7+cgflsVXUCFJNlzC0+Y5JwzQcCYC0pgyDbQWRLzRWW71UcLZOVlRp5LF9LMIzc0VeJRdauA6lfdDOgFJFjhNjgVZKGPZ0s1N7xzpnqVkJhcHV06QNxjiQv5KOR1AXDr4r9wn8xbYjz6ZZ3eT8ejxoD+eqyXqg5Cqscfdk/Vh1IkNCVwDGkbP5V29mJeepkXlovqzCKsfGc8aypSEFQnC9pHlp7znypij+Srayz93ZO0KjuuQ2xshv0qCLBVrX8r9tPMCaZkykgFFmkyEFxFASCB6SLKTAyy6gxoWa3QxdTtefDKpE8+MG2R0idgtQwkk7ZJbdZOusILDD7c2ntmIdvi8e54z/iI4805S/Br5MK/ABINfXAUbTyGxO6iu99NIG8K+UlKEYsCKHKgTf2bB3XBPpNXy4tnIoT7u6lSa/AdB1VbcuJRvAzCS/jtkuxrktUDbjFCEyTTawrr5wP2GqIRN2dkK8Pnprl8fUxCdAxmGdUmP3+SMChJHmVag7yj1QR2UBMu2CMB6QD55XYYXP8e5Aq1qrAZJWzINzK4291xOkC/v7PPlVjRKiTM3+zxTubySWpHfAUB8aol+/wCvqMC60II2ywbtr3c3f61ZlJg+662pwLcOqpDuCXa54/oFxzYpLGFr0g==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR05MB4500.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(39830400003)(346002)(376002)(396003)(42606007)(136003)(366004)(71200400001)(52536014)(33656002)(5660300002)(8936002)(186003)(7696005)(6506007)(53546011)(26005)(19627405001)(8676002)(4326008)(2906002)(55016002)(86362001)(91956017)(66946007)(9686003)(76116006)(66446008)(83380400001)(66556008)(64756008)(66476007)(316002)(478600001)(38100700002)(110136005)(122000001)(38070700005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?avkQlZLD5+WoA80iHpTNrqS2VN+LXRQiiBfIALB1aplcLxWsT8vmNVw+3d5w?=
 =?us-ascii?Q?jqRx2RJWDFntt9M0ln+THOahvvzJZzMjsWhvYWjBd4OYWLd2TI8xPVxXFt8o?=
 =?us-ascii?Q?85Ikzv+sA/yhyYle9EQo9go5pjUM3sFP+OYqNl/e6vpR6TgJQsnWeRbfzEyU?=
 =?us-ascii?Q?HBuQYNSZBGkiVfwal489m7pTCGkxmlvb4Rm8j5fdwgwvJD/B+O82ob2u/jLt?=
 =?us-ascii?Q?UTR2ytpKwKRdz6tephU/qGVfYXmNe44tVjAzm4EmOU/k5wEs8SK+IDGC2nC3?=
 =?us-ascii?Q?nE7YAA71/XFZAi8X7eMBj8oMh1N4Wvko4cMr70trbEcieB/dJORdHqkFttg5?=
 =?us-ascii?Q?EvO1c6yHOnw9Xo43sc/bHJzikvJGUlSAHjkO0Nqubm4BchzCHmXf5tA1BLmm?=
 =?us-ascii?Q?c6u9Z+uAPQHKVfSsm9wp3Ifzm3xs8wzZOT02rk9+j/vBUGy8si+AZOl2iAPO?=
 =?us-ascii?Q?f6zM5CDw2Hp7qKWCTPu3nVJ81zBoxga/FARNHnw5c0hEfS1dmCD8STZLjepb?=
 =?us-ascii?Q?B1ps8dE/T3a9jc2xqOPV2h7ZmuNSQOvaAAXMtRavtVBRajS/8chXCqM0LouO?=
 =?us-ascii?Q?6DpDCwkNFtX0Ee/ax4DXJg+HNtkrJWGUiPhO1JCZJbTzQEE4YmqNRNQ8qXeW?=
 =?us-ascii?Q?d8A2QewFdbOrtLBcypd92hc3jysJFZUApWAkW4lEeZ+v8l6AO9qjljvReDaY?=
 =?us-ascii?Q?JLhg1KG8mZcD4YXgym3H+6B3ASr55u6gvoGHOcENv51wN/iQRwo8/XvIpL4L?=
 =?us-ascii?Q?mbYEVP1cxm8tceLVNSjs7/jbcWVFyy8IHlAmaEhFsUxvNdH8bWVgVXe60OWO?=
 =?us-ascii?Q?5BAl80f7d9YZsPsGsuMOr9MiXRJ4H4hD3kWQ3Wu7Q7X5G9J+7Mh9HH/OjWTO?=
 =?us-ascii?Q?xyIgQWYf/gVQYgOC/K468BhUoTrwYYd2Mq1alNCzF8SPCxFNTdsoQ5O7P90I?=
 =?us-ascii?Q?TZmWFNG4bJji8qNFx8aQ84Pi2pWs6xNOGIFQXR5KtLxciA63HcnAa31toPO0?=
 =?us-ascii?Q?Su8AMl/KtYSlpSnTKMp1ZaMBTrFvXE9r8/gL5GVeMikV6N+v3YwzRW4vCq74?=
 =?us-ascii?Q?NYKBP1Z/pSydbDqpLjnyaYeR04ThOWRegmE4MKTRQ+Cm2tqA8zNgkeyBFbJK?=
 =?us-ascii?Q?NZCW6s7eSAYMADaTjsfLjXMubFiSTHezEnzSuUeH7+ZNMrw1iWBN2oSM/Te3?=
 =?us-ascii?Q?VH04g7A9ny5Zt+XPIaQNMdm/N2dHBAK6nbpbXX0z3A6SG2mMCzhYW86NOjne?=
 =?us-ascii?Q?5+KExwMasbdsnY11vrJz5D5NRgTuS15mTvtZIf795gzaAGyouI76QEkac54V?=
 =?us-ascii?Q?Zofbwix8J6vVjb48qRLvi4Pz?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: augustusaero.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR05MB4500.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bf1bd6d-afa9-4346-4cf0-08d95c42daa4
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2021 21:07:25.5083
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04d66077-4301-4950-bf2c-c3d5b922ae52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /ghv2DzHRmvDRy3u+gAl7B49DcC8ItDaMpWN7MK/joKVhhhMEPvxf6acM+XcR3fM5ldP9qhoQNwLif5wtKMJrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR05MB6530
Message-ID-Hash: VQX25NFKB6H7VJQKWDIKMSCFYRR7EW23
X-Message-ID-Hash: VQX25NFKB6H7VJQKWDIKMSCFYRR7EW23
X-MailFrom: Tobin@augustusaero.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YXFRIHXRNT3N7DJ2AV62MKOPLX23W33P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3876221184315274464=="

--===============3876221184315274464==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR05MB450016DE050AD136763D5F5BD5F79BN7PR05MB4500namp_"

--_000_BN7PR05MB450016DE050AD136763D5F5BD5F79BN7PR05MB4500namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

To follow up,

This seems to be the limit now that I have updated to UHD 4.1.0.1:

[ERROR] [0/Radio#0] Requesting too many samples in a single burst! Requeste=
d 18446744028430598144, maximum is 281474976710655.

This occurs with the key arguments: --rx-rate 4.8e6 --rx-subdev "A:0 A:1 B:=
0 B:1" --rx-channels "0,1,2,3" --nsamps 2880000000

The nsamps value is for 10 minutes of recording (sample rate * 60 seconds *=
 10 minutes).

Thanks,
Jonathan


________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Tuesday, August 10, 2021 4:58 AM
To: Brian Padalino <bpadalino@gmail.com>; Jonathan Tobin <Tobin@augustusaer=
o.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Too Many Samples in a Single Burst

On 08/10/2021 10:34 AM, Brian Padalino wrote:
On Tue, Aug 10, 2021 at 9:39 AM Jonathan Tobin <Tobin@augustusaero.com<mail=
to:Tobin@augustusaero.com>> wrote:
Hi Brian,

No - only intention would be to receive for 10 seconds and save data. What =
would you suggest?

Modify the program to write out to a file on a high performance drive and r=
eceive smaller parts at a time from UHD.

Brian
I suspect what's going on is that the various streaming modes are implement=
ed by the HARDWARE, and the control-word for
  "NUM_SAMPS_AND_DONE" prior to UHD 4.x was only 32 bits--looks like it's n=
ow 48 bits.



--_000_BN7PR05MB450016DE050AD136763D5F5BD5F79BN7PR05MB4500namp_
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
To follow&nbsp;up,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
This seems to be the limit now that I have updated to UHD 4.1.0.1:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
[ERROR] [0/Radio#0] Requesting too many samples in a single burst! Requeste=
d 18446744028430598144, maximum is 281474976710655.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
This occurs with the key arguments: --rx-rate 4.8e6 --rx-subdev &quot;A:0 A=
:1 B:0 B:1&quot; --rx-channels &quot;0,1,2,3&quot; --nsamps 2880000000</div=
>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
The nsamps value is for 10 minutes of recording (sample rate * 60 seconds *=
 10 minutes).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,
<div>Jonathan</div>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, August 10, 2021 4:58 AM<br>
<b>To:</b> Brian Padalino &lt;bpadalino@gmail.com&gt;; Jonathan Tobin &lt;T=
obin@augustusaero.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Re: Too Many Samples in a Single Burst</fo=
nt>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 08/10/2021 10:34 AM, Brian Padalino wro=
te:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div dir=3D"ltr">On Tue, Aug 10, 2021 at 9:39 AM Jonathan Tobin &lt;<a href=
=3D"mailto:Tobin@augustusaero.com">Tobin@augustusaero.com</a>&gt; wrote:<br=
>
</div>
<div class=3D"x_gmail_quote">
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex; border-left:1px solid
            rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi Brian,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
No - only intention would&nbsp;be&nbsp;to receive for 10 seconds and save d=
ata. What would you suggest?</div>
</div>
</blockquote>
<div><br>
</div>
<div>Modify the program to write out to a file on a high performance drive =
and receive smaller parts at a time from UHD.</div>
<div><br>
</div>
<div>Brian</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex; border-left:1px solid
            rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">
<div></div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</blockquote>
I suspect what's going on is that the various streaming modes are implement=
ed by the HARDWARE, and the control-word for<br>
&nbsp; &quot;NUM_SAMPS_AND_DONE&quot; prior to UHD 4.x was only 32 bits--lo=
oks like it's now 48 bits.<br>
<br>
<br>
</div>
</body>
</html>

--_000_BN7PR05MB450016DE050AD136763D5F5BD5F79BN7PR05MB4500namp_--

--===============3876221184315274464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3876221184315274464==--
