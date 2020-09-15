Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B0426AD6E
	for <lists+usrp-users@lfdr.de>; Tue, 15 Sep 2020 21:23:14 +0200 (CEST)
Received: from [::1] (port=41892 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIGXn-0003ro-OR; Tue, 15 Sep 2020 15:23:11 -0400
Received: from mail-ed1-f42.google.com ([209.85.208.42]:36671)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kIGXj-0003jF-Ku
 for usrp-users@lists.ettus.com; Tue, 15 Sep 2020 15:23:07 -0400
Received: by mail-ed1-f42.google.com with SMTP id w1so4192000edr.3
 for <usrp-users@lists.ettus.com>; Tue, 15 Sep 2020 12:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mAsY4ehCJ3EoArNxJEZG/CkNV6NHIqyFVlwveX4uuqk=;
 b=Znid2ri+iLlutx+PlxZJLWlVX+O6kJ/lnSPWnW6mAFH9q20dtq5M1hmVpwgq0P2KYn
 5UUApo4bGemxDxrrA9whvww1ZPBssgwVd6uu/zxBJfo1nmi0P4He6nX9uhRhdeIFSqae
 GLNwIH5KRvJLI/EQBtoQZyaqu3XirJRarlxKKOsYpTrCeIrjpyUzsj9DK3anKXnKVwYQ
 zpUsrNjDpAelJ8jD7mCzux2B7Lg+bwoQTj6r4twKR+EOai1KLb7v0S8VpK+dvlGvzKXc
 fCIs+q4M99yuqPDsSPZuTjDM34QhXEhPER4EVNBgyDnMZpYXO7cwcuk4bI5ELP9Iabkc
 er3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mAsY4ehCJ3EoArNxJEZG/CkNV6NHIqyFVlwveX4uuqk=;
 b=BzC9YfaaTvCOJj7WBfJwn+B4hNZZnw34gnjhlUqdAJsULHHnRbaRjHoCyPWjwJPg1v
 JixavGPqbkvcUDLk7K2wx8m/5f2DO97tuCzGD6VIg7ndp9dZDhzQV9pxGyPIyU39FxjZ
 Evy6p4URsooavjiTt+itsQ/XYamAsyXaAqF38LgDKORWsbktmnv+SQdz6iP/VI2aDdj+
 pGN9IExg0wUS8/WnoTohcxROoGK9TgoTwCb3Y91pA/XM9p/+5ncn9VKY6NXw3TUdQQ/Y
 9QFn4EOaDkHDNUvQZQx1gi8eFD1rbM+YGsMAi2avIQQrSMoVuvB4i9gkwgwlduU5phli
 Nvpg==
X-Gm-Message-State: AOAM5308xCWlaA0AOdbtoHM/eoD5jReVgUroojbHFSm2MRKekEEpJPgK
 QoGO7MjdAhEUe96EEUugIbgA4Fkp1E07Ff0NsICMsyRb24oFAKP6
X-Google-Smtp-Source: ABdhPJxQbUmuRpH67kcrfEqgIA5YzxYuQ+kPVUQALtKg5UeMyfir/nNs1DTDJeBYZG98GiW7wUiW5/WqH6w9fWPEz0c=
X-Received: by 2002:a50:f102:: with SMTP id w2mr24600566edl.63.1600197746078; 
 Tue, 15 Sep 2020 12:22:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAM4xKrrUHT55bCQzXjwJODL2JyrZxAuDm+9NVZoN4CeCcGDhQQ@mail.gmail.com>
In-Reply-To: <CAM4xKrrUHT55bCQzXjwJODL2JyrZxAuDm+9NVZoN4CeCcGDhQQ@mail.gmail.com>
Date: Tue, 15 Sep 2020 15:22:15 -0400
Message-ID: <CAGNhwTNuJ6qw4FFGFdUEuD0OP6RBBhRiY5kUu5_survCw35-jQ@mail.gmail.com>
To: GNURadio Discussion List <discuss-gnuradio@gnu.org>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] [UHD] 4.0.0.0 Release Announcement
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
Content-Type: multipart/mixed; boundary="===============3576358892180416195=="
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

--===============3576358892180416195==
Content-Type: multipart/alternative; boundary="0000000000003abb5f05af5f1221"

--0000000000003abb5f05af5f1221
Content-Type: text/plain; charset="UTF-8"

