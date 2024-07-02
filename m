Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C626924022
	for <lists+usrp-users@lfdr.de>; Tue,  2 Jul 2024 16:14:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54F03385484
	for <lists+usrp-users@lfdr.de>; Tue,  2 Jul 2024 10:14:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719929649; bh=61njenGFBkWZJ3DHlckDnplI25xFrcGK7APRiondCCw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PIwdShRjzTpyH4zDSFC9mJL3smCHaiN0KVbtnwS3r/NIsu0be6aSo2b8DHW7wURsp
	 oT3Poy0MizDC/hYtsbEOQBDk1zouR19Va+Bcr+1GyGQmS5tsJWlRhlOqFYD/8dKhPJ
	 FD0CNFcL6N6+7iB5v5rLzWSAxeLsMUmh+AghekQK58CzMK+IBTBuNnNJ8QwgLcL4mQ
	 lA+i6KkKhCcdTehdZDTWnvwCl+Sl/RZEJeS86l+ulFER44nvlexV8nENZWMObRLPzw
	 DfIX7JxPnZ3h0WvChuP74QSMCEQZlwuEwALuT5aqNQS6Wa2HNo/4CYDJuk6aEqgMns
	 H0SdYyxsN5Zgw==
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by mm2.emwd.com (Postfix) with ESMTPS id E195D3852F7
	for <usrp-users@lists.ettus.com>; Tue,  2 Jul 2024 10:14:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A0TcEu/v";
	dkim-atps=neutral
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-642035f8c4eso42422237b3.0
        for <usrp-users@lists.ettus.com>; Tue, 02 Jul 2024 07:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719929642; x=1720534442; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=n56iRNBm+wvejbN3101WCPp3TGwHyuipOF7vGOS1l/g=;
        b=A0TcEu/vvYU+czGPmX6ME4FpyesUfvSoTY4BN+MvShhzrZ8UzVhxKhJQpGYqmMXEul
         fEDJM+OfGgQDxMq9jZjU1EGXHYMe+NQkanNmGst3UfV52XMXCUI1UdEJMr1oi2pTBBlx
         444+lJhFZ1bHplE0pjFT8NOn4QKZ5VEYGnbNxco9YE9RtJtxddW9WppmM/u2KX6RTvQb
         /62EGOf8VzBY6h2p9Y70kjDEkeotjBSzuBKNXkajMyVyjPgD09BTiAmjXfVzIpszNSaz
         yluIzkFylLldAyskhSqDuA9dZh492qGYpB7mBhJXjp/gd411UuhH3ngDVe026DXUCEEg
         0NBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719929642; x=1720534442;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n56iRNBm+wvejbN3101WCPp3TGwHyuipOF7vGOS1l/g=;
        b=Wq1IEmAgPaj6JZ6D2q/fohL7Z+H+jnneYCMca2ab5Itt6LHh0/w46cvGCCqaVDBkYV
         umiAEjqu9Nat9ZpeiZ9AIoEOJDC6y1joXjJYtxFyz6NFxCH+bs/S832aWNywzmDf5fIA
         RlsI1zX3EhFasoPl5PV5AS4B22DleHh2LQp3XZ4e8ASqbz5t6DU0IN0lZFit6lATiaFY
         aTuJL9HZfa1SQpkPUJWA88inOTYp2zG/R63OfR3Y/3kMsiIn+n9KwIyoWa7gJa8XStxE
         MC6MAbpVJCZurMd0mrg0Z4qS8eXgmOd4UZmV5YiL50sn19C4z/m7lF303gQ5zZ4vAAsJ
         96RA==
X-Gm-Message-State: AOJu0YyoTulJ1ADJWwlX8xTqG8ubj5QFC8XKQsZkgVTLJ4sD2caEjkV+
	4zbcIfqXzwiH85doaZaH5Jh2fOwQoCZ6JjfeGCs1s2QaTVrJz/KG/47D3ymYz7YMgj3vJDr0lKM
	WP6QAT3dQsAIIG+6WEAzmDD20eHaFs8ni
X-Google-Smtp-Source: AGHT+IHGSGGUdyYlUfEB1/Sz9On50GSkSoArefGrYByenNoTIR0dLqrDrKWbERhbJq00aylGmZX5JVADRrsqQgKumU0=
X-Received: by 2002:a05:690c:3603:b0:650:82e0:63b1 with SMTP id
 00721157ae682-65082e06426mr14990847b3.41.1719929641548; Tue, 02 Jul 2024
 07:14:01 -0700 (PDT)
MIME-Version: 1.0
From: Chris Gorman <chrisjohgorman@gmail.com>
Date: Tue, 2 Jul 2024 10:13:48 -0400
Message-ID: <CAHVeOW9OFSppSaKtL2MrFQuAE8Uvf1cvZimizcqYxipZr9-_zQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="00000000000052e626061c4453fa"
Message-ID-Hash: BTDFUIS6NB6NTWID7C7ALAMXIAJNAY6E
X-Message-ID-Hash: BTDFUIS6NB6NTWID7C7ALAMXIAJNAY6E
X-MailFrom: chrisjohgorman@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Build error for UHD 4.7.0.0-0-ga5ed1872 on mingw64
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BTDFUIS6NB6NTWID7C7ALAMXIAJNAY6E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--00000000000052e626061c4453fa
Content-Type: text/plain; charset="UTF-8"

Hello USRP users,

I'm trying to update my build from 4.6.0.0 to 4.7.0.0 for UHD on
msys2/mingw64.  During the build I get the following error...

$ C:\msys64\mingw64\bin\c++.exe
-DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW
-DBOOST_ASIO_DISABLE_STD_STRING_VIEW -DBOOST_ATOMIC_DYN_LINK
-DBOOST_ATOMIC_NO_LIB -DBOOST_CHRONO_DYN_LINK -DBOOST_CHRONO_NO_LIB
-DBOOST_DATE_TIME_DYN_LINK -DBOOST_DATE_TIME_NO_LIB
-DBOOST_ERROR_CODE_HEADER_ONLY -DBOOST_FILESYSTEM_DYN_LINK
-DBOOST_FILESYSTEM_NO_LIB -DBOOST_PROGRAM_OPTIONS_DYN_LINK
-DBOOST_PROGRAM_OPTIONS_NO_LIB -DBOOST_SERIALIZATION_DYN_LINK
-DBOOST_SERIALIZATION_NO_LIB -DBOOST_SYSTEM_DYN_LINK
-DBOOST_SYSTEM_NO_LIB -DBOOST_TEST_DYN_LINK -DBOOST_TEST_MAIN
-DBOOST_THREAD_DYN_LINK -DBOOST_THREAD_NO_LIB
-DBOOST_UNIT_TEST_FRAMEWORK_DYN_LINK
-DBOOST_UNIT_TEST_FRAMEWORK_NO_LIB -DHAVE_CONFIG_H -DNOMINMAX
-DUHD_LOG_CONSOLE_COLOR -DUHD_LOG_CONSOLE_LEVEL=2
-DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_MIN_LEVEL=1 -D_WIN32_WINNT=0x0501
-IC:/msys64/home/chris/src/uhd/host/build/include
-IC:/msys64/home/chris/src/uhd/host/include
-IC:/msys64/home/chris/src/uhd/host/lib/include
-IC:/msys64/home/chris/src/uhd/host/build/lib/include
-IC:/msys64/home/chris/src/uhd/host/tests/common
-IC:/msys64/home/chris/src/uhd/host/build/lib/rfnoc
-IC:/msys64/home/chris/src/uhd/host/lib/rfnoc
-IC:/msys64/home/chris/src/uhd/host/build/lib/ic_reg_maps
-IC:/msys64/home/chris/src/uhd/host/lib/deps/rpclib/include
-IC:/msys64/home/chris/src/uhd/host/lib/deps/flatbuffers/include
-IC:/msys64/home/chris/src/uhd/host/build/_cmrc/include -O3 -DNDEBUG
-std=gnu++14   -Wall -Wextra -Wsign-compare -MD -MT
tests/CMakeFiles/isatty_test.dir/isatty_test.cpp.obj -MF
tests\CMakeFiles\isatty_test.dir\isatty_test.cpp.obj.d -o
tests/CMakeFiles/isatty_test.dir/isatty_test.cpp.obj -c
C:/msys64/home/chris/src/uhd/host/tests/isatty_test.cpp
In file included from
C:/msys64/mingw64/include/boost/assert/source_location.hpp:15,
                 from C:/msys64/mingw64/include/boost/exception/exception.hpp:9,
                 from C:/msys64/mingw64/include/boost/throw_exception.hpp:21,
                 from
C:/msys64/mingw64/include/boost/smart_ptr/detail/shared_count.hpp:31,
                 from
C:/msys64/mingw64/include/boost/smart_ptr/shared_ptr.hpp:18,
                 from C:/msys64/mingw64/include/boost/shared_ptr.hpp:17,
                 from
C:/msys64/mingw64/include/boost/test/tools/assertion_result.hpp:21,
                 from
C:/msys64/mingw64/include/boost/test/tools/old/impl.hpp:20,
                 from C:/msys64/mingw64/include/boost/test/test_tools.hpp:46,
                 from C:/msys64/mingw64/include/boost/test/unit_test.hpp:18,
                 from C:/msys64/home/chris/src/uhd/host/tests/isatty_test.cpp:8:
