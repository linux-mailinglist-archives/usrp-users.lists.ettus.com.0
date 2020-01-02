Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 953FE12E711
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2020 15:10:21 +0100 (CET)
Received: from [::1] (port=45260 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1in1Az-0003jS-AS; Thu, 02 Jan 2020 09:10:13 -0500
Received: from mail-ot1-f65.google.com ([209.85.210.65]:35222)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1in1Aw-0003WY-DL
 for usrp-users@lists.ettus.com; Thu, 02 Jan 2020 09:10:10 -0500
Received: by mail-ot1-f65.google.com with SMTP id k16so52635816otb.2
 for <usrp-users@lists.ettus.com>; Thu, 02 Jan 2020 06:09:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=4zjKnHptES/A7u6V1ATu0Z+D60IjqFAR+BM90yfHI4I=;
 b=XXiOAEq458pXAIoKihdD+N66z5tyHsuKGe3YzXt85p99uDHeICgS03SirVGWOBY+j/
 Jhyyvd8cJw0SyUFoxQmN5r/go0bwLkT5l9sMmRyZ7MI/xJbivApuRfaadXltbnFTwTSU
 jQdNEyf1nbAb7QqGzDD7y+BOc2S84MZwrXNcJhGDpJ8wVKHJi4Cvk3q4xfqAGTaaaVvg
 8X3PwXIK0TLqdXzl08/xEzsfsX8643EjZGjHgABg8Lmq5NN2DpWYSfJP1YxbF1fsil4P
 D9Gfc3wkw6L9f3v6ktH/Xy8nEW9D7Zdxnth3597PK7NpwYRFeUS4xNO8AdlzwmgiGhnG
 63ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=4zjKnHptES/A7u6V1ATu0Z+D60IjqFAR+BM90yfHI4I=;
 b=EKALKdzj4CX5UJ/jCVyoPHu+5eRkk3FncCWRPUz2o1SvoKXH40kx5AOIfLIirZP5lq
 FY3Lsx+2ttQqC0sXduPSPvx0/3vm/cbZ0X8w3hLdkIyX+ie6MSmcXdj3RAOMM61iamvf
 u69zOZkZ2C06mPsYCMBfMjWlu1OEsETYm3wkbvpni6Rlxx94ZIYxgSw1iuDg7uM3dVy4
 /NBF/Ki+PlhhKLhkGSMDS06UZDubOYIO8BOnjYpQFWPH+yJDvakOVw+vTXm1GOWqqcDj
 K59ltkxplNGQp5qsSwivaqHJfGmGwN7lJclHWGMisKVRIZXuYpNs8omODj9opn9Kuk6g
 ghCA==
X-Gm-Message-State: APjAAAUseDYT+w17eZYhSTtyPC95ilCxXQ4Lq2wnjebxsqE47AOD2tL3
 xK0NncwYhsUUcCdFu+ZGV2zCXIdxR+/Z7lnrwmvU5eoD5QL7ZQ==
X-Received: by 2002:a05:6830:2116:: with SMTP id
 i22mt91556067otc.0.1577974169024; 
 Thu, 02 Jan 2020 06:09:29 -0800 (PST)
MIME-Version: 1.0
References: <CAM4xKroYmzO7eYXq7cc4dO_tReVeax18DFFXn=52Y=zfwKDvww@mail.gmail.com>
In-Reply-To: <CAM4xKroYmzO7eYXq7cc4dO_tReVeax18DFFXn=52Y=zfwKDvww@mail.gmail.com>
Date: Thu, 2 Jan 2020 09:09:18 -0500
Message-ID: <CAGNhwTN_qVX1spNngiRjsP0T4ZnBLk4kg+J6a6bcfJFd28_+Aw@mail.gmail.com>
Subject: Re: [USRP-users] [UHD] 3.15.0.0 Release Announcement
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 GNURadio Discussion List <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="===============4846425985691341908=="
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

--===============4846425985691341908==
Content-Type: multipart/alternative; boundary="000000000000d098b0059b28bd2e"

--000000000000d098b0059b28bd2e
Content-Type: text/plain; charset="UTF-8"

Excellent & Happy New Year to the UHD / Volk / GNU Radio community!

For OSX (Mac OS X / macOS) users, I updated the 'uhd' port in MacPorts to
this release last night; it is available right now!

We (MacPorts developers) recommend doing the following semi-regularly to
keep your 'ports' install up to date -- which right now will include
updating 'uhd' (and, if you use GNU Radio, then 'volk' too to the recent
2.1.0 release. I am striving to -finally- update the GNU Radio ports in
early January 2020 so-as to provide GR37, GR38, and GR39 options where
possible and available):
{{{
sudo port selfupdate
sudo port upgrade outdated
}}}
For most MacPorts users (generally: those using OSX 10.11 or newer), the
"install" and "upgrade" commands will download pre-compiled binaries, and
hence will be quite fast and reliable overall compared with building from
source. UHD / Volk / GR work fine on the current macOS release (10.15
Catalina) -- at least when installed via MacPorts!

I recognize that MacPorts isn't everyone's preference for a package
manager. I do not (yet) develop for HomeBrew or Fink ... because in my
experience MacPorts works more safely, more reliably, and overall better.
That said, if you want a pre-compiled and downloadable OSX GNU Radio .app,
check out @ktemkin's here: <
https://github.com/ktemkin/gnuradio-for-mac-without-macports >. I don't
think it includes the new UHD or Volk releases yet, but I've no doubt it
will in the near future.

Cheers! - MLD


On Thu, Jan 2, 2020 at 2:57 AM Michael West via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Happy New Year!  UHD 3.15.0.0 is now available!  This is an API release.
> It is not API or ABI compatible with earlier releases.  This release
> includes several new features and bug fixes.
>
> Installers for Windows and Fedora are available here:
> http://files.ettus.com/binaries/uhd/uhd_003.015.000.000-release/
>
> The PPA for Ubuntu can be found here:
> https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
>
> The tag for this release is located here:
> https://github.com/EttusResearch/uhd/releases/tag/v3.15.0.0
>
> There have been 317 commits since the last API release which can be
> viewed here:
> https://github.com/EttusResearch/uhd/compare/v3.14.0.0...v3.15.0.0
>
> Please report any bugs found on the UHD issue tracker:
> http://github.com/EttusResearch/uhd/issues
> * Please do not use the issue tracker for help or support.
>
> Pull requests for direct code changes can be submitted to the UHD or FPGA
> repositories:
> http://github.com/EttusResearch/uhd/pulls
> http://github.com/EttusResearch/fpga/pulls
>
> As always, we at Ettus Research would like to thank all of the UHD users
> in the open source SDR community.  This release contains commits from users
> in the community that submitted pull requests against the UHD
> <https://github.com/EttusResearch/uhd> and FPGA
> <https://github.com/EttusResearch/fpga> repositories as well as many
> commits that are a direct result of issues reported back to us by users
> like you through the UHD <https://github.com/EttusResearch/uhd/issues>
>  and FPGA <https://github.com/EttusResearch/fpga/issues> issue trackers,
> the USRP-users mailing list
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, and Ettus
> support <support@ettus.com>.  You have all helped contribute to the
> continued improvement of UHD.  Thank you!
>
> CHANGELOG:
> ## 003.015.000.000
> * N320: Fix MCR initialization, fix checks for LO distribution board,
>   reset RX IQ balance on init, replace DRAM FIFO with replay block,
>   improve constraints, fix I/Q imbalance compensation, add FPGPIO control
> * N310: increase default dc offset averaging window, make tunes
>   asynchronous, add capability to control RF filter bypass and freq.band
>   limits, fix setting user DB EEPROM, correctly report N321 vs N320,
>   improve DDR3 BIST, update max revision to 7, fix DMA arbitration to
>   use contiguous packets, replace DRAM FIFO with replay block, fix SFP
>   link up status, add workaround for clocking interference with external
>   reference clocks, disable gpsdo clock/time source options when
>   enable_gps=0
> * X300: Fix max bitfile size, fix GPIO ATR property access type, heavily
>   refactor, introduce conn_mgr, add DPDK support, add
>   capability to flash NI-2974 FPGA, fix clocking code, enable 11.52 MHz
>   and 23.04 MHz system ref rates, improve usage of constrained device
>   args, enable ADC gain through RFNoC API, add mode to set master clock
>   rate to arbitrary values between 184.32 and 200 MHz, throttle
>   muxed_zero_copy_if
> * E320: Fix time source clobbering ref source, add support for RevE, fix
>   reporting of FPGA version hash, fix SFP link up status, fix missing
>   ce_clk driver
> * E310: Convert to MPM architecture, fix uhd_image_loader usage, fix DMA
>   arbitration to use contiguous packets, reduced DMA chans to 4 (using
>   data stream muxing), fix DRAM_TEST target build
> * E3xx: Correct frontend name in devtest
> * B200: Add command to query bootloader status, fix sc12 streaming, fix
>   FIFO sizes on GPIFII interface
> * UBX: add temperature compensation mode
> * SBX: Only update ATRs when lock state changes
> * TwinRX: add LO charge pump properties, increase default charge pump
>   value on LO1, add low spur tuning mode, fix duplicate write to N value
>   in DDC
> * RFNoC/device3: Read command FIFO size from device instead of
>   hardcoding values, fix multidevice graph connections, ENABLE_RFNOC now
>   defaults to ON, search all nodes for tick rate, add update_graph()
>   call which lets blocks do a graph-wide update of properties, fix
>   missing port arg in SR_WRITE Noc-Script call, constrain
>   send/recv_frame_size baed on MTU, fix flushing on init/deinit, disable
>   FC ACKs for lossless links
> * RFNOC/FPGA: Fix rb_stb in split stream block, fix off-by-one error in
>   the window block, fix phase reset and -accumulator for DDC and DUC
>   blocks, fix flushing on split-stream block, fix DC offset issue with
>   DDS by using proper rounding, fix DUC/DDC sample rate switching by
>   latching N on M in axi_rate_change, various fixes to
>   uhd_image_builder, fix MTU settings in blocks, align byte count to
>   8-byte word
> * RFNOC: Allow UHD_RFNOC_DIR to contain multiple paths
> * Python API: Replace Boost.Python with PyBind11, fix benchmark_rate
>   statistics, fix phase alignment test script
> * Python API: Added include of complex.h to allow pybind to convert
>   complex data types
> * Python API: Make multi_usrp::get_*_usrp_info() return a Python dict
> * Python API: Fix array processing in send_waveforms()
> * UHD: Allow ignoring fallthrough warnings, reduce Boost footprint,
>   remove gpsd dependency, improve streaming, reduced the number of
>   compiler warnings, introduce pop() to the prop tree, add typecast
>   operator from uhd::dict<> to std::map<>, properly cache config file
>   data
> * MPM/mpmd: Introduce compatible rev numbers to support future hardware,
>   fix some resource leaks in mpmd, fix spurious reclaims causing
>   unnecessary warnings, fix resource leaks in liberio xport, allow to
>   mux data streams over liberio transports (e.g. to require fewer DMA
>   channels on E310), wait for DPDK links to come up before proceeding,
>   relax failure handling when updating components (fixes spurious errors
>   when updating FPGA images over SFP), fix issue where RPC
>   initialization would hang on failure
> * MPM:  Re-enable RPC server timeouts after components have been updated
> * MPMD: Remove arbitrary frame size defaults for UDP transports
> * MPMD: Fix incorrect link rate warnings
> * FPGA: Use new device-tree overlay syntax, upgraded to Vivado 2018.3,
>   broke various paths with critical timing, allow SystemVerilog source
>   files, improve viv_modify_bd and viv_modify_tcl_bd, fix resets on 2clk
>   FIFOs
> * USB: Allow cancelled USB requests to occur
> * USB: Fix global session race condition
> * Logging: Always honour log level, don't log colours for non-ttys, fix
>   includes, demote various log messages, fix logging colours, fix
>   deadlock on Windows machines
> * Examples: Fix benchmark_rate INIT_DELAY, fix memory leak in
>   tx_samples_c
> * Examples: Remove thread priority elevation
> * Examples: Add options to benchmark_rate for start delays and priority
> * Tests: Make the Python interpreter for devtests a parameter, add unit
>   tests to MPM
> * Utilities: Fix converter benchmark for Py3k and scaling issue
> * Tools: Fix kitchen_sink
> * Tools: Fix Wireshark dissectors to work with WS1, 2, and 3
> * Tools: Various fixes to FPGA functional verification tests
> * Docs: Various fixes, fix Doxygen warnings, fix links to KB, update
>   DPDK information about building libraries, add DPDK subsection about
>   thread priorities, update testing procedures
> * C API: Add uhd_get_abi_string, uhd_get_version_string
> * CMake: Make manpage compression optional, allow setting of PKG_DOC_DIR
>   from the CMake command line, add replay example, fix missing 'project',
>   replace ENABLE_PYTHON3 with a simpler Python detection, clean up
>   superfluous modules, improve log statements, bump dependency min
>   versions, add MPM unit testing, fix missing BIGOBJ for MSVC, add our
>   own UHDBoost.cmake to better find Boost across versions and systems,
>   constrain DPDK check to exact version
> * Formatting: Apply clang-format to all files, break after template<>
>
> Best regards,
> Michael
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--000000000000d098b0059b28bd2e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Excellent &amp; Happy New Year to the UHD / Volk / GNU Rad=
io community!<div><br></div><div>For OSX (Mac OS X / macOS) users, I update=
d the &#39;uhd&#39; port in MacPorts to this release last night; it is avai=
lable right now!</div><div><br></div><div>We (MacPorts developers) recommen=
d doing the following semi-regularly to keep your &#39;ports&#39; install u=
p to date -- which right now will include updating &#39;uhd&#39; (and, if y=
ou use GNU Radio, then &#39;volk&#39; too to the recent 2.1.0 release. I am=
 striving to -finally- update the GNU Radio ports in early January 2020 so-=
as to provide GR37, GR38, and GR39 options where possible and available):<d=
iv>{{{</div><div>sudo port selfupdate</div><div>sudo port upgrade outdated<=
/div><div>}}}</div><div>For most MacPorts users (generally: those using OSX=
 10.11 or newer), the &quot;install&quot; and &quot;upgrade&quot; commands =