FYI for macOS users using MacPorts: I updated the "uhd-devel" port to the
current 4.0.0.0 release commit (20200913-90ce6062); the "uhd" port is still
at 3.15.0.0. Both ports should work with the "gnuradio" port for GNU Radio
3.8.2.0, and should install and execute under macOS 10.11 through
10.16-beta / 11.0-beta. Execution on older macOS / OSX can be made to work,
at least back to 10.8 and probably even 10.5. I'm working on updating the
ports to handle those older OS versions correctly, though this is a low
priority so thanks for your patience if you're such a user!

As always, I'd love to hear from macOS users, your successes or failures,
whether using UHD from MacPorts, or source, or any other install means.

Welcome to the future of UHD! - MLD
---
Michael L Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/


On Tue, Sep 15, 2020 at 2:53 PM Michael West via USRP-users <
usrp-users@lists.ettus.com> wrote:

> UHD 4.0.0.0 is now available!  This is a major release.  It is not API or
> ABI compatible with earlier releases.  This release includes a new
> architecture as well as several new features and bug fixes.
>
> UHD 4.0.0.0 was a massive development undertaking, more than just a new
> version it's a leap forward in performance, usability, and stability you
> can learn more and see some demos at:
> https://www.ettus.com/announcing-uhd4/
>
> Installers for Windows and Fedora are available here:
> http://files.ettus.com/binaries/uhd/uhd_004.000.000.000-release/
>
> The PPA for Ubuntu will be uploaded soon and will be found here:
> https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
>
> The tag for this release is located here:
> https://github.com/EttusResearch/uhd/releases/tag/v4.0.0.0
>
> There have been 875 commits since the last API release which can be
> viewed here:
> https://github.com/EttusResearch/uhd/compare/v3.15.0.0...v4.0.0.0
>
> Please report any bugs found on the UHD issue tracker:
> http://github.com/EttusResearch/uhd/issues
> * Please do not use the issue tracker for help or support.
>
> Pull requests for direct code changes can be submitted to the UHD
> repository:
> http://github.com/EttusResearch/uhd/pulls
>
> As always, we at Ettus Research would like to thank all of the UHD users
> in the open source SDR community.  This release contains commits from users
> in the community that submitted pull requests against the UHD
> <https://github.com/EttusResearch/uhd> repository as well as many commits
> that are a direct result of issues reported back to us by users like you
> through the UHD <https://github.com/EttusResearch/uhd/issues> issue
> tracker, the USRP-users mailing list
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, and Ettus
> support <support@ettus.com>.  You have all helped contribute to the
> continued improvement of UHD.  Thank you!
>
> CHANGELOG:
> ## 004.000.000.000
> * b200:
>   - Add unload-bootloader option to b2xx_fx3_utils
>   - Update FX3 SDK for bootloader and firmware
>   - Fix address for serial number in firmware
>   - Enable power calibration API
>   - Add a prop tree node usb_version
> * cal:
>   - Add utility to update all .fbs files, or check the generated ones
>   - Add pwr_cal container
> * cmake:
>   - Use relative path to Python lib location for Windows installer
>   - Add ability to pass CXXFLAGS to CMake environment
> * docs:
>   - Add new CHDR format to transports
>   - Update register maps
>   - Update FPGA manual
>   - Update mender commands for Zeus filesystems
>   - Add section about network mode on E3xx devices
>   - Add DPDK link detection section
>   - Add Windows-specific UHD Python module notes
>   - Add note about compiling on Ubuntu 20.04
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
>   - Improve link status detection
>   - Increase default num recv frames
>   - Add new DPDK stack to integrate with I/O services
> * e31x:
>   - Add retry to loopback_self_test
>   - Change RFNoC Ctrl clock to 40 MHz
>   - Fix timeout for timekeeper registers
>   - Fix filter bank and antenna switching for channel 0
>   - Swap out liberio for internal Ethernet
> * e320:
>   - Fix timeout for timekeeper registers
>   - Swap out liberio for internal Ethernet
> * examples:
>   - Fix install paths in OOT RFNoC block example
>   - Add usrp_power_meter example
>   - Update test_messages example
>   - Update gpio example
>   - Add options to benchmark_rate
>   - Add example out-of-tree module for RFNoC modules
>   - Remove thread priority elevation
> * fpga:
>   - Added AA image mappings to N320 image package
>   - Add Replay Block to RFNoC Core Image
>   - Update DRAM IO signatures
>   - sim: chdr_stream_endpoint_tb improvements
>   - sim: Fix stream command and status models
>   - Update AXI interconnect address range for n3xx and e320
>   - rfnoc: Update CHDR stream INIT command
>   - Update coding guidelines
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
>   - Remove recursive locks in apply_corrections
>   - Add power cal manager
>   - deps: Add FlatBuffers 1.11.0 header files
>   - Add DPDK service queue
> * mpm:
>   - e31x: Accept FF terminated strings in eeprom (legacy support)
>   - Return 10 Gbs link speed on failure
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
>   - Add Replay Block to default FGPA images
>   - Fix GPIO registers
> * n320:
>   - Add Replay Block to default FGPA images
>   - Double radio ingress buffer size
>   - Enable inverse sinc filter for DAC37J82
> * n3xx:
>   - Fix timeout for timekeeper registers
>   - Swap out liberio for internal Ethernet
> * python:
>   - Add peek/poke bindings to noc_block_base
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
>   - replay: Update packet size on mtu update
>   - Set null source/sink block initial state
>   - Add support for 32-bit memory address widths to Replay block
>   - Enable SEPs with connect_through_blocks
>   - Exit disconnect() early if nodes not in node map
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
>   - Fix build issue with Boost 1.67
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
>   - Bypass adf535x feedback divider
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
>   - Add Replay Block to default FGPA images
>   - Update frame sizes for 10GbE
>   - Fix for incorrect PCIe buffer size values
>   - Change default dboard clock rate from 50 to 100 MHz
>   - Update maximum bitstream size
>   - Enable power reference API
>   - Expand DRAM address space to 1G
>   - Add front-panel GPIO source control
>
> Regards,
> Michael
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003abb5f05af5f1221
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">FYI for macOS users using MacPorts: I upd=
ated the &quot;uhd-devel&quot; port to the current 4.0.0.0 release commit (=
20200913-90ce6062); the &quot;uhd&quot; port is still at 3.15.0.0. Both por=
ts should work with the &quot;gnuradio&quot; port for GNU Radio 3.8.2.0, an=
d should install and execute  under macOS 10.11 through 10.16-beta / 11.0-b=
eta. Execution on older macOS / OSX can be made to work, at least back to 1=
0.8 and probably even 10.5. I&#39;m working on updating the ports to handle=
 those older OS versions correctly, though=C2=A0this is a low priority so t=
