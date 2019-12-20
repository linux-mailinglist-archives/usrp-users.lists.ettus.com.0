Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79621128080
	for <lists+usrp-users@lfdr.de>; Fri, 20 Dec 2019 17:19:47 +0100 (CET)
Received: from [::1] (port=50760 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iiL0A-0001AX-Uj; Fri, 20 Dec 2019 11:19:42 -0500
Received: from mail-mw2nam12olkn2075.outbound.protection.outlook.com
 ([40.92.23.75]:35809 helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1iiL06-00012g-Qv
 for usrp-users@lists.ettus.com; Fri, 20 Dec 2019 11:19:38 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GOuVNmJp9q73zjP9440XQQxptilAB3F2bSX2FryIWPV9pIVsdLYz66cESl2/CiyDCH7IHop61VWq+QbameA4AXsJn67p2n/OCDRsJREF+r/5zry/qRayXItPvQKq0mZ8mkmiCwDoUD7fJFDdOEjyQz2kjkVj9xl+d1fHn6vdgt1MPzHy/AoTRftUNmGytRDQYk3vztrhyGKqbkbk4wn0f0sU5Bf1hffP3lkjH0GvQ/ivImpxHIALWhX8Nx6d9+4Z8tda4xMXQLs0em7E8Z4qIBsTGcO10izXLUeyxsChx83oVdRpPcoSwCtSasxKIhYL2yW9B2tgz3hgieLXnwG+Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ysH6h01J8Ay7V904HP+jt01Pmv8aTr9cj8DlICU3ktY=;
 b=IvzesqV2FYMtcYjcICM7WXSFkC9EY/2Xg//0N9+2qp9zuIroS5QCjVej7TxavoSXVW2Ho4c6dzHzAGPdLwuBDKA4V5nbTEwQiuWr3dfEIVpJ+KKdBl8IvsYow5pINJm0uoYHa8lETbJngTl8WQLYqB3aK2sQitCCyvrSxsJx9WsNfrFq4qrHxZyg18ZXr3hU8nOrh/ba0qFpxa9FomLAvz5/FISMMZwnIG9UGu8qlU3z1Q/pKttTm0cVwQyRHiFT+SuWA9V12WsPfjfL86q8YU4zsxFVjUqClzDINWtf7ofBOSwHGdY1zRP/wMhihERma1DO35IycYd/qX5+rhzaaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ysH6h01J8Ay7V904HP+jt01Pmv8aTr9cj8DlICU3ktY=;
 b=JnWY9U/VnvRBSeb2fp4qQMA5cVxMy80bR9KrP5IrFMnJoVJ+E0nw5mqnPLRX4vnR8l/n+fwBBS3JMInL88aB+1cah3XUP//gKJ9mpi66lEvPZRRxSHlPQY3cA3iMW8aZUzQ7IB+0Ua9bSBkUcEcBF5aDtE6Si67rpW2B+kd1NellAF29lxA5zyUIEdkVXtgyUgWJ1xOcSM77rA+rKJ1Ax6rZS1xewf6Dn585WXKrVy3uB3YSL0epO4cefP8bM/t2m6bfdEeld+c37pN1UwTf9bnB0Rfz62kkY1PptVd0cAOfUMJKRmKVlPBEp1NfVeoXvkgd3eooB5RgGRVflPNl/w==
Received: from MW2NAM12FT032.eop-nam12.prod.protection.outlook.com
 (10.13.180.56) by MW2NAM12HT257.eop-nam12.prod.protection.outlook.com
 (10.13.181.94) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.16; Fri, 20 Dec
 2019 16:18:57 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com (10.13.180.56) by
 MW2NAM12FT032.mail.protection.outlook.com (10.13.180.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16 via Frontend Transport; Fri, 20 Dec 2019 16:18:57 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6024:225f:b6e0:1c49]) by BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::6024:225f:b6e0:1c49%6]) with mapi id 15.20.2559.015; Fri, 20 Dec 2019
 16:18:57 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: GPIO Example Failure on N310 
