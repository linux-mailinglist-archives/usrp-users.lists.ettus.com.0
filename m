Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C18C41636E
	for <lists+usrp-users@lfdr.de>; Thu, 23 Sep 2021 18:37:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F8CB3847C9
	for <lists+usrp-users@lfdr.de>; Thu, 23 Sep 2021 12:37:41 -0400 (EDT)
Received: from mail.swro.de (mail.swro.de [88.133.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 48D0C383E26
	for <usrp-users@lists.ettus.com>; Thu, 23 Sep 2021 12:36:53 -0400 (EDT)
IronPort-SDR: abbDLkDYmP+yR01sEwkLZYm59JFvlQtPhxlib23XhqehRlJLAfFjpFaWpsSRJsrDzODHbY4cKD
 iJRaPBjnB3IuEolnGUWHQDTrOMCkp0kz8=
X-IronPort-AV: E=Sophos;i="5.85,316,1624312800";
   d="scan'208,217";a="249784"
Received: from unknown (HELO mail.office.komro.net) ([10.2.38.140])
  by mail.swro.de with ESMTP; 23 Sep 2021 18:36:51 +0200
Received: from EX01.komro.local (10.2.38.40) by EX02.komro.local (10.2.38.140)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.12; Thu, 23 Sep
 2021 18:36:50 +0200
Received: from EX01.komro.local ([fe80::c096:6704:88ee:70e]) by
 EX01.komro.local ([fe80::c096:6704:88ee:70e%4]) with mapi id 15.01.2242.012;
 Thu, 23 Sep 2021 18:36:50 +0200
From: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: AW: AW: AW: AW: [USRP-users] Re: Help_Failed to build UHD in
 Ubuntu 20.04
Thread-Index: Adet8vnsCISeAzZgTLKs/NXJvb17nAAGAT4AAAslGCD//+LJgP/+2QNAgAKEjgD//mW+sIADLeiA///c42AABilGgP/+JE0g
Date: Thu, 23 Sep 2021 16:36:50 +0000
Message-ID: <eed428d705084c8eacc529f73d7a9f94@komro.net>
References: <78d01bc8cbdc44739d061046f13f6aa8@komro.net>
 <013d81cf-214e-a884-d807-0cd1b22407b5@gmail.com>
 <ae4f4b0c23774d9a9c103b7db3287b6a@komro.net>
 <cb5a50c8-cdbc-739c-7b27-f7584cd933dc@gmail.com>
 <837c3db130174070882c9f00c3eeff47@komro.net>
 <5da73615-17fa-d419-46b6-98dca598d418@gmail.com>
 <5a185fce56a34dbb8efef32b11747009@komro.net>
 <a5629b97-07e1-75ed-974e-063626dbfa6b@gmail.com>
 <046adcb243384423a06209c356426225@komro.net>
 <b4336325-3f44-e4dd-18cc-1c2d1be054dc@gmail.com>
In-Reply-To: <b4336325-3f44-e4dd-18cc-1c2d1be054dc@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.35.84]
MIME-Version: 1.0
Message-ID-Hash: 2MUJCZDWQPGNHR72HMVU6CBFGZOGVE25
X-Message-ID-Hash: 2MUJCZDWQPGNHR72HMVU6CBFGZOGVE25
X-MailFrom: thangaraj@komro.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help_Failed to build UHD in Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2MUJCZDWQPGNHR72HMVU6CBFGZOGVE25/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0082079780778676037=="

--===============0082079780778676037==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_eed428d705084c8eacc529f73d7a9f94komronet_"

--_000_eed428d705084c8eacc529f73d7a9f94komronet_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Marcus,
I have successfully installed the UHD binary in a VirtualMachine Ubuntu 20.=
04.3, but when I connect the ethernet-to-USB3.0 cable between SFP+0/1 and h=
ost computer, I can't find the USRP device using uhd tools! I don't know wh=
at am I missing here, may be something in the VM (virtualbox) config? or in=
 my hardware connection itself?

Does anyone successfully interfaced Ettus N320 inside a VirtualBox Ubuntu 2=
0.04.3?

######################################## My System Config #################=
#############

Host OS: Windows 10
Guest OS: VirtualBox Ubuntu 20.04.3 LTS
UHD version: 3.15.0.0
GNU Radio version: 3.8.1.0
SDR Device : Ettus USRP N320
###########################################################################=
#######

Console logs:

thangz@thangz-VirtualBox:~$ sudo apt-get install libuhd-dev
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following NEW packages will be installed:
  libuhd-dev
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 0 B/3.230 kB of archives.
After this operation, 19,2 MB of additional disk space will be used.
Selecting previously unselected package libuhd-dev.
(Reading database ... 245194 files and directories currently installed.)
Preparing to unpack .../libuhd-dev_3.15.0.0-1-1ubuntu1~focal1_amd64.deb ...
Unpacking libuhd-dev (3.15.0.0-1-1ubuntu1~focal1) ...
Setting up libuhd-dev (3.15.0.0-1-1ubuntu1~focal1) ...
thangz@thangz-VirtualBox:~$ cd $install_prefix/lib/uhd/examples
thangz@thangz-VirtualBox:/lib/uhd/examples$ ls
benchmark_rate      python                    rx_ascii_art_dft    rx_timed_=
samples      test_pps_input         tx_samples_c
benchmark_streamer  replay_samples_from_file  rx_multi_samples    sync_to_g=
ps           test_timed_commands    tx_samples_from_file
gpio                rfnoc_nullsource_ce_rx    rx_samples_c        test_cloc=
k_synch      twinrx_freq_hopping    tx_timed_samples
latency_test        rfnoc_radio_loopback      rx_samples_to_file  test_dboa=
rd_coercion  tx_bursts              tx_waveforms
network_relay       rfnoc_rx_to_file          rx_samples_to_udp   test_mess=
ages         txrx_loopback_to_file  usrp_list_sensors
thangz@thangz-VirtualBox:/lib/uhd/examples$ uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.0-relea=
se
No UHD Devices Found
thangz@thangz-VirtualBox:/lib/uhd/examples$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.0-relea=
se
Error: LookupError: KeyError: No devices found for ----->
Empty Device Address

Looking forward to your kind help, thanks in advance.

Regards,
Thangaraj

Von: Marcus D. Leech <patchvonbraun@gmail.com>
Gesendet: Mittwoch, 22. September 2021 15:55
An: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>; usrp-users@lis=
ts.ettus.com
Betreff: Re: AW: AW: AW: AW: [USRP-users] Re: Help_Failed to build UHD in U=
buntu 20.04

On 2021-09-22 9:35 a.m., Thangaraj Mukara Dhakshinamoorthy wrote:
Hello Marcus,
Unfortunately, the pre-packaged versions of UHD and GNU-Radio are also prob=
lematic!

This looks like you don't have a Python2.7 install on your system--or it ca=
nnot be found.  During the build.  What version of UHD are you trying to bu=
ild?
> UHD v3.14.0.0 (as mentioned in the installation guidelines)
Also, in Ubuntu 20.04, if you're just using Gnu Radio and not doing RFNOC w=
ork, you can just use the pre-packaged versions of UHD and Gnu Radio, and u=
se
  apt-install to install them:

GNU Installation:

thangaraj@KOM1292:~$ sudo apt install gnuradio
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following additional packages will be installed:
  gnuradio-dev
Suggested packages:
  gr-fosphor gr-osmosdr
Recommended packages:
  python3-qwt-qt5
The following NEW packages will be installed:
  gnuradio gnuradio-dev
0 upgraded, 2 newly installed, 0 to remove and 1 not upgraded.
Need to get 6374 kB of archives.
After this operation, 38.8 MB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu focal/main a=
md64 gnuradio amd64 3.10.0.git~master~14443~focal-1 [6052 kB]
Get:2 http://ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu focal/main a=
md64 gnuradio-dev amd64 3.10.0.git~master~14443~focal-1 [322 kB]
Fetched 6374 kB in 3s (2292 kB/s)
Selecting previously unselected package gnuradio.
(Reading database ... 103340 files and directories currently installed.)
Preparing to unpack .../gnuradio_3.10.0.git~master~14443~focal-1_amd64.deb =
...
Unpacking gnuradio (3.10.0.git~master~14443~focal-1) ...
Selecting previously unselected package gnuradio-dev:amd64.
Preparing to unpack .../gnuradio-dev_3.10.0.git~master~14443~focal-1_amd64.=
deb ...
Unpacking gnuradio-dev:amd64 (3.10.0.git~master~14443~focal-1) ...
Setting up gnuradio (3.10.0.git~master~14443~focal-1) ...
Setting up gnuradio-dev:amd64 (3.10.0.git~master~14443~focal-1) ...
Processing triggers for shared-mime-info (1.15-1) ...
Processing triggers for mime-support (3.64ubuntu1) ...
Processing triggers for hicolor-icon-theme (0.17-2) ...
Processing triggers for libc-bin (2.31-0ubuntu9.2) ...
Processing triggers for man-db (2.9.1-1) ...
thangaraj@KOM1292:~$ gnuradio-companion (failed to start)
Unable to init server: Could not connect: Connection refused
Unable to init server: Could not connect: Connection refused
Unable to init server: Could not connect: Connection refused
/usr/lib/python3/dist-packages/apport/report.py:13: DeprecationWarning: the=
 imp module is deprecated in favour of importlib; see the module's document=
ation for alternative uses
  import fnmatch, glob, traceback, errno, sys, atexit, locale, imp, stat
Traceback (most recent call last):
  File "/usr/bin/gnuradio-companion", line 92, in <module>
    run_main()
  File "/usr/bin/gnuradio-companion", line 85, in run_main
    exit(main())
  File "/usr/lib/python3/dist-packages/gnuradio/grc/main.py", line 70, in m=
ain
    from .gui.Platform import Platform
  File "/usr/lib/python3/dist-packages/gnuradio/grc/gui/Platform.py", line =
14, in <module>
    from . import canvas
  File "/usr/lib/python3/dist-packages/gnuradio/grc/gui/canvas/__init__.py"=
, line 10, in <module>
    from .param import Param
  File "/usr/lib/python3/dist-packages/gnuradio/grc/gui/canvas/param.py", l=
ine 11, in <module>
    from .. import ParamWidgets, Utils, Constants, Actions
  File "/usr/lib/python3/dist-packages/gnuradio/grc/gui/ParamWidgets.py", l=
ine 58, in <module>
    add_style_provider()
  File "/usr/lib/python3/dist-packages/gnuradio/grc/gui/ParamWidgets.py", l=
ine 53, in add_style_provider
    Gtk.StyleContext.add_provider_for_screen(
TypeError: Argument 0 does not allow None as a value
This looks like a problem with your Ubuntu 20.04 system image--it's missing=
 some configuration or something.  Not sure what.
  I'm not a Windows guy, nor do I know anything about WSL.  Further questio=
ns about *GNURADIO* should really be directed
  to the discuss-gnuradio mailing list, rather than here.

IF you mix PPA packages and packages from the distribution, you'll be in a =
world of hurt.  Don't do that.

It turns out that the "gnuradio" package alone is enough to bring in compat=
ible versions of UHD and friends, so you shouldn't need
 to install anything other than that.  Until a couple of weeks ago, I was r=
unning Ubuntu 20.04 on a real physical system, using a variety
 of SDR hardware including UHD (USRP) hardware without issue.  I upgraded t=
o Ubuntu 21.04 to get past a bug in Gnu Radio 3.8.1.0.
 I know this stuff works, but I have no experience with WSL.

But like I had previously mentioned in this thread, you'll need to dedicate=
 a network port to your N310, and I have no idea how that
  works in the WSL environment, and perhaps someone with more familiarity w=
ith WSL can comment.




UHD Installation:

thangaraj@KOM1292:~$ sudo apt install uhd libuhd
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Unable to locate package uhd
E: Unable to locate package libuhd
thangaraj@KOM1292:~$ sudo apt-get install uhd libuhd
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Unable to locate package uhd
E: Unable to locate package libuhd
thangaraj@KOM1292:~$ sudo add-apt-repository ppa:ettusresearch/uhd

More info: https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
Press [ENTER] to continue or Ctrl-c to cancel adding it.

Get:1 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal InRelease [18=
.1 kB]
Hit:2 http://ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu focal InRele=
ase
Hit:3 https://download.docker.com/linux/ubuntu focal InRelease
Hit:4 http://ppa.launchpad.net/gnuradio/gnuradio-releases/ubuntu focal InRe=
lease
Hit:5 http://archive.ubuntu.com/ubuntu focal InRelease
Get:6 http://archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
Get:7 http://security.ubuntu.com/ubuntu focal-security InRelease [114 kB]
Get:8 http://archive.ubuntu.com/ubuntu focal-backports InRelease [101 kB]
Get:9 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal/main amd64 Pa=
ckages [1048 B]
Get:10 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal/main Transla=
tion-en [600 B]
Fetched 348 kB in 5s (68.1 kB/s)
Reading package lists... Done
thangaraj@KOM1292:~$ sudo apt-get update
Hit:1 http://archive.ubuntu.com/ubuntu focal InRelease
Hit:2 http://archive.ubuntu.com/ubuntu focal-updates InRelease
Hit:3 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal InRelease
Hit:4 https://download.docker.com/linux/ubuntu focal InRelease
Hit:5 http://archive.ubuntu.com/ubuntu focal-backports InRelease
Hit:6 http://ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu focal InRele=
ase
Hit:7 http://ppa.launchpad.net/gnuradio/gnuradio-releases/ubuntu focal InRe=
lease
Hit:8 http://security.ubuntu.com/ubuntu focal-security InRelease
Reading package lists... Done
thangaraj@KOM1292:~$ sudo apt-get install libuhd-dev libuhd003 uhd-host (fa=
iled)
Reading package lists... Done
Building dependency tree
Reading state information... Done
Package libuhd003 is not available, but is referred to by another package.
This may mean that the package is missing, has been obsoleted, or
is only available from another source
However the following packages replace it:
  libuhd3.15.0

E: Package 'libuhd003' has no installation candidate
thangaraj@KOM1292:~$ sudo apt-get install libuhd-dev libuhd003.15.0 uhd-hos=
t (failed)
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Unable to locate package libuhd003.15.0
E: Couldn't find any package by glob 'libuhd003.15.0'
E: Couldn't find any package by regex 'libuhd003.15.0'
thangaraj@KOM1292:~$ sudo apt-get install libuhd-dev libuhd003.14.0 uhd-hos=
t (failed)
Reading package lists... Done
Building dependency tree
Reading state information... Done
E: Unable to locate package libuhd003.14.0
E: Couldn't find any package by glob 'libuhd003.14.0'
E: Couldn't find any package by regex 'libuhd003.14.0'
thangaraj@KOM1292:~$ sudo apt-get install libuhd-dev uhd-host (completed)
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following additional packages will be installed:
  libuhd3.15.0 python-is-python2 python-tk
Suggested packages:
  tix python-tk-dbg
The following NEW packages will be installed:
  libuhd-dev python-is-python2 python-tk
The following packages will be upgraded:
  libuhd3.15.0 uhd-host
2 upgraded, 3 newly installed, 0 to remove and 1 not upgraded.
Need to get 11.8 MB of archives.
After this operation, 13.9 MB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu focal/universe amd64 python-is-pytho=
n2 all 2.7.17-4 [2496 B]
Get:2 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal/main amd64 uh=
d-host amd64 3.15.0.0-1-1ubuntu1~focal1 [5463 kB]
Get:3 http://archive.ubuntu.com/ubuntu focal/universe amd64 python-tk amd64=
 2.7.18-1 [25.3 kB]
Get:4 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal/main amd64 li=
buhd3.15.0 amd64 3.15.0.0-1-1ubuntu1~focal1 [3061 kB]
Get:5 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal/main amd64 li=
buhd-dev amd64 3.15.0.0-1-1ubuntu1~focal1 [3230 kB]
Fetched 11.8 MB in 6s (2110 kB/s)
(Reading database ... 105690 files and directories currently installed.)
Preparing to unpack .../uhd-host_3.15.0.0-1-1ubuntu1~focal1_amd64.deb ...
Unpacking uhd-host (3.15.0.0-1-1ubuntu1~focal1) over (3.15.0.0-2build5) ...
Selecting previously unselected package python-is-python2.
Preparing to unpack .../python-is-python2_2.7.17-4_all.deb ...
Unpacking python-is-python2 (2.7.17-4) ...
Preparing to unpack .../libuhd3.15.0_3.15.0.0-1-1ubuntu1~focal1_amd64.deb .=
..
Unpacking libuhd3.15.0:amd64 (3.15.0.0-1-1ubuntu1~focal1) over (3.15.0.0-2b=
uild5) ...
Selecting previously unselected package libuhd-dev.
Preparing to unpack .../libuhd-dev_3.15.0.0-1-1ubuntu1~focal1_amd64.deb ...
Unpacking libuhd-dev (3.15.0.0-1-1ubuntu1~focal1) ...
Selecting previously unselected package python-tk.
Preparing to unpack .../python-tk_2.7.18-1_amd64.deb ...
Unpacking python-tk (2.7.18-1) ...
Setting up python-tk (2.7.18-1) ...
Setting up python-is-python2 (2.7.17-4) ...
Setting up libuhd3.15.0:amd64 (3.15.0.0-1-1ubuntu1~focal1) ...
Setting up libuhd-dev (3.15.0.0-1-1ubuntu1~focal1) ...
Setting up uhd-host (3.15.0.0-1-1ubuntu1~focal1) ...
sysctl: cannot stat /proc/sys/net/core/rmem_max: No such file or directory
sysctl: cannot stat /proc/sys/net/core/wmem_max: No such file or directory
Warning: Could not update sysctl settings for network devices.
Processing triggers for man-db (2.9.1-1) ...
Processing triggers for libc-bin (2.31-0ubuntu9.2) ...

Looking forward to your kind response.

Regards,
Thangaraj
Von: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.c=
om>
Gesendet: Mittwoch, 22. September 2021 15:04
An: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net><mailto:thangara=
j@komro.net>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Betreff: Re: AW: AW: AW: [USRP-users] Re: Help_Failed to build UHD in Ubunt=
u 20.04

On 2021-09-22 7:47 a.m., Thangaraj Mukara Dhakshinamoorthy wrote:
Hello Marcus,
As you mentioned, I have followed the step-by-step installation guide, whil=
e building and installing UHD from source code, it throws an error which I =
mentioned previously!

thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake ..
--
-- Configuring the python interpreter...
-- Python interpreter: /usr/bin/python3
-- Override with: -DPYTHON_EXECUTABLE=3D<path-to-python>
-- Python runtime interpreter: /usr/bin/python3
-- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D<path-to-python>
-- Working off of feature or development branch. Updating version number.
-- Using UHD Images Directory: /usr/local/share/uhd/images
-- Build type not specified: defaulting to release.
--
-- Configuring Boost C++ Libraries...
-- Looking for optional Boost components...
-- Found Boost: /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cm=
ake (found suitable version "1.71.0", minimum required is "1.53") found com=
ponents: python
-- Looking for required Boost components...
-- Found Boost: /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cm=
ake (found suitable version "1.71.0", minimum required is "1.53") found com=
ponents: chrono date_time filesystem program_options regex system unit_test=
_framework serialization thread
-- Boost include directories: /usr/include
-- Boost library directories: /usr/lib/x86_64-linux-gnu
-- Boost libraries: Boost::chrono;Boost::date_time;Boost::filesystem;Boost:=
:program_options;Boost::regex;Boost::system;Boost::unit_test_framework;Boos=
t::serialization;Boost::thread
CMake Warning (dev) at cmake/Modules/UHDLog.cmake:68 (set):
  implicitly converting 'FILE' to 'STRING' type.
Call Stack (most recent call first):
  CMakeLists.txt:365 (include)
This warning is for project developers.  Use -Wno-dev to suppress it.

--
-- Python checking for Python version 2.7 or greater
-- Python checking for Python version 2.7 or greater - "assert platform.pyt=
hon_version() >=3D '2.7' and platform.python_version() < '3.0'" failed
--
-- Python checking for Mako templates 0.4.2 or greater
-- Python checking for Mako templates 0.4.2 or greater - found
--
-- Python checking for requests 2.0 or greater
-- Python checking for requests 2.0 or greater - found
--
-- Python checking for numpy 1.7 or greater
-- Python checking for numpy 1.7 or greater - found
--
-- Configuring LibUHD support...
--   Dependency Boost_FOUND =3D TRUE
--   Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D FALSE
--   Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE
CMake Error at cmake/Modules/UHDComponent.cmake:59 (message):
  Dependencies for required component LibUHD not met.
Call Stack (most recent call first):
  CMakeLists.txt:430 (LIBUHD_REGISTER_COMPONENT)


-- Configuring incomplete, errors occurred!
See also "/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeOutput.lo=
g".
See also "/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeError.log=
".

Also, tried executing below commands but got the same above output:
thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake -DPYTHON_EXECUTABLE=3D/u=
sr/bin/python3 ..
thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake -DPYTHON_EXECUTABLE=3D/u=
sr/bin/python3 -DRUNTIME_PYTHON_EXECUTABLE=3D/usr/bin/python3 ..
thangaraj@KOM1292:~/workarea/uhd/host/build$ /usr/bin/cmake ..
thangaraj@KOM1292:~/workarea/uhd/host/build$ PATH=3D/usr/bin:$PATH cmake ..
thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake -DCMAKE_FIND_ROOT_PATH=
=3D/usr ..

PFA CMake logfiles.

I am stumbled with this UHD & GNU installation issue for almost a week, it =
would great if anyone can help me out, I would appreciate it and be very th=
ankful!

PS: I am using WSL-Windows Subsytem for Linux (running Ubuntu 20.04.3 LTS)!

Regards,
Thangaraj

This looks like you don't have a Python2.7 install on your system--or it ca=
nnot be found.  During the build.  What version of UHD are you trying to bu=
ild?

Also, in Ubuntu 20.04, if you're just using Gnu Radio and not doing RFNOC w=
ork, you can just use the pre-packaged versions of UHD and Gnu Radio, and u=
se
  apt-install to install them:

sudo apt install gnuradio
sudp apt install uhd libuhd






--_000_eed428d705084c8eacc529f73d7a9f94komronet_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:Consolas;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage20
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}
span.E-MailFormatvorlage21
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}
span.E-MailFormatvorlage22
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}
span.E-MailFormatvorlage23
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}
span.E-MailFormatvorlage24
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}
span.E-MailFormatvorlage25
	{mso-style-type:personal-reply;
	font-family:"Verdana",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hello Marcus,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">I have successfully installed the UHD binary in a V=
irtualMachine Ubuntu 20.04.3, but when I connect the ethernet-to-USB3.0 cab=
le between SFP&#43;0/1 and host computer, I can&#8217;t
 find the USRP device using uhd tools! I don&#8217;t know what am I missing=
 here, may be something in the VM (virtualbox) config? or in my hardware co=
nnection itself?
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Does anyone successfully interfaced Ettus N320 insi=
de a VirtualBox Ubuntu 20.04.3?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">########################################
<span style=3D"background:yellow;mso-highlight:yellow">My System Config</sp=
an> ##############################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Host OS: Windows 10<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Guest OS: VirtualBox Ubuntu 20.04.3 LTS<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">UHD version: 3.15.0.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">GNU Radio version: 3.8.1.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">SDR Device : Ettus USRP N320<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">###################################################=
###############################<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif;background:yellow;mso-highlight:yellow">Console l=
ogs:</span></b><b><span style=3D"font-size:10.0pt;font-family:&quot;Verdana=
&quot;,sans-serif"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:yellow;mso-highlight:yellow">thangz@thang=
z-VirtualBox:~$ sudo apt-get install libuhd-dev</span><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Verdana&quot;,sans-serif"><o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading package lists... Done<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Building dependency tree&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading state information... Done<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">The following NEW packages will be installed:<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; libuhd-dev<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">0 upgraded, 1 newly installed, 0 to remove and 0 no=
t upgraded.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Need to get 0 B/3.230 kB of archives.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">After this operation, 19,2 MB of additional disk sp=
ace will be used.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Selecting previously unselected package libuhd-dev.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">(Reading database ... 245194 files and directories =
currently installed.)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Preparing to unpack .../libuhd-dev_3.15.0.0-1-1ubun=
tu1~focal1_amd64.deb ...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Unpacking libuhd-dev (3.15.0.0-1-1ubuntu1~focal1) .=
..<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Setting up libuhd-dev (3.15.0.0-1-1ubuntu1~focal1) =
...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:yellow;mso-highlight:yellow">thangz@thang=
z-VirtualBox:~$ cd $install_prefix/lib/uhd/examples</span><span style=3D"fo=
nt-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif"><o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:yellow;mso-highlight:yellow">thangz@thang=
z-VirtualBox:/lib/uhd/examples$ ls</span><span style=3D"font-size:10.0pt;fo=
nt-family:&quot;Verdana&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">benchmark_rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; python=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_ascii_art_dft&nbsp;&nbsp;&nbsp; =
rx_timed_samples&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; test_pps_input&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tx_samples_c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">benchmark_streamer&nbsp; replay_samples_from_file&n=
bsp; rx_multi_samples&nbsp;&nbsp;&nbsp; sync_to_gps&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; test_timed_commands&nbsp;&nbsp;&nbsp; =
tx_samples_from_file<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">gpio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rfnoc_nullsource_ce_rx&nbsp;&nb=
sp;&nbsp; rx_samples_c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; test_clock=
_synch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; twinrx_freq_hopping&nbsp;&nbsp;&nbsp; =
tx_timed_samples<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">latency_test&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; rfnoc_radio_loopback&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_samples_to_file&n=
bsp; test_dboard_coercion&nbsp; tx_bursts&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tx_waveforms<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">network_relay&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; r=
fnoc_rx_to_file&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_sa=
mples_to_udp&nbsp;&nbsp; test_messages&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; txrx_loopback_to_file&nbsp; usrp_list_sensors<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:yellow;mso-highlight:yellow">thangz@thang=
z-VirtualBox:/lib/uhd/examples$ uhd_find_devices</span><span style=3D"font-=
size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif"><o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">[INFO] [UHD] linux; GNU C&#43;&#43; version 9.3.0; =
Boost_107100; UHD_3.15.0.0-release<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">No UHD Devices Found<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:yellow;mso-highlight:yellow">thangz@thang=
z-VirtualBox:/lib/uhd/examples$ uhd_usrp_probe</span><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Verdana&quot;,sans-serif"><o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">[INFO] [UHD] linux; GNU C&#43;&#43; version 9.3.0; =
Boost_107100; UHD_3.15.0.0-release<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Error: LookupError: KeyError: No devices found for =
-----&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Empty Device Address<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Looking forward to your kind help, thanks in advanc=
e.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Thangaraj<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"mso-fareast-language:DE">Von:</spa=
n></b><span style=3D"mso-fareast-language:DE"> Marcus D. Leech &lt;patchvon=
braun@gmail.com&gt;
<br>
<b>Gesendet:</b> Mittwoch, 22. September 2021 15:55<br>
<b>An:</b> Thangaraj Mukara Dhakshinamoorthy &lt;thangaraj@komro.net&gt;; u=
srp-users@lists.ettus.com<br>
<b>Betreff:</b> Re: AW: AW: AW: AW: [USRP-users] Re: Help_Failed to build U=
HD in Ubuntu 20.04<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 2021-09-22 9:35 a.m., Thangaraj Mukara Dhakshinam=
oorthy wrote:<span style=3D"font-size:12.0pt;mso-fareast-language:DE"><o:p>=
</o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">Hello Marcus,</span=
><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">Unfortunately, the =
pre-packaged versions of UHD and GNU-Radio are also problematic!</span><o:p=
></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">&nbsp;</span><o:p><=
/o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">This looks like you=
 don't have a Python2.7 install on your system--or it cannot be found.&nbsp=
