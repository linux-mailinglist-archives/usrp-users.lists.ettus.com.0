Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7E14259A2
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 19:38:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17A1E38433A
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 13:38:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=augustusaerospace.onmicrosoft.com header.i=@augustusaerospace.onmicrosoft.com header.b="m6fAHeqA";
	dkim-atps=neutral
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2119.outbound.protection.outlook.com [40.107.93.119])
	by mm2.emwd.com (Postfix) with ESMTPS id 08B7538450A
	for <usrp-users@lists.ettus.com>; Thu,  7 Oct 2021 13:37:38 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OXdI+DMRbklPK/gQanvbkf6TvX9YhBHEIeVI2D0IcBwii9GrB5VR7lmQsj70gvT4kaJ0ExCQJFVGUUK10a0xDeTDKBFEZ6xyQuGgZPxE0tKTGmX2J5HxG8kyJNhIZKz6UxjWZfo86pcTpyF3HXuTPcZBRW8DJq1LCvPHxCkF6YwZu3+0/PB79rHY2bKp82SMlxv3TT/RyB/XAIkBSMusH81rewZpPudXVZ/nkTFraNasFgCM+W/VUZhD0oUeUGTtlsk/47dT+088RD9jL31fk+IcPc3o2WBlSz9LsnlmL8VmTr/7t+QlhilA3W1Af5MoWQR7gOlB1L5qSUWeZ8nUIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a6aH263iDHFVRSs4RhRHf0FdONabTSoJKh/5lnfq8oo=;
 b=TFXilMr37vCK9vK+iAHjaU5zOIfGe91DyfBuCF1pKXDFPtdvfsY0JZb1pjtiofEKCJjhV7eYVAExcGDFIDjLfe9r/XdCuZjiN/5v49w32aintx6WvvjMxVf/DMhY04+DGcdKNeNg5T/jqvrFX69HnAdNhvKZwKL/yJeQ2lYYrxnQl/nYKBQWOJkrbIzpEva1Mf/Pfl4FU/XNgyjJrWksKrp5WJXuM3vRqIIJV9VuY9PpNA8mggYjEIWqPOJQJtz8a936eILrS+0qpMx2oqAl3el1DXa2v0odiC3N08wy/O6+mcNKoespHiwRg+V+COlz/AqDi/ZoYWR2/Z+U1xJ1NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=augustusaero.com; dmarc=pass action=none
 header.from=augustusaero.com; dkim=pass header.d=augustusaero.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=augustusaerospace.onmicrosoft.com;
 s=selector1-augustusaerospace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a6aH263iDHFVRSs4RhRHf0FdONabTSoJKh/5lnfq8oo=;
 b=m6fAHeqAAWzwrO+bsMGLQ+Nb2vbIxS2LqbIM0eQRzJeXYn/P68yrACCPak6+CfuD22w/8k1AJR1rf8Tf/xEjvycugbvm0dIb3A7GsGC9WLBzOM5L0qqSncPcAyDbhO9yRTnb4DwVv5IwovWgj+IKXbpDYQNspQ7HTXrH7J1FWTk=
Received: from BN7PR05MB4500.namprd05.prod.outlook.com (2603:10b6:406:fb::28)
 by BN6PR05MB2802.namprd05.prod.outlook.com (2603:10b6:404:32::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.11; Thu, 7 Oct
 2021 17:37:35 +0000
Received: from BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::6475:8813:2550:ba95]) by BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::6475:8813:2550:ba95%7]) with mapi id 15.20.4608.005; Thu, 7 Oct 2021
 17:37:35 +0000
From: Jonathan Tobin <Tobin@augustusaero.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD 3.15 on Windows
Thread-Index: Ade7obwvgPCXPoHWSxSR6X2LBKRWKg==
Date: Thu, 7 Oct 2021 17:37:34 +0000
Message-ID: 
 <BN7PR05MB4500C27C573EBDAB9A2FD998D5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=augustusaero.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 04830326-63e6-4025-5b63-08d989b9261a
