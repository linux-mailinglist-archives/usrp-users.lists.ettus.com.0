Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 768B1252ECC
	for <lists+usrp-users@lfdr.de>; Wed, 26 Aug 2020 14:39:32 +0200 (CEST)
Received: from [::1] (port=47496 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAui5-0005MP-G3; Wed, 26 Aug 2020 08:39:25 -0400
Received: from mail-ej1-f43.google.com ([209.85.218.43]:45341)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kAui0-0005Hs-R3
 for usrp-users@lists.ettus.com; Wed, 26 Aug 2020 08:39:21 -0400
Received: by mail-ej1-f43.google.com with SMTP id si26so2589566ejb.12
 for <usrp-users@lists.ettus.com>; Wed, 26 Aug 2020 05:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3hhGvrqaT8bxgJwrUCF44EMWsnchVd5HSz6Ez2IB9zM=;
 b=p5Z6cyTfOs0rLWWvhUbR5R1YQbCdGQfSK5eUaLfjUovTLiCU76mYRjaV2ZV1WdLOuy
 /hKDeWj6La5zzmIzJyRoGhiAF552xsY7HzYAweiJF2KiEBDMY+npGaRCfEr5TyqQqiEQ
 gUUnwknFNlcDAp9tw0xexXjdIfOTkuVgJsGHRZcLREhFnOOcpUK+DSAo4Z6CEbvf6Yjk
 DxiqpTVNfdSPzjroUbKhPYSHrPVXPnOPevUUnyRlM1Jm0I1aCyXetuhIzDPv19iwC8Q5
 tV80ZZ1cwRR2/V2rzSVaxHfqrIsQ8IMF0spxQWaLxv82JsTstvWt+3SFc6EaBj/e5jEs
 6a4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3hhGvrqaT8bxgJwrUCF44EMWsnchVd5HSz6Ez2IB9zM=;
 b=g7fxJpqnDW9R5ARLRu2m4kfdp9LH6sTH3bZAU68t2petcyFsfv56YSB1waWz4I/kte
 DHPAo5kwNo/Y18d1+Jq2zddjPGZakMLXg+5GH2P4TDgh0cRyZtniyq0+YzTXIYTomEba
 7r/zIL9t68Ju9LCKeCqN7jISjr8Q878/LMZ5MsDYk9m9TlOCRy4LKgA5H1CDR8GMJpLW
 LikM25TlLz5F87IE9yU1hBcKSjuixtYYWVmpKwZo2Z5dFmQT383tkclcfMArQ+/Hrl3t
 BSn12bJ7Wt89RD21pg1/tgNg/fS/rssZm+pKXkmwVtFOIUcQ5ax9dVUCYg5vidqIuGXS
 p0Mg==
X-Gm-Message-State: AOAM531QEC4bLf/7F/d+MdgiwH2xUKKNP68Q+bDGfV0sZVYPg/0hSGtG
 wN4L14SUFIrTtJzRlpq1/PnAfQ0AHC3chv4tBpB06gYQ/GOvYN4I
X-Google-Smtp-Source: ABdhPJzym0/ZCvbkVofvDVjKiIznT08QsQLoAI11Pb82Y12zPT3g55xaEcIJG+l4ue82ajAjL99TyeEpiBknw8s1Ypo=
X-Received: by 2002:a17:906:644e:: with SMTP id
 l14mr1364659ejn.60.1598445519291; 
 Wed, 26 Aug 2020 05:38:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAM4xKrrtSjhM1FFYGvuXrQFBop1d+H78JzQCx5OMh4iQ3rm3TQ@mail.gmail.com>
In-Reply-To: <CAM4xKrrtSjhM1FFYGvuXrQFBop1d+H78JzQCx5OMh4iQ3rm3TQ@mail.gmail.com>
Date: Wed, 26 Aug 2020 08:38:28 -0400
Message-ID: <CAGNhwTMtPx8aygM-kUgcAyK_L2+nmLxtnJJDjpLXk5HpjK0uwQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Cc: GNURadio Discussion List <discuss-gnuradio@gnu.org>
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
Content-Type: multipart/mixed; boundary="===============8101269058795804179=="
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

--===============8101269058795804179==
Content-Type: multipart/alternative; boundary="0000000000005ee5c205adc71999"

--0000000000005ee5c205adc71999
Content-Type: text/plain; charset="UTF-8"

Thanks for the UHD 4.0rc1 update, Michael. This UHD version will be the
most robust and compatible version yet!

For macOS users of UHD and GNU Radio, a brief update:

UHD 3.15 and UHD 4.0rc1 build and run on many macOS versions -- at
least 10.11 " El Capitan" through 10.15 "Catalina", and probably further
back with a modern enough compiler. I've built UHD 3.15 back to 10.8
"Mountain Lion", but unfortunately UHD applications do not execute ...
maybe others know what the issue is here? I have yet to try UHD 4.0rc1 on
these older macOS systems.

GNU Radio 3.7.14.0 and 3.8.2.0 -- with a patch to cover the commits since
this release was tagged on the "maint-3.8" branch -- also work with these
same macOS versions.

All of these projects / versions are available in MacPorts right now, via
the ports "uhd" (3.15), "uhd-devel" (4.0rc1), "gnuradio37" (3.7.14.0), and
"gnuradio" (3.8.2.0 + patches).

I have tested out GR 3.8.2.0 + UHD 4.0rc1 and they play nicely (enough)
together; I'm confident that the combinations GR 3.8.2.0 + UHD 3.15 and GR
3.7.14.0 + UHD 3.15 also work. MP allows GR 3.7.14.0 + UHD 4.0rc1, though I
don't know if this will even build.

I value any feedback on macOS building and/or use of UHD and GR (and Volk,
but that's pretty separate by now); MacPorts or some other install means;
any macOS version: 10.4-5 PPC 32/64, 10.4-16 Intel 32/64; even 10.16 ARM64
... if that's where you are (you're ahead of me then, though I'm catching
up ;)  !!!

Cheers! - MLD
---
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/


On Tue, Aug 25, 2020 at 8:46 PM Michael West via USRP-users <
usrp-users@lists.ettus.com> wrote:

> The release candidate of the long awaited UHD version 4.0.0.0 has been
> tagged and is available for testing.  This major release introduces a new
> RFNoC framework, a new streaming infrastructure, a power calibration
> utility and API, and many other features and bug fixes.  The new
> infrastructure provides improved performance, more flexibility, and the
> foundation for future demands of higher throughput and lower latencies.
>
> The tag for this release candidate:
> https://github.com/EttusResearch/uhd/releases/tag/v4.0.0.0-rc1
>
> There have been 831 commits since the last release (3.15.0.0) which can
> be viewed here:
> https://github.com/EttusResearch/uhd/compare/v3.15.0.0...v4.0.0.0-rc1
>
> Please report any bugs found on the UHD issue tracker:
> http://github.com/EttusResearch/uhd/issues
> * Please do not use the issue tracker for help or support.
>
> Pull requests for direct code changes may be submitted to the UHD or FPGA
> repositories:
> http://github.com/EttusResearch/uhd/pulls
> http://github.com/EttusResearch/fpga/pulls
>
> CHANGELOG:
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
> As always, we at Ettus Research would like to thank all of the UHD users
> in the open source SDR community.  This release contains commits from users
> in the community that submitted pull requests against the UHD
> <https://github.com/EttusResearch/uhd> and FPGA
> <https://github.com/EttusResearch/fpga> repositories as well as many
> commits that are a direct result of issues reported back to us by users
> like you through the UHD <https://github.com/EttusResearch/uhd/issues>
> and FPGA <https://github.com/EttusResearch/fpga/issues> issue trackers,
> the USRP-users mailing list
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, and Ettus
> support <support@ettus.com>.  You have all helped contribute to the
> continued improvement of UHD.  Thank you!
>
> Best regards,
> Michael
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005ee5c205adc71999
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the UHD 4.0rc1 update, Michael. This UHD versio=
n will be the most robust and compatible version yet!<div><br></div><div>Fo=
r  macOS users of UHD and GNU Radio, a brief update:</div><div><br></div><d=
iv>UHD 3.15 and UHD 4.0rc1 build and run on many macOS versions -- at least=
=C2=A010.11 &quot;=C2=A0El Capitan&quot; through 10.15 &quot;Catalina&quot;=
, and probably further back with a modern enough compiler. I&#39;ve built U=
HD 3.15 back to 10.8 &quot;Mountain Lion&quot;, but unfortunately UHD appli=
cations do not execute ... maybe others know what the issue is here? I have=
 yet to try UHD 4.0rc1 on these older macOS systems.<br></div><div><br></di=
v><div>GNU Radio 3.7.14.0 and 3.8.2.0 -- with a patch to cover the commits =
since this release was=C2=A0tagged on the &quot;maint-3.8&quot; branch -- a=
lso work with these same macOS versions.<br clear=3D"all"><div><div dir=3D"=
ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><br></div><div>All of these projects / versions are available in MacPorts=
 right now, via the ports &quot;uhd&quot; (3.15), &quot;uhd-devel&quot; (4.=
0rc1), &quot;gnuradio37&quot; (3.7.14.0), and &quot;gnuradio&quot; (3.8.2.0=
=C2=A0+ patches).</div><div><br></div><div>I have tested out GR 3.8.2.0=C2=
=A0+ UHD 4.0rc1 and they play nicely=C2=A0(enough) together; I&#39;m confid=
ent that the combinations GR 3.8.2.0 + UHD 3.15 and GR 3.7.14.0=C2=A0+ UHD =
3.15 also work. MP allows=C2=A0GR 3.7.14.0=C2=A0+ UHD 4.0rc1, though I don&=
#39;t know if this will even build.</div><div><br></div><div>I value any fe=
edback on macOS building and/or use of UHD and GR (and Volk, but that&#39;s=
 pretty separate=C2=A0by now); MacPorts or some other install means; any ma=
cOS version: 10.4-5 PPC 32/64, 10.4-16 Intel 32/64; even 10.16 ARM64 ... if=
 that&#39;s where you are (you&#39;re ahead of me then, though I&#39;m catc=
hing up ;)=C2=A0 !!!</div><div><br></div><div>Cheers! - MLD</div><div>---<b=
r></div><div dir=3D"ltr">Michael Dickens<br>Ettus Research Technical Suppor=
t<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support@=
ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=3D"_blank">http=
s://ettus.com/</a></div></div></div></div></div></div></div><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tu=
e, Aug 25, 2020 at 8:46 PM Michael West via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div><div><div>The <span><span><span><span><span>release</sp=
an></span></span></span></span> <span><span><span><span>candidate</span></s=
pan></span></span>
 of the long awaited UHD version 4.0.0.0 has been tagged and is available f=
