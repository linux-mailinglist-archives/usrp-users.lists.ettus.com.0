Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6B1E64B6
	for <lists+usrp-users@lfdr.de>; Sun, 27 Oct 2019 18:51:28 +0100 (CET)
Received: from [::1] (port=35940 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iOmhL-0001Z7-AF; Sun, 27 Oct 2019 13:51:27 -0400
Received: from mail-oi1-f177.google.com ([209.85.167.177]:42360)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iOmhH-0001Qr-BT
 for usrp-users@lists.ettus.com; Sun, 27 Oct 2019 13:51:23 -0400
Received: by mail-oi1-f177.google.com with SMTP id i185so4599354oif.9
 for <usrp-users@lists.ettus.com>; Sun, 27 Oct 2019 10:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xk5E4mQ+Hi22N5XWuTlcTEuuWxjR6SUG3MH/9MgnS7w=;
 b=dEOuAztwtjbpLeLbHrDONputXOxdhIQsSayRTaEvtt2ZDoK38D4tNE/fAfv1QeOaeZ
 DcWpQkJojB0OsqVF599K5UTrjZIi3Eze9UUl16oZIm5J8S2DBqJ1LBrtN4uDUqNMqMBX
 DXCez9KLLkooqI0HpjCqKS7BudtUKTK8VRFyBZR6s+HyB8vzsnycjz8ZvXFGp+bGQ5G8
 VKtfl2MWyOC25jArh/tRuyb8ShjpQXy2oz3F0rozGYQc7Oy2songoBILfsJJh4rpGIxu
 ACn+rNSRDXrN6Cn7bHoJ19hvtxbI5nWsCORqiJRdP5n6rzrJtgUeJ6l2y1YH3OPFaZT1
 kpcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xk5E4mQ+Hi22N5XWuTlcTEuuWxjR6SUG3MH/9MgnS7w=;
 b=Q+qBt/DH3tRuW0X16OstTn/E/gRO4ADFw0bOKtqT+0u7m8YJWJvtxMSKfcu5CGycyx
 I2TwKszBv9lszXCS41Iv0a9OxW5ZTQmqa0dRPjnPRN9yrb9RAm6cVi8bMY49jXqRcYt1
 FWd2PsAqaI6V62a/WfwDY8dcndWo1tQWSTGl813LxEbzEn5eLETfPI7gp+D5ye9BkNEv
 UOd8ltmzMWIWkhSH1lwGU8ivTLUqLiSCQq22ZIwDwx+D/drpRTKk2+IxzNE6SlEzS1a5
 0uX36scGU840hqC2JbFcH7YN+p2e2KklQSyHWzMO1mDls9LOO5DEC0eoD9vmBOALBSRM
 642Q==
X-Gm-Message-State: APjAAAWDVYeeoNts6wEahhjEyKqrRvAijlgw6fPQd3UPqsDZrjiffHwR
 gNIzuAVcwY5H2SgHEQdC9kwQ1r6VCP58B0fiiDaOfkXh
X-Google-Smtp-Source: APXvYqzHDpmDoNOzOWm+F3/nsh/BGYOilitaD9by3/HwlpvqDQfOFoo7xLp+sxOJrH2hgCyQM4SOiRm7HcfKub6WcVk=
X-Received: by 2002:a05:6808:4c3:: with SMTP id
 a3mr11142664oie.82.1572198642212; 
 Sun, 27 Oct 2019 10:50:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAFYRoL=kkQQx5YCAjBRgVTyZfqUvr9vhSk2cwDvpvvfZK=sj7g@mail.gmail.com>
In-Reply-To: <CAFYRoL=kkQQx5YCAjBRgVTyZfqUvr9vhSk2cwDvpvvfZK=sj7g@mail.gmail.com>
Date: Sun, 27 Oct 2019 10:51:39 -0700
Message-ID: <CAL263iz0AxCDyMtsGGCwPh0b7SXduH5Vfi15iJkefkXoOVTrag@mail.gmail.com>
To: Jane Zhang <janezhang76201@gmail.com>
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2552478322189067937=="
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

--===============2552478322189067937==
Content-Type: multipart/alternative; boundary="0000000000009608920595e8059d"

--0000000000009608920595e8059d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jane,

What host OS are you using? What version of DPDK do you have installed?

Can you try using the latest stable release, UHD 3.14.1.1, master can be
unstable.


Regards,
Nate Temple

On Sun, Oct 27, 2019 at 10:24 AM Jane Zhang via USRP-users <
usrp-users@lists.ettus.com> wrote:

> hello, i am a new user with ubuntu and uhd. Later i need to build gnuradi=
o.
> I build uhd(look from changelog, release 3.15). There were errors about
> dpdk as follows.
> Would you please help to solve this problem. I have time to finish this
> task.
> Thank you so much!
>
> dell@dell-XPS-15-9550:~/uhd/host/build$ cmake ../
> --
> -- Configuring the Python interpreter...
> -- Manually determining build Python version...
> -- Python interpreter: /usr/bin/python3.6 Version: 3.6.8
> -- Override with: -DPYTHON_EXECUTABLE=3D<path-to-python>
> -- Manually determining runtime Python version...
> -- Python runtime interpreter: /usr/bin/python3.6 Version: 3.6.8
> -- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D<path-to-python>
> -- Finding Python Libraries...
> -- Could not find Python Libraries.
> -- Operating on master branch.
> -- Using UHD Images Directory: /usr/local/share/uhd/images
> -- Build type not specified: defaulting to release.
> --
> -- Configuring Boost C++ Libraries...
> -- Looking for optional Boost components...
> -- Found Boost: /usr/include (found suitable version "1.58.0", minimum
> required is "1.58")
> -- Looking for required Boost components...
> -- Found Boost: /usr/include (found suitable version "1.58.0", minimum
> required is "1.58") found components:  chrono date_time filesystem
> program_options regex system unit_test_framework serialization thread
> atomic
> -- Boost include directories: /usr/include
> -- Boost library directories: /usr/lib/x86_64-linux-gnu
> -- Boost libraries:
> /usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/li=
bboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/l=
ib/x86_64-linux-gnu/libboost_program_options.so;/usr/lib/x86_64-linux-gnu/l=
ibboost_regex.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_=
64-linux-gnu/libboost_unit_test_framework.so;/usr/lib/x86_64-linux-gnu/libb=
oost_serialization.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;-lpthrea=
d;/usr/lib/x86_64-linux-gnu/libboost_atomic.so
> --
> -- Python checking for Python version 2.7 or greater
> -- Python checking for Python version 2.7 or greater - found
> --
> -- Python checking for Mako templates 0.4.2 or greater
> -- Python checking for Mako templates 0.4.2 or greater - found
> --
> -- Python checking for requests 2.0 or greater
> -- Python checking for requests 2.0 or greater - found
> --
> -- Python checking for numpy 1.7 or greater
> -- Python checking for numpy 1.7 or greater - found
> --
> -- Configuring LibUHD support...
> --   Dependency Boost_FOUND =3D TRUE
> --   Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D TRUE
> --   Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE
> --   Enabling LibUHD support.
> --   Override with -DENABLE_LIBUHD=3DON/OFF
> --
> -- Configuring LibUHD - C API support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Enabling LibUHD - C API support.
> --   Override with -DENABLE_C_API=3DON/OFF
> --
> -- Configuring LibUHD - Python API support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Dependency HAVE_PYTHON_MODULE_NUMPY =3D TRUE
> --   Dependency HAVE_PYTHON_LIBS =3D FALSE
> --   Disabling LibUHD - Python API support.
> --   Override with -DENABLE_PYTHON_API=3DON/OFF
> --
> -- Configuring Examples support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Enabling Examples support.
> --   Override with -DENABLE_EXAMPLES=3DON/OFF
> --
> -- Configuring Utils support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Enabling Utils support.
> --   Override with -DENABLE_UTILS=3DON/OFF
> --
> -- Configuring Tests support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Enabling Tests support.
> --   Override with -DENABLE_TESTS=3DON/OFF
> --
> -- Could NOT find LIBERIO (missing: LIBERIO_LIBRARY LIBERIO_INCLUDE_DIR)
> --
> -- Configuring LIBERIO support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Dependency LIBERIO_FOUND =3D FALSE
> --   Disabling LIBERIO support.
> --   Override with -DENABLE_LIBERIO=3DON/OFF
> --
> -- Configuring USB support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Dependency LIBUSB_FOUND =3D TRUE
> --   Enabling USB support.
> --   Override with -DENABLE_USB=3DON/OFF
> --
> -- Configuring B100 support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Dependency ENABLE_USB =3D ON
> --   Enabling B100 support.
> --   Override with -DENABLE_B100=3DON/OFF
> --
> -- Configuring B200 support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Dependency ENABLE_USB =3D ON
> --   Enabling B200 support.
> --   Override with -DENABLE_B200=3DON/OFF
> --
> -- Configuring USRP1 support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Dependency ENABLE_USB =3D ON
> --   Enabling USRP1 support.
> --   Override with -DENABLE_USRP1=3DON/OFF
> --
> -- Configuring USRP2 support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Enabling USRP2 support.
> --   Override with -DENABLE_USRP2=3DON/OFF
> --
> -- Configuring X300 support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Enabling X300 support.
> --   Override with -DENABLE_X300=3DON/OFF
> --
> -- Configuring N230 support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Enabling N230 support.
> --   Override with -DENABLE_N230=3DON/OFF
> --
> -- Configuring MPMD support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Enabling MPMD support.
> --   Override with -DENABLE_MPMD=3DON/OFF
> --
> -- Configuring N300 support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Dependency ENABLE_MPMD =3D ON
> --   Enabling N300 support.
> --   Override with -DENABLE_N300=3DON/OFF
> --
> -- Configuring N320 support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Dependency ENABLE_MPMD =3D ON
> --   Enabling N320 support.
> --   Override with -DENABLE_N320=3DON/OFF
> --
> -- Configuring E320 support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Dependency ENABLE_MPMD =3D ON
> --   Enabling E320 support.
> --   Override with -DENABLE_E320=3DON/OFF
> --
> -- Configuring E300 support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Dependency ENABLE_MPMD =3D ON
> --   Enabling E300 support.
> --   Override with -DENABLE_E300=3DON/OFF
> --
> -- Configuring OctoClock support...
> --   Dependency ENABLE_LIBUHD =3D ON
> --   Enabling OctoClock support.
> --   Override with -DENABLE_OCTOCLOCK=3DON/OFF
> --
> -- Configuring DPDK support...
> --   Dependency ENABLE_MPMD =3D ON
> --   Dependency DPDK_FOUND =3D TRUE
> --   Enabling DPDK support.
> --   Override with -DENABLE_DPDK=3DON/OFF
> --
> -- Compiling MPMD with DPDK support...
> --
> -- Configuring priority scheduling...
> --   Priority scheduling supported through pthread_setschedparam.
> --   Setting thread names is supported through pthread_setname_np.
> --
> -- Configuring high resolution timing...
> --   High resolution timing supported through clock_gettime.
> --
> -- Configuring module loading...
> --   Module loading supported through dlopen.
> --
> -- Processing NI-RIO FPGA LVBITX Bitstreams...
> --   Using x300.lvbitx_base for codegen
> --   Using x310.lvbitx_base for codegen
> --
> -- USB support enabled via libusb.
> --
> -- Configuring interface address discovery...
> --   Interface address discovery supported through getifaddrs.
> --
> -- Loading build info.
> --
> -- Adding B2XX device test target
> -- Adding X3x0 device test target
> -- Adding E3XX device test target
> -- Adding N3XX device test target
> -- Adding E32x device test target
> --
> --
> -- Configuring Manual support...
> --   Dependency DOXYGEN_FOUND =3D YES
> --   Enabling Manual support.
> --   Override with -DENABLE_MANUAL=3DON/OFF
> --
> -- Configuring API/Doxygen support...
> --   Dependency DOXYGEN_FOUND =3D YES
> --   Enabling API/Doxygen support.
> --   Override with -DENABLE_DOXYGEN=3DON/OFF
> --
> -- Found GZip: /bin/gzip
> --
> -- Compressed Man Pages enabled
> --   Override with -DENABLE_MAN_PAGE_COMPRESSION=3DON/OFF
> --
> -- Configuring Man Pages support...
> --   Dependency NOT_WIN32 =3D TRUE
> --   Dependency GZIP_FOUND =3D TRUE
> --   Enabling Man Pages support.
> --   Override with -DENABLE_MAN_PAGES=3DON/OFF
> --
> -- ######################################################
> -- # UHD enabled components
> -- ######################################################
> --   * LibUHD
> --   * LibUHD - C API
> --   * Examples
> --   * Utils
> --   * Tests
> --   * USB
> --   * B100
> --   * B200
> --   * USRP1
> --   * USRP2
> --   * X300
> --   * N230
> --   * MPMD
> --   * N300
> --   * N320
> --   * E320
> --   * E300
> --   * OctoClock
> --   * DPDK
> --   * Manual
> --   * API/Doxygen
> --   * Man Pages
> --
> -- ######################################################
> -- # UHD disabled components
> -- ######################################################
> --   * LibUHD - Python API
> --   * LIBERIO
> --
> -- ******************************************************
> -- * You are building the UHD development master branch.
> -- * For production code, we recommend our stable,
> -- * releases or using the release branch (maint).
> -- ******************************************************
> -- Building version: 3.15.0.0-96-g0408f47b
> -- Using install prefix: /usr/local
> -- Configuring done
> -- Generating done
> -- Build files have been written to: /home/dell/uhd/host/build
> dell@dell-XPS-15-9550:~/uhd/host/build$ make
> [  2%] Built target uhd_rpclib
> Scanning dependencies of target uhd
> [  2%] Building C object
> lib/CMakeFiles/uhd.dir/transport/uhd-dpdk/uhd_dpdk.c.o
> In file included from
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:0:
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:102:23: error:
> field =E2=80=98mac_addr=E2=80=99 has incomplete type
>      struct ether_addr mac_addr;
>                        ^
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:176:23: error:
> field =E2=80=98mac_addr=E2=80=99 has incomplete type
>      struct ether_addr mac_addr;
>                        ^
> In file included from
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:9:0:
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:22:62:
> warning: =E2=80=98struct arp_hdr=E2=80=99 declared inside parameter list
>  int _uhd_dpdk_process_arp(struct uhd_dpdk_port *port, struct arp_hdr
> *arp_frame);
>                                                               ^
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:22:62:
> warning: its scope is only this definition or declaration, which is
> probably not what you want
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:24:34:
> warning: =E2=80=98struct udp_hdr=E2=80=99 declared inside parameter list
>                            struct udp_hdr *pkt, bool bcast);
>                                   ^
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:25:86:
> warning: =E2=80=98struct ipv4_hdr=E2=80=99 declared inside parameter list
>  int _uhd_dpdk_process_ipv4(struct uhd_dpdk_port *port, struct rte_mbuf
> *mbuf, struct ipv4_hdr *pk
>
>             ^
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In function
> =E2=80=98uhd_dpdk_get_eth_addr=E2=80=99:
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:55:31: error:
> =E2=80=98ETHER_ADDR_LEN=E2=80=99 undeclared (first use in this function)
>      memset(retval.addr, 0xff, ETHER_ADDR_LEN);
>                                ^
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:55:31: note: each
> undeclared identifier is reported only once for each function it appears =
in
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In function
> =E2=80=98uhd_dpdk_port_init=E2=80=99:
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:103:5: warning:
> =E2=80=98rte_eth_dev_count=E2=80=99 is deprecated [-Wdeprecated-declarati=
ons]
>      if (port->id >=3D rte_eth_dev_count())
>      ^
> In file included from
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:12:0,
>                  from
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:
> /usr/local/include/dpdk/rte_ethdev.h:1669:10: note: declared here
>  uint16_t rte_eth_dev_count(void);
>           ^
> In file included from /usr/local/include/dpdk/rte_ethdev.h:152:0,
>                  from
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:12,
>                  from
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:122:108: warning:
> format =E2=80=98%llx=E2=80=99 expects argument of type =E2=80=98long long=
 unsigned int=E2=80=99, but
> argument 5 has type =E2=80=98uint64_t {aka long unsigned int}=E2=80=99 [-=
Wformat=3D]
>  LOG(WARNING, EAL, "%d: Only supports RX offloads 0x%0llx\n", port->id,
> dev_info.rx_offload_capa);
>
>                       ^
> /usr/local/include/dpdk/rte_log.h:324:25: note: in definition of macro
> =E2=80=98RTE_LOG=E2=80=99
>     RTE_LOGTYPE_ ## t, # t ": " __VA_ARGS__)
>                          ^
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:126:108: warning:
> format =E2=80=98%llx=E2=80=99 expects argument of type =E2=80=98long long=
 unsigned int=E2=80=99, but
> argument 5 has type =E2=80=98uint64_t {aka long unsigned int}=E2=80=99 [-=
Wformat=3D]
>  LOG(WARNING, EAL, "%d: Only supports TX offloads 0x%0llx\n", port->id,
> dev_info.tx_offload_capa);
>
>                       ^
> /usr/local/include/dpdk/rte_log.h:324:25: note: in definition of macro
> =E2=80=98RTE_LOG=E2=80=99
>     RTE_LOGTYPE_ ## t, # t ": " __VA_ARGS__)
>                          ^
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:134:13: error:
> unknown field =E2=80=98jumbo_frame=E2=80=99 specified in initializer
>              .jumbo_frame =3D 1,
>              ^
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:135:13: error:
> unknown field =E2=80=98hw_ip_checksum=E2=80=99 specified in initializer
>              .hw_ip_checksum =3D 1,
>              ^
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:135:31: warning:
> initialized field overwritten [-Woverride-init]
>              .hw_ip_checksum =3D 1,
>                                ^
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:135:31: note: (near
> initialization for =E2=80=98port_conf.rxmode.offloads=E2=80=99)
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:136:13: error:
> unknown field =E2=80=98ignore_offload_bitfield=E2=80=99 specified in init=
ializer
>              .ignore_offload_bitfield =3D 0,
>              ^
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:136:40: warning:
> excess elements in struct initializer
>              .ignore_offload_bitfield =3D 0,
>                                         ^
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:136:40: note: (near
> initialization for =E2=80=98port_conf.rxmode=E2=80=99)
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In function
> =E2=80=98uhd_dpdk_init=E2=80=99:
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:279:5: warning:
> =E2=80=98rte_eth_dev_count=E2=80=99 is deprecated [-Wdeprecated-declarati=
ons]
>      ctx->num_ports =3D rte_eth_dev_count();
>      ^
> In file included from
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:12:0,
>                  from
> /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:
> /usr/local/include/dpdk/rte_ethdev.h:1669:10: note: declared here
>  uint16_t rte_eth_dev_count(void);
>           ^
> lib/CMakeFiles/uhd.dir/build.make:3824: recipe for target
> 'lib/CMakeFiles/uhd.dir/transport/uhd-dpdk/uhd_dpdk.c.o' failed
> make[2]: *** [lib/CMakeFiles/uhd.dir/transport/uhd-dpdk/uhd_dpdk.c.o]
> Error 1
> CMakeFiles/Makefile2:128: recipe for target 'lib/CMakeFiles/uhd.dir/all'
> failed
> make[1]: *** [lib/CMakeFiles/uhd.dir/all] Error 2
> Makefile:162: recipe for target 'all' failed
> make: *** [all] Error 2
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009608920595e8059d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Jane,<br><br>What host OS are you using? What versio=
n of DPDK do you have installed?<br><br>Can you try using the latest stable=
 release, UHD 3.14.1.1, master can be unstable.<br><br><br>Regards,<br>Nate=
 Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Sun, Oct 27, 2019 at 10:24 AM Jane Zhang via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div>hello, i am a new user with ubuntu and uhd. Later i nee=
d to build gnuradio.<br></div><div>I build uhd(look from changelog, release=
 3.15). There were errors about dpdk as follows. <br></div><div>Would you p=
lease help to solve this problem. I have time to finish this task.</div><di=
v>Thank you so much!<br></div><div><br></div><div>dell@dell-XPS-15-9550:~/u=
hd/host/build$ cmake ../<br>-- <br>-- Configuring the Python interpreter...=
<br>-- Manually determining build Python version...<br>-- Python interprete=
r: /usr/bin/python3.6 Version: 3.6.8<br>-- Override with: -DPYTHON_EXECUTAB=
LE=3D&lt;path-to-python&gt;<br>-- Manually determining runtime Python versi=
on...<br>-- Python runtime interpreter: /usr/bin/python3.6 Version: 3.6.8<b=
r>-- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;<br=
>-- Finding Python Libraries...<br>-- Could not find Python Libraries.<br>-=
- Operating on master branch.<br>-- Using UHD Images Directory: /usr/local/=
share/uhd/images<br>-- Build type not specified: defaulting to release.<br>=
-- <br>-- Configuring Boost C++ Libraries...<br>-- Looking for optional Boo=
st components...<br>-- Found Boost: /usr/include (found suitable version &q=
uot;1.58.0&quot;, minimum required is &quot;1.58&quot;) =C2=A0<br>-- Lookin=
g for required Boost components...<br>-- Found Boost: /usr/include (found s=
uitable version &quot;1.58.0&quot;, minimum required is &quot;1.58&quot;) f=
ound components: =C2=A0chrono date_time filesystem program_options regex sy=
stem unit_test_framework serialization thread atomic <br>-- Boost include d=
irectories: /usr/include<br>-- Boost library directories: /usr/lib/x86_64-l=
inux-gnu<br>-- Boost libraries: /usr/lib/x86_64-linux-gnu/libboost_chrono.s=
o;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu=
/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_program_options.=
so;/usr/lib/x86_64-linux-gnu/libboost_regex.so;/usr/lib/x86_64-linux-gnu/li=
bboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so;=
/usr/lib/x86_64-linux-gnu/libboost_serialization.so;/usr/lib/x86_64-linux-g=
nu/libboost_thread.so;-lpthread;/usr/lib/x86_64-linux-gnu/libboost_atomic.s=
o<br>-- <br>-- Python checking for Python version 2.7 or greater<br>-- Pyth=
on checking for Python version 2.7 or greater - found<br>-- <br>-- Python c=
hecking for Mako templates 0.4.2 or greater<br>-- Python checking for Mako =
templates 0.4.2 or greater - found<br>-- <br>-- Python checking for request=
s 2.0 or greater<br>-- Python checking for requests 2.0 or greater - found<=
br>-- <br>-- Python checking for numpy 1.7 or greater<br>-- Python checking=
 for numpy 1.7 or greater - found<br>-- <br>-- Configuring LibUHD support..=
.<br>-- =C2=A0 Dependency Boost_FOUND =3D TRUE<br>-- =C2=A0 Dependency HAVE=
_PYTHON_PLAT_MIN_VERSION =3D TRUE<br>-- =C2=A0 Dependency HAVE_PYTHON_MODUL=
E_MAKO =3D TRUE<br>-- =C2=A0 Enabling LibUHD support.<br>-- =C2=A0 Override=
 with -DENABLE_LIBUHD=3DON/OFF<br>-- <br>-- Configuring LibUHD - C API supp=
ort...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabling L=
ibUHD - C API support.<br>-- =C2=A0 Override with -DENABLE_C_API=3DON/OFF<b=
r>-- <br>-- Configuring LibUHD - Python API support...<br>-- =C2=A0 Depende=
ncy ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency HAVE_PYTHON_MODULE_NUMPY =
=3D TRUE<br>-- =C2=A0 Dependency HAVE_PYTHON_LIBS =3D FALSE<br>-- =C2=A0 Di=
sabling LibUHD - Python API support.<br>-- =C2=A0 Override with -DENABLE_PY=
THON_API=3DON/OFF<br>-- <br>-- Configuring Examples support...<br>-- =C2=A0=
 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabling Examples support.<br=
>-- =C2=A0 Override with -DENABLE_EXAMPLES=3DON/OFF<br>-- <br>-- Configurin=
g Utils support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=
=A0 Enabling Utils support.<br>-- =C2=A0 Override with -DENABLE_UTILS=3DON/=
OFF<br>-- <br>-- Configuring Tests support...<br>-- =C2=A0 Dependency ENABL=
E_LIBUHD =3D ON<br>-- =C2=A0 Enabling Tests support.<br>-- =C2=A0 Override =
with -DENABLE_TESTS=3DON/OFF<br>-- <br>-- Could NOT find LIBERIO (missing: =
LIBERIO_LIBRARY LIBERIO_INCLUDE_DIR) <br>-- <br>-- Configuring LIBERIO supp=
ort...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency=
 LIBERIO_FOUND =3D FALSE<br>-- =C2=A0 Disabling LIBERIO support.<br>-- =C2=
=A0 Override with -DENABLE_LIBERIO=3DON/OFF<br>-- <br>-- Configuring USB su=
pport...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependen=
cy LIBUSB_FOUND =3D TRUE<br>-- =C2=A0 Enabling USB support.<br>-- =C2=A0 Ov=
erride with -DENABLE_USB=3DON/OFF<br>-- <br>-- Configuring B100 support...<=
br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE=
_USB =3D ON<br>-- =C2=A0 Enabling B100 support.<br>-- =C2=A0 Override with =
-DENABLE_B100=3DON/OFF<br>-- <br>-- Configuring B200 support...<br>-- =C2=
=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_USB =3D =
ON<br>-- =C2=A0 Enabling B200 support.<br>-- =C2=A0 Override with -DENABLE_=
B200=3DON/OFF<br>-- <br>-- Configuring USRP1 support...<br>-- =C2=A0 Depend=
ency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_USB =3D ON<br>-- =
=C2=A0 Enabling USRP1 support.<br>-- =C2=A0 Override with -DENABLE_USRP1=3D=
ON/OFF<br>-- <br>-- Configuring USRP2 support...<br>-- =C2=A0 Dependency EN=
ABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabling USRP2 support.<br>-- =C2=A0 Overri=
de with -DENABLE_USRP2=3DON/OFF<br>-- <br>-- Configuring X300 support...<br=
>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Enabling X300 suppo=
rt.<br>-- =C2=A0 Override with -DENABLE_X300=3DON/OFF<br>-- <br>-- Configur=
ing N230 support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=
=A0 Enabling N230 support.<br>-- =C2=A0 Override with -DENABLE_N230=3DON/OF=
F<br>-- <br>-- Configuring MPMD support...<br>-- =C2=A0 Dependency ENABLE_L=
IBUHD =3D ON<br>-- =C2=A0 Enabling MPMD support.<br>-- =C2=A0 Override with=
 -DENABLE_MPMD=3DON/OFF<br>-- <br>-- Configuring N300 support...<br>-- =C2=
=A0 Dependency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_MPMD =3D=
 ON<br>-- =C2=A0 Enabling N300 support.<br>-- =C2=A0 Override with -DENABLE=
_N300=3DON/OFF<br>-- <br>-- Configuring N320 support...<br>-- =C2=A0 Depend=
ency ENABLE_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_MPMD =3D ON<br>-- =
=C2=A0 Enabling N320 support.<br>-- =C2=A0 Override with -DENABLE_N320=3DON=
/OFF<br>-- <br>-- Configuring E320 support...<br>-- =C2=A0 Dependency ENABL=
E_LIBUHD =3D ON<br>-- =C2=A0 Dependency ENABLE_MPMD =3D ON<br>-- =C2=A0 Ena=
bling E320 support.<br>-- =C2=A0 Override with -DENABLE_E320=3DON/OFF<br>--=
 <br>-- Configuring E300 support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =
=3D ON<br>-- =C2=A0 Dependency ENABLE_MPMD =3D ON<br>-- =C2=A0 Enabling E30=
0 support.<br>-- =C2=A0 Override with -DENABLE_E300=3DON/OFF<br>-- <br>-- C=
onfiguring OctoClock support...<br>-- =C2=A0 Dependency ENABLE_LIBUHD =3D O=
N<br>-- =C2=A0 Enabling OctoClock support.<br>-- =C2=A0 Override with -DENA=
BLE_OCTOCLOCK=3DON/OFF<br>-- <br>-- Configuring DPDK support...<br>-- =C2=
=A0 Dependency ENABLE_MPMD =3D ON<br>-- =C2=A0 Dependency DPDK_FOUND =3D TR=
UE<br>-- =C2=A0 Enabling DPDK support.<br>-- =C2=A0 Override with -DENABLE_=
DPDK=3DON/OFF<br>-- <br>-- Compiling MPMD with DPDK support...<br>-- <br>--=
 Configuring priority scheduling...<br>-- =C2=A0 Priority scheduling suppor=
ted through pthread_setschedparam.<br>-- =C2=A0 Setting thread names is sup=
ported through pthread_setname_np.<br>-- <br>-- Configuring high resolution=
 timing...<br>-- =C2=A0 High resolution timing supported through clock_gett=
ime.<br>-- <br>-- Configuring module loading...<br>-- =C2=A0 Module loading=
 supported through dlopen.<br>-- <br>-- Processing NI-RIO FPGA LVBITX Bitst=
reams...<br>-- =C2=A0 Using x300.lvbitx_base for codegen<br>-- =C2=A0 Using=
 x310.lvbitx_base for codegen<br>-- <br>-- USB support enabled via libusb.<=
br>-- <br>-- Configuring interface address discovery...<br>-- =C2=A0 Interf=
ace address discovery supported through getifaddrs.<br>-- <br>-- Loading bu=
ild info.<br>-- <br>-- Adding B2XX device test target<br>-- Adding X3x0 dev=
ice test target<br>-- Adding E3XX device test target<br>-- Adding N3XX devi=
ce test target<br>-- Adding E32x device test target<br>-- <br>-- <br>-- Con=
figuring Manual support...<br>-- =C2=A0 Dependency DOXYGEN_FOUND =3D YES<br=
>-- =C2=A0 Enabling Manual support.<br>-- =C2=A0 Override with -DENABLE_MAN=
UAL=3DON/OFF<br>-- <br>-- Configuring API/Doxygen support...<br>-- =C2=A0 D=
ependency DOXYGEN_FOUND =3D YES<br>-- =C2=A0 Enabling API/Doxygen support.<=
br>-- =C2=A0 Override with -DENABLE_DOXYGEN=3DON/OFF<br>-- <br>-- Found GZi=
p: /bin/gzip<br>-- <br>-- Compressed Man Pages enabled<br>-- =C2=A0 Overrid=
e with -DENABLE_MAN_PAGE_COMPRESSION=3DON/OFF<br>-- <br>-- Configuring Man =
Pages support...<br>-- =C2=A0 Dependency NOT_WIN32 =3D TRUE<br>-- =C2=A0 De=
pendency GZIP_FOUND =3D TRUE<br>-- =C2=A0 Enabling Man Pages support.<br>--=
 =C2=A0 Override with -DENABLE_MAN_PAGES=3DON/OFF<br>-- <br>-- ############=
##########################################<br>-- # UHD enabled components =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>-- #####################################=
#################<br>-- =C2=A0 * LibUHD<br>-- =C2=A0 * LibUHD - C API<br>--=
 =C2=A0 * Examples<br>-- =C2=A0 * Utils<br>-- =C2=A0 * Tests<br>-- =C2=A0 *=
 USB<br>-- =C2=A0 * B100<br>-- =C2=A0 * B200<br>-- =C2=A0 * USRP1<br>-- =C2=
=A0 * USRP2<br>-- =C2=A0 * X300<br>-- =C2=A0 * N230<br>-- =C2=A0 * MPMD<br>=
-- =C2=A0 * N300<br>-- =C2=A0 * N320<br>-- =C2=A0 * E320<br>-- =C2=A0 * E30=
0<br>-- =C2=A0 * OctoClock<br>-- =C2=A0 * DPDK<br>-- =C2=A0 * Manual<br>-- =
=C2=A0 * API/Doxygen<br>-- =C2=A0 * Man Pages<br>-- <br>-- ################=
######################################<br>-- # UHD disabled components =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 <br>-- ###############################################=
#######<br>-- =C2=A0 * LibUHD - Python API<br>-- =C2=A0 * LIBERIO<br>-- <br=
>-- ******************************************************<br>-- * You are =
building the UHD development master branch.<br>-- * For production code, we=
 recommend our stable,<br>-- * releases or using the release branch (maint)=
.<br>-- ******************************************************<br>-- Buildi=
ng version: 3.15.0.0-96-g0408f47b<br>-- Using install prefix: /usr/local<br=
>-- Configuring done<br>-- Generating done<br>-- Build files have been writ=
ten to: /home/dell/uhd/host/build<br>dell@dell-XPS-15-9550:~/uhd/host/build=
$ make <br>[ =C2=A02%] Built target uhd_rpclib<br>Scanning dependencies of =
target uhd<br>[ =C2=A02%] Building C object lib/CMakeFiles/uhd.dir/transpor=
t/uhd-dpdk/uhd_dpdk.c.o<br>In file included from /home/dell/uhd/host/lib/tr=
ansport/uhd-dpdk/uhd_dpdk.c:6:0:<br>/home/dell/uhd/host/lib/transport/uhd-d=
pdk/uhd_dpdk_ctx.h:102:23: error: field =E2=80=98mac_addr=E2=80=99 has inco=
mplete type<br>=C2=A0 =C2=A0 =C2=A0struct ether_addr mac_addr;<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0^<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:176:23: e=
rror: field =E2=80=98mac_addr=E2=80=99 has incomplete type<br>=C2=A0 =C2=A0=
 =C2=A0struct ether_addr mac_addr;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>In file included from =
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:9:0:<br>/home/dell/uh=
d/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:22:62: warning: =E2=80=98st=
ruct arp_hdr=E2=80=99 declared inside parameter list<br>=C2=A0int _uhd_dpdk=
_process_arp(struct uhd_dpdk_port *port, struct arp_hdr *arp_frame);<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>/ho=
me/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:22:62: warning: i=
ts scope is only this definition or declaration, which is probably not what=
 you want<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_driver.h:2=
4:34: warning: =E2=80=98struct udp_hdr=E2=80=99 declared inside parameter l=
ist<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct udp_hdr *pkt, bool bcast);<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>/home/dell/uhd/host/lib/transpo=
rt/uhd-dpdk/uhd_dpdk_driver.h:25:86: warning: =E2=80=98struct ipv4_hdr=E2=
=80=99 declared inside parameter list<br>=C2=A0int _uhd_dpdk_process_ipv4(s=
truct uhd_dpdk_port *port, struct rte_mbuf *mbuf, struct ipv4_hdr *pk<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ^<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In funct=
ion =E2=80=98uhd_dpdk_get_eth_addr=E2=80=99:<br>/home/dell/uhd/host/lib/tra=
nsport/uhd-dpdk/uhd_dpdk.c:55:31: error: =E2=80=98ETHER_ADDR_LEN=E2=80=99 u=
ndeclared (first use in this function)<br>=C2=A0 =C2=A0 =C2=A0memset(retval=
.addr, 0xff, ETHER_ADDR_LEN);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/=
home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:55:31: note: each unde=
clared identifier is reported only once for each function it appears in<br>=
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In function =E2=80=
=98uhd_dpdk_port_init=E2=80=99:<br>/home/dell/uhd/host/lib/transport/uhd-dp=
dk/uhd_dpdk.c:103:5: warning: =E2=80=98rte_eth_dev_count=E2=80=99 is deprec=
ated [-Wdeprecated-declarations]<br>=C2=A0 =C2=A0 =C2=A0if (port-&gt;id &gt=
;=3D rte_eth_dev_count())<br>=C2=A0 =C2=A0 =C2=A0^<br>In file included from=
 /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:12:0,<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/dell/uhd/=
host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:<br>/usr/local/include/dpdk/rte_et=
hdev.h:1669:10: note: declared here<br>=C2=A0uint16_t rte_eth_dev_count(voi=
d);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>In file included from /usr/l=
ocal/include/dpdk/rte_ethdev.h:152:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/dell/uhd/host/lib/transport/uhd-dpdk=
/uhd_dpdk_ctx.h:12,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0from /home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:<br>=
/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:122:108: warning: for=
mat =E2=80=98%llx=E2=80=99 expects argument of type =E2=80=98long long unsi=
gned int=E2=80=99, but argument 5 has type =E2=80=98uint64_t {aka long unsi=
gned int}=E2=80=99 [-Wformat=3D]<br>=C2=A0LOG(WARNING, EAL, &quot;%d: Only =
supports RX offloads 0x%0llx\n&quot;, port-&gt;id, dev_info.rx_offload_capa=
);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>/usr/local/include/dpdk/=
rte_log.h:324:25: note: in definition of macro =E2=80=98RTE_LOG=E2=80=99<br=
>=C2=A0 =C2=A0 RTE_LOGTYPE_ ## t, # t &quot;: &quot; __VA_ARGS__)<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0^<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:126:10=
8: warning: format =E2=80=98%llx=E2=80=99 expects argument of type =E2=80=
=98long long unsigned int=E2=80=99, but argument 5 has type =E2=80=98uint64=
_t {aka long unsigned int}=E2=80=99 [-Wformat=3D]<br>=C2=A0LOG(WARNING, EAL=
, &quot;%d: Only supports TX offloads 0x%0llx\n&quot;, port-&gt;id, dev_inf=
o.tx_offload_capa);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>/usr/lo=
cal/include/dpdk/rte_log.h:324:25: note: in definition of macro =E2=80=98RT=
E_LOG=E2=80=99<br>=C2=A0 =C2=A0 RTE_LOGTYPE_ ## t, # t &quot;: &quot; __VA_=
ARGS__)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/=
uhd_dpdk.c:134:13: error: unknown field =E2=80=98jumbo_frame=E2=80=99 speci=
fied in initializer<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.jum=
bo_frame =3D 1,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/ho=
me/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:135:13: error: unknown f=
ield =E2=80=98hw_ip_checksum=E2=80=99 specified in initializer<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.hw_ip_checksum =3D 1,<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/home/dell/uhd/host/lib/trans=
port/uhd-dpdk/uhd_dpdk.c:135:31: warning: initialized field overwritten [-W=
override-init]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.hw_ip_ch=
ecksum =3D 1,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/home/dell/uhd/=
host/lib/transport/uhd-dpdk/uhd_dpdk.c:135:31: note: (near initialization f=
or =E2=80=98port_conf.rxmode.offloads=E2=80=99)<br>/home/dell/uhd/host/lib/=
transport/uhd-dpdk/uhd_dpdk.c:136:13: error: unknown field =E2=80=98ignore_=
offload_bitfield=E2=80=99 specified in initializer<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0.ignore_offload_bitfield =3D 0,<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>/home/dell/uhd/host/lib/transport/u=
hd-dpdk/uhd_dpdk.c:136:40: warning: excess elements in struct initializer<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.ignore_offload_bitfield =
=3D 0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ^<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:136:40: note=
: (near initialization for =E2=80=98port_conf.rxmode=E2=80=99)<br>/home/del=
l/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In function =E2=80=98uhd_dpdk=
_init=E2=80=99:<br>/home/dell/uhd/host/lib/transport/uhd-dpdk/uhd_dpdk.c:27=
9:5: warning: =E2=80=98rte_eth_dev_count=E2=80=99 is deprecated [-Wdeprecat=
ed-declarations]<br>=C2=A0 =C2=A0 =C2=A0ctx-&gt;num_ports =3D rte_eth_dev_c=
ount();<br>=C2=A0 =C2=A0 =C2=A0^<br>In file included from /home/dell/uhd/ho=
st/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:12:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/dell/uhd/host/lib/transpor=
t/uhd-dpdk/uhd_dpdk.c:6:<br>/usr/local/include/dpdk/rte_ethdev.h:1669:10: n=
ote: declared here<br>=C2=A0uint16_t rte_eth_dev_count(void);<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>lib/CMakeFiles/uhd.dir/build.make:3824: recip=
e for target &#39;lib/CMakeFiles/uhd.dir/transport/uhd-dpdk/uhd_dpdk.c.o&#3=
9; failed<br>make[2]: *** [lib/CMakeFiles/uhd.dir/transport/uhd-dpdk/uhd_dp=
dk.c.o] Error 1<br>CMakeFiles/Makefile2:128: recipe for target &#39;lib/CMa=
keFiles/uhd.dir/all&#39; failed<br>make[1]: *** [lib/CMakeFiles/uhd.dir/all=
] Error 2<br>Makefile:162: recipe for target &#39;all&#39; failed<br>make: =
*** [all] Error 2<br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009608920595e8059d--


--===============2552478322189067937==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2552478322189067937==--

