Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B066847C3AB
	for <lists+usrp-users@lfdr.de>; Tue, 21 Dec 2021 17:21:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 751A43840D0
	for <lists+usrp-users@lfdr.de>; Tue, 21 Dec 2021 11:21:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="CwQAQoce";
	dkim-atps=neutral
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 89259384A51
	for <usrp-users@lists.ettus.com>; Tue, 21 Dec 2021 11:18:07 -0500 (EST)
Received: by mail-ed1-f51.google.com with SMTP id o20so54012974eds.10
        for <usrp-users@lists.ettus.com>; Tue, 21 Dec 2021 08:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=88JSBpyqPYMMlOqFrcyiWagRA5RODEu3AuDTc1AVmaw=;
        b=CwQAQocebd08YjBgn2qB/KAqXbLIrCe3SH/1XB34n7LgByu0RZYnmIKoQHvD1vqv7w
         lOJtTTSRY58AaMeaY0IqN5J5vsFAU7FNYCEzAa480wxr8IvXQ0PRQFAhrFjoCNDGTtI3
         wFHdV5z2qqVjuFM0w4Sw+MFZ8a5VdLvUn6jBugaAjWCAKtaaIxgy2ssNG5iKn17CTKqa
         Cpcoe/C3eexnefCDQOMhxoMxlzmZBycsuDnz0Os+70euEwdCLvGpxQgKUgxcXHQjpnDc
         Wi2b/rYwCReu9Lwk1rTPWxilrkJtNSa8Re2tdo2zA5HZ+JSsRYqhnO8CrR+abjdEZBVB
         snEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=88JSBpyqPYMMlOqFrcyiWagRA5RODEu3AuDTc1AVmaw=;
        b=DKSD4vHmlkNcapOwMa9NVrAjdGGg+4WsD42PDsm7c67aF4k8PpzsHasEii9CaKpsws
         MKbpC9FPuwzyVEiM0W6gnd6cS2o2lGFDypK1jNV3bFYXWptiPf7tc2B/U9aafEoYmM6C
         bAJMERr8kDy9FY/vOkn3PRber/QDLXmcBIYoKwIDt/E5X+37ZQ5nQCA9taf34YrDlF7e
         b5SS2cBFkwdKeT4WJsrTZcdkHP9PMPPrEZwJrt3AW/r6a4vTPyug31g1CDd2Mk2AzqrO
         67wulfdvrQg27VigdsmIp7ycy0Dd+29yzsZoKBk9TcnH3QIlIeNyft46iVuX9hi6Yg4D
         wmWA==
X-Gm-Message-State: AOAM530Lrc1fWfGfJvfkcV7erpHDRJ0yxPC5/RbkXJZtLH2z/q/tsXOI
	e8WzPOhz94eEZT5lvBsoa5Llvf//HuYD0FQ969THncs+nkMr1gyZ
X-Google-Smtp-Source: ABdhPJwfwzK8fb/kE7tnQoBhBnWKmm2iOxdVfbR/rH26RW9Jtnx/T5Yllt4N2dMw4odM+nsvZk1OFmc5j0QNCpFnGLA=
X-Received: by 2002:a17:907:97c6:: with SMTP id js6mr1851742ejc.667.1640103486411;
 Tue, 21 Dec 2021 08:18:06 -0800 (PST)
MIME-Version: 1.0
From: Aaron Rossetto <aaron.rossetto@ettus.com>
Date: Tue, 21 Dec 2021 10:17:55 -0600
Message-ID: <CAAg5+MxcgOncH7+PiUz7QFWKJdL437L2E05oumJ=QgLJTqbxWA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: M6TTEPRRTHPWZUYLBE3TUTEXZBEMQTCD
X-Message-ID-Hash: M6TTEPRRTHPWZUYLBE3TUTEXZBEMQTCD
X-MailFrom: aaron.rossetto@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.1.0.5 released!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M6TTEPRRTHPWZUYLBE3TUTEXZBEMQTCD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4989617836892239653=="

--===============4989617836892239653==
Content-Type: multipart/alternative; boundary="000000000000b3f01105d3aa5955"

--000000000000b3f01105d3aa5955
Content-Type: text/plain; charset="UTF-8"

Hello USRP community,

UHD 4.1.0.5 has been released!

