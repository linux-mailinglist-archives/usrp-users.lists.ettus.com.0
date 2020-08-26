Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B8B2524CF
	for <lists+usrp-users@lfdr.de>; Wed, 26 Aug 2020 02:46:59 +0200 (CEST)
Received: from [::1] (port=42824 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAjaY-0006t6-Ag; Tue, 25 Aug 2020 20:46:54 -0400
Received: from mail-io1-f47.google.com ([209.85.166.47]:36535)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.west@ettus.com>)
 id 1kAjaU-0006nj-Kp
 for usrp-users@lists.ettus.com; Tue, 25 Aug 2020 20:46:50 -0400
Received: by mail-io1-f47.google.com with SMTP id i10so435240iow.3
 for <usrp-users@lists.ettus.com>; Tue, 25 Aug 2020 17:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=lMOwMHiTW+MlqqRhpGGxYYpoEEx4YbcPxDNMkOjO9rM=;
 b=r2xrlV1OVOstFhBeTojRgoe/3/UgekTbQ+ch/5vl/VPfdEbB4epqygKPtR7Y7Hk707
 By9KaRnHNHWeOewtLfYsxjnUe5O4BltBBjLe6nNR7r7joFoaC5VXijhEF0cQQepXU0uj
 U31Vg9bgRtNnjWCz8xsvTJhgCajfUOKxJ6h5Hrg2LT6LLu378UVCMLYw+2UnzP1lDeLL
 5QimUJ7KDgwo6VSPoTK5TPzOarc8mGjrppMQNYq/Qj6n5DIuTAnpFf3Cv/s1+44f8eiu
 2AhR2eHwNTx/nLrVtkWHkBWGVOxu+Mu7ijGafMQIcQJS+m8fkMOukW9GETBdLdI718ss
 47hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=lMOwMHiTW+MlqqRhpGGxYYpoEEx4YbcPxDNMkOjO9rM=;
 b=H2lRFCva65z+Zwf79Ux5Gb4HHRun2bFXDwj+SxxhfVodKPV64y1m56DKfTfiit9G7o
 yb2GDgr7JKKJYKjv+Wv116mCYv7iq5R54iRoap7GFx8PQbNCGbr5z1o8dz0JaZQsxc7h
 Yt/NBXUrI7QO8ftOAdLMWaJ6wuCdeaGdhrbh1FZAhOUD4dW37r5gmOdlBz9aPYOV973s
 a8YHdYQmFSIAr7SlS1/mNtrTiy9Do3awCqrTNDkckZqHEVp8BT/cttPgRtM0Pu+LaSlW
 SbQKUsP5raqMIC2qienXTCakce9zGabnUIgonoGPM2Dx2bJbGSN2Q9oFjPrRbn3KEc5L
 /8WA==
X-Gm-Message-State: AOAM532EIMtVWLfJe0GQyIBjC1LIfvVtgveaiqFkrZ5Te3gprOT9mIo6
 AxhX4L+4AL7CPogTza5K6QcsN1NpwM/Fuv7JxLbVzmc69kwdUyod
X-Google-Smtp-Source: ABdhPJw4ZIr+6gSYRgVXgEtTSyQRV/rSNM5Y0kXoijNskYH70CK3i/2GIAjggq0h6oX6cJludE58EfNagUyO70DIPCI=
X-Received: by 2002:a02:6341:: with SMTP id j62mr13061257jac.69.1598402769038; 
 Tue, 25 Aug 2020 17:46:09 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 25 Aug 2020 17:45:58 -0700
Message-ID: <CAM4xKrrtSjhM1FFYGvuXrQFBop1d+H78JzQCx5OMh4iQ3rm3TQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 discuss-gnuradio@gnu.org
Subject: [USRP-users] [UHD] Announcing 4.0.0.0 Release Candidate 1
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
From: Michael West via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael West <michael.west@ettus.com>
Content-Type: multipart/mixed; boundary="===============2956893033691288429=="
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

--===============2956893033691288429==
Content-Type: multipart/alternative; boundary="00000000000041c95f05adbd25a2"

--00000000000041c95f05adbd25a2
Content-Type: text/plain; charset="UTF-8"

The release candidate of the long awaited UHD version 4.0.0.0 has been
tagged and is available for testing.  This major release introduces a new
RFNoC framework, a new streaming infrastructure, a power calibration
utility and API, and many other features and bug fixes.  The new
infrastructure provides improved performance, more flexibility, and the
foundation for future demands of higher throughput and lower latencies.

The tag for this release candidate:
https://github.com/EttusResearch/uhd/releases/tag/v4.0.0.0-rc1

There have been 831 commits since the last release (3.15.0.0) which can be
viewed here:
https://github.com/EttusResearch/uhd/compare/v3.15.0.0...v4.0.0.0-rc1