x-ms-traffictypediagnostic: BN6PR05MB2802:
x-microsoft-antispam-prvs: 
 <BN6PR05MB28020DDBBA88936C909558ADD5B19@BN6PR05MB2802.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 S9C7qT/0ONoNLH07+aTejn6Sgq/gRtqBtbsE6WbVjwjcSflsqOiuCYUnaSheUtYUqSFGVTVTYLQXkeTRd7cyd1oFjiyqpm2WtWId4ob7PASnK4qunXtIFpLzlErEiXZHswUlAMiekZYWu4f1mEm8qDMIjpQ8FpNbBQPtCiOdAEsJ1nNP/+emBVbrXryfPs9vMWZ5oVcMeHpOFNe83PcEjvGP9rYhoP4xL7YyVGketqRz98p9LpWtObyYoJkMV4viaLcHRcMEfnQZLnkfCoJHcty7UMWBsx/nowr8qVqna+p79tjGVKaxah7XSBOObIAc1cd3NLZ/nK+BuO7wfbq74LY64muRptHzwj5zuQx1U+pmGm1aUnRUhZ6hb0+ap//nEGRDBZwCn0e0p2p0NpYVeh6D1ayOspujdsrc9921QmNtttjIoc2dq3CwP1Ar1lETdaGBjunPPhJSCOjvb+ZGI7NWOC3kB5apiaiO+vknnsLCMOTYBQjd7J9eM/h2l5atcdKSJVgtt6cIBQ1ImrJ1NI1JpRpIiiQ7Au9TsHBJ1bdlDa3Rl9Jen7nGYdjfeg3yk/l5gLjezvJCt3wu5vHI+7Hd+0wkhqMIoIQncrGV6QdDPy0nK2WiZ0Fl4OhNn0E8aHpp5YotFRgPAuTn7ezqOhAhxOT9BwOL8nKkxxpcfw/rvJ71GtUCUu6akutPCarEuCSq0MSk2iHa4XJWWa6ZEg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR05MB4500.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(42606007)(376002)(346002)(39830400003)(396003)(366004)(186003)(2906002)(6506007)(7116003)(7696005)(33656002)(4744005)(86362001)(38100700002)(122000001)(64756008)(8936002)(9686003)(66556008)(66476007)(66446008)(45080400002)(66946007)(508600001)(52536014)(5660300002)(316002)(26005)(55016002)(6916009)(71200400001)(38070700005)(76116006)(8676002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?C/LFk9iZZG5I7+6imaa8yH8vkeHbNBZEB3775m+FYeK2JSRCGL1mtvnNcxb7?=
 =?us-ascii?Q?ptbxxWVZbBf8c8FgaPt0w2enVnO9UrBXaQK3SyZAhGmBIx6GSyMbZ6bQ0kNf?=
 =?us-ascii?Q?DYYCNwp7iHEun6qMxhlVE0OCc7hPFf+0RKANc60mcMvFdXZ5XU+HsPm3dz8w?=
 =?us-ascii?Q?kY5889oG+ycpwNVO9vO1CKnme7y/mDmw4ddbvRi97a8ULouhznU9TnIAxIzC?=
 =?us-ascii?Q?MMld8skkPauiFpu4TUU6Xo7J2UvNSeTYJZvTTeOdKaROwGOAXzIqkQmmEC2/?=
 =?us-ascii?Q?bBpDeQ/ej9/BRugvhWH9mzmrJI5KpTHExAkeuz9QbfZcdchjzgXt0hUXTs4U?=
 =?us-ascii?Q?oNNImy9ZaQhn6AC8+G07vwklq+YS3kjbprfc2iw8f/9ytisI48bsS5RkfF3z?=
 =?us-ascii?Q?8Li38eAg02DUYtDBPWECVuvRVawJh80cTA0Pcq/LdB6ICuoWfsQwXmUdbQP0?=
 =?us-ascii?Q?MQELgf7IX+GbgdN705jlOIeb9Pilga24LlEdbXcoW/JAF7Jo5Tw6RzTQxAOl?=
 =?us-ascii?Q?zkk9l2WtlEx8ca1E9GFZBEUIII2zta5yVufEfldJ7eXqdZ2jKwLfbAcvw8Op?=
 =?us-ascii?Q?uET7gHrdGpFXXlKX24Ay7OVJqFXDoMjFo4I5H6EOA6cvV2tL9/M3VSphN/JJ?=
 =?us-ascii?Q?f09S/6LPMKWIHX0f2HjBtgX6I0ZisTi7PXHHANeACnxm/CcJMB+RyKCwc6e/?=
 =?us-ascii?Q?GIWYYPFwxXM17XkI1aOGKImKrXjfouEVu2k1QKfrZbNgGBCtPL6fXoXnS60Y?=
 =?us-ascii?Q?m2ElgfEjg0KOM91LZdQnP+GHvGAXZ7/UZ3zGSUwAAsvrKtdUS4wqTj5dOJRc?=
 =?us-ascii?Q?bQxGGuKbVLAUUT3xM4EywZrd7iBi4OegDFtgrfvuq9LJI7pEyGPe7c5G8cAJ?=
 =?us-ascii?Q?FI5KdVR5GRFImlW/GtIuXy69jE1q0lgbIVb0Y4r81J2wzcMKlgAgSTNr/y9+?=
 =?us-ascii?Q?u2HSpZyeQxPtOs6YSSdWer2JtUyz0PSo0LcxtkcnrYmrCYuyHCBE4TwqE9R5?=
 =?us-ascii?Q?uCDbE7JTYghnI77vJlzuGGejbP65iWPTFdwkWmLohKnyQHF++wx6S6MrDsvd?=
 =?us-ascii?Q?H0iudiB9OILKkTGE7IrrGS/wFOxrpd0oJBj2/KccjqXv6L9W4z5h5anBZpf3?=
 =?us-ascii?Q?HidEj4s4+y60jdPlNihgG4WdLDfWbIDonB43TVXjrJPOrAxXuxdjHBcLxv2e?=
 =?us-ascii?Q?8s13JEjDz5xL1dDDQDAN1Ol4/F9e8JSanXYOtAyUdJjrxa5+sfPjfJjRhLnF?=
 =?us-ascii?Q?59HmNXAF4vqnJGUNC/TWh2oOJrEQ1UuHP4LjIZDJX8+E6XM6UbtaOSZLibL7?=
 =?us-ascii?Q?asjF2VafrHdrJTfmL74JZev2?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: augustusaero.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR05MB4500.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04830326-63e6-4025-5b63-08d989b9261a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2021 17:37:34.7964
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04d66077-4301-4950-bf2c-c3d5b922ae52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xBsGuK9K83NoP78WpzDFW9CdrsQ9JOKYPQQS5dcQ2aE7jz1ZXgD/gUViJCfHOiS6iQcGHiE1pHqP05+78hadQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR05MB2802
Message-ID-Hash: FKAX2BI74E24Y6X7NUGCVCJWL3KCHVIQ
X-Message-ID-Hash: FKAX2BI74E24Y6X7NUGCVCJWL3KCHVIQ
X-MailFrom: Tobin@augustusaero.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 3.15 on Windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WN6LZ4YMMHAQ4WHAIWXUGEKN2QCTXEE3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6419322484497997204=="

