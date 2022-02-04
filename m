Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8554A9CE4
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 17:24:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90074385E6F
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 11:24:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="vmopOt3W";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.183])
	by mm2.emwd.com (Postfix) with ESMTPS id D3FC4385E1E
	for <usrp-users@lists.ettus.com>; Fri,  4 Feb 2022 11:23:12 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.166])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 669D62C007C;
	Fri,  4 Feb 2022 16:23:11 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2177.outbound.protection.outlook.com [104.47.57.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 3AC05900069;
	Fri,  4 Feb 2022 16:23:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UtMokcnfwy9DFceEXwjJwfBRqpCpLHOsxHfbu36OpnRzn+oJADLBSRfb80+TtpoFcD1VD8qMjTcayT/SAtAIW9/QqhwouyMGlhRpst90bSUBE8AN3yvlrTHojPXkPloieAI+brQ2Mq6guJH3gfCsFlZcE1NQg/XgEoMTIvOtSk/xfZd8Gxt2t3HfztlvahQ0cs80QIIGwMDfVyBDpG/cgt3sLPTeBYjhCydXB8mhIXUNiHbkMans5ODRow6lnJqWi7GSOzV0t+TzVcoBx6ux0Kvx6WnxYmtUpLZ0N1ubA5cE0mUQ+ZaL2ryFaMwKkzD/MnIK9rF7NkXJGymypFzvcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=30luacwEedyOHCVGKEQU1/XXzaoQu7OvPAS9OzifxjM=;
 b=nh6gZHVatjkYS1ZKC0rB1NjUFyQunkyD9pbQMdwISxGpp2Jl8Y2Vixr9eloJS62jqFvCyxGIdjRNTADk6lMgCxheOYf2wXFx+O9FuBMLD+zeqmdTIgLBOE6X5AQQrEDHsqV4k26cLe4SMcV+SNGrcxSmCWu/6pXchtYcT7x7JxD1ZSgPPKGyd4KcwgQGbaStXUUX/y2jfxpP76Vym7i2uTxpTJzs197xqEJkHOwgKlvdxRn1rDbuWyB5fhWgg1uWA1fJDlq3X2dc6e0KOWW3Xz5hi1ys+7Nm8rrac78sfdzZC/r3D4hjT+gWH4A8pTnRKDWShyZlmfPDUQl/wmROVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=30luacwEedyOHCVGKEQU1/XXzaoQu7OvPAS9OzifxjM=;
 b=vmopOt3Wic3Gog9/onRvuA6hwwCgF/lXy7n3vwZu1B7m59jDE0YgBzmwBagdy3fmzxKwMIaoXnWNrSZop5SSJios0ROBpDNBOhLpMXh84iQmgZnVmslw+cfGX8MOcCbHuq8wybnlwzVkV9cuWytBuzQfFRrTaTa3ifE5TyKbHIU=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by BL1PR12MB5224.namprd12.prod.outlook.com (2603:10b6:208:319::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11; Fri, 4 Feb
 2022 16:23:09 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf%6]) with mapi id 15.20.4951.017; Fri, 4 Feb 2022
 16:23:09 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: Dustin Widmann <dw2zq@virginia.edu>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Timed Commands Not Working
Thread-Index: 
 AQHYF5tb715UD5NcGUSH5wmFASi3eKx/DJOAgAABTguAAAKNgIABHYZZgAAs3ACAAAaQGIAABXgAgAABXK+AABrGN4AANBMAgAETJBCAAcu2AIAAAa8P
Date: Fri, 4 Feb 2022 16:23:09 +0000
Message-ID: 
 <MN2PR12MB33126BF9E653537F4BFE42CFB8299@MN2PR12MB3312.namprd12.prod.outlook.com>
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
 <MN2PR12MB3312D53CEDAF9C0B074C6A8FB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAB__hTT+rMDuE_Z2G-WPfmL5pa4Gp8WuaxNM8hU2hxK77rwQZQ@mail.gmail.com>
 <MN2PR12MB33127C45BA4FCB2206501932B8289@MN2PR12MB3312.namprd12.prod.outlook.com>
 <425a8e78-fc35-7c7e-a036-87cc6e97408c@virginia.edu>
