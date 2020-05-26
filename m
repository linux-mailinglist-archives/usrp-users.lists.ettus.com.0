Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A07181E1BF3
	for <lists+usrp-users@lfdr.de>; Tue, 26 May 2020 09:08:30 +0200 (CEST)
Received: from [::1] (port=58224 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jdThL-0007Aj-5n; Tue, 26 May 2020 03:08:27 -0400
Received: from mail-ua1-f48.google.com ([209.85.222.48]:36354)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1jdThG-00075S-Pk
 for usrp-users@lists.ettus.com; Tue, 26 May 2020 03:08:22 -0400
Received: by mail-ua1-f48.google.com with SMTP id b13so6892603uav.3
 for <usrp-users@lists.ettus.com>; Tue, 26 May 2020 00:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qlhhogGnOulX9bNQwgjHbd6hdHXv1ARJXHzUGHFf+Is=;
 b=wtYh0T91Ekykq8QFryXPSQU+KXJcF/CtUC6NxjAI1Yn6S+QRrsInVn3zlm3+lAPGdB
 bAXkH25uoHzqFPjUarvvSTuPgKuBfWjfVyUds2GugtHSmul5QH1qztuscMoiZci8Ls1v
 NRV+1AWFDC4VWipkj/6h3ZowVaf8e9gQIk273mWGqL4nfifqdMzXKV1plg5Te3DFfMEX
 fQGUzl2vOuxrnbAZQACoiUTF6hLpcqgAIjpVmbp44IfJMwHgRZjzV2+kS/gcTqJU49kb
 J7I4ScRBOhoBJdORMr9T1s8GCEbX3M5li9Y5Tb/XLf4uDh926ZvsrT/XBq0qoQ12PJN1
 wI7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qlhhogGnOulX9bNQwgjHbd6hdHXv1ARJXHzUGHFf+Is=;
 b=ZQsEnwUljNXS+cxiiJaL3nLkRyIzfEVcFJs6sbB7DcZ/svPOQfNb4VNZEODr4wobFx
 tNegcF6x8/4WFWF+8dEWSPuFLfOcl+CPafQeV3UZJLsCX/jLe8Iu798nRohrzdfyf6Gp
 cRHSCMhmL32o49q9f8m/ZqE1EjNiqZRqnIirOrWVT5htvxbS9PIRF+5+9rQIQ9aDKX5P
 Fd0CWkJbW9DhWUuvb+Z3iZxwtD2aLk8O5l8Hhj9Qwvr4xG/7aX3OQxUvB+CNAM7j9689
 5HWkVKAaUXYD2HIQ8nqzwGA6uA154tyLonJrojvFUdn7Ww7LIVdCmu8rB94AhV5Eh0/5
 JpQQ==
X-Gm-Message-State: AOAM531DspRbKqimzP2lKRf8Qg4XoPZZ8MzPs2OiT8/cH4IFiNfQ0biw
 k/rPURcevL4SH3ESK29UEq+hvrMxJriENewiH01uLoem
X-Google-Smtp-Source: ABdhPJwO7sjJGskCCqCXUEihJq4g3e5axLlp3wbairxbYXv5MBN5w2iPBnXQAz2XaLN5JS00D3kdGosRKR64sbYiJXg=
X-Received: by 2002:ab0:54c4:: with SMTP id q4mr20232831uaa.70.1590476860390; 
 Tue, 26 May 2020 00:07:40 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR19MB2668CBA7DF25F0303929D158A4C60@DM6PR19MB2668.namprd19.prod.outlook.com>
 <bb2c2f90-88a7-e938-921c-86e7038dc5b4@comcast.net>
 <DM6PR19MB2668C22AD3616D654461E183A4C70@DM6PR19MB2668.namprd19.prod.outlook.com>
 <76cc5e90-1f38-0237-e333-531cfaa40ae5@comcast.net>
 <DM6PR19MB26680E18E4D18DFD06AC30D6A4C70@DM6PR19MB2668.namprd19.prod.outlook.com>
In-Reply-To: <DM6PR19MB26680E18E4D18DFD06AC30D6A4C70@DM6PR19MB2668.namprd19.prod.outlook.com>
Date: Tue, 26 May 2020 03:07:04 -0400
Message-ID: <CAL7q81uMKgh+3pqaf48yGXH5gj1U66kxHbGHdguq_8VkNgazAA@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1145780647222533778=="
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

--===============1145780647222533778==
Content-Type: multipart/alternative; boundary="00000000000049985405a687c02d"

--00000000000049985405a687c02d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,

I'm looking into this cross compiling issue. Using this flag with cmake:
-DCMAKE_ASM_COMPILER_ARG1:STRING=3D"-mcpu=3Dcortex-a9" seems to work as a
temporary workaround for the volk error.

Jonathon

On Fri, Apr 3, 2020 at 8:31 AM Jeff S via USRP-users <
usrp-users@lists.ettus.com> wrote:

> $ which gnuradio-config-info
> /home/user/sdr/e310/rfnoc/installs/bin/gnuradio-config-info
> $ gnuradio-config-info -v
> 3.7.14.0
>
> I used maint-3.7.  This is what I did for the non-ARM build:
>
> $ git clone --recursive https://github.com/gnuradio/gnuradio
> $ cd ~/sdr/e310/rfnoc/src/gnuradio/
> $ git checkout maint-3.7
> $ git submodule update --init --recursive
>
>
> This is from the directions located at the first build of GNU Radio
> located in the application note:
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFN=
oC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Building_GNU_Radio
> .
>
> Jeff
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Ron
> Economos via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Friday, April 3, 2020 7:17 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] E310 Cross-compiling UHD / GNU Radio (volk?)
>
>
> What version of GNU Radio are you trying to build? If it's 3.8 or 3.9, yo=
u
> need a newer version of VOLK.
>
>
> Ron
>
>
> On 4/3/20 05:10, Jeff S wrote:
>
> Ron,
>
> I re-created my build-arm directory and tried adding this with the same
> results.
>
> Philip, in a previous email, had me looking through the Volk issues, and
> maybe there is one related that is OPEN:  "Missing NEON Implementations
> #243" (https://github.com/gnuradio/volk/issues/243).  I am still trying
> to understand it to see if there's something I can do related to it.  Jus=
t
> have been trying to follow the Ettus application notes.
>
> Jeff
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com>
> <usrp-users-bounces@lists.ettus.com> on behalf of Ron Economos via
> USRP-users <usrp-users@lists.ettus.com> <usrp-users@lists.ettus.com>
> *Sent:* Thursday, April 2, 2020 6:59 PM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] E310 Cross-compiling UHD / GNU Radio (volk?)
>
>
> Try adding this to your CMake command line.
>
>
> -DCMAKE_CXX_FLAGS:STRING=3D"-march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dn=
eon
> -mtune=3Dcortex-a9" -DCMAKE_C_FLAGS:STRING=3D"-march=3Darmv7-a -mfloat-ab=
i=3Dhard
> -mfpu=3Dneon -mtune=3Dcortex-a9" -DCMAKE_ASM_FLAGS:STRING=3D"-march=3Darm=
v7-a
> -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a9 -g"
>
>
> Ron
>
>
> On 4/2/20 13:45, Jeff S via USRP-users wrote:
>
> I had a problem with the initial build environment when setting up my
> environment for the E310.  Up to now, I have been able to get the UHD
> cross-compiled, a new image for the microSD card built, and checked up to
> the *# uhd_usrp_probe* step on the E310 (from
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFN=
oC_UHD_/_GNU_Radio_/_gr-ettus_from_Source)
> with success.
>
> I am now at the point where I am *Cross-Compiling GNU Radio*.  I have
> been using *e3xx_e310_sdk_default-v3.15.0.0.zip*, and at the point where
> I am building GNU Radio, I am getting an error:
>
> *Scanning dependencies of target volk_obj*
> [  3%] Building ASM object volk/lib/CMakeFiles/volk_obj.dir/__/kernels/vo=
lk/asm/neon/volk_16i_max_star_horizontal_16i.s.o
> /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i=
_max_star_horizontal_16i.s: Assembler messages:
> /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i=
_max_star_horizontal_16i.s:9: Error: selected processor does not support `p=
ld [r1:128]' in ARM mode
> /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i=
_max_star_horizontal_16i.s:20: Error: selected processor does not support `=
pld [r4:128]' in ARM mode
> /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i=
_max_star_horizontal_16i.s:44: Error: selected processor does not support `=
sxth r6,r6' in ARM mode
> volk/lib/CMakeFiles/volk_obj.dir/build.make:1572: recipe for target 'volk=
/lib/CMakeFiles/volk_obj.dir/__/kernels/volk/asm/neon/volk_16i_max_star_hor=
izontal_16i.s.o' failed
> make[2]: *** [volk/lib/CMakeFiles/volk_obj.dir/__/kernels/volk/asm/neon/v=
olk_16i_max_star_horizontal_16i.s.o] Error 1
> CMakeFiles/Makefile2:220: recipe for target 'volk/lib/CMakeFiles/volk_obj=
.dir/all' failed
> make[1]: *** [volk/lib/CMakeFiles/volk_obj.dir/all] Error 2
> Makefile:162: recipe for target 'all' failed
> make: *** [all] Error 2
>
>
> I have searched unsuccessfully for an answer to this one, and figure it's
> some sort of configuration error that I missed.  The commands I am using
> are:
>
> $ cd ~/sdr/e310/rfnoc/oe/
> $ source ./environment-setup-cortexa9t2hf-neon-oe-linux-musleabi
> $ cd ~/sdr/e310/rfnoc/src/gnuradio
> $ mkdir build-arm
> $ cd build-arm/
> $ cmake -Wno-dev
> -DCMAKE_TOOLCHAIN_FILE=3D~/sdr/e310/rfnoc/src/gnuradio/cmake/Toolchains/o=
e-sdk_cross.cmake
> -DENABLE_GR_WXGUI=3DOFF -DENABLE_GR_VOCODER=3DOFF -DENABLE_GR_DTV=3DOFF
> -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=3DOFF -DCMAKE_INSTALL_PREFIX=3D/u=
sr ../
> $ make
>
>
> Any obvious issues?  Could there be something cached from the earlier
> build in the directions?  I'll post the cmake output below my signature t=
o
> keep it out of the way.
>
> Thanks,
> Jeff
>
>
> $ cmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=3D~/sdr/e310/rfnoc/src/gnuradio/c=
make/Toolchains/oe-sdk_cross.cmake -DENABLE_GR_WXGUI=3DOFF -DENABLE_GR_VOCO=
DER=3DOFF -DENABLE_GR_DTV=3DOFF -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=3DO=
FF -DCMAKE_INSTALL_PREFIX=3D/usr ../
> -- The CXX compiler identification is GNU 8.2.0
> -- The C compiler identification is GNU 8.2.0
> -- Check for working CXX compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x=
86_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-g++
> -- Check for working CXX compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x=
86_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-g++ -=
- works
> -- Detecting CXX compiler ABI info
> -- Detecting CXX compiler ABI info - done
> -- Detecting CXX compile features
> -- Detecting CXX compile features - done
> -- Check for working C compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86=
_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc
> -- Check for working C compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86=
_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc -- =
works
> -- Detecting C compiler ABI info
> -- Detecting C compiler ABI info - done
> -- Detecting C compile features
> -- Detecting C compile features - done
> -- Build type not specified: defaulting to release.
> -- Build type set to Release.
> -- Found Git: /usr/bin/git
> -- Extracting version information from git describe...
> -- Performing Test HAVE_VISIBILITY_HIDDEN
> -- Performing Test HAVE_VISIBILITY_HIDDEN - Success
> -- Performing Test HAVE_WARN_SIGN_COMPARE
> -- Performing Test HAVE_WARN_SIGN_COMPARE - Success
> -- Performing Test HAVE_WARN_ALL
> -- Performing Test HAVE_WARN_ALL - Success
> -- Performing Test HAVE_WARN_NO_UNINITIALIZED
> -- Performing Test HAVE_WARN_NO_UNINITIALIZED - Success
> -- Compiler Version: arm-oe-linux-musleabi-gcc (GCC) 8.2.0
> Copyright (C) 2018 Free Software Foundation, Inc.
> This is free software; see the source for copying conditions.  There is N=
O
> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOS=
E.
> -- Compiler Flags: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linu=
x/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc:::-O3 -DNDEBUG  -=
O2 -pipe -g -feliminate-unused-debug-types  -std=3Dgnu99 -fvisibility=3Dhid=
den -Wsign-compare -Wall -Wno-uninitialized
> /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-li=
nux-musleabi/arm-oe-linux-musleabi-g++:::-O3 -DNDEBUG  -O2 -pipe -g -felimi=
nate-unused-debug-types  -fvisibility=3Dhidden -Wsign-compare -Wall -Wno-un=
initialized
> -- ADDING PERF COUNTERS
> -- Building Static Libraries: OFF
> -- Looking for pthread.h
> -- Looking for pthread.h - found
> -- Looking for pthread_create
> -- Looking for pthread_create - found
> -- Found Threads: TRUE
> -- Boost version: 1.68.0
> -- Found the following Boost libraries:
> --   date_time
> --   program_options
> --   filesystem
> --   system
> --   regex
> --   thread
> --   chrono
> --   atomic
> -- Found PythonLibs: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-ne=
on-oe-linux-musleabi/usr/lib/libpython2.7.so (found suitable version "2.7.1=
6", minimum required is "2.7")
> --
> -- Checking for module SWIG
> -- Found SWIG version 3.0.12.
> -- Found SWIG: /usr/bin/swig3.0
> --
> -- The build system will automatically enable all components.
> -- Use -DENABLE_DEFAULT=3DOFF to disable components by default.
> --
> -- Configuring python-support support...
> --   Dependency PYTHONLIBS_FOUND =3D TRUE
> --   Dependency SWIG_FOUND =3D TRUE
> --   Dependency SWIG_VERSION_CHECK =3D TRUE
> --   Enabling python-support support.
> --   Override with -DENABLE_PYTHON=3DON/OFF
> -- Found PkgConfig: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-lin=
ux/usr/bin/pkg-config (found version "0.29.2")
> -- Checking for module 'cppunit'
> --   Found cppunit, version 1.13.2
> -- Found CPPUNIT: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-=
oe-linux-musleabi/usr/lib/libcppunit.so;dl
> --
> -- Configuring testing-support support...
> --   Dependency CPPUNIT_FOUND =3D TRUE
> --   Enabling testing-support support.
> --   Override with -DENABLE_TESTING=3DON/OFF
> --
> -- Configuring VOLK support...
> -- Build type set to Release.
> -- Extracting version information from git describe...
> -- Found PythonInterp: /usr/bin/python2 (found suitable version "2.7.17",=
 minimum required is "2")
> --
> -- Python checking for python >=3D 2.7
> -- Python checking for python >=3D 2.7 - found
> --
> -- Python checking for mako >=3D 0.4.2
> -- Python checking for mako >=3D 0.4.2 - found
> --
> -- Python checking for six - python 2 and 3 compatibility library
> -- Python checking for six - python 2 and 3 compatibility library - found
> -- Boost version: 1.68.0
> -- Found the following Boost libraries:
> --   filesystem
> --   system
> -- Checking for module 'orc-0.4 > 0.4.11'
> --   Found orc-0.4 > 0.4.11, version 0.4.28
> -- Found ORC: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-l=
inux-musleabi/usr/lib/liborc-0.4.so
> -- Found Doxygen: /usr/bin/doxygen (found version "1.8.13") found compone=
nts:  doxygen missing components:  dot
> -- QA Testing is enabled.
> --   Modify using: -DENABLE_TESTING=3DON/OFF
> -- System profiling is disabled.
> --   Modify using: -DENABLE_PROFILING=3DON/OFF
> -- Looking for cpuid.h
> -- Looking for cpuid.h - not found
> -- Looking for intrin.h
> -- Looking for intrin.h - not found
> -- Looking for fenv.h
> -- Looking for fenv.h - found
> -- Looking for dlfcn.h
> -- Looking for dlfcn.h - found
> -- Compiler name: GNU
> -- Performing Test HAVE_WERROR_UNUSED_CMD_LINE_ARG
> -- Performing Test HAVE_WERROR_UNUSED_CMD_LINE_ARG - Failed
> -- Looking for posix_memalign
> -- Looking for posix_memalign - found
> -- Performing Test have_mfloat_abi_softfp
> -- Performing Test have_mfloat_abi_softfp - Failed
> -- Performing Test have_mfloat_abi_hard
> -- Performing Test have_mfloat_abi_hard - Success
> -- Performing Test have_mfpu_neon
> -- Performing Test have_mfpu_neon - Success
> -- Performing Test have_funsafe_math_optimizations
> -- Performing Test have_funsafe_math_optimizations - Success
> -- Performing Test have_m32
> -- Performing Test have_m32 - Failed
> -- Performing Test have_m64
> -- Performing Test have_m64 - Failed
> -- Performing Test have_m3dnow
> -- Performing Test have_m3dnow - Failed
> -- Performing Test have_msse4_2
> -- Performing Test have_msse4_2 - Failed
> -- Performing Test have_mpopcnt
> -- Performing Test have_mpopcnt - Failed
> -- Performing Test have_mmmx
> -- Performing Test have_mmmx - Failed
> -- Performing Test have_mfma
> -- Performing Test have_mfma - Failed
> -- Performing Test have_msse
> -- Performing Test have_msse - Failed
> -- Performing Test have_msse2
> -- Performing Test have_msse2 - Failed
> -- Performing Test have_msse3
> -- Performing Test have_msse3 - Failed
> -- Performing Test have_mssse3
> -- Performing Test have_mssse3 - Failed
> -- Performing Test have_msse4a
> -- Performing Test have_msse4a - Failed
> -- Performing Test have_msse4_1
> -- Performing Test have_msse4_1 - Failed
> -- Performing Test have_mavx
> -- Performing Test have_mavx - Failed
> -- Performing Test have_mavx2
> -- Performing Test have_mavx2 - Failed
> -- Architecture is not x86 or x86_64, Overruled arch 3dnow
> -- Architecture is not x86 or x86_64, Overruled arch mmx
> -- Architecture is not x86 or x86_64, Overruled arch sse
> -- Architecture is not x86 or x86_64, Overruled arch sse2
> -- Architecture is not x86 or x86_64, Overruled arch sse3
> -- Architecture is not x86 or x86_64, Overruled arch ssse3
> -- Architecture is not x86 or x86_64, Overruled arch sse4_a
> -- Architecture is not x86 or x86_64, Overruled arch sse4_1
> -- Architecture is not x86 or x86_64, Overruled arch sse4_2
> -- Architecture is not x86 or x86_64, Overruled arch avx
> -- Available architectures: generic;hardfp;neon;orc;norc
> -- Available machines: generic_orc;neon_hardfp_orc
> -- BUILD TYPE =3D RELEASE
> -- Base cflags =3D -O3 -DNDEBUG  -O2 -pipe -g -feliminate-unused-debug-ty=
pes  -std=3Dgnu99 -fvisibility=3Dhidden -Wsign-compare -Wall -Wno-uninitial=
ized -Wall
> -- BUILD INFO ::: generic_orc ::: GNU ::: -O3 -DNDEBUG  -O2 -pipe -g -fel=
iminate-unused-debug-types  -std=3Dgnu99 -fvisibility=3Dhidden -Wsign-compa=
re -Wall -Wno-uninitialized -Wall
> -- BUILD INFO ::: neon_hardfp_orc ::: GNU ::: -O3 -DNDEBUG  -O2 -pipe -g =
-feliminate-unused-debug-types  -std=3Dgnu99 -fvisibility=3Dhidden -Wsign-c=
ompare -Wall -Wno-uninitialized -Wall -mfpu=3Dneon -funsafe-math-optimizati=
ons -mfloat-abi=3Dhard
> -- Compiler Version: arm-oe-linux-musleabi-gcc (GCC) 8.2.0
> Copyright (C) 2018 Free Software Foundation, Inc.
> This is free software; see the source for copying conditions.  There is N=
O
> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOS=
E.
> -- ---- Adding ASM files
> -- -- Detected neon architecture; enabling ASM
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels=
/volk/asm/neon/volk_16i_max_star_horizontal_16i.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels=
/volk/asm/neon/volk_32f_s32f_multiply_32f_a_neonasm.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels=
/volk/asm/neon/volk_32f_x2_add_32f_a_neonasm.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels=
/volk/asm/neon/volk_32f_x2_add_32f_a_neonpipeline.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels=
/volk/asm/neon/volk_32f_x2_dot_prod_32f_a_neonasm.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels=
/volk/asm/neon/volk_32f_x2_dot_prod_32f_a_neonasm_opts.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels=
/volk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_neonasm.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels=
/volk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_neonasmvmla.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels=
/volk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_neonpipeline.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels=
/volk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_unrollasm.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels=
/volk/asm/neon/volk_32fc_x2_dot_prod_32fc_a_neonasm.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels=
/volk/asm/neon/volk_32fc_x2_dot_prod_32fc_a_neonasm_opttests.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels=
/volk/asm/neon/volk_32fc_x2_multiply_32fc_a_neonasm.s
> -- The ASM compiler identification is GNU
> -- Found assembler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-lin=
ux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc
> -- c flags:  -O2 -pipe -g -feliminate-unused-debug-types  -std=3Dgnu99 -f=
visibility=3Dhidden -Wsign-compare -Wall -Wno-uninitialized -Wall;  -march=
=3Darmv7-a -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 -mmusl=
 --sysroot=3D/home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linu=
x-musleabi
> -- asm flags: -mfpu=3Dneon -g
> -- Loading version 1.4 into constants...
> -- Using install prefix: /usr
> --
> -- Configuring volk support...
> --   Enabling volk support.
> --   Override with -DENABLE_VOLK=3DON/OFF
> --   Override with -DENABLE_INTERNAL_VOLK=3DON/OFF
> -- Found LOG4CPP: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-=
oe-linux-musleabi/usr/lib/liblog4cpp.so
> -- ENABLE_GR_LOG set to ON.
> -- HAVE_LOG4CPP set to True.
> -- LOG4CPP_LIBRARIES set to /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9=
t2hf-neon-oe-linux-musleabi/usr/lib/liblog4cpp.so.
> -- Found Sphinx: /usr/bin/sphinx-build
> --
> -- Configuring doxygen support...
> --   Dependency DOXYGEN_FOUND =3D YES
> --   Disabling doxygen support.
> --   Override with -DENABLE_DOXYGEN=3DON/OFF
> --
> -- Configuring sphinx support...
> --   Dependency SPHINX_FOUND =3D TRUE
> --   Enabling sphinx support.
> --   Override with -DENABLE_SPHINX=3DON/OFF
> -- Looking for C++ include netdb.h
> -- Looking for C++ include netdb.h - found
> -- Looking for C++ include sys/time.h
> -- Looking for C++ include sys/time.h - found
> -- Looking for C++ include sys/types.h
> -- Looking for C++ include sys/types.h - found
> -- Looking for C++ include sys/select.h
> -- Looking for C++ include sys/select.h - found
> -- Looking for C++ include sys/socket.h
> -- Looking for C++ include sys/socket.h - found
> -- Looking for C++ include io.h
> -- Looking for C++ include io.h - not found
> -- Looking for C++ include sys/mman.h
> -- Looking for C++ include sys/mman.h - found
> -- Looking for C++ include sys/ipc.h
> -- Looking for C++ include sys/ipc.h - found
> -- Looking for C++ include sys/shm.h
> -- Looking for C++ include sys/shm.h - found
> -- Looking for C++ include signal.h
> -- Looking for C++ include signal.h - found
> -- Looking for C++ include netinet/in.h
> -- Looking for C++ include netinet/in.h - found
> -- Looking for C++ include arpa/inet.h
> -- Looking for C++ include arpa/inet.h - found
> -- Looking for C++ include byteswap.h
> -- Looking for C++ include byteswap.h - found
> -- Looking for C++ include linux/ppdev.h
> -- Looking for C++ include linux/ppdev.h - found
> -- Looking for C++ include dev/ppbus/ppi.h
> -- Looking for C++ include dev/ppbus/ppi.h - not found
> -- Looking for C++ include unistd.h
> -- Looking for C++ include unistd.h - found
> -- Looking for C++ include malloc.h
> -- Looking for C++ include malloc.h - found
> -- Performing Test HAVE_SNPRINTF
> -- Performing Test HAVE_SNPRINTF - Success
> -- Performing Test HAVE_SIGACTION
> -- Performing Test HAVE_SIGACTION - Success
> -- Performing Test HAVE_SELECT
> -- Performing Test HAVE_SELECT - Success
> -- Performing Test HAVE_SYSCONF
> -- Performing Test HAVE_SYSCONF - Success
> -- Performing Test HAVE_GETPAGESIZE
> -- Performing Test HAVE_GETPAGESIZE - Success
> -- Performing Test HAVE_SSLEEP
> -- Performing Test HAVE_SSLEEP - Failed
> -- Performing Test HAVE_NANOSLEEP
> -- Performing Test HAVE_NANOSLEEP - Success
> -- Performing Test HAVE_GETTIMEOFDAY
> -- Performing Test HAVE_GETTIMEOFDAY - Success
> -- Performing Test HAVE_VALLOC
> -- Performing Test HAVE_VALLOC - Success
> -- Performing Test HAVE_PTHREAD_SIGMASK
> -- Performing Test HAVE_PTHREAD_SIGMASK - Success
> -- Performing Test HAVE_CREATEFILEMAPPING
> -- Performing Test HAVE_CREATEFILEMAPPING - Failed
> -- Performing Test HAVE_SHM_OPEN
> -- Performing Test HAVE_SHM_OPEN - Success
> -- Performing Test HAVE_SINCOS
> -- Performing Test HAVE_SINCOS - Success
> -- Performing Test HAVE_SINCOSF
> -- Performing Test HAVE_SINCOSF - Success
> -- Performing Test HAVE_SINF
> -- Performing Test HAVE_SINF - Success
> -- Performing Test HAVE_COSF
> -- Performing Test HAVE_COSF - Success
> -- Performing Test HAVE_MMAP
> -- Performing Test HAVE_MMAP - Success
> -- Performing Test HAVE_PTHREAD_SETSCHEDPARAM
> -- Performing Test HAVE_PTHREAD_SETSCHEDPARAM - Success
> -- Performing Test HAVE_SCHED_SETSCHEDULER
> -- Performing Test HAVE_SCHED_SETSCHEDULER - Success
> --
> -- Configuring gnuradio-runtime support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_VOLK =3D ON
> --   Dependency PYTHONINTERP_FOUND =3D TRUE
> --   Enabling gnuradio-runtime support.
> --   Override with -DENABLE_GNURADIO_RUNTIME=3DON/OFF
> --
> -- Configuring gr-ctrlport support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency SWIG_FOUND =3D TRUE
> --   Dependency SWIG_VERSION_CHECK =3D TRUE
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Enabling gr-ctrlport support.
> --   Override with -DENABLE_GR_CTRLPORT=3DON/OFF
> -- Looking for C++ include sys/resource.h
> -- Looking for C++ include sys/resource.h - found
> -- Loading build date Thu, 02 Apr 2020 20:12:59 into constants...
> -- Loading version 3.7.14.0 into constants...
> -- Checking for module 'thrift'
> --   No package 'thrift' found
> -- Binary 'thrift' not found.
> -- Looking for C++ include windows.h
> -- Looking for C++ include windows.h - not found
> -- TRY_SHM_VMCIRCBUF set to ON.
> -- Found PythonLibs: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-ne=
on-oe-linux-musleabi/usr/lib/libpython2.7.so (found suitable version "2.7.1=
6", minimum required is "2")
> -- Performing Test HAVE_WNO_UNUSED_BUT_SET_VARIABLE
> -- Performing Test HAVE_WNO_UNUSED_BUT_SET_VARIABLE - Success
> --
> -- Configuring gr-blocks support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_VOLK =3D ON
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Enabling gr-blocks support.
> --   Override with -DENABLE_GR_BLOCKS=3DON/OFF
> --
> -- Python checking for python >=3D 2.5
> -- Python checking for python >=3D 2.5 - found
> --
> -- Python checking for Cheetah >=3D 2.0.0
> -- Python checking for Cheetah >=3D 2.0.0 - found
> --
> -- Python checking for lxml >=3D 1.3.6
> -- Python checking for lxml >=3D 1.3.6 - found
> --
> -- Python checking for pygtk >=3D 2.10.0
> -- Python checking for pygtk >=3D 2.10.0 - found
> --
> -- Python checking for numpy
> -- Python checking for numpy - found
> --
> -- Configuring gnuradio-companion support...
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_PYTHON =3D ON
> --   Enabling gnuradio-companion support.
> --   Override with -DENABLE_GRC=3DON/OFF
> -- Checking for module 'gsl >=3D 1.10'
> --   Found gsl , version 1.15
> -- Found GSL: gsl;gslcblas;m
> --
> -- Configuring gr-fec support...
> --   Dependency ENABLE_VOLK =3D ON
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_BLOCKS =3D ON
> --   Enabling gr-fec support.
> --   Override with -DENABLE_GR_FEC=3DON/OFF
> -- Checking for module 'fftw3f >=3D 3.0'
> --   Found fftw3f , version 3.3.8
> -- Found FFTW3F: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-o=
e-linux-musleabi/usr/lib/libfftw3f.so
> --
> -- Configuring gr-fft support...
> --   Dependency ENABLE_VOLK =3D ON
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_BLOCKS =3D ON
> --   Dependency FFTW3F_FOUND =3D TRUE
> --   Enabling gr-fft support.
> --   Override with -DENABLE_GR_FFT=3DON/OFF
> --
> -- Configuring gr-filter support...
> --   Dependency ENABLE_VOLK =3D ON
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_FFT =3D ON
> --   Dependency ENABLE_GR_BLOCKS =3D ON
> --   Enabling gr-filter support.
> --   Override with -DENABLE_GR_FILTER=3DON/OFF
> --
> -- Configuring gr-analog support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_VOLK =3D ON
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_BLOCKS =3D ON
> --   Dependency ENABLE_GR_FFT =3D ON
> --   Dependency ENABLE_GR_FILTER =3D ON
> --   Enabling gr-analog support.
> --   Override with -DENABLE_GR_ANALOG=3DON/OFF
> --
> -- Configuring gr-digital support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_VOLK =3D ON
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_FFT =3D ON
> --   Dependency ENABLE_GR_FILTER =3D ON
> --   Dependency ENABLE_GR_BLOCKS =3D ON
> --   Dependency ENABLE_GR_ANALOG =3D ON
> --   Enabling gr-digital support.
> --   Override with -DENABLE_GR_DIGITAL=3DON/OFF
> --
> -- Configuring gr-dtv support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_ANALOG =3D ON
> --   Dependency ENABLE_GR_FILTER =3D ON
> --   Dependency ENABLE_GR_FEC =3D ON
> --   Dependency ENABLE_VOLK =3D ON
> --   Disabling gr-dtv support.
> --   Override with -DENABLE_GR_DTV=3DON/OFF
> --
> -- Configuring gr-atsc support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_FFT =3D ON
> --   Dependency ENABLE_GR_BLOCKS =3D ON
> --   Dependency ENABLE_GR_FEC =3D ON
> --   Dependency ENABLE_GR_FILTER =3D ON
> --   Dependency ENABLE_GR_ANALOG =3D ON
> --   Disabling gr-atsc support.
> --   Override with -DENABLE_GR_ATSC=3DON/OFF
> --
> -- Configuring gr-audio support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Enabling gr-audio support.
> --   Override with -DENABLE_GR_AUDIO=3DON/OFF
> -- Checking for module 'alsa'
> --   Found alsa, version 1.1.6
> -- Found ALSA 1.1.6
> -- Checking for module 'jack'
> --   No package 'jack' found
> -- Looking for C++ include AudioUnit/AudioUnit.h
> -- Looking for C++ include AudioUnit/AudioUnit.h - not found
> -- Looking for C++ include AudioToolbox/AudioToolbox.h
> -- Looking for C++ include AudioToolbox/AudioToolbox.h - not found
> -- Checking for module 'portaudio-2.0'
> --   No package 'portaudio-2.0' found
> -- Checking for module 'comedilib'
> --   No package 'comedilib' found
> --
> -- Configuring gr-comedi support...
> --   Dependency COMEDI_FOUND =3D
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Disabling gr-comedi support.
> --   Override with -DENABLE_GR_COMEDI=3DON/OFF
> --
> -- Configuring gr-channels support...
> --   Dependency ENABLE_VOLK =3D ON
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_BLOCKS =3D ON
> --   Dependency ENABLE_GR_FFT =3D ON
> --   Dependency ENABLE_GR_FILTER =3D ON
> --   Dependency ENABLE_GR_ANALOG =3D ON
> --   Enabling gr-channels support.
> --   Override with -DENABLE_GR_CHANNELS=3DON/OFF
> --
> -- Configuring gr-noaa support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_BLOCKS =3D ON
> --   Enabling gr-noaa support.
> --   Override with -DENABLE_GR_NOAA=3DON/OFF
> --
> -- Configuring gr-pager support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_FILTER =3D ON
> --   Dependency ENABLE_GR_ANALOG =3D ON
> --   Enabling gr-pager support.
> --   Override with -DENABLE_GR_PAGER=3DON/OFF
> CMake Warning at /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/=
usr/share/cmake-3.12/Modules/FindQt4.cmake:617 (message):
>   /usr/bin/qmake reported QT_INSTALL_LIBS as "/usr/lib/x86_64-linux-gnu" =
but
>   QtCore could not be found there.  Qt is NOT installed correctly for the
>   target build environment.
> Call Stack (most recent call first):
>   gr-qtgui/CMakeLists.txt:25 (find_package)
>
>
> --
> -- Python checking for PyQt4
> -- Python checking for PyQt4 - found
> --
> -- Configuring gr-qtgui support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency QT4_FOUND =3D
> --   Dependency QWT_FOUND =3D FALSE
> --   Dependency ENABLE_VOLK =3D ON
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_FFT =3D ON
> --   Dependency ENABLE_GR_FILTER =3D ON
> --   Dependency PYTHONLIBS_FOUND =3D TRUE
> --   Disabling gr-qtgui support.
> --   Override with -DENABLE_GR_QTGUI=3DON/OFF
> --
> -- Configuring gr-trellis support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_ANALOG =3D ON
> --   Dependency ENABLE_GR_BLOCKS =3D ON
> --   Dependency ENABLE_GR_DIGITAL =3D ON
> --   Enabling gr-trellis support.
> --   Override with -DENABLE_GR_TRELLIS=3DON/OFF
> -- Found UHD: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-l=
inux-musleabi/usr/lib/libuhd.so
> --
> -- Configuring gr-uhd support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency UHD_FOUND =3D TRUE
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_FILTER =3D ON
> --   Dependency ENABLE_GR_BLOCKS =3D ON
> --   Dependency ENABLE_GR_ANALOG =3D ON
> --   Enabling gr-uhd support.
> --   Override with -DENABLE_GR_UHD=3DON/OFF
> --   UHD Version: 3.15.0.0-0-gaea0e2de
> --
> -- Configuring gr-utils support...
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_PYTHON =3D ON
> --   Enabling gr-utils support.
> --   Override with -DENABLE_GR_UTILS=3DON/OFF
> -- Could NOT find SDL (missing: SDL_LIBRARY SDL_INCLUDE_DIR)
> --
> -- Configuring gr-video-sdl support...
> --   Dependency SDL_FOUND =3D FALSE
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Disabling gr-video-sdl support.
> --   Override with -DENABLE_GR_VIDEO_SDL=3DON/OFF
> --
> -- Configuring gr-vocoder support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_FFT =3D ON
> --   Dependency ENABLE_GR_BLOCKS =3D ON
> --   Dependency ENABLE_GR_FILTER =3D ON
> --   Dependency ENABLE_GR_ANALOG =3D ON
> --   Disabling gr-vocoder support.
> --   Override with -DENABLE_GR_VOCODER=3DON/OFF
> -- Checking for module 'libusb-1.0'
> --   Found libusb-1.0, version 1.0.22
> -- Found libusb-1.0: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-ne=
on-oe-linux-musleabi/usr/include/libusb-1.0, /home/sdr/sdr/e310/rfnoc/oe/sy=
sroots/cortexa9t2hf-neon-oe-linux-musleabi/lib/libusb-1.0.so
> --
> -- Configuring gr-fcd support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_BLOCKS =3D ON
> --   Dependency ENABLE_GR_AUDIO =3D ON
> --   Dependency LIBUSB_FOUND =3D TRUE
> --   Enabling gr-fcd support.
> --   Override with -DENABLE_GR_FCD=3DON/OFF
> --
> -- Configuring gr-wavelet support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_BLOCKS =3D ON
> --   Dependency ENABLE_GR_ANALOG =3D ON
> --   Dependency GSL_FOUND =3D TRUE
> --   Enabling gr-wavelet support.
> --   Override with -DENABLE_GR_WAVELET=3DON/OFF
> --
> -- Python checking for wx >=3D 2.8
> -- Python checking for wx >=3D 2.8 - found
> --
> -- Python checking for numpy
> -- Python checking for numpy - found
> --
> -- Configuring gr-wxgui support...
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ENABLE_GR_FFT =3D ON
> --   Dependency ENABLE_GR_FILTER =3D ON
> --   Dependency ENABLE_GR_ANALOG =3D ON
> --   Dependency ENABLE_PYTHON =3D ON
> --   Disabling gr-wxgui support.
> --   Override with -DENABLE_GR_WXGUI=3DON/OFF
> -- Checking for module 'libzmq'
> --   Found libzmq, version 4.2.5
> -- Found ZEROMQ: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-o=
e-linux-musleabi/usr/lib/libzmq.so
> --
> -- Configuring gr-zeromq support...
> --   Dependency Boost_FOUND =3D 1
> --   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
> --   Dependency ZEROMQ_FOUND =3D TRUE
> --   Enabling gr-zeromq support.
> --   Override with -DENABLE_GR_ZEROMQ=3DON/OFF
> --
> -- ######################################################
> -- # Gnuradio enabled components
> -- ######################################################
> --   * python-support
> --   * testing-support
> --   * volk
> --   * sphinx
> --   * gnuradio-runtime
> --   * gr-ctrlport
> --   * gr-blocks
> --   * gnuradio-companion
> --   * gr-fec
> --   * gr-fft
> --   * gr-filter
> --   * gr-analog
> --   * gr-digital
> --   * gr-audio
> --   * * alsa
> --   * * oss
> --   * gr-channels
> --   * gr-noaa
> --   * gr-pager
> --   * gr-trellis
> --   * gr-uhd
> --   * gr-utils
> --   * gr-fcd
> --   * gr-wavelet
> --   * gr-zeromq
> --
> -- ######################################################
> -- # Gnuradio disabled components
> -- ######################################################
> --   * doxygen
> --   * gr-dtv
> --   * gr-atsc
> --   * gr-comedi
> --   * gr-qtgui
> --   * gr-video-sdl
> --   * gr-vocoder
> --   * gr-wxgui
> --
> -- Using install prefix: /usr
> -- Building for version: 3.7.14.0 / 3.7.14.0
> -- Configuring done
> -- Generating done
> -- Build files have been written to: /home/sdr/sdr/e310/rfnoc/src/gnuradi=
o/build-arm
>
>
>
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000049985405a687c02d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff,<div><br></div><div>I&#39;m looking into this cros=
s compiling issue. Using this flag with cmake: -DCMAKE_ASM_COMPILER_ARG1:ST=
RING=3D&quot;-mcpu=3Dcortex-a9&quot; seems to work as a temporary workaroun=
d for the volk error.</div><div><br></div><div>Jonathon</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 3,=
 2020 at 8:31 AM Jeff S via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<span>$ which gnuradio-config-info <br>
</span>
<div>/home/user/sdr/e310/rfnoc/installs/bin/gnuradio-config-info<br>
</div>
<span>$ gnuradio-config-info -v</span><br>
</div>
<div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
3.7.14.0</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I used maint-3.7.=C2=A0 This is what I did for the non-ARM build:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px;margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<span>$ git clone --recursive <a href=3D"https://github.com/gnuradio/gnurad=
io" target=3D"_blank">https://github.com/gnuradio/gnuradio</a><br>
</span>
<div>$ cd ~/sdr/e310/rfnoc/src/gnuradio/<br>
</div>
<div>$ git checkout maint-3.7<br>
</div>
<span>$ git submodule update --init --recursive</span><br>
</div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
This is from the directions located at the first build of GNU Radio located=
 in the application note:
<a href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Bui=
lding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Building_GNU_Radio" id=
=3D"gmail-m_-586882655401436744LPNoLP577864" target=3D"_blank">
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC=
_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Building_GNU_Radio</a>.<br>
</div>
<br>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Jeff<br>
</div>
</div>
<div id=3D"gmail-m_-586882655401436744appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-586882655401436744divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" =
target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of R=
on Economos via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, April 3, 2020 7:17 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] E310 Cross-compiling UHD / GNU Radio (volk=
?)</font>
<div>=C2=A0</div>
</div>
<div style=3D"background-color:rgb(255,255,255)">
<p style=3D"margin-top:0px;margin-bottom:0px">What version of GNU Radio are=
 you trying to build? If it&#39;s 3.8 or 3.9, you need a newer version of V=
OLK.<br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Ron</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<div>On 4/3/20 05:10, Jeff S wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Ron,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I re-created my build-arm directory and tried adding this with the same res=
ults.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Philip, in a previous email, had me looking through the Volk issues, and ma=
ybe there is one related that is OPEN:=C2=A0 &quot;Missing NEON Implementat=
ions #243&quot; (<a href=3D"https://github.com/gnuradio/volk/issues/243" id=
=3D"gmail-m_-586882655401436744LPNoLP260079" target=3D"_blank">https://gith=
ub.com/gnuradio/volk/issues/243</a>).=C2=A0
 I am still trying to understand it to see if there&#39;s something I can d=
o related to it.=C2=A0 Just have been trying to follow the Ettus applicatio=
n notes.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Jeff<br>
</div>
</div>
<br>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-586882655401436744x_divRplyFwdMsg" dir=3D"ltr"><font st=
yle=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fr=
om:</b> USRP-users
<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" target=3D"_blank">
&lt;usrp-users-bounces@lists.ettus.com&gt;</a> on behalf of Ron Economos vi=
a USRP-users
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">&lt;usrp-us=
ers@lists.ettus.com&gt;</a><br>
<b>Sent:</b> Thursday, April 2, 2020 6:59 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">
usrp-users@lists.ettus.com</a> <a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] E310 Cross-compiling UHD / GNU Radio (volk=
?)</font>
<div>=C2=A0</div>
</div>
<div style=3D"background-color:rgb(255,255,255)">
<p style=3D"margin-top:0px;margin-bottom:0px">
Try adding this to your CMake command line.</p>
<p style=3D"margin-top:0px;margin-bottom:0px">
<br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">
-DCMAKE_CXX_FLAGS:STRING=3D&quot;-march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=
=3Dneon -mtune=3Dcortex-a9&quot; -DCMAKE_C_FLAGS:STRING=3D&quot;-march=3Dar=
mv7-a -mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a9&quot; -DCMAKE_ASM_=
FLAGS:STRING=3D&quot;-march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneon -mtun=
e=3Dcortex-a9
 -g&quot;</p>
<p style=3D"margin-top:0px;margin-bottom:0px">
<br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">
Ron</p>
<p style=3D"margin-top:0px;margin-bottom:0px">
<br>
</p>
<div>On 4/2/20 13:45, Jeff S via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I had a problem with the initial build environment when setting up my envir=
onment for the E310.=C2=A0 Up to now, I have been able to get the UHD cross=
-compiled, a new image for the microSD card built, and checked up to the
<b># uhd_usrp_probe</b> step on the E310 (from <a href=3D"https://kb.ettus.=
com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_=
/_gr-ettus_from_Source" id=3D"gmail-m_-586882655401436744LPNoLP650941" targ=
et=3D"_blank">
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC=
_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a>) with success.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I am now at the point where I am <b>Cross-Compiling GNU Radio</b>.=C2=A0 I =
have been using
<i>e3xx_e310_sdk_default-v3.15.0.0.zip</i>, and at the point where I am bui=
lding GNU Radio, I am getting an error:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<blockquote style=3D"margin-top:0px;margin-bottom:0px">
<pre><font color=3D"#AD7FA8"><b>Scanning dependencies of target volk_obj</b=
></font>
[  3%] <font color=3D"#4E9A06">Building ASM object volk/lib/CMakeFiles/volk=
_obj.dir/__/kernels/volk/asm/neon/volk_16i_max_star_horizontal_16i.s.o</fon=
t>
/home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_m=
ax_star_horizontal_16i.s: Assembler messages:
/home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_m=
ax_star_horizontal_16i.s:9: Error: selected processor does not support `pld=
 [r1:128]&#39; in ARM mode
