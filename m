Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 943C41EA7E7
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jun 2020 18:41:06 +0200 (CEST)
Received: from [::1] (port=34490 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jfnUk-0008Rf-VX; Mon, 01 Jun 2020 12:41:02 -0400
Received: from mail-oln040092004094.outbound.protection.outlook.com
 ([40.92.4.94]:54734 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <e070832@hotmail.com>) id 1jfnUf-0008Hw-W9
 for usrp-users@lists.ettus.com; Mon, 01 Jun 2020 12:40:58 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GpAJP68WonSzy5F6uTsS3ORj/+VQS9OxJ6hHZDyd8OZYH2Gz8pUzaTONLjG48f0I8+z859GTMiD/NCNkm05uYnvLDY2TQIh6rQ6WowN0KhzzSRe2C6XO+JuwTuh+CfIv5S0wEM3KggGdIxOkjrRpELZZo44c9PX++NVLX9mANz8hWye4T4ytIBq1zxlQJ25w9NgZ7Fyrpvo1AFSBGRpF9YJSdEt7B0QPSz8NfpW11w+bpZol/GG5Ag8EgZoRmC8JGQPiWko8IQdMCQVju1bBfqENiOBGwm8EcGKVva19nvCB6jwdi2f76la+kk0xUMFtce79A6jhQyc9zB1+6bgF5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PqY3zDA/UcUblWjMR8MAQ7U7qXGl+oQkbV9fGqWszgE=;
 b=Ck34FdtfCgRdiLiMBdgMvj/rHBqlBOjmYxrsFmCnn7dddhvp48bN+hjGZ108NV9EGsNDMkdrJD3hVU/wd+hlXO9squyWtCijK0RCUFpYv3UYvzw+oJIh649CpsmKqonBe3eb7F02zAskw7NBizIqScks5QgSz7O+BNzMjT9C34MZ99GH9MBht0mESEpYA94qxc1zxOHM03ARhXehBHq3adf0C6uE8krwczHyEI0mLdJIhwx22/zQkJCT3LqpDzhxqqeR1MaAi4WikGDsSmQHhHTWyDxDOzow+Z2ksELJVgIlGxucXwV8kq+S3cfQVfvd4hOLQqC/6EIgs0rF9+D+iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PqY3zDA/UcUblWjMR8MAQ7U7qXGl+oQkbV9fGqWszgE=;
 b=bwGzoH6yKLy3j7NG/8QemyrQA6kSQ6yUfZ8gvXYulGN+krNeh1jpzTSpHAma1laKjkl6tP9S9AFMm9REtWltuugdltMEySTPLbC1DGSRRTgBCsCkK5P66bqQ6Q/hyTQBNfXvZElFKjfN/OdgKL0IjqUxavKAL/OcftadgQx3lzJqMIeDRuYd5IgGM5ih5rz1Q8VxqwJJM6/pLkAabjrJhkqSJGq0ibEAzods77DAEa+7+lufZoMNdNo+8c3lG/ghhChYjqYf1NvmvqcNK0LfOr/Hu1faawzsDfs4SHjaQ81Ym18BUqbu+Pazen9vy0lnIQz8+6g1DK9nE8rqSnLiFw==
Received: from CY1NAM02FT040.eop-nam02.prod.protection.outlook.com
 (10.152.74.55) by CY1NAM02HT066.eop-nam02.prod.protection.outlook.com
 (10.152.75.202) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Mon, 1 Jun
 2020 16:40:16 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com
 (2a01:111:e400:7e45::47) by CY1NAM02FT040.mail.protection.outlook.com
 (2a01:111:e400:7e45::391) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17 via Frontend
 Transport; Mon, 1 Jun 2020 16:40:16 +0000
Received: from DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::35ca:f87d:664d:a8b8]) by DM6PR19MB2668.namprd19.prod.outlook.com
 ([fe80::35ca:f87d:664d:a8b8%2]) with mapi id 15.20.3045.024; Mon, 1 Jun 2020
 16:40:16 +0000
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Thread-Topic: [USRP-users] E310 Cross-compiling UHD / GNU Radio (volk?)
Thread-Index: AQHWCS099ZMgGq9NJEOrs6CjWKApm6hmgwAAgADIYZGAAAXtgIAAAWsugFLzcQCACg0GEw==
Date: Mon, 1 Jun 2020 16:40:16 +0000
Message-ID: <DM6PR19MB266898D0162257D51B105609A48A0@DM6PR19MB2668.namprd19.prod.outlook.com>
References: <DM6PR19MB2668CBA7DF25F0303929D158A4C60@DM6PR19MB2668.namprd19.prod.outlook.com>
 <bb2c2f90-88a7-e938-921c-86e7038dc5b4@comcast.net>
 <DM6PR19MB2668C22AD3616D654461E183A4C70@DM6PR19MB2668.namprd19.prod.outlook.com>
 <76cc5e90-1f38-0237-e333-531cfaa40ae5@comcast.net>
 <DM6PR19MB26680E18E4D18DFD06AC30D6A4C70@DM6PR19MB2668.namprd19.prod.outlook.com>,
 <CAL7q81uMKgh+3pqaf48yGXH5gj1U66kxHbGHdguq_8VkNgazAA@mail.gmail.com>
In-Reply-To: <CAL7q81uMKgh+3pqaf48yGXH5gj1U66kxHbGHdguq_8VkNgazAA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:A256DD3AAED3EE609B809AFA3D2468611501EBBF7B619E67C59B9AF6B8F32F3B;
 UpperCasedChecksum:6C3648D639EC68454F8A26EDAEF07D2B399AD815A1D3632F81D0847C0C2BDA36;
 SizeAsReceived:7409; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [d1o4SJ91rwJXQOq9SYxL4H05JtSIWT7S]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: ce1441c5-d229-4fa3-20b9-08d8064a76c6
x-ms-traffictypediagnostic: CY1NAM02HT066:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pR0cQE/3K0uysMvA0ix/DDuMfLTDltMCIoNWZirbqx2zRCUiHbd2u8/b4oV6JSMaKWGwOGjvJ5dkl1rHetoHPj1I8t57jGFgpAJ23DJdu9kULh9yw/bi8JGBHKWsWtYIOYkJvBA7Yaem2ikNjKnEVpSNx5VUwyV2Sg5W/497UdJwHj1gKv1zUgFMQ2RaRACjZ5rlBJE71g/1+TmHkCrLbCMY7iy3u2J3lbzYCHSA6d22/DoZhQdPCIBulkn0XDCk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR19MB2668.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: SOWGgKqfU5WSwsGL2q7DzIYu6jYT3xJSbYyEUnlJAImPDp3LvFJfyZI1I2xLIJcOt5te49vA36HBI4ci+pU0sKFRAguyQOvPhfhy6Njh6i3rmJBBScKS4uQF1Jy52DB/kO5j+9sYF/p5+oAHba5S0A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ce1441c5-d229-4fa3-20b9-08d8064a76c6
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2020 16:40:16.1648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1NAM02HT066
Subject: Re: [USRP-users] E310 Cross-compiling UHD / GNU Radio (volk?)
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
Content-Type: multipart/mixed; boundary="===============5182415835613316618=="
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

--===============5182415835613316618==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR19MB266898D0162257D51B105609A48A0DM6PR19MB2668namp_"

--_000_DM6PR19MB266898D0162257D51B105609A48A0DM6PR19MB2668namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Jonathon,

I added the cmake flag you suggested, and my build completed.  I don't have=
 my E310 at the moment, so I can't test too much more to test it at the mom=
ent.  I suppose the fact it built is a very good sign.

Thanks!
Jeff



________________________________
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Sent: Tuesday, May 26, 2020 2:07 AM
To: Jeff S <e070832@hotmail.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Ron Economos <=
w6rz@comcast.net>
Subject: Re: [USRP-users] E310 Cross-compiling UHD / GNU Radio (volk?)

Hi Jeff,

I'm looking into this cross compiling issue. Using this flag with cmake: -D=
CMAKE_ASM_COMPILER_ARG1:STRING=3D"-mcpu=3Dcortex-a9" seems to work as a tem=
porary workaround for the volk error.

Jonathon

On Fri, Apr 3, 2020 at 8:31 AM Jeff S via USRP-users <usrp-users@lists.ettu=
s.com<mailto:usrp-users@lists.ettus.com>> wrote:
$ which gnuradio-config-info
/home/user/sdr/e310/rfnoc/installs/bin/gnuradio-config-info
$ gnuradio-config-info -v
3.7.14.0

I used maint-3.7.  This is what I did for the non-ARM build:

$ git clone --recursive https://github.com/gnuradio/gnuradio
$ cd ~/sdr/e310/rfnoc/src/gnuradio/
$ git checkout maint-3.7
$ git submodule update --init --recursive

This is from the directions located at the first build of GNU Radio located=
 in the application note: https://kb.ettus.com/Software_Development_on_the_=
E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Building_=
GNU_Radio.

Jeff

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> on behalf of Ron Economos via USRP-users <usrp-users@=
lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Sent: Friday, April 3, 2020 7:17 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] E310 Cross-compiling UHD / GNU Radio (volk?)


What version of GNU Radio are you trying to build? If it's 3.8 or 3.9, you =
need a newer version of VOLK.


Ron


On 4/3/20 05:10, Jeff S wrote:
Ron,

I re-created my build-arm directory and tried adding this with the same res=
ults.

Philip, in a previous email, had me looking through the Volk issues, and ma=
ybe there is one related that is OPEN:  "Missing NEON Implementations #243"=
 (https://github.com/gnuradio/volk/issues/243).  I am still trying to under=
stand it to see if there's something I can do related to it.  Just have bee=
n trying to follow the Ettus application notes.

Jeff

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com><mailto:usrp-users-bou=
nces@lists.ettus.com> on behalf of Ron Economos via USRP-users <usrp-users@=
lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Sent: Thursday, April 2, 2020 6:59 PM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] E310 Cross-compiling UHD / GNU Radio (volk?)


Try adding this to your CMake command line.


-DCMAKE_CXX_FLAGS:STRING=3D"-march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneo=
n -mtune=3Dcortex-a9" -DCMAKE_C_FLAGS:STRING=3D"-march=3Darmv7-a -mfloat-ab=
i=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a9" -DCMAKE_ASM_FLAGS:STRING=3D"-marc=
h=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a9 -g"