In-Reply-To: <425a8e78-fc35-7c7e-a036-87cc6e97408c@virginia.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea2ee608-e5ab-4ae2-a1b2-08d9e7faa1e3
x-ms-traffictypediagnostic: BL1PR12MB5224:EE_
x-microsoft-antispam-prvs: 
 <BL1PR12MB52241BD324C62C7E51358B5CB8299@BL1PR12MB5224.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Pk/sLU5pzxdMIlM/iOnfxJcjepnCEV7pbCbaRsbPZMba724RVFUT2+RjnpJqlFBpV9ade+wdMqUluCBbChYpeg0JQDSvJ+eBNHLyzzVChbx35KaDFg+YNwgKL9AAn/EI4KAfYkiUxv/2DfSu3mkcGQs6gsAN1XG4Nvt6NAlZk1WQTmaSqoiTPjJQIIOw7ybFOYkcoP5I/Zw/8O39RNY0NOBZ2tic6E5fDFIn/BXErjYt4ICmeWkyY2XBzhrzfbdmKtak0KufcXp2iH+BkM+RvfRa9Nz1kntUTexQ076SOvQap/coNZk1TNqfJv/A94vqSPlG8kUn965XVq0eo0XbWF4OdsmJkXLGIAvB852wEfvo2P/0xUrhoD8XL5qrkQixYg5RPIX8xSa11rICsGANKN651S4TcOP6o6TRG9pjAUfRTUvgHzmialjmihwuqasPgnlTUk/lQIpnP/HYCdl6NuvKpOy/Gm+UKPqLyz+IjBECVuy/icIAE1dH0qY4MV84C+1LG1xCIuuj8tXWR2EFxuCVDEUdRrwhQEj1x8/BaFaaslW6NyDhLscRfmW44lo07oyQVk8sxs0ojAbCKbHxJip2wKf2gKeDZyUkmr/LpyXBuBWWnfZQUSWGz//C7lix71MJbHgCtXs2hzKer14omHAkh9DjK5EQ5hR33mQ1oZnT1HpTQ6ONn8ynJ0bq3dWpc/Awl8qTSQcILC99QVyriQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(346002)(396003)(136003)(39830400003)(376002)(366004)(83380400001)(5660300002)(55016003)(66946007)(2906002)(19627405001)(71200400001)(33656002)(9686003)(508600001)(38100700002)(122000001)(38070700005)(26005)(186003)(110136005)(86362001)(53546011)(7696005)(6506007)(316002)(52536014)(8936002)(8676002)(66476007)(66446008)(64756008)(66556008)(76116006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?51eHRMJ0kIs3cZkbwPzWvg7ETI+k+yCL0VFOGYW0OQM8QMkTzihG3yvfIxdw?=
 =?us-ascii?Q?spX/HZ1zsyJm3LUWErEwOEze6Y/p71lUsH9pusHz3l2pOQoNTkZt35O5vB1H?=
 =?us-ascii?Q?mgJJef1bHb6TmAhKQudmPlHPfQAQTX+9L2/+3uK2TcxdPKq7PzyffMbEBrXk?=
 =?us-ascii?Q?JlDeFTnGPUHWsSgBsSPMuPTjuSuPWDP1K0QTJsAigr8m/tGMtMOIIKllYEAV?=
 =?us-ascii?Q?JmLRCU8drmX5vVKv5WzBKRKQy+a66N4M8uVHhnSSfP2itzUDvT+4Aajk+Uux?=
 =?us-ascii?Q?0/GEARmagbnhXR6iD2RFvCbR7Mev3haLXidYXye7L9pvfGE44ZumlzGvlw84?=
 =?us-ascii?Q?RUWbjbbvhg8mRJIXG/cuoKCVumpoqAto0qCWEoLvXt1ROIZdo1enIAbogZaQ?=
 =?us-ascii?Q?fnW3Cs2jefz2q+WG8jcPhGKx6zGiUGEUG14LRNaXmOIQgYpBw6aQ+EJ8VwPh?=
 =?us-ascii?Q?NS/hyTHFTN4qVXMbRP+cM6eyksfBzA2uAdhXXwUTYmzkv180COow+5U5bx1W?=
 =?us-ascii?Q?UGc4FzgA/XwE38MX+VF3xT86EtVWFhrqB/jFN6vlC4kjcJfZpr5b8nzYlnDJ?=
 =?us-ascii?Q?8YitTtsZbD4jP/SPu1Z8YwRkhCu9coBDomC7UVWtcZQmIDWzE/LggHOtAU//?=
 =?us-ascii?Q?O7Duib0VIq6GP1tXdxhajJHLnaf0v9VcKpQwLRSWYb6YQaXIX6C9UgF3ao7m?=
 =?us-ascii?Q?ObIG1Fyw0UAhDDhv7cFLkjdFFWZth4GNLlDaA6zDEk3GeI5N57gfs/7dryI1?=
 =?us-ascii?Q?V7Wy8LALsrT/yxC2d020llkkmK9CdfINfPy6AQY/NoLYFE7UB8wvZlwClCp5?=
 =?us-ascii?Q?Lx7avSkmqKevuZ78UicZziUlXq66lQMmapkA1QkA59Ehvm5bLQq1SivESKXR?=
 =?us-ascii?Q?eqvabs8b3WzWiIQTiFhILMuchCktCpq6CQ17+YiFiHQB7dn6qy16rtwEArii?=
 =?us-ascii?Q?n6U+NjpBLFYREpsTxop+Lpyl/uNFv7SEiSh3WKLLEtx6TjLh3elUUIPz6lvv?=
 =?us-ascii?Q?FgmeDgYS2tWwNEQcOEZsat7H11dnveOdx3a2h+XJyQ71Sfb6kH1BhrcU5cDd?=
 =?us-ascii?Q?snpNn+y2D7t1pbSGWzSrwiP7PhXsMOCYvDrGzQLgqrnQObBtll24PbkvAT9X?=
 =?us-ascii?Q?zcpZopg5dWDW/rthSMCJ4yaOstfw1WwGtQfrcyN9BTEJtyLrwqk2/QTr1a4q?=
 =?us-ascii?Q?xL+CaQjEZcsbmMIAYVVxymgcciOxrLIwmJh1kJh+w+LIy8p+BuahmtZ/NqaX?=
 =?us-ascii?Q?TYb727hdXagN0L8XCKLvn+LY2zi6bnGHF1EFAbhEKG21334+SkJRt54uqWiK?=
 =?us-ascii?Q?DKu59629VMZgiYxUclA8On75dOoNN5mhL466rhE9SsP85F20kqWXO4871aA1?=
 =?us-ascii?Q?iyGGraslggQk/AIRfFFHDVPI98Nwjaj21V7ttAWgGzi3NIZqEbyZUF0Vu6eX?=
 =?us-ascii?Q?GHTTPYEk6Up61m9kn2lo35lPKGhXDgrui2rW0LkSAWggLKAOSBy/7p2LIh5b?=
 =?us-ascii?Q?kLDKCgj354/gKkylFy7pqvS5gn9dYZXeftVM9yd8Q3WA4Lz+c2AEcIQvHRpU?=
 =?us-ascii?Q?Zl0bDe51RMneJapqfZcI8WOjIWACOmNqLhFgAOEXG4bA6672h5PUC1qEuIt2?=
 =?us-ascii?Q?NdwvDgG5Xw+ahaVQiFiRRRJ+umqiiyp6B6gD1NqX1C5JmoizSZch9eLPBRPa?=
 =?us-ascii?Q?8jAPKg=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea2ee608-e5ab-4ae2-a1b2-08d9e7faa1e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2022 16:23:09.2588
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sb2uM0hQVKApwqbwXSFnLz5AvP3KdVIKNzTIpm8pORjoRo5OoYjUdUhyxU8oJQgPQGmOkUJI586FYelRJR5WAw2uHJS3kOlM9ziLsq59+64=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5224
X-MDID: 1643991791-I8N_93usnnjy
Message-ID-Hash: K442WSQOCVCT4PNYKRO2HOWEF5I7CJSB
X-Message-ID-Hash: K442WSQOCVCT4PNYKRO2HOWEF5I7CJSB
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QXFS2C7RPYA72A5MKECI3ZUTU5TUVNV2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3167670218156838898=="