/home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_m=
ax_star_horizontal_16i.s:20: Error: selected processor does not support `pl=
d [r4:128]&#39; in ARM mode
/home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_m=
ax_star_horizontal_16i.s:44: Error: selected processor does not support `sx=
th r6,r6&#39; in ARM mode
volk/lib/CMakeFiles/volk_obj.dir/build.make:1572: recipe for target &#39;vo=
lk/lib/CMakeFiles/volk_obj.dir/__/kernels/volk/asm/neon/volk_16i_max_star_h=
orizontal_16i.s.o&#39; failed
make[2]: *** [volk/lib/CMakeFiles/volk_obj.dir/__/kernels/volk/asm/neon/vol=
k_16i_max_star_horizontal_16i.s.o] Error 1
CMakeFiles/Makefile2:220: recipe for target &#39;volk/lib/CMakeFiles/volk_o=
bj.dir/all&#39; failed
make[1]: *** [volk/lib/CMakeFiles/volk_obj.dir/all] Error 2
Makefile:162: recipe for target &#39;all&#39; failed
make: *** [all] Error 2
</pre>
</blockquote>
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I have searched unsuccessfully for an answer to this one, and figure it&#39=
;s some sort of configuration error that I missed.=C2=A0 The commands I am =
using are:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px;margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ cd ~/sdr/e310/rfnoc/oe/<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ source ./environment-setup-cortexa9t2hf-neon-oe-linux-musleabi</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ cd ~/sdr/e310/rfnoc/src/gnuradio</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ mkdir build-arm<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ cd build-arm/<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ cmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=3D~/sdr/e310/rfnoc/src/gnuradio/cma=
ke/Toolchains/oe-sdk_cross.cmake -DENABLE_GR_WXGUI=3DOFF -DENABLE_GR_VOCODE=
R=3DOFF -DENABLE_GR_DTV=3DOFF -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=3DOFF=
 -DCMAKE_INSTALL_PREFIX=3D/usr ../<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
