Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA2D29F526
	for <lists+usrp-users@lfdr.de>; Thu, 29 Oct 2020 20:28:14 +0100 (CET)
Received: from [::1] (port=47804 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kYDan-00006f-43; Thu, 29 Oct 2020 15:28:13 -0400
Received: from resqmta-po-01v.sys.comcast.net ([96.114.154.160]:42237)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1kYDai-0008HE-5F
 for usrp-users@lists.ettus.com; Thu, 29 Oct 2020 15:28:08 -0400
Received: from resomta-po-19v.sys.comcast.net ([96.114.154.243])
 by resqmta-po-01v.sys.comcast.net with ESMTP
 id YCwYkseq4lxPrYDa3kvjV8; Thu, 29 Oct 2020 19:27:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1603999647;
 bh=Co4pGAiVOqksg+AR/UXEeoKiJ7na0xcmlBcLe8wgA2I=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=vhPYIz0mnScJOgT0vjstmPqOlJ4Dv7BU3XeJckiSZLeHqNBs87QyyY2PA00jI6MDR
 6mxyR6hA+YTLU8eR3t4WJ1JGB/D9R0ok1JgSpUaeQY5LzQs0N0vxZ/T9OHffV7amRo
 pvYzEZ+mDYopINprN2pxI93HZTWhZ/M8KyRWMbd+4nW22cDvlO8GqDYiMLg/3K4qYP
 UmwjLf6D2QozcC2K7GW+18lSlvutaMlKk9ygSOgTxu+2c66388NOm3p2UoBbkla9oF
 peq43MMg14GH4WA5Ze6a2Kl6uiKu8ihJnxjb5GRDmfq7T24AUovO8DBilKRtVCckmh
 APIcCAWiRlrdw==
Received: from [IPv6:2601:647:4200:ea30:9c4:169d:44d2:4187]
 ([IPv6:2601:647:4200:ea30:9c4:169d:44d2:4187])
 by resomta-po-19v.sys.comcast.net with ESMTPSA
 id YDZqkhj6z3so2YDa2knug6; Thu, 29 Oct 2020 19:27:26 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <73588971-021a-f7fc-dbe8-236843ff27b7@6tzvaim.com>
 <fd64bc6e-6c5d-87e0-5fb5-d9a06432c2b1@ant.uni-bremen.de>
 <d6651526-9995-a59d-aab5-b38da227afc0@6tzvaim.com>
Message-ID: <6dfe4cec-df5a-fb9d-1cdb-e50313c6ca4b@comcast.net>
Date: Thu, 29 Oct 2020 12:27:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d6651526-9995-a59d-aab5-b38da227afc0@6tzvaim.com>
Content-Language: en-US
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============0511126868404711176=="
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

This is a multi-part message in MIME format.
--===============0511126868404711176==
Content-Type: multipart/alternative;
 boundary="------------F7AA56E36E6214589724B8E7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------F7AA56E36E6214589724B8E7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Older versions of UHD won't compile with newer versions of boost.


Try 3.15 or even 4.0.


git checkout v3.15.0.0


or


git checkout v4.0.0.0


If you really need an older version of UHD, you'd be better off with 
Ubuntu 18.04.


Ron


On 10/29/20 05:20, Baroch Oren via USRP-users wrote:
>
> Thank you so much Johannes for the prompt reply. It was very helpful.
>
> Actually I just need to build UHD HOST from source, as I'm tweaking 
> code from the examples directory.
>
>
> I've removed python 2 & 2.7 from the system completely. now only 
> python 3 is there.
>
> still same casting errors for compiling 3.14 in file gpsd_iface.cpp
>
>
> here:
>
> baroch@reliable:~/uhd/host/build$ make
> [  2%] Built target uhd_rpclib
> [  2%] Building CXX object lib/CMakeFiles/uhd.dir/usrp/gpsd_iface.cpp.o
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function 
> ‘int64_t uhd::usrp::gpsd_iface_impl::_epoch_time()’:
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:141:62: error: cannot 
> convert ‘timespec_t’ {aka ‘timespec’} to ‘time_t’ {aka ‘long int’}
>   141 |         return (boost::posix_time::from_time_t(_gps_data.fix.time)
>       | ~~~~~~~~~~~~~~^~~~
> |                                                              |
> | timespec_t {aka timespec}
> In file included from /usr/include/boost/thread/xtime.hpp:16,
>                  from /usr/include/boost/thread/pthread/mutex.hpp:20,
>                  from /usr/include/boost/thread/mutex.hpp:16,
>                  from 
> /usr/include/boost/thread/pthread/shared_mutex.hpp:14,
>                  from /usr/include/boost/thread/shared_mutex.hpp:28,
>                  from /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16:
> /usr/include/boost/date_time/posix_time/conversion.hpp:27:33: note:   
> initializing argument 1 of ‘boost::posix_time::ptime 
> boost::posix_time::from_time_t(time_t)’
>    27 |   ptime from_time_t(std::time_t t)
>       |                     ~~~~~~~~~~~~^
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function 
> ‘boost::gregorian::date uhd::usrp::gpsd_iface_impl::_gregorian_date()’:
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:148:61: error: cannot 
> convert ‘timespec_t’ {aka ‘timespec’} to ‘time_t’ {aka ‘long int’}
>   148 |         return 
> boost::posix_time::from_time_t(_gps_data.fix.time).date();
>       | ~~~~~~~~~~~~~~^~~~
> |                                                             |
> | timespec_t {aka timespec}
> In file included from /usr/include/boost/thread/xtime.hpp:16,
>                  from /usr/include/boost/thread/pthread/mutex.hpp:20,
>                  from /usr/include/boost/thread/mutex.hpp:16,
>                  from 
> /usr/include/boost/thread/pthread/shared_mutex.hpp:14,
>                  from /usr/include/boost/thread/shared_mutex.hpp:28,
>                  from /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16:
> /usr/include/boost/date_time/posix_time/conversion.hpp:27:33: note:   
> initializing argument 1 of ‘boost::posix_time::ptime 
> boost::posix_time::from_time_t(time_t)’
>    27 |   ptime from_time_t(std::time_t t)
>       |                     ~~~~~~~~~~~~^
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function 
> ‘std::string uhd::usrp::gpsd_iface_impl::_gps_gprmc()’:
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:206:49: error: invalid 
> cast from type ‘timespec_t’ {aka ‘timespec’} to type ‘time_t’ {aka 
> ‘long int’}
>   206 |             intfixtime = (time_t) _gps_data.fix.time;
>       |                                                 ^~~~
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function 
> ‘std::string uhd::usrp::gpsd_iface_impl::_gps_gpgga()’:
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:241:45: error: invalid 
> cast from type ‘timespec_t’ {aka ‘timespec’} to type ‘time_t’ {aka 
> ‘long int’}
>   241 |         intfixtime = (time_t) _gps_data.fix.time;
>       |                                             ^~~~
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:268:42: error: ‘struct 
> gps_data_t’ has no member named ‘separation’
>   268 |         if (boost::math::isnan(_gps_data.separation))
>       |                                          ^~~~~~~~~~
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:58: error: ‘struct 
> gps_data_t’ has no member named ‘separation’
>   272 |                 str(boost::format("%.3f,M,") % 
> _gps_data.separation));
>       | ^~~~~~~~~~
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:17: error: ‘str’ was 
> not declared in this scope
>   272 |                 str(boost::format("%.3f,M,") % 
> _gps_data.separation));
>       |                 ^~~
> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:17: note: suggested 
> alternatives:
> In file included from /usr/include/boost/format.hpp:53,
>                  from /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:15:
> /usr/include/boost/format/free_funcs.hpp:22:38: note: ‘boost::str’
>    22 |     std::basic_string<Ch, Tr, Alloc> str(const 
> basic_format<Ch, Tr, Alloc>& f) {
>       |                                      ^~~
>
> - Baroch
>
>
>
> On 29/10/2020 12:12, Johannes Demel via USRP-users wrote:
>> Hi Baroch,
>>
>> Do you need UHD 3.14? UHD 3.15 is probably easier to install on your 
>> system.
>>
>> Besides, the missing dependencies indicate that you want to install a 
>> really old version of UHD? or GNU Radio? On a modern system. The 
>> clock ran out on Python2. For some reason cmake seems to find a 
>> python2 install on your system. That wasn't there by default. And it 
>> would probably be good to not have it there to minimize potential 
>> mixups.
>>
>> Further, your system lacks Qt4 which is again really old and 
>> everything should be ported to Qt5 by now. At least GNU Radio works 
>> with Qt5.
>>
>> Besides, unfortunately the guide you link to lacks Ubuntu 20.04 
>> instructions which differ.
>>
>> This would be the required list of dependencies on 20.04:
>> https://wiki.gnuradio.org/index.php/UbuntuInstall#Focal_Fossa_.2820.04.29 
>>
>>
>> If you want to install UHD only, you might also go for `libuhd-dev` 
>> and `python3-uhd`. These should install UHD 3.15 on your system as 
>> well. No need for a source install.
>>
>> Cheers
>> Johannes
>>
>> On 29.10.20 10:53, Baroch Oren via USRP-users wrote:
>>> Hello,
>>>
>>> I've been following Application Note AN-445 
>>> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux
>>>
>>> Couldn't build it. Please advise.
>>>
>>>
>>> These are the requirements that were reported missing on the apt-get 
>>> line:
>>>
>>>     E: Unable to locate package libcppunit-1.14-0
>>>     E: Package 'python-scipy' has no installation candidate
>>>     E: Unable to locate package qt4-bin-dbg
>>>     E: Package 'qt4-default' has no installation candidate
>>>     E: Package 'qt4-doc' has no installation candidate
>>>     E: Package 'libqt4-dev' has no installation candidate
>>>     E: Unable to locate package libqt4-dev-bin
>>>     E: Unable to locate package python-qt4
>>>     E: Unable to locate package python-qt4-dbg
>>>     E: Unable to locate package python-qt4-dev
>>>     E: Unable to locate package python-qt4-doc
>>>     E: Unable to locate package libqwt6abi1
>>>     E: Unable to locate package libncurses6-dbg
>>>     E: Package 'libqt4-dev' has no installation candidate
>>>     E: Package 'qt4-default' has no installation candidate
>>>     E: Unable to locate package qt4-dev-tools
>>>     E: Unable to locate package pyqt4-dev-tools
>>>     E: Unable to locate package python-qwt5-qt4
>>>     E: Unable to locate package python-gtk2
>>>     E: Unable to locate package python-requests
>>>     E: Package 'python-sphinx' has no installation candidate
>>>     E: Unable to locate package python-zmq
>>>     E: Package 'libqwt-dev' has no installation candidate
>>>     E: Unable to locate package libqwt6abi1
>>>     E: Unable to locate package libgps23
>>>     E: Package 'python-gps' has no installation candidate
>>>
>>> following attempt to make & build gives countless warning and tthe 
>>> following error:
>>>
>>>     baroch@reliable:~/uhd/host/build$ cmake -DENABLE_GPSD=ON ../
>>>     --     -- Configuring the python interpreter...
>>>     -- Python interpreter: /usr/bin/python2
>>>     -- Override with: -DPYTHON_EXECUTABLE=<path-to-python>
>>>     -- Python runtime interpreter: /usr/bin/python2
>>>     -- Override with: -DRUNTIME_PYTHON_EXECUTABLE=<path-to-python>
>>>     -- Working off of feature or development branch. Updating version
>>>     number.
>>>     -- Using UHD Images Directory: /usr/local/share/uhd/images
>>>     -- Build type not specified: defaulting to release.
>>>     --     -- Configuring Boost C++ Libraries...
>>>     -- Looking for optional Boost components...
>>>     -- Found Boost:
>>> /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake
>>>     (found suitable version "1.71.0", minimum required is "1.53") found
>>>     components: python
>>>     -- Looking for required Boost components...
>>>     -- Found Boost:
>>> /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake
>>>     (found suitable version "1.71.0", minimum required is "1.53") found
>>>     components: chrono date_time filesystem program_options regex 
>>> system
>>>     unit_test_framework serialization thread
>>>     -- Boost include directories: /usr/include
>>>     -- Boost library directories: /usr/lib/x86_64-linux-gnu
>>>     -- Boost libraries:
>>> Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_options;Boost::regex;Boost::system;Boost::unit_test_framework;Boost::serialization;Boost::thread
>>>     CMake Warning (dev) at cmake/Modules/UHDLog.cmake:68 (set):
>>>        implicitly converting 'FILE' to 'STRING' type.
>>>     Call Stack (most recent call first):
>>>        CMakeLists.txt:365 (include)
>>>     This warning is for project developers.  Use -Wno-dev to 
>>> suppress it.
>>>
>>>     --     -- Python checking for Python version 2.7 or greater
>>>     -- Python checking for Python version 2.7 or greater - found
>>>     --     -- Python checking for Mako templates 0.4.2 or greater
>>>     -- Python checking for Mako templates 0.4.2 or greater - found
>>>     --     -- Python checking for requests 2.0 or greater
>>>     -- Python checking for requests 2.0 or greater - "import requests"
>>>     failed
>>>     --     -- Python checking for numpy 1.7 or greater
>>>     -- Python checking for numpy 1.7 or greater - found
>>>     --     -- Configuring LibUHD support...
>>>     --   Dependency Boost_FOUND = TRUE
>>>     --   Dependency HAVE_PYTHON_PLAT_MIN_VERSION = TRUE
>>>     --   Dependency HAVE_PYTHON_MODULE_MAKO = TRUE
>>>     --   Enabling LibUHD support.
>>>     --   Override with -DENABLE_LIBUHD=ON/OFF
>>>     --     -- Configuring LibUHD - C API support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Enabling LibUHD - C API support.
>>>     --   Override with -DENABLE_C_API=ON/OFF
>>>     --     -- Configuring LibUHD - Python API support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Dependency BOOST_PYTHON_FOUND = 1
>>>     --   Dependency HAVE_PYTHON_MODULE_NUMPY = TRUE
>>>     --   Dependency PythonLibs_FOUND = TRUE
>>>     --   Enabling LibUHD - Python API support.
>>>     --   Override with -DENABLE_PYTHON_API=ON/OFF
>>>     --     -- Configuring Examples support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Enabling Examples support.
>>>     --   Override with -DENABLE_EXAMPLES=ON/OFF
>>>     --     -- Configuring Utils support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Enabling Utils support.
>>>     --   Override with -DENABLE_UTILS=ON/OFF
>>>     --     -- Configuring Tests support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Enabling Tests support.
>>>     --   Override with -DENABLE_TESTS=ON/OFF
>>>     --     -- Could NOT find LIBERIO (missing: LIBERIO_LIBRARY
>>>     LIBERIO_INCLUDE_DIR)
>>>     -- Could NOT find dpdk (missing: DPDK_INCLUDE_DIR)
>>>     --     -- Configuring LIBERIO support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Dependency LIBERIO_FOUND = FALSE
>>>     --   Disabling LIBERIO support.
>>>     --   Override with -DENABLE_LIBERIO=ON/OFF
>>>     --     -- Configuring USB support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Dependency LIBUSB_FOUND = TRUE
>>>     --   Enabling USB support.
>>>     --   Override with -DENABLE_USB=ON/OFF
>>>     --     -- Configuring GPSD support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Dependency ENABLE_GPSD = ON
>>>     --   Dependency LIBGPS_FOUND = TRUE
>>>     --   Enabling GPSD support.
>>>     --   Override with -DENABLE_GPSD=ON/OFF
>>>     --     -- Configuring B100 support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Dependency ENABLE_USB = ON
>>>     --   Enabling B100 support.
>>>     --   Override with -DENABLE_B100=ON/OFF
>>>     --     -- Configuring B200 support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Dependency ENABLE_USB = ON
>>>     --   Enabling B200 support.
>>>     --   Override with -DENABLE_B200=ON/OFF
>>>     --     -- Configuring E300 support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Disabling E300 support.
>>>     --   Override with -DENABLE_E300=ON/OFF
>>>     --     -- Configuring USRP1 support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Dependency ENABLE_USB = ON
>>>     --   Enabling USRP1 support.
>>>     --   Override with -DENABLE_USRP1=ON/OFF
>>>     --     -- Configuring USRP2 support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Enabling USRP2 support.
>>>     --   Override with -DENABLE_USRP2=ON/OFF
>>>     --     -- Configuring X300 support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Enabling X300 support.
>>>     --   Override with -DENABLE_X300=ON/OFF
>>>     --     -- Configuring N230 support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Enabling N230 support.
>>>     --   Override with -DENABLE_N230=ON/OFF
>>>     --     -- Configuring MPMD support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Enabling MPMD support.
>>>     --   Override with -DENABLE_MPMD=ON/OFF
>>>     --     -- Configuring N300 support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Dependency ENABLE_MPMD = ON
>>>     --   Enabling N300 support.
>>>     --   Override with -DENABLE_N300=ON/OFF
>>>     --     -- Configuring N320 support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Dependency ENABLE_MPMD = ON
>>>     --   Enabling N320 support.
>>>     --   Override with -DENABLE_N320=ON/OFF
>>>     --     -- Configuring E320 support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Dependency ENABLE_MPMD = ON
>>>     --   Enabling E320 support.
>>>     --   Override with -DENABLE_E320=ON/OFF
>>>     --     -- Configuring OctoClock support...
>>>     --   Dependency ENABLE_LIBUHD = ON
>>>     --   Enabling OctoClock support.
>>>     --   Override with -DENABLE_OCTOCLOCK=ON/OFF
>>>     --     -- Configuring DPDK support...
>>>     --   Dependency ENABLE_MPMD = ON
>>>     --   Dependency DPDK_FOUND = FALSE
>>>     --   Disabling DPDK support.
>>>     --   Override with -DENABLE_DPDK=ON/OFF
>>>     --     --     --     -- Configuring priority scheduling...
>>>     --   Priority scheduling supported through pthread_setschedparam.
>>>     --   Setting thread names is supported through pthread_setname_np.
>>>     --     -- Configuring high resolution timing...
>>>     --   High resolution timing supported through clock_gettime.
>>>     --     -- Configuring module loading...
>>>     --   Module loading supported through dlopen.
>>>     --     -- Processing NI-RIO FPGA LVBITX Bitstreams...
>>>     --   Using x300.lvbitx_base for codegen
>>>     --   Using x310.lvbitx_base for codegen
>>>     --     -- USB support enabled via libusb.
>>>     --     -- Configuring interface address discovery...
>>>     --   Interface address discovery supported through getifaddrs.
>>>     --     -- Loading build info.
>>>     --     -- Adding B2XX device test target
>>>     -- Adding X3x0 device test target
>>>     -- Adding N3XX device test target
>>>     -- Adding E32x device test target
>>>     --     CMake Warning at utils/CMakeLists.txt:123 (message):
>>>        Python module `requests' not found -- uhd_images_downloader.py
>>>     will not
>>>        work without it.
>>>
>>>
>>>     CMake Warning at utils/CMakeLists.txt:124 (message):
>>>        You may be able to install this by running 'pip install 
>>> requests'
>>>
>>>
>>>     --     -- Configuring Manual support...
>>>     --   Dependency DOXYGEN_FOUND = YES
>>>     --   Enabling Manual support.
>>>     --   Override with -DENABLE_MANUAL=ON/OFF
>>>     --     -- Configuring API/Doxygen support...
>>>     --   Dependency DOXYGEN_FOUND = YES
>>>     --   Enabling API/Doxygen support.
>>>     --   Override with -DENABLE_DOXYGEN=ON/OFF
>>>     --     -- Configuring Man Pages support...
>>>     --   Dependency GZIP_FOUND = TRUE
>>>     --   Dependency NOT_WIN32 = TRUE
>>>     --   Enabling Man Pages support.
>>>     --   Override with -DENABLE_MAN_PAGES=ON/OFF
>>>     --     -- Python checking for virtualenv
>>>     -- Python checking for virtualenv - "assert hasattr(sys,
>>>     'real_prefix')" failed
>>>     -- Utilizing the python install directory:
>>>     /usr/local/lib/python2.7/dist-packages
>>>     --     -- ######################################################
>>>     -- # UHD enabled components
>>>     -- ######################################################
>>>     --   * LibUHD
>>>     --   * LibUHD - C API
>>>     --   * LibUHD - Python API
>>>     --   * Examples
>>>     --   * Utils
>>>     --   * Tests
>>>     --   * USB
>>>     --   * GPSD
>>>     --   * B100
>>>     --   * B200
>>>     --   * USRP1
>>>     --   * USRP2
>>>     --   * X300
>>>     --   * N230
>>>     --   * MPMD
>>>     --   * N300
>>>     --   * N320
>>>     --   * E320
>>>     --   * OctoClock
>>>     --   * Manual
>>>     --   * API/Doxygen
>>>     --   * Man Pages
>>>     --     -- ######################################################
>>>     -- # UHD disabled components
>>>     -- ######################################################
>>>     --   * LIBERIO
>>>     --   * E300
>>>     --   * DPDK
>>>     --     -- ******************************************************
>>>     -- * You are building a development branch of UHD.
>>>     -- * These branches are designed to provide early access
>>>     -- * to UHD and USRP features, but should be considered
>>>     -- * unstable and/or experimental!
>>>     -- ******************************************************
>>>     -- Building version: 3.14.1.HEAD-0-g0347a6d8
>>>     -- Using install prefix: /usr/local
>>>     -- Configuring done
>>>     -- Generating done
>>>     -- Build files have been written to: /home/baroch/uhd/host/build
>>>     baroch@reliable:~/uhd/host/build$ make
>>>     Scanning dependencies of target uhd_rpclib
>>>     [  0%] Building CXX object
>>> lib/deps/rpclib/CMakeFiles/uhd_rpclib.dir/lib/rpc/dispatcher.cc.o
>>>     In file included from
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
>>>                       from
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/dispatcher.h:12,
>>>                       from
>>> /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/dispatcher.cc:1:
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp: 
>>> In
>>>     function ‘void
>>> clmdep_msgpack::v1::operator<<(clmdep_msgpack::v1::object&, const
>>>     msgpack_object&)’:
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:613:34:
>>>     warning: ‘void* memcpy(void*, const void*, size_t)’ copying an
>>>     object of non-trivial type ‘struct clmdep_msgpack::v1::object’ from
>>>     an array of ‘const msgpack_object’ {aka ‘const struct
>>>     msgpack_object’} [-Wclass-memaccess]
>>>        613 |     std::memcpy(&o, &v, sizeof(v));
>>>            |                                  ^
>>>     In file included from
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/adaptor/adaptor_base.hpp:21,
>>>                       from
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:24, 
>>>
>>>                       from
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
>>>                       from
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/dispatcher.h:12,
>>>                       from
>>> /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/dispatcher.cc:1:
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object_fwd.hpp:111:8:
>>>     note: ‘struct clmdep_msgpack::v1::object’ declared here
>>>        111 | struct object {
>>>            |        ^~~~~~
>>>     [  0%] Building CXX object
>>> lib/deps/rpclib/CMakeFiles/uhd_rpclib.dir/lib/rpc/server.cc.o
>>>     In file included from
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
>>>                       from
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/server.h:7,
>>>                       from
>>>     /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/server.cc:1:
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp: 
>>> In
>>>     function ‘void
>>> clmdep_msgpack::v1::operator<<(clmdep_msgpack::v1::object&, const
>>>     msgpack_object&)’:
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:613:34:
>>>     warning: ‘void* memcpy(void*, const void*, size_t)’ copying an
>>>     object of non-trivial type ‘struct clmdep_msgpack::v1::object’ from
>>>     an array of ‘const msgpack_object’ {aka ‘const struct
>>>     msgpack_object’} [-Wclass-memaccess]
>>>        613 |     std::memcpy(&o, &v, sizeof(v));
>>>            |                                  ^
>>>     In file included from
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/adaptor/adaptor_base.hpp:21,
>>>                       from
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:24, 
>>>
>>>                       from
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
>>>                       from
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/server.h:7,
>>>                       from
>>>     /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/server.cc:1:
>>> /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object_fwd.hpp:111:8:
>>>     note: ‘struct clmdep_msgpack::v1::object’ declared here
>>>        111 | struct object {
>>>            |        ^~~~~~
>>>
>>>
>>>     [ a lot of warnings truncated B.O.]
>>>
>>>
>>>
>>>     [ 22%] Building CXX object 
>>> lib/CMakeFiles/uhd.dir/usrp/subdev_spec.cpp.o
>>>     [ 23%] Building CXX object
>>>     lib/CMakeFiles/uhd.dir/usrp/fe_connection.cpp.o
>>>     [ 23%] Building CXX object
>>>     lib/CMakeFiles/uhd.dir/usrp/dboard_eeprom_c.cpp.o
>>>     [ 23%] Building CXX object
>>>     lib/CMakeFiles/uhd.dir/usrp/mboard_eeprom_c.cpp.o
>>>     [ 23%] Building CXX object
>>>     lib/CMakeFiles/uhd.dir/usrp/subdev_spec_c.cpp.o
>>>     [ 23%] Building CXX object lib/CMakeFiles/uhd.dir/usrp/usrp_c.cpp.o
>>>     [ 23%] Building CXX object 
>>> lib/CMakeFiles/uhd.dir/usrp/gpsd_iface.cpp.o
>>>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function
>>>     ‘int64_t uhd::usrp::gpsd_iface_impl::_epoch_time()’:
>>>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:141:62: error: cannot
>>>     convert ‘timespec_t’ {aka ‘timespec’} to ‘time_t’ {aka ‘long int’}
>>>        141 |         return
>>>     (boost::posix_time::from_time_t(_gps_data.fix.time)
>>>            | ~~~~~~~~~~~~~~^~~~
>>> | |
>>>     | timespec_t {aka timespec}
>>>     In file included from /usr/include/boost/thread/xtime.hpp:16,
>>>                       from 
>>> /usr/include/boost/thread/pthread/mutex.hpp:20,
>>>                       from /usr/include/boost/thread/mutex.hpp:16,
>>>                       from
>>>     /usr/include/boost/thread/pthread/shared_mutex.hpp:14,
>>>                       from 
>>> /usr/include/boost/thread/shared_mutex.hpp:28,
>>>                       from 
>>> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16:
>>> /usr/include/boost/date_time/posix_time/conversion.hpp:27:33:
>>>     note:   initializing argument 1 of ‘boost::posix_time::ptime
>>>     boost::posix_time::from_time_t(time_t)’
>>>         27 |   ptime from_time_t(std::time_t t)
>>>            |                     ~~~~~~~~~~~~^
>>>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function
>>>     ‘boost::gregorian::date 
>>> uhd::usrp::gpsd_iface_impl::_gregorian_date()’:
>>>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:148:61: error: cannot
>>>     convert ‘timespec_t’ {aka ‘timespec’} to ‘time_t’ {aka ‘long int’}
>>>        148 |         return
>>>     boost::posix_time::from_time_t(_gps_data.fix.time).date();
>>>            | ~~~~~~~~~~~~~~^~~~
>>> | |
>>>     | timespec_t {aka timespec}
>>>     In file included from /usr/include/boost/thread/xtime.hpp:16,
>>>                       from 
>>> /usr/include/boost/thread/pthread/mutex.hpp:20,
>>>                       from /usr/include/boost/thread/mutex.hpp:16,
>>>                       from
>>>     /usr/include/boost/thread/pthread/shared_mutex.hpp:14,
>>>                       from 
>>> /usr/include/boost/thread/shared_mutex.hpp:28,
>>>                       from 
>>> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16:
>>> /usr/include/boost/date_time/posix_time/conversion.hpp:27:33:
>>>     note:   initializing argument 1 of ‘boost::posix_time::ptime
>>>     boost::posix_time::from_time_t(time_t)’
>>>         27 |   ptime from_time_t(std::time_t t)
>>>            |                     ~~~~~~~~~~~~^
>>>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function
>>>     ‘std::string uhd::usrp::gpsd_iface_impl::_gps_gprmc()’:
>>>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:206:49: error: 
>>> invalid
>>>     cast from type ‘timespec_t’ {aka ‘timespec’} to type ‘time_t’ {aka
>>>     ‘long int’}
>>>        206 |             intfixtime = (time_t) _gps_data.fix.time;
>>>            | ^~~~
>>>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member function
>>>     ‘std::string uhd::usrp::gpsd_iface_impl::_gps_gpgga()’:
>>>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:241:45: error: 
>>> invalid
>>>     cast from type ‘timespec_t’ {aka ‘timespec’} to type ‘time_t’ {aka
>>>     ‘long int’}
>>>        241 |         intfixtime = (time_t) _gps_data.fix.time;
>>>            |                                             ^~~~
>>>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:268:42: error: 
>>> ‘struct
>>>     gps_data_t’ has no member named ‘separation’
>>>        268 |         if (boost::math::isnan(_gps_data.separation))
>>>            | ^~~~~~~~~~
>>>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:58: error: 
>>> ‘struct
>>>     gps_data_t’ has no member named ‘separation’
>>>        272 |                 str(boost::format("%.3f,M,") %
>>>     _gps_data.separation));
>>>            | ^~~~~~~~~~
>>>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:17: error: ‘str’
>>>     was not declared in this scope
>>>        272 |                 str(boost::format("%.3f,M,") %
>>>     _gps_data.separation));
>>>            |                 ^~~
>>>     /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:17: note:
>>>     suggested alternatives:
>>>     In file included from /usr/include/boost/format.hpp:53,
>>>                       from 
>>> /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:15:
>>>     /usr/include/boost/format/free_funcs.hpp:22:38: note: ‘boost::str’
>>>         22 |     std::basic_string<Ch, Tr, Alloc> str(const
>>>     basic_format<Ch, Tr, Alloc>& f) {
>>>            |                                      ^~~
>>>     /usr/include/boost/format/free_funcs.hpp:22:38: note: ‘boost::str’
>>>     make[2]: *** [lib/CMakeFiles/uhd.dir/build.make:1303:
>>>     lib/CMakeFiles/uhd.dir/usrp/gpsd_iface.cpp.o] Error 1
>>>     make[1]: *** [CMakeFiles/Makefile2:731: lib/CMakeFiles/uhd.dir/all]
>>>     Error 2
>>>     make: *** [Makefile:163: all] Error 2
>>>
>>> Thanks,
>>>
>>> Baroch Oren
>>>
>>>
>>>
>>> -- 
>>>
>>> ברוך אורן بروح اورن Baroch Oren
>>>
>>> טל' 058-7799233 cell
>>>
>>> תמכו באקטיביזם שלי support my activism 
>>> <https://www.patreon.com/barochoren>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> -- 
>
> ברוך אורן بروح اورن Baroch Oren
>
> טל' 058-7799233 cell
>
> תמכו באקטיביזם שלי support my activism 
> <https://www.patreon.com/barochoren>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------F7AA56E36E6214589724B8E7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Older versions of UHD won't compile with newer versions of boost.</p>
    <p><br>
    </p>
    <p>Try 3.15 or even 4.0.</p>
    <p><br>
    </p>
    <p>git checkout v3.15.0.0</p>
    <p><br>
    </p>
    <p>or</p>
    <p><br>
    </p>
    <p>git checkout v4.0.0.0</p>
    <p><br>
    </p>
    <p>If you really need an older version of UHD, you'd be better off
      with Ubuntu 18.04.<br>
    </p>
    <p><br>
    </p>
    <p>Ron</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 10/29/20 05:20, Baroch Oren via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:d6651526-9995-a59d-aab5-b38da227afc0@6tzvaim.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style id="bidiui-paragraph-margins" type="text/css">body p { margin-bottom: 0cm; margin-top: 0pt; } </style>
      <p style="direction: ltr;">Thank you so much Johannes for the
        prompt reply. It was very helpful.</p>
      <p style="direction: ltr;">Actually I just need to build UHD HOST
        from source, as I'm tweaking code from the examples directory.</p>
      <p style="direction: ltr;"><br>
      </p>
      <p style="direction: ltr;">I've removed python 2 &amp; 2.7 from
        the system completely. now only python 3 is there.</p>
      <p style="direction: ltr;">still same casting errors for compiling
        3.14 in file gpsd_iface.cpp</p>
      <p style="direction: ltr;"><br>
      </p>
      <p style="direction: ltr;">here:<br>
      </p>
      <p style="direction: ltr;">baroch@reliable:~/uhd/host/build$ make<br>
        [  2%] Built target uhd_rpclib<br>
        [  2%] Building CXX object
        lib/CMakeFiles/uhd.dir/usrp/gpsd_iface.cpp.o<br>
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member
        function ‘int64_t uhd::usrp::gpsd_iface_impl::_epoch_time()’:<br>
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:141:62: error:
        cannot convert ‘timespec_t’ {aka ‘timespec’} to ‘time_t’ {aka
        ‘long int’}<br>
          141 |         return
        (boost::posix_time::from_time_t(_gps_data.fix.time)<br>
              |                                               
        ~~~~~~~~~~~~~~^~~~<br>
             
        |                                                              |<br>
             
        |                                                             
        timespec_t {aka timespec}<br>
        In file included from /usr/include/boost/thread/xtime.hpp:16,<br>
                         from
        /usr/include/boost/thread/pthread/mutex.hpp:20,<br>
                         from /usr/include/boost/thread/mutex.hpp:16,<br>
                         from
        /usr/include/boost/thread/pthread/shared_mutex.hpp:14,<br>
                         from
        /usr/include/boost/thread/shared_mutex.hpp:28,<br>
                         from
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16:<br>
        /usr/include/boost/date_time/posix_time/conversion.hpp:27:33:
        note:   initializing argument 1 of ‘boost::posix_time::ptime
        boost::posix_time::from_time_t(time_t)’<br>
           27 |   ptime from_time_t(std::time_t t)<br>
              |                     ~~~~~~~~~~~~^<br>
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member
        function ‘boost::gregorian::date
        uhd::usrp::gpsd_iface_impl::_gregorian_date()’:<br>
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:148:61: error:
        cannot convert ‘timespec_t’ {aka ‘timespec’} to ‘time_t’ {aka
        ‘long int’}<br>
          148 |         return
        boost::posix_time::from_time_t(_gps_data.fix.time).date();<br>
              |                                              
        ~~~~~~~~~~~~~~^~~~<br>
             
        |                                                             |<br>
             
        |                                                            
        timespec_t {aka timespec}<br>
        In file included from /usr/include/boost/thread/xtime.hpp:16,<br>
                         from
        /usr/include/boost/thread/pthread/mutex.hpp:20,<br>
                         from /usr/include/boost/thread/mutex.hpp:16,<br>
                         from
        /usr/include/boost/thread/pthread/shared_mutex.hpp:14,<br>
                         from
        /usr/include/boost/thread/shared_mutex.hpp:28,<br>
                         from
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16:<br>
        /usr/include/boost/date_time/posix_time/conversion.hpp:27:33:
        note:   initializing argument 1 of ‘boost::posix_time::ptime
        boost::posix_time::from_time_t(time_t)’<br>
           27 |   ptime from_time_t(std::time_t t)<br>
              |                     ~~~~~~~~~~~~^<br>
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member
        function ‘std::string uhd::usrp::gpsd_iface_impl::_gps_gprmc()’:<br>
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:206:49: error:
        invalid cast from type ‘timespec_t’ {aka ‘timespec’} to type
        ‘time_t’ {aka ‘long int’}<br>
          206 |             intfixtime = (time_t) _gps_data.fix.time;<br>
              |                                                 ^~~~<br>
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member
        function ‘std::string uhd::usrp::gpsd_iface_impl::_gps_gpgga()’:<br>
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:241:45: error:
        invalid cast from type ‘timespec_t’ {aka ‘timespec’} to type
        ‘time_t’ {aka ‘long int’}<br>
          241 |         intfixtime = (time_t) _gps_data.fix.time;<br>
              |                                             ^~~~<br>
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:268:42: error:
        ‘struct gps_data_t’ has no member named ‘separation’<br>
          268 |         if (boost::math::isnan(_gps_data.separation))<br>
              |                                          ^~~~~~~~~~<br>
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:58: error:
        ‘struct gps_data_t’ has no member named ‘separation’<br>
          272 |                 str(boost::format("%.3f,M,") %
        _gps_data.separation));<br>
              |                                                         
        ^~~~~~~~~~<br>
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:17: error:
        ‘str’ was not declared in this scope<br>
          272 |                 str(boost::format("%.3f,M,") %
        _gps_data.separation));<br>
              |                 ^~~<br>
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:17: note:
        suggested alternatives:<br>
        In file included from /usr/include/boost/format.hpp:53,<br>
                         from
        /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:15:<br>
        /usr/include/boost/format/free_funcs.hpp:22:38: note:  
        ‘boost::str’<br>
           22 |     std::basic_string&lt;Ch, Tr, Alloc&gt; str(const
        basic_format&lt;Ch, Tr, Alloc&gt;&amp; f) {<br>
              |                                      ^~~<br>
        <br>
        - Baroch<br>
      </p>
      <p style="direction: ltr;"><br>
      </p>
      <p style="direction: ltr;"><br>
      </p>
      <div class="moz-cite-prefix" style="direction: ltr;">On 29/10/2020
        12:12, Johannes Demel via USRP-users wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:fd64bc6e-6c5d-87e0-5fb5-d9a06432c2b1@ant.uni-bremen.de"
        style="direction: ltr;">Hi Baroch, <br>
        <br>
        Do you need UHD 3.14? UHD 3.15 is probably easier to install on
        your system. <br>
        <br>
        Besides, the missing dependencies indicate that you want to
        install a really old version of UHD? or GNU Radio? On a modern
        system. The clock ran out on Python2. For some reason cmake
        seems to find a python2 install on your system. That wasn't
        there by default. And it would probably be good to not have it
        there to minimize potential mixups. <br>
        <br>
        Further, your system lacks Qt4 which is again really old and
        everything should be ported to Qt5 by now. At least GNU Radio
        works with Qt5. <br>
        <br>
        Besides, unfortunately the guide you link to lacks Ubuntu 20.04
        instructions which differ. <br>
        <br>
        This would be the required list of dependencies on 20.04: <br>
        <a class="moz-txt-link-freetext"
href="https://wiki.gnuradio.org/index.php/UbuntuInstall#Focal_Fossa_.2820.04.29"
          moz-do-not-send="true">https://wiki.gnuradio.org/index.php/UbuntuInstall#Focal_Fossa_.2820.04.29</a>
        <br>
        <br>
        If you want to install UHD only, you might also go for
        `libuhd-dev` and `python3-uhd`. These should install UHD 3.15 on
        your system as well. No need for a source install. <br>
        <br>
        Cheers <br>
        Johannes <br>
        <br>
        On 29.10.20 10:53, Baroch Oren via USRP-users wrote: <br>
        <blockquote type="cite" style="direction: ltr;">Hello, <br>
          <br>
          I've been following Application Note AN-445
          <a class="moz-txt-link-freetext"
href="https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux"
            moz-do-not-send="true">https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux</a><br>
          <br>
          Couldn't build it. Please advise. <br>
          <br>
          <br>
          These are the requirements that were reported missing on the
          apt-get line: <br>
          <br>
              E: Unable to locate package libcppunit-1.14-0 <br>
              E: Package 'python-scipy' has no installation candidate <br>
              E: Unable to locate package qt4-bin-dbg <br>
              E: Package 'qt4-default' has no installation candidate <br>
              E: Package 'qt4-doc' has no installation candidate <br>
              E: Package 'libqt4-dev' has no installation candidate <br>
              E: Unable to locate package libqt4-dev-bin <br>
              E: Unable to locate package python-qt4 <br>
              E: Unable to locate package python-qt4-dbg <br>
              E: Unable to locate package python-qt4-dev <br>
              E: Unable to locate package python-qt4-doc <br>
              E: Unable to locate package libqwt6abi1 <br>
              E: Unable to locate package libncurses6-dbg <br>
              E: Package 'libqt4-dev' has no installation candidate <br>
              E: Package 'qt4-default' has no installation candidate <br>
              E: Unable to locate package qt4-dev-tools <br>
              E: Unable to locate package pyqt4-dev-tools <br>
              E: Unable to locate package python-qwt5-qt4 <br>
              E: Unable to locate package python-gtk2 <br>
              E: Unable to locate package python-requests <br>
              E: Package 'python-sphinx' has no installation candidate <br>
              E: Unable to locate package python-zmq <br>
              E: Package 'libqwt-dev' has no installation candidate <br>
              E: Unable to locate package libqwt6abi1 <br>
              E: Unable to locate package libgps23 <br>
              E: Package 'python-gps' has no installation candidate <br>
          <br>
          following attempt to make &amp; build gives countless warning
          and tthe following error: <br>
          <br>
              baroch@reliable:~/uhd/host/build$ cmake -DENABLE_GPSD=ON
          ../ <br>
              --     -- Configuring the python interpreter... <br>
              -- Python interpreter: /usr/bin/python2 <br>
              -- Override with:
          -DPYTHON_EXECUTABLE=&lt;path-to-python&gt; <br>
              -- Python runtime interpreter: /usr/bin/python2 <br>
              -- Override with:
          -DRUNTIME_PYTHON_EXECUTABLE=&lt;path-to-python&gt; <br>
              -- Working off of feature or development branch. Updating
          version <br>
              number. <br>
              -- Using UHD Images Directory: /usr/local/share/uhd/images
          <br>
              -- Build type not specified: defaulting to release. <br>
              --     -- Configuring Boost C++ Libraries... <br>
              -- Looking for optional Boost components... <br>
              -- Found Boost: <br>
             
          /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake
          <br>
              (found suitable version "1.71.0", minimum required is
          "1.53") found <br>
              components: python <br>
              -- Looking for required Boost components... <br>
              -- Found Boost: <br>
             
          /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake
          <br>
              (found suitable version "1.71.0", minimum required is
          "1.53") found <br>
              components: chrono date_time filesystem program_options
          regex system <br>
              unit_test_framework serialization thread <br>
              -- Boost include directories: /usr/include <br>
              -- Boost library directories: /usr/lib/x86_64-linux-gnu <br>
              -- Boost libraries: <br>
             
Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_options;Boost::regex;Boost::system;Boost::unit_test_framework;Boost::serialization;Boost::thread<br>
              CMake Warning (dev) at cmake/Modules/UHDLog.cmake:68
          (set): <br>
                 implicitly converting 'FILE' to 'STRING' type. <br>
              Call Stack (most recent call first): <br>
                 CMakeLists.txt:365 (include) <br>
              This warning is for project developers.  Use -Wno-dev to
          suppress it. <br>
          <br>
              --     -- Python checking for Python version 2.7 or
          greater <br>
              -- Python checking for Python version 2.7 or greater -
          found <br>
              --     -- Python checking for Mako templates 0.4.2 or
          greater <br>
              -- Python checking for Mako templates 0.4.2 or greater -
          found <br>
              --     -- Python checking for requests 2.0 or greater <br>
              -- Python checking for requests 2.0 or greater - "import
          requests" <br>
              failed <br>
              --     -- Python checking for numpy 1.7 or greater <br>
              -- Python checking for numpy 1.7 or greater - found <br>
              --     -- Configuring LibUHD support... <br>
              --   Dependency Boost_FOUND = TRUE <br>
              --   Dependency HAVE_PYTHON_PLAT_MIN_VERSION = TRUE <br>
              --   Dependency HAVE_PYTHON_MODULE_MAKO = TRUE <br>
              --   Enabling LibUHD support. <br>
              --   Override with -DENABLE_LIBUHD=ON/OFF <br>
              --     -- Configuring LibUHD - C API support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Enabling LibUHD - C API support. <br>
              --   Override with -DENABLE_C_API=ON/OFF <br>
              --     -- Configuring LibUHD - Python API support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Dependency BOOST_PYTHON_FOUND = 1 <br>
              --   Dependency HAVE_PYTHON_MODULE_NUMPY = TRUE <br>
              --   Dependency PythonLibs_FOUND = TRUE <br>
              --   Enabling LibUHD - Python API support. <br>
              --   Override with -DENABLE_PYTHON_API=ON/OFF <br>
              --     -- Configuring Examples support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Enabling Examples support. <br>
              --   Override with -DENABLE_EXAMPLES=ON/OFF <br>
              --     -- Configuring Utils support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Enabling Utils support. <br>
              --   Override with -DENABLE_UTILS=ON/OFF <br>
              --     -- Configuring Tests support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Enabling Tests support. <br>
              --   Override with -DENABLE_TESTS=ON/OFF <br>
              --     -- Could NOT find LIBERIO (missing: LIBERIO_LIBRARY
          <br>
              LIBERIO_INCLUDE_DIR) <br>
              -- Could NOT find dpdk (missing: DPDK_INCLUDE_DIR) <br>
              --     -- Configuring LIBERIO support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Dependency LIBERIO_FOUND = FALSE <br>
              --   Disabling LIBERIO support. <br>
              --   Override with -DENABLE_LIBERIO=ON/OFF <br>
              --     -- Configuring USB support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Dependency LIBUSB_FOUND = TRUE <br>
              --   Enabling USB support. <br>
              --   Override with -DENABLE_USB=ON/OFF <br>
              --     -- Configuring GPSD support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Dependency ENABLE_GPSD = ON <br>
              --   Dependency LIBGPS_FOUND = TRUE <br>
              --   Enabling GPSD support. <br>
              --   Override with -DENABLE_GPSD=ON/OFF <br>
              --     -- Configuring B100 support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Dependency ENABLE_USB = ON <br>
              --   Enabling B100 support. <br>
              --   Override with -DENABLE_B100=ON/OFF <br>
              --     -- Configuring B200 support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Dependency ENABLE_USB = ON <br>
              --   Enabling B200 support. <br>
              --   Override with -DENABLE_B200=ON/OFF <br>
              --     -- Configuring E300 support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Disabling E300 support. <br>
              --   Override with -DENABLE_E300=ON/OFF <br>
              --     -- Configuring USRP1 support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Dependency ENABLE_USB = ON <br>
              --   Enabling USRP1 support. <br>
              --   Override with -DENABLE_USRP1=ON/OFF <br>
              --     -- Configuring USRP2 support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Enabling USRP2 support. <br>
              --   Override with -DENABLE_USRP2=ON/OFF <br>
              --     -- Configuring X300 support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Enabling X300 support. <br>
              --   Override with -DENABLE_X300=ON/OFF <br>
              --     -- Configuring N230 support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Enabling N230 support. <br>
              --   Override with -DENABLE_N230=ON/OFF <br>
              --     -- Configuring MPMD support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Enabling MPMD support. <br>
              --   Override with -DENABLE_MPMD=ON/OFF <br>
              --     -- Configuring N300 support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Dependency ENABLE_MPMD = ON <br>
              --   Enabling N300 support. <br>
              --   Override with -DENABLE_N300=ON/OFF <br>
              --     -- Configuring N320 support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Dependency ENABLE_MPMD = ON <br>
              --   Enabling N320 support. <br>
              --   Override with -DENABLE_N320=ON/OFF <br>
              --     -- Configuring E320 support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Dependency ENABLE_MPMD = ON <br>
              --   Enabling E320 support. <br>
              --   Override with -DENABLE_E320=ON/OFF <br>
              --     -- Configuring OctoClock support... <br>
              --   Dependency ENABLE_LIBUHD = ON <br>
              --   Enabling OctoClock support. <br>
              --   Override with -DENABLE_OCTOCLOCK=ON/OFF <br>
              --     -- Configuring DPDK support... <br>
              --   Dependency ENABLE_MPMD = ON <br>
              --   Dependency DPDK_FOUND = FALSE <br>
              --   Disabling DPDK support. <br>
              --   Override with -DENABLE_DPDK=ON/OFF <br>
              --     --     --     -- Configuring priority scheduling...
          <br>
              --   Priority scheduling supported through
          pthread_setschedparam. <br>
              --   Setting thread names is supported through
          pthread_setname_np. <br>
              --     -- Configuring high resolution timing... <br>
              --   High resolution timing supported through
          clock_gettime. <br>
              --     -- Configuring module loading... <br>
              --   Module loading supported through dlopen. <br>
              --     -- Processing NI-RIO FPGA LVBITX Bitstreams... <br>
              --   Using x300.lvbitx_base for codegen <br>
              --   Using x310.lvbitx_base for codegen <br>
              --     -- USB support enabled via libusb. <br>
              --     -- Configuring interface address discovery... <br>
              --   Interface address discovery supported through
          getifaddrs. <br>
              --     -- Loading build info. <br>
              --     -- Adding B2XX device test target <br>
              -- Adding X3x0 device test target <br>
              -- Adding N3XX device test target <br>
              -- Adding E32x device test target <br>
              --     CMake Warning at utils/CMakeLists.txt:123
          (message): <br>
                 Python module `requests' not found --
          uhd_images_downloader.py <br>
              will not <br>
                 work without it. <br>
          <br>
          <br>
              CMake Warning at utils/CMakeLists.txt:124 (message): <br>
                 You may be able to install this by running 'pip install
          requests' <br>
          <br>
          <br>
              --     -- Configuring Manual support... <br>
              --   Dependency DOXYGEN_FOUND = YES <br>
              --   Enabling Manual support. <br>
              --   Override with -DENABLE_MANUAL=ON/OFF <br>
              --     -- Configuring API/Doxygen support... <br>
              --   Dependency DOXYGEN_FOUND = YES <br>
              --   Enabling API/Doxygen support. <br>
              --   Override with -DENABLE_DOXYGEN=ON/OFF <br>
              --     -- Configuring Man Pages support... <br>
              --   Dependency GZIP_FOUND = TRUE <br>
              --   Dependency NOT_WIN32 = TRUE <br>
              --   Enabling Man Pages support. <br>
              --   Override with -DENABLE_MAN_PAGES=ON/OFF <br>
              --     -- Python checking for virtualenv <br>
              -- Python checking for virtualenv - "assert hasattr(sys, <br>
              'real_prefix')" failed <br>
              -- Utilizing the python install directory: <br>
              /usr/local/lib/python2.7/dist-packages <br>
              --     --
          ###################################################### <br>
              -- # UHD enabled components <br>
              -- ######################################################
          <br>
              --   * LibUHD <br>
              --   * LibUHD - C API <br>
              --   * LibUHD - Python API <br>
              --   * Examples <br>
              --   * Utils <br>
              --   * Tests <br>
              --   * USB <br>
              --   * GPSD <br>
              --   * B100 <br>
              --   * B200 <br>
              --   * USRP1 <br>
              --   * USRP2 <br>
              --   * X300 <br>
              --   * N230 <br>
              --   * MPMD <br>
              --   * N300 <br>
              --   * N320 <br>
              --   * E320 <br>
              --   * OctoClock <br>
              --   * Manual <br>
              --   * API/Doxygen <br>
              --   * Man Pages <br>
              --     --
          ###################################################### <br>
              -- # UHD disabled components <br>
              -- ######################################################
          <br>
              --   * LIBERIO <br>
              --   * E300 <br>
              --   * DPDK <br>
              --     --
          ****************************************************** <br>
              -- * You are building a development branch of UHD. <br>
              -- * These branches are designed to provide early access <br>
              -- * to UHD and USRP features, but should be considered <br>
              -- * unstable and/or experimental! <br>
              -- ******************************************************
          <br>
              -- Building version: 3.14.1.HEAD-0-g0347a6d8 <br>
              -- Using install prefix: /usr/local <br>
              -- Configuring done <br>
              -- Generating done <br>
              -- Build files have been written to:
          /home/baroch/uhd/host/build <br>
              baroch@reliable:~/uhd/host/build$ make <br>
              Scanning dependencies of target uhd_rpclib <br>
              [  0%] Building CXX object <br>
             
          lib/deps/rpclib/CMakeFiles/uhd_rpclib.dir/lib/rpc/dispatcher.cc.o
          <br>
              In file included from <br>
             
          /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
          <br>
                                from <br>
             
          /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/dispatcher.h:12,
          <br>
                                from <br>
             
          /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/dispatcher.cc:1:
          <br>
             
          /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:
          In <br>
              function ‘void <br>
             
          clmdep_msgpack::v1::operator&lt;&lt;(clmdep_msgpack::v1::object&amp;,
          const <br>
              msgpack_object&amp;)’: <br>
             
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:613:34:<br>
              warning: ‘void* memcpy(void*, const void*, size_t)’
          copying an <br>
              object of non-trivial type ‘struct
          clmdep_msgpack::v1::object’ from <br>
              an array of ‘const msgpack_object’ {aka ‘const struct <br>
              msgpack_object’} [-Wclass-memaccess] <br>
                 613 |     std::memcpy(&amp;o, &amp;v, sizeof(v)); <br>
                     |                                  ^ <br>
              In file included from <br>
             
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/adaptor/adaptor_base.hpp:21,<br>
                                from <br>
             
          /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:24,
          <br>
                                from <br>
             
          /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
          <br>
                                from <br>
             
          /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/dispatcher.h:12,
          <br>
                                from <br>
             
          /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/dispatcher.cc:1:
          <br>
             
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object_fwd.hpp:111:8:<br>
              note: ‘struct clmdep_msgpack::v1::object’ declared here <br>
                 111 | struct object { <br>
                     |        ^~~~~~ <br>
              [  0%] Building CXX object <br>
             
          lib/deps/rpclib/CMakeFiles/uhd_rpclib.dir/lib/rpc/server.cc.o
          <br>
              In file included from <br>
             
          /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
          <br>
                                from <br>
             
          /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/server.h:7,
          <br>
                                from <br>
              /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/server.cc:1:
          <br>
             
          /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:
          In <br>
              function ‘void <br>
             
          clmdep_msgpack::v1::operator&lt;&lt;(clmdep_msgpack::v1::object&amp;,
          const <br>
              msgpack_object&amp;)’: <br>
             
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:613:34:<br>
              warning: ‘void* memcpy(void*, const void*, size_t)’
          copying an <br>
              object of non-trivial type ‘struct
          clmdep_msgpack::v1::object’ from <br>
              an array of ‘const msgpack_object’ {aka ‘const struct <br>
              msgpack_object’} [-Wclass-memaccess] <br>
                 613 |     std::memcpy(&amp;o, &amp;v, sizeof(v)); <br>
                     |                                  ^ <br>
              In file included from <br>
             
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/adaptor/adaptor_base.hpp:21,<br>
                                from <br>
             
          /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:24,
          <br>
                                from <br>
             
          /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,
          <br>
                                from <br>
             
          /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/server.h:7,
          <br>
                                from <br>
              /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/server.cc:1:
          <br>
             
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object_fwd.hpp:111:8:<br>
              note: ‘struct clmdep_msgpack::v1::object’ declared here <br>
                 111 | struct object { <br>
                     |        ^~~~~~ <br>
          <br>
          <br>
              [ a lot of warnings truncated B.O.] <br>
          <br>
          <br>
          <br>
              [ 22%] Building CXX object
          lib/CMakeFiles/uhd.dir/usrp/subdev_spec.cpp.o <br>
              [ 23%] Building CXX object <br>
              lib/CMakeFiles/uhd.dir/usrp/fe_connection.cpp.o <br>
              [ 23%] Building CXX object <br>
              lib/CMakeFiles/uhd.dir/usrp/dboard_eeprom_c.cpp.o <br>
              [ 23%] Building CXX object <br>
              lib/CMakeFiles/uhd.dir/usrp/mboard_eeprom_c.cpp.o <br>
              [ 23%] Building CXX object <br>
              lib/CMakeFiles/uhd.dir/usrp/subdev_spec_c.cpp.o <br>
              [ 23%] Building CXX object
          lib/CMakeFiles/uhd.dir/usrp/usrp_c.cpp.o <br>
              [ 23%] Building CXX object
          lib/CMakeFiles/uhd.dir/usrp/gpsd_iface.cpp.o <br>
              /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member
          function <br>
              ‘int64_t uhd::usrp::gpsd_iface_impl::_epoch_time()’: <br>
              /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:141:62:
          error: cannot <br>
              convert ‘timespec_t’ {aka ‘timespec’} to ‘time_t’ {aka
          ‘long int’} <br>
                 141 |         return <br>
              (boost::posix_time::from_time_t(_gps_data.fix.time) <br>
                     | ~~~~~~~~~~~~~~^~~~ <br>
             
          |                                                             
          | <br>
              | timespec_t {aka timespec} <br>
              In file included from
          /usr/include/boost/thread/xtime.hpp:16, <br>
                                from
          /usr/include/boost/thread/pthread/mutex.hpp:20, <br>
                                from
          /usr/include/boost/thread/mutex.hpp:16, <br>
                                from <br>
              /usr/include/boost/thread/pthread/shared_mutex.hpp:14, <br>
                                from
          /usr/include/boost/thread/shared_mutex.hpp:28, <br>
                                from
          /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16: <br>
             
          /usr/include/boost/date_time/posix_time/conversion.hpp:27:33:
          <br>
              note:   initializing argument 1 of
          ‘boost::posix_time::ptime <br>
              boost::posix_time::from_time_t(time_t)’ <br>
                  27 |   ptime from_time_t(std::time_t t) <br>
                     |                     ~~~~~~~~~~~~^ <br>
              /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member
          function <br>
              ‘boost::gregorian::date
          uhd::usrp::gpsd_iface_impl::_gregorian_date()’: <br>
              /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:148:61:
          error: cannot <br>
              convert ‘timespec_t’ {aka ‘timespec’} to ‘time_t’ {aka
          ‘long int’} <br>
                 148 |         return <br>
              boost::posix_time::from_time_t(_gps_data.fix.time).date();
          <br>
                     | ~~~~~~~~~~~~~~^~~~ <br>
             
          |                                                            
          | <br>
              | timespec_t {aka timespec} <br>
              In file included from
          /usr/include/boost/thread/xtime.hpp:16, <br>
                                from
          /usr/include/boost/thread/pthread/mutex.hpp:20, <br>
                                from
          /usr/include/boost/thread/mutex.hpp:16, <br>
                                from <br>
              /usr/include/boost/thread/pthread/shared_mutex.hpp:14, <br>
                                from
          /usr/include/boost/thread/shared_mutex.hpp:28, <br>
                                from
          /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:16: <br>
             
          /usr/include/boost/date_time/posix_time/conversion.hpp:27:33:
          <br>
              note:   initializing argument 1 of
          ‘boost::posix_time::ptime <br>
              boost::posix_time::from_time_t(time_t)’ <br>
                  27 |   ptime from_time_t(std::time_t t) <br>
                     |                     ~~~~~~~~~~~~^ <br>
              /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member
          function <br>
              ‘std::string uhd::usrp::gpsd_iface_impl::_gps_gprmc()’: <br>
              /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:206:49:
          error: invalid <br>
              cast from type ‘timespec_t’ {aka ‘timespec’} to type
          ‘time_t’ {aka <br>
              ‘long int’} <br>
                 206 |             intfixtime = (time_t)
          _gps_data.fix.time; <br>
                     |                                                
          ^~~~ <br>
              /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp: In member
          function <br>
              ‘std::string uhd::usrp::gpsd_iface_impl::_gps_gpgga()’: <br>
              /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:241:45:
          error: invalid <br>
              cast from type ‘timespec_t’ {aka ‘timespec’} to type
          ‘time_t’ {aka <br>
              ‘long int’} <br>
                 241 |         intfixtime = (time_t) _gps_data.fix.time;
          <br>
                     |                                             ^~~~
          <br>
              /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:268:42:
          error: ‘struct <br>
              gps_data_t’ has no member named ‘separation’ <br>
                 268 |         if
          (boost::math::isnan(_gps_data.separation)) <br>
                     |                                         
          ^~~~~~~~~~ <br>
              /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:58:
          error: ‘struct <br>
              gps_data_t’ has no member named ‘separation’ <br>
                 272 |                 str(boost::format("%.3f,M,") % <br>
              _gps_data.separation)); <br>
                     | ^~~~~~~~~~ <br>
              /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:17:
          error: ‘str’ <br>
              was not declared in this scope <br>
                 272 |                 str(boost::format("%.3f,M,") % <br>
              _gps_data.separation)); <br>
                     |                 ^~~ <br>
              /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:272:17:
          note: <br>
              suggested alternatives: <br>
              In file included from /usr/include/boost/format.hpp:53, <br>
                                from
          /home/baroch/uhd/host/lib/usrp/gpsd_iface.cpp:15: <br>
              /usr/include/boost/format/free_funcs.hpp:22:38: note:
          ‘boost::str’ <br>
                  22 |     std::basic_string&lt;Ch, Tr, Alloc&gt;
          str(const <br>
              basic_format&lt;Ch, Tr, Alloc&gt;&amp; f) { <br>
                     |                                      ^~~ <br>
              /usr/include/boost/format/free_funcs.hpp:22:38: note:
          ‘boost::str’ <br>
              make[2]: *** [lib/CMakeFiles/uhd.dir/build.make:1303: <br>
              lib/CMakeFiles/uhd.dir/usrp/gpsd_iface.cpp.o] Error 1 <br>
              make[1]: *** [CMakeFiles/Makefile2:731:
          lib/CMakeFiles/uhd.dir/all] <br>
              Error 2 <br>
              make: *** [Makefile:163: all] Error 2 <br>
          <br>
          Thanks, <br>
          <br>
          Baroch Oren <br>
          <br>
          <br>
          <br>
          -- <br>
          <br>
          ברוך אורן بروح اورن Baroch Oren <br>
          <br>
          טל' 058-7799233 cell <br>
          <br>
          תמכו באקטיביזם שלי support my activism <a
            class="moz-txt-link-rfc2396E"
            href="https://www.patreon.com/barochoren"
            moz-do-not-send="true">&lt;https://www.patreon.com/barochoren&gt;</a>
          <br>
          <br>
          <br>
          _______________________________________________ <br>
          USRP-users mailing list <br>
          <a class="moz-txt-link-abbreviated"
            href="mailto:USRP-users@lists.ettus.com"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a> <br>
          <a class="moz-txt-link-freetext"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
          <br>
          <br>
        </blockquote>
        <br>
        _______________________________________________ <br>
        USRP-users mailing list <br>
        <a class="moz-txt-link-abbreviated"
          href="mailto:USRP-users@lists.ettus.com"
          moz-do-not-send="true">USRP-users@lists.ettus.com</a> <br>
        <a class="moz-txt-link-freetext"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
          moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
        <br>
      </blockquote>
      <div class="moz-signature" style="direction: ltr;">-- <br>
        <div dir="rtl">
          <p><bold>ברוך אורן بروح اورن Baroch Oren</bold></p>
          <p>טל' 058-7799233 cell</p>
          <p><a href="https://www.patreon.com/barochoren"
              moz-do-not-send="true">תמכו באקטיביזם שלי support my
              activism</a></p>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------F7AA56E36E6214589724B8E7--


--===============0511126868404711176==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0511126868404711176==--

