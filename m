Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EECED35BC40
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 10:34:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 45020384692
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 04:34:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmv.com header.i=@gmv.com header.b="YxKg+ht3";
	dkim-atps=neutral
Received: from mx08-002baa02.pphosted.com (mx08-002baa02.pphosted.com [185.183.30.205])
	by mm2.emwd.com (Postfix) with ESMTPS id 39B05383CCC
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 04:34:00 -0400 (EDT)
Received: from pps.filterd (m0205082.ppops.net [127.0.0.1])
	by mx08-002baa02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13C8WErp011783
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 10:33:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmv.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=gmvcom;
 bh=nsszRVXrOP5u5LhX5zZ5IQ5LX7cGczjf+CrLrdgyNVY=;
 b=YxKg+ht3oVuWVHrqIpxzxzdRap0GQdJ1XSyYjPzSodqLPQOicfPaMAn09wyCMbnBUFMI
 Z5IKytbdz33VczL2uyH7B04Yt0AXKpPTd+9PToN8zztjwUZu/uOTD7HkmzHUUZrfgQiK
 kZynUtbLtF6JN6FIx27ndZYAkFKa/5E3nm5PZtdv56XT7giLTsW42m4JsZH1+T6pfQpE
 NpmBaGN0IGn4c5fOCw5bHYQB3Xfd3lmw/JCw+PKi1tnqNBaY1Tr2SyUALH5HhJczAEXG
 GFcbgUAw5xmTJSSA8OViXjejBq/aRP8NXCno1ttTPhz5ovozAcR0OxsVcsnd9Uc0LA7G KA==
From: David Scott <david.scott@gmvnsl.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Building gnuradio cross compile for E312, pyton version issue
Thread-Index: AQHXL3VEZ8aeYlp2FkqgWz3LKjIcNg==
Date: Mon, 12 Apr 2021 08:33:57 +0000
Message-ID: <e5ee1dce7db04a5f96edd8939933430f@gmvnsl.com>
Accept-Language: en-GB, es-ES, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-kse-serverinfo: ptmexch2.gmv.es, 9
x-kse-attachmentfiltering-interceptor-info: protection disabled
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean, bases: 12/04/2021 1:12:00
MIME-Version: 1.0
X-KSE-ServerInfo: ptmexch1.gmv.es, 9
X-KSE-AttachmentFiltering-Interceptor-Info: protection disabled
X-Proofpoint-ORIG-GUID: d6RH3mRY6v6YyGvbcyOH9sXzO9jOO0Fq
X-Proofpoint-GUID: d6RH3mRY6v6YyGvbcyOH9sXzO9jOO0Fq
X-Proofpoint-Action: Received-Header-Sanitized
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-12_07:2021-04-12,2021-04-12 signatures=0
X-Proofpoint-Spam-Reason: orgsafe
Message-ID-Hash: Y7B7I6Z2D76DGF7EXRMVJE6KIJAM4KNO
X-Message-ID-Hash: Y7B7I6Z2D76DGF7EXRMVJE6KIJAM4KNO
X-MailFrom: david.scott@gmvnsl.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Building gnuradio cross compile for E312, pyton version issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y7B7I6Z2D76DGF7EXRMVJE6KIJAM4KNO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6763507598345735456=="

--===============6763507598345735456==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_e5ee1dce7db04a5f96edd8939933430fgmvnslcom_"

--_000_e5ee1dce7db04a5f96edd8939933430fgmvnslcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am following the instructions from https://files.ettus.com/manual/page_us=
rp_e3xx.html#e31x_migration . I have installed the SD card file that I foun=
d using:

  uhd_images_downloader -t e310 -t sdimg

And Installed the sdk from the file provided with:

  uhd_images_downloader -t sdk -t e310

Which provided the file:

  e310_sg3-oecore-x86_64-cortexa9t2hf-neon-toolchain-nodistro.0.sh

I installed this and set up the environment with:

  source environment-setup-cortexa9t2hf-neon-oe-linux-musleabi

Building UHD worked fine, however when I try to build GnuRadio I get the fo=
llowing python version mismatch:


dscc@ltdscc-vm:~/gnuradio/build-arm$ cmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=
=3D../cmake/Toolchains/oe-sdk_cross.cmake \-DCMAKE_INSTALL_PREFIX=3D/usr -D=
ENABLE_GR_VOCODER=3DOFF -DENABLE_GR_ATSC=3DOFF \
> -DENABLE_GR_DTV=3DOFF -DENABLE_DOXYGEN=3DOFF ../
-- The CXX compiler identification is GNU 8.2.0
-- The C compiler identification is GNU 8.2.0
-- Check for working CXX compiler: /usr/local/oecore-x86_64/sysroots/x86_64=
-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-g++
-- Check for working CXX compiler: /usr/local/oecore-x86_64/sysroots/x86_64=
-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-g++ -- wor=
ks
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Check for working C compiler: /usr/local/oecore-x86_64/sysroots/x86_64-o=
esdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc
-- Check for working C compiler: /usr/local/oecore-x86_64/sysroots/x86_64-o=
esdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Build type not specified: defaulting to release.
-- Build type set to Release.
-- Build date set to Mon, 12 Apr 2021 08:23:16Z.
--
-- The build system will automatically enable all components.
-- Use -DENABLE_DEFAULT=3DOFF to disable components by default.
-- Looking for pthread.h
-- Looking for pthread.h - found
-- Looking for pthread_create
-- Looking for pthread_create - found
-- Found Threads: TRUE
-- Boost version: 1.68.0
-- Found the following Boost libraries:
--   date_time
--   program_options
--   system
--   regex
--   thread
--   unit_test_framework
--   chrono
--   atomic
--
-- Configuring testing-support support...
--   Dependency Boost_UNIT_TEST_FRAMEWORK_FOUND =3D ON
--   Enabling testing-support support.
--   Override with -DENABLE_TESTING=3DON/OFF
-- Found Git: /usr/bin/git
-- Extracting version information from git describe...
CMake Warning at CMakeLists.txt:93 (MESSAGE):

  The compiler selected to build GNU Radio (GCC version 8.2.0 :
  /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux=
-musleabi/arm-oe-linux-musleabi-g++)
  is older than that officially supported (8.3.0 minimum).  This build may =
or
  not work.  We highly recommend using a more recent GCC version.

-- Check if the system is big endian
-- Searching 16 bit integer
-- Looking for sys/types.h
-- Looking for sys/types.h - found
-- Looking for stdint.h
-- Looking for stdint.h - found
-- Looking for stddef.h
-- Looking for stddef.h - found
-- Check size of unsigned short
-- Check size of unsigned short - done
-- Using unsigned short
-- Check if the system is big endian - little endian
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
-- Compiler Flags: /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr=
/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc:::-O3 -DNDEBUG  -O2 -p=
ipe -g -feliminate-unused-debug-types  -fvisibility=3Dhidden -Wsign-compare=
 -Wall -Wno-uninitialized
/usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-m=
usleabi/arm-oe-linux-musleabi-g++:::-O3 -DNDEBUG  -O2 -pipe -g -feliminate-=
unused-debug-types  -fvisibility=3Dhidden -Wsign-compare -Wall -Wno-uniniti=
alized
-- ADDING PERF COUNTERS
-- PYTHON_EXECUTABLE not set - using default python3
CMake Error at /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/sha=
re/cmake-3.12/Modules/FindPackageHandleStandardArgs.cmake:137 (message):
  Could NOT find PythonInterp: Found unsuitable version "3.5.6", but requir=
ed
  is at least "3.6.5" (found
  /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/python3)
Call Stack (most recent call first):
  /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/share/cmake-3.12=
/Modules/FindPackageHandleStandardArgs.cmake:376 (_FPHSA_FAILURE_MESSAGE)
  /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/share/cmake-3.12=
/Modules/FindPythonInterp.cmake:159 (FIND_PACKAGE_HANDLE_STANDARD_ARGS)
  cmake/Modules/GrPython.cmake:24 (find_package)
  CMakeLists.txt:338 (include)

-- Configuring incomplete, errors occurred!
See also "/home/dscc/gnuradio/build-arm/CMakeFiles/CMakeOutput.log"

Is there a more up to date version of the sdk with python version 3.6.5 min=
imum?
Or am I missing some other step?

Thanks,
David

P Please consider the environment before printing this e-mail.