hanks for your patience if you&#39;re such a user!</div><div dir=3D"ltr"><b=
r></div><div dir=3D"ltr">As always, I&#39;d love to hear from macOS users, =
your successes or failures, whether using UHD from MacPorts, or source, or =
any other install means.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">W=
elcome to the future of UHD! - MLD<br clear=3D"all"><div><div dir=3D"ltr"><=
div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr">---</div><div dir=3D"ltr"><div dir=3D"ltr">Michael L Dickens</div>=
<div dir=3D"ltr">Ettus Research Technical Support<br></div>Email: <a href=
=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus.com</a><br>We=
b: <a href=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/<br><=
/a></div></div></div></div></div></div></div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 15, 2020=
 at 2:53 PM Michael West via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div><div><div>UHD <span>4.0.0.0 </span>is
 now available!=C2=A0 This is a major release.=C2=A0 It is not API or ABI=
=20
compatible with earlier releases.=C2=A0 This release includes a new archite=
cture as well as several new=20
features and bug fixes.<br></div><div><br></div><div>UHD 4.0.0.0 was a mass=
ive development undertaking, more than just a new version it&#39;s a leap f=
orward in performance, usability, and stability you can learn more and see =
some demos at: <a href=3D"https://www.ettus.com/announcing-uhd4/" target=3D=
"_blank">https://www.ettus.com/announcing-uhd4/</a></div><div><br>Installer=
s for Windows and Fedora are available here:<br><a href=3D"http://files.ett=
us.com/binaries/uhd/uhd_004.000.000.000-release/" target=3D"_blank">http://=
files.ettus.com/binaries/uhd/uhd_004.000.000.000-release/</a><br><br>The PP=
A for Ubuntu will be uploaded soon and will be found here:<br><a href=3D"ht=
tps://launchpad.net/~ettusresearch/+archive/ubuntu/uhd" target=3D"_blank">h=
ttps://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a><div><br>The tag=
 for this=C2=A0<span><span><span>release</span></span></span>=C2=A0is locat=