--===============6419322484497997204==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR05MB4500C27C573EBDAB9A2FD998D5B19BN7PR05MB4500namp_"

--_000_BN7PR05MB4500C27C573EBDAB9A2FD998D5B19BN7PR05MB4500namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello - I am attempting to install UHD 3.15 on my Windows 10 PC. I am able =
to ping and find the device, but currently unable to probe. Not sure what t=
he issue is - any recommendations?

Command Prompt output:

C:\Program Files\UHD3\bin>uhd_find_devices
[INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200; UHD_3.=
15.0.HEAD-0-gaea0e2de
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 3218B5F
    claimed: False
    mgmt_addr: 192.168.10.2
    product: n310
    reachable: No
    type: n3xx

C:\Program Files\UHD3\bin>uhd_usrp_probe
[INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200; UHD_3.=
15.0.HEAD-0-gaea0e2de
[INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD sess=
ion. Specify find_all to find all devices.
Error: LookupError: KeyError: No devices found for ----->
Empty Device Address


Thanks,
Jonathan



--_000_BN7PR05MB4500C27C573EBDAB9A2FD998D5B19BN7PR05MB4500namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello &#8211; I am attempting to install UHD 3.15 on=
 my Windows 10 PC. I am able to ping and find the device, but currently una=
ble to probe. Not sure what the issue is &#8211; any recommendations?<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Command Prompt output:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">C:\Program Files\UHD3\bin&gt;uhd_find_devices<o:p></=
o:p></p>
<p class=3D"MsoNormal">[INFO] [UHD] Win32; Microsoft Visual C++ version 14.=
2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------------------------------<o=
:p></o:p></p>
<p class=3D"MsoNormal">-- UHD Device 0<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------------------------------<o=
:p></o:p></p>
<p class=3D"MsoNormal">Device Address:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; serial: 3218B5F<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; claimed: False<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; &nbsp;&nbsp;mgmt_addr: 192.168.10.2<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; product: n310<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; reachable: No<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; type: n3xx<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">C:\Program Files\UHD3\bin&gt;uhd_usrp_probe<o:p></o:=
p></p>
<p class=3D"MsoNormal">[INFO] [UHD] Win32; Microsoft Visual C++ version 14.=
2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPMD FIND] Found MPM devices, but none are r=
eachable for a UHD session. Specify find_all to find all devices.<o:p></o:p=
></p>
<p class=3D"MsoNormal">Error: LookupError: KeyError: No devices found for -=
----&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">Empty Device Address<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Jonathan<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN7PR05MB4500C27C573EBDAB9A2FD998D5B19BN7PR05MB4500namp_--

--===============6419322484497997204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6419322484497997204==--
