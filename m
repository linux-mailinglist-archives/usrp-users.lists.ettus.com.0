Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E83FA2CF35B
	for <lists+usrp-users@lfdr.de>; Fri,  4 Dec 2020 18:50:55 +0100 (CET)
Received: from [::1] (port=37408 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1klFEK-0000l8-SX; Fri, 04 Dec 2020 12:50:52 -0500
Received: from mail-oi1-f181.google.com ([209.85.167.181]:38461)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1klFEH-0000gN-9o
 for usrp-users@lists.ettus.com; Fri, 04 Dec 2020 12:50:49 -0500
Received: by mail-oi1-f181.google.com with SMTP id o25so7055064oie.5
 for <usrp-users@lists.ettus.com>; Fri, 04 Dec 2020 09:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=wQV+Cq3LxboaQESrJIXF/YAglf01nNRgAJe8G8k9kzQ=;
 b=JO59d6lLsz1JZNSX4S0iUu2FGQQddAE+HiVlJ5MBG9glIGSJ8RdrY8qXuUmV4I5RuY
 RjYSJdvMFVJRmIFXbUf1TfAhL/FXtKfktyjHiA7U7yHALnRRLjZuCBs4GO4emyxydVvp
 GId74n2ydoBE2/Q0Um+XxAUoOkf31TldtzqbaFft4S/SmADghfUTQSkZ7acvfBK7Hz+J
 UlVWo3KxJ/DigoWqGsqkMcWHd0RP5T3+GJFOEoggrSs71YK1r9cGfNoeHhJ4sJqQYdu1
 Pq3S0sqTaMBm8ex5GQHYAQ66iXGho9H8y8WZuheL+1I1UesAY8nTL2X8wrJCuQOn8Cc4
 qNxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=wQV+Cq3LxboaQESrJIXF/YAglf01nNRgAJe8G8k9kzQ=;
 b=NVAx06UpbmI87sSzry2Cidu7JWdLnYRPz1JfX4wff3kETrwdTKxwPuQRkk3A4NBm5B
 6b8aBmPJETuKbk5X3uRgH8XXP1hpTKHmtRs3zejIc64JL3n8DwbIIQ6IRaROxnsQGv86
 mydO50XmKjw9HAQW7sMLn6SFdvUqWcfAYKe4/Izm7BFryawkbFArR7agC12MLns5sCXE
 smWGji7PCyvxjNOE+utQ3M7Vr8LPEoDV/lacr0aVXmPCtrYvt/PTFYuyKcFp65gEcl8q
 +UtUMMx+AKGO5Buniz3kHoduYlmeh9QdYKUR6Hp9kkPuNs5kpyi1BYu+hEKfT0y0zCiV
 Vebg==
X-Gm-Message-State: AOAM533oZDAwU5Ga0Gu8rWX8j+RJhT8CkJts7FrMnUKlgLit7euZAPh7
 u1n7eyd8srTJsnwnnBfZU/K8zjSBPzmdoPVmJ7macuZl3OIwpw==
X-Google-Smtp-Source: ABdhPJywNALvXHbzhiluEZA+QWl2UKgccOsNU2+DVQBgYdvzkNN1QgXYfvaz76FLktD3CRkrQNMkVX9w/gl8/7WF73M=
X-Received: by 2002:aca:4ccc:: with SMTP id z195mr4067552oia.124.1607104207588; 
 Fri, 04 Dec 2020 09:50:07 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTR3aVQbvD0K8rY2msLA9Q0EDozdK5Yayq4iWucQ+e62aQ@mail.gmail.com>
In-Reply-To: <CAB__hTR3aVQbvD0K8rY2msLA9Q0EDozdK5Yayq4iWucQ+e62aQ@mail.gmail.com>
Date: Fri, 4 Dec 2020 12:49:56 -0500
Message-ID: <CAB__hTRYaSP76Kdb4vHowr4=-U=yPE4tWMGLBVP8YZRtZhzZ_g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Control B2xx from N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5016510020287964479=="
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

--===============5016510020287964479==
Content-Type: multipart/alternative; boundary="000000000000697c2705b5a71be1"

--000000000000697c2705b5a71be1
Content-Type: text/plain; charset="UTF-8"

Update.
I realized that the default UHD build on the N310 might not include support
for USB or B200.  I confirmed this by running "uhd_config_info
--enabled-components".  I then attempted to build UHD on the N310 (directly
on device rather than cross-compile) and after installing Mako (pip3
install Mako) and ruamel.yaml (pip3 install ruamel.yaml) I was able to run
cmake and then "make -j2".  Unfortunately, the build did not complete (see
error below). Note that below this error message I also provided the cmake
command I used along with its output.  Any suggestions for this error?
Rob

[ 13%] Building CXX object
lib/CMakeFiles/uhd.dir/convert/convert_with_neon.cpp.o
In file included from
/home/root/uhd/UHD-4.0/uhd/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-gnueabi/9.2.0/include/arm_neon.h: In member
function 'virtual void
__convert_fc32_1_sc16_item32_le_1_PRIORITY_SIMD::operator()(const
input_type&, const output_type&, size_t)':
/usr/lib/gcc/arm-oe-linux-gnueabi/9.2.0/include/arm_neon.h:6740:1: error:
inlining failed in call to always_inline 'float32x4_t
vdupq_n_f32(float32_t)': target specific option mismatch
 6740 | vdupq_n_f32 (float32_t __a)
      | ^~~~~~~~~~~