Thread-Index: AQHVt08Kp/nE4uZIdEWWJjcBb2zMHw==
Date: Fri, 20 Dec 2019 16:18:57 +0000
Message-ID: <BN6PR19MB1635ECADF20FD97282F02D06A42D0@BN6PR19MB1635.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:144AA73B3822A5133F29283C34060DE4E59F122845002E9EE92B5DEF5F8C4A67;
 UpperCasedChecksum:F4F640550CF1317A55F467F39E50C52EAD8938D711BBEAA31073893F33B48E9F;
 SizeAsReceived:6642; Count:42
x-tmn: [5/tPri9tebCxkhBbmP35DEMdtFvrLKdT]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 05703f04-05bc-40bb-38be-08d785685097
x-ms-traffictypediagnostic: MW2NAM12HT257:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vKeq/LoE3waGTULMvFt8bDi3mrBb2kfSrRxdL8srFWTi6vn2XsrY+IBP5fyKisEjOn97q8lJbg1ffFRctRAXbrBr4sf7JVxifL4suDwCEOM4OxhcvCO8FwalMuXaAndxwkHnr1nx9vphrPpPQ9qgIHGlOf8VqH2DEfYnBgl/H8UxUVsMs2zk7R1fUrsOyKyM
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 05703f04-05bc-40bb-38be-08d785685097
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2019 16:18:57.1055 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2NAM12HT257
Subject: [USRP-users] GPIO Example Failure on N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============0449294149027398044=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0449294149027398044==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB1635ECADF20FD97282F02D06A42D0BN6PR19MB1635namp_"

--_000_BN6PR19MB1635ECADF20FD97282F02D06A42D0BN6PR19MB1635namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I built the UHD example, gpio.cpp (no modifications), and ran it on my N310=
 to start experimenting with the GPIO.  It returned with two failures:

Testing ATR TX output...fail:
Bit 2 should be set, but is not
       Bit  10  9  8  7  6  5  4  3  2  1  0
      CTRL:  0  0  0  0  0  0  0  1  1  1  1
       DDR:  0  0  0  0  0  0  1  1  1  1  1
    ATR_0X:  0  0  0  0  0  0  0  0  0  0  1
    ATR_RX:  0  0  0  0  0  0  0  0  0  1  0
    ATR_TX:  0  0  0  0  0  0  0  0  1  0  0
    ATR_XX:  0  0  0  0  0  0  0  1  0  0  0
       OUT:  0  0  0  0  0  0  0  0  0  0  0
  READBACK:  1  1  1  1  1  1  0  0  0  0  1

Testing ATR full duplex output...fail:
Bit 3 should be set, but is not
       Bit  10  9  8  7  6  5  4  3  2  1  0
      CTRL:  0  0  0  0  0  0  0  1  1  1  1
       DDR:  0  0  0  0  0  0  1  1  1  1  1
    ATR_0X:  0  0  0  0  0  0  0  0  0  0  1
    ATR_RX:  0  0  0  0  0  0  0  0  0  1  0
    ATR_TX:  0  0  0  0  0  0  0  0  1  0  0
    ATR_XX:  0  0  0  0  0  0  0  1  0  0  0
       OUT:  0  0  0  0  0  0  0  0  0  0  0
  READBACK:  1  1  1  1  1  1  0  0  0  0  1

2 tests failed

Done!

Is this something that I should be concerned about?

If I compile and run the same example with my X310, everything passes.

Here's the uhd_config_info --print-all from my N310:

UHD 3.14.1.1-0-g0347a6d8
Build date: Thu, 26 Sep 2019 01:26:32
C compiler: GNU 7.3.0
C++ compiler: GNU 7.3.0
C flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=3D=
2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBER
IO -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9=
  --sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon
