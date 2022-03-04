Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 592AF4CD06C
	for <lists+usrp-users@lfdr.de>; Fri,  4 Mar 2022 09:48:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 27E34384CA3
	for <lists+usrp-users@lfdr.de>; Fri,  4 Mar 2022 03:48:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=nokia.onmicrosoft.com header.i=@nokia.onmicrosoft.com header.b="LBKLEa3x";
	dkim-atps=neutral
Received: from EUR02-AM5-obe.outbound.protection.outlook.com (mail-eopbgr00118.outbound.protection.outlook.com [40.107.0.118])
	by mm2.emwd.com (Postfix) with ESMTPS id 2068E384AD0
	for <usrp-users@lists.ettus.com>; Fri,  4 Mar 2022 03:47:10 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C4EI1FKCG6YkvIniddOQttuMiktH+jrEu8nANAMXzJosKcIiPeunZZY2ZUheu0DapdZ7R5jLSWt/woMw4IfTdKz4AcZRxy8MsVmJIjeILgGrezRwl5nZarmsOgww7mZ9jXq1xjmOxfR7Az66oQm5NCPTVf6XAsVIT3SvQaw/z3mg0YeoP9srd8vTT1z2WnDzeQE9u90DJwdSeB9fb5HJ0FFrJHBlJecspmChyyKz8Pxg3sERNS2i3bBub0NUwyhd/wymrCwsAWOdlxDLkWbH0BaivznYRtLwYQK6Jj20FeQsKJg5UY8iDhr/AziAyYMpk4yvf/ULqH6eSqe9UwVkcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sVESZDhzEn8o1wQWzIrmsYhR5AOG1aRQ55w4czb92w4=;
 b=jw2mjhfSY6NWkIenm0Hx7Co1NTo6S/btloZU3NXnb0LZQ9+Ib88tWX7ACx8RQ1pUetKvgw32h4NHjzQl0/87TyzStqI/Ry1EE/lh8/V7JknTIrbKWiRXae6Ks+nh2ba1yIQXmnACaKL1oN0LtrrhUdsDZiNBFPoqk+AlTpMQNjajfJ0x729kIYDUoVt3CrJuunyZWo/wVxeXjmFsM104l13XOSaTtfmliZit6sLwnfQmZzMGHg2821fYnvyCmcmudcJBuYhh4wrHSSSOeECK91mW1IhZhac7KxR4oqvjR9nJoIfRsl928XL3Gz/xaTBT4CCtx8JkQFo7VHHOZXljzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nokia.com; dmarc=pass action=none header.from=nokia.com;
 dkim=pass header.d=nokia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com;
 s=selector1-nokia-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sVESZDhzEn8o1wQWzIrmsYhR5AOG1aRQ55w4czb92w4=;
 b=LBKLEa3xKXUpjWc3POdFirVHLUGifqASMgGCgNlpHiVuoj3JEar4CQxz/WBY+vY3GVjI1JCGQc1a1lawWC7HJTpWvG1qzAD3UJ32khNC3R5DpVAhnccC6o3iJjqExGboU3NXv8u3mI9un4uMBt28JqTzQFnSPUw/wb9UBKqExS8=
