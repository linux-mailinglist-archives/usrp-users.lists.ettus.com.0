Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB40E647F
	for <lists+usrp-users@lfdr.de>; Sun, 27 Oct 2019 18:24:56 +0100 (CET)
Received: from [::1] (port=60770 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iOmHX-0000K3-3B; Sun, 27 Oct 2019 13:24:47 -0400
Received: from mail-wm1-f50.google.com ([209.85.128.50]:55012)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <janezhang76201@gmail.com>)
 id 1iOmHS-0000Fx-RZ
 for usrp-users@lists.ettus.com; Sun, 27 Oct 2019 13:24:43 -0400
Received: by mail-wm1-f50.google.com with SMTP id g7so7056601wmk.4
 for <usrp-users@lists.ettus.com>; Sun, 27 Oct 2019 10:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=PfAejWZZVtms/tbxdNQ6Z4bbXvt1kSevBtMntdurweE=;
 b=EY2m3goSqE0xlXZ6V3tU3JQHhLD9D0/iPLNXdYajAM445gw8414/8FKFVnHYERE4b9
 93Ww4UhIN3R/YEwEzWNX/fScW4umusKdgmPQgtykIji5iL0DVfmYHbynd4AFhBA50QYP
 oF8TuM9pVxAzPVuZ4lwpwa7/cr1s1q298jgme69jfVh8CsuTG//WhjVvfcpF4A2z6pyG
 U6vfTcJIDBRDUBFu7/cMIS0Pibu9LAk1oZa50JMqCpltrDx/+56xT3F2Hw28EJro+G0O
 Fh3rxG/RVtwrkyOWHCkYq+9y/XDeSVD4oszzWnyzZhgCZ9EQnZ6iVeHVhosLVHy+Mu7J
 antg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=PfAejWZZVtms/tbxdNQ6Z4bbXvt1kSevBtMntdurweE=;
 b=MTEtLO4U5MiAGi+9KRa4fScHl2Tdu8fTlKfmmuDfkUlrhZEp2ITsR+ZNUg7c47PlN+
 A+vb3yZHwuysQroqLl0lCp7ZcrLy4aBK5oBbYw6cXTUSiIo2jCV9igVjWYorvcZs4hI0
 lbl91mV/gJbxY5aZYheA7Ih6gbQ2z10SUofqWz4RuQR81aAjZ8q7U7n+7xyMn7D4kDSL
 R3syL5Wf+GdMuGZrJYe+1jyqCuM7//A2XnRJ48hWDPaspdB/Aq7miRMh6vKwvBIsDJdw
 i/hBeVLFwyBLDmLYulromwMbIrz30WODBhlaGQRBwrR8BH0fYc2WR8dpCk+eCnvAMxvh
 xhTg==
X-Gm-Message-State: APjAAAWFu7HQtTdiPHT4vWEWDxyoS+1UCc0oelmUsxSfeddwEJHmxRpt
 /w6zTyArmQUzhwPy0Ovy9zIfKzNNJSjLNVfeaEiivbzTvCQ=
X-Google-Smtp-Source: APXvYqzTxY9TnbvO9pcWZyr+liRk+YlbYz10tnFky7EXt3uaC1XxfN4731Q3bQHaW6oPIiILc8BunNzZG2KnH1YFq/Y=
X-Received: by 2002:a05:600c:142:: with SMTP id
 w2mr12068022wmm.121.1572197040890; 
 Sun, 27 Oct 2019 10:24:00 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 27 Oct 2019 12:23:49 -0500
Message-ID: <CAFYRoL=kkQQx5YCAjBRgVTyZfqUvr9vhSk2cwDvpvvfZK=sj7g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="00000000000023bf490595e7a692"
Subject: [USRP-users] emergence, help, build uhd with error about dpdk
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
From: Jane Zhang via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jane Zhang <janezhang76201@gmail.com>
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

--00000000000023bf490595e7a692
Content-Type: multipart/alternative; boundary="00000000000023bf460595e7a690"

--00000000000023bf460595e7a690
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hello, i am a new user with ubuntu and uhd. Later i need to build gnuradio.
I build uhd(look from changelog, release 3.15). There were errors about
dpdk as follows.
Would you please help to solve this problem. I have time to finish this
task.
Thank you so much!

dell@dell-XPS-15-9550:~/uhd/host/build$ cmake ../
--=20
-- Configuring the Python interpreter...
-- Manually determining build Python version...
-- Python interpreter: /usr/bin/python3.6 Version: 3.6.8
-- Override with: -DPYTHON_EXECUTABLE=3D<path-to-python>
-- Manually determining runtime Python version...
-- Python runtime interpreter: /usr/bin/python3.6 Version: 3.6.8
-- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D<path-to-python>
-- Finding Python Libraries...
-- Could not find Python Libraries.
-- Operating on master branch.
-- Using UHD Images Directory: /usr/local/share/uhd/images
-- Build type not specified: defaulting to release.
--=20
-- Configuring Boost C++ Libraries...
-- Looking for optional Boost components...
-- Found Boost: /usr/include (found suitable version "1.58.0", minimum
required is "1.58")
-- Looking for required Boost components...
-- Found Boost: /usr/include (found suitable version "1.58.0", minimum
required is "1.58") found components:  chrono date_time filesystem
program_options regex system unit_test_framework serialization thread
atomic
-- Boost include directories: /usr/include
-- Boost library directories: /usr/lib/x86_64-linux-gnu
-- Boost libraries:
/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libb=
oost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib=
/x86_64-linux-gnu/libboost_program_options.so;/usr/lib/x86_64-linux-gnu/lib=
boost_regex.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64=
-linux-gnu/libboost_unit_test_framework.so;/usr/lib/x86_64-linux-gnu/libboo=
st_serialization.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;-lpthread;=
/usr/lib/x86_64-linux-gnu/libboost_atomic.so
--=20
-- Python checking for Python version 2.7 or greater
-- Python checking for Python version 2.7 or greater - found
--=20
-- Python checking for Mako templates 0.4.2 or greater
-- Python checking for Mako templates 0.4.2 or greater - found
--=20
-- Python checking for requests 2.0 or greater
-- Python checking for requests 2.0 or greater - found
--=20
-- Python checking for numpy 1.7 or greater
-- Python checking for numpy 1.7 or greater - found
--=20
-- Configuring LibUHD support...
--   Dependency Boost_FOUND =3D TRUE
--   Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D TRUE
--   Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE
--   Enabling LibUHD support.
--   Override with -DENABLE_LIBUHD=3DON/OFF
--=20
-- Configuring LibUHD - C API support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Enabling LibUHD - C API support.
--   Override with -DENABLE_C_API=3DON/OFF
--=20
-- Configuring LibUHD - Python API support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Dependency HAVE_PYTHON_MODULE_NUMPY =3D TRUE
--   Dependency HAVE_PYTHON_LIBS =3D FALSE
--   Disabling LibUHD - Python API support.
--   Override with -DENABLE_PYTHON_API=3DON/OFF
--=20
-- Configuring Examples support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Enabling Examples support.
--   Override with -DENABLE_EXAMPLES=3DON/OFF
--=20
-- Configuring Utils support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Enabling Utils support.
--   Override with -DENABLE_UTILS=3DON/OFF
--=20
-- Configuring Tests support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Enabling Tests support.
--   Override with -DENABLE_TESTS=3DON/OFF
--=20
-- Could NOT find LIBERIO (missing: LIBERIO_LIBRARY LIBERIO_INCLUDE_DIR)
--=20
-- Configuring LIBERIO support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Dependency LIBERIO_FOUND =3D FALSE
--   Disabling LIBERIO support.
--   Override with -DENABLE_LIBERIO=3DON/OFF
--=20
-- Configuring USB support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Dependency LIBUSB_FOUND =3D TRUE
--   Enabling USB support.
--   Override with -DENABLE_USB=3DON/OFF
--=20
-- Configuring B100 support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Dependency ENABLE_USB =3D ON
--   Enabling B100 support.
--   Override with -DENABLE_B100=3DON/OFF
--=20
-- Configuring B200 support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Dependency ENABLE_USB =3D ON
--   Enabling B200 support.
--   Override with -DENABLE_B200=3DON/OFF
--=20
-- Configuring USRP1 support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Dependency ENABLE_USB =3D ON
--   Enabling USRP1 support.
--   Override with -DENABLE_USRP1=3DON/OFF
--=20
-- Configuring USRP2 support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Enabling USRP2 support.
--   Override with -DENABLE_USRP2=3DON/OFF
--=20
-- Configuring X300 support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Enabling X300 support.
--   Override with -DENABLE_X300=3DON/OFF
--=20
-- Configuring N230 support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Enabling N230 support.
--   Override with -DENABLE_N230=3DON/OFF
--=20
-- Configuring MPMD support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Enabling MPMD support.
--   Override with -DENABLE_MPMD=3DON/OFF
--=20
-- Configuring N300 support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Dependency ENABLE_MPMD =3D ON
--   Enabling N300 support.
--   Override with -DENABLE_N300=3DON/OFF
--=20
-- Configuring N320 support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Dependency ENABLE_MPMD =3D ON
--   Enabling N320 support.
--   Override with -DENABLE_N320=3DON/OFF
--=20
-- Configuring E320 support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Dependency ENABLE_MPMD =3D ON
--   Enabling E320 support.
--   Override with -DENABLE_E320=3DON/OFF
--=20
-- Configuring E300 support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Dependency ENABLE_MPMD =3D ON
--   Enabling E300 support.
--   Override with -DENABLE_E300=3DON/OFF
--=20
-- Configuring OctoClock support...
--   Dependency ENABLE_LIBUHD =3D ON
--   Enabling OctoClock support.
--   Override with -DENABLE_OCTOCLOCK=3DON/OFF
--=20
-- Configuring DPDK support...
--   Dependency ENABLE_MPMD =3D ON
--   Dependency DPDK_FOUND =3D TRUE
--   Enabling DPDK support.
--   Override with -DENABLE_DPDK=3DON/OFF
--=20
-- Compiling MPMD with DPDK support...
--=20
-- Configuring priority scheduling...
--   Priority scheduling supported through pthread_setschedparam.
--   Setting thread names is supported through pthread_setname_np.
--=20
-- Configuring high resolution timing...
--   High resolution timing supported through clock_gettime.
--=20
-- Configuring module loading...
--   Module loading supported through dlopen.
--=20
-- Processing NI-RIO FPGA LVBITX Bitstreams...
--   Using x300.lvbitx_base for codegen
--   Using x310.lvbitx_base for codegen
--=20
-- USB support enabled via libusb.
--=20
-- Configuring interface address discovery...
--   Interface address discovery supported through getifaddrs.
--=20
-- Loading build info.
--=20
-- Adding B2XX device test target
-- Adding X3x0 device test target
-- Adding E3XX device test target
-- Adding N3XX device test target
-- Adding E32x device test target
--=20
--=20
-- Configuring Manual support...
--   Dependency DOXYGEN_FOUND =3D YES
--   Enabling Manual support.
--   Override with -DENABLE_MANUAL=3DON/OFF
--=20
-- Configuring API/Doxygen support...
--   Dependency DOXYGEN_FOUND =3D YES
--   Enabling API/Doxygen support.
--   Override with -DENABLE_DOXYGEN=3DON/OFF
--=20
-- Found GZip: /bin/gzip
--=20
-- Compressed Man Pages enabled
--   Override with -DENABLE_MAN_PAGE_COMPRESSION=3DON/OFF
--=20
-- Configuring Man Pages support...
--   Dependency NOT_WIN32 =3D TRUE
--   Dependency GZIP_FOUND =3D TRUE
--   Enabling Man Pages support.
--   Override with -DENABLE_MAN_PAGES=3DON/OFF
--=20
-- ######################################################
-- # UHD enabled components
-- ######################################################
--   * LibUHD
--   * LibUHD - C API
--   * Examples
--   * Utils
--   * Tests
--   * USB
--   * B100
--   * B200
--   * USRP1
--   * USRP2
--   * X300
--   * N230
--   * MPMD
--   * N300
--   * N320
--   * E320
--   * E300
--   * OctoClock
--   * DPDK
--   * Manual
--   * API/Doxygen
--   * Man Pages
--=20
-- ######################################################
-- # UHD disabled components
-- ######################################################
--   * LibUHD - Python API
--   * LIBERIO
--=20
-- ******************************************************
-- * You are building the UHD development master branch.
-- * For production code, we recommend our stable,
-- * releases or using the release branch (maint).
-- ******************************************************
-- Building version: 3.15.0.0-96-g0408f47b
-- Using install prefix: /usr/local
-- Configuring done
-- Generating done
-- Build files have been written to: /home/dell/uhd/host/build
dell@dell-XPS-15-9550:~/uhd/host/build$ make
[  2%] Built target uhd_rpclib
Scanning dependencies of target uhd
[  2%] Building C object
lib/CMakeFiles/uhd.dir/transport/uhd-dpdk/uhd_dpdk.c.o
In file included from
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:0:
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:102:23: error:
field =E2=80=98mac_addr=E2=80=99 has incomplete type
     struct ether_addr mac_addr;
                       ^
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:176:23: error:
field =E2=80=98mac_addr=E2=80=99 has incomplete type
     struct ether_addr mac_addr;
                       ^
