Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A2F1361EE
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2020 21:44:44 +0100 (CET)
Received: from [::1] (port=52542 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipefa-0001kR-Td; Thu, 09 Jan 2020 15:44:42 -0500
Received: from mail-mw2nam12olkn2076.outbound.protection.outlook.com
 ([40.92.23.76]:3936 helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1ipefX-0001Zo-Ti
 for usrp-users@lists.ettus.com; Thu, 09 Jan 2020 15:44:40 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fCmj1Zmk0/LcSUj7m96vRNRG7Dp1IAwG0e839xaNb8lPwwq8auda1QZh+3vBEI0/ARA42r6tpDugsQZOCdoG/FevxTdhPCe1vhzTWkcYzyuCrQ5oHHNBDqhAF6TmFjjntWX5fHzDu430c3r82T7BgAFcuJ744An65vSWc/405ooQ9Wj1x6LraduN4AQfOHfj62IZ+2c3JoTeMhs8Af7hzPhA81stRgUAXLtrOD7kqorodlGCnAFnH+aPYJ/1CGiQIVYKHoz0p+/onf9Hq1qjcwaNsZhX8D6iDmZuLJ1rkrfHGzH4ls5Fn3uMKAgOZjNwTRtDMsgXK4MhZoOLhy0NGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rLTtRp9hTwNzgAefvu9SwP7NnskCKbxb6prHAtS14v8=;
 b=SyQA9MUafKKq42qObwdHJtHygobDl3rr0Bgm2kFEfrgbrN8KSMmsp0yoEQCaIGSlTHoBbl0NKXWnUfcWKB97+Tlmdp7H4fbWZKOHsHqS8RXyx/miq/dUu5F/d31JmdoPglaEG+aCDilElTvveer69s7Yobl5/Yc5Wuffr7fdESIHOLqrduQ4vIv1cX83SAfpu8K/rT5jPRaW1ummkFG1dNeJ1stXBzIcV9zeQsFr8l1b/+BTb5gNeRPB22/JKSFgZOpos+8HPIHcfPPD5ClPwAgTb7NfJOtU+OM4rdNSvt5+xDTAi7NZtwqGKdb1gIB9F3SybaJvko9nVf+QZgzAQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rLTtRp9hTwNzgAefvu9SwP7NnskCKbxb6prHAtS14v8=;
 b=SwPUQ2TWgwPVn4xtNMhg549brERvgQ9X0HbgrGPZSVcjoz6Ruj6m5seTacd9TR8/XooJ1n2pc+ESskqBxoDYV1dbW3WvuHa1Zm1a6x+QSm31LPS63Vy+MFXBDLWU/md+zmbBHhBB87qTmTWW18GC7LzzJekp923U3UMxJulHetkVwYAPkChr87yibamxwUOW8qAvfVhdnt3HWxgADa2p/+MqvBUZiYBC0+75HQaOpS6s5l9UN/Fv+GsOMH168TvFgqEY/BehOF5CgJb1bVyJQpz2dio8CusbagOzU5V0f9y4v2sfRWkFG6KBdDo6f088jGA9ONkGxAW+tBU2qfBNaQ==
Received: from MW2NAM12FT015.eop-nam12.prod.protection.outlook.com
 (10.13.180.58) by MW2NAM12HT104.eop-nam12.prod.protection.outlook.com
 (10.13.180.138) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.4; Thu, 9 Jan
 2020 20:43:58 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com (10.13.180.60) by
 MW2NAM12FT015.mail.protection.outlook.com (10.13.180.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.6 via Frontend Transport; Thu, 9 Jan 2020 20:43:58 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::7032:41e7:a3a9:7125]) by BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::7032:41e7:a3a9:7125%10]) with mapi id 15.20.2623.010; Thu, 9 Jan 2020
 20:43:58 +0000
