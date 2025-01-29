Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D623A2200A
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2025 16:15:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6AFE2385E69
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2025 10:15:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738163753; bh=lnueLJ87phoGyX/Ye1EKUMAipEoazP8ZxIqXuyZZqdQ=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=irPDH1aV4cHXv0vX64IWYLR4U2XftkLEWbeQWGMmH8I4c+sfHm+mQ6q1bNdQwEHBd
	 rp5etkE/xN2a//wjlZ5IZcrIsOw6Z0WpjCh81SfYsKfj15/Yuz79cI9JLiqhN/uHgZ
	 BvK5PnY2EEUG0b5ltTv60VVtHvIjpkIbhAz2L+jH8kmV7zvFDJf2EurLQItVQkyl5r
	 5gmCEhY7PkaO3budHgZiJfD4qMZIbuJQLgn616g3mFJhOSnh8iKwnnYFFB+ah8bc2/
	 I2h2W+e6G9ztRHv2DIbB/0Uwlz9ZNd9P51Pt2H48ZiAjuL1+wSgssrOU+47lkQG+t+
	 e2eOzXrxS/3mQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3C868385CD1
	for <usrp-users@lists.ettus.com>; Wed, 29 Jan 2025 10:15:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738163706; bh=GlXkC4JgVNkZNF+hf7ypDOojRe0PdMCuyNc/94+ginU=;
	h=Date:To:From:Subject:From;
	b=wxUC7wZoKZXMP8fVxoUalZryX6ta/rrN2FJhCxAUj+4bzeGU/DYyt90nhmEeqw21X
	 u/G5Hz9YD9wlXsfP7dU9gMolOmoinQ+i35XhVkd0J8ALtDUh4LVmwl70HK7OV2CGSQ
	 T4Ld5JYrA1BWL0xZl0e1xvthYQxUrsjKKZERMC2TmaRLtC4u+WhwKZvSaQ6L8WSIi4
	 rbFmDQUmwipwF7dWE0S9InrK43wWwS14EXib+TOClMXtFcrLQlK/Fnp/ns6C43ea4M
	 MiTB5ZTJR7la9jlz7hToMOUKx5qBOBa900J9A4GZJk75NZRjoZ9bXvV8ontOqGj6Jy
	 3RWlzPid31mDA==
Date: Wed, 29 Jan 2025 15:15:06 +0000
To: usrp-users@lists.ettus.com
Message-ID: <qs7inXKP4VgdXZ4kQsAyCqB6kAmS06AxokxqaBu6w8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 6C2BBVD2W67HQOC4B3F2IJZTR733QLYR
X-Message-ID-Hash: 6C2BBVD2W67HQOC4B3F2IJZTR733QLYR
X-MailFrom: marian.koop@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [UHD] 4.8.0.0 Release Announcement
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6C2BBVD2W67HQOC4B3F2IJZTR733QLYR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "marian.koop--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: marian.koop@emerson.com
Content-Type: multipart/mixed; boundary="===============4085035793813637185=="

This is a multi-part message in MIME format.

--===============4085035793813637185==
Content-Type: multipart/alternative;
 boundary="b1_qs7inXKP4VgdXZ4kQsAyCqB6kAmS06AxokxqaBu6w8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qs7inXKP4VgdXZ4kQsAyCqB6kAmS06AxokxqaBu6w8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All,

The UHD-4.8.0.0 release is now available.\
This release includes the addition of rfnoc_modtool and further improveme=
nts \
to RFNoC Image Builder, a new RFNoC FFT block and improved Windows instal=
lation \
capabilities including distribution of binary Python bindings for Windows=
 though PyPI. \
For a complete list of new features, updates and bug fixes see the CHANGE=
LOG (see also below).

Tag for the UHD release:\
<https://github.com/EttusResearch/uhd/releases/tag/v4.8.0.0>

Tag for the filesystem release:\
<https://github.com/EttusResearch/meta-ettus/releases/tag/v4.8.0.0>

Installers for Windows and Fedora:\
<https://files.ettus.com/binaries/uhd/uhd_004.008.000.000-release/4.8.0.0=
/>

PPA for Ubuntu:\
<https://launchpad.net/\~ettusresearch/+archive/ubuntu/uhd>\
Thank you to everyone who has contributed by posting pull requests and fi=
ling bug reports.

Thanks,\
Marian Koop

CHANGELOG:

UHD 4.8.0.0

**Highlights / Main Changes**

* Addition of rfnoc_modtool and further improvements to RFNoC Image Build=
er\
  toolsets. This further improves the ability to design RFNoC blocks and\
  create custom FPGA bitfiles.

* Replaced RFNoC FFT block with a new version

