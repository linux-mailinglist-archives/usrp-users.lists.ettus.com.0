Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A45767C6B
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jul 2023 07:47:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 92D23384DB5
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jul 2023 01:47:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690609657; bh=f5h2Y91VX8d/A5HSP0YsG5Nzr9jAXOSYyrJKgqk7fOU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rrDyXijfj3+C8Q7Ed84/R6VYXgAji92+9p+UoZq/dH9oHdCVsLQFgup0+5s7Mil2o
	 Vw7EOSO+VPCy9PWnAKPNT7LhE0543u0W1mMLSwz1tXzACzncbXeDx6YsW9qzlsB4B2
	 KSsnCgmpOeiNRSX+B2B0tcWA0+OyFtPorIF6ZxHgSwoff5BgOmrUMWzTJZsYG8TV6T
	 hhMp2rzie5uirGif2wWkUa/aTBhiuxPG8p2A0SA3XabqVtwZ9pY1k8ImkfF8jjXphK
	 Azllxv5pvwcSzlL45ZB3w5EVe3POMgJOMn82szkzZayTJza7PU9j6WI0cR8YWWh/fC
	 r3EyHRwAkZ1lg==
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2086.outbound.protection.outlook.com [40.107.20.86])
	by mm2.emwd.com (Postfix) with ESMTPS id 9C6BB384D64
	for <usrp-users@lists.ettus.com>; Sat, 29 Jul 2023 01:47:22 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SzT29xX800pk4LUx2sSvU4NtfeEoQsb2gJyODt6KhOnGSNZ1Me7Sdrcq9yN74Ign1mgs7Al2EBi1poAXCT6Z+6tHMyS7TGpXkr1ugDGD+gZ7Fn0F1LT5PRBYWYwgGae0ISYtjBl2VDMVpaRY3k5vW4O78MCRS0h8USToc6T0S9pherqHt+0EjT9iM3OoHoxLYb+d4dxrHoPfVGqdiSJiz/aoQgqjM6ktd0KCGOzrLifU7t4R6c3EGgVROxkxq6x3QG8WT0QV+PD4mSSqLR2Ql/8Si/LIpAJU/zOdUkyfjxb9trSLFsCUQnBt5bPEizfHYWYz8T6rUMe3wQtj4A70Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ykSm5bu35oKTM9NFmJYe00QkhiD7kWTA9htwHrOTSQI=;
 b=RS38133diJMyeXC5PTzIEPZJq6NOlgQ7SfUF3q7OHhQS8Rt3LzsiNG9pVIR8SE8pUyMOXSGEpYf/WFVamgBmo65chm7+bu+eh53ha2e6smymuPfeLAOOwNVtHIH8uIQkB9+uldVXP971wLvoowbrBTujJ7/uZeduRazGJ6NHO6eDiCoDWc2OIILFWBme37VOLDkGL19syrs1qySiqEsGv3rb/m6LCJREMRSQNtpzPJ/fe/9KzR2R4VELF47gi8m5gluIn97AM35YUZlgBy/gPPoSq/FPKweKa0+iM16VBLn5I+lsQO224MVJXEq79ZpGCpmMG0Gd4EmvZYlNoVtDiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navigicom.com; dmarc=pass action=none
 header.from=navigicom.com; dkim=pass header.d=navigicom.com; arc=none