will download pre-compiled binaries, and hence will be quite fast and relia=
ble overall=C2=A0compared with building from source. UHD / Volk / GR work f=
ine on the current macOS release (10.15 Catalina) -- at least when installe=
d via MacPorts!</div><div><br></div><div>I recognize that MacPorts isn&#39;=
t everyone&#39;s preference for a package manager. I do not (yet) develop f=
or HomeBrew or Fink ... because in my experience MacPorts works more safely=
, more reliably, and overall better. That said, if you want a pre-compiled =
and downloadable OSX GNU Radio .app, check out @ktemkin&#39;s here: &lt;=C2=
=A0<a href=3D"https://github.com/ktemkin/gnuradio-for-mac-without-macports"=
>https://github.com/ktemkin/gnuradio-for-mac-without-macports</a> &gt;. I d=
on&#39;t think it includes the new UHD or Volk releases yet, but I&#39;ve n=
o doubt it will in the near future.</div><div><br></div><div>Cheers! - MLD<=
/div></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Thu, Jan 2, 2020 at 2:57 AM Michael West via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div><div><div>Happy New Year!=C2=A0 UHD=C2=A0<=
span>3.15.0.0</span> is
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
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael D=
ickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto:supp=
ort@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"h=
ttps://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div></di=
v></div>

--000000000000d098b0059b28bd2e--


--===============4846425985691341908==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4846425985691341908==--

