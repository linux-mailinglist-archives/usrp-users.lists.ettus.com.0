Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B88255EBA
	for <lists+usrp-users@lfdr.de>; Fri, 28 Aug 2020 18:25:50 +0200 (CEST)
Received: from [::1] (port=44512 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBhCH-0000kk-2I; Fri, 28 Aug 2020 12:25:49 -0400
Received: from mail-ej1-f45.google.com ([209.85.218.45]:33171)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kBhCC-0000bB-6W
 for USRP-users@lists.ettus.com; Fri, 28 Aug 2020 12:25:44 -0400
Received: by mail-ej1-f45.google.com with SMTP id a21so2306847ejp.0
 for <USRP-users@lists.ettus.com>; Fri, 28 Aug 2020 09:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ituewm60mLnbQXlR1q/QVv1+xAb1Qdu0D7kGfVVaCyQ=;
 b=prcgRziYhq8ZogZrurfvoZ6aTllB5qJhBdq3kZmIY7gxqUmwSuVURjo7QXk9vKO3fp
 iia2N4KdFsxjioLScJCUWjFV2tps8EQTR0ZB0LtZupA0rd8Qg/HiC2q4+NPtpcncJFX7
 mQX5LflAvhrJfqMIr3+MTByp22VmuNg4WPuiIlkQnl8EmHbtSZPCL8FBk2yWs1sVb2ui
 FiK8EXjmntjTiJS0g08lsGYtySRZr46JHZ5ZKCDh/dG+EktBabT+Di4VFA6bCVVaxYdJ
 ziMwbib0q2UOkJiHCb7kXSvqL2vaZVvnnvH7ldZoOdiuMj4PtkldhuNV9+ZsaSRMaBya
 o6Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ituewm60mLnbQXlR1q/QVv1+xAb1Qdu0D7kGfVVaCyQ=;
 b=Gjerk6duD0sVBYTi5ges8IwEDlyR1nJpe1Vb6GJ1iEbc+FZXQ6OFJTIINPKT663GoE
 TeWeX8zCzIbIGsjLoEZ3UJCYmwD4o0GZrzZVce/t1HIS0rH+GxqWHsxNiGN8PGbVktp/
 llO4fMDqP8vUcEVbPtzDeRAkhtRsqLybZcTa/I1vBPztpB9qxALRszFTZFwy2froOlam
 N2LynvZQBzGyRS3XyoyKoc01lRZ5Y9OvRRBAUhvB5fwfIZJnjD6QSE0SzYzCnGxlwvpK
 Wj09xPBIgw728242rxU96KFh8aT/MiALXmKVAOkyZxAmAlepTnOV4fwCDdtxqU42O3or
 ruXg==
X-Gm-Message-State: AOAM530ggJDdD9A4Zl4SUon+TCDoRKEhhY//g7wZbK1dJW8drwNZYY/7
 Sk/kVf50L6cxgEhY3EkRV+NIvBRBQTvtAE9FWf594tyw
X-Google-Smtp-Source: ABdhPJybN0rK+WHp1gifd8+2KZUX78RY8tMJe9iVgw5kT4wsZd2mJS9f5rzWlEkTgoKhIbCeT9US1pMFSmOQxg57IbY=
X-Received: by 2002:a17:907:205c:: with SMTP id
 pg28mr2615596ejb.22.1598631902898; 
 Fri, 28 Aug 2020 09:25:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAM4xKrrtSjhM1FFYGvuXrQFBop1d+H78JzQCx5OMh4iQ3rm3TQ@mail.gmail.com>
 <5a9885da761d4116baefb1f8f14ca3bb@dynetics.com>
In-Reply-To: <5a9885da761d4116baefb1f8f14ca3bb@dynetics.com>
Date: Fri, 28 Aug 2020 12:24:51 -0400
Message-ID: <CAGNhwTP4xjunBDTB1NkeSi0vqUwe4_7rexUvo5myw8spPbsGrg@mail.gmail.com>
To: "Carmichael, Ryan" <Ryan.Carmichael@dynetics.com>
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5172815078498839474=="
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

--===============5172815078498839474==
Content-Type: multipart/alternative; boundary="000000000000b30d5505adf27e57"

--000000000000b30d5505adf27e57
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Minimum GCC is 5.4.0 ; requires C++14 . - MLD


On Fri, Aug 28, 2020 at 12:22 PM Carmichael, Ryan via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Michael,
>
>
>
> I=E2=80=99m getting this error during compilation. Is there a minimum gcc=
 version
> needed for 4.0.0.0-rc1? My RHEL7 has g++ (GCC) 4.8.5 20150623 (Red Hat
> 4.8.5-39).
>
>
>
> /home/ryan/tmp/uhd4/uhd-4.0.0.0-rc1/host/lib/cal/database.cpp:200:2:
> error: converting to =E2=80=98std::tuple<uhd::usrp::cal::source, bool (*)=
(const
> std::basic_string<char, std::char_traits<char>, std::allocator<char> >&,
> const std::basic_string<char, std::char_traits<char>, std::allocator<char=
>
> >&), std::vector<unsigned char, std::allocator<unsigned char> > (*)(const
> std::basic_string<char, std::char_traits<char>, std::allocator<char> >&,
> const std::basic_string<char, std::char_traits<char>, std::allocator<char=
>
> >&)>=E2=80=99 from initializer list would use explicit constructor =E2=80=
=98constexpr
> std::tuple< <template-parameter-1-1> >::tuple(_UElements&& ...) [with
> _UElements =3D {uhd::usrp::cal::source, bool (*)(const
> std::basic_string<char, std::char_traits<char>, std::allocator<char> >&,
> const std::basic_string<char, std::char_traits<char>, std::allocator<char=
>
> >&), std::vector<unsigned char, std::allocator<unsigned char> > (*)(const
> std::basic_string<char, std::char_traits<char>, std::allocator<char> >&,
> const std::basic_string<char, std::char_traits<char>, std::allocator<char=
>
> >&)}; <template-parameter-2-2> =3D void; _Elements =3D {uhd::usrp::cal::s=
ource,
> bool (*)(const std::basic_string<char, std::char_traits<char>,
> std::allocator<char> >&, const std::basic_string<char,
> std::char_traits<char>, std::allocator<char> >&), std::vector<unsigned
> char, std::allocator<unsigned char> > (*)(const std::basic_string<char,
> std::char_traits<char>, std::allocator<char> >&, const
> std::basic_string<char, std::char_traits<char>, std::allocator<char> >&)}=
]=E2=80=99
>
>
>
> -          Ryan
>
>
>
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> *On Behalf Of *Mi=
chael
> West via USRP-users
> *Sent:* Tuesday, August 25, 2020 7:46 PM
> *To:* USRP-users@lists.ettus.com; discuss-gnuradio@gnu.org
> *Subject:* EXTERNAL: [USRP-users] [UHD] Announcing 4.0.0.0 Release
> Candidate 1
>
>
>
> The release candidate of the long awaited UHD version 4.0.0.0 has been
> tagged and is available for testing.  This major release introduces a new
> RFNoC framework, a new streaming infrastructure, a power calibration
> utility and API, and many other features and bug fixes.  The new
> infrastructure provides improved performance, more flexibility, and the
> foundation for future demands of higher throughput and lower latencies.
>
>
>
> The tag for this release candidate:
> https://github.com/EttusResearch/uhd/releases/tag/v4.0.0.0-rc1
>
> There have been 831 commits since the last release (3.15.0.0) which can b=
e
> viewed here:
>
> https://github.com/EttusResearch/uhd/compare/v3.15.0.0...v4.0.0.0-rc1
>
>
>
> Please report any bugs found on the UHD issue tracker:
>
> http://github.com/EttusResearch/uhd/issues
>
> * Please do not use the issue tracker for help or support.
>
>
>
> Pull requests for direct code changes may be submitted to the UHD or FPGA
> repositories:
>
> http://github.com/EttusResearch/uhd/pulls
>
> http://github.com/EttusResearch/fpga/pulls
>
>
>
> CHANGELOG:
>
> ## 004.000.000.000
> * b200:
>   - Enable power calibration API
>   - Add a prop tree node usb_version
> * cal:
>   - Add utility to update all .fbs files, or check the generated ones
>   - Add pwr_cal container
> * cmake:
>   - Add ability to pass CXXFLAGS to CMake environment
> * docs:
>   - Update PCIe xport instructions for NI Repos
>   - n3xx: Include WX in table of N320 images
>   - Add stream and transport args documentation
>   - Update Basic/LF dboard references to use new operating mode
>   - e3xx/n3xx: Add sections on FP-GPIOs and how to drive them
>   - n3xx: Document eeprom flags
>   - Add note about DPDK needing to be built as shared libraries
>   - Change DPDK version to 18.11 and make args use underscores
>   - Clarifying which devices support DPDK
> * dpdk:
>   - Add new DPDK stack to integrate with I/O services
> * e31x:
>   - Change RFNoC Ctrl clock to 40 MHz
>   - Fix timeout for timekeeper registers
>   - Fix filter bank and antenna switching for channel 0
>   - Swap out liberio for internal Ethernet
> * e320:
>   - Fix timeout for timekeeper registers
>   - Swap out liberio for internal Ethernet
> * examples:
>   - Add usrp_power_meter example
>   - Update test_messages example
>   - Update gpio example
>   - Add options to benchmark_rate
>   - Add example out-of-tree module for RFNoC modules
>   - Remove thread priority elevation
> * fpga:
>   - Replaced RFNoC architecture with new 4.0 version
>   - Added modelsim make simulation target
>   - Upgrade to Vivade 2019.1
>   - Removed unused coregen files and modules
>   - Removed fpga submodule and merged into uhd repo
>   - lib: Change max FFT size to 1024
>   - lib: add Intel MAX10 architecture for 2clk FIFO
>   - rfnoc: Port RFNoC Keep One in N block to new RFNoC architecture
>   - rfnoc: Port RFNoC Replay block to new RFNoC architecture
>   - rfnoc: Port Signal Generator RFNoC block to new RFNoC architecture
>   - Add Switchboard RFNoC block
>   - Remove liberio
>   - rfnoc: Port RFNoC Moving Average block to new RFNoC architecture
>   - rfnoc: Port Log-Power block to new RFNoC architecture
>   - rfnoc: Port RFNoC Window block to new RFNoC architecture
>   - lib: Add synthesizable AXI4-Stream SV components
>   - lib: Add interface and model for AXI4-Lite
>   - rfnoc: Add support for 512-bit CHDR widths
>   - rfnoc: Port RFNoC Add/Sub block to new RFNoC architecture
>   - rfnoc: Port Vector IIR RFNoC block to new RFNoC architecture
>   - lib: Add AXI-Stream splitter (axis_split)
> * lib:
>   - Add power cal manager
>   - deps: Add FlatBuffers 1.11.0 header files
>   - Add DPDK service queue
> * mpm:
>   - Exclude internal NIC for network hosts
>   - Add ability to run scripts to MPM shell
>   - n3xx: Remove eth1, eth2 from interface list
>   - Default virtual NIC CHDR IP selection
>   - Enable internal NIC on the N3xx
>   - Clean up code, improve Pylint score
>   - Move common mboard regs code to common location
> * mpmd:
>   - Remove liberio
> * multi_usrp:
>   - Fix connect/disconnect of RFNoC chains
>   - Various multi_usrp_rfnoc fixes
> * n310:
>   - Fix GPIO registers
> * n320:
>   - Double radio ingress buffer size
>   - Enable inverse sinc filter for DAC37J82
> * n3xx:
>   - Fix timeout for timekeeper registers
>   - Swap out liberio for internal Ethernet
> * python:
>   - Add Keep One in N block controller bindings
>   - Add replay RFNoC block controller bindings
>   - Add siggen RFNoC block controller bindings
>   - Add Switchboard block python bindings
>   - Add moving average RFNoC block controller bindings
>   - Add bindings for C++ CHDR Parser
>   - Add window RFNoC block controller bindings
>   - Add FFT RFNoC block controller bindings
>   - Add null RFNoC block controller bindings
>   - Add vector IIR RFNoC block controller bindings
>   - Add radio RFNoC block controller bindings
>   - Add FIR filter RFNoC block controller bindings
>   - Add Fosphor RFNoC block controller bindings
>   - Add DUC RFNoC block controller bindings
>   - Add DDC RFNoC block controller bindings
>   - Added new RFNoC image builder module under the uhd module
>   - Remove Python2-specific code
>   - Included complex.h to allow pybind to convert that data type
> * rfnoc:
>   - Add multichannel register interface
>   - Added support for destruction of streamers
>   - Add Keep One in N block support
>   - Port siggen RFNoC block controller support to new RFNoC architecture
>   - Add Switchboard block support
>   - Port Moving Average block controller to new RFNoC architecture
>   - Port Log Power RFNoC block support to new RFNoC architecture
>   - Port window RFNoC block controller to new RFNoC architecture
>   - Port Add/Sub RFNoC block support to new RFNoC architecture
>   - Add USE_MAP prop/action forwarding policy
>   - Port Split Stream RFNoC block to new RFNoC architecture
>   - Port Vector IIR RFNoC block support to new RFNoC architecture
>   - Port RFNoC fosphor block to new RFNoC architecture
>   - Port FIR filter RFNoC block controller to new RFNoC architecture
>   - Add multichannel register interface
>   - Add RFNoC Python API
>   - Unify endianness of transports
>   - Add DMA FIFO block controller
>   - examples: Port examples to new RFNoC
>   - Implement flushing on overrun
>   - client_zero can track num SEPs and num ctrl EPs separately
>   - Add basic round-robin allocation for links
>   - Add ability to select transport for streamers to user APIs
>   - Use link_stream_manager's mgmt_portal for all mgmt packets
>   - graph: Optimize property propagation algorithm
>   - Port DUC block controller to new RFNoC architecture
>   - Add MTU tracking
>   - Implement overrun handling using action API
>   - Port null block controller to new RFNoC architecture
>   - Add mb_controller API
>   - Port radio block controller to new RFNoC architecture
>   - Port default block controller to new RFNoC architecture
>   - Port DDC block controller to new RFNoC architecture
>   - Add rfnoc_graph class
>   - Add action API
>   - Refactored CHDR packet interfaces
>   - Add noc_block_base class
> * tests:
>   - Add unit tests for new RFNoC block controllers
>   - Fix multi_usrp_test
>   - Add unit tests for pwr_cal_mgr
>   - Migrated rfnoc block tests to dedicated subdirectory
>   - Add more tests for max rate streaming
>   - Add tests to exercise max streaming rates and report results
> * tools:
>   - Update dissectors for Wireshark major version 3, new CHDR
>   - Update FPGA functional verification tests for X3x0 mcr's & dpdk
> * transport:
>   - Implement eov indications for Rx and Tx streams
>   - Implement an I/O service that uses an offload thread
>   - Implement a single-threaded I/O service
> * twinrx:
>   - Update synthesizer register values for improved rf performance
>   - Fix increased noise floor
>   - Remove decimation from frontend
> * uhd:
>   - Disable optimizations for Mac for build speed
>   - remove liberio
>   - improved handling of empty serial number hints
>   - Add discoverable_features API
>   - Add reference power level API to multi_usrp and radio_control
>   - Add fuzzy serial number checking
>   - paths: Harmonize around XDG Base Directory specification
>   - cal: Use usrp::cal::database instead of CSV files
>   - cal: Add iq_cal calibration data container class
>   - cal: Add calibration container class
>   - cal: Add database class
>   - Introduce I/O service manager
>   - Replace usage of boost smart pointers with C++11 counterparts
>   - add udp boost asio implementation of transport interface
>   - Add thread affinity utility functions
>   - types: Extend stream_cmd_t::num_samps to 64 bits
> * utils:
>   - Expose CHDR Parsing API
>   - Expose CHDR Types in Public API
>   - Support expressions for num_ports in block defs
>   - Let uhd_images_downloader also use HTTPS proxies
>   - Fix FPGA search in rfnoc_image_builder from fpga-src to fpga
>   - Add convert_cal_data utility
>   - image_builder: Support parameterized number of ports on blocks
> * x300:
>   - Update frame sizes for 10GbE
>   - Fix for incorrect PCIe buffer size values
>   - Change default dboard clock rate from 50 to 100 MHz
>   - Update maximum bitstream size
>   - Enable power reference API
>   - Expand DRAM address space to 1G
>   - Add front-panel GPIO source control
>
>
>
> As always, we at Ettus Research would like to thank all of the UHD users
> in the open source SDR community.  This release contains commits from use=
rs
> in the community that submitted pull requests against the UHD
> <https://github.com/EttusResearch/uhd> and FPGA
> <https://github.com/EttusResearch/fpga> repositories as well as many
> commits that are a direct result of issues reported back to us by users
> like you through the UHD <https://github.com/EttusResearch/uhd/issues>
> and FPGA <https://github.com/EttusResearch/fpga/issues> issue trackers,
> the USRP-users mailing list
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, and=
 Ettus
> support <support@ettus.com>.  You have all helped contribute to the
> continued improvement of UHD.  Thank you!
>
>
>
> Best regards,
>
> Michael
>
> * ------------------------------ The information contained in this
> message, and any attachments, may contain privileged and/or proprietary
> information that is intended solely for the person or entity to which it =
is
> addressed. Moreover, it may contain export restricted technical data
> controlled by Export Administration Regulations (EAR) or the Internationa=
l
> Traffic in Arms Regulations (ITAR). Any review, retransmission,
> dissemination, or re-export to foreign or domestic entities by anyone oth=
er
> than the intended recipient in accordance with EAR and/or ITAR regulation=
s
> is prohibited. *
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b30d5505adf27e57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Minimum GCC is 5.4.0 ; requires C++14 . - MLD<div><br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri, Aug 28, 2020 at 12:22 PM Carmichael, Ryan via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-6756405218631580945WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Hi Michael,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">I=E2=80=99m getting this error during compil=
ation. Is there a minimum gcc version needed for 4.0.0.0-rc1? My RHEL7 has =
g++ (GCC) 4.8.5 20150623 (Red Hat 4.8.5-39).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/home/ryan/tmp/uhd4/uhd-4.0.0.0-rc1/host/lib=
/cal/database.cpp:200:2: error: converting to =E2=80=98std::tuple&lt;uhd::u=
srp::cal::source, bool (*)(const std::basic_string&lt;char,
 std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;&amp;, const =
std::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;=
char&gt; &gt;&amp;), std::vector&lt;unsigned char, std::allocator&lt;unsign=
ed char&gt; &gt; (*)(const std::basic_string&lt;char, std::char_traits&lt;c=
har&gt;, std::allocator&lt;char&gt;
 &gt;&amp;, const std::basic_string&lt;char, std::char_traits&lt;char&gt;, =
std::allocator&lt;char&gt; &gt;&amp;)&gt;=E2=80=99 from initializer list wo=
uld use explicit constructor =E2=80=98constexpr std::tuple&lt; &lt;template=
-parameter-1-1&gt; &gt;::tuple(_UElements&amp;&amp; ...) [with _UElements =
=3D {uhd::usrp::cal::source,
 bool (*)(const std::basic_string&lt;char, std::char_traits&lt;char&gt;, st=
d::allocator&lt;char&gt; &gt;&amp;, const std::basic_string&lt;char, std::c=
har_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;&amp;), std::vector&=
lt;unsigned char, std::allocator&lt;unsigned char&gt; &gt; (*)(const std::b=
asic_string&lt;char,
 std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;&amp;, const =
std::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;=
char&gt; &gt;&amp;)}; &lt;template-parameter-2-2&gt; =3D void; _Elements =
=3D {uhd::usrp::cal::source, bool (*)(const std::basic_string&lt;char, std:=
:char_traits&lt;char&gt;,
 std::allocator&lt;char&gt; &gt;&amp;, const std::basic_string&lt;char, std=
::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;&amp;), std::vect=
or&lt;unsigned char, std::allocator&lt;unsigned char&gt; &gt; (*)(const std=
::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;cha=
r&gt; &gt;&amp;, const std::basic_string&lt;char,
 std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;&amp;)}]=E2=
=80=99<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"gmail-m_-6756405218631580945MsoListParagraph"><u></u><span styl=
e=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"><s=
pan>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-size:11pt;font-family:Calib=
ri,sans-serif;color:rgb(31,73,125)">Ryan<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.=
ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
<b>On Behalf Of </b>Michael West via USRP-users<br>
<b>Sent:</b> Tuesday, August 25, 2020 7:46 PM<br>
<b>To:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a>; <a href=3D"mailto:discuss-gnuradio@gnu.org"=
 target=3D"_blank">discuss-gnuradio@gnu.org</a><br>
<b>Subject:</b> EXTERNAL: [USRP-users] [UHD] Announcing 4.0.0.0 Release Can=
didate 1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">The release candidate of the long awaited UHD versio=
n 4.0.0.0 has been tagged and is available for testing.=C2=A0 This major re=
lease introduces a new RFNoC framework, a new streaming infrastructure, a p=
ower calibration utility and API, and many
 other features and bug fixes.=C2=A0 The new infrastructure provides improv=
ed performance, more flexibility, and the foundation for future demands of =
higher throughput and lower latencies.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">The tag for this releas=
e candidate:<br>
<a href=3D"https://github.com/EttusResearch/uhd/releases/tag/v4.0.0.0-rc1" =
target=3D"_blank">https://github.com/EttusResearch/uhd/releases/tag/v4.0.0.=
0-rc1</a><u></u><u></u></p>
</div>
<p class=3D"MsoNormal">There have been 831 commits since the last release (=
3.15.0.0) which can be viewed here:<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/uhd/comp=
are/v3.15.0.0...v4.0.0.0-rc1" target=3D"_blank">https://github.com/EttusRes=
earch/uhd/compare/v3.15.0.0...v4.0.0.0-rc1</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">Please report any bugs found on the UHD issue tracke=
r:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"http://github.com/EttusResearch/uhd/issue=
s" target=3D"_blank">http://github.com/EttusResearch/uhd/issues</a><u></u><=
u></u></p>
</div>
<div>
<p class=3D"MsoNormal">* Please do not use the issue tracker for help or su=
pport.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Pull requests for direct code changes may be submitt=
ed to the UHD or FPGA repositories:<u></u><u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><a href=3D"http://github.com/EttusResearch/uhd/pulls=
" target=3D"_blank">http://github.com/EttusResearch/uhd/pulls</a><u></u><u>=
</u></p>
<div>
<div>
<p class=3D"MsoNormal"><a href=3D"http://github.com/EttusResearch/fpga/pull=
s" target=3D"_blank">http://github.com/EttusResearch/fpga/pulls</a><u></u><=
u></u></p>
</div>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">CHANGELOG:<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">## 004.000.000.000<br>
* b200:<br>
=C2=A0 - Enable power calibration API<br>
=C2=A0 - Add a prop tree node usb_version<br>
* cal:<br>
=C2=A0 - Add utility to update all .fbs files, or check the generated ones<=
br>
=C2=A0 - Add pwr_cal container<br>
* cmake:<br>
=C2=A0 - Add ability to pass CXXFLAGS to CMake environment<br>
* docs:<br>
=C2=A0 - Update PCIe xport instructions for NI Repos<br>
=C2=A0 - n3xx: Include WX in table of N320 images<br>
=C2=A0 - Add stream and transport args documentation<br>
=C2=A0 - Update Basic/LF dboard references to use new operating mode<br>
=C2=A0 - e3xx/n3xx: Add sections on FP-GPIOs and how to drive them<br>
=C2=A0 - n3xx: Document eeprom flags<br>
=C2=A0 - Add note about DPDK needing to be built as shared libraries<br>
=C2=A0 - Change DPDK version to 18.11 and make args use underscores<br>
=C2=A0 - Clarifying which devices support DPDK<br>
* dpdk:<br>
=C2=A0 - Add new DPDK stack to integrate with I/O services<br>
* e31x:<br>
=C2=A0 - Change RFNoC Ctrl clock to 40 MHz<br>
=C2=A0 - Fix timeout for timekeeper registers<br>
=C2=A0 - Fix filter bank and antenna switching for channel 0<br>
=C2=A0 - Swap out liberio for internal Ethernet<br>
* e320:<br>
=C2=A0 - Fix timeout for timekeeper registers<br>
=C2=A0 - Swap out liberio for internal Ethernet<br>
* examples:<br>
=C2=A0 - Add usrp_power_meter example<br>
=C2=A0 - Update test_messages example<br>
=C2=A0 - Update gpio example<br>
=C2=A0 - Add options to benchmark_rate<br>
=C2=A0 - Add example out-of-tree module for RFNoC modules<br>
=C2=A0 - Remove thread priority elevation<br>
* fpga:<br>
=C2=A0 - Replaced RFNoC architecture with new 4.0 version<br>
=C2=A0 - Added modelsim make simulation target<br>
=C2=A0 - Upgrade to Vivade 2019.1<br>
=C2=A0 - Removed unused coregen files and modules<br>
=C2=A0 - Removed fpga submodule and merged into uhd repo<br>
=C2=A0 - lib: Change max FFT size to 1024<br>
=C2=A0 - lib: add Intel MAX10 architecture for 2clk FIFO<br>
=C2=A0 - rfnoc: Port RFNoC Keep One in N block to new RFNoC architecture<br=
>
=C2=A0 - rfnoc: Port RFNoC Replay block to new RFNoC architecture<br>
=C2=A0 - rfnoc: Port Signal Generator RFNoC block to new RFNoC architecture=
<br>
=C2=A0 - Add Switchboard RFNoC block<br>
=C2=A0 - Remove liberio<br>
=C2=A0 - rfnoc: Port RFNoC Moving Average block to new RFNoC architecture<b=
r>
=C2=A0 - rfnoc: Port Log-Power block to new RFNoC architecture<br>
=C2=A0 - rfnoc: Port RFNoC Window block to new RFNoC architecture<br>
=C2=A0 - lib: Add synthesizable AXI4-Stream SV components<br>
=C2=A0 - lib: Add interface and model for AXI4-Lite<br>
=C2=A0 - rfnoc: Add support for 512-bit CHDR widths<br>
=C2=A0 - rfnoc: Port RFNoC Add/Sub block to new RFNoC architecture<br>
=C2=A0 - rfnoc: Port Vector IIR RFNoC block to new RFNoC architecture<br>
=C2=A0 - lib: Add AXI-Stream splitter (axis_split)<br>
* lib:<br>
=C2=A0 - Add power cal manager<br>
=C2=A0 - deps: Add FlatBuffers 1.11.0 header files<br>
=C2=A0 - Add DPDK service queue<br>
* mpm:<br>
=C2=A0 - Exclude internal NIC for network hosts<br>
=C2=A0 - Add ability to run scripts to MPM shell<br>
=C2=A0 - n3xx: Remove eth1, eth2 from interface list<br>
=C2=A0 - Default virtual NIC CHDR IP selection<br>
=C2=A0 - Enable internal NIC on the N3xx<br>
=C2=A0 - Clean up code, improve Pylint score<br>
=C2=A0 - Move common mboard regs code to common location<br>
* mpmd:<br>
=C2=A0 - Remove liberio<br>
* multi_usrp:<br>
=C2=A0 - Fix connect/disconnect of RFNoC chains<br>
=C2=A0 - Various multi_usrp_rfnoc fixes<br>
* n310:<br>
=C2=A0 - Fix GPIO registers<br>
* n320:<br>
=C2=A0 - Double radio ingress buffer size<br>
=C2=A0 - Enable inverse sinc filter for DAC37J82<br>
* n3xx:<br>
=C2=A0 - Fix timeout for timekeeper registers<br>
=C2=A0 - Swap out liberio for internal Ethernet<br>
* python:<br>
=C2=A0 - Add Keep One in N block controller bindings<br>
=C2=A0 - Add replay RFNoC block controller bindings<br>
=C2=A0 - Add siggen RFNoC block controller bindings<br>
=C2=A0 - Add Switchboard block python bindings<br>
=C2=A0 - Add moving average RFNoC block controller bindings<br>
=C2=A0 - Add bindings for C++ CHDR Parser<br>
=C2=A0 - Add window RFNoC block controller bindings<br>
=C2=A0 - Add FFT RFNoC block controller bindings<br>
=C2=A0 - Add null RFNoC block controller bindings<br>
=C2=A0 - Add vector IIR RFNoC block controller bindings<br>
=C2=A0 - Add radio RFNoC block controller bindings<br>
=C2=A0 - Add FIR filter RFNoC block controller bindings<br>
=C2=A0 - Add Fosphor RFNoC block controller bindings<br>
=C2=A0 - Add DUC RFNoC block controller bindings<br>
=C2=A0 - Add DDC RFNoC block controller bindings<br>
=C2=A0 - Added new RFNoC image builder module under the uhd module<br>
=C2=A0 - Remove Python2-specific code<br>
=C2=A0 - Included complex.h to allow pybind to convert that data type<br>
* rfnoc:<br>
=C2=A0 - Add multichannel register interface<br>
=C2=A0 - Added support for destruction of streamers<br>
=C2=A0 - Add Keep One in N block support<br>
=C2=A0 - Port siggen RFNoC block controller support to new RFNoC architectu=
re<br>
=C2=A0 - Add Switchboard block support<br>
=C2=A0 - Port Moving Average block controller to new RFNoC architecture<br>
=C2=A0 - Port Log Power RFNoC block support to new RFNoC architecture<br>
=C2=A0 - Port window RFNoC block controller to new RFNoC architecture<br>
=C2=A0 - Port Add/Sub RFNoC block support to new RFNoC architecture<br>
=C2=A0 - Add USE_MAP prop/action forwarding policy<br>
=C2=A0 - Port Split Stream RFNoC block to new RFNoC architecture<br>
=C2=A0 - Port Vector IIR RFNoC block support to new RFNoC architecture<br>
=C2=A0 - Port RFNoC fosphor block to new RFNoC architecture<br>
=C2=A0 - Port FIR filter RFNoC block controller to new RFNoC architecture<b=
r>
=C2=A0 - Add multichannel register interface<br>
=C2=A0 - Add RFNoC Python API<br>
=C2=A0 - Unify endianness of transports<br>
=C2=A0 - Add DMA FIFO block controller<br>
=C2=A0 - examples: Port examples to new RFNoC<br>
=C2=A0 - Implement flushing on overrun<br>
=C2=A0 - client_zero can track num SEPs and num ctrl EPs separately<br>
=C2=A0 - Add basic round-robin allocation for links<br>
=C2=A0 - Add ability to select transport for streamers to user APIs<br>
=C2=A0 - Use link_stream_manager&#39;s mgmt_portal for all mgmt packets<br>
=C2=A0 - graph: Optimize property propagation algorithm<br>
=C2=A0 - Port DUC block controller to new RFNoC architecture<br>
=C2=A0 - Add MTU tracking<br>
=C2=A0 - Implement overrun handling using action API<br>
=C2=A0 - Port null block controller to new RFNoC architecture<br>
=C2=A0 - Add mb_controller API<br>
=C2=A0 - Port radio block controller to new RFNoC architecture<br>
=C2=A0 - Port default block controller to new RFNoC architecture<br>
=C2=A0 - Port DDC block controller to new RFNoC architecture<br>
=C2=A0 - Add rfnoc_graph class<br>
=C2=A0 - Add action API<br>
=C2=A0 - Refactored CHDR packet interfaces<br>
=C2=A0 - Add noc_block_base class<br>
* tests:<br>
=C2=A0 - Add unit tests for new RFNoC block controllers<br>
=C2=A0 - Fix multi_usrp_test<br>
=C2=A0 - Add unit tests for pwr_cal_mgr<br>
=C2=A0 - Migrated rfnoc block tests to dedicated subdirectory<br>
=C2=A0 - Add more tests for max rate streaming<br>
=C2=A0 - Add tests to exercise max streaming rates and report results<br>
* tools:<br>
=C2=A0 - Update dissectors for Wireshark major version 3, new CHDR<br>
=C2=A0 - Update FPGA functional verification tests for X3x0 mcr&#39;s &amp;=
 dpdk<br>
* transport:<br>
=C2=A0 - Implement eov indications for Rx and Tx streams<br>
=C2=A0 - Implement an I/O service that uses an offload thread<br>
=C2=A0 - Implement a single-threaded I/O service<br>
* twinrx:<br>
=C2=A0 - Update synthesizer register values for improved rf performance<br>
=C2=A0 - Fix increased noise floor<br>
=C2=A0 - Remove decimation from frontend<br>
* uhd:<br>
=C2=A0 - Disable optimizations for Mac for build speed<br>
=C2=A0 - remove liberio<br>
=C2=A0 - improved handling of empty serial number hints<br>
=C2=A0 - Add discoverable_features API<br>
=C2=A0 - Add reference power level API to multi_usrp and radio_control<br>
=C2=A0 - Add fuzzy serial number checking<br>
=C2=A0 - paths: Harmonize around XDG Base Directory specification<br>
=C2=A0 - cal: Use usrp::cal::database instead of CSV files<br>
=C2=A0 - cal: Add iq_cal calibration data container class<br>
=C2=A0 - cal: Add calibration container class<br>
=C2=A0 - cal: Add database class<br>
=C2=A0 - Introduce I/O service manager<br>
=C2=A0 - Replace usage of boost smart pointers with C++11 counterparts<br>
=C2=A0 - add udp boost asio implementation of transport interface<br>
=C2=A0 - Add thread affinity utility functions<br>
=C2=A0 - types: Extend stream_cmd_t::num_samps to 64 bits<br>
* utils:<br>
=C2=A0 - Expose CHDR Parsing API<br>
=C2=A0 - Expose CHDR Types in Public API<br>
=C2=A0 - Support expressions for num_ports in block defs<br>
=C2=A0 - Let uhd_images_downloader also use HTTPS proxies<br>
=C2=A0 - Fix FPGA search in rfnoc_image_builder from fpga-src to fpga<br>
=C2=A0 - Add convert_cal_data utility<br>
=C2=A0 - image_builder: Support parameterized number of ports on blocks<br>
* x300:<br>
=C2=A0 - Update frame sizes for 10GbE<br>
=C2=A0 - Fix for incorrect PCIe buffer size values<br>
=C2=A0 - Change default dboard clock rate from 50 to 100 MHz<br>
=C2=A0 - Update maximum bitstream size<br>
=C2=A0 - Enable power reference API<br>
=C2=A0 - Expand DRAM address space to 1G<br>
=C2=A0 - Add front-panel GPIO source control<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">As always, we at Ettus Research would like to thank =
all of the UHD users in the open source SDR community.=C2=A0 This release c=
ontains commits from users in the community that submitted pull requests ag=
ainst the
<a href=3D"https://github.com/EttusResearch/uhd" target=3D"_blank">UHD</a> =
and <a href=3D"https://github.com/EttusResearch/fpga" target=3D"_blank">
FPGA</a> repositories as well as many commits that are a direct result of i=
ssues reported back to us by users like you through the
<a href=3D"https://github.com/EttusResearch/uhd/issues" target=3D"_blank">U=
HD</a> and
<a href=3D"https://github.com/EttusResearch/fpga/issues" target=3D"_blank">=
FPGA</a> issue trackers, the
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">
USRP-users mailing list</a>, and <a href=3D"mailto:support@ettus.com" targe=
t=3D"_blank">
Ettus support</a>.=C2=A0 You have all helped contribute to the continued im=
provement of UHD.=C2=A0 Thank you!<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Best regards,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Michael<u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
<i><br>
<hr>
<p style=3D"font-size:8pt;line-height:9pt">The information contained in thi=
s message, and any attachments, may contain privileged and/or proprietary i=
nformation that is intended solely for the person or entity to which it is =
addressed.
 Moreover, it may contain export restricted technical data controlled by Ex=
port Administration Regulations (EAR) or the International Traffic in Arms =
Regulations (ITAR). Any review, retransmission, dissemination, or re-export=
 to foreign or domestic entities
 by anyone other than the intended recipient in accordance with EAR and/or =
ITAR regulations is prohibited.</p>
</i>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b30d5505adf27e57--


--===============5172815078498839474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5172815078498839474==--