Please report any bugs found on the UHD issue tracker:
http://github.com/EttusResearch/uhd/issues
* Please do not use the issue tracker for help or support.

Pull requests for direct code changes may be submitted to the UHD or FPGA
repositories:
http://github.com/EttusResearch/uhd/pulls
http://github.com/EttusResearch/fpga/pulls

CHANGELOG:
## 004.000.000.000
* b200:
  - Enable power calibration API
  - Add a prop tree node usb_version
* cal:
  - Add utility to update all .fbs files, or check the generated ones
  - Add pwr_cal container
* cmake:
  - Add ability to pass CXXFLAGS to CMake environment
* docs:
  - Update PCIe xport instructions for NI Repos
  - n3xx: Include WX in table of N320 images
  - Add stream and transport args documentation
  - Update Basic/LF dboard references to use new operating mode
  - e3xx/n3xx: Add sections on FP-GPIOs and how to drive them
  - n3xx: Document eeprom flags
  - Add note about DPDK needing to be built as shared libraries
  - Change DPDK version to 18.11 and make args use underscores
  - Clarifying which devices support DPDK
* dpdk:
  - Add new DPDK stack to integrate with I/O services
* e31x:
  - Change RFNoC Ctrl clock to 40 MHz
  - Fix timeout for timekeeper registers
  - Fix filter bank and antenna switching for channel 0
  - Swap out liberio for internal Ethernet
* e320:
  - Fix timeout for timekeeper registers
  - Swap out liberio for internal Ethernet
* examples:
  - Add usrp_power_meter example
  - Update test_messages example
  - Update gpio example
  - Add options to benchmark_rate
  - Add example out-of-tree module for RFNoC modules
  - Remove thread priority elevation
* fpga:
  - Replaced RFNoC architecture with new 4.0 version
  - Added modelsim make simulation target
  - Upgrade to Vivade 2019.1
  - Removed unused coregen files and modules
  - Removed fpga submodule and merged into uhd repo
  - lib: Change max FFT size to 1024
  - lib: add Intel MAX10 architecture for 2clk FIFO
  - rfnoc: Port RFNoC Keep One in N block to new RFNoC architecture
  - rfnoc: Port RFNoC Replay block to new RFNoC architecture
  - rfnoc: Port Signal Generator RFNoC block to new RFNoC architecture
  - Add Switchboard RFNoC block
  - Remove liberio
  - rfnoc: Port RFNoC Moving Average block to new RFNoC architecture
  - rfnoc: Port Log-Power block to new RFNoC architecture
  - rfnoc: Port RFNoC Window block to new RFNoC architecture
  - lib: Add synthesizable AXI4-Stream SV components
  - lib: Add interface and model for AXI4-Lite
  - rfnoc: Add support for 512-bit CHDR widths
  - rfnoc: Port RFNoC Add/Sub block to new RFNoC architecture
  - rfnoc: Port Vector IIR RFNoC block to new RFNoC architecture
  - lib: Add AXI-Stream splitter (axis_split)
* lib:
  - Add power cal manager
  - deps: Add FlatBuffers 1.11.0 header files
  - Add DPDK service queue
* mpm:
  - Exclude internal NIC for network hosts
  - Add ability to run scripts to MPM shell
  - n3xx: Remove eth1, eth2 from interface list
  - Default virtual NIC CHDR IP selection
  - Enable internal NIC on the N3xx
  - Clean up code, improve Pylint score
  - Move common mboard regs code to common location
* mpmd:
  - Remove liberio
* multi_usrp:
  - Fix connect/disconnect of RFNoC chains
  - Various multi_usrp_rfnoc fixes
* n310:
  - Fix GPIO registers
* n320:
  - Double radio ingress buffer size
  - Enable inverse sinc filter for DAC37J82
* n3xx:
  - Fix timeout for timekeeper registers
  - Swap out liberio for internal Ethernet
* python:
  - Add Keep One in N block controller bindings
  - Add replay RFNoC block controller bindings
  - Add siggen RFNoC block controller bindings
  - Add Switchboard block python bindings
  - Add moving average RFNoC block controller bindings
  - Add bindings for C++ CHDR Parser
  - Add window RFNoC block controller bindings
  - Add FFT RFNoC block controller bindings
  - Add null RFNoC block controller bindings
  - Add vector IIR RFNoC block controller bindings
  - Add radio RFNoC block controller bindings
  - Add FIR filter RFNoC block controller bindings
  - Add Fosphor RFNoC block controller bindings
  - Add DUC RFNoC block controller bindings
  - Add DDC RFNoC block controller bindings
  - Added new RFNoC image builder module under the uhd module
  - Remove Python2-specific code
  - Included complex.h to allow pybind to convert that data type