Apart from some minor enhancements and bugfixes (see below for the complete
changelog), UHD 4.1.0.5 adds support for the NI Ettus USRP X410 Rev G,
which uses a different CPLD on the motherboard than previous revisions.
Please note that the X410 filesystem image that ships with versions of UHD
prior to 4.1.0.5 **will not** support newer revisions of the USRP X410;
thus, we strongly recommend that **all** USRP X410 users upgrade their
devices with the filesystem that ships with 4.1.0.5. Please refer to the
instructions under 'Updating Filesystems' in the USRP X4xx section of the
UHD manual at https://files.ettus.com/manual/page_usrp_x4xx.html for
information on how to perform the update.

* ad9361
  -  Add comment re overclocking
  -  Modify set-tx-gain procedure to update gain in one go
* b200
  -  Re-sync times
  -  Move the B200 radio control core into usrp/b200/
* cal
  -  Use safe version of set_thread_priority()
* ci
  -  Device wait to redlock scope for Vivado close
  -  Add Fedora 34 and remove Fedora 32
  -  Refactor installers and add Windows support
  -  Add custom boost version support
  -  Remove documentation-only changes from pipeline runs
  -  enable batch CI
  -  Split CI and PR pipelines for mono pipeline
  -  Enable custom CXX flags, enable -Werror
  -  Let make keep building upon failure
  -  Add clang as a compiler to all Fedora and Ubuntu containers
* cmake
  -  use LooseVersion to ensure correct version comparisons
  -  Fix rfnoc-example (CMake paths)
  -  Fix issues with static builds and CMRC
  -  Replace CMAKE_{SOURCE,BINARY}_DIR with UHD_*_DIR
  -  tests: Add build-python path to PYTHONPATH
  -  Add check for libatomic linking requirement
  -  remove duplicate entry in LIBUHD_PYTHON_GEN_SOURCE
  -  Fix VS names and use relative for images
* dbsrx
  -  Fix issue with loop variable
* debs
  -  Update upload_debs script
* devtest
  -  Clarify data type in multi_usrp_test::send_waveform()
  -  Add receive stability test to B2xx devtest
  -  Add receive stability test
* dissectors
  -  Fix whitespace formatting in CMake files
  -  Fix inclusion of glib.h and Python version
* docs
  -  Several minor manual improvements
  -  Collect all RFNoC block controllers in a module in the manual
  -  Align dependencies and bump deb package versions
  -  Clarify set/get_gpio_attr() and GPIO banks
  -  Fix GPIO documentation example
  -  x410: Fix info on loading SD card images with bmaptool
  -  Improve docs for rx_streamer::recv() on overruns
  -  sync: Update page on synchronization
  -  Fix typo in ZBX Block Diagram
  -  x4xx: Document configuring eth0 static IP
  -  Remove bmaptool instructions for writing filesystems
* examples
  -  Use cmul for gain block in-tree IP example
  -  Test all variants in gain testbench
  -  Make IQ order clear in gain RFNoC block
  -  Improve txrx_loopback_to_file (late recv, Boost, timing)
  -  Show how to use in-tree Verilog header
  -  Add x400/x410 target to RFNoC example
  -  gpio: Separate bank and port arguments
  -  usrp_power_meter: fix channel indexing when reading USRP power
* fpga
  -  Revert "Add ability to get time from Radio block"
  -  Add ability to get time from Radio block
  -  rfnoc: Add RFNoC CHDR resize module
  -  rfnoc: Add CHDR management util functions
  -  lib: Clean up axi_mux
  -  rfnoc: Add labels to axi_switch generate blocks
  -  rfnoc: Add labels to chdr_mgmt_pkt_handler
  -  rfnoc: Add documentation to chdr_xb_routing_table
  -  Shorten line length for Launchpad linter
  -  x300: Update synchronizer constraint
  -  n3xx: Update synchronizer constraint
  -  lib: Update example constraint in synchronizer
  -  Update help message for setupenv.sh
  -  Remove stale references to UHD_FPGA_DIR
  -  tools: Add UHD_FPGA_DIR definition to synthesis
  -  Set default part for sim in setupenv.sh
  -  Fix Xilinx bitfile parser for Python 3
  -  rfnoc: Fix EOB loss in DUC
  -  sim: Add PkgComplex, PkgMath, and PkgRandom
  -  lib: Clean up and document lib files
  -  x400: Remove stale information in register map
  -  ci: Add testbench pipeline
* host
  -  Revert "Add ability to get time from Radio block"
  -  Add ability to get time from Radio block
  -  python: Return mb_controller with reference_internal
  -  x4xx: Implement GPIO API
  -  Add GPIO functions to MPM RPC shim
  -  gpio: Create gpio_atr_offsets to store GPIO registers