* Improved Windows installation capabilities including distribution\
  of binary Python bindings for Windows though PyPI

**New Features**

* Image Builder

  * Add GRC support. This allows designing RFNoC bitfiles from GNU Radio\
    Companion (GRC).

  * Improve clock connection checks and checks for duplicate connections.

  * Improve IO port compat check (e.g., check if wire widths match).

  * Allow default clocks in domain checks.

  * Simplify image core YAMLs by better usage of RADIO_NIPC parameter.

  * Improve parameter resolution.

  * Improve error messages for missing YAML files.

  * Add --SYNTH and --CHECK options.

  * Add support for building an FPGA image using multiple parallel jobs a=
nd\
    unique seeds with repeat_fpga_build.py and the --fpga-jobs option.

  * Add 'q' (or 'quote') filter to YAML files to allow quoting strings.

* rfnoc-gain (OOT RFNoC example)

  * Overhaul directory structure, and rename to rfnoc-gain from\
    rfnoc-example.

  * Simplify dynamic loading of OOT DLLs by using the new modules.d featu=
re.

  * Add CE clock support to gain block. This enables the example on X4x0.

  * Add a GNU Radio subdirectory with examples of how to run the gain blo=
ck\
    in GNU Radio.

* Add rfnoc_modtool. This is a command line utility to help design OOT RF=
NoC\
  blocks and replaces the previously available blocktool.

* RFNoC

  * Add tune requests. This allows tuning a complete graph as known from\
    multi_usrp instead of single blocks individually.

  * Replace FFT block with a new version supporting larger FFT sizes and\
    cyclic prefix insertion and removal.

* multi_usrp

  * Add Python bindings for get_user_settings_iface()

* General UHD

  * Add modules.d support

  * Add uhd::find_uhd_command() API call

  * Remove old-style Boost.Asio usage for compatibility with future versi=
ons\
    of Boost.

* Embedded Filesystem

  * Support for USB Audio devices on E31X, E320, N3XX and X4XX

* Windows binary installer

  * Simplified the Windows installer experience by reducing the number of=
\
    individual downloads from 4 (for USB devices) to 2, by including\
    libusb.dll and USB driver installer files into NSIS-built installer\
    binaries.

  * Add new cmake feature option called ENABLE_EXTEND_WIN_PACKAGING,\
    which defaults to off. Enabling this feature will cause a number\
    of convenience components to be included into the Windows deployment\
    package (aka. installer).\
    Enabling this feature has no effect on other platforms.

  * Added binary Python bindings for Windows installable through PyPI\
    (pip install uhd)

* Documentation

  * Add documentation about relationship of MTU, samples per packet and\
    atomic item size

**Dependencies changes**

* Increase minimum required versions

  * CMake to 3.12

  * Boost to 1.66

**Bug Fixes**

* General UHD

  * Fix compatibility with DPDK >=3D 22.11

  * Fix compiler warnings for better compatibility with C++17 and 20.

  * Add logic for loading uhd.dll from the correct path for Windows with\
    Python3.8+.

  * Add logic to warn about potential incompatibilities when importing\
    Python bindings.

  * Remove duplicate results from find

  * Release GIL when calling find from Python which improves response tim=
e\
    for large setups.

* Python support

  * On Windows now also enable building python support if minimum support=
ed\
    python version is detected.

  * Changed version number format for build Windows binaries to common\
    major.api.abi.patch format.

* MPM

  * Allow images without RF frontend (will only be initialized if FPGA\
    reports availability)

  * Fix usrp_update_fs to work for all embedded devices (and not just X4x=
x)

* E320: Ensure consistent sequencing when powering on/off GPSDO

* N310/N300: Fix LO query API for lowband LO

* RFNoC

  * RFNoC DDC/DUC block (used in all Gen-3 USRPs and X410): Fix fractiona=
l\
    frequency offset.

  * Fix AIS/spp calculation (e.g., for connecting FFT blocks).

  * Fix USE_IMPL rendering for the addsub block.

* Image Builder

  * Fix colors

  * Fix error message for missing control SEP

  * Improve error reporting for invalid connections

  * Accept \~ and \~user on command line

  * Fix deprecated usage of yaml.load()

  * Ensure correct device tree files generation when choosing a custom bu=
ild\
    directory

* rfnoc_modtool

  * Fix generation of noc_shells

**Validated OS Environments**