C:/msys64/mingw64/include/c++/14.1.0/cstring:78:11: error: 'memchr'
has not been declared in '::'
   78 |   using ::memchr;
      |           ^~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:79:11: error: 'memcmp'
has not been declared in '::'
   79 |   using ::memcmp;
      |           ^~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:82:11: error: 'memset'
has not been declared in '::'
   82 |   using ::memset;
      |           ^~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:83:11: error: 'strcat'
has not been declared in '::'
   83 |   using ::strcat;
      |           ^~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:84:11: error: 'strcmp'
has not been declared in '::'
   84 |   using ::strcmp;
      |           ^~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:85:11: error: 'strcoll'
has not been declared in '::'
   85 |   using ::strcoll;
      |           ^~~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:86:11: error: 'strcpy'
has not been declared in '::'
   86 |   using ::strcpy;
      |           ^~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:87:11: error: 'strcspn'
has not been declared in '::'
   87 |   using ::strcspn;
      |           ^~~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:88:11: error: 'strerror'
has not been declared in '::'
   88 |   using ::strerror;
      |           ^~~~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:89:11: error: 'strlen'
has not been declared in '::'
   89 |   using ::strlen;
      |           ^~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:90:11: error: 'strncat'
has not been declared in '::'
   90 |   using ::strncat;
      |           ^~~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:91:11: error: 'strncmp'
has not been declared in '::'
   91 |   using ::strncmp;
      |           ^~~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:92:11: error: 'strncpy'
has not been declared in '::'
   92 |   using ::strncpy;
      |           ^~~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:93:11: error: 'strspn'
has not been declared in '::'
   93 |   using ::strspn;
      |           ^~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:95:11: error: 'strtok'
has not been declared in '::'
   95 |   using ::strtok;
      |           ^~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:97:11: error: 'strxfrm'
has not been declared in '::'
   97 |   using ::strxfrm;
      |           ^~~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:98:11: error: 'strchr'
has not been declared in '::'
   98 |   using ::strchr;
      |           ^~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:99:11: error: 'strpbrk'
has not been declared in '::'
   99 |   using ::strpbrk;
      |           ^~~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:100:11: error: 'strrchr'
has not been declared in '::'
  100 |   using ::strrchr;
      |           ^~~~~~~
C:/msys64/mingw64/include/c++/14.1.0/cstring:101:11: error: 'strstr'
has not been declared in '::'
  101 |   using ::strstr;
      |           ^~~~~~
C:/msys64/mingw64/include/boost/assert/source_location.hpp: In
function 'bool boost::operator==(const source_location&, const
source_location&)':
C:/msys64/mingw64/include/boost/assert/source_location.hpp:126:21:
error: 'strcmp' is not a member of 'std'; did you mean 'strchr'?
  126 |         return std::strcmp( s1.file_, s2.file_ ) == 0 &&
std::strcmp( s1.function_, s2.function_ ) == 0 && s1.line_ == s2.line_
&& s1.column_ == s2.column_;
      |                     ^~~~~~
      |                     strchr
C:/msys64/mingw64/include/boost/assert/source_location.hpp:126:63:
error: 'strcmp' is not a member of 'std'; did you mean 'strchr'?
  126 |         return std::strcmp( s1.file_, s2.file_ ) == 0 &&
std::strcmp( s1.function_, s2.function_ ) == 0 && s1.line_ == s2.line_
&& s1.column_ == s2.column_;
      |                                                               ^~~~~~
      |                                                               strchr
In file included from C:/msys64/mingw64/include/boost/mpl/for_each.hpp:29,
                 from
C:/msys64/mingw64/include/boost/test/tree/test_case_template.hpp:28,
                 from
C:/msys64/mingw64/include/boost/test/unit_test_suite.hpp:19,
                 from C:/msys64/mingw64/include/boost/test/unit_test.hpp:19:
C:/msys64/mingw64/include/boost/utility/value_init.hpp: In constructor
'boost::detail::zero_init::zero_init(void*, std::size_t)':
C:/msys64/mingw64/include/boost/utility/value_init.hpp:73:12: error:
'memset' is not a member of 'std'; did you mean 'wmemset'?
   73 |       std::memset( p, 0, n );
      |            ^~~~~~
      |            wmemset

It looks like I'm including something I shouldn't, but I don't know what.

My cmake build log is ...

$ cmake -DCMAKE_INSTALL_PREFIX=c:/msys64/mingw64 -DENABLE_PYTHON_API=ON ..
--
-- Configuring the Python interpreter...
-- Manually determining build Python version...
-- Python interpreter: C:/msys64/mingw64/bin/python3.11.exe Version: 3.11.9
-- Override with: -DPYTHON_EXECUTABLE=<path-to-python>
-- Manually determining runtime Python version...
-- Python runtime interpreter: C:/msys64/mingw64/bin/python3.11.exe
Version: 3.11.9
-- Override with: -DRUNTIME_PYTHON_EXECUTABLE=<path-to-python>
-- Finding Python Libraries...
CMake Warning (dev) at cmake/Modules/UHDPython.cmake:313 (find_package):
  Policy CMP0148 is not set: The FindPythonInterp and FindPythonLibs modules
  are removed.  Run "cmake --help-policy CMP0148" for policy details.  Use
  the cmake_policy command to set the policy and suppress this warning.

Call Stack (most recent call first):
  cmake/Modules/UHDVersion.cmake:9 (include)
  cmake/Modules/UHDPackage.cmake:9 (include)
  CMakeLists.txt:107 (include)
This warning is for project developers.  Use -Wno-dev to suppress it.

-- Python Libraries: C:/msys64/mingw64/lib/libpython3.11.dll.a
-- Python include directories: C:/msys64/mingw64/include/python3.11
-- pybind11::lto disabled (problems with undefined symbols for MinGW for now)
-- pybind11::thin_lto disabled (problems with undefined symbols for
MinGW for now)
-- Operating on master branch.
-- Using UHD Images Directory: C:\msys64\mingw64\share\uhd\images
-- Build type not specified: defaulting to release.
--
-- Configuring Boost C++ Libraries...
--
-- Checking for Boost version 1.65 or greater
--   Looking for required Boost components...
--   Enabling Boost Error Code Header Only
--     Disabling boost::asio use of std::string_view
--   Boost version: 1.85.0
--   Boost include directories: C:/msys64/mingw64/include
--   Boost library directories: C:/msys64/mingw64/lib
--   Boost libraries:
Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_options;Boost::serialization;Boost::thread;Boost::unit_test_framework;Boost::system
-- Looking for Boost version 1.65 or greater - found
--
-- Python checking for compatible Python version
-- Python checking for compatible Python version - 3.11.9 satisfies
minimum required version 3.7
--
-- Python checking for Mako templates module
-- Python checking for Mako templates module - 1.3.5 satisfies minimum
required version 0.4.2
--
-- Python checking for requests module
-- Python checking for requests module - 2.32.2 satisfies minimum
required version 2.0
--
-- Python checking for numpy module
-- Python checking for numpy module - 1.26.4 satisfies minimum
required version 1.11
--
-- Python checking for ruamel.yaml module
-- Python checking for ruamel.yaml module - 0.18.6 satisfies minimum
required version 0.15
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
-- Configuring Python Module (Utils only) support...
--   Dependency HAVE_PYTHON_MODULE_NUMPY = TRUE
--   Dependency HAVE_PYTHON_MODULE_MAKO = TRUE
--   Dependency HAVE_PYTHON_MODULE_YAML = TRUE
--   Enabling Python Module (Utils only) support.
--   Override with -DENABLE_PYMOD_UTILS=ON/OFF
--
CMake Warning (dev) at
C:/msys64/mingw64/share/cmake/Modules/FindPackageHandleStandardArgs.cmake:447
(message):
  `find_package()` specify a version range but the module DPDK does not
  support this capability.  Only the lower endpoint of the range will be
  used.
Call Stack (most recent call first):
  cmake/Modules/FindDPDK.cmake:86 (find_package_handle_standard_args)
  lib/CMakeLists.txt:63 (find_package)
This warning is for project developers.  Use -Wno-dev to suppress it.