ed here:<br><a href=3D"https://github.com/EttusResearch/uhd/releases/tag/v4=
.0.0.0" target=3D"_blank">https://github.com/EttusResearch/uhd/releases/tag=
/v4.0.0.0</a></div></div></div></div><div><div><div><br></div>There have be=
en 875 commits since the last API=C2=A0<span><span>release</span></span>=C2=
=A0which can be viewed here:<br><a href=3D"https://github.com/EttusResearch=
/uhd/compare/v3.15.0.0...v4.0.0.0" target=3D"_blank">https://github.com/Ett=
usResearch/uhd/compare/v3.15.0.0...v4.0.0.0</a><br><div><br></div><div><div=
>Please report any bugs found on the UHD issue tracker:</div><div><a href=
=3D"http://github.com/EttusResearch/uhd/issues" target=3D"_blank">http://gi=
thub.com/EttusResearch/uhd/issues</a><br></div><div>* Please do not use the=
 issue tracker for help or support.<br></div><div><br></div><div>Pull reque=
sts for direct code changes can be submitted to the UHD repository:</div><d=
iv><div><a href=3D"http://github.com/EttusResearch/uhd/pulls" target=3D"_bl=
ank">http://github.com/EttusResearch/uhd/pulls</a></div></div></div></div><=
div><br></div><div><div>As
 always, we at Ettus Research would like to thank all of the UHD users=20
in the open source SDR community.=C2=A0 This release contains commits from=
=20
users in the community that submitted pull requests against the=C2=A0<a hre=
f=3D"https://github.com/EttusResearch/uhd" target=3D"_blank">UHD</a> reposi=
tory as well as many commits that are a direct result of issues reported ba=
ck to us by users like you through the=C2=A0<a href=3D"https://github.com/E=
ttusResearch/uhd/issues" target=3D"_blank">UHD</a> issue tracker, the=C2=A0=
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">USRP-users mailing list</a>, and=C2=A0<a href=3D"mail=
to:support@ettus.com" target=3D"_blank">Ettus support</a>.=C2=A0 You have a=
ll helped contribute to the continued improvement of UHD.=C2=A0 Thank you!<=
/div><div><br></div><div>CHANGELOG:</div><div>## 004.000.000.000<br>* b200:=
<br>=C2=A0 - Add unload-bootloader option to b2xx_fx3_utils<br>=C2=A0 - Upd=
ate FX3 SDK for bootloader and firmware<br>=C2=A0 - Fix address for serial =
number in firmware<br>=C2=A0 - Enable power calibration API<br>=C2=A0 - Add=
 a prop tree node usb_version<br>* cal:<br>=C2=A0 - Add utility to update a=
ll .fbs files, or check the generated ones<br>=C2=A0 - Add pwr_cal containe=
r<br>* cmake:<br>=C2=A0 - Use relative path to Python lib location for Wind=
ows installer<br>=C2=A0 - Add ability to pass CXXFLAGS to CMake environment=
<br>* docs:<br>=C2=A0 - Add new CHDR format to transports<br>=C2=A0 - Updat=
e register maps<br>=C2=A0 - Update FPGA manual<br>=C2=A0 - Update mender co=
mmands for Zeus filesystems<br>=C2=A0 - Add section about network mode on E=
3xx devices<br>=C2=A0 - Add DPDK link detection section<br>=C2=A0 - Add Win=
dows-specific UHD Python module notes<br>=C2=A0 - Add note about compiling =
on Ubuntu 20.04<br>=C2=A0 - Update PCIe xport instructions for NI Repos<br>=
=C2=A0 - n3xx: Include WX in table of N320 images<br>=C2=A0 - Add stream an=
d transport args documentation<br>=C2=A0 - Update Basic/LF dboard reference=
s to use new operating mode<br>=C2=A0 - e3xx/n3xx: Add sections on FP-GPIOs=
 and how to drive them<br>=C2=A0 - n3xx: Document eeprom flags<br>=C2=A0 - =
