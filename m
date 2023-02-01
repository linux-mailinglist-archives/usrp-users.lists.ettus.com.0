Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D216861A7
	for <lists+usrp-users@lfdr.de>; Wed,  1 Feb 2023 09:30:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A469C383D4C
	for <lists+usrp-users@lfdr.de>; Wed,  1 Feb 2023 03:30:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675240214; bh=1CtBQBrvv+BVpyh3piE/liR+gjIvoOykLlfaZ8tiU20=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=YQ6cEtOFG5hjR6VjG0as6A3NnMtuGGwew3p7JVOsVV7ChN85vgTy0WgVKCCZx0mb0
	 gyvcsE7Umb0QT4WRb+/mw4fJUMns/zdmXllekTuPxtiUn0zxeqXwz27nOTP8GwuySG
	 RbNeLc59vvuo2DMw3V8oEKsXijGy8HQcNOCFhZLctKdqMdmxrl97EOpshFTlWyQKv/
	 k7optbZJyeUhRga+BO6IGZUkLqExTj305q5OvZykjJcGrnff2PP8ZDtd5s+dOY0GES
	 iyuLNe2INZvEN03jk4p8AojZg83kAVBdgs3eJpfvwyC8NJrXYBEEBLE+W+DVZDJHel
	 UQoXLU+VshaDQ==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 579D5383AD9
	for <usrp-users@lists.ettus.com>; Wed,  1 Feb 2023 03:30:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="ZwMdj4Jg";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id h24so8003870qtr.0
        for <usrp-users@lists.ettus.com>; Wed, 01 Feb 2023 00:30:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MQAYN+sicc89j3rA7TSSQbDUx6DgJQUKDkPzcpiFdGM=;
        b=ZwMdj4JgQSU1tWEsXNPUfDWeDF1dIvyRdrndGFLXWWR8UtAqRoNS4NVcXP/wVT+NKU
         k53HkSS5fsxrD4MIWGIcptm/I9JVG8uatG2RzQsiRmQ1aoI4Ls3lNnDxxfhPnKfMtw9O
         7mYxmkBeMsXM69pvilyTZLngGcDGlGizRmXH147ANhAMt5+6DqAUxKuOp4lLZ37ID3si
         6qqIgDKXE5HTqoOew6FSCbTk8V5CTcwcsODn+MoWtwyIePcT2Xmo/+/1P4nujmTKaot6
         3n7D0lgUrvKi+krhF7bFXvNC+0R2ZmMNSW+BpPdUI8RsftYaMJThLfaKFjhyewcuDDHw
         NVUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MQAYN+sicc89j3rA7TSSQbDUx6DgJQUKDkPzcpiFdGM=;
        b=nz+emuyDxZB2HhoYD87iyeBjNUGrDtJvrb1/VQkgM9oZO7fa9bi+0igjzyLjWlMcmg
         ZhA7Mo3L9JvTU7UuYddo2pbK0qKWie9YAfKwwX1NAJg/Yeyb02NrjAWGIg3b+TM1TEwl
         mpKrLcNAcpG4z1MQcl/Ss/lRkjY2EKMG4jd9pITSxWD+/Y1pmVWcAFAIp6WHijeLEPdV
         cmJYgftgZ55LBrno4okqkJ0djsdzLqXsS7FAp7eFWrU/fdr/vV4lwViqFN6CiXjO/uhA
         GBwoVEqAnNGAk56HGGyT74AHfzBM5mHZtxHzWv0rOftCB1RKYDWjgI3bCWlqkun7HCtA
         KAxQ==
X-Gm-Message-State: AO0yUKU4F3S6jwOSUytzgt8Ux7VOCEAfI3roPNlmIeibrHmURyntkS07
	s4cIb3EdBzaAfXJ9UoiA5uhEeOsEL+hJZ/0UJtNJdkfuaj2Cvb1yqvg=
X-Google-Smtp-Source: AK7set8qT3lueTi/qD9BEu9mAUxYthyIAE3Db6haKS3busXLAfNqKmwFprDbGwYenpud6/ee9uQj2spJWwT8eZEcixI=
X-Received: by 2002:a05:622a:547:b0:3b8:2e69:c4d3 with SMTP id
 m7-20020a05622a054700b003b82e69c4d3mr171500qtx.69.1675240203028; Wed, 01 Feb
 2023 00:30:03 -0800 (PST)
