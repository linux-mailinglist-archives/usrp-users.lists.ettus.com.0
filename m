Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E5C928673
	for <lists+usrp-users@lfdr.de>; Fri,  5 Jul 2024 12:10:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D2FF638516E
	for <lists+usrp-users@lfdr.de>; Fri,  5 Jul 2024 06:10:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1720174242; bh=XBejjjEq4YqaWK6jy+4gzHXOrKo+JIaiIgcly+OzM/U=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Crnk260zwsLP6+rQz0PFI9ARa+mvbxFQ6V7E2Nf+lov2gTeNAlrr3tjgygtd32zz1
	 3vyCz8/NpYDbH/sUjooR0EF6nsPPC9lVhzsZr33DAt+YEQMp/kIdZDOWQeFlCNzu8u
	 yKKg7LKC1gCrQnti2U8F2NpuNMjLw+T14FrA/kvA8q6y6L7UW6w0lBVL0+k5WaSCR+
	 5LyabJ42+4yMjcIDRT7LzfCtrxq7oCCVgN5CIzPO9hBwIZkGPf2S0Y7S6ELpZqAJCJ
	 coYLU1UupoypM0zA24jPj88RA9rVDkF8UWq2L6ELO7yzfRmTSmAH2bPDgVfKJ7VQ7l
	 hy10d1J8o5WVw==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 77ED5384A27
	for <usrp-users@lists.ettus.com>; Fri,  5 Jul 2024 06:10:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="qYKRhp73";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-58be2b8b6b2so1837990a12.3
        for <usrp-users@lists.ettus.com>; Fri, 05 Jul 2024 03:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1720174204; x=1720779004; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=622xFgzvHNxT2N2PzvACjAC/FT0jdBVS4HBoOP6szDk=;
        b=qYKRhp73Txil4PUeKLts1gYcUkzzGJfyLHet/6fcw+oih0L0YzUpo1C4oxJ9vM/pbu
         8nYlmLujI/ReCZSLn7lVNTEAOzaSb+53eFjO+PsNJUcK6GsOLnna+l8vgKtBC6mplh/D
         KjhZnI/iqH2gDOne4iJJSvlki3qTigu4Ah/HMJrTR7grElG7VuwFNp+pHc5+WipAxYhg
         D9gcd/uA2aRpYDBPfAWEFt5YQvcXr2YmFgH7MDS2/mLF/QetX8maUdW5iJ293QmqGZd5
         FOXbMwKCfGgHMMQ5HXY70S7+kV+75f66BqGS5nBiZZpBasGIdhUgxb+Z+JcP9lM3bBoQ
         MpKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720174204; x=1720779004;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=622xFgzvHNxT2N2PzvACjAC/FT0jdBVS4HBoOP6szDk=;
        b=b8kWY94QM1xNT411HfIAqQXIMkdabBnEuZeBO4jXbhQjAQjnCkadvcnASTlmBf7G9N
         4AmGYrZihmIF4b7qmyJi5zdbmKH5pW9pQjF7iRvSQN9Zj95rCcJZ6YEm7syGHOFnD6WJ
         jc9zBBzhmdFDR050uD82nNlkWmN0o+O3yuifT3j9uDAWwZOkiBm5uCvRTJA13lrDajYU
         XskyOvQKv21f2DEdDG5ojRLZZpvQ9ll8ZQLcYq1LN0C22svDXb2AMhKfzokDVcx9SCuw
         fpKOaR8l68kkOPiFuNR6OPc+cKp5OCVjDMRi6LahhnKoaPlc2IYxjuc8iUWZeeNepcsE
         Y5Kg==
X-Gm-Message-State: AOJu0YwRYj7XPCSCDejm7cY9s61idUBjhr9ojOqzeSdpM1ACK77+nDzU
	wcZfQPfe7P8O0apxgJagMPzqbJs5E2fxRB14MNSRZ9Q1f6oWV6MO0hMrUtruz7TAbh1VOtt2zB8
	FK9FJ5DPXsf6/oHEqq0SKcUEGTWC4H7PbvF96TK5w1ImDU1LLT0M=
X-Google-Smtp-Source: AGHT+IFZJapczX4dVSPbVMZ6ZjYSyjPINOVYl+2gctIzT8FbtZ3hDnAY82GR3ce0xVF3A6Eq3pVNb0J8ecWYwesMTW4=
X-Received: by 2002:a17:906:1282:b0:a6f:e66a:1d3f with SMTP id
 a640c23a62f3a-a77ba47935cmr296841866b.32.1720174203881; Fri, 05 Jul 2024
 03:10:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAHVeOW9OFSppSaKtL2MrFQuAE8Uvf1cvZimizcqYxipZr9-_zQ@mail.gmail.com>
 <CAHVeOW_2cbLrrPjen2-05yWj426Gfp6MJb+LLhj-efdR7AJbgg@mail.gmail.com>
In-Reply-To: <CAHVeOW_2cbLrrPjen2-05yWj426Gfp6MJb+LLhj-efdR7AJbgg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 5 Jul 2024 12:09:52 +0200
Message-ID: <CAFOi1A5T+Zs+f2tXhNtxa5ePuq3H28AimME7HfT8USN97krgDQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: LRHFQNTC65XKJ4MJSIDOUCYQVHB2NQKZ
X-Message-ID-Hash: LRHFQNTC65XKJ4MJSIDOUCYQVHB2NQKZ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Build error for UHD 4.7.0.0-0-ga5ed1872 on mingw64
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LRHFQNTC65XKJ4MJSIDOUCYQVHB2NQKZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2456527283587861743=="

--===============2456527283587861743==
Content-Type: multipart/alternative; boundary="0000000000005fe977061c7d4404"

--0000000000005fe977061c7d4404
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Chris,

thanks for reporting back! mingw is not one of the compilers we test with
(it's not so long ago that it didn't even support std::thread and couldn't
compile UHD at all).

But this fix is something we can add permanently to UHD. In fact,  I think
this include should come first in all the tests, but it seems not to be a
problem for most of them.

Cheers,
M

On Thu, Jul 4, 2024 at 10:26=E2=80=AFPM Chris Gorman <chrisjohgorman@gmail.=
com>
wrote:

> Hello all,
>
> Just a follow up email in case someone else tries to build a msys2
> package for libuhd and gets the same error.  The fix was to invert the
> include order and have <boost/test/unit_test.hpp> included before
> <uhdlib/utils//isatty.hpp>.
>
> diff --git a/host/tests/isatty_test.cpp b/host/tests/isatty_test.cpp
> index 99da27fd1..de1b4e110 100644
> --- a/host/tests/isatty_test.cpp
> +++ b/host/tests/isatty_test.cpp
> @@ -3,9 +3,8 @@
>  //
>  // SPDX-License-Identifier: GPL-3.0-or-later
>  //
> -
> -#include <uhdlib/utils/isatty.hpp>
>  #include <boost/test/unit_test.hpp>
> +#include <uhdlib/utils/isatty.hpp>
>  #include <cstdio>
>  #include <iostream>
>
> I also ran into a linker error and fixed it by inverting the order in
> which two libraries occurred on the command line.
>
> diff --git a/host/tests/CMakeLists.txt b/host/tests/CMakeLists.txt
> index bac599811..682ce01c2 100644
> --- a/host/tests/CMakeLists.txt
> +++ b/host/tests/CMakeLists.txt
> @@ -97,7 +97,7 @@ include_directories("${CMAKE_CURRENT_SOURCE_DIR}/common=
")
>  foreach(test_source ${test_sources})
>      get_filename_component(test_name ${test_source} NAME_WE)
>      add_executable(${test_name} ${test_source})
> -    target_link_libraries(${test_name} uhd uhd_test ${Boost_LIBRARIES})
> +    target_link_libraries(${test_name} uhd_test uhd ${Boost_LIBRARIES})
>      UHD_ADD_TEST(${test_name} ${test_name})
>      UHD_INSTALL(TARGETS ${test_name} RUNTIME DESTINATION
> ${PKG_LIB_DIR}/tests COMPONENT tests)
>  endforeach(test_source)
> @@ -106,7 +106,7 @@ endforeach(test_source)
>  foreach(benchmark_source ${benchmark_sources})
>      get_filename_component(benchmark_name ${benchmark_source} NAME_WE)
>      add_executable(${benchmark_name} ${benchmark_source})
> -    target_link_libraries(${benchmark_name} uhd uhd_test
> ${Boost_LIBRARIES})
> +    target_link_libraries(${benchmark_name} uhd_test uhd
> ${Boost_LIBRARIES})
>      UHD_INSTALL(TARGETS ${benchmark_name} RUNTIME DESTINATION
> ${PKG_LIB_DIR}/tests COMPONENT tests)
>  endforeach(benchmark_source)
>
> Thanks for your time.
>
> Chris
>
> On Tue, Jul 2, 2024 at 10:13=E2=80=AFAM Chris Gorman <chrisjohgorman@gmai=
l.com>
> wrote:
> >
> > Hello USRP users,
> >
> > I'm trying to update my build from 4.6.0.0 to 4.7.0.0 for UHD on
> > msys2/mingw64.  During the build I get the following error...
> >
> > $ C:\msys64\mingw64\bin\c++.exe
> > -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW
> > -DBOOST_ASIO_DISABLE_STD_STRING_VIEW -DBOOST_ATOMIC_DYN_LINK
> > -DBOOST_ATOMIC_NO_LIB -DBOOST_CHRONO_DYN_LINK -DBOOST_CHRONO_NO_LIB
> > -DBOOST_DATE_TIME_DYN_LINK -DBOOST_DATE_TIME_NO_LIB
> > -DBOOST_ERROR_CODE_HEADER_ONLY -DBOOST_FILESYSTEM_DYN_LINK
> > -DBOOST_FILESYSTEM_NO_LIB -DBOOST_PROGRAM_OPTIONS_DYN_LINK
> > -DBOOST_PROGRAM_OPTIONS_NO_LIB -DBOOST_SERIALIZATION_DYN_LINK
> > -DBOOST_SERIALIZATION_NO_LIB -DBOOST_SYSTEM_DYN_LINK
> > -DBOOST_SYSTEM_NO_LIB -DBOOST_TEST_DYN_LINK -DBOOST_TEST_MAIN
> > -DBOOST_THREAD_DYN_LINK -DBOOST_THREAD_NO_LIB
> > -DBOOST_UNIT_TEST_FRAMEWORK_DYN_LINK
> > -DBOOST_UNIT_TEST_FRAMEWORK_NO_LIB -DHAVE_CONFIG_H -DNOMINMAX
> > -DUHD_LOG_CONSOLE_COLOR -DUHD_LOG_CONSOLE_LEVEL=3D2
> > -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_MIN_LEVEL=3D1 -D_WIN32_WINNT=3D0x050=
1
> > -IC:/msys64/home/chris/src/uhd/host/build/include
> > -IC:/msys64/home/chris/src/uhd/host/include
> > -IC:/msys64/home/chris/src/uhd/host/lib/include
> > -IC:/msys64/home/chris/src/uhd/host/build/lib/include
> > -IC:/msys64/home/chris/src/uhd/host/tests/common
> > -IC:/msys64/home/chris/src/uhd/host/build/lib/rfnoc
> > -IC:/msys64/home/chris/src/uhd/host/lib/rfnoc
> > -IC:/msys64/home/chris/src/uhd/host/build/lib/ic_reg_maps
> > -IC:/msys64/home/chris/src/uhd/host/lib/deps/rpclib/include
> > -IC:/msys64/home/chris/src/uhd/host/lib/deps/flatbuffers/include
> > -IC:/msys64/home/chris/src/uhd/host/build/_cmrc/include -O3 -DNDEBUG
> > -std=3Dgnu++14   -Wall -Wextra -Wsign-compare -MD -MT
> > tests/CMakeFiles/isatty_test.dir/isatty_test.cpp.obj -MF
> > tests\CMakeFiles\isatty_test.dir\isatty_test.cpp.obj.d -o
> > tests/CMakeFiles/isatty_test.dir/isatty_test.cpp.obj -c
> > C:/msys64/home/chris/src/uhd/host/tests/isatty_test.cpp
> > In file included from
> > C:/msys64/mingw64/include/boost/assert/source_location.hpp:15,
> >                  from
> C:/msys64/mingw64/include/boost/exception/exception.hpp:9,
> >                  from
> C:/msys64/mingw64/include/boost/throw_exception.hpp:21,
> >                  from
> > C:/msys64/mingw64/include/boost/smart_ptr/detail/shared_count.hpp:31,
> >                  from
> > C:/msys64/mingw64/include/boost/smart_ptr/shared_ptr.hpp:18,
> >                  from C:/msys64/mingw64/include/boost/shared_ptr.hpp:17=
,
> >                  from
> > C:/msys64/mingw64/include/boost/test/tools/assertion_result.hpp:21,
> >                  from
> > C:/msys64/mingw64/include/boost/test/tools/old/impl.hpp:20,
> >                  from
> C:/msys64/mingw64/include/boost/test/test_tools.hpp:46,
> >                  from
> C:/msys64/mingw64/include/boost/test/unit_test.hpp:18,
> >                  from
> C:/msys64/home/chris/src/uhd/host/tests/isatty_test.cpp:8:
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:78:11: error: 'memchr'
> > has not been declared in '::'
> >    78 |   using ::memchr;
> >       |           ^~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:79:11: error: 'memcmp'
> > has not been declared in '::'
> >    79 |   using ::memcmp;
> >       |           ^~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:82:11: error: 'memset'
> > has not been declared in '::'
> >    82 |   using ::memset;
> >       |           ^~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:83:11: error: 'strcat'
> > has not been declared in '::'
> >    83 |   using ::strcat;
> >       |           ^~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:84:11: error: 'strcmp'
> > has not been declared in '::'
> >    84 |   using ::strcmp;
> >       |           ^~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:85:11: error: 'strcoll'
> > has not been declared in '::'
> >    85 |   using ::strcoll;
> >       |           ^~~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:86:11: error: 'strcpy'
> > has not been declared in '::'
> >    86 |   using ::strcpy;
> >       |           ^~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:87:11: error: 'strcspn'
> > has not been declared in '::'
> >    87 |   using ::strcspn;
> >       |           ^~~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:88:11: error: 'strerror'
> > has not been declared in '::'
> >    88 |   using ::strerror;
> >       |           ^~~~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:89:11: error: 'strlen'
> > has not been declared in '::'
> >    89 |   using ::strlen;
> >       |           ^~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:90:11: error: 'strncat'
> > has not been declared in '::'
> >    90 |   using ::strncat;
> >       |           ^~~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:91:11: error: 'strncmp'
> > has not been declared in '::'
> >    91 |   using ::strncmp;
> >       |           ^~~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:92:11: error: 'strncpy'
> > has not been declared in '::'
> >    92 |   using ::strncpy;
> >       |           ^~~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:93:11: error: 'strspn'
> > has not been declared in '::'
> >    93 |   using ::strspn;
> >       |           ^~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:95:11: error: 'strtok'
> > has not been declared in '::'
> >    95 |   using ::strtok;
> >       |           ^~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:97:11: error: 'strxfrm'
> > has not been declared in '::'
> >    97 |   using ::strxfrm;
> >       |           ^~~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:98:11: error: 'strchr'
> > has not been declared in '::'
> >    98 |   using ::strchr;
> >       |           ^~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:99:11: error: 'strpbrk'
> > has not been declared in '::'
> >    99 |   using ::strpbrk;
> >       |           ^~~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:100:11: error: 'strrchr'
> > has not been declared in '::'
> >   100 |   using ::strrchr;
> >       |           ^~~~~~~
> > C:/msys64/mingw64/include/c++/14.1.0/cstring:101:11: error: 'strstr'
> > has not been declared in '::'
> >   101 |   using ::strstr;
> >       |           ^~~~~~
> > C:/msys64/mingw64/include/boost/assert/source_location.hpp: In
> > function 'bool boost::operator=3D=3D(const source_location&, const
> > source_location&)':
> > C:/msys64/mingw64/include/boost/assert/source_location.hpp:126:21:
> > error: 'strcmp' is not a member of 'std'; did you mean 'strchr'?
> >   126 |         return std::strcmp( s1.file_, s2.file_ ) =3D=3D 0 &&
> > std::strcmp( s1.function_, s2.function_ ) =3D=3D 0 && s1.line_ =3D=3D s=
2.line_
> > && s1.column_ =3D=3D s2.column_;
> >       |                     ^~~~~~
> >       |                     strchr
> > C:/msys64/mingw64/include/boost/assert/source_location.hpp:126:63:
> > error: 'strcmp' is not a member of 'std'; did you mean 'strchr'?
> >   126 |         return std::strcmp( s1.file_, s2.file_ ) =3D=3D 0 &&
> > std::strcmp( s1.function_, s2.function_ ) =3D=3D 0 && s1.line_ =3D=3D s=
2.line_
> > && s1.column_ =3D=3D s2.column_;
> >       |
>  ^~~~~~
> >       |
>  strchr
> > In file included from
> C:/msys64/mingw64/include/boost/mpl/for_each.hpp:29,
> >                  from
> > C:/msys64/mingw64/include/boost/test/tree/test_case_template.hpp:28,
> >                  from
> > C:/msys64/mingw64/include/boost/test/unit_test_suite.hpp:19,
> >                  from
> C:/msys64/mingw64/include/boost/test/unit_test.hpp:19:
> > C:/msys64/mingw64/include/boost/utility/value_init.hpp: In constructor
> > 'boost::detail::zero_init::zero_init(void*, std::size_t)':
> > C:/msys64/mingw64/include/boost/utility/value_init.hpp:73:12: error:
> > 'memset' is not a member of 'std'; did you mean 'wmemset'?
> >    73 |       std::memset( p, 0, n );
> >       |            ^~~~~~
> >       |            wmemset
> >
> > It looks like I'm including something I shouldn't, but I don't know wha=
t.
> >
> > My cmake build log is ...
> >
> > $ cmake -DCMAKE_INSTALL_PREFIX=3Dc:/msys64/mingw64 -DENABLE_PYTHON_API=
=3DON
> ..
> > --
> > -- Configuring the Python interpreter...
> > -- Manually determining build Python version...
> > -- Python interpreter: C:/msys64/mingw64/bin/python3.11.exe Version:
> 3.11.9
> > -- Override with: -DPYTHON_EXECUTABLE=3D<path-to-python>
> > -- Manually determining runtime Python version...
> > -- Python runtime interpreter: C:/msys64/mingw64/bin/python3.11.exe
> > Version: 3.11.9
> > -- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D<path-to-python>
> > -- Finding Python Libraries...
> > CMake Warning (dev) at cmake/Modules/UHDPython.cmake:313 (find_package)=
:
> >   Policy CMP0148 is not set: The FindPythonInterp and FindPythonLibs
> modules
> >   are removed.  Run "cmake --help-policy CMP0148" for policy details.
> Use
> >   the cmake_policy command to set the policy and suppress this warning.
> >
> > Call Stack (most recent call first):
> >   cmake/Modules/UHDVersion.cmake:9 (include)
> >   cmake/Modules/UHDPackage.cmake:9 (include)
> >   CMakeLists.txt:107 (include)
> > This warning is for project developers.  Use -Wno-dev to suppress it.
> >
> > -- Python Libraries: C:/msys64/mingw64/lib/libpython3.11.dll.a
> > -- Python include directories: C:/msys64/mingw64/include/python3.11
> > -- pybind11::lto disabled (problems with undefined symbols for MinGW fo=
r
> now)
> > -- pybind11::thin_lto disabled (problems with undefined symbols for
> > MinGW for now)
> > -- Operating on master branch.
> > -- Using UHD Images Directory: C:\msys64\mingw64\share\uhd\images
> > -- Build type not specified: defaulting to release.
> > --
> > -- Configuring Boost C++ Libraries...
> > --
> > -- Checking for Boost version 1.65 or greater
> > --   Looking for required Boost components...
> > --   Enabling Boost Error Code Header Only
> > --     Disabling boost::asio use of std::string_view
> > --   Boost version: 1.85.0
> > --   Boost include directories: C:/msys64/mingw64/include
> > --   Boost library directories: C:/msys64/mingw64/lib
> > --   Boost libraries:
> >
> Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_options;B=
oost::serialization;Boost::thread;Boost::unit_test_framework;Boost::system
> > -- Looking for Boost version 1.65 or greater - found
> > --
> > -- Python checking for compatible Python version
> > -- Python checking for compatible Python version - 3.11.9 satisfies
> > minimum required version 3.7
> > --
> > -- Python checking for Mako templates module
> > -- Python checking for Mako templates module - 1.3.5 satisfies minimum
> > required version 0.4.2
> > --
> > -- Python checking for requests module
> > -- Python checking for requests module - 2.32.2 satisfies minimum
> > required version 2.0
> > --
> > -- Python checking for numpy module
> > -- Python checking for numpy module - 1.26.4 satisfies minimum
> > required version 1.11
> > --
> > -- Python checking for ruamel.yaml module
> > -- Python checking for ruamel.yaml module - 0.18.6 satisfies minimum
> > required version 0.15
> > --
> > -- Configuring LibUHD support...
> > --   Dependency Boost_FOUND =3D TRUE
> > --   Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE
> > --   Enabling LibUHD support.
> > --   Override with -DENABLE_LIBUHD=3DON/OFF
> > --
> > -- Configuring LibUHD - C API support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Enabling LibUHD - C API support.
> > --   Override with -DENABLE_C_API=3DON/OFF
> > --
> > -- Configuring LibUHD - Python API support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Dependency HAVE_PYTHON_MODULE_NUMPY =3D TRUE
> > --   Dependency HAVE_PYTHON_LIBS =3D TRUE
> > --   Enabling LibUHD - Python API support.
> > --   Override with -DENABLE_PYTHON_API=3DON/OFF
> > --
> > -- Configuring Examples support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Enabling Examples support.
> > --   Override with -DENABLE_EXAMPLES=3DON/OFF
> > --
> > -- Configuring Utils support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Enabling Utils support.
> > --   Override with -DENABLE_UTILS=3DON/OFF
> > --
> > -- Configuring Tests support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Enabling Tests support.
> > --   Override with -DENABLE_TESTS=3DON/OFF
> > --
> > -- Configuring Python Module (Utils only) support...
> > --   Dependency HAVE_PYTHON_MODULE_NUMPY =3D TRUE
> > --   Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE
> > --   Dependency HAVE_PYTHON_MODULE_YAML =3D TRUE
> > --   Enabling Python Module (Utils only) support.
> > --   Override with -DENABLE_PYMOD_UTILS=3DON/OFF
> > --
> > CMake Warning (dev) at
> >
> C:/msys64/mingw64/share/cmake/Modules/FindPackageHandleStandardArgs.cmake=
:447
> > (message):
> >   `find_package()` specify a version range but the module DPDK does not
> >   support this capability.  Only the lower endpoint of the range will b=
e
> >   used.
> > Call Stack (most recent call first):
> >   cmake/Modules/FindDPDK.cmake:86 (find_package_handle_standard_args)
> >   lib/CMakeLists.txt:63 (find_package)
> > This warning is for project developers.  Use -Wno-dev to suppress it.
> >
> > -- Could NOT find DPDK (missing: DPDK_INCLUDE_DIRS DPDK_LIBRARIES)
> > (Required is at least version "18.11")
> > --
> > -- Configuring USB support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Dependency LIBUSB_FOUND =3D TRUE
> > --   Enabling USB support.
> > --   Override with -DENABLE_USB=3DON/OFF
> > --
> > -- Configuring B100 support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Dependency ENABLE_USB =3D ON
> > --   Enabling B100 support.
> > --   Override with -DENABLE_B100=3DON/OFF
> > --
> > -- Configuring B200 support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Dependency ENABLE_USB =3D ON
> > --   Enabling B200 support.
> > --   Override with -DENABLE_B200=3DON/OFF
> > --
> > -- Configuring USRP1 support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Dependency ENABLE_USB =3D ON
> > --   Enabling USRP1 support.
> > --   Override with -DENABLE_USRP1=3DON/OFF
> > --
> > -- Configuring USRP2 support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Enabling USRP2 support.
> > --   Override with -DENABLE_USRP2=3DON/OFF
> > --
> > -- Configuring X300 support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Enabling X300 support.
> > --   Override with -DENABLE_X300=3DON/OFF
> > --
> > -- Configuring MPMD support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Enabling MPMD support.
> > --   Override with -DENABLE_MPMD=3DON/OFF
> > --
> > -- Configuring SIM support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Dependency ENABLE_MPMD =3D ON
> > --   Dependency ENABLE_PYTHON_API =3D ON
> > --   Enabling SIM support.
> > --   Override with -DENABLE_SIM=3DON/OFF
> > --
> > -- Configuring N300 support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Dependency ENABLE_MPMD =3D ON
> > --   Enabling N300 support.
> > --   Override with -DENABLE_N300=3DON/OFF
> > --
> > -- Configuring N320 support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Dependency ENABLE_MPMD =3D ON
> > --   Enabling N320 support.
> > --   Override with -DENABLE_N320=3DON/OFF
> > --
> > -- Configuring E320 support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Dependency ENABLE_MPMD =3D ON
> > --   Enabling E320 support.
> > --   Override with -DENABLE_E320=3DON/OFF
> > --
> > -- Configuring E300 support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Dependency ENABLE_MPMD =3D ON
> > --   Enabling E300 support.
> > --   Override with -DENABLE_E300=3DON/OFF
> > --
> > -- Configuring X400 support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Dependency ENABLE_MPMD =3D ON
> > --   Enabling X400 support.
> > --   Override with -DENABLE_X400=3DON/OFF
> > --
> > -- Configuring OctoClock support...
> > --   Dependency ENABLE_LIBUHD =3D ON
> > --   Enabling OctoClock support.
> > --   Override with -DENABLE_OCTOCLOCK=3DON/OFF
> > --
> > -- Configuring DPDK support...
> > --   Dependency ENABLE_MPMD =3D ON
> > --   Dependency DPDK_FOUND =3D FALSE
> > --   Disabling DPDK support.
> > --   Override with -DENABLE_DPDK=3DON/OFF
> > --
> > --
> > -- Configuring priority scheduling...
> > --   Priority scheduling supported through pthread_setschedparam.
> > --   Setting thread names is supported through pthread_setname_np.
> > --   Setting thread affinity is supported through windows
> SetThreadAffinityMask.
> > --
> > -- Configuring module loading...
> > --   Module loading supported through LoadLibrary.
> > --
> > -- Configuring atomics support...
> > --   Atomics support is built-in, no linking required.
> > --
> > -- Processing NI-RIO FPGA LVBITX Bitstreams...
> > --   Using x300.lvbitx_base for codegen
> > --   Using x310.lvbitx_base for codegen
> > --
> > -- USB support enabled via libusb.
> > --
> > -- Configuring interface address discovery...
> > --   Interface address discovery supported through
> SIO_GET_INTERFACE_LIST.
> > --
> > -- Loading build info.
> > CMake Deprecation Warning at cmake/Modules/CMakeRC.cmake:63
> > (cmake_minimum_required):
> >   Compatibility with CMake < 3.5 will be removed from a future version =
of
> >   CMake.
> >
> >   Update the VERSION argument <min> value or use a ...<max> suffix to
> tell
> >   CMake that the project does not need compatibility with older version=
s.
> > Call Stack (most recent call first):
> >   lib/rc/CMakeLists.txt:7 (include)
> >
> >
> > --
> > -- Adding B2XX device test target
> > -- Adding X3x0 device test target
> > -- Adding E3XX device test target
> > -- Adding N3XX device test target
> > -- Adding E32x device test target
> > -- Adding X410 device test target
> > -- Adding X440 device test target
> > --
> > --
> > -- Configuring Manual support...
> > --   Dependency DOXYGEN_FOUND =3D YES
> > --   Enabling Manual support.
> > --   Override with -DENABLE_MANUAL=3DON/OFF
> > --
> > -- Configuring API/Doxygen support...
> > --   Dependency DOXYGEN_FOUND =3D YES
> > --   Enabling API/Doxygen support.
> > --   Override with -DENABLE_DOXYGEN=3DON/OFF
> > --
> > -- Found GZip: C:/msys64/usr/bin/gzip.exe
> > --
> > -- Compressed Man Pages enabled
> > --   Override with -DENABLE_MAN_PAGE_COMPRESSION=3DON/OFF
> > --
> > -- Configuring Man Pages support...
> > --   Dependency NOT_WIN32 =3D
> > --   Dependency GZIP_FOUND =3D TRUE
> > --   Disabling Man Pages support.
> > --   Override with -DENABLE_MAN_PAGES=3DON/OFF
> > -- Using Pybind11 from: C:/msys64/mingw64/include
> > --
> > -- Python checking for gevent module
> > -- Python checking for gevent module - "import gevent" failed (is it
> installed?)
> > --
> > -- Python checking for mprpc module
> > -- Python checking for mprpc module - "import mprpc" failed (is it
> installed?)
> > --
> > -- Python checking for pyudev module
> > -- Python checking for pyudev module - "import pyudev" failed (is it
> installed?)
> > --
> > -- Python checking for pyroute2 module
> > -- Python checking for pyroute2 module - "import pyroute2" failed (is
> > it installed?)
> > -- MPM unit test Python package prerequisites not met; skipping
> > --
> > --
> > -- Python checking for virtual environment
> > -- Python checking for virtual environment - "assert sys.prefix !=3D
> > sys.base_prefix" failed
> > -- Installing 'uhd' Python module to:
> > C:/msys64/mingw64/lib/python3.11/site-packages
> > --
> > -- ######################################################
> > -- # UHD enabled components
> > -- ######################################################
> > --   * LibUHD
> > --   * LibUHD - C API
> > --   * LibUHD - Python API
> > --   * Examples
> > --   * Utils
> > --   * Tests
> > --   * Python Module (Utils only)
> > --   * USB
> > --   * B100
> > --   * B200
> > --   * USRP1
> > --   * USRP2
> > --   * X300
> > --   * MPMD
> > --   * SIM
> > --   * N300
> > --   * N320
> > --   * E320
> > --   * E300
> > --   * X400
> > --   * OctoClock
> > --   * Manual
> > --   * API/Doxygen
> > --
> > -- ######################################################
> > -- # UHD disabled components
> > -- ######################################################
> > --   * DPDK
> > --   * Man Pages
> > --
> > -- ******************************************************
> > -- * You are building the UHD development master branch.
> > -- * For production code, we recommend our stable,
> > -- * releases or using the release branch (maint).
> > -- ******************************************************
> > -- Building version: 4.7.0.0-0-ga5ed1872
> > -- Using install prefix: C:/msys64/mingw64
> > -- Configuring done (3.7s)
> > -- Generating done (0.7s)
> > -- Build files have been written to:
> C:/msys64/home/chris/src/uhd/host/build
> >
> > I'm also applying a patch to get it to build.  It was needed for
> > 4.6.0.0 and I've had to make some tweaks.  None of the files touched
> > by the patch are part of the error, but I'll include it for
> > completeness.
> >
> > Thanks in advance,
> >
> > Chris
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005fe977061c7d4404
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Chris,</div><div><br></div><div>thanks for reporti=
ng back! mingw is not one of the compilers we test with (it&#39;s not so lo=
ng ago that it didn&#39;t even support std::thread and couldn&#39;t compile=
 UHD at all).</div><div><br></div><div>But this fix is something we can add=
 permanently to UHD. In fact,=C2=A0 I think this include should come first =
