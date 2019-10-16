Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD75D984A
	for <lists+usrp-users@lfdr.de>; Wed, 16 Oct 2019 19:09:59 +0200 (CEST)
Received: from [::1] (port=53522 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKmoA-0002zM-Ix; Wed, 16 Oct 2019 13:09:58 -0400
Received: from mail-il1-f173.google.com ([209.85.166.173]:41699)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1iKmo5-0002r6-Mi
 for usrp-users@lists.ettus.com; Wed, 16 Oct 2019 13:09:53 -0400
Received: by mail-il1-f173.google.com with SMTP id z10so3370977ilo.8
 for <usrp-users@lists.ettus.com>; Wed, 16 Oct 2019 10:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+6ZKgWSvM6uH1LcbfMYebiysU/aHukQ7jYP2mUz+63E=;
 b=uFzpnOV015lbU8s+Pqf13OXO00Fq8UF/GB72nZiedYAGvQ3o/r/SA3bwJDfdwiz4cI
 pnvR/znNQgd2Veq9h6y7yJPGhU+hc0e0B371Vrvl7ekUzqotE9rKg7GnpztgsfWOpG3J
 FjTz1Y/PPM2JHmLItU5hHudhK09w1MJxMWtDeWCFZEYHkno8HHTw//pU6RXooa1yubZw
 LEAilyXhemC2x6M9HcH8Ys0yx15cPNSBqgAFq9DqHiqkXmplPnnkqf17r9H8Ep8AH6CN
 R9rqB8JHlfZmXilGydSW1Z5AwIG2c1pn3VDhaPMP4+Qiiy/oKLvEqj/dF2QZY2V0vb/I
 0snA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+6ZKgWSvM6uH1LcbfMYebiysU/aHukQ7jYP2mUz+63E=;
 b=jN+1WwJ22o/G9JnW4LnYVzzrR62QVysNkrplr0sPq199zl+bOmCjxjl9w3JxIpxv8x
 kqiYu40jxOXA3zyv16mdef8aOBrMFNH5+GKdTCFSQdu6eeyHHU79PKkzPMlrYpoHFWkH
 sEOrvt2yqEsIVW0wED2m2XpSDsq3LClPQIGQE8nJCvvsj9GC3II+srA4gVGR6cExXWXI
 odScmI2NPBR9dHhIoCIrkr+RRQeANER5ZfxnQ1viEC0G3drKv9/uz9KqQz7oEwegSauf
 XW49cinrkf4uriXMWcNWeuVrgHuIdZ38Daa0gI9i+nyeK7BpOnP5Etc3/TlYcnDtdMfL
 gEhw==
X-Gm-Message-State: APjAAAX51GExKVb24aIx4A0Kk6gMFgCZACpNiMSLXjyYu1rAXCzgml8N
 /CwE5oVZI0W5+6PBIJ4eaUBfJw5BFb08OaP51Y2FQw==
X-Google-Smtp-Source: APXvYqyzIbIn0pMBkUbcrn9z+ba6X3Qp43oI62iHsSC+GoGB/CCp/h5dchyxXIzmaP6DLdIbPKa3ilaoJ0HLV8yFcbU=
X-Received: by 2002:a92:6504:: with SMTP id z4mr13298497ilb.290.1571245752723; 
 Wed, 16 Oct 2019 10:09:12 -0700 (PDT)
MIME-Version: 1.0
References: <CALY+5sJKrJzT9ecciKB9nkygF7_22Wou1QjY8OU760_qSXwYfw@mail.gmail.com>
 <CALY+5sJ2gPzYgD1yStvgS=zhG-gxkK7ytrxApnyiJm7nyW9tvQ@mail.gmail.com>
 <CAL263ixQZpvqydB_zLGNbdYPhF_Oz7BGJN=6YrXwMUxpkMi9EQ@mail.gmail.com>
 <CALY+5sJETXy02oMBVwt9R-MYOeLZgHUXzGEVqv2TPs=3xJBeJA@mail.gmail.com>
 <CALY+5sK26ZavAaEFmDzYLa16j8x-Nb_Cd1udgH_ALyM7QE+yLw@mail.gmail.com>
In-Reply-To: <CALY+5sK26ZavAaEFmDzYLa16j8x-Nb_Cd1udgH_ALyM7QE+yLw@mail.gmail.com>
Date: Wed, 16 Oct 2019 10:09:01 -0700
Message-ID: <CAKJyDkKxxP77YJ1V07SfEr7eT-3dKeU8TC2uSr0cZEbfAejXPw@mail.gmail.com>
To: Jonathan Lockhart <jlockhartrt@gmail.com>
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2017713399188204536=="
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

--===============2017713399188204536==
Content-Type: multipart/alternative; boundary="000000000000f2478805950a288f"

--000000000000f2478805950a288f
Content-Type: text/plain; charset="UTF-8"

The E310/E312 has a small-ish FPGA that does not have enough resources to
accommodate the overhead associated with 14 RFNoC blocks.   You have
discovered empirically that you run out of space above 5 blocks.

On Wed, Oct 16, 2019 at 10:06 AM Jonathan Lockhart via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Greetings Nate,
>
> So been working through your instructions you linked and everything
> appears to be good on the software end. It is all cross-compiling and
> running on the E312. Unfortunately there appears to be a new issue. So when
> running the GUI for building an FGPA bit file, per the instructions, I have
> included an FFT, Window, and Fosphor, and selected the option to "File with
> FIFOS," which causes the build to fail. The GUI reports for the E310_SG3 it
> can support 14 blocks. I tested this with the command line version and 14
> also fails. The instructions show a command line option of 5 modules
> (blocks) which builds fine. If I up it to 6 it immediately fails. I have
> attached a copy of the failure output as a .txt file for 6 blocks.
>
> Regards,
> Jon
>
>
> On Fri, Oct 11, 2019 at 2:51 PM Jonathan Lockhart <jlockhartrt@gmail.com>
> wrote:
>
>> Greetings Nate,
>>
>> Thanks for getting back to me so quickly. I will be sure to flash the OS
>> to release 4 and roll back my dev environment to match the instructions.
>>
>> Regards,
>> Jon Lockhart
>>
>>
>> On Fri, Oct 11, 2019, 1:20 PM Nate Temple <nate.temple@ettus.com> wrote:
>>
>>> Hi Jon,
>>>
>>> If you are following this app note [0], I would recommend starting with
>>> the release-4 image. The pre-3.15 MPM based image that has been released is
>>> currently a "beta" release. It lacks several of the dependencies required
>>> to build out GNU Radio. We are working on a new release and hope to have it
>>> posted soon.
>>>
>>> [0] -
>>> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
>>>
>>>
>>> Regards,
>>> Nate Temple
>>>
>>> On Fri, Oct 11, 2019 at 10:14 AM Jonathan Lockhart <
>>> jlockhartrt@gmail.com> wrote:
>>>
>>>> Greetings Ettus Radio List,
>>>>
>>>> I have recently acquired and began using an Ettus E312 and have been
>>>> trying to configure the dev host and the cross compile environment.
>>>> Unfortunately I am having issues completing some of these tasks with the
>>>> pre-release version of 3.15 image that Ettus mentions you should use in the
>>>> manual for the E312. I forward those issues to support but have heard no
>>>> reply. Please refer below to the issues I am reporting. The GNURadio cross
>>>> compile issue with the SDK and environment is the more crucial one at the
>>>> moment. I was wondering if anyone else has been experiencing these issues
>>>> and if so how did you proceed to get it resolved. Is there an image, sdk,
>>>> GNURadio version that I should be using other than the 3.15 image and
>>>> instructions that Ettus currently recommends using until a stable RC is
>>>> provided?
>>>>
>>>> Thanks for your help and feedback.
>>>>
>>>> Regards,
>>>> Jon Lockhart
>>>>
>>>>
>>>> ---------- Forwarded message ---------
>>>> From: Jonathan Lockhart <jlockhartrt@gmail.com>
>>>> Date: Mon, Oct 7, 2019 at 3:16 PM
>>>> Subject: Issues Completing Radio Build and Installation
>>>> To: <support@ettus.com>
>>>>
>>>>
>>>> Greetings Ettus Support,
>>>>
>>>> I recently acquired an Ettus E312 and I was looking to do some
>>>> development on it. Unfortunately I am have been having some issues. The
>>>> manual via files.ettus.com and the "Getting Started" both failed to
>>>> provide a working environment.
>>>>
>>>> The farthest I got was downloading the meta section direction for the
>>>> E312 to get 3.15.0 image and sdk for the radio, and then following this
>>>> guide page for 3.14, correcting the UHD install accordingly to comply with
>>>> 3.15. (Guide
>>>> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Running_RFNoC_Fosphor
>>>> )
>>>>
>>>> When mounting the cross compiled UHD folders via the instructions on
>>>> the radio, and using the uhd_usrp_probe command, there is an error checking
>>>> for the libusb_init information.
>>>>
>>>> root@ni-e31x-313179A:~/newinstall# uhd_usrp_probe
>>>> [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
>>>> UHD_3.15.0.HEAD-0-g6563c537
>>>> [ERROR] [UHD] Device discovery error: AssertionError:
>>>> libusb_init(&_context) == 0
>>>>   in libusb_session_impl::libusb_session_impl()
>>>>   at /home/jon/rfnoc/src/uhd/host/lib/transport/libusb1_base.cpp:36
>>>>
>>>> [ERROR] [UHD] Device discovery error: AssertionError:
>>>> libusb_init(&_context) == 0
>>>>   in libusb_session_impl::libusb_session_impl()
>>>>   at /home/jon/rfnoc/src/uhd/host/lib/transport/libusb1_base.cpp:36
>>>>
>>>> [ERROR] [UHD] Device discovery error: AssertionError:
>>>> libusb_init(&_context) == 0
>>>>   in libusb_session_impl::libusb_session_impl()
>>>>   at /home/jon/rfnoc/src/uhd/host/lib/transport/libusb1_base.cpp:36
>>>>
>>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>>>> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg3,serial=313179A,claimed=False
>>>> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
>>>> [INFO] [MPM.PeriphManager] init() called with device args
>>>> `product=e310_sg3,mgmt_addr=127.0.0.1'.
>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>>> 0x12AD100000003310)
>>>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>>>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
>>>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>>>> [INFO] [0/Radio_0] RX band = 6
>>>> [INFO] [0/Radio_0] RX SW1 = 5
>>>> [INFO] [0/Radio_0] RX SWC = 0
>>>> [INFO] [0/Radio_0] RX SWB = 1
>>>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>>>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>>>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>>>> [INFO] [0/Radio_0] RX band = 6
>>>> [INFO] [0/Radio_0] RX SW1 = 5
>>>> [INFO] [0/Radio_0] RX SWC = 0
>>>> [INFO] [0/Radio_0] RX SWB = 1
>>>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>>>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>>>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>>>> [INFO] [0/Radio_0] RX band = 6
>>>> [INFO] [0/Radio_0] RX SW1 = 5
>>>> [INFO] [0/Radio_0] RX SWC = 0
>>>> [INFO] [0/Radio_0] RX SWB = 1
>>>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>>>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>>>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>>>> [INFO] [0/Radio_0] RX band = 6
>>>> [INFO] [0/Radio_0] RX SW1 = 5
>>>> [INFO] [0/Radio_0] RX SWC = 0
>>>> [INFO] [0/Radio_0] RX SWB = 1
>>>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>>>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>>>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>>>> [INFO] [0/Radio_0] RX band = 6
>>>> [INFO] [0/Radio_0] RX SW1 = 5
>>>> [INFO] [0/Radio_0] RX SWC = 0
>>>> [INFO] [0/Radio_0] RX SWB = 1
>>>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>>>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>>>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>>>> [INFO] [0/Radio_0] RX band = 6
>>>> [INFO] [0/Radio_0] RX SW1 = 5
>>>> [INFO] [0/Radio_0] RX SWC = 0
>>>> [INFO] [0/Radio_0] RX SWB = 1
>>>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>>>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>>>> [INFO] [0/Radio_0] Performing CODEC loopback test...
>>>> [INFO] [0/Radio_0] CODEC loopback test passed
>>>> [INFO] [0/Radio_0] Performing CODEC loopback test...
>>>> [INFO] [0/Radio_0] CODEC loopback test passed
>>>>   _____________________________________________________
>>>>  /
>>>> |       Device: E300-Series Device
>>>> |     _____________________________________________________
>>>> |    /
>>>> |   |       Mboard: ni-e31x-313179A
>>>> |   |   mpm_version: 3.15.0.git-g6563c537
>>>> |   |   pid: 30675
>>>> |   |   product: e310_sg3
>>>> |   |   rev: 7
>>>> |   |   rpc_connection: local
>>>> |   |   serial: 313179A
>>>> |   |   type: e3xx
>>>> |   |   MPM Version: 1.2
>>>> |   |   FPGA Version: 1.0
>>>> |   |   FPGA git hash: f52a643.clean
>>>> |   |   RFNoC capable: Yes
>>>> |   |
>>>> |   |   Time sources:  internal, external, gpsdo
>>>> |   |   Clock sources: internal
>>>> |   |   Sensors: ref_locked, temp_fpga, temp_mb
>>>> |   |     _____________________________________________________
>>>> |   |    /
>>>> |   |   |       RX Dboard: A
>>>> |   |   |     _____________________________________________________
>>>> |   |   |    /
>>>> |   |   |   |       RX Frontend: 0
>>>> |   |   |   |   Name: E3xx
>>>> |   |   |   |   Antennas: RX2, TX/RX
>>>> |   |   |   |   Sensors: lo_locked, ad9361_temperature, rssi, lo_lock
>>>> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
>>>> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>> |   |   |   |   Connection Type: IQ
>>>> |   |   |   |   Uses LO offset: No
>>>> |   |   |     _____________________________________________________
>>>> |   |   |    /
>>>> |   |   |   |       RX Frontend: 1
>>>> |   |   |   |   Name: E3xx
>>>> |   |   |   |   Antennas: RX2, TX/RX
>>>> |   |   |   |   Sensors: lo_locked, ad9361_temperature, rssi, lo_lock
>>>> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
>>>> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>> |   |   |   |   Connection Type: IQ
>>>> |   |   |   |   Uses LO offset: No
>>>> |   |   |     _____________________________________________________
>>>> |   |   |    /
>>>> |   |   |   |       RX Codec: A
>>>> |   |   |   |   Name: AD9361 Dual ADC
>>>> |   |   |   |   Gain Elements: None
>>>> |   |     _____________________________________________________
>>>> |   |    /
>>>> |   |   |       TX Dboard: A
>>>> |   |   |     _____________________________________________________
>>>> |   |   |    /
>>>> |   |   |   |       TX Frontend: 0
>>>> |   |   |   |   Name: E3xx
>>>> |   |   |   |   Antennas: TX/RX
>>>> |   |   |   |   Sensors: lo_locked, ad9361_temperature
>>>> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
>>>> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>> |   |   |   |   Connection Type: IQ
>>>> |   |   |   |   Uses LO offset: No
>>>> |   |   |     _____________________________________________________
>>>> |   |   |    /
>>>> |   |   |   |       TX Frontend: 1
>>>> |   |   |   |   Name: E3xx
>>>> |   |   |   |   Antennas: TX/RX
>>>> |   |   |   |   Sensors: lo_locked, ad9361_temperature
>>>> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
>>>> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
>>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>> |   |   |   |   Connection Type: IQ
>>>> |   |   |   |   Uses LO offset: No
>>>> |   |   |     _____________________________________________________
>>>> |   |   |    /
>>>> |   |   |   |       TX Codec: A
>>>> |   |   |   |   Name: AD9361 Dual DAC
>>>> |   |   |   |   Gain Elements: None
>>>> |   |     _____________________________________________________
>>>> |   |    /
>>>> |   |   |       RFNoC blocks on this device:
>>>> |   |   |
>>>> |   |   |   * Radio_0
>>>> |   |   |   * DDC_0
>>>> |   |   |   * DUC_0
>>>>
>>>> It does appear however that the command runs properly even without the
>>>> USB files being available.
>>>>
>>>> As for GNU radio, well that won't cross compile. The base installation
>>>> works with no issues, but when I go to cross compile in the SDK environment
>>>> for 3.15, I get the following issue:
>>>>
>>>> ~/rfnoc/src/gnuradio/build-arm$ cmake -Wno-dev
>>>> -DCMAKE_TOOLCHAIN_FILE=~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake
>>>> -DENABLE_GR_WXGUI=OFF -DENABLE_GR_VOCODER=OFF -DENABLE_GR_DTV=OFF
>>>> -DENABLE_GR_ATSC=OFF -DENABLE_DOXYGEN=OFF -DCMAKE_INSTALL_PREFIX=/usr ../
>>>> -- Build type not specified: defaulting to release.
>>>> -- Build type set to Release.
>>>> -- Extracting version information from git describe...
>>>> -- Compiler Version: arm-oe-linux-gnueabi-gcc (GCC) 7.3.0
>>>> Copyright (C) 2017 Free Software Foundation, Inc.
>>>> This is free software; see the source for copying conditions.  There is
>>>> NO
>>>> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
>>>> PURPOSE.
>>>> -- Compiler Flags:
>>>> /home/jon/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc:::-O3
>>>> -DNDEBUG  -O2 -pipe -g -feliminate-unused-debug-types  -std=gnu99
>>>> -fvisibility=hidden -Wsign-compare -Wall -Wno-uninitialized
>>>> /home/jon/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-g++:::-O3
>>>> -DNDEBUG  -O2 -pipe -g -feliminate-unused-debug-types  -fvisibility=hidden
>>>> -Wsign-compare -Wall -Wno-uninitialized
>>>> -- ADDING PERF COUNTERS
>>>> -- Building Static Libraries: OFF
>>>> -- Boost version: 1.66.0
>>>> -- Found the following Boost libraries:
>>>> --   date_time
>>>> --   program_options
>>>> --   filesystem
>>>> --   system
>>>> --   regex
>>>> --   thread
>>>> --   chrono
>>>> --   atomic
>>>> --
>>>> -- Checking for module SWIG
>>>> -- Found SWIG version 3.0.12.
>>>> --
>>>> -- The build system will automatically enable all components.
>>>> -- Use -DENABLE_DEFAULT=OFF to disable components by default.
>>>> --
>>>> -- Configuring python-support support...
>>>> --   Dependency PYTHONLIBS_FOUND = TRUE
>>>> --   Dependency SWIG_FOUND = TRUE
>>>> --   Dependency SWIG_VERSION_CHECK = TRUE
>>>> --   Enabling python-support support.
>>>> --   Override with -DENABLE_PYTHON=ON/OFF
>>>> -- Checking for module 'cppunit'
>>>> --   No package 'cppunit' found
>>>> -- Could NOT find CPPUNIT (missing: CPPUNIT_INCLUDE_DIRS)
>>>> --
>>>> -- Configuring testing-support support...
>>>> --   Dependency CPPUNIT_FOUND = FALSE
>>>> CMake Error at cmake/Modules/GrComponent.cmake:75 (message):
>>>>   user force-enabled testing-support but configuration checked failed
>>>> Call Stack (most recent call first):
>>>>   CMakeLists.txt:373 (GR_REGISTER_COMPONENT)
>>>>
>>>>
>>>> -- Configuring incomplete, errors occurred!
>>>> See also
>>>> "/home/jon/rfnoc/src/gnuradio/build-arm/CMakeFiles/CMakeOutput.log".
>>>> See also
>>>> "/home/jon/rfnoc/src/gnuradio/build-arm/CMakeFiles/CMakeError.log".
>>>>
>>>> I have attached the Output and Error logs as well.
>>>>
>>>> In comparing the sysroot/ folders under the rfnoc/oe repository, there
>>>> is a lot of files missing from the 3.15 build that are in the 3.14 build.
>>>> So it appears to be that the SDK is not correct.
>>>>
>>>> Any assistance in getting these issues resolved would be most helpful.
>>>>
>>>> Regards,
>>>> Jon Lockhart
>>>>
>>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000f2478805950a288f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The E310/E312 has a small-ish FPGA that does not have enou=
gh resources to accommodate the overhead associated with 14 RFNoC blocks.=
=C2=A0 =C2=A0You have discovered empirically that you run out of space abov=
e 5 blocks.=C2=A0=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Wed, Oct 16, 2019 at 10:06 AM Jonathan Lockhart v=
ia USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr">Greetings Nate,<div><br></div><div>So been =
working through your instructions you linked and everything appears to be g=
ood on the software end. It is all cross-compiling and running on the E312.=
 Unfortunately there appears to be a new issue. So when running the GUI for=
 building an FGPA bit file, per the instructions, I have included an FFT, W=
indow, and Fosphor, and selected the option to &quot;File with FIFOS,&quot;=
 which causes the build to fail. The GUI reports for the E310_SG3 it can su=
pport 14 blocks. I tested this with the command line version and 14 also fa=
ils. The instructions show a command line option of 5 modules (blocks) whic=
h builds fine. If I up it to 6 it immediately fails. I have attached a copy=
 of the failure output as a .txt file for 6 blocks.=C2=A0</div><div><br></d=
iv><div>Regards,</div><div>Jon</div><div><br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2019 at =
2:51 PM Jonathan Lockhart &lt;<a href=3D"mailto:jlockhartrt@gmail.com" targ=
et=3D"_blank">jlockhartrt@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div>Greetings Nate,<d=
iv dir=3D"auto"><br></div><div dir=3D"auto">Thanks for getting=C2=A0back to=
 me so quickly. I will be sure to flash the OS to release 4 and roll back m=
y dev environment to match the instructions.=C2=A0</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Regards,=C2=A0</div><div dir=3D"auto">Jon Lockha=
rt=C2=A0</div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Fri, Oct 11, 2019, 1:20 PM Nate Temple &lt;<a href=3D"mailto=
:nate.temple@ettus.com" target=3D"_blank">nate.temple@ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans=
-serif">Hi Jon,<br><br>If you are following this app note [0], I would reco=
mmend starting with the release-4 image. The pre-3.15 MPM based image that =
has been released is currently a &quot;beta&quot; release. It lacks several=
 of the dependencies required to build out GNU Radio. We are working on a n=
ew release and hope to have it posted soon. <br><br>[0] - <a href=3D"https:=
//kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/=
_GNU_Radio_/_gr-ettus_from_Source" rel=3D"noreferrer" target=3D"_blank">htt=
ps://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UH=
D_/_GNU_Radio_/_gr-ettus_from_Source</a><br><br><br>Regards,<br>Nate Temple=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Fri, Oct 11, 2019 at 10:14 AM Jonathan Lockhart &lt;<a href=3D"mai=
lto:jlockhartrt@gmail.com" rel=3D"noreferrer" target=3D"_blank">jlockhartrt=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Greetings Ettus Radio List,</div><div><br>=
</div><div>I have recently acquired and began using an Ettus E312 and have =
been trying to configure the dev host and the cross compile environment. Un=
fortunately I am having issues completing some of these tasks with the pre-=
release version of 3.15 image that Ettus mentions you should use in the man=
ual for the E312. I forward those issues to support but have heard no reply=
. Please refer below to the issues I am reporting. The GNURadio cross compi=
le issue with the SDK and environment is the more crucial one at the moment=
. I was wondering if anyone else has been experiencing these issues and if =
so how did you proceed to get it resolved. Is there an image, sdk, GNURadio=
 version that I should be using other than the 3.15 image and instructions =
that Ettus currently recommends using until a stable RC is provided? <br></=
div><div><br></div><div>Thanks for your help and feedback. <br></div><div><=
br></div><div>Regards,</div><div>Jon Lockhart</div><div><br></div><div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">----------=
 Forwarded message ---------<br>From: <b class=3D"gmail_sendername" dir=3D"=
auto">Jonathan Lockhart</b> <span dir=3D"auto">&lt;<a href=3D"mailto:jlockh=
artrt@gmail.com" rel=3D"noreferrer" target=3D"_blank">jlockhartrt@gmail.com=
</a>&gt;</span><br>Date: Mon, Oct 7, 2019 at 3:16 PM<br>Subject: Issues Com=
pleting Radio Build and Installation<br>To:  &lt;<a href=3D"mailto:support@=
ettus.com" rel=3D"noreferrer" target=3D"_blank">support@ettus.com</a>&gt;<b=
r></div><br><br><div dir=3D"ltr">Greetings Ettus Support,<div><br></div><di=
v>I recently acquired an Ettus E312 and I was looking to do some developmen=
t on it. Unfortunately I am have been having some issues. The manual via <a=
 href=3D"http://files.ettus.com" rel=3D"noreferrer" target=3D"_blank">files=
.ettus.com</a> and the &quot;Getting Started&quot; both failed to provide a=
 working environment.=C2=A0</div><div><br></div><div>The farthest I got was=
 downloading the meta section direction for the E312 to get 3.15.0 image an=
d sdk for the radio, and then following this guide page for 3.14, correctin=
g the UHD install accordingly to comply with 3.15. (Guide=C2=A0<a href=3D"h=
ttps://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_=
UHD_/_GNU_Radio_/_gr-ettus_from_Source#Running_RFNoC_Fosphor" rel=3D"norefe=
rrer" target=3D"_blank">https://kb.ettus.com/Software_Development_on_the_E3=
xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Running_RFN=
oC_Fosphor</a>)</div><div><br></div><div>When mounting the cross compiled U=
HD folders via the instructions on the radio, and using the uhd_usrp_probe =
command, there is an error checking for the libusb_init information.=C2=A0<=
/div><div><br></div><div>root@ni-e31x-313179A:~/newinstall# uhd_usrp_probe =
<br>[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600; UHD_3.15.0.HEA=
D-0-g6563c537<br>[ERROR] [UHD] Device discovery error: AssertionError: libu=
sb_init(&amp;_context) =3D=3D 0<br>=C2=A0 in libusb_session_impl::libusb_se=
ssion_impl()<br>=C2=A0 at /home/jon/rfnoc/src/uhd/host/lib/transport/libusb=
1_base.cpp:36<br><br>[ERROR] [UHD] Device discovery error: AssertionError: =
libusb_init(&amp;_context) =3D=3D 0<br>=C2=A0 in libusb_session_impl::libus=
b_session_impl()<br>=C2=A0 at /home/jon/rfnoc/src/uhd/host/lib/transport/li=
busb1_base.cpp:36<br><br>[ERROR] [UHD] Device discovery error: AssertionErr=
or: libusb_init(&amp;_context) =3D=3D 0<br>=C2=A0 in libusb_session_impl::l=
ibusb_session_impl()<br>=C2=A0 at /home/jon/rfnoc/src/uhd/host/lib/transpor=
t/libusb1_base.cpp:36<br><br>[INFO] [MPMD] Initializing 1 device(s) in para=
llel with args: mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=
=3D313179A,claimed=3DFalse<br>[INFO] [MPM.PeriphManager] Found 1 daughterbo=
ard(s).<br>[INFO] [MPM.PeriphManager] init() called with device args `produ=
ct=3De310_sg3,mgmt_addr=3D127.0.0.1&#39;.<br>[INFO] [0/Radio_0] Initializin=
g block control (NOC ID: 0x12AD100000003310)<br>[INFO] [0/DDC_0] Initializi=
ng block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DUC_0] Initializ=
ing block control (NOC ID: 0xD0C0000000000002)<br>[INFO] [0/Radio_0] RX fre=
q =3D 2.4e+09<br>[INFO] [0/Radio_0] RX band =3D 6<br>[INFO] [0/Radio_0] RX =
SW1 =3D 5<br>[INFO] [0/Radio_0] RX SWC =3D 0<br>[INFO] [0/Radio_0] RX SWB =
=3D 1<br>[INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>[INFO] [0/Radio_0] RX VCTXR=
X_SW =3D 0<br>[INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>[INFO] [0/Radio_0] =
RX band =3D 6<br>[INFO] [0/Radio_0] RX SW1 =3D 5<br>[INFO] [0/Radio_0] RX S=
WC =3D 0<br>[INFO] [0/Radio_0] RX SWB =3D 1<br>[INFO] [0/Radio_0] RX VCRX_S=
W =3D 1<br>[INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>[INFO] [0/Radio_0] RX f=
req =3D 2.4e+09<br>[INFO] [0/Radio_0] RX band =3D 6<br>[INFO] [0/Radio_0] R=
X SW1 =3D 5<br>[INFO] [0/Radio_0] RX SWC =3D 0<br>[INFO] [0/Radio_0] RX SWB=
 =3D 1<br>[INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>[INFO] [0/Radio_0] RX VCTX=
RX_SW =3D 0<br>[INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>[INFO] [0/Radio_0]=
 RX band =3D 6<br>[INFO] [0/Radio_0] RX SW1 =3D 5<br>[INFO] [0/Radio_0] RX =
SWC =3D 0<br>[INFO] [0/Radio_0] RX SWB =3D 1<br>[INFO] [0/Radio_0] RX VCRX_=
SW =3D 1<br>[INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>[INFO] [0/Radio_0] RX =
freq =3D 2.4e+09<br>[INFO] [0/Radio_0] RX band =3D 6<br>[INFO] [0/Radio_0] =
RX SW1 =3D 5<br>[INFO] [0/Radio_0] RX SWC =3D 0<br>[INFO] [0/Radio_0] RX SW=
B =3D 1<br>[INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>[INFO] [0/Radio_0] RX VCT=
XRX_SW =3D 0<br>[INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>[INFO] [0/Radio_0=
] RX band =3D 6<br>[INFO] [0/Radio_0] RX SW1 =3D 5<br>[INFO] [0/Radio_0] RX=
 SWC =3D 0<br>[INFO] [0/Radio_0] RX SWB =3D 1<br>[INFO] [0/Radio_0] RX VCRX=
_SW =3D 1<br>[INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>[INFO] [0/Radio_0] Pe=
rforming CODEC loopback test... <br>[INFO] [0/Radio_0] CODEC loopback test =
passed<br>[INFO] [0/Radio_0] Performing CODEC loopback test... <br>[INFO] [=
0/Radio_0] CODEC loopback test passed<br>=C2=A0 ___________________________=
__________________________<br>=C2=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Device: E30=
0-Series Device<br>| =C2=A0 =C2=A0 ________________________________________=
_____________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard=
: ni-e31x-313179A<br>| =C2=A0 | =C2=A0 mpm_version: 3.15.0.git-g6563c537<br=
>| =C2=A0 | =C2=A0 pid: 30675<br>| =C2=A0 | =C2=A0 product: e310_sg3<br>| =
=C2=A0 | =C2=A0 rev: 7<br>| =C2=A0 | =C2=A0 rpc_connection: local<br>| =C2=
=A0 | =C2=A0 serial: 313179A<br>| =C2=A0 | =C2=A0 type: e3xx<br>| =C2=A0 | =
=C2=A0 MPM Version: 1.2<br>| =C2=A0 | =C2=A0 FPGA Version: 1.0<br>| =C2=A0 =
| =C2=A0 FPGA git hash: f52a643.clean<br>| =C2=A0 | =C2=A0 RFNoC capable: Y=
es<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 Time sources: =C2=A0internal,=
 external, gpsdo<br>| =C2=A0 | =C2=A0 Clock sources: internal<br>| =C2=A0 |=
 =C2=A0 Sensors: ref_locked, temp_fpga, temp_mb<br>| =C2=A0 | =C2=A0 =C2=A0=
 _____________________________________________________<br>| =C2=A0 | =C2=A0=
 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: A<br>| =C2=
=A0 | =C2=A0 | =C2=A0 =C2=A0 ______________________________________________=
_______<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0=
 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX<=
br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, ad9361_temperatu=
re, rssi, lo_lock<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000=
 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0=
 to 76.0 step 1.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range=
: 20000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offs=
et: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 _______________________________=
______________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 1<br>| =C2=A0 | =C2=A0 =
| =C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antenna=
s: RX2, TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, ad=
9361_temperature, rssi, lo_lock<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq=
 range: 70.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain =
range PGA: 0.0 to 76.0 step 1.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 B=
andwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0=
 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 __________________=
___________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<b=
r>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Codec: A<br>| =C2=A0=
 | =C2=A0 | =C2=A0 | =C2=A0 Name: AD9361 Dual ADC<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 =C2=A0 ___________=
__________________________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>=
| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: A<br>| =C2=A0 | =C2=A0 =
| =C2=A0 =C2=A0 _____________________________________________________<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 TX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx=
<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, ad9361_temperature<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 st=
ep 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 =C2=A0 _____________________________________________________<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 TX Frontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx=
<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, ad9361_temperature<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 st=
ep 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 =C2=A0 _____________________________________________________<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 TX Codec: A<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: AD9361 =
Dual DAC<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =
=C2=A0 | =C2=A0 =C2=A0 ____________________________________________________=
_<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =
RFNoC blocks on this device:<br>| =C2=A0 | =C2=A0 | =C2=A0 <br>| =C2=A0 | =
=C2=A0 | =C2=A0 * Radio_0<br>| =C2=A0 | =C2=A0 | =C2=A0 * DDC_0<br>| =C2=A0=
 | =C2=A0 | =C2=A0 * DUC_0<br></div><div><br></div><div>It does appear howe=
ver that the command runs properly even without the USB files being availab=
le.</div><div><br></div><div>As for GNU radio, well that won&#39;t cross co=
mpile. The base installation works with no issues, but when I go to cross c=
ompile in the SDK environment for 3.15, I get the following issue:</div><di=
v><br></div><div>~/rfnoc/src/gnuradio/build-arm$ cmake -Wno-dev -DCMAKE_TOO=
LCHAIN_FILE=3D~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake -DEN=
ABLE_GR_WXGUI=3DOFF -DENABLE_GR_VOCODER=3DOFF -DENABLE_GR_DTV=3DOFF -DENABL=
E_GR_ATSC=3DOFF -DENABLE_DOXYGEN=3DOFF -DCMAKE_INSTALL_PREFIX=3D/usr ../<br=
>-- Build type not specified: defaulting to release.<br>-- Build type set t=
o Release.<br>-- Extracting version information from git describe...<br>-- =
Compiler Version: arm-oe-linux-gnueabi-gcc (GCC) 7.3.0<br>Copyright (C) 201=
7 Free Software Foundation, Inc.<br>This is free software; see the source f=
or copying conditions.=C2=A0 There is NO<br>warranty; not even for MERCHANT=
ABILITY or FITNESS FOR A PARTICULAR PURPOSE.<br>-- Compiler Flags: /home/jo=
n/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-=
linux-gnueabi-gcc:::-O3 -DNDEBUG =C2=A0-O2 -pipe -g -feliminate-unused-debu=
g-types =C2=A0-std=3Dgnu99 -fvisibility=3Dhidden -Wsign-compare -Wall -Wno-=
uninitialized<br>/home/jon/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm=
-oe-linux-gnueabi/arm-oe-linux-gnueabi-g++:::-O3 -DNDEBUG =C2=A0-O2 -pipe -=
g -feliminate-unused-debug-types =C2=A0-fvisibility=3Dhidden -Wsign-compare=
 -Wall -Wno-uninitialized<br>-- ADDING PERF COUNTERS<br>-- Building Static =
Libraries: OFF<br>-- Boost version: 1.66.0<br>-- Found the following Boost =
libraries:<br>-- =C2=A0 date_time<br>-- =C2=A0 program_options<br>-- =C2=A0=
 filesystem<br>-- =C2=A0 system<br>-- =C2=A0 regex<br>-- =C2=A0 thread<br>-=
- =C2=A0 chrono<br>-- =C2=A0 atomic<br>-- <br>-- Checking for module SWIG<b=
r>-- Found SWIG version 3.0.12.<br>-- <br>-- The build system will automati=
cally enable all components.<br>-- Use -DENABLE_DEFAULT=3DOFF to disable co=
mponents by default.<br>-- <br>-- Configuring python-support support...<br>=
-- =C2=A0 Dependency PYTHONLIBS_FOUND =3D TRUE<br>-- =C2=A0 Dependency SWIG=
_FOUND =3D TRUE<br>-- =C2=A0 Dependency SWIG_VERSION_CHECK =3D TRUE<br>-- =
=C2=A0 Enabling python-support support.<br>-- =C2=A0 Override with -DENABLE=
_PYTHON=3DON/OFF<br>-- Checking for module &#39;cppunit&#39;<br>-- =C2=A0 N=
o package &#39;cppunit&#39; found<br>-- Could NOT find CPPUNIT (missing: CP=
PUNIT_INCLUDE_DIRS) <br>-- <br>-- Configuring testing-support support...<br=
>-- =C2=A0 Dependency CPPUNIT_FOUND =3D FALSE<br>CMake Error at cmake/Modul=
es/GrComponent.cmake:75 (message):<br>=C2=A0 user force-enabled testing-sup=
port but configuration checked failed<br>Call Stack (most recent call first=
):<br>=C2=A0 CMakeLists.txt:373 (GR_REGISTER_COMPONENT)<br><br><br>-- Confi=
guring incomplete, errors occurred!<br>See also &quot;/home/jon/rfnoc/src/g=
nuradio/build-arm/CMakeFiles/CMakeOutput.log&quot;.<br>See also &quot;/home=
/jon/rfnoc/src/gnuradio/build-arm/CMakeFiles/CMakeError.log&quot;.<br></div=
><div><br></div><div>I have attached the Output and Error logs as well.=C2=
=A0</div><div><br></div><div>In comparing the sysroot/ folders under the rf=
noc/oe repository, there is a lot of files missing from the 3.15 build that=
 are in the 3.14 build. So it appears to be that the SDK is not correct.=C2=
=A0</div><div><br></div><div>Any assistance in getting these issues resolve=
d would be most helpful.=C2=A0</div><div><br></div><div>Regards,</div><div>=
Jon Lockhart</div></div>
</div></div></div>
</blockquote></div>
</blockquote></div></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000f2478805950a288f--


--===============2017713399188204536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2017713399188204536==--

