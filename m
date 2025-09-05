Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8093AB44D08
	for <lists+usrp-users@lfdr.de>; Fri,  5 Sep 2025 07:10:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 402F738684E
	for <lists+usrp-users@lfdr.de>; Fri,  5 Sep 2025 01:10:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1757049030; bh=ZKm8XK4JRE6uU2Kdilwx8/meluVyEoIL0gNtYKUWo1w=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=F7XlR1h8dQffZYQQOYb25855F/qiAUjPUujlz4X1KCklWplNDTmYmiPKjp/KLpSna
	 yBCHra+Xsq3bTvISLdqffIPpiJckAl/4rnXT+mnzilBEmZRhXqw2Lb/+RiNAYxLOTx
	 kS8ly6Bg2GTIjoA1aUdk/06Ve10l56GV/PLoBrIfzSHbeo66+a7nPCSqa8IwZKULuP
	 I+o6k8iFJqDyCNC9HRoKDftCSkHrMN8pIqqSMuTAlUfwrqfX/RfgNHONnRB1N/iVMD
	 cXGaDTiZt1rJQkmRp52MYwkfYihsfpSL2ASOAZV1oQgWdQXXGRqshe5hiuR90LKP6P
	 XtkywAk4GjOAg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34CCF3867A1
	for <usrp-users@lists.ettus.com>; Fri,  5 Sep 2025 01:10:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1757049013; bh=EWKcL14rR6nUzAEUHAOhK2TPgHLnqWwEl2lixJ28wiA=;
	h=Date:To:From:Subject:From;
	b=N0KQdvUHyECNRy1CBfV/VZ8bmfh9GvUoHtVBSa62nHq/TMcGSURPb0Wxs/nogIMxc
	 sy4Gr40FbT0mUFzmBq3wRte9ecRoqe5pPX9EvtdgxJgF5iwjoq6kODfVuCURjh5e4e
	 i+alFOEKXRVmzzZqB+RxbFm5Gfa0VIbcCv24R7Zc70BqxOLRpe+fCfzC66xf13EDf+
	 m4+oqn4NFXD45F4qPJ1SXYGouU6u6a12nmqMwOGNxnfK9KbJ5KaNbNyMXl2T1wW7AO
	 o9dz7ZI0sVVd3/a/fEajZXyOWeCTm9Anf9TWcvmxGHm4/byBqm0IcLtkz5ERcWpxcE
	 YtbjV7SCA6XSg==
Date: Fri, 5 Sep 2025 05:10:13 +0000
To: usrp-users@lists.ettus.com
Message-ID: <9mCUA4vJeaeJaRRxHzaJT9LpMGWwbG93xpsCqLgkAg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: H6IYIHOWGJV3KG2SPOKZRF7Q6X6DEMLB
X-Message-ID-Hash: H6IYIHOWGJV3KG2SPOKZRF7Q6X6DEMLB
X-MailFrom: marian.koop@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [UHD] 4.9.0.0 Release Announcement
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H6IYIHOWGJV3KG2SPOKZRF7Q6X6DEMLB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "marian.koop--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: marian.koop@emerson.com
Content-Type: multipart/mixed; boundary="===============2328695909368156389=="

This is a multi-part message in MIME format.

--===============2328695909368156389==
Content-Type: multipart/alternative;
 boundary="b1_9mCUA4vJeaeJaRRxHzaJT9LpMGWwbG93xpsCqLgkAg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_9mCUA4vJeaeJaRRxHzaJT9LpMGWwbG93xpsCqLgkAg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All,

The UHD-4.9.0.0 release is now available.\
This release adds support for the USRP B206mini-i and X3xx compatible \
OBX daughtercard. For a complete list of new features, updates and \
bug fixes see the CHANGELOG (see also below).

Tag for the UHD release:\
[https://github.com/EttusResearch/uhd/releases/tag/v4.9.0.0](https://gith=
ub.com/EttusResearch/uhd/releases/tag/v4.7.0.0)