in all the tests, but it seems not to be a problem for most of them.</div><=
div><br></div><div>Cheers,</div><div>M<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 4, 2024 at 10:2=
6=E2=80=AFPM Chris Gorman &lt;<a href=3D"mailto:chrisjohgorman@gmail.com">c=
hrisjohgorman@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">Hello all,<br>
<br>
Just a follow up email in case someone else tries to build a msys2<br>
package for libuhd and gets the same error.=C2=A0 The fix was to invert the=
<br>
include order and have &lt;boost/test/unit_test.hpp&gt; included before<br>
&lt;uhdlib/utils//isatty.hpp&gt;.<br>
<br>
diff --git a/host/tests/isatty_test.cpp b/host/tests/isatty_test.cpp<br>
index 99da27fd1..de1b4e110 100644<br>
--- a/host/tests/isatty_test.cpp<br>
+++ b/host/tests/isatty_test.cpp<br>
@@ -3,9 +3,8 @@<br>
=C2=A0//<br>
=C2=A0// SPDX-License-Identifier: GPL-3.0-or-later<br>
=C2=A0//<br>
-<br>
-#include &lt;uhdlib/utils/isatty.hpp&gt;<br>
=C2=A0#include &lt;boost/test/unit_test.hpp&gt;<br>
+#include &lt;uhdlib/utils/isatty.hpp&gt;<br>
=C2=A0#include &lt;cstdio&gt;<br>
=C2=A0#include &lt;iostream&gt;<br>
<br>
I also ran into a linker error and fixed it by inverting the order in<br>
which two libraries occurred on the command line.<br>
<br>
diff --git a/host/tests/CMakeLists.txt b/host/tests/CMakeLists.txt<br>
index bac599811..682ce01c2 100644<br>
--- a/host/tests/CMakeLists.txt<br>
+++ b/host/tests/CMakeLists.txt<br>
@@ -97,7 +97,7 @@ include_directories(&quot;${CMAKE_CURRENT_SOURCE_DIR}/com=
mon&quot;)<br>
=C2=A0foreach(test_source ${test_sources})<br>
=C2=A0 =C2=A0 =C2=A0get_filename_component(test_name ${test_source} NAME_WE=
)<br>
=C2=A0 =C2=A0 =C2=A0add_executable(${test_name} ${test_source})<br>
-=C2=A0 =C2=A0 target_link_libraries(${test_name} uhd uhd_test ${Boost_LIBR=
ARIES})<br>
+=C2=A0 =C2=A0 target_link_libraries(${test_name} uhd_test uhd ${Boost_LIBR=
ARIES})<br>
=C2=A0 =C2=A0 =C2=A0UHD_ADD_TEST(${test_name} ${test_name})<br>
=C2=A0 =C2=A0 =C2=A0UHD_INSTALL(TARGETS ${test_name} RUNTIME DESTINATION<br=
>
${PKG_LIB_DIR}/tests COMPONENT tests)<br>
=C2=A0endforeach(test_source)<br>
@@ -106,7 +106,7 @@ endforeach(test_source)<br>
=C2=A0foreach(benchmark_source ${benchmark_sources})<br>
=C2=A0 =C2=A0 =C2=A0get_filename_component(benchmark_name ${benchmark_sourc=
e} NAME_WE)<br>
=C2=A0 =C2=A0 =C2=A0add_executable(${benchmark_name} ${benchmark_source})<b=
r>
-=C2=A0 =C2=A0 target_link_libraries(${benchmark_name} uhd uhd_test ${Boost=
_LIBRARIES})<br>
+=C2=A0 =C2=A0 target_link_libraries(${benchmark_name} uhd_test uhd ${Boost=
_LIBRARIES})<br>
=C2=A0 =C2=A0 =C2=A0UHD_INSTALL(TARGETS ${benchmark_name} RUNTIME DESTINATI=
ON<br>
${PKG_LIB_DIR}/tests COMPONENT tests)<br>
=C2=A0endforeach(benchmark_source)<br>
<br>
Thanks for your time.<br>
<br>
Chris<br>
<br>
On Tue, Jul 2, 2024 at 10:13=E2=80=AFAM Chris Gorman &lt;<a href=3D"mailto:=
chrisjohgorman@gmail.com" target=3D"_blank">chrisjohgorman@gmail.com</a>&gt=
; wrote:<br>
&gt;<br>
&gt; Hello USRP users,<br>
&gt;<br>
&gt; I&#39;m trying to update my build from 4.6.0.0 to 4.7.0.0 for UHD on<b=
r>
&gt; msys2/mingw64.=C2=A0 During the build I get the following error...<br>
&gt;<br>
&gt; $ C:\msys64\mingw64\bin\c++.exe<br>
&gt; -DBOOST_ASIO_DISABLE_STD_EXPERIMENTAL_STRING_VIEW<br>
&gt; -DBOOST_ASIO_DISABLE_STD_STRING_VIEW -DBOOST_ATOMIC_DYN_LINK<br>
&gt; -DBOOST_ATOMIC_NO_LIB -DBOOST_CHRONO_DYN_LINK -DBOOST_CHRONO_NO_LIB<br=
>
&gt; -DBOOST_DATE_TIME_DYN_LINK -DBOOST_DATE_TIME_NO_LIB<br>
&gt; -DBOOST_ERROR_CODE_HEADER_ONLY -DBOOST_FILESYSTEM_DYN_LINK<br>
&gt; -DBOOST_FILESYSTEM_NO_LIB -DBOOST_PROGRAM_OPTIONS_DYN_LINK<br>
&gt; -DBOOST_PROGRAM_OPTIONS_NO_LIB -DBOOST_SERIALIZATION_DYN_LINK<br>
&gt; -DBOOST_SERIALIZATION_NO_LIB -DBOOST_SYSTEM_DYN_LINK<br>
&gt; -DBOOST_SYSTEM_NO_LIB -DBOOST_TEST_DYN_LINK -DBOOST_TEST_MAIN<br>
&gt; -DBOOST_THREAD_DYN_LINK -DBOOST_THREAD_NO_LIB<br>
&gt; -DBOOST_UNIT_TEST_FRAMEWORK_DYN_LINK<br>
&gt; -DBOOST_UNIT_TEST_FRAMEWORK_NO_LIB -DHAVE_CONFIG_H -DNOMINMAX<br>
&gt; -DUHD_LOG_CONSOLE_COLOR -DUHD_LOG_CONSOLE_LEVEL=3D2<br>
&gt; -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_MIN_LEVEL=3D1 -D_WIN32_WINNT=3D0x05=
01<br>
&gt; -IC:/msys64/home/chris/src/uhd/host/build/include<br>
&gt; -IC:/msys64/home/chris/src/uhd/host/include<br>
&gt; -IC:/msys64/home/chris/src/uhd/host/lib/include<br>
&gt; -IC:/msys64/home/chris/src/uhd/host/build/lib/include<br>
&gt; -IC:/msys64/home/chris/src/uhd/host/tests/common<br>
&gt; -IC:/msys64/home/chris/src/uhd/host/build/lib/rfnoc<br>
&gt; -IC:/msys64/home/chris/src/uhd/host/lib/rfnoc<br>
&gt; -IC:/msys64/home/chris/src/uhd/host/build/lib/ic_reg_maps<br>
&gt; -IC:/msys64/home/chris/src/uhd/host/lib/deps/rpclib/include<br>
&gt; -IC:/msys64/home/chris/src/uhd/host/lib/deps/flatbuffers/include<br>
&gt; -IC:/msys64/home/chris/src/uhd/host/build/_cmrc/include -O3 -DNDEBUG<b=
r>
&gt; -std=3Dgnu++14=C2=A0 =C2=A0-Wall -Wextra -Wsign-compare -MD -MT<br>
&gt; tests/CMakeFiles/isatty_test.dir/isatty_test.cpp.obj -MF<br>
&gt; tests\CMakeFiles\isatty_test.dir\isatty_test.cpp.obj.d -o<br>
&gt; tests/CMakeFiles/isatty_test.dir/isatty_test.cpp.obj -c<br>
&gt; C:/msys64/home/chris/src/uhd/host/tests/isatty_test.cpp<br>
&gt; In file included from<br>
&gt; C:/msys64/mingw64/include/boost/assert/source_location.hpp:15,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from C:/=
msys64/mingw64/include/boost/exception/exception.hpp:9,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from C:/=
msys64/mingw64/include/boost/throw_exception.hpp:21,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from<br>
&gt; C:/msys64/mingw64/include/boost/smart_ptr/detail/shared_count.hpp:31,<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from<br>
&gt; C:/msys64/mingw64/include/boost/smart_ptr/shared_ptr.hpp:18,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from C:/=
msys64/mingw64/include/boost/shared_ptr.hpp:17,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from<br>
&gt; C:/msys64/mingw64/include/boost/test/tools/assertion_result.hpp:21,<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from<br>
&gt; C:/msys64/mingw64/include/boost/test/tools/old/impl.hpp:20,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from C:/=
msys64/mingw64/include/boost/test/test_tools.hpp:46,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from C:/=
msys64/mingw64/include/boost/test/unit_test.hpp:18,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from C:/=
msys64/home/chris/src/uhd/host/tests/isatty_test.cpp:8:<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:78:11: error: &#39;memchr=
&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 78 |=C2=A0 =C2=A0using ::memchr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:79:11: error: &#39;memcmp=
&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 79 |=C2=A0 =C2=A0using ::memcmp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:82:11: error: &#39;memset=
&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 82 |=C2=A0 =C2=A0using ::memset;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:83:11: error: &#39;strcat=
&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 83 |=C2=A0 =C2=A0using ::strcat;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:84:11: error: &#39;strcmp=
&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 84 |=C2=A0 =C2=A0using ::strcmp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:85:11: error: &#39;strcol=
l&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 85 |=C2=A0 =C2=A0using ::strcoll;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:86:11: error: &#39;strcpy=
&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 86 |=C2=A0 =C2=A0using ::strcpy;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:87:11: error: &#39;strcsp=
n&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 87 |=C2=A0 =C2=A0using ::strcspn;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:88:11: error: &#39;strerr=
or&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 88 |=C2=A0 =C2=A0using ::strerror;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:89:11: error: &#39;strlen=
&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 89 |=C2=A0 =C2=A0using ::strlen;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:90:11: error: &#39;strnca=
t&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 90 |=C2=A0 =C2=A0using ::strncat;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:91:11: error: &#39;strncm=
p&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 91 |=C2=A0 =C2=A0using ::strncmp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:92:11: error: &#39;strncp=
y&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 92 |=C2=A0 =C2=A0using ::strncpy;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:93:11: error: &#39;strspn=
&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 93 |=C2=A0 =C2=A0using ::strspn;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:95:11: error: &#39;strtok=
&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 95 |=C2=A0 =C2=A0using ::strtok;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:97:11: error: &#39;strxfr=
m&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 97 |=C2=A0 =C2=A0using ::strxfrm;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:98:11: error: &#39;strchr=
&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 98 |=C2=A0 =C2=A0using ::strchr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:99:11: error: &#39;strpbr=
k&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0 99 |=C2=A0 =C2=A0using ::strpbrk;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:100:11: error: &#39;strrc=
hr&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0100 |=C2=A0 =C2=A0using ::strrchr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~~<br>
&gt; C:/msys64/mingw64/include/c++/14.1.0/cstring:101:11: error: &#39;strst=
r&#39;<br>
&gt; has not been declared in &#39;::&#39;<br>
&gt;=C2=A0 =C2=A0101 |=C2=A0 =C2=A0using ::strstr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~<br>
&gt; C:/msys64/mingw64/include/boost/assert/source_location.hpp: In<br>
&gt; function &#39;bool boost::operator=3D=3D(const source_location&amp;, c=
onst<br>
&gt; source_location&amp;)&#39;:<br>
&gt; C:/msys64/mingw64/include/boost/assert/source_location.hpp:126:21:<br>
&gt; error: &#39;strcmp&#39; is not a member of &#39;std&#39;; did you mean=
 &#39;strchr&#39;?<br>