Received: from HE1PR0701MB2586.eurprd07.prod.outlook.com (2603:10a6:3:96::22)
 by VI1PR0701MB2270.eurprd07.prod.outlook.com (2603:10a6:800:26::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.9; Fri, 4 Mar
 2022 08:47:09 +0000
Received: from HE1PR0701MB2586.eurprd07.prod.outlook.com
 ([fe80::c980:5bc7:19b1:cae5]) by HE1PR0701MB2586.eurprd07.prod.outlook.com
 ([fe80::c980:5bc7:19b1:cae5%4]) with mapi id 15.20.5038.014; Fri, 4 Mar 2022
 08:47:09 +0000
From: "Kozlov, Yuriy (Nokia - RU/Saint Petersburg)" <yuriy.kozlov@nokia.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Network card compatibility X410
Thread-Index: AQHYL6FBLM1bxiYsg0WLwKbhFo0GMg==
Date: Fri, 4 Mar 2022 08:47:08 +0000
Message-ID: 
 <HE1PR0701MB25864CA8FBCF8311D7290C599C059@HE1PR0701MB2586.eurprd07.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: c6969b77-26ed-bc74-8cee-42c41d76cc76
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nokia.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 28f66d86-89ec-4a1c-cde2-08d9fdbb916b
x-ms-traffictypediagnostic: VI1PR0701MB2270:EE_
x-microsoft-antispam-prvs: 
 <VI1PR0701MB2270C2722F1C5AEA534E1B079C059@VI1PR0701MB2270.eurprd07.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 BALpb8tiEhVmWL7NtWscnr9vl1LUPM8t/QyCOrH6H8pwN92LdLEcGne59SR7zly1Z0DINLUn8nx7lu/KnGjEXJwuJEEyAM584QJhI9jkB1FNyIzAsR+5VX1CKDxSJxh84UyjEANED1eI+Z6+Q96bR/1qN6qrpwCKdBuLxzRjgGDlGKiJA6sgdqmw+3azR13htHbve78wdxVufvjXAMfRTaPlKrN21K++P7QpdSjh+QbfEEW7xwvmx93230z5RD3f8HM4Ib0tklScG6dbhg4QwY3AAbUbTtRbYJERU9RMWNOyLrWT6Ke62dAnwoP3pe4uo1oFrl8DqHpx9FoRHFLS88GPaNFVpgMiYibE+nsJYB/nk7pftw5z3mH/TsFWbHMB8+EVLrylkVfw/j+QIqOrLoY/YhNn7X+snlAf/8bVID8FjalBJh2c2ilMGrmlVjQaGkw8xzwoZfmDUUoTJWBqHUFwZMc6jmz607M4DKBn+/PYvMNHGpfShkD5qsJXOoI0lLTETbLV9LygIZEJAvERKeSU1xE3q0WkQ6ZaEsmDmNM/vWltCV0AzaFUq7ab3D7hHfaEr5l//+BbTlYdLJ78YpapFgtOnjj+Rscvtr9x5iJ28uhmFptbZW02RYHQrwLWOE/BiPNJ81XzsDSG5jQKxa3WwOLhDmI6PH5couk8MHSv/m5fFgeCmFdikVED6fg27zoY6w8NH6yUGsTaWqaHmQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR0701MB2586.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(82960400001)(71200400001)(19627405001)(66946007)(122000001)(55016003)(4744005)(508600001)(5660300002)(7696005)(9686003)(6506007)(316002)(2906002)(6916009)(186003)(26005)(52536014)(8936002)(38070700005)(38100700002)(66446008)(64756008)(8676002)(76116006)(33656002)(66556008)(66476007)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Lb42l9DLwnMpQoy/tOhuQ7ZBgmRPqX+NuIx2FP5JbWgDnkOwjmovY5RiBP?=
 =?iso-8859-1?Q?MY5bgh+SCjGmsGXK1DzPnXj6XnCi2YAjEfJIcaTNE3vnfkn+osi1pYb2lM?=
 =?iso-8859-1?Q?bAmztmlxPOL25X2XXaJwpNlhhv/2pgc6ZMlLYECPiaqV0EmmN1f8FNEdO3?=
 =?iso-8859-1?Q?/A2GiuMhn51FGSazfzxESI2R24gXuHLyD9CCIEshaxe7IfNFZKYx0ikj5H?=
 =?iso-8859-1?Q?XasmVB4Q6y2ttEoTsSqp69uOxOspNvzsIjN0sq555KCiwt3kKUwiQpubPd?=
 =?iso-8859-1?Q?lBLjHMJiancYWugPULjtvxwpc5489O51yesItxVv6qKBznOHwze3xwl1Yq?=
 =?iso-8859-1?Q?xwUeWOW403nTILmrkmiseCTQkrzwvo4QcfWt0/PecaTjCRE0YXyYMJi6e3?=
 =?iso-8859-1?Q?q4d9YBIiSqnCBHCysePjMOp+kGmvJZDn5Sdf6M+rGYwae/ILscP/e2wRqn?=
 =?iso-8859-1?Q?CtTJ3QVk/zgxRb5Hd5Oi+mbcZ54ifEouQx6xcA1aW7YdI93jhnPTGWE9/S?=
 =?iso-8859-1?Q?BzZLQ/i2/te87fZVto3MXiFHeNIL6cFx1Fu5UuiPuf71Pd9xXiLGfX0B1n?=
 =?iso-8859-1?Q?YWh4rPK99smd6+4RhRYWCHc6py15webezq8QeQNMD+5AOUwfc2n8NFQZHH?=
 =?iso-8859-1?Q?OcEf2IZ8eWN5lBVewx58IcxfFiNWB4sHhqGpDRqciEL4O2PCrInEcdTrEx?=
 =?iso-8859-1?Q?A91czOym4mr45Pwh3IBHIq/sAQPMPbMwWDG9W1fsk/avuz4cvFUheMfSbG?=
 =?iso-8859-1?Q?P0RTvDOezGZRBNSPPfq3blzMTO6L0zSj6Wh9utHNtPjV5LndrYihegywse?=
 =?iso-8859-1?Q?2B5Y6uiQEpppP8el/8ewdXf3TR3VqBrFI2kZqNcb6Fn772m9uc2Bphx9t2?=
 =?iso-8859-1?Q?DK9jD6naDP3WI919EuXn5Wbg+gDmW26DgUC2xi3+8ea4kmDWLQIKlu2CYD?=
 =?iso-8859-1?Q?UvqJOXT/b/zMTpIdn1pv5Itr/krQe9Ipx5ZkprM1iZdkcHab2mpBSpzLV+?=
 =?iso-8859-1?Q?fjCkZ710nCCQ0bMrVraZzaDgkE3SV8fGKKOiV69f1f9wpm8cAO9T18ETWl?=
 =?iso-8859-1?Q?YweDKxeDug7FbYWSAc2WYK0zUZYc2vaeD3b6NtIRK83KgHJFHWAkFjFZ0S?=
 =?iso-8859-1?Q?N7Z3mpAjXUz6I9Vrvf3peyYQC3UZte7lfH5e5vEw8N4lZda8UmC00pv3as?=
 =?iso-8859-1?Q?Sa9AJnfHylwFxR5UaGfqYMkUKNNe8ObG/k5vXgNObL/DboJH6D4z9vgwmb?=
 =?iso-8859-1?Q?xyemCC0kgvnjAsnu2Ok439r4TQng49ElvqJvHafGIUjSUyiakZR+ZXIFQ8?=
 =?iso-8859-1?Q?n817F3slaj6vuFlKTEqVjNPlnTi5LJlXOS6WLhaaelMjpzmGGPgB7v2fGN?=
 =?iso-8859-1?Q?ozpeI7ukLTFiFqnzn5TX5RnoZ0snwnIPp5knfHTevIhemtWDvCuYkqlOjh?=
 =?iso-8859-1?Q?LSAKpFQB1EcPkPXxPkPXJf8IVboq03vRGf3R6u4pFk6+Ij8QIPsQ7M8aPj?=
 =?iso-8859-1?Q?kqm2lxOsYNPf4V9QnpuZpsbVmKS8hNJR1rSLl4anGBeHadH/NqSd4vK3Ir?=
 =?iso-8859-1?Q?z1i868qvd7UGzHsmZI2PngfapE9hYqwTV68potb0SeCYOHq2SXKNi01mpx?=
 =?iso-8859-1?Q?EzOHJuZsRj3/+38K6/RU7Y4AcmL20nivks6SwgF2zYv5toX8TdrWArpA?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0701MB2586.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28f66d86-89ec-4a1c-cde2-08d9fdbb916b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2022 08:47:08.9171
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hzy0feS0dxnZVS5oahymAbeg3qOFe6rFXpXocsa8Pl4YtXdQqApGKZkVtbT1wS1uwvqazi+gZc5YiudtQrOzaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0701MB2270
Message-ID-Hash: UQUWHDY7KJTEU6F5RTF44AZFD7336ZYO
X-Message-ID-Hash: UQUWHDY7KJTEU6F5RTF44AZFD7336ZYO
X-MailFrom: yuriy.kozlov@nokia.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Network card compatibility X410
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KGQLLRZWH6CB73EPBJUHK4CMN33R74TJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4864771350136407255=="

--===============4864771350136407255==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HE1PR0701MB25864CA8FBCF8311D7290C599C059HE1PR0701MB2586_"

--_000_HE1PR0701MB25864CA8FBCF8311D7290C599C059HE1PR0701MB2586_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

Which additional communication equipment is needed for using X410 board and=
 cover 500M samples per second. I see in recommendation "Dual 100 Gigabit E=
thernet PCIe Interface Kit". Is this network card + one qsfp28 cable? "QSFP=
28 to 4xSFP28 Breakout Cable" - I am note sure, do I need this cable if buy=
 "Dual 100 Gigabit Ethernet PCIe Interface Kit"?

Thanks

--_000_HE1PR0701MB25864CA8FBCF8311D7290C599C059HE1PR0701MB2586_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
</div>
Hello,
<div><br>
</div>
<div>Which additional communication equipment is needed for using X410 boar=
d and cover 500M samples per second. I see in recommendation &quot;Dual 100=
 Gigabit Ethernet PCIe Interface Kit&quot;. Is this network card + one qsfp=
28 cable? &quot;QSFP28 to 4xSFP28 Breakout Cable&quot;
 - I am note sure, do I need this cable if buy &quot;Dual 100 Gigabit Ether=
net PCIe Interface Kit&quot;?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t"></span>Thanks</div>
</body>
</html>

--_000_HE1PR0701MB25864CA8FBCF8311D7290C599C059HE1PR0701MB2586_--

--===============4864771350136407255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4864771350136407255==--
