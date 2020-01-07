Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61113131CC2
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jan 2020 01:28:40 +0100 (CET)
Received: from [::1] (port=54726 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iocjc-0007mz-CE; Mon, 06 Jan 2020 19:28:36 -0500
Received: from mail-co1nam11olkn2070.outbound.protection.outlook.com
 ([40.92.18.70]:5473 helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1iocjY-0007ib-2b
 for usrp-users@lists.ettus.com; Mon, 06 Jan 2020 19:28:32 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S8s+FxiMxgPd1KuAPgNbc5RTEolPOm4z/EqfkW/qj1lbpQ5QqxgGQ1tpiFrsv3kV4bJLZYsSgKF6WHQVl4+i4kWzEREtu4Y9hipIUuB8Ydh34VJY0FAM1OwIDgcDOwRUR3uB8jWd7yu6uS2hBzuvvXY8a+YRKC1diMRhq5RHjrxXfDSWeS2bPO4ynPDj1GqgfuGoofTZsbk25kO1tG885wW+u0fDXJ3BVL6kiBH4nP07RbW1Tp6LEBQYfmZ325LHLIVxZyS38CEx1461CcGn8hjOFX21IOcefBrINzlXbWFZC9jKidWiQeoc5yUJC24qB3HyFEGgT2GDQxwMFR/WUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=axrecZNCvdFq5UQ4s5abotajVphVaShSbkOE2lEKoq8=;
 b=CCqix67f0UnuPByZFsfs3SLyAsAcvu6LILndwPHAkRgHmA/uztqzrlktzOFM0KBS4opd6IVaFbZGcVxs56kC4sRjWdWJ1ZEFrEoNze5wkPO3JKbXuv0az8h5tQ8g2h3Bg8n9rnjAAbtaQn5DvOHHd4OWZzfkzRvKtGhm/FkeeY/yBFZwPuXaRcOgfuo1qoClXhz4/ngdt/tVl7L/kRv24IGn4QDR2w1ta3W8Fiaqd1agnJAH8p0t3kN2cWSh7Ev6ZOE5IdmjP07tN2K2l20A3ETpKtJY3SFYi+ZiSzweVpvDGhiACArqKdXXIxUjj0n6oJifS22rDVAI3KQY03q8hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=axrecZNCvdFq5UQ4s5abotajVphVaShSbkOE2lEKoq8=;
 b=ZbfNq0jSL27WMCZyNpC2p3ccQwSG6OnTKU3Y9ir9eTXVxx/ZdiatRNre/pJ7BpKPl7K+Oe5tttkuNa7v7zMll2OMPU/GykEv6Ode4foL/bqJrBvoCE/4KrhFR78q7smQkNTDf5LDfbygVbKboutjvTtH4RSKbiAx2GXVl3uX638YrI6K/gIz3Z3IslSPCRA3MtsgX/6OEaspnw+KUv2cShqfmranDTKocggvGzu5E3s7tZzCIpA8+tKJnttLgdxZHlmy64PouJ7SCFYVWeTZQY81pWlw13AEy2jEdgu9K0tvOxMfEVwD/BnYovFsc65wGAWL2btjZzdYsdCBLIJgXw==
Received: from BN8NAM11FT062.eop-nam11.prod.protection.outlook.com
 (10.13.176.51) by BN8NAM11HT066.eop-nam11.prod.protection.outlook.com
 (10.13.176.212) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.11; Tue, 7 Jan
 2020 00:27:49 +0000
Received: from CY4PR19MB1637.namprd19.prod.outlook.com (10.13.176.56) by
 BN8NAM11FT062.mail.protection.outlook.com (10.13.177.34) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Tue, 7 Jan 2020 00:27:49 +0000
Received: from CY4PR19MB1637.namprd19.prod.outlook.com
 ([fe80::4d10:c86d:c36f:b9ad]) by CY4PR19MB1637.namprd19.prod.outlook.com
 ([fe80::4d10:c86d:c36f:b9ad%4]) with mapi id 15.20.2602.015; Tue, 7 Jan 2020
 00:27:49 +0000
To: Sam Reiter <sam.reiter@ettus.com>
Thread-Topic: [USRP-users] GPIO Example Failure on N310
Thread-Index: AQHVt08Kp/nE4uZIdEWWJjcBb2zMH6fZcoEAgATk+wCAABx6gQ==
Date: Tue, 7 Jan 2020 00:27:49 +0000
Message-ID: <CY4PR19MB16373C3CA76A77DF1B984119A43F0@CY4PR19MB1637.namprd19.prod.outlook.com>
References: <BN6PR19MB1635ECADF20FD97282F02D06A42D0@BN6PR19MB1635.namprd19.prod.outlook.com>
 <CANf970YOQViU4LbeUTqSXd4-QsjyhS01qHOHcao96n=far9h2g@mail.gmail.com>,
 <CANf970bGoJ2tLgeEE_WMXW+7aGcHtdmTAmwwyBdEdH3Z711_3A@mail.gmail.com>
In-Reply-To: <CANf970bGoJ2tLgeEE_WMXW+7aGcHtdmTAmwwyBdEdH3Z711_3A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:24A5050B346509DBCC7D362E439106F7C47D570EF0A7F108521DCA1C74B5306A;
 UpperCasedChecksum:6F3ECF75FFFDC61A499E09B0AB3B684B17CFC526A83A41C28186A5E86FFAB603;
 SizeAsReceived:7278; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [AHuUx3Axk9isD6Df3ALhQKWOiTcJn1DJSnL0g754OvkHBTFAh4sqdupvsUzbSU4s]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 2c2c6b9b-ada4-4fbb-61f5-08d793086d20
x-ms-traffictypediagnostic: BN8NAM11HT066:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mWgTd+uAt5uAw8zC01ubkGQtZepEieLRFdGPqBkV8TAQrMH5YL2wMg+JSMk4AqzmjroitWlM4ABsSWYJCbkwS6HtZSVEd7hrDCtUsSNRETjfNOXWAg2BbTyHEA3DvTS0FhRxrMHvt7RlJt3Bmack0AMGHc0M368F2jUu+siv3GoPlNh5V85J9jHpiwZqa3gYxuxwvnI45ixTUEFrkKYsR0u5g728H8jHfYnijPXhTLc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c2c6b9b-ada4-4fbb-61f5-08d793086d20
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2020 00:27:49.3685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM11HT066
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
Content-Type: multipart/mixed; boundary="===============8871297592460494436=="
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

--===============8871297592460494436==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR19MB16373C3CA76A77DF1B984119A43F0CY4PR19MB1637namp_"

--_000_CY4PR19MB16373C3CA76A77DF1B984119A43F0CY4PR19MB1637namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Sam,

Everything was downloaded from the images_downloader. I have not modified t=
he FPGA image or any of the UHD code. I have just been trying to learn how =
to use the N310, and compiling examples on it.

I will be back in the lab tomorrow. Should I go ahead and try installing 3.=
15.0.0?

Jeff



-------- Original message --------
From: Sam Reiter <sam.reiter@ettus.com>
Date: 1/6/20 4:46 PM (GMT-06:00)
To: Jeff S <e070832@hotmail.com>
Cc: usrp-users@lists.ettus.com
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

--_000_CY4PR19MB16373C3CA76A77DF1B984119A43F0CY4PR19MB1637namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta content=3D"text/html; charset=3Dutf-8">
</head>
<body>
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
<div id=3D"composer_signature">
<div dir=3D"auto" style=3D"font-size:85%; color:#575757"><br>
</div>
</div>
<div><br>
</div>
<div><br>
</div>
<div>-------- Original message --------</div>
<div>From: Sam Reiter &lt;sam.reiter@ettus.com&gt; </div>
<div>Date: 1/6/20 4:46 PM (GMT-06:00) </div>
<div>To: Jeff S &lt;e070832@hotmail.com&gt; </div>
<div>Cc: usrp-users@lists.ettus.com </div>
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
<div dir=3D"ltr" class=3D"gmail_signature">
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
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 3, 2020 at 2:01 PM Sam Re=
iter &lt;<a href=3D"mailto:sam.reiter@ettus.com">sam.reiter@ettus.com</a>&g=
t; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
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
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 20, 2019 at 10:19 AM Jeff=
 S via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
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
</body>
</html>

--_000_CY4PR19MB16373C3CA76A77DF1B984119A43F0CY4PR19MB1637namp_--


--===============8871297592460494436==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8871297592460494436==--