--===============3167670218156838898==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33126BF9E653537F4BFE42CFB8299MN2PR12MB3312namp_"

--_000_MN2PR12MB33126BF9E653537F4BFE42CFB8299MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dustin,

Thank you for running that. So apparently, it isn't just an issue on my end=
.

Thanks,
Jim

________________________________
From: Dustin Widmann <dw2zq@virginia.edu>
Sent: Friday, February 4, 2022 11:16 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: Timed Commands Not Working


"Hopefully, someone can try the uhd "test_timed_commands" example in 4.1 to=
..."


Figure I ought to be about as good as the next somebody.

test_timed_commands output with UHD 4.1.0 and an X310

Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107800; UHD_4.1.0.HEAD-0-=
g6bd0be9c
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX


Testing support for timed commands on this hardware... pass

Perform fast readback of registers:
 Difference between paired reads: 1079.015300 us

Testing control timed command:
 Span      : 100000.000000 us
 Now       : 253256.340000 us
 Response 1: 254437.230000 us
 Response 2: 255676.840000 us
 Difference of response time 1: -98819.110000 us
 Difference of response time 2: -197579.500000 us
 Difference between actual and expected time delta: -98760.390000 us

About to start streaming using timed command:
 Received packet: 100 samples, 0 full secs, 0.365935 frac secs
 Stream time was: 0 full secs, 0.365935 frac secs
 Difference between stream time and first packet: 0.000000 us