$ make</div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Any obvious issues?=C2=A0 Could there be something cached from the earlier =
build in the directions?=C2=A0 I&#39;ll post the cmake output below my sign=
ature to keep it out of the way.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Jeff</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<pre>$ cmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=3D~/sdr/e310/rfnoc/src/gnuradi=
o/cmake/Toolchains/oe-sdk_cross.cmake -DENABLE_GR_WXGUI=3DOFF -DENABLE_GR_V=
OCODER=3DOFF -DENABLE_GR_DTV=3DOFF -DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=
=3DOFF -DCMAKE_INSTALL_PREFIX=3D/usr ../
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
-- Found Git: /usr/bin/git =20
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
-- Found Threads: TRUE =20
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
-oe-linux-musleabi/usr/lib/<a href=3D"http://libpython2.7.so" target=3D"_bl=
ank">libpython2.7.so</a> (found suitable version &quot;2.7.16&quot;, minimu=
m required is &quot;2.7&quot;)=20
--=20
-- Checking for module SWIG
-- Found SWIG version 3.0.12.
-- Found SWIG: /usr/bin/swig3.0 =20
--=20
-- The build system will automatically enable all components.
-- Use -DENABLE_DEFAULT=3DOFF to disable components by default.
--=20
-- Configuring python-support support...
--   Dependency PYTHONLIBS_FOUND =3D TRUE
--   Dependency SWIG_FOUND =3D TRUE
--   Dependency SWIG_VERSION_CHECK =3D TRUE
--   Enabling python-support support.
--   Override with -DENABLE_PYTHON=3DON/OFF
-- Found PkgConfig: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux=
/usr/bin/pkg-config (found version &quot;0.29.2&quot;)=20
-- Checking for module &#39;cppunit&#39;
--   Found cppunit, version 1.13.2
-- Found CPPUNIT: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe=
-linux-musleabi/usr/lib/libcppunit.so;dl =20
--=20
-- Configuring testing-support support...
--   Dependency CPPUNIT_FOUND =3D TRUE
--   Enabling testing-support support.
--   Override with -DENABLE_TESTING=3DON/OFF
--=20
-- Configuring VOLK support...
-- Build type set to Release.
-- Extracting version information from git describe...
-- Found PythonInterp: /usr/bin/python2 (found suitable version &quot;2.7.1=
7&quot;, minimum required is &quot;2&quot;)=20
--=20
-- Python checking for python &gt;=3D 2.7
-- Python checking for python &gt;=3D 2.7 - found
--=20
-- Python checking for mako &gt;=3D 0.4.2
-- Python checking for mako &gt;=3D 0.4.2 - found
--=20
-- Python checking for six - python 2 and 3 compatibility library
-- Python checking for six - python 2 and 3 compatibility library - found
-- Boost version: 1.68.0
-- Found the following Boost libraries:
--   filesystem
--   system
-- Checking for module &#39;orc-0.4 &gt; 0.4.11&#39;
--   Found orc-0.4 &gt; 0.4.11, version 0.4.28
-- Found ORC: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-lin=
ux-musleabi/usr/lib/<a href=3D"http://liborc-0.4.so" target=3D"_blank">libo=
rc-0.4.so</a> =20
-- Found Doxygen: /usr/bin/doxygen (found version &quot;1.8.13&quot;) found=
 components:  doxygen missing components:  dot
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
 -Wall -Wno-uninitialized -Wall=20
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
--=20
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
-- Found Sphinx: /usr/bin/sphinx-build =20
--=20
-- Configuring doxygen support...
--   Dependency DOXYGEN_FOUND =3D YES
--   Disabling doxygen support.
--   Override with -DENABLE_DOXYGEN=3DON/OFF
--=20
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
--=20
-- Configuring gnuradio-runtime support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_VOLK =3D ON
--   Dependency PYTHONINTERP_FOUND =3D TRUE
--   Enabling gnuradio-runtime support.
--   Override with -DENABLE_GNURADIO_RUNTIME=3DON/OFF
--=20
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
-- Checking for module &#39;thrift&#39;
--   No package &#39;thrift&#39; found
-- Binary &#39;thrift&#39; not found.
-- Looking for C++ include windows.h
-- Looking for C++ include windows.h - not found
-- TRY_SHM_VMCIRCBUF set to ON.
-- Found PythonLibs: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon=
-oe-linux-musleabi/usr/lib/<a href=3D"http://libpython2.7.so" target=3D"_bl=
ank">libpython2.7.so</a> (found suitable version &quot;2.7.16&quot;, minimu=
m required is &quot;2&quot;)=20
-- Performing Test HAVE_WNO_UNUSED_BUT_SET_VARIABLE
-- Performing Test HAVE_WNO_UNUSED_BUT_SET_VARIABLE - Success
--=20
-- Configuring gr-blocks support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_VOLK =3D ON
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Enabling gr-blocks support.
--   Override with -DENABLE_GR_BLOCKS=3DON/OFF
--=20
-- Python checking for python &gt;=3D 2.5
-- Python checking for python &gt;=3D 2.5 - found
--=20
-- Python checking for Cheetah &gt;=3D 2.0.0
-- Python checking for Cheetah &gt;=3D 2.0.0 - found
--=20
-- Python checking for lxml &gt;=3D 1.3.6
-- Python checking for lxml &gt;=3D 1.3.6 - found
--=20
-- Python checking for pygtk &gt;=3D 2.10.0
-- Python checking for pygtk &gt;=3D 2.10.0 - found
--=20
-- Python checking for numpy
-- Python checking for numpy - found
--=20
-- Configuring gnuradio-companion support...
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_PYTHON =3D ON
--   Enabling gnuradio-companion support.
--   Override with -DENABLE_GRC=3DON/OFF
-- Checking for module &#39;gsl &gt;=3D 1.10&#39;
--   Found gsl , version 1.15
-- Found GSL: gsl;gslcblas;m =20
--=20
-- Configuring gr-fec support...
--   Dependency ENABLE_VOLK =3D ON
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Enabling gr-fec support.
--   Override with -DENABLE_GR_FEC=3DON/OFF
-- Checking for module &#39;fftw3f &gt;=3D 3.0&#39;
--   Found fftw3f , version 3.3.8
-- Found FFTW3F: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-=
linux-musleabi/usr/lib/libfftw3f.so =20
--=20
-- Configuring gr-fft support...
--   Dependency ENABLE_VOLK =3D ON
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency FFTW3F_FOUND =3D TRUE
--   Enabling gr-fft support.
--   Override with -DENABLE_GR_FFT=3DON/OFF
--=20
-- Configuring gr-filter support...
--   Dependency ENABLE_VOLK =3D ON
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_FFT =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Enabling gr-filter support.
--   Override with -DENABLE_GR_FILTER=3DON/OFF
--=20
-- Configuring gr-analog support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_VOLK =3D ON
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency ENABLE_GR_FFT =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Enabling gr-analog support.
--   Override with -DENABLE_GR_ANALOG=3DON/OFF
--=20
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
--=20
-- Configuring gr-dtv support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Dependency ENABLE_GR_FEC =3D ON
--   Dependency ENABLE_VOLK =3D ON
--   Disabling gr-dtv support.
--   Override with -DENABLE_GR_DTV=3DON/OFF
--=20
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
--=20
-- Configuring gr-audio support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Enabling gr-audio support.
--   Override with -DENABLE_GR_AUDIO=3DON/OFF
-- Checking for module &#39;alsa&#39;
--   Found alsa, version 1.1.6
-- Found ALSA 1.1.6
-- Checking for module &#39;jack&#39;
--   No package &#39;jack&#39; found
-- Looking for C++ include AudioUnit/AudioUnit.h
-- Looking for C++ include AudioUnit/AudioUnit.h - not found
-- Looking for C++ include AudioToolbox/AudioToolbox.h
-- Looking for C++ include AudioToolbox/AudioToolbox.h - not found
-- Checking for module &#39;portaudio-2.0&#39;
--   No package &#39;portaudio-2.0&#39; found
-- Checking for module &#39;comedilib&#39;
--   No package &#39;comedilib&#39; found
--=20
-- Configuring gr-comedi support...
--   Dependency COMEDI_FOUND =3D=20
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Disabling gr-comedi support.
--   Override with -DENABLE_GR_COMEDI=3DON/OFF
--=20
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
--=20
-- Configuring gr-noaa support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Enabling gr-noaa support.
--   Override with -DENABLE_GR_NOAA=3DON/OFF
--=20
-- Configuring gr-pager support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Enabling gr-pager support.
--   Override with -DENABLE_GR_PAGER=3DON/OFF
CMake Warning at /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/us=
r/share/cmake-3.12/Modules/FindQt4.cmake:617 (message):
  /usr/bin/qmake reported QT_INSTALL_LIBS as &quot;/usr/lib/x86_64-linux-gn=