MIME-Version: 1.0
From: Michael West <michael.west@ettus.com>
Date: Wed, 1 Feb 2023 00:29:52 -0800
Message-ID: <CAM4xKro0urLs_6xLABjLEQrc0dVWYjwPpytA9eti7X4b=4i1XA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>, discuss-gnuradio@gnu.org
Message-ID-Hash: TQZ7A22RFR7ZOSY5CTDPFMJ2K5IDFLLQ
X-Message-ID-Hash: TQZ7A22RFR7ZOSY5CTDPFMJ2K5IDFLLQ
X-MailFrom: michael.west@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [UHD] 4.4.0.0 Release Announcement
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TQZ7A22RFR7ZOSY5CTDPFMJ2K5IDFLLQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8364166349663892365=="

--===============8364166349663892365==
Content-Type: multipart/alternative; boundary="0000000000003733a005f39f4128"

--0000000000003733a005f39f4128
Content-Type: text/plain; charset="UTF-8"

UHD 4.4.0.0 is now available!  This is an API release.  It is not API or
ABI compatible with earlier releases.  The main purpose of the release is
to introduce the feature to stream raw UDP traffic to a remote
destination for RFNoC-enabled devices.  Essentially, this allows the RX
data to be redirected to enable control of several devices from a single
host while distributing the data processing load (i.e. across CPUs, GPUs,
or custom hardware).  This release also includes several bug fixes.

Installers for Windows and Fedora are available here:
http://files.ettus.com/binaries/uhd/uhd_004.004.000.000-release/4.4.0.0/

The PPA for Ubuntu will be uploaded soon and will be found here:
https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd

The tag for this release is located here:
https://github.com/EttusResearch/uhd/releases/tag/v4.4.0.0

There have been 82 commits since the last API release which can be viewed
here:
https://github.com/EttusResearch/uhd/compare/v4.3.0.0...v4.4.0.0

Please report any bugs found on the UHD issue tracker:
http://github.com/EttusResearch/uhd/issues
* Please do not use the issue tracker for help or support.

Pull requests for direct code changes can be submitted to the UHD
repository:
http://github.com/EttusResearch/uhd/pulls

As always, we at Ettus Research and NI would like to thank all of the UHD
users in the open source SDR community.  This release contains commits from
users in the community that submitted pull requests against the UHD
repository <https://github.com/EttusResearch/uhd> as well as many commits
that are a direct result of issues reported back to us by users like you
through the UHD issue tracker <https://github.com/EttusResearch/uhd/issues>,
the USRP-users mailing list
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, and Ettus
support <support@ettus.com>.  You have all helped contribute to the
continued improvement of UHD.  Thank you!

CHANGELOG:
## 004.004.000.000
* Features
  - Raw UDP Traffic to Remote Destination for RFNoC-enabled devices
* C API
  - Fix double-free issue with sensor values
* ci
  - Add clang-format 14.0 to the Ubuntu 22.04 container
  - devtest: Test E320 1G FPGA Image
  - Filter uhd_find_devices checks by device type
  - increase timeout for x4xx hardware test job
  - Pull UHD version from UHDConfigVersion.cmake
  - Replace Rhombus E320
  - Update docker repo location
* cmake
  - fix UHDAtomics.cmake to read custom Boost install prefix
  - Fix build with GCC 13 (add missing <cstdint> include)
* devtest
  - Add multi-spc timed command tests
* docs
  - Fix typo in Python API dox file
  - Phase noise consideration when using external clock with E320
  - rfnoc: Fix Doxygen warnings on chdr_packet::set_metadata()
  - Update manual for X3x0 raw UDP streaming
* e320
  - Allow internal GPSDO to be powered-down via UHD session args
* e3xx
  - add support for power calibration api
* examples
  - remote_rx: Add --mac-address argument
  - rx_samples_to_file: Add disk write speed check
  - rx_samples_to_file: Add multichannel option
  - Upgrade RFNoC example to Vivado 2021.1
