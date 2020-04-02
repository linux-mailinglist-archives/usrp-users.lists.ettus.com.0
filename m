Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2E519CD60
	for <lists+usrp-users@lfdr.de>; Fri,  3 Apr 2020 01:15:34 +0200 (CEST)
Received: from [::1] (port=37794 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jK93c-0007Zl-7x; Thu, 02 Apr 2020 19:15:32 -0400
Received: from sanddollar.geekisp.com ([216.168.135.167]:46906)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <philip@balister.org>) id 1jK93X-0007U2-JO
 for usrp-users@lists.ettus.com; Thu, 02 Apr 2020 19:15:27 -0400
Received: (qmail 27236 invoked by uid 1003); 2 Apr 2020 23:14:49 -0000
Received: from unknown (HELO ?192.168.11.144?)
 (philip@opensdr.com@73.152.143.112)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 2 Apr 2020 23:14:49 -0000
To: Jeff S <e070832@hotmail.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <DM6PR19MB2668CBA7DF25F0303929D158A4C60@DM6PR19MB2668.namprd19.prod.outlook.com>
Autocrypt: addr=philip@balister.org; prefer-encrypt=mutual; keydata=
 mQENBE6PN4EBCADXwOSVOvTrJ370tH2RmiR22OuCBcKfnKTLztyV5zA0veDB1kmrIajh+sJe
 HWNqsib0v19S3wdrvqzKrztSfNAgUctvkAuTOloU81dmbAjDSge6nFxjzIIz6XjNvmP5xl9J
 rstPm4i4dhAs5436xf4Bh0vn3C/Bp4fKwXBSW/Xto7vuiuSK03ojon3F8O2WNEmKxHyubFP1
 2tNvXOp/PeAR4LTnYq6fdAAofvbpbPDBg8qICe6j1UXaIyU93IbW+bJp1RFbeakWxiTw+eQ2
 fVjG5XnubNX0YBlmjHDJhjeqV1uwkImNHlZknecLjT7g37vIMwz+PTfPIhmIGffzqtHlABEB
 AAG0JVBoaWxpcCBCYWxpc3RlciA8cGhpbGlwQGJhbGlzdGVyLm9yZz6JAT4EEwECACgCGyMG
 CwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJYM1D9BQkRKOdqAAoJEMDJd4rr0merDX4H/3Pr
 nYKDnml7LRiikoOTFJb4r7ub04skrkGI2DAYvRUPH110KXaan84Qo2Yl4r/ma15Lpqx+cdPR
 3KbFlSWyjgY6CMN/BclutsK4mFkoxnmhdYJvc5M2TDfZLxBPMTeQiHo0MwxUB5v81mv812bx
 YKfEOg3ndk7C/TE0Q8ZER7p6fU3ol/e0ilLyaCpd85nkEcOEI7BdBBGhKWii+Cwvv8g2ofQZ
 3wAsqQFp7PFxlEjo5Xc1QGqo7L+UlDG23QjUn33n+wZMZm9EUZFu1c1MAGZsvXiqKw8P07Mj
 yyf6h6EMVP8wME7gnkxsZkpKv04mSvKpDLIInmRW9ZlHXaJ4Yxi5AQ0ETo83gQEIAPs+ZC0R
 gF4blrRIiVHdkARncAxUwSUbti5Ku23dQ0iBizozh4YGucgW48gxsvJCkCc9s/4C9e3vYiCZ
 GVGC8x6Ll3vE7xwRQ/euVqJ0mXG7tNK1zAPpSgI6aooPSZCW7PBvwY8uMvzzCzP+EBd0+oA5
 uXQSEcyOJUYy4beferoHUiBjBkyNd+v2iaJf7KjAYYxJOcPvtnq/VL09hlmtCD5zghOn80rt
 LqF66BJkHmATopSWyor1qz7gmowdCkFkUJDNW7yJT1wVANqDd9P5A8vYhngwJTHsvXVftmvB
 gLiJjYuKst36G2AOHgm4ls5jRMa/k7jWue1RKM5LxzgBtLUAEQEAAYkBJQQYAQIADwIbDAUC
 WDNRbAUJESjn5AAKCRDAyXeK69Jnq1qYB/93aiBdenAuu0H/zGWEFFB14cdhDR4S4q0EbfXl
 1z9o3Irazw6WMtLe12zJ4/Xl41Mh/IH8/+AgDnigisrkKRN1TkiOGDUVnS0akkhML3ONbeFd
 ocYEwBAPDTxAaWNoyjDe/bORokSJn31cFoG6QYyzUct79npHorbaXW0zW+KC77Do53yUKQ8+
 icWpfiCMk1YzSHCr0y5NZNVxac9a0+IDzH/YBbNdJLNaMvXcuege1Qqz85pdR0P4XuCVRD2j
 ZAbcGJzZXlu9ZzpIHjtZoyF8paJRMQwzWEO3/Txksmm7K8eu8Tz2JVpjiOIj44MOTKoRGKjO
 6eUfr0u7CwnEyqiQ
