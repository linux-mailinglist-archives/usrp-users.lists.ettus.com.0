Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3780529E7DD
	for <lists+usrp-users@lfdr.de>; Thu, 29 Oct 2020 10:54:16 +0100 (CET)
Received: from [::1] (port=42958 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kY4dJ-0005vc-E1; Thu, 29 Oct 2020 05:54:13 -0400
Received: from dslsn201.fix.netvision.net.il ([82.166.192.201]:37617
 helo=sept12.barochoren.com) by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <baroch@6tzvaim.com>) id 1kY4dE-0005pG-OB
 for usrp-users@lists.ettus.com; Thu, 29 Oct 2020 05:54:09 -0400
Received: from [192.168.14.139] (bzq-79-179-191-47.red.bezeqint.net
 [79.179.191.47])
 by sept12.barochoren.com (Postfix) with ESMTPSA id F107622F8AE
 for <usrp-users@lists.ettus.com>; Thu, 29 Oct 2020 11:43:19 +0200 (IST)
To: usrp-users@lists.ettus.com
Message-ID: <73588971-021a-f7fc-dbe8-236843ff27b7@6tzvaim.com>
Date: Thu, 29 Oct 2020 11:53:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] UHD HOST build fails on ubuntu 20.04 LTS - (missing
 dependencies)
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
From: Baroch Oren via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Baroch Oren <baroch@6tzvaim.com>
Content-Type: multipart/mixed; boundary="===============2167306790904632659=="
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

--===============2167306790904632659==
Content-Type: text/html; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

<html style="direction: ltr;">
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <style id="bidiui-paragraph-margins" type="text/css">body p { margin-bottom: 0cm; margin-top: 0pt; } </style>
  </head>
  <body bidimailui-charset-is-forced="true" style="direction: ltr;">
    <p>Hello,</p>
    <p>I've been following Application Note AN-445