; During the build.&nbsp; What version of UHD are you trying to build?<br>
&gt; <span style=3D"background:yellow;mso-highlight:yellow">UHD v3.14.0.0</=
span> (as mentioned in the installation guidelines)<br>
Also, in Ubuntu 20.04, if you're just using Gnu Radio and not doing RFNOC w=
ork, you can just use the pre-packaged versions of UHD and Gnu Radio, and u=
se<br>
&nbsp; apt-install to install them:</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">&nbsp;</span><o:p><=
/o:p></p>
<p class=3D"MsoNormal"><b><u><span style=3D"font-size:12.0pt">GNU Installat=
ion:</span></u></b><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><br>
</span><b><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif;background:yellow;mso-highlight:yellow">thangaraj@KOM1292:~$ sudo=
 apt install gnuradio</span></b><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading package lists... Done</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Building dependency tree</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading state information... Done</span><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">The following additional packages will be installed=
:</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; gnuradio-dev</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Suggested packages:</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; gr-fosphor gr-osmosdr</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Recommended packages:</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; python3-qwt-qt5</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">The following NEW packages will be installed:</span=
><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; gnuradio gnuradio-dev</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">0 upgraded, 2 newly installed, 0 to remove and 1 no=
t upgraded.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Need to get 6374 kB of archives.</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">After this operation, 38.8 MB of additional disk sp=
ace will be used.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif;background:yellow;mso-highlight:yellow">Do you wa=
nt to continue? [Y/n] y</span></b><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Get:1
<a href=3D"http://ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu">http:/=
/ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu</a> focal/main amd64 gnu=
radio amd64 3.10.0.git~master~14443~focal-1 [6052 kB]</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Get:2
<a href=3D"http://ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu">http:/=
/ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu</a> focal/main amd64 gnu=
radio-dev amd64 3.10.0.git~master~14443~focal-1 [322 kB]</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Fetched 6374 kB in 3s (2292 kB/s)</span><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Selecting previously unselected package gnuradio.</=
span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">(Reading database ... 103340 files and directories =
currently installed.)</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Preparing to unpack .../gnuradio_3.10.0.git~master~=
14443~focal-1_amd64.deb ...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Unpacking gnuradio (3.10.0.git~master~14443~focal-1=
) ...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Selecting previously unselected package gnuradio-de=
v:amd64.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Preparing to unpack .../gnuradio-dev_3.10.0.git~mas=
ter~14443~focal-1_amd64.deb ...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Unpacking gnuradio-dev:amd64 (3.10.0.git~master~144=
43~focal-1) ...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Setting up gnuradio (3.10.0.git~master~14443~focal-=
1) ...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Setting up gnuradio-dev:amd64 (3.10.0.git~master~14=
443~focal-1) ...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Processing triggers for shared-mime-info (1.15-1) .=
..</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Processing triggers for mime-support (3.64ubuntu1) =
...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Processing triggers for hicolor-icon-theme (0.17-2)=
 ...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Processing triggers for libc-bin (2.31-0ubuntu9.2) =