Ron


On 4/2/20 13:45, Jeff S via USRP-users wrote:
I had a problem with the initial build environment when setting up my envir=
onment for the E310.  Up to now, I have been able to get the UHD cross-comp=
iled, a new image for the microSD card built, and checked up to the # uhd_u=
srp_probe step on the E310 (from https://kb.ettus.com/Software_Development_=
on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source) w=
ith success.

I am now at the point where I am Cross-Compiling GNU Radio.  I have been us=
ing e3xx_e310_sdk_default-v3.15.0.0.zip, and at the point where I am buildi=
ng GNU Radio, I am getting an error:


Scanning dependencies of target volk_obj
[  3%] Building ASM object volk/lib/CMakeFiles/volk_obj.dir/__/kernels/volk=
/asm/neon/volk_16i_max_star_horizontal_16i.s.o
/home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_m=
ax_star_horizontal_16i.s: Assembler messages:
/home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_m=
ax_star_horizontal_16i.s:9: Error: selected processor does not support `pld=
 [r1:128]' in ARM mode
/home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_m=
ax_star_horizontal_16i.s:20: Error: selected processor does not support `pl=
d [r4:128]' in ARM mode
/home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_m=
ax_star_horizontal_16i.s:44: Error: selected processor does not support `sx=
th r6,r6' in ARM mode
volk/lib/CMakeFiles/volk_obj.dir/build.make:1572: recipe for target 'volk/l=
ib/CMakeFiles/volk_obj.dir/__/kernels/volk/asm/neon/volk_16i_max_star_horiz=
ontal_16i.s.o' failed
make[2]: *** [volk/lib/CMakeFiles/volk_obj.dir/__/kernels/volk/asm/neon/vol=
k_16i_max_star_horizontal_16i.s.o] Error 1
CMakeFiles/Makefile2:220: recipe for target 'volk/lib/CMakeFiles/volk_obj.d=
ir/all' failed
make[1]: *** [volk/lib/CMakeFiles/volk_obj.dir/all] Error 2
Makefile:162: recipe for target 'all' failed
make: *** [all] Error 2


I have searched unsuccessfully for an answer to this one, and figure it's s=
ome sort of configuration error that I missed.  The commands I am using are=
:

$ cd ~/sdr/e310/rfnoc/oe/
$ source ./environment-setup-cortexa9t2hf-neon-oe-linux-musleabi
$ cd ~/sdr/e310/rfnoc/src/gnuradio
$ mkdir build-arm
$ cd build-arm/
$ cmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=3D~/sdr/e310/rfnoc/src/gnuradio/cma=
ke/Toolchains/oe-sdk_cross.cmake -DENABLE_GR_WXGUI=3DOFF -DENABLE_GR_VOCODE=
R=3DOFF -DENABLE_GR_DTV=3DOFF -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=3DOFF=
 -DCMAKE_INSTALL_PREFIX=3D/usr ../
$ make

Any obvious issues?  Could there be something cached from the earlier build=
 in the directions?  I'll post the cmake output below my signature to keep =
it out of the way.

Thanks,
Jeff



$ cmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=3D~/sdr/e310/rfnoc/src/gnuradio/cma=
ke/Toolchains/oe-sdk_cross.cmake -DENABLE_GR_WXGUI=3DOFF -DENABLE_GR_VOCODE=
R=3DOFF -DENABLE_GR_DTV=3DOFF -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=3DOFF=
 -DCMAKE_INSTALL_PREFIX=3D/usr ../
-- The CXX compiler identification is GNU 8.2.0
-- The C compiler identification is GNU 8.2.0
-- Check for working CXX compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86=
_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-g++
-- Check for working CXX compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86=
_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-g++ -- =
works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Check for working C compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_6=
4-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc
-- Check for working C compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_6=
4-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc -- wo=
rks
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Build type not specified: defaulting to release.
-- Build type set to Release.
-- Found Git: /usr/bin/git
-- Extracting version information from git describe...
-- Performing Test HAVE_VISIBILITY_HIDDEN
-- Performing Test HAVE_VISIBILITY_HIDDEN - Success
-- Performing Test HAVE_WARN_SIGN_COMPARE
-- Performing Test HAVE_WARN_SIGN_COMPARE - Success
-- Performing Test HAVE_WARN_ALL
-- Performing Test HAVE_WARN_ALL - Success
-- Performing Test HAVE_WARN_NO_UNINITIALIZED
-- Performing Test HAVE_WARN_NO_UNINITIALIZED - Success
-- Compiler Version: arm-oe-linux-musleabi-gcc (GCC) 8.2.0
Copyright (C) 2018 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
-- Compiler Flags: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/=
usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc:::-O3 -DNDEBUG  -O2=
 -pipe -g -feliminate-unused-debug-types  -std=3Dgnu99 -fvisibility=3Dhidde=
n -Wsign-compare -Wall -Wno-uninitialized
/home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linu=
x-musleabi/arm-oe-linux-musleabi-g++:::-O3 -DNDEBUG  -O2 -pipe -g -felimina=
te-unused-debug-types  -fvisibility=3Dhidden -Wsign-compare -Wall -Wno-unin=
itialized
-- ADDING PERF COUNTERS
-- Building Static Libraries: OFF
-- Looking for pthread.h
-- Looking for pthread.h - found
-- Looking for pthread_create
-- Looking for pthread_create - found
-- Found Threads: TRUE
-- Boost version: 1.68.0
-- Found the following Boost libraries:
--   date_time
--   program_options
--   filesystem
--   system
--   regex
--   thread
--   chrono
--   atomic
-- Found PythonLibs: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon=
-oe-linux-musleabi/usr/lib/libpython2.7.so<http://libpython2.7.so> (found s=
uitable version "2.7.16", minimum required is "2.7")
--
-- Checking for module SWIG
-- Found SWIG version 3.0.12.
-- Found SWIG: /usr/bin/swig3.0
--
-- The build system will automatically enable all components.
-- Use -DENABLE_DEFAULT=3DOFF to disable components by default.
--
-- Configuring python-support support...
--   Dependency PYTHONLIBS_FOUND =3D TRUE
--   Dependency SWIG_FOUND =3D TRUE
--   Dependency SWIG_VERSION_CHECK =3D TRUE
--   Enabling python-support support.
--   Override with -DENABLE_PYTHON=3DON/OFF
-- Found PkgConfig: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux=
/usr/bin/pkg-config (found version "0.29.2")
-- Checking for module 'cppunit'
--   Found cppunit, version 1.13.2
-- Found CPPUNIT: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe=
-linux-musleabi/usr/lib/libcppunit.so;dl
--
-- Configuring testing-support support...
--   Dependency CPPUNIT_FOUND =3D TRUE
--   Enabling testing-support support.
--   Override with -DENABLE_TESTING=3DON/OFF
--
-- Configuring VOLK support...
-- Build type set to Release.
-- Extracting version information from git describe...
-- Found PythonInterp: /usr/bin/python2 (found suitable version "2.7.17", m=
inimum required is "2")
--
-- Python checking for python >=3D 2.7
-- Python checking for python >=3D 2.7 - found
--
-- Python checking for mako >=3D 0.4.2
-- Python checking for mako >=3D 0.4.2 - found
--
-- Python checking for six - python 2 and 3 compatibility library
-- Python checking for six - python 2 and 3 compatibility library - found
-- Boost version: 1.68.0
-- Found the following Boost libraries:
--   filesystem
--   system
-- Checking for module 'orc-0.4 > 0.4.11'
--   Found orc-0.4 > 0.4.11, version 0.4.28
-- Found ORC: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-lin=
ux-musleabi/usr/lib/liborc-0.4.so<http://liborc-0.4.so>
-- Found Doxygen: /usr/bin/doxygen (found version "1.8.13") found component=
s:  doxygen missing components:  dot
-- QA Testing is enabled.
--   Modify using: -DENABLE_TESTING=3DON/OFF
-- System profiling is disabled.
--   Modify using: -DENABLE_PROFILING=3DON/OFF
-- Looking for cpuid.h
-- Looking for cpuid.h - not found
-- Looking for intrin.h
-- Looking for intrin.h - not found
-- Looking for fenv.h
-- Looking for fenv.h - found
-- Looking for dlfcn.h
-- Looking for dlfcn.h - found
-- Compiler name: GNU
-- Performing Test HAVE_WERROR_UNUSED_CMD_LINE_ARG
-- Performing Test HAVE_WERROR_UNUSED_CMD_LINE_ARG - Failed
-- Looking for posix_memalign
-- Looking for posix_memalign - found
-- Performing Test have_mfloat_abi_softfp
-- Performing Test have_mfloat_abi_softfp - Failed
-- Performing Test have_mfloat_abi_hard
-- Performing Test have_mfloat_abi_hard - Success
-- Performing Test have_mfpu_neon
-- Performing Test have_mfpu_neon - Success
-- Performing Test have_funsafe_math_optimizations
-- Performing Test have_funsafe_math_optimizations - Success
-- Performing Test have_m32
-- Performing Test have_m32 - Failed
-- Performing Test have_m64
-- Performing Test have_m64 - Failed
-- Performing Test have_m3dnow
-- Performing Test have_m3dnow - Failed
-- Performing Test have_msse4_2
-- Performing Test have_msse4_2 - Failed
-- Performing Test have_mpopcnt
-- Performing Test have_mpopcnt - Failed
-- Performing Test have_mmmx
-- Performing Test have_mmmx - Failed
-- Performing Test have_mfma
-- Performing Test have_mfma - Failed
-- Performing Test have_msse
-- Performing Test have_msse - Failed
-- Performing Test have_msse2
-- Performing Test have_msse2 - Failed
-- Performing Test have_msse3
-- Performing Test have_msse3 - Failed
-- Performing Test have_mssse3
-- Performing Test have_mssse3 - Failed
-- Performing Test have_msse4a
-- Performing Test have_msse4a - Failed
-- Performing Test have_msse4_1
-- Performing Test have_msse4_1 - Failed
-- Performing Test have_mavx
-- Performing Test have_mavx - Failed
-- Performing Test have_mavx2
-- Performing Test have_mavx2 - Failed
-- Architecture is not x86 or x86_64, Overruled arch 3dnow
-- Architecture is not x86 or x86_64, Overruled arch mmx
-- Architecture is not x86 or x86_64, Overruled arch sse
-- Architecture is not x86 or x86_64, Overruled arch sse2
-- Architecture is not x86 or x86_64, Overruled arch sse3
-- Architecture is not x86 or x86_64, Overruled arch ssse3
-- Architecture is not x86 or x86_64, Overruled arch sse4_a
-- Architecture is not x86 or x86_64, Overruled arch sse4_1
-- Architecture is not x86 or x86_64, Overruled arch sse4_2
-- Architecture is not x86 or x86_64, Overruled arch avx
-- Available architectures: generic;hardfp;neon;orc;norc
-- Available machines: generic_orc;neon_hardfp_orc
-- BUILD TYPE =3D RELEASE
-- Base cflags =3D -O3 -DNDEBUG  -O2 -pipe -g -feliminate-unused-debug-type=
s  -std=3Dgnu99 -fvisibility=3Dhidden -Wsign-compare -Wall -Wno-uninitializ=
ed -Wall
-- BUILD INFO ::: generic_orc ::: GNU ::: -O3 -DNDEBUG  -O2 -pipe -g -felim=
inate-unused-debug-types  -std=3Dgnu99 -fvisibility=3Dhidden -Wsign-compare=
 -Wall -Wno-uninitialized -Wall
-- BUILD INFO ::: neon_hardfp_orc ::: GNU ::: -O3 -DNDEBUG  -O2 -pipe -g -f=
eliminate-unused-debug-types  -std=3Dgnu99 -fvisibility=3Dhidden -Wsign-com=
pare -Wall -Wno-uninitialized -Wall -mfpu=3Dneon -funsafe-math-optimization=
s -mfloat-abi=3Dhard
-- Compiler Version: arm-oe-linux-musleabi-gcc (GCC) 8.2.0
Copyright (C) 2018 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
-- ---- Adding ASM files
-- -- Detected neon architecture; enabling ASM
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_16i_max_star_horizontal_16i.s
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32f_s32f_multiply_32f_a_neonasm.s
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32f_x2_add_32f_a_neonasm.s
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32f_x2_add_32f_a_neonpipeline.s
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32f_x2_dot_prod_32f_a_neonasm.s
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32f_x2_dot_prod_32f_a_neonasm_opts.s
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_neonasm.s
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_neonasmvmla.s
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_neonpipeline.s
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_unrollasm.s
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32fc_x2_dot_prod_32fc_a_neonasm.s
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32fc_x2_dot_prod_32fc_a_neonasm_opttests.s
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32fc_x2_multiply_32fc_a_neonasm.s
-- The ASM compiler identification is GNU
-- Found assembler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux=
/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc
-- c flags:  -O2 -pipe -g -feliminate-unused-debug-types  -std=3Dgnu99 -fvi=
sibility=3Dhidden -Wsign-compare -Wall -Wno-uninitialized -Wall;  -march=3D=
armv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 -mmusl --=
sysroot=3D/home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-m=
usleabi
-- asm flags: -mfpu=3Dneon -g
-- Loading version 1.4 into constants...
-- Using install prefix: /usr
--
-- Configuring volk support...
--   Enabling volk support.
--   Override with -DENABLE_VOLK=3DON/OFF
--   Override with -DENABLE_INTERNAL_VOLK=3DON/OFF
-- Found LOG4CPP: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe=
-linux-musleabi/usr/lib/liblog4cpp.so
-- ENABLE_GR_LOG set to ON.
-- HAVE_LOG4CPP set to True.
-- LOG4CPP_LIBRARIES set to /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2=
hf-neon-oe-linux-musleabi/usr/lib/liblog4cpp.so.
-- Found Sphinx: /usr/bin/sphinx-build
--
-- Configuring doxygen support...
--   Dependency DOXYGEN_FOUND =3D YES
--   Disabling doxygen support.
--   Override with -DENABLE_DOXYGEN=3DON/OFF
--
-- Configuring sphinx support...
--   Dependency SPHINX_FOUND =3D TRUE
--   Enabling sphinx support.
--   Override with -DENABLE_SPHINX=3DON/OFF
-- Looking for C++ include netdb.h
-- Looking for C++ include netdb.h - found
-- Looking for C++ include sys/time.h
-- Looking for C++ include sys/time.h - found
-- Looking for C++ include sys/types.h
-- Looking for C++ include sys/types.h - found
-- Looking for C++ include sys/select.h
-- Looking for C++ include sys/select.h - found
-- Looking for C++ include sys/socket.h
-- Looking for C++ include sys/socket.h - found
-- Looking for C++ include io.h
-- Looking for C++ include io.h - not found
-- Looking for C++ include sys/mman.h
-- Looking for C++ include sys/mman.h - found
-- Looking for C++ include sys/ipc.h
-- Looking for C++ include sys/ipc.h - found
-- Looking for C++ include sys/shm.h
-- Looking for C++ include sys/shm.h - found
-- Looking for C++ include signal.h
-- Looking for C++ include signal.h - found
-- Looking for C++ include netinet/in.h
-- Looking for C++ include netinet/in.h - found
-- Looking for C++ include arpa/inet.h
-- Looking for C++ include arpa/inet.h - found
-- Looking for C++ include byteswap.h
-- Looking for C++ include byteswap.h - found
-- Looking for C++ include linux/ppdev.h
-- Looking for C++ include linux/ppdev.h - found
-- Looking for C++ include dev/ppbus/ppi.h
-- Looking for C++ include dev/ppbus/ppi.h - not found
-- Looking for C++ include unistd.h
-- Looking for C++ include unistd.h - found
-- Looking for C++ include malloc.h
-- Looking for C++ include malloc.h - found
-- Performing Test HAVE_SNPRINTF
-- Performing Test HAVE_SNPRINTF - Success
-- Performing Test HAVE_SIGACTION
-- Performing Test HAVE_SIGACTION - Success
-- Performing Test HAVE_SELECT
-- Performing Test HAVE_SELECT - Success
-- Performing Test HAVE_SYSCONF
-- Performing Test HAVE_SYSCONF - Success
-- Performing Test HAVE_GETPAGESIZE
-- Performing Test HAVE_GETPAGESIZE - Success
-- Performing Test HAVE_SSLEEP
-- Performing Test HAVE_SSLEEP - Failed
-- Performing Test HAVE_NANOSLEEP
-- Performing Test HAVE_NANOSLEEP - Success
-- Performing Test HAVE_GETTIMEOFDAY
-- Performing Test HAVE_GETTIMEOFDAY - Success
-- Performing Test HAVE_VALLOC
-- Performing Test HAVE_VALLOC - Success
-- Performing Test HAVE_PTHREAD_SIGMASK
-- Performing Test HAVE_PTHREAD_SIGMASK - Success
-- Performing Test HAVE_CREATEFILEMAPPING
-- Performing Test HAVE_CREATEFILEMAPPING - Failed
-- Performing Test HAVE_SHM_OPEN
-- Performing Test HAVE_SHM_OPEN - Success
-- Performing Test HAVE_SINCOS
-- Performing Test HAVE_SINCOS - Success
-- Performing Test HAVE_SINCOSF
-- Performing Test HAVE_SINCOSF - Success
-- Performing Test HAVE_SINF
-- Performing Test HAVE_SINF - Success
-- Performing Test HAVE_COSF
-- Performing Test HAVE_COSF - Success
-- Performing Test HAVE_MMAP
-- Performing Test HAVE_MMAP - Success
-- Performing Test HAVE_PTHREAD_SETSCHEDPARAM
-- Performing Test HAVE_PTHREAD_SETSCHEDPARAM - Success
-- Performing Test HAVE_SCHED_SETSCHEDULER
-- Performing Test HAVE_SCHED_SETSCHEDULER - Success
--
-- Configuring gnuradio-runtime support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_VOLK =3D ON
--   Dependency PYTHONINTERP_FOUND =3D TRUE
--   Enabling gnuradio-runtime support.
--   Override with -DENABLE_GNURADIO_RUNTIME=3DON/OFF
--
-- Configuring gr-ctrlport support...
--   Dependency Boost_FOUND =3D 1
--   Dependency SWIG_FOUND =3D TRUE
--   Dependency SWIG_VERSION_CHECK =3D TRUE
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Enabling gr-ctrlport support.
--   Override with -DENABLE_GR_CTRLPORT=3DON/OFF
-- Looking for C++ include sys/resource.h
-- Looking for C++ include sys/resource.h - found
-- Loading build date Thu, 02 Apr 2020 20:12:59 into constants...
-- Loading version 3.7.14.0 into constants...
-- Checking for module 'thrift'
--   No package 'thrift' found
-- Binary 'thrift' not found.
-- Looking for C++ include windows.h
-- Looking for C++ include windows.h - not found
-- TRY_SHM_VMCIRCBUF set to ON.
-- Found PythonLibs: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon=
-oe-linux-musleabi/usr/lib/libpython2.7.so<http://libpython2.7.so> (found s=
uitable version "2.7.16", minimum required is "2")
-- Performing Test HAVE_WNO_UNUSED_BUT_SET_VARIABLE
-- Performing Test HAVE_WNO_UNUSED_BUT_SET_VARIABLE - Success
--
-- Configuring gr-blocks support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_VOLK =3D ON
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Enabling gr-blocks support.
--   Override with -DENABLE_GR_BLOCKS=3DON/OFF
--
-- Python checking for python >=3D 2.5
-- Python checking for python >=3D 2.5 - found
--
-- Python checking for Cheetah >=3D 2.0.0
-- Python checking for Cheetah >=3D 2.0.0 - found
--
-- Python checking for lxml >=3D 1.3.6
-- Python checking for lxml >=3D 1.3.6 - found
--
-- Python checking for pygtk >=3D 2.10.0
-- Python checking for pygtk >=3D 2.10.0 - found
--
-- Python checking for numpy
-- Python checking for numpy - found
--
-- Configuring gnuradio-companion support...
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_PYTHON =3D ON
--   Enabling gnuradio-companion support.
--   Override with -DENABLE_GRC=3DON/OFF
-- Checking for module 'gsl >=3D 1.10'
--   Found gsl , version 1.15
-- Found GSL: gsl;gslcblas;m
--
-- Configuring gr-fec support...
--   Dependency ENABLE_VOLK =3D ON
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Enabling gr-fec support.
--   Override with -DENABLE_GR_FEC=3DON/OFF
-- Checking for module 'fftw3f >=3D 3.0'
--   Found fftw3f , version 3.3.8
-- Found FFTW3F: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-=
linux-musleabi/usr/lib/libfftw3f.so
--
-- Configuring gr-fft support...
--   Dependency ENABLE_VOLK =3D ON
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency FFTW3F_FOUND =3D TRUE
--   Enabling gr-fft support.
--   Override with -DENABLE_GR_FFT=3DON/OFF
--
-- Configuring gr-filter support...
--   Dependency ENABLE_VOLK =3D ON
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_FFT =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Enabling gr-filter support.
--   Override with -DENABLE_GR_FILTER=3DON/OFF
--
-- Configuring gr-analog support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_VOLK =3D ON
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency ENABLE_GR_FFT =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Enabling gr-analog support.
--   Override with -DENABLE_GR_ANALOG=3DON/OFF
--
-- Configuring gr-digital support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_VOLK =3D ON
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_FFT =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Enabling gr-digital support.
--   Override with -DENABLE_GR_DIGITAL=3DON/OFF
--
-- Configuring gr-dtv support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Dependency ENABLE_GR_FEC =3D ON
--   Dependency ENABLE_VOLK =3D ON
--   Disabling gr-dtv support.
--   Override with -DENABLE_GR_DTV=3DON/OFF
--
-- Configuring gr-atsc support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_FFT =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency ENABLE_GR_FEC =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Disabling gr-atsc support.
--   Override with -DENABLE_GR_ATSC=3DON/OFF
--
-- Configuring gr-audio support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Enabling gr-audio support.
--   Override with -DENABLE_GR_AUDIO=3DON/OFF
-- Checking for module 'alsa'
--   Found alsa, version 1.1.6
-- Found ALSA 1.1.6
-- Checking for module 'jack'
--   No package 'jack' found
-- Looking for C++ include AudioUnit/AudioUnit.h
-- Looking for C++ include AudioUnit/AudioUnit.h - not found
-- Looking for C++ include AudioToolbox/AudioToolbox.h
-- Looking for C++ include AudioToolbox/AudioToolbox.h - not found
-- Checking for module 'portaudio-2.0'
--   No package 'portaudio-2.0' found
-- Checking for module 'comedilib'
--   No package 'comedilib' found
--
-- Configuring gr-comedi support...
--   Dependency COMEDI_FOUND =3D
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Disabling gr-comedi support.
--   Override with -DENABLE_GR_COMEDI=3DON/OFF
--
-- Configuring gr-channels support...
--   Dependency ENABLE_VOLK =3D ON
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency ENABLE_GR_FFT =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Enabling gr-channels support.
--   Override with -DENABLE_GR_CHANNELS=3DON/OFF
--
-- Configuring gr-noaa support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Enabling gr-noaa support.
--   Override with -DENABLE_GR_NOAA=3DON/OFF
--
-- Configuring gr-pager support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Enabling gr-pager support.
--   Override with -DENABLE_GR_PAGER=3DON/OFF
CMake Warning at /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/us=
r/share/cmake-3.12/Modules/FindQt4.cmake:617 (message):
  /usr/bin/qmake reported QT_INSTALL_LIBS as "/usr/lib/x86_64-linux-gnu" bu=
t
  QtCore could not be found there.  Qt is NOT installed correctly for the
  target build environment.
Call Stack (most recent call first):
  gr-qtgui/CMakeLists.txt:25 (find_package)


--
-- Python checking for PyQt4
-- Python checking for PyQt4 - found
--
-- Configuring gr-qtgui support...
--   Dependency Boost_FOUND =3D 1
--   Dependency QT4_FOUND =3D
--   Dependency QWT_FOUND =3D FALSE
--   Dependency ENABLE_VOLK =3D ON
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_FFT =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Dependency PYTHONLIBS_FOUND =3D TRUE
--   Disabling gr-qtgui support.
--   Override with -DENABLE_GR_QTGUI=3DON/OFF
--
-- Configuring gr-trellis support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency ENABLE_GR_DIGITAL =3D ON
--   Enabling gr-trellis support.
--   Override with -DENABLE_GR_TRELLIS=3DON/OFF
-- Found UHD: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-lin=
ux-musleabi/usr/lib/libuhd.so
--
-- Configuring gr-uhd support...
--   Dependency Boost_FOUND =3D 1
--   Dependency UHD_FOUND =3D TRUE
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Enabling gr-uhd support.
--   Override with -DENABLE_GR_UHD=3DON/OFF
--   UHD Version: 3.15.0.0-0-gaea0e2de
--
-- Configuring gr-utils support...
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_PYTHON =3D ON
--   Enabling gr-utils support.
--   Override with -DENABLE_GR_UTILS=3DON/OFF
-- Could NOT find SDL (missing: SDL_LIBRARY SDL_INCLUDE_DIR)
--
-- Configuring gr-video-sdl support...
--   Dependency SDL_FOUND =3D FALSE
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Disabling gr-video-sdl support.
--   Override with -DENABLE_GR_VIDEO_SDL=3DON/OFF
--
-- Configuring gr-vocoder support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_FFT =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Disabling gr-vocoder support.
--   Override with -DENABLE_GR_VOCODER=3DON/OFF
-- Checking for module 'libusb-1.0'
--   Found libusb-1.0, version 1.0.22
-- Found libusb-1.0: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon=
-oe-linux-musleabi/usr/include/libusb-1.0, /home/sdr/sdr/e310/rfnoc/oe/sysr=
oots/cortexa9t2hf-neon-oe-linux-musleabi/lib/libusb-1.0.so<http://libusb-1.=
0.so>
--
-- Configuring gr-fcd support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency ENABLE_GR_AUDIO =3D ON
--   Dependency LIBUSB_FOUND =3D TRUE
--   Enabling gr-fcd support.
--   Override with -DENABLE_GR_FCD=3DON/OFF
--
-- Configuring gr-wavelet support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Dependency GSL_FOUND =3D TRUE
--   Enabling gr-wavelet support.
--   Override with -DENABLE_GR_WAVELET=3DON/OFF
--
-- Python checking for wx >=3D 2.8
-- Python checking for wx >=3D 2.8 - found
--
-- Python checking for numpy
-- Python checking for numpy - found
--
-- Configuring gr-wxgui support...
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_FFT =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Dependency ENABLE_PYTHON =3D ON
--   Disabling gr-wxgui support.
--   Override with -DENABLE_GR_WXGUI=3DON/OFF
-- Checking for module 'libzmq'
--   Found libzmq, version 4.2.5
-- Found ZEROMQ: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-=
linux-musleabi/usr/lib/libzmq.so
--
-- Configuring gr-zeromq support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ZEROMQ_FOUND =3D TRUE
--   Enabling gr-zeromq support.
--   Override with -DENABLE_GR_ZEROMQ=3DON/OFF
--
-- ######################################################
-- # Gnuradio enabled components
-- ######################################################
--   * python-support
--   * testing-support
--   * volk
--   * sphinx
--   * gnuradio-runtime
--   * gr-ctrlport
--   * gr-blocks
--   * gnuradio-companion
--   * gr-fec
--   * gr-fft
--   * gr-filter
--   * gr-analog
--   * gr-digital
--   * gr-audio
--   * * alsa
--   * * oss
--   * gr-channels
--   * gr-noaa
--   * gr-pager
--   * gr-trellis
--   * gr-uhd
--   * gr-utils
--   * gr-fcd
--   * gr-wavelet
--   * gr-zeromq
--
-- ######################################################
-- # Gnuradio disabled components
-- ######################################################
--   * doxygen
--   * gr-dtv
--   * gr-atsc
--   * gr-comedi
--   * gr-qtgui
--   * gr-video-sdl
--   * gr-vocoder
--   * gr-wxgui
--
-- Using install prefix: /usr
-- Building for version: 3.7.14.0 / 3.7.14.0
-- Configuring done
-- Generating done
-- Build files have been written to: /home/sdr/sdr/e310/rfnoc/src/gnuradio/=
build-arm






_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_DM6PR19MB266898D0162257D51B105609A48A0DM6PR19MB2668namp_
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
Jonathon,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I added the cmake flag you suggested, and my build completed.&nbsp; I don't=
 have my E310 at the moment, so I can't test too much more to test it at th=
e moment.&nbsp; I suppose the fact it built is a very good sign.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks!</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<p><br>
</p>
</div>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Jonathon Pendlum &l=
t;jonathon.pendlum@ettus.com&gt;<br>
<b>Sent:</b> Tuesday, May 26, 2020 2:07 AM<br>
<b>To:</b> Jeff S &lt;e070832@hotmail.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;; R=
on Economos &lt;w6rz@comcast.net&gt;<br>
<b>Subject:</b> Re: [USRP-users] E310 Cross-compiling UHD / GNU Radio (volk=
?)</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Jeff,
<div><br>
</div>
<div>I'm looking into this cross compiling issue. Using this flag with cmak=
e: -DCMAKE_ASM_COMPILER_ARG1:STRING=3D&quot;-mcpu=3Dcortex-a9&quot; seems t=
o work as a temporary workaround for the volk error.</div>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Apr 3, 2020 at 8:31 AM Jeff=
 S via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<span>$ which gnuradio-config-info <br>
</span>
<div>/home/user/sdr/e310/rfnoc/installs/bin/gnuradio-config-info<br>
</div>
<span>$ gnuradio-config-info -v</span><br>
</div>
<div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
3.7.14.0</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I used maint-3.7.&nbsp; This is what I did for the non-ARM build:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px; margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<span>$ git clone --recursive <a href=3D"https://github.com/gnuradio/gnurad=
io" target=3D"_blank">
https://github.com/gnuradio/gnuradio</a><br>
</span>
<div>$ cd ~/sdr/e310/rfnoc/src/gnuradio/<br>
</div>
<div>$ git checkout maint-3.7<br>
</div>
<span>$ git submodule update --init --recursive</span><br>
</div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
This is from the directions located at the first build of GNU Radio located=
 in the application note:
<a href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Bui=
lding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Building_GNU_Radio" id=
=3D"x_gmail-m_-586882655401436744LPNoLP577864" target=3D"_blank">
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC=
_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Building_GNU_Radio</a>.<br>
</div>
<br>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Jeff<br>
</div>
</div>
<div id=3D"x_gmail-m_-586882655401436744appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_-586882655401436744divRplyFwdMsg" dir=3D"ltr"><font st=
yle=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fr=
om:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com=
" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
 on behalf of Ron Economos via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, April 3, 2020 7:17 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] E310 Cross-compiling UHD / GNU Radio (volk=
?)</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:rgb(255,255,255)">
<p style=3D"margin-top:0px; margin-bottom:0px">What version of GNU Radio ar=
e you trying to build? If it's 3.8 or 3.9, you need a newer version of VOLK=
.<br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">Ron</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<div>On 4/3/20 05:10, Jeff S wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Ron,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I re-created my build-arm directory and tried adding this with the same res=
ults.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Philip, in a previous email, had me looking through the Volk issues, and ma=
ybe there is one related that is OPEN:&nbsp; &quot;Missing NEON Implementat=
ions #243&quot; (<a href=3D"https://github.com/gnuradio/volk/issues/243" id=
=3D"x_gmail-m_-586882655401436744LPNoLP260079" target=3D"_blank">https://gi=
thub.com/gnuradio/volk/issues/243</a>).&nbsp;
 I am still trying to understand it to see if there's something I can do re=
lated to it.&nbsp; Just have been trying to follow the Ettus application no=
tes.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Jeff<br>
</div>
</div>
<br>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_-586882655401436744x_divRplyFwdMsg" dir=3D"ltr"><font =
style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>=
From:</b> USRP-users
<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" target=3D"_blank">&lt=
;usrp-users-bounces@lists.ettus.com&gt;</a> on behalf of Ron Economos via U=
SRP-users
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">&lt;usrp-us=
ers@lists.ettus.com&gt;</a><br>
<b>Sent:</b> Thursday, April 2, 2020 6:59 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a>
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">&lt;usrp-us=
ers@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] E310 Cross-compiling UHD / GNU Radio (volk=
?)</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:rgb(255,255,255)">
<p style=3D"margin-top:0px; margin-bottom:0px">Try adding this to your CMak=
e command line.</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">-DCMAKE_CXX_FLAGS:STRING=3D&=
quot;-march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a9&qu=
ot; -DCMAKE_C_FLAGS:STRING=3D&quot;-march=3Darmv7-a -mfloat-abi=3Dhard -mfp=
u=3Dneon -mtune=3Dcortex-a9&quot; -DCMAKE_ASM_FLAGS:STRING=3D&quot;-march=
=3Darmv7-a
 -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a9 -g&quot;</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">Ron</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<div>On 4/2/20 13:45, Jeff S via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I had a problem with the initial build environment when setting up my envir=
onment for the E310.&nbsp; Up to now, I have been able to get the UHD cross=
-compiled, a new image for the microSD card built, and checked up to the
<b># uhd_usrp_probe</b> step on the E310 (from <a href=3D"https://kb.ettus.=
com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_=
/_gr-ettus_from_Source" id=3D"x_gmail-m_-586882655401436744LPNoLP650941" ta=
rget=3D"_blank">
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC=
_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a>) with success.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I am now at the point where I am <b>Cross-Compiling GNU Radio</b>.&nbsp; I =
have been using
<i>e3xx_e310_sdk_default-v3.15.0.0.zip</i>, and at the point where I am bui=
lding GNU Radio, I am getting an error:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<blockquote style=3D"margin-top:0px; margin-bottom:0px">
<pre><font color=3D"#AD7FA8"><b>Scanning dependencies of target volk_obj</b=
></font>=0A=
[  3%] <font color=3D"#4E9A06">Building ASM object volk/lib/CMakeFiles/volk=
_obj.dir/__/kernels/volk/asm/neon/volk_16i_max_star_horizontal_16i.s.o</fon=
t>=0A=
/home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_m=
ax_star_horizontal_16i.s: Assembler messages:=0A=
/home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_m=
ax_star_horizontal_16i.s:9: Error: selected processor does not support `pld=
 [r1:128]' in ARM mode=0A=