/home/root/uhd/UHD-4.0/uhd/host/lib/convert/convert_with_neon.cpp:27:33:
note: called from here
   27 |     float32x4_t Q0 = vdupq_n_f32(float(scale_factor));
      |                      ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
***************************************
*** and lots more errors similar to this
*******************************************************


***************************************
*** Here is the cmake command along with the output (potential issues
highlighted in yellow)
*******************************************************
root@ni-n3xx-3144673:~/build_uhd# cmake ../uhd/UHD-4.0/uhd/host/
-DCMAKE_INSTALL_PREFIX=~/install_uhd -DENABLE_X300=OFF -DENABLE_USRP1=OFF
-DENABLE_USRP2=OFF -DENABLE_OCTOCLOCK=OFF -DENABLE_MANUAL=OFF
-DENABLE_MAN_PAGES=OFF -DENABLE_B100=OFF
-- The CXX compiler identification is GNU 9.2.0
-- The C compiler identification is GNU 9.2.0
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Check for working C compiler: /usr/bin/cc
-- Check for working C compiler: /usr/bin/cc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- 
-- Configuring the Python interpreter...
-- Python interpreter: /usr/bin/python3.7 Version: 3.7.6
-- Override with: -DPYTHON_EXECUTABLE=<path-to-python>
-- Python runtime interpreter: /usr/bin/python3.7 Version: 3.7.6
-- Override with: -DRUNTIME_PYTHON_EXECUTABLE=<path-to-python>
-- Finding Python Libraries...
-- Python Libraries: /usr/lib/libpython3.7m.so
-- Python include directories: /usr/include/python3.7m
-- Operating on release branch (UHD-4.0).
-- Using UHD Images Directory: /home/root/install_uhd/share/uhd/images
-- Build type not specified: defaulting to release.
-- Performing Test HAVE_VISIBILITY_HIDDEN
-- Performing Test HAVE_VISIBILITY_HIDDEN - Success
-- Performing Test HAVE_VISIBILITY_INLINES_HIDDEN
-- Performing Test HAVE_VISIBILITY_INLINES_HIDDEN - Success
-- 
-- Configuring Boost C++ Libraries...
-- 
-- Checking for Boost version 1.58 or greater
--   Looking for required Boost components...
--   Enabling Boost Error Code Header Only
--     Disabling boost::asio use of std::string_view
--   Boost version: 1.71.0
--   Boost include directories: /usr/include
--   Boost library directories: /usr/lib
--   Boost libraries:
Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_options;Boost::serialization;Boost::thread;Boost::unit_test_framework;Boost::system
-- Looking for Boost version 1.58 or greater - found
-- 
-- Python checking for Python version 3.5 or greater
-- Python checking for Python version 3.5 or greater - found
-- 
-- Python checking for Mako templates 0.4.2 or greater
-- Python checking for Mako templates 0.4.2 or greater - found
-- 
-- Python checking for requests 2.0 or greater
-- Python checking for requests 2.0 or greater - found
-- 
-- Python checking for numpy 1.11 or greater
-- Python checking for numpy 1.11 or greater - found
-- 
-- Python checking for ruamel.yaml 0.15 or greater
-- Python checking for ruamel.yaml 0.15 or greater - found
-- 
-- Configuring LibUHD support...
--   Dependency Boost_FOUND = TRUE
--   Dependency HAVE_PYTHON_MODULE_MAKO = TRUE
--   Enabling LibUHD support.
--   Override with -DENABLE_LIBUHD=ON/OFF
-- 
-- Configuring LibUHD - C API support...
--   Dependency ENABLE_LIBUHD = ON
--   Enabling LibUHD - C API support.
--   Override with -DENABLE_C_API=ON/OFF
-- 
-- Configuring LibUHD - Python API support...
--   Dependency ENABLE_LIBUHD = ON
--   Dependency HAVE_PYTHON_MODULE_NUMPY = TRUE
--   Dependency HAVE_PYTHON_LIBS = TRUE
--   Enabling LibUHD - Python API support.
--   Override with -DENABLE_PYTHON_API=ON/OFF
-- 
-- Configuring Examples support...
--   Dependency ENABLE_LIBUHD = ON
--   Enabling Examples support.
--   Override with -DENABLE_EXAMPLES=ON/OFF
-- 
-- Configuring Utils support...
--   Dependency ENABLE_LIBUHD = ON
--   Enabling Utils support.
--   Override with -DENABLE_UTILS=ON/OFF
-- 
-- Configuring Tests support...
--   Dependency ENABLE_LIBUHD = ON
--   Enabling Tests support.
--   Override with -DENABLE_TESTS=ON/OFF
-- 
-- Found PkgConfig: /usr/bin/pkg-config (found version "0.29.2")
-- Looking for libusb_handle_events_timeout_completed
-- Looking for libusb_handle_events_timeout_completed - found
-- Looking for libusb_error_name
-- Looking for libusb_error_name - found
-- Looking for libusb_strerror
-- Looking for libusb_strerror - found
-- Found LIBUSB: /lib/libusb-1.0.so
-- Could NOT find DPDK (missing: DPDK_INCLUDE_DIRS DPDK_LIBRARIES)
(Required is exact version "18.11")
-- 
-- Configuring USB support...
--   Dependency ENABLE_LIBUHD = ON
--   Dependency LIBUSB_FOUND = TRUE
--   Enabling USB support.
--   Override with -DENABLE_USB=ON/OFF
-- 
-- Configuring B100 support...
--   Dependency ENABLE_LIBUHD = ON
--   Dependency ENABLE_USB = ON
--   Disabling B100 support.
--   Override with -DENABLE_B100=ON/OFF
-- 
-- Configuring B200 support...
--   Dependency ENABLE_LIBUHD = ON
--   Dependency ENABLE_USB = ON
--   Enabling B200 support.
--   Override with -DENABLE_B200=ON/OFF
-- 
-- Configuring USRP1 support...
--   Dependency ENABLE_LIBUHD = ON
--   Dependency ENABLE_USB = ON
--   Disabling USRP1 support.
--   Override with -DENABLE_USRP1=ON/OFF
-- 
-- Configuring USRP2 support...
--   Dependency ENABLE_LIBUHD = ON
--   Disabling USRP2 support.
--   Override with -DENABLE_USRP2=ON/OFF
-- 
-- Configuring X300 support...
--   Dependency ENABLE_LIBUHD = ON
--   Disabling X300 support.
--   Override with -DENABLE_X300=ON/OFF
-- 
-- Configuring MPMD support...
--   Dependency ENABLE_LIBUHD = ON
--   Enabling MPMD support.
--   Override with -DENABLE_MPMD=ON/OFF
-- 
-- Configuring N300 support...
--   Dependency ENABLE_LIBUHD = ON
--   Dependency ENABLE_MPMD = ON
--   Enabling N300 support.
--   Override with -DENABLE_N300=ON/OFF
-- 
-- Configuring N320 support...
--   Dependency ENABLE_LIBUHD = ON
--   Dependency ENABLE_MPMD = ON
--   Enabling N320 support.
--   Override with -DENABLE_N320=ON/OFF
-- 
-- Configuring E320 support...
--   Dependency ENABLE_LIBUHD = ON
--   Dependency ENABLE_MPMD = ON
--   Enabling E320 support.
--   Override with -DENABLE_E320=ON/OFF
-- 
-- Configuring E300 support...
--   Dependency ENABLE_LIBUHD = ON
--   Dependency ENABLE_MPMD = ON
--   Enabling E300 support.
--   Override with -DENABLE_E300=ON/OFF
-- 
-- Configuring OctoClock support...
--   Dependency ENABLE_LIBUHD = ON
--   Disabling OctoClock support.
--   Override with -DENABLE_OCTOCLOCK=ON/OFF
-- 
-- Configuring DPDK support...
--   Dependency ENABLE_MPMD = ON
--   Dependency DPDK_FOUND = FALSE
--   Disabling DPDK support.
--   Override with -DENABLE_DPDK=ON/OFF
-- 
-- Looking for C++ include emmintrin.h
CMake Warning (dev) at
/usr/share/cmake-3.15/Modules/CheckIncludeFileCXX.cmake:79 (message):
  Policy CMP0075 is not set: Include file check macros honor
  CMAKE_REQUIRED_LIBRARIES.  Run "cmake --help-policy CMP0075" for policy
  details.  Use the cmake_policy command to set the policy and suppress this
  warning.

  CMAKE_REQUIRED_LIBRARIES is set to:

    /lib/libusb-1.0.so

  For compatibility with CMake 3.11 and below this check is ignoring it.