...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Processing triggers for man-db (2.9.1-1) ...</span>=
<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif;background:red;mso-highlight:red">thangaraj@KOM12=
92:~$ gnuradio-companion (failed to start)</span></b><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Unable to init server: Could not connect: Connectio=
n refused</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Unable to init server: Could not connect: Connectio=
n refused</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Unable to init server: Could not connect: Connectio=
n refused</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">/usr/lib/python3/dist-packages/apport/report.py:13:=
 DeprecationWarning: the imp module is deprecated in favour of importlib; s=
ee the module's documentation for alternative
 uses</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; import fnmatch, glob, traceback, errno, sys,=
 atexit, locale, imp, stat</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Traceback (most recent call last):</span><o:p></o:p=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/bin/gnuradio-companion&quot;=
, line 92, in &lt;module&gt;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; run_main()</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/bin/gnuradio-companion&quot;=
, line 85, in run_main</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; exit(main())</span><o:p></o:p></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/lib/python3/dist-packages/gn=
uradio/grc/main.py&quot;, line 70, in main</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; from .gui.Platform import Platfo=
rm</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/lib/python3/dist-packages/gn=
uradio/grc/gui/Platform.py&quot;, line 14, in &lt;module&gt;</span><o:p></o=
:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; from . import canvas</span><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/lib/python3/dist-packages/gn=
uradio/grc/gui/canvas/__init__.py&quot;, line 10, in &lt;module&gt;</span><=
o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; from .param import Param</span><=
o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/lib/python3/dist-packages/gn=
uradio/grc/gui/canvas/param.py&quot;, line 11, in &lt;module&gt;</span><o:p=
></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; from .. import ParamWidgets, Uti=
ls, Constants, Actions</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/lib/python3/dist-packages/gn=
uradio/grc/gui/ParamWidgets.py&quot;, line 58, in &lt;module&gt;</span><o:p=
></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; add_style_provider()</span><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; File &quot;/usr/lib/python3/dist-packages/gn=
uradio/grc/gui/ParamWidgets.py&quot;, line 53, in add_style_provider</span>=
<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;&nbsp;&nbsp; Gtk.StyleContext.add_provider_fo=
r_screen(</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">TypeError: Argument 0 does not allow None as a valu=
e</span><o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif;mso-fareast-language:DE">This looks like a proble=
m with your Ubuntu 20.04 system image--it's missing some configuration or s=
omething.&nbsp; Not sure what.<br>
&nbsp; I'm not a Windows guy, nor do I know anything about WSL.&nbsp; Furth=
er questions about *GNURADIO* should really be directed<br>
&nbsp; to the discuss-gnuradio mailing list, rather than here.<br>
<br>
IF you mix PPA packages and packages from the distribution, you'll be in a =
world of hurt.&nbsp; Don't do that.<br>
<br>
It turns out that the &quot;gnuradio&quot; package alone is enough to bring=
 in compatible versions of UHD and friends, so you shouldn't need<br>
&nbsp;to install anything other than that.&nbsp; Until a couple of weeks ag=
o, I was running Ubuntu 20.04 on a real physical system, using a variety<br=
>
&nbsp;of SDR hardware including UHD (USRP) hardware without issue.&nbsp; I =
upgraded to Ubuntu 21.04 to get past a bug in Gnu Radio 3.8.1.0.<br>
&nbsp;I know this stuff works, but I have no experience with WSL.<br>
<br>
But like I had previously mentioned in this thread, you'll need to dedicate=
 a network port to your N310, and I have no idea how that<br>
&nbsp; works in the WSL environment, and perhaps someone with more familiar=
ity with WSL can comment.<br>
<br>
<br>
<br>
<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><b><u><span style=3D"font-size:10.0pt;font-family:&q=
uot;Verdana&quot;,sans-serif">UHD Installation:</span></u></b><o:p></o:p></=
p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif">&nbsp;</span></b><o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif;background:yellow;mso-highlight:yellow">thangaraj=
@KOM1292:~$ sudo apt install uhd libuhd</span></b><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading package lists... Done</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Building dependency tree</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading state information... Done</span><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">E: Unable to locate package uhd</span><o:p></o:p></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">E: Unable to locate package libuhd</span><o:p></o:p=
></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif;background:yellow;mso-highlight:yellow">thangaraj=
@KOM1292:~$ sudo apt-get install uhd libuhd</span></b><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading package lists... Done</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Building dependency tree</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading state information... Done</span><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">E: Unable to locate package uhd</span><o:p></o:p></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">E: Unable to locate package libuhd</span><o:p></o:p=
></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif;background:yellow;mso-highlight:yellow">thangaraj=
@KOM1292:~$ sudo add-apt-repository ppa:ettusresearch/uhd</span></b><o:p></=
o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">More info:
<a href=3D"https://launchpad.net/~ettusresearch/&#43;archive/ubuntu/uhd">ht=
tps://launchpad.net/~ettusresearch/&#43;archive/ubuntu/uhd</a></span><o:p><=
/o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Press [ENTER] to continue or Ctrl-c to cancel addin=
g it.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Get:1
<a href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubuntu">http://ppa.la=
unchpad.net/ettusresearch/uhd/ubuntu</a> focal InRelease [18.1 kB]</span><o=
:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hit:2
<a href=3D"http://ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu">http:/=
/ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu</a> focal InRelease</spa=
n><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hit:3
<a href=3D"https://download.docker.com/linux/ubuntu">https://download.docke=
r.com/linux/ubuntu</a> focal InRelease</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hit:4
<a href=3D"http://ppa.launchpad.net/gnuradio/gnuradio-releases/ubuntu">http=
://ppa.launchpad.net/gnuradio/gnuradio-releases/ubuntu</a> focal InRelease<=
/span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hit:5
<a href=3D"http://archive.ubuntu.com/ubuntu">http://archive.ubuntu.com/ubun=
tu</a> focal InRelease</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Get:6
<a href=3D"http://archive.ubuntu.com/ubuntu">http://archive.ubuntu.com/ubun=
tu</a> focal-updates InRelease [114 kB]</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Get:7
<a href=3D"http://security.ubuntu.com/ubuntu">http://security.ubuntu.com/ub=
untu</a> focal-security InRelease [114 kB]</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Get:8
<a href=3D"http://archive.ubuntu.com/ubuntu">http://archive.ubuntu.com/ubun=
tu</a> focal-backports InRelease [101 kB]</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Get:9
<a href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubuntu">http://ppa.la=
unchpad.net/ettusresearch/uhd/ubuntu</a> focal/main amd64 Packages [1048 B]=
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Get:10
<a href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubuntu">http://ppa.la=
unchpad.net/ettusresearch/uhd/ubuntu</a> focal/main Translation-en [600 B]<=
/span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Fetched 348 kB in 5s (68.1 kB/s)</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading package lists... Done</span><o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif;background:yellow;mso-highlight:yellow">thangaraj=
@KOM1292:~$ sudo apt-get update</span></b><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hit:1
<a href=3D"http://archive.ubuntu.com/ubuntu">http://archive.ubuntu.com/ubun=
tu</a> focal InRelease</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hit:2
<a href=3D"http://archive.ubuntu.com/ubuntu">http://archive.ubuntu.com/ubun=
tu</a> focal-updates InRelease</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hit:3
<a href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubuntu">http://ppa.la=
unchpad.net/ettusresearch/uhd/ubuntu</a> focal InRelease</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hit:4
<a href=3D"https://download.docker.com/linux/ubuntu">https://download.docke=
r.com/linux/ubuntu</a> focal InRelease</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hit:5
<a href=3D"http://archive.ubuntu.com/ubuntu">http://archive.ubuntu.com/ubun=
tu</a> focal-backports InRelease</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hit:6
<a href=3D"http://ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu">http:/=
/ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu</a> focal InRelease</spa=
n><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hit:7
<a href=3D"http://ppa.launchpad.net/gnuradio/gnuradio-releases/ubuntu">http=
://ppa.launchpad.net/gnuradio/gnuradio-releases/ubuntu</a> focal InRelease<=
/span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hit:8
<a href=3D"http://security.ubuntu.com/ubuntu">http://security.ubuntu.com/ub=
untu</a> focal-security InRelease</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading package lists... Done</span><o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif;background:red;mso-highlight:red">thangaraj@KOM12=
92:~$ sudo apt-get install libuhd-dev libuhd003 uhd-host (failed)</span></b=
><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading package lists... Done</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Building dependency tree</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading state information... Done</span><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Package libuhd003 is not available, but is referred=
 to by another package.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">This may mean that the package is missing, has been=
 obsoleted, or</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">is only available from another source</span><o:p></=
o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">However the following packages replace it:</span><o=
:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; libuhd3.15.0</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">E: Package 'libuhd003' has no installation candidat=
e</span><o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif;background:red;mso-highlight:red">thangaraj@KOM12=
92:~$ sudo apt-get install libuhd-dev libuhd003.15.0 uhd-host (failed)</spa=
n></b><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading package lists... Done</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Building dependency tree</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading state information... Done</span><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">E: Unable to locate package libuhd003.15.0</span><o=
:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">E: Couldn't find any package by glob 'libuhd003.15.=
0'</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">E: Couldn't find any package by regex 'libuhd003.15=
.0'</span><o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif;background:red;mso-highlight:red">thangaraj@KOM12=
92:~$ sudo apt-get install libuhd-dev libuhd003.14.0 uhd-host (failed)</spa=
n></b><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading package lists... Done</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Building dependency tree</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading state information... Done</span><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">E: Unable to locate package libuhd003.14.0</span><o=
:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">E: Couldn't find any package by glob 'libuhd003.14.=
0'</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">E: Couldn't find any package by regex 'libuhd003.14=
.0'</span><o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif;background:yellow;mso-highlight:yellow">thangaraj=
@KOM1292:~$ sudo apt-get install libuhd-dev uhd-host (completed)</span></b>=
<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading package lists... Done</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Building dependency tree</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Reading state information... Done</span><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">The following additional packages will be installed=
:</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; libuhd3.15.0 python-is-python2 python-tk</sp=
an><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Suggested packages:</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; tix python-tk-dbg</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">The following NEW packages will be installed:</span=
><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; libuhd-dev python-is-python2 python-tk</span=
><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">The following packages will be upgraded:</span><o:p=
></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; libuhd3.15.0 uhd-host</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">2 upgraded, 3 newly installed, 0 to remove and 1 no=
t upgraded.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Need to get 11.8 MB of archives.</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">After this operation, 13.9 MB of additional disk sp=
ace will be used.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Do you want to continue? [Y/n] y</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Get:1
<a href=3D"http://archive.ubuntu.com/ubuntu">http://archive.ubuntu.com/ubun=
tu</a> focal/universe amd64 python-is-python2 all 2.7.17-4 [2496 B]</span><=
o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Get:2
<a href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubuntu">http://ppa.la=
unchpad.net/ettusresearch/uhd/ubuntu</a> focal/main amd64 uhd-host amd64 3.=
15.0.0-1-1ubuntu1~focal1 [5463 kB]</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Get:3
<a href=3D"http://archive.ubuntu.com/ubuntu">http://archive.ubuntu.com/ubun=
tu</a> focal/universe amd64 python-tk amd64 2.7.18-1 [25.3 kB]</span><o:p><=
/o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Get:4
<a href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubuntu">http://ppa.la=
unchpad.net/ettusresearch/uhd/ubuntu</a> focal/main amd64 libuhd3.15.0 amd6=
4 3.15.0.0-1-1ubuntu1~focal1 [3061 kB]</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Get:5
<a href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubuntu">http://ppa.la=
unchpad.net/ettusresearch/uhd/ubuntu</a> focal/main amd64 libuhd-dev amd64 =
3.15.0.0-1-1ubuntu1~focal1 [3230 kB]</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Fetched 11.8 MB in 6s (2110 kB/s)</span><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">(Reading database ... 105690 files and directories =
currently installed.)</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Preparing to unpack .../uhd-host_3.15.0.0-1-1ubuntu=
1~focal1_amd64.deb ...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Unpacking uhd-host (3.15.0.0-1-1ubuntu1~focal1) ove=
r (3.15.0.0-2build5) ...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Selecting previously unselected package python-is-p=
ython2.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Preparing to unpack .../python-is-python2_2.7.17-4_=
all.deb ...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Unpacking python-is-python2 (2.7.17-4) ...</span><o=
:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Preparing to unpack .../libuhd3.15.0_3.15.0.0-1-1ub=
untu1~focal1_amd64.deb ...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Unpacking libuhd3.15.0:amd64 (3.15.0.0-1-1ubuntu1~f=
ocal1) over (3.15.0.0-2build5) ...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Selecting previously unselected package libuhd-dev.=
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Preparing to unpack .../libuhd-dev_3.15.0.0-1-1ubun=
tu1~focal1_amd64.deb ...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Unpacking libuhd-dev (3.15.0.0-1-1ubuntu1~focal1) .=
..</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Selecting previously unselected package python-tk.<=
/span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Preparing to unpack .../python-tk_2.7.18-1_amd64.de=
b ...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Unpacking python-tk (2.7.18-1) ...</span><o:p></o:p=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Setting up python-tk (2.7.18-1) ...</span><o:p></o:=
p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Setting up python-is-python2 (2.7.17-4) ...</span><=
o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Setting up libuhd3.15.0:amd64 (3.15.0.0-1-1ubuntu1~=
focal1) ...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Setting up libuhd-dev (3.15.0.0-1-1ubuntu1~focal1) =
...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Setting up uhd-host (3.15.0.0-1-1ubuntu1~focal1) ..=
.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">sysctl: cannot stat /proc/sys/net/core/rmem_max: No=
 such file or directory</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">sysctl: cannot stat /proc/sys/net/core/wmem_max: No=
 such file or directory</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Warning: Could not update sysctl settings for netwo=
