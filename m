Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9D292076
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2019 11:33:42 +0200 (CEST)
Received: from [::1] (port=53268 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hze2m-0003D8-KE; Mon, 19 Aug 2019 05:33:40 -0400
Received: from mail-ot1-f72.google.com ([209.85.210.72]:47586)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mikio@dolphinsystem.jp>)
 id 1hze2i-00039F-Lz
 for usrp-users@lists.ettus.com; Mon, 19 Aug 2019 05:33:36 -0400
Received: by mail-ot1-f72.google.com with SMTP id g76so1975767otg.14
 for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2019 02:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nn3qfQb273Lb4BD7STtqO56kYzzlLEHEZjBlpU5w7/w=;
 b=ETjzvZWr3vsm/+PEuP2w+azv2G2tW6/+IOO+lWbU7Wmj5YMKsu/QJdC4efVZOcUot/
 osbV8Mdi20xfTTnkwGt3ramy9r5pqxLpsZx5U3FNV7ZFoJoO86GUf2cP3mNKZW/pXQo4
 C36/IEHT2vH+ulALTNE8+xtkvesgVQ9GIsOjlV3EzH+8VNvnRNMvKLhom+Mcsl0YeuL+
 CkMMA1ovB3Etias6wKyU31mPnNY9QPV7R0hbJgBOYVK24XY9WMVKeB8VAA1n4OhlmxIc
 pnXcWd8uwlglf0pcs9gVDHM4mau0ojEsMi5jSKOifTjdktpebTuwXhtc3DKpAed4Cbwo
 YxAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nn3qfQb273Lb4BD7STtqO56kYzzlLEHEZjBlpU5w7/w=;
 b=tZKoCtFXEgOz+Db08unz33RsRZh6DCHIwIVtMqnr4PZbO//OBHtHxJLAubnJO5j6Lk
 qelElcCEfP7entkLWWj4SyaW8YF7aIIEXoUmnLR8Uu7hoWgAnnUb2joWPbWFFNl9ymfj
 ZizKjnDpZMCGb9ilw+1e1pr069pN3CYYTRekUtDUHf52eNkHGcas7sIhfI47TTtBIyDq
 9S8Q1YQms/J8MNX2y9bO6rx27wwxGLjgO/H5LU4380YNsNrW8x6GDynNny/3a/lN9TWp
 opQkUV0cFN7HJLL1rJWkmMzqnYAZ2jOEOBgRvZh7qEdrb7eRybWyj5p/M5tKis6Fp5JC
 rQdg==
X-Gm-Message-State: APjAAAXXLDOUWyOFiif/1qsLsTfVjCsUQ/rIDANpryVhnVw53xMCAWw1
 /KPwHLHVS3oMFDUWFjcr/Gv33NnxI7Y7hxLkhLhKTw==
X-Google-Smtp-Source: APXvYqzcuQQs7+VISpH4/SCORVU3XViCI8s0cPSjPmU+QrYlBSpi0FhxlDCpbwbTZHJmO1u5USeGvfNnWFboRIvtlwM=
X-Received: by 2002:a05:6808:914:: with SMTP id
 w20mr12151066oih.73.1566207175497; 
 Mon, 19 Aug 2019 02:32:55 -0700 (PDT)
MIME-Version: 1.0
References: <CABfZwcdKyO0+zUTd5oVcwrr=mAhScEroL_mwGDoEJ52+i+sAjg@mail.gmail.com>
 <CAL263iw7Rwb4n-FJvnqOqtgev8AAx9uNvutVbNf2Q__cL1C6Hg@mail.gmail.com>
 <CABfZwcdc9PR_dNbAaTbXaE7LxC6wE6+3mRuagXfkuyASHm0TrQ@mail.gmail.com>
 <CAL263iy15x0bAE6CK_LQbnvbLk86=o5k_sk7CJzG_K_bXF+TDA@mail.gmail.com>
