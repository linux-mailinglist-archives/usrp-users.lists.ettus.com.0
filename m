Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE3991AF3C
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2024 20:45:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2E3C8385E34
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2024 14:45:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719513907; bh=nyxDY4tpMEikUh5RZzCDNkSd5xY3LsMQwqGtNcEOEQk=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=QP60lQAMv/wPqyMkeAjP2LZrUMyIWZAmqyDZDMKpeIlC15Gb3/7MW5l7hxLAaDd/d
	 T+v157P3t1W6JgGGYKZMxeLEEniIXxVIO2pzAxHviN5AeFxoZpOBu+//IsBR5pKO55
	 RLDAXIDH+7pNEYx9VUgLCwRYF+onVovazR4rnBeM6Ql/ovjlDJvwwALrKWWLt4PbUe
	 Lz3s+II5ToaVufiCheHuwbifEoCaInXfVR69j3gcU3Vrwvy+N+biH+XFCFfffMN5RO
	 pAqB14z/NpM4G0QdeUt3CiiP9puG4vT53j3S3rc7+jbc2duTwtjIPacKZFmp4Uwmly
	 1ONGpNtFOjyIQ==
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2133.outbound.protection.outlook.com [40.107.100.133])
	by mm2.emwd.com (Postfix) with ESMTPS id 2C1D8385786
	for <usrp-users@lists.ettus.com>; Thu, 27 Jun 2024 14:44:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=mit.edu header.i=@mit.edu header.b="ZtFSMIaw";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z5x1qI5klcwyvspAxVmKkO+RdHtbsRjsy00FtA7AZqlW3lqhhuRywTpDJwIWYw2Krt8yhBq7/BZuRE3HO/imLdCp5FjArEOXKnvIuf9lNywFiRzYEFB8mD3vD5VX9viP4v+T0uB3zMpSzbryBy18JT4fKl4QKKUDAW2wptktth2gQBuVlL+R3fJbTFQJKLYCGHl20P6Be19svsWUCwls4JRmwzhtXn0mYPIJpXgtVQGtKYXFWuX6f7aLzLr/2w5ksCngxsl29oJbfkwb1ChV3p9vExCoUenvyXqcBnM0BVAVM3Myy6XfD692FeypLZM5awKD9+1qkkl9Uj0mqIwlyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t61AYn5QdNx8RhhwoaH3mKVEVgUD8BJ6qTSlqiOc/l4=;
 b=FF+BGGes3ffW7w0b/LkKeAeUW8JJ8muD+SxRGIoAH3wZja+Cx+uXIqSs+bciaXAJHzjkJqN64R2vrI0FG2gkzW+Qx4NsVxVdESJGyc0pVu14GM6Qzw3HkIB4EpbbKhpg32TEHXSj7NCF2CYOmls4IEODr5fy0/Y5xvmBCBdEIZvwzTl6SQSev385s2XMgu5kyIC1c4XbmqFiNY9fWQFqSt8JdBkQS0rzCL6J7DJP6b6FQjSvtXj/pijsBEBEvojKcwZ81LYBKDDPB2BwYVzG4EDSK8Jh77WQtBi+tkh1pValSd6gdE0lY9KYpJZLOyByQ4yvSWJ3Bn2Q6he9CYdH2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mit.edu; dmarc=pass action=none header.from=mit.edu; dkim=pass
 header.d=mit.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t61AYn5QdNx8RhhwoaH3mKVEVgUD8BJ6qTSlqiOc/l4=;
 b=ZtFSMIawKU9ylfHM2E4en0oSXspXF/EwwIIhAkMqHoRzQ6hGAch46bSwwl7gPerfGv3B0646ZGKZNqHHpkGDNlCf0UG64XuttMjivXJF4c77tQNB6A2aBXEwKxt+bBS5ZvNuTacG6h8mLRTo6sEkeQGO/JxcaioAQ+bMqxVPxXg=