-- Could NOT find DPDK (missing: DPDK_INCLUDE_DIRS DPDK_LIBRARIES)
(Required is at least version "18.11")
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
--   Enabling B100 support.
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
--   Enabling USRP1 support.
--   Override with -DENABLE_USRP1=ON/OFF
--
-- Configuring USRP2 support...
--   Dependency ENABLE_LIBUHD = ON
--   Enabling USRP2 support.
--   Override with -DENABLE_USRP2=ON/OFF
--
-- Configuring X300 support...
--   Dependency ENABLE_LIBUHD = ON
--   Enabling X300 support.
--   Override with -DENABLE_X300=ON/OFF
--
-- Configuring MPMD support...
--   Dependency ENABLE_LIBUHD = ON
--   Enabling MPMD support.
--   Override with -DENABLE_MPMD=ON/OFF
--
-- Configuring SIM support...
--   Dependency ENABLE_LIBUHD = ON
--   Dependency ENABLE_MPMD = ON
--   Dependency ENABLE_PYTHON_API = ON
--   Enabling SIM support.
--   Override with -DENABLE_SIM=ON/OFF
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
-- Configuring X400 support...
--   Dependency ENABLE_LIBUHD = ON
--   Dependency ENABLE_MPMD = ON
--   Enabling X400 support.
--   Override with -DENABLE_X400=ON/OFF
--
-- Configuring OctoClock support...
--   Dependency ENABLE_LIBUHD = ON
--   Enabling OctoClock support.
--   Override with -DENABLE_OCTOCLOCK=ON/OFF
--
-- Configuring DPDK support...
--   Dependency ENABLE_MPMD = ON
--   Dependency DPDK_FOUND = FALSE
--   Disabling DPDK support.
--   Override with -DENABLE_DPDK=ON/OFF
--
--
-- Configuring priority scheduling...
--   Priority scheduling supported through pthread_setschedparam.
--   Setting thread names is supported through pthread_setname_np.
--   Setting thread affinity is supported through windows SetThreadAffinityMask.
--
-- Configuring module loading...
--   Module loading supported through LoadLibrary.
--
-- Configuring atomics support...
--   Atomics support is built-in, no linking required.
--
-- Processing NI-RIO FPGA LVBITX Bitstreams...
--   Using x300.lvbitx_base for codegen
--   Using x310.lvbitx_base for codegen
--
-- USB support enabled via libusb.
--
-- Configuring interface address discovery...
--   Interface address discovery supported through SIO_GET_INTERFACE_LIST.
--
-- Loading build info.
CMake Deprecation Warning at cmake/Modules/CMakeRC.cmake:63
(cmake_minimum_required):
  Compatibility with CMake < 3.5 will be removed from a future version of
  CMake.

  Update the VERSION argument <min> value or use a ...<max> suffix to tell
  CMake that the project does not need compatibility with older versions.
Call Stack (most recent call first):
  lib/rc/CMakeLists.txt:7 (include)


--
-- Adding B2XX device test target
-- Adding X3x0 device test target
-- Adding E3XX device test target
-- Adding N3XX device test target
-- Adding E32x device test target
-- Adding X410 device test target
-- Adding X440 device test target
--
--
-- Configuring Manual support...
--   Dependency DOXYGEN_FOUND = YES
--   Enabling Manual support.
--   Override with -DENABLE_MANUAL=ON/OFF
--
-- Configuring API/Doxygen support...
--   Dependency DOXYGEN_FOUND = YES
--   Enabling API/Doxygen support.
--   Override with -DENABLE_DOXYGEN=ON/OFF
--
-- Found GZip: C:/msys64/usr/bin/gzip.exe
--
-- Compressed Man Pages enabled
--   Override with -DENABLE_MAN_PAGE_COMPRESSION=ON/OFF
--
-- Configuring Man Pages support...
--   Dependency NOT_WIN32 =
--   Dependency GZIP_FOUND = TRUE
--   Disabling Man Pages support.
--   Override with -DENABLE_MAN_PAGES=ON/OFF
-- Using Pybind11 from: C:/msys64/mingw64/include
--
-- Python checking for gevent module
-- Python checking for gevent module - "import gevent" failed (is it installed?)
--
-- Python checking for mprpc module
-- Python checking for mprpc module - "import mprpc" failed (is it installed?)
--
-- Python checking for pyudev module
-- Python checking for pyudev module - "import pyudev" failed (is it installed?)
--
-- Python checking for pyroute2 module
-- Python checking for pyroute2 module - "import pyroute2" failed (is
it installed?)
-- MPM unit test Python package prerequisites not met; skipping
--
--
-- Python checking for virtual environment
-- Python checking for virtual environment - "assert sys.prefix !=
sys.base_prefix" failed
-- Installing 'uhd' Python module to:
C:/msys64/mingw64/lib/python3.11/site-packages
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
--   * Python Module (Utils only)
--   * USB
--   * B100
--   * B200
--   * USRP1
--   * USRP2
--   * X300
--   * MPMD
--   * SIM
--   * N300
--   * N320
--   * E320
--   * E300
--   * X400
--   * OctoClock
--   * Manual
--   * API/Doxygen
--
-- ######################################################
-- # UHD disabled components
-- ######################################################
--   * DPDK
--   * Man Pages
--
-- ******************************************************
-- * You are building the UHD development master branch.
-- * For production code, we recommend our stable,
-- * releases or using the release branch (maint).
-- ******************************************************
-- Building version: 4.7.0.0-0-ga5ed1872
-- Using install prefix: C:/msys64/mingw64
-- Configuring done (3.7s)
-- Generating done (0.7s)
-- Build files have been written to: C:/msys64/home/chris/src/uhd/host/build

I'm also applying a patch to get it to build.  It was needed for
4.6.0.0 and I've had to make some tweaks.  None of the files touched
by the patch are part of the error, but I'll include it for
completeness.

Thanks in advance,

Chris

--00000000000052e626061c4453fa
Content-Type: application/octet-stream;
	name="0001-libraries_and_headers_with_no_set_thread_name.patch"
Content-Disposition: attachment;
	filename="0001-libraries_and_headers_with_no_set_thread_name.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_ly4hnfxo0>
X-Attachment-Id: f_ly4hnfxo0

