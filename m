Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0492557EF
	for <lists+usrp-users@lfdr.de>; Fri, 28 Aug 2020 11:43:04 +0200 (CEST)
Received: from [::1] (port=40600 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBauS-0003FJ-Og; Fri, 28 Aug 2020 05:43:00 -0400
Received: from mail-wr1-f42.google.com ([209.85.221.42]:45625)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <i1ndp.nando@gmail.com>)
 id 1kBauO-0003Aj-Lo
 for usrp-users@lists.ettus.com; Fri, 28 Aug 2020 05:42:56 -0400
Received: by mail-wr1-f42.google.com with SMTP id h15so663549wrt.12
 for <usrp-users@lists.ettus.com>; Fri, 28 Aug 2020 02:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=TRgXmmtt24E51dusF2+UQOojA3s+9KfT+wVRtbDakvI=;
 b=sv7542AmKxcpeHarONqqjexikpe24LXigMNN+/+kwx4GZG28Eprzd6JdnQrumI4g+J
 rxrBOnnC9F+2bgZ7JU/3t/2YbLlJK0aMq4koNOmMzRH5hHAouGxnftnivtXNC4VMnl/i
 kgCw+ac66cDvpG8purqMsoJevHlKUaN0XCZ8OM4xkCV4kUHuFNRWstnWjjGOc8NVN60s
 brHqAEMfV2Mdkzl60i7mDrDISPy8Ptsz3j8aUida5JzvN+TIzY/46S6++dHNNj5ZBZ1t
 9WDSxxhmart9xlDK3D2s6ZxMXb6NtUl8zu8/NaFVlOR9zycnr89ZBnkpW+zo4r7PGFkr
 BSsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=TRgXmmtt24E51dusF2+UQOojA3s+9KfT+wVRtbDakvI=;
 b=lg1cOft/fhUPINiX0sO+Mxv4BEmVjJykBCIQHl9ph2z4IL4EaMTC+U0zY5fYgodlte
 1unIGt0W6ny+NWJM6bCaZRJ4FtlyE//jo+FPkjfYRihqjTHMEruGXQkdWMMnKhdsi1aE
 +DuKViU3Bt5lI5RvPeLE8IFYgRTTcdk5UwMwe5zD03IdHqK5HSKauBv/3iqM6XVIluT4
 z72zb1Ubs2T1bcdcanpnjhcvKqoq41py9izlyDuL6Csbf9WWVloRAJHaNGgtmrIM6ALX
 44nU6r2vRmdYI40XoxcP7ysbjF+DcNjC0G7ipJ3hxZIgLcWFEKwPnRF+e6K5T6E60zmS
 VsAQ==
X-Gm-Message-State: AOAM530sTbAVr+9SL1M/BkTt1YT+k4TVyQ2TD/M/B9oZTlVGTB84BLLA
 RA8Op0axaJPd/quEW0dk4EIGziGvh94osA==
X-Google-Smtp-Source: ABdhPJwyk1otfP+ER0sF6yYSmScdHn0zTqpS/odncdfaDcaYY0YHXE1pUxDmAQPPFiArl5Dha4DAmg==
X-Received: by 2002:adf:979a:: with SMTP id s26mr739093wrb.229.1598607734528; 
 Fri, 28 Aug 2020 02:42:14 -0700 (PDT)
Received: from [10.0.0.3] ([176.65.80.99])
 by smtp.gmail.com with ESMTPSA id p6sm1258470wmg.0.2020.08.28.02.42.13
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Aug 2020 02:42:13 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAM4xKrrtSjhM1FFYGvuXrQFBop1d+H78JzQCx5OMh4iQ3rm3TQ@mail.gmail.com>
 <CAGNhwTMtPx8aygM-kUgcAyK_L2+nmLxtnJJDjpLXk5HpjK0uwQ@mail.gmail.com>
Message-ID: <67e4d928-2f30-1faa-bb29-6e59916f6578@gmail.com>
Date: Fri, 28 Aug 2020 11:42:12 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAGNhwTMtPx8aygM-kUgcAyK_L2+nmLxtnJJDjpLXk5HpjK0uwQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] [UHD] Announcing 4.0.0.0 Release Candidate 1
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
From: Nando Pellegrini via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nando Pellegrini <i1ndp.nando@gmail.com>
Content-Type: multipart/mixed; boundary="===============4029846443000324394=="
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
--===============4029846443000324394==
Content-Type: multipart/alternative;
 boundary="------------547417C70E5D2EFD39A15EE3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------547417C70E5D2EFD39A15EE3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Michael,