Message-ID: <7108c2e7-e005-760f-9475-6cf98d01ed81@balister.org>
Date: Thu, 2 Apr 2020 19:14:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <DM6PR19MB2668CBA7DF25F0303929D158A4C60@DM6PR19MB2668.namprd19.prod.outlook.com>
Content-Language: en-US
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
From: Philip Balister via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Philip Balister <philip@balister.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Volk needs to be told to use thumb mode with asm. This flag isn't making
it all the way into the cmake for some cases. I also have a suspicion
the issue may go away in the current toolchains. Various patches have
been around for to fix this, take a look at the volk commit history.

Philip

On 4/2/20 4:45 PM, Jeff S via USRP-users wrote:
> I had a problem with the initial build environment when setting up my environment for the E310.  Up to now, I have been able to get the UHD cross-compiled, a new image for the microSD card built, and checked up to the # uhd_usrp_probe step on the E310 (from https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source) with success.
> 
> I am now at the point where I am Cross-Compiling GNU Radio.  I have been using e3xx_e310_sdk_default-v3.15.0.0.zip, and at the point where I am building GNU Radio, I am getting an error:
> 
> 
> Scanning dependencies of target volk_obj
> [  3%] Building ASM object volk/lib/CMakeFiles/volk_obj.dir/__/kernels/volk/asm/neon/volk_16i_max_star_horizontal_16i.s.o
> /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_max_star_horizontal_16i.s: Assembler messages:
> /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_max_star_horizontal_16i.s:9: Error: selected processor does not support `pld [r1:128]' in ARM mode
> /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_max_star_horizontal_16i.s:20: Error: selected processor does not support `pld [r4:128]' in ARM mode
> /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_max_star_horizontal_16i.s:44: Error: selected processor does not support `sxth r6,r6' in ARM mode
> volk/lib/CMakeFiles/volk_obj.dir/build.make:1572: recipe for target 'volk/lib/CMakeFiles/volk_obj.dir/__/kernels/volk/asm/neon/volk_16i_max_star_horizontal_16i.s.o' failed
> make[2]: *** [volk/lib/CMakeFiles/volk_obj.dir/__/kernels/volk/asm/neon/volk_16i_max_star_horizontal_16i.s.o] Error 1
> CMakeFiles/Makefile2:220: recipe for target 'volk/lib/CMakeFiles/volk_obj.dir/all' failed
> make[1]: *** [volk/lib/CMakeFiles/volk_obj.dir/all] Error 2
> Makefile:162: recipe for target 'all' failed
> make: *** [all] Error 2
> 
> 
> I have searched unsuccessfully for an answer to this one, and figure it's some sort of configuration error that I missed.  The commands I am using are:
> 
> $ cd ~/sdr/e310/rfnoc/oe/
> $ source ./environment-setup-cortexa9t2hf-neon-oe-linux-musleabi
> $ cd ~/sdr/e310/rfnoc/src/gnuradio
> $ mkdir build-arm
> $ cd build-arm/
> $ cmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=~/sdr/e310/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake -DENABLE_GR_WXGUI=OFF -DENABLE_GR_VOCODER=OFF -DENABLE_GR_DTV=OFF -DENABLE_GR_ATSC=OFF -DENABLE_DOXYGEN=OFF -DCMAKE_INSTALL_PREFIX=/usr ../
> $ make
> 
> Any obvious issues?  Could there be something cached from the earlier build in the directions?  I'll post the cmake output below my signature to keep it out of the way.
> 
> Thanks,
> Jeff
> 
> 
> 
> $ cmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=~/sdr/e310/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake -DENABLE_GR_WXGUI=OFF -DENABLE_GR_VOCODER=OFF -DENABLE_GR_DTV=OFF -DENABLE_GR_ATSC=OFF -DENABLE_DOXYGEN=OFF -DCMAKE_INSTALL_PREFIX=/usr ../
> -- The CXX compiler identification is GNU 8.2.0
> -- The C compiler identification is GNU 8.2.0
> -- Check for working CXX compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-g++
> -- Check for working CXX compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-g++ -- works
> -- Detecting CXX compiler ABI info
> -- Detecting CXX compiler ABI info - done
> -- Detecting CXX compile features
> -- Detecting CXX compile features - done
> -- Check for working C compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc
> -- Check for working C compiler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc -- works
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
> This is free software; see the source for copying conditions.  There is NO
> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
> -- Compiler Flags: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc:::-O3 -DNDEBUG  -O2 -pipe -g -feliminate-unused-debug-types  -std=gnu99 -fvisibility=hidden -Wsign-compare -Wall -Wno-uninitialized
> /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-g++:::-O3 -DNDEBUG  -O2 -pipe -g -feliminate-unused-debug-types  -fvisibility=hidden -Wsign-compare -Wall -Wno-uninitialized
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
> -- Found PythonLibs: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/libpython2.7.so (found suitable version "2.7.16", minimum required is "2.7")
> --
> -- Checking for module SWIG
> -- Found SWIG version 3.0.12.
> -- Found SWIG: /usr/bin/swig3.0
> --
> -- The build system will automatically enable all components.
> -- Use -DENABLE_DEFAULT=OFF to disable components by default.
> --
> -- Configuring python-support support...
> --   Dependency PYTHONLIBS_FOUND = TRUE
> --   Dependency SWIG_FOUND = TRUE
> --   Dependency SWIG_VERSION_CHECK = TRUE
> --   Enabling python-support support.
> --   Override with -DENABLE_PYTHON=ON/OFF
> -- Found PkgConfig: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/pkg-config (found version "0.29.2")
> -- Checking for module 'cppunit'
> --   Found cppunit, version 1.13.2
> -- Found CPPUNIT: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/libcppunit.so;dl
> --
> -- Configuring testing-support support...
> --   Dependency CPPUNIT_FOUND = TRUE
> --   Enabling testing-support support.
> --   Override with -DENABLE_TESTING=ON/OFF
> --
> -- Configuring VOLK support...
> -- Build type set to Release.
> -- Extracting version information from git describe...
> -- Found PythonInterp: /usr/bin/python2 (found suitable version "2.7.17", minimum required is "2")
> --
> -- Python checking for python >= 2.7
> -- Python checking for python >= 2.7 - found
> --
> -- Python checking for mako >= 0.4.2
> -- Python checking for mako >= 0.4.2 - found
> --
> -- Python checking for six - python 2 and 3 compatibility library
> -- Python checking for six - python 2 and 3 compatibility library - found
> -- Boost version: 1.68.0
> -- Found the following Boost libraries:
> --   filesystem
> --   system
> -- Checking for module 'orc-0.4 > 0.4.11'
> --   Found orc-0.4 > 0.4.11, version 0.4.28
> -- Found ORC: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/liborc-0.4.so
> -- Found Doxygen: /usr/bin/doxygen (found version "1.8.13") found components:  doxygen missing components:  dot
> -- QA Testing is enabled.
> --   Modify using: -DENABLE_TESTING=ON/OFF
> -- System profiling is disabled.
> --   Modify using: -DENABLE_PROFILING=ON/OFF
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
> -- BUILD TYPE = RELEASE
> -- Base cflags = -O3 -DNDEBUG  -O2 -pipe -g -feliminate-unused-debug-types  -std=gnu99 -fvisibility=hidden -Wsign-compare -Wall -Wno-uninitialized -Wall
> -- BUILD INFO ::: generic_orc ::: GNU ::: -O3 -DNDEBUG  -O2 -pipe -g -feliminate-unused-debug-types  -std=gnu99 -fvisibility=hidden -Wsign-compare -Wall -Wno-uninitialized -Wall
> -- BUILD INFO ::: neon_hardfp_orc ::: GNU ::: -O3 -DNDEBUG  -O2 -pipe -g -feliminate-unused-debug-types  -std=gnu99 -fvisibility=hidden -Wsign-compare -Wall -Wno-uninitialized -Wall -mfpu=neon -funsafe-math-optimizations -mfloat-abi=hard
> -- Compiler Version: arm-oe-linux-musleabi-gcc (GCC) 8.2.0
> Copyright (C) 2018 Free Software Foundation, Inc.
> This is free software; see the source for copying conditions.  There is NO
> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
> -- ---- Adding ASM files
> -- -- Detected neon architecture; enabling ASM
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_16i_max_star_horizontal_16i.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_32f_s32f_multiply_32f_a_neonasm.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_32f_x2_add_32f_a_neonasm.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_32f_x2_add_32f_a_neonpipeline.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_32f_x2_dot_prod_32f_a_neonasm.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_32f_x2_dot_prod_32f_a_neonasm_opts.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_neonasm.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_neonasmvmla.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_neonpipeline.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_32fc_32f_dot_prod_32fc_a_unrollasm.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_32fc_x2_dot_prod_32fc_a_neonasm.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_32fc_x2_dot_prod_32fc_a_neonasm_opttests.s
> -- Adding source file: /home/sdr/sdr/e310/rfnoc/src/gnuradio/volk/kernels/volk/asm/neon/volk_32fc_x2_multiply_32fc_a_neonasm.s
> -- The ASM compiler identification is GNU
> -- Found assembler: /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-musleabi/arm-oe-linux-musleabi-gcc
> -- c flags:  -O2 -pipe -g -feliminate-unused-debug-types  -std=gnu99 -fvisibility=hidden -Wsign-compare -Wall -Wno-uninitialized -Wall;  -march=armv7-a -mthumb -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9 -mmusl --sysroot=/home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi
> -- asm flags: -mfpu=neon -g
> -- Loading version 1.4 into constants...
> -- Using install prefix: /usr
> --
> -- Configuring volk support...
> --   Enabling volk support.
> --   Override with -DENABLE_VOLK=ON/OFF
> --   Override with -DENABLE_INTERNAL_VOLK=ON/OFF
> -- Found LOG4CPP: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/liblog4cpp.so
> -- ENABLE_GR_LOG set to ON.
> -- HAVE_LOG4CPP set to True.
> -- LOG4CPP_LIBRARIES set to /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/liblog4cpp.so.
> -- Found Sphinx: /usr/bin/sphinx-build
> --
> -- Configuring doxygen support...
> --   Dependency DOXYGEN_FOUND = YES
> --   Disabling doxygen support.
> --   Override with -DENABLE_DOXYGEN=ON/OFF
> --
> -- Configuring sphinx support...
> --   Dependency SPHINX_FOUND = TRUE
> --   Enabling sphinx support.
> --   Override with -DENABLE_SPHINX=ON/OFF
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
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_VOLK = ON
> --   Dependency PYTHONINTERP_FOUND = TRUE
> --   Enabling gnuradio-runtime support.
> --   Override with -DENABLE_GNURADIO_RUNTIME=ON/OFF
> --
> -- Configuring gr-ctrlport support...
> --   Dependency Boost_FOUND = 1
> --   Dependency SWIG_FOUND = TRUE
> --   Dependency SWIG_VERSION_CHECK = TRUE
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Enabling gr-ctrlport support.
> --   Override with -DENABLE_GR_CTRLPORT=ON/OFF
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
> -- Found PythonLibs: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/libpython2.7.so (found suitable version "2.7.16", minimum required is "2")
> -- Performing Test HAVE_WNO_UNUSED_BUT_SET_VARIABLE
> -- Performing Test HAVE_WNO_UNUSED_BUT_SET_VARIABLE - Success
> --
> -- Configuring gr-blocks support...
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_VOLK = ON
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Enabling gr-blocks support.
> --   Override with -DENABLE_GR_BLOCKS=ON/OFF
> --
> -- Python checking for python >= 2.5
> -- Python checking for python >= 2.5 - found
> --
> -- Python checking for Cheetah >= 2.0.0
> -- Python checking for Cheetah >= 2.0.0 - found
> --
> -- Python checking for lxml >= 1.3.6
> -- Python checking for lxml >= 1.3.6 - found
> --
> -- Python checking for pygtk >= 2.10.0
> -- Python checking for pygtk >= 2.10.0 - found
> --
> -- Python checking for numpy
> -- Python checking for numpy - found
> --
> -- Configuring gnuradio-companion support...
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_PYTHON = ON
> --   Enabling gnuradio-companion support.
> --   Override with -DENABLE_GRC=ON/OFF
> -- Checking for module 'gsl >= 1.10'
> --   Found gsl , version 1.15
> -- Found GSL: gsl;gslcblas;m
> --
> -- Configuring gr-fec support...
> --   Dependency ENABLE_VOLK = ON
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_BLOCKS = ON
> --   Enabling gr-fec support.
> --   Override with -DENABLE_GR_FEC=ON/OFF
> -- Checking for module 'fftw3f >= 3.0'
> --   Found fftw3f , version 3.3.8
> -- Found FFTW3F: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/libfftw3f.so
> --
> -- Configuring gr-fft support...
> --   Dependency ENABLE_VOLK = ON
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_BLOCKS = ON
> --   Dependency FFTW3F_FOUND = TRUE
> --   Enabling gr-fft support.
> --   Override with -DENABLE_GR_FFT=ON/OFF
> --
> -- Configuring gr-filter support...
> --   Dependency ENABLE_VOLK = ON
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_FFT = ON
> --   Dependency ENABLE_GR_BLOCKS = ON
> --   Enabling gr-filter support.
> --   Override with -DENABLE_GR_FILTER=ON/OFF
> --
> -- Configuring gr-analog support...
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_VOLK = ON
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_BLOCKS = ON
> --   Dependency ENABLE_GR_FFT = ON
> --   Dependency ENABLE_GR_FILTER = ON
> --   Enabling gr-analog support.
> --   Override with -DENABLE_GR_ANALOG=ON/OFF
> --
> -- Configuring gr-digital support...
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_VOLK = ON
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_FFT = ON
> --   Dependency ENABLE_GR_FILTER = ON
> --   Dependency ENABLE_GR_BLOCKS = ON
> --   Dependency ENABLE_GR_ANALOG = ON
> --   Enabling gr-digital support.
> --   Override with -DENABLE_GR_DIGITAL=ON/OFF
> --
> -- Configuring gr-dtv support...
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_ANALOG = ON
> --   Dependency ENABLE_GR_FILTER = ON
> --   Dependency ENABLE_GR_FEC = ON
> --   Dependency ENABLE_VOLK = ON
> --   Disabling gr-dtv support.
> --   Override with -DENABLE_GR_DTV=ON/OFF
> --
> -- Configuring gr-atsc support...
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_FFT = ON
> --   Dependency ENABLE_GR_BLOCKS = ON
> --   Dependency ENABLE_GR_FEC = ON
> --   Dependency ENABLE_GR_FILTER = ON
> --   Dependency ENABLE_GR_ANALOG = ON
> --   Disabling gr-atsc support.
> --   Override with -DENABLE_GR_ATSC=ON/OFF
> --
> -- Configuring gr-audio support...
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Enabling gr-audio support.
> --   Override with -DENABLE_GR_AUDIO=ON/OFF
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
> --   Dependency COMEDI_FOUND =
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Disabling gr-comedi support.
> --   Override with -DENABLE_GR_COMEDI=ON/OFF
> --
> -- Configuring gr-channels support...
> --   Dependency ENABLE_VOLK = ON
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_BLOCKS = ON
> --   Dependency ENABLE_GR_FFT = ON
> --   Dependency ENABLE_GR_FILTER = ON
> --   Dependency ENABLE_GR_ANALOG = ON
> --   Enabling gr-channels support.
> --   Override with -DENABLE_GR_CHANNELS=ON/OFF
> --
> -- Configuring gr-noaa support...
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_BLOCKS = ON
> --   Enabling gr-noaa support.
> --   Override with -DENABLE_GR_NOAA=ON/OFF
> --
> -- Configuring gr-pager support...
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_FILTER = ON
> --   Dependency ENABLE_GR_ANALOG = ON
> --   Enabling gr-pager support.
> --   Override with -DENABLE_GR_PAGER=ON/OFF
> CMake Warning at /home/sdr/sdr/e310/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/share/cmake-3.12/Modules/FindQt4.cmake:617 (message):
>   /usr/bin/qmake reported QT_INSTALL_LIBS as "/usr/lib/x86_64-linux-gnu" but
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
> --   Dependency Boost_FOUND = 1
> --   Dependency QT4_FOUND =
> --   Dependency QWT_FOUND = FALSE
> --   Dependency ENABLE_VOLK = ON
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_FFT = ON
> --   Dependency ENABLE_GR_FILTER = ON
> --   Dependency PYTHONLIBS_FOUND = TRUE
> --   Disabling gr-qtgui support.
> --   Override with -DENABLE_GR_QTGUI=ON/OFF
> --
> -- Configuring gr-trellis support...
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_ANALOG = ON
> --   Dependency ENABLE_GR_BLOCKS = ON
> --   Dependency ENABLE_GR_DIGITAL = ON
> --   Enabling gr-trellis support.
> --   Override with -DENABLE_GR_TRELLIS=ON/OFF
> -- Found UHD: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/libuhd.so
> --
> -- Configuring gr-uhd support...
> --   Dependency Boost_FOUND = 1
> --   Dependency UHD_FOUND = TRUE
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_FILTER = ON
> --   Dependency ENABLE_GR_BLOCKS = ON
> --   Dependency ENABLE_GR_ANALOG = ON
> --   Enabling gr-uhd support.
> --   Override with -DENABLE_GR_UHD=ON/OFF
> --   UHD Version: 3.15.0.0-0-gaea0e2de
> --
> -- Configuring gr-utils support...
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_PYTHON = ON
> --   Enabling gr-utils support.
> --   Override with -DENABLE_GR_UTILS=ON/OFF
> -- Could NOT find SDL (missing: SDL_LIBRARY SDL_INCLUDE_DIR)
> --
> -- Configuring gr-video-sdl support...
> --   Dependency SDL_FOUND = FALSE
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Disabling gr-video-sdl support.
> --   Override with -DENABLE_GR_VIDEO_SDL=ON/OFF
> --
> -- Configuring gr-vocoder support...
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_FFT = ON
> --   Dependency ENABLE_GR_BLOCKS = ON
> --   Dependency ENABLE_GR_FILTER = ON
> --   Dependency ENABLE_GR_ANALOG = ON
> --   Disabling gr-vocoder support.
> --   Override with -DENABLE_GR_VOCODER=ON/OFF
> -- Checking for module 'libusb-1.0'
> --   Found libusb-1.0, version 1.0.22
> -- Found libusb-1.0: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/include/libusb-1.0, /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/lib/libusb-1.0.so
> --
> -- Configuring gr-fcd support...
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_BLOCKS = ON
> --   Dependency ENABLE_GR_AUDIO = ON
> --   Dependency LIBUSB_FOUND = TRUE
> --   Enabling gr-fcd support.
> --   Override with -DENABLE_GR_FCD=ON/OFF
> --
> -- Configuring gr-wavelet support...
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_BLOCKS = ON
> --   Dependency ENABLE_GR_ANALOG = ON
> --   Dependency GSL_FOUND = TRUE
> --   Enabling gr-wavelet support.
> --   Override with -DENABLE_GR_WAVELET=ON/OFF
> --
> -- Python checking for wx >= 2.8
> -- Python checking for wx >= 2.8 - found
> --
> -- Python checking for numpy
> -- Python checking for numpy - found
> --
> -- Configuring gr-wxgui support...
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ENABLE_GR_FFT = ON
> --   Dependency ENABLE_GR_FILTER = ON
> --   Dependency ENABLE_GR_ANALOG = ON
> --   Dependency ENABLE_PYTHON = ON
> --   Disabling gr-wxgui support.
> --   Override with -DENABLE_GR_WXGUI=ON/OFF
> -- Checking for module 'libzmq'
> --   Found libzmq, version 4.2.5
> -- Found ZEROMQ: /home/sdr/sdr/e310/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/libzmq.so
> --
> -- Configuring gr-zeromq support...
> --   Dependency Boost_FOUND = 1
> --   Dependency ENABLE_GNURADIO_RUNTIME = ON
> --   Dependency ZEROMQ_FOUND = TRUE
> --   Enabling gr-zeromq support.
> --   Override with -DENABLE_GR_ZEROMQ=ON/OFF
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
> -- Build files have been written to: /home/sdr/sdr/e310/rfnoc/src/gnuradio/build-arm
> 
> 
> 
> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