--_000_e5ee1dce7db04a5f96edd8939933430fgmvnslcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi all,<br>
<br>
I am following the instructions from <a href=3D"https://files.ettus.com/man=
ual/page_usrp_e3xx.html#e31x_migration" class=3D"OWAAutoLink">
https://files.ettus.com/manual/page_usrp_e3xx.html#e31x_migration</a> . I h=
ave installed the SD card file that I found using:<br>
<br>
<span>&nbsp; <span style=3D"font-family: &quot;Courier New&quot;, monospace=
;">uhd_images_downloader -t e310 -t sdimg</span></span>
<br>
<br>
And Installed the sdk from the file provided with: <br>
<br>
<span>&nbsp; <span style=3D"font-family: &quot;Courier New&quot;, monospace=
;">uhd_images_downloader -t sdk -t e310</span><br>
<br>
Which provided the file:<br>
<br>
<span>&nbsp; <span style=3D"font-family: &quot;Courier New&quot;, monospace=
;">e310_sg3-oecore-x86_64-cortexa9t2hf-neon-toolchain-nodistro.0.</span></s=
pan><span style=3D"font-family: &quot;Courier New&quot;, monospace;">sh</sp=
an><br>
<br>
I installed this and set up the environment with: <br>
<br>
</span><span><span>&nbsp; <span style=3D"font-family: &quot;Courier New&quo=
t;, monospace;">source environment-setup-cortexa9t2hf-neon-oe-linux-musleab=
i</span></span></span><br>
<br>
Building UHD worked fine, however when I try to build GnuRadio I get the fo=
llowing python version mismatch:<br>
<br>
</p>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace; font-s=
ize: 9pt;">dscc@ltdscc-vm:~/gnuradio/build-arm$ cmake -Wno-dev -DCMAKE_TOOL=
CHAIN_FILE=3D../cmake/Toolchains/oe-sdk_cross.cmake \-DCMAKE_INSTALL_PREFIX=
=3D/usr -DENABLE_GR_VOCODER=3DOFF -DENABLE_GR_ATSC=3DOFF
 \</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">&gt; -DENABLE_GR_DTV=3DOFF -DENABLE_DOXYGEN=3DOFF ../</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- The CXX compiler identification is GNU 8.2.0</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- The C compiler identification is GNU 8.2.0</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Check for working CXX compiler: /usr/local/oecore-x86_64/sysroots/=
x86_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-g&#4=
3;&#43;</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Check for working CXX compiler: /usr/local/oecore-x86_64/sysroots/=
x86_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-g&#4=
3;&#43; -- works</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Detecting CXX compiler ABI info</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Detecting CXX compiler ABI info - done</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Detecting CXX compile features</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Detecting CXX compile features - done</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Check for working C compiler: /usr/local/oecore-x86_64/sysroots/x8=
6_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc</s=
pan><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Check for working C compiler: /usr/local/oecore-x86_64/sysroots/x8=
6_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc --=
 works</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Detecting C compiler ABI info</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Detecting C compiler ABI info - done</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Detecting C compile features</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Detecting C compile features - done</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Build type not specified: defaulting to release.</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Build type set to Release.</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Build date set to Mon, 12 Apr 2021 08:23:16Z.</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- </span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- The build system will automatically enable all components.</span><=
br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Use -DENABLE_DEFAULT=3DOFF to disable components by default.</span=
><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Looking for pthread.h</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Looking for pthread.h - found</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Looking for pthread_create</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Looking for pthread_create - found</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Found Threads: TRUE &nbsp;</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Boost version: 1.68.0</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Found the following Boost libraries:</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">--&nbsp;&nbsp; date_time</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">--&nbsp;&nbsp; program_options</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">--&nbsp;&nbsp; system</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">--&nbsp;&nbsp; regex</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">--&nbsp;&nbsp; thread</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">--&nbsp;&nbsp; unit_test_framework</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">--&nbsp;&nbsp; chrono</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">--&nbsp;&nbsp; atomic</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- </span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Configuring testing-support support...</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">--&nbsp;&nbsp; Dependency Boost_UNIT_TEST_FRAMEWORK_FOUND =3D ON</spa=
n><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">--&nbsp;&nbsp; Enabling testing-support support.</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">--&nbsp;&nbsp; Override with -DENABLE_TESTING=3DON/OFF</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Found Git: /usr/bin/git &nbsp;</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Extracting version information from git describe...</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">CMake Warning at CMakeLists.txt:93 (MESSAGE):</span><br>
<br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">&nbsp; The compiler selected to build GNU Radio (GCC version 8.2.0 :<=
/span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">&nbsp; /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/a=
rm-oe-linux-musleabi/arm-oe-linux-musleabi-g&#43;&#43;)</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">&nbsp; is older than that officially supported (8.3.0 minimum).&nbsp;=
 This build may or</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">&nbsp; not work.&nbsp; We highly recommend using a more recent GCC ve=