* rfnoc:
  - Add multichannel register interface
  - Added support for destruction of streamers
  - Add Keep One in N block support
  - Port siggen RFNoC block controller support to new RFNoC architecture
  - Add Switchboard block support
  - Port Moving Average block controller to new RFNoC architecture
  - Port Log Power RFNoC block support to new RFNoC architecture
  - Port window RFNoC block controller to new RFNoC architecture
  - Port Add/Sub RFNoC block support to new RFNoC architecture
  - Add USE_MAP prop/action forwarding policy
  - Port Split Stream RFNoC block to new RFNoC architecture
  - Port Vector IIR RFNoC block support to new RFNoC architecture
  - Port RFNoC fosphor block to new RFNoC architecture
  - Port FIR filter RFNoC block controller to new RFNoC architecture
  - Add multichannel register interface
  - Add RFNoC Python API
  - Unify endianness of transports
  - Add DMA FIFO block controller
  - examples: Port examples to new RFNoC
  - Implement flushing on overrun
  - client_zero can track num SEPs and num ctrl EPs separately
  - Add basic round-robin allocation for links
  - Add ability to select transport for streamers to user APIs
  - Use link_stream_manager's mgmt_portal for all mgmt packets
  - graph: Optimize property propagation algorithm
  - Port DUC block controller to new RFNoC architecture
  - Add MTU tracking
  - Implement overrun handling using action API
  - Port null block controller to new RFNoC architecture
  - Add mb_controller API
  - Port radio block controller to new RFNoC architecture
  - Port default block controller to new RFNoC architecture
  - Port DDC block controller to new RFNoC architecture
  - Add rfnoc_graph class
  - Add action API
  - Refactored CHDR packet interfaces
  - Add noc_block_base class
* tests:
  - Add unit tests for new RFNoC block controllers
  - Fix multi_usrp_test
  - Add unit tests for pwr_cal_mgr
  - Migrated rfnoc block tests to dedicated subdirectory
  - Add more tests for max rate streaming
  - Add tests to exercise max streaming rates and report results
* tools:
  - Update dissectors for Wireshark major version 3, new CHDR
  - Update FPGA functional verification tests for X3x0 mcr's & dpdk
* transport:
  - Implement eov indications for Rx and Tx streams
  - Implement an I/O service that uses an offload thread
  - Implement a single-threaded I/O service
* twinrx:
  - Update synthesizer register values for improved rf performance
  - Fix increased noise floor
  - Remove decimation from frontend
* uhd:
  - Disable optimizations for Mac for build speed
  - remove liberio
  - improved handling of empty serial number hints
  - Add discoverable_features API
  - Add reference power level API to multi_usrp and radio_control
  - Add fuzzy serial number checking
  - paths: Harmonize around XDG Base Directory specification
  - cal: Use usrp::cal::database instead of CSV files
  - cal: Add iq_cal calibration data container class
  - cal: Add calibration container class
  - cal: Add database class
  - Introduce I/O service manager
  - Replace usage of boost smart pointers with C++11 counterparts
  - add udp boost asio implementation of transport interface
  - Add thread affinity utility functions
  - types: Extend stream_cmd_t::num_samps to 64 bits
* utils:
  - Expose CHDR Parsing API
  - Expose CHDR Types in Public API
  - Support expressions for num_ports in block defs
  - Let uhd_images_downloader also use HTTPS proxies
  - Fix FPGA search in rfnoc_image_builder from fpga-src to fpga
  - Add convert_cal_data utility
  - image_builder: Support parameterized number of ports on blocks
* x300:
  - Update frame sizes for 10GbE
  - Fix for incorrect PCIe buffer size values
  - Change default dboard clock rate from 50 to 100 MHz
  - Update maximum bitstream size
  - Enable power reference API
  - Expand DRAM address space to 1G
  - Add front-panel GPIO source control

As always, we at Ettus Research would like to thank all of the UHD users in
the open source SDR community.  This release contains commits from users in
the community that submitted pull requests against the UHD
<https://github.com/EttusResearch/uhd> and FPGA
<https://github.com/EttusResearch/fpga> repositories as well as many
commits that are a direct result of issues reported back to us by users
like you through the UHD <https://github.com/EttusResearch/uhd/issues> and
FPGA <https://github.com/EttusResearch/fpga/issues> issue trackers,
the USRP-users
mailing list
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, and Ettus
support <support@ettus.com>.  You have all helped contribute to the
continued improvement of UHD.  Thank you!

Best regards,
Michael

--00000000000041c95f05adbd25a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><div><div>The <span><span><span><spa=
n><span>release</span></span></span></span></span> <span><span><span><span>=
candidate</span></span></span></span>
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

--00000000000041c95f05adbd25a2--


--===============2956893033691288429==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2956893033691288429==--