or testing.=C2=A0=20
This major release introduces a new RFNoC framework, a new streaming infras=
tructure, a power calibration utility and API, and many other features and =
bug fixes.=C2=A0 The new infrastructure provides improved performance, more=
 flexibility, and the foundation for future demands of higher throughput an=
d lower latencies.<br></div><div><br></div>The tag for this <span><span><sp=
an><span><span>release candidate</span></span></span></span></span>:<br><a =
href=3D"https://github.com/EttusResearch/uhd/releases/tag/v4.0.0.0-rc1" tar=
get=3D"_blank">https://github.com/EttusResearch/uhd/releases/tag/v4.0.0.0-r=
c1</a><br><br></div>There have been 831 commits since the last release (3.1=
5.0.0)<span><span><span><span><span></span></span></span></span></span> whi=
ch can be viewed here:<br><div><a href=3D"https://github.com/EttusResearch/=
uhd/compare/v3.15.0.0...v4.0.0.0-rc1" target=3D"_blank">https://github.com/=
EttusResearch/uhd/compare/v3.15.0.0...v4.0.0.0-rc1</a></div><div><br></div>=
<div><div>Please report any bugs found on the UHD issue tracker:</div><div>=
<a href=3D"http://github.com/EttusResearch/uhd/issues" target=3D"_blank">ht=
tp://github.com/EttusResearch/uhd/issues</a><br></div><div>* Please do not =
use the issue tracker for help or support.<br></div><div><br></div><div>Pul=
l requests for direct code changes may be submitted to the UHD or FPGA repo=
sitories:</div><div><div><a href=3D"http://github.com/EttusResearch/uhd/pul=
ls" target=3D"_blank">http://github.com/EttusResearch/uhd/pulls</a><div><di=
v><a href=3D"http://github.com/EttusResearch/fpga/pulls" target=3D"_blank">=
http://github.com/EttusResearch/fpga/pulls</a></div></div></div></div></div=
><div><br></div><div>CHANGELOG:</div></div><div>## 004.000.000.000<br>* b20=
0:<br>=C2=A0 - Enable power calibration API<br>=C2=A0 - Add a prop tree nod=
e usb_version<br>* cal:<br>=C2=A0 - Add utility to update all .fbs files, o=
r check the generated ones<br>=C2=A0 - Add pwr_cal container<br>* cmake:<br=
>=C2=A0 - Add ability to pass CXXFLAGS to CMake environment<br>* docs:<br>=
=C2=A0 - Update PCIe xport instructions for NI Repos<br>=C2=A0 - n3xx: Incl=
ude WX in table of N320 images<br>=C2=A0 - Add stream and transport args do=
cumentation<br>=C2=A0 - Update Basic/LF dboard references to use new operat=
ing mode<br>=C2=A0 - e3xx/n3xx: Add sections on FP-GPIOs and how to drive t=
hem<br>=C2=A0 - n3xx: Document eeprom flags<br>=C2=A0 - Add note about DPDK=
 needing to be built as shared libraries<br>=C2=A0 - Change DPDK version to=
 18.11 and make args use underscores<br>=C2=A0 - Clarifying which devices s=