&gt;=C2=A0 =C2=A0126 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return std::strcmp(=
 s1.file_, s2.file_ ) =3D=3D 0 &amp;&amp;<br>
&gt; std::strcmp( s1.function_, s2.function_ ) =3D=3D 0 &amp;&amp; s1.line_=
 =3D=3D s2.line_<br>
&gt; &amp;&amp; s1.column_ =3D=3D s2.column_;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0strchr<br>
&gt; C:/msys64/mingw64/include/boost/assert/source_location.hpp:126:63:<br>
&gt; error: &#39;strcmp&#39; is not a member of &#39;std&#39;; did you mean=
 &#39;strchr&#39;?<br>
&gt;=C2=A0 =C2=A0126 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return std::strcmp(=
 s1.file_, s2.file_ ) =3D=3D 0 &amp;&amp;<br>
&gt; std::strcmp( s1.function_, s2.function_ ) =3D=3D 0 &amp;&amp; s1.line_=
 =3D=3D s2.line_<br>
&gt; &amp;&amp; s1.column_ =3D=3D s2.column_;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0strchr<br>
&gt; In file included from C:/msys64/mingw64/include/boost/mpl/for_each.hpp=
:29,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from<br>
&gt; C:/msys64/mingw64/include/boost/test/tree/test_case_template.hpp:28,<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from<br>
&gt; C:/msys64/mingw64/include/boost/test/unit_test_suite.hpp:19,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from C:/=
msys64/mingw64/include/boost/test/unit_test.hpp:19:<br>
&gt; C:/msys64/mingw64/include/boost/utility/value_init.hpp: In constructor=
<br>
&gt; &#39;boost::detail::zero_init::zero_init(void*, std::size_t)&#39;:<br>
&gt; C:/msys64/mingw64/include/boost/utility/value_init.hpp:73:12: error:<b=
r>
&gt; &#39;memset&#39; is not a member of &#39;std&#39;; did you mean &#39;w=
memset&#39;?<br>
&gt;=C2=A0 =C2=A0 73 |=C2=A0 =C2=A0 =C2=A0 =C2=A0std::memset( p, 0, n );<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^=
~~~~~<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 w=
memset<br>
&gt;<br>
&gt; It looks like I&#39;m including something I shouldn&#39;t, but I don&#=
39;t know what.<br>
&gt;<br>
&gt; My cmake build log is ...<br>
&gt;<br>
&gt; $ cmake -DCMAKE_INSTALL_PREFIX=3Dc:/msys64/mingw64 -DENABLE_PYTHON_API=
=3DON ..<br>
&gt; --<br>
&gt; -- Configuring the Python interpreter...<br>
&gt; -- Manually determining build Python version...<br>
&gt; -- Python interpreter: C:/msys64/mingw64/bin/python3.11.exe Version: 3=
.11.9<br>
&gt; -- Override with: -DPYTHON_EXECUTABLE=3D&lt;path-to-python&gt;<br>
&gt; -- Manually determining runtime Python version...<br>
&gt; -- Python runtime interpreter: C:/msys64/mingw64/bin/python3.11.exe<br=
>
&gt; Version: 3.11.9<br>
&gt; -- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;=
<br>
&gt; -- Finding Python Libraries...<br>
&gt; CMake Warning (dev) at cmake/Modules/UHDPython.cmake:313 (find_package=
):<br>
&gt;=C2=A0 =C2=A0Policy CMP0148 is not set: The FindPythonInterp and FindPy=
thonLibs modules<br>
&gt;=C2=A0 =C2=A0are removed.=C2=A0 Run &quot;cmake --help-policy CMP0148&q=
uot; for policy details.=C2=A0 Use<br>
&gt;=C2=A0 =C2=A0the cmake_policy command to set the policy and suppress th=
is warning.<br>
&gt;<br>
&gt; Call Stack (most recent call first):<br>
&gt;=C2=A0 =C2=A0cmake/Modules/UHDVersion.cmake:9 (include)<br>
&gt;=C2=A0 =C2=A0cmake/Modules/UHDPackage.cmake:9 (include)<br>
&gt;=C2=A0 =C2=A0CMakeLists.txt:107 (include)<br>
&gt; This warning is for project developers.=C2=A0 Use -Wno-dev to suppress=
 it.<br>
