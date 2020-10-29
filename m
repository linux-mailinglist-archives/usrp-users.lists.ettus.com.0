Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB87C29F4CC
	for <lists+usrp-users@lfdr.de>; Thu, 29 Oct 2020 20:19:29 +0100 (CET)
Received: from [::1] (port=47704 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kYDSH-0007EP-Uj; Thu, 29 Oct 2020 15:19:25 -0400
Received: from mail-lf1-f52.google.com ([209.85.167.52]:37584)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <coxe@close-haul.com>) id 1kYDSD-00075r-AV
 for usrp-users@lists.ettus.com; Thu, 29 Oct 2020 15:19:21 -0400
Received: by mail-lf1-f52.google.com with SMTP id j30so4751964lfp.4
 for <usrp-users@lists.ettus.com>; Thu, 29 Oct 2020 12:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OT09K26w4zlRn6mcGmLp2fzsQyNId8OiXBDuZ8ysGVA=;
 b=vwhYqPQe1WG1OSMkr9ofVy5rbgYHhf/hMEOqH3v9VzQiNlvMBRpr6euAROqsuEqetE
 xsWBj+1zhCSZVBpE1AVVnTMKy30Frol1fl9cvlRZWCGVPPsY1Bb/BY7jGcD25C9P2cWe
 ThanyvkejoZcV8JHKIsE8ArCy0RZWPx7nlqcWqSqdqU/nb3qNISnInnrTdVGDWZi7Ne/
 LqDks9vWwgzP1lUJRcJer47z9fPxfuXZDqj+0eV0eRrXE+Opzx2N278RT8BrjSrq0188
 jgfls+4n3m6yVPmEU4Ee1t3qoS/yfSRygkXNZALgx1mCiFNsJ3m77X2er+4Ji7tR03fL
 l87A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OT09K26w4zlRn6mcGmLp2fzsQyNId8OiXBDuZ8ysGVA=;
 b=XI9Buxk0mZ6gkC1kD0GjNeEc9L4wp+MufLvQxmDzaaRCGQicxsgh5epEFxX+zgMUm1
 zJF4d6nzctuMANmHq0XBFljXpFR1upQukOMoOMxipcIeOx2b6YorF1z2PUwA8qBjikr0
 I2Vld8nyhgUZndc9vvJzoJXxcMf3K+vYq1KPVMRp9qN5vRdpatNlHd3wUfmgY6nS3vmV
 6+05U3E/u2tsTq5VP8PQSdQnM+K3zC9QEbvhTziPeDXCTC2r+ACX4hXUBqyns86ZDcIX
 QUFyi4o+DphUcvjA+lqEDRvWLJOyv1GRcOqPlNokdCUxfqQVZnebp031cPPgV/YsPbxX
 frkw==
X-Gm-Message-State: AOAM533cIz2CZzTRVZekNEKjP/b8C2iWFtypvjyGKokcnbPGDcO0Y+na
 DS9UdvlAK7TUQqILDQqI5TwjAxLhLLGhjs/fekGMrOOvb+nTIoMz
X-Google-Smtp-Source: ABdhPJzYNX+6X/FhQx0Vh+kWkLnkBJTKJ7ELEdESLOhXvdsJp4voqseEN9Z7SdhUIahnuQ8zndE/XVOXOmo0y9o6jNo=
X-Received: by 2002:a19:e56:: with SMTP id 83mr1938394lfo.362.1603999119772;
 Thu, 29 Oct 2020 12:18:39 -0700 (PDT)
MIME-Version: 1.0
References: <73588971-021a-f7fc-dbe8-236843ff27b7@6tzvaim.com>
 <fd64bc6e-6c5d-87e0-5fb5-d9a06432c2b1@ant.uni-bremen.de>
 <d6651526-9995-a59d-aab5-b38da227afc0@6tzvaim.com>
In-Reply-To: <d6651526-9995-a59d-aab5-b38da227afc0@6tzvaim.com>
Date: Thu, 29 Oct 2020 12:18:28 -0700
Message-ID: <CAKJyDkLUy8aPcYiBRC_1c7d4ixgjDjPei52+77o7K4RW2RrMbA@mail.gmail.com>
To: Baroch Oren <baroch@6tzvaim.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD HOST build fails on ubuntu 20.04 LTS -
 (missing dependencies)
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Content-Type: multipart/mixed; boundary="===============5594653367459635216=="
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

--===============5594653367459635216==
Content-Type: multipart/alternative; boundary="000000000000c128b605b2d425e7"

--000000000000c128b605b2d425e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This branch will allow you to build UHD 4.0.0 from source on Ubuntu 20.04:
https://github.com/EttusResearch/uhd/tree/atrnati/ubuntu-20.04-workaround

You could also try disabling the GPSDO if you don't need it with the cmake
argument  *-DENABLE_GPSD=3DOFF*