In file included from
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:9:0:
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:22:62:
warning: =E2=80=98struct arp_hdr=E2=80=99 declared inside parameter list
 int _uhd_dpdk_process_arp(struct uhd_dpdk_port *port, struct arp_hdr
*arp_frame);
                                                              ^
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:22:62:
warning: its scope is only this definition or declaration, which is
probably not what you want
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:24:34:
warning: =E2=80=98struct udp_hdr=E2=80=99 declared inside parameter list
                           struct udp_hdr *pkt, bool bcast);
                                  ^
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:25:86:
warning: =E2=80=98struct ipv4_hdr=E2=80=99 declared inside parameter list
 int _uhd_dpdk_process_ipv4(struct uhd_dpdk_port *port, struct rte_mbuf
*mbuf, struct ipv4_hdr *pk

          ^
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In function
=E2=80=98uhd_dpdk_get_eth_addr=E2=80=99:
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:55:31: error:
=E2=80=98ETHER_ADDR_LEN=E2=80=99 undeclared (first use in this function)
     memset(retval.addr, 0xff, ETHER_ADDR_LEN);
                               ^
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:55:31: note: each
undeclared identifier is reported only once for each function it appears in
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In function
=E2=80=98uhd_dpdk_port_init=E2=80=99:
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:103:5: warning:
=E2=80=98rte_eth_dev_count=E2=80=99 is deprecated [-Wdeprecated-declaration=
s]
     if (port->id >=3D rte_eth_dev_count())
     ^
In file included from
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:12:0,
                 from
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:
/usr/local/include/dpdk/rte_ethdev.h:1669:10: note: declared here
 uint16_t rte_eth_dev_count(void);
          ^
In file included from /usr/local/include/dpdk/rte_ethdev.h:152:0,
                 from
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:12,
                 from
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:122:108: warning:
format =E2=80=98%llx=E2=80=99 expects argument of type =E2=80=98long long u=
nsigned int=E2=80=99, but
argument 5 has type =E2=80=98uint64_t {aka long unsigned int}=E2=80=99 [-Wf=
ormat=3D]
 LOG(WARNING, EAL, "%d: Only supports RX offloads 0x%0llx\n", port->id,
dev_info.rx_offload_capa);

                    ^
/usr/local/include/dpdk/rte_log.h:324:25: note: in definition of macro
=E2=80=98RTE_LOG=E2=80=99
    RTE_LOGTYPE_ ## t, # t ": " __VA_ARGS__)
                         ^
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:126:108: warning:
format =E2=80=98%llx=E2=80=99 expects argument of type =E2=80=98long long u=
nsigned int=E2=80=99, but
argument 5 has type =E2=80=98uint64_t {aka long unsigned int}=E2=80=99 [-Wf=
ormat=3D]
 LOG(WARNING, EAL, "%d: Only supports TX offloads 0x%0llx\n", port->id,
dev_info.tx_offload_capa);

                    ^
/usr/local/include/dpdk/rte_log.h:324:25: note: in definition of macro
=E2=80=98RTE_LOG=E2=80=99
    RTE_LOGTYPE_ ## t, # t ": " __VA_ARGS__)
                         ^
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:134:13: error:
unknown field =E2=80=98jumbo_frame=E2=80=99 specified in initializer
             .jumbo_frame =3D 1,
             ^
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:135:13: error:
unknown field =E2=80=98hw_ip_checksum=E2=80=99 specified in initializer
             .hw_ip_checksum =3D 1,
             ^
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:135:31: warning:
initialized field overwritten [-Woverride-init]
             .hw_ip_checksum =3D 1,
                               ^
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:135:31: note: (near
initialization for =E2=80=98port_conf.rxmode.offloads=E2=80=99)
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:136:13: error:
unknown field =E2=80=98ignore_offload_bitfield=E2=80=99 specified in initia=
lizer
             .ignore_offload_bitfield =3D 0,
             ^
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:136:40: warning:
excess elements in struct initializer
             .ignore_offload_bitfield =3D 0,
                                        ^
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:136:40: note: (near
initialization for =E2=80=98port_conf.rxmode=E2=80=99)
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In function
=E2=80=98uhd_dpdk_init=E2=80=99:
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:279:5: warning:
=E2=80=98rte_eth_dev_count=E2=80=99 is deprecated [-Wdeprecated-declaration=
s]
     ctx->num_ports =3D rte_eth_dev_count();
     ^
In file included from
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:12:0,
                 from
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:
/usr/local/include/dpdk/rte_ethdev.h:1669:10: note: declared here
 uint16_t rte_eth_dev_count(void);
          ^
lib/CMakeFiles/uhd.dir/build.make:3824: recipe for target
'lib/CMakeFiles/uhd.dir/transport/uhd-dpdk/uhd_dpdk.c.o' failed
make[2]: *** [lib/CMakeFiles/uhd.dir/transport/uhd-dpdk/uhd_dpdk.c.o] Error
1
CMakeFiles/Makefile2:128: recipe for target 'lib/CMakeFiles/uhd.dir/all'
failed
make[1]: *** [lib/CMakeFiles/uhd.dir/all] Error 2
Makefile:162: recipe for target 'all' failed
make: *** [all] Error 2

--00000000000023bf460595e7a690
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>hello, i am a new user with ubuntu and uhd. Later i n=
eed to build gnuradio.<br></div><div>I build uhd(look from changelog, relea=
se 3.15). There were errors about dpdk as follows. <br></div><div>Would you=
 please help to solve this problem. I have time to finish this task.</div><=
div>Thank you so much!<br></div><div><br></div><div>dell@dell-XPS-15-9550:~=
/uhd/host/build$ cmake ../<br>-- <br>-- Configuring the Python interpreter.=
..<br>-- Manually determining build Python version...<br>-- Python interpre=
ter: /usr/bin/python3.6 Version: 3.6.8<br>-- Override with: -DPYTHON_EXECUT=
ABLE=3D&lt;path-to-python&gt;<br>-- Manually determining runtime Python ver=
sion...<br>-- Python runtime interpreter: /usr/bin/python3.6 Version: 3.6.8=
<br>-- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;<=
br>-- Finding Python Libraries...<br>-- Could not find Python Libraries.<br=
>-- Operating on master branch.<br>-- Using UHD Images Directory: /usr/loca=
l/share/uhd/images<br>-- Build type not specified: defaulting to release.<b=
r>-- <br>-- Configuring Boost C++ Libraries...<br>-- Looking for optional B=
oost components...<br>-- Found Boost: /usr/include (found suitable version =
&quot;1.58.0&quot;, minimum required is &quot;1.58&quot;) =C2=A0<br>-- Look=
ing for required Boost components...<br>-- Found Boost: /usr/include (found=
 suitable version &quot;1.58.0&quot;, minimum required is &quot;1.58&quot;)=
 found components: =C2=A0chrono date_time filesystem program_options regex =
system unit_test_framework serialization thread atomic <br>-- Boost include=
 directories: /usr/include<br>-- Boost library directories: /usr/lib/x86_64=
-linux-gnu<br>-- Boost libraries: /usr/lib/x86_64-linux-gnu/libboost_chrono=
.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-g=
nu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_program_option=
s.so;/usr/lib/x86_64-linux-gnu/libboost_regex.so;/usr/lib/x86_64-linux-gnu/=
libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.s=
o;/usr/lib/x86_64-linux-gnu/libboost_serialization.so;/usr/lib/x86_64-linux=
-gnu/libboost_thread.so;-lpthread;/usr/lib/x86_64-linux-gnu/libboost_atomic=
.so<br>-- <br>-- Python checking for Python version 2.7 or greater<br>-- Py=
thon checking for Python version 2.7 or greater - found<br>-- <br>-- Python=
 checking for Mako templates 0.4.2 or greater<br>-- Python checking for Mak=
o templates 0.4.2 or greater - found<br>-- <br>-- Python checking for reque=
sts 2.0 or greater<br>-- Python checking for requests 2.0 or greater - foun=
d<br>-- <br>-- Python checking for numpy 1.7 or greater<br>-- Python checki=
ng for numpy 1.7 or greater - found<br>-- <br>-- Configuring LibUHD support=
...<br>-- =C2=A0 Dependency Boost_FOUND =3D TRUE<br>-- =C2=A0 Dependency HA=
VE_PYTHON_PLAT_MIN_VERSION =3D TRUE<br>-- =C2=A0 Dependency HAVE_PYTHON_MOD=
ULE_MAKO =3D TRUE<br>-- =C2=A0 Enabling LibUHD support.<br>-- =C2=A0 Overri=
de with -DENABLE_LIBUHD=3DON/OFF<br>-- <br>-- Configuring LibUHD - C API su=
pport...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabling=
 LibUHD - C API support.<br>-- =C2=A0 Override with -DENABLE_C_API=3DON/OFF=
<br>-- <br>-- Configuring LibUHD - Python API support...<br>-- =C2=A0 Depen=
dency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency HAVE_PYTHON_MODULE_NUMPY=
 =3D TRUE<br>-- =C2=A0 Dependency HAVE_PYTHON_LIBS =3D FALSE<br>-- =C2=A0 D=
isabling LibUHD - Python API support.<br>-- =C2=A0 Override with -DENABLE_P=
YTHON_API=3DON/OFF<br>-- <br>-- Configuring Examples support...<br>-- =C2=
=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabling Examples support.=
<br>-- =C2=A0 Override with -DENABLE_EXAMPLES=3DON/OFF<br>-- <br>-- Configu=
ring Utils support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =
=C2=A0 Enabling Utils support.<br>-- =C2=A0 Override with -DENABLE_UTILS=3D=
ON/OFF<br>-- <br>-- Configuring Tests support...<br>-- =C2=A0 Dependency EN=
ABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabling Tests support.<br>-- =C2=A0 Overri=
de with -DENABLE_TESTS=3DON/OFF<br>-- <br>-- Could NOT find LIBERIO (missin=
g: LIBERIO_LIBRARY LIBERIO_INCLUDE_DIR) <br>-- <br>-- Configuring LIBERIO s=
upport...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Depende=
ncy LIBERIO_FOUND =3D FALSE<br>-- =C2=A0 Disabling LIBERIO support.<br>-- =
=C2=A0 Override with -DENABLE_LIBERIO=3DON/OFF<br>-- <br>-- Configuring USB=
 support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Depen=
dency LIBUSB_FOUND =3D TRUE<br>-- =C2=A0 Enabling USB support.<br>-- =C2=A0=
 Override with -DENABLE_USB=3DON/OFF<br>-- <br>-- Configuring B100 support.=
..<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENA=
BLE_USB =3D ON<br>-- =C2=A0 Enabling B100 support.<br>-- =C2=A0 Override wi=
th -DENABLE_B100=3DON/OFF<br>-- <br>-- Configuring B200 support...<br>-- =
=C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_USB =
=3D ON<br>-- =C2=A0 Enabling B200 support.<br>-- =C2=A0 Override with -DENA=
BLE_B200=3DON/OFF<br>-- <br>-- Configuring USRP1 support...<br>-- =C2=A0 De=
pendency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_USB =3D ON<br>=
-- =C2=A0 Enabling USRP1 support.<br>-- =C2=A0 Override with -DENABLE_USRP1=
=3DON/OFF<br>-- <br>-- Configuring USRP2 support...<br>-- =C2=A0 Dependency=
 ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabling USRP2 support.<br>-- =C2=A0 Ove=
rride with -DENABLE_USRP2=3DON/OFF<br>-- <br>-- Configuring X300 support...=
<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabling X300 su=
pport.<br>-- =C2=A0 Override with -DENABLE_X300=3DON/OFF<br>-- <br>-- Confi=
guring N230 support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =
=C2=A0 Enabling N230 support.<br>-- =C2=A0 Override with -DENABLE_N230=3DON=
/OFF<br>-- <br>-- Configuring MPMD support...<br>-- =C2=A0 Dependency ENABL=
E_LIBUHD =3D ON<br>-- =C2=A0 Enabling MPMD support.<br>-- =C2=A0 Override w=
ith -DENABLE_MPMD=3DON/OFF<br>-- <br>-- Configuring N300 support...<br>-- =
=C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_MPMD =
=3D ON<br>-- =C2=A0 Enabling N300 support.<br>-- =C2=A0 Override with -DENA=
BLE_N300=3DON/OFF<br>-- <br>-- Configuring N320 support...<br>-- =C2=A0 Dep=
endency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_MPMD =3D ON<br>=
-- =C2=A0 Enabling N320 support.<br>-- =C2=A0 Override with -DENABLE_N320=
=3DON/OFF<br>-- <br>-- Configuring E320 support...<br>-- =C2=A0 Dependency =
ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_MPMD =3D ON<br>-- =C2=
=A0 Enabling E320 support.<br>-- =C2=A0 Override with -DENABLE_E320=3DON/OF=
F<br>-- <br>-- Configuring E300 support...<br>-- =C2=A0 Dependency ENABLE_L=
IBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_MPMD =3D ON<br>-- =C2=A0 Enabli=
ng E300 support.<br>-- =C2=A0 Override with -DENABLE_E300=3DON/OFF<br>-- <b=
r>-- Configuring OctoClock support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD=
 =3D ON<br>-- =C2=A0 Enabling OctoClock support.<br>-- =C2=A0 Override with=
 -DENABLE_OCTOCLOCK=3DON/OFF<br>-- <br>-- Configuring DPDK support...<br>--=
 =C2=A0 Dependency ENABLE_MPMD =3D ON<br>-- =C2=A0 Dependency DPDK_FOUND =
=3D TRUE<br>-- =C2=A0 Enabling DPDK support.<br>-- =C2=A0 Override with -DE=
NABLE_DPDK=3DON/OFF<br>-- <br>-- Compiling MPMD with DPDK support...<br>-- =
<br>-- Configuring priority scheduling...<br>-- =C2=A0 Priority scheduling =
supported through pthread_setschedparam.<br>-- =C2=A0 Setting thread names =
is supported through pthread_setname_np.<br>-- <br>-- Configuring high reso=
lution timing...<br>-- =C2=A0 High resolution timing supported through cloc=
k_gettime.<br>-- <br>-- Configuring module loading...<br>-- =C2=A0 Module l=
oading supported through dlopen.<br>-- <br>-- Processing NI-RIO FPGA LVBITX=
 Bitstreams...<br>-- =C2=A0 Using x300.lvbitx_base for codegen<br>-- =C2=A0=
 Using x310.lvbitx_base for codegen<br>-- <br>-- USB support enabled via li=
busb.<br>-- <br>-- Configuring interface address discovery...<br>-- =C2=A0 =
Interface address discovery supported through getifaddrs.<br>-- <br>-- Load=
ing build info.<br>-- <br>-- Adding B2XX device test target<br>-- Adding X3=
x0 device test target<br>-- Adding E3XX device test target<br>-- Adding N3X=
X device test target<br>-- Adding E32x device test target<br>-- <br>-- <br>=
-- Configuring Manual support...<br>-- =C2=A0 Dependency DOXYGEN_FOUND =3D =
YES<br>-- =C2=A0 Enabling Manual support.<br>-- =C2=A0 Override with -DENAB=
LE_MANUAL=3DON/OFF<br>-- <br>-- Configuring API/Doxygen support...<br>-- =
=C2=A0 Dependency DOXYGEN_FOUND =3D YES<br>-- =C2=A0 Enabling API/Doxygen s=
upport.<br>-- =C2=A0 Override with -DENABLE_DOXYGEN=3DON/OFF<br>-- <br>-- F=
ound GZip: /bin/gzip<br>-- <br>-- Compressed Man Pages enabled<br>-- =C2=A0=
 Override with -DENABLE_MAN_PAGE_COMPRESSION=3DON/OFF<br>-- <br>-- Configur=
ing Man Pages support...<br>-- =C2=A0 Dependency NOT_WIN32 =3D TRUE<br>-- =
=C2=A0 Dependency GZIP_FOUND =3D TRUE<br>-- =C2=A0 Enabling Man Pages suppo=
rt.<br>-- =C2=A0 Override with -DENABLE_MAN_PAGES=3DON/OFF<br>-- <br>-- ###=
###################################################<br>-- # UHD enabled com=
ponents =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>-- ##############################=
########################<br>-- =C2=A0 * LibUHD<br>-- =C2=A0 * LibUHD - C AP=
I<br>-- =C2=A0 * Examples<br>-- =C2=A0 * Utils<br>-- =C2=A0 * Tests<br>-- =
=C2=A0 * USB<br>-- =C2=A0 * B100<br>-- =C2=A0 * B200<br>-- =C2=A0 * USRP1<b=
r>-- =C2=A0 * USRP2<br>-- =C2=A0 * X300<br>-- =C2=A0 * N230<br>-- =C2=A0 * =
MPMD<br>-- =C2=A0 * N300<br>-- =C2=A0 * N320<br>-- =C2=A0 * E320<br>-- =C2=
=A0 * E300<br>-- =C2=A0 * OctoClock<br>-- =C2=A0 * DPDK<br>-- =C2=A0 * Manu=
al<br>-- =C2=A0 * API/Doxygen<br>-- =C2=A0 * Man Pages<br>-- <br>-- #######=
###############################################<br>-- # UHD disabled compon=
ents =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>-- ########################################=
##############<br>-- =C2=A0 * LibUHD - Python API<br>-- =C2=A0 * LIBERIO<br=
>-- <br>-- ******************************************************<br>-- * Y=
ou are building the UHD development master branch.<br>-- * For production c=
ode, we recommend our stable,<br>-- * releases or using the release branch =
(maint).<br>-- ******************************************************<br>--=
 Building version: 3.15.0.0-96-g0408f47b<br>-- Using install prefix: /usr/l=
ocal<br>-- Configuring done<br>-- Generating done<br>-- Build files have be=
en written to: /home/dell/uhd/host/build<br>dell@dell-XPS-15-9550:~/uhd/hos=
t/build$ make <br>[ =C2=A02%] Built target uhd_rpclib<br>Scanning dependenc=
ies of target uhd<br>[ =C2=A02%] Building C object lib/CMakeFiles/uhd.dir/t=
ransport/uhd-dpdk/uhd_dpdk.c.o<br>In file included from /home/dell/uhd/host=
/lib/transport/uhd-dpdk/uhd_dpdk.c:6:0:<br>/home/dell/uhd/host/lib/transpor=
t/uhd-dpdk/uhd_dpdk_ctx.h:102:23: error: field =E2=80=98mac_addr=E2=80=99 h=
as incomplete type<br>=C2=A0 =C2=A0 =C2=A0struct ether_addr mac_addr;<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0^<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:17=
6:23: error: field =E2=80=98mac_addr=E2=80=99 has incomplete type<br>=C2=A0=
 =C2=A0 =C2=A0struct ether_addr mac_addr;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>In file include=
d from /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:9:0:<br>/home/=
dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:22:62: warning: =E2=
=80=98struct arp_hdr=E2=80=99 declared inside parameter list<br>=C2=A0int _=
uhd_dpdk_process_arp(struct uhd_dpdk_port *port, struct arp_hdr *arp_frame)=
;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^=
<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:22:62: war=
ning: its scope is only this definition or declaration, which is probably n=
ot what you want<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_dri=
ver.h:24:34: warning: =E2=80=98struct udp_hdr=E2=80=99 declared inside para=
meter list<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct udp_hdr *pkt, bool bcast);<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>/home/dell/uhd/host/lib/=
transport/uhd-dpdk/uhd_dpdk_driver.h:25:86: warning: =E2=80=98struct ipv4_h=
dr=E2=80=99 declared inside parameter list<br>=C2=A0int _uhd_dpdk_process_i=
pv4(struct uhd_dpdk_port *port, struct rte_mbuf *mbuf, struct ipv4_hdr *pk<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ^<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In f=
unction =E2=80=98uhd_dpdk_get_eth_addr=E2=80=99:<br>/home/dell/uhd/host/lib=
/transport/uhd-dpdk/uhd_dpdk.c:55:31: error: =E2=80=98ETHER_ADDR_LEN=E2=80=
=99 undeclared (first use in this function)<br>=C2=A0 =C2=A0 =C2=A0memset(r=
etval.addr, 0xff, ETHER_ADDR_LEN);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0^<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:55:31: note: =
each undeclared identifier is reported only once for each function it appea=
rs in<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In function=
 =E2=80=98uhd_dpdk_port_init=E2=80=99:<br>/home/dell/uhd/host/lib/transport=
/uhd-dpdk/uhd_dpdk.c:103:5: warning: =E2=80=98rte_eth_dev_count=E2=80=99 is=
 deprecated [-Wdeprecated-declarations]<br>=C2=A0 =C2=A0 =C2=A0if (port-&gt=
;id &gt;=3D rte_eth_dev_count())<br>=C2=A0 =C2=A0 =C2=A0^<br>In file includ=
ed from /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:12:0,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/de=
ll/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:<br>/usr/local/include/dpdk=
/rte_ethdev.h:1669:10: note: declared here<br>=C2=A0uint16_t rte_eth_dev_co=
unt(void);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>In file included from=
 /usr/local/include/dpdk/rte_ethdev.h:152:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/dell/uhd/host/lib/transport/u=
hd-dpdk/uhd_dpdk_ctx.h:12,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0from /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c=
:6:<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:122:108: warni=
ng: format =E2=80=98%llx=E2=80=99 expects argument of type =E2=80=98long lo=
ng unsigned int=E2=80=99, but argument 5 has type =E2=80=98uint64_t {aka lo=
ng unsigned int}=E2=80=99 [-Wformat=3D]<br>=C2=A0LOG(WARNING, EAL, &quot;%d=
: Only supports RX offloads 0x%0llx\n&quot;, port-&gt;id, dev_info.rx_offlo=
ad_capa);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>/usr/local/includ=
e/dpdk/rte_log.h:324:25: note: in definition of macro =E2=80=98RTE_LOG=E2=
=80=99<br>=C2=A0 =C2=A0 RTE_LOGTYPE_ ## t, # t &quot;: &quot; __VA_ARGS__)<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0^<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpd=
k.c:126:108: warning: format =E2=80=98%llx=E2=80=99 expects argument of typ=
e =E2=80=98long long unsigned int=E2=80=99, but argument 5 has type =E2=80=
=98uint64_t {aka long unsigned int}=E2=80=99 [-Wformat=3D]<br>=C2=A0LOG(WAR=
NING, EAL, &quot;%d: Only supports TX offloads 0x%0llx\n&quot;, port-&gt;id=
, dev_info.tx_offload_capa);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^=
<br>/usr/local/include/dpdk/rte_log.h:324:25: note: in definition of macro =
=E2=80=98RTE_LOG=E2=80=99<br>=C2=A0 =C2=A0 RTE_LOGTYPE_ ## t, # t &quot;: &=
quot; __VA_ARGS__)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/home/dell/uhd/host/lib/transpor=
t/uhd-dpdk/uhd_dpdk.c:134:13: error: unknown field =E2=80=98jumbo_frame=E2=
=80=99 specified in initializer<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0.jumbo_frame =3D 1,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0^<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:135:13: er=
ror: unknown field =E2=80=98hw_ip_checksum=E2=80=99 specified in initialize=
r<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.hw_ip_checksum =3D 1,=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/home/dell/uhd/hos=
t/lib/transport/uhd-dpdk/uhd_dpdk.c:135:31: warning: initialized field over=
written [-Woverride-init]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0.hw_ip_checksum =3D 1,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/hom=
e/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:135:31: note: (near initi=
alization for =E2=80=98port_conf.rxmode.offloads=E2=80=99)<br>/home/dell/uh=
d/host/lib/transport/uhd-dpdk/uhd_dpdk.c:136:13: error: unknown field =E2=
=80=98ignore_offload_bitfield=E2=80=99 specified in initializer<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.ignore_offload_bitfield =3D 0,<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/home/dell/uhd/host/l=
ib/transport/uhd-dpdk/uhd_dpdk.c:136:40: warning: excess elements in struct=
 initializer<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.ignore_off=