* images
  -  Update image packager script for Python 3
* lib
  -  Remove all remaining usage of boost::numeric::bounds<>
  -  transport: Mark typecast as intended
  -  transport: Initialize _hshake_args_server
  -  rfnoc: Make implicit typecasts explicit
  -  rfnoc: Change enum node_type to enum class
  -  Add various missing includes
* libusb
  -  Remove unused context variable
* mpm
  -  x4xx: update mboard_max_rev
  -  x4xx: Allow GPIO0 and GPIO1 as port names
  -  x4xx: add DIO GPIO API configuration methods
  -  mpm: x4xx: Add checks before accessing self.dio_control
  -  Fix handling of rfic_digital_loopback argument
  -  rfdc: Tear down RFDC on teardown
  -  add X410 support for 250e6 master clock rate
  -  Expose motherboard regs for debugging
* mpmd
  -  Increase UHD-side MTU cap for 10 GbE and 1 GbE
* multi_usrp_rfnoc
  -  Revert "Reduce latency of get_time_now()"
  -  Reduce latency of get_time_now()
* n320
  -  Reduce PLL lock time
* n3x0/e3x0
  -  Remove reference to "master FP-GPIO radio"
* n3xx
  -  Add support for rev 10
  -  Fix White Rabbit
* python
  -  multi_usrp: Add set_rx_spp()
  -  multi_usrp: Fix issues in send_waveform()
  -  multi_usrp: Fix issues with recv_num_samps()
  -  Fix dropped-sample calculation in benchmark_rate.py
  -  multi_usrp: Fix overloaded function definition
  -  Add new method bindings to noc_block_base
  -  rfnoc: Change reference type for noc_block_base export
* responder
  -  Fix printw function arguments
* rfnoc
  -  radio: Fix async message handling channel checks
  -  mgmt_portal: Fix order of validity checks
  -  blocks: Minor cleanup (whitespace, typos)
  -  mgmt_portal: Remove two unused variables
  -  Add vivado-path to rfnoc_image_builder
  -  ddc: Improve unit tests and documentation
  -  duc: Fix frequency range for DUC block
  -  duc: Remove stale references to CORDIC
  -  siggen: Fix direction of rotation
* rh
  -  Fix auto DC-offset correction and auto-IQ balance APIs
* tests
  -  Remove skip_dram from streaming performance test script
  -  Fix rfnoc_graph mock nodes stop-stream command
  -  Use reference type to prevent copy
  -  Fix check in link_test
  -  Fix potential resource leak
* tools
  -  Fix rfnoc dissector build
* uhd
  -  add support for max10 variants
  -  update manifest for x410 cpld
  -  Update manifest
  -  update num_recv_frames calculation for ctrl links
  -  Remove spurious template from property dtor
  -  Fix spelling errors
  -  mpm: Expose filesystem version information on MPM tree
  -  Remove Boost version checks for Boost 1.61
  -  Fix usage of std::abs with template parameters
* utils
  -  Get signal above noise floor when finding optimal gain
* x300
  -  Fix error message for wrong reference frequency
  -  Remove unused variables in x300_eth_mgr.cpp
  -  Fix MAX_RATE_1GIGE value
  -  Fix sfpp_io_core tuser width
  -  Initialize struct variable before using it
* x410
  -  correct 100GbE link speed

With very best regards,
Aaron

--000000000000b3f01105d3aa5955
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,sa=
ns-serif">Hello USRP community,<br>
</div><div class=3D"gmail_default" style=3D"font-family:arial,sans-serif"><=
br></div><div class=3D"gmail_default" style=3D"font-family:arial,sans-serif=
">UHD 4.1.0.5 has been released!<br><br>Apart from some minor enhancements
 and bugfixes (see below for the complete changelog), UHD 4.1.0.5 adds=20
support for the NI Ettus USRP X410 Rev G, which uses a different CPLD on
 the motherboard than previous revisions. Please note that the X410=20
filesystem image that ships with versions of UHD prior to 4.1.0.5 **will
 not** support newer revisions of the USRP X410; thus, we strongly=20