rk devices.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Processing triggers for man-db (2.9.1-1) ...</span>=
<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Processing triggers for libc-bin (2.31-0ubuntu9.2) =
...</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Looking forward to your kind response.</span><o:p><=
/o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Regards,</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Thangaraj</span><o:p></o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"mso-fareast-language:DE">Von:</spa=
n></b><span style=3D"mso-fareast-language:DE"> Marcus D. Leech
<a href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;<=
/a> <br>
<b>Gesendet:</b> Mittwoch, 22. September 2021 15:04<br>
<b>An:</b> Thangaraj Mukara Dhakshinamoorthy <a href=3D"mailto:thangaraj@ko=
mro.net">
&lt;thangaraj@komro.net&gt;</a>; <a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a><br>
<b>Betreff:</b> Re: AW: AW: AW: [USRP-users] Re: Help_Failed to build UHD i=
n Ubuntu 20.04</span><o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 2021-09-22 7:47 a.m., Thangaraj Mukara Dhakshinam=
oorthy wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Hello Marcus,</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">As you mentioned, I have followed the step-by-step =
installation guide, while building and installing UHD from source code, it =
throws an error which I mentioned previously!</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;background:yellow;mso-highlight:yellow">thangaraj@KO=
M1292:~/workarea/uhd/host/build$ cmake ..</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">--</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Configuring the python interpreter...</span><o:p=
></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Python interpreter: /usr/bin/python3</span><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Override with: -DPYTHON_EXECUTABLE=3D&lt;path-to=
-python&gt;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Python runtime interpreter: /usr/bin/python3</sp=
an><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D&lt=
;path-to-python&gt;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Working off of feature or development branch. Up=
dating version number.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Using UHD Images Directory: /usr/local/share/uhd=
/images</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Build type not specified: defaulting to release.=
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">--</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Configuring Boost C&#43;&#43; Libraries...</span=
><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Looking for optional Boost components...</span><=
o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Found Boost: /usr/lib/x86_64-linux-gnu/cmake/Boo=
st-1.71.0/BoostConfig.cmake (found suitable version &quot;1.71.0&quot;, min=
imum required is &quot;1.53&quot;) found components: python</span><o:p></o:=
p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Looking for required Boost components...</span><=
o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Found Boost: /usr/lib/x86_64-linux-gnu/cmake/Boo=
st-1.71.0/BoostConfig.cmake (found suitable version &quot;1.71.0&quot;, min=
imum required is &quot;1.53&quot;) found components: chrono date_time
 filesystem program_options regex system unit_test_framework serialization =