&gt;<br>
&gt; -- Python Libraries: C:/msys64/mingw64/lib/libpython3.11.dll.a<br>
&gt; -- Python include directories: C:/msys64/mingw64/include/python3.11<br=
>
&gt; -- pybind11::lto disabled (problems with undefined symbols for MinGW f=
or now)<br>
&gt; -- pybind11::thin_lto disabled (problems with undefined symbols for<br=
>
&gt; MinGW for now)<br>
&gt; -- Operating on master branch.<br>
&gt; -- Using UHD Images Directory: C:\msys64\mingw64\share\uhd\images<br>
&gt; -- Build type not specified: defaulting to release.<br>
&gt; --<br>
&gt; -- Configuring Boost C++ Libraries...<br>
&gt; --<br>
&gt; -- Checking for Boost version 1.65 or greater<br>
&gt; --=C2=A0 =C2=A0Looking for required Boost components...<br>
&gt; --=C2=A0 =C2=A0Enabling Boost Error Code Header Only<br>
&gt; --=C2=A0 =C2=A0 =C2=A0Disabling boost::asio use of std::string_view<br=
>
&gt; --=C2=A0 =C2=A0Boost version: 1.85.0<br>
&gt; --=C2=A0 =C2=A0Boost include directories: C:/msys64/mingw64/include<br=
>
&gt; --=C2=A0 =C2=A0Boost library directories: C:/msys64/mingw64/lib<br>
&gt; --=C2=A0 =C2=A0Boost libraries:<br>
&gt; Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_option=
s;Boost::serialization;Boost::thread;Boost::unit_test_framework;Boost::syst=
em<br>
&gt; -- Looking for Boost version 1.65 or greater - found<br>
&gt; --<br>
&gt; -- Python checking for compatible Python version<br>
&gt; -- Python checking for compatible Python version - 3.11.9 satisfies<br=
>
&gt; minimum required version 3.7<br>
&gt; --<br>
&gt; -- Python checking for Mako templates module<br>
&gt; -- Python checking for Mako templates module - 1.3.5 satisfies minimum=
<br>
&gt; required version 0.4.2<br>
&gt; --<br>
&gt; -- Python checking for requests module<br>
&gt; -- Python checking for requests module - 2.32.2 satisfies minimum<br>
&gt; required version 2.0<br>
&gt; --<br>
&gt; -- Python checking for numpy module<br>
&gt; -- Python checking for numpy module - 1.26.4 satisfies minimum<br>
&gt; required version 1.11<br>
&gt; --<br>
&gt; -- Python checking for ruamel.yaml module<br>
&gt; -- Python checking for ruamel.yaml module - 0.18.6 satisfies minimum<b=
r>
&gt; required version 0.15<br>
&gt; --<br>
&gt; -- Configuring LibUHD support...<br>
&gt; --=C2=A0 =C2=A0Dependency Boost_FOUND =3D TRUE<br>
&gt; --=C2=A0 =C2=A0Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE<br>
&gt; --=C2=A0 =C2=A0Enabling LibUHD support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_LIBUHD=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring LibUHD - C API support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling LibUHD - C API support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_C_API=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring LibUHD - Python API support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Dependency HAVE_PYTHON_MODULE_NUMPY =3D TRUE<br>
&gt; --=C2=A0 =C2=A0Dependency HAVE_PYTHON_LIBS =3D TRUE<br>
&gt; --=C2=A0 =C2=A0Enabling LibUHD - Python API support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_PYTHON_API=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring Examples support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling Examples support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_EXAMPLES=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring Utils support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling Utils support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_UTILS=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring Tests support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling Tests support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_TESTS=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring Python Module (Utils only) support...<br>
&gt; --=C2=A0 =C2=A0Dependency HAVE_PYTHON_MODULE_NUMPY =3D TRUE<br>
&gt; --=C2=A0 =C2=A0Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE<br>
&gt; --=C2=A0 =C2=A0Dependency HAVE_PYTHON_MODULE_YAML =3D TRUE<br>
&gt; --=C2=A0 =C2=A0Enabling Python Module (Utils only) support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_PYMOD_UTILS=3DON/OFF<br>
&gt; --<br>
&gt; CMake Warning (dev) at<br>
&gt; C:/msys64/mingw64/share/cmake/Modules/FindPackageHandleStandardArgs.cm=
ake:447<br>
&gt; (message):<br>
&gt;=C2=A0 =C2=A0`find_package()` specify a version range but the module DP=
DK does not<br>
&gt;=C2=A0 =C2=A0support this capability.=C2=A0 Only the lower endpoint of =
the range will be<br>
&gt;=C2=A0 =C2=A0used.<br>
&gt; Call Stack (most recent call first):<br>
&gt;=C2=A0 =C2=A0cmake/Modules/FindDPDK.cmake:86 (find_package_handle_stand=
ard_args)<br>
&gt;=C2=A0 =C2=A0lib/CMakeLists.txt:63 (find_package)<br>
&gt; This warning is for project developers.=C2=A0 Use -Wno-dev to suppress=
 it.<br>
