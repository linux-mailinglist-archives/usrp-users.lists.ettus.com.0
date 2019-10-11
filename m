Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0402FD47FA
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2019 20:52:40 +0200 (CEST)
Received: from [::1] (port=49778 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iJ01k-0000cX-En; Fri, 11 Oct 2019 14:52:36 -0400
Received: from mail-lj1-f176.google.com ([209.85.208.176]:35002)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jlockhartrt@gmail.com>)
 id 1iJ01f-0000U5-5F
 for usrp-users@lists.ettus.com; Fri, 11 Oct 2019 14:52:31 -0400
Received: by mail-lj1-f176.google.com with SMTP id m7so10836469lji.2
 for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2019 11:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eBzJkvVHAA8nvhTq1jparB1D/oA0sbhaBytgpQMW3+g=;
 b=qmphWOoAvw3nnfiY2g8R4UUDVtOyAfV2rV1lO6QhLHpyMwu+G3EQlNfYzgv6TiMM18
 HitDJbt7OyGFV693fK/Cm3BhYSucIdQFLjBP7AeM20QyB19sSd+PACpSK/oCLZjWDiT5
 zcpVhRaziCjppzbQ/O6ewtnaSekNsRLlHNmzWthOc81RcYFsiPcY3vDsOhCBriOmdO6d
 f4w6FkkAncl+NJ6/QhsXLBxHkj2fP4zQ+qKJETvW2/8wQhkcNWCmZ+dO+Vj2e4TJcLvK
 VuqrgWRf6gxNPM03+uUiF49vaqEtLHq11EhBxmp74tVoop7AMc7YP/BJaWE5NmVqKqPI
 bTsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eBzJkvVHAA8nvhTq1jparB1D/oA0sbhaBytgpQMW3+g=;
 b=DN3JuUcMMiPbKahf6ktL/UyVLIjLVn0K8U92W+9vCY2bzszm56HdGGQ89HjfcAisr0
 3f0WFNEKrWi3i83iOqIXVLxeKBLWqdo171u/iS3bDm1L79lDtVlQKdLGPDTvb7N47FCt
 pxJN57kdE5dGvwf7Y5hlUidutSWqR25r1cryo4XNKfs6FKX1nTSKSBD1X0OESrQjQW+e
 AVnPScV794wXNLmRh151WFdiwVR/rqpaH8urU0VGX2g9Kem9SRKQq1PV/i68EqzDCVVi
 3nGuKATv9/ClX9Eh+Z/zjgxLQxWot+oD1S8kpEqPJBHbi3u52lf53NJqF4pn8bPX/Bhm
 IYNA==
X-Gm-Message-State: APjAAAVC2q37YKLwJOO5NwH2IMA3LkCOGAgFUSw8EeYOX5MVtC7y50kI
 ebpmMVdb+nCEOGiIVjxIMCRc5SQRyZrzVCi3Q+Y=
X-Google-Smtp-Source: APXvYqz/gq2YZTmovU7dYT8fbZyi3qMfr7XhQcap+UDjRB3zfiUaudb4Iqh8/8L01icGvc8rczyTOTETafRUQjd9hos=
X-Received: by 2002:a2e:5b9d:: with SMTP id m29mr10046285lje.146.1570819909799; 
 Fri, 11 Oct 2019 11:51:49 -0700 (PDT)
MIME-Version: 1.0
References: <CALY+5sJKrJzT9ecciKB9nkygF7_22Wou1QjY8OU760_qSXwYfw@mail.gmail.com>
 <CALY+5sJ2gPzYgD1yStvgS=zhG-gxkK7ytrxApnyiJm7nyW9tvQ@mail.gmail.com>
 <CAL263ixQZpvqydB_zLGNbdYPhF_Oz7BGJN=6YrXwMUxpkMi9EQ@mail.gmail.com>
In-Reply-To: <CAL263ixQZpvqydB_zLGNbdYPhF_Oz7BGJN=6YrXwMUxpkMi9EQ@mail.gmail.com>
Date: Fri, 11 Oct 2019 14:51:37 -0400
Message-ID: <CALY+5sJETXy02oMBVwt9R-MYOeLZgHUXzGEVqv2TPs=3xJBeJA@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
Subject: Re: [USRP-users] Issues Completing Radio Build and Installation
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
From: Jonathan Lockhart via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathan Lockhart <jlockhartrt@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8740089241205960630=="
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