/home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_m=
ax_star_horizontal_16i.s:20: Error: selected processor does not support `pl=
d [r4:128]' in ARM mode=0A=
/home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_m=
ax_star_horizontal_16i.s:44: Error: selected processor does not support `sx=
th r6,r6' in ARM mode=0A=
volk/lib/CMakeFiles/volk_obj.dir/build.make:1572: recipe for target 'volk/l=
ib/CMakeFiles/volk_obj.dir/__/kernels/volk/asm/neon/volk_16i_max_star_horiz=
ontal_16i.s.o' failed=0A=
make[2]: *** [volk/lib/CMakeFiles/volk_obj.dir/__/kernels/volk/asm/neon/vol=
k_16i_max_star_horizontal_16i.s.o] Error 1=0A=
CMakeFiles/Makefile2:220: recipe for target 'volk/lib/CMakeFiles/volk_obj.d=
ir/all' failed=0A=
make[1]: *** [volk/lib/CMakeFiles/volk_obj.dir/all] Error 2=0A=
Makefile:162: recipe for target 'all' failed=0A=
make: *** [all] Error 2=0A=
</pre>
</blockquote>
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I have searched unsuccessfully for an answer to this one, and figure it's s=
ome sort of configuration error that I missed.&nbsp; The commands I am usin=
g are:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px; margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ cd ~/sdr/e310/rfnoc/oe/<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ source ./environment-setup-cortexa9t2hf-neon-oe-linux-musleabi</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ cd ~/sdr/e310/rfnoc/src/gnuradio</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ mkdir build-arm<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ cd build-arm/<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ cmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=3D~/sdr/e310/rfnoc/src/gnuradio/cma=
ke/Toolchains/oe-sdk_cross.cmake -DENABLE_GR_WXGUI=3DOFF -DENABLE_GR_VOCODE=
R=3DOFF -DENABLE_GR_DTV=3DOFF -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=3DOFF=
 -DCMAKE_INSTALL_PREFIX=3D/usr ../<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