ZGlmZiAtLWdpdCBhL2hvc3QvY21ha2UvTW9kdWxlcy9VSERCb29zdC5jbWFrZSBiL2hvc3QvY21h
a2UvTW9kdWxlcy9VSERCb29zdC5jbWFrZQppbmRleCA1MWFhMWUyMzguLjEwZDQzMDQzYyAxMDA2
NDQKLS0tIGEvaG9zdC9jbWFrZS9Nb2R1bGVzL1VIREJvb3N0LmNtYWtlCisrKyBiL2hvc3QvY21h
a2UvTW9kdWxlcy9VSERCb29zdC5jbWFrZQpAQCAtOTksNyArOTksNyBAQCBpZihNSU5HVykKICAg
ICBsaXN0KEZJTkQgVUhEX0JPT1NUX1JFUVVJUkVEX0NPTVBPTkVOVFMgInRocmVhZCIgVEhSRUFE
X05EWCkKICAgICBpZihOT1QgJHtUSFJFQURfTkRYfSBFUVVBTCAtMSkKICAgICAgICAgbGlzdChS
RU1PVkVfQVQgVUhEX0JPT1NUX1JFUVVJUkVEX0NPTVBPTkVOVFMgJHtUSFJFQURfTkRYfSkKLSAg
ICAgICAgbGlzdChJTlNFUlQgVUhEX0JPT1NUX1JFUVVJUkVEX0NPTVBPTkVOVFMgJHtUSFJFQURf
TkRYfSB0aHJlYWRfd2luMzIpCisgICAgICAgIGxpc3QoSU5TRVJUIFVIRF9CT09TVF9SRVFVSVJF
RF9DT01QT05FTlRTICR7VEhSRUFEX05EWH0gdGhyZWFkKQogICAgIGVuZGlmKCkKIGVuZGlmKCkK
IApkaWZmIC0tZ2l0IGEvaG9zdC9jbWFrZS9Nb2R1bGVzL1VIRFB5dGhvbi5jbWFrZSBiL2hvc3Qv
Y21ha2UvTW9kdWxlcy9VSERQeXRob24uY21ha2UKaW5kZXggZDhiMjAzYjkxLi5kMWZmYTJkZjIg
MTAwNjQ0Ci0tLSBhL2hvc3QvY21ha2UvTW9kdWxlcy9VSERQeXRob24uY21ha2UKKysrIGIvaG9z
dC9jbWFrZS9Nb2R1bGVzL1VIRFB5dGhvbi5jbWFrZQpAQCAtMjY5LDE1ICsyNjksMTQgQEAgbWFj
cm8oUFlUSE9OX0lOU1RBTExfTU9EVUxFKQogICAgICAgICBpZihOT1QgREVGSU5FRCBVSERfUFlU
SE9OX0RJUikKICAgICAgICAgICAgIGV4ZWN1dGVfcHJvY2VzcyhDT01NQU5EICR7UFlUSE9OX0VY
RUNVVEFCTEV9IC1jCiAgICAgICAgICAgICAgICAgIyBBdm9pZCB0aGUgcG9zaXhfbG9jYWwgaW5z
dGFsbCBzY2hlbWUKLSAgICAgICAgICAgICAgICAiaW1wb3J0IG9zLHN5c2NvbmZpZztcCi0gICAg
ICAgICAgICAgICAgaW5zdGFsbF9zY2hlbWUgPSAncG9zaXhfdXNlcic7XAotICAgICAgICAgICAg
ICAgIHBsYXRsaWIgPSBzeXNjb25maWcuZ2V0X3BhdGgoJ3BsYXRsaWInLCBzY2hlbWU9aW5zdGFs
bF9zY2hlbWUpO1wKLSAgICAgICAgICAgICAgICBwcmVmaXggPSBzeXNjb25maWcuZ2V0X2NvbmZp
Z192YXIoJ3ByZWZpeCcpO1wKLSAgICAgICAgICAgICAgICBwcmludChvcy5wYXRoLnJlbHBhdGgo
cGxhdGxpYiwgcHJlZml4KSk7IgorICAgICAgICAgICAgICAgICJpbXBvcnQgc3lzLG9zLHN5c2Nv
bmZpZztcCisgICAgICAgICAgICAgICAgcGxhdGxpYiA9IHN5c2NvbmZpZy5nZXRfcGF0aCgncGxh
dGxpYicpO1wKKyAgICAgICAgICAgICAgICBwcmludChvcy5wYXRoLnJlbHBhdGgocGxhdGxpYiwg
c3lzLnByZWZpeCkpOyIKICAgICAgICAgICAgICAgICBPVVRQVVRfVkFSSUFCTEUgVUhEX1BZVEhP
Tl9ESVIKICAgICAgICAgICAgICAgICBPVVRQVVRfU1RSSVBfVFJBSUxJTkdfV0hJVEVTUEFDRQog
ICAgICAgICAgICAgKQogICAgICAgICBlbmRpZihOT1QgREVGSU5FRCBVSERfUFlUSE9OX0RJUikK
KwogICAgICAgICBmaWxlKFRPX0NNQUtFX1BBVEggJHtVSERfUFlUSE9OX0RJUn0gVUhEX1BZVEhP
Tl9ESVIpCiAKICAgICAgICAgbWVzc2FnZSgKZGlmZiAtLWdpdCBhL2hvc3QvZXhhbXBsZXMvQ01h
a2VMaXN0cy50eHQgYi9ob3N0L2V4YW1wbGVzL0NNYWtlTGlzdHMudHh0CmluZGV4IDY5ZTg0Zjk1
ZC4uODFhYjk3YzE5IDEwMDY0NAotLS0gYS9ob3N0L2V4YW1wbGVzL0NNYWtlTGlzdHMudHh0Cisr
KyBiL2hvc3QvZXhhbXBsZXMvQ01ha2VMaXN0cy50eHQKQEAgLTU3LDExICs1NywxMSBAQCBmaW5k
X3BhY2thZ2UoQ3Vyc2VzKQogaWYoQ1VSU0VTX0ZPVU5EKQogICAgIGluY2x1ZGVfZGlyZWN0b3Jp
ZXMoJHtDVVJTRVNfSU5DTFVERV9ESVJ9KQogICAgIGFkZF9leGVjdXRhYmxlKHJ4X2FzY2lpX2Fy
dF9kZnQgcnhfYXNjaWlfYXJ0X2RmdC5jcHApCi0gICAgdGFyZ2V0X2xpbmtfbGlicmFyaWVzKHJ4
X2FzY2lpX2FydF9kZnQgdWhkICR7Q1VSU0VTX0xJQlJBUklFU30gJHtCb29zdF9MSUJSQVJJRVN9
KQorICAgIHRhcmdldF9saW5rX2xpYnJhcmllcyhyeF9hc2NpaV9hcnRfZGZ0IHVoZCAke0NVUlNF
U19MSUJSQVJJRVN9ICR7Qm9vc3RfTElCUkFSSUVTfSBuY3Vyc2VzdykKICAgICBVSERfSU5TVEFM
TChUQVJHRVRTIHJ4X2FzY2lpX2FydF9kZnQgUlVOVElNRSBERVNUSU5BVElPTiAke1BLR19MSUJf
RElSfS9leGFtcGxlcyBDT01QT05FTlQgZXhhbXBsZXMpCiAKICAgICBhZGRfZXhlY3V0YWJsZSh0
d2lucnhfZnJlcV9ob3BwaW5nIHR3aW5yeF9mcmVxX2hvcHBpbmcuY3BwKQotICAgIHRhcmdldF9s
aW5rX2xpYnJhcmllcyh0d2lucnhfZnJlcV9ob3BwaW5nIHVoZCAke0NVUlNFU19MSUJSQVJJRVN9
ICR7Qm9vc3RfTElCUkFSSUVTfSkKKyAgICB0YXJnZXRfbGlua19saWJyYXJpZXModHdpbnJ4X2Zy
ZXFfaG9wcGluZyB1aGQgJHtDVVJTRVNfTElCUkFSSUVTfSAke0Jvb3N0X0xJQlJBUklFU30gbmN1
cnNlc3cpICAKICAgICBVSERfSU5TVEFMTChUQVJHRVRTIHR3aW5yeF9mcmVxX2hvcHBpbmcgUlVO
VElNRSBERVNUSU5BVElPTiAke1BLR19MSUJfRElSfS9leGFtcGxlcyBDT01QT05FTlQgZXhhbXBs
ZXMpCiBlbmRpZihDVVJTRVNfRk9VTkQpCiAKZGlmZiAtLWdpdCBhL2hvc3QvZXhhbXBsZXMvbmV0
d29ya19yZWxheS5jcHAgYi9ob3N0L2V4YW1wbGVzL25ldHdvcmtfcmVsYXkuY3BwCmluZGV4IDkx
MDU4NDQ1Mi4uMTdmMmY1MjE0IDEwMDY0NAotLS0gYS9ob3N0L2V4YW1wbGVzL25ldHdvcmtfcmVs
YXkuY3BwCisrKyBiL2hvc3QvZXhhbXBsZXMvbmV0d29ya19yZWxheS5jcHAKQEAgLTcsNiArNyw3
IEBACiAKICNpbmNsdWRlIDx1aGQvdXRpbHMvc2FmZV9tYWluLmhwcD4KICNpbmNsdWRlIDx1aGQv
dXRpbHMvdGhyZWFkLmhwcD4KKyNpbmNsdWRlIDx3aW5zb2NrMi5oPgogI2luY2x1ZGUgPGJvb3N0
L2FzaW8uaHBwPgogI2luY2x1ZGUgPGJvb3N0L3Byb2dyYW1fb3B0aW9ucy5ocHA+CiAjaW5jbHVk
ZSA8Ym9vc3QvdGhyZWFkL2NvbmRpdGlvbi5ocHA+CmRpZmYgLS1naXQgYS9ob3N0L2V4YW1wbGVz
L3J4X2FzY2lpX2FydF9kZnQuY3BwIGIvaG9zdC9leGFtcGxlcy9yeF9hc2NpaV9hcnRfZGZ0LmNw
cAppbmRleCBiOGYzNTFkYzUuLjNiMzIwYmQ1NyAxMDA2NDQKLS0tIGEvaG9zdC9leGFtcGxlcy9y
eF9hc2NpaV9hcnRfZGZ0LmNwcAorKysgYi9ob3N0L2V4YW1wbGVzL3J4X2FzY2lpX2FydF9kZnQu
Y3BwCkBAIC05LDcgKzksNyBAQAogI2luY2x1ZGUgPHVoZC91c3JwL211bHRpX3VzcnAuaHBwPgog
I2luY2x1ZGUgPHVoZC91dGlscy9zYWZlX21haW4uaHBwPgogI2luY2x1ZGUgPHVoZC91dGlscy90
aHJlYWQuaHBwPgotI2luY2x1ZGUgPGN1cnNlcy5oPgorI2luY2x1ZGUgPG5jdXJzZXMvY3Vyc2Vz
Lmg+CiAjaW5jbHVkZSA8Ym9vc3QvZm9ybWF0LmhwcD4KICNpbmNsdWRlIDxib29zdC9wcm9ncmFt
X29wdGlvbnMuaHBwPgogI2luY2x1ZGUgPGNocm9ubz4KZGlmZiAtLWdpdCBhL2hvc3QvaW5jbHVk
ZS91aGQvdHJhbnNwb3J0L25pcmlvL3JwYy9ycGNfY2xpZW50LmhwcCBiL2hvc3QvaW5jbHVkZS91
aGQvdHJhbnNwb3J0L25pcmlvL3JwYy9ycGNfY2xpZW50LmhwcAppbmRleCA4NDRlMzZjNzYuLjgy
ZGNlNGYyZCAxMDA2NDQKLS0tIGEvaG9zdC9pbmNsdWRlL3VoZC90cmFuc3BvcnQvbmlyaW8vcnBj
L3JwY19jbGllbnQuaHBwCisrKyBiL2hvc3QvaW5jbHVkZS91aGQvdHJhbnNwb3J0L25pcmlvL3Jw
Yy9ycGNfY2xpZW50LmhwcApAQCAtMTAsNiArMTAsNyBAQAogI2luY2x1ZGUgInJwY19jb21tb24u
aHBwIgogI2luY2x1ZGUgPHVoZC91dGlscy9sb2cuaHBwPgogI2luY2x1ZGUgPHVoZC91dGlscy9u
b25jb3B5YWJsZS5ocHA+CisjaW5jbHVkZSA8d2luc29jazIuaD4KICNpbmNsdWRlIDxib29zdC9h
c2lvLmhwcD4KICNpbmNsdWRlIDxib29zdC9kYXRlX3RpbWUvcG9zaXhfdGltZS9wb3NpeF90aW1l
X3R5cGVzLmhwcD4KICNpbmNsdWRlIDxib29zdC90aHJlYWQuaHBwPgpkaWZmIC0tZ2l0IGEvaG9z
dC9pbmNsdWRlL3VoZC90cmFuc3BvcnQvdWRwX3NpbXBsZS5ocHAgYi9ob3N0L2luY2x1ZGUvdWhk
L3RyYW5zcG9ydC91ZHBfc2ltcGxlLmhwcAppbmRleCA5YzJlMmU5MmQuLjFkODQ2ZTU5ZCAxMDA2
NDQKLS0tIGEvaG9zdC9pbmNsdWRlL3VoZC90cmFuc3BvcnQvdWRwX3NpbXBsZS5ocHAKKysrIGIv
aG9zdC9pbmNsdWRlL3VoZC90cmFuc3BvcnQvdWRwX3NpbXBsZS5ocHAKQEAgLTEwLDYgKzEwLDcg
QEAKICNpbmNsdWRlIDx1aGQvY29uZmlnLmhwcD4KICNpbmNsdWRlIDx1aGQvdHlwZXMvc2VyaWFs
LmhwcD4KICNpbmNsdWRlIDx1aGQvdXRpbHMvbm9uY29weWFibGUuaHBwPgorI2luY2x1ZGUgPHdp
bnNvY2syLmg+CiAjaW5jbHVkZSA8Ym9vc3QvYXNpby9idWZmZXIuaHBwPgogI2luY2x1ZGUgPG1l
bW9yeT4KIApkaWZmIC0tZ2l0IGEvaG9zdC9saWIvZGVwcy9ycGNsaWIvbGliL3JwYy9jbGllbnQu
Y2MgYi9ob3N0L2xpYi9kZXBzL3JwY2xpYi9saWIvcnBjL2NsaWVudC5jYwppbmRleCAxYjM2NmU0
OTEuLjI0ZDkzZTM1MSAxMDA2NDQKLS0tIGEvaG9zdC9saWIvZGVwcy9ycGNsaWIvbGliL3JwYy9j
bGllbnQuY2MKKysrIGIvaG9zdC9saWIvZGVwcy9ycGNsaWIvbGliL3JwYy9jbGllbnQuY2MKQEAg
LTEwLDYgKzEwLDcgQEAKICNpbmNsdWRlIDx0aHJlYWQ+CiAjaW5jbHVkZSA8dW5vcmRlcmVkX21h
cD4KIAorI2luY2x1ZGUgPHdpbnNvY2syLmg+CiAjaW5jbHVkZSA8Ym9vc3QvYXNpby5ocHA+CiAj
aW5jbHVkZSA8Ym9vc3QvZm9ybWF0LmhwcD4KIApkaWZmIC0tZ2l0IGEvaG9zdC9saWIvZGVwcy9y
cGNsaWIvbGliL3JwYy9zZXJ2ZXIuY2MgYi9ob3N0L2xpYi9kZXBzL3JwY2xpYi9saWIvcnBjL3Nl
cnZlci5jYwppbmRleCA0ZmFjYjkzYTguLmE5YmEzNmQ3YiAxMDA2NDQKLS0tIGEvaG9zdC9saWIv
ZGVwcy9ycGNsaWIvbGliL3JwYy9zZXJ2ZXIuY2MKKysrIGIvaG9zdC9saWIvZGVwcy9ycGNsaWIv
bGliL3JwYy9zZXJ2ZXIuY2MKQEAgLTYsNiArNiw3IEBACiAjaW5jbHVkZSA8c3RkaW50Lmg+CiAj
aW5jbHVkZSA8dGhyZWFkPgogCisjaW5jbHVkZSA8d2luc29jazIuaD4KICNpbmNsdWRlIDxib29z
dC9hc2lvLmhwcD4KIAogI2luY2x1ZGUgInJwYy9kZXRhaWwvZGV2X3V0aWxzLmgiCmRpZmYgLS1n
aXQgYS9ob3N0L2xpYi9pbmNsdWRlL3VoZGxpYi90cmFuc3BvcnQvdWRwX2Jvb3N0X2FzaW9fbGlu
ay5ocHAgYi9ob3N0L2xpYi9pbmNsdWRlL3VoZGxpYi90cmFuc3BvcnQvdWRwX2Jvb3N0X2FzaW9f
bGluay5ocHAKaW5kZXggODk0NGFhOTk5Li41YjgyZDAyNjAgMTAwNjQ0Ci0tLSBhL2hvc3QvbGli
L2luY2x1ZGUvdWhkbGliL3RyYW5zcG9ydC91ZHBfYm9vc3RfYXNpb19saW5rLmhwcAorKysgYi9o
b3N0L2xpYi9pbmNsdWRlL3VoZGxpYi90cmFuc3BvcnQvdWRwX2Jvb3N0X2FzaW9fbGluay5ocHAK
QEAgLTEzLDYgKzEzLDcgQEAKICNpbmNsdWRlIDx1aGRsaWIvdHJhbnNwb3J0L2xpbmtfYmFzZS5o
cHA+CiAjaW5jbHVkZSA8dWhkbGliL3RyYW5zcG9ydC9saW5rcy5ocHA+CiAjaW5jbHVkZSA8dWhk
bGliL3RyYW5zcG9ydC91ZHBfY29tbW9uLmhwcD4KKyNpbmNsdWRlIDx3aW5zb2NrMi5oPgogI2lu
Y2x1ZGUgPGJvb3N0L2FzaW8uaHBwPgogI2luY2x1ZGUgPG1lbW9yeT4KICNpbmNsdWRlIDx2ZWN0
b3I+CmRpZmYgLS1naXQgYS9ob3N0L2xpYi9pbmNsdWRlL3VoZGxpYi90cmFuc3BvcnQvdWRwX2Nv
bW1vbi5ocHAgYi9ob3N0L2xpYi9pbmNsdWRlL3VoZGxpYi90cmFuc3BvcnQvdWRwX2NvbW1vbi5o
cHAKaW5kZXggOTYxNDZhNzAxLi5mNzA2ZmRjNWYgMTAwNjQ0Ci0tLSBhL2hvc3QvbGliL2luY2x1
ZGUvdWhkbGliL3RyYW5zcG9ydC91ZHBfY29tbW9uLmhwcAorKysgYi9ob3N0L2xpYi9pbmNsdWRl
L3VoZGxpYi90cmFuc3BvcnQvdWRwX2NvbW1vbi5ocHAKQEAgLTE1LDYgKzE1LDcgQEAKICNpbmNs
dWRlIDx1aGQvdXRpbHMvbG9nLmhwcD4KICNpbmNsdWRlIDx1aGRsaWIvdHJhbnNwb3J0L2xpbmtz
LmhwcD4KICNpbmNsdWRlIDx1aGRsaWIvdXRpbHMvbmFycm93LmhwcD4KKyNpbmNsdWRlIDx3aW5z
b2NrMi5oPgogI2luY2x1ZGUgPGJvb3N0L2FzaW8uaHBwPgogI2luY2x1ZGUgPGJvb3N0L2Zvcm1h
dC5ocHA+CiAjaW5jbHVkZSA8dGhyZWFkPgpkaWZmIC0tZ2l0IGEvaG9zdC9saWIvaW5jbHVkZS91
aGRsaWIvdXRpbHMvZWVwcm9tX3V0aWxzLmhwcCBiL2hvc3QvbGliL2luY2x1ZGUvdWhkbGliL3V0
aWxzL2VlcHJvbV91dGlscy5ocHAKaW5kZXggZDNiZTRjMDNjLi4zNGU0NjJlMmYgMTAwNjQ0Ci0t
LSBhL2hvc3QvbGliL2luY2x1ZGUvdWhkbGliL3V0aWxzL2VlcHJvbV91dGlscy5ocHAKKysrIGIv
aG9zdC9saWIvaW5jbHVkZS91aGRsaWIvdXRpbHMvZWVwcm9tX3V0aWxzLmhwcApAQCAtMTAsNiAr
MTAsNyBAQAogI2luY2x1ZGUgPHVoZC90eXBlcy9kaWN0LmhwcD4KICNpbmNsdWRlIDx1aGQvdHlw
ZXMvbWFjX2FkZHIuaHBwPgogI2luY2x1ZGUgPHVoZC91dGlscy9sb2cuaHBwPgorI2luY2x1ZGUg
PHdpbnNvY2syLmg+CiAjaW5jbHVkZSA8Ym9vc3QvYXNpby9pcC9hZGRyZXNzX3Y0LmhwcD4KICNp
bmNsdWRlIDxzdHJpbmc+CiAjaW5jbHVkZSA8dmVjdG9yPgpkaWZmIC0tZ2l0IGEvaG9zdC9saWIv
dHJhbnNwb3J0L0NNYWtlTGlzdHMudHh0IGIvaG9zdC9saWIvdHJhbnNwb3J0L0NNYWtlTGlzdHMu
dHh0CmluZGV4IGVmODg3YzU3Mi4uODQ4MzNiMDgzIDEwMDY0NAotLS0gYS9ob3N0L2xpYi90cmFu
c3BvcnQvQ01ha2VMaXN0cy50eHQKKysrIGIvaG9zdC9saWIvdHJhbnNwb3J0L0NNYWtlTGlzdHMu
dHh0CkBAIC05MCw3ICs5MCw3IEBAIGVuZGlmKCkKICNPbiB3aW5kb3dzLCB0aGUgYm9vc3QgYXNp
byBpbXBsZW1lbnRhdGlvbiB1c2VzIHRoZSB3aW5zb2NrMiBsaWJyYXJ5LgogI05vdGU6IHdlIGV4
Y2x1ZGUgdGhlIC5saWIgZXh0ZW5zaW9uIGZvciBjeWd3aW4gYW5kIG1pbmd3IHBsYXRmb3Jtcy4K
IGlmKFdJTjMyKQotICAgIExJQlVIRF9BUFBFTkRfTElCUyh3czJfMzIpCisgICAgTElCVUhEX0FQ
UEVORF9MSUJTKHdzMl8zMiB3c29jazMyKQogZW5kaWYoKQogCiAjYXRsYmFzZS5oIGlzIG5vdCBp
bmNsdWRlZCB3aXRoIHZpc3VhbCBzdHVkaW8gZXhwcmVzcwpkaWZmIC0tZ2l0IGEvaG9zdC9saWIv
dXNycC9jb3Jlcy94cG9ydF9hZGFwdGVyX2N0cmwuY3BwIGIvaG9zdC9saWIvdXNycC9jb3Jlcy94
cG9ydF9hZGFwdGVyX2N0cmwuY3BwCmluZGV4IDIyNGY1MWJhMi4uMTU4NTE1N2ZlIDEwMDY0NAot
LS0gYS9ob3N0L2xpYi91c3JwL2NvcmVzL3hwb3J0X2FkYXB0ZXJfY3RybC5jcHAKKysrIGIvaG9z
dC9saWIvdXNycC9jb3Jlcy94cG9ydF9hZGFwdGVyX2N0cmwuY3BwCkBAIC05LDYgKzksNyBAQAog
I2luY2x1ZGUgPHVoZGxpYi91c3JwL2NvcmVzL3hwb3J0X2FkYXB0ZXJfY3RybC5ocHA+CiAjaW5j
bHVkZSA8dW5vcmRlcmVkX21hcD4KICNpbmNsdWRlIDxib29zdC9hbGdvcml0aG0vc3RyaW5nL2Nh
c2VfY29udi5ocHA+CisjaW5jbHVkZSA8d2luc29jazIuaD4KICNpbmNsdWRlIDxib29zdC9hc2lv
LmhwcD4KICNpbmNsdWRlIDxjaHJvbm8+CiAjaW5jbHVkZSA8Y3N0ZGlvPgpkaWZmIC0tZ2l0IGEv
aG9zdC9saWIvdXNycC9tcG1kL21wbWRfZmluZC5jcHAgYi9ob3N0L2xpYi91c3JwL21wbWQvbXBt
ZF9maW5kLmNwcAppbmRleCA5N2U2ZmFiODAuLjg4MGMwMTUwNCAxMDA2NDQKLS0tIGEvaG9zdC9s
aWIvdXNycC9tcG1kL21wbWRfZmluZC5jcHAKKysrIGIvaG9zdC9saWIvdXNycC9tcG1kL21wbWRf
ZmluZC5jcHAKQEAgLTE1LDYgKzE1LDcgQEAKICNpbmNsdWRlIDx1aGRsaWIvdXRpbHMvcHJlZnMu
aHBwPgogI2luY2x1ZGUgPHVoZGxpYi91dGlscy9zZXJpYWxfbnVtYmVyLmhwcD4KICNpbmNsdWRl
IDxib29zdC9hbGdvcml0aG0vc3RyaW5nLmhwcD4KKyNpbmNsdWRlIDx3aW5zb2NrMi5oPgogI2lu
Y2x1ZGUgPGJvb3N0L2FzaW8uaHBwPgogI2luY2x1ZGUgPGZ1dHVyZT4KICNpZmRlZiBIQVZFX0RQ
REsKZGlmZiAtLWdpdCBhL2hvc3QvbGliL3VzcnAvdXNycDIvZGJvYXJkX2lmYWNlLmNwcCBiL2hv
c3QvbGliL3VzcnAvdXNycDIvZGJvYXJkX2lmYWNlLmNwcAppbmRleCAxNjkxMzliYTEuLmI5YmNj
ZGEwOSAxMDA2NDQKLS0tIGEvaG9zdC9saWIvdXNycC91c3JwMi9kYm9hcmRfaWZhY2UuY3BwCisr
KyBiL2hvc3QvbGliL3VzcnAvdXNycDIvZGJvYXJkX2lmYWNlLmNwcApAQCAtMTYsNiArMTYsNyBA
QAogI2luY2x1ZGUgPHVoZC91c3JwL2Rib2FyZF9pZmFjZS5ocHA+CiAjaW5jbHVkZSA8dWhkL3V0
aWxzL2FsZ29yaXRobS5ocHA+CiAjaW5jbHVkZSA8dWhkbGliL3VzcnAvY29yZXMvZ3Bpb19jb3Jl
XzIwMC5ocHA+CisjaW5jbHVkZSA8d2luc29jazIuaD4KICNpbmNsdWRlIDxib29zdC9hc2lvLmhw
cD4gLy9odG9ubCBhbmQgbnRvaGwKICNpbmNsdWRlIDxib29zdC9hc3NpZ24vbGlzdF9vZi5ocHA+
CiAjaW5jbHVkZSA8Y21hdGg+CmRpZmYgLS1naXQgYS9ob3N0L2xpYi91c3JwL3VzcnAyL2lvX2lt
cGwuY3BwIGIvaG9zdC9saWIvdXNycC91c3JwMi9pb19pbXBsLmNwcAppbmRleCBjNTg3ODdlM2Uu
LjgwYzRlNjNlYyAxMDA2NDQKLS0tIGEvaG9zdC9saWIvdXNycC91c3JwMi9pb19pbXBsLmNwcAor
KysgYi9ob3N0L2xpYi91c3JwL3VzcnAyL2lvX2ltcGwuY3BwCkBAIC0xOCw2ICsxOCw3IEBACiAj
aW5jbHVkZSA8dWhkL3V0aWxzL3RocmVhZC5ocHA+CiAjaW5jbHVkZSA8dWhkbGliL3VzcnAvY29t
bW9uL2FzeW5jX3BhY2tldF9oYW5kbGVyLmhwcD4KICNpbmNsdWRlIDx1aGRsaWIvdXNycC9jb21t
b24vdmFsaWRhdGVfc3ViZGV2X3NwZWMuaHBwPgorI2luY2x1ZGUgPHdpbnNvY2syLmg+CiAjaW5j
bHVkZSA8Ym9vc3QvYXNpby5ocHA+CiAjaW5jbHVkZSA8Ym9vc3QvZm9ybWF0LmhwcD4KICNpbmNs
dWRlIDxib29zdC90aHJlYWQvbXV0ZXguaHBwPgpkaWZmIC0tZ2l0IGEvaG9zdC9saWIvdXNycC91
c3JwMi91c3JwMl9maWZvX2N0cmwuY3BwIGIvaG9zdC9saWIvdXNycC91c3JwMi91c3JwMl9maWZv
X2N0cmwuY3BwCmluZGV4IGY2NzZjZTVkYS4uNDhkYjBkYWZhIDEwMDY0NAotLS0gYS9ob3N0L2xp
Yi91c3JwL3VzcnAyL3VzcnAyX2ZpZm9fY3RybC5jcHAKKysrIGIvaG9zdC9saWIvdXNycC91c3Jw
Mi91c3JwMl9maWZvX2N0cmwuY3BwCkBAIC0xMSw2ICsxMSw3IEBACiAjaW5jbHVkZSA8dWhkL3Ry
YW5zcG9ydC92cnRfaWZfcGFja2V0LmhwcD4KICNpbmNsdWRlIDx1aGQvdXRpbHMvbG9nLmhwcD4K
ICNpbmNsdWRlIDx1aGQvdXRpbHMvc2FmZV9jYWxsLmhwcD4KKyNpbmNsdWRlIDx3aW5zb2NrMi5o
PgogI2luY2x1ZGUgPGJvb3N0L2FzaW8uaHBwPiAvL2h0b25sCiAjaW5jbHVkZSA8bXV0ZXg+CiAK
ZGlmZiAtLWdpdCBhL2hvc3QvbGliL3VzcnAvdXNycDIvdXNycDJfaWZhY2UuY3BwIGIvaG9zdC9s
aWIvdXNycC91c3JwMi91c3JwMl9pZmFjZS5jcHAKaW5kZXggYzc5ZmZjY2FiLi41YWNiMjAyMmIg
MTAwNjQ0Ci0tLSBhL2hvc3QvbGliL3VzcnAvdXNycDIvdXNycDJfaWZhY2UuY3BwCisrKyBiL2hv
c3QvbGliL3VzcnAvdXNycDIvdXNycDJfaWZhY2UuY3BwCkBAIC0xNiw2ICsxNiw3IEBACiAjaW5j
bHVkZSA8dWhkL3V0aWxzL3BsYXRmb3JtLmhwcD4KICNpbmNsdWRlIDx1aGQvdXRpbHMvc2FmZV9j
YWxsLmhwcD4KICNpbmNsdWRlIDx1aGQvdXRpbHMvdGFza3MuaHBwPgorI2luY2x1ZGUgPHdpbnNv
Y2syLmg+CiAjaW5jbHVkZSA8Ym9vc3QvYXNpby5ocHA+IC8vdXNlZCBmb3IgaHRvbmwgYW5kIG50
b2hsCiAjaW5jbHVkZSA8Ym9vc3QvYXNzaWduL2xpc3Rfb2YuaHBwPgogI2luY2x1ZGUgPGJvb3N0
L2ZpbGVzeXN0ZW0uaHBwPgpkaWZmIC0tZ2l0IGEvaG9zdC9saWIvdXNycC91c3JwMi91c3JwMl9p
bXBsLmNwcCBiL2hvc3QvbGliL3VzcnAvdXNycDIvdXNycDJfaW1wbC5jcHAKaW5kZXggY2ZkODBh
YmZkLi4zNzgzNGI2OTYgMTAwNjQ0Ci0tLSBhL2hvc3QvbGliL3VzcnAvdXNycDIvdXNycDJfaW1w
bC5jcHAKKysrIGIvaG9zdC9saWIvdXNycC91c3JwMi91c3JwMl9pbXBsLmNwcApAQCAtMTUsNiAr
MTUsNyBAQAogI2luY2x1ZGUgPHVoZC91dGlscy9zYWZlX2NhbGwuaHBwPgogI2luY2x1ZGUgPHVo
ZC91dGlscy9zdGF0aWMuaHBwPgogI2luY2x1ZGUgPHVoZGxpYi91c3JwL2NvbW1vbi9hcHBseV9j
b3JyZWN0aW9ucy5ocHA+CisjaW5jbHVkZSA8d2luc29jazIuaD4KICNpbmNsdWRlIDxib29zdC9h
c2lvLmhwcD4KICNpbmNsdWRlIDxib29zdC9hc2lvL2lwL2FkZHJlc3NfdjQuaHBwPgogI2luY2x1
ZGUgPGJvb3N0L2Zvcm1hdC5ocHA+CmRpZmYgLS1naXQgYS9ob3N0L2xpYi91c3JwL3gzMDAveDMw
MF9ldGhfbWdyLmNwcCBiL2hvc3QvbGliL3VzcnAveDMwMC94MzAwX2V0aF9tZ3IuY3BwCmluZGV4
IDdkNDIzOWJiYi4uYTQ0MjBmYWM1IDEwMDY0NAotLS0gYS9ob3N0L2xpYi91c3JwL3gzMDAveDMw
MF9ldGhfbWdyLmNwcAorKysgYi9ob3N0L2xpYi91c3JwL3gzMDAveDMwMF9ldGhfbWdyLmNwcApA
QCAtMjksNiArMjksNyBAQAogIyAgICBpbmNsdWRlIDx1aGRsaWIvdHJhbnNwb3J0L2RwZGtfc2lt
cGxlLmhwcD4KICMgICAgaW5jbHVkZSA8dWhkbGliL3RyYW5zcG9ydC91ZHBfZHBka19saW5rLmhw
cD4KICNlbmRpZgorI2luY2x1ZGUgPHdpbnNvY2syLmg+CiAjaW5jbHVkZSA8Ym9vc3QvYXNpby5o
cHA+CiAjaW5jbHVkZSA8c3RyaW5nPgogCmRpZmYgLS1naXQgYS9ob3N0L2xpYi91c3JwX2Nsb2Nr
L29jdG9jbG9jay9vY3RvY2xvY2tfZWVwcm9tLmNwcCBiL2hvc3QvbGliL3VzcnBfY2xvY2svb2N0
b2Nsb2NrL29jdG9jbG9ja19lZXByb20uY3BwCmluZGV4IDkwMjNjNjYwNy4uZjQwNGYyMWE4IDEw
MDY0NAotLS0gYS9ob3N0L2xpYi91c3JwX2Nsb2NrL29jdG9jbG9jay9vY3RvY2xvY2tfZWVwcm9t
LmNwcAorKysgYi9ob3N0L2xpYi91c3JwX2Nsb2NrL29jdG9jbG9jay9vY3RvY2xvY2tfZWVwcm9t
LmNwcApAQCAtMTQsNiArMTQsNyBAQAogI2luY2x1ZGUgPHVoZC91c3JwL21ib2FyZF9lZXByb20u
aHBwPgogI2luY2x1ZGUgPHVoZC91c3JwX2Nsb2NrL29jdG9jbG9ja19lZXByb20uaHBwPgogI2lu
Y2x1ZGUgPHVoZC91dGlscy9ieXRlc3dhcC5ocHA+CisjaW5jbHVkZSA8d2luc29jay5oPgogI2lu
Y2x1ZGUgPGJvb3N0L2FzaW8uaHBwPgogCiB0eXBlZGVmIGJvb3N0Ojphc2lvOjppcDo6YWRkcmVz
c192NCBpcF92NDsKZGlmZiAtLWdpdCBhL2hvc3QvbGliL3VzcnBfY2xvY2svb2N0b2Nsb2NrL29j
dG9jbG9ja19pbXBsLmNwcCBiL2hvc3QvbGliL3VzcnBfY2xvY2svb2N0b2Nsb2NrL29jdG9jbG9j
a19pbXBsLmNwcAppbmRleCBiNDE4NWVkZWQuLmIwOTU2N2RlYSAxMDA2NDQKLS0tIGEvaG9zdC9s
aWIvdXNycF9jbG9jay9vY3RvY2xvY2svb2N0b2Nsb2NrX2ltcGwuY3BwCisrKyBiL2hvc3QvbGli
L3VzcnBfY2xvY2svb2N0b2Nsb2NrL29jdG9jbG9ja19pbXBsLmNwcApAQCAtMjAsNiArMjAsNyBA
QAogI2luY2x1ZGUgPHVoZC91dGlscy9wYXRocy5ocHA+CiAjaW5jbHVkZSA8dWhkL3V0aWxzL3N0
YXRpYy5ocHA+CiAjaW5jbHVkZSA8c3RkaW50Lmg+CisjaW5jbHVkZSA8d2luc29jazIuaD4KICNp
bmNsdWRlIDxib29zdC9hc2lvLmhwcD4KICNpbmNsdWRlIDxib29zdC9hc3NpZ24uaHBwPgogI2lu
Y2x1ZGUgPGJvb3N0L2ZpbGVzeXN0ZW0uaHBwPgpkaWZmIC0tZ2l0IGEvaG9zdC9saWIvdXNycF9j
bG9jay9vY3RvY2xvY2svb2N0b2Nsb2NrX3VhcnQuY3BwIGIvaG9zdC9saWIvdXNycF9jbG9jay9v
Y3RvY2xvY2svb2N0b2Nsb2NrX3VhcnQuY3BwCmluZGV4IDBhMGZhNGMxNC4uZWZiOTFhMTU2IDEw
MDY0NAotLS0gYS9ob3N0L2xpYi91c3JwX2Nsb2NrL29jdG9jbG9jay9vY3RvY2xvY2tfdWFydC5j
cHAKKysrIGIvaG9zdC9saWIvdXNycF9jbG9jay9vY3RvY2xvY2svb2N0b2Nsb2NrX3VhcnQuY3Bw
CkBAIC0xMyw2ICsxMyw3IEBACiAjaW5jbHVkZSA8c3RkaW50Lmg+CiAjaW5jbHVkZSA8c3RyaW5n
Lmg+CiAjaW5jbHVkZSA8Ym9vc3QvYWxnb3JpdGhtL3N0cmluZy5ocHA+CisjaW5jbHVkZSA8d2lu
c29jazIuaD4KICNpbmNsdWRlIDxib29zdC9hc2lvLmhwcD4KICNpbmNsdWRlIDxib29zdC9mb3Jt
YXQuaHBwPgogI2luY2x1ZGUgPGJvb3N0L3RocmVhZC90aHJlYWQuaHBwPgpkaWZmIC0tZ2l0IGEv
aG9zdC9saWIvdXRpbHMvcGF0aHNsaWIuY3BwIGIvaG9zdC9saWIvdXRpbHMvcGF0aHNsaWIuY3Bw
CmluZGV4IDc4NTQ3ODJjMC4uZDhlOGRiODViIDEwMDY0NAotLS0gYS9ob3N0L2xpYi91dGlscy9w
YXRoc2xpYi5jcHAKKysrIGIvaG9zdC9saWIvdXRpbHMvcGF0aHNsaWIuY3BwCkBAIC03LDcgKzcs
NyBAQAogI2luY2x1ZGUgPHVoZC9jb25maWcuaHBwPgogI2luY2x1ZGUgPHVoZGxpYi91dGlscy9w
YXRocy5ocHA+CiAKLSNpZmRlZiBCT09TVF9NU1ZDCisjaWYgZGVmaW5lZChCT09TVF9NU1ZDKSB8
fCBkZWZpbmVkKF9XSU42NCkgfHwgZGVmaW5lZChfV0lOMzIpCiAjICAgIGluY2x1ZGUgPHdpbmRv
d3MuaD4KICNlbGlmIGRlZmluZWQoX19PcGVuQlNEX18pCiAjICAgIGluY2x1ZGUgPGdsb2IuaD4K
QEAgLTIwLDcgKzIwLDcgQEAgc3RkOjpzdHJpbmcgdWhkOjpwYXRoX2V4cGFuZHZhcnMoY29uc3Qg
c3RkOjpzdHJpbmcmIHBhdGgpCiAgICAgaWYgKHBhdGguZW1wdHkoKSkgewogICAgICAgICByZXR1
cm4gcGF0aDsKICAgICB9Ci0jaWZkZWYgQk9PU1RfTVNWQworI2lmIGRlZmluZWQoQk9PU1RfTVNW
QykgfHwgZGVmaW5lZChfV0lONjQpIHx8IGRlZmluZWQoX1dJTjMyKQogICAgIGNvbnN0ZXhwciBz
aXplX3QgbWF4X3BhdGhsZW4gPSA0MDk2OwogICAgIGNoYXIgcmVzdWx0W21heF9wYXRobGVuXTsK
ICAgICBjb25zdCBzaXplX3QgcmVzdWx0X2xlbiA9CmRpZmYgLS1naXQgYS9ob3N0L2xpYi91dGls
cy90aHJlYWQuY3BwIGIvaG9zdC9saWIvdXRpbHMvdGhyZWFkLmNwcAppbmRleCBjNWUxYjUxNTYu
LjcxNDZmMmE5ZSAxMDA2NDQKLS0tIGEvaG9zdC9saWIvdXRpbHMvdGhyZWFkLmNwcAorKysgYi9o
b3N0L2xpYi91dGlscy90aHJlYWQuY3BwCkBAIC0xNzgsOSArMTc4LDkgQEAgdm9pZCB1aGQ6OnNl
dF90aHJlYWRfYWZmaW5pdHkoY29uc3Qgc3RkOjp2ZWN0b3I8c2l6ZV90PiYgY3B1X2FmZmluaXR5
X2xpc3QpCiAKIHZvaWQgdWhkOjpzZXRfdGhyZWFkX25hbWUoYm9vc3Q6OnRocmVhZCogdGhyZCwg
Y29uc3Qgc3RkOjpzdHJpbmcmIG5hbWUpCiB7Ci0jaWZkZWYgSEFWRV9QVEhSRUFEX1NFVE5BTUUK
LSAgICBwdGhyZWFkX3NldG5hbWVfbnAodGhyZC0+bmF0aXZlX2hhbmRsZSgpLCBuYW1lLnN1YnN0
cigwLCAxNikuY19zdHIoKSk7Ci0jZW5kaWYgLyogSEFWRV9QVEhSRUFEX1NFVE5BTUUgKi8KKy8v
I2lmZGVmIEhBVkVfUFRIUkVBRF9TRVROQU1FCisvLyAgICBwdGhyZWFkX3NldG5hbWVfbnAodGhy
ZC0+bmF0aXZlX2hhbmRsZSgpLCBuYW1lLnN1YnN0cigwLCAxNikuY19zdHIoKSk7CisvLyNlbmRp
ZiAvKiBIQVZFX1BUSFJFQURfU0VUTkFNRSAqLwogI2lmZGVmIEhBVkVfVEhSRUFEX1NFVE5BTUVf
RFVNTVkKICAgICAvLyBUaGVuIHdlIGNhbid0IHNldCB0aGUgdGhyZWFkIG5hbWUuIFRoaXMgZnVu
Y3Rpb24gbWF5IGdldCBjYWxsZWQKICAgICAvLyBiZWZvcmUgdGhlIGxvZ2dlciBzdGFydHMsIGFu
ZCB0aHVzIGNhbid0IGxvZyBhbnkgZXJyb3IgbWVzc2FnZXMuCkBAIC0xOTEsOSArMTkxLDkgQEAg
dm9pZCB1aGQ6OnNldF90aHJlYWRfbmFtZShib29zdDo6dGhyZWFkKiB0aHJkLCBjb25zdCBzdGQ6
OnN0cmluZyYgbmFtZSkKIAogdm9pZCB1aGQ6OnNldF90aHJlYWRfbmFtZShzdGQ6OnRocmVhZCog
dGhyZCwgY29uc3Qgc3RkOjpzdHJpbmcmIG5hbWUpCiB7Ci0jaWZkZWYgSEFWRV9QVEhSRUFEX1NF
VE5BTUUKLSAgICBwdGhyZWFkX3NldG5hbWVfbnAodGhyZC0+bmF0aXZlX2hhbmRsZSgpLCBuYW1l
LnN1YnN0cigwLCAxNikuY19zdHIoKSk7Ci0jZW5kaWYgLyogSEFWRV9QVEhSRUFEX1NFVE5BTUUg
Ki8KKy8vI2lmZGVmIEhBVkVfUFRIUkVBRF9TRVROQU1FCisvLyAgICBwdGhyZWFkX3NldG5hbWVf
bnAodGhyZC0+bmF0aXZlX2hhbmRsZSgpLCBuYW1lLnN1YnN0cigwLCAxNikuY19zdHIoKSk7Cisv
LyNlbmRpZiAvKiBIQVZFX1BUSFJFQURfU0VUTkFNRSAqLwogI2lmZGVmIEhBVkVfVEhSRUFEX1NF
VE5BTUVfRFVNTVkKICAgICAvLyBUaGVuIHdlIGNhbid0IHNldCB0aGUgdGhyZWFkIG5hbWUuIFRo
aXMgZnVuY3Rpb24gbWF5IGdldCBjYWxsZWQKICAgICAvLyBiZWZvcmUgdGhlIGxvZ2dlciBzdGFy
dHMsIGFuZCB0aHVzIGNhbid0IGxvZyBhbnkgZXJyb3IgbWVzc2FnZXMuCmRpZmYgLS1naXQgYS9o
b3N0L3V0aWxzL2xhdGVuY3kvQ01ha2VMaXN0cy50eHQgYi9ob3N0L3V0aWxzL2xhdGVuY3kvQ01h
a2VMaXN0cy50eHQKaW5kZXggZTRjZDRkMTcxLi4zNDBiNzZkYzEgMTAwNjQ0Ci0tLSBhL2hvc3Qv
dXRpbHMvbGF0ZW5jeS9DTWFrZUxpc3RzLnR4dAorKysgYi9ob3N0L3V0aWxzL2xhdGVuY3kvQ01h
a2VMaXN0cy50eHQKQEAgLTI2LDcgKzI2LDcgQEAgaWYoQ1VSU0VTX0ZPVU5EKQogICAgICAgICBn
ZXRfZmlsZW5hbWVfY29tcG9uZW50KG5hbWUgJHtzb3VyY2V9IE5BTUVfV0UpCiAgICAgICAgIGFk
ZF9leGVjdXRhYmxlKCR7bmFtZX0gJHtzb3VyY2V9ICR7bGF0ZW5jeV9saWJfcGF0aH0pCiAgICAg
CUxJQlVIRF9BUFBFTkRfU09VUkNFUygke25hbWV9KQotICAgICAgICB0YXJnZXRfbGlua19saWJy
YXJpZXMoJHtuYW1lfSB1aGQgJHtCb29zdF9MSUJSQVJJRVN9ICR7Q1VSU0VTX0xJQlJBUklFU30p
CisgICAgICAgIHRhcmdldF9saW5rX2xpYnJhcmllcygke25hbWV9IHVoZCAke0Jvb3N0X0xJQlJB
UklFU30gJHtDVVJTRVNfTElCUkFSSUVTfSBuY3Vyc2VzdykKICAgICAJVUhEX0lOU1RBTEwoVEFS
R0VUUyAke25hbWV9IFJVTlRJTUUgREVTVElOQVRJT04gJHtsYXRlbmN5X2NvbXBfZGVzdH0gQ09N
UE9ORU5UICR7bGF0ZW5jeV9jb21wX25hbWV9KQogICAgIGVuZGZvcmVhY2goc291cmNlKQogCmRp
ZmYgLS1naXQgYS9ob3N0L3V0aWxzL2xhdGVuY3kvaW5jbHVkZS9SZXNwb25kZXIuaHBwIGIvaG9z
dC91dGlscy9sYXRlbmN5L2luY2x1ZGUvUmVzcG9uZGVyLmhwcAppbmRleCA4MWI1ZTg0ZjkuLmE4
N2ZhMTdlOSAxMDA2NDQKLS0tIGEvaG9zdC91dGlscy9sYXRlbmN5L2luY2x1ZGUvUmVzcG9uZGVy
LmhwcAorKysgYi9ob3N0L3V0aWxzL2xhdGVuY3kvaW5jbHVkZS9SZXNwb25kZXIuaHBwCkBAIC05
LDcgKzksNyBAQAogI2RlZmluZSBSRVNQT05ERVJfSAogCiAjaW5jbHVkZSA8dWhkL3VzcnAvbXVs
dGlfdXNycC5ocHA+Ci0jaW5jbHVkZSA8Y3Vyc2VzLmg+CisjaW5jbHVkZSA8bmN1cnNlcy9jdXJz
ZXMuaD4KICNpbmNsdWRlIDxzdGRpbnQuaD4KICNpbmNsdWRlIDxjdGltZT4KICNpbmNsdWRlIDxt
YXA+Cg==
--00000000000052e626061c4453fa
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--00000000000052e626061c4453fa--