I am posting a first feedback on the new 4.0 release candidate, i was in 
a hurry to test it hoping to be back able to use the full capabilities 
of my B200mini.
The environment is an Ubuntu 20.4 with an Intel I7 CPU.
The current results are not convincing yet, the following is a trace of 
an application should behave like a sort of spectrum analyzer:
---------------------------------------------------------------------------------------------------------------------------------------------------------
Error opening log file: basic_ios::clear: iostream error
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; 
UHD_4.0.0.0-0-unknown
[INFO] [B200] Detected Device: B200mini
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz...
[INFO] [B200] Actually got clock rate 16.000000 MHz.
[INFO] [B200] Asking for clock rate 56.000000 MHz...
[INFO] [B200] Actually got clock rate 56.000000 MHz.
RX Rate: 56.000000 Msps...
RX Freq: 100.000000 MHz...
RX Gain: 0.000000 dB...
RX Bandwidth: 56.000000 MHz...
Clock Source: external
Wait for REF... - 0  - 0 REF NOT Locked: ...
OOverflow indication,Receive session error ERROR_CODE_OVERFLOW
Timeout while streaming    ERROR_CODE_TIMEOUT
Timeout while streaming
-------------------------------------------------------------------------------------------------------------------------------------
The error is not recoverable, the time out signal goes on with no data 
transfer , the example is at 56Mhz sample rate but it is the same at any 
rate.
I suspect it has to do with the buffer size which is a bit weird (81920 
Samples);
With this application really i do not care of loosing a block but as 
long as i can recovery and continue.

Different problem with Radio Astronomy recordings where i cannot lose a 
single sample  , the maximum sample rate i can sustain is no more than 
40MSaples/sec with a block length of 65536 samples , with lower block 
length even worse. Exactly the same as in previous release.
In the past and with same applications 56Mhz bandwidth were not a 
problem but also the Os is no more the same.
In all cases there is an initial error in opening the log file.
Regards,nando

------------------------------------------------------------------------



