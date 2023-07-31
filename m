Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96819768ACB
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jul 2023 06:31:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5EA7D3843BC
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jul 2023 00:31:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690777877; bh=9o/mjjAe5qABuHqD3wskRKQyUHCX8MetEa8ko7zuoAw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uvWlZaXDh0M0/EDus6606Y0Gz+VJVsfo729+LW8W50WfkResE50jRUUkYsx73z5XS
	 sk2vkk9QR38QgEuAbJCBrzrz1rGESlKf0fh94BHAmMPqC/hOTzhpcXTeA+maK72klY
	 J3eYv22wNCNpYM04WeCnaCeSpb6X69tThfWPqm2huvLBBEXkVfuZxnB//m19aZfGbl
	 dKD8jNPQpglTVbI1b1t+S9coRZPXIrSYinM/ZcbIMcJoZNlvcSZRkRkWpIKngignkA
	 5mzgurHKullWtrdfqRgeRkjw2LU0j/1RaQX4iN1iTYTD5/Ik/M+vn8c/hZqZieEHJ1
	 /4psPgUtGK1kg==
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02on2041.outbound.protection.outlook.com [40.107.241.41])
	by mm2.emwd.com (Postfix) with ESMTPS id D2DAA383EAB
	for <usrp-users@lists.ettus.com>; Mon, 31 Jul 2023 00:30:41 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FaZ9jByqqMLae4jVH0dGz+dBsgoNaomxzsKSDwPgjj/+bQ19qWiQUCXRuLToiLZCRBS8iw9iZ5n5M1DnJeRNfR8+dsIYx1OMCCcGtySjBPDujZHVC6O11rgWjjdWCvrpSWuEb5j1RNF5i7ISojL/Rhqo6VTEez6AXprOjFZOIeu1FYa+L5Rx75ZAMzUe7vM4lrDUxZjCccPIW3lqzbzjLvuHe6ncfFTLsTo6uLdRC3wxqSuduGoNZ3sQUabFAkGKtJDhZAdID/eLJSJfL5KPuIAR5od3+2A5SgQKyA6hlmJWaPuoDGPscAMsM8ppzY1Z5axdyr4xfWots+Pmg29/cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=md6MqyIFc8fWomU62Lzf/6iZTI+6CM6DQ2WvLnlOKz4=;
 b=XbVkYcWLkRsJ29kKytOpmoZ+5WkQcguYTBPWCY6qdL+mIX1j53kh0OjOVJU6j/7SkCLuMknBhtMd4jxoJ4Gu3ocpmhm5ErlmjgTubCgqUxD0H2n1k3erFJYC4vAJCp3+3c6XPALGJHy4IlNlhkY+5w00QusR9Hk1oF/SeYhoRG/MRMXs39tV0R/W3vKuDbOD4H67eCZnyN6VE9aCiouW3uOm6k7g/CasdjKA+U96JoW8Qf2sXp65q8rfXIB5O3MXfA5YJd6eyBrQ2uuL+PSdVw/FYXESyqqa5nwqNBg4XpJZnOvXNd5HaeShJUuGz/hHFAz/R8f2A1fI3CQ5gFdLxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navigicom.com; dmarc=pass action=none
 header.from=navigicom.com; dkim=pass header.d=navigicom.com; arc=none