Call Stack (most recent call first):
  lib/convert/CMakeLists.txt:25 (CHECK_INCLUDE_FILE_CXX)
  lib/CMakeLists.txt:46 (include)
  lib/CMakeLists.txt:87 (INCLUDE_SUBDIRECTORY)
This warning is for project developers.  Use -Wno-dev to suppress it.

-- Looking for C++ include emmintrin.h - not found
-- Looking for C++ include arm_neon.h
-- Looking for C++ include arm_neon.h - found
-- The ASM compiler identification is GNU
-- Found assembler: /usr/bin/cc
-- 
-- Configuring priority scheduling...
-- Performing Test HAVE_PTHREAD_SETSCHEDPARAM
-- Performing Test HAVE_PTHREAD_SETSCHEDPARAM - Success
-- Performing Test HAVE_WIN_SETTHREADPRIORITY
-- Performing Test HAVE_WIN_SETTHREADPRIORITY - Failed
--   Priority scheduling supported through pthread_setschedparam.
-- Performing Test HAVE_PTHREAD_SETNAME
-- Performing Test HAVE_PTHREAD_SETNAME - Success
--   Setting thread names is supported through pthread_setname_np.
-- Performing Test HAVE_PTHREAD_SETAFFINITY_NP
-- Performing Test HAVE_PTHREAD_SETAFFINITY_NP - Success
-- Performing Test HAVE_WIN_SETTHREADAFFINITYMASK
-- Performing Test HAVE_WIN_SETTHREADAFFINITYMASK - Failed
--   Setting thread affinity is supported through pthread_setaffinity_np.
-- 
-- Configuring module loading...
-- Performing Test HAVE_DLOPEN
-- Performing Test HAVE_DLOPEN - Success
-- Performing Test HAVE_LOAD_LIBRARY
-- Performing Test HAVE_LOAD_LIBRARY - Failed
--   Module loading supported through dlopen.
-- 
-- USB support enabled via libusb.
-- 
-- Configuring interface address discovery...
-- Performing Test HAVE_GETIFADDRS
-- Performing Test HAVE_GETIFADDRS - Success
-- Looking for C++ include winsock2.h
-- Looking for C++ include winsock2.h - not found
--   Interface address discovery supported through getifaddrs.
-- Looking for C++ include atlbase.h
-- Looking for C++ include atlbase.h - not found
-- 
-- Loading build info.
-- Found Curses: /usr/lib/libcurses.so
-- Performing Test HAVE_C99_STRUCTDECL
-- Performing Test HAVE_C99_STRUCTDECL - Success
-- 
-- Adding B2XX device test target
-- Adding E3XX device test target
-- Adding N3XX device test target
-- Adding E32x device test target
-- 
-- Could NOT find Doxygen (missing: DOXYGEN_EXECUTABLE)
-- 
-- Configuring Manual support...
--   Dependency DOXYGEN_FOUND = NO
--   Disabling Manual support.
--   Override with -DENABLE_MANUAL=ON/OFF
-- 
-- Configuring API/Doxygen support...
--   Dependency DOXYGEN_FOUND = NO
--   Disabling API/Doxygen support.
--   Override with -DENABLE_DOXYGEN=ON/OFF
-- 
-- Found GZip: /bin/gzip
-- 
-- Compressed Man Pages enabled
--   Override with -DENABLE_MAN_PAGE_COMPRESSION=ON/OFF
-- 
-- Configuring Man Pages support...
--   Dependency NOT_WIN32 = TRUE
--   Dependency GZIP_FOUND = TRUE
--   Disabling Man Pages support.
--   Override with -DENABLE_MAN_PAGES=ON/OFF
-- 
-- Python checking for virtualenv
-- Python checking for virtualenv - "assert hasattr(sys, 'real_prefix')"
failed
-- Utilizing the python install directory:
/home/root/install_uhd/lib/python3.7/site-packages
-- 
-- ######################################################
-- # UHD enabled components
-- ######################################################
--   * LibUHD
--   * LibUHD - C API
--   * LibUHD - Python API
--   * Examples
--   * Utils
--   * Tests
--   * USB
--   * B200
--   * MPMD
--   * N300
--   * N320
--   * E320
--   * E300
-- 
-- ######################################################
-- # UHD disabled components
-- ######################################################
--   * B100
--   * USRP1
--   * USRP2
--   * X300
--   * OctoClock
--   * DPDK
--   * Manual
--   * API/Doxygen
--   * Man Pages
-- 
-- Building version: 4.0.0.0-25-g1a34ba8a
-- Using install prefix: /home/root/install_uhd
-- Configuring done
-- Generating done
-- Build files have been written to: /home/root/build_uhd
root@ni-n3xx-3144673:~/build_uhd#