-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot  -O2 -pipe -g -feliminate-=
unused-debug-types -fdebug-prefix-map=3D/home/oe-builder/bu
ild/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1=3D/usr/=
src/debug/uhd/3.14.1.1-r1 -fdebug-prefix-map=3D/home/oe-build
er/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/re=
cipe-sysroot=3D -fdebug-prefix-map=3D/home/oe-builder/build/t
mp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysro=
ot-native=3D   -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3D
hard -mcpu=3Dcortex-a9  --sysroot=3D/home/oe-builder/build/tmp-glibc/work/c=
ortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroo
t
C++ flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEVEL=
=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIB
ERIO -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-=
a9  --sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-ne
on-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot  -O2 -pipe -g -feliminat=
e-unused-debug-types -fdebug-prefix-map=3D/home/oe-builder/
build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1=3D/us=
r/src/debug/uhd/3.14.1.1-r1 -fdebug-prefix-map=3D/home/oe-bui
lder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/=
recipe-sysroot=3D -fdebug-prefix-map=3D/home/oe-builder/build
/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sys=
root-native=3D  -fvisibility-inlines-hidden  -march=3Darmv7-a
 -marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9  --sysroot=3D/home=
/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi
/uhd/3.14.1.1-r1/recipe-sysroot -fvisibility=3Dhidden -fvisibility-inlines-=
hidden
Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests, LIBERIO=
, USB, GPSD, MPMD, N300, N320, E320
Install prefix: /usr
Boost version: 1.66
Libusb version: 1.0.23
Package path: /usr
Images directory: /usr/share/uhd/images
ABI version string: 3.14.1

Thanks,
Jeff