upport DPDK<br>* dpdk:<br>=C2=A0 - Add new DPDK stack to integrate with I/O=
 services<br>* e31x:<br>=C2=A0 - Change RFNoC Ctrl clock to 40 MHz<br>=C2=
=A0 - Fix timeout for timekeeper registers<br>=C2=A0 - Fix filter bank and =
antenna switching for channel 0<br>=C2=A0 - Swap out liberio for internal E=
thernet<br>* e320:<br>=C2=A0 - Fix timeout for timekeeper registers<br>=C2=
=A0 - Swap out liberio for internal Ethernet<br>* examples:<br>=C2=A0 - Add=
 usrp_power_meter example<br>=C2=A0 - Update test_messages example<br>=C2=
=A0 - Update gpio example<br>=C2=A0 - Add options to benchmark_rate<br>=C2=
=A0 - Add example out-of-tree module for RFNoC modules<br>=C2=A0 - Remove t=
hread priority elevation<br>* fpga:<br>=C2=A0 - Replaced RFNoC architecture=
 with new 4.0 version<br>=C2=A0 - Added modelsim make simulation target<br>=
=C2=A0 - Upgrade to Vivade 2019.1<br>=C2=A0 - Removed unused coregen files =
and modules<br>=C2=A0 - Removed fpga submodule and merged into uhd repo<br>=
=C2=A0 - lib: Change max FFT size to 1024<br>=C2=A0 - lib: add Intel MAX10 =
architecture for 2clk FIFO<br>=C2=A0 - rfnoc: Port RFNoC Keep One in N bloc=
k to new RFNoC architecture<br>=C2=A0 - rfnoc: Port RFNoC Replay block to n=
ew RFNoC architecture<br>=C2=A0 - rfnoc: Port Signal Generator RFNoC block =
to new RFNoC architecture<br>=C2=A0 - Add Switchboard RFNoC block<br>=C2=A0=
 - Remove liberio<br>=C2=A0 - rfnoc: Port RFNoC Moving Average block to new=
 RFNoC architecture<br>=C2=A0 - rfnoc: Port Log-Power block to new RFNoC ar=