load_bitfield =3D 0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ^<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.=
c:136:40: note: (near initialization for =E2=80=98port_conf.rxmode=E2=80=99=
)<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In function =E2=
=80=98uhd_dpdk_init=E2=80=99:<br>/home/dell/uhd/host/lib/transport/uhd-dpdk=
/uhd_dpdk.c:279:5: warning: =E2=80=98rte_eth_dev_count=E2=80=99 is deprecat=
ed [-Wdeprecated-declarations]<br>=C2=A0 =C2=A0 =C2=A0ctx-&gt;num_ports =3D=
 rte_eth_dev_count();<br>=C2=A0 =C2=A0 =C2=A0^<br>In file included from /ho=
me/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:12:0,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/dell/uhd/hos=
t/lib/transport/uhd-dpdk/uhd_dpdk.c:6:<br>/usr/local/include/dpdk/rte_ethde=
v.h:1669:10: note: declared here<br>=C2=A0uint16_t rte_eth_dev_count(void);=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>lib/CMakeFiles/uhd.dir/build.ma=
ke:3824: recipe for target &#39;lib/CMakeFiles/uhd.dir/transport/uhd-dpdk/u=
hd_dpdk.c.o&#39; failed<br>make[2]: *** [lib/CMakeFiles/uhd.dir/transport/u=
hd-dpdk/uhd_dpdk.c.o] Error 1<br>CMakeFiles/Makefile2:128: recipe for targe=
t &#39;lib/CMakeFiles/uhd.dir/all&#39; failed<br>make[1]: *** [lib/CMakeFil=
es/uhd.dir/all] Error 2<br>Makefile:162: recipe for target &#39;all&#39; fa=
iled<br>make: *** [all] Error 2<br></div><div><br></div></div>