$ make</div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Any obvious issues?&nbsp; Could there be something cached from the earlier =
build in the directions?&nbsp; I'll post the cmake output below my signatur=
e to keep it out of the way.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Jeff</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<pre>$ cmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=3D~/sdr/e310/rfnoc/src/gnuradi=
o/cmake/Toolchains/oe-sdk_cross.cmake -DENABLE_GR_WXGUI=3DOFF -DENABLE_GR_V=
OCODER=3DOFF -DENABLE_GR_DTV=3DOFF -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=
=3DOFF -DCMAKE_INSTALL_PREFIX=3D/usr ../=0A=
-- The CXX compiler identification is GNU 8.2.0=0A=
-- The C compiler identification is GNU 8.2.0=0A=
-- Check for working CXX compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86=
_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-g&#43;&=
#43;=0A=
-- Check for working CXX compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86=
_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-g&#43;&=
#43; -- works=0A=
-- Detecting CXX compiler ABI info=0A=
-- Detecting CXX compiler ABI info - done=0A=
-- Detecting CXX compile features=0A=
-- Detecting CXX compile features - done=0A=
-- Check for working C compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_6=
4-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc=0A=
-- Check for working C compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_6=
4-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc -- wo=
rks=0A=
-- Detecting C compiler ABI info=0A=
-- Detecting C compiler ABI info - done=0A=
-- Detecting C compile features=0A=
-- Detecting C compile features - done=0A=
-- Build type not specified: defaulting to release.=0A=
-- Build type set to Release.=0A=
-- Found Git: /usr/bin/git  =0A=
-- Extracting version information from git describe...=0A=
-- Performing Test HAVE_VISIBILITY_HIDDEN=0A=
-- Performing Test HAVE_VISIBILITY_HIDDEN - Success=0A=
-- Performing Test HAVE_WARN_SIGN_COMPARE=0A=
-- Performing Test HAVE_WARN_SIGN_COMPARE - Success=0A=
-- Performing Test HAVE_WARN_ALL=0A=
-- Performing Test HAVE_WARN_ALL - Success=0A=
-- Performing Test HAVE_WARN_NO_UNINITIALIZED=0A=
-- Performing Test HAVE_WARN_NO_UNINITIALIZED - Success=0A=
-- Compiler Version: arm-oe-linux-musleabi-gcc (GCC) 8.2.0=0A=
Copyright (C) 2018 Free Software Foundation, Inc.=0A=
This is free software; see the source for copying conditions.  There is NO=
=0A=
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=
=0A=
-- Compiler Flags: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/=
usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc:::-O3 -DNDEBUG  -O2=
 -pipe -g -feliminate-unused-debug-types  -std=3Dgnu99 -fvisibility=3Dhidde=