Add note about DPDK needing to be built as shared libraries<br>=C2=A0 - Cha=
nge DPDK version to 18.11 and make args use underscores<br>=C2=A0 - Clarify=
ing which devices support DPDK<br>* dpdk:<br>=C2=A0 - Improve link status d=
etection<br>=C2=A0 - Increase default num recv frames<br>=C2=A0 - Add new D=
PDK stack to integrate with I/O services<br>* e31x:<br>=C2=A0 - Add retry t=
o loopback_self_test<br>=C2=A0 - Change RFNoC Ctrl clock to 40 MHz<br>=C2=
=A0 - Fix timeout for timekeeper registers<br>=C2=A0 - Fix filter bank and =
antenna switching for channel 0<br>=C2=A0 - Swap out liberio for internal E=
thernet<br>* e320:<br>=C2=A0 - Fix timeout for timekeeper registers<br>=C2=
=A0 - Swap out liberio for internal Ethernet<br>* examples:<br>=C2=A0 - Fix=
 install paths in OOT RFNoC block example<br>=C2=A0 - Add usrp_power_meter =
example<br>=C2=A0 - Update test_messages example<br>=C2=A0 - Update gpio ex=
ample<br>=C2=A0 - Add options to benchmark_rate<br>=C2=A0 - Add example out=
-of-tree module for RFNoC modules<br>=C2=A0 - Remove thread priority elevat=
ion<br>* fpga:<br>=C2=A0 - Added AA image mappings to N320 image package<br=
>=C2=A0 - Add Replay Block to RFNoC Core Image<br>=C2=A0 - Update DRAM IO s=
ignatures<br>=C2=A0 - sim: chdr_stream_endpoint_tb improvements<br>=C2=A0 -=
 sim: Fix stream command and status models<br>=C2=A0 - Update AXI interconn=
ect address range for n3xx and e320<br>=C2=A0 - rfnoc: Update CHDR stream I=
NIT command<br>=C2=A0 - Update coding guidelines<br>=C2=A0 - Replaced RFNoC=
 architecture with new 4.0 version<br>=C2=A0 - Added modelsim make simulati=
on target<br>=C2=A0 - Upgrade to Vivade 2019.1<br>=C2=A0 - Removed unused c=
oregen files and modules<br>=C2=A0 - Removed fpga submodule and merged into=
 uhd repo<br>=C2=A0 - lib: Change max FFT size to 1024<br>=C2=A0 - lib: add=
 Intel MAX10 architecture for 2clk FIFO<br>=C2=A0 - rfnoc: Port RFNoC Keep =
One in N block to new RFNoC architecture<br>=C2=A0 - rfnoc: Port RFNoC Repl=
ay block to new RFNoC architecture<br>=C2=A0 - rfnoc: Port Signal Generator=
 RFNoC block to new RFNoC architecture<br>=C2=A0 - Add Switchboard RFNoC bl=
ock<br>=C2=A0 - Remove liberio<br>=C2=A0 - rfnoc: Port RFNoC Moving Average=
 block to new RFNoC architecture<br>=C2=A0 - rfnoc: Port Log-Power block to=
 new RFNoC architecture<br>=C2=A0 - rfnoc: Port RFNoC Window block to new R=
FNoC architecture<br>=C2=A0 - lib: Add synthesizable AXI4-Stream SV compone=
nts<br>=C2=A0 - lib: Add interface and model for AXI4-Lite<br>=C2=A0 - rfno=
c: Add support for 512-bit CHDR widths<br>=C2=A0 - rfnoc: Port RFNoC Add/Su=
b block to new RFNoC architecture<br>=C2=A0 - rfnoc: Port Vector IIR RFNoC =
block to new RFNoC architecture<br>=C2=A0 - lib: Add AXI-Stream splitter (a=
xis_split)<br>* lib:<br>=C2=A0 - Remove recursive locks in apply_correction=
s<br>=C2=A0 - Add power cal manager<br>=C2=A0 - deps: Add FlatBuffers 1.11.=
0 header files<br>=C2=A0 - Add DPDK service queue<br>* mpm:<br>=C2=A0 - e31=
x: Accept FF terminated strings in eeprom (legacy support)<br>=C2=A0 - Retu=
rn 10 Gbs link speed on failure<br>=C2=A0 - Exclude internal NIC for networ=
k hosts<br>=C2=A0 - Add ability to run scripts to MPM shell<br>=C2=A0 - n3x=
x: Remove eth1, eth2 from interface list<br>=C2=A0 - Default virtual NIC CH=
DR IP selection<br>=C2=A0 - Enable internal NIC on the N3xx<br>=C2=A0 - Cle=
an up code, improve Pylint score<br>=C2=A0 - Move common mboard regs code t=
o common location<br>* mpmd:<br>=C2=A0 - Remove liberio<br>* multi_usrp:<br=
>=C2=A0 - Fix connect/disconnect of RFNoC chains<br>=C2=A0 - Various multi_=
usrp_rfnoc fixes<br>* n310:<br>=C2=A0 - Add Replay Block to default FGPA im=
ages<br>=C2=A0 - Fix GPIO registers<br>* n320:<br>=C2=A0 - Add Replay Block=
 to default FGPA images<br>=C2=A0 - Double radio ingress buffer size<br>=C2=