Done!

-Dustin


On 2/3/22 08:02, Jim Palladino wrote:
Thanks, Rob. I always appreciate when you "chime in". Hopefully, someone ca=
n try the uhd "test_timed_commands" example in 4.1 to help confirm whether =
or not it's a problem with something on my end or with UHD. Marcus already =
confirmed its working for him with an N310 and UHD 3.15.

Thanks,
Jim

________________________________
From: Rob Kossler <rkossler@nd.edu><mailto:rkossler@nd.edu>
Sent: Wednesday, February 2, 2022 3:26 PM
To: Jim Palladino <jim@gardettoengineering.com><mailto:jim@gardettoengineer=
ing.com>
Cc: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.co=
m>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

Hi Jim,
This sounds like a pretty big issue. I haven't chimed in because I couldn't=
 say for sure if timed commands were working for me or not in UHD 4.1. I am=
 using N321s with shared LO, so the normal commands I use for setting frequ=
ency aren't critical (from a timed command perspective) except for how the =
DDC/DUC might be handling them. In any case, once you find out the issue, c=
ould you please share the solution here. If I get a chance, I will try this=
 on some of my devices.
Rob

On Wed, Feb 2, 2022 at 12:22 PM Jim Palladino <jim@gardettoengineering.com<=
mailto:jim@gardettoengineering.com>> wrote:
Just to add one more data point, I just ran test_timed_commands on a differ=
ent computer connected to an X310 -- still UHD 4.1. I have the same problem=
 with that device where it looks like timed commands are not working right.

Thanks,
Jim

