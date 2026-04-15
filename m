Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJerDL1q32niSgAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 15 Apr 2026 12:38:53 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5449F403562
	for <lists+usrp-users@lfdr.de>; Wed, 15 Apr 2026 12:38:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C39E7385B65
	for <lists+usrp-users@lfdr.de>; Wed, 15 Apr 2026 06:38:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1776249530; bh=ROBu2y8yXWklCzYJHJyiEN/ScMptJG1EJSiKhYlFs5A=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=tLgnVNknpF4wrw2ZWr8/pMEjp/2EHGLAP6d27OZZcdRk7TCGDxdp2zOIG2ySEi1w7
	 LbBIa8nPyRmHTwAbrcMDh1Z188jk8qvUN5XIoy73l4DykzemlFWg7sB7QeBQ0zXY5o
	 7mCeTW5oSw09ISvhVOf8hOoqz2CbB/TL2W8AfZRGMYBPNtdcscs6dbSz4ZRI7J+TWd
	 ZcdNmb8N6mCMtlvqLP+wIIULtdu8hdJjz97X/128XW2UDqry+bn9hlzluUiyCqZq3h
	 87bA96wl0r8+WNmatheASGN0mhhDD02pUMWfcDkFyiIyn4+Rh0Ua6nEIiDsA9aw7eD
	 AthYzHPiS3G3A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E72E385A29
	for <usrp-users@lists.ettus.com>; Wed, 15 Apr 2026 06:37:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1776249462; bh=zquUG8QqpwIV3VLPJDvMylJyCC8I25Sq3S1h3Y6tsaM=;
	h=Date:To:From:Subject:From;
	b=MszOMWMuncB4N+suOrpVsp0IpCLSEs35w6vbrzE/c3X9LjUOGwrwtGgNFNX6C1obc
	 TjbI1fRI27cxnzd2rk8EQD991+WJZATODbI0clalwnZKyaUDz4Fe9ES2kHSNeIFT2O
	 XrU40v3SxLGEjmlboewCYmxry4VmusKzHcnr8u4wmznKgaYRK1Yf1gt+RjiqtGyrrn
	 lHdskETLOpi2uNgui0er6SAiiyhSmKZsb3X3gK5XMwwNUqG6L/JfWxoR4rgKjnZb3+
	 lwJo7eD4jHoXnc1RSEJ6WZdg2wS8dJ5phPk+o3/bCAcGkXpRsUMbvqCR5JXIoFH4MA
	 yeJ+G8MDFQn+g==
Date: Wed, 15 Apr 2026 10:37:42 +0000
To: usrp-users@lists.ettus.com
Message-ID: <qmJjoDnH4XQqhlBu95P9z6nNd3faH7Jyq1x8CImerQo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 77F5ENRCSZHKOQUFFTN6D2XNBRVGBE62
X-Message-ID-Hash: 77F5ENRCSZHKOQUFFTN6D2XNBRVGBE62
X-MailFrom: marian.koop@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [UHD] Announcing UHD 4.10.0.0 Release Candidate 3
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/77F5ENRCSZHKOQUFFTN6D2XNBRVGBE62/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "marian.koop--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: marian.koop@emerson.com
Content-Type: multipart/mixed; boundary="===============2945262614746726862=="
X-Spamd-Result: default: False [-0.51 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_PHPMAILER_SIG(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DKIM_MIXED(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	TO_EQ_FROM(0.00)[];
	R_DKIM_REJECT(0.00)[emwd.com:s=harmony];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,emwd.com:-];
	HAS_REPLYTO(0.00)[marian.koop@emerson.com];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.739];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emerson.com:replyto,lists.ettus.com:mid]
X-Rspamd-Queue-Id: 5449F403562
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is a multi-part message in MIME format.

--===============2945262614746726862==
Content-Type: multipart/alternative;
 boundary="b1_qmJjoDnH4XQqhlBu95P9z6nNd3faH7Jyq1x8CImerQo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qmJjoDnH4XQqhlBu95P9z6nNd3faH7Jyq1x8CImerQo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