* fpga
  - ci: Create local copy of patches to use
  - Cosmetic changes to rx_frontend_gen3_tb
  - docs: Fix AR76780 dependency
  - e320 Change MIG arbitration to RD_PRI_REG
  - Fix overflows in DDC
  - Fix overflows in quarterrate downconverter
  - Fix warnings in dds_freq_tune module
  - lib: Add align_samples module
  - lib: Add verilog-compatible wrapper for eth_ipv4_chdr_adapter
  - lib: Add ZPU support to SV transport adapter
  - lib: Fix indentation in setting_reg.v
  - lib: Fix inferred latch in ep_autonegotiation
  - lib: Support time and data updates in sim_radio_gen
  - lib: Update header for AXI4S add/remove bytes
  - Require AR76780 for X3xx and E3xx
  - Restore FIR filter in rx_frontend_gen3
  - rfnoc: Add align_samples testbench
  - rfnoc: Add timed sample alignment to radio
  - rfnoc: Fix inferred latch in chdr_strip_header
  - sim: Fix typo in clk_wait_f
  - tools: Detect check_timing issues during build
  - tools: Fix error detection in run_testbenches.py
  - x300: Bump FPGA compat to 39.1
  - x300: Change MIG arbitration to RD_PRI_REG
  - x300: Support advanced transport adapter
* host
  - ADC cal: Add ability to set calibration mode explicitly
  - cal: Rearrange ADC self calibration routine
* images
  - Update manifest - timed sample alignment in RFNoC
* lib
  - Fix warning in ctrlport_endpoint.cpp
  - topo graph: Fix rule-of-3 related compiler warnings
* mpm
  - Add a lock to the rpc server timer
  - Better error message for multiple assigned MACs
  - Fix rpc process shared state and port argument positions
  - Move parse_encoded_git_hash() to mpmutils
  - rfdc: Add X4xx 125e6 master clock rate
  - rpc server: Capture claim token value before releasing state lock
  - x4xx: Remove references to white rabbit
* n3xx
  - Increase tune timeout
* octoclock
  - Fix type of eeprom object in property_tree
* rfnoc
  - Add logging to some throw statements
  - lsm: Improve logging/error messages
  - Move detection of TAs post-LSM-init
  - streamers: Fix scaling factor
* tests
  - add ramdisk cfg option to streaming setup
  - add support for 10-100GB x410 raw udp
  - add x310 raw udp tests
* uhd
  - Fix RfnocGraph pybind binding for get_tree
  - python: Bind {separate,combine}_device_addr{s}
  - python: Make DeviceAddr behave like dict
  - When separating device_addr_t, keep indexed values
  - Add xport_adapter_ctrl core
* x300
  - Enable use of advanced transport adapters
  - Respect X300_FW_COMMS_FLAGS_ARP_FAIL flag
  - Update firmware for TA control