________________________________
From: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoenginee=
ring.com>>
Sent: Wednesday, February 2, 2022 10:44 AM
To: Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gmail.com=
>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

Correct -- I am using the stock FPGA image for the E320 and the N320.

Thanks,
Jim

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gmail.c=
om>>
Sent: Wednesday, February 2, 2022 10:39 AM
To: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoengineeri=
ng.com>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <us=
rp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

On 2022-02-02 10:21, Jim Palladino wrote:
Thanks Marcus. Please let me know if R&D comes back with anything. I'm at a=
 bit of a loss . . .

Thanks,
Jim

________________________________

Just to clarify--this is with the stock FPGA image, correct?


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


--_000_MN2PR12MB33126BF9E653537F4BFE42CFB8299MN2PR12MB3312namp_
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
Dustin,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thank you for running that. So apparently, it isn't just an issue on my end=
.</div>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Dustin Widmann &lt;dw=
2zq@virginia.edu&gt;<br>
<b>Sent:</b> Friday, February 4, 2022 11:16 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<p>&quot;Hopefully, someone can try the uhd &quot;test_timed_commands&quot;=
 example in 4.1 to...&quot;</p>
<p><br>
</p>
<p>Figure I ought to be about as good as the next somebody. <br>
</p>
<p>test_timed_commands output with UHD 4.1.0 and an X310</p>
<p><br>
Creating the usrp device with: ...<br>
[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107800; UHD_4.1.0.HEAD-0-=
g6bd0be9c<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 8000 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
Using Device: Single USRP:<br>
&nbsp; Device: X-Series Device<br>
&nbsp; Mboard 0: X310<br>
&nbsp; RX Channel: 0<br>
&nbsp;&nbsp;&nbsp; RX DSP: 0<br>
&nbsp;&nbsp;&nbsp; RX Dboard: A<br>
&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<br>
&nbsp; RX Channel: 1<br>
&nbsp;&nbsp;&nbsp; RX DSP: 1<br>
&nbsp;&nbsp;&nbsp; RX Dboard: B<br>
&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<br>
&nbsp; TX Channel: 0<br>
&nbsp;&nbsp;&nbsp; TX DSP: 0<br>
&nbsp;&nbsp;&nbsp; TX Dboard: A<br>
&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br>
&nbsp; TX Channel: 1<br>
&nbsp;&nbsp;&nbsp; TX DSP: 1<br>
&nbsp;&nbsp;&nbsp; TX Dboard: B<br>
&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br>
<br>
<br>
Testing support for timed commands on this hardware... pass<br>
<br>
Perform fast readback of registers:<br>
&nbsp;Difference between paired reads: 1079.015300 us<br>
<br>
Testing control timed command:<br>
&nbsp;Span&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 100000.000000 us<br>
&nbsp;Now&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 253256.340000 us<br>
&nbsp;Response 1: 254437.230000 us<br>
&nbsp;Response 2: 255676.840000 us<br>
&nbsp;Difference of response time 1: -98819.110000 us<br>
&nbsp;Difference of response time 2: -197579.500000 us<br>
&nbsp;Difference between actual and expected time delta: -98760.390000 us<b=
r>
<br>
About to start streaming using timed command:<br>
&nbsp;Received packet: 100 samples, 0 full secs, 0.365935 frac secs<br>
&nbsp;Stream time was: 0 full secs, 0.365935 frac secs<br>
&nbsp;Difference between stream time and first packet: 0.000000 us<br>
<br>
Done!<br>
<br>
-Dustin<br>
<br>
</p>
<div class=3D"x_moz-cite-prefix">On 2/3/22 08:02, Jim Palladino wrote:<br>
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
Thanks, Rob. I always appreciate when you &quot;chime in&quot;. Hopefully, =
someone can try the uhd &quot;test_timed_commands&quot; example in 4.1 to h=
elp confirm whether or not it's a problem with something on my end or with =
UHD. Marcus already confirmed its working for him with
 an N310 and UHD 3.15.</div>
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
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Rob Kossler
<a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:rkossler@nd.edu">&lt;rk=
ossler@nd.edu&gt;</a><br>
<b>Sent:</b> Wednesday, February 2, 2022 3:26 PM<br>
<b>To:</b> Jim Palladino <a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailt=
o:jim@gardettoengineering.com">
&lt;jim@gardettoengineering.com&gt;</a><br>
<b>Cc:</b> Marcus D. Leech <a class=3D"x_moz-txt-link-rfc2396E" href=3D"mai=
lto:patchvonbraun@gmail.com">
&lt;patchvonbraun@gmail.com&gt;</a>; <a class=3D"x_moz-txt-link-abbreviated=
" href=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_moz-txt-link-rfc2396E" href=3D=
"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Jim,
<div>This sounds like a pretty big issue. I haven't chimed in because I cou=
ldn't say for sure if timed commands were working for me or not in UHD 4.1.=
 I am using N321s with shared LO, so the normal commands I use for setting =
frequency aren't critical (from
 a timed command perspective) except for how the DDC/DUC might be handling =