On Fri, Dec 4, 2020 at 11:26 AM Rob Kossler <rkossler@nd.edu> wrote:

> Hi,
> I'm wondering if/how I can control a B2xx device from an N310. I use the
> B2xx as an LO for shared LO operations from an N310.  Presently, I use a
> laptop to control my B200mini, but I am wondering if this control can be
> done directly from the N310. I realize that the N310 USB port is not USB3
> but since my streaming rates for a CW tone are as slow as possible,
> hopefully that won't matter.
>
> I have connected the B200mini to the N310 USB port, but I can't see the
> B200mini when I run uhd_find_devices.  I have copied the B2xx FPGA images
> to the /usr/share/uhd/images/ folder and I have copied the file
> uhd-usrp.rules to the /etc/udev/rules.d/ folder and rebooted the N310, but
> still no luck.
>
> The following is the output of the "lsusb" and "uhd_find_devices"
> commands.  The "lsusb" command shows the presence of the Cypress device,
> but the device is still not found.
>
> Suggestions?
> Rob
>
> root@ni-n3xx-3144673:~# lsusb
> Bus 001 Device 003: ID 2500:0021 Cypress WestBridge
> Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> root@ni-n3xx-3144673:~# uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.0.0.0-0-g90ce6062
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 3144673
>     claimed: False
>     mgmt_addr: 127.0.0.1
>     product: n310
>     type: n3xx
>
>
> root@ni-n3xx-3144673:~#
>

--000000000000697c2705b5a71be1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Update.<div><div>I realized that the defa=
ult UHD build on the N310 might not include support for USB or B200.=C2=A0 =
I confirmed this by running &quot;uhd_config_info --enabled-components&quot=
;.=C2=A0 I then attempted to build UHD on the N310 (directly on device rath=
er than cross-compile) and after installing Mako (pip3 install Mako) and ru=
amel.yaml (pip3 install ruamel.yaml) I was able to run cmake and then &quot=
;make -j2&quot;.=C2=A0 Unfortunately, the build did not complete (see error=
 below). Note that below this error message I also provided the cmake comma=
nd I used along with its output.=C2=A0 Any suggestions for this error?</div=
><div>Rob=C2=A0</div><div><br></div><div><font face=3D"monospace">[ 13%] Bu=
ilding CXX object lib/CMakeFiles/uhd.dir/convert/convert_with_neon.cpp.o<br=
>In file included from /home/root/uhd/UHD-4.0/uhd/host/lib/convert/convert_=
with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-gnueabi/9.2.0/include/arm_ne=
on.h: In member function &#39;virtual void __convert_fc32_1_sc16_item32_le_=
1_PRIORITY_SIMD::operator()(const input_type&amp;, const output_type&amp;, =
size_t)&#39;:<br>/usr/lib/gcc/arm-oe-linux-gnueabi/9.2.0/include/arm_neon.h=
:6740:1: <font color=3D"#ff0000" style=3D"background-color:rgb(255,255,255)=
">error</font>: inlining failed in call to always_inline &#39;float32x4_t v=
dupq_n_f32(float32_t)&#39;: target specific option mismatch<br>=C2=A06740 |=
 <font color=3D"#ff0000">vdupq_n_f32</font> (float32_t __a)<br>=C2=A0 =C2=
