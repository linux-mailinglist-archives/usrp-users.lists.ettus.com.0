Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A06A12E395
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2020 08:57:59 +0100 (CET)
Received: from [::1] (port=33668 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1imvMf-0005pP-55; Thu, 02 Jan 2020 02:57:53 -0500
Received: from mail-io1-f46.google.com ([209.85.166.46]:38691)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.west@ettus.com>)
 id 1imvMb-0005lu-Sk
 for usrp-users@lists.ettus.com; Thu, 02 Jan 2020 02:57:49 -0500
Received: by mail-io1-f46.google.com with SMTP id v3so37575332ioj.5
 for <usrp-users@lists.ettus.com>; Wed, 01 Jan 2020 23:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=EVKNJ89Ehle82XjSl+Mi3ffwdEH4opzmKDXJNLlYfpo=;
 b=cXMWYSGS+LBvP9NMf2fW6d0j/8upsd/hqANRt6mNEwHKK3UYMVKXyUH6X+8qS9pEcL
 IeG7xpkaX9JtZaN+DsHL/LE1U70YG7XD4pg3jA/tX9PzZaXBJZh3DqbXjxP24+OVktw4
 LTO9NeVhcaDocALac6K/dx/waY1QVqZmSujsrOEZF5AcyABVV3am2/Ulb6I3O3nIJVBw
 PkyQh8YXD0gBvkoQkKW1P8gdm44b3ZeNnD6ipVFJ+uyk9jR/HM3l8B7GlqWIFBiJIXnu
 yWUP1k9V+zOabWzfCzdL0mueumlCiHtPr9ctZ1PIXjTpfopZZdyaQn1ANwuHNZr+4O7b
 oGfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=EVKNJ89Ehle82XjSl+Mi3ffwdEH4opzmKDXJNLlYfpo=;
 b=Tdv7JDpEuAV0GwgcymSSGW2oC6YW6mNShdXXV5idVBtBsQh8wrCLuuCKlSIH59tJCO
 ITODyAYWbnp4gIn8MnBYuN4pY3+b102bG1kJuGYRpU63En6k4DmOYB7wCN+XW4cq+Gs5
 d93M4WHe+qqaFRiStIg9UkNxKo9XUlx0RbbTg+FND4KrRdksTxU/0B/s59SAoYtM+MDp
 HPzSKkdSTy2w7FFUWJOQB43Bxiw33Kt3xg1bXjqIi/dhlAuHbfQZ7hpquKIpMuhqbKZG
 bucyw1vtHiq3o4mJmKS1JqODfsp1fi3A+VvriRR/HUs8t3YVqWryJ4b33LLS+GIc5RKk
 iDEA==
X-Gm-Message-State: APjAAAVkDj6X6sOrj8fnMtK1V1U+69MW3RYDHASVPyGrUjAMjRgIe+c+
 pols8Ctsm5Ct10ZKGzYOPXvu3bvuXAJh/Vb/J32ZpIx0ULX7rA1c
X-Google-Smtp-Source: APXvYqyx36hIaRUQNWMjAbpQFPS518kjPp4np+06IU28R4Z5ivQYow+4Dsdl8v3mEh4ZQ0vIG5SfuRZ/YGUGFaIoLUc=
X-Received: by 2002:a02:a694:: with SMTP id j20mr64990359jam.69.1577951828547; 
 Wed, 01 Jan 2020 23:57:08 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 1 Jan 2020 23:56:57 -0800
Message-ID: <CAM4xKroYmzO7eYXq7cc4dO_tReVeax18DFFXn=52Y=zfwKDvww@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 discuss-gnuradio@gnu.org
Subject: [USRP-users] [UHD] 3.15.0.0 Release Announcement
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============2733023933732751529=="
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

--===============2733023933732751529==
Content-Type: multipart/alternative; boundary="00000000000036b0c0059b238a29"

--00000000000036b0c0059b238a29
Content-Type: text/plain; charset="UTF-8"

Happy New Year!  UHD 3.15.0.0 is now available!  This is an API release.
It is not API or ABI compatible with earlier releases.  This release
includes several new features and bug fixes.

Installers for Windows and Fedora are available here:
http://files.ettus.com/binaries/uhd/uhd_003.015.000.000-release/

The PPA for Ubuntu can be found here:
https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd

The tag for this release is located here:
https://github.com/EttusResearch/uhd/releases/tag/v3.15.0.0

There have been 317 commits since the last API release which can be viewed
here:
https://github.com/EttusResearch/uhd/compare/v3.14.0.0...v3.15.0.0

