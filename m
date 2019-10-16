Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 806B6D9830
	for <lists+usrp-users@lfdr.de>; Wed, 16 Oct 2019 19:06:28 +0200 (CEST)
Received: from [::1] (port=49630 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKmkk-00024T-RW; Wed, 16 Oct 2019 13:06:26 -0400
Received: from mail-lf1-f50.google.com ([209.85.167.50]:40772)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jlockhartrt@gmail.com>)
 id 1iKmkf-0001pZ-Ux
 for usrp-users@lists.ettus.com; Wed, 16 Oct 2019 13:06:22 -0400
Received: by mail-lf1-f50.google.com with SMTP id f23so2603582lfk.7
 for <usrp-users@lists.ettus.com>; Wed, 16 Oct 2019 10:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4MZbzeHKPMdG1rXu0nqjiX/F+7h6OaeoFY9EEpn1+bI=;
 b=WWaAVU9DLdVu2zVz6g+cCLRSDRDvlS4Tk7f9m1bhujzpw7f8p8baM9kMUCmCCBc04f
 /UjDfHBwJvpToemX99mUSfeuIj9VkqdbY6J2ucpOSOYvEtGD+P72zSnTvAEmJl14xPhT
 ae2w2M4SRMiK9yHqOUU9QinyJ2POKgzO0E5gViyVVzCIDFHe3iHC1FmlVWorvN/jy4Do
 U4QCQEXcKgC6D1nQuE0ouAF4Qqo0AVOtgUsI+ZDEa65y3lMAEfOk0udD73Qhyt/WqCOZ
 KSMPJ82zhGurNHXYkut++Ct/d6Cx+9e3pGxsEFyT88FUgCwkVSGBfGvlKJptap8Sz+Z4
 UwVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4MZbzeHKPMdG1rXu0nqjiX/F+7h6OaeoFY9EEpn1+bI=;
 b=YSc9BnbXMntGblqaAIKmKEJadKHXyZUZymsk54tX5xwCsb/CJNXrwGN1lnJG2MMeVM
 lh8t7S6eGD5T1IXQJ/9M7IwLEU8rFAxAKQTlsZX5RTul6lqc2t26ymrccjsJcAGMjcdq
 UGXjgf+UqyDoNSONhgv6tjNDa8EWO2BqAoMe1WJSMh28xf5JKgaF/W2P7QJda75blAlP
 KC9mX4Dh2K1N+fOuiuK10MIyoKu/oVClX0JLF8vztpkBCj82l+W3XwLy8DBvVFJevSJT
 E0h7sXOMZByUOB2M6riKeZ66+Jqd9mEkdPCnkOme9cQQ4HPal0Y8nuvN9mCV/BYDwrIP
 k5dA==
X-Gm-Message-State: APjAAAWjFGEiril6wuexqnUgGMLmu8S3xoX9jCDmPI7q/lZxHo3kwhic
 v6C95zaGqZcNonQS6W622IUUzcSWeXw9+2Mq6pg=
X-Google-Smtp-Source: APXvYqwRhwe4M3cNIBUsHFTFOG41e8Ag0hMh9zyjSmnDQOvACLUXZJEuIFsD7ZPqKQ/2nrXjjXjownUydFYQfDsKkTY=
X-Received: by 2002:a19:750:: with SMTP id 77mr6362393lfh.81.1571245540586;
 Wed, 16 Oct 2019 10:05:40 -0700 (PDT)
MIME-Version: 1.0
References: <CALY+5sJKrJzT9ecciKB9nkygF7_22Wou1QjY8OU760_qSXwYfw@mail.gmail.com>
 <CALY+5sJ2gPzYgD1yStvgS=zhG-gxkK7ytrxApnyiJm7nyW9tvQ@mail.gmail.com>
 <CAL263ixQZpvqydB_zLGNbdYPhF_Oz7BGJN=6YrXwMUxpkMi9EQ@mail.gmail.com>
 <CALY+5sJETXy02oMBVwt9R-MYOeLZgHUXzGEVqv2TPs=3xJBeJA@mail.gmail.com>
In-Reply-To: <CALY+5sJETXy02oMBVwt9R-MYOeLZgHUXzGEVqv2TPs=3xJBeJA@mail.gmail.com>
Date: Wed, 16 Oct 2019 13:05:29 -0400
Message-ID: <CALY+5sK26ZavAaEFmDzYLa16j8x-Nb_Cd1udgH_ALyM7QE+yLw@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
Content-Type: multipart/mixed; boundary="0000000000004d4cc705950a1c9f"
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

--0000000000004d4cc705950a1c9f
Content-Type: multipart/alternative; boundary="0000000000004d4cc205950a1c9d"

--0000000000004d4cc205950a1c9d
Content-Type: text/plain; charset="UTF-8"

Greetings Nate,

So been working through your instructions you linked and everything appears
to be good on the software end. It is all cross-compiling and running on
the E312. Unfortunately there appears to be a new issue. So when running
the GUI for building an FGPA bit file, per the instructions, I have
included an FFT, Window, and Fosphor, and selected the option to "File with
FIFOS," which causes the build to fail. The GUI reports for the E310_SG3 it
can support 14 blocks. I tested this with the command line version and 14
also fails. The instructions show a command line option of 5 modules
(blocks) which builds fine. If I up it to 6 it immediately fails. I have
attached a copy of the failure output as a .txt file for 6 blocks.

Regards,
Jon


On Fri, Oct 11, 2019 at 2:51 PM Jonathan Lockhart <jlockhartrt@gmail.com>
wrote:

> Greetings Nate,
>
> Thanks for getting back to me so quickly. I will be sure to flash the OS
> to release 4 and roll back my dev environment to match the instructions.
>
> Regards,
> Jon Lockhart
>
>
> On Fri, Oct 11, 2019, 1:20 PM Nate Temple <nate.temple@ettus.com> wrote:
>
>> Hi Jon,
>>
>> If you are following this app note [0], I would recommend starting with
>> the release-4 image. The pre-3.15 MPM based image that has been released is
>> currently a "beta" release. It lacks several of the dependencies required
>> to build out GNU Radio. We are working on a new release and hope to have it
>> posted soon.
>>
>> [0] -
>> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
>>
>>
>> Regards,
>> Nate Temple
>>
>> On Fri, Oct 11, 2019 at 10:14 AM Jonathan Lockhart <jlockhartrt@gmail.com>
>> wrote:
>>
>>> Greetings Ettus Radio List,
>>>
>>> I have recently acquired and began using an Ettus E312 and have been
>>> trying to configure the dev host and the cross compile environment.
>>> Unfortunately I am having issues completing some of these tasks with the
>>> pre-release version of 3.15 image that Ettus mentions you should use in the
>>> manual for the E312. I forward those issues to support but have heard no
>>> reply. Please refer below to the issues I am reporting. The GNURadio cross
>>> compile issue with the SDK and environment is the more crucial one at the
>>> moment. I was wondering if anyone else has been experiencing these issues
>>> and if so how did you proceed to get it resolved. Is there an image, sdk,
>>> GNURadio version that I should be using other than the 3.15 image and
>>> instructions that Ettus currently recommends using until a stable RC is
>>> provided?
>>>
>>> Thanks for your help and feedback.
>>>
>>> Regards,
>>> Jon Lockhart
>>>
>>>
>>> ---------- Forwarded message ---------
>>> From: Jonathan Lockhart <jlockhartrt@gmail.com>
>>> Date: Mon, Oct 7, 2019 at 3:16 PM
>>> Subject: Issues Completing Radio Build and Installation
>>> To: <support@ettus.com>
>>>
>>>
>>> Greetings Ettus Support,
>>>
>>> I recently acquired an Ettus E312 and I was looking to do some
>>> development on it. Unfortunately I am have been having some issues. The
>>> manual via files.ettus.com and the "Getting Started" both failed to
>>> provide a working environment.
>>>
>>> The farthest I got was downloading the meta section direction for the
>>> E312 to get 3.15.0 image and sdk for the radio, and then following this
>>> guide page for 3.14, correcting the UHD install accordingly to comply with
>>> 3.15. (Guide
>>> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source#Running_RFNoC_Fosphor
>>> )
>>>
>>> When mounting the cross compiled UHD folders via the instructions on the
>>> radio, and using the uhd_usrp_probe command, there is an error checking for
>>> the libusb_init information.
>>>
>>> root@ni-e31x-313179A:~/newinstall# uhd_usrp_probe
>>> [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
>>> UHD_3.15.0.HEAD-0-g6563c537
>>> [ERROR] [UHD] Device discovery error: AssertionError:
>>> libusb_init(&_context) == 0
>>>   in libusb_session_impl::libusb_session_impl()
>>>   at /home/jon/rfnoc/src/uhd/host/lib/transport/libusb1_base.cpp:36
>>>
>>> [ERROR] [UHD] Device discovery error: AssertionError:
>>> libusb_init(&_context) == 0
>>>   in libusb_session_impl::libusb_session_impl()
>>>   at /home/jon/rfnoc/src/uhd/host/lib/transport/libusb1_base.cpp:36
>>>
>>> [ERROR] [UHD] Device discovery error: AssertionError:
>>> libusb_init(&_context) == 0
>>>   in libusb_session_impl::libusb_session_impl()
>>>   at /home/jon/rfnoc/src/uhd/host/lib/transport/libusb1_base.cpp:36
>>>
>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>>> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg3,serial=313179A,claimed=False
>>> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
>>> [INFO] [MPM.PeriphManager] init() called with device args
>>> `product=e310_sg3,mgmt_addr=127.0.0.1'.
>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>> 0x12AD100000003310)
>>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
>>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>>> [INFO] [0/Radio_0] RX band = 6
>>> [INFO] [0/Radio_0] RX SW1 = 5
>>> [INFO] [0/Radio_0] RX SWC = 0
>>> [INFO] [0/Radio_0] RX SWB = 1
>>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>>> [INFO] [0/Radio_0] RX band = 6
>>> [INFO] [0/Radio_0] RX SW1 = 5
>>> [INFO] [0/Radio_0] RX SWC = 0
>>> [INFO] [0/Radio_0] RX SWB = 1
>>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>>> [INFO] [0/Radio_0] RX band = 6
>>> [INFO] [0/Radio_0] RX SW1 = 5
>>> [INFO] [0/Radio_0] RX SWC = 0
>>> [INFO] [0/Radio_0] RX SWB = 1
>>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>>> [INFO] [0/Radio_0] RX band = 6
>>> [INFO] [0/Radio_0] RX SW1 = 5
>>> [INFO] [0/Radio_0] RX SWC = 0
>>> [INFO] [0/Radio_0] RX SWB = 1
>>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>>> [INFO] [0/Radio_0] RX band = 6
>>> [INFO] [0/Radio_0] RX SW1 = 5
>>> [INFO] [0/Radio_0] RX SWC = 0
>>> [INFO] [0/Radio_0] RX SWB = 1
>>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>>> [INFO] [0/Radio_0] RX band = 6
>>> [INFO] [0/Radio_0] RX SW1 = 5
>>> [INFO] [0/Radio_0] RX SWC = 0
>>> [INFO] [0/Radio_0] RX SWB = 1
>>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>>> [INFO] [0/Radio_0] Performing CODEC loopback test...
>>> [INFO] [0/Radio_0] CODEC loopback test passed
>>> [INFO] [0/Radio_0] Performing CODEC loopback test...
>>> [INFO] [0/Radio_0] CODEC loopback test passed
>>>   _____________________________________________________
>>>  /
>>> |       Device: E300-Series Device
>>> |     _____________________________________________________
>>> |    /
>>> |   |       Mboard: ni-e31x-313179A
>>> |   |   mpm_version: 3.15.0.git-g6563c537
>>> |   |   pid: 30675
>>> |   |   product: e310_sg3
>>> |   |   rev: 7
>>> |   |   rpc_connection: local
>>> |   |   serial: 313179A
>>> |   |   type: e3xx
>>> |   |   MPM Version: 1.2
>>> |   |   FPGA Version: 1.0
>>> |   |   FPGA git hash: f52a643.clean
>>> |   |   RFNoC capable: Yes
>>> |   |
>>> |   |   Time sources:  internal, external, gpsdo
>>> |   |   Clock sources: internal
>>> |   |   Sensors: ref_locked, temp_fpga, temp_mb
>>> |   |     _____________________________________________________
>>> |   |    /
>>> |   |   |       RX Dboard: A
>>> |   |   |     _____________________________________________________
>>> |   |   |    /
>>> |   |   |   |       RX Frontend: 0
>>> |   |   |   |   Name: E3xx
>>> |   |   |   |   Antennas: RX2, TX/RX
>>> |   |   |   |   Sensors: lo_locked, ad9361_temperature, rssi, lo_lock
>>> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
>>> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>> |   |   |   |   Connection Type: IQ
>>> |   |   |   |   Uses LO offset: No
>>> |   |   |     _____________________________________________________
>>> |   |   |    /
>>> |   |   |   |       RX Frontend: 1
>>> |   |   |   |   Name: E3xx
>>> |   |   |   |   Antennas: RX2, TX/RX
>>> |   |   |   |   Sensors: lo_locked, ad9361_temperature, rssi, lo_lock
>>> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
>>> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>> |   |   |   |   Connection Type: IQ
>>> |   |   |   |   Uses LO offset: No
>>> |   |   |     _____________________________________________________
>>> |   |   |    /
>>> |   |   |   |       RX Codec: A
>>> |   |   |   |   Name: AD9361 Dual ADC
>>> |   |   |   |   Gain Elements: None
>>> |   |     _____________________________________________________
>>> |   |    /
>>> |   |   |       TX Dboard: A
>>> |   |   |     _____________________________________________________
>>> |   |   |    /
>>> |   |   |   |       TX Frontend: 0
>>> |   |   |   |   Name: E3xx
>>> |   |   |   |   Antennas: TX/RX
>>> |   |   |   |   Sensors: lo_locked, ad9361_temperature
>>> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
>>> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>> |   |   |   |   Connection Type: IQ
>>> |   |   |   |   Uses LO offset: No
>>> |   |   |     _____________________________________________________
>>> |   |   |    /
>>> |   |   |   |       TX Frontend: 1
>>> |   |   |   |   Name: E3xx
>>> |   |   |   |   Antennas: TX/RX
>>> |   |   |   |   Sensors: lo_locked, ad9361_temperature
>>> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
>>> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
>>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>> |   |   |   |   Connection Type: IQ
>>> |   |   |   |   Uses LO offset: No
>>> |   |   |     _____________________________________________________
>>> |   |   |    /
>>> |   |   |   |       TX Codec: A
>>> |   |   |   |   Name: AD9361 Dual DAC
>>> |   |   |   |   Gain Elements: None
>>> |   |     _____________________________________________________
>>> |   |    /
>>> |   |   |       RFNoC blocks on this device:
>>> |   |   |
>>> |   |   |   * Radio_0
>>> |   |   |   * DDC_0
>>> |   |   |   * DUC_0
>>>
>>> It does appear however that the command runs properly even without the
>>> USB files being available.
>>>
>>> As for GNU radio, well that won't cross compile. The base installation
>>> works with no issues, but when I go to cross compile in the SDK environment
>>> for 3.15, I get the following issue:
>>>
>>> ~/rfnoc/src/gnuradio/build-arm$ cmake -Wno-dev
>>> -DCMAKE_TOOLCHAIN_FILE=~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake
>>> -DENABLE_GR_WXGUI=OFF -DENABLE_GR_VOCODER=OFF -DENABLE_GR_DTV=OFF
>>> -DENABLE_GR_ATSC=OFF -DENABLE_DOXYGEN=OFF -DCMAKE_INSTALL_PREFIX=/usr ../
>>> -- Build type not specified: defaulting to release.
>>> -- Build type set to Release.
>>> -- Extracting version information from git describe...
>>> -- Compiler Version: arm-oe-linux-gnueabi-gcc (GCC) 7.3.0
>>> Copyright (C) 2017 Free Software Foundation, Inc.
>>> This is free software; see the source for copying conditions.  There is
>>> NO
>>> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
>>> PURPOSE.
>>> -- Compiler Flags:
>>> /home/jon/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc:::-O3
>>> -DNDEBUG  -O2 -pipe -g -feliminate-unused-debug-types  -std=gnu99
>>> -fvisibility=hidden -Wsign-compare -Wall -Wno-uninitialized
>>> /home/jon/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-g++:::-O3
>>> -DNDEBUG  -O2 -pipe -g -feliminate-unused-debug-types  -fvisibility=hidden
>>> -Wsign-compare -Wall -Wno-uninitialized
>>> -- ADDING PERF COUNTERS
>>> -- Building Static Libraries: OFF
>>> -- Boost version: 1.66.0
>>> -- Found the following Boost libraries:
>>> --   date_time
>>> --   program_options
>>> --   filesystem
>>> --   system
>>> --   regex
>>> --   thread
>>> --   chrono
>>> --   atomic
>>> --
>>> -- Checking for module SWIG
>>> -- Found SWIG version 3.0.12.
>>> --
>>> -- The build system will automatically enable all components.
>>> -- Use -DENABLE_DEFAULT=OFF to disable components by default.
>>> --
>>> -- Configuring python-support support...
>>> --   Dependency PYTHONLIBS_FOUND = TRUE
>>> --   Dependency SWIG_FOUND = TRUE
>>> --   Dependency SWIG_VERSION_CHECK = TRUE
>>> --   Enabling python-support support.
>>> --   Override with -DENABLE_PYTHON=ON/OFF
>>> -- Checking for module 'cppunit'
>>> --   No package 'cppunit' found
>>> -- Could NOT find CPPUNIT (missing: CPPUNIT_INCLUDE_DIRS)
>>> --
>>> -- Configuring testing-support support...
>>> --   Dependency CPPUNIT_FOUND = FALSE
>>> CMake Error at cmake/Modules/GrComponent.cmake:75 (message):
>>>   user force-enabled testing-support but configuration checked failed
>>> Call Stack (most recent call first):
>>>   CMakeLists.txt:373 (GR_REGISTER_COMPONENT)
>>>
>>>
>>> -- Configuring incomplete, errors occurred!
>>> See also
>>> "/home/jon/rfnoc/src/gnuradio/build-arm/CMakeFiles/CMakeOutput.log".
>>> See also
>>> "/home/jon/rfnoc/src/gnuradio/build-arm/CMakeFiles/CMakeError.log".
>>>
>>> I have attached the Output and Error logs as well.
>>>
>>> In comparing the sysroot/ folders under the rfnoc/oe repository, there
>>> is a lot of files missing from the 3.15 build that are in the 3.14 build.
>>> So it appears to be that the SDK is not correct.
>>>
>>> Any assistance in getting these issues resolved would be most helpful.
>>>
>>> Regards,
>>> Jon Lockhart
>>>
>>

--0000000000004d4cc205950a1c9d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings Nate,<div><br></div><div>So been working through=
 your instructions you linked and everything appears to be good on the soft=
ware end. It is all cross-compiling and running on the E312. Unfortunately =
there appears to be a new issue. So when running the GUI for building an FG=
PA bit file, per the instructions, I have included an FFT, Window, and Fosp=
hor, and selected the option to &quot;File with FIFOS,&quot; which causes t=
he build to fail. The GUI reports for the E310_SG3 it can support 14 blocks=
. I tested this with the command line version and 14 also fails. The instru=
ctions show a command line option of 5 modules (blocks) which builds fine. =
If I up it to 6 it immediately fails. I have attached a copy of the failure=
 output as a .txt file for 6 blocks.=C2=A0</div><div><br></div><div>Regards=
,</div><div>Jon</div><div><br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2019 at 2:51 PM Jonatha=
n Lockhart &lt;<a href=3D"mailto:jlockhartrt@gmail.com">jlockhartrt@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"auto"><div>Greetings Nate,<div dir=3D"auto"><br></div><div di=
r=3D"auto">Thanks for getting=C2=A0back to me so quickly. I will be sure to=
 flash the OS to release 4 and roll back my dev environment to match the in=
structions.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Regard=
s,=C2=A0</div><div dir=3D"auto">Jon Lockhart=C2=A0</div><br><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2019=
, 1:20 PM Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=
=3D"_blank">nate.temple@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,helvetica,sans-serif">Hi Jon,<br><br>If you =
are following this app note [0], I would recommend starting with the releas=
e-4 image. The pre-3.15 MPM based image that has been released is currently=
 a &quot;beta&quot; release. It lacks several of the dependencies required =
to build out GNU Radio. We are working on a new release and hope to have it=
 posted soon. <br><br>[0] - <a href=3D"https://kb.ettus.com/Software_Develo=
pment_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Sou=
rce" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/Software_Dev=
elopment_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_=
Source</a><br><br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2019 at =
10:14 AM Jonathan Lockhart &lt;<a href=3D"mailto:jlockhartrt@gmail.com" rel=
=3D"noreferrer" target=3D"_blank">jlockhartrt@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v>Greetings Ettus Radio List,</div><div><br></div><div>I have recently acqu=
ired and began using an Ettus E312 and have been trying to configure the de=
v host and the cross compile environment. Unfortunately I am having issues =
completing some of these tasks with the pre-release version of 3.15 image t=
hat Ettus mentions you should use in the manual for the E312. I forward tho=
se issues to support but have heard no reply. Please refer below to the iss=
ues I am reporting. The GNURadio cross compile issue with the SDK and envir=
onment is the more crucial one at the moment. I was wondering if anyone els=
e has been experiencing these issues and if so how did you proceed to get i=
t resolved. Is there an image, sdk, GNURadio version that I should be using=
 other than the 3.15 image and instructions that Ettus currently recommends=
 using until a stable RC is provided? <br></div><div><br></div><div>Thanks =
for your help and feedback. <br></div><div><br></div><div>Regards,</div><di=
v>Jon Lockhart</div><div><br></div><div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded message ---------<br=
>From: <b class=3D"gmail_sendername" dir=3D"auto">Jonathan Lockhart</b> <sp=
an dir=3D"auto">&lt;<a href=3D"mailto:jlockhartrt@gmail.com" rel=3D"norefer=
rer" target=3D"_blank">jlockhartrt@gmail.com</a>&gt;</span><br>Date: Mon, O=
ct 7, 2019 at 3:16 PM<br>Subject: Issues Completing Radio Build and Install=
ation<br>To:  &lt;<a href=3D"mailto:support@ettus.com" rel=3D"noreferrer" t=
arget=3D"_blank">support@ettus.com</a>&gt;<br></div><br><br><div dir=3D"ltr=
">Greetings Ettus Support,<div><br></div><div>I recently acquired an Ettus =
E312 and I was looking to do some development on it. Unfortunately I am hav=
e been having some issues. The manual via <a href=3D"http://files.ettus.com=
" rel=3D"noreferrer" target=3D"_blank">files.ettus.com</a> and the &quot;Ge=
tting Started&quot; both failed to provide a working environment.=C2=A0</di=
v><div><br></div><div>The farthest I got was downloading the meta section d=
irection for the E312 to get 3.15.0 image and sdk for the radio, and then f=
ollowing this guide page for 3.14, correcting the UHD install accordingly t=
o comply with 3.15. (Guide=C2=A0<a href=3D"https://kb.ettus.com/Software_De=
velopment_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from=
_Source#Running_RFNoC_Fosphor" rel=3D"noreferrer" target=3D"_blank">https:/=
/kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_=
GNU_Radio_/_gr-ettus_from_Source#Running_RFNoC_Fosphor</a>)</div><div><br><=
/div><div>When mounting the cross compiled UHD folders via the instructions=
 on the radio, and using the uhd_usrp_probe command, there is an error chec=
king for the libusb_init information.=C2=A0</div><div><br></div><div>root@n=
i-e31x-313179A:~/newinstall# uhd_usrp_probe <br>[INFO] [UHD] linux; GNU C++=
 version 7.3.0; Boost_106600; UHD_3.15.0.HEAD-0-g6563c537<br>[ERROR] [UHD] =
Device discovery error: AssertionError: libusb_init(&amp;_context) =3D=3D 0=
<br>=C2=A0 in libusb_session_impl::libusb_session_impl()<br>=C2=A0 at /home=
/jon/rfnoc/src/uhd/host/lib/transport/libusb1_base.cpp:36<br><br>[ERROR] [U=
HD] Device discovery error: AssertionError: libusb_init(&amp;_context) =3D=
=3D 0<br>=C2=A0 in libusb_session_impl::libusb_session_impl()<br>=C2=A0 at =
/home/jon/rfnoc/src/uhd/host/lib/transport/libusb1_base.cpp:36<br><br>[ERRO=
R] [UHD] Device discovery error: AssertionError: libusb_init(&amp;_context)=
 =3D=3D 0<br>=C2=A0 in libusb_session_impl::libusb_session_impl()<br>=C2=A0=
 at /home/jon/rfnoc/src/uhd/host/lib/transport/libusb1_base.cpp:36<br><br>[=
INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D12=
7.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D313179A,claimed=3DFalse<br>=
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>[INFO] [MPM.PeriphM=
anager] init() called with device args `product=3De310_sg3,mgmt_addr=3D127.=
0.0.1&#39;.<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12A=
D100000003310)<br>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDD=
C0000000000000)<br>[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD=
0C0000000000002)<br>[INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>[INFO] [0/Rad=
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
_0] RX freq =3D 2.4e+09<br>[INFO] [0/Radio_0] RX band =3D 6<br>[INFO] [0/Ra=
dio_0] RX SW1 =3D 5<br>[INFO] [0/Radio_0] RX SWC =3D 0<br>[INFO] [0/Radio_0=
] RX SWB =3D 1<br>[INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>[INFO] [0/Radio_0]=
 RX VCTXRX_SW =3D 0<br>[INFO] [0/Radio_0] Performing CODEC loopback test...=
 <br>[INFO] [0/Radio_0] CODEC loopback test passed<br>[INFO] [0/Radio_0] Pe=
rforming CODEC loopback test... <br>[INFO] [0/Radio_0] CODEC loopback test =
passed<br>=C2=A0 _____________________________________________________<br>=
=C2=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Device: E300-Series Device<br>| =C2=A0 =
=C2=A0 _____________________________________________________<br>| =C2=A0 =
=C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-e31x-313179A<br>| =C2=
=A0 | =C2=A0 mpm_version: 3.15.0.git-g6563c537<br>| =C2=A0 | =C2=A0 pid: 30=
675<br>| =C2=A0 | =C2=A0 product: e310_sg3<br>| =C2=A0 | =C2=A0 rev: 7<br>|=
 =C2=A0 | =C2=A0 rpc_connection: local<br>| =C2=A0 | =C2=A0 serial: 313179A=
<br>| =C2=A0 | =C2=A0 type: e3xx<br>| =C2=A0 | =C2=A0 MPM Version: 1.2<br>|=
 =C2=A0 | =C2=A0 FPGA Version: 1.0<br>| =C2=A0 | =C2=A0 FPGA git hash: f52a=
643.clean<br>| =C2=A0 | =C2=A0 RFNoC capable: Yes<br>| =C2=A0 | =C2=A0 <br>=
| =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo<br>| =C2=A0=
 | =C2=A0 Clock sources: internal<br>| =C2=A0 | =C2=A0 Sensors: ref_locked,=
 temp_fpga, temp_mb<br>| =C2=A0 | =C2=A0 =C2=A0 ___________________________=
__________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: A<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0 _____________________________________________________<br>| =C2=A0 | =C2=
=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 R=
X Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0=
 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Sensors: lo_locked, ad9361_temperature, rssi, lo_lock<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6000.000 MHz<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>|=
 =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.=
0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br=
>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=
=A0 | =C2=A0 =C2=A0 _____________________________________________________<b=
r>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0=
 =C2=A0 =C2=A0 RX Frontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: =
E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX<br>| =C2=
=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, ad9361_temperature, rssi=
, lo_lock<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6000=
.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0=
 step 1.0 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 200000=
00.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Conne=
ction Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br=
>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ________________________________________=
_____________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Codec: A<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Name: AD9361 Dual ADC<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain El=
ements: None<br>| =C2=A0 | =C2=A0 =C2=A0 __________________________________=
___________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=
=A0 =C2=A0 =C2=A0 TX Dboard: A<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 _______=
______________________________________________<br>| =C2=A0 | =C2=A0 | =C2=
=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Fronten=
d: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0=
 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 S=
ensors: lo_locked, ad9361_temperature<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Freq range: 47.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 |=
 =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 |=
 =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0=
 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 _________=
____________________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =
=C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 1=
<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sens=
ors: lo_locked, ad9361_temperature<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 F=
req range: 47.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Ga=
in range PGA: 0.0 to 89.8 step 0.2 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 | =
=C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ____________=
_________________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Codec: A<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: AD9361 Dual DAC<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Gain Elements: None<br>| =C2=A0 | =C2=A0 =C2=A0 _____=
________________________________________________<br>| =C2=A0 | =C2=A0 =C2=
=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this devic=
e:<br>| =C2=A0 | =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 | =C2=A0 * Radio_0<b=
r>| =C2=A0 | =C2=A0 | =C2=A0 * DDC_0<br>| =C2=A0 | =C2=A0 | =C2=A0 * DUC_0<=
br></div><div><br></div><div>It does appear however that the command runs p=
roperly even without the USB files being available.</div><div><br></div><di=
v>As for GNU radio, well that won&#39;t cross compile. The base installatio=
n works with no issues, but when I go to cross compile in the SDK environme=
nt for 3.15, I get the following issue:</div><div><br></div><div>~/rfnoc/sr=
c/gnuradio/build-arm$ cmake -Wno-dev -DCMAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/g=
nuradio/cmake/Toolchains/oe-sdk_cross.cmake -DENABLE_GR_WXGUI=3DOFF -DENABL=
E_GR_VOCODER=3DOFF -DENABLE_GR_DTV=3DOFF -DENABLE_GR_ATSC=3DOFF -DENABLE_DO=
XYGEN=3DOFF -DCMAKE_INSTALL_PREFIX=3D/usr ../<br>-- Build type not specifie=
d: defaulting to release.<br>-- Build type set to Release.<br>-- Extracting=
 version information from git describe...<br>-- Compiler Version: arm-oe-li=
nux-gnueabi-gcc (GCC) 7.3.0<br>Copyright (C) 2017 Free Software Foundation,=
 Inc.<br>This is free software; see the source for copying conditions.=C2=
=A0 There is NO<br>warranty; not even for MERCHANTABILITY or FITNESS FOR A =
PARTICULAR PURPOSE.<br>-- Compiler Flags: /home/jon/rfnoc/oe/sysroots/x86_6=
4-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc:::-O3 -=
DNDEBUG =C2=A0-O2 -pipe -g -feliminate-unused-debug-types =C2=A0-std=3Dgnu9=
9 -fvisibility=3Dhidden -Wsign-compare -Wall -Wno-uninitialized<br>/home/jo=
n/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-=
linux-gnueabi-g++:::-O3 -DNDEBUG =C2=A0-O2 -pipe -g -feliminate-unused-debu=
g-types =C2=A0-fvisibility=3Dhidden -Wsign-compare -Wall -Wno-uninitialized=
<br>-- ADDING PERF COUNTERS<br>-- Building Static Libraries: OFF<br>-- Boos=
t version: 1.66.0<br>-- Found the following Boost libraries:<br>-- =C2=A0 d=
ate_time<br>-- =C2=A0 program_options<br>-- =C2=A0 filesystem<br>-- =C2=A0 =
system<br>-- =C2=A0 regex<br>-- =C2=A0 thread<br>-- =C2=A0 chrono<br>-- =C2=
=A0 atomic<br>-- <br>-- Checking for module SWIG<br>-- Found SWIG version 3=
.0.12.<br>-- <br>-- The build system will automatically enable all componen=
ts.<br>-- Use -DENABLE_DEFAULT=3DOFF to disable components by default.<br>-=
- <br>-- Configuring python-support support...<br>-- =C2=A0 Dependency PYTH=
ONLIBS_FOUND =3D TRUE<br>-- =C2=A0 Dependency SWIG_FOUND =3D TRUE<br>-- =C2=
=A0 Dependency SWIG_VERSION_CHECK =3D TRUE<br>-- =C2=A0 Enabling python-sup=
port support.<br>-- =C2=A0 Override with -DENABLE_PYTHON=3DON/OFF<br>-- Che=
cking for module &#39;cppunit&#39;<br>-- =C2=A0 No package &#39;cppunit&#39=
; found<br>-- Could NOT find CPPUNIT (missing: CPPUNIT_INCLUDE_DIRS) <br>--=
 <br>-- Configuring testing-support support...<br>-- =C2=A0 Dependency CPPU=
NIT_FOUND =3D FALSE<br>CMake Error at cmake/Modules/GrComponent.cmake:75 (m=
essage):<br>=C2=A0 user force-enabled testing-support but configuration che=
cked failed<br>Call Stack (most recent call first):<br>=C2=A0 CMakeLists.tx=
t:373 (GR_REGISTER_COMPONENT)<br><br><br>-- Configuring incomplete, errors =
occurred!<br>See also &quot;/home/jon/rfnoc/src/gnuradio/build-arm/CMakeFil=
es/CMakeOutput.log&quot;.<br>See also &quot;/home/jon/rfnoc/src/gnuradio/bu=
ild-arm/CMakeFiles/CMakeError.log&quot;.<br></div><div><br></div><div>I hav=
e attached the Output and Error logs as well.=C2=A0</div><div><br></div><di=
v>In comparing the sysroot/ folders under the rfnoc/oe repository, there is=
 a lot of files missing from the 3.15 build that are in the 3.14 build. So =
it appears to be that the SDK is not correct.=C2=A0</div><div><br></div><di=
v>Any assistance in getting these issues resolved would be most helpful.=C2=
=A0</div><div><br></div><div>Regards,</div><div>Jon Lockhart</div></div>
</div></div></div>
</blockquote></div>
</blockquote></div></div></div>
</blockquote></div>

--0000000000004d4cc205950a1c9d--
--0000000000004d4cc705950a1c9f
Content-Type: text/plain; charset="US-ASCII"; name="build_output.txt"
Content-Disposition: attachment; filename="build_output.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_k1tj0jwl0>
X-Attachment-Id: f_k1tj0jwl0

U2V0dGluZyB1cCBhIDY0LWJpdCBGUEdBIGJ1aWxkIGVudmlyb25tZW50IGZvciB0aGUgVVNSUC1F
M3gwLi4uCi0gVml2YWRvOiBGb3VuZCAoL29wdC9YaWxpbngvVml2YWRvLzIwMTcuNC9iaW4pCgpF
bnZpcm9ubWVudCBzdWNjZXNzZnVsbHkgaW5pdGlhbGl6ZWQuCm1ha2UgLWYgTWFrZWZpbGUuZTMw
MC5pbmMgYmluIE5BTUU9RTMxMF9SRk5PQ19zZzMgQVJDSD16eW5xIFBBUlRfSUQ9eGM3ejAyMC9j
bGc0ODQvLTMgVE9QX01PRFVMRT1lMzAwIFJGTk9DPTEgRTMxMD0xIEVYVFJBX0RFRlM9IlJGTk9D
PTEgRTMxMD0xIgptYWtlWzFdOiBFbnRlcmluZyBkaXJlY3RvcnkgJy9ob21lL2pvbi9yZm5vYy9z
cmMvdWhkL2ZwZ2Etc3JjL3VzcnAzL3RvcC9lMzAwJwpCVUlMREVSOiBDaGVja2luZyB0b29scy4u
LgoqIEdOVSBiYXNoLCB2ZXJzaW9uIDQuNC4yMCgxKS1yZWxlYXNlICh4ODZfNjQtcGMtbGludXgt
Z251KQoqIFB5dGhvbiAyLjcuOQoqIFZpdmFkbyB2MjAxNy40ICg2NC1iaXQpChtbMksNG1swbVVz
aW5nIHBhcnNlciBjb25maWd1cmF0aW9uIGZyb206IC9ob21lL2pvbi9yZm5vYy9zcmMvdWhkL2Zw
Z2Etc3JjL3VzcnAzL3RvcC9lMzAwL2Rldl9jb25maWcuanNvbhtbMG0KG1sxOzM0bVswMDowMDow
MF0gRXhlY3V0aW5nIGNvbW1hbmQ6IHZpdmFkbyAtbW9kZSBiYXRjaCAtc291cmNlIC9ob21lL2pv
bi9yZm5vYy9zcmMvdWhkL2ZwZ2Etc3JjL3VzcnAzL3RvcC9lMzAwL2J1aWxkX2UzMDAudGNsIC1s
b2cgYnVpbGQubG9nIC1qb3VybmFsIGUzMDAuam91G1swbQpbMDA6MDA6MDBdIEN1cnJlbnQgdGFz
azogSW5pdGlhbGl6YXRpb24gKysrIEN1cnJlbnQgUGhhc2U6IFN0YXJ0aW5nChtbMksNG1szM21D
UklUSUNBTCBXQVJOSU5HOiBbQ29tbW9uIDE3LTc0MV0gTm8gd3JpdGUgYWNjZXNzIHJpZ2h0IHRv
IHRoZSBsb2NhbCBUY2wgc3RvcmUgYXQgJy9ob21lL2pvbi8uWGlsaW54L1ZpdmFkby8yMDE3LjQv
WGlsaW54VGNsU3RvcmUnLiBYaWxpbnhUY2xTdG9yZSBpcyByZXZlcnRlZCB0byB0aGUgaW5zdGFs
bGF0aW9uIGFyZWEuIElmIHlvdSB3YW50IHRvIHVzZSBsb2NhbCBUY2wgU3RvcmUsIHBsZWFzZSBj
aGFuZ2UgdGhlIGFjY2VzcyByaWdodCBhbmQgcmVsYXVuY2ggVml2YWRvLhtbMG0KWzAwOjAwOjE5
XSBDdXJyZW50IHRhc2s6IEluaXRpYWxpemF0aW9uICsrKyBDdXJyZW50IFBoYXNlOiBGaW5pc2hl
ZAobWzJLDRtbMTszNG1bMDA6MDA6MTldIEV4ZWN1dGluZyBUY2w6IHN5bnRoX2Rlc2lnbiAtdG9w
IGUzMDAgLXBhcnQgeGM3ejAyMGNsZzQ4NC0zIC12ZXJpbG9nX2RlZmluZSBSRk5PQz0xIC12ZXJp
bG9nX2RlZmluZSBFMzEwPTEgLXZlcmlsb2dfZGVmaW5lIEdJVF9IQVNIPTMyJ2hmYmI4NWJkZiAt
ZGlyZWN0aXZlIEFyZWFPcHRpbWl6ZWRfaGlnaBtbMG0KG1szMm1bMDA6MDA6MTldIFN0YXJ0aW5n
IFN5bnRoZXNpcyBDb21tYW5kG1swbQpbMDA6MDA6MTldIEN1cnJlbnQgdGFzazogU3ludGhlc2lz
ICsrKyBDdXJyZW50IFBoYXNlOiBTdGFydGluZwobWzJLDRtbMzNtQ1JJVElDQUwgV0FSTklORzog
W1ZpdmFkbyAxMi00NzM5XSBzZXRfY2xvY2tfZ3JvdXBzOk5vIHZhbGlkIG9iamVjdChzKSBmb3Vu
ZCBmb3IgJy1ncm91cCBbZ2V0X2Nsb2NrcyAtaW5jbHVkZV9nZW5lcmF0ZWRfY2xvY2tzIGNsa19m
cGdhXzBdJy4gWy9ob21lL2pvbi9yZm5vYy9zcmMvdWhkL2ZwZ2Etc3JjL3VzcnAzL3RvcC9lMzAw
L2UzMTBfdGltaW5nLnhkYzoyMF0bWzBtChtbMzNtQ1JJVElDQUwgV0FSTklORzogW1ZpdmFkbyAx
Mi00NzM5XSBzZXRfY2xvY2tfZ3JvdXBzOk5vIHZhbGlkIG9iamVjdChzKSBmb3VuZCBmb3IgJy1n
cm91cCBbZ2V0X2Nsb2NrcyAtaW5jbHVkZV9nZW5lcmF0ZWRfY2xvY2tzIGNsazBdJy4gWy9ob21l
L2pvbi9yZm5vYy9zcmMvdWhkL2ZwZ2Etc3JjL3VzcnAzL3RvcC9lMzAwL2UzMTBfdGltaW5nLnhk
YzoyOF0bWzBtChtbMzNtQ1JJVElDQUwgV0FSTklORzogW1ZpdmFkbyAxMi00NzM5XSBzZXRfY2xv
Y2tfZ3JvdXBzOk5vIHZhbGlkIG9iamVjdChzKSBmb3VuZCBmb3IgJy1ncm91cCBbZ2V0X2Nsb2Nr
cyAtaW5jbHVkZV9nZW5lcmF0ZWRfY2xvY2tzIGNsa2R2XScuIFsvaG9tZS9qb24vcmZub2Mvc3Jj
L3VoZC9mcGdhLXNyYy91c3JwMy90b3AvZTMwMC9lMzEwX3RpbWluZy54ZGM6MjhdG1swbQpbMDA6
MDE6NTJdIEN1cnJlbnQgdGFzazogU3ludGhlc2lzICsrKyBDdXJyZW50IFBoYXNlOiBMb2FkaW5n
IFBhcnQgYW5kIFRpbWluZyBJbmZvcm1hdGlvbgobWzJLDVswMDowMjoxMl0gQ3VycmVudCB0YXNr
OiBTeW50aGVzaXMgKysrIEN1cnJlbnQgUGhhc2U6IFJUTCBDb21wb25lbnQgU3RhdGlzdGljcwob
WzJLDVswMDowMjoxMl0gQ3VycmVudCB0YXNrOiBTeW50aGVzaXMgKysrIEN1cnJlbnQgUGhhc2U6
IFJUTCBIaWVyYXJjaGljYWwgQ29tcG9uZW50IFN0YXRpc3RpY3MKG1sySw1bMDA6MDI6MTJdIEN1
cnJlbnQgdGFzazogU3ludGhlc2lzICsrKyBDdXJyZW50IFBoYXNlOiBQYXJ0IFJlc291cmNlIFN1
bW1hcnkKG1sySw1bMDA6MDM6MTVdIEN1cnJlbnQgdGFzazogU3ludGhlc2lzICsrKyBDdXJyZW50
IFBoYXNlOiBDcm9zcyBCb3VuZGFyeSBhbmQgQXJlYSBPcHRpbWl6YXRpb24KG1sySw1bMDA6MDY6
MDFdIEN1cnJlbnQgdGFzazogU3ludGhlc2lzICsrKyBDdXJyZW50IFBoYXNlOiBBcHBseWluZyBY
REMgVGltaW5nIENvbnN0cmFpbnRzChtbMksNWzAwOjA2OjA1XSBDdXJyZW50IHRhc2s6IFN5bnRo
ZXNpcyArKysgQ3VycmVudCBQaGFzZTogVGltaW5nIE9wdGltaXphdGlvbgobWzJLDVswMDowNjoz
MV0gQ3VycmVudCB0YXNrOiBTeW50aGVzaXMgKysrIEN1cnJlbnQgUGhhc2U6IFRlY2hub2xvZ3kg
TWFwcGluZwobWzJLDVswMDowNzo0M10gQ3VycmVudCB0YXNrOiBTeW50aGVzaXMgKysrIEN1cnJl
bnQgUGhhc2U6IElPIEluc2VydGlvbgobWzJLDVswMDowNzo0M10gQ3VycmVudCB0YXNrOiBTeW50
aGVzaXMgKysrIEN1cnJlbnQgUGhhc2U6IEZsYXR0ZW5pbmcgQmVmb3JlIElPIEluc2VydGlvbgob
WzJLDVswMDowNzo0OF0gQ3VycmVudCB0YXNrOiBTeW50aGVzaXMgKysrIEN1cnJlbnQgUGhhc2U6
IEZpbmFsIE5ldGxpc3QgQ2xlYW51cAobWzJLDVswMDowODowMV0gQ3VycmVudCB0YXNrOiBTeW50
aGVzaXMgKysrIEN1cnJlbnQgUGhhc2U6IFJlbmFtaW5nIEdlbmVyYXRlZCBJbnN0YW5jZXMKG1sy
Sw1bMDA6MDg6MTNdIEN1cnJlbnQgdGFzazogU3ludGhlc2lzICsrKyBDdXJyZW50IFBoYXNlOiBS
ZWJ1aWxkaW5nIFVzZXIgSGllcmFyY2h5ChtbMksNWzAwOjA4OjIyXSBDdXJyZW50IHRhc2s6IFN5
bnRoZXNpcyArKysgQ3VycmVudCBQaGFzZTogUmVuYW1pbmcgR2VuZXJhdGVkIFBvcnRzChtbMksN
WzAwOjA4OjI2XSBDdXJyZW50IHRhc2s6IFN5bnRoZXNpcyArKysgQ3VycmVudCBQaGFzZTogSGFu
ZGxpbmcgQ3VzdG9tIEF0dHJpYnV0ZXMKG1sySw1bMDA6MDg6MjZdIEN1cnJlbnQgdGFzazogU3lu
dGhlc2lzICsrKyBDdXJyZW50IFBoYXNlOiBSZW5hbWluZyBHZW5lcmF0ZWQgTmV0cwobWzJLDVsw
MDowODoyNl0gQ3VycmVudCB0YXNrOiBTeW50aGVzaXMgKysrIEN1cnJlbnQgUGhhc2U6IFdyaXRp
bmcgU3ludGhlc2lzIFJlcG9ydAobWzJLDVswMDowODozMF0gQ3VycmVudCB0YXNrOiBTeW50aGVz
aXMgKysrIEN1cnJlbnQgUGhhc2U6IEZpbmlzaGVkChtbMksNG1szMm1bMDA6MDg6MzBdIFRyYW5z
bGF0aW5nIFN5bnRoZXNpemVkIE5ldGxpc3QbWzBtClswMDowODozMF0gQ3VycmVudCB0YXNrOiBU
cmFuc2xhdGluZyBTeW50aGVzaXplZCBOZXRsaXN0ICsrKyBDdXJyZW50IFBoYXNlOiBTdGFydGlu
ZxtbMksNG1szM21DUklUSUNBTCBXQVJOSU5HOiBbRGVzaWdudXRpbHMgMjAtMTI4MV0gQ291bGQg
bm90IGZpbmQgbW9kdWxlICdtaWdfN3Nlcmllc18wJy4gVGhlIFhEQyBmaWxlIC9ob21lL2pvbi9y
Zm5vYy9zcmMvdWhkL2ZwZ2Etc3JjL3VzcnAzL3RvcC9lMzAwL2J1aWxkLWlwL3hjN3owMjBjbGc0
ODQtMy9taWdfN3Nlcmllc18wL21pZ183c2VyaWVzXzAvdXNlcl9kZXNpZ24vY29uc3RyYWludHMv
bWlnXzdzZXJpZXNfMC54ZGMgd2lsbCBub3QgYmUgcmVhZCBmb3IgdGhpcyBtb2R1bGUuG1swbQob
WzMzbUNSSVRJQ0FMIFdBUk5JTkc6IFtEZXNpZ251dGlscyAyMC0xMjgwXSBDb3VsZCBub3QgZmlu
ZCBtb2R1bGUgJ2F4aV9oYjMxJy4gVGhlIFhEQyBmaWxlIC9ob21lL2pvbi9yZm5vYy9zcmMvdWhk
L2ZwZ2Etc3JjL3VzcnAzL3RvcC9lMzAwL2J1aWxkLWlwL3hjN3owMjBjbGc0ODQtMy9heGlfaGIz
MS9jb25zdHJhaW50cy9maXJfY29tcGlsZXJfdjdfMi54ZGMgd2lsbCBub3QgYmUgcmVhZCBmb3Ig
YW55IGNlbGwgb2YgdGhpcyBtb2R1bGUuG1swbQobWzMzbUNSSVRJQ0FMIFdBUk5JTkc6IFtEZXNp
Z251dGlscyAyMC0xMjgwXSBDb3VsZCBub3QgZmluZCBtb2R1bGUgJ2F4aV9oYjQ3Jy4gVGhlIFhE
QyBmaWxlIC9ob21lL2pvbi9yZm5vYy9zcmMvdWhkL2ZwZ2Etc3JjL3VzcnAzL3RvcC9lMzAwL2J1
aWxkLWlwL3hjN3owMjBjbGc0ODQtMy9heGlfaGI0Ny9jb25zdHJhaW50cy9maXJfY29tcGlsZXJf
djdfMi54ZGMgd2lsbCBub3QgYmUgcmVhZCBmb3IgYW55IGNlbGwgb2YgdGhpcyBtb2R1bGUuG1sw
bQobWzMzbUNSSVRJQ0FMIFdBUk5JTkc6IFtWaXZhZG8gMTItNDczOV0gc2V0X2Nsb2NrX2dyb3Vw
czpObyB2YWxpZCBvYmplY3QocykgZm91bmQgZm9yICctZ3JvdXAgW2dldF9jbG9ja3MgLWluY2x1
ZGVfZ2VuZXJhdGVkX2Nsb2NrcyBjbGswXScuIFsvaG9tZS9qb24vcmZub2Mvc3JjL3VoZC9mcGdh
LXNyYy91c3JwMy90b3AvZTMwMC9lMzEwX3RpbWluZy54ZGM6MjhdG1swbQobWzMzbUNSSVRJQ0FM
IFdBUk5JTkc6IFtWaXZhZG8gMTItNDczOV0gc2V0X2Nsb2NrX2dyb3VwczpObyB2YWxpZCBvYmpl
Y3QocykgZm91bmQgZm9yICctZ3JvdXAgW2dldF9jbG9ja3MgLWluY2x1ZGVfZ2VuZXJhdGVkX2Ns
b2NrcyBjbGtkdl0nLiBbL2hvbWUvam9uL3Jmbm9jL3NyYy91aGQvZnBnYS1zcmMvdXNycDMvdG9w
L2UzMDAvZTMxMF90aW1pbmcueGRjOjI4XRtbMG0KG1szM21DUklUSUNBTCBXQVJOSU5HOiBbQ29u
c3RyYWludHMgMTgtNDY0NF0gc2V0X2Nsb2NrX2dyb3VwczogQWxsIGNsb2NrIGdyb3VwcyBzcGVj
aWZpZWQgYXJlIGVtcHR5LiBQbGVhc2Ugc3BlY2lmeSBhdGxlYXN0IG9uZSBjbG9jayBncm91cCB3
aGljaCBpcyBub3QgZW1wdHkuIFsvaG9tZS9qb24vcmZub2Mvc3JjL3VoZC9mcGdhLXNyYy91c3Jw
My90b3AvZTMwMC9lMzEwX3RpbWluZy54ZGM6MjhdG1swbQobWzMzbUNSSVRJQ0FMIFdBUk5JTkc6
IFtDb21tb24gMTctMTYxXSBJbnZhbGlkIG9wdGlvbiB2YWx1ZSAnIycgc3BlY2lmaWVkIGZvciAn
b2JqZWN0cycuIFsvaG9tZS9qb24vcmZub2Mvc3JjL3VoZC9mcGdhLXNyYy91c3JwMy90b3AvZTMw
MC9lMzEwX3RpbWluZy54ZGM6NTNdG1swbQobWzMzbUNSSVRJQ0FMIFdBUk5JTkc6IFtDb25zdHJh
aW50cyAxOC01MTRdIHNldF9tYXhfZGVsYXk6IFBhdGggc2VnbWVudGF0aW9uIGJ5IGZvcmNpbmcg
J0NBVF9TQ0xLX01VWC9JMCcgdG8gYmUgdGltaW5nIGVuZHBvaW50LiBUaGVyZSB3aWxsIGJlIG5v
IGhvbGQgdGltaW5nIHBhdGhzIHRvIHRoaXMgcGluIHVubGVzcyBzZXRfbWluX2RlbGF5IGlzIHVz
ZWQgdG8gY29uc3RyYWluIHRoZSBwYXRocy4gWy9ob21lL2pvbi9yZm5vYy9zcmMvdWhkL2ZwZ2Et
c3JjL3VzcnAzL3RvcC9lMzAwL2UzMTBfdGltaW5nLnhkYzo1OF0bWzBtChtbMzNtQ1JJVElDQUwg
V0FSTklORzogW0NvbnN0cmFpbnRzIDE4LTUxNF0gc2V0X21heF9kZWxheTogUGF0aCBzZWdtZW50
YXRpb24gYnkgZm9yY2luZyAnQ0FUX1NDTEtfTVVYL0kxJyB0byBiZSB0aW1pbmcgZW5kcG9pbnQu
IFRoZXJlIHdpbGwgYmUgbm8gaG9sZCB0aW1pbmcgcGF0aHMgdG8gdGhpcyBwaW4gdW5sZXNzIHNl
dF9taW5fZGVsYXkgaXMgdXNlZCB0byBjb25zdHJhaW4gdGhlIHBhdGhzLiBbL2hvbWUvam9uL3Jm
bm9jL3NyYy91aGQvZnBnYS1zcmMvdXNycDMvdG9wL2UzMDAvZTMxMF90aW1pbmcueGRjOjU4XRtb
MG0KG1szM21DUklUSUNBTCBXQVJOSU5HOiBbQ29uc3RyYWludHMgMTgtNTE0XSBzZXRfbWF4X2Rl
bGF5OiBQYXRoIHNlZ21lbnRhdGlvbiBieSBmb3JjaW5nICdDQVRfU0NMS19NVVgvUycgdG8gYmUg
dGltaW5nIGVuZHBvaW50LiBUaGVyZSB3aWxsIGJlIG5vIGhvbGQgdGltaW5nIHBhdGhzIHRvIHRo
aXMgcGluIHVubGVzcyBzZXRfbWluX2RlbGF5IGlzIHVzZWQgdG8gY29uc3RyYWluIHRoZSBwYXRo
cy4gWy9ob21lL2pvbi9yZm5vYy9zcmMvdWhkL2ZwZ2Etc3JjL3VzcnAzL3RvcC9lMzAwL2UzMTBf
dGltaW5nLnhkYzo1OF0bWzBtClswMDoxMDowMF0gQ3VycmVudCB0YXNrOiBUcmFuc2xhdGluZyBT
eW50aGVzaXplZCBOZXRsaXN0ICsrKyBDdXJyZW50IFBoYXNlOiBTdGFydGluZwobWzJLDVswMDox
MTo1MV0gQ3VycmVudCB0YXNrOiBUcmFuc2xhdGluZyBTeW50aGVzaXplZCBOZXRsaXN0ICsrKyBD
dXJyZW50IFBoYXNlOiBGaW5pc2hlZAobWzJLDRtbMTszNG1bMDA6MTE6NTFdIEV4ZWN1dGluZyBU
Y2w6IHJlcG9ydF9kcmMgLXJ1bGVkZWNrIG1ldGhvZG9sb2d5X2NoZWNrcyAtZmlsZSAvaG9tZS9q
b24vcmZub2Mvc3JjL3VoZC9mcGdhLXNyYy91c3JwMy90b3AvZTMwMC9idWlsZC1FMzEwX1JGTk9D
X3NnMy9tZXRob2RvbG9neS5ycHQbWzBtChtbMzJtWzAwOjExOjUxXSBTdGFydGluZyBEUkMgQ29t
bWFuZBtbMG0KWzAwOjExOjUxXSBDdXJyZW50IHRhc2s6IERSQyArKysgQ3VycmVudCBQaGFzZTog
U3RhcnRpbmcKG1sySw0bWzMzbUNSSVRJQ0FMIFdBUk5JTkc6IFtDb25zdHJhaW50cyAxOC01MTRd
IHNldF9tYXhfZGVsYXk6IFBhdGggc2VnbWVudGF0aW9uIGJ5IGZvcmNpbmcgJ0NBVF9TQ0xLX01V
WC9JMCcgdG8gYmUgdGltaW5nIGVuZHBvaW50LiBUaGVyZSB3aWxsIGJlIG5vIGhvbGQgdGltaW5n
IHBhdGhzIHRvIHRoaXMgcGluIHVubGVzcyBzZXRfbWluX2RlbGF5IGlzIHVzZWQgdG8gY29uc3Ry
YWluIHRoZSBwYXRocy4gWy9ob21lL2pvbi9yZm5vYy9zcmMvdWhkL2ZwZ2Etc3JjL3VzcnAzL3Rv
cC9lMzAwL2UzMTBfdGltaW5nLnhkYzo1OF0bWzBtChtbMzNtQ1JJVElDQUwgV0FSTklORzogW0Nv
bnN0cmFpbnRzIDE4LTUxNF0gc2V0X21heF9kZWxheTogUGF0aCBzZWdtZW50YXRpb24gYnkgZm9y
Y2luZyAnQ0FUX1NDTEtfTVVYL0kxJyB0byBiZSB0aW1pbmcgZW5kcG9pbnQuIFRoZXJlIHdpbGwg
YmUgbm8gaG9sZCB0aW1pbmcgcGF0aHMgdG8gdGhpcyBwaW4gdW5sZXNzIHNldF9taW5fZGVsYXkg
aXMgdXNlZCB0byBjb25zdHJhaW4gdGhlIHBhdGhzLiBbL2hvbWUvam9uL3Jmbm9jL3NyYy91aGQv
ZnBnYS1zcmMvdXNycDMvdG9wL2UzMDAvZTMxMF90aW1pbmcueGRjOjU4XRtbMG0KG1szM21DUklU
SUNBTCBXQVJOSU5HOiBbQ29uc3RyYWludHMgMTgtNTE0XSBzZXRfbWF4X2RlbGF5OiBQYXRoIHNl
Z21lbnRhdGlvbiBieSBmb3JjaW5nICdDQVRfU0NMS19NVVgvUycgdG8gYmUgdGltaW5nIGVuZHBv
aW50LiBUaGVyZSB3aWxsIGJlIG5vIGhvbGQgdGltaW5nIHBhdGhzIHRvIHRoaXMgcGluIHVubGVz
cyBzZXRfbWluX2RlbGF5IGlzIHVzZWQgdG8gY29uc3RyYWluIHRoZSBwYXRocy4gWy9ob21lL2pv
bi9yZm5vYy9zcmMvdWhkL2ZwZ2Etc3JjL3VzcnAzL3RvcC9lMzAwL2UzMTBfdGltaW5nLnhkYzo1
OF0bWzBtChtbMzNtQ1JJVElDQUwgV0FSTklORzogW0NvbnN0cmFpbnRzIDE4LTUxNF0gc2V0X21h
eF9kZWxheTogUGF0aCBzZWdtZW50YXRpb24gYnkgZm9yY2luZyAnQ0FUX1NDTEtfTVVYL0kwJyB0
byBiZSB0aW1pbmcgZW5kcG9pbnQuIFRoZXJlIHdpbGwgYmUgbm8gaG9sZCB0aW1pbmcgcGF0aHMg
dG8gdGhpcyBwaW4gdW5sZXNzIHNldF9taW5fZGVsYXkgaXMgdXNlZCB0byBjb25zdHJhaW4gdGhl
IHBhdGhzLiBbL2hvbWUvam9uL3Jmbm9jL3NyYy91aGQvZnBnYS1zcmMvdXNycDMvdG9wL2UzMDAv
ZTMxMF90aW1pbmcueGRjOjU4XRtbMG0KG1szM21DUklUSUNBTCBXQVJOSU5HOiBbQ29uc3RyYWlu
dHMgMTgtNTE0XSBzZXRfbWF4X2RlbGF5OiBQYXRoIHNlZ21lbnRhdGlvbiBieSBmb3JjaW5nICdD
QVRfU0NMS19NVVgvSTEnIHRvIGJlIHRpbWluZyBlbmRwb2ludC4gVGhlcmUgd2lsbCBiZSBubyBo
b2xkIHRpbWluZyBwYXRocyB0byB0aGlzIHBpbiB1bmxlc3Mgc2V0X21pbl9kZWxheSBpcyB1c2Vk
IHRvIGNvbnN0cmFpbiB0aGUgcGF0aHMuIFsvaG9tZS9qb24vcmZub2Mvc3JjL3VoZC9mcGdhLXNy
Yy91c3JwMy90b3AvZTMwMC9lMzEwX3RpbWluZy54ZGM6NThdG1swbQobWzMzbUNSSVRJQ0FMIFdB
Uk5JTkc6IFtDb25zdHJhaW50cyAxOC01MTRdIHNldF9tYXhfZGVsYXk6IFBhdGggc2VnbWVudGF0
aW9uIGJ5IGZvcmNpbmcgJ0NBVF9TQ0xLX01VWC9TJyB0byBiZSB0aW1pbmcgZW5kcG9pbnQuIFRo
ZXJlIHdpbGwgYmUgbm8gaG9sZCB0aW1pbmcgcGF0aHMgdG8gdGhpcyBwaW4gdW5sZXNzIHNldF9t
aW5fZGVsYXkgaXMgdXNlZCB0byBjb25zdHJhaW4gdGhlIHBhdGhzLiBbL2hvbWUvam9uL3Jmbm9j
L3NyYy91aGQvZnBnYS1zcmMvdXNycDMvdG9wL2UzMDAvZTMxMF90aW1pbmcueGRjOjU4XRtbMG0K
WzAwOjE0OjIzXSBDdXJyZW50IHRhc2s6IERSQyArKysgQ3VycmVudCBQaGFzZTogRmluaXNoZWQK
G1sySw0bWzE7MzRtWzAwOjE0OjIzXSBFeGVjdXRpbmcgVGNsOiBvcHRfZGVzaWduIC1kaXJlY3Rp
dmUgTm9CcmFtUG93ZXJPcHQbWzBtChtbMzJtWzAwOjE0OjIzXSBTdGFydGluZyBMb2dpYyBPcHRp
bWl6YXRpb24gQ29tbWFuZBtbMG0KWzAwOjE0OjIzXSBDdXJyZW50IHRhc2s6IExvZ2ljIE9wdGlt
aXphdGlvbiArKysgQ3VycmVudCBQaGFzZTogU3RhcnRpbmcKG1sySw1bMDA6MTQ6MjRdIEN1cnJl
bnQgdGFzazogTG9naWMgT3B0aW1pemF0aW9uICsrKyBDdXJyZW50IFBoYXNlOiBGaW5pc2hlZAob
WzJLDRtbMzJtWzAwOjE0OjI0XSBTdGFydGluZyBEUkMgVGFzaxtbMG0KWzAwOjE0OjI0XSBDdXJy
ZW50IHRhc2s6IERSQyArKysgQ3VycmVudCBQaGFzZTogU3RhcnRpbmcKG1sySw1bMDA6MTQ6MjZd
IEN1cnJlbnQgdGFzazogRFJDICsrKyBDdXJyZW50IFBoYXNlOiBGaW5pc2hlZAobWzJLDRtbMzJt
WzAwOjE0OjI2XSBTdGFydGluZyBMb2dpYyBPcHRpbWl6YXRpb24gVGFzaxtbMG0KWzAwOjE0OjI2
XSBDdXJyZW50IHRhc2s6IExvZ2ljIE9wdGltaXphdGlvbiArKysgQ3VycmVudCBQaGFzZTogU3Rh
cnRpbmcKG1sySw0bWzMzbUNSSVRJQ0FMIFdBUk5JTkc6IFtDb25zdHJhaW50cyAxOC01MTRdIHNl
dF9tYXhfZGVsYXk6IFBhdGggc2VnbWVudGF0aW9uIGJ5IGZvcmNpbmcgJ0NBVF9TQ0xLX01VWC9J
MCcgdG8gYmUgdGltaW5nIGVuZHBvaW50LiBUaGVyZSB3aWxsIGJlIG5vIGhvbGQgdGltaW5nIHBh
dGhzIHRvIHRoaXMgcGluIHVubGVzcyBzZXRfbWluX2RlbGF5IGlzIHVzZWQgdG8gY29uc3RyYWlu
IHRoZSBwYXRocy4gWy9ob21lL2pvbi9yZm5vYy9zcmMvdWhkL2ZwZ2Etc3JjL3VzcnAzL3RvcC9l
MzAwL2UzMTBfdGltaW5nLnhkYzo1OF0bWzBtChtbMzNtQ1JJVElDQUwgV0FSTklORzogW0NvbnN0
cmFpbnRzIDE4LTUxNF0gc2V0X21heF9kZWxheTogUGF0aCBzZWdtZW50YXRpb24gYnkgZm9yY2lu
ZyAnQ0FUX1NDTEtfTVVYL0kxJyB0byBiZSB0aW1pbmcgZW5kcG9pbnQuIFRoZXJlIHdpbGwgYmUg
bm8gaG9sZCB0aW1pbmcgcGF0aHMgdG8gdGhpcyBwaW4gdW5sZXNzIHNldF9taW5fZGVsYXkgaXMg
dXNlZCB0byBjb25zdHJhaW4gdGhlIHBhdGhzLiBbL2hvbWUvam9uL3Jmbm9jL3NyYy91aGQvZnBn
YS1zcmMvdXNycDMvdG9wL2UzMDAvZTMxMF90aW1pbmcueGRjOjU4XRtbMG0KG1szM21DUklUSUNB
TCBXQVJOSU5HOiBbQ29uc3RyYWludHMgMTgtNTE0XSBzZXRfbWF4X2RlbGF5OiBQYXRoIHNlZ21l
bnRhdGlvbiBieSBmb3JjaW5nICdDQVRfU0NMS19NVVgvUycgdG8gYmUgdGltaW5nIGVuZHBvaW50
LiBUaGVyZSB3aWxsIGJlIG5vIGhvbGQgdGltaW5nIHBhdGhzIHRvIHRoaXMgcGluIHVubGVzcyBz
ZXRfbWluX2RlbGF5IGlzIHVzZWQgdG8gY29uc3RyYWluIHRoZSBwYXRocy4gWy9ob21lL2pvbi9y
Zm5vYy9zcmMvdWhkL2ZwZ2Etc3JjL3VzcnAzL3RvcC9lMzAwL2UzMTBfdGltaW5nLnhkYzo1OF0b
WzBtClswMDoxNDo1Ml0gQ3VycmVudCB0YXNrOiBMb2dpYyBPcHRpbWl6YXRpb24gKysrIEN1cnJl
bnQgUGhhc2U6IDEgUmV0YXJnZXQKG1sySw1bMDA6MTU6MDZdIEN1cnJlbnQgdGFzazogTG9naWMg
T3B0aW1pemF0aW9uICsrKyBDdXJyZW50IFBoYXNlOiAyIENvbnN0YW50IHByb3BhZ2F0aW9uChtb
MksNWzAwOjE1OjExXSBDdXJyZW50IHRhc2s6IExvZ2ljIE9wdGltaXphdGlvbiArKysgQ3VycmVu
dCBQaGFzZTogMyBTd2VlcAobWzJLDVswMDoxNTozMF0gQ3VycmVudCB0YXNrOiBMb2dpYyBPcHRp
bWl6YXRpb24gKysrIEN1cnJlbnQgUGhhc2U6IDQgQlVGRyBvcHRpbWl6YXRpb24KG1sySw1bMDA6
MTU6MzZdIEN1cnJlbnQgdGFzazogTG9naWMgT3B0aW1pemF0aW9uICsrKyBDdXJyZW50IFBoYXNl
OiA1IFNoaWZ0IFJlZ2lzdGVyIE9wdGltaXphdGlvbgobWzJLDVswMDoxNTo0Nl0gQ3VycmVudCB0
YXNrOiBMb2dpYyBPcHRpbWl6YXRpb24gKysrIEN1cnJlbnQgUGhhc2U6IEZpbmlzaGVkChtbMksN
G1szMm1bMDA6MTU6NDZdIFN0YXJ0aW5nIENvbm5lY3Rpdml0eSBDaGVjayBUYXNrG1swbQpbMDA6
MTU6NDZdIEN1cnJlbnQgdGFzazogQ29ubmVjdGl2aXR5IENoZWNrICsrKyBDdXJyZW50IFBoYXNl
OiBTdGFydGluZwobWzJLDVswMDoxNTo1MV0gQ3VycmVudCB0YXNrOiBDb25uZWN0aXZpdHkgQ2hl
Y2sgKysrIEN1cnJlbnQgUGhhc2U6IEZpbmlzaGVkChtbMksNG1sxOzM0bVswMDoxNTo1MV0gRXhl
Y3V0aW5nIFRjbDogcGxhY2VfZGVzaWduIC1kaXJlY3RpdmUgRXh0cmFOZXREZWxheV9oaWdoG1sw
bQobWzMybVswMDoxNTo1MV0gU3RhcnRpbmcgUGxhY2VyIENvbW1hbmQbWzBtClswMDoxNTo1MV0g
Q3VycmVudCB0YXNrOiBQbGFjZXIgKysrIEN1cnJlbnQgUGhhc2U6IFN0YXJ0aW5nChtbMksNG1sz
Mm1bMDA6MTY6MDhdIFN0YXJ0aW5nIFBsYWNlciBUYXNrG1swbQpbMDA6MTY6MDhdIEN1cnJlbnQg
dGFzazogUGxhY2VyICsrKyBDdXJyZW50IFBoYXNlOiBTdGFydGluZwobWzJLDVswMDoxNjowOF0g
Q3VycmVudCB0YXNrOiBQbGFjZXIgKysrIEN1cnJlbnQgUGhhc2U6IDEgUGxhY2VyIEluaXRpYWxp
emF0aW9uChtbMksNWzAwOjE2OjA4XSBDdXJyZW50IHRhc2s6IFBsYWNlciArKysgQ3VycmVudCBQ
aGFzZTogMS4xIFBsYWNlciBJbml0aWFsaXphdGlvbiBOZXRsaXN0IFNvcnRpbmcKG1sySw0bWzMz
bUNSSVRJQ0FMIFdBUk5JTkc6IFtDb25zdHJhaW50cyAxOC01MTRdIHNldF9tYXhfZGVsYXk6IFBh
dGggc2VnbWVudGF0aW9uIGJ5IGZvcmNpbmcgJ0NBVF9TQ0xLX01VWC9JMCcgdG8gYmUgdGltaW5n
IGVuZHBvaW50LiBUaGVyZSB3aWxsIGJlIG5vIGhvbGQgdGltaW5nIHBhdGhzIHRvIHRoaXMgcGlu
IHVubGVzcyBzZXRfbWluX2RlbGF5IGlzIHVzZWQgdG8gY29uc3RyYWluIHRoZSBwYXRocy4gWy9o
b21lL2pvbi9yZm5vYy9zcmMvdWhkL2ZwZ2Etc3JjL3VzcnAzL3RvcC9lMzAwL2UzMTBfdGltaW5n
LnhkYzo1OF0bWzBtChtbMzNtQ1JJVElDQUwgV0FSTklORzogW0NvbnN0cmFpbnRzIDE4LTUxNF0g
c2V0X21heF9kZWxheTogUGF0aCBzZWdtZW50YXRpb24gYnkgZm9yY2luZyAnQ0FUX1NDTEtfTVVY
L0kxJyB0byBiZSB0aW1pbmcgZW5kcG9pbnQuIFRoZXJlIHdpbGwgYmUgbm8gaG9sZCB0aW1pbmcg
cGF0aHMgdG8gdGhpcyBwaW4gdW5sZXNzIHNldF9taW5fZGVsYXkgaXMgdXNlZCB0byBjb25zdHJh
aW4gdGhlIHBhdGhzLiBbL2hvbWUvam9uL3Jmbm9jL3NyYy91aGQvZnBnYS1zcmMvdXNycDMvdG9w
L2UzMDAvZTMxMF90aW1pbmcueGRjOjU4XRtbMG0KG1szM21DUklUSUNBTCBXQVJOSU5HOiBbQ29u
c3RyYWludHMgMTgtNTE0XSBzZXRfbWF4X2RlbGF5OiBQYXRoIHNlZ21lbnRhdGlvbiBieSBmb3Jj
aW5nICdDQVRfU0NMS19NVVgvUycgdG8gYmUgdGltaW5nIGVuZHBvaW50LiBUaGVyZSB3aWxsIGJl
IG5vIGhvbGQgdGltaW5nIHBhdGhzIHRvIHRoaXMgcGluIHVubGVzcyBzZXRfbWluX2RlbGF5IGlz
IHVzZWQgdG8gY29uc3RyYWluIHRoZSBwYXRocy4gWy9ob21lL2pvbi9yZm5vYy9zcmMvdWhkL2Zw
Z2Etc3JjL3VzcnAzL3RvcC9lMzAwL2UzMTBfdGltaW5nLnhkYzo1OF0bWzBtClswMDoxNjozNl0g
Q3VycmVudCB0YXNrOiBQbGFjZXIgKysrIEN1cnJlbnQgUGhhc2U6IDEuMiBJTyBQbGFjZW1lbnQv
IENsb2NrIFBsYWNlbWVudC8gQnVpbGQgUGxhY2VyIERldmljZQobWzJLDRtbMzNtQ1JJVElDQUwg
V0FSTklORzogW0NvbnN0cmFpbnRzIDE4LTUxNF0gc2V0X21heF9kZWxheTogUGF0aCBzZWdtZW50
YXRpb24gYnkgZm9yY2luZyAnQ0FUX1NDTEtfTVVYL0kwJyB0byBiZSB0aW1pbmcgZW5kcG9pbnQu
IFRoZXJlIHdpbGwgYmUgbm8gaG9sZCB0aW1pbmcgcGF0aHMgdG8gdGhpcyBwaW4gdW5sZXNzIHNl
dF9taW5fZGVsYXkgaXMgdXNlZCB0byBjb25zdHJhaW4gdGhlIHBhdGhzLiBbL2hvbWUvam9uL3Jm
bm9jL3NyYy91aGQvZnBnYS1zcmMvdXNycDMvdG9wL2UzMDAvZTMxMF90aW1pbmcueGRjOjU4XRtb
MG0KG1szM21DUklUSUNBTCBXQVJOSU5HOiBbQ29uc3RyYWludHMgMTgtNTE0XSBzZXRfbWF4X2Rl
bGF5OiBQYXRoIHNlZ21lbnRhdGlvbiBieSBmb3JjaW5nICdDQVRfU0NMS19NVVgvSTEnIHRvIGJl
IHRpbWluZyBlbmRwb2ludC4gVGhlcmUgd2lsbCBiZSBubyBob2xkIHRpbWluZyBwYXRocyB0byB0
aGlzIHBpbiB1bmxlc3Mgc2V0X21pbl9kZWxheSBpcyB1c2VkIHRvIGNvbnN0cmFpbiB0aGUgcGF0
aHMuIFsvaG9tZS9qb24vcmZub2Mvc3JjL3VoZC9mcGdhLXNyYy91c3JwMy90b3AvZTMwMC9lMzEw
X3RpbWluZy54ZGM6NThdG1swbQobWzMzbUNSSVRJQ0FMIFdBUk5JTkc6IFtDb25zdHJhaW50cyAx
OC01MTRdIHNldF9tYXhfZGVsYXk6IFBhdGggc2VnbWVudGF0aW9uIGJ5IGZvcmNpbmcgJ0NBVF9T
Q0xLX01VWC9TJyB0byBiZSB0aW1pbmcgZW5kcG9pbnQuIFRoZXJlIHdpbGwgYmUgbm8gaG9sZCB0
aW1pbmcgcGF0aHMgdG8gdGhpcyBwaW4gdW5sZXNzIHNldF9taW5fZGVsYXkgaXMgdXNlZCB0byBj
b25zdHJhaW4gdGhlIHBhdGhzLiBbL2hvbWUvam9uL3Jmbm9jL3NyYy91aGQvZnBnYS1zcmMvdXNy
cDMvdG9wL2UzMDAvZTMxMF90aW1pbmcueGRjOjU4XRtbMG0KWzAwOjE3OjEyXSBDdXJyZW50IHRh
c2s6IFBsYWNlciArKysgQ3VycmVudCBQaGFzZTogMS4zIEJ1aWxkIFBsYWNlciBOZXRsaXN0IE1v
ZGVsChtbMksNG1szM21DUklUSUNBTCBXQVJOSU5HOiBbQ29uc3RyYWludHMgMTgtNTE0XSBzZXRf
bWF4X2RlbGF5OiBQYXRoIHNlZ21lbnRhdGlvbiBieSBmb3JjaW5nICdDQVRfU0NMS19NVVgvSTAn
IHRvIGJlIHRpbWluZyBlbmRwb2ludC4gVGhlcmUgd2lsbCBiZSBubyBob2xkIHRpbWluZyBwYXRo
cyB0byB0aGlzIHBpbiB1bmxlc3Mgc2V0X21pbl9kZWxheSBpcyB1c2VkIHRvIGNvbnN0cmFpbiB0
aGUgcGF0aHMuIFsvaG9tZS9qb24vcmZub2Mvc3JjL3VoZC9mcGdhLXNyYy91c3JwMy90b3AvZTMw
MC9lMzEwX3RpbWluZy54ZGM6NThdG1swbQobWzMzbUNSSVRJQ0FMIFdBUk5JTkc6IFtDb25zdHJh
aW50cyAxOC01MTRdIHNldF9tYXhfZGVsYXk6IFBhdGggc2VnbWVudGF0aW9uIGJ5IGZvcmNpbmcg
J0NBVF9TQ0xLX01VWC9JMScgdG8gYmUgdGltaW5nIGVuZHBvaW50LiBUaGVyZSB3aWxsIGJlIG5v
IGhvbGQgdGltaW5nIHBhdGhzIHRvIHRoaXMgcGluIHVubGVzcyBzZXRfbWluX2RlbGF5IGlzIHVz
ZWQgdG8gY29uc3RyYWluIHRoZSBwYXRocy4gWy9ob21lL2pvbi9yZm5vYy9zcmMvdWhkL2ZwZ2Et
c3JjL3VzcnAzL3RvcC9lMzAwL2UzMTBfdGltaW5nLnhkYzo1OF0bWzBtChtbMzNtQ1JJVElDQUwg
V0FSTklORzogW0NvbnN0cmFpbnRzIDE4LTUxNF0gc2V0X21heF9kZWxheTogUGF0aCBzZWdtZW50
YXRpb24gYnkgZm9yY2luZyAnQ0FUX1NDTEtfTVVYL1MnIHRvIGJlIHRpbWluZyBlbmRwb2ludC4g
VGhlcmUgd2lsbCBiZSBubyBob2xkIHRpbWluZyBwYXRocyB0byB0aGlzIHBpbiB1bmxlc3Mgc2V0
X21pbl9kZWxheSBpcyB1c2VkIHRvIGNvbnN0cmFpbiB0aGUgcGF0aHMuIFsvaG9tZS9qb24vcmZu
b2Mvc3JjL3VoZC9mcGdhLXNyYy91c3JwMy90b3AvZTMwMC9lMzEwX3RpbWluZy54ZGM6NThdG1sw
bQpbMDA6MTg6MDVdIEN1cnJlbnQgdGFzazogUGxhY2VyICsrKyBDdXJyZW50IFBoYXNlOiAxLjQg
Q29uc3RyYWluIENsb2Nrcy9NYWNyb3MKG1sySw1bMDA6MTg6MDZdIEN1cnJlbnQgdGFzazogUGxh
Y2VyICsrKyBDdXJyZW50IFBoYXNlOiAyIEdsb2JhbCBQbGFjZW1lbnQKG1sySw1bMDA6MTk6MjVd
IEN1cnJlbnQgdGFzazogUGxhY2VyICsrKyBDdXJyZW50IFBoYXNlOiAzIERldGFpbCBQbGFjZW1l
bnQKG1sySw1bMDA6MTk6MjVdIEN1cnJlbnQgdGFzazogUGxhY2VyICsrKyBDdXJyZW50IFBoYXNl
OiAzLjEgQ29tbWl0IE11bHRpIENvbHVtbiBNYWNyb3MbWzJLDVswMDoyMDowMF0gQ3VycmVudCB0
YXNrOiBQbGFjZXIgKysrIEN1cnJlbnQgUGhhc2U6IDMuMSBDb21taXQgTXVsdGkgQ29sdW1uIE1h
Y3JvcwobWzJLDVswMDoyMDoxNV0gQ3VycmVudCB0YXNrOiBQbGFjZXIgKysrIEN1cnJlbnQgUGhh
c2U6IDMuMyBBcmVhIFN3YXAgT3B0aW1pemF0aW9uChtbMksNWzAwOjIwOjE2XSBDdXJyZW50IHRh
c2s6IFBsYWNlciArKysgQ3VycmVudCBQaGFzZTogMy40IFBpcGVsaW5lIFJlZ2lzdGVyIE9wdGlt
aXphdGlvbgobWzJLDVswMDoyMDoxNl0gQ3VycmVudCB0YXNrOiBQbGFjZXIgKysrIEN1cnJlbnQg
UGhhc2U6IDMuNSBTbWFsbCBTaGFwZSBEZXRhaWwgUGxhY2VtZW50ChtbMksNG1sxOzMxbUVSUk9S
OiBbUGxhY2UgMzAtNDg3XSBUaGUgcGFja2luZyBvZiBpbnN0YW5jZXMgaW50byB0aGUgZGV2aWNl
IGNvdWxkIG5vdCBiZSBvYmV5ZWQuIFRoZXJlIGFyZSBhIHRvdGFsIG9mIDEzMzAwIHNsaWNlcyBp
biB0aGUgcGJsb2NrLCBvZiB3aGljaCA4ODAyIHNsaWNlcyBhcmUgYXZhaWxhYmxlLCBob3dldmVy
LCB0aGUgdW5wbGFjZWQgaW5zdGFuY2VzIHJlcXVpcmUgOTI2MCBzbGljZXMuIFBsZWFzZSBhbmFs
eXplIHlvdXIgZGVzaWduIHRvIGRldGVybWluZSBpZiB0aGUgbnVtYmVyIG9mIExVVHMsIEZGcywg
YW5kL29yIGNvbnRyb2wgc2V0cyBjYW4gYmUgcmVkdWNlZC4bWzBtChtbMTszMW1FUlJPUjogW1Bs
YWNlIDMwLTk5XSBQbGFjZXIgZmFpbGVkIHdpdGggZXJyb3I6ICdEZXRhaWwgUGxhY2VtZW50IGZh
aWxlZCBwbGVhc2UgY2hlY2sgcHJldmlvdXMgZXJyb3JzIGZvciBkZXRhaWxzLicbWzBtChtbMTsz
MW1FUlJPUjogW0NvbW1vbiAxNy02OV0gQ29tbWFuZCBmYWlsZWQ6IFBsYWNlciBjb3VsZCBub3Qg
cGxhY2UgYWxsIGluc3RhbmNlcxtbMG0KWzAwOjIwOjQ5XSBDdXJyZW50IHRhc2s6IFBsYWNlciAr
KysgQ3VycmVudCBQaGFzZTogRmluaXNoZWQKG1sxOzMxbVswMDoyMDo0OV0gUHJvY2VzcyB0ZXJt
aW5hdGVkLiBTdGF0dXM6IEZhaWx1cmUbWzBtCgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PQpXYXJuaW5nczogICAgICAgICAgIDY1NQpDcml0
aWNhbCBXYXJuaW5nczogIDMyCkVycm9yczogICAgICAgICAgICAgMwoKTWFrZWZpbGUuZTMwMC5p
bmM6OTg6IHJlY2lwZSBmb3IgdGFyZ2V0ICdiaW4nIGZhaWxlZAptYWtlWzFdOiAqKiogW2Jpbl0g
RXJyb3IgMQptYWtlWzFdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUvam9uL3Jmbm9jL3NyYy91
aGQvZnBnYS1zcmMvdXNycDMvdG9wL2UzMDAnCk1ha2VmaWxlOjcwOiByZWNpcGUgZm9yIHRhcmdl
dCAnRTMxMF9SRk5PQ19zZzMnIGZhaWxlZAptYWtlOiAqKiogW0UzMTBfUkZOT0Nfc2czXSBFcnJv
ciAyCi0tVXNpbmcgdGhlIGZvbGxvd2luZyBibG9ja3MgdG8gZ2VuZXJhdGUgaW1hZ2U6CiAgICAq
IGZmdAogICAgKiB3aW5kb3cKICAgICogZm9zcGhvcgpBZGRpbmcgQ0UgaW5zdGFudGlhdGlvbiBm
aWxlIGZvciAnRTMxMF9SRk5PQ19zZzMnCmNoYW5naW5nIHRlbXBvcmFyaWx5IHdvcmtpbmcgZGly
ZWN0b3J5IHRvIC9ob21lL2pvbi9yZm5vYy9zcmMvdWhkL2ZwZ2Etc3JjL3VzcnAzL3Rvb2xzL3Nj
cmlwdHMvLi4vLi4vdG9wL2UzMDAK
--0000000000004d4cc705950a1c9f
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--0000000000004d4cc705950a1c9f--