=A0 =C2=A0 | ^~~~~~~~~~~<br>/home/root/uhd/UHD-4.0/uhd/host/lib/convert/con=
vert_with_neon.cpp:27:33: note: called from here<br>=C2=A0 =C2=A027 | =C2=
=A0 =C2=A0 float32x4_t Q0 =3D vdupq_n_f32(float(scale_factor));<br>=C2=A0 =
=C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~<br></font></div><div><fon=
t face=3D"monospace">***************************************</font></div><d=
iv>*** and lots more errors=C2=A0similar to this</div><div>****************=
***************************************</div><div><font face=3D"monospace">=
<br></font></div><div><font face=3D"monospace"><br></font></div><div><div><=
font face=3D"monospace">***************************************</font></div=
><div>*** Here is the cmake command along with the output (potential issues=
 highlighted in yellow)</div><div>*****************************************=
**************</div><div></div></div><div>root@ni-n3xx-3144673:~/build_uhd#=
 cmake ../uhd/UHD-4.0/uhd/host/ -DCMAKE_INSTALL_PREFIX=3D~/install_uhd -DEN=
ABLE_X300=3DOFF -DENABLE_USRP1=3DOFF -DENABLE_USRP2=3DOFF -DENABLE_OCTOCLOC=
K=3DOFF -DENABLE_MANUAL=3DOFF -DENABLE_MAN_PAGES=3DOFF -DENABLE_B100=3DOFF<=
br>-- The CXX compiler identification is GNU 9.2.0<br>-- The C compiler ide=
ntification is GNU 9.2.0<br>-- Check for working CXX compiler: /usr/bin/c++=
<br>-- Check for working CXX compiler: /usr/bin/c++ -- works<br>-- Detectin=
g CXX compiler ABI info<br>-- Detecting CXX compiler ABI info - done<br>-- =
Detecting CXX compile features<br>-- Detecting CXX compile features - done<=
br>-- Check for working C compiler: /usr/bin/cc<br>-- Check for working C c=
ompiler: /usr/bin/cc -- works<br>-- Detecting C compiler ABI info<br>-- Det=
ecting C compiler ABI info - done<br>-- Detecting C compile features<br>-- =
Detecting C compile features - done<br>-- <br>-- Configuring the Python int=
erpreter...<br>-- Python interpreter: /usr/bin/python3.7 Version: 3.7.6<br>=
-- Override with: -DPYTHON_EXECUTABLE=3D&lt;path-to-python&gt;<br>-- Python=
 runtime interpreter: /usr/bin/python3.7 Version: 3.7.6<br>-- Override with=
: -DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;<br>-- Finding Python=
 Libraries...<br>-- Python Libraries: /usr/lib/<a href=3D"http://libpython3=
.7m.so">libpython3.7m.so</a><br>-- Python include directories: /usr/include=
/python3.7m<br>-- Operating on release branch (UHD-4.0).<br>-- Using UHD Im=
ages Directory: /home/root/install_uhd/share/uhd/images<br>-- Build type no=
t specified: defaulting to release.<br>-- Performing Test HAVE_VISIBILITY_H=
IDDEN<br>-- Performing Test HAVE_VISIBILITY_HIDDEN - Success<br>-- Performi=
ng Test HAVE_VISIBILITY_INLINES_HIDDEN<br>-- Performing Test HAVE_VISIBILIT=
Y_INLINES_HIDDEN - Success<br>-- <br>-- Configuring Boost C++ Libraries...<=
br>-- <br>-- Checking for Boost version 1.58 or greater<br>-- =C2=A0 Lookin=
g for required Boost components...<br>-- =C2=A0 Enabling Boost Error Code H=
eader Only<br>-- =C2=A0 =C2=A0 Disabling boost::asio use of std::string_vie=
w<br>-- =C2=A0 Boost version: 1.71.0<br>-- =C2=A0 Boost include directories=
: /usr/include<br>-- =C2=A0 Boost library directories: /usr/lib<br>-- =C2=
=A0 Boost libraries: Boost::chrono;Boost::date_time;Boost::filesystem;Boost=
::program_options;Boost::serialization;Boost::thread;Boost::unit_test_frame=
work;Boost::system<br>-- Looking for Boost version 1.58 or greater - found<=
br>-- <br>-- Python checking for Python version 3.5 or greater<br>-- Python=
 checking for Python version 3.5 or greater - found<br>-- <br>-- Python che=
cking for Mako templates 0.4.2 or greater<br>-- Python checking for Mako te=
mplates 0.4.2 or greater - found<br>-- <br>-- Python checking for requests =
2.0 or greater<br>-- Python checking for requests 2.0 or greater - found<br=
>-- <br>-- Python checking for numpy 1.11 or greater<br>-- Python checking =
for numpy 1.11 or greater - found<br>-- <br>-- Python checking for ruamel.y=
aml 0.15 or greater<br>-- Python checking for ruamel.yaml 0.15 or greater -=
 found<br>-- <br>-- Configuring LibUHD support...<br>-- =C2=A0 Dependency B=