&gt;<br>
&gt; -- Could NOT find DPDK (missing: DPDK_INCLUDE_DIRS DPDK_LIBRARIES)<br>
&gt; (Required is at least version &quot;18.11&quot;)<br>
&gt; --<br>
&gt; -- Configuring USB support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Dependency LIBUSB_FOUND =3D TRUE<br>
&gt; --=C2=A0 =C2=A0Enabling USB support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_USB=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring B100 support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_USB =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling B100 support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_B100=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring B200 support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_USB =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling B200 support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_B200=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring USRP1 support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_USB =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling USRP1 support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_USRP1=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring USRP2 support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling USRP2 support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_USRP2=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring X300 support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling X300 support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_X300=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring MPMD support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling MPMD support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_MPMD=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring SIM support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_MPMD =3D ON<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_PYTHON_API =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling SIM support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_SIM=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring N300 support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_MPMD =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling N300 support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_N300=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring N320 support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_MPMD =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling N320 support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_N320=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring E320 support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_MPMD =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling E320 support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_E320=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring E300 support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_MPMD =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling E300 support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_E300=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring X400 support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_MPMD =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling X400 support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_X400=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring OctoClock support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_LIBUHD =3D ON<br>
&gt; --=C2=A0 =C2=A0Enabling OctoClock support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_OCTOCLOCK=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring DPDK support...<br>
&gt; --=C2=A0 =C2=A0Dependency ENABLE_MPMD =3D ON<br>
&gt; --=C2=A0 =C2=A0Dependency DPDK_FOUND =3D FALSE<br>
&gt; --=C2=A0 =C2=A0Disabling DPDK support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_DPDK=3DON/OFF<br>
&gt; --<br>
&gt; --<br>
&gt; -- Configuring priority scheduling...<br>
&gt; --=C2=A0 =C2=A0Priority scheduling supported through pthread_setschedp=
aram.<br>
&gt; --=C2=A0 =C2=A0Setting thread names is supported through pthread_setna=
me_np.<br>
&gt; --=C2=A0 =C2=A0Setting thread affinity is supported through windows Se=
tThreadAffinityMask.<br>
&gt; --<br>
&gt; -- Configuring module loading...<br>
&gt; --=C2=A0 =C2=A0Module loading supported through LoadLibrary.<br>
&gt; --<br>
&gt; -- Configuring atomics support...<br>
&gt; --=C2=A0 =C2=A0Atomics support is built-in, no linking required.<br>
&gt; --<br>
&gt; -- Processing NI-RIO FPGA LVBITX Bitstreams...<br>
&gt; --=C2=A0 =C2=A0Using x300.lvbitx_base for codegen<br>
&gt; --=C2=A0 =C2=A0Using x310.lvbitx_base for codegen<br>
&gt; --<br>
&gt; -- USB support enabled via libusb.<br>
&gt; --<br>
&gt; -- Configuring interface address discovery...<br>
&gt; --=C2=A0 =C2=A0Interface address discovery supported through SIO_GET_I=
NTERFACE_LIST.<br>
&gt; --<br>
&gt; -- Loading build info.<br>
&gt; CMake Deprecation Warning at cmake/Modules/CMakeRC.cmake:63<br>
&gt; (cmake_minimum_required):<br>
&gt;=C2=A0 =C2=A0Compatibility with CMake &lt; 3.5 will be removed from a f=
uture version of<br>
&gt;=C2=A0 =C2=A0CMake.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0Update the VERSION argument &lt;min&gt; value or use a ...=
&lt;max&gt; suffix to tell<br>
&gt;=C2=A0 =C2=A0CMake that the project does not need compatibility with ol=
der versions.<br>
&gt; Call Stack (most recent call first):<br>
&gt;=C2=A0 =C2=A0lib/rc/CMakeLists.txt:7 (include)<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; -- Adding B2XX device test target<br>
&gt; -- Adding X3x0 device test target<br>
&gt; -- Adding E3XX device test target<br>
&gt; -- Adding N3XX device test target<br>
&gt; -- Adding E32x device test target<br>
&gt; -- Adding X410 device test target<br>
&gt; -- Adding X440 device test target<br>
&gt; --<br>
&gt; --<br>
&gt; -- Configuring Manual support...<br>
&gt; --=C2=A0 =C2=A0Dependency DOXYGEN_FOUND =3D YES<br>
&gt; --=C2=A0 =C2=A0Enabling Manual support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_MANUAL=3DON/OFF<br>
&gt; --<br>
&gt; -- Configuring API/Doxygen support...<br>
&gt; --=C2=A0 =C2=A0Dependency DOXYGEN_FOUND =3D YES<br>
&gt; --=C2=A0 =C2=A0Enabling API/Doxygen support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_DOXYGEN=3DON/OFF<br>
&gt; --<br>
&gt; -- Found GZip: C:/msys64/usr/bin/gzip.exe<br>
&gt; --<br>
&gt; -- Compressed Man Pages enabled<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_MAN_PAGE_COMPRESSION=3DON/OFF<br=
>
&gt; --<br>
&gt; -- Configuring Man Pages support...<br>
&gt; --=C2=A0 =C2=A0Dependency NOT_WIN32 =3D<br>
&gt; --=C2=A0 =C2=A0Dependency GZIP_FOUND =3D TRUE<br>
&gt; --=C2=A0 =C2=A0Disabling Man Pages support.<br>
&gt; --=C2=A0 =C2=A0Override with -DENABLE_MAN_PAGES=3DON/OFF<br>
&gt; -- Using Pybind11 from: C:/msys64/mingw64/include<br>
&gt; --<br>
&gt; -- Python checking for gevent module<br>
&gt; -- Python checking for gevent module - &quot;import gevent&quot; faile=
d (is it installed?)<br>
&gt; --<br>
&gt; -- Python checking for mprpc module<br>
&gt; -- Python checking for mprpc module - &quot;import mprpc&quot; failed =
(is it installed?)<br>
&gt; --<br>
&gt; -- Python checking for pyudev module<br>
&gt; -- Python checking for pyudev module - &quot;import pyudev&quot; faile=
d (is it installed?)<br>
&gt; --<br>
&gt; -- Python checking for pyroute2 module<br>
&gt; -- Python checking for pyroute2 module - &quot;import pyroute2&quot; f=
ailed (is<br>
&gt; it installed?)<br>
&gt; -- MPM unit test Python package prerequisites not met; skipping<br>
&gt; --<br>
&gt; --<br>
&gt; -- Python checking for virtual environment<br>
&gt; -- Python checking for virtual environment - &quot;assert sys.prefix !=
=3D<br>
&gt; sys.base_prefix&quot; failed<br>
&gt; -- Installing &#39;uhd&#39; Python module to:<br>
&gt; C:/msys64/mingw64/lib/python3.11/site-packages<br>
&gt; --<br>
&gt; -- ######################################################<br>
&gt; -- # UHD enabled components<br>
&gt; -- ######################################################<br>
&gt; --=C2=A0 =C2=A0* LibUHD<br>
&gt; --=C2=A0 =C2=A0* LibUHD - C API<br>
&gt; --=C2=A0 =C2=A0* LibUHD - Python API<br>
&gt; --=C2=A0 =C2=A0* Examples<br>
&gt; --=C2=A0 =C2=A0* Utils<br>
&gt; --=C2=A0 =C2=A0* Tests<br>
&gt; --=C2=A0 =C2=A0* Python Module (Utils only)<br>
&gt; --=C2=A0 =C2=A0* USB<br>
&gt; --=C2=A0 =C2=A0* B100<br>
&gt; --=C2=A0 =C2=A0* B200<br>
&gt; --=C2=A0 =C2=A0* USRP1<br>
&gt; --=C2=A0 =C2=A0* USRP2<br>
&gt; --=C2=A0 =C2=A0* X300<br>
&gt; --=C2=A0 =C2=A0* MPMD<br>
&gt; --=C2=A0 =C2=A0* SIM<br>
&gt; --=C2=A0 =C2=A0* N300<br>
&gt; --=C2=A0 =C2=A0* N320<br>
&gt; --=C2=A0 =C2=A0* E320<br>
&gt; --=C2=A0 =C2=A0* E300<br>
&gt; --=C2=A0 =C2=A0* X400<br>
&gt; --=C2=A0 =C2=A0* OctoClock<br>
&gt; --=C2=A0 =C2=A0* Manual<br>
&gt; --=C2=A0 =C2=A0* API/Doxygen<br>
&gt; --<br>
&gt; -- ######################################################<br>
&gt; -- # UHD disabled components<br>
&gt; -- ######################################################<br>
&gt; --=C2=A0 =C2=A0* DPDK<br>
&gt; --=C2=A0 =C2=A0* Man Pages<br>
&gt; --<br>
&gt; -- ******************************************************<br>
&gt; -- * You are building the UHD development master branch.<br>
&gt; -- * For production code, we recommend our stable,<br>
&gt; -- * releases or using the release branch (maint).<br>
&gt; -- ******************************************************<br>
&gt; -- Building version: 4.7.0.0-0-ga5ed1872<br>
&gt; -- Using install prefix: C:/msys64/mingw64<br>
&gt; -- Configuring done (3.7s)<br>
&gt; -- Generating done (0.7s)<br>
&gt; -- Build files have been written to: C:/msys64/home/chris/src/uhd/host=
/build<br>
&gt;<br>
&gt; I&#39;m also applying a patch to get it to build.=C2=A0 It was needed =
for<br>
&gt; 4.6.0.0 and I&#39;ve had to make some tweaks.=C2=A0 None of the files =
touched<br>
&gt; by the patch are part of the error, but I&#39;ll include it for<br>
&gt; completeness.<br>
&gt;<br>
&gt; Thanks in advance,<br>
&gt;<br>
&gt; Chris<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005fe977061c7d4404--

--===============2456527283587861743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2456527283587861743==--