chitecture<br>=C2=A0 - rfnoc: Port RFNoC Window block to new RFNoC architec=
ture<br>=C2=A0 - lib: Add synthesizable AXI4-Stream SV components<br>=C2=A0=
 - lib: Add interface and model for AXI4-Lite<br>=C2=A0 - rfnoc: Add suppor=
t for 512-bit CHDR widths<br>=C2=A0 - rfnoc: Port RFNoC Add/Sub block to ne=
w RFNoC architecture<br>=C2=A0 - rfnoc: Port Vector IIR RFNoC block to new =
RFNoC architecture<br>=C2=A0 - lib: Add AXI-Stream splitter (axis_split)<br=
>* lib:<br>=C2=A0 - Add power cal manager<br>=C2=A0 - deps: Add FlatBuffers=
 1.11.0 header files<br>=C2=A0 - Add DPDK service queue<br>* mpm:<br>=C2=A0=
 - Exclude internal NIC for network hosts<br>=C2=A0 - Add ability to run sc=
ripts to MPM shell<br>=C2=A0 - n3xx: Remove eth1, eth2 from interface list<=
br>=C2=A0 - Default virtual NIC CHDR IP selection<br>=C2=A0 - Enable intern=
al NIC on the N3xx<br>=C2=A0 - Clean up code, improve Pylint score<br>=C2=
=A0 - Move common mboard regs code to common location<br>* mpmd:<br>=C2=A0 =
- Remove liberio<br>* multi_usrp:<br>=C2=A0 - Fix connect/disconnect of RFN=
oC chains<br>=C2=A0 - Various multi_usrp_rfnoc fixes<br>* n310:<br>=C2=A0 -=
 Fix GPIO registers<br>* n320:<br>=C2=A0 - Double radio ingress buffer size=