oost_FOUND =3D TRUE<br>-- =C2=A0 Dependency HAVE_PYTHON_MODULE_MAKO =3D TRU=
E<br>-- =C2=A0 Enabling LibUHD support.<br>-- =C2=A0 Override with -DENABLE=
_LIBUHD=3DON/OFF<br>-- <br>-- Configuring LibUHD - C API support...<br>-- =
=C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabling LibUHD - C API=
 support.<br>-- =C2=A0 Override with -DENABLE_C_API=3DON/OFF<br>-- <br>-- C=
onfiguring LibUHD - Python API support...<br>-- =C2=A0 Dependency ENABLE_LI=
BUHD =3D ON<br>-- =C2=A0 Dependency HAVE_PYTHON_MODULE_NUMPY =3D TRUE<br>--=
 =C2=A0 Dependency HAVE_PYTHON_LIBS =3D TRUE<br>-- =C2=A0 Enabling LibUHD -=
 Python API support.<br>-- =C2=A0 Override with -DENABLE_PYTHON_API=3DON/OF=
F<br>-- <br>-- Configuring Examples support...<br>-- =C2=A0 Dependency ENAB=
LE_LIBUHD =3D ON<br>-- =C2=A0 Enabling Examples support.<br>-- =C2=A0 Overr=
ide with -DENABLE_EXAMPLES=3DON/OFF<br>-- <br>-- Configuring Utils support.=
..<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabling Utils=
 support.<br>-- =C2=A0 Override with -DENABLE_UTILS=3DON/OFF<br>-- <br>-- C=
onfiguring Tests support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br=
>-- =C2=A0 Enabling Tests support.<br>-- =C2=A0 Override with -DENABLE_TEST=
S=3DON/OFF<br>-- <br>-- Found PkgConfig: /usr/bin/pkg-config (found version=
 &quot;0.29.2&quot;) <br>-- Looking for libusb_handle_events_timeout_comple=
ted<br>-- Looking for libusb_handle_events_timeout_completed - found<br>-- =
Looking for libusb_error_name<br>-- Looking for libusb_error_name - found<b=
r>-- Looking for libusb_strerror<br>-- Looking for libusb_strerror - found<=
br>-- Found LIBUSB: /lib/<a href=3D"http://libusb-1.0.so">libusb-1.0.so</a>=
 =C2=A0<br>-- Could NOT find DPDK (missing: DPDK_INCLUDE_DIRS DPDK_LIBRARIE=
S) (Required is exact version &quot;18.11&quot;)<br>-- <br>-- Configuring U=
SB support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dep=
endency LIBUSB_FOUND =3D TRUE<br>-- =C2=A0 Enabling USB support.<br>-- =C2=
=A0 Override with -DENABLE_USB=3DON/OFF<br>-- <br>-- Configuring B100 suppo=
rt...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency =
ENABLE_USB =3D ON<br>-- =C2=A0 Disabling B100 support.<br>-- =C2=A0 Overrid=
e with -DENABLE_B100=3DON/OFF<br>-- <br>-- Configuring B200 support...<br>-=
- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_USB=
 =3D ON<br>-- =C2=A0 Enabling B200 support.<br>-- =C2=A0 Override with -DEN=