Please report any bugs found on the UHD issue tracker:
http://github.com/EttusResearch/uhd/issues
* Please do not use the issue tracker for help or support.

Pull requests for direct code changes can be submitted to the UHD or FPGA
repositories:
http://github.com/EttusResearch/uhd/pulls
http://github.com/EttusResearch/fpga/pulls

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

CHANGELOG:
## 003.015.000.000
* N320: Fix MCR initialization, fix checks for LO distribution board,
  reset RX IQ balance on init, replace DRAM FIFO with replay block,
  improve constraints, fix I/Q imbalance compensation, add FPGPIO control
* N310: increase default dc offset averaging window, make tunes
  asynchronous, add capability to control RF filter bypass and freq.band
  limits, fix setting user DB EEPROM, correctly report N321 vs N320,
  improve DDR3 BIST, update max revision to 7, fix DMA arbitration to
  use contiguous packets, replace DRAM FIFO with replay block, fix SFP
  link up status, add workaround for clocking interference with external
  reference clocks, disable gpsdo clock/time source options when
  enable_gps=0
* X300: Fix max bitfile size, fix GPIO ATR property access type, heavily
  refactor, introduce conn_mgr, add DPDK support, add
  capability to flash NI-2974 FPGA, fix clocking code, enable 11.52 MHz
  and 23.04 MHz system ref rates, improve usage of constrained device
  args, enable ADC gain through RFNoC API, add mode to set master clock
  rate to arbitrary values between 184.32 and 200 MHz, throttle
  muxed_zero_copy_if
* E320: Fix time source clobbering ref source, add support for RevE, fix
  reporting of FPGA version hash, fix SFP link up status, fix missing
  ce_clk driver
* E310: Convert to MPM architecture, fix uhd_image_loader usage, fix DMA
  arbitration to use contiguous packets, reduced DMA chans to 4 (using
  data stream muxing), fix DRAM_TEST target build
* E3xx: Correct frontend name in devtest
* B200: Add command to query bootloader status, fix sc12 streaming, fix
  FIFO sizes on GPIFII interface
* UBX: add temperature compensation mode
* SBX: Only update ATRs when lock state changes
* TwinRX: add LO charge pump properties, increase default charge pump
  value on LO1, add low spur tuning mode, fix duplicate write to N value
  in DDC
* RFNoC/device3: Read command FIFO size from device instead of
  hardcoding values, fix multidevice graph connections, ENABLE_RFNOC now
  defaults to ON, search all nodes for tick rate, add update_graph()
  call which lets blocks do a graph-wide update of properties, fix
  missing port arg in SR_WRITE Noc-Script call, constrain
  send/recv_frame_size baed on MTU, fix flushing on init/deinit, disable
  FC ACKs for lossless links
* RFNOC/FPGA: Fix rb_stb in split stream block, fix off-by-one error in
  the window block, fix phase reset and -accumulator for DDC and DUC
  blocks, fix flushing on split-stream block, fix DC offset issue with
  DDS by using proper rounding, fix DUC/DDC sample rate switching by
  latching N on M in axi_rate_change, various fixes to
  uhd_image_builder, fix MTU settings in blocks, align byte count to
  8-byte word
* RFNOC: Allow UHD_RFNOC_DIR to contain multiple paths
* Python API: Replace Boost.Python with PyBind11, fix benchmark_rate
  statistics, fix phase alignment test script
* Python API: Added include of complex.h to allow pybind to convert
  complex data types
* Python API: Make multi_usrp::get_*_usrp_info() return a Python dict
* Python API: Fix array processing in send_waveforms()
* UHD: Allow ignoring fallthrough warnings, reduce Boost footprint,
  remove gpsd dependency, improve streaming, reduced the number of
  compiler warnings, introduce pop() to the prop tree, add typecast
  operator from uhd::dict<> to std::map<>, properly cache config file
  data
* MPM/mpmd: Introduce compatible rev numbers to support future hardware,
  fix some resource leaks in mpmd, fix spurious reclaims causing
  unnecessary warnings, fix resource leaks in liberio xport, allow to
  mux data streams over liberio transports (e.g. to require fewer DMA
  channels on E310), wait for DPDK links to come up before proceeding,
  relax failure handling when updating components (fixes spurious errors
  when updating FPGA images over SFP), fix issue where RPC
  initialization would hang on failure
* MPM:  Re-enable RPC server timeouts after components have been updated
* MPMD: Remove arbitrary frame size defaults for UDP transports
* MPMD: Fix incorrect link rate warnings
* FPGA: Use new device-tree overlay syntax, upgraded to Vivado 2018.3,
  broke various paths with critical timing, allow SystemVerilog source
  files, improve viv_modify_bd and viv_modify_tcl_bd, fix resets on 2clk
  FIFOs