--0000000000003733a005f39f4128
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>UHD=C2=A04.4.0.0=C2=A0is now available!=C2=A0 Th=
is is an API release.=C2=A0 It is not API or ABI compatible with earlier re=
leases.=C2=A0 The main purpose of the release is to introduce the feature t=
o stream raw UDP traffic to a remote destination=C2=A0for=C2=A0RFNoC-enable=
d devices.=C2=A0 Essentially, this allows the RX data to be redirected to e=
nable control of several devices from a single host while distributing the =
data processing load (i.e. across CPUs, GPUs, or custom hardware).=C2=A0 Th=
is release also includes several bug fixes.</div><div><br>Installers for Wi=
ndows and Fedora are available here:<br><a href=3D"http://files.ettus.com/b=
inaries/uhd/uhd_004.004.000.000-release/4.4.0.0/" target=3D"_blank">http://=
files.ettus.com/binaries/uhd/uhd_004.004.000.000-release/4.4.0.0/</a><br><b=
r>The PPA for Ubuntu will be uploaded soon and will be found here:<br><a hr=
ef=3D"https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd" target=3D"_=
blank">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a><div><br=
>The tag for this=C2=A0release=C2=A0is located here:<br><a href=3D"https://=
github.com/EttusResearch/uhd/releases/tag/v4.4.0.0" target=3D"_blank">https=
://github.com/EttusResearch/uhd/releases/tag/v4.4.0.0</a></div></div></div>=
<div><div><div><br></div>There have been 82 commits since the last API=C2=
=A0release=C2=A0which can be viewed here:<br><a href=3D"https://github.com/=
EttusResearch/uhd/compare/v4.3.0.0...v4.4.0.0" target=3D"_blank">https://gi=
thub.com/EttusResearch/uhd/compare/v4.3.0.0...v4.4.0.0</a><br><div><br></di=
v><div><div>Please report any bugs found on the UHD issue tracker:</div><di=
v><a href=3D"http://github.com/EttusResearch/uhd/issues" target=3D"_blank">=
http://github.com/EttusResearch/uhd/issues</a><br></div><div>* Please do no=
t use the issue tracker for help or support.<br></div><div><br></div><div>P=
ull requests for direct code changes can be submitted to the UHD repository=
:</div><div><div><a href=3D"http://github.com/EttusResearch/uhd/pulls" targ=
et=3D"_blank">http://github.com/EttusResearch/uhd/pulls</a></div></div></di=
v></div><div><br></div><div><div>As always, we at Ettus Research and NI wou=
ld like to thank all of the UHD users in the open source SDR community.=C2=
=A0 This release contains commits from users in the community that submitte=
d pull requests against the=C2=A0<a href=3D"https://github.com/EttusResearc=
h/uhd" target=3D"_blank">UHD repository</a>=C2=A0as well as many commits th=
at are a direct result of issues reported back to us by users like you thro=
ugh the=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/issues" target=
=3D"_blank">UHD issue tracker</a>, the=C2=A0<a href=3D"http://lists.ettus.c=
om/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank">USRP-user=
s mailing list</a>, and=C2=A0<a href=3D"mailto:support@ettus.com" target=3D=
"_blank">Ettus support</a>.=C2=A0 You have all helped contribute to the con=
tinued improvement of UHD.=C2=A0 Thank you!</div><div><br></div><div>CHANGE=
LOG:</div></div></div><div>## 004.004.000.000<br>* Features<br>=C2=A0 - Raw=
 UDP Traffic to Remote Destination for RFNoC-enabled devices<br>* C API<br>=
=C2=A0 - Fix double-free issue with sensor values<br>* ci<br>=C2=A0 - Add c=
lang-format 14.0 to the Ubuntu 22.04 container<br>=C2=A0 - devtest: Test E3=
20 1G FPGA Image<br>=C2=A0 - Filter uhd_find_devices checks by device type<=
br>=C2=A0 - increase timeout for x4xx hardware test job<br>=C2=A0 - Pull UH=
D version from UHDConfigVersion.cmake<br>=C2=A0 - Replace Rhombus E320<br>=
=C2=A0 - Update docker repo location<br>* cmake<br>=C2=A0 - fix UHDAtomics.=
cmake to read custom Boost install prefix<br>=C2=A0 - Fix build with GCC 13=
 (add missing &lt;cstdint&gt; include)<br>* devtest<br>=C2=A0 - Add multi-s=
pc timed command tests<br>* docs<br>=C2=A0 - Fix typo in Python API dox fil=
e<br>=C2=A0 - Phase noise consideration when using external clock with E320=
<br>=C2=A0 - rfnoc: Fix Doxygen warnings on chdr_packet::set_metadata()<br>=
=C2=A0 - Update manual for X3x0 raw UDP streaming<br>* e320<br>=C2=A0 - All=
ow internal GPSDO to be powered-down via UHD session args<br>* e3xx<br>=C2=
=A0 - add support for power calibration api<br>* examples<br>=C2=A0 - remot=
e_rx: Add --mac-address argument<br>=C2=A0 - rx_samples_to_file: Add disk w=
rite speed check<br>=C2=A0 - rx_samples_to_file: Add multichannel option<br=
>=C2=A0 - Upgrade RFNoC example to Vivado 2021.1<br>* fpga<br>=C2=A0 - ci: =
Create local copy of patches to use<br>=C2=A0 - Cosmetic changes to rx_fron=
tend_gen3_tb<br>=C2=A0 - docs: Fix AR76780 dependency<br>=C2=A0 - e320 Chan=
ge MIG arbitration to RD_PRI_REG<br>=C2=A0 - Fix overflows in DDC<br>=C2=A0=
 - Fix overflows in quarterrate downconverter<br>=C2=A0 - Fix warnings in d=