Received: from AM0PR06MB6179.eurprd06.prod.outlook.com (2603:10a6:208:176::13)
 by AM7PR06MB6424.eurprd06.prod.outlook.com (2603:10a6:20b:118::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.39; Sat, 29 Jul
 2023 05:47:21 +0000
Received: from AM0PR06MB6179.eurprd06.prod.outlook.com
 ([fe80::fb37:49ee:9503:2c1a]) by AM0PR06MB6179.eurprd06.prod.outlook.com
 ([fe80::fb37:49ee:9503:2c1a%3]) with mapi id 15.20.6631.034; Sat, 29 Jul 2023
 05:47:20 +0000
From: Ofer <ofer@navigicom.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E320 not detecting any devices after power failure
Thread-Index: AQHZwd8CkTSXQMXp2kCIU53Zyyl1uw==
Date: Sat, 29 Jul 2023 05:47:20 +0000
Message-ID: 
 <AM0PR06MB6179F4337F84319EA0A8D76CD407A@AM0PR06MB6179.eurprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navigicom.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB6179:EE_|AM7PR06MB6424:EE_
x-ms-office365-filtering-correlation-id: 9fd79bd1-01cd-475b-b797-08db8ff74687
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 pdIBoA0uTDb/ui49dqd7nYIp531weTuD8A0IpHOVjBCODwJbon7uL323JOspwXi/HkCFMnI4o7Okm7hfg3qg3fY694reuUH9LDMvRx36shiR3gbSQ+++Sk1xtqJFeZwbl3GodRlx6lBAl4/myOuuEuZd71kXgjb4Z1vEyvUte2fxahIg3Gd05spDhqNCq3/s/zKg6EIhfTtiVIpUQ+P5BqAiyv3bUAPTBnG2WqAS47hqBhL5jxnEH/zbL86kOb0w14/tmlIMo2dHZtpD/sOxhVqgyNk1hdldTKg4J1+8WbH3SCZAzvAE4TqiX2plmUnNS7hx5B8F43RyMk0VbSlN8lks1/5UbYDmfZ8Ufu6StRzjyNZ791J4Loas+/K84Quciziv/hNqLLU9GPjeSFnL3rzkAoMbmjRp9O/L4GHXbmzwKnqoPNmPrPGKk4sAOGiyEGMjEUGClZhfs+euRHXxCZxV3awxvkSzyfOLawWcQl3W+iEYRubY4dZ6RvfQWtMj0Ra4+6Sn0v4444sXFFgmDy2HFXv2KqeVzuDYO+3Ishfpq2zuI2JqFEckN/dEWZ2BPKaYY6SSHYMPL1HnOHonk1fcNAu0rwZjJJvjuCwZTRJP2Qn/ac2XMWtPXQWe17tt
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR06MB6179.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(136003)(396003)(39830400003)(376002)(346002)(366004)(451199021)(66476007)(86362001)(41300700001)(19627405001)(8676002)(8936002)(316002)(5660300002)(6916009)(66446008)(64756008)(122000001)(38070700005)(33656002)(66946007)(52536014)(66556008)(91956017)(76116006)(478600001)(2906002)(38100700002)(71200400001)(9686003)(7696005)(6506007)(26005)(83380400001)(186003)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?zaVhDSr+hjOQ6SynKf01EJZBtp5fEIcKeifdYpgLuwZpviVOMFyzGkXy2N?=
 =?iso-8859-1?Q?t5bCU2e6aZhe1vUEEyF2XrKPInV28V2Y5eFpLm3HASq+xHWib416gMGMau?=
 =?iso-8859-1?Q?j+cBQwK2FJy4ICSkgY+1bc3jMfKOix5CknsiyposOBSLwWvu979NgHKdef?=
 =?iso-8859-1?Q?g3Z4yUDfhuAm0PiOEdCigtRbdSLatEIaxpHgI531GywUFJZESibYaF/lCi?=
 =?iso-8859-1?Q?fP64uuaQ1DxyrBKeIkIZwYoiW+8vMQPmDZiMn/dXqgWdG4y751J59nmSU3?=
 =?iso-8859-1?Q?3X1d9JP6aPsSnVEZLOsueYlOdtDKyV9ZGxFy7iBIew5/J6N2FLKYnM/cDh?=
 =?iso-8859-1?Q?A+2lGqhXcTqZOSd9yo/MvyYuhBQeI3sObKLaWEmNhFifw7e3EUb28pVI/y?=
 =?iso-8859-1?Q?eg3c70eExHh7IcTZ6LgLI4X6/fgWBu92rjLCffinSgn9XvtX6pFKUwsl+q?=
 =?iso-8859-1?Q?IBBs6BJrgLlvmj7ROInzhJ6bEFXpTmCHnJld4d4UaqZB5XTVuc9Ct5k14x?=
 =?iso-8859-1?Q?bguZAUeTE2RAQBr7CXlJeXAeMoW2KG9Wz/0WA8SL9HZIsv3BOXXd1QUbJV?=
 =?iso-8859-1?Q?Wxh0FYhiJomdZhrmhE2LbJarnFGhtx4rAaABvygxW3mcXqVeCyVO51aLgp?=
 =?iso-8859-1?Q?s+9LKJ9+BV88Q0cu2BmUaBXTu5NlHqQSXD5rSvflDV2rA3cZRdvf+gaUTV?=
 =?iso-8859-1?Q?rx+tHzd4VE/aTmi56WzF+m1aszeSHvS8WTxyFCoMG12rwxovbX6slGKsa2?=
 =?iso-8859-1?Q?Oos9HaSJ3QUwpehmnqBzTAIK8zg+1yWcx86tk+HXplsIPJ5H1HIkZEYzHV?=
 =?iso-8859-1?Q?OlxbMxQFt/SyFbJRFLiYLAuUnqtni3N9iV25hcOTIkvjnFjPGZh/bR+LtF?=
 =?iso-8859-1?Q?s6MMmGoab/QWlcQp/U+Dt3eYyJi+J4Q4S4RMK/xSewzf2gu8e+SzpPXmmY?=
 =?iso-8859-1?Q?hCoCNLNE+m2lZ37DMvNjLN8BtOAg5zlsZDI38zR8lcYn6WazgViYdQ8rLg?=
 =?iso-8859-1?Q?juRFRe5iu6rqJa8ZWaI0P936IcO4Qo7ePbHHrIRQtfdo8un8n5dACxoVFR?=
 =?iso-8859-1?Q?fzsxw221RCFBjFq3O32E/OejujzHpTUxn1d5RGYeqpm1hkktzmLHXMf0ID?=
 =?iso-8859-1?Q?7Osf5F98KAJaW+7OS6xS4Z7g/DZC6BMMsDkMNvYHFbzD3RIjEicgQGgVIc?=
 =?iso-8859-1?Q?vdMXY3q6ALkS9DnSK+/uPWEjTdQb0658BeYvlXU5zME8k0I0UdSc/oxgzf?=
 =?iso-8859-1?Q?fGl4qKRJgza/LJm+aV3aVH9/UuqTQr+VvDgYAM4CgnPrOTlQ7Oc8ZWSrTN?=
 =?iso-8859-1?Q?Ql48NZ8KPFUqJdsWxfaosLgs3gJDnNvWgBogadC/B5h8J+tkJABiH14gxN?=
 =?iso-8859-1?Q?aMaCxS2A5sAh7pGdol9XYVUWfiEKbimKlUa3JdDiJcult1DjhIVsfBwY6N?=
 =?iso-8859-1?Q?TnxT1y3OflZcnZB92nKyi2kmiag8KRMPSkf6DWtjHEaxOm3V09sWzNwNHv?=
 =?iso-8859-1?Q?5Dzo5Jh9E9o7Ww639cxGgiOwpEoNgPuucJGJ1yjZeJPkfRvidQzFjQHUfk?=
 =?iso-8859-1?Q?ekSCA50=3D?=
MIME-Version: 1.0
X-OriginatorOrg: navigicom.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB6179.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fd79bd1-01cd-475b-b797-08db8ff74687
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2023 05:47:20.5607
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7067a727-139a-4a87-8ff3-2dc6b20aada4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EgH+C84puYKy5RpeUlRNqSTEVW4dA73KEKG4fcGCASFwGHesCIp1BOy4L18qs0QAsbIjoWoAURmgnQ2o87bGYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR06MB6424
Message-ID-Hash: TPXHGFYBQR6NHCCVTA5FNP7N2RUQ7WYP
X-Message-ID-Hash: TPXHGFYBQR6NHCCVTA5FNP7N2RUQ7WYP
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E320 not detecting any devices after power failure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QKV4KPPQLFANMWEOKZUX6ALLBTQ3XDHQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0420219494089823453=="

--===============0420219494089823453==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM0PR06MB6179F4337F84319EA0A8D76CD407AAM0PR06MB6179eurp_"

--_000_AM0PR06MB6179F4337F84319EA0A8D76CD407AAM0PR06MB6179eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello all,
I operate a USRP E320 using an externa battery. Usually I have time to shut=
 it down in an orderly fashion before the battery is depleted.
On one occasion it happened that the battery was depleted before I had a ch=
ance to shut it down properly.
Since then when I run uhd_usrp_probe I get a message that no devices could =
be detected.
The E320 boots up normally and I can communicate with it using both serial =
console and LAN.
I initially suspected an SD card image corruption and I tried to rewrite th=
e image using mender.
I tried the same version I am using (UHD 4.1.0.5) and I tried a newer versi=
on UHD 4.4.0.0 and and older version UHD 3.15.LTS.
Nothing seems to help. The E320 still reports "No devices found". I even tr=
ied uhd_usrp_probe with an argument of IP address. Nothing helps.
Here is a sample dump:
root@ni-e320:~# uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.4.0.0-0-g5fa=
c246b
[INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD sess=
ion. Specify find_all to find all devices.
Error: LookupError: KeyError: No devices found for ----->
Empty Device Address

Can someone help me fix this problem? Point me in the right direction?
Is it fixable by myself or do I have to return the unit to be serviced?

Thanks,
Ofer Saferman

--_000_AM0PR06MB6179F4337F84319EA0A8D76CD407AAM0PR06MB6179eurp_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hello all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I operate a USRP E320 using an externa battery. Usually I have time to shut=
 it down in an orderly fashion before the battery is depleted.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
On one occasion it happened that the battery was depleted before I had a ch=
ance to shut it down properly.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Since then when I run uhd_usrp_probe I get a message that no devices could =
be detected.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
The E320 boots up normally and I can communicate with it using both serial =
console and LAN.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I initially suspected an SD card image corruption and I tried to rewrite th=
e image using mender.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I tried the same version I am using (UHD 4.1.0.5) and I tried a newer&nbsp;=
version UHD 4.4.0.0 and and older&nbsp;version UHD 3.15.LTS.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Nothing seems to help. The E320 still reports &quot;No devices found&quot;.=
 I even tried uhd_usrp_probe with an argument of IP address. Nothing helps.=
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Here is a sample dump:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
root@ni-e320:~# uhd_usrp_probe
<div class=3D"ContentPasted0">[INFO] [UHD] linux; GNU C++ version 9.2.0; Bo=
ost_107100; UHD_4.4.0.0-0-g5fac246b</div>
<div class=3D"ContentPasted0">[INFO] [MPMD FIND] Found MPM devices, but non=
e are reachable for a UHD session. Specify find_all to find all devices.</d=
iv>
<div class=3D"ContentPasted0">Error: LookupError: KeyError: No devices foun=
d for -----&gt;</div>
Empty Device Address</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
Can someone help me fix this problem? Point me in the right direction?</div=
>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
Is it fixable by myself or do I have to return the unit to be serviced?</di=
v>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
Ofer Saferman<br>
</div>
</body>
</html>

--_000_AM0PR06MB6179F4337F84319EA0A8D76CD407AAM0PR06MB6179eurp_--

--===============0420219494089823453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0420219494089823453==--