* USB: Allow cancelled USB requests to occur
* USB: Fix global session race condition
* Logging: Always honour log level, don't log colours for non-ttys, fix
  includes, demote various log messages, fix logging colours, fix
  deadlock on Windows machines
* Examples: Fix benchmark_rate INIT_DELAY, fix memory leak in
  tx_samples_c
* Examples: Remove thread priority elevation
* Examples: Add options to benchmark_rate for start delays and priority
* Tests: Make the Python interpreter for devtests a parameter, add unit
  tests to MPM
* Utilities: Fix converter benchmark for Py3k and scaling issue
* Tools: Fix kitchen_sink
* Tools: Fix Wireshark dissectors to work with WS1, 2, and 3
* Tools: Various fixes to FPGA functional verification tests
* Docs: Various fixes, fix Doxygen warnings, fix links to KB, update
  DPDK information about building libraries, add DPDK subsection about
  thread priorities, update testing procedures
* C API: Add uhd_get_abi_string, uhd_get_version_string
* CMake: Make manpage compression optional, allow setting of PKG_DOC_DIR
  from the CMake command line, add replay example, fix missing 'project',
  replace ENABLE_PYTHON3 with a simpler Python detection, clean up
  superfluous modules, improve log statements, bump dependency min
  versions, add MPM unit testing, fix missing BIGOBJ for MSVC, add our
  own UHDBoost.cmake to better find Boost across versions and systems,
  constrain DPDK check to exact version
* Formatting: Apply clang-format to all files, break after template<>

Best regards,
Michael

--00000000000036b0c0059b238a29
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Happy New Year!=C2=A0 UHD=C2=A0<span>3.15.0=
.0</span> is
 now available!=C2=A0 This is an API release.=C2=A0 It is not API or ABI co=
mpatible with earlier releases.=C2=A0 This release includes several new fea=
tures and bug fixes.</div><div><br>Installers for Windows and Fedora are av=
ailable here:<br><a href=3D"http://files.ettus.com/binaries/uhd/uhd_003.015=
.000.000-release/" target=3D"_blank">http://files.ettus.com/binaries/uhd/uh=
d_003.015.000.000-release/</a><br><br>The PPA for Ubuntu can be found here:=
<br><a href=3D"https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd" ta=
rget=3D"_blank">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a=
><div><br>The tag for this=C2=A0<span><span><span>release</span></span></sp=
an>=C2=A0is located here:<br><a href=3D"https://github.com/EttusResearch/uh=
d/releases/tag/v3.15.0.0" target=3D"_blank">https://github.com/EttusResearc=
h/uhd/releases/tag/v3.15.0.0</a></div></div></div></div><div><div><div><br>=
</div>There have been 317 commits since the last API=C2=A0<span><span>relea=
se</span></span>=C2=A0which can be viewed here:<br><a href=3D"https://githu=
b.com/EttusResearch/uhd/compare/v3.14.0.0...v3.15.0.0" target=3D"_blank">ht=
tps://github.com/EttusResearch/uhd/compare/v3.14.0.0...v3.15.0.0</a><br><di=
v><br></div><div><div>Please report any bugs found on the UHD issue tracker=
:</div><div><a href=3D"http://github.com/EttusResearch/uhd/issues" target=
=3D"_blank">http://github.com/EttusResearch/uhd/issues</a><br></div><div>* =
Please do not use the issue tracker for help or support.<br></div><div><br>=
</div><div>Pull requests for direct code changes can be submitted to the UH=
D or FPGA repositories:</div><div><div><a href=3D"http://github.com/EttusRe=
search/uhd/pulls" target=3D"_blank">http://github.com/EttusResearch/uhd/pul=
ls</a><div><div><a href=3D"http://github.com/EttusResearch/fpga/pulls" targ=
et=3D"_blank">http://github.com/EttusResearch/fpga/pulls</a></div></div></d=
iv></div></div></div><div><br></div><div><div>As
 always, we at Ettus Research would like to thank all of the UHD users=20