ds_freq_tune module<br>=C2=A0 - lib: Add align_samples module<br>=C2=A0 - l=
ib: Add verilog-compatible wrapper for eth_ipv4_chdr_adapter<br>=C2=A0 - li=
b: Add ZPU support to SV transport adapter<br>=C2=A0 - lib: Fix indentation=
 in setting_reg.v<br>=C2=A0 - lib: Fix inferred latch in ep_autonegotiation=
<br>=C2=A0 - lib: Support time and data updates in sim_radio_gen<br>=C2=A0 =
- lib: Update header for AXI4S add/remove bytes<br>=C2=A0 - Require AR76780=
 for X3xx and E3xx<br>=C2=A0 - Restore FIR filter in rx_frontend_gen3<br>=
=C2=A0 - rfnoc: Add align_samples testbench<br>=C2=A0 - rfnoc: Add timed sa=
mple alignment to radio<br>=C2=A0 - rfnoc: Fix inferred latch in chdr_strip=
_header<br>=C2=A0 - sim: Fix typo in clk_wait_f<br>=C2=A0 - tools: Detect c=
heck_timing issues during build<br>=C2=A0 - tools: Fix error detection in r=
un_testbenches.py<br>=C2=A0 - x300: Bump FPGA compat to 39.1<br>=C2=A0 - x3=
00: Change MIG arbitration to RD_PRI_REG<br>=C2=A0 - x300: Support advanced=
 transport adapter<br>* host<br>=C2=A0 - ADC cal: Add ability to set calibr=
ation mode explicitly<br>=C2=A0 - cal: Rearrange ADC self calibration routi=
ne<br>* images<br>=C2=A0 - Update manifest - timed sample alignment in RFNo=
C<br>* lib<br>=C2=A0 - Fix warning in ctrlport_endpoint.cpp<br>=C2=A0 - top=
o graph: Fix rule-of-3 related compiler warnings<br>* mpm<br>=C2=A0 - Add a=
 lock to the rpc server timer<br>=C2=A0 - Better error message for multiple=
 assigned MACs<br>=C2=A0 - Fix rpc process shared state and port argument p=
ositions<br>=C2=A0 - Move parse_encoded_git_hash() to mpmutils<br>=C2=A0 - =
rfdc: Add X4xx 125e6 master clock rate<br>=C2=A0 - rpc server: Capture clai=
m token value before releasing state lock<br>=C2=A0 - x4xx: Remove referenc=
es to white rabbit<br>* n3xx<br>=C2=A0 - Increase tune timeout<br>* octoclo=
ck<br>=C2=A0 - Fix type of eeprom object in property_tree<br>* rfnoc<br>=C2=
=A0 - Add logging to some throw statements<br>=C2=A0 - lsm: Improve logging=
/error messages<br>=C2=A0 - Move detection of TAs post-LSM-init<br>=C2=A0 -=
 streamers: Fix scaling factor<br>* tests<br>=C2=A0 - add ramdisk cfg optio=
n to streaming setup<br>=C2=A0 - add support for 10-100GB x410 raw udp<br>=
=C2=A0 - add x310 raw udp tests<br>* uhd<br>=C2=A0 - Fix RfnocGraph pybind =
binding for get_tree<br>=C2=A0 - python: Bind {separate,combine}_device_add=
r{s}<br>=C2=A0 - python: Make DeviceAddr behave like dict<br>=C2=A0 - When =
separating device_addr_t, keep indexed values<br>=C2=A0 - Add xport_adapter=
_ctrl core<br>* x300<br>=C2=A0 - Enable use of advanced transport adapters<=
br>=C2=A0 - Respect X300_FW_COMMS_FLAGS_ARP_FAIL flag<br>=C2=A0 - Update fi=
rmware for TA control<br></div><div><br></div></div>

--0000000000003733a005f39f4128--

--===============8364166349663892365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8364166349663892365==--