n -Wsign-compare -Wall -Wno-uninitialized=0A=
/home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linu=
x-musleabi/arm-oe-linux-musleabi-g&#43;&#43;:::-O3 -DNDEBUG  -O2 -pipe -g -=
feliminate-unused-debug-types  -fvisibility=3Dhidden -Wsign-compare -Wall -=
Wno-uninitialized=0A=
-- ADDING PERF COUNTERS=0A=
-- Building Static Libraries: OFF=0A=
-- Looking for pthread.h=0A=
-- Looking for pthread.h - found=0A=
-- Looking for pthread_create=0A=
-- Looking for pthread_create - found=0A=
-- Found Threads: TRUE  =0A=
-- Boost version: 1.68.0=0A=
-- Found the following Boost libraries:=0A=
--   date_time=0A=
--   program_options=0A=
--   filesystem=0A=
--   system=0A=
--   regex=0A=
--   thread=0A=
--   chrono=0A=
--   atomic=0A=
-- Found PythonLibs: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon=
-oe-linux-musleabi/usr/lib/<a href=3D"http://libpython2.7.so" target=3D"_bl=
ank">libpython2.7.so</a> (found suitable version &quot;2.7.16&quot;, minimu=
m required is &quot;2.7&quot;) =0A=
-- =0A=
-- Checking for module SWIG=0A=
-- Found SWIG version 3.0.12.=0A=
-- Found SWIG: /usr/bin/swig3.0  =0A=
-- =0A=
-- The build system will automatically enable all components.=0A=
-- Use -DENABLE_DEFAULT=3DOFF to disable components by default.=0A=
-- =0A=
-- Configuring python-support support...=0A=
--   Dependency PYTHONLIBS_FOUND =3D TRUE=0A=
--   Dependency SWIG_FOUND =3D TRUE=0A=
--   Dependency SWIG_VERSION_CHECK =3D TRUE=0A=
--   Enabling python-support support.=0A=
--   Override with -DENABLE_PYTHON=3DON/OFF=0A=
-- Found PkgConfig: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux=
/usr/bin/pkg-config (found version &quot;0.29.2&quot;) =0A=
-- Checking for module 'cppunit'=0A=
--   Found cppunit, version 1.13.2=0A=
-- Found CPPUNIT: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe=
-linux-musleabi/usr/lib/libcppunit.so;dl  =0A=
-- =0A=
-- Configuring testing-support support...=0A=
--   Dependency CPPUNIT_FOUND =3D TRUE=0A=
--   Enabling testing-support support.=0A=
--   Override with -DENABLE_TESTING=3DON/OFF=0A=
-- =0A=
-- Configuring VOLK support...=0A=
-- Build type set to Release.=0A=
-- Extracting version information from git describe...=0A=
-- Found PythonInterp: /usr/bin/python2 (found suitable version &quot;2.7.1=
7&quot;, minimum required is &quot;2&quot;) =0A=
-- =0A=
-- Python checking for python &gt;=3D 2.7=0A=
-- Python checking for python &gt;=3D 2.7 - found=0A=
-- =0A=
-- Python checking for mako &gt;=3D 0.4.2=0A=
-- Python checking for mako &gt;=3D 0.4.2 - found=0A=
-- =0A=
-- Python checking for six - python 2 and 3 compatibility library=0A=
-- Python checking for six - python 2 and 3 compatibility library - found=
=0A=
-- Boost version: 1.68.0=0A=
-- Found the following Boost libraries:=0A=
--   filesystem=0A=
--   system=0A=
-- Checking for module 'orc-0.4 &gt; 0.4.11'=0A=
--   Found orc-0.4 &gt; 0.4.11, version 0.4.28=0A=
-- Found ORC: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-lin=
ux-musleabi/usr/lib/<a href=3D"http://liborc-0.4.so" target=3D"_blank">libo=
rc-0.4.so</a>  =0A=
-- Found Doxygen: /usr/bin/doxygen (found version &quot;1.8.13&quot;) found=
 components:  doxygen missing components:  dot=0A=