them. In any case, once you find out the issue, could you please share the =
solution here. If I get a chance, I will try this on some of my devices.</d=
iv>
<div>Rob</div>
</div>
<br>
<div class=3D"x_x_gmail_quote">
<div dir=3D"ltr" class=3D"x_x_gmail_attr">On Wed, Feb 2, 2022 at 12:22 PM J=
im Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com" class=3D"x_=
moz-txt-link-freetext">jim@gardettoengineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_x_gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex; border-left:1px solid rgb(204,204,204); padding-left:1ex=
">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Just to add one more data point, I just ran test_timed_commands on a differ=
ent computer connected to an X310 -- still UHD 4.1. I have the same problem=
 with that device where it looks like timed commands are not working right.=
</div>
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
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_x_gmail-m_7375824889804353296divRplyFwdMsg" dir=3D"ltr"><font =
face=3D"Calibri,
                  sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b=
>From:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com"=
 target=3D"_blank" class=3D"x_moz-txt-link-freetext">jim@gardettoengineerin=
g.com</a>&gt;<br>
<b>Sent:</b> Wednesday, February 2, 2022 10:44 AM<br>
<b>To:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank" class=3D"x_moz-txt-link-freetext">patchvonbraun@gmail.com<=
/a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" class=3D"x_=
moz-txt-link-freetext">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank" class=3D"x_moz-txt-link-freetext">usrp-users@lists.=
ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
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
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_x_gmail-m_7375824889804353296x_divRplyFwdMsg" dir=3D"ltr"><fon=
t face=3D"Calibri,
                    sans-serif" color=3D"#000000" style=3D"font-size:11pt">=
<b>From:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank" class=3D"x_moz-txt-link-freetext">patchvonbraun@gmail.co=
m</a>&gt;<br>
<b>Sent:</b> Wednesday, February 2, 2022 10:39 AM<br>
<b>To:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com"=
 target=3D"_blank" class=3D"x_moz-txt-link-freetext">jim@gardettoengineerin=
g.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" class=3D"x_=
moz-txt-link-freetext">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank" class=3D"x_moz-txt-link-freetext">usrp-users@lists.=
ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div>On 2022-02-02 10:21, Jim Palladino wrote:<br>
</div>
<blockquote type=3D"cite">
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
<hr style=3D"display:inline-block; width:98%">
<br>
</blockquote>
Just to clarify--this is with the stock FPGA image, correct?<br>
<br>
<br>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" class=3D"x_moz-txt-link-freetext">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" class=3D"x_moz-txt-link-freetext">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
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
</div>
</body>
</html>

--_000_MN2PR12MB33126BF9E653537F4BFE42CFB8299MN2PR12MB3312namp_--

--===============3167670218156838898==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3167670218156838898==--