Received: from DS0PR01MB7963.prod.exchangelabs.com (2603:10b6:8:14d::12) by
 CH7PR01MB8883.prod.exchangelabs.com (2603:10b6:610:24a::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7719.26; Thu, 27 Jun 2024 18:44:22 +0000
Received: from DS0PR01MB7963.prod.exchangelabs.com
 ([fe80::b45c:3f9d:c118:fa14]) by DS0PR01MB7963.prod.exchangelabs.com
 ([fe80::b45c:3f9d:c118:fa14%4]) with mapi id 15.20.7698.025; Thu, 27 Jun 2024
 18:44:22 +0000
From: Mark Rosenbaum <m_rosen@mit.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Bricked B210 due to wiped EEPROM
Thread-Index: AQHayMDDsGWnrckqmk+JIb/EeEpSdg==
Date: Thu, 27 Jun 2024 18:44:22 +0000
Message-ID: 
 <DS0PR01MB79635F144100CD6C4EDE94E087D72@DS0PR01MB7963.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mit.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR01MB7963:EE_|CH7PR01MB8883:EE_
x-ms-office365-filtering-correlation-id: 55ca0baa-2718-4f33-0056-08dc96d92963
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?Y4R1fB7z1utF4rXu7D45gTzpD0zuIcASR8+ArxXzF6ngPwEosetna7Cx04?=
 =?iso-8859-1?Q?IdCDRyMOk/7TzPf2GC74Xwew8a+UWZRUzWK3UrEk0IYS4yw+sATwyNEfxN?=
 =?iso-8859-1?Q?On2Z2LzNi5Q/VTMsDMCuTb1Z2Ch8vf4bMIOrup34UykjdmohEjI+O1dEkX?=
 =?iso-8859-1?Q?0+40R4CTypW69nrxwnWe8TeBTeedZuax9P8Vbim0tFDDLRhIR0LIbwjJGR?=
 =?iso-8859-1?Q?Mks7WlIMWmr/Rtq/bZhgIf7UHVCDuS1cjXzgMNUpD6DqqlfuTRVrPYGNsb?=
 =?iso-8859-1?Q?1c/JOkA+EAQVBlEqBmhMo6DVPiaIJv4SyeC3z3gEcQKFif6gb8ES3O9+Rb?=
 =?iso-8859-1?Q?PADIUYaXwsSh3MRWn5++UmhlR5WmadYeo1Zgg4qpWCG7c4v51enfQEmWIO?=
 =?iso-8859-1?Q?mpW1d/ea/N+P5js7tyGp+IMbgJ4ZH83MWcPf9HQHhNpsnZbf3bW/+Q6VNT?=
 =?iso-8859-1?Q?32Qy8U/zrpRUvO8obmFSBkXbtlpxCwryWEwsa6ezq5aolRS+K0/Dcx9Tgh?=
 =?iso-8859-1?Q?4TNjeheGbo9kJlmk2NEtpNwow/p1SzcVS0suasi2e12AUx/jGNQFaWWpbQ?=
 =?iso-8859-1?Q?2L20mISlbyLSVvedgS2woRm5BUqF5TTQ2/35db1zCpx/qHVv0YZ38chGra?=
 =?iso-8859-1?Q?GdFtYTASC5olUNgKWf4weTxhkB1O4tte+AN4TyzkLAA/tazwBPZEeOeU2r?=
 =?iso-8859-1?Q?/KWx9Uu/xKnRlyAV8IODwLRBr8dOpSFG8KvcJ1QiSmXEja/CzQ1tRDZExf?=
 =?iso-8859-1?Q?U8Y6DPFxNMRrkDrm8+EKSQ8Uldvd4ShfC8sTS53UO8co+A16L26MxPdbxC?=
 =?iso-8859-1?Q?9jRc/hQrUrgFJxU7PocM5kO9YfwXuHYZijcqpQcwRdBUkNwirdOvS2MGxE?=
 =?iso-8859-1?Q?23YtOxEjfkwFYW4td+R57Gda+n185VSTzpbbLG0mV9d6WSwT4z3it09gUB?=
 =?iso-8859-1?Q?yIZi2ayA2BcH830PH37tAmVyA4Mf6Q5SSS+D/l2p5CEVKTHuoFNZqouvBy?=
 =?iso-8859-1?Q?QS/jZtysBajqyMqXq2w5qRHxMxv6EbWHn84GCZ1rlNc3qpTsCLik0apouV?=
 =?iso-8859-1?Q?ViKve/DA1tw4MMGfXtXr+7djypjrWtVFw0daX9ENMzWw5KD0n0pGlmTt9A?=
 =?iso-8859-1?Q?ZDcENm1Nw+YHeGWwnCdPGS1OhvCmRQ411YSSPvivZqdBjjX+oI1CTeCwQ9?=
 =?iso-8859-1?Q?CnIPX4ZMKhSW8/KDGxaQggXgSM/T3azdyZdWwAv/tIU3TCEeWZIfvCXF06?=
 =?iso-8859-1?Q?araZOmHsUMLJevNxpzXelkjvocwXLbP6l/ljFnGhVFv1As+xGHJnePEJK4?=
 =?iso-8859-1?Q?nIvwRIcEP1ayZesfNCoV0UrCKNkzmu+OV1H3T/HA1lUv8EaZONhoIiUVxo?=
 =?iso-8859-1?Q?FWn0lVjnHT9IbBw4tZRRlpozy6CKnm+tVaYsfxmOB5XKLIwY9+1L+IujXP?=
 =?iso-8859-1?Q?+FsWaYl00g3IamCGnY4T9D/BqxgX9t/0ja0dTw=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR01MB7963.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?lJLboeiMwILrhX8/B7sEP3o80gn8K8tnWp6IrueCpXIBZaK8w9VCVqocHj?=
 =?iso-8859-1?Q?epZcLvGBsqBywHb7pa4YbPve1FQ/1I7GFj79EJLwM+/0quqzTDIR4OQQ/k?=
 =?iso-8859-1?Q?b4X8cVVCEy3sWNGHknkIID/1EJMKkKCB6ZwSVfNAy8nehONLfbVrkYWZEK?=
 =?iso-8859-1?Q?ZAWYsaiBZI8ZkGTCT6hOlAs8fnP3Ng4EYSn/PiTU/wuuKhSSeipqxEyUP3?=
 =?iso-8859-1?Q?BosPU+lLsGLQFskopytbZzr5OV+ha0m32mpDpzc3B7AMzn/nqApsIdjeUQ?=
 =?iso-8859-1?Q?Cwu+hBhTge/Jg8z6NZct45oW3GB3CYO0UBmMBx30onxplRmh1wWxcOEaKR?=
 =?iso-8859-1?Q?zuFSYp2cec6h3SjdTNd8lIMm1B9OfNrNyaIXQS2pW+QhOZdAfggLse0plq?=
 =?iso-8859-1?Q?PkUICZ0WUv8zERrCur2uV//toAouiR0gorf5TpZsf2YcbjvrG+QCvHKxWq?=
 =?iso-8859-1?Q?ArjdWUawM2eRxHZfAyJySiiaYDXlCH+EsQlQFKt23Gcxwj5WgtJqlxmRi3?=
 =?iso-8859-1?Q?eKyMB0/BfYdZKvMw7Fd6x8Vs4jEs9JPeAmYXik6ULFnPjX0jDwQeVbrb7q?=
 =?iso-8859-1?Q?OkAn9k8iutgrXDP7xernnmi36XibFExDhEigye2/f8dYghqygKWURpFgUO?=
 =?iso-8859-1?Q?1hHEBWquQ31v5moIUPLoQyF3dJoxlaB90MtjztowuVZFGasG0hMJISZPdS?=
 =?iso-8859-1?Q?D7PwCcaOwlK5rESmzFZwcMvMfsvfgQUlefOw6SyMCjSDFVuVrEDk2wCojP?=
 =?iso-8859-1?Q?fp42qbKbValYCXmxTxEtcuaED3jv3iTwTrTHyMGsBNa0G3cewvEwX4Ry+Z?=
 =?iso-8859-1?Q?JXdTGjaWb9SmAvMx0XxrbOc8vWVAjIjCjH6NOhyRI9c6vTYFAY60J3Nu4U?=
 =?iso-8859-1?Q?0Q1TDLstm2bVxd/U8OHiXZxlJTQd+pmoPLZoMKxMmFTmyHpMzbS8/g4Z2k?=
 =?iso-8859-1?Q?+1kbP4XP5ANhHkXgIqN7mYfHfLz7y2x1iTAd/uk5la+TJnR4t9NeUXOk1l?=
 =?iso-8859-1?Q?F+/21No5H1Te/FGM9nJmiXG1Fn8loeb4SnFDi2sqt5ehzBwnhjRiuFitTC?=
 =?iso-8859-1?Q?eNVEjTVt44X5JnpeMO7kAhVljwEw0djMXLmOMiIjZ+a5B9PaTyZAYQ0D9c?=
 =?iso-8859-1?Q?pcSn8TEcfmePQPdzERBbJ1dhS5/VnJ6EDTbk0FRXMJ9d3tPA1kIXOyCSTY?=
 =?iso-8859-1?Q?IRawVu6M8E9yDFeTNiXPXkA92/0kuLu/X9iM3rASTvfWbREME7mVFVhENV?=
 =?iso-8859-1?Q?qQo80KugmdSumAOfCvgLDXjvPnK4N8wHK1Dnce7qVDO8Ayi3lpVIfsm/wY?=
 =?iso-8859-1?Q?RtrVDJKpF174FC/Y8IfdB4p54tZ+7/29UnYweVpjPUhwxEKLnDW7FuL/SX?=
 =?iso-8859-1?Q?/8TLrWj8RTpPINmr9rs0zo7Edx3feko7+kyhNh5m2brzrpz2GHq4vIUVHw?=
 =?iso-8859-1?Q?qGzsdyNBHhqyN5cD3otlDVLGa0a5osaZXx6e3qa/N4ujeiImhdfyyXgqu1?=
 =?iso-8859-1?Q?X21MMXebppDL0Wzk1+oh5ra9Pr86LLgKHaaB8tv+pFxhTfP6RIbMOt0mVf?=
 =?iso-8859-1?Q?8WjnggtQ+UMo/I+qTrgv9XdksnRuDUOS6LrbS+H94gE3Sklh34nWMZIK4l?=
 =?iso-8859-1?Q?TNqHjCpMixJXU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: mit.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR01MB7963.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55ca0baa-2718-4f33-0056-08dc96d92963
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2024 18:44:22.5607
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 64afd9ba-0ecf-4acf-bc36-935f6235ba8b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JbVqRVCbbdNEV2iYlEx+7MQ6Bjb1C79kjgJN5L0+TBs/mwAjGj0eekp+FCoeuiTm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH7PR01MB8883
Message-ID-Hash: RZNSPFFELP5T6UOWVHNPWV7527P5SO3E
X-Message-ID-Hash: RZNSPFFELP5T6UOWVHNPWV7527P5SO3E
X-MailFrom: m_rosen@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Bricked B210 due to wiped EEPROM
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BBA5KAWXG4HMVWHAH6SJFI6AUHU77CLJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1125523560636606269=="

--===============1125523560636606269==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DS0PR01MB79635F144100CD6C4EDE94E087D72DS0PR01MB7963prod_"

--_000_DS0PR01MB79635F144100CD6C4EDE94E087D72DS0PR01MB7963prod_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,
I was recently working on fixing an issue with my B210 and accidentally re-=
flashed the bootloader. In the process it seems to have fully wiped the EEP=
ROM and now when attempting to perform any action on the device I get the f=
ollowing error:
"Error: RuntimeError: B200 unknown product code: 0xe3e0".
Is there any way to go back and re-flash the original values?  I've tried t=
o use the usrp_burn_mb_eeprom command with the recover_mb_eeprom but it sti=
ll fails with the same error.
Thanks,
Mark

--_000_DS0PR01MB79635F144100CD6C4EDE94E087D72DS0PR01MB7963prod_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi All,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I was recently working on fixing an issue with my B210 and accidentally re-=
flashed the bootloader. In the process it seems to have fully wiped the EEP=
ROM and now when attempting to perform any action on the device I get the f=
ollowing error:</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&quot;Error: RuntimeError: B200 unknown product code: 0xe3e0&quot;.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Is there any way to go back and re-flash the original values?&nbsp; I've tr=
ied to use the usrp_burn_mb_eeprom command with the recover_mb_eeprom but i=
t still fails with the same error.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thanks,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Mark</div>
</body>
</html>

--_000_DS0PR01MB79635F144100CD6C4EDE94E087D72DS0PR01MB7963prod_--

--===============1125523560636606269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1125523560636606269==--