-- QA Testing is enabled.=0A=
--   Modify using: -DENABLE_TESTING=3DON/OFF=0A=
-- System profiling is disabled.=0A=
--   Modify using: -DENABLE_PROFILING=3DON/OFF=0A=
-- Looking for cpuid.h=0A=
-- Looking for cpuid.h - not found=0A=
-- Looking for intrin.h=0A=
-- Looking for intrin.h - not found=0A=
-- Looking for fenv.h=0A=
-- Looking for fenv.h - found=0A=
-- Looking for dlfcn.h=0A=
-- Looking for dlfcn.h - found=0A=
-- Compiler name: GNU=0A=
-- Performing Test HAVE_WERROR_UNUSED_CMD_LINE_ARG=0A=
-- Performing Test HAVE_WERROR_UNUSED_CMD_LINE_ARG - Failed=0A=
-- Looking for posix_memalign=0A=
-- Looking for posix_memalign - found=0A=
-- Performing Test have_mfloat_abi_softfp=0A=
-- Performing Test have_mfloat_abi_softfp - Failed=0A=
-- Performing Test have_mfloat_abi_hard=0A=
-- Performing Test have_mfloat_abi_hard - Success=0A=
-- Performing Test have_mfpu_neon=0A=
-- Performing Test have_mfpu_neon - Success=0A=
-- Performing Test have_funsafe_math_optimizations=0A=
-- Performing Test have_funsafe_math_optimizations - Success=0A=
-- Performing Test have_m32=0A=
-- Performing Test have_m32 - Failed=0A=
-- Performing Test have_m64=0A=
-- Performing Test have_m64 - Failed=0A=
-- Performing Test have_m3dnow=0A=
-- Performing Test have_m3dnow - Failed=0A=
-- Performing Test have_msse4_2=0A=
-- Performing Test have_msse4_2 - Failed=0A=
-- Performing Test have_mpopcnt=0A=
-- Performing Test have_mpopcnt - Failed=0A=
-- Performing Test have_mmmx=0A=
-- Performing Test have_mmmx - Failed=0A=
-- Performing Test have_mfma=0A=
-- Performing Test have_mfma - Failed=0A=
-- Performing Test have_msse=0A=
-- Performing Test have_msse - Failed=0A=
-- Performing Test have_msse2=0A=
-- Performing Test have_msse2 - Failed=0A=
-- Performing Test have_msse3=0A=
-- Performing Test have_msse3 - Failed=0A=
-- Performing Test have_mssse3=0A=
-- Performing Test have_mssse3 - Failed=0A=
-- Performing Test have_msse4a=0A=
-- Performing Test have_msse4a - Failed=0A=
-- Performing Test have_msse4_1=0A=
-- Performing Test have_msse4_1 - Failed=0A=
-- Performing Test have_mavx=0A=
-- Performing Test have_mavx - Failed=0A=
-- Performing Test have_mavx2=0A=
-- Performing Test have_mavx2 - Failed=0A=
-- Architecture is not x86 or x86_64, Overruled arch 3dnow=0A=
-- Architecture is not x86 or x86_64, Overruled arch mmx=0A=
-- Architecture is not x86 or x86_64, Overruled arch sse=0A=
-- Architecture is not x86 or x86_64, Overruled arch sse2=0A=
-- Architecture is not x86 or x86_64, Overruled arch sse3=0A=
-- Architecture is not x86 or x86_64, Overruled arch ssse3=0A=
-- Architecture is not x86 or x86_64, Overruled arch sse4_a=0A=
-- Architecture is not x86 or x86_64, Overruled arch sse4_1=0A=
-- Architecture is not x86 or x86_64, Overruled arch sse4_2=0A=
-- Architecture is not x86 or x86_64, Overruled arch avx=0A=
-- Available architectures: generic;hardfp;neon;orc;norc=0A=
-- Available machines: generic_orc;neon_hardfp_orc=0A=
-- BUILD TYPE =3D RELEASE=0A=
-- Base cflags =3D -O3 -DNDEBUG  -O2 -pipe -g -feliminate-unused-debug-type=
s  -std=3Dgnu99 -fvisibility=3Dhidden -Wsign-compare -Wall -Wno-uninitializ=
ed -Wall=0A=
-- BUILD INFO ::: generic_orc ::: GNU ::: -O3 -DNDEBUG  -O2 -pipe -g -felim=
inate-unused-debug-types  -std=3Dgnu99 -fvisibility=3Dhidden -Wsign-compare=
 -Wall -Wno-uninitialized -Wall =0A=