recommend that **all** USRP X410 users upgrade their devices with the=20
filesystem that ships with 4.1.0.5. Please refer to the instructions=20
under &#39;Updating Filesystems&#39; in the USRP X4xx section of the UHD ma=
nual=20
at <a href=3D"https://files.ettus.com/manual/page_usrp_x4xx.html">https://f=
iles.ettus.com/manual/page_usrp_x4xx.html</a> for information on
 how to perform the update.<br><br>* ad9361<br>=C2=A0 - =C2=A0Add comment r=
e overclocking<br>=C2=A0 - =C2=A0Modify set-tx-gain procedure to update gai=
n in one go<br>* b200<br>=C2=A0 - =C2=A0Re-sync times<br>=C2=A0 - =C2=A0Mov=
e the B200 radio control core into usrp/b200/<br>* cal<br>=C2=A0 - =C2=A0Us=
e safe version of set_thread_priority()<br>* ci<br>=C2=A0 - =C2=A0Device wa=
it to redlock scope for Vivado close<br>=C2=A0 - =C2=A0Add Fedora 34 and re=
move Fedora 32<br>=C2=A0 - =C2=A0Refactor installers and add Windows suppor=
t<br>=C2=A0 - =C2=A0Add custom boost version support<br>=C2=A0 - =C2=A0Remo=
ve documentation-only changes from pipeline runs<br>=C2=A0 - =C2=A0enable b=
atch CI<br>=C2=A0 - =C2=A0Split CI and PR pipelines for mono pipeline<br>=
=C2=A0 - =C2=A0Enable custom CXX flags, enable -Werror<br>=C2=A0 - =C2=A0Le=
t make keep building upon failure<br>=C2=A0 - =C2=A0Add clang as a compiler=
 to all Fedora and Ubuntu containers<br>* cmake<br>=C2=A0 - =C2=A0use Loose=
Version to ensure correct version comparisons<br>=C2=A0 - =C2=A0Fix rfnoc-e=
xample (CMake paths)<br>=C2=A0 - =C2=A0Fix issues with static builds and CM=
RC<br>=C2=A0 - =C2=A0Replace CMAKE_{SOURCE,BINARY}_DIR with UHD_*_DIR<br>=
=C2=A0 - =C2=A0tests: Add build-python path to PYTHONPATH<br>=C2=A0 - =C2=
=A0Add check for libatomic linking requirement<br>=C2=A0 - =C2=A0remove dup=
licate entry in LIBUHD_PYTHON_GEN_SOURCE<br>=C2=A0 - =C2=A0Fix VS names and=
 use relative for images<br>* dbsrx<br>=C2=A0 - =C2=A0Fix issue with loop v=
ariable<br>* debs<br>=C2=A0 - =C2=A0Update upload_debs script<br>* devtest<=
br>=C2=A0 - =C2=A0Clarify data type in multi_usrp_test::send_waveform()<br>=
=C2=A0 - =C2=A0Add receive stability test to B2xx devtest<br>=C2=A0 - =C2=
=A0Add receive stability test<br>* dissectors<br>=C2=A0 - =C2=A0Fix whitesp=
ace formatting in CMake files<br>=C2=A0 - =C2=A0Fix inclusion of glib.h and=
 Python version<br>* docs<br>=C2=A0 - =C2=A0Several minor manual improvemen=
ts<br>=C2=A0 - =C2=A0Collect all RFNoC block controllers in a module in the=
 manual<br>=C2=A0 - =C2=A0Align dependencies and bump deb package versions<=