<a class="moz-txt-link-freetext" href="https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux">https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux</a></p>
    <p>Couldn't build it. Please advise.</p>
    <p><br>
    </p>
    <p>These are the requirements that were reported missing on the
      apt-get line:</p>
    <blockquote>
      <p>E: Unable to locate package libcppunit-1.14-0<br>
        E: Package 'python-scipy' has no installation candidate<br>
        E: Unable to locate package qt4-bin-dbg<br>
        E: Package 'qt4-default' has no installation candidate<br>
        E: Package 'qt4-doc' has no installation candidate<br>
        E: Package 'libqt4-dev' has no installation candidate<br>
        E: Unable to locate package libqt4-dev-bin<br>
        E: Unable to locate package python-qt4<br>
        E: Unable to locate package python-qt4-dbg<br>
        E: Unable to locate package python-qt4-dev<br>
        E: Unable to locate package python-qt4-doc<br>
        E: Unable to locate package libqwt6abi1<br>
        E: Unable to locate package libncurses6-dbg<br>
        E: Package 'libqt4-dev' has no installation candidate<br>
        E: Package 'qt4-default' has no installation candidate<br>
        E: Unable to locate package qt4-dev-tools<br>
        E: Unable to locate package pyqt4-dev-tools<br>
        E: Unable to locate package python-qwt5-qt4<br>
        E: Unable to locate package python-gtk2<br>
        E: Unable to locate package python-requests<br>
        E: Package 'python-sphinx' has no installation candidate<br>
        E: Unable to locate package python-zmq<br>
        E: Package 'libqwt-dev' has no installation candidate<br>
        E: Unable to locate package libqwt6abi1<br>
        E: Unable to locate package libgps23<br>
        E: Package 'python-gps' has no installation candidate<br>
        <br>
      </p>
    </blockquote>
    <p>following attempt to make &amp; build gives countless warning and
      tthe following error:</p>
    <blockquote>
      <p>baroch@reliable:~/uhd/host/build$ cmake -DENABLE_GPSD=ON ../<br>
        -- <br>
        -- Configuring the python interpreter...<br>
        -- Python interpreter: /usr/bin/python2<br>
        -- Override with: -DPYTHON_EXECUTABLE=&lt;path-to-python&gt;<br>
        -- Python runtime interpreter: /usr/bin/python2<br>
        -- Override with:
        -DRUNTIME_PYTHON_EXECUTABLE=&lt;path-to-python&gt;<br>
        -- Working off of feature or development branch. Updating
        version number.<br>
        -- Using UHD Images Directory: /usr/local/share/uhd/images<br>
        -- Build type not specified: defaulting to release.<br>
        -- <br>
        -- Configuring Boost C++ Libraries...<br>
        -- Looking for optional Boost components...<br>
        -- Found Boost:
        /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake
        (found suitable version "1.71.0", minimum required is "1.53")
        found components: python <br>
        -- Looking for required Boost components...<br>
        -- Found Boost:
        /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake
        (found suitable version "1.71.0", minimum required is "1.53")
        found components: chrono date_time filesystem program_options
        regex system unit_test_framework serialization thread <br>
        -- Boost include directories: /usr/include<br>
        -- Boost library directories: /usr/lib/x86_64-linux-gnu<br>
        -- Boost libraries:
Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_options;Boost::regex;Boost::system;Boost::unit_test_framework;Boost::serialization;Boost::thread<br>
        CMake Warning (dev) at cmake/Modules/UHDLog.cmake:68 (set):<br>
          implicitly converting 'FILE' to 'STRING' type.<br>
        Call Stack (most recent call first):<br>
          CMakeLists.txt:365 (include)<br>
        This warning is for project developers.  Use -Wno-dev to
        suppress it.<br>
        <br>
        -- <br>
        -- Python checking for Python version 2.7 or greater<br>
        -- Python checking for Python version 2.7 or greater - found<br>
        -- <br>
        -- Python checking for Mako templates 0.4.2 or greater<br>
        -- Python checking for Mako templates 0.4.2 or greater - found<br>
        -- <br>
        -- Python checking for requests 2.0 or greater<br>
        -- Python checking for requests 2.0 or greater - "import
        requests" failed<br>
        -- <br>
        -- Python checking for numpy 1.7 or greater<br>
        -- Python checking for numpy 1.7 or greater - found<br>
        -- <br>
        -- Configuring LibUHD support...<br>
        --   Dependency Boost_FOUND = TRUE<br>
        --   Dependency HAVE_PYTHON_PLAT_MIN_VERSION = TRUE<br>
        --   Dependency HAVE_PYTHON_MODULE_MAKO = TRUE<br>
        --   Enabling LibUHD support.<br>
        --   Override with -DENABLE_LIBUHD=ON/OFF<br>
        -- <br>
        -- Configuring LibUHD - C API support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Enabling LibUHD - C API support.<br>
        --   Override with -DENABLE_C_API=ON/OFF<br>
        -- <br>
        -- Configuring LibUHD - Python API support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Dependency BOOST_PYTHON_FOUND = 1<br>
        --   Dependency HAVE_PYTHON_MODULE_NUMPY = TRUE<br>
        --   Dependency PythonLibs_FOUND = TRUE<br>
        --   Enabling LibUHD - Python API support.<br>
        --   Override with -DENABLE_PYTHON_API=ON/OFF<br>
        -- <br>
        -- Configuring Examples support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Enabling Examples support.<br>
        --   Override with -DENABLE_EXAMPLES=ON/OFF<br>
        -- <br>
        -- Configuring Utils support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Enabling Utils support.<br>
        --   Override with -DENABLE_UTILS=ON/OFF<br>
        -- <br>
        -- Configuring Tests support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Enabling Tests support.<br>
        --   Override with -DENABLE_TESTS=ON/OFF<br>
        -- <br>
        -- Could NOT find LIBERIO (missing: LIBERIO_LIBRARY
        LIBERIO_INCLUDE_DIR) <br>
        -- Could NOT find dpdk (missing: DPDK_INCLUDE_DIR) <br>
        -- <br>
        -- Configuring LIBERIO support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Dependency LIBERIO_FOUND = FALSE<br>
        --   Disabling LIBERIO support.<br>
        --   Override with -DENABLE_LIBERIO=ON/OFF<br>
        -- <br>
        -- Configuring USB support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Dependency LIBUSB_FOUND = TRUE<br>
        --   Enabling USB support.<br>
        --   Override with -DENABLE_USB=ON/OFF<br>
        -- <br>
        -- Configuring GPSD support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Dependency ENABLE_GPSD = ON<br>
        --   Dependency LIBGPS_FOUND = TRUE<br>
        --   Enabling GPSD support.<br>
        --   Override with -DENABLE_GPSD=ON/OFF<br>
        -- <br>
        -- Configuring B100 support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Dependency ENABLE_USB = ON<br>
        --   Enabling B100 support.<br>
        --   Override with -DENABLE_B100=ON/OFF<br>
        -- <br>
        -- Configuring B200 support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Dependency ENABLE_USB = ON<br>
        --   Enabling B200 support.<br>
        --   Override with -DENABLE_B200=ON/OFF<br>
        -- <br>
        -- Configuring E300 support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Disabling E300 support.<br>
        --   Override with -DENABLE_E300=ON/OFF<br>
        -- <br>
        -- Configuring USRP1 support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Dependency ENABLE_USB = ON<br>
        --   Enabling USRP1 support.<br>
        --   Override with -DENABLE_USRP1=ON/OFF<br>
        -- <br>
        -- Configuring USRP2 support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Enabling USRP2 support.<br>
        --   Override with -DENABLE_USRP2=ON/OFF<br>
        -- <br>
        -- Configuring X300 support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Enabling X300 support.<br>
        --   Override with -DENABLE_X300=ON/OFF<br>
        -- <br>
        -- Configuring N230 support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Enabling N230 support.<br>
        --   Override with -DENABLE_N230=ON/OFF<br>
        -- <br>
        -- Configuring MPMD support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Enabling MPMD support.<br>
        --   Override with -DENABLE_MPMD=ON/OFF<br>
        -- <br>
        -- Configuring N300 support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Dependency ENABLE_MPMD = ON<br>
        --   Enabling N300 support.<br>
        --   Override with -DENABLE_N300=ON/OFF<br>
        -- <br>
        -- Configuring N320 support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Dependency ENABLE_MPMD = ON<br>
        --   Enabling N320 support.<br>
        --   Override with -DENABLE_N320=ON/OFF<br>
        -- <br>
        -- Configuring E320 support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Dependency ENABLE_MPMD = ON<br>
        --   Enabling E320 support.<br>
        --   Override with -DENABLE_E320=ON/OFF<br>
        -- <br>
        -- Configuring OctoClock support...<br>
        --   Dependency ENABLE_LIBUHD = ON<br>
        --   Enabling OctoClock support.<br>
        --   Override with -DENABLE_OCTOCLOCK=ON/OFF<br>
        -- <br>
        -- Configuring DPDK support...<br>
        --   Dependency ENABLE_MPMD = ON<br>
        --   Dependency DPDK_FOUND = FALSE<br>
        --   Disabling DPDK support.<br>
        --   Override with -DENABLE_DPDK=ON/OFF<br>
        -- <br>
        -- <br>
        -- <br>
        -- Configuring priority scheduling...<br>
        --   Priority scheduling supported through
        pthread_setschedparam.<br>
        --   Setting thread names is supported through
        pthread_setname_np.<br>
        -- <br>
        -- Configuring high resolution timing...<br>
        --   High resolution timing supported through clock_gettime.<br>
        -- <br>
        -- Configuring module loading...<br>
        --   Module loading supported through dlopen.<br>
        -- <br>
        -- Processing NI-RIO FPGA LVBITX Bitstreams...<br>
        --   Using x300.lvbitx_base for codegen<br>
        --   Using x310.lvbitx_base for codegen<br>
        -- <br>
        -- USB support enabled via libusb.<br>
        -- <br>
        -- Configuring interface address discovery...<br>
        --   Interface address discovery supported through getifaddrs.<br>
        -- <br>
        -- Loading build info.<br>
        -- <br>
        -- Adding B2XX device test target<br>
        -- Adding X3x0 device test target<br>
        -- Adding N3XX device test target<br>
        -- Adding E32x device test target<br>
        -- <br>
        CMake Warning at utils/CMakeLists.txt:123 (message):<br>
          Python module `requests' not found -- uhd_images_downloader.py
        will not<br>
          work without it.<br>
        <br>
        <br>
        CMake Warning at utils/CMakeLists.txt:124 (message):<br>
          You may be able to install this by running 'pip install
        requests'<br>
        <br>
        <br>
        -- <br>
        -- Configuring Manual support...<br>
        --   Dependency DOXYGEN_FOUND = YES<br>
        --   Enabling Manual support.<br>
        --   Override with -DENABLE_MANUAL=ON/OFF<br>
        -- <br>
        -- Configuring API/Doxygen support...<br>
        --   Dependency DOXYGEN_FOUND = YES<br>
        --   Enabling API/Doxygen support.<br>
        --   Override with -DENABLE_DOXYGEN=ON/OFF<br>
        -- <br>
        -- Configuring Man Pages support...<br>
        --   Dependency GZIP_FOUND = TRUE<br>
        --   Dependency NOT_WIN32 = TRUE<br>
        --   Enabling Man Pages support.<br>
        --   Override with -DENABLE_MAN_PAGES=ON/OFF<br>
        -- <br>
        -- Python checking for virtualenv<br>
        -- Python checking for virtualenv - "assert hasattr(sys,
        'real_prefix')" failed<br>
        -- Utilizing the python install directory:
        /usr/local/lib/python2.7/dist-packages<br>
        -- <br>
        -- ######################################################<br>
        -- # UHD enabled components                              <br>
        -- ######################################################<br>
        --   * LibUHD<br>
        --   * LibUHD - C API<br>
        --   * LibUHD - Python API<br>
        --   * Examples<br>
        --   * Utils<br>
        --   * Tests<br>
        --   * USB<br>
        --   * GPSD<br>
        --   * B100<br>
        --   * B200<br>
        --   * USRP1<br>
        --   * USRP2<br>
        --   * X300<br>
        --   * N230<br>
        --   * MPMD<br>
        --   * N300<br>
        --   * N320<br>
        --   * E320<br>
        --   * OctoClock<br>
        --   * Manual<br>
        --   * API/Doxygen<br>
        --   * Man Pages<br>
        -- <br>
        -- ######################################################<br>
        -- # UHD disabled components                             <br>
        -- ######################################################<br>
        --   * LIBERIO<br>
        --   * E300<br>
        --   * DPDK<br>
        -- <br>
        -- ******************************************************<br>
        -- * You are building a development branch of UHD.<br>
        -- * These branches are designed to provide early access<br>
        -- * to UHD and USRP features, but should be considered<br>
        -- * unstable and/or experimental!<br>
        -- ******************************************************<br>
        -- Building version: 3.14.1.HEAD-0-g0347a6d8<br>
        -- Using install prefix: /usr/local<br>
        -- Configuring done<br>
        -- Generating done<br>
        -- Build files have been written to: /home/baroch/uhd/host/build<br>
        baroch@reliable:~/uhd/host/build$ make<br>
        Scanning dependencies of target uhd_rpclib<br>
        [  0%] Building CXX object
        lib/deps/rpclib/CMakeFiles/uhd_rpclib.dir/lib/rpc/dispatcher.cc.o<br>
        In file included from
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,<br>
                         from
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/dispatcher.h:12,<br>
                         from
        /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/dispatcher.cc:1:<br>
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp: In
        function ‘void
        clmdep_msgpack::v1::operator&lt;&lt;(clmdep_msgpack::v1::object&amp;,
        const msgpack_object&amp;)’:<br>
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:613:34:
        warning: ‘void* memcpy(void*, const void*, size_t)’ copying an
        object of non-trivial type ‘struct clmdep_msgpack::v1::object’
        from an array of ‘const msgpack_object’ {aka ‘const struct
        msgpack_object’} [-Wclass-memaccess]<br>
          613 |     std::memcpy(&amp;o, &amp;v, sizeof(v));<br>
              |                                  ^<br>
        In file included from
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/adaptor/adaptor_base.hpp:21,<br>
                         from
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:24,<br>
                         from
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,<br>
                         from
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/dispatcher.h:12,<br>
                         from
        /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/dispatcher.cc:1:<br>
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object_fwd.hpp:111:8:
        note: ‘struct clmdep_msgpack::v1::object’ declared here<br>
          111 | struct object {<br>
              |        ^~~~~~<br>
        [  0%] Building CXX object
        lib/deps/rpclib/CMakeFiles/uhd_rpclib.dir/lib/rpc/server.cc.o<br>
        In file included from
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,<br>
                         from
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/server.h:7,<br>
                         from
        /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/server.cc:1:<br>
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp: In
        function ‘void
        clmdep_msgpack::v1::operator&lt;&lt;(clmdep_msgpack::v1::object&amp;,
        const msgpack_object&amp;)’:<br>
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:613:34:
        warning: ‘void* memcpy(void*, const void*, size_t)’ copying an
        object of non-trivial type ‘struct clmdep_msgpack::v1::object’
        from an array of ‘const msgpack_object’ {aka ‘const struct
        msgpack_object’} [-Wclass-memaccess]<br>
          613 |     std::memcpy(&amp;o, &amp;v, sizeof(v));<br>
              |                                  ^<br>
        In file included from
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/adaptor/adaptor_base.hpp:21,<br>
                         from
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object.hpp:24,<br>
                         from
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack.hpp:23,<br>
                         from
        /home/baroch/uhd/host/lib/deps/rpclib/include/rpc/server.h:7,<br>
                         from
        /home/baroch/uhd/host/lib/deps/rpclib/lib/rpc/server.cc:1:<br>
/home/baroch/uhd/host/lib/deps/rpclib/include/rpc/msgpack/object_fwd.hpp:111:8:
        note: ‘struct clmdep_msgpack::v1::object’ declared here<br>
          111 | struct object {<br>
              |        ^~~~~~<br>
        <br>
              <br>
        [ a lot of warnings truncated B.O.]      <br>
              <br>
              <br>
              <br>
        [ 22%] Building CXX object
        lib/CMakeFiles/uhd.dir/usrp/subdev_spec.cpp.o<br>
        [ 23%] Building CXX object
        lib/CMakeFiles/uhd.dir/usrp/fe_connection.cpp.o<br>
        [ 23%] Building CXX object
        lib/CMakeFiles/uhd.dir/usrp/dboard_eeprom_c.cpp.o<br>
        [ 23%] Building CXX object
        lib/CMakeFiles/uhd.dir/usrp/mboard_eeprom_c.cpp.o<br>
        [ 23%] Building CXX object
        lib/CMakeFiles/uhd.dir/usrp/subdev_spec_c.cpp.o<br>
        [ 23%] Building CXX object
        lib/CMakeFiles/uhd.dir/usrp/usrp_c.cpp.o<br>
        [ 23%] Building CXX object
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
        /usr/include/boost/format/free_funcs.hpp:22:38: note:  
        ‘boost::str’<br>
        make[2]: *** [lib/CMakeFiles/uhd.dir/build.make:1303:
        lib/CMakeFiles/uhd.dir/usrp/gpsd_iface.cpp.o] Error 1<br>
        make[1]: *** [CMakeFiles/Makefile2:731:
        lib/CMakeFiles/uhd.dir/all] Error 2<br>
        make: *** [Makefile:163: all] Error 2<br>
        <br>
      </p>
    </blockquote>
    <p>Thanks, </p>
    <p>Baroch Oren<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <div class="moz-signature">-- <br>
      <div dir="rtl">
        <p><bold>ברוך אורן بروح اورن Baroch Oren</bold></p>
        <p>טל' 058-7799233 cell</p>
        <p><a href="https://www.patreon.com/barochoren">תמכו באקטיביזם
            שלי support my activism</a></p>
      </div>
    </div>
  </body>
</html>


--===============2167306790904632659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2167306790904632659==--