-- BUILD INFO ::: neon_hardfp_orc ::: GNU ::: -O3 -DNDEBUG  -O2 -pipe -g -f=
eliminate-unused-debug-types  -std=3Dgnu99 -fvisibility=3Dhidden -Wsign-com=
pare -Wall -Wno-uninitialized -Wall -mfpu=3Dneon -funsafe-math-optimization=
s -mfloat-abi=3Dhard=0A=
-- Compiler Version: arm-oe-linux-musleabi-gcc (GCC) 8.2.0=0A=
Copyright (C) 2018 Free Software Foundation, Inc.=0A=
This is free software; see the source for copying conditions.  There is NO=
=0A=
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=
=0A=
-- ---- Adding ASM files=0A=
-- -- Detected neon architecture; enabling ASM=0A=
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_16i_max_star_horizontal_16i.s=0A=
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32f_s32f_multiply_32f_a_neonasm.s=0A=
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32f_x2_add_32f_a_neonasm.s=0A=
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32f_x2_add_32f_a_neonpipeline.s=0A=
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32f_x2_dot_prod_32f_a_neonasm.s=0A=
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32f_x2_dot_prod_32f_a_neonasm_opts.s=0A=
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_neonasm.s=0A=
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_neonasmvmla.s=0A=
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_neonpipeline.s=0A=
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_unrollasm.s=0A=
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32fc_x2_dot_prod_32fc_a_neonasm.s=0A=
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32fc_x2_dot_prod_32fc_a_neonasm_opttests.s=0A=
-- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/v=
olk/asm/neon/volk_32fc_x2_multiply_32fc_a_neonasm.s=0A=
-- The ASM compiler identification is GNU=0A=
-- Found assembler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux=
/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc=0A=
-- c flags:  -O2 -pipe -g -feliminate-unused-debug-types  -std=3Dgnu99 -fvi=
sibility=3Dhidden -Wsign-compare -Wall -Wno-uninitialized -Wall;  -march=3D=
armv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 -mmusl --=
sysroot=3D/home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-m=
usleabi=0A=
-- asm flags: -mfpu=3Dneon -g=0A=
-- Loading version 1.4 into constants...=0A=
-- Using install prefix: /usr=0A=
-- =0A=
-- Configuring volk support...=0A=
--   Enabling volk support.=0A=
--   Override with -DENABLE_VOLK=3DON/OFF=0A=
--   Override with -DENABLE_INTERNAL_VOLK=3DON/OFF=0A=
-- Found LOG4CPP: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe=
-linux-musleabi/usr/lib/liblog4cpp.so=0A=
-- ENABLE_GR_LOG set to ON.=0A=
-- HAVE_LOG4CPP set to True.=0A=
-- LOG4CPP_LIBRARIES set to /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2=
hf-neon-oe-linux-musleabi/usr/lib/liblog4cpp.so.=0A=
-- Found Sphinx: /usr/bin/sphinx-build  =0A=
-- =0A=
-- Configuring doxygen support...=0A=
--   Dependency DOXYGEN_FOUND =3D YES=0A=
--   Disabling doxygen support.=0A=
--   Override with -DENABLE_DOXYGEN=3DON/OFF=0A=
-- =0A=
-- Configuring sphinx support...=0A=
--   Dependency SPHINX_FOUND =3D TRUE=0A=
--   Enabling sphinx support.=0A=
--   Override with -DENABLE_SPHINX=3DON/OFF=0A=
-- Looking for C&#43;&#43; include netdb.h=0A=
-- Looking for C&#43;&#43; include netdb.h - found=0A=
-- Looking for C&#43;&#43; include sys/time.h=0A=
-- Looking for C&#43;&#43; include sys/time.h - found=0A=
-- Looking for C&#43;&#43; include sys/types.h=0A=
-- Looking for C&#43;&#43; include sys/types.h - found=0A=
-- Looking for C&#43;&#43; include sys/select.h=0A=
-- Looking for C&#43;&#43; include sys/select.h - found=0A=
-- Looking for C&#43;&#43; include sys/socket.h=0A=
-- Looking for C&#43;&#43; include sys/socket.h - found=0A=
-- Looking for C&#43;&#43; include io.h=0A=
-- Looking for C&#43;&#43; include io.h - not found=0A=
-- Looking for C&#43;&#43; include sys/mman.h=0A=
-- Looking for C&#43;&#43; include sys/mman.h - found=0A=
-- Looking for C&#43;&#43; include sys/ipc.h=0A=
-- Looking for C&#43;&#43; include sys/ipc.h - found=0A=
-- Looking for C&#43;&#43; include sys/shm.h=0A=
-- Looking for C&#43;&#43; include sys/shm.h - found=0A=
-- Looking for C&#43;&#43; include signal.h=0A=
-- Looking for C&#43;&#43; include signal.h - found=0A=
-- Looking for C&#43;&#43; include netinet/in.h=0A=
-- Looking for C&#43;&#43; include netinet/in.h - found=0A=
-- Looking for C&#43;&#43; include arpa/inet.h=0A=
-- Looking for C&#43;&#43; include arpa/inet.h - found=0A=
-- Looking for C&#43;&#43; include byteswap.h=0A=
-- Looking for C&#43;&#43; include byteswap.h - found=0A=
-- Looking for C&#43;&#43; include linux/ppdev.h=0A=
-- Looking for C&#43;&#43; include linux/ppdev.h - found=0A=
-- Looking for C&#43;&#43; include dev/ppbus/ppi.h=0A=
-- Looking for C&#43;&#43; include dev/ppbus/ppi.h - not found=0A=
-- Looking for C&#43;&#43; include unistd.h=0A=
-- Looking for C&#43;&#43; include unistd.h - found=0A=
-- Looking for C&#43;&#43; include malloc.h=0A=
-- Looking for C&#43;&#43; include malloc.h - found=0A=
-- Performing Test HAVE_SNPRINTF=0A=
-- Performing Test HAVE_SNPRINTF - Success=0A=
-- Performing Test HAVE_SIGACTION=0A=
-- Performing Test HAVE_SIGACTION - Success=0A=
-- Performing Test HAVE_SELECT=0A=
-- Performing Test HAVE_SELECT - Success=0A=
-- Performing Test HAVE_SYSCONF=0A=
-- Performing Test HAVE_SYSCONF - Success=0A=
-- Performing Test HAVE_GETPAGESIZE=0A=
-- Performing Test HAVE_GETPAGESIZE - Success=0A=
-- Performing Test HAVE_SSLEEP=0A=
-- Performing Test HAVE_SSLEEP - Failed=0A=
-- Performing Test HAVE_NANOSLEEP=0A=
-- Performing Test HAVE_NANOSLEEP - Success=0A=
-- Performing Test HAVE_GETTIMEOFDAY=0A=
-- Performing Test HAVE_GETTIMEOFDAY - Success=0A=
-- Performing Test HAVE_VALLOC=0A=
-- Performing Test HAVE_VALLOC - Success=0A=
-- Performing Test HAVE_PTHREAD_SIGMASK=0A=
-- Performing Test HAVE_PTHREAD_SIGMASK - Success=0A=
-- Performing Test HAVE_CREATEFILEMAPPING=0A=
-- Performing Test HAVE_CREATEFILEMAPPING - Failed=0A=
-- Performing Test HAVE_SHM_OPEN=0A=
-- Performing Test HAVE_SHM_OPEN - Success=0A=
-- Performing Test HAVE_SINCOS=0A=
-- Performing Test HAVE_SINCOS - Success=0A=
-- Performing Test HAVE_SINCOSF=0A=
-- Performing Test HAVE_SINCOSF - Success=0A=
-- Performing Test HAVE_SINF=0A=
-- Performing Test HAVE_SINF - Success=0A=
-- Performing Test HAVE_COSF=0A=
-- Performing Test HAVE_COSF - Success=0A=
-- Performing Test HAVE_MMAP=0A=
-- Performing Test HAVE_MMAP - Success=0A=
-- Performing Test HAVE_PTHREAD_SETSCHEDPARAM=0A=
-- Performing Test HAVE_PTHREAD_SETSCHEDPARAM - Success=0A=
-- Performing Test HAVE_SCHED_SETSCHEDULER=0A=
-- Performing Test HAVE_SCHED_SETSCHEDULER - Success=0A=
-- =0A=
-- Configuring gnuradio-runtime support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_VOLK =3D ON=0A=
--   Dependency PYTHONINTERP_FOUND =3D TRUE=0A=
--   Enabling gnuradio-runtime support.=0A=
--   Override with -DENABLE_GNURADIO_RUNTIME=3DON/OFF=0A=
-- =0A=
-- Configuring gr-ctrlport support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency SWIG_FOUND =3D TRUE=0A=
--   Dependency SWIG_VERSION_CHECK =3D TRUE=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Enabling gr-ctrlport support.=0A=
--   Override with -DENABLE_GR_CTRLPORT=3DON/OFF=0A=
-- Looking for C&#43;&#43; include sys/resource.h=0A=
-- Looking for C&#43;&#43; include sys/resource.h - found=0A=
-- Loading build date Thu, 02 Apr 2020 20:12:59 into constants...=0A=
-- Loading version 3.7.14.0 into constants...=0A=
-- Checking for module 'thrift'=0A=
--   No package 'thrift' found=0A=
-- Binary 'thrift' not found.=0A=
-- Looking for C&#43;&#43; include windows.h=0A=
-- Looking for C&#43;&#43; include windows.h - not found=0A=
-- TRY_SHM_VMCIRCBUF set to ON.=0A=
-- Found PythonLibs: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon=
-oe-linux-musleabi/usr/lib/<a href=3D"http://libpython2.7.so" target=3D"_bl=
ank">libpython2.7.so</a> (found suitable version &quot;2.7.16&quot;, minimu=
m required is &quot;2&quot;) =0A=
-- Performing Test HAVE_WNO_UNUSED_BUT_SET_VARIABLE=0A=
-- Performing Test HAVE_WNO_UNUSED_BUT_SET_VARIABLE - Success=0A=
-- =0A=
-- Configuring gr-blocks support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_VOLK =3D ON=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Enabling gr-blocks support.=0A=
--   Override with -DENABLE_GR_BLOCKS=3DON/OFF=0A=
-- =0A=
-- Python checking for python &gt;=3D 2.5=0A=
-- Python checking for python &gt;=3D 2.5 - found=0A=
-- =0A=
-- Python checking for Cheetah &gt;=3D 2.0.0=0A=
-- Python checking for Cheetah &gt;=3D 2.0.0 - found=0A=
-- =0A=
-- Python checking for lxml &gt;=3D 1.3.6=0A=
-- Python checking for lxml &gt;=3D 1.3.6 - found=0A=
-- =0A=
-- Python checking for pygtk &gt;=3D 2.10.0=0A=
-- Python checking for pygtk &gt;=3D 2.10.0 - found=0A=
-- =0A=
-- Python checking for numpy=0A=
-- Python checking for numpy - found=0A=
-- =0A=
-- Configuring gnuradio-companion support...=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_PYTHON =3D ON=0A=
--   Enabling gnuradio-companion support.=0A=
--   Override with -DENABLE_GRC=3DON/OFF=0A=
-- Checking for module 'gsl &gt;=3D 1.10'=0A=
--   Found gsl , version 1.15=0A=
-- Found GSL: gsl;gslcblas;m  =0A=
-- =0A=
-- Configuring gr-fec support...=0A=
--   Dependency ENABLE_VOLK =3D ON=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_BLOCKS =3D ON=0A=
--   Enabling gr-fec support.=0A=
--   Override with -DENABLE_GR_FEC=3DON/OFF=0A=
-- Checking for module 'fftw3f &gt;=3D 3.0'=0A=
--   Found fftw3f , version 3.3.8=0A=
-- Found FFTW3F: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-=
linux-musleabi/usr/lib/libfftw3f.so  =0A=
-- =0A=
-- Configuring gr-fft support...=0A=
--   Dependency ENABLE_VOLK =3D ON=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_BLOCKS =3D ON=0A=
--   Dependency FFTW3F_FOUND =3D TRUE=0A=
--   Enabling gr-fft support.=0A=
--   Override with -DENABLE_GR_FFT=3DON/OFF=0A=
-- =0A=
-- Configuring gr-filter support...=0A=
--   Dependency ENABLE_VOLK =3D ON=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_FFT =3D ON=0A=
--   Dependency ENABLE_GR_BLOCKS =3D ON=0A=
--   Enabling gr-filter support.=0A=
--   Override with -DENABLE_GR_FILTER=3DON/OFF=0A=
-- =0A=
-- Configuring gr-analog support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_VOLK =3D ON=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_BLOCKS =3D ON=0A=
--   Dependency ENABLE_GR_FFT =3D ON=0A=
--   Dependency ENABLE_GR_FILTER =3D ON=0A=
--   Enabling gr-analog support.=0A=
--   Override with -DENABLE_GR_ANALOG=3DON/OFF=0A=
-- =0A=
-- Configuring gr-digital support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_VOLK =3D ON=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_FFT =3D ON=0A=
--   Dependency ENABLE_GR_FILTER =3D ON=0A=
--   Dependency ENABLE_GR_BLOCKS =3D ON=0A=
--   Dependency ENABLE_GR_ANALOG =3D ON=0A=
--   Enabling gr-digital support.=0A=
--   Override with -DENABLE_GR_DIGITAL=3DON/OFF=0A=
-- =0A=
-- Configuring gr-dtv support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_ANALOG =3D ON=0A=
--   Dependency ENABLE_GR_FILTER =3D ON=0A=
--   Dependency ENABLE_GR_FEC =3D ON=0A=
--   Dependency ENABLE_VOLK =3D ON=0A=
--   Disabling gr-dtv support.=0A=
--   Override with -DENABLE_GR_DTV=3DON/OFF=0A=
-- =0A=
-- Configuring gr-atsc support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_FFT =3D ON=0A=
--   Dependency ENABLE_GR_BLOCKS =3D ON=0A=
--   Dependency ENABLE_GR_FEC =3D ON=0A=
--   Dependency ENABLE_GR_FILTER =3D ON=0A=
--   Dependency ENABLE_GR_ANALOG =3D ON=0A=
--   Disabling gr-atsc support.=0A=
--   Override with -DENABLE_GR_ATSC=3DON/OFF=0A=
-- =0A=
-- Configuring gr-audio support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Enabling gr-audio support.=0A=
--   Override with -DENABLE_GR_AUDIO=3DON/OFF=0A=
-- Checking for module 'alsa'=0A=
--   Found alsa, version 1.1.6=0A=
-- Found ALSA 1.1.6=0A=
-- Checking for module 'jack'=0A=
--   No package 'jack' found=0A=
-- Looking for C&#43;&#43; include AudioUnit/AudioUnit.h=0A=
-- Looking for C&#43;&#43; include AudioUnit/AudioUnit.h - not found=0A=
-- Looking for C&#43;&#43; include AudioToolbox/AudioToolbox.h=0A=
-- Looking for C&#43;&#43; include AudioToolbox/AudioToolbox.h - not found=
=0A=
-- Checking for module 'portaudio-2.0'=0A=
--   No package 'portaudio-2.0' found=0A=
-- Checking for module 'comedilib'=0A=
--   No package 'comedilib' found=0A=
-- =0A=
-- Configuring gr-comedi support...=0A=
--   Dependency COMEDI_FOUND =3D =0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Disabling gr-comedi support.=0A=
--   Override with -DENABLE_GR_COMEDI=3DON/OFF=0A=
-- =0A=
-- Configuring gr-channels support...=0A=
--   Dependency ENABLE_VOLK =3D ON=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_BLOCKS =3D ON=0A=
--   Dependency ENABLE_GR_FFT =3D ON=0A=
--   Dependency ENABLE_GR_FILTER =3D ON=0A=
--   Dependency ENABLE_GR_ANALOG =3D ON=0A=
--   Enabling gr-channels support.=0A=
--   Override with -DENABLE_GR_CHANNELS=3DON/OFF=0A=
-- =0A=
-- Configuring gr-noaa support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_BLOCKS =3D ON=0A=
--   Enabling gr-noaa support.=0A=
--   Override with -DENABLE_GR_NOAA=3DON/OFF=0A=
-- =0A=
-- Configuring gr-pager support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_FILTER =3D ON=0A=
--   Dependency ENABLE_GR_ANALOG =3D ON=0A=
--   Enabling gr-pager support.=0A=
--   Override with -DENABLE_GR_PAGER=3DON/OFF=0A=
CMake Warning at /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/us=
r/share/cmake-3.12/Modules/FindQt4.cmake:617 (message):=0A=
  /usr/bin/qmake reported QT_INSTALL_LIBS as &quot;/usr/lib/x86_64-linux-gn=