thread</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Boost include directories: /usr/include</span><o=
:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Boost library directories: /usr/lib/x86_64-linux=
-gnu</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Boost libraries: Boost::chrono;Boost::date_time;=
Boost::filesystem;Boost::program_options;Boost::regex;Boost::system;Boost::=
unit_test_framework;Boost::serialization;Boost::thread</span><o:p></o:p></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">CMake Warning (dev) at cmake/Modules/UHDLog.cmake:6=
8 (set):</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; implicitly converting 'FILE' to 'STRING' typ=
e.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Call Stack (most recent call first):</span><o:p></o=
:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; CMakeLists.txt:365 (include)</span><o:p></o:=
p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">This warning is for project developers.&nbsp; Use -=
Wno-dev to suppress it.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">--</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Python checking for Python version 2.7 or greate=
r</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Python checking for Python version 2.7 or greate=
r - &quot;assert platform.python_version() &gt;=3D '2.7' and platform.pytho=
n_version() &lt; '3.0'&quot; failed</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">--</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Python checking for Mako templates 0.4.2 or grea=
ter</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Python checking for Mako templates 0.4.2 or grea=
ter - found</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">--</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Python checking for requests 2.0 or greater</spa=
n><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Python checking for requests 2.0 or greater - fo=
und</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">--</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Python checking for numpy 1.7 or greater</span><=
o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Python checking for numpy 1.7 or greater - found=
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">--</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Configuring LibUHD support...</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">--&nbsp;&nbsp; Dependency Boost_FOUND =3D TRUE</spa=
n><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">--&nbsp;&nbsp; Dependency HAVE_PYTHON_PLAT_MIN_VERS=
ION =3D FALSE</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">--&nbsp;&nbsp; Dependency HAVE_PYTHON_MODULE_MAKO =
=3D TRUE</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">CMake Error at cmake/Modules/UHDComponent.cmake:59 =
(message):</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; Dependencies for required component LibUHD n=
ot met.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Call Stack (most recent call first):</span><o:p></o=
:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp; CMakeLists.txt:430 (LIBUHD_REGISTER_COMPONEN=
T)</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">-- Configuring incomplete, errors occurred!</span><=
o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">See also &quot;/home/thangaraj/workarea/uhd/host/bu=
ild/CMakeFiles/CMakeOutput.log&quot;.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">See also &quot;/home/thangaraj/workarea/uhd/host/bu=
ild/CMakeFiles/CMakeError.log&quot;.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><b><u><span style=3D"font-size:10.0pt;font-family:&q=
uot;Verdana&quot;,sans-serif">Also, tried executing below commands but got =
the same above output:</span></u></b><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake =
-DPYTHON_EXECUTABLE=3D/usr/bin/python3 ..</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake =
-DPYTHON_EXECUTABLE=3D/usr/bin/python3 -DRUNTIME_PYTHON_EXECUTABLE=3D/usr/b=
in/python3 ..</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">thangaraj@KOM1292:~/workarea/uhd/host/build$ /usr/b=
in/cmake ..</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">thangaraj@KOM1292:~/workarea/uhd/host/build$ PATH=
=3D/usr/bin:$PATH cmake ..</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake =
&#8211;DCMAKE_FIND_ROOT_PATH=3D/usr ..</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">PFA CMake logfiles.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">I am stumbled with this UHD &amp; GNU installation =
issue for almost a week, it would great if anyone can help me out, I would =
appreciate it and be very thankful!</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">PS: I am using WSL-Windows Subsytem for Linux (runn=
ing Ubuntu 20.04.3 LTS)!</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Regards,</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif">Thangaraj</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt">&nbsp;</span><o:p><=
/o:p></p>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:12.0pt">This looks like you don't have a Python2.7 install on your syst=
em--or it cannot be found.&nbsp; During the build.&nbsp; What version of UH=
D are you trying to build?<br>
<br>
Also, in Ubuntu 20.04, if you're just using Gnu Radio and not doing RFNOC w=
ork, you can just use the pre-packaged versions of UHD and Gnu Radio, and u=
se<br>
&nbsp; apt-install to install them:<br>
<br>
sudo apt install gnuradio<br>
sudp apt install uhd libuhd <br>
<br>
<br>
<br>
<br>
</span><o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span>=
</p>
</div>
</body>
</html>

--_000_eed428d705084c8eacc529f73d7a9f94komronet_--

--===============0082079780778676037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0082079780778676037==--