(Versions for build and runtime dependencies can be determined from the\
docker container definitions in the UHD repository at=C2=A0[.ci/docker/..=
.](https://github.com/EttusResearch/uhd/tree/v4.8.0.0/.ci/docker))

* Linux:

  * Ubuntu: bionic (18.04), focal (20.04), jammy (22.04), noble (24.04)

  * Fedora: 39, 40, 41

* Windows: 10 21H2, 11 21H2

* MacOS: Monterey (12.6)

--b1_qs7inXKP4VgdXZ4kQsAyCqB6kAmS06AxokxqaBu6w8
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi All,</p><p>The UHD-4.8.0.0 release is now available.<br>This release =
includes the addition of rfnoc_modtool and further improvements <br>to RFNo=
C Image Builder, a new RFNoC FFT block and improved Windows installation <b=
r>capabilities including distribution of binary Python bindings for Windows=
 though PyPI. <br>For a complete list of new features, updates and bug fixe=
s see the CHANGELOG (see also below).</p><p>Tag for the UHD release:<br><a =
href=3D"https://github.com/EttusResearch/uhd/releases/tag/v4.8.0.0">https:/=
/github.com/EttusResearch/uhd/releases/tag/v4.8.0.0</a></p><p>Tag for the f=
ilesystem release:<br><a href=3D"https://github.com/EttusResearch/meta-ettu=
s/releases/tag/v4.8.0.0">https://github.com/EttusResearch/meta-ettus/releas=
es/tag/v4.8.0.0</a></p><p>Installers for Windows and Fedora:<br><a href=3D"=
https://files.ettus.com/binaries/uhd/uhd_004.008.000.000-release/4.8.0.0/">=
https://files.ettus.com/binaries/uhd/uhd_004.008.000.000-release/4.8.0.0/</=
a></p><p>PPA for Ubuntu:<br><a href=3D"https://launchpad.net/~ettusresearch=
/+archive/ubuntu/uhd">https://launchpad.net/~ettusresearch/+archive/ubuntu/=
uhd</a><br>Thank you to everyone who has contributed by posting pull reques=
ts and filing bug reports.</p><p>Thanks,<br>Marian Koop</p><p><br></p><p>CH=
ANGELOG:</p><p>UHD 4.8.0.0</p><p><strong>Highlights / Main Changes</strong>=
</p><ul><li><p>Addition of rfnoc_modtool and further improvements to RFNoC =
Image Builder<br>toolsets. This further improves the ability to design RFNo=
C blocks and<br>create custom FPGA bitfiles.</p></li><li><p>Replaced RFNoC =
FFT block with a new version</p></li><li><p>Improved Windows installation c=
apabilities including distribution<br>of binary Python bindings for Windows=
 though PyPI</p></li></ul><p><strong>New Features</strong></p><ul><li><p>Im=
age Builder</p><ul><li><p>Add GRC support. This allows designing RFNoC bitf=
iles from GNU Radio<br>Companion (GRC).</p></li><li><p>Improve clock connec=
tion checks and checks for duplicate connections.</p></li><li><p>Improve IO=
 port compat check (e.g., check if wire widths match).</p></li><li><p>Allow=
 default clocks in domain checks.</p></li><li><p>Simplify image core YAMLs =
by better usage of RADIO_NIPC parameter.</p></li><li><p>Improve parameter r=
esolution.</p></li><li><p>Improve error messages for missing YAML files.</p=
></li><li><p>Add --SYNTH and --CHECK options.</p></li><li><p>Add support fo=
r building an FPGA image using multiple parallel jobs and<br>unique seeds w=
ith repeat_fpga_build.py and the --fpga-jobs option.</p></li><li><p>Add 'q'=
 (or 'quote') filter to YAML files to allow quoting strings.</p></li></ul><=
/li><li><p>rfnoc-gain (OOT RFNoC example)</p><ul><li><p>Overhaul directory =
structure, and rename to rfnoc-gain from<br>rfnoc-example.</p></li><li><p>S=
implify dynamic loading of OOT DLLs by using the new modules.d feature.</p>=
</li><li><p>Add CE clock support to gain block. This enables the example on=
 X4x0.</p></li><li><p>Add a GNU Radio subdirectory with examples of how to =
run the gain block<br>in GNU Radio.</p></li></ul></li><li><p>Add rfnoc_modt=
ool. This is a command line utility to help design OOT RFNoC<br>blocks and =
replaces the previously available blocktool.</p></li><li><p>RFNoC</p><ul><l=
i><p>Add tune requests. This allows tuning a complete graph as known from<b=
r>multi_usrp instead of single blocks individually.</p></li><li><p>Replace =
FFT block with a new version supporting larger FFT sizes and<br>cyclic pref=
ix insertion and removal.</p></li></ul></li><li><p>multi_usrp</p><ul><li><p=
>Add Python bindings for get_user_settings_iface()</p></li></ul></li><li><p=
>General UHD</p><ul><li><p>Add modules.d support</p></li><li><p>Add uhd::fi=
nd_uhd_command() API call</p></li><li><p>Remove old-style Boost.Asio usage =
for compatibility with future versions<br>of Boost.</p></li></ul></li><li><=
p>Embedded Filesystem</p><ul><li><p>Support for USB Audio devices on E31X, =
E320, N3XX and X4XX</p></li></ul></li><li><p>Windows binary installer</p><u=
l><li><p>Simplified the Windows installer experience by reducing the number=
 of<br>individual downloads from 4 (for USB devices) to 2, by including<br>=
libusb.dll and USB driver installer files into NSIS-built installer<br>bina=
ries.</p></li><li><p>Add new cmake feature option called ENABLE_EXTEND_WIN_=
PACKAGING,<br>which defaults to off. Enabling this feature will cause a num=
ber<br>of convenience components to be included into the Windows deployment=
<br>package (aka. installer).<br>Enabling this feature has no effect on oth=
er platforms.</p></li><li><p>Added binary Python bindings for Windows insta=
llable through PyPI<br>(pip install uhd)</p></li></ul></li><li><p>Documenta=
tion</p><ul><li><p>Add documentation about relationship of MTU, samples per=
 packet and<br>atomic item size</p></li></ul></li></ul><p><strong>Dependenc=
ies changes</strong></p><ul><li><p>Increase minimum required versions</p><u=
l><li><p>CMake to 3.12</p></li><li><p>Boost to 1.66</p></li></ul></li></ul>=
<p><strong>Bug Fixes</strong></p><ul><li><p>General UHD</p><ul><li><p>Fix c=
ompatibility with DPDK &gt;=3D 22.11</p></li><li><p>Fix compiler warnings f=
or better compatibility with C++17 and 20.</p></li><li><p>Add logic for loa=
ding uhd.dll from the correct path for Windows with<br>Python3.8+.</p></li>=
<li><p>Add logic to warn about potential incompatibilities when importing<b=
r>Python bindings.</p></li><li><p>Remove duplicate results from find</p></l=
i><li><p>Release GIL when calling find from Python which improves response =
time<br>for large setups.</p></li></ul></li><li><p>Python support</p><ul><l=
i><p>On Windows now also enable building python support if minimum supporte=
d<br>python version is detected.</p></li><li><p>Changed version number form=
at for build Windows binaries to common<br>major.api.abi.patch format.</p><=
/li></ul></li><li><p>MPM</p><ul><li><p>Allow images without RF frontend (wi=
ll only be initialized if FPGA<br>reports availability)</p></li><li><p>Fix =
usrp_update_fs to work for all embedded devices (and not just X4xx)</p></li=
></ul></li><li><p>E320: Ensure consistent sequencing when powering on/off G=
PSDO</p></li><li><p>N310/N300: Fix LO query API for lowband LO</p></li><li>=
<p>RFNoC</p><ul><li><p>RFNoC DDC/DUC block (used in all Gen-3 USRPs and X41=
0): Fix fractional<br>frequency offset.</p></li><li><p>Fix AIS/spp calculat=
ion (e.g., for connecting FFT blocks).</p></li><li><p>Fix USE_IMPL renderin=
g for the addsub block.</p></li></ul></li><li><p>Image Builder</p><ul><li><=
p>Fix colors</p></li><li><p>Fix error message for missing control SEP</p></=
li><li><p>Improve error reporting for invalid connections</p></li><li><p>Ac=
cept ~ and ~user on command line</p></li><li><p>Fix deprecated usage of yam=
l.load()</p></li><li><p>Ensure correct device tree files generation when ch=
oosing a custom build<br>directory</p></li></ul></li><li><p>rfnoc_modtool</=
p><ul><li><p>Fix generation of noc_shells</p></li></ul></li></ul><p><strong=
>Validated OS Environments</strong></p><p>(Versions for build and runtime d=
ependencies can be determined from the<br>docker container definitions in t=
he UHD repository at&nbsp;<a href=3D"https://github.com/EttusResearch/uhd/t=
ree/v4.8.0.0/.ci/docker">.ci/docker/...</a>)</p><ul><li><p>Linux:</p><ul><l=
i><p>Ubuntu: bionic (18.04), focal (20.04), jammy (22.04), noble (24.04)</p=
></li><li><p>Fedora: 39, 40, 41</p></li></ul></li><li><p>Windows: 10 21H2, =
11 21H2</p></li><li><p>MacOS: Monterey (12.6)</p><p><br></p></li></ul>

--b1_qs7inXKP4VgdXZ4kQsAyCqB6kAmS06AxokxqaBu6w8--

--===============4085035793813637185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4085035793813637185==--