In-Reply-To: <CAL263iy15x0bAE6CK_LQbnvbLk86=o5k_sk7CJzG_K_bXF+TDA@mail.gmail.com>
Date: Mon, 19 Aug 2019 18:32:20 +0900
Message-ID: <CABfZwcee9obzJRoPS3w8wQ=mY8hfykV6PGrfUSEy8=CczhKtVQ@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
Subject: Re: [USRP-users] cmake error : Cross-Compiling GNU Radio on Ubuntu
 16.04
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?b?56aP5bO25bm56ZuEIHZpYSBVU1JQLXVzZXJz?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?56aP5bO25bm56ZuE?= <mikio@dolphinsystem.jp>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7617795114771053230=="
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

--===============7617795114771053230==
Content-Type: multipart/alternative; boundary="00000000000057393005907506fb"

--00000000000057393005907506fb
Content-Type: text/plain; charset="UTF-8"

Hi Nate

I suceed to build cross-compiling UHD and GR with no error for E310 on
Ubuntu 18.04.2. but I got error for E320.

I try to build the *E320 version* according to your advice, but I got an
error from "cmake" in Cross-Compiling gr-ettus.
cmake says "RFNoC not found".
I always built with "-DENABLE_RFNOC=ON" as follows.
Could you give some advice please?

*SDK
http://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.14.1.0/e3xx_e320_sdk_default-v3.14.1.0.zip

*Building UHD on host
$ cmake -DENABLE_E300=ON -DENABLE_GPSD=ON -DENABLE_RFNOC=ON ..

*Cross-Compiling UHD on host
$ cmake -DCMAKE_TOOLCHAIN_FILE=../host/cmake/Toolchains/oe-sdk_cross.cmake
-DCMAKE_INSTALL_PREFIX=/usr -DENABLE_E300=ON -DENABLE_GPSD=ON
-DENABLE_RFNOC=ON ..

==== LOG ====

$ cmake
-DCMAKE_TOOLCHAIN_FILE=~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake
-DCMAKE_INSTALL_PREFIX=/usr ..
-- The CXX compiler identification is GNU 7.3.0
-- The C compiler identification is GNU 7.3.0
-- Check for working CXX compiler:
/home/dolphin/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-g++
-- Check for working CXX compiler:
/home/dolphin/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-g++
-- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Check for working C compiler:
/home/dolphin/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc
-- Check for working C compiler:
/home/dolphin/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc
-- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Build type not specified: defaulting to release.
-- Looking for pthread.h
-- Looking for pthread.h - found
-- Looking for pthread_create
-- Looking for pthread_create - not found
-- Looking for pthread_create in pthreads
-- Looking for pthread_create in pthreads - not found
-- Looking for pthread_create in pthread
-- Looking for pthread_create in pthread - found
-- Found Threads: TRUE
-- Boost version: 1.66.0
-- Found the following Boost libraries:
--   filesystem
--   system
--   thread
--   chrono
--   date_time
--   atomic
-- Found PkgConfig:
/home/dolphin/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/pkg-config
(found version "0.29.2")
-- Found UHD:
/home/dolphin/rfnoc/oe/sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/lib/libuhd.so
CMake Error at CMakeLists.txt:140 (message):
  RFNoC not found.


-- Configuring incomplete, errors occurred!
See also
"/home/dolphin/rfnoc/src/gr-ettus/build-arm/CMakeFiles/CMakeOutput.log".
See also
"/home/dolphin/rfnoc/src/gr-ettus/build-arm/CMakeFiles/CMakeError.log".

