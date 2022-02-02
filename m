Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC8A4A76BD
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 18:23:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 269123858F5
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 12:23:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="kirLd/1C";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.184])
	by mm2.emwd.com (Postfix) with ESMTPS id 7ECE638433A
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 12:22:25 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.177])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 3BA0F2C006F;
	Wed,  2 Feb 2022 17:22:24 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 21C53680099;
	Wed,  2 Feb 2022 17:22:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mrir//ENDEpRV3wWwjfUUzlcmjWew25bEajftPWPZ7QFPWmRsYGj+IWqAC8PLi1w/BUfeIz+Fsz/TBRVzedHg0EQkv1r+vtTuQ7PFmYzjkzb7EGLAnC5elCBRfuJBOQUSH/DUOVRknIm6exzy5W41skSTXpdV7cRGnzbO+K8wYlQETdrTTy6S9DGOJn/lTyvz/wac8F9Ur9UNInAmAibPm5H5Z8AoZKn3IYXpwCdW5DcRuwBLDW3+NB57vUOFq3nzZLsQ5i56jq1bc+ucF+yM1lvXtRIUNUvUXVSw6oKNNOohJsS0+gkvBwh1hjEjdcvfgwbhoeye2N3BZrWL1V5TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vfi5j/jDnR9MdT2bZt1R8x7c7c82zV0giNZWnVNzWmU=;
 b=VVmEQ+ATIQmHY639KFL05ZaXYUeEfLFGPyqoz/kZGq8pEcjGG6pOTw+2ugLBJQ6lZzQl4FQt44kfoyLduw7Vmb9/jmlV4Scn8MX60ECj0VEbMT/LbkrRD5ODf0z3q9LwvphhqOeMSxH8UqTX314tnmMNHBI/Onuk+eiUoBKJ3d6Z/o6U7rHUOsQ2/9aXAcnoRdGHzoJyfSZtJkstsf/cVGEp3+vDJ3GZQ8yv6ylhnMdKL70a25ZG7rWlsJpBpeDiS0KK3E3VwASRLLhql5rpBo6fb0kqtnrU9TYzJdK+n6OaGDJn+mwbkanzurFUfG+rLO3nPjuGFLrI0pb1Rvp1ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vfi5j/jDnR9MdT2bZt1R8x7c7c82zV0giNZWnVNzWmU=;
 b=kirLd/1ClcGB4wN8gHtFqZxdZMKO7cMg5+l62dIdxV2v7I7wR84UnucAGJW3nZj1LNrYEt+UT861J44ZRDXbcSCJdILonPaKfCeY3XMIMMGqP/aQaPRU8eEuo3u/j2JMeqPuckSToQnmmaeXnuKq6UaityiEKyIn18kzYzyt6ZM=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by CY4PR12MB1253.namprd12.prod.outlook.com (2603:10b6:903:3c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11; Wed, 2 Feb
 2022 17:22:22 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf%6]) with mapi id 15.20.4951.012; Wed, 2 Feb 2022
 17:22:22 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Timed Commands Not Working
Thread-Index: 
 AQHYF5tb715UD5NcGUSH5wmFASi3eKx/DJOAgAABTguAAAKNgIABHYZZgAAs3ACAAAaQGIAABXgAgAABXK+AABrGNw==
Date: Wed, 2 Feb 2022 17:22:22 +0000
Message-ID: 
 <MN2PR12MB3312D53CEDAF9C0B074C6A8FB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
 <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <8032a31f-48f3-af30-5a79-3d7c8dde12e2@gmail.com>
 <MN2PR12MB33129135EE23091DC520E48EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <a5b4ebc9-36db-b2d9-abbb-e7309562f33a@gmail.com>
 <MN2PR12MB33125E03CE4418143EC2F8AFB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: 
 <MN2PR12MB33125E03CE4418143EC2F8AFB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2a0e7fe-8f53-4252-74c6-08d9e67092ac