<br>=C2=A0 - Enable inverse sinc filter for DAC37J82<br>* n3xx:<br>=C2=A0 -=
 Fix timeout for timekeeper registers<br>=C2=A0 - Swap out liberio for inte=
rnal Ethernet<br>* python:<br>=C2=A0 - Add Keep One in N block controller b=
indings<br>=C2=A0 - Add replay RFNoC block controller bindings<br>=C2=A0 - =
Add siggen RFNoC block controller bindings<br>=C2=A0 - Add Switchboard bloc=
k python bindings<br>=C2=A0 - Add moving average RFNoC block controller bin=
dings<br>=C2=A0 - Add bindings for C++ CHDR Parser<br>=C2=A0 - Add window R=
FNoC block controller bindings<br>=C2=A0 - Add FFT RFNoC block controller b=
indings<br>=C2=A0 - Add null RFNoC block controller bindings<br>=C2=A0 - Ad=
d vector IIR RFNoC block controller bindings<br>=C2=A0 - Add radio RFNoC bl=
ock controller bindings<br>=C2=A0 - Add FIR filter RFNoC block controller b=
indings<br>=C2=A0 - Add Fosphor RFNoC block controller bindings<br>=C2=A0 -=
 Add DUC RFNoC block controller bindings<br>=C2=A0 - Add DDC RFNoC block co=
ntroller bindings<br>=C2=A0 - Added new RFNoC image builder module under th=
e uhd module<br>=C2=A0 - Remove Python2-specific code<br>=C2=A0 - Included =
complex.h to allow pybind to convert that data type<br>* rfnoc:<br>=C2=A0 -=
 Add multichannel register interface<br>=C2=A0 - Added support for destruct=
ion of streamers<br>=C2=A0 - Add Keep One in N block support<br>=C2=A0 - Po=
rt siggen RFNoC block controller support to new RFNoC architecture<br>=C2=
=A0 - Add Switchboard block support<br>=C2=A0 - Port Moving Average block c=
ontroller to new RFNoC architecture<br>=C2=A0 - Port Log Power RFNoC block =
support to new RFNoC architecture<br>=C2=A0 - Port window RFNoC block contr=
oller to new RFNoC architecture<br>=C2=A0 - Port Add/Sub RFNoC block suppor=
t to new RFNoC architecture<br>=C2=A0 - Add USE_MAP prop/action forwarding =
policy<br>=C2=A0 - Port Split Stream RFNoC block to new RFNoC architecture<=
br>=C2=A0 - Port Vector IIR RFNoC block support to new RFNoC architecture<b=
r>=C2=A0 - Port RFNoC fosphor block to new RFNoC architecture<br>=C2=A0 - P=
ort FIR filter RFNoC block controller to new RFNoC architecture<br>=C2=A0 -=
 Add multichannel register interface<br>=C2=A0 - Add RFNoC Python API<br>=
=C2=A0 - Unify endianness of transports<br>=C2=A0 - Add DMA FIFO block cont=
roller<br>=C2=A0 - examples: Port examples to new RFNoC<br>=C2=A0 - Impleme=
nt flushing on overrun<br>=C2=A0 - client_zero can track num SEPs and num c=
trl EPs separately<br>=C2=A0 - Add basic round-robin allocation for links<b=
r>=C2=A0 - Add ability to select transport for streamers to user APIs<br>=
=C2=A0 - Use link_stream_manager&#39;s mgmt_portal for all mgmt packets<br>=
=C2=A0 - graph: Optimize property propagation algorithm<br>=C2=A0 - Port DU=
C block controller to new RFNoC architecture<br>=C2=A0 - Add MTU tracking<b=
r>=C2=A0 - Implement overrun handling using action API<br>=C2=A0 - Port nul=
l block controller to new RFNoC architecture<br>=C2=A0 - Add mb_controller =
API<br>=C2=A0 - Port radio block controller to new RFNoC architecture<br>=
=C2=A0 - Port default block controller to new RFNoC architecture<br>=C2=A0 =
- Port DDC block controller to new RFNoC architecture<br>=C2=A0 - Add rfnoc=
_graph class<br>=C2=A0 - Add action API<br>=C2=A0 - Refactored CHDR packet =
interfaces<br>=C2=A0 - Add noc_block_base class<br>* tests:<br>=C2=A0 - Add=
 unit tests for new RFNoC block controllers<br>=C2=A0 - Fix multi_usrp_test=