On Thu, Oct 29, 2020 at 5:21 AM Baroch Oren via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Thank you so much Johannes for the prompt reply. It was very helpful.
>
> Actually I just need to build UHD HOST from source, as I'm tweaking code
> from the examples directory.
>
>
> I've removed python 2 & 2.7 from the system completely. now only python 3
> is there.
>
> still same casting errors for compiling 3.14 in file gpsd_iface.cpp
>
>
> here:
>
> baroch@reliable:~/uhd/host/build$ make
> [  2%] Built target uhd_rpclib
> [  2%] Building CXX object lib/CMakeFiles/uhd.dir/usrp/gpsd_iface.cpp.o
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function =E2=80=
=98int64_t
> uhd::usrp::gpsd_iface_impl::_epoch_time()=E2=80=99:
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:141:62: error: cannot
> convert =E2=80=98timespec_t=E2=80=99 {aka =E2=80=98timespec=E2=80=99} to =
=E2=80=98time_t=E2=80=99 {aka =E2=80=98long int=E2=80=99}
>   141 |         return (boost::posix_time::from_time_t(_gps_data.fix.time=
)
>       |                                                ~~~~~~~~~~~~~~^~~~
>       |                                                              |
>       |
> timespec_t {aka timespec}
> In file included from /usr/include/boost/thread/xtime.hpp:16,
>                  from /usr/include/boost/thread/pthread/mutex.hpp:20,
>                  from /usr/include/boost/thread/mutex.hpp:16,
>                  from
> /usr/include/boost/thread/pthread/shared_mutex.hpp:14,
>                  from /usr/include/boost/thread/shared_mutex.hpp:28,
>                  from /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16:
> /usr/include/boost/date_time/posix_time/conversion.hpp:27:33: note:
> initializing argument 1 of =E2=80=98boost::posix_time::ptime
> boost::posix_time::from_time_t(time_t)=E2=80=99
>    27 |   ptime from_time_t(std::time_t t)
>       |                     ~~~~~~~~~~~~^
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function
> =E2=80=98boost::gregorian::date uhd::usrp::gpsd_iface_impl::_gregorian_da=
te()=E2=80=99:
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:148:61: error: cannot
> convert =E2=80=98timespec_t=E2=80=99 {aka =E2=80=98timespec=E2=80=99} to =
=E2=80=98time_t=E2=80=99 {aka =E2=80=98long int=E2=80=99}
>   148 |         return
> boost::posix_time::from_time_t(_gps_data.fix.time).date();
>       |                                               ~~~~~~~~~~~~~~^~~~
>       |                                                             |
>       |
> timespec_t {aka timespec}
> In file included from /usr/include/boost/thread/xtime.hpp:16,
>                  from /usr/include/boost/thread/pthread/mutex.hpp:20,
>                  from /usr/include/boost/thread/mutex.hpp:16,
>                  from
> /usr/include/boost/thread/pthread/shared_mutex.hpp:14,
>                  from /usr/include/boost/thread/shared_mutex.hpp:28,
>                  from /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16:
> /usr/include/boost/date_time/posix_time/conversion.hpp:27:33: note:
> initializing argument 1 of =E2=80=98boost::posix_time::ptime
> boost::posix_time::from_time_t(time_t)=E2=80=99
>    27 |   ptime from_time_t(std::time_t t)
>       |                     ~~~~~~~~~~~~^
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function
> =E2=80=98std::string uhd::usrp::gpsd_iface_impl::_gps_gprmc()=E2=80=99:
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:206:49: error: invalid cast
> from type =E2=80=98timespec_t=E2=80=99 {aka =E2=80=98timespec=E2=80=99} t=
o type =E2=80=98time_t=E2=80=99 {aka =E2=80=98long int=E2=80=99}
>   206 |             intfixtime =3D (time_t) _gps_data.fix.time;
>       |                                                 ^~~~
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function
> =E2=80=98std::string uhd::usrp::gpsd_iface_impl::_gps_gpgga()=E2=80=99:
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:241:45: error: invalid cast
> from type =E2=80=98timespec_t=E2=80=99 {aka =E2=80=98timespec=E2=80=99} t=
o type =E2=80=98time_t=E2=80=99 {aka =E2=80=98long int=E2=80=99}
>   241 |         intfixtime =3D (time_t) _gps_data.fix.time;
>       |                                             ^~~~
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:268:42: error: =E2=80=98str=
uct
> gps_data_t=E2=80=99 has no member named =E2=80=98separation=E2=80=99
>   268 |         if (boost::math::isnan(_gps_data.separation))
>       |                                          ^~~~~~~~~~
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:58: error: =E2=80=98str=
uct
> gps_data_t=E2=80=99 has no member named =E2=80=98separation=E2=80=99
>   272 |                 str(boost::format("%.3f,M,") %
> _gps_data.separation));
>       |                                                          ^~~~~~~~=
~~
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:17: error: =E2=80=98str=
=E2=80=99 was not
> declared in this scope
>   272 |                 str(boost::format("%.3f,M,") %
> _gps_data.separation));
>       |                 ^~~
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:17: note: suggested
> alternatives:
> In file included from /usr/include/boost/format.hpp:53,
>                  from /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:15:
> /usr/include/boost/format/free_funcs.hpp:22:38: note:   =E2=80=98boost::s=
tr=E2=80=99
>    22 |     std::basic_string<Ch, Tr, Alloc> str(const basic_format<Ch,
> Tr, Alloc>& f) {
>       |                                      ^~~
>
> - Baroch
>
>
>
> On 29/10/2020 12:12, Johannes Demel via USRP-users wrote:
>
> Hi Baroch,
>
> Do you need UHD 3.14? UHD 3.15 is probably easier to install on your
> system.
>
> Besides, the missing dependencies indicate that you want to install a
> really old version of UHD? or GNU Radio? On a modern system. The clock ra=
n
> out on Python2. For some reason cmake seems to find a python2 install on
> your system. That wasn't there by default. And it would probably be good =
to
> not have it there to minimize potential mixups.
>
> Further, your system lacks Qt4 which is again really old and everything
> should be ported to Qt5 by now. At least GNU Radio works with Qt5.
>
> Besides, unfortunately the guide you link to lacks Ubuntu 20.04
> instructions which differ.
>
> This would be the required list of dependencies on 20.04:
> https://wiki.gnuradio.org/index.php/UbuntuInstall#Focal_Fossa_.2820.04.29
>
> If you want to install UHD only, you might also go for `libuhd-dev` and
> `python3-uhd`. These should install UHD 3.15 on your system as well. No
> need for a source install.
>
> Cheers
> Johannes
>
> On 29.10.20 10:53, Baroch Oren via USRP-users wrote:
>
> Hello,
>
> I've been following Application Note AN-445
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolcha=
in_(UHD_and_GNU_Radio)_on_Linux
>
> Couldn't build it. Please advise.
>
>
> These are the requirements that were reported missing on the apt-get line=
:
>
>     E: Unable to locate package libcppunit-1.14-0
>     E: Package 'python-scipy' has no installation candidate
>     E: Unable to locate package qt4-bin-dbg
>     E: Package 'qt4-default' has no installation candidate
>     E: Package 'qt4-doc' has no installation candidate
>     E: Package 'libqt4-dev' has no installation candidate
>     E: Unable to locate package libqt4-dev-bin
>     E: Unable to locate package python-qt4
>     E: Unable to locate package python-qt4-dbg
>     E: Unable to locate package python-qt4-dev
>     E: Unable to locate package python-qt4-doc
>     E: Unable to locate package libqwt6abi1
>     E: Unable to locate package libncurses6-dbg
>     E: Package 'libqt4-dev' has no installation candidate
>     E: Package 'qt4-default' has no installation candidate
>     E: Unable to locate package qt4-dev-tools
>     E: Unable to locate package pyqt4-dev-tools
>     E: Unable to locate package python-qwt5-qt4
>     E: Unable to locate package python-gtk2
>     E: Unable to locate package python-requests
>     E: Package 'python-sphinx' has no installation candidate
>     E: Unable to locate package python-zmq
>     E: Package 'libqwt-dev' has no installation candidate
>     E: Unable to locate package libqwt6abi1
>     E: Unable to locate package libgps23
>     E: Package 'python-gps' has no installation candidate
>
> following attempt to make & build gives countless warning and tthe
> following error:
>
>     baroch@reliable:~/uhd/host/build$ cmake -DENABLE_GPSD=3DON ../
>     --     -- Configuring the python interpreter...
>     -- Python interpreter: /usr/bin/python2
>     -- Override with: -DPYTHON_EXECUTABLE=3D<path-to-python>
>     -- Python runtime interpreter: /usr/bin/python2
>     -- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D<path-to-python>
>     -- Working off of feature or development branch. Updating version
>     number.
>     -- Using UHD Images Directory: /usr/local/share/uhd/images
>     -- Build type not specified: defaulting to release.
>     --     -- Configuring Boost C++ Libraries...
>     -- Looking for optional Boost components...
>     -- Found Boost:
>     /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake
>     (found suitable version "1.71.0", minimum required is "1.53") found
>     components: python
>     -- Looking for required Boost components...
>     -- Found Boost:
>     /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake
>     (found suitable version "1.71.0", minimum required is "1.53") found
>     components: chrono date_time filesystem program_options regex system
>     unit_test_framework serialization thread
>     -- Boost include directories: /usr/include
>     -- Boost library directories: /usr/lib/x86_64-linux-gnu
>     -- Boost libraries:
>
> Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_options;B=
oost::regex;Boost::system;Boost::unit_test_framework;Boost::serialization;B=
oost::thread
>     CMake Warning (dev) at cmake/Modules/UHDLog.cmake:68 (set):
>        implicitly converting 'FILE' to 'STRING' type.
>     Call Stack (most recent call first):
>        CMakeLists.txt:365 (include)
>     This warning is for project developers.  Use -Wno-dev to suppress it.
>
>     --     -- Python checking for Python version 2.7 or greater
>     -- Python checking for Python version 2.7 or greater - found
>     --     -- Python checking for Mako templates 0.4.2 or greater
>     -- Python checking for Mako templates 0.4.2 or greater - found
>     --     -- Python checking for requests 2.0 or greater
>     -- Python checking for requests 2.0 or greater - "import requests"
>     failed
>     --     -- Python checking for numpy 1.7 or greater
>     -- Python checking for numpy 1.7 or greater - found
>     --     -- Configuring LibUHD support...
>     --   Dependency Boost_FOUND =3D TRUE
>     --   Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D TRUE
>     --   Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE
>     --   Enabling LibUHD support.
>     --   Override with -DENABLE_LIBUHD=3DON/OFF
>     --     -- Configuring LibUHD - C API support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Enabling LibUHD - C API support.
>     --   Override with -DENABLE_C_API=3DON/OFF
>     --     -- Configuring LibUHD - Python API support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Dependency BOOST_PYTHON_FOUND =3D 1
>     --   Dependency HAVE_PYTHON_MODULE_NUMPY =3D TRUE
>     --   Dependency PythonLibs_FOUND =3D TRUE
>     --   Enabling LibUHD - Python API support.
>     --   Override with -DENABLE_PYTHON_API=3DON/OFF
>     --     -- Configuring Examples support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Enabling Examples support.
>     --   Override with -DENABLE_EXAMPLES=3DON/OFF
>     --     -- Configuring Utils support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Enabling Utils support.
>     --   Override with -DENABLE_UTILS=3DON/OFF
>     --     -- Configuring Tests support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Enabling Tests support.
>     --   Override with -DENABLE_TESTS=3DON/OFF
>     --     -- Could NOT find LIBERIO (missing: LIBERIO_LIBRARY
>     LIBERIO_INCLUDE_DIR)
>     -- Could NOT find dpdk (missing: DPDK_INCLUDE_DIR)
>     --     -- Configuring LIBERIO support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Dependency LIBERIO_FOUND =3D FALSE
>     --   Disabling LIBERIO support.
>     --   Override with -DENABLE_LIBERIO=3DON/OFF
>     --     -- Configuring USB support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Dependency LIBUSB_FOUND =3D TRUE
>     --   Enabling USB support.
>     --   Override with -DENABLE_USB=3DON/OFF
>     --     -- Configuring GPSD support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Dependency ENABLE_GPSD =3D ON
>     --   Dependency LIBGPS_FOUND =3D TRUE
>     --   Enabling GPSD support.
>     --   Override with -DENABLE_GPSD=3DON/OFF
>     --     -- Configuring B100 support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Dependency ENABLE_USB =3D ON
>     --   Enabling B100 support.
>     --   Override with -DENABLE_B100=3DON/OFF
>     --     -- Configuring B200 support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Dependency ENABLE_USB =3D ON
>     --   Enabling B200 support.
>     --   Override with -DENABLE_B200=3DON/OFF
>     --     -- Configuring E300 support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Disabling E300 support.
>     --   Override with -DENABLE_E300=3DON/OFF
>     --     -- Configuring USRP1 support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Dependency ENABLE_USB =3D ON
>     --   Enabling USRP1 support.
>     --   Override with -DENABLE_USRP1=3DON/OFF
>     --     -- Configuring USRP2 support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Enabling USRP2 support.
>     --   Override with -DENABLE_USRP2=3DON/OFF
>     --     -- Configuring X300 support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Enabling X300 support.
>     --   Override with -DENABLE_X300=3DON/OFF
>     --     -- Configuring N230 support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Enabling N230 support.
>     --   Override with -DENABLE_N230=3DON/OFF
>     --     -- Configuring MPMD support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Enabling MPMD support.
>     --   Override with -DENABLE_MPMD=3DON/OFF
>     --     -- Configuring N300 support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Dependency ENABLE_MPMD =3D ON
>     --   Enabling N300 support.
>     --   Override with -DENABLE_N300=3DON/OFF
>     --     -- Configuring N320 support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Dependency ENABLE_MPMD =3D ON
>     --   Enabling N320 support.
>     --   Override with -DENABLE_N320=3DON/OFF
>     --     -- Configuring E320 support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Dependency ENABLE_MPMD =3D ON
>     --   Enabling E320 support.
>     --   Override with -DENABLE_E320=3DON/OFF
>     --     -- Configuring OctoClock support...
>     --   Dependency ENABLE_LIBUHD =3D ON
>     --   Enabling OctoClock support.
>     --   Override with -DENABLE_OCTOCLOCK=3DON/OFF
>     --     -- Configuring DPDK support...
>     --   Dependency ENABLE_MPMD =3D ON
>     --   Dependency DPDK_FOUND =3D FALSE
>     --   Disabling DPDK support.
>     --   Override with -DENABLE_DPDK=3DON/OFF
>     --     --     --     -- Configuring priority scheduling...
>     --   Priority scheduling supported through pthread_setschedparam.
>     --   Setting thread names is supported through pthread_setname_np.
>     --     -- Configuring high resolution timing...
>     --   High resolution timing supported through clock_gettime.
>     --     -- Configuring module loading...
>     --   Module loading supported through dlopen.
>     --     -- Processing NI-RIO FPGA LVBITX Bitstreams...
>     --   Using x300.lvbitx_base for codegen
>     --   Using x310.lvbitx_base for codegen
>     --     -- USB support enabled via libusb.
>     --     -- Configuring interface address discovery...
>     --   Interface address discovery supported through getifaddrs.
>     --     -- Loading build info.
>     --     -- Adding B2XX device test target
>     -- Adding X3x0 device test target
>     -- Adding N3XX device test target
>     -- Adding E32x device test target
>     --     CMake Warning at utils/CMakeLists.txt:123 (message):
>        Python module `requests' not found -- uhd_images_downloader.py
>     will not
>        work without it.
>
>
>     CMake Warning at utils/CMakeLists.txt:124 (message):
>        You may be able to install this by running 'pip install requests'
>
>
>     --     -- Configuring Manual support...
>     --   Dependency DOXYGEN_FOUND =3D YES
>     --   Enabling Manual support.
>     --   Override with -DENABLE_MANUAL=3DON/OFF
>     --     -- Configuring API/Doxygen support...
>     --   Dependency DOXYGEN_FOUND =3D YES
>     --   Enabling API/Doxygen support.
>     --   Override with -DENABLE_DOXYGEN=3DON/OFF
>     --     -- Configuring Man Pages support...
>     --   Dependency GZIP_FOUND =3D TRUE
>     --   Dependency NOT_WIN32 =3D TRUE
>     --   Enabling Man Pages support.
>     --   Override with -DENABLE_MAN_PAGES=3DON/OFF
>     --     -- Python checking for virtualenv
>     -- Python checking for virtualenv - "assert hasattr(sys,
>     'real_prefix')" failed
>     -- Utilizing the python install directory:
>     /usr/local/lib/python2.7/dist-packages
>     --     -- ######################################################
>     -- # UHD enabled components
>     -- ######################################################
>     --   * LibUHD
>     --   * LibUHD - C API
>     --   * LibUHD - Python API
>     --   * Examples
>     --   * Utils
>     --   * Tests
>     --   * USB
>     --   * GPSD
>     --   * B100
>     --   * B200
>     --   * USRP1
>     --   * USRP2
>     --   * X300
>     --   * N230
>     --   * MPMD
>     --   * N300
>     --   * N320
>     --   * E320
>     --   * OctoClock
>     --   * Manual
>     --   * API/Doxygen
>     --   * Man Pages
>     --     -- ######################################################
>     -- # UHD disabled components
>     -- ######################################################
>     --   * LIBERIO
>     --   * E300
>     --   * DPDK
>     --     -- ******************************************************
>     -- * You are building a development branch of UHD.
>     -- * These branches are designed to provide early access
>     -- * to UHD and USRP features, but should be considered
>     -- * unstable and/or experimental!
>     -- ******************************************************
>     -- Building version: 3.14.1.HEAD-0-g0347a6d8
>     -- Using install prefix: /usr/local
>     -- Configuring done
>     -- Generating done
>     -- Build files have been written to: /home/baroch/uhd/host/build
>     baroch@reliable:~/uhd/host/build$ make
>     Scanning dependencies of target uhd_rpclib
>     [  0%] Building CXX object
>     lib/deps/rpclib/CMakeFiles/uhd_rpclib.dir/lib/rpc/dispatcher.cc.o
>     In file included from
>     /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
>                       from
>     /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/dispatcher.h:12,
>                       from
>     /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/dispatcher.cc:1:
>     /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:
> In
>     function =E2=80=98void
>     clmdep_msgpack::v1::operator<<(clmdep_msgpack::v1::object&, const
>     msgpack_object&)=E2=80=99:
>
> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:613:=
34:
>     warning: =E2=80=98void* memcpy(void*, const void*, size_t)=E2=80=99 c=
opying an
>     object of non-trivial type =E2=80=98struct clmdep_msgpack::v1::object=
=E2=80=99 from
>     an array of =E2=80=98const msgpack_object=E2=80=99 {aka =E2=80=98cons=
t struct
>     msgpack_object=E2=80=99} [-Wclass-memaccess]
>        613 |     std::memcpy(&o, &v, sizeof(v));
>            |                                  ^
>     In file included from
>
> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/adaptor/adaptor=
_base.hpp:21,
>                       from
>
> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:24,
>                       from
>     /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
>                       from
>     /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/dispatcher.h:12,
>                       from
>     /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/dispatcher.cc:1:
>
> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object_fwd.hpp:=
111:8:
>     note: =E2=80=98struct clmdep_msgpack::v1::object=E2=80=99 declared he=
re
>        111 | struct object {
>            |        ^~~~~~
>     [  0%] Building CXX object
>     lib/deps/rpclib/CMakeFiles/uhd_rpclib.dir/lib/rpc/server.cc.o
>     In file included from
>     /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
>                       from
>     /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/server.h:7,
>                       from
>     /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/server.cc:1:
>     /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:
> In
>     function =E2=80=98void
>     clmdep_msgpack::v1::operator<<(clmdep_msgpack::v1::object&, const
>     msgpack_object&)=E2=80=99:
>
> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:613:=
34:
>     warning: =E2=80=98void* memcpy(void*, const void*, size_t)=E2=80=99 c=
opying an
>     object of non-trivial type =E2=80=98struct clmdep_msgpack::v1::object=
=E2=80=99 from
>     an array of =E2=80=98const msgpack_object=E2=80=99 {aka =E2=80=98cons=
t struct
>     msgpack_object=E2=80=99} [-Wclass-memaccess]
>        613 |     std::memcpy(&o, &v, sizeof(v));
>            |                                  ^
>     In file included from
>
> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/adaptor/adaptor=
_base.hpp:21,
>                       from
>
> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:24,
>                       from
>     /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
>                       from
>     /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/server.h:7,
>                       from
>     /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/server.cc:1:
>
> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object_fwd.hpp:=
111:8:
>     note: =E2=80=98struct clmdep_msgpack::v1::object=E2=80=99 declared he=
re
>        111 | struct object {
>            |        ^~~~~~
>
>
>     [ a lot of warnings truncated B.O.]
>
>
>
>     [ 22%] Building CXX object
> lib/CMakeFiles/uhd.dir/usrp/subdev_spec.cpp.o
>     [ 23%] Building CXX object
>     lib/CMakeFiles/uhd.dir/usrp/fe_connection.cpp.o
>     [ 23%] Building CXX object
>     lib/CMakeFiles/uhd.dir/usrp/dboard_eeprom_c.cpp.o
>     [ 23%] Building CXX object
>     lib/CMakeFiles/uhd.dir/usrp/mboard_eeprom_c.cpp.o
>     [ 23%] Building CXX object
>     lib/CMakeFiles/uhd.dir/usrp/subdev_spec_c.cpp.o
>     [ 23%] Building CXX object lib/CMakeFiles/uhd.dir/usrp/usrp_c.cpp.o
>     [ 23%] Building CXX object
> lib/CMakeFiles/uhd.dir/usrp/gpsd_iface.cpp.o
>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function
>     =E2=80=98int64_t uhd::usrp::gpsd_iface_impl::_epoch_time()=E2=80=99:
>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:141:62: error: cannot
>     convert =E2=80=98timespec_t=E2=80=99 {aka =E2=80=98timespec=E2=80=99}=
 to =E2=80=98time_t=E2=80=99 {aka =E2=80=98long int=E2=80=99}
>        141 |         return
>     (boost::posix_time::from_time_t(_gps_data.fix.time)
>            | ~~~~~~~~~~~~~~^~~~
>     |                                                              |
>     | timespec_t {aka timespec}
>     In file included from /usr/include/boost/thread/xtime.hpp:16,
>                       from /usr/include/boost/thread/pthread/mutex.hpp:20=
,
>                       from /usr/include/boost/thread/mutex.hpp:16,
>                       from
>     /usr/include/boost/thread/pthread/shared_mutex.hpp:14,
>                       from /usr/include/boost/thread/shared_mutex.hpp:28,
>                       from
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16:
>     /usr/include/boost/date_time/posix_time/conversion.hpp:27:33:
>     note:   initializing argument 1 of =E2=80=98boost::posix_time::ptime
>     boost::posix_time::from_time_t(time_t)=E2=80=99
>         27 |   ptime from_time_t(std::time_t t)
>            |                     ~~~~~~~~~~~~^
>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function
>     =E2=80=98boost::gregorian::date
> uhd::usrp::gpsd_iface_impl::_gregorian_date()=E2=80=99:
>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:148:61: error: cannot
>     convert =E2=80=98timespec_t=E2=80=99 {aka =E2=80=98timespec=E2=80=99}=
 to =E2=80=98time_t=E2=80=99 {aka =E2=80=98long int=E2=80=99}
>        148 |         return
>     boost::posix_time::from_time_t(_gps_data.fix.time).date();
>            | ~~~~~~~~~~~~~~^~~~
>     |                                                             |
>     | timespec_t {aka timespec}
>     In file included from /usr/include/boost/thread/xtime.hpp:16,
>                       from /usr/include/boost/thread/pthread/mutex.hpp:20=
,
>                       from /usr/include/boost/thread/mutex.hpp:16,
>                       from
>     /usr/include/boost/thread/pthread/shared_mutex.hpp:14,
>                       from /usr/include/boost/thread/shared_mutex.hpp:28,
>                       from
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16:
>     /usr/include/boost/date_time/posix_time/conversion.hpp:27:33:
>     note:   initializing argument 1 of =E2=80=98boost::posix_time::ptime
>     boost::posix_time::from_time_t(time_t)=E2=80=99
>         27 |   ptime from_time_t(std::time_t t)
>            |                     ~~~~~~~~~~~~^
>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function
>     =E2=80=98std::string uhd::usrp::gpsd_iface_impl::_gps_gprmc()=E2=80=
=99:
>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:206:49: error: invalid
>     cast from type =E2=80=98timespec_t=E2=80=99 {aka =E2=80=98timespec=E2=
=80=99} to type =E2=80=98time_t=E2=80=99 {aka
>     =E2=80=98long int=E2=80=99}
>        206 |             intfixtime =3D (time_t) _gps_data.fix.time;
>            |                                                 ^~~~
>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function
>     =E2=80=98std::string uhd::usrp::gpsd_iface_impl::_gps_gpgga()=E2=80=
=99:
>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:241:45: error: invalid
>     cast from type =E2=80=98timespec_t=E2=80=99 {aka =E2=80=98timespec=E2=
=80=99} to type =E2=80=98time_t=E2=80=99 {aka
>     =E2=80=98long int=E2=80=99}
>        241 |         intfixtime =3D (time_t) _gps_data.fix.time;
>            |                                             ^~~~
>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:268:42: error: =E2=80=
=98struct
>     gps_data_t=E2=80=99 has no member named =E2=80=98separation=E2=80=99
>        268 |         if (boost::math::isnan(_gps_data.separation))
>            |                                          ^~~~~~~~~~
>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:58: error: =E2=80=
=98struct
>     gps_data_t=E2=80=99 has no member named =E2=80=98separation=E2=80=99
>        272 |                 str(boost::format("%.3f,M,") %
>     _gps_data.separation));
>            | ^~~~~~~~~~
>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:17: error: =E2=80=
=98str=E2=80=99
>     was not declared in this scope
>        272 |                 str(boost::format("%.3f,M,") %
>     _gps_data.separation));
>            |                 ^~~
>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:17: note:
>     suggested alternatives:
>     In file included from /usr/include/boost/format.hpp:53,
>                       from
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:15:
>     /usr/include/boost/format/free_funcs.hpp:22:38: note: =E2=80=98boost:=
:str=E2=80=99
>         22 |     std::basic_string<Ch, Tr, Alloc> str(const
>     basic_format<Ch, Tr, Alloc>& f) {
>            |                                      ^~~
>     /usr/include/boost/format/free_funcs.hpp:22:38: note: =E2=80=98boost:=
:str=E2=80=99
>     make[2]: *** [lib/CMakeFiles/uhd.dir/build.make:1303:
>     lib/CMakeFiles/uhd.dir/usrp/gpsd_iface.cpp.o] Error 1
>     make[1]: *** [CMakeFiles/Makefile2:731: lib/CMakeFiles/uhd.dir/all]
>     Error 2
>     make: *** [Makefile:163: all] Error 2
>
> Thanks,
>
> Baroch Oren
>
>
>
> --
>
> =D7=91=D7=A8=D7=95=D7=9A =D7=90=D7=95=D7=A8=D7=9F =D8=A8=D8=B1=D9=88=D8=
=AD =D8=A7=D9=88=D8=B1=D9=86 Baroch Oren
>
> =D7=98=D7=9C' 058-7799233 cell
>
> =D7=AA=D7=9E=D7=9B=D7=95 =D7=91=D7=90=D7=A7=D7=98=D7=99=D7=91=D7=99=D7=96=
=D7=9D =D7=A9=D7=9C=D7=99 support my activism
> <https://www.patreon.com/barochoren> <https://www.patreon.com/barochoren>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> --
>
> =D7=91=D7=A8=D7=95=D7=9A =D7=90=D7=95=D7=A8=D7=9F =D8=A8=D8=B1=D9=88=D8=
=AD =D8=A7=D9=88=D8=B1=D9=86 Baroch Oren
>
> =D7=98=D7=9C' 058-7799233 cell
>
> =D7=AA=D7=9E=D7=9B=D7=95 =D7=91=D7=90=D7=A7=D7=98=D7=99=D7=91=D7=99=D7=96=
=D7=9D =D7=A9=D7=9C=D7=99 support my activism
> <https://www.patreon.com/barochoren>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c128b605b2d425e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>This branch will allow you to build UH=
D 4.0.0 from source on Ubuntu 20.04:=C2=A0 <a href=3D"https://github.com/Et=
tusResearch/uhd/tree/atrnati/ubuntu-20.04-workaround">https://github.com/Et=
tusResearch/uhd/tree/atrnati/ubuntu-20.04-workaround</a></div><div></div><d=
iv><br></div><div>You could also try disabling the GPSDO if you don&#39;t n=
eed it with the cmake argument=C2=A0 <i>-DENABLE_GPSD=3DOFF</i></div><div><=
br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, Oct 29, 2020 at 5:21 AM Baroch Oren via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
   =20
 =20
  <div style=3D"direction:rtl">
    <p style=3D"direction:ltr">Thank you so much Johannes for the prompt
      reply. It was very helpful.</p>
    <p style=3D"direction:ltr">Actually I just need to build UHD HOST
      from source, as I&#39;m tweaking code from the examples directory.</p=
>
    <p style=3D"direction:ltr"><br>
    </p>
    <p style=3D"direction:ltr">I&#39;ve removed python 2 &amp; 2.7 from the
      system completely. now only python 3 is there.</p>
    <p style=3D"direction:ltr">still same casting errors for compiling
      3.14 in file gpsd_iface.cpp</p>
    <p style=3D"direction:ltr"><br>
    </p>
    <p style=3D"direction:ltr">here:<br>
    </p>
    <p style=3D"direction:ltr">baroch@reliable:~/uhd/host/build$ make<br>
      [=C2=A0 2%] Built target uhd_rpclib<br>
      [=C2=A0 2%] Building CXX object
      lib/CMakeFiles/uhd.dir/usrp/gpsd_iface.cpp.o<br>
      /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function
      =E2=80=98int64_t uhd::usrp::gpsd_iface_impl::_epoch_time()=E2=80=99:<=
br>
      /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:141:62: error:
      cannot convert =E2=80=98timespec_t=E2=80=99 {aka =E2=80=98timespec=E2=
=80=99} to =E2=80=98time_t=E2=80=99 {aka
      =E2=80=98long int=E2=80=99}<br>
      =C2=A0 141 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return
      (boost::posix_time::from_time_t(_gps_data.fix.time)<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
      ~~~~~~~~~~~~~~^~~~<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
      |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 |<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
      |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
      timespec_t {aka timespec}<br>
      In file included from /usr/include/boost/thread/xtime.hpp:16,<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
      /usr/include/boost/thread/pthread/mutex.hpp:20,<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /usr/include/boost/thread/mutex.hpp:16,<br=
>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
      /usr/include/boost/thread/pthread/shared_mutex.hpp:14,<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
      /usr/include/boost/thread/shared_mutex.hpp:28,<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
      /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16:<br>
      /usr/include/boost/date_time/posix_time/conversion.hpp:27:33:
      note:=C2=A0=C2=A0 initializing argument 1 of =E2=80=98boost::posix_ti=
me::ptime
      boost::posix_time::from_time_t(time_t)=E2=80=99<br>
      =C2=A0=C2=A0 27 |=C2=A0=C2=A0 ptime from_time_t(std::time_t t)<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 ~~~~~~~~~~~~^<br>
      /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function
      =E2=80=98boost::gregorian::date
      uhd::usrp::gpsd_iface_impl::_gregorian_date()=E2=80=99:<br>
      /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:148:61: error:
      cannot convert =E2=80=98timespec_t=E2=80=99 {aka =E2=80=98timespec=E2=
=80=99} to =E2=80=98time_t=E2=80=99 {aka
      =E2=80=98long int=E2=80=99}<br>
      =C2=A0 148 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return
      boost::posix_time::from_time_t(_gps_data.fix.time).date();<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0
      ~~~~~~~~~~~~~~^~~~<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
      |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
      |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
      timespec_t {aka timespec}<br>
      In file included from /usr/include/boost/thread/xtime.hpp:16,<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
      /usr/include/boost/thread/pthread/mutex.hpp:20,<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /usr/include/boost/thread/mutex.hpp:16,<br=
>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
      /usr/include/boost/thread/pthread/shared_mutex.hpp:14,<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
      /usr/include/boost/thread/shared_mutex.hpp:28,<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
      /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16:<br>
      /usr/include/boost/date_time/posix_time/conversion.hpp:27:33:
      note:=C2=A0=C2=A0 initializing argument 1 of =E2=80=98boost::posix_ti=
me::ptime
      boost::posix_time::from_time_t(time_t)=E2=80=99<br>
      =C2=A0=C2=A0 27 |=C2=A0=C2=A0 ptime from_time_t(std::time_t t)<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 ~~~~~~~~~~~~^<br>
      /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function
      =E2=80=98std::string uhd::usrp::gpsd_iface_impl::_gps_gprmc()=E2=80=
=99:<br>
      /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:206:49: error:
      invalid cast from type =E2=80=98timespec_t=E2=80=99 {aka =E2=80=98tim=
espec=E2=80=99} to type
      =E2=80=98time_t=E2=80=99 {aka =E2=80=98long int=E2=80=99}<br>
      =C2=A0 206 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 intfixtime =3D (time_t) _gps_data.fix.time;<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~<br>
      /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function
      =E2=80=98std::string uhd::usrp::gpsd_iface_impl::_gps_gpgga()=E2=80=
=99:<br>
      /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:241:45: error:
      invalid cast from type =E2=80=98timespec_t=E2=80=99 {aka =E2=80=98tim=
espec=E2=80=99} to type
      =E2=80=98time_t=E2=80=99 {aka =E2=80=98long int=E2=80=99}<br>
      =C2=A0 241 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intfixti=
me =3D (time_t) _gps_data.fix.time;<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ^~~~<br>
      /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:268:42: error:
      =E2=80=98struct gps_data_t=E2=80=99 has no member named =E2=80=98sepa=
ration=E2=80=99<br>
      =C2=A0 268 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (boos=
t::math::isnan(_gps_data.separation))<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~<br>
      /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:58: error:
      =E2=80=98struct gps_data_t=E2=80=99 has no member named =E2=80=98sepa=
ration=E2=80=99<br>
      =C2=A0 272 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 str(boost::format(&quot;%.3f,M,&quo=
t;) %
      _gps_data.separation));<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0
      ^~~~~~~~~~<br>
      /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:17: error: =E2=80=
=98str=E2=80=99
      was not declared in this scope<br>
      =C2=A0 272 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 str(boost::format(&quot;%.3f,M,&quo=
t;) %
      _gps_data.separation));<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~<br>
      /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:17: note:
      suggested alternatives:<br>
      In file included from /usr/include/boost/format.hpp:53,<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
      /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:15:<br>
      /usr/include/boost/format/free_funcs.hpp:22:38: note:=C2=A0=C2=A0
      =E2=80=98boost::str=E2=80=99<br>
      =C2=A0=C2=A0 22 |=C2=A0=C2=A0=C2=A0=C2=A0 std::basic_string&lt;Ch, Tr=
, Alloc&gt; str(const
      basic_format&lt;Ch, Tr, Alloc&gt;&amp; f) {<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~<br>
      <br>
      - Baroch<br>
    </p>
    <p style=3D"direction:ltr"><br>
    </p>
    <p style=3D"direction:ltr"><br>
    </p>
    <div style=3D"direction:ltr">On 29/10/2020
      12:12, Johannes Demel via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite" style=3D"direction:ltr">Hi Baroch,
      <br>
      <br>
      Do you need UHD 3.14? UHD 3.15 is probably easier to install on
      your system.
      <br>
      <br>
      Besides, the missing dependencies indicate that you want to
      install a really old version of UHD? or GNU Radio? On a modern
      system. The clock ran out on Python2. For some reason cmake seems
      to find a python2 install on your system. That wasn&#39;t there by
      default. And it would probably be good to not have it there to
      minimize potential mixups.
      <br>
      <br>
      Further, your system lacks Qt4 which is again really old and
      everything should be ported to Qt5 by now. At least GNU Radio
      works with Qt5.
      <br>
      <br>
      Besides, unfortunately the guide you link to lacks Ubuntu 20.04
      instructions which differ.
      <br>
      <br>
      This would be the required list of dependencies on 20.04:
      <br>
<a href=3D"https://wiki.gnuradio.org/index.php/UbuntuInstall#Focal_Fossa_.2=
820.04.29" target=3D"_blank">https://wiki.gnuradio.org/index.php/UbuntuInst=
all#Focal_Fossa_.2820.04.29</a>
      <br>
      <br>
      If you want to install UHD only, you might also go for
      `libuhd-dev` and `python3-uhd`. These should install UHD 3.15 on
      your system as well. No need for a source install.
      <br>
      <br>
      Cheers
      <br>
      Johannes
      <br>
      <br>
      On 29.10.20 10:53, Baroch Oren via USRP-users wrote:
      <br>
      <blockquote type=3D"cite" style=3D"direction:ltr">Hello,
        <br>
        <br>
        I&#39;ve been following Application Note AN-445
<a href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Sourc=
e_Toolchain_(UHD_and_GNU_Radio)_on_Linux" target=3D"_blank">https://kb.ettu=
s.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_R=
adio)_on_Linux</a><br>
        <br>
        Couldn&#39;t build it. Please advise.
        <br>
        <br>
        <br>
        These are the requirements that were reported missing on the
        apt-get line:
        <br>
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package libcppunit-1.14-0
        <br>
        =C2=A0=C2=A0=C2=A0 E: Package &#39;python-scipy&#39; has no install=
ation candidate
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package qt4-bin-dbg
        <br>
        =C2=A0=C2=A0=C2=A0 E: Package &#39;qt4-default&#39; has no installa=
tion candidate
        <br>
        =C2=A0=C2=A0=C2=A0 E: Package &#39;qt4-doc&#39; has no installation=
 candidate
        <br>
        =C2=A0=C2=A0=C2=A0 E: Package &#39;libqt4-dev&#39; has no installat=
ion candidate
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package libqt4-dev-bin
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package python-qt4
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package python-qt4-dbg
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package python-qt4-dev
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package python-qt4-doc
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package libqwt6abi1
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package libncurses6-dbg
        <br>
        =C2=A0=C2=A0=C2=A0 E: Package &#39;libqt4-dev&#39; has no installat=
ion candidate
        <br>
        =C2=A0=C2=A0=C2=A0 E: Package &#39;qt4-default&#39; has no installa=
tion candidate
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package qt4-dev-tools
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package pyqt4-dev-tools
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package python-qwt5-qt4
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package python-gtk2
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package python-requests
        <br>
        =C2=A0=C2=A0=C2=A0 E: Package &#39;python-sphinx&#39; has no instal=
lation candidate
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package python-zmq
        <br>
        =C2=A0=C2=A0=C2=A0 E: Package &#39;libqwt-dev&#39; has no installat=
ion candidate
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package libqwt6abi1
        <br>
        =C2=A0=C2=A0=C2=A0 E: Unable to locate package libgps23
        <br>
        =C2=A0=C2=A0=C2=A0 E: Package &#39;python-gps&#39; has no installat=
ion candidate
        <br>
        <br>
        following attempt to make &amp; build gives countless warning
        and tthe following error:
        <br>
        <br>
        =C2=A0=C2=A0=C2=A0 baroch@reliable:~/uhd/host/build$ cmake -DENABLE=
_GPSD=3DON ../
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring the python =
interpreter...
        <br>
        =C2=A0=C2=A0=C2=A0 -- Python interpreter: /usr/bin/python2
        <br>
        =C2=A0=C2=A0=C2=A0 -- Override with: -DPYTHON_EXECUTABLE=3D&lt;path=
-to-python&gt;
        <br>
        =C2=A0=C2=A0=C2=A0 -- Python runtime interpreter: /usr/bin/python2
        <br>
        =C2=A0=C2=A0=C2=A0 -- Override with:
        -DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;
        <br>
        =C2=A0=C2=A0=C2=A0 -- Working off of feature or development branch.=
 Updating
        version
        <br>
        =C2=A0=C2=A0=C2=A0 number.
        <br>
        =C2=A0=C2=A0=C2=A0 -- Using UHD Images Directory: /usr/local/share/=
uhd/images
        <br>
        =C2=A0=C2=A0=C2=A0 -- Build type not specified: defaulting to relea=
se.
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring Boost C++ L=
ibraries...
        <br>
        =C2=A0=C2=A0=C2=A0 -- Looking for optional Boost components...
        <br>
        =C2=A0=C2=A0=C2=A0 -- Found Boost:
        <br>
        =C2=A0=C2=A0=C2=A0
        /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake
        <br>
        =C2=A0=C2=A0=C2=A0 (found suitable version &quot;1.71.0&quot;, mini=
mum required is
        &quot;1.53&quot;) found
        <br>
        =C2=A0=C2=A0=C2=A0 components: python
        <br>
        =C2=A0=C2=A0=C2=A0 -- Looking for required Boost components...
        <br>
        =C2=A0=C2=A0=C2=A0 -- Found Boost:
        <br>
        =C2=A0=C2=A0=C2=A0
        /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake
        <br>
        =C2=A0=C2=A0=C2=A0 (found suitable version &quot;1.71.0&quot;, mini=
mum required is
        &quot;1.53&quot;) found
        <br>
        =C2=A0=C2=A0=C2=A0 components: chrono date_time filesystem program_=
options
        regex system
        <br>
        =C2=A0=C2=A0=C2=A0 unit_test_framework serialization thread
        <br>
        =C2=A0=C2=A0=C2=A0 -- Boost include directories: /usr/include
        <br>
        =C2=A0=C2=A0=C2=A0 -- Boost library directories: /usr/lib/x86_64-li=
nux-gnu
        <br>
        =C2=A0=C2=A0=C2=A0 -- Boost libraries:
        <br>
        =C2=A0=C2=A0=C2=A0
Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_options;Boo=
st::regex;Boost::system;Boost::unit_test_framework;Boost::serialization;Boo=
st::thread<br>
        =C2=A0=C2=A0=C2=A0 CMake Warning (dev) at cmake/Modules/UHDLog.cmak=
e:68 (set):
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 implicitly converting &#39;FILE&#39=
; to &#39;STRING&#39; type.
        <br>
        =C2=A0=C2=A0=C2=A0 Call Stack (most recent call first):
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 CMakeLists.txt:365 (include)
        <br>
        =C2=A0=C2=A0=C2=A0 This warning is for project developers.=C2=A0 Us=
e -Wno-dev to
        suppress it.
        <br>
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Python checking for Pyt=
hon version 2.7 or greater
        <br>
        =C2=A0=C2=A0=C2=A0 -- Python checking for Python version 2.7 or gre=
ater - found
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Python checking for Mak=
o templates 0.4.2 or
        greater
        <br>
        =C2=A0=C2=A0=C2=A0 -- Python checking for Mako templates 0.4.2 or g=
reater -
        found
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Python checking for req=
uests 2.0 or greater
        <br>
        =C2=A0=C2=A0=C2=A0 -- Python checking for requests 2.0 or greater -=
 &quot;import
        requests&quot;
        <br>
        =C2=A0=C2=A0=C2=A0 failed
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Python checking for num=
py 1.7 or greater
        <br>
        =C2=A0=C2=A0=C2=A0 -- Python checking for numpy 1.7 or greater - fo=
und
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring LibUHD supp=
ort...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency Boost_FOUND =3D TRUE
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency HAVE_PYTHON_PLAT_MIN_V=
ERSION =3D TRUE
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency HAVE_PYTHON_MODULE_MAK=
O =3D TRUE
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling LibUHD support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_LIBUHD=3DO=
N/OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring LibUHD - C =
API support...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling LibUHD - C API support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_C_API=3DON=
/OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring LibUHD - Py=
thon API support...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency BOOST_PYTHON_FOUND =3D=
 1
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency HAVE_PYTHON_MODULE_NUM=
PY =3D TRUE
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency PythonLibs_FOUND =3D T=
RUE
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling LibUHD - Python API supp=
ort.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_PYTHON_API=
=3DON/OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring Examples su=
pport...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling Examples support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_EXAMPLES=
=3DON/OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring Utils suppo=
rt...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling Utils support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_UTILS=3DON=
/OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring Tests suppo=
rt...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling Tests support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_TESTS=3DON=
/OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Could NOT find LIBERIO =
(missing: LIBERIO_LIBRARY
        <br>
        =C2=A0=C2=A0=C2=A0 LIBERIO_INCLUDE_DIR)
        <br>
        =C2=A0=C2=A0=C2=A0 -- Could NOT find dpdk (missing: DPDK_INCLUDE_DI=
R)
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring LIBERIO sup=
port...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency LIBERIO_FOUND =3D FALS=
E
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Disabling LIBERIO support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_LIBERIO=3D=
ON/OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring USB support=
...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency LIBUSB_FOUND =3D TRUE
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling USB support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_USB=3DON/O=
FF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring GPSD suppor=
t...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_GPSD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency LIBGPS_FOUND =3D TRUE
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling GPSD support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_GPSD=3DON/=
OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring B100 suppor=
t...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_USB =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling B100 support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_B100=3DON/=
OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring B200 suppor=
t...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_USB =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling B200 support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_B200=3DON/=
OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring E300 suppor=
t...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Disabling E300 support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_E300=3DON/=
OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring USRP1 suppo=
rt...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_USB =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling USRP1 support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_USRP1=3DON=
/OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring USRP2 suppo=
rt...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling USRP2 support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_USRP2=3DON=
/OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring X300 suppor=
t...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling X300 support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_X300=3DON/=
OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring N230 suppor=
t...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling N230 support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_N230=3DON/=
OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring MPMD suppor=
t...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling MPMD support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_MPMD=3DON/=
OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring N300 suppor=
t...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_MPMD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling N300 support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_N300=3DON/=
OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring N320 suppor=
t...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_MPMD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling N320 support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_N320=3DON/=
OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring E320 suppor=
t...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_MPMD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling E320 support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_E320=3DON/=
OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring OctoClock s=
upport...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_LIBUHD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling OctoClock support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_OCTOCLOCK=
=3DON/OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring DPDK suppor=
t...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency ENABLE_MPMD =3D ON
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency DPDK_FOUND =3D FALSE
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Disabling DPDK support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_DPDK=3DON/=
OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- =
=C2=A0=C2=A0=C2=A0 -- Configuring priority scheduling...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Priority scheduling supported thr=
ough
        pthread_setschedparam.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Setting thread names is supported=
 through
        pthread_setname_np.
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring high resolu=
tion timing...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 High resolution timing supported =
through clock_gettime.
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring module load=
ing...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Module loading supported through =
dlopen.
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Processing NI-RIO FPGA =
LVBITX Bitstreams...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Using x300.lvbitx_base for codege=
n
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Using x310.lvbitx_base for codege=
n
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- USB support enabled via=
 libusb.
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring interface a=
ddress discovery...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Interface address discovery suppo=
rted through
        getifaddrs.
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Loading build info.
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Adding B2XX device test=
 target
        <br>
        =C2=A0=C2=A0=C2=A0 -- Adding X3x0 device test target
        <br>
        =C2=A0=C2=A0=C2=A0 -- Adding N3XX device test target
        <br>
        =C2=A0=C2=A0=C2=A0 -- Adding E32x device test target
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 CMake Warning at utils/CMa=
keLists.txt:123 (message):
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 Python module `requests&#39; not fo=
und --
        uhd_images_downloader.py
        <br>
        =C2=A0=C2=A0=C2=A0 will not
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 work without it.
        <br>
        <br>
        <br>
        =C2=A0=C2=A0=C2=A0 CMake Warning at utils/CMakeLists.txt:124 (messa=
ge):
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 You may be able to install this by =
running &#39;pip install
        requests&#39;
        <br>
        <br>
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring Manual supp=
ort...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency DOXYGEN_FOUND =3D YES
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling Manual support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_MANUAL=3DO=
N/OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring API/Doxygen=
 support...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency DOXYGEN_FOUND =3D YES
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling API/Doxygen support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_DOXYGEN=3D=
ON/OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Configuring Man Pages s=
upport...
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency GZIP_FOUND =3D TRUE
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Dependency NOT_WIN32 =3D TRUE
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Enabling Man Pages support.
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 Override with -DENABLE_MAN_PAGES=
=3DON/OFF
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 -- Python checking for vir=
tualenv
        <br>
        =C2=A0=C2=A0=C2=A0 -- Python checking for virtualenv - &quot;assert=
 hasattr(sys,
        <br>
        =C2=A0=C2=A0=C2=A0 &#39;real_prefix&#39;)&quot; failed
        <br>
        =C2=A0=C2=A0=C2=A0 -- Utilizing the python install directory:
        <br>
        =C2=A0=C2=A0=C2=A0 /usr/local/lib/python2.7/dist-packages
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 --
        ######################################################
        <br>
        =C2=A0=C2=A0=C2=A0 -- # UHD enabled components
        <br>
        =C2=A0=C2=A0=C2=A0 -- #############################################=
#########
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * LibUHD
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * LibUHD - C API
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * LibUHD - Python API
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * Examples
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * Utils
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * Tests
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * USB
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * GPSD
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * B100
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * B200
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * USRP1
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * USRP2
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * X300
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * N230
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * MPMD
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * N300
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * N320
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * E320
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * OctoClock
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * Manual
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * API/Doxygen
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * Man Pages
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 --
        ######################################################
        <br>
        =C2=A0=C2=A0=C2=A0 -- # UHD disabled components
        <br>
        =C2=A0=C2=A0=C2=A0 -- #############################################=
#########
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * LIBERIO
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * E300
        <br>
        =C2=A0=C2=A0=C2=A0 --=C2=A0=C2=A0 * DPDK
        <br>
        =C2=A0=C2=A0=C2=A0 -- =C2=A0=C2=A0=C2=A0 --
        ******************************************************
        <br>
        =C2=A0=C2=A0=C2=A0 -- * You are building a development branch of UH=
D.
        <br>
        =C2=A0=C2=A0=C2=A0 -- * These branches are designed to provide earl=
y access
        <br>
        =C2=A0=C2=A0=C2=A0 -- * to UHD and USRP features, but should be con=
sidered
        <br>
        =C2=A0=C2=A0=C2=A0 -- * unstable and/or experimental!
        <br>
        =C2=A0=C2=A0=C2=A0 -- *********************************************=
*********
        <br>
        =C2=A0=C2=A0=C2=A0 -- Building version: 3.14.1.HEAD-0-g0347a6d8
        <br>
        =C2=A0=C2=A0=C2=A0 -- Using install prefix: /usr/local
        <br>
        =C2=A0=C2=A0=C2=A0 -- Configuring done
        <br>
        =C2=A0=C2=A0=C2=A0 -- Generating done
        <br>
        =C2=A0=C2=A0=C2=A0 -- Build files have been written to:
        /home/baroch/uhd/host/build
        <br>
        =C2=A0=C2=A0=C2=A0 baroch@reliable:~/uhd/host/build$ make
        <br>
        =C2=A0=C2=A0=C2=A0 Scanning dependencies of target uhd_rpclib
        <br>
        =C2=A0=C2=A0=C2=A0 [=C2=A0 0%] Building CXX object
        <br>
        =C2=A0=C2=A0=C2=A0
        lib/deps/rpclib/CMakeFiles/uhd_rpclib.dir/lib/rpc/dispatcher.cc.o
        <br>
        =C2=A0=C2=A0=C2=A0 In file included from
        <br>
        =C2=A0=C2=A0=C2=A0
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        <br>
        =C2=A0=C2=A0=C2=A0
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/dispatcher.h:12,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        <br>
        =C2=A0=C2=A0=C2=A0
        /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/dispatcher.cc:1:
        <br>
        =C2=A0=C2=A0=C2=A0
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hp=
p:
        In
        <br>
        =C2=A0=C2=A0=C2=A0 function =E2=80=98void
        <br>
        =C2=A0=C2=A0=C2=A0
        clmdep_msgpack::v1::operator&lt;&lt;(clmdep_msgpack::v1::object&amp=
;,
        const
        <br>
        =C2=A0=C2=A0=C2=A0 msgpack_object&amp;)=E2=80=99:
        <br>
        =C2=A0=C2=A0=C2=A0
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:613:34=
:<br>
        =C2=A0=C2=A0=C2=A0 warning: =E2=80=98void* memcpy(void*, const void=
*, size_t)=E2=80=99 copying
        an
        <br>
        =C2=A0=C2=A0=C2=A0 object of non-trivial type =E2=80=98struct
        clmdep_msgpack::v1::object=E2=80=99 from
        <br>
        =C2=A0=C2=A0=C2=A0 an array of =E2=80=98const msgpack_object=E2=80=
=99 {aka =E2=80=98const struct
        <br>
        =C2=A0=C2=A0=C2=A0 msgpack_object=E2=80=99} [-Wclass-memaccess]
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 613 |=C2=A0=C2=A0=C2=A0=C2=A0 std::=
memcpy(&amp;o, &amp;v, sizeof(v));
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
        <br>
        =C2=A0=C2=A0=C2=A0 In file included from
        <br>
        =C2=A0=C2=A0=C2=A0
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/adaptor/adaptor_b=
ase.hpp:21,<br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        <br>
        =C2=A0=C2=A0=C2=A0
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hp=
p:24,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        <br>
        =C2=A0=C2=A0=C2=A0
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        <br>
        =C2=A0=C2=A0=C2=A0
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/dispatcher.h:12,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        <br>
        =C2=A0=C2=A0=C2=A0
        /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/dispatcher.cc:1:
        <br>
        =C2=A0=C2=A0=C2=A0
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object_fwd.hpp:11=
1:8:<br>
        =C2=A0=C2=A0=C2=A0 note: =E2=80=98struct clmdep_msgpack::v1::object=
=E2=80=99 declared here
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 111 | struct object {
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~
        <br>
        =C2=A0=C2=A0=C2=A0 [=C2=A0 0%] Building CXX object
        <br>
        =C2=A0=C2=A0=C2=A0
        lib/deps/rpclib/CMakeFiles/uhd_rpclib.dir/lib/rpc/server.cc.o
        <br>
        =C2=A0=C2=A0=C2=A0 In file included from
        <br>
        =C2=A0=C2=A0=C2=A0
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        <br>
        =C2=A0=C2=A0=C2=A0
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/server.h:7,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        <br>
        =C2=A0=C2=A0=C2=A0 /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/se=
rver.cc:1:
        <br>
        =C2=A0=C2=A0=C2=A0
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hp=
p:
        In
        <br>
        =C2=A0=C2=A0=C2=A0 function =E2=80=98void
        <br>
        =C2=A0=C2=A0=C2=A0
        clmdep_msgpack::v1::operator&lt;&lt;(clmdep_msgpack::v1::object&amp=
;,
        const
        <br>
        =C2=A0=C2=A0=C2=A0 msgpack_object&amp;)=E2=80=99:
        <br>
        =C2=A0=C2=A0=C2=A0
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:613:34=
:<br>
        =C2=A0=C2=A0=C2=A0 warning: =E2=80=98void* memcpy(void*, const void=
*, size_t)=E2=80=99 copying
        an
        <br>
        =C2=A0=C2=A0=C2=A0 object of non-trivial type =E2=80=98struct
        clmdep_msgpack::v1::object=E2=80=99 from
        <br>
        =C2=A0=C2=A0=C2=A0 an array of =E2=80=98const msgpack_object=E2=80=
=99 {aka =E2=80=98const struct
        <br>
        =C2=A0=C2=A0=C2=A0 msgpack_object=E2=80=99} [-Wclass-memaccess]
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 613 |=C2=A0=C2=A0=C2=A0=C2=A0 std::=
memcpy(&amp;o, &amp;v, sizeof(v));
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
        <br>
        =C2=A0=C2=A0=C2=A0 In file included from
        <br>
        =C2=A0=C2=A0=C2=A0
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/adaptor/adaptor_b=
ase.hpp:21,<br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        <br>
        =C2=A0=C2=A0=C2=A0
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hp=
p:24,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        <br>
        =C2=A0=C2=A0=C2=A0
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        <br>
        =C2=A0=C2=A0=C2=A0
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/server.h:7,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        <br>
        =C2=A0=C2=A0=C2=A0 /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/se=
rver.cc:1:
        <br>
        =C2=A0=C2=A0=C2=A0
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object_fwd.hpp:11=
1:8:<br>
        =C2=A0=C2=A0=C2=A0 note: =E2=80=98struct clmdep_msgpack::v1::object=
=E2=80=99 declared here
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 111 | struct object {
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~
        <br>
        <br>
        <br>
        =C2=A0=C2=A0=C2=A0 [ a lot of warnings truncated B.O.]
        <br>
        <br>
        <br>
        <br>
        =C2=A0=C2=A0=C2=A0 [ 22%] Building CXX object
        lib/CMakeFiles/uhd.dir/usrp/subdev_spec.cpp.o
        <br>
        =C2=A0=C2=A0=C2=A0 [ 23%] Building CXX object
        <br>
        =C2=A0=C2=A0=C2=A0 lib/CMakeFiles/uhd.dir/usrp/fe_connection.cpp.o
        <br>
        =C2=A0=C2=A0=C2=A0 [ 23%] Building CXX object
        <br>
        =C2=A0=C2=A0=C2=A0 lib/CMakeFiles/uhd.dir/usrp/dboard_eeprom_c.cpp.=
o
        <br>
        =C2=A0=C2=A0=C2=A0 [ 23%] Building CXX object
        <br>
        =C2=A0=C2=A0=C2=A0 lib/CMakeFiles/uhd.dir/usrp/mboard_eeprom_c.cpp.=
o
        <br>
        =C2=A0=C2=A0=C2=A0 [ 23%] Building CXX object
        <br>
        =C2=A0=C2=A0=C2=A0 lib/CMakeFiles/uhd.dir/usrp/subdev_spec_c.cpp.o
        <br>
        =C2=A0=C2=A0=C2=A0 [ 23%] Building CXX object
        lib/CMakeFiles/uhd.dir/usrp/usrp_c.cpp.o
        <br>
        =C2=A0=C2=A0=C2=A0 [ 23%] Building CXX object
        lib/CMakeFiles/uhd.dir/usrp/gpsd_iface.cpp.o
        <br>
        =C2=A0=C2=A0=C2=A0 /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: I=
n member
        function
        <br>
        =C2=A0=C2=A0=C2=A0 =E2=80=98int64_t uhd::usrp::gpsd_iface_impl::_ep=
och_time()=E2=80=99:
        <br>
        =C2=A0=C2=A0=C2=A0 /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:14=
1:62: error:
        cannot
        <br>
        =C2=A0=C2=A0=C2=A0 convert =E2=80=98timespec_t=E2=80=99 {aka =E2=80=
=98timespec=E2=80=99} to =E2=80=98time_t=E2=80=99 {aka =E2=80=98long
        int=E2=80=99}
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 141 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 return
        <br>
        =C2=A0=C2=A0=C2=A0 (boost::posix_time::from_time_t(_gps_data.fix.ti=
me)
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ~~~~~~~~~=
~~~~~^~~~
        <br>
        =C2=A0=C2=A0=C2=A0
        |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 |
        <br>
        =C2=A0=C2=A0=C2=A0 | timespec_t {aka timespec}
        <br>
        =C2=A0=C2=A0=C2=A0 In file included from
        /usr/include/boost/thread/xtime.hpp:16,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        /usr/include/boost/thread/pthread/mutex.hpp:20,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        /usr/include/boost/thread/mutex.hpp:16,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        <br>
        =C2=A0=C2=A0=C2=A0 /usr/include/boost/thread/pthread/shared_mutex.h=
pp:14,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        /usr/include/boost/thread/shared_mutex.hpp:28,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16:
        <br>
        =C2=A0=C2=A0=C2=A0
        /usr/include/boost/date_time/posix_time/conversion.hpp:27:33:
        <br>
        =C2=A0=C2=A0=C2=A0 note:=C2=A0=C2=A0 initializing argument 1 of =E2=
=80=98boost::posix_time::ptime
        <br>
        =C2=A0=C2=A0=C2=A0 boost::posix_time::from_time_t(time_t)=E2=80=99
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 27 |=C2=A0=C2=A0 ptime from_t=
ime_t(std::time_t t)
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~~~~~^
        <br>
        =C2=A0=C2=A0=C2=A0 /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: I=
n member
        function
        <br>
        =C2=A0=C2=A0=C2=A0 =E2=80=98boost::gregorian::date
        uhd::usrp::gpsd_iface_impl::_gregorian_date()=E2=80=99:
        <br>
        =C2=A0=C2=A0=C2=A0 /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:14=
8:61: error:
        cannot
        <br>
        =C2=A0=C2=A0=C2=A0 convert =E2=80=98timespec_t=E2=80=99 {aka =E2=80=
=98timespec=E2=80=99} to =E2=80=98time_t=E2=80=99 {aka =E2=80=98long
        int=E2=80=99}
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 148 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 return
        <br>
        =C2=A0=C2=A0=C2=A0 boost::posix_time::from_time_t(_gps_data.fix.tim=
e).date();
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ~~~~~~~~~=
~~~~~^~~~
        <br>
        =C2=A0=C2=A0=C2=A0
        |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
        <br>
        =C2=A0=C2=A0=C2=A0 | timespec_t {aka timespec}
        <br>
        =C2=A0=C2=A0=C2=A0 In file included from
        /usr/include/boost/thread/xtime.hpp:16,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        /usr/include/boost/thread/pthread/mutex.hpp:20,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        /usr/include/boost/thread/mutex.hpp:16,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        <br>
        =C2=A0=C2=A0=C2=A0 /usr/include/boost/thread/pthread/shared_mutex.h=
pp:14,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        /usr/include/boost/thread/shared_mutex.hpp:28,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16:
        <br>
        =C2=A0=C2=A0=C2=A0
        /usr/include/boost/date_time/posix_time/conversion.hpp:27:33:
        <br>
        =C2=A0=C2=A0=C2=A0 note:=C2=A0=C2=A0 initializing argument 1 of =E2=
=80=98boost::posix_time::ptime
        <br>
        =C2=A0=C2=A0=C2=A0 boost::posix_time::from_time_t(time_t)=E2=80=99
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 27 |=C2=A0=C2=A0 ptime from_t=
ime_t(std::time_t t)
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~~~~~^
        <br>
        =C2=A0=C2=A0=C2=A0 /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: I=
n member
        function
        <br>
        =C2=A0=C2=A0=C2=A0 =E2=80=98std::string uhd::usrp::gpsd_iface_impl:=
:_gps_gprmc()=E2=80=99:
        <br>
        =C2=A0=C2=A0=C2=A0 /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:20=
6:49: error:
        invalid
        <br>
        =C2=A0=C2=A0=C2=A0 cast from type =E2=80=98timespec_t=E2=80=99 {aka=
 =E2=80=98timespec=E2=80=99} to type
        =E2=80=98time_t=E2=80=99 {aka
        <br>
        =C2=A0=C2=A0=C2=A0 =E2=80=98long int=E2=80=99}
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 206 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intfixtime =3D (time_t)
        _gps_data.fix.time;
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
        ^~~~
        <br>
        =C2=A0=C2=A0=C2=A0 /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: I=
n member
        function
        <br>
        =C2=A0=C2=A0=C2=A0 =E2=80=98std::string uhd::usrp::gpsd_iface_impl:=
:_gps_gpgga()=E2=80=99:
        <br>
        =C2=A0=C2=A0=C2=A0 /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:24=
1:45: error:
        invalid
        <br>
        =C2=A0=C2=A0=C2=A0 cast from type =E2=80=98timespec_t=E2=80=99 {aka=
 =E2=80=98timespec=E2=80=99} to type
        =E2=80=98time_t=E2=80=99 {aka
        <br>
        =C2=A0=C2=A0=C2=A0 =E2=80=98long int=E2=80=99}
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 241 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 intfixtime =3D (time_t) _gps_data.fix.time;
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~
        <br>
        =C2=A0=C2=A0=C2=A0 /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:26=
8:42: error:
        =E2=80=98struct
        <br>
        =C2=A0=C2=A0=C2=A0 gps_data_t=E2=80=99 has no member named =E2=80=
=98separation=E2=80=99
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 268 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 if
        (boost::math::isnan(_gps_data.separation))
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ^~~~~~~~~~
        <br>
        =C2=A0=C2=A0=C2=A0 /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:27=
2:58: error:
        =E2=80=98struct
        <br>
        =C2=A0=C2=A0=C2=A0 gps_data_t=E2=80=99 has no member named =E2=80=
=98separation=E2=80=99
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 272 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 str(boos=
t::format(&quot;%.3f,M,&quot;) %
        <br>
        =C2=A0=C2=A0=C2=A0 _gps_data.separation));
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ^~~~~~~~~=
~
        <br>
        =C2=A0=C2=A0=C2=A0 /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:27=
2:17: error:
        =E2=80=98str=E2=80=99
        <br>
        =C2=A0=C2=A0=C2=A0 was not declared in this scope
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 272 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 str(boos=
t::format(&quot;%.3f,M,&quot;) %
        <br>
        =C2=A0=C2=A0=C2=A0 _gps_data.separation));
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ^~~
        <br>
        =C2=A0=C2=A0=C2=A0 /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:27=
2:17: note:
        <br>
        =C2=A0=C2=A0=C2=A0 suggested alternatives:
        <br>
        =C2=A0=C2=A0=C2=A0 In file included from /usr/include/boost/format.=
hpp:53,
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:15:
        <br>
        =C2=A0=C2=A0=C2=A0 /usr/include/boost/format/free_funcs.hpp:22:38: =
note:
        =E2=80=98boost::str=E2=80=99
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 22 |=C2=A0=C2=A0=C2=A0=C2=A0 =
std::basic_string&lt;Ch, Tr, Alloc&gt;
        str(const
        <br>
        =C2=A0=C2=A0=C2=A0 basic_format&lt;Ch, Tr, Alloc&gt;&amp; f) {
        <br>
        =C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~
        <br>
        =C2=A0=C2=A0=C2=A0 /usr/include/boost/format/free_funcs.hpp:22:38: =
note:
        =E2=80=98boost::str=E2=80=99
        <br>
        =C2=A0=C2=A0=C2=A0 make[2]: *** [lib/CMakeFiles/uhd.dir/build.make:=
1303:
        <br>
        =C2=A0=C2=A0=C2=A0 lib/CMakeFiles/uhd.dir/usrp/gpsd_iface.cpp.o] Er=
ror 1
        <br>
        =C2=A0=C2=A0=C2=A0 make[1]: *** [CMakeFiles/Makefile2:731:
        lib/CMakeFiles/uhd.dir/all]
        <br>
        =C2=A0=C2=A0=C2=A0 Error 2
        <br>
        =C2=A0=C2=A0=C2=A0 make: *** [Makefile:163: all] Error 2
        <br>
        <br>
        Thanks,
        <br>
        <br>
        Baroch Oren
        <br>
        <br>
        <br>
        <br>
        --=C2=A0<br>
        <br>
        =D7=91=D7=A8=D7=95=D7=9A =D7=90=D7=95=D7=A8=D7=9F =D8=A8=D8=B1=D9=
=88=D8=AD =D8=A7=D9=88=D8=B1=D9=86 Baroch Oren
        <br>
        <br>
        =D7=98=D7=9C&#39; 058-7799233 cell
        <br>
        <br>
        =D7=AA=D7=9E=D7=9B=D7=95 =D7=91=D7=90=D7=A7=D7=98=D7=99=D7=91=D7=99=
=D7=96=D7=9D =D7=A9=D7=9C=D7=99 support my activism
        <a href=3D"https://www.patreon.com/barochoren" target=3D"_blank">&l=
t;https://www.patreon.com/barochoren&gt;</a>
        <br>
        <br>
        <br>
        _______________________________________________
        <br>
        USRP-users mailing list
        <br>
        <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USR=
P-users@lists.ettus.com</a>
        <br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
        <br>
        <br>
      </blockquote>
      <br>
      _______________________________________________
      <br>
      USRP-users mailing list
      <br>
      <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-=
users@lists.ettus.com</a>
      <br>
      <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com</a>
      <br>
    </blockquote>
    <div style=3D"direction:ltr">-- <br>
      <div dir=3D"rtl">
        <p><u></u>=D7=91=D7=A8=D7=95=D7=9A =D7=90=D7=95=D7=A8=D7=9F =D8=A8=
=D8=B1=D9=88=D8=AD =D8=A7=D9=88=D8=B1=D9=86 Baroch Oren<u></u></p>
        <p>=D7=98=D7=9C&#39; 058-7799233 cell</p>
        <p><a href=3D"https://www.patreon.com/barochoren" target=3D"_blank"=
>=D7=AA=D7=9E=D7=9B=D7=95 =D7=91=D7=90=D7=A7=D7=98=D7=99=D7=91=D7=99=D7=96=
=D7=9D
            =D7=A9=D7=9C=D7=99 support my activism</a></p>
      </div>
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

--000000000000c128b605b2d425e7--


--===============5594653367459635216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5594653367459635216==--