On 8/26/2020 14:38, Michael Dickens via USRP-users wrote:
> Thanks for the UHD 4.0rc1 update, Michael. This UHD version will be 
> the most robust and compatible version yet!
>
> For macOS users of UHD and GNU Radio, a brief update:
>
> UHD 3.15 and UHD 4.0rc1 build and run on many macOS versions -- at 
> least 10.11 " El Capitan" through 10.15 "Catalina", and probably 
> further back with a modern enough compiler. I've built UHD 3.15 back 
> to 10.8 "Mountain Lion", but unfortunately UHD applications do not 
> execute ... maybe others know what the issue is here? I have yet to 
> try UHD 4.0rc1 on these older macOS systems.
>
> GNU Radio 3.7.14.0 and 3.8.2.0 -- with a patch to cover the commits 
> since this release was tagged on the "maint-3.8" branch -- also work 
> with these same macOS versions.
>
> All of these projects / versions are available in MacPorts right now, 
> via the ports "uhd" (3.15), "uhd-devel" (4.0rc1), "gnuradio37" 
> (3.7.14.0), and "gnuradio" (3.8.2.0 + patches).
>
> I have tested out GR 3.8.2.0 + UHD 4.0rc1 and they play 
> nicely (enough) together; I'm confident that the combinations GR 
> 3.8.2.0 + UHD 3.15 and GR 3.7.14.0 + UHD 3.15 also work. MP allows GR 
> 3.7.14.0 + UHD 4.0rc1, though I don't know if this will even build.
>
> I value any feedback on macOS building and/or use of UHD and GR (and 
> Volk, but that's pretty separate by now); MacPorts or some other 
> install means; any macOS version: 10.4-5 PPC 32/64, 10.4-16 Intel 
> 32/64; even 10.16 ARM64 ... if that's where you are (you're ahead of 
> me then, though I'm catching up ;)  !!!
>
> Cheers! - MLD
> ---
> Michael Dickens
> Ettus Research Technical Support
> Email: support@ettus.com <mailto:support@ettus.com>
> Web: https://ettus.com/
>
>
> On Tue, Aug 25, 2020 at 8:46 PM Michael West via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     The release candidate of the long awaited UHD version 4.0.0.0 has
>     been tagged and is available for testing.  This major release
>     introduces a new RFNoC framework, a new streaming infrastructure,
>     a power calibration utility and API, and many other features and
>     bug fixes.  The new infrastructure provides improved performance,
>     more flexibility, and the foundation for future demands of higher
>     throughput and lower latencies.
>
>     The tag for this release candidate:
>     https://github.com/EttusResearch/uhd/releases/tag/v4.0.0.0-rc1
>
>     There have been 831 commits since the last release (3.15.0.0)which
>     can be viewed here:
>     https://github.com/EttusResearch/uhd/compare/v3.15.0.0...v4.0.0.0-rc1
>
>     Please report any bugs found on the UHD issue tracker:
>     http://github.com/EttusResearch/uhd/issues
>     * Please do not use the issue tracker for help or support.
>
>     Pull requests for direct code changes may be submitted to the UHD
>     or FPGA repositories:
>     http://github.com/EttusResearch/uhd/pulls
>     http://github.com/EttusResearch/fpga/pulls
>
>     CHANGELOG:
>     ## 004.000.000.000
>     * b200:
>       - Enable power calibration API
>       - Add a prop tree node usb_version
>     * cal:
>       - Add utility to update all .fbs files, or check the generated ones
>       - Add pwr_cal container
>     * cmake:
>       - Add ability to pass CXXFLAGS to CMake environment
>     * docs:
>       - Update PCIe xport instructions for NI Repos
>       - n3xx: Include WX in table of N320 images
>       - Add stream and transport args documentation
>       - Update Basic/LF dboard references to use new operating mode
>       - e3xx/n3xx: Add sections on FP-GPIOs and how to drive them
>       - n3xx: Document eeprom flags
>       - Add note about DPDK needing to be built as shared libraries
>       - Change DPDK version to 18.11 and make args use underscores
>       - Clarifying which devices support DPDK
>     * dpdk:
>       - Add new DPDK stack to integrate with I/O services
>     * e31x:
>       - Change RFNoC Ctrl clock to 40 MHz
>       - Fix timeout for timekeeper registers
>       - Fix filter bank and antenna switching for channel 0
>       - Swap out liberio for internal Ethernet
>     * e320:
>       - Fix timeout for timekeeper registers
>       - Swap out liberio for internal Ethernet
>     * examples:
>       - Add usrp_power_meter example
>       - Update test_messages example
>       - Update gpio example
>       - Add options to benchmark_rate
>       - Add example out-of-tree module for RFNoC modules
>       - Remove thread priority elevation
>     * fpga:
>       - Replaced RFNoC architecture with new 4.0 version
>       - Added modelsim make simulation target
>       - Upgrade to Vivade 2019.1
>       - Removed unused coregen files and modules
>       - Removed fpga submodule and merged into uhd repo
>       - lib: Change max FFT size to 1024
>       - lib: add Intel MAX10 architecture for 2clk FIFO
>       - rfnoc: Port RFNoC Keep One in N block to new RFNoC architecture
>       - rfnoc: Port RFNoC Replay block to new RFNoC architecture
>       - rfnoc: Port Signal Generator RFNoC block to new RFNoC architecture
>       - Add Switchboard RFNoC block
>       - Remove liberio
>       - rfnoc: Port RFNoC Moving Average block to new RFNoC architecture
>       - rfnoc: Port Log-Power block to new RFNoC architecture
>       - rfnoc: Port RFNoC Window block to new RFNoC architecture
>       - lib: Add synthesizable AXI4-Stream SV components
>       - lib: Add interface and model for AXI4-Lite
>       - rfnoc: Add support for 512-bit CHDR widths
>       - rfnoc: Port RFNoC Add/Sub block to new RFNoC architecture
>       - rfnoc: Port Vector IIR RFNoC block to new RFNoC architecture
>       - lib: Add AXI-Stream splitter (axis_split)
>     * lib:
>       - Add power cal manager
>       - deps: Add FlatBuffers 1.11.0 header files
>       - Add DPDK service queue
>     * mpm:
>       - Exclude internal NIC for network hosts
>       - Add ability to run scripts to MPM shell
>       - n3xx: Remove eth1, eth2 from interface list
>       - Default virtual NIC CHDR IP selection
>       - Enable internal NIC on the N3xx
>       - Clean up code, improve Pylint score
>       - Move common mboard regs code to common location
>     * mpmd:
>       - Remove liberio
>     * multi_usrp:
>       - Fix connect/disconnect of RFNoC chains
>       - Various multi_usrp_rfnoc fixes
>     * n310:
>       - Fix GPIO registers
>     * n320:
>       - Double radio ingress buffer size
>       - Enable inverse sinc filter for DAC37J82
>     * n3xx:
>       - Fix timeout for timekeeper registers
>       - Swap out liberio for internal Ethernet
>     * python:
>       - Add Keep One in N block controller bindings
>       - Add replay RFNoC block controller bindings
>       - Add siggen RFNoC block controller bindings
>       - Add Switchboard block python bindings
>       - Add moving average RFNoC block controller bindings
>       - Add bindings for C++ CHDR Parser
>       - Add window RFNoC block controller bindings
>       - Add FFT RFNoC block controller bindings
>       - Add null RFNoC block controller bindings
>       - Add vector IIR RFNoC block controller bindings
>       - Add radio RFNoC block controller bindings
>       - Add FIR filter RFNoC block controller bindings
>       - Add Fosphor RFNoC block controller bindings
>       - Add DUC RFNoC block controller bindings
>       - Add DDC RFNoC block controller bindings
>       - Added new RFNoC image builder module under the uhd module
>       - Remove Python2-specific code
>       - Included complex.h to allow pybind to convert that data type
>     * rfnoc:
>       - Add multichannel register interface
>       - Added support for destruction of streamers
>       - Add Keep One in N block support
>       - Port siggen RFNoC block controller support to new RFNoC
>     architecture
>       - Add Switchboard block support
>       - Port Moving Average block controller to new RFNoC architecture
>       - Port Log Power RFNoC block support to new RFNoC architecture
>       - Port window RFNoC block controller to new RFNoC architecture
>       - Port Add/Sub RFNoC block support to new RFNoC architecture
>       - Add USE_MAP prop/action forwarding policy
>       - Port Split Stream RFNoC block to new RFNoC architecture
>       - Port Vector IIR RFNoC block support to new RFNoC architecture
>       - Port RFNoC fosphor block to new RFNoC architecture
>       - Port FIR filter RFNoC block controller to new RFNoC architecture
>       - Add multichannel register interface
>       - Add RFNoC Python API
>       - Unify endianness of transports
>       - Add DMA FIFO block controller
>       - examples: Port examples to new RFNoC
>       - Implement flushing on overrun
>       - client_zero can track num SEPs and num ctrl EPs separately
>       - Add basic round-robin allocation for links
>       - Add ability to select transport for streamers to user APIs
>       - Use link_stream_manager's mgmt_portal for all mgmt packets
>       - graph: Optimize property propagation algorithm
>       - Port DUC block controller to new RFNoC architecture
>       - Add MTU tracking
>       - Implement overrun handling using action API
>       - Port null block controller to new RFNoC architecture
>       - Add mb_controller API
>       - Port radio block controller to new RFNoC architecture
>       - Port default block controller to new RFNoC architecture
>       - Port DDC block controller to new RFNoC architecture
>       - Add rfnoc_graph class
>       - Add action API
>       - Refactored CHDR packet interfaces
>       - Add noc_block_base class
>     * tests:
>       - Add unit tests for new RFNoC block controllers
>       - Fix multi_usrp_test
>       - Add unit tests for pwr_cal_mgr
>       - Migrated rfnoc block tests to dedicated subdirectory
>       - Add more tests for max rate streaming
>       - Add tests to exercise max streaming rates and report results
>     * tools:
>       - Update dissectors for Wireshark major version 3, new CHDR
>       - Update FPGA functional verification tests for X3x0 mcr's & dpdk
>     * transport:
>       - Implement eov indications for Rx and Tx streams
>       - Implement an I/O service that uses an offload thread
>       - Implement a single-threaded I/O service
>     * twinrx:
>       - Update synthesizer register values for improved rf performance
>       - Fix increased noise floor
>       - Remove decimation from frontend
>     * uhd:
>       - Disable optimizations for Mac for build speed
>       - remove liberio
>       - improved handling of empty serial number hints
>       - Add discoverable_features API
>       - Add reference power level API to multi_usrp and radio_control
>       - Add fuzzy serial number checking
>       - paths: Harmonize around XDG Base Directory specification
>       - cal: Use usrp::cal::database instead of CSV files
>       - cal: Add iq_cal calibration data container class
>       - cal: Add calibration container class
>       - cal: Add database class
>       - Introduce I/O service manager
>       - Replace usage of boost smart pointers with C++11 counterparts
>       - add udp boost asio implementation of transport interface
>       - Add thread affinity utility functions
>       - types: Extend stream_cmd_t::num_samps to 64 bits
>     * utils:
>       - Expose CHDR Parsing API
>       - Expose CHDR Types in Public API
>       - Support expressions for num_ports in block defs
>       - Let uhd_images_downloader also use HTTPS proxies
>       - Fix FPGA search in rfnoc_image_builder from fpga-src to fpga
>       - Add convert_cal_data utility
>       - image_builder: Support parameterized number of ports on blocks
>     * x300:
>       - Update frame sizes for 10GbE
>       - Fix for incorrect PCIe buffer size values
>       - Change default dboard clock rate from 50 to 100 MHz
>       - Update maximum bitstream size
>       - Enable power reference API
>       - Expand DRAM address space to 1G
>       - Add front-panel GPIO source control
>
>     As always, we at Ettus Research would like to thank all of the UHD
>     users in the open source SDR community.  This release contains
>     commits from users in the community that submitted pull requests
>     against the UHD <https://github.com/EttusResearch/uhd> and FPGA
>     <https://github.com/EttusResearch/fpga> repositories as well as
>     many commits that are a direct result of issues reported back to
>     us by users like you through the UHD
>     <https://github.com/EttusResearch/uhd/issues> and FPGA
>     <https://github.com/EttusResearch/fpga/issues> issue trackers, the
>     USRP-users mailing list
>     <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>,
>     and Ettus support <mailto:support@ettus.com>.  You have all helped
>     contribute to the continued improvement of UHD.  Thank you!
>
>     Best regards,
>     Michael
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------547417C70E5D2EFD39A15EE3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Michael,<br>
    I am posting a first feedback on the new 4.0 release candidate, i
    was in a hurry to test it hoping to be back able to use the full
    capabilities of my B200mini.<br>
    The environment is an Ubuntu 20.4 with an Intel I7 CPU.<br>
    The current results are not convincing yet, the following is a trace
    of an application should behave like a sort of spectrum analyzer:<br>
---------------------------------------------------------------------------------------------------------------------------------------------------------<br>
    Error opening log file: basic_ios::clear: iostream error<br>
    [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
    UHD_4.0.0.0-0-unknown<br>
    [INFO] [B200] Detected Device: B200mini<br>
    [INFO] [B200] Operating over USB 3.<br>
    [INFO] [B200] Initialize CODEC control...<br>
    [INFO] [B200] Initialize Radio control...<br>
    [INFO] [B200] Performing register loopback test... <br>
    [INFO] [B200] Register loopback test passed<br>
    [INFO] [B200] Setting master clock rate selection to 'automatic'.<br>
    [INFO] [B200] Asking for clock rate 16.000000 MHz... <br>
    [INFO] [B200] Actually got clock rate 16.000000 MHz.<br>
    [INFO] [B200] Asking for clock rate 56.000000 MHz... <br>
    [INFO] [B200] Actually got clock rate 56.000000 MHz.<br>
    RX Rate: 56.000000 Msps...<br>
    RX Freq: 100.000000 MHz...<br>
    RX Gain: 0.000000 dB...<br>
    RX Bandwidth: 56.000000 MHz...<br>
    Clock Source: external<br>
    Wait for REF... - 0  - 0 REF NOT Locked: ...<br>
    OOverflow indication,Receive session error ERROR_CODE_OVERFLOW<br>
    Timeout while streaming    ERROR_CODE_TIMEOUT<br>
    Timeout while streaming<br>
-------------------------------------------------------------------------------------------------------------------------------------<br>
    The error is not recoverable, the time out signal goes on with no
    data transfer , the example is at 56Mhz sample rate but it is the
    same at any rate.<br>
    I suspect it has to do with the buffer size which is a bit weird
    (81920 Samples);<br>
    With this application really i do not care of loosing a block but as
    long as i can recovery and continue.<br>
    <br>
    Different problem with Radio Astronomy recordings where i cannot
    lose a single sample  , the maximum sample rate i can sustain is no
    more than 40MSaples/sec with a block length of 65536 samples , with
    lower block length even worse. Exactly the same as in previous
    release.<br>
    In the past and with same applications 56Mhz bandwidth were not a
    problem but also the Os is no more the same.<br>
    In all cases there is an initial error in opening the log file.<br>
    Regards,nando<br>
    <br>
    <hr width="100%" size="2"><br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 8/26/2020 14:38, Michael Dickens via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAGNhwTMtPx8aygM-kUgcAyK_L2+nmLxtnJJDjpLXk5HpjK0uwQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Thanks for the UHD 4.0rc1 update, Michael. This UHD
        version will be the most robust and compatible version yet!
        <div><br>
        </div>
        <div>For macOS users of UHD and GNU Radio, a brief update:</div>
        <div><br>
        </div>
        <div>UHD 3.15 and UHD 4.0rc1 build and run on many macOS
          versions -- at least 10.11 " El Capitan" through 10.15
          "Catalina", and probably further back with a modern enough
          compiler. I've built UHD 3.15 back to 10.8 "Mountain Lion",
          but unfortunately UHD applications do not execute ... maybe
          others know what the issue is here? I have yet to try UHD
          4.0rc1 on these older macOS systems.<br>
        </div>
        <div><br>
        </div>
        <div>GNU Radio 3.7.14.0 and 3.8.2.0 -- with a patch to cover the
          commits since this release was tagged on the "maint-3.8"
          branch -- also work with these same macOS versions.<br
            clear="all">
          <div>
            <div dir="ltr" class="gmail_signature"
              data-smartmail="gmail_signature">
              <div dir="ltr">
                <div dir="ltr">
                  <div dir="ltr">
                    <div dir="ltr">
                      <div dir="ltr"><br>
                      </div>
                      <div>All of these projects / versions are
                        available in MacPorts right now, via the ports
                        "uhd" (3.15), "uhd-devel" (4.0rc1), "gnuradio37"
                        (3.7.14.0), and "gnuradio" (3.8.2.0 + patches).</div>
                      <div><br>
                      </div>
                      <div>I have tested out GR 3.8.2.0 + UHD 4.0rc1 and
                        they play nicely (enough) together; I'm
                        confident that the combinations GR 3.8.2.0 + UHD
                        3.15 and GR 3.7.14.0 + UHD 3.15 also work. MP
                        allows GR 3.7.14.0 + UHD 4.0rc1, though I don't
                        know if this will even build.</div>
                      <div><br>
                      </div>
                      <div>I value any feedback on macOS building and/or
                        use of UHD and GR (and Volk, but that's pretty
                        separate by now); MacPorts or some other install
                        means; any macOS version: 10.4-5 PPC 32/64,
                        10.4-16 Intel 32/64; even 10.16 ARM64 ... if
                        that's where you are (you're ahead of me then,
                        though I'm catching up ;)  !!!</div>
                      <div><br>
                      </div>
                      <div>Cheers! - MLD</div>
                      <div>---<br>
                      </div>
                      <div dir="ltr">Michael Dickens<br>
                        Ettus Research Technical Support<br>
                        Email: <a href="mailto:support@ettus.com"
                          target="_blank" moz-do-not-send="true">support@ettus.com</a><br>
                        Web: <a href="https://ettus.com/"
                          target="_blank" moz-do-not-send="true">https://ettus.com/</a></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, Aug 25, 2020 at 8:46
          PM Michael West via USRP-users &lt;<a
            href="mailto:usrp-users@lists.ettus.com"
            moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">
            <div dir="ltr">
              <div>
                <div>
                  <div>The <span><span><span><span><span>release</span></span></span></span></span>
                    <span><span><span><span>candidate</span></span></span></span>
                    of the long awaited UHD version 4.0.0.0 has been
                    tagged and is available for testing.  This major
                    release introduces a new RFNoC framework, a new
                    streaming infrastructure, a power calibration
                    utility and API, and many other features and bug
                    fixes.  The new infrastructure provides improved
                    performance, more flexibility, and the foundation
                    for future demands of higher throughput and lower
                    latencies.<br>
                  </div>
                  <div><br>
                  </div>
                  The tag for this <span><span><span><span><span>release
                            candidate</span></span></span></span></span>:<br>
                  <a
                    href="https://github.com/EttusResearch/uhd/releases/tag/v4.0.0.0-rc1"
                    target="_blank" moz-do-not-send="true">https://github.com/EttusResearch/uhd/releases/tag/v4.0.0.0-rc1</a><br>
                  <br>
                </div>
                There have been 831 commits since the last release
                (3.15.0.0)<span><span><span><span><span></span></span></span></span></span>
                which can be viewed here:<br>
                <div><a
href="https://github.com/EttusResearch/uhd/compare/v3.15.0.0...v4.0.0.0-rc1"
                    target="_blank" moz-do-not-send="true">https://github.com/EttusResearch/uhd/compare/v3.15.0.0...v4.0.0.0-rc1</a></div>
                <div><br>
                </div>
                <div>
                  <div>Please report any bugs found on the UHD issue
                    tracker:</div>
                  <div><a
                      href="http://github.com/EttusResearch/uhd/issues"
                      target="_blank" moz-do-not-send="true">http://github.com/EttusResearch/uhd/issues</a><br>
                  </div>
                  <div>* Please do not use the issue tracker for help or
                    support.<br>
                  </div>
                  <div><br>
                  </div>
                  <div>Pull requests for direct code changes may be
                    submitted to the UHD or FPGA repositories:</div>
                  <div>
                    <div><a
                        href="http://github.com/EttusResearch/uhd/pulls"
                        target="_blank" moz-do-not-send="true">http://github.com/EttusResearch/uhd/pulls</a>
                      <div>
                        <div><a
                            href="http://github.com/EttusResearch/fpga/pulls"
                            target="_blank" moz-do-not-send="true">http://github.com/EttusResearch/fpga/pulls</a></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div><br>
                </div>
                <div>CHANGELOG:</div>
              </div>
              <div>## 004.000.000.000<br>
                * b200:<br>
                  - Enable power calibration API<br>
                  - Add a prop tree node usb_version<br>
                * cal:<br>
                  - Add utility to update all .fbs files, or check the
                generated ones<br>
                  - Add pwr_cal container<br>
                * cmake:<br>
                  - Add ability to pass CXXFLAGS to CMake environment<br>
                * docs:<br>
                  - Update PCIe xport instructions for NI Repos<br>
                  - n3xx: Include WX in table of N320 images<br>
                  - Add stream and transport args documentation<br>
                  - Update Basic/LF dboard references to use new
                operating mode<br>
                  - e3xx/n3xx: Add sections on FP-GPIOs and how to drive
                them<br>
                  - n3xx: Document eeprom flags<br>
                  - Add note about DPDK needing to be built as shared
                libraries<br>
                  - Change DPDK version to 18.11 and make args use
                underscores<br>
                  - Clarifying which devices support DPDK<br>
                * dpdk:<br>
                  - Add new DPDK stack to integrate with I/O services<br>
                * e31x:<br>
                  - Change RFNoC Ctrl clock to 40 MHz<br>
                  - Fix timeout for timekeeper registers<br>
                  - Fix filter bank and antenna switching for channel 0<br>
                  - Swap out liberio for internal Ethernet<br>
                * e320:<br>
                  - Fix timeout for timekeeper registers<br>
                  - Swap out liberio for internal Ethernet<br>
                * examples:<br>
                  - Add usrp_power_meter example<br>
                  - Update test_messages example<br>
                  - Update gpio example<br>
                  - Add options to benchmark_rate<br>
                  - Add example out-of-tree module for RFNoC modules<br>
                  - Remove thread priority elevation<br>
                * fpga:<br>
                  - Replaced RFNoC architecture with new 4.0 version<br>
                  - Added modelsim make simulation target<br>
                  - Upgrade to Vivade 2019.1<br>
                  - Removed unused coregen files and modules<br>
                  - Removed fpga submodule and merged into uhd repo<br>
                  - lib: Change max FFT size to 1024<br>
                  - lib: add Intel MAX10 architecture for 2clk FIFO<br>
                  - rfnoc: Port RFNoC Keep One in N block to new RFNoC
                architecture<br>
                  - rfnoc: Port RFNoC Replay block to new RFNoC
                architecture<br>
                  - rfnoc: Port Signal Generator RFNoC block to new
                RFNoC architecture<br>
                  - Add Switchboard RFNoC block<br>
                  - Remove liberio<br>
                  - rfnoc: Port RFNoC Moving Average block to new RFNoC
                architecture<br>
                  - rfnoc: Port Log-Power block to new RFNoC
                architecture<br>
                  - rfnoc: Port RFNoC Window block to new RFNoC
                architecture<br>
                  - lib: Add synthesizable AXI4-Stream SV components<br>
                  - lib: Add interface and model for AXI4-Lite<br>
                  - rfnoc: Add support for 512-bit CHDR widths<br>
                  - rfnoc: Port RFNoC Add/Sub block to new RFNoC
                architecture<br>
                  - rfnoc: Port Vector IIR RFNoC block to new RFNoC
                architecture<br>
                  - lib: Add AXI-Stream splitter (axis_split)<br>
                * lib:<br>
                  - Add power cal manager<br>
                  - deps: Add FlatBuffers 1.11.0 header files<br>
                  - Add DPDK service queue<br>
                * mpm:<br>
                  - Exclude internal NIC for network hosts<br>
                  - Add ability to run scripts to MPM shell<br>
                  - n3xx: Remove eth1, eth2 from interface list<br>
                  - Default virtual NIC CHDR IP selection<br>
                  - Enable internal NIC on the N3xx<br>
                  - Clean up code, improve Pylint score<br>
                  - Move common mboard regs code to common location<br>
                * mpmd:<br>
                  - Remove liberio<br>
                * multi_usrp:<br>
                  - Fix connect/disconnect of RFNoC chains<br>
                  - Various multi_usrp_rfnoc fixes<br>
                * n310:<br>
                  - Fix GPIO registers<br>
                * n320:<br>
                  - Double radio ingress buffer size<br>
                  - Enable inverse sinc filter for DAC37J82<br>
                * n3xx:<br>
                  - Fix timeout for timekeeper registers<br>
                  - Swap out liberio for internal Ethernet<br>
                * python:<br>
                  - Add Keep One in N block controller bindings<br>
                  - Add replay RFNoC block controller bindings<br>
                  - Add siggen RFNoC block controller bindings<br>
                  - Add Switchboard block python bindings<br>
                  - Add moving average RFNoC block controller bindings<br>
                  - Add bindings for C++ CHDR Parser<br>
                  - Add window RFNoC block controller bindings<br>
                  - Add FFT RFNoC block controller bindings<br>
                  - Add null RFNoC block controller bindings<br>
                  - Add vector IIR RFNoC block controller bindings<br>
                  - Add radio RFNoC block controller bindings<br>
                  - Add FIR filter RFNoC block controller bindings<br>
                  - Add Fosphor RFNoC block controller bindings<br>
                  - Add DUC RFNoC block controller bindings<br>
                  - Add DDC RFNoC block controller bindings<br>
                  - Added new RFNoC image builder module under the uhd
                module<br>
                  - Remove Python2-specific code<br>
                  - Included complex.h to allow pybind to convert that
                data type<br>
                * rfnoc:<br>
                  - Add multichannel register interface<br>
                  - Added support for destruction of streamers<br>
                  - Add Keep One in N block support<br>
                  - Port siggen RFNoC block controller support to new
                RFNoC architecture<br>
                  - Add Switchboard block support<br>
                  - Port Moving Average block controller to new RFNoC
                architecture<br>
                  - Port Log Power RFNoC block support to new RFNoC
                architecture<br>
                  - Port window RFNoC block controller to new RFNoC
                architecture<br>
                  - Port Add/Sub RFNoC block support to new RFNoC
                architecture<br>
                  - Add USE_MAP prop/action forwarding policy<br>
                  - Port Split Stream RFNoC block to new RFNoC
                architecture<br>
                  - Port Vector IIR RFNoC block support to new RFNoC
                architecture<br>
                  - Port RFNoC fosphor block to new RFNoC architecture<br>
                  - Port FIR filter RFNoC block controller to new RFNoC
                architecture<br>
                  - Add multichannel register interface<br>
                  - Add RFNoC Python API<br>
                  - Unify endianness of transports<br>
                  - Add DMA FIFO block controller<br>
                  - examples: Port examples to new RFNoC<br>
                  - Implement flushing on overrun<br>
                  - client_zero can track num SEPs and num ctrl EPs
                separately<br>
                  - Add basic round-robin allocation for links<br>
                  - Add ability to select transport for streamers to
                user APIs<br>
                  - Use link_stream_manager's mgmt_portal for all mgmt
                packets<br>
                  - graph: Optimize property propagation algorithm<br>
                  - Port DUC block controller to new RFNoC architecture<br>
                  - Add MTU tracking<br>
                  - Implement overrun handling using action API<br>
                  - Port null block controller to new RFNoC architecture<br>
                  - Add mb_controller API<br>
                  - Port radio block controller to new RFNoC
                architecture<br>
                  - Port default block controller to new RFNoC
                architecture<br>
                  - Port DDC block controller to new RFNoC architecture<br>
                  - Add rfnoc_graph class<br>
                  - Add action API<br>
                  - Refactored CHDR packet interfaces<br>
                  - Add noc_block_base class<br>
                * tests:<br>
                  - Add unit tests for new RFNoC block controllers<br>
                  - Fix multi_usrp_test<br>
                  - Add unit tests for pwr_cal_mgr<br>
                  - Migrated rfnoc block tests to dedicated subdirectory<br>
                  - Add more tests for max rate streaming<br>
                  - Add tests to exercise max streaming rates and report
                results<br>
                * tools:<br>
                  - Update dissectors for Wireshark major version 3, new
                CHDR<br>
                  - Update FPGA functional verification tests for X3x0
                mcr's &amp; dpdk<br>
                * transport:<br>
                  - Implement eov indications for Rx and Tx streams<br>
                  - Implement an I/O service that uses an offload thread<br>
                  - Implement a single-threaded I/O service<br>
                * twinrx:<br>
                  - Update synthesizer register values for improved rf
                performance<br>
                  - Fix increased noise floor<br>
                  - Remove decimation from frontend<br>
                * uhd:<br>
                  - Disable optimizations for Mac for build speed<br>
                  - remove liberio<br>
                  - improved handling of empty serial number hints<br>
                  - Add discoverable_features API<br>
                  - Add reference power level API to multi_usrp and
                radio_control<br>
                  - Add fuzzy serial number checking<br>
                  - paths: Harmonize around XDG Base Directory
                specification<br>
                  - cal: Use usrp::cal::database instead of CSV files<br>
                  - cal: Add iq_cal calibration data container class<br>
                  - cal: Add calibration container class<br>
                  - cal: Add database class<br>
                  - Introduce I/O service manager<br>
                  - Replace usage of boost smart pointers with C++11
                counterparts<br>
                  - add udp boost asio implementation of transport
                interface<br>
                  - Add thread affinity utility functions<br>
                  - types: Extend stream_cmd_t::num_samps to 64 bits<br>
                * utils:<br>
                  - Expose CHDR Parsing API<br>
                  - Expose CHDR Types in Public API<br>
                  - Support expressions for num_ports in block defs<br>
                  - Let uhd_images_downloader also use HTTPS proxies<br>
                  - Fix FPGA search in rfnoc_image_builder from fpga-src
                to fpga<br>
                  - Add convert_cal_data utility<br>
                  - image_builder: Support parameterized number of ports
                on blocks<br>
                * x300:<br>
                  - Update frame sizes for 10GbE<br>
                  - Fix for incorrect PCIe buffer size values<br>
                  - Change default dboard clock rate from 50 to 100 MHz<br>
                  - Update maximum bitstream size<br>
                  - Enable power reference API<br>
                  - Expand DRAM address space to 1G<br>
                  - Add front-panel GPIO source control<br>
              </div>
              <div><br>
              </div>
              <div>
                <div>
                  <div>
                    <div>As always, we at Ettus Research would like to
                      thank all of the UHD users in the open source SDR
                      community.  This release contains commits from
                      users in the community that submitted pull
                      requests
                      against the <a
                        href="https://github.com/EttusResearch/uhd"
                        target="_blank" moz-do-not-send="true">UHD</a>
                      and <a
                        href="https://github.com/EttusResearch/fpga"
                        target="_blank" moz-do-not-send="true">FPGA</a>
                      repositories as well as many commits that are a
                      direct result of issues reported back to us by
                      users like you
                      through the <a
                        href="https://github.com/EttusResearch/uhd/issues"
                        target="_blank" moz-do-not-send="true">UHD</a>
                      and <a
                        href="https://github.com/EttusResearch/fpga/issues"
                        target="_blank" moz-do-not-send="true">FPGA</a>
                      issue trackers, the <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                        target="_blank" moz-do-not-send="true">USRP-users
                        mailing list</a>, and <a
                        href="mailto:support@ettus.com" target="_blank"
                        moz-do-not-send="true">Ettus support</a>.  You
                      have all helped contribute to the continued
                      improvement of UHD.  Thank you!</div>
                  </div>
                  <div><br>
                  </div>
                  <div>Best regards,</div>
                  <div>Michael<br>
                  </div>
                </div>
              </div>
            </div>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href="mailto:USRP-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
          <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------547417C70E5D2EFD39A15EE3--


--===============4029846443000324394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4029846443000324394==--