ABLE_B200=3DON/OFF<br>-- <br>-- Configuring USRP1 support...<br>-- =C2=A0 D=
ependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_USB =3D ON<br=
>-- =C2=A0 Disabling USRP1 support.<br>-- =C2=A0 Override with -DENABLE_USR=
P1=3DON/OFF<br>-- <br>-- Configuring USRP2 support...<br>-- =C2=A0 Dependen=
cy ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Disabling USRP2 support.<br>-- =C2=A0 =
Override with -DENABLE_USRP2=3DON/OFF<br>-- <br>-- Configuring X300 support=
...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Disabling X30=
0 support.<br>-- =C2=A0 Override with -DENABLE_X300=3DON/OFF<br>-- <br>-- C=
onfiguring MPMD support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>=
-- =C2=A0 Enabling MPMD support.<br>-- =C2=A0 Override with -DENABLE_MPMD=
=3DON/OFF<br>-- <br>-- Configuring N300 support...<br>-- =C2=A0 Dependency =
ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_MPMD =3D ON<br>-- =C2=
=A0 Enabling N300 support.<br>-- =C2=A0 Override with -DENABLE_N300=3DON/OF=
F<br>-- <br>-- Configuring N320 support...<br>-- =C2=A0 Dependency ENABLE_L=
IBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_MPMD =3D ON<br>-- =C2=A0 Enabli=
ng N320 support.<br>-- =C2=A0 Override with -DENABLE_N320=3DON/OFF<br>-- <b=
r>-- Configuring E320 support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D =
ON<br>-- =C2=A0 Dependency ENABLE_MPMD =3D ON<br>-- =C2=A0 Enabling E320 su=
pport.<br>-- =C2=A0 Override with -DENABLE_E320=3DON/OFF<br>-- <br>-- Confi=
guring E300 support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =
=C2=A0 Dependency ENABLE_MPMD =3D ON<br>-- =C2=A0 Enabling E300 support.<br=
>-- =C2=A0 Override with -DENABLE_E300=3DON/OFF<br>-- <br>-- Configuring Oc=
toClock support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=
=A0 Disabling OctoClock support.<br>-- =C2=A0 Override with -DENABLE_OCTOCL=
OCK=3DON/OFF<br>-- <br>-- Configuring DPDK support...<br>-- =C2=A0 Dependen=
cy ENABLE_MPMD =3D ON<br>-- =C2=A0 Dependency DPDK_FOUND =3D FALSE<br>-- =
=C2=A0 Disabling DPDK support.<br>-- =C2=A0 Override with -DENABLE_DPDK=3DO=
N/OFF<br>-- <br>-- Looking for C++ include emmintrin.h<br><span style=3D"ba=
ckground-color:rgb(255,255,0)">CMake Warning (dev) at /usr/share/cmake-3.15=
/Modules/CheckIncludeFileCXX.cmake:79 (message):</span><br>=C2=A0 Policy CM=
P0075 is not set: Include file check macros honor<br>=C2=A0 CMAKE_REQUIRED_=
LIBRARIES.=C2=A0 Run &quot;cmake --help-policy CMP0075&quot; for policy<br>=
=C2=A0 details.=C2=A0 Use the cmake_policy command to set the policy and su=
ppress this<br>=C2=A0 warning.<br><br>=C2=A0 CMAKE_REQUIRED_LIBRARIES is se=
t to:<br><br>=C2=A0 =C2=A0 /lib/<a href=3D"http://libusb-1.0.so">libusb-1.0=
.so</a><br><br>=C2=A0 For compatibility with CMake 3.11 and below this chec=
k is ignoring it.<br>Call Stack (most recent call first):<br>=C2=A0 lib/con=
vert/CMakeLists.txt:25 (CHECK_INCLUDE_FILE_CXX)<br>=C2=A0 lib/CMakeLists.tx=
t:46 (include)<br>=C2=A0 lib/CMakeLists.txt:87 (INCLUDE_SUBDIRECTORY)<br>Th=
is warning is for project developers.=C2=A0 Use -Wno-dev to suppress it.<br=
><br><span style=3D"background-color:rgb(255,255,0)">-- Looking for C++ inc=
lude emmintrin.h - not found</span><br>-- Looking for C++ include arm_neon.=
h<br>-- Looking for C++ include arm_neon.h - found<br>-- The ASM compiler i=
dentification is GNU<br>-- Found assembler: /usr/bin/cc<br>-- <br>-- Config=
uring priority scheduling...<br>-- Performing Test HAVE_PTHREAD_SETSCHEDPAR=
AM<br>-- Performing Test HAVE_PTHREAD_SETSCHEDPARAM - Success<br>-- Perform=
ing Test HAVE_WIN_SETTHREADPRIORITY<br><span style=3D"background-color:rgb(=
255,255,0)">-- Performing Test HAVE_WIN_SETTHREADPRIORITY - Failed</span><b=
r>-- =C2=A0 Priority scheduling supported through pthread_setschedparam.<br=
>-- Performing Test HAVE_PTHREAD_SETNAME<br>-- Performing Test HAVE_PTHREAD=
_SETNAME - Success<br>-- =C2=A0 Setting thread names is supported through p=
thread_setname_np.<br>-- Performing Test HAVE_PTHREAD_SETAFFINITY_NP<br>-- =
Performing Test HAVE_PTHREAD_SETAFFINITY_NP - Success<br>-- Performing Test=
 HAVE_WIN_SETTHREADAFFINITYMASK<br><span style=3D"background-color:rgb(255,=
255,0)">-- Performing Test HAVE_WIN_SETTHREADAFFINITYMASK - Failed</span><b=
r>-- =C2=A0 Setting thread affinity is supported through pthread_setaffinit=
y_np.<br>-- <br>-- Configuring module loading...<br>-- Performing Test HAVE=
_DLOPEN<br>-- Performing Test HAVE_DLOPEN - Success<br>-- Performing Test H=
AVE_LOAD_LIBRARY<br><span style=3D"background-color:rgb(255,255,0)">-- Perf=
orming Test HAVE_LOAD_LIBRARY - Failed</span><br>-- =C2=A0 Module loading s=
upported through dlopen.<br>-- <br>-- USB support enabled via libusb.<br>--=
 <br>-- Configuring interface address discovery...<br>-- Performing Test HA=
VE_GETIFADDRS<br>-- Performing Test HAVE_GETIFADDRS - Success<br>-- Looking=
 for C++ include winsock2.h<br>-- Looking for C++ include winsock2.h - not =
found<br>-- =C2=A0 Interface address discovery supported through getifaddrs=
.<br>-- Looking for C++ include atlbase.h<br><span style=3D"background-colo=
r:rgb(255,255,0)">-- Looking for C++ include atlbase.h - not found</span><b=
r>-- <br>-- Loading build info.<br>-- Found Curses: /usr/lib/libcurses.so =
=C2=A0<br>-- Performing Test HAVE_C99_STRUCTDECL<br>-- Performing Test HAVE=
_C99_STRUCTDECL - Success<br>-- <br>-- Adding B2XX device test target<br>--=
 Adding E3XX device test target<br>-- Adding N3XX device test target<br>-- =
Adding E32x device test target<br>-- <br>-- Could NOT find Doxygen (missing=
: DOXYGEN_EXECUTABLE) <br>-- <br>-- Configuring Manual support...<br>-- =C2=
=A0 Dependency DOXYGEN_FOUND =3D NO<br>-- =C2=A0 Disabling Manual support.<=
br>-- =C2=A0 Override with -DENABLE_MANUAL=3DON/OFF<br>-- <br>-- Configurin=
g API/Doxygen support...<br>-- =C2=A0 Dependency DOXYGEN_FOUND =3D NO<br>--=
 =C2=A0 Disabling API/Doxygen support.<br>-- =C2=A0 Override with -DENABLE_=