u&quot; but
  QtCore could not be found there.  Qt is NOT installed correctly for the
  target build environment.
Call Stack (most recent call first):
  gr-qtgui/CMakeLists.txt:25 (find_package)


--=20
-- Python checking for PyQt4
-- Python checking for PyQt4 - found
--=20
-- Configuring gr-qtgui support...
--   Dependency Boost_FOUND =3D 1
--   Dependency QT4_FOUND =3D=20
--   Dependency QWT_FOUND =3D FALSE
--   Dependency ENABLE_VOLK =3D ON
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_FFT =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Dependency PYTHONLIBS_FOUND =3D TRUE
--   Disabling gr-qtgui support.
--   Override with -DENABLE_GR_QTGUI=3DON/OFF
--=20
-- Configuring gr-trellis support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency ENABLE_GR_DIGITAL =3D ON
--   Enabling gr-trellis support.
--   Override with -DENABLE_GR_TRELLIS=3DON/OFF
-- Found UHD: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-lin=
ux-musleabi/usr/lib/libuhd.so =20
--=20
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
--=20
-- Configuring gr-utils support...
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_PYTHON =3D ON
--   Enabling gr-utils support.
--   Override with -DENABLE_GR_UTILS=3DON/OFF
-- Could NOT find SDL (missing: SDL_LIBRARY SDL_INCLUDE_DIR)=20
--=20
-- Configuring gr-video-sdl support...
--   Dependency SDL_FOUND =3D FALSE
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Disabling gr-video-sdl support.
--   Override with -DENABLE_GR_VIDEO_SDL=3DON/OFF
--=20
-- Configuring gr-vocoder support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_FFT =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Disabling gr-vocoder support.
--   Override with -DENABLE_GR_VOCODER=3DON/OFF
-- Checking for module &#39;libusb-1.0&#39;
--   Found libusb-1.0, version 1.0.22
-- Found libusb-1.0: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon=
-oe-linux-musleabi/usr/include/libusb-1.0, /home/sdr/sdr/e310/rfnoc/oe/sysr=
oots/cortexa9t2hf-neon-oe-linux-musleabi/lib/<a href=3D"http://libusb-1.0.s=
o" target=3D"_blank">libusb-1.0.so</a>
--=20
-- Configuring gr-fcd support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency ENABLE_GR_AUDIO =3D ON
--   Dependency LIBUSB_FOUND =3D TRUE
--   Enabling gr-fcd support.
--   Override with -DENABLE_GR_FCD=3DON/OFF
--=20
-- Configuring gr-wavelet support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_BLOCKS =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Dependency GSL_FOUND =3D TRUE
--   Enabling gr-wavelet support.
--   Override with -DENABLE_GR_WAVELET=3DON/OFF
--=20
-- Python checking for wx &gt;=3D 2.8
-- Python checking for wx &gt;=3D 2.8 - found
--=20
-- Python checking for numpy
-- Python checking for numpy - found
--=20
-- Configuring gr-wxgui support...
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ENABLE_GR_FFT =3D ON
--   Dependency ENABLE_GR_FILTER =3D ON
--   Dependency ENABLE_GR_ANALOG =3D ON
--   Dependency ENABLE_PYTHON =3D ON
--   Disabling gr-wxgui support.
--   Override with -DENABLE_GR_WXGUI=3DON/OFF
-- Checking for module &#39;libzmq&#39;
--   Found libzmq, version 4.2.5
-- Found ZEROMQ: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-=
linux-musleabi/usr/lib/libzmq.so =20
--=20
-- Configuring gr-zeromq support...
--   Dependency Boost_FOUND =3D 1
--   Dependency ENABLE_GNURADIO_RUNTIME =3D ON
--   Dependency ZEROMQ_FOUND =3D TRUE
--   Enabling gr-zeromq support.
--   Override with -DENABLE_GR_ZEROMQ=3DON/OFF
--=20
-- ######################################################
-- # Gnuradio enabled components                        =20
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
--=20
-- ######################################################
-- # Gnuradio disabled components                       =20
-- ######################################################
--   * doxygen
--   * gr-dtv
--   * gr-atsc
--   * gr-comedi
--   * gr-qtgui
--   * gr-video-sdl
--   * gr-vocoder
--   * gr-wxgui
--=20
-- Using install prefix: /usr
-- Building for version: 3.7.14.0 / 3.7.14.0
-- Configuring done
-- Generating done
-- Build files have been written to: /home/sdr/sdr/e310/rfnoc/src/gnuradio/=
build-arm</pre>
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<br>
<fieldset></fieldset>
<pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
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
</blockquote></div>

--00000000000049985405a687c02d--


--===============1145780647222533778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1145780647222533778==--