Received: from AM0PR06MB6179.eurprd06.prod.outlook.com (2603:10a6:208:176::13)
 by DBAPR06MB6632.eurprd06.prod.outlook.com (2603:10a6:10:18f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Mon, 31 Jul
 2023 04:30:38 +0000
Received: from AM0PR06MB6179.eurprd06.prod.outlook.com
 ([fe80::fb37:49ee:9503:2c1a]) by AM0PR06MB6179.eurprd06.prod.outlook.com
 ([fe80::fb37:49ee:9503:2c1a%3]) with mapi id 15.20.6631.043; Mon, 31 Jul 2023
 04:30:37 +0000
From: Ofer <ofer@navigicom.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E320 not detecting any devices after power failure
Thread-Index: AQHZwd8CkTSXQMXp2kCIU53Zyyl1u6/Q0lCwgAJ0i8w=
Date: Mon, 31 Jul 2023 04:30:37 +0000
Message-ID: 
 <AM0PR06MB6179AD88C2D8A1C21B491290D405A@AM0PR06MB6179.eurprd06.prod.outlook.com>
References: 
 <AM0PR06MB6179F4337F84319EA0A8D76CD407A@AM0PR06MB6179.eurprd06.prod.outlook.com>
 <BN2P110MB1747319051B7422ABD29B6E8B707A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: 
 <BN2P110MB1747319051B7422ABD29B6E8B707A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navigicom.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB6179:EE_|DBAPR06MB6632:EE_
x-ms-office365-filtering-correlation-id: a82ad0a7-34d5-478b-fc51-08db917ee3e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 AAWTJMWL8dFfUL57ox9CYZ8a2k9Fg0V+X2DksixyFG/CxUMgFTE3t0F+/qcLTUrknNruhERZ9Vlg1oshA3t7OHsB4JHKs3aERKnteeE9s2isDR/u+3pAg1GAppscZUg3huJhdQ57otvGmtXhM/Fp90GXtxwZcMknss2XpJAPVIaDhtY/LsZrRxdAk9f/miYbvk33dATyCjQJZVXSNBbjtigh2SH8+a+CqVDim3ONUmAD/2qsFFFjsRPWUSFbkvQwUvEGQT5Y41PJt4ULRldJjmTAoi9+wwIvsbaaA7nL8sy8fGdoA5Xt5LDqSFarg4Wf0hfZ8b1JHBVBlF2vbd42c1giMG8KFYXkHms4LncTtInG+Ho4KEnSenNwPS1nc7RQUU/wvAo8t+mJSnlmorLpuNRs4CbLqZObRl/r1oLxDr2qE24pycrsh4fJyTEtMIeFG0n+2RtWQxJrmsFvF3+B0PVLxSFhxOX5FZIWnO8uqd4M/YhlfNseaMslWBUTUEYJ8DAf5iB0jr6cvGHTNS3zu2TxLFZozSItArEoELvIJIUELOYO3HerabvCl0cxeW+5l1MxsemC/whgjLPxyP/UXkOC27BN1rxmZXDJWab5wVDTHpfDS/6Hawncgqca8gBh
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR06MB6179.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(376002)(136003)(39830400003)(346002)(366004)(451199021)(9686003)(71200400001)(7696005)(33656002)(186003)(83380400001)(86362001)(38070700005)(122000001)(38100700002)(26005)(6506007)(53546011)(55016003)(52536014)(5660300002)(91956017)(41300700001)(8936002)(8676002)(76116006)(6916009)(66946007)(64756008)(66556008)(66476007)(66446008)(2906002)(19627405001)(316002)(478600001)(19627235002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?6yH55WDTAVmik/rNHjfNHD+xm5pzRkcv2rYQ7skA5mAmYV+gI9wPwpdx?=
 =?Windows-1252?Q?5umM+1Fi3q4xYF3fZHPhRcOjJQzeduGwptBaz6gVl3B6/+1PAHArtuQW?=
 =?Windows-1252?Q?Fqrgbx0AsPsCVPLl6P4aeN0jRvP9ePfNsHdhZcN3RYgxWw88mveCRT9x?=
 =?Windows-1252?Q?PUlX9bzmHd8IMvCStZ30DrXypK4hPO+7DGcBF0u82OfGAYE6oSsLVBlK?=
 =?Windows-1252?Q?WbnNf3yZ4b7NR+W2jQGOtdSsmxYcgBO7Lcf/+KueWNMGLbkcuAgNskiJ?=
 =?Windows-1252?Q?u2mt9QfrqoJKgJMRW2phBgM1I4hMnURxJmw3u21Iuz/sRSk0As0eV/FL?=
 =?Windows-1252?Q?aC6frc1G1aWu7Kt8/d77MrnaVcLbzw69OReZXyxkNUL9qZY2nF/eim//?=
 =?Windows-1252?Q?0wS4u6+an03fgda8v8HFjEJYZPuklJL1M2n1hGPKUajWZ20rWVO0m5FO?=
 =?Windows-1252?Q?S92NHnCpZ+X/PHPokhWYKrq4+6dEyDrBzc3xb8MbfOPyPZt76E6dmAJI?=
 =?Windows-1252?Q?mhC5Yu5z9ztXfvtbrqKdVNP/VIjJoj1/yw64zJWkTeg0DChvPznet/Cr?=
 =?Windows-1252?Q?d5BR5MKyswLXlVIa2iE/5RCjud5y/LoZ2HonN5GXfhGFGcthgennnXhV?=
 =?Windows-1252?Q?gAHJUaIL9kztN0ZadGcVFKyxNbRUW++3eI/4hplFirOsi5Nxy2dBIPGU?=
 =?Windows-1252?Q?OyVoJ5eaLSXTmxjSTSwxIZcMSsAYqTQ6Sdf4zC2ZO/dF1e0wBLzKdC9G?=
 =?Windows-1252?Q?t0l464GCIshFpxtsn+TDV5S8umWy+kmCoqJDbItnCS4rMcaocMlJ7ppn?=
 =?Windows-1252?Q?oAANCdRJGGM7QbCoQbGsRW43WQmoDSBESgVj2qLXc8O6bFHCpDUWuoN6?=
 =?Windows-1252?Q?1wnyrUFcnWOZJMFv6aX8TEo6rgF7PVwTRBy4WAGgYR8h/XE/YvcHAgQj?=
 =?Windows-1252?Q?RDdxeta6CpvAjvIKtvDKkpIlXAzupoicXAUqmHUYrDC24az+igR+19YN?=
 =?Windows-1252?Q?DumphDBFxycigclQNLNJnqApWnQn1QelscrRr3W7rrQwK94ft3reK5U/?=
 =?Windows-1252?Q?NP5+BXBPVGK7TjmtmUYE17XK+UMMrMcIibHhF5Fbie/uZkTxafCb8bzt?=
 =?Windows-1252?Q?jnri7BKze9YgK02Qt3Vv3b/3k/ni9qgdP4rVfbqAi0HvlxjZ9nyfI/Qe?=
 =?Windows-1252?Q?B4uA3CBOydY8aOmqaEO6qubj1rJUgzp9iIFKV84UoG5M0Pz7U81X9H2D?=
 =?Windows-1252?Q?gncQ24ODlRKCXd2wZMaGis0abK5xiBz1l7e4XYgfPP3TOJjJLosKfTZ0?=
 =?Windows-1252?Q?eTY6kuhCQ2q1n6ufXk6zAKcHVUBeXfMyuuUVfQhJJRM/ppf6OKB5D1uD?=
 =?Windows-1252?Q?Mcb+GvF2lmiy1WnVDkVuv0ka8Y718NG5apQQc2txYrhX75+Utnfsg/Mh?=
 =?Windows-1252?Q?ZtlVv5bwnsAk4iWjWOUfHfAAwci/jgDW4408t5Wc+sDqACqUQ/BSl+qk?=
 =?Windows-1252?Q?/CJKcxnVMSPOB6C6W409m8cyRXvzft5dAXSFRYg5klGlEcqAd0EFzdq6?=
 =?Windows-1252?Q?qPSeJN27V0RGjEPVVoNwd6vtZba4+HWONXpUaUxq+tf1+ud/xbCikZPy?=
 =?Windows-1252?Q?Af3TAn/Sp2Jm1P6sD9dCRlia9qmOG//RNIWKnEHL0uxtCfDznOiupFBi?=
 =?Windows-1252?Q?WxPsqgygIaA=3D?=
MIME-Version: 1.0
X-OriginatorOrg: navigicom.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB6179.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a82ad0a7-34d5-478b-fc51-08db917ee3e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 04:30:37.8325
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7067a727-139a-4a87-8ff3-2dc6b20aada4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OVqs2o11u9M0JgyAxbLXG+XHI1/xeeRVSgogWxg6mPbiD7U7wrG5+3kCtUTkgPWS2BHMVQ//nsmDz4dfURqoJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR06MB6632
Message-ID-Hash: XODBW3Z4KUHBS2OPI6XODM7A3C5JNBDT
X-Message-ID-Hash: XODBW3Z4KUHBS2OPI6XODM7A3C5JNBDT
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 not detecting any devices after power failure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2GVA5MCHWZHUPHCQ7BK2ZZPFZHYRMJTG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5793670759426567895=="

--===============5793670759426567895==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM0PR06MB6179AD88C2D8A1C21B491290D405AAM0PR06MB6179eurp_"

--_000_AM0PR06MB6179AD88C2D8A1C21B491290D405AAM0PR06MB6179eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello David and Rob,

Thank you for the suggestions.
I began my troubleshooting by pulling out the SD card and backing it up to =
a PC with an SD card reader using dd.
My initial thought was that the image was damaged because of the power fail=
ure.
I downloaded a fresh image using uhd_images_downloader and programmed it to=
 the SD card using dd on the PC (UHD 4.1.0.5).
This image refused to boot. u-boot said it can't find the primary partition=
.
Looking at the image on the PC with various tools shows it is intact. It ha=
s the 4 partitions you would expect and the sizes seem to be OK.
I reprogrammed the SD card with my backup image and it booted normally but =
no devices detected.
I don't have an actual Linux system. I am working with WSL and Cygwin under=
 Windows so I didn't have access to the other image writting method using b=
maptool. It is not supported by Cygwin and WSL has no direct access to USB =
devices (my SD card reader) although it does has bmaptool.
Because of the failure to use dd with the original image provided by NI I s=
witched to mender.
I tried to use a fresh mender image of the same UHD version I am using (4.1=
.0.5) and there was no change.
I tried using a mender image of a newer UHD version (4.4.0.0) and an older =
version (3.15.LTS) without any change.
No devices are detected.
To answer David's question: I did try with an IP address. I tried 127.0.0.1=
 and my assigned IP address 192.168.123.95. No change. No devices are detec=
ted.
BTW, after programming different images because I knew the IP address of th=
e unit will change I switched to the USB serial console and did all my oper=
ations there. Still no change.
I am doing all operations on the actual E320 unit and not trying to use it =
remotely from PC although I initially did access it through SSH from a PC a=
nd it accessible this way because my original image uses a static IP addres=
s.

Could it be the EEPROM?
How to read the EEPROM?
What should be the correct values?
Where can I get the values to properly restore the EEPROM if indeed it is t=
he one that was damaged?
What else could it be?
I don't think that a power failure can damage the hardware but how to diagn=
ose it?

Regards,
Ofer Saferman
________________________________
From: David Raeman <david@SynopticEngineering.com>
Sent: Saturday, July 29, 2023 5:51 PM
To: Ofer <ofer@navigicom.com>; usrp-users@lists.ettus.com <usrp-users@lists=
.ettus.com>
Subject: RE: E320 not detecting any devices after power failure


Hi Ofer, does the probe work if you specify the radio=92s IP address?  e.g.=
 something like:



        uhd_usrp_probe --args addr=3D192.168.10.2



If that syntax works, then you might try switching between the SFP+ port (v=
ia copper adapter) and the native RJ45. My memory could be mistaken here, b=
ut I vaguely recall that MPM discovery for an E320 worked using one of thos=
e ports but not the other. However, if you specify the address, it would wo=
rk with either port. Again, I=92m working from fuzzy memory here..



Hope this helps,

David



From: Ofer <ofer@navigicom.com>
Sent: Saturday, July 29, 2023 1:47 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] E320 not detecting any devices after power failure



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

--_000_AM0PR06MB6179AD88C2D8A1C21B491290D405AAM0PR06MB6179eurp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hello David and Rob,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thank you for the suggestions.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I began my troubleshooting by pulling out the SD card and backing it up to =
a PC with an SD card reader using dd.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
My initial thought was that the image was damaged because of the power fail=
ure.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I downloaded a fresh image using uhd_images_downloader and programmed it to=
 the SD card using dd on the PC (UHD 4.1.0.5).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
This image refused to boot. u-boot said it can't find the primary partition=
.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Looking at the image on the PC with various tools shows it is intact. It ha=
s the 4 partitions you would expect and the sizes seem to be OK.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I reprogrammed the SD card with my backup image and it booted normally but =
no devices detected.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I don't have an actual Linux system. I am working with WSL and Cygwin under=
 Windows so I didn't have access to the other image writting method using b=
maptool. It is not supported by Cygwin and WSL has no direct access to USB =
devices (my SD card reader) although
 it does has bmaptool.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Because of the failure to use dd with the original image provided by NI I s=
witched to mender.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I tried to use a fresh mender image of the same UHD version I am using (4.1=
.0.5) and there was no change.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I tried using a mender image of a newer UHD version (4.4.0.0) and an older =
version (3.15.LTS) without any change.
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
No devices are detected. <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
To answer David's question: I did try with an IP address. I tried 127.0.0.1=
 and my assigned IP address 192.168.123.95. No change. No devices are detec=
ted.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
BTW, after programming different images because I knew the IP address of th=
e unit will change I switched to the USB serial console and did all my oper=
ations there. Still no change.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I am doing all operations on the actual E320 unit and not trying to use it =
remotely from PC although I initially did access it through SSH from a PC a=
nd it accessible this way because my original image uses a static IP addres=
s.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Could it be the EEPROM?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
How to read the EEPROM?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
What should be the correct values?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Where can I get the values to properly restore the EEPROM if indeed it is t=
he one that was damaged?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
What else could it be?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I don't think that a power failure can damage the hardware but how to diagn=
ose it?<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Ofer Saferman<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> David Raeman &lt;davi=
d@SynopticEngineering.com&gt;<br>
<b>Sent:</b> Saturday, July 29, 2023 5:51 PM<br>
<b>To:</b> Ofer &lt;ofer@navigicom.com&gt;; usrp-users@lists.ettus.com &lt;=
usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> RE: E320 not detecting any devices after power failure</fon=
t>
<div>&nbsp;</div>
</div>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
span.x_EmailStyle20
	{font-family:"Calibri",sans-serif;
	color:windowtext}
.x_MsoChpDefault
	{font-size:10.0pt}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:b=
reak-word">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal">Hi Ofer, does the probe work if you specify the ra=
dio=92s IP address?&nbsp; e.g. something like:</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd_usr=
p_probe --args addr=3D192.168.10.2</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">If that syntax works, then you might try switching=
 between the SFP+ port (via copper adapter) and the native RJ45. My memory =
could be mistaken here, but I vaguely recall that MPM discovery for an E320=
 worked using one of those ports but
 not the other. However, if you specify the address, it would work with eit=
her port. Again, I=92m working from fuzzy memory here..</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Hope this helps,</p>
<p class=3D"x_MsoNormal">David</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<div style=3D"border:none; border-left:solid blue 1.5pt; padding:0in 0in 0i=
n 4.0pt">
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"x_MsoNormal"><b>From:</b> Ofer &lt;ofer@navigicom.com&gt; <br>
<b>Sent:</b> Saturday, July 29, 2023 1:47 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] E320 not detecting any devices after power fai=
lure</p>
</div>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Hell=
o all,</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">I op=
erate a USRP E320 using an externa battery. Usually I have time to shut it =
down in an orderly fashion before the battery is depleted.</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">On o=
ne occasion it happened that the battery was depleted before I had a chance=
 to shut it down properly.</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Sinc=