To: Sam Reiter <sam.reiter@ettus.com>
Thread-Topic: [USRP-users] GPIO Example Failure on N310
Thread-Index: AQHVt08Kp/nE4uZIdEWWJjcBb2zMH6fZcoEAgATk+wCAABx6gYAEc2cAgAADAZ0=
Date: Thu, 9 Jan 2020 20:43:58 +0000
Message-ID: <BN6PR19MB1635F5AFCE5EBA7358CC4CE9A4390@BN6PR19MB1635.namprd19.prod.outlook.com>
References: <BN6PR19MB1635ECADF20FD97282F02D06A42D0@BN6PR19MB1635.namprd19.prod.outlook.com>
 <CANf970YOQViU4LbeUTqSXd4-QsjyhS01qHOHcao96n=far9h2g@mail.gmail.com>
 <CANf970bGoJ2tLgeEE_WMXW+7aGcHtdmTAmwwyBdEdH3Z711_3A@mail.gmail.com>
 <CY4PR19MB16373C3CA76A77DF1B984119A43F0@CY4PR19MB1637.namprd19.prod.outlook.com>,
 <CANf970bw3E3iUfZ0i2q6o1WSktdKaXwoAhPp8mPBq7rNX4920A@mail.gmail.com>
In-Reply-To: <CANf970bw3E3iUfZ0i2q6o1WSktdKaXwoAhPp8mPBq7rNX4920A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:2041A1E0C9EBB2941C4C12375392BB4FF1699E7CB5A0C5BFEDE7D21199DA1802;
 UpperCasedChecksum:6E78A1937F8B23982639E3FD36D680A2CDFF60B229437532DFED5D1236A842E9;
 SizeAsReceived:7319; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Tv82obaSW10QMTApOeQkbO1ZVRbsbuRy]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 8002a9f9-7370-4395-09fc-08d79544a6a8
x-ms-traffictypediagnostic: MW2NAM12HT104:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RpqSaH/vMxLl9xvnGuRYspuUEsPFAAEQuPG7bB4TQFKKARWHFkQKG/ZONCJhD9x/Dcp0ohqm/3Y2ouro25NuMtsS5cd7vjBy8uPuLbcTokBNz6Z3AqndhO7uUbzzsajTSVLXoGb/KUr1boej8+oOCsfL/EEk85COGPbdX7UAM/fWNkPdtCXZ/gPttv2FaXNbTilmDZzVvOLCEDAFgT1EPNTUMNR5SKsOJLzrpHCtMHg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 8002a9f9-7370-4395-09fc-08d79544a6a8
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 20:43:58.1120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2NAM12HT104
Subject: Re: [USRP-users] GPIO Example Failure on N310
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0813030512568485020=="
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

--===============0813030512568485020==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB1635F5AFCE5EBA7358CC4CE9A4390BN6PR19MB1635namp_"

--_000_BN6PR19MB1635F5AFCE5EBA7358CC4CE9A4390BN6PR19MB1635namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sam,

I have a cable connected to a logic analyzer for my X310 which I was using =
to investigate the --bitbang option on the gpio test for changing the GPIO =
outputs .  I could probably do something manually to look at it as inputs.

Jeff

________________________________
From: Sam Reiter <sam.reiter@ettus.com>
Sent: Thursday, January 9, 2020 2:25 PM
To: Jeff S <e070832@hotmail.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] GPIO Example Failure on N310

Jeff,

I'd say it's worth trying. Do you currently have any cablingfor changing th=
e GPIO outputs or external connections to your GPIO port?

Sam Reiter
Ettus Research


On Mon, Jan 6, 2020 at 6:27 PM Jeff S <e070832@hotmail.com<mailto:e070832@h=
otmail.com>> wrote:
Sam,

Everything was downloaded from the images_downloader. I have not modified t=
he FPGA image or any of the UHD code. I have just been trying to learn how =
to use the N310, and compiling examples on it.

I will be back in the lab tomorrow. Should I go ahead and try installing 3.=
15.0.0?

Jeff



-------- Original message --------
From: Sam Reiter <sam.reiter@ettus.com<mailto:sam.reiter@ettus.com>>
Date: 1/6/20 4:46 PM (GMT-06:00)
To: Jeff S <e070832@hotmail.com<mailto:e070832@hotmail.com>>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] GPIO Example Failure on N310

Jeff,

Follow-up on this. I ran the GPIO example on my N310 with 3.14.1.1 (g0347a6=
d8) and all GPIO tests passed. Are your FPGA image and UHD release modified=
?

Sam Reiter
Ettus Research

On Fri, Jan 3, 2020 at 2:01 PM Sam Reiter <sam.reiter@ettus.com<mailto:sam.=
reiter@ettus.com>> wrote:
Hey Jeff,

Could you give this a shot on 3.15.0.0 and let me know the results? Based o=
n that output, the issue looks confined to ATR but it's not something I've =
seen reported up to this point.