br>=C2=A0 - =C2=A0Clarify set/get_gpio_attr() and GPIO banks<br>=C2=A0 - =
=C2=A0Fix GPIO documentation example<br>=C2=A0 - =C2=A0x410: Fix info on lo=
ading SD card images with bmaptool<br>=C2=A0 - =C2=A0Improve docs for rx_st=
reamer::recv() on overruns<br>=C2=A0 - =C2=A0sync: Update page on synchroni=
zation<br>=C2=A0 - =C2=A0Fix typo in ZBX Block Diagram<br>=C2=A0 - =C2=A0x4=
xx: Document configuring eth0 static IP<br>=C2=A0 - =C2=A0Remove bmaptool i=
nstructions for writing filesystems<br>* examples<br>=C2=A0 - =C2=A0Use cmu=
l for gain block in-tree IP example<br>=C2=A0 - =C2=A0Test all variants in =
gain testbench<br>=C2=A0 - =C2=A0Make IQ order clear in gain RFNoC block<br=
>=C2=A0 - =C2=A0Improve txrx_loopback_to_file (late recv, Boost, timing)<br=
>=C2=A0 - =C2=A0Show how to use in-tree Verilog header<br>=C2=A0 - =C2=A0Ad=
d x400/x410 target to RFNoC example<br>=C2=A0 - =C2=A0gpio: Separate bank a=
nd port arguments<br>=C2=A0 - =C2=A0usrp_power_meter: fix channel indexing =
when reading USRP power<br>* fpga<br>=C2=A0 - =C2=A0Revert &quot;Add abilit=
y to get time from Radio block&quot;<br>=C2=A0 - =C2=A0Add ability to get t=
ime from Radio block<br>=C2=A0 - =C2=A0rfnoc: Add RFNoC CHDR resize module<=
br>=C2=A0 - =C2=A0rfnoc: Add CHDR management util functions<br>=C2=A0 - =C2=
=A0lib: Clean up axi_mux<br>=C2=A0 - =C2=A0rfnoc: Add labels to axi_switch =
generate blocks<br>=C2=A0 - =C2=A0rfnoc: Add labels to chdr_mgmt_pkt_handle=
r<br>=C2=A0 - =C2=A0rfnoc: Add documentation to chdr_xb_routing_table<br>=
=C2=A0 - =C2=A0Shorten line length for Launchpad linter<br>=C2=A0 - =C2=A0x=
300: Update synchronizer constraint<br>=C2=A0 - =C2=A0n3xx: Update synchron=
izer constraint<br>=C2=A0 - =C2=A0lib: Update example constraint in synchro=
nizer<br>=C2=A0 - =C2=A0Update help message for setupenv.sh<br>=C2=A0 - =C2=
=A0Remove stale references to UHD_FPGA_DIR<br>=C2=A0 - =C2=A0tools: Add UHD=
_FPGA_DIR definition to synthesis<br>=C2=A0 - =C2=A0Set default part for si=
m in setupenv.sh<br>=C2=A0 - =C2=A0Fix Xilinx bitfile parser for Python 3<b=
r>=C2=A0 - =C2=A0rfnoc: Fix EOB loss in DUC<br>=C2=A0 - =C2=A0sim: Add PkgC=
omplex, PkgMath, and PkgRandom<br>=C2=A0 - =C2=A0lib: Clean up and document=
 lib files<br>=C2=A0 - =C2=A0x400: Remove stale information in register map=
<br>=C2=A0 - =C2=A0ci: Add testbench pipeline<br>* host<br>=C2=A0 - =C2=A0R=
evert &quot;Add ability to get time from Radio block&quot;<br>=C2=A0 - =C2=
=A0Add ability to get time from Radio block<br>=C2=A0 - =C2=A0python: Retur=
n mb_controller with reference_internal<br>=C2=A0 - =C2=A0x4xx: Implement G=
PIO API<br>=C2=A0 - =C2=A0Add GPIO functions to MPM RPC shim<br>=C2=A0 - =
=C2=A0gpio: Create gpio_atr_offsets to store GPIO registers<br>* images<br>=
=C2=A0 - =C2=A0Update image packager script for Python 3<br>* lib<br>=C2=A0=
 - =C2=A0Remove all remaining usage of boost::numeric::bounds&lt;&gt;<br>=
=C2=A0 - =C2=A0transport: Mark typecast as intended<br>=C2=A0 - =C2=A0trans=
port: Initialize _hshake_args_server<br>=C2=A0 - =C2=A0rfnoc: Make implicit=
 typecasts explicit<br>=C2=A0 - =C2=A0rfnoc: Change enum node_type to enum =
class<br>=C2=A0 - =C2=A0Add various missing includes<br>* libusb<br>=C2=A0 =
- =C2=A0Remove unused context variable<br>* mpm<br>=C2=A0 - =C2=A0x4xx: upd=
ate mboard_max_rev<br>=C2=A0 - =C2=A0x4xx: Allow GPIO0 and GPIO1 as port na=
mes<br>=C2=A0 - =C2=A0x4xx: add DIO GPIO API configuration methods<br>=C2=
=A0 - =C2=A0mpm: x4xx: Add checks before accessing self.dio_control<br>=C2=
=A0 - =C2=A0Fix handling of rfic_digital_loopback argument<br>=C2=A0 - =C2=
=A0rfdc: Tear down RFDC on teardown<br>=C2=A0 - =C2=A0add X410 support for =
250e6 master clock rate<br>=C2=A0 - =C2=A0Expose motherboard regs for debug=
ging<br>* mpmd<br>=C2=A0 - =C2=A0Increase UHD-side MTU cap for 10 GbE and 1=
 GbE<br>* multi_usrp_rfnoc<br>=C2=A0 - =C2=A0Revert &quot;Reduce latency of=
 get_time_now()&quot;<br>=C2=A0 - =C2=A0Reduce latency of get_time_now()<br=