e then when I run uhd_usrp_probe I get a message that no devices could be d=
etected.</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">The =
E320 boots up normally and I can communicate with it using both serial cons=
ole and LAN.</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">I in=
itially suspected an SD card image corruption and I tried to rewrite the im=
age using mender.</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">I tr=
ied the same version I am using (UHD 4.1.0.5) and I tried a newer&nbsp;vers=
ion UHD 4.4.0.0 and and older&nbsp;version UHD 3.15.LTS.</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Noth=
ing seems to help. The E320 still reports &quot;No devices found&quot;. I e=
ven tried uhd_usrp_probe with an argument of IP address. Nothing helps.</sp=
an></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Here=
 is a sample dump:</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">root=
@ni-e320:~# uhd_usrp_probe
</span></p>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.4.0.0-0-g5fac246=
b</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">[INF=
O] [MPMD FIND] Found MPM devices, but none are reachable for a UHD session.=
 Specify find_all to find all devices.</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Erro=
r: LookupError: KeyError: No devices found for -----&gt;</span></p>
</div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Empt=
y Device Address</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Can =
someone help me fix this problem? Point me in the right direction?</span></=
p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Is i=
t fixable by myself or do I have to return the unit to be serviced?</span><=
/p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Than=
ks,</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Ofer=
 Saferman</span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_AM0PR06MB6179AD88C2D8A1C21B491290D405AAM0PR06MB6179eurp_--

--===============5793670759426567895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5793670759426567895==--