If 3.15.0.0 shows this issue as well, I'll reproduce it on my end and get a=
 bug filed.

Sam Reiter
Ettus Research

On Fri, Dec 20, 2019 at 10:19 AM Jeff S via USRP-users <usrp-users@lists.et=
tus.com<mailto:usrp-users@lists.ettus.com>> wrote:
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

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BN6PR19MB1635F5AFCE5EBA7358CC4CE9A4390BN6PR19MB1635namp_
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
Sam,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I have a cable connected to a logic analyzer for my X310 which I was using =
to investigate the --bitbang option on the gpio test for changing the GPIO =
outputs .&nbsp; I could probably do something manually to look at it as inp=
uts.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff</div>
<div id=3D"Signature">
<div><br>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Sam Reiter &lt;sam.=
reiter@ettus.com&gt;<br>
<b>Sent:</b> Thursday, January 9, 2020 2:25 PM<br>
<b>To:</b> Jeff S &lt;e070832@hotmail.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] GPIO Example Failure on N310</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Jeff,</div>
<div><br>
</div>
<div>I'd say it's worth trying. Do you currently have any cablingfor changi=
ng the GPIO outputs or external connections to your GPIO port?<br>
</div>
<div><br>
</div>
<div>
<div>
<div dir=3D"ltr" class=3D"x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter <br>
<div>Ettus Research<br>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, Jan 6, 2020 at 6:27 PM Jeff=
 S &lt;<a href=3D"mailto:e070832@hotmail.com">e070832@hotmail.com</a>&gt; w=
rote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div>Sam,</div>
<div><br>
</div>
<div>Everything was downloaded from the images_downloader. I have not modif=
ied the FPGA image or any of the UHD code. I have just been trying to learn=
 how to use the N310, and compiling examples on it.</div>
<div><br>
</div>
<div>I will be back in the lab tomorrow. Should I go ahead and try installi=
ng 3.15.0.0?</div>
<div><br>
</div>
<div>Jeff</div>
<div id=3D"x_gmail-m_-4008979200261088173composer_signature">
<div dir=3D"auto" style=3D"font-size:85%; color:rgb(87,87,87)"><br>
</div>
</div>
<div><br>
</div>
<div><br>
</div>
<div>-------- Original message --------</div>
<div>From: Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D=
"_blank">sam.reiter@ettus.com</a>&gt;
</div>
<div>Date: 1/6/20 4:46 PM (GMT-06:00) </div>
<div>To: Jeff S &lt;<a href=3D"mailto:e070832@hotmail.com" target=3D"_blank=
">e070832@hotmail.com</a>&gt;
</div>
<div>Cc: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>
</div>
<div>Subject: Re: [USRP-users] GPIO Example Failure on N310 </div>
<div><br>
</div>
<div>
<div dir=3D"ltr">
<div>Jeff,</div>
<div><br>
</div>
<div>Follow-up on this. I ran the GPIO example on my N310 with 3.14.1.1 (g0=
347a6d8) and all GPIO tests passed. Are your FPGA image and UHD release mod=
ified?<br>
</div>
<div><br>
</div>
<div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter <br>
<div>Ettus Research<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Jan 3, 2020 at 2:01 PM Sam =
Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">sam.re=
iter@ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">Hey Jeff,
<div><br>
</div>
<div>Could you give this a shot on 3.15.0.0 and let me know the results? Ba=
sed on that output, the issue looks confined to ATR but it's not something =
I've seen reported up to this point.&nbsp;</div>
<div><br>
</div>
<div>If 3.15.0.0 shows this issue as well, I'll reproduce it on my end and =
get a bug filed.&nbsp;</div>
<div><br>
</div>
<div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter&nbsp;
<div>Ettus Research</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Dec 20, 2019 at 10:19 AM Je=
ff S via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I built the UHD example, gpio.cpp (no modifications), and ran it on my N310=
 to start experimenting with the GPIO.&nbsp; It returned with two failures:=
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px; margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
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
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt">Is =
this something that I should be concerned about?</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt"><br=
>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt"></d=
iv>
If I compile and run the same example with my X310, everything passes.</div=
>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
Here's the uhd_config_info --print-all from my N310:
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px; margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
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
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Thanks,<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Jeff<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BN6PR19MB1635F5AFCE5EBA7358CC4CE9A4390BN6PR19MB1635namp_--


--===============0813030512568485020==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0813030512568485020==--