DOXYGEN=3DON/OFF<br>-- <br>-- Found GZip: /bin/gzip<br>-- <br>-- Compressed=
 Man Pages enabled<br>-- =C2=A0 Override with -DENABLE_MAN_PAGE_COMPRESSION=
=3DON/OFF<br>-- <br>-- Configuring Man Pages support...<br>-- =C2=A0 Depend=
ency NOT_WIN32 =3D TRUE<br>-- =C2=A0 Dependency GZIP_FOUND =3D TRUE<br>-- =
=C2=A0 Disabling Man Pages support.<br>-- =C2=A0 Override with -DENABLE_MAN=
_PAGES=3DON/OFF<br>-- <br>-- Python checking for virtualenv<br>-- Python ch=
ecking for virtualenv - &quot;assert hasattr(sys, &#39;real_prefix&#39;)&qu=
ot; failed<br>-- Utilizing the python install directory: /home/root/install=
_uhd/lib/python3.7/site-packages<br>-- <br>-- #############################=
#########################<br>-- # UHD enabled components =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0<br>-- ######################################################<=
br>-- =C2=A0 * LibUHD<br>-- =C2=A0 * LibUHD - C API<br>-- =C2=A0 * LibUHD -=
 Python API<br>-- =C2=A0 * Examples<br>-- =C2=A0 * Utils<br>-- =C2=A0 * Tes=
ts<br>-- =C2=A0 * USB<br>-- =C2=A0 * B200<br>-- =C2=A0 * MPMD<br>-- =C2=A0 =
* N300<br>-- =C2=A0 * N320<br>-- =C2=A0 * E320<br>-- =C2=A0 * E300<br>-- <b=
r>-- ######################################################<br>-- # UHD dis=
abled components =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>-- ##########################=
############################<br>-- =C2=A0 * B100<br>-- =C2=A0 * USRP1<br>--=
 =C2=A0 * USRP2<br>-- =C2=A0 * X300<br>-- =C2=A0 * OctoClock<br>-- =C2=A0 *=
 DPDK<br>-- =C2=A0 * Manual<br>-- =C2=A0 * API/Doxygen<br>-- =C2=A0 * Man P=
ages<br>-- <br>-- Building version: 4.0.0.0-25-g1a34ba8a<br>-- Using instal=
l prefix: /home/root/install_uhd<br>-- Configuring done<br>-- Generating do=
ne<br>-- Build files have been written to: /home/root/build_uhd<br>root@ni-=
n3xx-3144673:~/build_uhd#=C2=A0<font face=3D"monospace"><br></font></div><d=
iv><br></div><div><br></div></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 4, 2020 at 11:26 AM Rob Kossl=
er &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">H=
i,<br><div>I&#39;m wondering if/how I can control a B2xx device from an N31=
0. I use the B2xx as an LO for shared LO operations from an N310.=C2=A0 Pre=
sently, I use a laptop to control my B200mini, but I am wondering if this c=
ontrol can be done directly from the N310. I realize that the N310 USB port=
 is not USB3 but since my streaming rates for a CW tone are as slow as poss=
ible, hopefully that won&#39;t matter.</div><div><br></div><div>I have conn=
ected the B200mini to the N310 USB port, but I can&#39;t see the B200mini w=
hen I run uhd_find_devices.=C2=A0 I have copied the B2xx FPGA images to the=
 /usr/share/uhd/images/ folder and I have copied the file uhd-usrp.rules to=
 the /etc/udev/rules.d/ folder and rebooted the N310, but still no luck.</d=
iv><div><br></div><div>The following is the output of the &quot;lsusb&quot;=
 and &quot;uhd_find_devices&quot; commands.=C2=A0 The &quot;lsusb&quot; com=
mand shows the presence of the Cypress device, but the device is still not =
found.</div><div><br></div><div>Suggestions?</div><div>Rob</div><div><br></=
div><div><font face=3D"monospace"><span style=3D"background-color:rgb(255,2=
55,0)">root@ni-n3xx-3144673:~# lsusb</span><br>Bus 001 Device 003: ID 2500:=
0021 Cypress WestBridge <br>Bus 001 Device 001: ID 1d6b:0002 Linux Foundati=
on 2.0 root hub<br><span style=3D"background-color:rgb(255,255,0)">root@ni-=
n3xx-3144673:~# uhd_find_devices</span> <br>[INFO] [UHD] linux; GNU C++ ver=
sion 9.2.0; Boost_107100; UHD_4.0.0.0-0-g90ce6062<br>----------------------=
----------------------------<br>-- UHD Device 0<br>------------------------=
--------------------------<br>Device Address:<br>=C2=A0 =C2=A0 serial: 3144=
673<br>=C2=A0 =C2=A0 claimed: False<br>=C2=A0 =C2=A0 mgmt_addr: 127.0.0.1<b=
r>=C2=A0 =C2=A0 product: n310<br>=C2=A0 =C2=A0 type: n3xx<br><br><br><span =
style=3D"background-color:rgb(255,255,0)">root@ni-n3xx-3144673:~#=C2=A0</sp=
an>=C2=A0</font><br></div></div>
</blockquote></div></div>

--000000000000697c2705b5a71be1--


--===============5016510020287964479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5016510020287964479==--