x-ms-traffictypediagnostic: CY4PR12MB1253:EE_
x-microsoft-antispam-prvs: 
 <CY4PR12MB12530B12DA3D7537D85005FBB8279@CY4PR12MB1253.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 C9dBXOR/TGHlraonto4prKNnI3powhGApwSA9fbBeMXxAMA/8daJwEL46brHEhJ9r4CDCl/ibrRkhQVwpGfXTLiPBVZDeWzTTb4APUI8Wh6ad0JCW12Fv+ftGCF2uqIk2aPDMEwVP8hJeVWoElC4AKLajEf5KVG1MxbQ2i1uv3+0p531W1jpuHsdKBFLCKz+HlmqgcyAdJ848FFx1WJOM41kgd0xvx9g7WnhggMJxEZygWTRToCJQe5AxLqLaajSPy+WTVYUfcFOfA5EUrLG+EabvkOX53msOmSZPXVAMt5wazy/19TtnN12ndeg4VLTOUHQn90F0XYf3HvhKf1BDvXd2lmuqIcmfZNRG8WHIzGhGHMyECxSAmVGyQaZ0/lEwDA5/RsRiqKdC7xUcniPLb0y4ofrUTNzjWGr+RJt0/ZZpBf5Sxt3+CHQiZOSUcuS4OD47u88bLuHD4ZLRrAfs0QJf+wxPlpXtBjuqJ6XjpT/OW7gXlP0YTAQvF5nJoFoZrNl/ap+52v4yuBfcMqt5FS5/TixFIn29uATBplHfAO5Tg3kWPV4zjkX5meM9jvpy8jGXPVp5moEUIjzsCzKcKW81rUWr50E7+LsyvpWAjDdM4ixhPfIwpNR9RtZkaN3+bCDqFzW24u+4IU2s+6SFHJbLpH1Smccyea+qlpuVhd3G02G66w0aACo8Xe8PfBN4y2y5ZbuwJHrr/cdKOU5LA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(396003)(346002)(376002)(39830400003)(136003)(26005)(186003)(64756008)(66946007)(66446008)(66476007)(71200400001)(8936002)(66556008)(8676002)(86362001)(76116006)(5660300002)(2940100002)(53546011)(9686003)(2906002)(33656002)(38070700005)(55016003)(52536014)(122000001)(508600001)(316002)(38100700002)(19627405001)(110136005)(7696005)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?m4MBknLcXoZy5lBt5fZxKu1txUFc5D54cJWkht0OqSFPvOY1AZVbWB/XteVs?=
 =?us-ascii?Q?co87qIVE1ihc3VI4BCPCNlMo/niYLBdJnW0HO1A2/nBRVTEQQ1INZKT7ngiL?=
 =?us-ascii?Q?ugQiC5BedVD608bD5rHzsNl7OpUosYtajYDcJQvW6C0MVP7OxLgXhKVMAv2X?=
 =?us-ascii?Q?U5vL6HC3fGi6gdtjuc3u9ciXV9ekZHGcdZOc+TOi3rcqkOfzXeOVQ+v4Hy7x?=
 =?us-ascii?Q?6Uvf5JZfClrcFT+bVXpxXMN9RIt5EDWA4TladU3wSQpZtjgDLfWtiLyfjgGM?=
 =?us-ascii?Q?74Burrgs6iQL8PEdtyY2bBvEs7+XqGsXY3JUu/2aAk5mD6CDEuhHXl5y/+iw?=
 =?us-ascii?Q?0TmjWMVVmeb/Nio8h0PjuCXij+0J11KtYTRIyXHTBXAMMGFSL7+H5r2bCsdb?=
 =?us-ascii?Q?2BP5EQ3KKYeE327QyqPbeqJotUfqHuBboUB9E24X/bgQijW+n4B1iOdHr687?=
 =?us-ascii?Q?qmE75Q7PDKDkJ4prbBCcNrSjALutXnJu0NfqwM71UT39oImSlKPLXIr+w35l?=
 =?us-ascii?Q?qHKmVM9P5sDIBE33YsWLprZaf8OK+bNn/ofDeBeAJBQf8ATvlfrFw0hu7+wF?=
 =?us-ascii?Q?NnDDscxVtNCZ3I8ykt5bYu/+8zwe+HxdZqROs4jVNfAcpIJqCBBDZGt9MFGp?=
 =?us-ascii?Q?HG/eWitM5u0wNgbZcdu7jK5+EKGfdgnjxotvsKC1jjSoEYe3Cc7scdzP1yYA?=
 =?us-ascii?Q?rDRPSNFrAT2lxqLqN3z/sMymnkOcQVB2HYS8MW65wbN84F6EWXbL0kkD1iYw?=
 =?us-ascii?Q?Y1FSLsE2FOOaboYcBlXoMjHpUCEAy7yRRxDaMTnmuLGlEngBzwUc+XFZOucl?=
 =?us-ascii?Q?jyeibzEqixnj4WGANFEvuJb7sQrsnMiWz/tLY5kTdX1o2zCRrmCDh6zDtyOg?=
 =?us-ascii?Q?XDUd/5RYpZxz927Af5cfhlIYOiKuLL/K28Z4mq8Dn9VUQsFywn5BmOewzU/X?=
 =?us-ascii?Q?q2RmCm+2zf8zz4HWQnj/u5xwJ3IeQP4pCWwrDB925JXZ/1a3mhxjiJRxLfIb?=
 =?us-ascii?Q?bdkMcI2/JxFqsLg4VNmNI+Ryz59JtO6zj3IYgCRayeTqKIWBncSmIhkx2gCc?=
 =?us-ascii?Q?Dtn13bqm51ckwdeu5zXd8LpwOE61yPkc499LlHIUR0oCuGB4eWNXhUeiLgbj?=
 =?us-ascii?Q?JpbA2ozZadJl2K+nsBu5u4vAIhfP1s1iKGB3UVM+nUD7btqiXO6AcYzzCgBR?=
 =?us-ascii?Q?ozOQdZ3bYgJmvUy+LVoSiZF2nAipboS48+Ao1jFbVfrkosRc2zyqjd2shcWR?=
 =?us-ascii?Q?QTqeEqFYr55Vt0G+M/DAUSxQN8eIJT4DLy62uKVR3J81Pv8u4sITO7K0+mcj?=
 =?us-ascii?Q?DeA3WVlCuinb60aDzVnNE5N97I1LpMZJPWkzYX5llxTML2EC4gmVPUr7IF5j?=
 =?us-ascii?Q?C/iVt8erfPtRQ9MhDtg9bS6Im8W0rbz5CX93uFR04z5tecimLWFGTMSyvVlT?=
 =?us-ascii?Q?0PlKlo8M2JATVMn9sIYuebKpXQwmHz0kEnzxZR+/fJCVVRuJTUaxowAn61r7?=
 =?us-ascii?Q?uwSVhFDqnjwz78GhYohGneyHH4KJ4JjO+nQfnoiHO4eWsVH6ta5KLk2fKlZr?=
 =?us-ascii?Q?szqIFIHLo82I64CbURK1NdweoUEyTiLskwxWzjGW6quCKFkWaXDJHyyYThCh?=
 =?us-ascii?Q?syXUtQ325G2WBjZ8UGEnxylzLv0FEacM8R3CpFPTT56+KwaBL0jxIi5Cjr1+?=
 =?us-ascii?Q?Gp5DxA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2a0e7fe-8f53-4252-74c6-08d9e67092ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 17:22:22.0199
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JIYstJ/CBHUPjN0o4zZvowwhQqy1Q+r0Yqo/5TZG9YbPar7GmXjeNEUP6cCYmwghun72B2gdX2L3jHsEVBt61byDFaDVS0T/9wkJUHA5XGQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1253
X-MDID: 1643822544-lhjrCPAq_7nU
Message-ID-Hash: ZANJPI477SQBODPDZXSPKMMST6GLUXAY
X-Message-ID-Hash: ZANJPI477SQBODPDZXSPKMMST6GLUXAY
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AP76HZTW2E5QNEKUFTRGMHIGS725DQN2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1718580477942012608=="