>* n320<br>=C2=A0 - =C2=A0Reduce PLL lock time<br>* n3x0/e3x0<br>=C2=A0 - =
=C2=A0Remove reference to &quot;master FP-GPIO radio&quot;<br>* n3xx<br>=C2=
=A0 - =C2=A0Add support for rev 10<br>=C2=A0 - =C2=A0Fix White Rabbit<br>* =
python<br>=C2=A0 - =C2=A0multi_usrp: Add set_rx_spp()<br>=C2=A0 - =C2=A0mul=
ti_usrp: Fix issues in send_waveform()<br>=C2=A0 - =C2=A0multi_usrp: Fix is=
sues with recv_num_samps()<br>=C2=A0 - =C2=A0Fix dropped-sample calculation=
 in benchmark_rate.py<br>=C2=A0 - =C2=A0multi_usrp: Fix overloaded function=
 definition<br>=C2=A0 - =C2=A0Add new method bindings to noc_block_base<br>=
=C2=A0 - =C2=A0rfnoc: Change reference type for noc_block_base export<br>* =
responder<br>=C2=A0 - =C2=A0Fix printw function arguments<br>* rfnoc<br>=C2=
=A0 - =C2=A0radio: Fix async message handling channel checks<br>=C2=A0 - =
=C2=A0mgmt_portal: Fix order of validity checks<br>=C2=A0 - =C2=A0blocks: M=
inor cleanup (whitespace, typos)<br>=C2=A0 - =C2=A0mgmt_portal: Remove two =
unused variables<br>=C2=A0 - =C2=A0Add vivado-path to rfnoc_image_builder<b=
r>=C2=A0 - =C2=A0ddc: Improve unit tests and documentation<br>=C2=A0 - =C2=
=A0duc: Fix frequency range for DUC block<br>=C2=A0 - =C2=A0duc: Remove sta=
le references to CORDIC<br>=C2=A0 - =C2=A0siggen: Fix direction of rotation=
<br>* rh<br>=C2=A0 - =C2=A0Fix auto DC-offset correction and auto-IQ balanc=
e APIs<br>* tests<br>=C2=A0 - =C2=A0Remove skip_dram from streaming perform=
ance test script<br>=C2=A0 - =C2=A0Fix rfnoc_graph mock nodes stop-stream c=
ommand<br>=C2=A0 - =C2=A0Use reference type to prevent copy<br>=C2=A0 - =C2=
=A0Fix check in link_test<br>=C2=A0 - =C2=A0Fix potential resource leak<br>=
* tools<br>=C2=A0 - =C2=A0Fix rfnoc dissector build<br>* uhd<br>=C2=A0 - =
=C2=A0add support for max10 variants<br>=C2=A0 - =C2=A0update manifest for =
x410 cpld<br>=C2=A0 - =C2=A0Update manifest<br>=C2=A0 - =C2=A0update num_re=
cv_frames calculation for ctrl links<br>=C2=A0 - =C2=A0Remove spurious temp=
late from property dtor<br>=C2=A0 - =C2=A0Fix spelling errors<br>=C2=A0 - =
=C2=A0mpm: Expose filesystem version information on MPM tree<br>=C2=A0 - =
=C2=A0Remove Boost version checks for Boost 1.61<br>=C2=A0 - =C2=A0Fix usag=
e of std::abs with template parameters<br>* utils<br>=C2=A0 - =C2=A0Get sig=
nal above noise floor when finding optimal gain<br>* x300<br>=C2=A0 - =C2=
=A0Fix error message for wrong reference frequency<br>=C2=A0 - =C2=A0Remove=
 unused variables in x300_eth_mgr.cpp<br>=C2=A0 - =C2=A0Fix MAX_RATE_1GIGE =
value<br>=C2=A0 - =C2=A0Fix sfpp_io_core tuser width<br>=C2=A0 - =C2=A0Init=
ialize struct variable before using it<br>* x410<br>=C2=A0 - =C2=A0correct =
100GbE link speed<br><br>With very best regards,<br>Aaron

</div></div>

--000000000000b3f01105d3aa5955--

--===============4989617836892239653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4989617836892239653==--
