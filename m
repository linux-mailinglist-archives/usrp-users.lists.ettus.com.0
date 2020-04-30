Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 637861BF8D2
	for <lists+usrp-users@lfdr.de>; Thu, 30 Apr 2020 15:03:47 +0200 (CEST)
Received: from [::1] (port=35812 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jU8qt-0001c5-5p; Thu, 30 Apr 2020 09:03:43 -0400
Received: from mail-am6eur05olkn2108.outbound.protection.outlook.com
 ([40.92.91.108]:62158 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <johnan636@outlook.com>)
 id 1jU8qo-0001X1-Jo; Thu, 30 Apr 2020 09:03:38 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tqd/gc54MIuFLp8tdlm9gEgSENVDLXde/I350tDwRimAeaX8W6Z+deolEiGovbDvnmFgjgJhsiUJPL/rnJigoO6zgsjsR9kQlO4VcropXQ1H5FxapGjfkkNsEQNhmPuaFJ7qkdG0npJgP2/z98VSzb7eV/ebsLjtfytVAvouJI375lpN2aVDc4qyXSIEp3rOC3pnr6WzJ6eEsVmBxvQZkLeAEulCU/IxssKoXRvx9lUNl2un/q5r47HvqoIl8pKtC95tofBiGNUPoy3401wIYnLWja5mTl/uiqCCJlJXZlDHB+it0FPqW2qjjfyImRvdSPTbJXsPnR9Z5QX+Cm25Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RgU8ZAsBnhV1HTqJNWyO3AL2yVprNaKN1zhtzj4jW8k=;
 b=fWE3Gf6p5bsVPc1q15kJGvb7wSiJXg8Y/g2dkEwdl+xUMvcQzUaNNlbyO3wo8QDGn5VBsoOZPXyFsQAQ/cV9wPwUSO4YDN68dUq++v3x2zFT08KJ777ixAJz4qjA+MmlmiX9H2JoM321hFAAhfxZDORnmwjzWh5uTJm7cvKSloE+nu2Tv+DjYSlss3iMAIq59Qwrr71CIAoglxszjIFEZHrnBgONVZbScCrTEwLhsaVL0Pl0sjJujzePZCQZlgs9VzhnMtCRPKT9ZiM5K7iIr9XXSfjgmltaEVYSE8o/76rnln/+zvZiGXk8/kNk/QK1kqwpONhujYjLjiBdWlMpDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RgU8ZAsBnhV1HTqJNWyO3AL2yVprNaKN1zhtzj4jW8k=;
 b=RQs/s3itbGdCI8GzGvcCe+yGkbDXaRx+6f0MMaORhiqwdItXVbPKNMC2cXgAYTUeZgLswKZvByBu/nfNLiUZ0ifS8Ypo+x6VKbkmbyJfcaEFbK4Tk+NntKCwlXGYHCsvkR1sMlMvRtR5yEwtDrONQ23gdyautqSFt+fcq01pCfFDsGfG+5qd8H6eGXWnjPa8VkDvcNeBYan2C9i8G7cvzSmlMoQOgja5iSsfXHP2EfyB93VfyWyWkQRtcjmqpVTbl27HEq381jwuDbOtu4QHBRSWKdpebmLyyEZSWsy52dCrJhksEfXbjNbNXK9Ou+z3owGmLr2vuWk+HIR5tyV6xQ==
Received: from DB8EUR05FT064.eop-eur05.prod.protection.outlook.com
 (2a01:111:e400:fc0f::4e) by
 DB8EUR05HT022.eop-eur05.prod.protection.outlook.com (2a01:111:e400:fc0f::121)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Thu, 30 Apr
 2020 13:02:37 +0000
Received: from AM7P190MB0584.EURP190.PROD.OUTLOOK.COM (2a01:111:e400:fc0f::41)
 by DB8EUR05FT064.mail.protection.outlook.com
 (2a01:111:e400:fc0f::379) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.24 via Frontend
 Transport; Thu, 30 Apr 2020 13:02:37 +0000
Received: from AM7P190MB0584.EURP190.PROD.OUTLOOK.COM
 ([fe80::948f:a802:67db:dad8]) by AM7P190MB0584.EURP190.PROD.OUTLOOK.COM
 ([fe80::948f:a802:67db:dad8%3]) with mapi id 15.20.2958.020; Thu, 30 Apr 2020
 13:02:37 +0000
To: "usrp-users-request@lists.ettus.com" <usrp-users-request@lists.ettus.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Problem compiling uhd for USRP N310 sdk	
Thread-Index: AQHWHu9xS++yhuRuXkqClxtxGmkD0g==
Date: Thu, 30 Apr 2020 13:02:36 +0000
Message-ID: <AM7P190MB0584CB8AD7C9C31726942A44E3AA0@AM7P190MB0584.EURP190.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:6B326478C07C9277A02456181A6157192CB3B412718DE0F3F35B76576D740A3E;
 UpperCasedChecksum:A870A839A540621031B200E545B13700D8D545F424BB93E684D383BC66FF764A;
 SizeAsReceived:6766; Count:42
x-tmn: [bVaBTGXR6+1Ws5osm4lGRTxbcB3RoNC1]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 9a7e7cbb-32ad-48bb-c7b8-08d7ed06c1a4
x-ms-traffictypediagnostic: DB8EUR05HT022:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0B0AiRIsXyUcADu64ZufGqqBu/0hBOp1pdtjLDitUgQpvuf2haZMjgKs5/LR5ojArbexOIi8AV1TnMXW20JgdYpjqwvlN/Tj5wilhWa5a3xkTqUqbch41YNDkYFjn6fIKw1oZPao/oNA2HunlPbfddUYA5cMQCgR7JdZy7jdPy77fI+ll29wz0eeQRp6gwk6YKNywZG7HN1elW4xbkVnog==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0584.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: DzGpCdTQBR0FatKhHaD4Gva3SGVIfltaUvRtlls7hk/Iyi77kDjThYuxZ7cA/OcgMzXW4dGiI/3t7/nxcJgw5zIfOL2EXGDWULccPKS1n4leRiendyhzBtzCMMPcG8/dGDsu+uUNFsegjgBAKXgIzw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a7e7cbb-32ad-48bb-c7b8-08d7ed06c1a4
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2020 13:02:36.9886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8EUR05HT022
Subject: [USRP-users] Problem compiling uhd for USRP N310 sdk
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
From: Anthony Johnson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anthony Johnson <johnan636@outlook.com>
Content-Type: multipart/mixed; boundary="===============8350221779283132639=="
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

--===============8350221779283132639==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM7P190MB0584CB8AD7C9C31726942A44E3AA0AM7P190MB0584EURP_"

--_000_AM7P190MB0584CB8AD7C9C31726942A44E3AA0AM7P190MB0584EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hey,
I am using the USRP N310 and try to work with the sdk.
I opened a /src folder in the sdk folder. than the following commands:
source ./environment-setup-cortexa9hf-neon-oe-linux-gnueabi
cd /src/uhd/host
mkdir build
cd build
cmake -DECMAKE_TOOLCHAIN_FILE=3D../host/cmake/Toolchains/oe-sdk_cross.cmake=
 -DCMAKE_INSTALL_PREFIX=3D/usr -ENABLE_GPSD=3DON -DENABLE_RFNOC=3DON ..
make -j8
make install DESTDIR=3D~/n310_root
make install DESTDIR=3D~/n310_root/sysroots/cortexa9hf-neon-oe-liniux-gnuea=
bi

After installing I use sshfs to connect this folder to the N310 and then se=
t it to use the uhd installed on the sdk instead of the one that comes with=
 the SD image.
(i.e which uhd_usrp_probe returns - /home/root/newfolder/usr/bin/uhd_usrp_p=
robe)
when I try any uhd command (for example: uhd_usrp_probe) I get:
"cannot execute binary file: Exec format error"
I think that the problem is I compiled it to 64-bit while the N310 machine =
is 32-bit. What am I doing wrong? how can I compile it correctly?
(file /home/root/newfolder/usr/bin/uhd_usrp_probe returns: ELF 64-bit LSB E=
xecutable, x86-64, version 1 (GNU/Linux), dynamically linked, interpreter /=
lib64/ld-linux-x86-64.so.2, for GNU/LInux 2.6.32, BuildID[sha1]=3D1745a5e09=
e91206b8bfecb4ba888ff90860124a9, not stripped)

P.S
I am using uhd 3.13.0.2 and I tried other version and got the same problem
Also I have the same problem while trying to install UHD to the E310 sdk

Thanks!
Anthony.

--_000_AM7P190MB0584CB8AD7C9C31726942A44E3AA0AM7P190MB0584EURP_
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
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">Hey,</span><br style=3D"font-family: Verdana, Geneva, Helvetica,=
 Arial, sans-serif; font-size: 13.44px; background-color: rgb(255, 255, 255=
)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">I am using the USRP N310 and try to work with the sdk.</span><br=
 style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; font-=
size: 13.44px; background-color: rgb(255, 255, 255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">I opened a /src folder in the sdk folder. than the following com=
mands:</span><br style=3D"font-family: Verdana, Geneva, Helvetica, Arial, s=
ans-serif; font-size: 13.44px; background-color: rgb(255, 255, 255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">source ./environment-setup-cortexa9hf-neon-oe-linux-gnueabi</spa=
n><br style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">cd /src/uhd/host</span><br style=3D"font-family: Verdana, Geneva=
, Helvetica, Arial, sans-serif; font-size: 13.44px; background-color: rgb(2=
55, 255, 255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">mkdir build</span><br style=3D"font-family: Verdana, Geneva, Hel=
vetica, Arial, sans-serif; font-size: 13.44px; background-color: rgb(255, 2=
55, 255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">cd build</span><br style=3D"font-family: Verdana, Geneva, Helvet=
ica, Arial, sans-serif; font-size: 13.44px; background-color: rgb(255, 255,=
 255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">cmake -DECMAKE_TOOLCHAIN_FILE=3D../host/cmake/Toolchains/oe-sdk_=
cross.cmake -DCMAKE_INSTALL_PREFIX=3D/usr
 -ENABLE_GPSD=3DON -DENABLE_RFNOC=3DON ..</span><br style=3D"font-family: V=
erdana, Geneva, Helvetica, Arial, sans-serif; font-size: 13.44px; backgroun=
d-color: rgb(255, 255, 255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">make -j8</span><br style=3D"font-family: Verdana, Geneva, Helvet=
ica, Arial, sans-serif; font-size: 13.44px; background-color: rgb(255, 255,=
 255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">make install DESTDIR=3D~/n310_root</span><br style=3D"font-famil=
y: Verdana, Geneva, Helvetica, Arial, sans-serif; font-size: 13.44px; backg=
round-color: rgb(255, 255, 255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">make install DESTDIR=3D~/n310_root/sysroots/cortexa9hf-neon-oe-l=
iniux-gnueabi</span><br style=3D"font-family: Verdana, Geneva, Helvetica, A=
rial, sans-serif; font-size: 13.44px; background-color: rgb(255, 255, 255)"=
>
<br style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; fo=
nt-size: 13.44px; background-color: rgb(255, 255, 255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">After installing I use sshfs to connect this folder to the N310 =
and then set it to use the uhd installed
 on the sdk instead of the one that comes with the SD image.</span><br styl=
e=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; font-size:=
 13.44px; background-color: rgb(255, 255, 255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">(i.e which uhd_usrp_probe returns - /home/root/newfolder/usr/bin=
/uhd_usrp_probe)</span><br style=3D"font-family: Verdana, Geneva, Helvetica=
, Arial, sans-serif; font-size: 13.44px; background-color: rgb(255, 255, 25=
5)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">when I try any uhd command (for example: uhd_usrp_probe) I get:<=
/span><br style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-ser=
if; font-size: 13.44px; background-color: rgb(255, 255, 255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">&quot;cannot execute binary file: Exec format error&quot;</span>=
<br style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; fo=
nt-size: 13.44px; background-color: rgb(255, 255, 255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">I think that the problem is I compiled it to 64-bit while the N3=
10 machine is 32-bit. What am I doing
 wrong? how can I compile it correctly?</span></div>
<div style=3D""><span style=3D"background-color: rgb(255, 255, 255); displa=
y: inline !important;"><font color=3D"#000000" face=3D"Calibri, Arial, Helv=
etica, sans-serif">(</font></span><span style=3D"color: rgb(32, 31, 30); fo=
nt-family: verdana, sans-serif; font-size: 15px; background-color: rgb(255,=
 255, 255); display: inline !important;">file
 /home/root/newfolder/usr/bin/uhd_usrp_probe returns:</span><span style=3D"=
color: rgb(32, 31, 30); font-family: verdana, sans-serif; font-size: 10pt; =
background-color: rgb(255, 255, 255); display: inline !important;">&nbsp;</=
span><span style=3D"color: rgb(32, 31, 30); font-family: verdana, sans-seri=
f; font-size: 15px; background-color: rgb(255, 255, 255); display: inline !=
important;"><span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial=
, Helvetica, sans-serif; font-size: 10pt; text-align: left; background-colo=
r: rgb(255, 255, 255); display: inline !important;">ELF
 64-bit LSB Executable, x86-64, version 1 (GNU/Linux), dynamically linked, =
interpreter /lib64/ld-linux-x86-64.so.2, for GNU/LInux 2.6.32, BuildID[sha1=
]=3D1745a5e09e91206b8bfecb4ba888ff90860124a9, not stripped</span></span><fo=
nt color=3D"#000000" face=3D"Calibri, Arial, Helvetica, sans-serif"><span s=
tyle=3D"font-size: 10pt;">)</span></font><br style=3D"font-family: Verdana,=
 Geneva, Helvetica, Arial, sans-serif; font-size: 13.44px; background-color=
: rgb(255, 255, 255)">
<br style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; fo=
nt-size: 13.44px; background-color: rgb(255, 255, 255)">
<span style=3D"color: rgb(0, 0, 0); font-family: Verdana, Geneva, Helvetica=
, Arial, sans-serif; font-size: 13.44px; background-color: rgb(255, 255, 25=
5); display: inline !important;">P.S</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">I am using uhd 3.13.0.2 and I tried other version and got the sa=
me problem</span><br style=3D"font-family: Verdana, Geneva, Helvetica, Aria=
l, sans-serif; font-size: 13.44px; background-color: rgb(255, 255, 255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">Also I have the same problem while trying to install UHD to the =
E310 sdk</span><br style=3D"font-family: Verdana, Geneva, Helvetica, Arial,=
 sans-serif; font-size: 13.44px; background-color: rgb(255, 255, 255)">
<br style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; fo=
nt-size: 13.44px; background-color: rgb(255, 255, 255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">Thanks!</span><br style=3D"font-family: Verdana, Geneva, Helveti=
ca, Arial, sans-serif; font-size: 13.44px; background-color: rgb(255, 255, =
255)">
<span style=3D"font-family: Verdana, Geneva, Helvetica, Arial, sans-serif; =
font-size: 13.44px; background-color: rgb(255, 255, 255); display: inline !=
important">Anthony.</span><br>
</div>
</body>
</html>

--_000_AM7P190MB0584CB8AD7C9C31726942A44E3AA0AM7P190MB0584EURP_--


--===============8350221779283132639==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8350221779283132639==--