u&quot; but=0A=
  QtCore could not be found there.  Qt is NOT installed correctly for the=
=0A=
  target build environment.=0A=
Call Stack (most recent call first):=0A=
  gr-qtgui/CMakeLists.txt:25 (find_package)=0A=
=0A=
=0A=
-- =0A=
-- Python checking for PyQt4=0A=
-- Python checking for PyQt4 - found=0A=
-- =0A=
-- Configuring gr-qtgui support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency QT4_FOUND =3D =0A=
--   Dependency QWT_FOUND =3D FALSE=0A=
--   Dependency ENABLE_VOLK =3D ON=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_FFT =3D ON=0A=
--   Dependency ENABLE_GR_FILTER =3D ON=0A=
--   Dependency PYTHONLIBS_FOUND =3D TRUE=0A=
--   Disabling gr-qtgui support.=0A=
--   Override with -DENABLE_GR_QTGUI=3DON/OFF=0A=
-- =0A=
-- Configuring gr-trellis support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_ANALOG =3D ON=0A=
--   Dependency ENABLE_GR_BLOCKS =3D ON=0A=
--   Dependency ENABLE_GR_DIGITAL =3D ON=0A=
--   Enabling gr-trellis support.=0A=
--   Override with -DENABLE_GR_TRELLIS=3DON/OFF=0A=
-- Found UHD: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-lin=
ux-musleabi/usr/lib/libuhd.so  =0A=
-- =0A=
-- Configuring gr-uhd support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency UHD_FOUND =3D TRUE=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_FILTER =3D ON=0A=
--   Dependency ENABLE_GR_BLOCKS =3D ON=0A=
--   Dependency ENABLE_GR_ANALOG =3D ON=0A=
--   Enabling gr-uhd support.=0A=
--   Override with -DENABLE_GR_UHD=3DON/OFF=0A=
--   UHD Version: 3.15.0.0-0-gaea0e2de=0A=
-- =0A=
-- Configuring gr-utils support...=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_PYTHON =3D ON=0A=
--   Enabling gr-utils support.=0A=
--   Override with -DENABLE_GR_UTILS=3DON/OFF=0A=
-- Could NOT find SDL (missing: SDL_LIBRARY SDL_INCLUDE_DIR) =0A=
-- =0A=
-- Configuring gr-video-sdl support...=0A=
--   Dependency SDL_FOUND =3D FALSE=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Disabling gr-video-sdl support.=0A=
--   Override with -DENABLE_GR_VIDEO_SDL=3DON/OFF=0A=
-- =0A=
-- Configuring gr-vocoder support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_FFT =3D ON=0A=
--   Dependency ENABLE_GR_BLOCKS =3D ON=0A=
--   Dependency ENABLE_GR_FILTER =3D ON=0A=
--   Dependency ENABLE_GR_ANALOG =3D ON=0A=
--   Disabling gr-vocoder support.=0A=
--   Override with -DENABLE_GR_VOCODER=3DON/OFF=0A=
-- Checking for module 'libusb-1.0'=0A=
--   Found libusb-1.0, version 1.0.22=0A=
-- Found libusb-1.0: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon=
-oe-linux-musleabi/usr/include/libusb-1.0, /home/sdr/sdr/e310/rfnoc/oe/sysr=
oots/cortexa9t2hf-neon-oe-linux-musleabi/lib/<a href=3D"http://libusb-1.0.s=
o" target=3D"_blank">libusb-1.0.so</a>=0A=
-- =0A=
-- Configuring gr-fcd support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_BLOCKS =3D ON=0A=
--   Dependency ENABLE_GR_AUDIO =3D ON=0A=
--   Dependency LIBUSB_FOUND =3D TRUE=0A=
--   Enabling gr-fcd support.=0A=
--   Override with -DENABLE_GR_FCD=3DON/OFF=0A=
-- =0A=
-- Configuring gr-wavelet support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_BLOCKS =3D ON=0A=
--   Dependency ENABLE_GR_ANALOG =3D ON=0A=
--   Dependency GSL_FOUND =3D TRUE=0A=
--   Enabling gr-wavelet support.=0A=
--   Override with -DENABLE_GR_WAVELET=3DON/OFF=0A=
-- =0A=
-- Python checking for wx &gt;=3D 2.8=0A=
-- Python checking for wx &gt;=3D 2.8 - found=0A=
-- =0A=
-- Python checking for numpy=0A=
-- Python checking for numpy - found=0A=
-- =0A=
-- Configuring gr-wxgui support...=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ENABLE_GR_FFT =3D ON=0A=
--   Dependency ENABLE_GR_FILTER =3D ON=0A=
--   Dependency ENABLE_GR_ANALOG =3D ON=0A=
--   Dependency ENABLE_PYTHON =3D ON=0A=
--   Disabling gr-wxgui support.=0A=
--   Override with -DENABLE_GR_WXGUI=3DON/OFF=0A=
-- Checking for module 'libzmq'=0A=
--   Found libzmq, version 4.2.5=0A=
-- Found ZEROMQ: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-=
linux-musleabi/usr/lib/libzmq.so  =0A=
-- =0A=
-- Configuring gr-zeromq support...=0A=
--   Dependency Boost_FOUND =3D 1=0A=
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON=0A=
--   Dependency ZEROMQ_FOUND =3D TRUE=0A=
--   Enabling gr-zeromq support.=0A=
--   Override with -DENABLE_GR_ZEROMQ=3DON/OFF=0A=
-- =0A=
-- ######################################################=0A=
-- # Gnuradio enabled components                         =0A=
-- ######################################################=0A=
--   * python-support=0A=
--   * testing-support=0A=
--   * volk=0A=
--   * sphinx=0A=
--   * gnuradio-runtime=0A=
--   * gr-ctrlport=0A=
--   * gr-blocks=0A=
--   * gnuradio-companion=0A=
--   * gr-fec=0A=
--   * gr-fft=0A=
--   * gr-filter=0A=
--   * gr-analog=0A=
--   * gr-digital=0A=
--   * gr-audio=0A=
--   * * alsa=0A=
--   * * oss=0A=
--   * gr-channels=0A=
--   * gr-noaa=0A=
--   * gr-pager=0A=
--   * gr-trellis=0A=
--   * gr-uhd=0A=
--   * gr-utils=0A=
--   * gr-fcd=0A=
--   * gr-wavelet=0A=
--   * gr-zeromq=0A=
-- =0A=
-- ######################################################=0A=
-- # Gnuradio disabled components                        =0A=
-- ######################################################=0A=
--   * doxygen=0A=
--   * gr-dtv=0A=
--   * gr-atsc=0A=
--   * gr-comedi=0A=
--   * gr-qtgui=0A=
--   * gr-video-sdl=0A=
--   * gr-vocoder=0A=
--   * gr-wxgui=0A=
-- =0A=
-- Using install prefix: /usr=0A=
-- Building for version: 3.7.14.0 / 3.7.14.0=0A=
-- Configuring done=0A=
-- Generating done=0A=
-- Build files have been written to: /home/sdr/sdr/e310/rfnoc/src/gnuradio/=
build-arm</pre>
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<br>
<fieldset></fieldset>
<pre>_______________________________________________=0A=
USRP-users mailing list=0A=
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>=0A=
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>=0A=
</pre>
</blockquote>
</div>
</blockquote>
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
</div>
</div>
</body>
</html>

--_000_DM6PR19MB266898D0162257D51B105609A48A0DM6PR19MB2668namp_--


--===============5182415835613316618==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5182415835613316618==--