Tag for the filesystem release:\
[https://github.com/EttusResearch/meta-ettus/releases/tag/v4.9.0.0](https=
://github.com/EttusResearch/meta-ettus/releases/tag/v4.7.0.0)

Installers for Windows and Fedora:\
[https://files.ettus.com/binaries/uhd/uhd_004.009.000.000-release](https:=
//files.ettus.com/binaries/uhd/uhd_004.007.000.000-release/4.7.0.0/)

PPA for Ubuntu:\
<https://launchpad.net/\~ettusresearch/+archive/ubuntu/uhd>\
Thank you to everyone who has contributed by posting pull requests and fi=
ling bug reports.

Thanks,\
Marian Koop

CHANGELOG:

#### **UHD 4.9.0.0**

* Highlights / Main Changes

  * Support for USRP B206mini-i

  * Support for OBX daughterboard

* New Features

  * OBX daughterboard and B206mini support added.

  * X3x0: Add support for the gps_iface feature. This allows sending arbi=
trary\
    commands to the GPS module.

  * rfnoc_modtool: Add a new subcommand,=C2=A0`make-yaml`, that generates=
 a block\
    YAML file from some user inputs. When calling=C2=A0`rfnoc_modtool add=
`=C2=A0without\
    a valid block YAML file, the tool will now automatically call=C2=A0`m=
ake-yaml`=C2=A0to\
    generate a new YAML file.

  * Added support for processing multiple samples per cycle in FFT block.

  * LabVIEW/USRP: New repository containing example applications which\
    demonstrate how to use NI LabVIEW with USRP devices via the UHD APIs.=
\
    (<https://github.com/ni/labview-usrp-examples>)

  * Improved RFNoC OOT Block support:\
    New repository containing official RFNoC OOT Blocks\
    (<https://github.com/EttusResearch/rfnoc-oot-blocks>)

    * Added new RFNoC Aurora Block for TX and RX remote streaming applica=
tions\
      to and from Aurora capable compute nodes like FPGA Coprocessors.

  * Enhanced the UHD Windows installer to automatically install Windows\
    driver packages into the OS, eliminating this manual post-installatio=
n\
    step for B-Series USB devices.

* API Changes

  * `uhd::math::gcd`=C2=A0and=C2=A0`uhd::math::lcm`=C2=A0are removed from=
 the public\
    headers. Use=C2=A0`std::gcd`=C2=A0and=C2=A0`std::lcm`=C2=A0instead if=
 C++17 is available,\
    or=C2=A0`boost::math::gcd`=C2=A0and=C2=A0`boost::math::lcm`=C2=A0if n=
ot.

  * When calling=C2=A0`recv()`=C2=A0on an RX streamer connected to an RFN=
oC device, we\
    no longer artificially inflate the timeout value. The old behaviour w=
as\
    in some cases abused to detect overruns, but this is not a reliable m=
ethod\
    and is now explicitly declared unsupported.

* Bug Fixes

  * RFNoC

    * Calling=C2=A0`recv()`=C2=A0on an RX streamer connected to an RFNoC =
device with a\
      zero timeout value now correctly returns immediately.

    * rfnoc-gain: Moved the fpga/ subdirectory under rfnoc/. This way, th=
e\
      directory structure inside the OOT module is identical to the direc=
tory\
      structure after installation.

  * X410:

    * Fixed NCO reset mechanism that caused ADC self-cal errors to occur =
during\
      reopening of a UHD session when timed tune commands were previously=
 used.

* Removals / Deprecations

  * Removed tools/uhd_dump. This tool is obsolete, the USRP X3x0 is not e=
ven\
    compatible with it any more. Dumps can be recorded and analyzed with =
wireshark\
    and the UHD dissectors in here.

  * Removed network_relay example.

* Validated OS Environments\
  (Versions for build and runtime dependencies can be determined from the=
\
  docker container definitions in the UHD repository at=C2=A0[.ci/docker/=
...](https://github.com/EttusResearch/uhd/tree/v4.9.0.0-rc2/.ci/docker)))

  * Linux:

    * Ubuntu: focal (20.04), jammy (22.04), noble (24.04), plucky (25.04)

    * Fedora: 40, 41, 42

  * Windows: 10 22H2, 11 23H2

  * MacOS: Sequoia (15.2)

--b1_9mCUA4vJeaeJaRRxHzaJT9LpMGWwbG93xpsCqLgkAg
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi All,</p><p>The UHD-4.9.0.0 release is now available.<br>This release =
adds support for the USRP B206mini-i and X3xx compatible <br>OBX daughterca=
rd. For a complete list of new features, updates and <br>bug fixes see the =
CHANGELOG (see also below).</p><p>Tag for the UHD release:<br><a href=3D"ht=
tps://github.com/EttusResearch/uhd/releases/tag/v4.7.0.0">https://github.co=
m/EttusResearch/uhd/releases/tag/v4.9.0.0</a></p><p>Tag for the filesystem =
release:<br><a href=3D"https://github.com/EttusResearch/meta-ettus/releases=
/tag/v4.7.0.0">https://github.com/EttusResearch/meta-ettus/releases/tag/v4.=
9.0.0</a></p><p>Installers for Windows and Fedora:<br><a href=3D"https://fi=
les.ettus.com/binaries/uhd/uhd_004.007.000.000-release/4.7.0.0/">https://fi=
les.ettus.com/binaries/uhd/uhd_004.009.000.000-release</a></p><p>PPA for Ub=
untu:<br><a href=3D"https://launchpad.net/~ettusresearch/+archive/ubuntu/uh=
d">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a><br>Thank yo=
u to everyone who has contributed by posting pull requests and filing bug r=
eports.</p><p>Thanks,<br>Marian Koop</p><p>CHANGELOG:</p><h4><strong>UHD 4.=
9.0.0</strong></h4><ul><li><p>Highlights / Main Changes</p><ul><li><p>Suppo=
rt for USRP B206mini-i</p></li><li><p>Support for OBX daughterboard</p></li=
></ul></li><li><p>New Features</p><ul><li><p>OBX daughterboard and B206mini=
 support added.</p></li><li><p>X3x0: Add support for the gps_iface feature.=
 This allows sending arbitrary<br>commands to the GPS module.</p></li><li><=
p>rfnoc_modtool: Add a new subcommand,&nbsp;<code>make-yaml</code>, that ge=
nerates a block<br>YAML file from some user inputs. When calling&nbsp;<code=
>rfnoc_modtool add</code>&nbsp;without<br>a valid block YAML file, the tool=
 will now automatically call&nbsp;<code>make-yaml</code>&nbsp;to<br>generat=
e a new YAML file.</p></li><li><p>Added support for processing multiple sam=
ples per cycle in FFT block.</p></li><li><p>LabVIEW/USRP: New repository co=
ntaining example applications which<br>demonstrate how to use NI LabVIEW wi=
th USRP devices via the UHD APIs.<br>(<a href=3D"https://github.com/ni/labv=
iew-usrp-examples">https://github.com/ni/labview-usrp-examples</a>)</p></li=
><li><p>Improved RFNoC OOT Block support:<br>New repository containing offi=
cial RFNoC OOT Blocks<br>(<a href=3D"https://github.com/EttusResearch/rfnoc=
-oot-blocks">https://github.com/EttusResearch/rfnoc-oot-blocks</a>)</p><ul>=
<li><p>Added new RFNoC Aurora Block for TX and RX remote streaming applicat=
ions<br>to and from Aurora capable compute nodes like FPGA Coprocessors.</p=
></li></ul></li><li><p>Enhanced the UHD Windows installer to automatically =
install Windows<br>driver packages into the OS, eliminating this manual pos=
t-installation<br>step for B-Series USB devices.</p></li></ul></li><li><p>A=
PI Changes</p><ul><li><p><code>uhd::math::gcd</code>&nbsp;and&nbsp;<code>uh=
d::math::lcm</code>&nbsp;are removed from the public<br>headers. Use&nbsp;<=
code>std::gcd</code>&nbsp;and&nbsp;<code>std::lcm</code>&nbsp;instead if C+=
+17 is available,<br>or&nbsp;<code>boost::math::gcd</code>&nbsp;and&nbsp;<c=
ode>boost::math::lcm</code>&nbsp;if not.</p></li><li><p>When calling&nbsp;<=
code>recv()</code>&nbsp;on an RX streamer connected to an RFNoC device, we<=
br>no longer artificially inflate the timeout value. The old behaviour was<=
br>in some cases abused to detect overruns, but this is not a reliable meth=
od<br>and is now explicitly declared unsupported.</p></li></ul></li><li><p>=
Bug Fixes</p><ul><li><p>RFNoC</p><ul><li><p>Calling&nbsp;<code>recv()</code=
>&nbsp;on an RX streamer connected to an RFNoC device with a<br>zero timeou=
t value now correctly returns immediately.</p></li><li><p>rfnoc-gain: Moved=
 the fpga/ subdirectory under rfnoc/. This way, the<br>directory structure =
inside the OOT module is identical to the directory<br>structure after inst=
allation.</p></li></ul></li><li><p>X410:</p><ul><li><p>Fixed NCO reset mech=
anism that caused ADC self-cal errors to occur during<br>reopening of a UHD=
 session when timed tune commands were previously used.</p></li></ul></li><=
/ul></li><li><p>Removals / Deprecations</p><ul><li><p>Removed tools/uhd_dum=
p. This tool is obsolete, the USRP X3x0 is not even<br>compatible with it a=
ny more. Dumps can be recorded and analyzed with wireshark<br>and the UHD d=
issectors in here.</p></li><li><p>Removed network_relay example.</p></li></=
ul></li><li><p>Validated OS Environments<br>(Versions for build and runtime=
 dependencies can be determined from the<br>docker container definitions in=
 the UHD repository at&nbsp;<a href=3D"https://github.com/EttusResearch/uhd=
/tree/v4.9.0.0-rc2/.ci/docker">.ci/docker/...</a>))</p><ul><li><p>Linux:</p=
><ul><li><p>Ubuntu: focal (20.04), jammy (22.04), noble (24.04), plucky (25=
.04)</p></li><li><p>Fedora: 40, 41, 42</p></li></ul></li><li><p>Windows: 10=
 22H2, 11 23H2</p></li><li><p>MacOS: Sequoia (15.2)</p></li></ul></li></ul>

--b1_9mCUA4vJeaeJaRRxHzaJT9LpMGWwbG93xpsCqLgkAg--

--===============2328695909368156389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2328695909368156389==--