=A0 - Enable inverse sinc filter for DAC37J82<br>* n3xx:<br>=C2=A0 - Fix ti=
meout for timekeeper registers<br>=C2=A0 - Swap out liberio for internal Et=
hernet<br>* python:<br>=C2=A0 - Add peek/poke bindings to noc_block_base<br=
>=C2=A0 - Add Keep One in N block controller bindings<br>=C2=A0 - Add repla=
y RFNoC block controller bindings<br>=C2=A0 - Add siggen RFNoC block contro=
ller bindings<br>=C2=A0 - Add Switchboard block python bindings<br>=C2=A0 -=
 Add moving average RFNoC block controller bindings<br>=C2=A0 - Add binding=
s for C++ CHDR Parser<br>=C2=A0 - Add window RFNoC block controller binding=
s<br>=C2=A0 - Add FFT RFNoC block controller bindings<br>=C2=A0 - Add null =
RFNoC block controller bindings<br>=C2=A0 - Add vector IIR RFNoC block cont=
roller bindings<br>=C2=A0 - Add radio RFNoC block controller bindings<br>=
=C2=A0 - Add FIR filter RFNoC block controller bindings<br>=C2=A0 - Add Fos=
phor RFNoC block controller bindings<br>=C2=A0 - Add DUC RFNoC block contro=
ller bindings<br>=C2=A0 - Add DDC RFNoC block controller bindings<br>=C2=A0=
 - Added new RFNoC image builder module under the uhd module<br>=C2=A0 - Re=
move Python2-specific code<br>=C2=A0 - Included complex.h to allow pybind t=
o convert that data type<br>* rfnoc:<br>=C2=A0 - replay: Update packet size=
 on mtu update<br>=C2=A0 - Set null source/sink block initial state<br>=C2=
=A0 - Add support for 32-bit memory address widths to Replay block<br>=C2=
=A0 - Enable SEPs with connect_through_blocks<br>=C2=A0 - Exit disconnect()=
 early if nodes not in node map<br>=C2=A0 - Add multichannel register inter=
face<br>=C2=A0 - Added support for destruction of streamers<br>=C2=A0 - Add=
 Keep One in N block support<br>=C2=A0 - Port siggen RFNoC block controller=
 support to new RFNoC architecture<br>=C2=A0 - Add Switchboard block suppor=
t<br>=C2=A0 - Port Moving Average block controller to new RFNoC architectur=
e<br>=C2=A0 - Port Log Power RFNoC block support to new RFNoC architecture<=
br>=C2=A0 - Port window RFNoC block controller to new RFNoC architecture<br=
>=C2=A0 - Port Add/Sub RFNoC block support to new RFNoC architecture<br>=C2=
=A0 - Add USE_MAP prop/action forwarding policy<br>=C2=A0 - Port Split Stre=
am RFNoC block to new RFNoC architecture<br>=C2=A0 - Port Vector IIR RFNoC =
block support to new RFNoC architecture<br>=C2=A0 - Port RFNoC fosphor bloc=
k to new RFNoC architecture<br>=C2=A0 - Port FIR filter RFNoC block control=
ler to new RFNoC architecture<br>=C2=A0 - Add multichannel register interfa=
ce<br>=C2=A0 - Add RFNoC Python API<br>=C2=A0 - Unify endianness of transpo=
rts<br>=C2=A0 - Add DMA FIFO block controller<br>=C2=A0 - examples: Port ex=
amples to new RFNoC<br>=C2=A0 - Implement flushing on overrun<br>=C2=A0 - c=
lient_zero can track num SEPs and num ctrl EPs separately<br>=C2=A0 - Add b=
asic round-robin allocation for links<br>=C2=A0 - Add ability to select tra=
nsport for streamers to user APIs<br>=C2=A0 - Use link_stream_manager&#39;s=
 mgmt_portal for all mgmt packets<br>=C2=A0 - graph: Optimize property prop=