<br>=C2=A0 - Add unit tests for pwr_cal_mgr<br>=C2=A0 - Migrated rfnoc bloc=
k tests to dedicated subdirectory<br>=C2=A0 - Add more tests for max rate s=
treaming<br>=C2=A0 - Add tests to exercise max streaming rates and report r=
esults<br>* tools:<br>=C2=A0 - Update dissectors for Wireshark major versio=
n 3, new CHDR<br>=C2=A0 - Update FPGA functional verification tests for X3x=
0 mcr&#39;s &amp; dpdk<br>* transport:<br>=C2=A0 - Implement eov indication=
s for Rx and Tx streams<br>=C2=A0 - Implement an I/O service that uses an o=
ffload thread<br>=C2=A0 - Implement a single-threaded I/O service<br>* twin=
rx:<br>=C2=A0 - Update synthesizer register values for improved rf performa=
nce<br>=C2=A0 - Fix increased noise floor<br>=C2=A0 - Remove decimation fro=
m frontend<br>* uhd:<br>=C2=A0 - Disable optimizations for Mac for build sp=
eed<br>=C2=A0 - remove liberio<br>=C2=A0 - improved handling of empty seria=
l number hints<br>=C2=A0 - Add discoverable_features API<br>=C2=A0 - Add re=
ference power level API to multi_usrp and radio_control<br>=C2=A0 - Add fuz=
zy serial number checking<br>=C2=A0 - paths: Harmonize around XDG Base Dire=
ctory specification<br>=C2=A0 - cal: Use usrp::cal::database instead of CSV=
 files<br>=C2=A0 - cal: Add iq_cal calibration data container class<br>=C2=
=A0 - cal: Add calibration container class<br>=C2=A0 - cal: Add database cl=
ass<br>=C2=A0 - Introduce I/O service manager<br>=C2=A0 - Replace usage of =
boost smart pointers with C++11 counterparts<br>=C2=A0 - add udp boost asio=
 implementation of transport interface<br>=C2=A0 - Add thread affinity util=
ity functions<br>=C2=A0 - types: Extend stream_cmd_t::num_samps to 64 bits<=
br>* utils:<br>=C2=A0 - Expose CHDR Parsing API<br>=C2=A0 - Expose CHDR Typ=
es in Public API<br>=C2=A0 - Support expressions for num_ports in block def=
s<br>=C2=A0 - Let uhd_images_downloader also use HTTPS proxies<br>=C2=A0 - =
Fix FPGA search in rfnoc_image_builder from fpga-src to fpga<br>=C2=A0 - Ad=
d convert_cal_data utility<br>=C2=A0 - image_builder: Support parameterized=
 number of ports on blocks<br>* x300:<br>=C2=A0 - Update frame sizes for 10=
GbE<br>=C2=A0 - Fix for incorrect PCIe buffer size values<br>=C2=A0 - Chang=
e default dboard clock rate from 50 to 100 MHz<br>=C2=A0 - Update maximum b=
itstream size<br>=C2=A0 - Enable power reference API<br>=C2=A0 - Expand DRA=
M address space to 1G<br>=C2=A0 - Add front-panel GPIO source control<br></=
div><div><br></div><div><div><div><div>As always, we at Ettus Research woul=
d like to thank all of the UHD users=20
in the open source SDR community.=C2=A0 This release contains commits from =
users in the community that submitted pull requests
against the <a href=3D"https://github.com/EttusResearch/uhd" target=3D"_bla=
nk">UHD</a> and <a href=3D"https://github.com/EttusResearch/fpga" target=3D=
"_blank">FPGA</a>
 repositories as well as many commits that are a direct result of issues re=
ported back to us by users like you
through the <a href=3D"https://github.com/EttusResearch/uhd/issues" target=
=3D"_blank">UHD</a> and <a href=3D"https://github.com/EttusResearch/fpga/is=
sues" target=3D"_blank">FPGA</a>
  issue trackers, the <a href=3D"http://lists.ettus.com/mailman/listinfo/us=
rp-users_lists.ettus.com" target=3D"_blank">USRP-users mailing list</a>, an=
d <a href=3D"mailto:support@ettus.com" target=3D"_blank">Ettus support</a>.=
=C2=A0 You have all helped contribute to the continued improvement of
 UHD.=C2=A0 Thank you!</div></div><div><br></div><div>Best regards,</div><d=
iv>Michael<br></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000005ee5c205adc71999--


--===============8101269058795804179==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8101269058795804179==--