rsion.</span><br>
<br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Check if the system is big endian</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Searching 16 bit integer</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Looking for sys/types.h</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Looking for sys/types.h - found</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Looking for stdint.h</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Looking for stdint.h - found</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Looking for stddef.h</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Looking for stddef.h - found</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Check size of unsigned short</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Check size of unsigned short - done</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Using unsigned short</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Check if the system is big endian - little endian</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Performing Test HAVE_VISIBILITY_HIDDEN</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Performing Test HAVE_VISIBILITY_HIDDEN - Success</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Performing Test HAVE_WARN_SIGN_COMPARE</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Performing Test HAVE_WARN_SIGN_COMPARE - Success</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Performing Test HAVE_WARN_ALL</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Performing Test HAVE_WARN_ALL - Success</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Performing Test HAVE_WARN_NO_UNINITIALIZED</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Performing Test HAVE_WARN_NO_UNINITIALIZED - Success</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Compiler Version: arm-oe-linux-musleabi-gcc (GCC) 8.2.0</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">Copyright (C) 2018 Free Software Foundation, Inc.</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">This is free software; see the source for copying conditions.&nbsp; T=
here is NO</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PU=
RPOSE.</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Compiler Flags: /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-lin=
ux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc:::-O3 -DNDEBUG&n=
bsp; -O2 -pipe -g -feliminate-unused-debug-types&nbsp;
 -fvisibility=3Dhidden -Wsign-compare -Wall -Wno-uninitialized</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">/usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-l=
inux-musleabi/arm-oe-linux-musleabi-g&#43;&#43;:::-O3 -DNDEBUG&nbsp; -O2 -p=
ipe -g -feliminate-unused-debug-types&nbsp; -fvisibility=3Dhidden
 -Wsign-compare -Wall -Wno-uninitialized</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- ADDING PERF COUNTERS</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- PYTHON_EXECUTABLE not set - using default python3</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">CMake Error at /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/u=
sr/share/cmake-3.12/Modules/FindPackageHandleStandardArgs.cmake:137 (messag=
e):</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">&nbsp; Could NOT find PythonInterp: Found unsuitable version &quot;3.=
5.6&quot;, but required</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">&nbsp; is at least &quot;3.6.5&quot; (found</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">&nbsp; /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/p=
ython3)</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">Call Stack (most recent call first):</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">&nbsp; /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/share=
/cmake-3.12/Modules/FindPackageHandleStandardArgs.cmake:376 (_FPHSA_FAILURE=
_MESSAGE)</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">&nbsp; /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/share=
/cmake-3.12/Modules/FindPythonInterp.cmake:159 (FIND_PACKAGE_HANDLE_STANDAR=
D_ARGS)</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">&nbsp; cmake/Modules/GrPython.cmake:24 (find_package)</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">&nbsp; CMakeLists.txt:338 (include)</span><br>
<br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">-- Configuring incomplete, errors occurred!</span><br>
<span style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: =
9pt;">See also &quot;/home/dscc/gnuradio/build-arm/CMakeFiles/CMakeOutput.l=
og&quot;</span></div>
<br>
Is there a more up to date version of the sdk with python version 3.6.5 min=
imum?<br>
Or am I missing some other step?<br>
<br>
Thanks,<br>
David<br>
<p></p>
</div>
<span style=3D""><br>
</span><span style=3D"font-size:18.0pt; line-height:125%; font-family:Webdi=
ngs; color:green">P<span style=3D""></span>
<span style=3D"font-size:7.0pt; line-height:125%; font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;; color:green">
Please consider the environment before printing this e-mail.</span></span><=
span style=3D""></span>
</body>
</html>

--_000_e5ee1dce7db04a5f96edd8939933430fgmvnslcom_--

--===============6763507598345735456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6763507598345735456==--