--===============1718580477942012608==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312D53CEDAF9C0B074C6A8FB8279MN2PR12MB3312namp_"

--_000_MN2PR12MB3312D53CEDAF9C0B074C6A8FB8279MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Just to add one more data point, I just ran test_timed_commands on a differ=
ent computer connected to an X310 -- still UHD 4.1. I have the same problem=
 with that device where it looks like timed commands are not working right.

Thanks,
Jim

________________________________
From: Jim Palladino <jim@gardettoengineering.com>
Sent: Wednesday, February 2, 2022 10:44 AM
To: Marcus D. Leech <patchvonbraun@gmail.com>; usrp-users@lists.ettus.com <=
usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

Correct -- I am using the stock FPGA image for the E320 and the N320.

Thanks,
Jim

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Wednesday, February 2, 2022 10:39 AM
To: Jim Palladino <jim@gardettoengineering.com>; usrp-users@lists.ettus.com=
 <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

On 2022-02-02 10:21, Jim Palladino wrote:
Thanks Marcus. Please let me know if R&D comes back with anything. I'm at a=
 bit of a loss . . .

Thanks,
Jim

________________________________

Just to clarify--this is with the stock FPGA image, correct?



--_000_MN2PR12MB3312D53CEDAF9C0B074C6A8FB8279MN2PR12MB3312namp_
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
Just to add one more data point, I just ran test_timed_commands on a differ=
ent computer connected to an X310 -- still UHD 4.1. I have the same problem=
 with that device where it looks like timed commands are not working right.=
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jim Palladino &lt;jim=
@gardettoengineering.com&gt;<br>
<b>Sent:</b> Wednesday, February 2, 2022 10:44 AM<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; usrp-users@list=
s.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Correct -- I am using the stock FPGA image for the E320 and the N320.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,
<div>Jim</div>
<div><br>
</div>
</div>
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech &lt=
;patchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, February 2, 2022 10:39 AM<br>
<b>To:</b> Jim Palladino &lt;jim@gardettoengineering.com&gt;; usrp-users@li=
sts.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_x_moz-cite-prefix">On 2022-02-02 10:21, Jim Palladino wrote=
:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks Marcus. Please let me know if R&amp;D comes back with anything. I'm =
at a bit of a loss . . .&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<br>
</blockquote>
Just to clarify--this is with the stock FPGA image, correct?<br>
<br>
<br>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB3312D53CEDAF9C0B074C6A8FB8279MN2PR12MB3312namp_--

--===============1718580477942012608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1718580477942012608==--