in the open source SDR community.=C2=A0 This release contains commits from=
=20
users in the community that submitted pull requests against the=C2=A0<a hre=
f=3D"https://github.com/EttusResearch/uhd" target=3D"_blank">UHD</a>=C2=A0a=
nd=C2=A0<a href=3D"https://github.com/EttusResearch/fpga" target=3D"_blank"=
>FPGA</a>=C2=A0repositories as well as many commits that are a direct resul=
t of issues reported back to us by users like you through the=C2=A0<a href=
=3D"https://github.com/EttusResearch/uhd/issues" target=3D"_blank">UHD</a>=
=C2=A0and=C2=A0<a href=3D"https://github.com/EttusResearch/fpga/issues" tar=
get=3D"_blank">FPGA</a>=C2=A0issue trackers, the=C2=A0<a href=3D"http://lis=
ts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank"=
>USRP-users mailing list</a>, and=C2=A0<a href=3D"mailto:support@ettus.com"=
 target=3D"_blank">Ettus support</a>.=C2=A0 You have all helped contribute =
to the continued improvement of UHD.=C2=A0 Thank you!</div></div><div><br><=
/div><div>CHANGELOG:</div><div>## 003.015.000.000<br>* N320: Fix MCR initia=
lization, fix checks for LO distribution board,<br>=C2=A0 reset RX IQ balan=
ce on init, replace DRAM FIFO with replay block,<br>=C2=A0 improve constrai=
nts, fix I/Q imbalance compensation, add FPGPIO control<br>* N310: increase=
 default dc offset averaging window, make tunes<br>=C2=A0 asynchronous, add=
 capability to control RF filter bypass and freq.band<br>=C2=A0 limits, fix=
 setting user DB EEPROM, correctly report N321 vs N320,<br>=C2=A0 improve D=
DR3 BIST, update max revision to 7, fix DMA arbitration to<br>=C2=A0 use co=
ntiguous packets, replace DRAM FIFO with replay block, fix SFP<br>=C2=A0 li=
nk up status, add workaround for clocking interference with external<br>=C2=
=A0 reference clocks, disable gpsdo clock/time source options when<br>=C2=
=A0 enable_gps=3D0<br>* X300: Fix max bitfile size, fix GPIO ATR property a=
ccess type, heavily<br>=C2=A0 refactor, introduce conn_mgr, add DPDK suppor=
t, add<br>=C2=A0 capability to flash NI-2974 FPGA, fix clocking code, enabl=
e 11.52 MHz<br>=C2=A0 and 23.04 MHz system ref rates, improve usage of cons=
trained device<br>=C2=A0 args, enable ADC gain through RFNoC API, add mode =
to set master clock<br>=C2=A0 rate to arbitrary values between 184.32 and 2=
00 MHz, throttle<br>=C2=A0 muxed_zero_copy_if<br>* E320: Fix time source cl=
obbering ref source, add support for RevE, fix<br>=C2=A0 reporting of FPGA =
version hash, fix SFP link up status, fix missing<br>=C2=A0 ce_clk driver<b=
r>* E310: Convert to MPM architecture, fix uhd_image_loader usage, fix DMA<=
br>=C2=A0 arbitration to use contiguous packets, reduced DMA chans to 4 (us=
ing<br>=C2=A0 data stream muxing), fix DRAM_TEST target build<br>* E3xx: Co=
rrect frontend name in devtest<br>* B200: Add command to query bootloader s=
tatus, fix sc12 streaming, fix<br>=C2=A0 FIFO sizes on GPIFII interface<br>=
* UBX: add temperature compensation mode<br>* SBX: Only update ATRs when lo=
ck state changes<br>* TwinRX: add LO charge pump properties, increase defau=
lt charge pump<br>=C2=A0 value on LO1, add low spur tuning mode, fix duplic=
ate write to N value<br>=C2=A0 in DDC<br>* RFNoC/device3: Read command FIFO=
 size from device instead of<br>=C2=A0 hardcoding values, fix multidevice g=
raph connections, ENABLE_RFNOC now<br>=C2=A0 defaults to ON, search all nod=
es for tick rate, add update_graph()<br>=C2=A0 call which lets blocks do a =
graph-wide update of properties, fix<br>=C2=A0 missing port arg in SR_WRITE=
 Noc-Script call, constrain<br>=C2=A0 send/recv_frame_size baed on MTU, fix=
 flushing on init/deinit, disable<br>=C2=A0 FC ACKs for lossless links<br>*=
 RFNOC/FPGA: Fix rb_stb in split stream block, fix off-by-one error in<br>=