--_000_BN6PR19MB1635ECADF20FD97282F02D06A42D0BN6PR19MB1635namp_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I built the UHD example, gpio.cpp (no modifications), and ran it on my N310=
 to start experimenting with the GPIO.&nbsp; It returned with two failures:=
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<blockquote style=3D"margin-top: 0px; margin-bottom: 0px;">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span>Testing ATR TX output...fail:<br>
</span>
<div>Bit 2 should be set, but is not<br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;Bit &nbsp;10 &nbsp;9 &nbsp;8 &nbsp;7 &nbsp;=
6 &nbsp;5 &nbsp;4 &nbsp;3 &nbsp;2 &nbsp;1 &nbsp;0<br>
</div>
<div>&nbsp; &nbsp; &nbsp; CTRL: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nb=
sp;0 &nbsp;0 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1<br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;DDR: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;=
0 &nbsp;0 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1<br>
</div>
<div>&nbsp; &nbsp; ATR_0X: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;1<br>
</div>
<div>&nbsp; &nbsp; ATR_RX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;1 &nbsp;0<br>
</div>
<div>&nbsp; &nbsp; ATR_TX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;1 &nbsp;0 &nbsp;0<br>
</div>
<div>&nbsp; &nbsp; ATR_XX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;1 &nbsp;0 &nbsp;0 &nbsp;0<br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;OUT: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;=
0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0<br>
</div>
<div>&nbsp; READBACK: &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp=
;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;1<br>
</div>
<div><br>
</div>
<div>Testing ATR full duplex output...fail:<br>
</div>
<div>Bit 3 should be set, but is not<br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;Bit &nbsp;10 &nbsp;9 &nbsp;8 &nbsp;7 &nbsp;=
6 &nbsp;5 &nbsp;4 &nbsp;3 &nbsp;2 &nbsp;1 &nbsp;0<br>
</div>
<div>&nbsp; &nbsp; &nbsp; CTRL: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nb=
sp;0 &nbsp;0 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1<br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;DDR: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;=
0 &nbsp;0 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1<br>
</div>
<div>&nbsp; &nbsp; ATR_0X: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;1<br>
</div>
<div>&nbsp; &nbsp; ATR_RX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;0 &nbsp;1 &nbsp;0<br>
</div>
<div>&nbsp; &nbsp; ATR_TX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;0 &nbsp;1 &nbsp;0 &nbsp;0<br>
</div>
<div>&nbsp; &nbsp; ATR_XX: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 =
&nbsp;0 &nbsp;1 &nbsp;0 &nbsp;0 &nbsp;0<br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;OUT: &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;=
0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;0<br>
</div>
<div>&nbsp; READBACK: &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp;1 &nbsp=
;0 &nbsp;0 &nbsp;0 &nbsp;0 &nbsp;1<br>
</div>
<div><br>
</div>
<div>2 tests failed<br>
</div>
<div><br>
</div>
<span>Done!</span></div>
</blockquote>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt"=
>Is this something that I should be concerned about?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt"=
><br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt"=
></div>
If I compile and run the same example with my X310, everything passes.</div=
>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
Here's the uhd_config_info --print-all from my N310:
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<blockquote style=3D"margin-top: 0px; margin-bottom: 0px;">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span>UHD 3.14.1.1-0-g0347a6d8<br>
</span>
<div>Build date: Thu, 26 Sep 2019 01:26:32<br>
</div>
<div>C compiler: GNU 7.3.0<br>
</div>
<div>C&#43;&#43; compiler: GNU 7.3.0<br>
</div>
<div>C flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEV=
EL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBER<br>
</div>
<div>IO -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcort=
ex-a9 &nbsp;--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-ne=
on<br>
</div>
<div>-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot &nbsp;-O2 -pipe -g -f=
eliminate-unused-debug-types -fdebug-prefix-map=3D/home/oe-builder/bu<br>
</div>
<div>ild/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1=3D=
/usr/src/debug/uhd/3.14.1.1-r1 -fdebug-prefix-map=3D/home/oe-build<br>
</div>
<div>er/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-=
r1/recipe-sysroot=3D -fdebug-prefix-map=3D/home/oe-builder/build/t<br>
</div>
<div>mp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-=
sysroot-native=3D &nbsp; -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3D=
<br>
</div>
<div>hard -mcpu=3Dcortex-a9 &nbsp;--sysroot=3D/home/oe-builder/build/tmp-gl=
ibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroo<br>
</div>
<div>t<br>
</div>
<div>C&#43;&#43; flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_C=
ONSOLE_LEVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LI=
B<br>
</div>
<div>ERIO -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dco=
rtex-a9 &nbsp;--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-=
ne<br>
</div>
<div>on-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot &nbsp;-O2 -pipe -g =
-feliminate-unused-debug-types -fdebug-prefix-map=3D/home/oe-builder/<br>
</div>
<div>build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1=
=3D/usr/src/debug/uhd/3.14.1.1-r1 -fdebug-prefix-map=3D/home/oe-bui<br>
</div>
<div>lder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.=
1-r1/recipe-sysroot=3D -fdebug-prefix-map=3D/home/oe-builder/build<br>
</div>
<div>/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recip=
e-sysroot-native=3D &nbsp;-fvisibility-inlines-hidden &nbsp;-march=3Darmv7-=
a<br>
</div>
<div>&nbsp;-marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 &nbsp;--=
sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gn=
ueabi<br>
</div>
<div>/uhd/3.14.1.1-r1/recipe-sysroot -fvisibility=3Dhidden -fvisibility-inl=
ines-hidden<br>
</div>
<div>Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests, LI=
BERIO, USB, GPSD, MPMD, N300, N320, E320<br>
</div>
<div>Install prefix: /usr<br>
</div>
<div>Boost version: 1.66<br>
</div>
<div>Libusb version: 1.0.23<br>
</div>
<div>Package path: /usr<br>
</div>
<div>Images directory: /usr/share/uhd/images<br>
</div>
<div>ABI version string: 3.14.1<br>
</div>
<span></span><br>
</div>
</blockquote>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks,<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_BN6PR19MB1635ECADF20FD97282F02D06A42D0BN6PR19MB1635namp_--


--===============0449294149027398044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0449294149027398044==--