--===============8740089241205960630==
Content-Type: multipart/alternative; boundary="000000000000bad2ba0594a70288"

--000000000000bad2ba0594a70288
Content-Type: text/plain; charset="UTF-8"

Greetings Nate,

Thanks for getting back to me so quickly. I will be sure to flash the OS to
release 4 and roll back my dev environment to match the instructions.

Regards,
Jon Lockhart


On Fri, Oct 11, 2019, 1:20 PM Nate Temple <nate.temple@ettus.com> wrote:

> Hi Jon,
>
> If you are following this app note [0], I would recommend starting with
> the release-4 image. The pre-3.15 MPM based image that has been released is
> currently a "beta" release. It lacks several of the dependencies required
> to build out GNU Radio. We are working on a new release and hope to have it
> posted soon.
>
> [0] -
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
>
>
> Regards,
> Nate Temple
>
> On Fri, Oct 11, 2019 at 10:14 AM Jonathan Lockhart <jlockhartrt@gmail.com>
> wrote:
>
>> Greetings Ettus Radio List,
>>
>> I have recently acquired and began using an Ettus E312 and have been
>> trying to configure the dev host and the cross compile environment.
>> Unfortunately I am having issues completing some of these tasks with the
>> pre-release version of 3.15 image that Ettus mentions you should use in the
>> manual for the E312. I forward those issues to support but have heard no
>> reply. Please refer below to the issues I am reporting. The GNURadio cross
>> compile issue with the SDK and environment is the more crucial one at the
>> moment. I was wondering if anyone else has been experiencing these issues
>> and if so how did you proceed to get it resolved. Is there an image, sdk,
>> GNURadio version that I should be using other than the 3.15 image and
>> instructions that Ettus currently recommends using until a stable RC is
>> provided?
>>
>> Thanks for your help and feedback.
>>
>> Regards,
>> Jon Lockhart
>>
>>
>> ---------- Forwarded message ---------
>> From: Jonathan Lockhart <jlockhartrt@gmail.com>
>> Date: Mon, Oct 7, 2019 at 3:16 PM
>> Subject: Issues Completing Radio Build and Installation
>> To: <support@ettus.com>
>>
>>
>> Greetings Ettus Support,
>>
>> I recently acquired an Ettus E312 and I was looking to do some
>> development on it. Unfortunately I am have been having some issues. The
>> manual via files.ettus.com and the "Getting Started" both failed to
>> provide a working environment.
>>
>> The farthest I got was downloading the meta section direction for the
>> E312 to get 3.15.0 image and sdk for the radio, and then following this
>> guide page for 3.14, correcting the UHD install accordingly to comply with
>> 3.15. (Guide
>> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Running_RFNoC_Fosphor
>> )
>>
>> When mounting the cross compiled UHD folders via the instructions on the
>> radio, and using the uhd_usrp_probe command, there is an error checking for
>> the libusb_init information.
>>
>> root@ni-e31x-313179A:~/newinstall# uhd_usrp_probe
>> [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
>> UHD_3.15.0.HEAD-0-g6563c537
>> [ERROR] [UHD] Device discovery error: AssertionError:
>> libusb_init(&_context) == 0
>>   in libusb_session_impl::libusb_session_impl()
>>   at /home/jon/rfnoc/src/uhd/host/lib/transport/libusb1_base.cpp:36
>>
>> [ERROR] [UHD] Device discovery error: AssertionError:
>> libusb_init(&_context) == 0
>>   in libusb_session_impl::libusb_session_impl()
>>   at /home/jon/rfnoc/src/uhd/host/lib/transport/libusb1_base.cpp:36
>>
>> [ERROR] [UHD] Device discovery error: AssertionError:
>> libusb_init(&_context) == 0
>>   in libusb_session_impl::libusb_session_impl()
>>   at /home/jon/rfnoc/src/uhd/host/lib/transport/libusb1_base.cpp:36
>>
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg3,serial=313179A,claimed=False
>> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
>> [INFO] [MPM.PeriphManager] init() called with device args
>> `product=e310_sg3,mgmt_addr=127.0.0.1'.
>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000003310)
>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>> [INFO] [0/Radio_0] RX band = 6
>> [INFO] [0/Radio_0] RX SW1 = 5
>> [INFO] [0/Radio_0] RX SWC = 0
>> [INFO] [0/Radio_0] RX SWB = 1
>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>> [INFO] [0/Radio_0] RX band = 6
>> [INFO] [0/Radio_0] RX SW1 = 5
>> [INFO] [0/Radio_0] RX SWC = 0
>> [INFO] [0/Radio_0] RX SWB = 1
>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>> [INFO] [0/Radio_0] RX band = 6
>> [INFO] [0/Radio_0] RX SW1 = 5
>> [INFO] [0/Radio_0] RX SWC = 0
>> [INFO] [0/Radio_0] RX SWB = 1
>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>> [INFO] [0/Radio_0] RX band = 6
>> [INFO] [0/Radio_0] RX SW1 = 5
>> [INFO] [0/Radio_0] RX SWC = 0
>> [INFO] [0/Radio_0] RX SWB = 1
>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>> [INFO] [0/Radio_0] RX band = 6
>> [INFO] [0/Radio_0] RX SW1 = 5
>> [INFO] [0/Radio_0] RX SWC = 0
>> [INFO] [0/Radio_0] RX SWB = 1
>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>> [INFO] [0/Radio_0] RX band = 6
>> [INFO] [0/Radio_0] RX SW1 = 5
>> [INFO] [0/Radio_0] RX SWC = 0
>> [INFO] [0/Radio_0] RX SWB = 1
>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>> [INFO] [0/Radio_0] Performing CODEC loopback test...
>> [INFO] [0/Radio_0] CODEC loopback test passed
>> [INFO] [0/Radio_0] Performing CODEC loopback test...
>> [INFO] [0/Radio_0] CODEC loopback test passed
>>   _____________________________________________________
>>  /
>> |       Device: E300-Series Device
>> |     _____________________________________________________
>> |    /
>> |   |       Mboard: ni-e31x-313179A
>> |   |   mpm_version: 3.15.0.git-g6563c537
>> |   |   pid: 30675
>> |   |   product: e310_sg3
>> |   |   rev: 7
>> |   |   rpc_connection: local
>> |   |   serial: 313179A
>> |   |   type: e3xx
>> |   |   MPM Version: 1.2
>> |   |   FPGA Version: 1.0
>> |   |   FPGA git hash: f52a643.clean
>> |   |   RFNoC capable: Yes
>> |   |
>> |   |   Time sources:  internal, external, gpsdo
>> |   |   Clock sources: internal
>> |   |   Sensors: ref_locked, temp_fpga, temp_mb
>> |   |     _____________________________________________________
>> |   |    /
>> |   |   |       RX Dboard: A
>> |   |   |     _____________________________________________________
>> |   |   |    /
>> |   |   |   |       RX Frontend: 0
>> |   |   |   |   Name: E3xx
>> |   |   |   |   Antennas: RX2, TX/RX
>> |   |   |   |   Sensors: lo_locked, ad9361_temperature, rssi, lo_lock
>> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
>> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>> |   |   |   |   Connection Type: IQ
>> |   |   |   |   Uses LO offset: No
>> |   |   |     _____________________________________________________
>> |   |   |    /
>> |   |   |   |       RX Frontend: 1
>> |   |   |   |   Name: E3xx
>> |   |   |   |   Antennas: RX2, TX/RX
>> |   |   |   |   Sensors: lo_locked, ad9361_temperature, rssi, lo_lock
>> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
>> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>> |   |   |   |   Connection Type: IQ
>> |   |   |   |   Uses LO offset: No
>> |   |   |     _____________________________________________________
>> |   |   |    /
>> |   |   |   |       RX Codec: A
>> |   |   |   |   Name: AD9361 Dual ADC
>> |   |   |   |   Gain Elements: None
>> |   |     _____________________________________________________
>> |   |    /
>> |   |   |       TX Dboard: A
>> |   |   |     _____________________________________________________
>> |   |   |    /
>> |   |   |   |       TX Frontend: 0
>> |   |   |   |   Name: E3xx
>> |   |   |   |   Antennas: TX/RX
>> |   |   |   |   Sensors: lo_locked, ad9361_temperature
>> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
>> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>> |   |   |   |   Connection Type: IQ
>> |   |   |   |   Uses LO offset: No
>> |   |   |     _____________________________________________________
>> |   |   |    /
>> |   |   |   |       TX Frontend: 1
>> |   |   |   |   Name: E3xx
>> |   |   |   |   Antennas: TX/RX
>> |   |   |   |   Sensors: lo_locked, ad9361_temperature
>> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
>> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>> |   |   |   |   Connection Type: IQ
>> |   |   |   |   Uses LO offset: No
>> |   |   |     _____________________________________________________
>> |   |   |    /
>> |   |   |   |       TX Codec: A
>> |   |   |   |   Name: AD9361 Dual DAC
>> |   |   |   |   Gain Elements: None
>> |   |     _____________________________________________________
>> |   |    /
>> |   |   |       RFNoC blocks on this device:
>> |   |   |
>> |   |   |   * Radio_0
>> |   |   |   * DDC_0
>> |   |   |   * DUC_0
>>
>> It does appear however that the command runs properly even without the
>> USB files being available.
>>
>> As for GNU radio, well that won't cross compile. The base installation
>> works with no issues, but when I go to cross compile in the SDK environment
>> for 3.15, I get the following issue:
>>
>> ~/rfnoc/src/gnuradio/build-arm$ cmake -Wno-dev
>> -DCMAKE_TOOLCHAIN_FILE=~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake
>> -DENABLE_GR_WXGUI=OFF -DENABLE_GR_VOCODER=OFF -DENABLE_GR_DTV=OFF
>> -DENABLE_GR_ATSC=OFF -DENABLE_DOXYGEN=OFF -DCMAKE_INSTALL_PREFIX=/usr ../
>> -- Build type not specified: defaulting to release.
>> -- Build type set to Release.
>> -- Extracting version information from git describe...
>> -- Compiler Version: arm-oe-linux-gnueabi-gcc (GCC) 7.3.0
>> Copyright (C) 2017 Free Software Foundation, Inc.
>> This is free software; see the source for copying conditions.  There is NO
>> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
>> PURPOSE.
>> -- Compiler Flags:
>> /home/jon/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc:::-O3
>> -DNDEBUG  -O2 -pipe -g -feliminate-unused-debug-types  -std=gnu99
>> -fvisibility=hidden -Wsign-compare -Wall -Wno-uninitialized
>> /home/jon/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-g++:::-O3
>> -DNDEBUG  -O2 -pipe -g -feliminate-unused-debug-types  -fvisibility=hidden
>> -Wsign-compare -Wall -Wno-uninitialized
>> -- ADDING PERF COUNTERS
>> -- Building Static Libraries: OFF
>> -- Boost version: 1.66.0
>> -- Found the following Boost libraries:
>> --   date_time
>> --   program_options
>> --   filesystem
>> --   system
>> --   regex
>> --   thread
>> --   chrono
>> --   atomic
>> --
>> -- Checking for module SWIG
>> -- Found SWIG version 3.0.12.
>> --
>> -- The build system will automatically enable all components.
>> -- Use -DENABLE_DEFAULT=OFF to disable components by default.
>> --
>> -- Configuring python-support support...
>> --   Dependency PYTHONLIBS_FOUND = TRUE
>> --   Dependency SWIG_FOUND = TRUE
>> --   Dependency SWIG_VERSION_CHECK = TRUE
>> --   Enabling python-support support.
>> --   Override with -DENABLE_PYTHON=ON/OFF
>> -- Checking for module 'cppunit'
>> --   No package 'cppunit' found
>> -- Could NOT find CPPUNIT (missing: CPPUNIT_INCLUDE_DIRS)
>> --
>> -- Configuring testing-support support...
>> --   Dependency CPPUNIT_FOUND = FALSE
>> CMake Error at cmake/Modules/GrComponent.cmake:75 (message):
>>   user force-enabled testing-support but configuration checked failed
>> Call Stack (most recent call first):
>>   CMakeLists.txt:373 (GR_REGISTER_COMPONENT)
>>
>>
>> -- Configuring incomplete, errors occurred!
>> See also
>> "/home/jon/rfnoc/src/gnuradio/build-arm/CMakeFiles/CMakeOutput.log".
>> See also
>> "/home/jon/rfnoc/src/gnuradio/build-arm/CMakeFiles/CMakeError.log".
>>
>> I have attached the Output and Error logs as well.
>>
>> In comparing the sysroot/ folders under the rfnoc/oe repository, there is
>> a lot of files missing from the 3.15 build that are in the 3.14 build. So
>> it appears to be that the SDK is not correct.
>>
>> Any assistance in getting these issues resolved would be most helpful.
>>
>> Regards,
>> Jon Lockhart
>>
>

--000000000000bad2ba0594a70288
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Greetings Nate,<div dir=3D"auto"><br></div><div dir=
=3D"auto">Thanks for getting=C2=A0back to me so quickly. I will be sure to =
flash the OS to release 4 and roll back my dev environment to match the ins=
tructions.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Regards=
,=C2=A0</div><div dir=3D"auto">Jon Lockhart=C2=A0</div><br><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2019=
, 1:20 PM Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com">nate.tem=
ple@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div d=
ir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,helvetic=
a,sans-serif">Hi Jon,<br><br>If you are following this app note [0], I woul=
d recommend starting with the release-4 image. The pre-3.15 MPM based image=
 that has been released is currently a &quot;beta&quot; release. It lacks s=
everal of the dependencies required to build out GNU Radio. We are working =
on a new release and hope to have it posted soon. <br><br>[0] - <a href=3D"=
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC=
_UHD_/_GNU_Radio_/_gr-ettus_from_Source" target=3D"_blank" rel=3D"noreferre=
r">https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RF=
NoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a><br><br><br>Regards,<br>Nate =
Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Fri, Oct 11, 2019 at 10:14 AM Jonathan Lockhart &lt;<a href=
=3D"mailto:jlockhartrt@gmail.com" target=3D"_blank" rel=3D"noreferrer">jloc=
khartrt@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div>Greetings Ettus Radio List,</div><di=
v><br></div><div>I have recently acquired and began using an Ettus E312 and=
 have been trying to configure the dev host and the cross compile environme=
nt. Unfortunately I am having issues completing some of these tasks with th=
e pre-release version of 3.15 image that Ettus mentions you should use in t=
he manual for the E312. I forward those issues to support but have heard no=
 reply. Please refer below to the issues I am reporting. The GNURadio cross=
 compile issue with the SDK and environment is the more crucial one at the =
moment. I was wondering if anyone else has been experiencing these issues a=
nd if so how did you proceed to get it resolved. Is there an image, sdk, GN=
URadio version that I should be using other than the 3.15 image and instruc=
tions that Ettus currently recommends using until a stable RC is provided? =
<br></div><div><br></div><div>Thanks for your help and feedback. <br></div>=
<div><br></div><div>Regards,</div><div>Jon Lockhart</div><div><br></div><di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">----=
------ Forwarded message ---------<br>From: <b class=3D"gmail_sendername" d=
ir=3D"auto">Jonathan Lockhart</b> <span dir=3D"auto">&lt;<a href=3D"mailto:=
jlockhartrt@gmail.com" target=3D"_blank" rel=3D"noreferrer">jlockhartrt@gma=
il.com</a>&gt;</span><br>Date: Mon, Oct 7, 2019 at 3:16 PM<br>Subject: Issu=
es Completing Radio Build and Installation<br>To:  &lt;<a href=3D"mailto:su=
pport@ettus.com" target=3D"_blank" rel=3D"noreferrer">support@ettus.com</a>=
&gt;<br></div><br><br><div dir=3D"ltr">Greetings Ettus Support,<div><br></d=
iv><div>I recently acquired an Ettus E312 and I was looking to do some deve=
lopment on it. Unfortunately I am have been having some issues. The manual =
via <a href=3D"http://files.ettus.com" target=3D"_blank" rel=3D"noreferrer"=
>files.ettus.com</a> and the &quot;Getting Started&quot; both failed to pro=
vide a working environment.=C2=A0</div><div><br></div><div>The farthest I g=
ot was downloading the meta section direction for the E312 to get 3.15.0 im=
age and sdk for the radio, and then following this guide page for 3.14, cor=
recting the UHD install accordingly to comply with 3.15. (Guide=C2=A0<a hre=
f=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_=
RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Running_RFNoC_Fosphor" target=
=3D"_blank" rel=3D"noreferrer">https://kb.ettus.com/Software_Development_on=
_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Runn=
ing_RFNoC_Fosphor</a>)</div><div><br></div><div>When mounting the cross com=
piled UHD folders via the instructions on the radio, and using the uhd_usrp=
_probe command, there is an error checking for the libusb_init information.=
=C2=A0</div><div><br></div><div>root@ni-e31x-313179A:~/newinstall# uhd_usrp=
_probe <br>[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600; UHD_3.1=
5.0.HEAD-0-g6563c537<br>[ERROR] [UHD] Device discovery error: AssertionErro=
r: libusb_init(&amp;_context) =3D=3D 0<br>=C2=A0 in libusb_session_impl::li=
busb_session_impl()<br>=C2=A0 at /home/jon/rfnoc/src/uhd/host/lib/transport=
/libusb1_base.cpp:36<br><br>[ERROR] [UHD] Device discovery error: Assertion=
Error: libusb_init(&amp;_context) =3D=3D 0<br>=C2=A0 in libusb_session_impl=
::libusb_session_impl()<br>=C2=A0 at /home/jon/rfnoc/src/uhd/host/lib/trans=
port/libusb1_base.cpp:36<br><br>[ERROR] [UHD] Device discovery error: Asser=
tionError: libusb_init(&amp;_context) =3D=3D 0<br>=C2=A0 in libusb_session_=
impl::libusb_session_impl()<br>=C2=A0 at /home/jon/rfnoc/src/uhd/host/lib/t=
ransport/libusb1_base.cpp:36<br><br>[INFO] [MPMD] Initializing 1 device(s) =
in parallel with args: mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3=
,serial=3D313179A,claimed=3DFalse<br>[INFO] [MPM.PeriphManager] Found 1 dau=
ghterboard(s).<br>[INFO] [MPM.PeriphManager] init() called with device args=
 `product=3De310_sg3,mgmt_addr=3D127.0.0.1&#39;.<br>[INFO] [0/Radio_0] Init=
ializing block control (NOC ID: 0x12AD100000003310)<br>[INFO] [0/DDC_0] Ini=
tializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DUC_0] In=
itializing block control (NOC ID: 0xD0C0000000000002)<br>[INFO] [0/Radio_0]=
 RX freq =3D 2.4e+09<br>[INFO] [0/Radio_0] RX band =3D 6<br>[INFO] [0/Radio=
_0] RX SW1 =3D 5<br>[INFO] [0/Radio_0] RX SWC =3D 0<br>[INFO] [0/Radio_0] R=
X SWB =3D 1<br>[INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>[INFO] [0/Radio_0] RX=
 VCTXRX_SW =3D 0<br>[INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>[INFO] [0/Rad=
io_0] RX band =3D 6<br>[INFO] [0/Radio_0] RX SW1 =3D 5<br>[INFO] [0/Radio_0=
] RX SWC =3D 0<br>[INFO] [0/Radio_0] RX SWB =3D 1<br>[INFO] [0/Radio_0] RX =
VCRX_SW =3D 1<br>[INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>[INFO] [0/Radio_0=
] RX freq =3D 2.4e+09<br>[INFO] [0/Radio_0] RX band =3D 6<br>[INFO] [0/Radi=
o_0] RX SW1 =3D 5<br>[INFO] [0/Radio_0] RX SWC =3D 0<br>[INFO] [0/Radio_0] =
RX SWB =3D 1<br>[INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>[INFO] [0/Radio_0] R=
X VCTXRX_SW =3D 0<br>[INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>[INFO] [0/Ra=
dio_0] RX band =3D 6<br>[INFO] [0/Radio_0] RX SW1 =3D 5<br>[INFO] [0/Radio_=
0] RX SWC =3D 0<br>[INFO] [0/Radio_0] RX SWB =3D 1<br>[INFO] [0/Radio_0] RX=
 VCRX_SW =3D 1<br>[INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>[INFO] [0/Radio_=
0] RX freq =3D 2.4e+09<br>[INFO] [0/Radio_0] RX band =3D 6<br>[INFO] [0/Rad=
io_0] RX SW1 =3D 5<br>[INFO] [0/Radio_0] RX SWC =3D 0<br>[INFO] [0/Radio_0]=
 RX SWB =3D 1<br>[INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>[INFO] [0/Radio_0] =
RX VCTXRX_SW =3D 0<br>[INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>[INFO] [0/R=
adio_0] RX band =3D 6<br>[INFO] [0/Radio_0] RX SW1 =3D 5<br>[INFO] [0/Radio=
_0] RX SWC =3D 0<br>[INFO] [0/Radio_0] RX SWB =3D 1<br>[INFO] [0/Radio_0] R=
X VCRX_SW =3D 1<br>[INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>[INFO] [0/Radio=
_0] Performing CODEC loopback test... <br>[INFO] [0/Radio_0] CODEC loopback=
 test passed<br>[INFO] [0/Radio_0] Performing CODEC loopback test... <br>[I=
NFO] [0/Radio_0] CODEC loopback test passed<br>=C2=A0 _____________________=
________________________________<br>=C2=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Devic=
e: E300-Series Device<br>| =C2=A0 =C2=A0 __________________________________=
___________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =
Mboard: ni-e31x-313179A<br>| =C2=A0 | =C2=A0 mpm_version: 3.15.0.git-g6563c=
537<br>| =C2=A0 | =C2=A0 pid: 30675<br>| =C2=A0 | =C2=A0 product: e310_sg3<=
br>| =C2=A0 | =C2=A0 rev: 7<br>| =C2=A0 | =C2=A0 rpc_connection: local<br>|=
 =C2=A0 | =C2=A0 serial: 313179A<br>| =C2=A0 | =C2=A0 type: e3xx<br>| =C2=
=A0 | =C2=A0 MPM Version: 1.2<br>| =C2=A0 | =C2=A0 FPGA Version: 1.0<br>| =
=C2=A0 | =C2=A0 FPGA git hash: f52a643.clean<br>| =C2=A0 | =C2=A0 RFNoC cap=
able: Yes<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 Time sources: =C2=A0in=
ternal, external, gpsdo<br>| =C2=A0 | =C2=A0 Clock sources: internal<br>| =
=C2=A0 | =C2=A0 Sensors: ref_locked, temp_fpga, temp_mb<br>| =C2=A0 | =C2=
=A0 =C2=A0 _____________________________________________________<br>| =C2=
=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard:=
 A<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___________________________________=
__________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas:=
 RX2, TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, ad93=
61_temperature, rssi, lo_lock<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq r=
ange: 70.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain ra=
nge PGA: 0.0 to 76.0 step 1.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Ban=
dwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =
Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___________________=
__________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 1<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Antennas: RX2, TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors:=
 lo_locked, ad9361_temperature, rssi, lo_lock<br>| =C2=A0 | =C2=A0 | =C2=A0=
 | =C2=A0 Freq range: 70.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 =
| =C2=A0 Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___=
__________________________________________________<br>| =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Code=
c: A<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: AD9361 Dual ADC<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 =C2=
=A0 _____________________________________________________<br>| =C2=A0 | =C2=
=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: A<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ___________________________________________=
__________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, ad9361_temperature=
<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz<=
br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 89.8 step 0.2=
 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 4=
0000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Typ=
e: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0=
 | =C2=A0 | =C2=A0 =C2=A0 _________________________________________________=
____<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 TX Frontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =
Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, ad9361_temperature<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 89.8 step 0.2 dB<b=
r>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 400000=
00.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ=
<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 ____________________________________________________=
_<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 =C2=A0 =C2=A0 TX Codec: A<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: =
AD9361 Dual DAC<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<=
br>| =C2=A0 | =C2=A0 =C2=A0 _______________________________________________=
______<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =
=C2=A0 RFNoC blocks on this device:<br>| =C2=A0 | =C2=A0 | =C2=A0 <br>| =C2=
=A0 | =C2=A0 | =C2=A0 * Radio_0<br>| =C2=A0 | =C2=A0 | =C2=A0 * DDC_0<br>| =
=C2=A0 | =C2=A0 | =C2=A0 * DUC_0<br></div><div><br></div><div>It does appea=
r however that the command runs properly even without the USB files being a=
vailable.</div><div><br></div><div>As for GNU radio, well that won&#39;t cr=
oss compile. The base installation works with no issues, but when I go to c=
ross compile in the SDK environment for 3.15, I get the following issue:</d=
iv><div><br></div><div>~/rfnoc/src/gnuradio/build-arm$ cmake -Wno-dev -DCMA=
KE_TOOLCHAIN_FILE=3D~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmak=
e -DENABLE_GR_WXGUI=3DOFF -DENABLE_GR_VOCODER=3DOFF -DENABLE_GR_DTV=3DOFF -=
DENABLE_GR_ATSC=3DOFF -DENABLE_DOXYGEN=3DOFF -DCMAKE_INSTALL_PREFIX=3D/usr =
../<br>-- Build type not specified: defaulting to release.<br>-- Build type=
 set to Release.<br>-- Extracting version information from git describe...<=
br>-- Compiler Version: arm-oe-linux-gnueabi-gcc (GCC) 7.3.0<br>Copyright (=
C) 2017 Free Software Foundation, Inc.<br>This is free software; see the so=
urce for copying conditions.=C2=A0 There is NO<br>warranty; not even for ME=
RCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.<br>-- Compiler Flags: /h=
ome/jon/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/a=
rm-oe-linux-gnueabi-gcc:::-O3 -DNDEBUG =C2=A0-O2 -pipe -g -feliminate-unuse=
d-debug-types =C2=A0-std=3Dgnu99 -fvisibility=3Dhidden -Wsign-compare -Wall=
 -Wno-uninitialized<br>/home/jon/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/b=
in/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-g++:::-O3 -DNDEBUG =C2=A0-O2 -=
pipe -g -feliminate-unused-debug-types =C2=A0-fvisibility=3Dhidden -Wsign-c=
ompare -Wall -Wno-uninitialized<br>-- ADDING PERF COUNTERS<br>-- Building S=
tatic Libraries: OFF<br>-- Boost version: 1.66.0<br>-- Found the following =
Boost libraries:<br>-- =C2=A0 date_time<br>-- =C2=A0 program_options<br>-- =
=C2=A0 filesystem<br>-- =C2=A0 system<br>-- =C2=A0 regex<br>-- =C2=A0 threa=
d<br>-- =C2=A0 chrono<br>-- =C2=A0 atomic<br>-- <br>-- Checking for module =
SWIG<br>-- Found SWIG version 3.0.12.<br>-- <br>-- The build system will au=
tomatically enable all components.<br>-- Use -DENABLE_DEFAULT=3DOFF to disa=
ble components by default.<br>-- <br>-- Configuring python-support support.=
..<br>-- =C2=A0 Dependency PYTHONLIBS_FOUND =3D TRUE<br>-- =C2=A0 Dependenc=
y SWIG_FOUND =3D TRUE<br>-- =C2=A0 Dependency SWIG_VERSION_CHECK =3D TRUE<b=
r>-- =C2=A0 Enabling python-support support.<br>-- =C2=A0 Override with -DE=
NABLE_PYTHON=3DON/OFF<br>-- Checking for module &#39;cppunit&#39;<br>-- =C2=
=A0 No package &#39;cppunit&#39; found<br>-- Could NOT find CPPUNIT (missin=
g: CPPUNIT_INCLUDE_DIRS) <br>-- <br>-- Configuring testing-support support.=
..<br>-- =C2=A0 Dependency CPPUNIT_FOUND =3D FALSE<br>CMake Error at cmake/=
Modules/GrComponent.cmake:75 (message):<br>=C2=A0 user force-enabled testin=
g-support but configuration checked failed<br>Call Stack (most recent call =
first):<br>=C2=A0 CMakeLists.txt:373 (GR_REGISTER_COMPONENT)<br><br><br>-- =
Configuring incomplete, errors occurred!<br>See also &quot;/home/jon/rfnoc/=
src/gnuradio/build-arm/CMakeFiles/CMakeOutput.log&quot;.<br>See also &quot;=
/home/jon/rfnoc/src/gnuradio/build-arm/CMakeFiles/CMakeError.log&quot;.<br>=
</div><div><br></div><div>I have attached the Output and Error logs as well=
.=C2=A0</div><div><br></div><div>In comparing the sysroot/ folders under th=
e rfnoc/oe repository, there is a lot of files missing from the 3.15 build =
that are in the 3.14 build. So it appears to be that the SDK is not correct=
.=C2=A0</div><div><br></div><div>Any assistance in getting these issues res=
olved would be most helpful.=C2=A0</div><div><br></div><div>Regards,</div><=
div>Jon Lockhart</div></div>
</div></div></div>
</blockquote></div>
</blockquote></div></div></div>

--000000000000bad2ba0594a70288--


--===============8740089241205960630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8740089241205960630==--

