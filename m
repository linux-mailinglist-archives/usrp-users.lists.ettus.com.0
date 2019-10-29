Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE12E8A96
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2019 15:18:13 +0100 (CET)
Received: from [::1] (port=47792 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iPSJx-0007YG-RW; Tue, 29 Oct 2019 10:18:05 -0400
Received: from mail-io1-f52.google.com ([209.85.166.52]:45064)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1iPSJu-0007SK-6N
 for usrp-users@lists.ettus.com; Tue, 29 Oct 2019 10:18:02 -0400
Received: by mail-io1-f52.google.com with SMTP id s17so7806607iol.12
 for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2019 07:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3UMgVCJIVV3tAnoJrrb69mc8u4sgtlnvZGNX3nCjuL0=;
 b=lro9uOUwb+zvhOt+GNwQ/8EA9MrXCVSr3VpKomhwBRye7wKVdHYf4xxAKW9bsZwZl8
 PRTHAQ4Rd6zmMOQRWwAjURF3Sm5SJz+PPRsjgFPNoNYDcXncA+YQ6b4YAWQsds2KZ3jx
 iR1AC+5YglOAX7KSGImh0nxYgyefjPj4DfYS6GG4yo5yJWvkhp3wtUXrD8GXTWtO8Zdu
 3c52AE2QurWOt84qk45t+O9pyjsZXjFmslSxVU6eeTOiuGzmy23w9x3Hpzrk6C+C5PwA
 N/DCmLeAGNh+oG0SVOx1CfHi1+wQWX/pMiXDKyLIlXK+zn4C+xY2PQOQkRjsRAVqOSjJ
 cUeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3UMgVCJIVV3tAnoJrrb69mc8u4sgtlnvZGNX3nCjuL0=;
 b=Qp6GKWSjqN5jZScRL4K/0+F6PPShLlLnHtzw3EeH9rvBvxG7SZfMKe9fruLPkMdxe/
 Oc3kkQ1wpAfGYq3MH04jmJ7s2n3Xq2iTKlQNjn2duhuH9CNvE3TvMSd6hryrgpfhtxI4
 2nEfA1WjQV/5gztCQjSVL24ZjiVJ4yg6h3u/R/eX+GL4h0KOz94KkIt8AQ0NFzGZDW/J
 0A1pNNXFYbGGc/2tKNMj5QMoM8eNkb7rKTw2kU5EyPhL0yn6iaT2VYJzIJD5I+M3emyJ
 +WZnBKn403rVRqVjb/UTywfDkroHFOf3oHGB2sEhrjLzOXbtCZutOWyuSDd2mFx7kzFl
 QNsg==
X-Gm-Message-State: APjAAAWBfipgMw4GbImy4u1qHXnla+/fZ1+U49lFX8Jh6S8XXGbahW8u
 xBtVkBNPswviZ+3jXbWEuM0kSgqUP7S8/OYrdloDfw==
X-Google-Smtp-Source: APXvYqzTWo7NDk7fQQ1Swd8qtgBLoYQFfVyLxgErvSYSSf7KDGWRbrkiVLnuu9m/WHTjhgHENzjwr7HPHypvfwbv7k8=
X-Received: by 2002:a6b:ce03:: with SMTP id p3mr3957755iob.290.1572358641213; 
 Tue, 29 Oct 2019 07:17:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAFYRoL=kkQQx5YCAjBRgVTyZfqUvr9vhSk2cwDvpvvfZK=sj7g@mail.gmail.com>
 <CAL263iz0AxCDyMtsGGCwPh0b7SXduH5Vfi15iJkefkXoOVTrag@mail.gmail.com>
In-Reply-To: <CAL263iz0AxCDyMtsGGCwPh0b7SXduH5Vfi15iJkefkXoOVTrag@mail.gmail.com>
Date: Tue, 29 Oct 2019 07:17:07 -0700
Message-ID: <CAKJyDkJQJP5419F899nUk9pkPguoazQ2xhbJUGjb1K1BbiXgEA@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
Subject: Re: [USRP-users] emergence, help, build uhd with error about dpdk
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 Jane Zhang <janezhang76201@gmail.com>
Content-Type: multipart/mixed; boundary="===============5461231083402279104=="
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

--===============5461231083402279104==
Content-Type: multipart/alternative; boundary="00000000000045069305960d46ab"

--00000000000045069305960d46ab
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What USRP are you targeting?
Also, I'm not sure it makes sense to enable DPDK on an XPS15 laptop with a
USRP.  It was targeted by Ettus for use with the USRP X3x0 and N3x0, which
most people use with desktop PCs with  dual10gigE NICs or a QSFP in the
case of the N320/N321.



On Sun, Oct 27, 2019 at 10:51 AM Nate Temple via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Jane,
>
> What host OS are you using? What version of DPDK do you have installed?
>
> Can you try using the latest stable release, UHD 3.14.1.1, master can be
> unstable.
>
>
> Regards,
> Nate Temple
>
> On Sun, Oct 27, 2019 at 10:24 AM Jane Zhang via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> hello, i am a new user with ubuntu and uhd. Later i need to build
>> gnuradio.
>> I build uhd(look from changelog, release 3.15). There were errors about
>> dpdk as follows.
>> Would you please help to solve this problem. I have time to finish this
>> task.
>> Thank you so much!
>>
>> dell@dell-XPS-15-9550:~/uhd/host/build$ cmake ../
>> --
>> -- Configuring the Python interpreter...
>> -- Manually determining build Python version...
>> -- Python interpreter: /usr/bin/python3.6 Version: 3.6.8
>> -- Override with: -DPYTHON_EXECUTABLE=3D<path-to-python>
>> -- Manually determining runtime Python version...
>> -- Python runtime interpreter: /usr/bin/python3.6 Version: 3.6.8
>> -- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D<path-to-python>
>> -- Finding Python Libraries...
>> -- Could not find Python Libraries.
>> -- Operating on master branch.
>> -- Using UHD Images Directory: /usr/local/share/uhd/images
>> -- Build type not specified: defaulting to release.
>> --
>> -- Configuring Boost C++ Libraries...
>> -- Looking for optional Boost components...
>> -- Found Boost: /usr/include (found suitable version "1.58.0", minimum
>> required is "1.58")
>> -- Looking for required Boost components...
>> -- Found Boost: /usr/include (found suitable version "1.58.0", minimum
>> required is "1.58") found components:  chrono date_time filesystem
>> program_options regex system unit_test_framework serialization thread
>> atomic
>> -- Boost include directories: /usr/include
>> -- Boost library directories: /usr/lib/x86_64-linux-gnu
>> -- Boost libraries:
>> /usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/l=
ibboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/=
lib/x86_64-linux-gnu/libboost_program_options.so;/usr/lib/x86_64-linux-gnu/=
libboost_regex.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86=
_64-linux-gnu/libboost_unit_test_framework.so;/usr/lib/x86_64-linux-gnu/lib=
boost_serialization.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;-lpthre=
ad;/usr/lib/x86_64-linux-gnu/libboost_atomic.so
>> --
>> -- Python checking for Python version 2.7 or greater
>> -- Python checking for Python version 2.7 or greater - found
>> --
>> -- Python checking for Mako templates 0.4.2 or greater
>> -- Python checking for Mako templates 0.4.2 or greater - found
>> --
>> -- Python checking for requests 2.0 or greater
>> -- Python checking for requests 2.0 or greater - found
>> --
>> -- Python checking for numpy 1.7 or greater
>> -- Python checking for numpy 1.7 or greater - found
>> --
>> -- Configuring LibUHD support...
>> --   Dependency Boost_FOUND =3D TRUE
>> --   Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D TRUE
>> --   Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE
>> --   Enabling LibUHD support.
>> --   Override with -DENABLE_LIBUHD=3DON/OFF
>> --
>> -- Configuring LibUHD - C API support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Enabling LibUHD - C API support.
>> --   Override with -DENABLE_C_API=3DON/OFF
>> --
>> -- Configuring LibUHD - Python API support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Dependency HAVE_PYTHON_MODULE_NUMPY =3D TRUE
>> --   Dependency HAVE_PYTHON_LIBS =3D FALSE
>> --   Disabling LibUHD - Python API support.
>> --   Override with -DENABLE_PYTHON_API=3DON/OFF
>> --
>> -- Configuring Examples support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Enabling Examples support.
>> --   Override with -DENABLE_EXAMPLES=3DON/OFF
>> --
>> -- Configuring Utils support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Enabling Utils support.
>> --   Override with -DENABLE_UTILS=3DON/OFF
>> --
>> -- Configuring Tests support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Enabling Tests support.
>> --   Override with -DENABLE_TESTS=3DON/OFF
>> --
>> -- Could NOT find LIBERIO (missing: LIBERIO_LIBRARY LIBERIO_INCLUDE_DIR)
>> --
>> -- Configuring LIBERIO support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Dependency LIBERIO_FOUND =3D FALSE
>> --   Disabling LIBERIO support.
>> --   Override with -DENABLE_LIBERIO=3DON/OFF
>> --
>> -- Configuring USB support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Dependency LIBUSB_FOUND =3D TRUE
>> --   Enabling USB support.
>> --   Override with -DENABLE_USB=3DON/OFF
>> --
>> -- Configuring B100 support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Dependency ENABLE_USB =3D ON
>> --   Enabling B100 support.
>> --   Override with -DENABLE_B100=3DON/OFF
>> --
>> -- Configuring B200 support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Dependency ENABLE_USB =3D ON
>> --   Enabling B200 support.
>> --   Override with -DENABLE_B200=3DON/OFF
>> --
>> -- Configuring USRP1 support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Dependency ENABLE_USB =3D ON
>> --   Enabling USRP1 support.
>> --   Override with -DENABLE_USRP1=3DON/OFF
>> --
>> -- Configuring USRP2 support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Enabling USRP2 support.
>> --   Override with -DENABLE_USRP2=3DON/OFF
>> --
>> -- Configuring X300 support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Enabling X300 support.
>> --   Override with -DENABLE_X300=3DON/OFF
>> --
>> -- Configuring N230 support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Enabling N230 support.
>> --   Override with -DENABLE_N230=3DON/OFF
>> --
>> -- Configuring MPMD support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Enabling MPMD support.
>> --   Override with -DENABLE_MPMD=3DON/OFF
>> --
>> -- Configuring N300 support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Dependency ENABLE_MPMD =3D ON
>> --   Enabling N300 support.
>> --   Override with -DENABLE_N300=3DON/OFF
>> --
>> -- Configuring N320 support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Dependency ENABLE_MPMD =3D ON
>> --   Enabling N320 support.
>> --   Override with -DENABLE_N320=3DON/OFF
>> --
>> -- Configuring E320 support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Dependency ENABLE_MPMD =3D ON
>> --   Enabling E320 support.
>> --   Override with -DENABLE_E320=3DON/OFF
>> --
>> -- Configuring E300 support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Dependency ENABLE_MPMD =3D ON
>> --   Enabling E300 support.
>> --   Override with -DENABLE_E300=3DON/OFF
>> --
>> -- Configuring OctoClock support...
>> --   Dependency ENABLE_LIBUHD =3D ON
>> --   Enabling OctoClock support.
>> --   Override with -DENABLE_OCTOCLOCK=3DON/OFF
>> --
>> -- Configuring DPDK support...
>> --   Dependency ENABLE_MPMD =3D ON
>> --   Dependency DPDK_FOUND =3D TRUE
>> --   Enabling DPDK support.
>> --   Override with -DENABLE_DPDK=3DON/OFF
>> --
>> -- Compiling MPMD with DPDK support...
>> --
>> -- Configuring priority scheduling...
>> --   Priority scheduling supported through pthread_setschedparam.
>> --   Setting thread names is supported through pthread_setname_np.
>> --
>> -- Configuring high resolution timing...
>> --   High resolution timing supported through clock_gettime.
>> --
>> -- Configuring module loading...
>> --   Module loading supported through dlopen.
>> --
>> -- Processing NI-RIO FPGA LVBITX Bitstreams...
>> --   Using x300.lvbitx_base for codegen
>> --   Using x310.lvbitx_base for codegen
>> --
>> -- USB support enabled via libusb.
>> --
>> -- Configuring interface address discovery...
>> --   Interface address discovery supported through getifaddrs.
>> --
>> -- Loading build info.
>> --
>> -- Adding B2XX device test target
>> -- Adding X3x0 device test target
>> -- Adding E3XX device test target
>> -- Adding N3XX device test target
>> -- Adding E32x device test target
>> --
>> --
>> -- Configuring Manual support...
>> --   Dependency DOXYGEN_FOUND =3D YES
>> --   Enabling Manual support.
>> --   Override with -DENABLE_MANUAL=3DON/OFF
>> --
>> -- Configuring API/Doxygen support...
>> --   Dependency DOXYGEN_FOUND =3D YES
>> --   Enabling API/Doxygen support.
>> --   Override with -DENABLE_DOXYGEN=3DON/OFF
>> --
>> -- Found GZip: /bin/gzip
>> --
>> -- Compressed Man Pages enabled
>> --   Override with -DENABLE_MAN_PAGE_COMPRESSION=3DON/OFF
>> --
>> -- Configuring Man Pages support...
>> --   Dependency NOT_WIN32 =3D TRUE
>> --   Dependency GZIP_FOUND =3D TRUE
>> --   Enabling Man Pages support.
>> --   Override with -DENABLE_MAN_PAGES=3DON/OFF
>> --
>> -- ######################################################
>> -- # UHD enabled components
>> -- ######################################################
>> --   * LibUHD
>> --   * LibUHD - C API
>> --   * Examples
>> --   * Utils
>> --   * Tests
>> --   * USB
>> --   * B100
>> --   * B200
>> --   * USRP1
>> --   * USRP2
>> --   * X300
>> --   * N230
>> --   * MPMD
>> --   * N300
>> --   * N320
>> --   * E320
>> --   * E300
>> --   * OctoClock
>> --   * DPDK
>> --   * Manual
>> --   * API/Doxygen
>> --   * Man Pages
>> --
>> -- ######################################################
>> -- # UHD disabled components
>> -- ######################################################
>> --   * LibUHD - Python API
>> --   * LIBERIO
>> --
>> -- ******************************************************
>> -- * You are building the UHD development master branch.
>> -- * For production code, we recommend our stable,
>> -- * releases or using the release branch (maint).
>> -- ******************************************************
>> -- Building version: 3.15.0.0-96-g0408f47b
>> -- Using install prefix: /usr/local
>> -- Configuring done
>> -- Generating done
>> -- Build files have been written to: /home/dell/uhd/host/build
>> dell@dell-XPS-15-9550:~/uhd/host/build$ make
>> [  2%] Built target uhd_rpclib
>> Scanning dependencies of target uhd
>> [  2%] Building C object
>> lib/CMakeFiles/uhd.dir/transport/uhd-dpdk/uhd_dpdk.c.o
>> In file included from
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:0:
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:102:23: error:
>> field =E2=80=98mac_addr=E2=80=99 has incomplete type
>>      struct ether_addr mac_addr;
>>                        ^
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:176:23: error:
>> field =E2=80=98mac_addr=E2=80=99 has incomplete type
>>      struct ether_addr mac_addr;
>>                        ^
>> In file included from
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:9:0:
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:22:62:
>> warning: =E2=80=98struct arp_hdr=E2=80=99 declared inside parameter list
>>  int _uhd_dpdk_process_arp(struct uhd_dpdk_port *port, struct arp_hdr
>> *arp_frame);
>>                                                               ^
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:22:62:
>> warning: its scope is only this definition or declaration, which is
>> probably not what you want
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:24:34:
>> warning: =E2=80=98struct udp_hdr=E2=80=99 declared inside parameter list
>>                            struct udp_hdr *pkt, bool bcast);
>>                                   ^
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:25:86:
>> warning: =E2=80=98struct ipv4_hdr=E2=80=99 declared inside parameter lis=
t
>>  int _uhd_dpdk_process_ipv4(struct uhd_dpdk_port *port, struct rte_mbuf
>> *mbuf, struct ipv4_hdr *pk
>>
>>             ^
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In function
>> =E2=80=98uhd_dpdk_get_eth_addr=E2=80=99:
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:55:31: error:
>> =E2=80=98ETHER_ADDR_LEN=E2=80=99 undeclared (first use in this function)
>>      memset(retval.addr, 0xff, ETHER_ADDR_LEN);
>>                                ^
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:55:31: note: each
>> undeclared identifier is reported only once for each function it appears=
 in
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In function
>> =E2=80=98uhd_dpdk_port_init=E2=80=99:
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:103:5: warning:
>> =E2=80=98rte_eth_dev_count=E2=80=99 is deprecated [-Wdeprecated-declarat=
ions]
>>      if (port->id >=3D rte_eth_dev_count())
>>      ^
>> In file included from
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:12:0,
>>                  from
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:
>> /usr/local/include/dpdk/rte_ethdev.h:1669:10: note: declared here
>>  uint16_t rte_eth_dev_count(void);
>>           ^
>> In file included from /usr/local/include/dpdk/rte_ethdev.h:152:0,
>>                  from
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:12,
>>                  from
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:122:108: warning:
>> format =E2=80=98%llx=E2=80=99 expects argument of type =E2=80=98long lon=
g unsigned int=E2=80=99, but
>> argument 5 has type =E2=80=98uint64_t {aka long unsigned int}=E2=80=99 [=
-Wformat=3D]
>>  LOG(WARNING, EAL, "%d: Only supports RX offloads 0x%0llx\n", port->id,
>> dev_info.rx_offload_capa);
>>
>>                       ^
>> /usr/local/include/dpdk/rte_log.h:324:25: note: in definition of macro
>> =E2=80=98RTE_LOG=E2=80=99
>>     RTE_LOGTYPE_ ## t, # t ": " __VA_ARGS__)
>>                          ^
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:126:108: warning:
>> format =E2=80=98%llx=E2=80=99 expects argument of type =E2=80=98long lon=
g unsigned int=E2=80=99, but
>> argument 5 has type =E2=80=98uint64_t {aka long unsigned int}=E2=80=99 [=
-Wformat=3D]
>>  LOG(WARNING, EAL, "%d: Only supports TX offloads 0x%0llx\n", port->id,
>> dev_info.tx_offload_capa);
>>
>>                       ^
>> /usr/local/include/dpdk/rte_log.h:324:25: note: in definition of macro
>> =E2=80=98RTE_LOG=E2=80=99
>>     RTE_LOGTYPE_ ## t, # t ": " __VA_ARGS__)
>>                          ^
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:134:13: error:
>> unknown field =E2=80=98jumbo_frame=E2=80=99 specified in initializer
>>              .jumbo_frame =3D 1,
>>              ^
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:135:13: error:
>> unknown field =E2=80=98hw_ip_checksum=E2=80=99 specified in initializer
>>              .hw_ip_checksum =3D 1,
>>              ^
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:135:31: warning:
>> initialized field overwritten [-Woverride-init]
>>              .hw_ip_checksum =3D 1,
>>                                ^
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:135:31: note: (nea=
r
>> initialization for =E2=80=98port_conf.rxmode.offloads=E2=80=99)
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:136:13: error:
>> unknown field =E2=80=98ignore_offload_bitfield=E2=80=99 specified in ini=
tializer
>>              .ignore_offload_bitfield =3D 0,
>>              ^
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:136:40: warning:
>> excess elements in struct initializer
>>              .ignore_offload_bitfield =3D 0,
>>                                         ^
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:136:40: note: (nea=
r
>> initialization for =E2=80=98port_conf.rxmode=E2=80=99)
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In function
>> =E2=80=98uhd_dpdk_init=E2=80=99:
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:279:5: warning:
>> =E2=80=98rte_eth_dev_count=E2=80=99 is deprecated [-Wdeprecated-declarat=
ions]
>>      ctx->num_ports =3D rte_eth_dev_count();
>>      ^
>> In file included from
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:12:0,
>>                  from
>> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:
>> /usr/local/include/dpdk/rte_ethdev.h:1669:10: note: declared here
>>  uint16_t rte_eth_dev_count(void);
>>           ^
>> lib/CMakeFiles/uhd.dir/build.make:3824: recipe for target
>> 'lib/CMakeFiles/uhd.dir/transport/uhd-dpdk/uhd_dpdk.c.o' failed
>> make[2]: *** [lib/CMakeFiles/uhd.dir/transport/uhd-dpdk/uhd_dpdk.c.o]
>> Error 1
>> CMakeFiles/Makefile2:128: recipe for target 'lib/CMakeFiles/uhd.dir/all'
>> failed
>> make[1]: *** [lib/CMakeFiles/uhd.dir/all] Error 2
>> Makefile:162: recipe for target 'all' failed
>> make: *** [all] Error 2
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000045069305960d46ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What USRP are you targeting?<div>Also, I&#39;m not sure it=
 makes sense to enable DPDK on an XPS15 laptop with a USRP.=C2=A0 It was ta=
rgeted by Ettus for use with the USRP X3x0 and N3x0, which most people=C2=
=A0use with desktop PCs with=C2=A0 dual10gigE NICs or a QSFP in the case of=
 the N320/N321.</div><div><br></div><div><br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Oct 27, 2019 at =
10:51 AM Nate Temple via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_d=
efault" style=3D"font-family:arial,helvetica,sans-serif">Hi Jane,<br><br>Wh=
at host OS are you using? What version of DPDK do you have installed?<br><b=
r>Can you try using the latest stable release, UHD 3.14.1.1, master can be =
unstable.<br><br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Oct 27, 2019 at 1=
0:24 AM Jane Zhang via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
hello, i am a new user with ubuntu and uhd. Later i need to build gnuradio.=
<br></div><div>I build uhd(look from changelog, release 3.15). There were e=
rrors about dpdk as follows. <br></div><div>Would you please help to solve =
this problem. I have time to finish this task.</div><div>Thank you so much!=
<br></div><div><br></div><div>dell@dell-XPS-15-9550:~/uhd/host/build$ cmake=
 ../<br>-- <br>-- Configuring the Python interpreter...<br>-- Manually dete=
rmining build Python version...<br>-- Python interpreter: /usr/bin/python3.=
6 Version: 3.6.8<br>-- Override with: -DPYTHON_EXECUTABLE=3D&lt;path-to-pyt=
hon&gt;<br>-- Manually determining runtime Python version...<br>-- Python r=
untime interpreter: /usr/bin/python3.6 Version: 3.6.8<br>-- Override with: =
-DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;<br>-- Finding Python L=
ibraries...<br>-- Could not find Python Libraries.<br>-- Operating on maste=
r branch.<br>-- Using UHD Images Directory: /usr/local/share/uhd/images<br>=
-- Build type not specified: defaulting to release.<br>-- <br>-- Configurin=
g Boost C++ Libraries...<br>-- Looking for optional Boost components...<br>=
-- Found Boost: /usr/include (found suitable version &quot;1.58.0&quot;, mi=
nimum required is &quot;1.58&quot;) =C2=A0<br>-- Looking for required Boost=
 components...<br>-- Found Boost: /usr/include (found suitable version &quo=
t;1.58.0&quot;, minimum required is &quot;1.58&quot;) found components: =C2=
=A0chrono date_time filesystem program_options regex system unit_test_frame=
work serialization thread atomic <br>-- Boost include directories: /usr/inc=
lude<br>-- Boost library directories: /usr/lib/x86_64-linux-gnu<br>-- Boost=
 libraries: /usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-li=
nux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem=
.so;/usr/lib/x86_64-linux-gnu/libboost_program_options.so;/usr/lib/x86_64-l=
inux-gnu/libboost_regex.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/us=
r/lib/x86_64-linux-gnu/libboost_unit_test_framework.so;/usr/lib/x86_64-linu=
x-gnu/libboost_serialization.so;/usr/lib/x86_64-linux-gnu/libboost_thread.s=
o;-lpthread;/usr/lib/x86_64-linux-gnu/libboost_atomic.so<br>-- <br>-- Pytho=
n checking for Python version 2.7 or greater<br>-- Python checking for Pyth=
on version 2.7 or greater - found<br>-- <br>-- Python checking for Mako tem=
plates 0.4.2 or greater<br>-- Python checking for Mako templates 0.4.2 or g=
reater - found<br>-- <br>-- Python checking for requests 2.0 or greater<br>=
-- Python checking for requests 2.0 or greater - found<br>-- <br>-- Python =
checking for numpy 1.7 or greater<br>-- Python checking for numpy 1.7 or gr=
eater - found<br>-- <br>-- Configuring LibUHD support...<br>-- =C2=A0 Depen=
dency Boost_FOUND =3D TRUE<br>-- =C2=A0 Dependency HAVE_PYTHON_PLAT_MIN_VER=
SION =3D TRUE<br>-- =C2=A0 Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE<br>-=
- =C2=A0 Enabling LibUHD support.<br>-- =C2=A0 Override with -DENABLE_LIBUH=
D=3DON/OFF<br>-- <br>-- Configuring LibUHD - C API support...<br>-- =C2=A0 =
Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabling LibUHD - C API suppor=
t.<br>-- =C2=A0 Override with -DENABLE_C_API=3DON/OFF<br>-- <br>-- Configur=
ing LibUHD - Python API support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =
=3D ON<br>-- =C2=A0 Dependency HAVE_PYTHON_MODULE_NUMPY =3D TRUE<br>-- =C2=
=A0 Dependency HAVE_PYTHON_LIBS =3D FALSE<br>-- =C2=A0 Disabling LibUHD - P=
ython API support.<br>-- =C2=A0 Override with -DENABLE_PYTHON_API=3DON/OFF<=
br>-- <br>-- Configuring Examples support...<br>-- =C2=A0 Dependency ENABLE=
_LIBUHD =3D ON<br>-- =C2=A0 Enabling Examples support.<br>-- =C2=A0 Overrid=
e with -DENABLE_EXAMPLES=3DON/OFF<br>-- <br>-- Configuring Utils support...=
<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabling Utils s=
upport.<br>-- =C2=A0 Override with -DENABLE_UTILS=3DON/OFF<br>-- <br>-- Con=
figuring Tests support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-=
- =C2=A0 Enabling Tests support.<br>-- =C2=A0 Override with -DENABLE_TESTS=
=3DON/OFF<br>-- <br>-- Could NOT find LIBERIO (missing: LIBERIO_LIBRARY LIB=
ERIO_INCLUDE_DIR) <br>-- <br>-- Configuring LIBERIO support...<br>-- =C2=A0=
 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency LIBERIO_FOUND =3D =
FALSE<br>-- =C2=A0 Disabling LIBERIO support.<br>-- =C2=A0 Override with -D=
ENABLE_LIBERIO=3DON/OFF<br>-- <br>-- Configuring USB support...<br>-- =C2=
=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency LIBUSB_FOUND =
=3D TRUE<br>-- =C2=A0 Enabling USB support.<br>-- =C2=A0 Override with -DEN=
ABLE_USB=3DON/OFF<br>-- <br>-- Configuring B100 support...<br>-- =C2=A0 Dep=
endency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_USB =3D ON<br>-=
- =C2=A0 Enabling B100 support.<br>-- =C2=A0 Override with -DENABLE_B100=3D=
ON/OFF<br>-- <br>-- Configuring B200 support...<br>-- =C2=A0 Dependency ENA=
BLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_USB =3D ON<br>-- =C2=A0 En=
abling B200 support.<br>-- =C2=A0 Override with -DENABLE_B200=3DON/OFF<br>-=
- <br>-- Configuring USRP1 support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD=
 =3D ON<br>-- =C2=A0 Dependency ENABLE_USB =3D ON<br>-- =C2=A0 Enabling USR=
P1 support.<br>-- =C2=A0 Override with -DENABLE_USRP1=3DON/OFF<br>-- <br>--=
 Configuring USRP2 support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<=
br>-- =C2=A0 Enabling USRP2 support.<br>-- =C2=A0 Override with -DENABLE_US=
RP2=3DON/OFF<br>-- <br>-- Configuring X300 support...<br>-- =C2=A0 Dependen=
cy ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabling X300 support.<br>-- =C2=A0 Ov=
erride with -DENABLE_X300=3DON/OFF<br>-- <br>-- Configuring N230 support...=
<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabling N230 su=
pport.<br>-- =C2=A0 Override with -DENABLE_N230=3DON/OFF<br>-- <br>-- Confi=
guring MPMD support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =
=C2=A0 Enabling MPMD support.<br>-- =C2=A0 Override with -DENABLE_MPMD=3DON=
/OFF<br>-- <br>-- Configuring N300 support...<br>-- =C2=A0 Dependency ENABL=
E_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_MPMD =3D ON<br>-- =C2=A0 Ena=
bling N300 support.<br>-- =C2=A0 Override with -DENABLE_N300=3DON/OFF<br>--=
 <br>-- Configuring N320 support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =
=3D ON<br>-- =C2=A0 Dependency ENABLE_MPMD =3D ON<br>-- =C2=A0 Enabling N32=
0 support.<br>-- =C2=A0 Override with -DENABLE_N320=3DON/OFF<br>-- <br>-- C=
onfiguring E320 support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>=
-- =C2=A0 Dependency ENABLE_MPMD =3D ON<br>-- =C2=A0 Enabling E320 support.=
<br>-- =C2=A0 Override with -DENABLE_E320=3DON/OFF<br>-- <br>-- Configuring=
 E300 support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 =
Dependency ENABLE_MPMD =3D ON<br>-- =C2=A0 Enabling E300 support.<br>-- =C2=
=A0 Override with -DENABLE_E300=3DON/OFF<br>-- <br>-- Configuring OctoClock=
 support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabl=
ing OctoClock support.<br>-- =C2=A0 Override with -DENABLE_OCTOCLOCK=3DON/O=
FF<br>-- <br>-- Configuring DPDK support...<br>-- =C2=A0 Dependency ENABLE_=
MPMD =3D ON<br>-- =C2=A0 Dependency DPDK_FOUND =3D TRUE<br>-- =C2=A0 Enabli=
ng DPDK support.<br>-- =C2=A0 Override with -DENABLE_DPDK=3DON/OFF<br>-- <b=
r>-- Compiling MPMD with DPDK support...<br>-- <br>-- Configuring priority =
scheduling...<br>-- =C2=A0 Priority scheduling supported through pthread_se=
tschedparam.<br>-- =C2=A0 Setting thread names is supported through pthread=
_setname_np.<br>-- <br>-- Configuring high resolution timing...<br>-- =C2=
=A0 High resolution timing supported through clock_gettime.<br>-- <br>-- Co=
nfiguring module loading...<br>-- =C2=A0 Module loading supported through d=
lopen.<br>-- <br>-- Processing NI-RIO FPGA LVBITX Bitstreams...<br>-- =C2=
=A0 Using x300.lvbitx_base for codegen<br>-- =C2=A0 Using x310.lvbitx_base =
for codegen<br>-- <br>-- USB support enabled via libusb.<br>-- <br>-- Confi=
guring interface address discovery...<br>-- =C2=A0 Interface address discov=
ery supported through getifaddrs.<br>-- <br>-- Loading build info.<br>-- <b=
r>-- Adding B2XX device test target<br>-- Adding X3x0 device test target<br=
>-- Adding E3XX device test target<br>-- Adding N3XX device test target<br>=
-- Adding E32x device test target<br>-- <br>-- <br>-- Configuring Manual su=
pport...<br>-- =C2=A0 Dependency DOXYGEN_FOUND =3D YES<br>-- =C2=A0 Enablin=
g Manual support.<br>-- =C2=A0 Override with -DENABLE_MANUAL=3DON/OFF<br>--=
 <br>-- Configuring API/Doxygen support...<br>-- =C2=A0 Dependency DOXYGEN_=
FOUND =3D YES<br>-- =C2=A0 Enabling API/Doxygen support.<br>-- =C2=A0 Overr=
ide with -DENABLE_DOXYGEN=3DON/OFF<br>-- <br>-- Found GZip: /bin/gzip<br>--=
 <br>-- Compressed Man Pages enabled<br>-- =C2=A0 Override with -DENABLE_MA=
N_PAGE_COMPRESSION=3DON/OFF<br>-- <br>-- Configuring Man Pages support...<b=
r>-- =C2=A0 Dependency NOT_WIN32 =3D TRUE<br>-- =C2=A0 Dependency GZIP_FOUN=
D =3D TRUE<br>-- =C2=A0 Enabling Man Pages support.<br>-- =C2=A0 Override w=
ith -DENABLE_MAN_PAGES=3DON/OFF<br>-- <br>-- ##############################=
########################<br>-- # UHD enabled components =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0<br>-- ######################################################<=
br>-- =C2=A0 * LibUHD<br>-- =C2=A0 * LibUHD - C API<br>-- =C2=A0 * Examples=
<br>-- =C2=A0 * Utils<br>-- =C2=A0 * Tests<br>-- =C2=A0 * USB<br>-- =C2=A0 =
* B100<br>-- =C2=A0 * B200<br>-- =C2=A0 * USRP1<br>-- =C2=A0 * USRP2<br>-- =
=C2=A0 * X300<br>-- =C2=A0 * N230<br>-- =C2=A0 * MPMD<br>-- =C2=A0 * N300<b=
r>-- =C2=A0 * N320<br>-- =C2=A0 * E320<br>-- =C2=A0 * E300<br>-- =C2=A0 * O=
ctoClock<br>-- =C2=A0 * DPDK<br>-- =C2=A0 * Manual<br>-- =C2=A0 * API/Doxyg=
en<br>-- =C2=A0 * Man Pages<br>-- <br>-- ##################################=
####################<br>-- # UHD disabled components =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 <br>-- ######################################################<br>-- =C2=
=A0 * LibUHD - Python API<br>-- =C2=A0 * LIBERIO<br>-- <br>-- *************=
*****************************************<br>-- * You are building the UHD =
development master branch.<br>-- * For production code, we recommend our st=
able,<br>-- * releases or using the release branch (maint).<br>-- *********=
*********************************************<br>-- Building version: 3.15.=
0.0-96-g0408f47b<br>-- Using install prefix: /usr/local<br>-- Configuring d=
one<br>-- Generating done<br>-- Build files have been written to: /home/del=
l/uhd/host/build<br>dell@dell-XPS-15-9550:~/uhd/host/build$ make <br>[ =C2=
=A02%] Built target uhd_rpclib<br>Scanning dependencies of target uhd<br>[ =
=C2=A02%] Building C object lib/CMakeFiles/uhd.dir/transport/uhd-dpdk/uhd_d=
pdk.c.o<br>In file included from /home/dell/uhd/host/lib/transport/uhd-dpdk=
/uhd_dpdk.c:6:0:<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx=
.h:102:23: error: field =E2=80=98mac_addr=E2=80=99 has incomplete type<br>=
=C2=A0 =C2=A0 =C2=A0struct ether_addr mac_addr;<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/home/dell/=
uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:176:23: error: field =E2=80=
=98mac_addr=E2=80=99 has incomplete type<br>=C2=A0 =C2=A0 =C2=A0struct ethe=
r_addr mac_addr;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>In file included from /home/dell/uhd/host/=
lib/transport/uhd-dpdk/uhd_dpdk.c:9:0:<br>/home/dell/uhd/host/lib/transport=
/uhd-dpdk/uhd_dpdk_driver.h:22:62: warning: =E2=80=98struct arp_hdr=E2=80=
=99 declared inside parameter list<br>=C2=A0int _uhd_dpdk_process_arp(struc=
t uhd_dpdk_port *port, struct arp_hdr *arp_frame);<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>/home/dell/uhd/host/l=
ib/transport/uhd-dpdk/uhd_dpdk_driver.h:22:62: warning: its scope is only t=
his definition or declaration, which is probably not what you want<br>/home=
/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:24:34: warning: =E2=
=80=98struct udp_hdr=E2=80=99 declared inside parameter list<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0struct udp_hdr *pkt, bool bcast);<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ^<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dp=
dk_driver.h:25:86: warning: =E2=80=98struct ipv4_hdr=E2=80=99 declared insi=
de parameter list<br>=C2=A0int _uhd_dpdk_process_ipv4(struct uhd_dpdk_port =
*port, struct rte_mbuf *mbuf, struct ipv4_hdr *pk<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>/home/dell=
/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In function =E2=80=98uhd_dpdk_=
get_eth_addr=E2=80=99:<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dp=
dk.c:55:31: error: =E2=80=98ETHER_ADDR_LEN=E2=80=99 undeclared (first use i=
n this function)<br>=C2=A0 =C2=A0 =C2=A0memset(retval.addr, 0xff, ETHER_ADD=
R_LEN);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/home/dell/uhd/host/li=
b/transport/uhd-dpdk/uhd_dpdk.c:55:31: note: each undeclared identifier is =
reported only once for each function it appears in<br>/home/dell/uhd/host/l=
ib/transport/uhd-dpdk/uhd_dpdk.c: In function =E2=80=98uhd_dpdk_port_init=
=E2=80=99:<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:103:5: =
warning: =E2=80=98rte_eth_dev_count=E2=80=99 is deprecated [-Wdeprecated-de=
clarations]<br>=C2=A0 =C2=A0 =C2=A0if (port-&gt;id &gt;=3D rte_eth_dev_coun=
t())<br>=C2=A0 =C2=A0 =C2=A0^<br>In file included from /home/dell/uhd/host/=
lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:12:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/dell/uhd/host/lib/transport/uh=
d-dpdk/uhd_dpdk.c:6:<br>/usr/local/include/dpdk/rte_ethdev.h:1669:10: note:=
 declared here<br>=C2=A0uint16_t rte_eth_dev_count(void);<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ^<br>In file included from /usr/local/include/dpdk/rte=
_ethdev.h:152:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0from /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:12,<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/=
dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:<br>/home/dell/uhd/host/l=
ib/transport/uhd-dpdk/uhd_dpdk.c:122:108: warning: format =E2=80=98%llx=E2=
=80=99 expects argument of type =E2=80=98long long unsigned int=E2=80=99, b=
ut argument 5 has type =E2=80=98uint64_t {aka long unsigned int}=E2=80=99 [=
-Wformat=3D]<br>=C2=A0LOG(WARNING, EAL, &quot;%d: Only supports RX offloads=
 0x%0llx\n&quot;, port-&gt;id, dev_info.rx_offload_capa);<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>/usr/local/include/dpdk/rte_log.h:324:25: =
note: in definition of macro =E2=80=98RTE_LOG=E2=80=99<br>=C2=A0 =C2=A0 RTE=
_LOGTYPE_ ## t, # t &quot;: &quot; __VA_ARGS__)<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/hom=
e/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:126:108: warning: format =
=E2=80=98%llx=E2=80=99 expects argument of type =E2=80=98long long unsigned=
 int=E2=80=99, but argument 5 has type =E2=80=98uint64_t {aka long unsigned=
 int}=E2=80=99 [-Wformat=3D]<br>=C2=A0LOG(WARNING, EAL, &quot;%d: Only supp=
orts TX offloads 0x%0llx\n&quot;, port-&gt;id, dev_info.tx_offload_capa);<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>/usr/local/include/dpdk/rte_=
log.h:324:25: note: in definition of macro =E2=80=98RTE_LOG=E2=80=99<br>=C2=
=A0 =C2=A0 RTE_LOGTYPE_ ## t, # t &quot;: &quot; __VA_ARGS__)<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0^<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:134:13: er=
ror: unknown field =E2=80=98jumbo_frame=E2=80=99 specified in initializer<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.jumbo_frame =3D 1,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/home/dell/uhd/host/li=
b/transport/uhd-dpdk/uhd_dpdk.c:135:13: error: unknown field =E2=80=98hw_ip=
_checksum=E2=80=99 specified in initializer<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0.hw_ip_checksum =3D 1,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0^<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpd=
k.c:135:31: warning: initialized field overwritten [-Woverride-init]<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.hw_ip_checksum =3D 1,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/home/dell/uhd/host/lib/transport/uh=
d-dpdk/uhd_dpdk.c:135:31: note: (near initialization for =E2=80=98port_conf=
.rxmode.offloads=E2=80=99)<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uh=
d_dpdk.c:136:13: error: unknown field =E2=80=98ignore_offload_bitfield=E2=
=80=99 specified in initializer<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0.ignore_offload_bitfield =3D 0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0^<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpd=
k.c:136:40: warning: excess elements in struct initializer<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.ignore_offload_bitfield =3D 0,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>/home/d=
ell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:136:40: note: (near initiali=
zation for =E2=80=98port_conf.rxmode=E2=80=99)<br>/home/dell/uhd/host/lib/t=
ransport/uhd-dpdk/uhd_dpdk.c: In function =E2=80=98uhd_dpdk_init=E2=80=99:<=
br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:279:5: warning: =
=E2=80=98rte_eth_dev_count=E2=80=99 is deprecated [-Wdeprecated-declaration=
s]<br>=C2=A0 =C2=A0 =C2=A0ctx-&gt;num_ports =3D rte_eth_dev_count();<br>=C2=
=A0 =C2=A0 =C2=A0^<br>In file included from /home/dell/uhd/host/lib/transpo=
rt/uhd-dpdk/uhd_dpdk_ctx.h:12:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0from /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd=
_dpdk.c:6:<br>/usr/local/include/dpdk/rte_ethdev.h:1669:10: note: declared =
here<br>=C2=A0uint16_t rte_eth_dev_count(void);<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ^<br>lib/CMakeFiles/uhd.dir/build.make:3824: recipe for target &=
#39;lib/CMakeFiles/uhd.dir/transport/uhd-dpdk/uhd_dpdk.c.o&#39; failed<br>m=
ake[2]: *** [lib/CMakeFiles/uhd.dir/transport/uhd-dpdk/uhd_dpdk.c.o] Error =
1<br>CMakeFiles/Makefile2:128: recipe for target &#39;lib/CMakeFiles/uhd.di=
r/all&#39; failed<br>make[1]: *** [lib/CMakeFiles/uhd.dir/all] Error 2<br>M=
akefile:162: recipe for target &#39;all&#39; failed<br>make: *** [all] Erro=
r 2<br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000045069305960d46ab--


--===============5461231083402279104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5461231083402279104==--