--00000000000057393005907506fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Nate<br><br>I suceed to build cross-co=
mpiling UHD and GR with no error for E310 on Ubuntu 18.04.2. but I got erro=
r for E320.</div><div dir=3D"ltr"><br>I try to build the *E320 version* acc=
ording to your advice, but I got an error from &quot;cmake&quot; in Cross-C=
ompiling gr-ettus.<br>cmake says &quot;RFNoC not found&quot;.<br>I always b=
uilt with &quot;-DENABLE_RFNOC=3DON&quot; as follows.<br>Could you give som=
e advice please?<br><br>*SDK<br><a href=3D"http://files.ettus.com/binaries/=
cache/e3xx/meta-ettus-v3.14.1.0/e3xx_e320_sdk_default-v3.14.1.0.zip">http:/=
/files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.14.1.0/e3xx_e320_sdk_def=
ault-v3.14.1.0.zip</a><br><br>*Building UHD on host<br>$ cmake -DENABLE_E30=
0=3DON -DENABLE_GPSD=3DON -DENABLE_RFNOC=3DON ..<br><br>*Cross-Compiling UH=
D on host<br>$ cmake -DCMAKE_TOOLCHAIN_FILE=3D../host/cmake/Toolchains/oe-s=
dk_cross.cmake -DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_E300=3DON -DENABLE_GP=
SD=3DON -DENABLE_RFNOC=3DON ..<br></div><div dir=3D"ltr"><br></div><div>=3D=
=3D=3D=3D LOG =3D=3D=3D=3D</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"=
>$ cmake -DCMAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/gnuradio/cmake/Toolchains/oe-=
sdk_cross.cmake -DCMAKE_INSTALL_PREFIX=3D/usr ..<br>-- The CXX compiler ide=
ntification is GNU 7.3.0<br>-- The C compiler identification is GNU 7.3.0<b=
r>-- Check for working CXX compiler: /home/dolphin/rfnoc/oe/sysroots/x86_64=
-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-g++<br>-- Ch=
eck for working CXX compiler: /home/dolphin/rfnoc/oe/sysroots/x86_64-oesdk-=
linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-g++ -- works<br>-- =
Detecting CXX compiler ABI info<br>-- Detecting CXX compiler ABI info - don=
e<br>-- Detecting CXX compile features<br>-- Detecting CXX compile features=
 - done<br>-- Check for working C compiler: /home/dolphin/rfnoc/oe/sysroots=
/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc<b=
r>-- Check for working C compiler: /home/dolphin/rfnoc/oe/sysroots/x86_64-o=
esdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc -- works<b=
r>-- Detecting C compiler ABI info<br>-- Detecting C compiler ABI info - do=
ne<br>-- Detecting C compile features<br>-- Detecting C compile features - =
done<br>-- Build type not specified: defaulting to release.<br>-- Looking f=
or pthread.h<br>-- Looking for pthread.h - found<br>-- Looking for pthread_=
create<br>-- Looking for pthread_create - not found<br>-- Looking for pthre=
ad_create in pthreads<br>-- Looking for pthread_create in pthreads - not fo=
und<br>-- Looking for pthread_create in pthread<br>-- Looking for pthread_c=
reate in pthread - found<br>-- Found Threads: TRUE<br>-- Boost version: 1.6=
6.0<br>-- Found the following Boost libraries:<br>-- =C2=A0 filesystem<br>-=
- =C2=A0 system<br>-- =C2=A0 thread<br>-- =C2=A0 chrono<br>-- =C2=A0 date_t=
ime<br>-- =C2=A0 atomic<br>-- Found PkgConfig: /home/dolphin/rfnoc/oe/sysro=
ots/x86_64-oesdk-linux/usr/bin/pkg-config (found version &quot;0.29.2&quot;=
)<br>-- Found UHD: /home/dolphin/rfnoc/oe/sysroots/cortexa9hf-neon-oe-linux=
-gnueabi/usr/lib/libuhd.so<br>CMake Error at CMakeLists.txt:140 (message):<=
br>=C2=A0 RFNoC not found.<br><br><br>-- Configuring incomplete, errors occ=
urred!<br>See also &quot;/home/dolphin/rfnoc/src/gr-ettus/build-arm/CMakeFi=
les/CMakeOutput.log&quot;.<br>See also &quot;/home/dolphin/rfnoc/src/gr-ett=
us/build-arm/CMakeFiles/CMakeError.log&quot;.<br></div><div dir=3D"ltr"><br=
></div><div dir=3D"ltr"><br></div></div>

--00000000000057393005907506fb--


--===============7617795114771053230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7617795114771053230==--