--00000000000023bf460595e7a690--
--00000000000023bf490595e7a692
Content-Type: text/plain; charset="UTF-8"; name="output1027.txt"
Content-Disposition: attachment; filename="output1027.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_k299imha0>
X-Attachment-Id: f_k299imha0

U2NyaXB0IHN0YXJ0ZWQgb24gU3VuIDI3IE9jdCAyMDE5IDEyOjE3OjE4IFBNIENEVAobXTA7ZGVs
bEBkZWxsLVhQUy0xNS05NTUwOiB+L3VoZC9ob3N0L2J1aWxkBxtbMDE7MzJtZGVsbEBkZWxsLVhQ
Uy0xNS05NTUwG1swMG06G1swMTszNG1+L3VoZC9ob3N0L2J1aWxkG1swMG0kIGNhawgbW0sIG1tL
bWFrZSAuLi8NCi0tIA0KLS0gQ29uZmlndXJpbmcgdGhlIFB5dGhvbiBpbnRlcnByZXRlci4uLg0K
LS0gTWFudWFsbHkgZGV0ZXJtaW5pbmcgYnVpbGQgUHl0aG9uIHZlcnNpb24uLi4NCi0tIFB5dGhv
biBpbnRlcnByZXRlcjogL3Vzci9iaW4vcHl0aG9uMy42IFZlcnNpb246IDMuNi44DQotLSBPdmVy
cmlkZSB3aXRoOiAtRFBZVEhPTl9FWEVDVVRBQkxFPTxwYXRoLXRvLXB5dGhvbj4NCi0tIE1hbnVh
bGx5IGRldGVybWluaW5nIHJ1bnRpbWUgUHl0aG9uIHZlcnNpb24uLi4NCi0tIFB5dGhvbiBydW50
aW1lIGludGVycHJldGVyOiAvdXNyL2Jpbi9weXRob24zLjYgVmVyc2lvbjogMy42LjgNCi0tIE92
ZXJyaWRlIHdpdGg6IC1EUlVOVElNRV9QWVRIT05fRVhFQ1VUQUJMRT08cGF0aC10by1weXRob24+
DQotLSBGaW5kaW5nIFB5dGhvbiBMaWJyYXJpZXMuLi4NCi0tIENvdWxkIG5vdCBmaW5kIFB5dGhv
biBMaWJyYXJpZXMuDQotLSBPcGVyYXRpbmcgb24gbWFzdGVyIGJyYW5jaC4NCi0tIFVzaW5nIFVI
RCBJbWFnZXMgRGlyZWN0b3J5OiAvdXNyL2xvY2FsL3NoYXJlL3VoZC9pbWFnZXMNCi0tIEJ1aWxk
IHR5cGUgbm90IHNwZWNpZmllZDogZGVmYXVsdGluZyB0byByZWxlYXNlLg0KLS0gDQotLSBDb25m
aWd1cmluZyBCb29zdCBDKysgTGlicmFyaWVzLi4uDQotLSBMb29raW5nIGZvciBvcHRpb25hbCBC
b29zdCBjb21wb25lbnRzLi4uDQotLSBGb3VuZCBCb29zdDogL3Vzci9pbmNsdWRlIChmb3VuZCBz
dWl0YWJsZSB2ZXJzaW9uICIxLjU4LjAiLCBtaW5pbXVtIHJlcXVpcmVkIGlzICIxLjU4IikgIA0K
LS0gTG9va2luZyBmb3IgcmVxdWlyZWQgQm9vc3QgY29tcG9uZW50cy4uLg0KLS0gRm91bmQgQm9v
c3Q6IC91c3IvaW5jbHVkZSAoZm91bmQgc3VpdGFibGUgdmVyc2lvbiAiMS41OC4wIiwgbWluaW11
bSByZXF1aXJlZCBpcyAiMS41OCIpIGZvdW5kIGNvbXBvbmVudHM6ICBjaHJvbm8gZGF0ZV90aW1l
IGZpbGVzeXN0ZW0gcHJvZ3JhbV9vcHRpb25zIHJlZ2V4IHN5c3RlbSB1bml0X3Rlc3RfZnJhbWV3
b3JrIHNlcmlhbGl6YXRpb24gdGhyZWFkIGF0b21pYyANCi0tIEJvb3N0IGluY2x1ZGUgZGlyZWN0
b3JpZXM6IC91c3IvaW5jbHVkZQ0KLS0gQm9vc3QgbGlicmFyeSBkaXJlY3RvcmllczogL3Vzci9s
aWIveDg2XzY0LWxpbnV4LWdudQ0KLS0gQm9vc3QgbGlicmFyaWVzOiAvdXNyL2xpYi94ODZfNjQt
bGludXgtZ251L2xpYmJvb3N0X2Nocm9uby5zbzsvdXNyL2xpYi94ODZfNjQtbGludXgtZ251L2xp
YmJvb3N0X2RhdGVfdGltZS5zbzsvdXNyL2xpYi94ODZfNjQtbGludXgtZ251L2xpYmJvb3N0X2Zp
bGVzeXN0ZW0uc287L3Vzci9saWIveDg2XzY0LWxpbnV4LWdudS9saWJib29zdF9wcm9ncmFtX29w
dGlvbnMuc287L3Vzci9saWIveDg2XzY0LWxpbnV4LWdudS9saWJib29zdF9yZWdleC5zbzsvdXNy
L2xpYi94ODZfNjQtbGludXgtZ251L2xpYmJvb3N0X3N5c3RlbS5zbzsvdXNyL2xpYi94ODZfNjQt
bGludXgtZ251L2xpYmJvb3N0X3VuaXRfdGVzdF9mcmFtZXdvcmsuc287L3Vzci9saWIveDg2XzY0
LWxpbnV4LWdudS9saWJib29zdF9zZXJpYWxpemF0aW9uLnNvOy91c3IvbGliL3g4Nl82NC1saW51
eC1nbnUvbGliYm9vc3RfdGhyZWFkLnNvOy1scHRocmVhZDsvdXNyL2xpYi94ODZfNjQtbGludXgt
Z251L2xpYmJvb3N0X2F0b21pYy5zbw0KLS0gDQotLSBQeXRob24gY2hlY2tpbmcgZm9yIFB5dGhv
biB2ZXJzaW9uIDIuNyBvciBncmVhdGVyDQotLSBQeXRob24gY2hlY2tpbmcgZm9yIFB5dGhvbiB2
ZXJzaW9uIDIuNyBvciBncmVhdGVyIC0gZm91bmQNCi0tIA0KLS0gUHl0aG9uIGNoZWNraW5nIGZv
ciBNYWtvIHRlbXBsYXRlcyAwLjQuMiBvciBncmVhdGVyDQotLSBQeXRob24gY2hlY2tpbmcgZm9y
IE1ha28gdGVtcGxhdGVzIDAuNC4yIG9yIGdyZWF0ZXIgLSBmb3VuZA0KLS0gDQotLSBQeXRob24g
Y2hlY2tpbmcgZm9yIHJlcXVlc3RzIDIuMCBvciBncmVhdGVyDQotLSBQeXRob24gY2hlY2tpbmcg
Zm9yIHJlcXVlc3RzIDIuMCBvciBncmVhdGVyIC0gZm91bmQNCi0tIA0KLS0gUHl0aG9uIGNoZWNr
aW5nIGZvciBudW1weSAxLjcgb3IgZ3JlYXRlcg0KLS0gUHl0aG9uIGNoZWNraW5nIGZvciBudW1w
eSAxLjcgb3IgZ3JlYXRlciAtIGZvdW5kDQotLSANCi0tIENvbmZpZ3VyaW5nIExpYlVIRCBzdXBw
b3J0Li4uDQotLSAgIERlcGVuZGVuY3kgQm9vc3RfRk9VTkQgPSBUUlVFDQotLSAgIERlcGVuZGVu
Y3kgSEFWRV9QWVRIT05fUExBVF9NSU5fVkVSU0lPTiA9IFRSVUUNCi0tICAgRGVwZW5kZW5jeSBI
QVZFX1BZVEhPTl9NT0RVTEVfTUFLTyA9IFRSVUUNCi0tICAgRW5hYmxpbmcgTGliVUhEIHN1cHBv
cnQuDQotLSAgIE92ZXJyaWRlIHdpdGggLURFTkFCTEVfTElCVUhEPU9OL09GRg0KLS0gDQotLSBD
b25maWd1cmluZyBMaWJVSEQgLSBDIEFQSSBzdXBwb3J0Li4uDQotLSAgIERlcGVuZGVuY3kgRU5B
QkxFX0xJQlVIRCA9IE9ODQotLSAgIEVuYWJsaW5nIExpYlVIRCAtIEMgQVBJIHN1cHBvcnQuDQot
LSAgIE92ZXJyaWRlIHdpdGggLURFTkFCTEVfQ19BUEk9T04vT0ZGDQotLSANCi0tIENvbmZpZ3Vy
aW5nIExpYlVIRCAtIFB5dGhvbiBBUEkgc3VwcG9ydC4uLg0KLS0gICBEZXBlbmRlbmN5IEVOQUJM
RV9MSUJVSEQgPSBPTg0KLS0gICBEZXBlbmRlbmN5IEhBVkVfUFlUSE9OX01PRFVMRV9OVU1QWSA9
IFRSVUUNCi0tICAgRGVwZW5kZW5jeSBIQVZFX1BZVEhPTl9MSUJTID0gRkFMU0UNCi0tICAgRGlz
YWJsaW5nIExpYlVIRCAtIFB5dGhvbiBBUEkgc3VwcG9ydC4NCi0tICAgT3ZlcnJpZGUgd2l0aCAt
REVOQUJMRV9QWVRIT05fQVBJPU9OL09GRg0KLS0gDQotLSBDb25maWd1cmluZyBFeGFtcGxlcyBz
dXBwb3J0Li4uDQotLSAgIERlcGVuZGVuY3kgRU5BQkxFX0xJQlVIRCA9IE9ODQotLSAgIEVuYWJs
aW5nIEV4YW1wbGVzIHN1cHBvcnQuDQotLSAgIE92ZXJyaWRlIHdpdGggLURFTkFCTEVfRVhBTVBM
RVM9T04vT0ZGDQotLSANCi0tIENvbmZpZ3VyaW5nIFV0aWxzIHN1cHBvcnQuLi4NCi0tICAgRGVw
ZW5kZW5jeSBFTkFCTEVfTElCVUhEID0gT04NCi0tICAgRW5hYmxpbmcgVXRpbHMgc3VwcG9ydC4N
Ci0tICAgT3ZlcnJpZGUgd2l0aCAtREVOQUJMRV9VVElMUz1PTi9PRkYNCi0tIA0KLS0gQ29uZmln
dXJpbmcgVGVzdHMgc3VwcG9ydC4uLg0KLS0gICBEZXBlbmRlbmN5IEVOQUJMRV9MSUJVSEQgPSBP
Tg0KLS0gICBFbmFibGluZyBUZXN0cyBzdXBwb3J0Lg0KLS0gICBPdmVycmlkZSB3aXRoIC1ERU5B
QkxFX1RFU1RTPU9OL09GRg0KLS0gDQotLSBDb3VsZCBOT1QgZmluZCBMSUJFUklPIChtaXNzaW5n
OiBMSUJFUklPX0xJQlJBUlkgTElCRVJJT19JTkNMVURFX0RJUikgDQotLSANCi0tIENvbmZpZ3Vy
aW5nIExJQkVSSU8gc3VwcG9ydC4uLg0KLS0gICBEZXBlbmRlbmN5IEVOQUJMRV9MSUJVSEQgPSBP
Tg0KLS0gICBEZXBlbmRlbmN5IExJQkVSSU9fRk9VTkQgPSBGQUxTRQ0KLS0gICBEaXNhYmxpbmcg
TElCRVJJTyBzdXBwb3J0Lg0KLS0gICBPdmVycmlkZSB3aXRoIC1ERU5BQkxFX0xJQkVSSU89T04v
T0ZGDQotLSANCi0tIENvbmZpZ3VyaW5nIFVTQiBzdXBwb3J0Li4uDQotLSAgIERlcGVuZGVuY3kg
RU5BQkxFX0xJQlVIRCA9IE9ODQotLSAgIERlcGVuZGVuY3kgTElCVVNCX0ZPVU5EID0gVFJVRQ0K
LS0gICBFbmFibGluZyBVU0Igc3VwcG9ydC4NCi0tICAgT3ZlcnJpZGUgd2l0aCAtREVOQUJMRV9V
U0I9T04vT0ZGDQotLSANCi0tIENvbmZpZ3VyaW5nIEIxMDAgc3VwcG9ydC4uLg0KLS0gICBEZXBl
bmRlbmN5IEVOQUJMRV9MSUJVSEQgPSBPTg0KLS0gICBEZXBlbmRlbmN5IEVOQUJMRV9VU0IgPSBP
Tg0KLS0gICBFbmFibGluZyBCMTAwIHN1cHBvcnQuDQotLSAgIE92ZXJyaWRlIHdpdGggLURFTkFC
TEVfQjEwMD1PTi9PRkYNCi0tIA0KLS0gQ29uZmlndXJpbmcgQjIwMCBzdXBwb3J0Li4uDQotLSAg
IERlcGVuZGVuY3kgRU5BQkxFX0xJQlVIRCA9IE9ODQotLSAgIERlcGVuZGVuY3kgRU5BQkxFX1VT
QiA9IE9ODQotLSAgIEVuYWJsaW5nIEIyMDAgc3VwcG9ydC4NCi0tICAgT3ZlcnJpZGUgd2l0aCAt
REVOQUJMRV9CMjAwPU9OL09GRg0KLS0gDQotLSBDb25maWd1cmluZyBVU1JQMSBzdXBwb3J0Li4u
DQotLSAgIERlcGVuZGVuY3kgRU5BQkxFX0xJQlVIRCA9IE9ODQotLSAgIERlcGVuZGVuY3kgRU5B
QkxFX1VTQiA9IE9ODQotLSAgIEVuYWJsaW5nIFVTUlAxIHN1cHBvcnQuDQotLSAgIE92ZXJyaWRl
IHdpdGggLURFTkFCTEVfVVNSUDE9T04vT0ZGDQotLSANCi0tIENvbmZpZ3VyaW5nIFVTUlAyIHN1
cHBvcnQuLi4NCi0tICAgRGVwZW5kZW5jeSBFTkFCTEVfTElCVUhEID0gT04NCi0tICAgRW5hYmxp
bmcgVVNSUDIgc3VwcG9ydC4NCi0tICAgT3ZlcnJpZGUgd2l0aCAtREVOQUJMRV9VU1JQMj1PTi9P
RkYNCi0tIA0KLS0gQ29uZmlndXJpbmcgWDMwMCBzdXBwb3J0Li4uDQotLSAgIERlcGVuZGVuY3kg
RU5BQkxFX0xJQlVIRCA9IE9ODQotLSAgIEVuYWJsaW5nIFgzMDAgc3VwcG9ydC4NCi0tICAgT3Zl
cnJpZGUgd2l0aCAtREVOQUJMRV9YMzAwPU9OL09GRg0KLS0gDQotLSBDb25maWd1cmluZyBOMjMw
IHN1cHBvcnQuLi4NCi0tICAgRGVwZW5kZW5jeSBFTkFCTEVfTElCVUhEID0gT04NCi0tICAgRW5h
YmxpbmcgTjIzMCBzdXBwb3J0Lg0KLS0gICBPdmVycmlkZSB3aXRoIC1ERU5BQkxFX04yMzA9T04v
T0ZGDQotLSANCi0tIENvbmZpZ3VyaW5nIE1QTUQgc3VwcG9ydC4uLg0KLS0gICBEZXBlbmRlbmN5
IEVOQUJMRV9MSUJVSEQgPSBPTg0KLS0gICBFbmFibGluZyBNUE1EIHN1cHBvcnQuDQotLSAgIE92
ZXJyaWRlIHdpdGggLURFTkFCTEVfTVBNRD1PTi9PRkYNCi0tIA0KLS0gQ29uZmlndXJpbmcgTjMw
MCBzdXBwb3J0Li4uDQotLSAgIERlcGVuZGVuY3kgRU5BQkxFX0xJQlVIRCA9IE9ODQotLSAgIERl
cGVuZGVuY3kgRU5BQkxFX01QTUQgPSBPTg0KLS0gICBFbmFibGluZyBOMzAwIHN1cHBvcnQuDQot
LSAgIE92ZXJyaWRlIHdpdGggLURFTkFCTEVfTjMwMD1PTi9PRkYNCi0tIA0KLS0gQ29uZmlndXJp
bmcgTjMyMCBzdXBwb3J0Li4uDQotLSAgIERlcGVuZGVuY3kgRU5BQkxFX0xJQlVIRCA9IE9ODQot
LSAgIERlcGVuZGVuY3kgRU5BQkxFX01QTUQgPSBPTg0KLS0gICBFbmFibGluZyBOMzIwIHN1cHBv
cnQuDQotLSAgIE92ZXJyaWRlIHdpdGggLURFTkFCTEVfTjMyMD1PTi9PRkYNCi0tIA0KLS0gQ29u
ZmlndXJpbmcgRTMyMCBzdXBwb3J0Li4uDQotLSAgIERlcGVuZGVuY3kgRU5BQkxFX0xJQlVIRCA9
IE9ODQotLSAgIERlcGVuZGVuY3kgRU5BQkxFX01QTUQgPSBPTg0KLS0gICBFbmFibGluZyBFMzIw
IHN1cHBvcnQuDQotLSAgIE92ZXJyaWRlIHdpdGggLURFTkFCTEVfRTMyMD1PTi9PRkYNCi0tIA0K
LS0gQ29uZmlndXJpbmcgRTMwMCBzdXBwb3J0Li4uDQotLSAgIERlcGVuZGVuY3kgRU5BQkxFX0xJ
QlVIRCA9IE9ODQotLSAgIERlcGVuZGVuY3kgRU5BQkxFX01QTUQgPSBPTg0KLS0gICBFbmFibGlu
ZyBFMzAwIHN1cHBvcnQuDQotLSAgIE92ZXJyaWRlIHdpdGggLURFTkFCTEVfRTMwMD1PTi9PRkYN
Ci0tIA0KLS0gQ29uZmlndXJpbmcgT2N0b0Nsb2NrIHN1cHBvcnQuLi4NCi0tICAgRGVwZW5kZW5j
eSBFTkFCTEVfTElCVUhEID0gT04NCi0tICAgRW5hYmxpbmcgT2N0b0Nsb2NrIHN1cHBvcnQuDQot
LSAgIE92ZXJyaWRlIHdpdGggLURFTkFCTEVfT0NUT0NMT0NLPU9OL09GRg0KLS0gDQotLSBDb25m
aWd1cmluZyBEUERLIHN1cHBvcnQuLi4NCi0tICAgRGVwZW5kZW5jeSBFTkFCTEVfTVBNRCA9IE9O
DQotLSAgIERlcGVuZGVuY3kgRFBES19GT1VORCA9IFRSVUUNCi0tICAgRW5hYmxpbmcgRFBESyBz
dXBwb3J0Lg0KLS0gICBPdmVycmlkZSB3aXRoIC1ERU5BQkxFX0RQREs9T04vT0ZGDQotLSANCi0t
IENvbXBpbGluZyBNUE1EIHdpdGggRFBESyBzdXBwb3J0Li4uDQotLSANCi0tIENvbmZpZ3VyaW5n
IHByaW9yaXR5IHNjaGVkdWxpbmcuLi4NCi0tICAgUHJpb3JpdHkgc2NoZWR1bGluZyBzdXBwb3J0
ZWQgdGhyb3VnaCBwdGhyZWFkX3NldHNjaGVkcGFyYW0uDQotLSAgIFNldHRpbmcgdGhyZWFkIG5h
bWVzIGlzIHN1cHBvcnRlZCB0aHJvdWdoIHB0aHJlYWRfc2V0bmFtZV9ucC4NCi0tIA0KLS0gQ29u
ZmlndXJpbmcgaGlnaCByZXNvbHV0aW9uIHRpbWluZy4uLg0KLS0gICBIaWdoIHJlc29sdXRpb24g
dGltaW5nIHN1cHBvcnRlZCB0aHJvdWdoIGNsb2NrX2dldHRpbWUuDQotLSANCi0tIENvbmZpZ3Vy
aW5nIG1vZHVsZSBsb2FkaW5nLi4uDQotLSAgIE1vZHVsZSBsb2FkaW5nIHN1cHBvcnRlZCB0aHJv
dWdoIGRsb3Blbi4NCi0tIA0KLS0gUHJvY2Vzc2luZyBOSS1SSU8gRlBHQSBMVkJJVFggQml0c3Ry
ZWFtcy4uLg0KLS0gICBVc2luZyB4MzAwLmx2Yml0eF9iYXNlIGZvciBjb2RlZ2VuDQotLSAgIFVz
aW5nIHgzMTAubHZiaXR4X2Jhc2UgZm9yIGNvZGVnZW4NCi0tIA0KLS0gVVNCIHN1cHBvcnQgZW5h
YmxlZCB2aWEgbGlidXNiLg0KLS0gDQotLSBDb25maWd1cmluZyBpbnRlcmZhY2UgYWRkcmVzcyBk
aXNjb3ZlcnkuLi4NCi0tICAgSW50ZXJmYWNlIGFkZHJlc3MgZGlzY292ZXJ5IHN1cHBvcnRlZCB0
aHJvdWdoIGdldGlmYWRkcnMuDQotLSANCi0tIExvYWRpbmcgYnVpbGQgaW5mby4NCi0tIA0KLS0g
QWRkaW5nIEIyWFggZGV2aWNlIHRlc3QgdGFyZ2V0DQotLSBBZGRpbmcgWDN4MCBkZXZpY2UgdGVz
dCB0YXJnZXQNCi0tIEFkZGluZyBFM1hYIGRldmljZSB0ZXN0IHRhcmdldA0KLS0gQWRkaW5nIE4z
WFggZGV2aWNlIHRlc3QgdGFyZ2V0DQotLSBBZGRpbmcgRTMyeCBkZXZpY2UgdGVzdCB0YXJnZXQN
Ci0tIA0KLS0gDQotLSBDb25maWd1cmluZyBNYW51YWwgc3VwcG9ydC4uLg0KLS0gICBEZXBlbmRl
bmN5IERPWFlHRU5fRk9VTkQgPSBZRVMNCi0tICAgRW5hYmxpbmcgTWFudWFsIHN1cHBvcnQuDQot
LSAgIE92ZXJyaWRlIHdpdGggLURFTkFCTEVfTUFOVUFMPU9OL09GRg0KLS0gDQotLSBDb25maWd1
cmluZyBBUEkvRG94eWdlbiBzdXBwb3J0Li4uDQotLSAgIERlcGVuZGVuY3kgRE9YWUdFTl9GT1VO
RCA9IFlFUw0KLS0gICBFbmFibGluZyBBUEkvRG94eWdlbiBzdXBwb3J0Lg0KLS0gICBPdmVycmlk
ZSB3aXRoIC1ERU5BQkxFX0RPWFlHRU49T04vT0ZGDQotLSANCi0tIEZvdW5kIEdaaXA6IC9iaW4v
Z3ppcA0KLS0gDQotLSBDb21wcmVzc2VkIE1hbiBQYWdlcyBlbmFibGVkDQotLSAgIE92ZXJyaWRl
IHdpdGggLURFTkFCTEVfTUFOX1BBR0VfQ09NUFJFU1NJT049T04vT0ZGDQotLSANCi0tIENvbmZp
Z3VyaW5nIE1hbiBQYWdlcyBzdXBwb3J0Li4uDQotLSAgIERlcGVuZGVuY3kgTk9UX1dJTjMyID0g
VFJVRQ0KLS0gICBEZXBlbmRlbmN5IEdaSVBfRk9VTkQgPSBUUlVFDQotLSAgIEVuYWJsaW5nIE1h
biBQYWdlcyBzdXBwb3J0Lg0KLS0gICBPdmVycmlkZSB3aXRoIC1ERU5BQkxFX01BTl9QQUdFUz1P
Ti9PRkYNCi0tIA0KLS0gIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjDQotLSAjIFVIRCBlbmFibGVkIGNvbXBvbmVudHMgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICANCi0tICMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIw0KLS0gICAqIExpYlVIRA0KLS0gICAqIExpYlVIRCAtIEMgQVBJDQot
LSAgICogRXhhbXBsZXMNCi0tICAgKiBVdGlscw0KLS0gICAqIFRlc3RzDQotLSAgICogVVNCDQot
LSAgICogQjEwMA0KLS0gICAqIEIyMDANCi0tICAgKiBVU1JQMQ0KLS0gICAqIFVTUlAyDQotLSAg
ICogWDMwMA0KLS0gICAqIE4yMzANCi0tICAgKiBNUE1EDQotLSAgICogTjMwMA0KLS0gICAqIE4z
MjANCi0tICAgKiBFMzIwDQotLSAgICogRTMwMA0KLS0gICAqIE9jdG9DbG9jaw0KLS0gICAqIERQ
REsNCi0tICAgKiBNYW51YWwNCi0tICAgKiBBUEkvRG94eWdlbg0KLS0gICAqIE1hbiBQYWdlcw0K
LS0gDQotLSAjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMNCi0tICMgVUhEIGRpc2FibGVkIGNvbXBvbmVudHMgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIA0KLS0gIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjDQotLSAgICogTGliVUhEIC0gUHl0aG9uIEFQSQ0KLS0gICAqIExJQkVSSU8NCi0t
IA0KLS0gKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqDQotLSAqIFlvdSBhcmUgYnVpbGRpbmcgdGhlIFVIRCBkZXZlbG9wbWVudCBtYXN0ZXIgYnJh
bmNoLg0KLS0gKiBGb3IgcHJvZHVjdGlvbiBjb2RlLCB3ZSByZWNvbW1lbmQgb3VyIHN0YWJsZSwN
Ci0tICogcmVsZWFzZXMgb3IgdXNpbmcgdGhlIHJlbGVhc2UgYnJhbmNoIChtYWludCkuDQotLSAq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioNCi0t
IEJ1aWxkaW5nIHZlcnNpb246IDMuMTUuMC4wLTk2LWcwNDA4ZjQ3Yg0KLS0gVXNpbmcgaW5zdGFs
bCBwcmVmaXg6IC91c3IvbG9jYWwNCi0tIENvbmZpZ3VyaW5nIGRvbmUNCi0tIEdlbmVyYXRpbmcg
ZG9uZQ0KLS0gQnVpbGQgZmlsZXMgaGF2ZSBiZWVuIHdyaXR0ZW4gdG86IC9ob21lL2RlbGwvdWhk
L2hvc3QvYnVpbGQNChtdMDtkZWxsQGRlbGwtWFBTLTE1LTk1NTA6IH4vdWhkL2hvc3QvYnVpbGQH
G1swMTszMm1kZWxsQGRlbGwtWFBTLTE1LTk1NTAbWzAwbTobWzAxOzM0bX4vdWhkL2hvc3QvYnVp
bGQbWzAwbSQgbWFrZSANClsgIDIlXSBCdWlsdCB0YXJnZXQgdWhkX3JwY2xpYg0KG1szNW0bWzFt
U2Nhbm5pbmcgZGVwZW5kZW5jaWVzIG9mIHRhcmdldCB1aGQbWzBtDQpbICAyJV0gG1szMm1CdWls
ZGluZyBDIG9iamVjdCBsaWIvQ01ha2VGaWxlcy91aGQuZGlyL3RyYW5zcG9ydC91aGQtZHBkay91
aGRfZHBkay5jLm8bWzBtDQpJbiBmaWxlIGluY2x1ZGVkIGZyb20gG1swMW0bW0svaG9tZS9kZWxs
L3VoZC9ob3N0L2xpYi90cmFuc3BvcnQvdWhkLWRwZGsvdWhkX2RwZGsuYzo2OjAbW20bW0s6DQob
WzAxbRtbSy9ob21lL2RlbGwvdWhkL2hvc3QvbGliL3RyYW5zcG9ydC91aGQtZHBkay91aGRfZHBk
a19jdHguaDoxMDI6MjM6G1ttG1tLIBtbMDE7MzFtG1tLZXJyb3I6IBtbbRtbS2ZpZWxkIOKAmBtb
MDFtG1tLbWFjX2FkZHIbW20bW0vigJkgaGFzIGluY29tcGxldGUgdHlwZQ0KICAgICBzdHJ1Y3Qg
ZXRoZXJfYWRkciBtYWNfYWRkcjsNChtbMDE7MzJtG1tLICAgICAgICAgICAgICAgICAgICAgICBe
G1ttG1tLDQobWzAxbRtbSy9ob21lL2RlbGwvdWhkL2hvc3QvbGliL3RyYW5zcG9ydC91aGQtZHBk
ay91aGRfZHBka19jdHguaDoxNzY6MjM6G1ttG1tLIBtbMDE7MzFtG1tLZXJyb3I6IBtbbRtbS2Zp
ZWxkIOKAmBtbMDFtG1tLbWFjX2FkZHIbW20bW0vigJkgaGFzIGluY29tcGxldGUgdHlwZQ0KICAg
ICBzdHJ1Y3QgZXRoZXJfYWRkciBtYWNfYWRkcjsNChtbMDE7MzJtG1tLICAgICAgICAgICAgICAg
ICAgICAgICBeG1ttG1tLDQpJbiBmaWxlIGluY2x1ZGVkIGZyb20gG1swMW0bW0svaG9tZS9kZWxs
L3VoZC9ob3N0L2xpYi90cmFuc3BvcnQvdWhkLWRwZGsvdWhkX2RwZGsuYzo5OjAbW20bW0s6DQob
WzAxbRtbSy9ob21lL2RlbGwvdWhkL2hvc3QvbGliL3RyYW5zcG9ydC91aGQtZHBkay91aGRfZHBk
a19kcml2ZXIuaDoyMjo2MjobW20bW0sgG1swMTszNW0bW0t3YXJuaW5nOiAbW20bW0vigJgbWzAx
bRtbS3N0cnVjdCBhcnBfaGRyG1ttG1tL4oCZIGRlY2xhcmVkIGluc2lkZSBwYXJhbWV0ZXIgbGlz
dA0KIGludCBfdWhkX2RwZGtfcHJvY2Vzc19hcnAoc3RydWN0IHVoZF9kcGRrX3BvcnQgKnBvcnQs
IHN0cnVjdCBhcnBfaGRyICphcnBfZnJhbWUpOw0KG1swMTszMm0bW0sgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4bW20bW0sNChtb
MDFtG1tLL2hvbWUvZGVsbC91aGQvaG9zdC9saWIvdHJhbnNwb3J0L3VoZC1kcGRrL3VoZF9kcGRr
X2RyaXZlci5oOjIyOjYyOhtbbRtbSyAbWzAxOzM1bRtbS3dhcm5pbmc6IBtbbRtbS2l0cyBzY29w
ZSBpcyBvbmx5IHRoaXMgZGVmaW5pdGlvbiBvciBkZWNsYXJhdGlvbiwgd2hpY2ggaXMgcHJvYmFi
bHkgbm90IHdoYXQgeW91IHdhbnQNChtbMDFtG1tLL2hvbWUvZGVsbC91aGQvaG9zdC9saWIvdHJh
bnNwb3J0L3VoZC1kcGRrL3VoZF9kcGRrX2RyaXZlci5oOjI0OjM0OhtbbRtbSyAbWzAxOzM1bRtb
S3dhcm5pbmc6IBtbbRtbS+KAmBtbMDFtG1tLc3RydWN0IHVkcF9oZHIbW20bW0vigJkgZGVjbGFy
ZWQgaW5zaWRlIHBhcmFtZXRlciBsaXN0DQogICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3QgdWRwX2hkciAqcGt0LCBib29sIGJjYXN0KTsNChtbMDE7MzJtG1tLICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIF4bW20bW0sNChtbMDFtG1tLL2hvbWUvZGVsbC91aGQvaG9zdC9s
aWIvdHJhbnNwb3J0L3VoZC1kcGRrL3VoZF9kcGRrX2RyaXZlci5oOjI1Ojg2OhtbbRtbSyAbWzAx
OzM1bRtbS3dhcm5pbmc6IBtbbRtbS+KAmBtbMDFtG1tLc3RydWN0IGlwdjRfaGRyG1ttG1tL4oCZ
IGRlY2xhcmVkIGluc2lkZSBwYXJhbWV0ZXIgbGlzdA0KIGludCBfdWhkX2RwZGtfcHJvY2Vzc19p
cHY0KHN0cnVjdCB1aGRfZHBka19wb3J0ICpwb3J0LCBzdHJ1Y3QgcnRlX21idWYgKm1idWYsIHN0
cnVjdCBpcHY0X2hkciAqcGsNChtbMDE7MzJtG1tLICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBeG1ttG1tLDQobWzAxbRtbSy9ob21lL2RlbGwvdWhkL2hvc3QvbGliL3RyYW5zcG9ydC91aGQt
ZHBkay91aGRfZHBkay5jOhtbbRtbSyBJbiBmdW5jdGlvbiDigJgbWzAxbRtbS3VoZF9kcGRrX2dl
dF9ldGhfYWRkchtbbRtbS+KAmToNChtbMDFtG1tLL2hvbWUvZGVsbC91aGQvaG9zdC9saWIvdHJh
bnNwb3J0L3VoZC1kcGRrL3VoZF9kcGRrLmM6NTU6MzE6G1ttG1tLIBtbMDE7MzFtG1tLZXJyb3I6
IBtbbRtbS+KAmBtbMDFtG1tLRVRIRVJfQUREUl9MRU4bW20bW0vigJkgdW5kZWNsYXJlZCAoZmly
c3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pDQogICAgIG1lbXNldChyZXR2YWwuYWRkciwgMHhmZiwg
RVRIRVJfQUREUl9MRU4pOw0KG1swMTszMm0bW0sgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXhtbbRtbSw0KG1swMW0bW0svaG9tZS9kZWxsL3VoZC9ob3N0L2xpYi90cmFuc3BvcnQvdWhk
LWRwZGsvdWhkX2RwZGsuYzo1NTozMTobW20bW0sgG1swMTszNm0bW0tub3RlOiAbW20bW0tlYWNo
IHVuZGVjbGFyZWQgaWRlbnRpZmllciBpcyByZXBvcnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVu
Y3Rpb24gaXQgYXBwZWFycyBpbg0KG1swMW0bW0svaG9tZS9kZWxsL3VoZC9ob3N0L2xpYi90cmFu
c3BvcnQvdWhkLWRwZGsvdWhkX2RwZGsuYzobW20bW0sgSW4gZnVuY3Rpb24g4oCYG1swMW0bW0t1
aGRfZHBka19wb3J0X2luaXQbW20bW0vigJk6DQobWzAxbRtbSy9ob21lL2RlbGwvdWhkL2hvc3Qv
bGliL3RyYW5zcG9ydC91aGQtZHBkay91aGRfZHBkay5jOjEwMzo1OhtbbRtbSyAbWzAxOzM1bRtb
S3dhcm5pbmc6IBtbbRtbS+KAmBtbMDFtG1tLcnRlX2V0aF9kZXZfY291bnQbW20bW0vigJkgaXMg
ZGVwcmVjYXRlZCBbLVdkZXByZWNhdGVkLWRlY2xhcmF0aW9uc10NCiAgICAgaWYgKHBvcnQtPmlk
ID49IHJ0ZV9ldGhfZGV2X2NvdW50KCkpDQobWzAxOzMybRtbSyAgICAgXhtbbRtbSw0KSW4gZmls
ZSBpbmNsdWRlZCBmcm9tIBtbMDFtG1tLL2hvbWUvZGVsbC91aGQvaG9zdC9saWIvdHJhbnNwb3J0
L3VoZC1kcGRrL3VoZF9kcGRrX2N0eC5oOjEyOjAbW20bW0ssDQogICAgICAgICAgICAgICAgIGZy
b20gG1swMW0bW0svaG9tZS9kZWxsL3VoZC9ob3N0L2xpYi90cmFuc3BvcnQvdWhkLWRwZGsvdWhk
X2RwZGsuYzo2G1ttG1tLOg0KG1swMW0bW0svdXNyL2xvY2FsL2luY2x1ZGUvZHBkay9ydGVfZXRo
ZGV2Lmg6MTY2OToxMDobW20bW0sgG1swMTszNm0bW0tub3RlOiAbW20bW0tkZWNsYXJlZCBoZXJl
DQogdWludDE2X3QgcnRlX2V0aF9kZXZfY291bnQodm9pZCk7DQobWzAxOzMybRtbSyAgICAgICAg
ICBeG1ttG1tLDQpJbiBmaWxlIGluY2x1ZGVkIGZyb20gG1swMW0bW0svdXNyL2xvY2FsL2luY2x1
ZGUvZHBkay9ydGVfZXRoZGV2Lmg6MTUyOjAbW20bW0ssDQogICAgICAgICAgICAgICAgIGZyb20g
G1swMW0bW0svaG9tZS9kZWxsL3VoZC9ob3N0L2xpYi90cmFuc3BvcnQvdWhkLWRwZGsvdWhkX2Rw
ZGtfY3R4Lmg6MTIbW20bW0ssDQogICAgICAgICAgICAgICAgIGZyb20gG1swMW0bW0svaG9tZS9k
ZWxsL3VoZC9ob3N0L2xpYi90cmFuc3BvcnQvdWhkLWRwZGsvdWhkX2RwZGsuYzo2G1ttG1tLOg0K
G1swMW0bW0svaG9tZS9kZWxsL3VoZC9ob3N0L2xpYi90cmFuc3BvcnQvdWhkLWRwZGsvdWhkX2Rw
ZGsuYzoxMjI6MTA4OhtbbRtbSyAbWzAxOzM1bRtbS3dhcm5pbmc6IBtbbRtbS2Zvcm1hdCDigJgb
WzAxbRtbSyVsbHgbW20bW0vigJkgZXhwZWN0cyBhcmd1bWVudCBvZiB0eXBlIOKAmBtbMDFtG1tL
bG9uZyBsb25nIHVuc2lnbmVkIGludBtbbRtbS+KAmSwgYnV0IGFyZ3VtZW50IDUgaGFzIHR5cGUg
4oCYG1swMW0bW0t1aW50NjRfdCB7YWthIGxvbmcgdW5zaWduZWQgaW50fRtbbRtbS+KAmSBbLVdm
b3JtYXQ9XQ0KIExPRyhXQVJOSU5HLCBFQUwsICIlZDogT25seSBzdXBwb3J0cyBSWCBvZmZsb2Fk
cyAweCUwbGx4XG4iLCBwb3J0LT5pZCwgZGV2X2luZm8ucnhfb2ZmbG9hZF9jYXBhKTsNChtbMDE7
MzJtG1tLICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXhtbbRtbSw0KG1sw
MW0bW0svdXNyL2xvY2FsL2luY2x1ZGUvZHBkay9ydGVfbG9nLmg6MzI0OjI1OhtbbRtbSyAbWzAx
OzM2bRtbS25vdGU6IBtbbRtbS2luIGRlZmluaXRpb24gb2YgbWFjcm8g4oCYG1swMW0bW0tSVEVf
TE9HG1ttG1tL4oCZDQogICAgUlRFX0xPR1RZUEVfICMjIHQsICMgdCAiOiAiIF9fVkFfQVJHU19f
KQ0KG1swMTszMm0bW0sgICAgICAgICAgICAgICAgICAgICAgICAgXhtbbRtbSw0KG1swMW0bW0sv
aG9tZS9kZWxsL3VoZC9ob3N0L2xpYi90cmFuc3BvcnQvdWhkLWRwZGsvdWhkX2RwZGsuYzoxMjY6
MTA4OhtbbRtbSyAbWzAxOzM1bRtbS3dhcm5pbmc6IBtbbRtbS2Zvcm1hdCDigJgbWzAxbRtbSyVs
bHgbW20bW0vigJkgZXhwZWN0cyBhcmd1bWVudCBvZiB0eXBlIOKAmBtbMDFtG1tLbG9uZyBsb25n
IHVuc2lnbmVkIGludBtbbRtbS+KAmSwgYnV0IGFyZ3VtZW50IDUgaGFzIHR5cGUg4oCYG1swMW0b
W0t1aW50NjRfdCB7YWthIGxvbmcgdW5zaWduZWQgaW50fRtbbRtbS+KAmSBbLVdmb3JtYXQ9XQ0K
IExPRyhXQVJOSU5HLCBFQUwsICIlZDogT25seSBzdXBwb3J0cyBUWCBvZmZsb2FkcyAweCUwbGx4
XG4iLCBwb3J0LT5pZCwgZGV2X2luZm8udHhfb2ZmbG9hZF9jYXBhKTsNChtbMDE7MzJtG1tLICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXhtbbRtbSw0KG1swMW0bW0svdXNy
L2xvY2FsL2luY2x1ZGUvZHBkay9ydGVfbG9nLmg6MzI0OjI1OhtbbRtbSyAbWzAxOzM2bRtbS25v
dGU6IBtbbRtbS2luIGRlZmluaXRpb24gb2YgbWFjcm8g4oCYG1swMW0bW0tSVEVfTE9HG1ttG1tL
4oCZDQogICAgUlRFX0xPR1RZUEVfICMjIHQsICMgdCAiOiAiIF9fVkFfQVJHU19fKQ0KG1swMTsz
Mm0bW0sgICAgICAgICAgICAgICAgICAgICAgICAgXhtbbRtbSw0KG1swMW0bW0svaG9tZS9kZWxs
L3VoZC9ob3N0L2xpYi90cmFuc3BvcnQvdWhkLWRwZGsvdWhkX2RwZGsuYzoxMzQ6MTM6G1ttG1tL
IBtbMDE7MzFtG1tLZXJyb3I6IBtbbRtbS3Vua25vd24gZmllbGQg4oCYG1swMW0bW0tqdW1ib19m
cmFtZRtbbRtbS+KAmSBzcGVjaWZpZWQgaW4gaW5pdGlhbGl6ZXINCiAgICAgICAgICAgICAuanVt
Ym9fZnJhbWUgPSAxLA0KG1swMTszMm0bW0sgICAgICAgICAgICAgXhtbbRtbSw0KG1swMW0bW0sv
aG9tZS9kZWxsL3VoZC9ob3N0L2xpYi90cmFuc3BvcnQvdWhkLWRwZGsvdWhkX2RwZGsuYzoxMzU6
MTM6G1ttG1tLIBtbMDE7MzFtG1tLZXJyb3I6IBtbbRtbS3Vua25vd24gZmllbGQg4oCYG1swMW0b
W0tod19pcF9jaGVja3N1bRtbbRtbS+KAmSBzcGVjaWZpZWQgaW4gaW5pdGlhbGl6ZXINCiAgICAg
ICAgICAgICAuaHdfaXBfY2hlY2tzdW0gPSAxLA0KG1swMTszMm0bW0sgICAgICAgICAgICAgXhtb
bRtbSw0KG1swMW0bW0svaG9tZS9kZWxsL3VoZC9ob3N0L2xpYi90cmFuc3BvcnQvdWhkLWRwZGsv
dWhkX2RwZGsuYzoxMzU6MzE6G1ttG1tLIBtbMDE7MzVtG1tLd2FybmluZzogG1ttG1tLaW5pdGlh
bGl6ZWQgZmllbGQgb3ZlcndyaXR0ZW4gWy1Xb3ZlcnJpZGUtaW5pdF0NCiAgICAgICAgICAgICAu
aHdfaXBfY2hlY2tzdW0gPSAxLA0KG1swMTszMm0bW0sgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXhtbbRtbSw0KG1swMW0bW0svaG9tZS9kZWxsL3VoZC9ob3N0L2xpYi90cmFuc3BvcnQv
dWhkLWRwZGsvdWhkX2RwZGsuYzoxMzU6MzE6G1ttG1tLIBtbMDE7MzZtG1tLbm90ZTogG1ttG1tL
KG5lYXIgaW5pdGlhbGl6YXRpb24gZm9yIOKAmBtbMDFtG1tLcG9ydF9jb25mLnJ4bW9kZS5vZmZs
b2FkcxtbbRtbS+KAmSkNChtbMDFtG1tLL2hvbWUvZGVsbC91aGQvaG9zdC9saWIvdHJhbnNwb3J0
L3VoZC1kcGRrL3VoZF9kcGRrLmM6MTM2OjEzOhtbbRtbSyAbWzAxOzMxbRtbS2Vycm9yOiAbW20b
W0t1bmtub3duIGZpZWxkIOKAmBtbMDFtG1tLaWdub3JlX29mZmxvYWRfYml0ZmllbGQbW20bW0vi
gJkgc3BlY2lmaWVkIGluIGluaXRpYWxpemVyDQogICAgICAgICAgICAgLmlnbm9yZV9vZmZsb2Fk
X2JpdGZpZWxkID0gMCwNChtbMDE7MzJtG1tLICAgICAgICAgICAgIF4bW20bW0sNChtbMDFtG1tL
L2hvbWUvZGVsbC91aGQvaG9zdC9saWIvdHJhbnNwb3J0L3VoZC1kcGRrL3VoZF9kcGRrLmM6MTM2
OjQwOhtbbRtbSyAbWzAxOzM1bRtbS3dhcm5pbmc6IBtbbRtbS2V4Y2VzcyBlbGVtZW50cyBpbiBz
dHJ1Y3QgaW5pdGlhbGl6ZXINCiAgICAgICAgICAgICAuaWdub3JlX29mZmxvYWRfYml0ZmllbGQg
PSAwLA0KG1swMTszMm0bW0sgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
XhtbbRtbSw0KG1swMW0bW0svaG9tZS9kZWxsL3VoZC9ob3N0L2xpYi90cmFuc3BvcnQvdWhkLWRw
ZGsvdWhkX2RwZGsuYzoxMzY6NDA6G1ttG1tLIBtbMDE7MzZtG1tLbm90ZTogG1ttG1tLKG5lYXIg
aW5pdGlhbGl6YXRpb24gZm9yIOKAmBtbMDFtG1tLcG9ydF9jb25mLnJ4bW9kZRtbbRtbS+KAmSkN
ChtbMDFtG1tLL2hvbWUvZGVsbC91aGQvaG9zdC9saWIvdHJhbnNwb3J0L3VoZC1kcGRrL3VoZF9k
cGRrLmM6G1ttG1tLIEluIGZ1bmN0aW9uIOKAmBtbMDFtG1tLdWhkX2RwZGtfaW5pdBtbbRtbS+KA
mToNChtbMDFtG1tLL2hvbWUvZGVsbC91aGQvaG9zdC9saWIvdHJhbnNwb3J0L3VoZC1kcGRrL3Vo
ZF9kcGRrLmM6Mjc5OjU6G1ttG1tLIBtbMDE7MzVtG1tLd2FybmluZzogG1ttG1tL4oCYG1swMW0b
W0tydGVfZXRoX2Rldl9jb3VudBtbbRtbS+KAmSBpcyBkZXByZWNhdGVkIFstV2RlcHJlY2F0ZWQt
ZGVjbGFyYXRpb25zXQ0KICAgICBjdHgtPm51bV9wb3J0cyA9IHJ0ZV9ldGhfZGV2X2NvdW50KCk7
DQobWzAxOzMybRtbSyAgICAgXhtbbRtbSw0KSW4gZmlsZSBpbmNsdWRlZCBmcm9tIBtbMDFtG1tL
L2hvbWUvZGVsbC91aGQvaG9zdC9saWIvdHJhbnNwb3J0L3VoZC1kcGRrL3VoZF9kcGRrX2N0eC5o
OjEyOjAbW20bW0ssDQogICAgICAgICAgICAgICAgIGZyb20gG1swMW0bW0svaG9tZS9kZWxsL3Vo
ZC9ob3N0L2xpYi90cmFuc3BvcnQvdWhkLWRwZGsvdWhkX2RwZGsuYzo2G1ttG1tLOg0KG1swMW0b
W0svdXNyL2xvY2FsL2luY2x1ZGUvZHBkay9ydGVfZXRoZGV2Lmg6MTY2OToxMDobW20bW0sgG1sw
MTszNm0bW0tub3RlOiAbW20bW0tkZWNsYXJlZCBoZXJlDQogdWludDE2X3QgcnRlX2V0aF9kZXZf
Y291bnQodm9pZCk7DQobWzAxOzMybRtbSyAgICAgICAgICBeG1ttG1tLDQpsaWIvQ01ha2VGaWxl
cy91aGQuZGlyL2J1aWxkLm1ha2U6MzgyNDogcmVjaXBlIGZvciB0YXJnZXQgJ2xpYi9DTWFrZUZp
bGVzL3VoZC5kaXIvdHJhbnNwb3J0L3VoZC1kcGRrL3VoZF9kcGRrLmMubycgZmFpbGVkDQptYWtl
WzJdOiAqKiogW2xpYi9DTWFrZUZpbGVzL3VoZC5kaXIvdHJhbnNwb3J0L3VoZC1kcGRrL3VoZF9k
cGRrLmMub10gRXJyb3IgMQ0KQ01ha2VGaWxlcy9NYWtlZmlsZTI6MTI4OiByZWNpcGUgZm9yIHRh
cmdldCAnbGliL0NNYWtlRmlsZXMvdWhkLmRpci9hbGwnIGZhaWxlZA0KbWFrZVsxXTogKioqIFts
aWIvQ01ha2VGaWxlcy91aGQuZGlyL2FsbF0gRXJyb3IgMg0KTWFrZWZpbGU6MTYyOiByZWNpcGUg
Zm9yIHRhcmdldCAnYWxsJyBmYWlsZWQNCm1ha2U6ICoqKiBbYWxsXSBFcnJvciAyDQobXTA7ZGVs
bEBkZWxsLVhQUy0xNS05NTUwOiB+L3VoZC9ob3N0L2J1aWxkBxtbMDE7MzJtZGVsbEBkZWxsLVhQ
Uy0xNS05NTUwG1swMG06G1swMTszNG1+L3VoZC9ob3N0L2J1aWxkG1swMG0kIGV4aXQNCmV4aXQN
CgpTY3JpcHQgZG9uZSBvbiBTdW4gMjcgT2N0IDIwMTkgMTI6MjI6NTEgUE0gQ0RUCg==
--00000000000023bf490595e7a692
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--00000000000023bf490595e7a692--