=C2=A0 the window block, fix phase reset and -accumulator for DDC and DUC<b=
r>=C2=A0 blocks, fix flushing on split-stream block, fix DC offset issue wi=
th<br>=C2=A0 DDS by using proper rounding, fix DUC/DDC sample rate switchin=
g by<br>=C2=A0 latching N on M in axi_rate_change, various fixes to<br>=C2=
=A0 uhd_image_builder, fix MTU settings in blocks, align byte count to<br>=
=C2=A0 8-byte word<br>* RFNOC: Allow UHD_RFNOC_DIR to contain multiple path=
s<br>* Python API: Replace Boost.Python with PyBind11, fix benchmark_rate<b=
r>=C2=A0 statistics, fix phase alignment test script<br>* Python API: Added=
 include of complex.h to allow pybind to convert<br>=C2=A0 complex data typ=
es<br>* Python API: Make multi_usrp::get_*_usrp_info() return a Python dict=
<br>* Python API: Fix array processing in send_waveforms()<br>* UHD: Allow =
ignoring fallthrough warnings, reduce Boost footprint,<br>=C2=A0 remove gps=
d dependency, improve streaming, reduced the number of<br>=C2=A0 compiler w=
arnings, introduce pop() to the prop tree, add typecast<br>=C2=A0 operator =
from uhd::dict&lt;&gt; to std::map&lt;&gt;, properly cache config file<br>=
=C2=A0 data<br>* MPM/mpmd: Introduce compatible rev numbers to support futu=
re hardware,<br>=C2=A0 fix some resource leaks in mpmd, fix spurious reclai=
ms causing<br>=C2=A0 unnecessary warnings, fix resource leaks in liberio xp=
ort, allow to<br>=C2=A0 mux data streams over liberio transports (e.g. to r=
equire fewer DMA<br>=C2=A0 channels on E310), wait for DPDK links to come u=
p before proceeding,<br>=C2=A0 relax failure handling when updating compone=
nts (fixes spurious errors<br>=C2=A0 when updating FPGA images over SFP), f=
ix issue where RPC<br>=C2=A0 initialization would hang on failure<br>* MPM:=
 =C2=A0Re-enable RPC server timeouts after components have been updated<br>=
* MPMD: Remove arbitrary frame size defaults for UDP transports<br>* MPMD: =
Fix incorrect link rate warnings<br>* FPGA: Use new device-tree overlay syn=
tax, upgraded to Vivado 2018.3,<br>=C2=A0 broke various paths with critical=
 timing, allow SystemVerilog source<br>=C2=A0 files, improve viv_modify_bd =
and viv_modify_tcl_bd, fix resets on 2clk<br>=C2=A0 FIFOs<br>* USB: Allow c=
ancelled USB requests to occur<br>* USB: Fix global session race condition<=
br>* Logging: Always honour log level, don&#39;t log colours for non-ttys, =
fix<br>=C2=A0 includes, demote various log messages, fix logging colours, f=
ix<br>=C2=A0 deadlock on Windows machines<br>* Examples: Fix benchmark_rate=
 INIT_DELAY, fix memory leak in<br>=C2=A0 tx_samples_c<br>* Examples: Remov=
e thread priority elevation<br>* Examples: Add options to benchmark_rate fo=
r start delays and priority<br>* Tests: Make the Python interpreter for dev=
tests a parameter, add unit<br>=C2=A0 tests to MPM<br>* Utilities: Fix conv=
erter benchmark for Py3k and scaling issue<br>* Tools: Fix kitchen_sink<br>=
* Tools: Fix Wireshark dissectors to work with WS1, 2, and 3<br>* Tools: Va=
rious fixes to FPGA functional verification tests<br>* Docs: Various fixes,=
 fix Doxygen warnings, fix links to KB, update<br>=C2=A0 DPDK information a=
bout building libraries, add DPDK subsection about<br>=C2=A0 thread priorit=
ies, update testing procedures<br>* C API: Add uhd_get_abi_string, uhd_get_=
version_string<br>* CMake: Make manpage compression optional, allow setting=
 of PKG_DOC_DIR<br>=C2=A0 from the CMake command line, add replay example, =
fix missing &#39;project&#39;,<br>=C2=A0 replace ENABLE_PYTHON3 with a simp=
ler Python detection, clean up<br>=C2=A0 superfluous modules, improve log s=
tatements, bump dependency min<br>=C2=A0 versions, add MPM unit testing, fi=
x missing BIGOBJ for MSVC, add our<br>=C2=A0 own UHDBoost.cmake to better f=
ind Boost across versions and systems,<br>=C2=A0 constrain DPDK check to ex=
act version<br>* Formatting: Apply clang-format to all files, break after t=
emplate&lt;&gt;</div><div><br></div><div>Best regards,</div><div>Michael</d=
iv></div></div>

--00000000000036b0c0059b238a29--


--===============2733023933732751529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2733023933732751529==--