The first release candidate of UHD 4.10.0.0 is available for testing.\
This release includes support for USRP X420 and the addition of timed com=
plex\
gain feature to RFNoC radio blocks. For a complete list\
of new features, updates and bug fixes see the CHANGELOG (see also below)=
.

Tag for the UHD release candidate:\
[https://github.com/EttusResearch/uhd/releases/tag/v4.10.0.0-rc3](https:/=
/github.com/EttusResearch/uhd/releases/tag/v4.10.0.0-rc3 "https://github.=
com/EttusResearch/uhd/releases/tag/v4.10.0.0-rc3")

Tag for the file system release candidate:\
[https://github.com/EttusResearch/meta-ettus/releases/tag/v4.10.0.0-rc3](=
https://github.com/EttusResearch/meta-ettus/releases/tag/v4.10.0.0-rc3 "h=
ttps://github.com/EttusResearch/meta-ettus/releases/tag/v4.10.0.0-rc3")

Thanks,

Marian

CHANGELOG:

### **004.010.000.000**

* Highlights / Main Changes

  * Support for USRP X420

  * Addition of timed complex gain feature, which allows setting a comple=
x gain\
    value to fix phase and amplitude of signals from radio blocks

* New Features

  * CMake:

    * Create UHD::uhd package for improved integration in downstream buil=
d\
      processes. The init_usrp example is used to showcase this feature.

    * Improved options for RFNoC OOT modules to write unit tests.

  * Add helper routines to up- and download data (reliably) from and to t=
he\
    DRAM block

  * X310: Allow daughterboards to set dboard clock rate

  * Improve finding of MPM-based devices by making parts of the find call=
\
    asynchronous and allowing to skip reachability checks.

  * RFNoC:

    * Added new optional feature to all Radio blocks - Timed complex gain=
:

      * Allows specifying complex gain coefficients to be applied to all\
        TX and/or RX samples of a radio channel at the specified time.

      * Enabled by default for all TX and RX channels of the radio blocks=
,\
        but can be disabled at FPGA build time via the=C2=A0`EN_COMP_GAIN=
_TX`\
        and=C2=A0`EN_COMP_GAIN_RX`=C2=A0parameters of the radio blocks.

      * NOTE: For the x440_X4_400 default FPGA design provided with UHD,\
        enabling this feature for all 8 RX and TX channels necessitated\
        restricting the existing crossbar connections between the replay\
        blocks and the radio blocks. As a result, only blocks with the sa=
me\
        indices can be connected (e.g. replay0<->radio0 and replay1<->rad=
io1\
        only) when using this pre-built USRP FPGA image.

    * Blocks may now drive the front-panel GPIO pins on all RFNoC-capable=
\
      devices. New IO signatures are added, and all device BSPs have IO p=
orts\
      for accessing the GPIOs. Device controls are updated such that the =
user\
      can choose the source for GPIOs dynamically in this case (i.e., the=
\
      radio blocks and other GPIO sources are still available). In some c=
ases,\
      the device BSP HDL had to be significantly refactored.

    * Add names and descriptions for block's and module's YAML files, so =
that\
      other tools may read information about those in an automated fashio=
n

    * Allow=C2=A0`mtu`=C2=A0stream argument, which overrides the MTU valu=
e that is\
      derived from the link information.

    * Action handling is now moved to its own thread (there is one action=
\
      handling thread per graph). This allows actions to be handled\
      asynchronously, e.g., when triggering actions from async message ha=
ndlers.

    * Add radio_state IO signature, so that other blocks can monitor the =
ATR\
      state of radio blocks.

    * All RFNoC devices can now take an=C2=A0`mtu`=C2=A0stream argument (=
which overrides\
      the detected link MTU) and a=C2=A0`force_mtu`=C2=A0device argument =
(which skips\
      automatic MTU detection and forces a fixed value). These are helpfu=
l in\
      scenarios where a specific network topology interferes with path MT=
U\
      discovery, and for remote streaming when the MTU for a remote strea=
m link\
      cannot be inferred from UHD.

    * rfnoc_modtool has improved support for generating unit tests.

    * Add PPS IO signature for all targets

    * Add stream command to start receiving when a transmit occurs

    * Null source/sink: Add finite mode.

    * Add UX1/UX2/UX4 QSFP configurations for X4xx

* API Changes

  * meta_range_t and uhd::dict can now be initialized from initializer li=
sts

  * Add rfnoc_graph::get_chdr_xport_adapters()

  * Python API now allows creating SubdevSpec from a string

  * Some public APIs that used=C2=A0`boost::optional`=C2=A0now also work =
with=C2=A0`std::optional`

  * Unit tests for RFNoC blocks (in-tree and out-of-tree) no longer requi=
re a\
    dummy implementation of=C2=A0`~make_args_t()`

  * `uhd::cast::to_str()`=C2=A0was added and=C2=A0`uhd::cast::from_str()`=
=C2=A0was extended to\
    be a full replacement for=C2=A0`boost::lexical_cast`

* Examples

  * Overhauled many of the examples to improve documentation, as well as =
some\
    minor conveniences or bug fixes

  * Added continuous streaming to tx_samples_from_file

  * Improved gpio example.

* Bug Fixes

  * Fix static UHD library builds

  * Fix compatibility with Boost 1.89

  * RFNoC:

    * Fix slicing notation in rfnoc_image_builder

    * Fix building of GRC files with empty default target (this would aff=
ect\
      builds of X410 and X440 device bitfiles from GNU Radio)

    * Fix installation of OOT modules in Python venvs

    * Fix time alignment of first sample

    * Unit tests in RFNoC OOT modules now preload their DLLs to ensure th=
e\
      correct library version is loaded

    * Fix generation of GNU Radio C++ block controllers

    * rfnoc_modtool: Fix creation of spurious unit tests, fix package_dat=
a for\
      Python module installation

    * rfnoc_modtool: Fix connection check for invalid ports

    * Fix alignment of first sample coming from radio block.

    * Fix bug in ctrlport_endpoint which could cause the software to beli=
eve\
      the associated RFNoC block's command FIFO was full when packets wer=
e lost

    * Add parameter to skip waiting for ACKs in async messages

  * E31x: Fix GPIO control

  * E3xx/B2xx: Fix rounding bug for RF PLL tuning

  * B2xx: Fix image loading via b200_image_loader when multiple devices a=
re\
    attached

  * X410: Fix tuning when power calibration and non-default gain profiles=
 are\
    used.

  * Power calibration tools: Fix settings for E320, allow non-default sam=
pling\
    rate, other minor fixes

  * FPGA

    * Fix various simulation-related bugs

  * USRP Simulator: Update to match current UHD.

  * multi_usrp:

    * Improved bank name check in multi_usrp::{set,get}_gpio_attr()

  * CMake:

    * Allow absolute paths for install dirs in pkg-config

    * Fix target include path for Python module

  * USRP1: Fix converter name in property tree

  * FPGA:

    * Fix various simulation/testbench issues.

    * Improve resource utilization in various places.

  * MPM:

    * Fix file descriptor leaks by using with/open everywhere.

    * Fix double-free issue in rpclib.

    * Remove tolerance for non-existing EEPROMs.

  * Examples: Properly report errors when opening a file failed.

  * Python: When installing into venvs, no longer force a reinstallation =
of\
    dependencies.

* Dependencies changes

  * Increase minimum required versions

    * Boost to 1.71

    * DPDK to 19.11

    * Changed minimum CMake versions for various non-UHD projects, e.g.\
      firmware builds, to stay compatible with CMake 4

* Documentation

  * Restructured the UHD manual, improved chapter structure, improved get=
ting\
    started content, added RFNoC specification.

  * Fixed some external links

  * Many smaller improvements (typos, duplicate entries removed, formatti=
ng,\
    etc.)

* Codebase Management

  * Increased C++ version to 20 for UHD library, examples, and utilities

  * Removed Boost in multiple locations and replaced with standard librar=
y\
    calls

  * Fix numerous (mostly harmless) compiler and Doxygen warnings

  * Improve CMake linking instructions

* Validated OS Environments\
  (Versions for build and runtime dependencies can be determined from the=
\
  docker container definitions in the UHD repository at .ci/docker/...)

  * Linux:

    * Ubuntu: jammy (22.04), noble (24.04), questing (25.10)

    * Fedora: 40, 41, 42

  * Windows: 10 22H2, 11 24H2

  * MacOS: Sequoia (15.6)

--b1_qmJjoDnH4XQqhlBu95P9z6nNd3faH7Jyq1x8CImerQo
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>The first release candidate of UHD 4.10.0.0 is available for testing.<br=
>This release includes support for USRP X420 and the addition of timed comp=
lex<br>gain feature to RFNoC radio blocks. For a complete list<br>of new fe=
atures, updates and bug fixes see the CHANGELOG (see also below).</p><p>Tag=
 for the UHD release candidate:<br><a href=3D"https://github.com/EttusResea=
rch/uhd/releases/tag/v4.10.0.0-rc3" title=3D"https://github.com/EttusResear=
ch/uhd/releases/tag/v4.10.0.0-rc3">https://github.com/EttusResearch/uhd/rel=
eases/tag/v4.10.0.0-rc3</a></p><p>Tag for the file system release candidate=
:<br><a href=3D"https://github.com/EttusResearch/meta-ettus/releases/tag/v4=
.10.0.0-rc3" title=3D"https://github.com/EttusResearch/meta-ettus/releases/=
tag/v4.10.0.0-rc3">https://github.com/EttusResearch/meta-ettus/releases/tag=
/v4.10.0.0-rc3</a></p><p>Thanks,</p><p>Marian</p><p>CHANGELOG:</p><h3><stro=
ng>004.010.000.000</strong></h3><ul><li><p>Highlights / Main Changes</p><ul=
><li><p>Support for USRP X420</p></li><li><p>Addition of timed complex gain=
 feature, which allows setting a complex gain<br>value to fix phase and amp=
litude of signals from radio blocks</p></li></ul></li><li><p>New Features</=
p><ul><li><p>CMake:</p><ul><li><p>Create UHD::uhd package for improved inte=
gration in downstream build<br>processes. The init_usrp example is used to =
showcase this feature.</p></li><li><p>Improved options for RFNoC OOT module=
s to write unit tests.</p></li></ul></li><li><p>Add helper routines to up- =
and download data (reliably) from and to the<br>DRAM block</p></li><li><p>X=
310: Allow daughterboards to set dboard clock rate</p></li><li><p>Improve f=
inding of MPM-based devices by making parts of the find call<br>asynchronou=
s and allowing to skip reachability checks.</p></li><li><p>RFNoC:</p><ul><l=
i><p>Added new optional feature to all Radio blocks - Timed complex gain:</=
p><ul><li><p>Allows specifying complex gain coefficients to be applied to a=
ll<br>TX and/or RX samples of a radio channel at the specified time.</p></l=
i><li><p>Enabled by default for all TX and RX channels of the radio blocks,=
<br>but can be disabled at FPGA build time via the&nbsp;<code>EN_COMP_GAIN_=
TX</code><br>and&nbsp;<code>EN_COMP_GAIN_RX</code>&nbsp;parameters of the r=
adio blocks.</p></li><li><p>NOTE: For the x440_X4_400 default FPGA design p=
rovided with UHD,<br>enabling this feature for all 8 RX and TX channels nec=
essitated<br>restricting the existing crossbar connections between the repl=
ay<br>blocks and the radio blocks. As a result, only blocks with the same<b=
r>indices can be connected (e.g. replay0&lt;-&gt;radio0 and replay1&lt;-&gt=
;radio1<br>only) when using this pre-built USRP FPGA image.</p></li></ul></=
li><li><p>Blocks may now drive the front-panel GPIO pins on all RFNoC-capab=
le<br>devices. New IO signatures are added, and all device BSPs have IO por=
ts<br>for accessing the GPIOs. Device controls are updated such that the us=
er<br>can choose the source for GPIOs dynamically in this case (i.e., the<b=
r>radio blocks and other GPIO sources are still available). In some cases,<=
br>the device BSP HDL had to be significantly refactored.</p></li><li><p>Ad=
d names and descriptions for block's and module's YAML files, so that<br>ot=
her tools may read information about those in an automated fashion</p></li>=
<li><p>Allow&nbsp;<code>mtu</code>&nbsp;stream argument, which overrides th=
e MTU value that is<br>derived from the link information.</p></li><li><p>Ac=
tion handling is now moved to its own thread (there is one action<br>handli=
ng thread per graph). This allows actions to be handled<br>asynchronously, =
e.g., when triggering actions from async message handlers.</p></li><li><p>A=
dd radio_state IO signature, so that other blocks can monitor the ATR<br>st=
ate of radio blocks.</p></li><li><p>All RFNoC devices can now take an&nbsp;=
<code>mtu</code>&nbsp;stream argument (which overrides<br>the detected link=
 MTU) and a&nbsp;<code>force_mtu</code>&nbsp;device argument (which skips<b=
r>automatic MTU detection and forces a fixed value). These are helpful in<b=
r>scenarios where a specific network topology interferes with path MTU<br>d=
iscovery, and for remote streaming when the MTU for a remote stream link<br=
>cannot be inferred from UHD.</p></li><li><p>rfnoc_modtool has improved sup=
port for generating unit tests.</p></li><li><p>Add PPS IO signature for all=
 targets</p></li><li><p>Add stream command to start receiving when a transm=
it occurs</p></li><li><p>Null source/sink: Add finite mode.</p></li><li><p>=
Add UX1/UX2/UX4 QSFP configurations for X4xx</p></li></ul></li></ul></li><l=
i><p>API Changes</p><ul><li><p>meta_range_t and uhd::dict can now be initia=
lized from initializer lists</p></li><li><p>Add rfnoc_graph::get_chdr_xport=
_adapters()</p></li><li><p>Python API now allows creating SubdevSpec from a=
 string</p></li><li><p>Some public APIs that used&nbsp;<code>boost::optiona=
l</code>&nbsp;now also work with&nbsp;<code>std::optional</code></p></li><l=
i><p>Unit tests for RFNoC blocks (in-tree and out-of-tree) no longer requir=
e a<br>dummy implementation of&nbsp;<code>~make_args_t()</code></p></li><li=
><p><code>uhd::cast::to_str()</code>&nbsp;was added and&nbsp;<code>uhd::cas=
t::from_str()</code>&nbsp;was extended to<br>be a full replacement for&nbsp=
;<code>boost::lexical_cast</code></p></li></ul></li><li><p>Examples</p><ul>=
<li><p>Overhauled many of the examples to improve documentation, as well as=
 some<br>minor conveniences or bug fixes</p></li><li><p>Added continuous st=
reaming to tx_samples_from_file</p></li><li><p>Improved gpio example.</p></=
li></ul></li><li><p>Bug Fixes</p><ul><li><p>Fix static UHD library builds</=
p></li><li><p>Fix compatibility with Boost 1.89</p></li><li><p>RFNoC:</p><u=
l><li><p>Fix slicing notation in rfnoc_image_builder</p></li><li><p>Fix bui=
lding of GRC files with empty default target (this would affect<br>builds o=
f X410 and X440 device bitfiles from GNU Radio)</p></li><li><p>Fix installa=
tion of OOT modules in Python venvs</p></li><li><p>Fix time alignment of fi=
rst sample</p></li><li><p>Unit tests in RFNoC OOT modules now preload their=
 DLLs to ensure the<br>correct library version is loaded</p></li><li><p>Fix=
 generation of GNU Radio C++ block controllers</p></li><li><p>rfnoc_modtool=
: Fix creation of spurious unit tests, fix package_data for<br>Python modul=
e installation</p></li><li><p>rfnoc_modtool: Fix connection check for inval=
id ports</p></li><li><p>Fix alignment of first sample coming from radio blo=
ck.</p></li><li><p>Fix bug in ctrlport_endpoint which could cause the softw=
are to believe<br>the associated RFNoC block's command FIFO was full when p=
ackets were lost</p></li><li><p>Add parameter to skip waiting for ACKs in a=
sync messages</p></li></ul></li><li><p>E31x: Fix GPIO control</p></li><li><=
p>E3xx/B2xx: Fix rounding bug for RF PLL tuning</p></li><li><p>B2xx: Fix im=
age loading via b200_image_loader when multiple devices are<br>attached</p>=
</li><li><p>X410: Fix tuning when power calibration and non-default gain pr=
ofiles are<br>used.</p></li><li><p>Power calibration tools: Fix settings fo=
r E320, allow non-default sampling<br>rate, other minor fixes</p></li><li><=
p>FPGA</p><ul><li><p>Fix various simulation-related bugs</p></li></ul></li>=
<li><p>USRP Simulator: Update to match current UHD.</p></li><li><p>multi_us=
rp:</p><ul><li><p>Improved bank name check in multi_usrp::{set,get}_gpio_at=
tr()</p></li></ul></li><li><p>CMake:</p><ul><li><p>Allow absolute paths for=
 install dirs in pkg-config</p></li><li><p>Fix target include path for Pyth=
on module</p></li></ul></li><li><p>USRP1: Fix converter name in property tr=
ee</p></li><li><p>FPGA:</p><ul><li><p>Fix various simulation/testbench issu=
es.</p></li><li><p>Improve resource utilization in various places.</p></li>=
</ul></li><li><p>MPM:</p><ul><li><p>Fix file descriptor leaks by using with=
/open everywhere.</p></li><li><p>Fix double-free issue in rpclib.</p></li><=
li><p>Remove tolerance for non-existing EEPROMs.</p></li></ul></li><li><p>E=
xamples: Properly report errors when opening a file failed.</p></li><li><p>=
Python: When installing into venvs, no longer force a reinstallation of<br>=
dependencies.</p></li></ul></li><li><p>Dependencies changes</p><ul><li><p>I=
ncrease minimum required versions</p><ul><li><p>Boost to 1.71</p></li><li><=
p>DPDK to 19.11</p></li><li><p>Changed minimum CMake versions for various n=
on-UHD projects, e.g.<br>firmware builds, to stay compatible with CMake 4</=
p></li></ul></li></ul></li><li><p>Documentation</p><ul><li><p>Restructured =
the UHD manual, improved chapter structure, improved getting<br>started con=
tent, added RFNoC specification.</p></li><li><p>Fixed some external links</=
p></li><li><p>Many smaller improvements (typos, duplicate entries removed, =
formatting,<br>etc.)</p></li></ul></li><li><p>Codebase Management</p><ul><l=
i><p>Increased C++ version to 20 for UHD library, examples, and utilities</=
p></li><li><p>Removed Boost in multiple locations and replaced with standar=
d library<br>calls</p></li><li><p>Fix numerous (mostly harmless) compiler a=
nd Doxygen warnings</p></li><li><p>Improve CMake linking instructions</p></=
li></ul></li><li><p>Validated OS Environments<br>(Versions for build and ru=
ntime dependencies can be determined from the<br>docker container definitio=
ns in the UHD repository at .ci/docker/...)</p><ul><li><p>Linux:</p><ul><li=
><p>Ubuntu: jammy (22.04), noble (24.04), questing (25.10)</p></li><li><p>F=
edora: 40, 41, 42</p></li></ul></li><li><p>Windows: 10 22H2, 11 24H2</p></l=
i><li><p>MacOS: Sequoia (15.6)</p></li></ul></li></ul>

--b1_qmJjoDnH4XQqhlBu95P9z6nNd3faH7Jyq1x8CImerQo--

--===============2945262614746726862==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2945262614746726862==--