agation algorithm<br>=C2=A0 - Port DUC block controller to new RFNoC archit=
ecture<br>=C2=A0 - Add MTU tracking<br>=C2=A0 - Implement overrun handling =
using action API<br>=C2=A0 - Port null block controller to new RFNoC archit=
ecture<br>=C2=A0 - Add mb_controller API<br>=C2=A0 - Port radio block contr=
oller to new RFNoC architecture<br>=C2=A0 - Port default block controller t=
o new RFNoC architecture<br>=C2=A0 - Port DDC block controller to new RFNoC=
 architecture<br>=C2=A0 - Add rfnoc_graph class<br>=C2=A0 - Add action API<=
br>=C2=A0 - Refactored CHDR packet interfaces<br>=C2=A0 - Add noc_block_bas=
e class<br>* tests:<br>=C2=A0 - Fix build issue with Boost 1.67<br>=C2=A0 -=
 Add unit tests for new RFNoC block controllers<br>=C2=A0 - Fix multi_usrp_=
test<br>=C2=A0 - Add unit tests for pwr_cal_mgr<br>=C2=A0 - Migrated rfnoc =
block tests to dedicated subdirectory<br>=C2=A0 - Add more tests for max ra=
te streaming<br>=C2=A0 - Add tests to exercise max streaming rates and repo=
rt results<br>* tools:<br>=C2=A0 - Update dissectors for Wireshark major ve=
rsion 3, new CHDR<br>=C2=A0 - Update FPGA functional verification tests for=
 X3x0 mcr&#39;s &amp; dpdk<br>* transport:<br>=C2=A0 - Implement eov indica=
tions for Rx and Tx streams<br>=C2=A0 - Implement an I/O service that uses =
an offload thread<br>=C2=A0 - Implement a single-threaded I/O service<br>* =
twinrx:<br>=C2=A0 - Bypass adf535x feedback divider<br>=C2=A0 - Update synt=
hesizer register values for improved rf performance<br>=C2=A0 - Fix increas=
ed noise floor<br>=C2=A0 - Remove decimation from frontend<br>* uhd:<br>=C2=
=A0 - Disable optimizations for Mac for build speed<br>=C2=A0 - remove libe=
rio<br>=C2=A0 - improved handling of empty serial number hints<br>=C2=A0 - =
Add discoverable_features API<br>=C2=A0 - Add reference power level API to =
multi_usrp and radio_control<br>=C2=A0 - Add fuzzy serial number checking<b=
r>=C2=A0 - paths: Harmonize around XDG Base Directory specification<br>=C2=
=A0 - cal: Use usrp::cal::database instead of CSV files<br>=C2=A0 - cal: Ad=
d iq_cal calibration data container class<br>=C2=A0 - cal: Add calibration =
container class<br>=C2=A0 - cal: Add database class<br>=C2=A0 - Introduce I=
/O service manager<br>=C2=A0 - Replace usage of boost smart pointers with C=
++11 counterparts<br>=C2=A0 - add udp boost asio implementation of transpor=
t interface<br>=C2=A0 - Add thread affinity utility functions<br>=C2=A0 - t=
ypes: Extend stream_cmd_t::num_samps to 64 bits<br>* utils:<br>=C2=A0 - Exp=
ose CHDR Parsing API<br>=C2=A0 - Expose CHDR Types in Public API<br>=C2=A0 =
- Support expressions for num_ports in block defs<br>=C2=A0 - Let uhd_image=
s_downloader also use HTTPS proxies<br>=C2=A0 - Fix FPGA search in rfnoc_im=
age_builder from fpga-src to fpga<br>=C2=A0 - Add convert_cal_data utility<=
br>=C2=A0 - image_builder: Support parameterized number of ports on blocks<=
br>* x300:<br>=C2=A0 - Add Replay Block to default FGPA images<br>=C2=A0 - =
Update frame sizes for 10GbE<br>=C2=A0 - Fix for incorrect PCIe buffer size=
 values<br>=C2=A0 - Change default dboard clock rate from 50 to 100 MHz<br>=
=C2=A0 - Update maximum bitstream size<br>=C2=A0 - Enable power reference A=
PI<br>=C2=A0 - Expand DRAM address space to 1G<br>=C2=A0 - Add front-panel =
GPIO source control</div><div><br></div><div>Regards,</div><div>Michael<br>=
</div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000003abb5f05af5f1221--


--===============3576358892180416195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3576358892180416195==--

