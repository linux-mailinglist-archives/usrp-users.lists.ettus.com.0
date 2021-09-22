Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E75414B34
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 15:55:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0761938495E
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 09:55:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RWMgN+WX";
	dkim-atps=neutral
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 6F7C33848E8
	for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 09:55:00 -0400 (EDT)
Received: by mail-qt1-f170.google.com with SMTP id a13so2667419qtw.10
        for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 06:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=gVJGzFcWb7AQoZF+f/ZlS9u8apY9sB6g2GaRPFGCtGs=;
        b=RWMgN+WXj/knxtvMOndtEHMGsoipWpiPTxiFt5Fzr8yklRIerpxkHFJheEl5nBKIHF
         xf+jmtIM80IZlZ2YKcqGlKB8xuJ8sMV7D3Hf7YRDLBg2RGPhlPScH3UU9pfjFHOC6yb6
         8VNlgMujbOgPuz0eYr6ZbQdg7SYu+mGvBASn1ICji6XPfY/sFqec1qKGVRG91jcJtxiX
         ZJXtj/xlRcAN1fEnYN6+Z4+8NEggcEX/QGAgAo/c2j1vt4R93X6Q52k9LonXEsoqMNBt
         TEA7sFeMbXb7lmLh/o7UgyNv2n5u4n0tYaDRjVHYuTxrlfzahDxftJNUONzAYkIXghbt
         OHOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=gVJGzFcWb7AQoZF+f/ZlS9u8apY9sB6g2GaRPFGCtGs=;
        b=eYiv2AjyXfaweap2PNB3aatdmWQ8D7wynT0T1oufRKRmjyJojdB50FEz9gY9QAkCrT
         LJTObsc8nmvbpGUVZLspKC2oQ7Npmes/vm6wlz03utUBHP9P9MUHgpaBhnMkpTYFPFsu
         AX38OTyOCRiZnnLrk4ruT1XsNUb2n+njw6dugfrijv1qHSEY/yFBrj9xa5yxphtBZunb
         jApBJHIiyT8y7AK2TortyP3mUYNGAVOC3IJKlVegAXt6rsP8kGLeSASIWHU1CBZ/Z2Ut
         eE4bLB2pFEEX/wR2qwUBc9dlnpbOf+Z5LatLeiZghAK20gXIUG1gMzN72Cz7pVncCdQt
         ldBQ==
X-Gm-Message-State: AOAM532j/hn4GtzAyKLHoyCBeycK4i2XRyaHnJsgBErP0Ph3kJZTCa5f
	y2BTxvpMpNgxbGJE93HJ14Np7utZqEVg1Q==
X-Google-Smtp-Source: ABdhPJw3YE0J3ZSb8whklIPt268WUkO2HL2X0T2kJjNZcZiA5T0LrFBdhjNAIK9kd7GZjY6GkTAp/w==
X-Received: by 2002:ac8:1e06:: with SMTP id n6mr3798502qtl.280.1632318899454;
        Wed, 22 Sep 2021 06:54:59 -0700 (PDT)
Received: from [192.168.2.230] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id q137sm1860414qke.103.2021.09.22.06.54.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 06:54:58 -0700 (PDT)
To: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <78d01bc8cbdc44739d061046f13f6aa8@komro.net>
 <013d81cf-214e-a884-d807-0cd1b22407b5@gmail.com>
 <ae4f4b0c23774d9a9c103b7db3287b6a@komro.net>
 <cb5a50c8-cdbc-739c-7b27-f7584cd933dc@gmail.com>
 <837c3db130174070882c9f00c3eeff47@komro.net>
 <5da73615-17fa-d419-46b6-98dca598d418@gmail.com>
 <5a185fce56a34dbb8efef32b11747009@komro.net>
 <a5629b97-07e1-75ed-974e-063626dbfa6b@gmail.com>
 <046adcb243384423a06209c356426225@komro.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <b4336325-3f44-e4dd-18cc-1c2d1be054dc@gmail.com>
Date: Wed, 22 Sep 2021 09:54:57 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <046adcb243384423a06209c356426225@komro.net>
Content-Language: en-US
Message-ID-Hash: HTN4JJTNWM72QSIBNJX6REAJEWMI5KQK
X-Message-ID-Hash: HTN4JJTNWM72QSIBNJX6REAJEWMI5KQK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help_Failed to build UHD in Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HTN4JJTNWM72QSIBNJX6REAJEWMI5KQK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7891830095368101832=="

This is a multi-part message in MIME format.
--===============7891830095368101832==
Content-Type: multipart/alternative;
 boundary="------------55B0B6064091BC9C9B61F19C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------55B0B6064091BC9C9B61F19C
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-22 9:35 a.m., Thangaraj Mukara Dhakshinamoorthy wrote:
>
> Hello Marcus,
>
> Unfortunately, the pre-packaged versions of UHD and GNU-Radio are also=20
> problematic!
>
> This looks like you don't have a Python2.7 install on your system--or=20
> it cannot be found.=A0 During the build.=A0 What version of UHD are you=
=20
> trying to build?
> > UHD v3.14.0.0 (as mentioned in the installation guidelines)
> Also, in Ubuntu 20.04, if you're just using Gnu Radio and not doing=20
> RFNOC work, you can just use the pre-packaged versions of UHD and Gnu=20
> Radio, and use
> =A0 apt-install to install them:
>
> *_GNU Installation:_*
>
>
> *thangaraj@KOM1292:~$ sudo apt install gnuradio***
>
> Reading package lists... Done
>
> Building dependency tree
>
> Reading state information... Done
>
> The following additional packages will be installed:
>
> gnuradio-dev
>
> Suggested packages:
>
> gr-fosphor gr-osmosdr
>
> Recommended packages:
>
> python3-qwt-qt5
>
> The following NEW packages will be installed:
>
> gnuradio gnuradio-dev
>
> 0 upgraded, 2 newly installed, 0 to remove and 1 not upgraded.
>
> Need to get 6374 kB of archives.
>
> After this operation, 38.8 MB of additional disk space will be used.
>
> *Do you want to continue? [Y/n] y***
>
> Get:1 http://ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu=20
> focal/main amd64 gnuradio amd64 3.10.0.git~master~14443~focal-1 [6052 k=
B]
>
> Get:2 http://ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu=20
> focal/main amd64 gnuradio-dev amd64 3.10.0.git~master~14443~focal-1=20
> [322 kB]
>
> Fetched 6374 kB in 3s (2292 kB/s)
>
> Selecting previously unselected package gnuradio.
>
> (Reading database ... 103340 files and directories currently installed.=
)
>
> Preparing to unpack=20
> .../gnuradio_3.10.0.git~master~14443~focal-1_amd64.deb ...
>
> Unpacking gnuradio (3.10.0.git~master~14443~focal-1) ...
>
> Selecting previously unselected package gnuradio-dev:amd64.
>
> Preparing to unpack=20
> .../gnuradio-dev_3.10.0.git~master~14443~focal-1_amd64.deb ...
>
> Unpacking gnuradio-dev:amd64 (3.10.0.git~master~14443~focal-1) ...
>
> Setting up gnuradio (3.10.0.git~master~14443~focal-1) ...
>
> Setting up gnuradio-dev:amd64 (3.10.0.git~master~14443~focal-1) ...
>
> Processing triggers for shared-mime-info (1.15-1) ...
>
> Processing triggers for mime-support (3.64ubuntu1) ...
>
> Processing triggers for hicolor-icon-theme (0.17-2) ...
>
> Processing triggers for libc-bin (2.31-0ubuntu9.2) ...
>
> Processing triggers for man-db (2.9.1-1) ...
>
> *thangaraj@KOM1292:~$ gnuradio-companion (failed to start)***
>
> Unable to init server: Could not connect: Connection refused
>
> Unable to init server: Could not connect: Connection refused
>
> Unable to init server: Could not connect: Connection refused
>
> /usr/lib/python3/dist-packages/apport/report.py:13:=20
> DeprecationWarning: the imp module is deprecated in favour of=20
> importlib; see the module's documentation for alternative uses
>
> import fnmatch, glob, traceback, errno, sys, atexit, locale, imp, stat
>
> Traceback (most recent call last):
>
> File "/usr/bin/gnuradio-companion", line 92, in <module>
>
> run_main()
>
> File "/usr/bin/gnuradio-companion", line 85, in run_main
>
> exit(main())
>
> File "/usr/lib/python3/dist-packages/gnuradio/grc/main.py", line 70,=20
> in main
>
> from .gui.Platform import Platform
>
> File "/usr/lib/python3/dist-packages/gnuradio/grc/gui/Platform.py",=20
> line 14, in <module>
>
> from . import canvas
>
> File=20
> "/usr/lib/python3/dist-packages/gnuradio/grc/gui/canvas/__init__.py",=20
> line 10, in <module>
>
> from .param import Param
>
> File=20
> "/usr/lib/python3/dist-packages/gnuradio/grc/gui/canvas/param.py",=20
> line 11, in <module>
>
> from .. import ParamWidgets, Utils, Constants, Actions
>
> File=20
> "/usr/lib/python3/dist-packages/gnuradio/grc/gui/ParamWidgets.py",=20
> line 58, in <module>
>
> add_style_provider()
>
> File=20
> "/usr/lib/python3/dist-packages/gnuradio/grc/gui/ParamWidgets.py",=20
> line 53, in add_style_provider
>
> Gtk.StyleContext.add_provider_for_screen(
>
> TypeError: Argument 0 does not allow None as a value
>
This looks like a problem with your Ubuntu 20.04 system image--it's=20
missing some configuration or something.=A0 Not sure what.
 =A0 I'm not a Windows guy, nor do I know anything about WSL.=A0 Further=20
questions about *GNURADIO* should really be directed
 =A0 to the discuss-gnuradio mailing list, rather than here.

IF you mix PPA packages and packages from the distribution, you'll be in=20
a world of hurt.=A0 Don't do that.

It turns out that the "gnuradio" package alone is enough to bring in=20
compatible versions of UHD and friends, so you shouldn't need
 =A0to install anything other than that.=A0 Until a couple of weeks ago, =
I=20
was running Ubuntu 20.04 on a real physical system, using a variety
 =A0of SDR hardware including UHD (USRP) hardware without issue.=A0 I=20
upgraded to Ubuntu 21.04 to get past a bug in Gnu Radio 3.8.1.0.
 =A0I know this stuff works, but I have no experience with WSL.

But like I had previously mentioned in this thread, you'll need to=20
dedicate a network port to your N310, and I have no idea how that
 =A0 works in the WSL environment, and perhaps someone with more=20
familiarity with WSL can comment.


> *_UHD Installation:_*
>
> *__*
>
> *thangaraj@KOM1292:~$ sudo apt install uhd libuhd***
>
> Reading package lists... Done
>
> Building dependency tree
>
> Reading state information... Done
>
> E: Unable to locate package uhd
>
> E: Unable to locate package libuhd
>
> *thangaraj@KOM1292:~$ sudo apt-get install uhd libuhd***
>
> Reading package lists... Done
>
> Building dependency tree
>
> Reading state information... Done
>
> E: Unable to locate package uhd
>
> E: Unable to locate package libuhd
>
> *thangaraj@KOM1292:~$ sudo add-apt-repository ppa:ettusresearch/uhd***
>
> More info: https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
>
> Press [ENTER] to continue or Ctrl-c to cancel adding it.
>
> Get:1 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal=20
> InRelease [18.1 kB]
>
> Hit:2 http://ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu focal=20
> InRelease
>
> Hit:3 https://download.docker.com/linux/ubuntu focal InRelease
>
> Hit:4 http://ppa.launchpad.net/gnuradio/gnuradio-releases/ubuntu focal=20
> InRelease
>
> Hit:5 http://archive.ubuntu.com/ubuntu focal InRelease
>
> Get:6 http://archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
>
> Get:7 http://security.ubuntu.com/ubuntu focal-security InRelease [114 k=
B]
>
> Get:8 http://archive.ubuntu.com/ubuntu focal-backports InRelease [101 k=
B]
>
> Get:9 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal/main=20
> amd64 Packages [1048 B]
>
> Get:10 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal/main=20
> Translation-en [600 B]
>
> Fetched 348 kB in 5s (68.1 kB/s)
>
> Reading package lists... Done
>
> *thangaraj@KOM1292:~$ sudo apt-get update***
>
> Hit:1 http://archive.ubuntu.com/ubuntu focal InRelease
>
> Hit:2 http://archive.ubuntu.com/ubuntu focal-updates InRelease
>
> Hit:3 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal InRelease
>
> Hit:4 https://download.docker.com/linux/ubuntu focal InRelease
>
> Hit:5 http://archive.ubuntu.com/ubuntu focal-backports InRelease
>
> Hit:6 http://ppa.launchpad.net/gnuradio/gnuradio-master/ubuntu focal=20
> InRelease
>
> Hit:7 http://ppa.launchpad.net/gnuradio/gnuradio-releases/ubuntu focal=20
> InRelease
>
> Hit:8 http://security.ubuntu.com/ubuntu focal-security InRelease
>
> Reading package lists... Done
>
> *thangaraj@KOM1292:~$ sudo apt-get install libuhd-dev libuhd003=20
> uhd-host (failed)***
>
> Reading package lists... Done
>
> Building dependency tree
>
> Reading state information... Done
>
> Package libuhd003 is not available, but is referred to by another packa=
ge.
>
> This may mean that the package is missing, has been obsoleted, or
>
> is only available from another source
>
> However the following packages replace it:
>
> libuhd3.15.0
>
> E: Package 'libuhd003' has no installation candidate
>
> *thangaraj@KOM1292:~$ sudo apt-get install libuhd-dev libuhd003.15.0=20
> uhd-host (failed)***
>
> Reading package lists... Done
>
> Building dependency tree
>
> Reading state information... Done
>
> E: Unable to locate package libuhd003.15.0
>
> E: Couldn't find any package by glob 'libuhd003.15.0'
>
> E: Couldn't find any package by regex 'libuhd003.15.0'
>
> *thangaraj@KOM1292:~$ sudo apt-get install libuhd-dev libuhd003.14.0=20
> uhd-host (failed)***
>
> Reading package lists... Done
>
> Building dependency tree
>
> Reading state information... Done
>
> E: Unable to locate package libuhd003.14.0
>
> E: Couldn't find any package by glob 'libuhd003.14.0'
>
> E: Couldn't find any package by regex 'libuhd003.14.0'
>
> *thangaraj@KOM1292:~$ sudo apt-get install libuhd-dev uhd-host=20
> (completed)***
>
> Reading package lists... Done
>
> Building dependency tree
>
> Reading state information... Done
>
> The following additional packages will be installed:
>
> libuhd3.15.0 python-is-python2 python-tk
>
> Suggested packages:
>
> tix python-tk-dbg
>
> The following NEW packages will be installed:
>
> libuhd-dev python-is-python2 python-tk
>
> The following packages will be upgraded:
>
> libuhd3.15.0 uhd-host
>
> 2 upgraded, 3 newly installed, 0 to remove and 1 not upgraded.
>
> Need to get 11.8 MB of archives.
>
> After this operation, 13.9 MB of additional disk space will be used.
>
> Do you want to continue? [Y/n] y
>
> Get:1 http://archive.ubuntu.com/ubuntu focal/universe amd64=20
> python-is-python2 all 2.7.17-4 [2496 B]
>
> Get:2 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal/main=20
> amd64 uhd-host amd64 3.15.0.0-1-1ubuntu1~focal1 [5463 kB]
>
> Get:3 http://archive.ubuntu.com/ubuntu focal/universe amd64 python-tk=20
> amd64 2.7.18-1 [25.3 kB]
>
> Get:4 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal/main=20
> amd64 libuhd3.15.0 amd64 3.15.0.0-1-1ubuntu1~focal1 [3061 kB]
>
> Get:5 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal/main=20
> amd64 libuhd-dev amd64 3.15.0.0-1-1ubuntu1~focal1 [3230 kB]
>
> Fetched 11.8 MB in 6s (2110 kB/s)
>
> (Reading database ... 105690 files and directories currently installed.=
)
>
> Preparing to unpack .../uhd-host_3.15.0.0-1-1ubuntu1~focal1_amd64.deb .=
..
>
> Unpacking uhd-host (3.15.0.0-1-1ubuntu1~focal1) over=20
> (3.15.0.0-2build5) ...
>
> Selecting previously unselected package python-is-python2.
>
> Preparing to unpack .../python-is-python2_2.7.17-4_all.deb ...
>
> Unpacking python-is-python2 (2.7.17-4) ...
>
> Preparing to unpack=20
> .../libuhd3.15.0_3.15.0.0-1-1ubuntu1~focal1_amd64.deb ...
>
> Unpacking libuhd3.15.0:amd64 (3.15.0.0-1-1ubuntu1~focal1) over=20
> (3.15.0.0-2build5) ...
>
> Selecting previously unselected package libuhd-dev.
>
> Preparing to unpack=20
> .../libuhd-dev_3.15.0.0-1-1ubuntu1~focal1_amd64.deb ...
>
> Unpacking libuhd-dev (3.15.0.0-1-1ubuntu1~focal1) ...
>
> Selecting previously unselected package python-tk.
>
> Preparing to unpack .../python-tk_2.7.18-1_amd64.deb ...
>
> Unpacking python-tk (2.7.18-1) ...
>
> Setting up python-tk (2.7.18-1) ...
>
> Setting up python-is-python2 (2.7.17-4) ...
>
> Setting up libuhd3.15.0:amd64 (3.15.0.0-1-1ubuntu1~focal1) ...
>
> Setting up libuhd-dev (3.15.0.0-1-1ubuntu1~focal1) ...
>
> Setting up uhd-host (3.15.0.0-1-1ubuntu1~focal1) ...
>
> sysctl: cannot stat /proc/sys/net/core/rmem_max: No such file or direct=
ory
>
> sysctl: cannot stat /proc/sys/net/core/wmem_max: No such file or direct=
ory
>
> Warning: Could not update sysctl settings for network devices.
>
> Processing triggers for man-db (2.9.1-1) ...
>
> Processing triggers for libc-bin (2.31-0ubuntu9.2) ...
>
> Looking forward to your kind response.
>
> Regards,
>
> Thangaraj
>
> *Von:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Gesendet:* Mittwoch, 22. September 2021 15:04
> *An:* Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>;=20
> usrp-users@lists.ettus.com
> *Betreff:* Re: AW: AW: AW: [USRP-users] Re: Help_Failed to build UHD=20
> in Ubuntu 20.04
>
> On 2021-09-22 7:47 a.m., Thangaraj Mukara Dhakshinamoorthy wrote:
>
>     Hello Marcus,
>
>     As you mentioned, I have followed the step-by-step installation
>     guide, while building and installing UHD from source code, it
>     throws an error which I mentioned previously!
>
>     thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake ..
>
>     --
>
>     -- Configuring the python interpreter...
>
>     -- Python interpreter: /usr/bin/python3
>
>     -- Override with: -DPYTHON_EXECUTABLE=3D<path-to-python>
>
>     -- Python runtime interpreter: /usr/bin/python3
>
>     -- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D<path-to-python>
>
>     -- Working off of feature or development branch. Updating version
>     number.
>
>     -- Using UHD Images Directory: /usr/local/share/uhd/images
>
>     -- Build type not specified: defaulting to release.
>
>     --
>
>     -- Configuring Boost C++ Libraries...
>
>     -- Looking for optional Boost components...
>
>     -- Found Boost:
>     /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake
>     (found suitable version "1.71.0", minimum required is "1.53")
>     found components: python
>
>     -- Looking for required Boost components...
>
>     -- Found Boost:
>     /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cmake
>     (found suitable version "1.71.0", minimum required is "1.53")
>     found components: chrono date_time filesystem program_options
>     regex system unit_test_framework serialization thread
>
>     -- Boost include directories: /usr/include
>
>     -- Boost library directories: /usr/lib/x86_64-linux-gnu
>
>     -- Boost libraries:
>     Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_opt=
ions;Boost::regex;Boost::system;Boost::unit_test_framework;Boost::seriali=
zation;Boost::thread
>
>     CMake Warning (dev) at cmake/Modules/UHDLog.cmake:68 (set):
>
>     implicitly converting 'FILE' to 'STRING' type.
>
>     Call Stack (most recent call first):
>
>     CMakeLists.txt:365 (include)
>
>     This warning is for project developers.=A0 Use -Wno-dev to suppress=
 it.
>
>     --
>
>     -- Python checking for Python version 2.7 or greater
>
>     -- Python checking for Python version 2.7 or greater - "assert
>     platform.python_version() >=3D '2.7' and platform.python_version() =
<
>     '3.0'" failed
>
>     --
>
>     -- Python checking for Mako templates 0.4.2 or greater
>
>     -- Python checking for Mako templates 0.4.2 or greater - found
>
>     --
>
>     -- Python checking for requests 2.0 or greater
>
>     -- Python checking for requests 2.0 or greater - found
>
>     --
>
>     -- Python checking for numpy 1.7 or greater
>
>     -- Python checking for numpy 1.7 or greater - found
>
>     --
>
>     -- Configuring LibUHD support...
>
>     -- Dependency Boost_FOUND =3D TRUE
>
>     -- Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D FALSE
>
>     -- Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE
>
>     CMake Error at cmake/Modules/UHDComponent.cmake:59 (message):
>
>     Dependencies for required component LibUHD not met.
>
>     Call Stack (most recent call first):
>
>     CMakeLists.txt:430 (LIBUHD_REGISTER_COMPONENT)
>
>     -- Configuring incomplete, errors occurred!
>
>     See also
>     "/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeOutput.log=
".
>
>     See also
>     "/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeError.log"=
.
>
>     *_Also, tried executing below commands but got the same above
>     output:_*
>
>     thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake
>     -DPYTHON_EXECUTABLE=3D/usr/bin/python3 ..
>
>     thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake
>     -DPYTHON_EXECUTABLE=3D/usr/bin/python3
>     -DRUNTIME_PYTHON_EXECUTABLE=3D/usr/bin/python3 ..
>
>     thangaraj@KOM1292:~/workarea/uhd/host/build$ /usr/bin/cmake ..
>
>     thangaraj@KOM1292:~/workarea/uhd/host/build$ PATH=3D/usr/bin:$PATH
>     cmake ..
>
>     thangaraj@KOM1292:~/workarea/uhd/host/build$ cmake
>     =96DCMAKE_FIND_ROOT_PATH=3D/usr ..
>
>     PFA CMake logfiles.
>
>     I am stumbled with this UHD & GNU installation issue for almost a
>     week, it would great if anyone can help me out, I would appreciate
>     it and be very thankful!
>
>     PS: I am using WSL-Windows Subsytem for Linux (running Ubuntu
>     20.04.3 LTS)!
>
>     Regards,
>
>     Thangaraj
>
> This looks like you don't have a Python2.7 install on your system--or=20
> it cannot be found.=A0 During the build.=A0 What version of UHD are you=
=20
> trying to build?
>
> Also, in Ubuntu 20.04, if you're just using Gnu Radio and not doing=20
> RFNOC work, you can just use the pre-packaged versions of UHD and Gnu=20
> Radio, and use
> =A0 apt-install to install them:
>
> sudo apt install gnuradio
> sudp apt install uhd libuhd
>
>
>


--------------55B0B6064091BC9C9B61F19C
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-22 9:35 a.m., Thangaraj
      Mukara Dhakshinamoorthy wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:046adcb243384423a06209c356426225@komro.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:Consolas;
	mso-fareast-language:EN-US;}span.E-MailFormatvorlage20
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage21
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage22
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage23
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage24
	{mso-style-type:personal-reply;
	font-family:"Verdana",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:DE">Hello Marcus,<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:DE">Unfortunately,
            the pre-packaged versions of UHD and GNU-Radio are also
            problematic!<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:DE"><o:p>=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:DE">This looks like
            you don't have a Python2.7 install on your system--or it
            cannot be found.=A0 During the build.=A0 What version of UHD =
are
            you trying to build?<br>
            &gt; <span style=3D"background:yellow;mso-highlight:yellow">U=
HD
              v3.14.0.0</span> (as mentioned in the installation
            guidelines)<br>
            Also, in Ubuntu 20.04, if you're just using Gnu Radio and
            not doing RFNOC work, you can just use the pre-packaged
            versions of UHD and Gnu Radio, and use<br>
            =A0 apt-install to install them:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:DE"><o:p>=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><b><u><span
                style=3D"font-size:12.0pt;font-family:&quot;Times New
                Roman&quot;,serif;mso-fareast-language:DE">GNU
                Installation:<o:p></o:p></span></u></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:DE"><br>
          </span><b><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow">thangaraj@KOM1292:~$
              sudo apt install gnuradio</span></b><b><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif"><o:p></o:p></span></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            package lists... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Building
            dependency tree<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            state information... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">The
            following additional packages will be installed:<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            gnuradio-dev<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Suggested
            packages:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            gr-fosphor gr-osmosdr<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Recommended
            packages:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            python3-qwt-qt5<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">The
            following NEW packages will be installed:<o:p></o:p></span></=
p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            gnuradio gnuradio-dev<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">0
            upgraded, 2 newly installed, 0 to remove and 1 not upgraded.<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Need
            to get 6374 kB of archives.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">After
            this operation, 38.8 MB of additional disk space will be
            used.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow">Do
              you want to continue? [Y/n] y</span></b><b><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif"><o:p></o:p></span></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Get:1
            <a class=3D"moz-txt-link-freetext" href=3D"http://ppa.launchp=
ad.net/gnuradio/gnuradio-master/ubuntu">http://ppa.launchpad.net/gnuradio=
/gnuradio-master/ubuntu</a>
            focal/main amd64 gnuradio amd64
            3.10.0.git~master~14443~focal-1 [6052 kB]<o:p></o:p></span></=
p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Get:2
            <a class=3D"moz-txt-link-freetext" href=3D"http://ppa.launchp=
ad.net/gnuradio/gnuradio-master/ubuntu">http://ppa.launchpad.net/gnuradio=
/gnuradio-master/ubuntu</a>
            focal/main amd64 gnuradio-dev amd64
            3.10.0.git~master~14443~focal-1 [322 kB]<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Fetched
            6374 kB in 3s (2292 kB/s)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Selecting
            previously unselected package gnuradio.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">(Reading
            database ... 103340 files and directories currently
            installed.)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Preparing
            to unpack
            .../gnuradio_3.10.0.git~master~14443~focal-1_amd64.deb ...<o:=
p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Unpacking
            gnuradio (3.10.0.git~master~14443~focal-1) ...<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Selecting
            previously unselected package gnuradio-dev:amd64.<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Preparing
            to unpack
            .../gnuradio-dev_3.10.0.git~master~14443~focal-1_amd64.deb
            ...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Unpacking
            gnuradio-dev:amd64 (3.10.0.git~master~14443~focal-1) ...<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Setting
            up gnuradio (3.10.0.git~master~14443~focal-1) ...<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Setting
            up gnuradio-dev:amd64 (3.10.0.git~master~14443~focal-1) ...<o=
:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Processing
            triggers for shared-mime-info (1.15-1) ...<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Processing
            triggers for mime-support (3.64ubuntu1) ...<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Processing
            triggers for hicolor-icon-theme (0.17-2) ...<o:p></o:p></span=
></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Processing
            triggers for libc-bin (2.31-0ubuntu9.2) ...<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Processing
            triggers for man-db (2.9.1-1) ...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:red;mso-highlight:red">thangaraj@KOM1292:~$
              gnuradio-companion (failed to start)</span></b><b><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif"><o:p></o:p></span></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Unable
            to init server: Could not connect: Connection refused<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Unable
            to init server: Could not connect: Connection refused<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Unable
            to init server: Could not connect: Connection refused<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">/usr/lib/python3/dist-packages/apport/report.py:13:
            DeprecationWarning: the imp module is deprecated in favour
            of importlib; see the module's documentation for alternative
            uses<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            import fnmatch, glob, traceback, errno, sys, atexit, locale,
            imp, stat<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Traceback
            (most recent call last):<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            File "/usr/bin/gnuradio-companion", line 92, in
            &lt;module&gt;<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0=A0=A0
            run_main()<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            File "/usr/bin/gnuradio-companion", line 85, in run_main<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0=A0=A0
            exit(main())<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            File "/usr/lib/python3/dist-packages/gnuradio/grc/main.py",
            line 70, in main<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0=A0=A0
            from .gui.Platform import Platform<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            File
            "/usr/lib/python3/dist-packages/gnuradio/grc/gui/Platform.py"=
,
            line 14, in &lt;module&gt;<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0=A0=A0
            from . import canvas<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            File
            "/usr/lib/python3/dist-packages/gnuradio/grc/gui/canvas/__ini=
t__.py",
            line 10, in &lt;module&gt;<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0=A0=A0
            from .param import Param<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            File
            "/usr/lib/python3/dist-packages/gnuradio/grc/gui/canvas/param=
.py",
            line 11, in &lt;module&gt;<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0=A0=A0
            from .. import ParamWidgets, Utils, Constants, Actions<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            File
            "/usr/lib/python3/dist-packages/gnuradio/grc/gui/ParamWidgets=
.py",
            line 58, in &lt;module&gt;<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0=A0=A0
            add_style_provider()<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            File
            "/usr/lib/python3/dist-packages/gnuradio/grc/gui/ParamWidgets=
.py",
            line 53, in add_style_provider<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0=A0=A0
            Gtk.StyleContext.add_provider_for_screen(<o:p></o:p></span></=
p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">TypeError:
            Argument 0 does not allow None as a value</span></p>
      </div>
    </blockquote>
    This looks like a problem with your Ubuntu 20.04 system image--it's
    missing some configuration or something.=A0 Not sure what.<br>
    =A0 I'm not a Windows guy, nor do I know anything about WSL.=A0 Furth=
er
    questions about *GNURADIO* should really be directed<br>
    =A0 to the discuss-gnuradio mailing list, rather than here.<br>
    <br>
    IF you mix PPA packages and packages from the distribution, you'll
    be in a world of hurt.=A0 Don't do that.<br>
    <br>
    It turns out that the "gnuradio" package alone is enough to bring in
    compatible versions of UHD and friends, so you shouldn't need<br>
    =A0to install anything other than that.=A0 Until a couple of weeks ag=
o,
    I was running Ubuntu 20.04 on a real physical system, using a
    variety<br>
    =A0of SDR hardware including UHD (USRP) hardware without issue.=A0 I
    upgraded to Ubuntu 21.04 to get past a bug in Gnu Radio 3.8.1.0.<br>
    =A0I know this stuff works, but I have no experience with WSL.<br>
    <br>
    But like I had previously mentioned in this thread, you'll need to
    dedicate a network port to your N310, and I have no idea how that<br>
    =A0 works in the WSL environment, and perhaps someone with more
    familiarity with WSL can comment.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:046adcb243384423a06209c356426225@komro.net">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><b><u><span
                style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;=
,sans-serif">UHD
                Installation:<o:p></o:p></span></u></b></p>
        <p class=3D"MsoNormal"><b><u><span
                style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;=
,sans-serif"><o:p><span
                    style=3D"text-decoration:none">=A0</span></o:p></span=
></u></b></p>
        <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow">thangaraj@KOM1292:~$
              sudo apt install uhd libuhd</span></b><b><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif"><o:p></o:p></span></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            package lists... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Building
            dependency tree<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            state information... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">E:
            Unable to locate package uhd<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">E:
            Unable to locate package libuhd<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow">thangaraj@KOM1292:~$
              sudo apt-get install uhd libuhd</span></b><b><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif"><o:p></o:p></span></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            package lists... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Building
            dependency tree<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            state information... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">E:
            Unable to locate package uhd<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">E:
            Unable to locate package libuhd<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow">thangaraj@KOM1292:~$
              sudo add-apt-repository ppa:ettusresearch/uhd</span></b><b>=
<span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif"><o:=
p></o:p></span></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">More
            info:
            <a class=3D"moz-txt-link-freetext" href=3D"https://launchpad.=
net/~ettusresearch/+archive/ubuntu/uhd">https://launchpad.net/~ettusresea=
rch/+archive/ubuntu/uhd</a><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Press
            [ENTER] to continue or Ctrl-c to cancel adding it.<o:p></o:p>=
</span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Get:1
            <a class=3D"moz-txt-link-freetext" href=3D"http://ppa.launchp=
ad.net/ettusresearch/uhd/ubuntu">http://ppa.launchpad.net/ettusresearch/u=
hd/ubuntu</a> focal
            InRelease [18.1 kB]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hit:2
            <a class=3D"moz-txt-link-freetext" href=3D"http://ppa.launchp=
ad.net/gnuradio/gnuradio-master/ubuntu">http://ppa.launchpad.net/gnuradio=
/gnuradio-master/ubuntu</a>
            focal InRelease<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hit:3
            <a class=3D"moz-txt-link-freetext" href=3D"https://download.d=
ocker.com/linux/ubuntu">https://download.docker.com/linux/ubuntu</a> foca=
l InRelease<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hit:4
            <a class=3D"moz-txt-link-freetext" href=3D"http://ppa.launchp=
ad.net/gnuradio/gnuradio-releases/ubuntu">http://ppa.launchpad.net/gnurad=
io/gnuradio-releases/ubuntu</a>
            focal InRelease<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hit:5
            <a class=3D"moz-txt-link-freetext" href=3D"http://archive.ubu=
ntu.com/ubuntu">http://archive.ubuntu.com/ubuntu</a> focal InRelease<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Get:6
            <a class=3D"moz-txt-link-freetext" href=3D"http://archive.ubu=
ntu.com/ubuntu">http://archive.ubuntu.com/ubuntu</a> focal-updates InRele=
ase
            [114 kB]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Get:7
            <a class=3D"moz-txt-link-freetext" href=3D"http://security.ub=
untu.com/ubuntu">http://security.ubuntu.com/ubuntu</a> focal-security InR=
elease
            [114 kB]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Get:8
            <a class=3D"moz-txt-link-freetext" href=3D"http://archive.ubu=
ntu.com/ubuntu">http://archive.ubuntu.com/ubuntu</a> focal-backports InRe=
lease
            [101 kB]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Get:9
            <a class=3D"moz-txt-link-freetext" href=3D"http://ppa.launchp=
ad.net/ettusresearch/uhd/ubuntu">http://ppa.launchpad.net/ettusresearch/u=
hd/ubuntu</a> focal/main
            amd64 Packages [1048 B]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Get:10
            <a class=3D"moz-txt-link-freetext" href=3D"http://ppa.launchp=
ad.net/ettusresearch/uhd/ubuntu">http://ppa.launchpad.net/ettusresearch/u=
hd/ubuntu</a> focal/main
            Translation-en [600 B]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Fetched
            348 kB in 5s (68.1 kB/s)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            package lists... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow">thangaraj@KOM1292:~$
              sudo apt-get update</span></b><b><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif"><o:p></o:p></span></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hit:1
            <a class=3D"moz-txt-link-freetext" href=3D"http://archive.ubu=
ntu.com/ubuntu">http://archive.ubuntu.com/ubuntu</a> focal InRelease<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hit:2
            <a class=3D"moz-txt-link-freetext" href=3D"http://archive.ubu=
ntu.com/ubuntu">http://archive.ubuntu.com/ubuntu</a> focal-updates InRele=
ase<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hit:3
            <a class=3D"moz-txt-link-freetext" href=3D"http://ppa.launchp=
ad.net/ettusresearch/uhd/ubuntu">http://ppa.launchpad.net/ettusresearch/u=
hd/ubuntu</a> focal
            InRelease<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hit:4
            <a class=3D"moz-txt-link-freetext" href=3D"https://download.d=
ocker.com/linux/ubuntu">https://download.docker.com/linux/ubuntu</a> foca=
l InRelease<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hit:5
            <a class=3D"moz-txt-link-freetext" href=3D"http://archive.ubu=
ntu.com/ubuntu">http://archive.ubuntu.com/ubuntu</a> focal-backports InRe=
lease<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hit:6
            <a class=3D"moz-txt-link-freetext" href=3D"http://ppa.launchp=
ad.net/gnuradio/gnuradio-master/ubuntu">http://ppa.launchpad.net/gnuradio=
/gnuradio-master/ubuntu</a>
            focal InRelease<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hit:7
            <a class=3D"moz-txt-link-freetext" href=3D"http://ppa.launchp=
ad.net/gnuradio/gnuradio-releases/ubuntu">http://ppa.launchpad.net/gnurad=
io/gnuradio-releases/ubuntu</a>
            focal InRelease<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hit:8
            <a class=3D"moz-txt-link-freetext" href=3D"http://security.ub=
untu.com/ubuntu">http://security.ubuntu.com/ubuntu</a> focal-security InR=
elease<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            package lists... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:red;mso-highlight:red">thangaraj@KOM1292:~$
              sudo apt-get install libuhd-dev libuhd003 uhd-host
              (failed)</span></b><b><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif"><o:p></o:p></span></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            package lists... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Building
            dependency tree<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            state information... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Package
            libuhd003 is not available, but is referred to by another
            package.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">This
            may mean that the package is missing, has been obsoleted, or<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">is
            only available from another source<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">However
            the following packages replace it:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            libuhd3.15.0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">E:
            Package 'libuhd003' has no installation candidate<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:red;mso-highlight:red">thangaraj@KOM1292:~$
              sudo apt-get install libuhd-dev libuhd003.15.0 uhd-host
              (failed)</span></b><b><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif"><o:p></o:p></span></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            package lists... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Building
            dependency tree<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            state information... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">E:
            Unable to locate package libuhd003.15.0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">E:
            Couldn't find any package by glob 'libuhd003.15.0'<o:p></o:p>=
</span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">E:
            Couldn't find any package by regex 'libuhd003.15.0'<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:red;mso-highlight:red">thangaraj@KOM1292:~$
              sudo apt-get install libuhd-dev libuhd003.14.0 uhd-host
              (failed)</span></b><b><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif"><o:p></o:p></span></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            package lists... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Building
            dependency tree<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            state information... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">E:
            Unable to locate package libuhd003.14.0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">E:
            Couldn't find any package by glob 'libuhd003.14.0'<o:p></o:p>=
</span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">E:
            Couldn't find any package by regex 'libuhd003.14.0'<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow">thangaraj@KOM1292:~$
              sudo apt-get install libuhd-dev uhd-host (completed)</span>=
</b><b><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif"><o:=
p></o:p></span></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            package lists... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Building
            dependency tree<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Reading
            state information... Done<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">The
            following additional packages will be installed:<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            libuhd3.15.0 python-is-python2 python-tk<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Suggested
            packages:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            tix python-tk-dbg<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">The
            following NEW packages will be installed:<o:p></o:p></span></=
p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            libuhd-dev python-is-python2 python-tk<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">The
            following packages will be upgraded:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">=A0
            libuhd3.15.0 uhd-host<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">2
            upgraded, 3 newly installed, 0 to remove and 1 not upgraded.<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Need
            to get 11.8 MB of archives.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">After
            this operation, 13.9 MB of additional disk space will be
            used.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Do
            you want to continue? [Y/n] y<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Get:1
            <a class=3D"moz-txt-link-freetext" href=3D"http://archive.ubu=
ntu.com/ubuntu">http://archive.ubuntu.com/ubuntu</a> focal/universe amd64
            python-is-python2 all 2.7.17-4 [2496 B]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Get:2
            <a class=3D"moz-txt-link-freetext" href=3D"http://ppa.launchp=
ad.net/ettusresearch/uhd/ubuntu">http://ppa.launchpad.net/ettusresearch/u=
hd/ubuntu</a> focal/main
            amd64 uhd-host amd64 3.15.0.0-1-1ubuntu1~focal1 [5463 kB]<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Get:3
            <a class=3D"moz-txt-link-freetext" href=3D"http://archive.ubu=
ntu.com/ubuntu">http://archive.ubuntu.com/ubuntu</a> focal/universe amd64
            python-tk amd64 2.7.18-1 [25.3 kB]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Get:4
            <a class=3D"moz-txt-link-freetext" href=3D"http://ppa.launchp=
ad.net/ettusresearch/uhd/ubuntu">http://ppa.launchpad.net/ettusresearch/u=
hd/ubuntu</a> focal/main
            amd64 libuhd3.15.0 amd64 3.15.0.0-1-1ubuntu1~focal1 [3061
            kB]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Get:5
            <a class=3D"moz-txt-link-freetext" href=3D"http://ppa.launchp=
ad.net/ettusresearch/uhd/ubuntu">http://ppa.launchpad.net/ettusresearch/u=
hd/ubuntu</a> focal/main
            amd64 libuhd-dev amd64 3.15.0.0-1-1ubuntu1~focal1 [3230 kB]<o=
:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Fetched
            11.8 MB in 6s (2110 kB/s)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">(Reading
            database ... 105690 files and directories currently
            installed.)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Preparing
            to unpack .../uhd-host_3.15.0.0-1-1ubuntu1~focal1_amd64.deb
            ...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Unpacking
            uhd-host (3.15.0.0-1-1ubuntu1~focal1) over
            (3.15.0.0-2build5) ...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Selecting
            previously unselected package python-is-python2.<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Preparing
            to unpack .../python-is-python2_2.7.17-4_all.deb ...<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Unpacking
            python-is-python2 (2.7.17-4) ...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Preparing
            to unpack
            .../libuhd3.15.0_3.15.0.0-1-1ubuntu1~focal1_amd64.deb ...<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Unpacking
            libuhd3.15.0:amd64 (3.15.0.0-1-1ubuntu1~focal1) over
            (3.15.0.0-2build5) ...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Selecting
            previously unselected package libuhd-dev.<o:p></o:p></span></=
p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Preparing
            to unpack
            .../libuhd-dev_3.15.0.0-1-1ubuntu1~focal1_amd64.deb ...<o:p><=
/o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Unpacking
            libuhd-dev (3.15.0.0-1-1ubuntu1~focal1) ...<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Selecting
            previously unselected package python-tk.<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Preparing
            to unpack .../python-tk_2.7.18-1_amd64.deb ...<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Unpacking
            python-tk (2.7.18-1) ...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Setting
            up python-tk (2.7.18-1) ...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Setting
            up python-is-python2 (2.7.17-4) ...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Setting
            up libuhd3.15.0:amd64 (3.15.0.0-1-1ubuntu1~focal1) ...<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Setting
            up libuhd-dev (3.15.0.0-1-1ubuntu1~focal1) ...<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Setting
            up uhd-host (3.15.0.0-1-1ubuntu1~focal1) ...<o:p></o:p></span=
></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">sysctl:
            cannot stat /proc/sys/net/core/rmem_max: No such file or
            directory<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">sysctl:
            cannot stat /proc/sys/net/core/wmem_max: No such file or
            directory<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Warning:
            Could not update sysctl settings for network devices.<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Processing
            triggers for man-db (2.9.1-1) ...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Processing
            triggers for libc-bin (2.31-0ubuntu9.2) ...<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Looking
            forward to your kind response.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Regards,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Thangaraj<o:p></o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class=3D"MsoNormal"><b><span
                  style=3D"mso-fareast-language:DE">Von:</span></b><span
                style=3D"mso-fareast-language:DE"> Marcus D. Leech
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvo=
nbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Gesendet:</b> Mittwoch, 22. September 2021 15:04<br>
                <b>An:</b> Thangaraj Mukara Dhakshinamoorthy
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:thangar=
aj@komro.net">&lt;thangaraj@komro.net&gt;</a>; <a class=3D"moz-txt-link-a=
bbreviated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
                <b>Betreff:</b> Re: AW: AW: AW: [USRP-users] Re:
                Help_Failed to build UHD in Ubuntu 20.04<o:p></o:p></span=
></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 2021-09-22 7:47 a.m., Thangaraj Mukar=
a
            Dhakshinamoorthy wrote:<span
              style=3D"font-size:12.0pt;mso-fareast-language:DE"><o:p></o=
:p></span></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">Hello
              Marcus,</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">As
              you mentioned, I have followed the step-by-step
              installation guide, while building and installing UHD from
              source code, it throws an error which I mentioned
              previously!</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow">thangaraj@KOM1292:~/workarea/uhd/host=
/build$
              cmake ..</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Configuring the python interpreter...</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Python interpreter: /usr/bin/python3</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Override with: -DPYTHON_EXECUTABLE=3D&lt;path-to-python&gt;=
</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Python runtime interpreter: /usr/bin/python3</span><o:p></o=
:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Override with:
              -DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;</span>=
<o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Working off of feature or development branch. Updating
              version number.</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Using UHD Images Directory: /usr/local/share/uhd/images</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Build type not specified: defaulting to release.</span><o:p=
></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Configuring Boost C++ Libraries...</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Looking for optional Boost components...</span><o:p></o:p><=
/p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Found Boost:
              /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cm=
ake
              (found suitable version "1.71.0", minimum required is
              "1.53") found components: python</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Looking for required Boost components...</span><o:p></o:p><=
/p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Found Boost:
              /usr/lib/x86_64-linux-gnu/cmake/Boost-1.71.0/BoostConfig.cm=
ake
              (found suitable version "1.71.0", minimum required is
              "1.53") found components: chrono date_time filesystem
              program_options regex system unit_test_framework
              serialization thread</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Boost include directories: /usr/include</span><o:p></o:p></=
p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Boost library directories: /usr/lib/x86_64-linux-gnu</span>=
<o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Boost libraries:
Boost::chrono;Boost::date_time;Boost::filesystem;Boost::program_options;B=
oost::regex;Boost::system;Boost::unit_test_framework;Boost::serialization=
;Boost::thread</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">CMake
              Warning (dev) at cmake/Modules/UHDLog.cmake:68 (set):</span=
><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0
              implicitly converting 'FILE' to 'STRING' type.</span><o:p><=
/o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">Call
              Stack (most recent call first):</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0
              CMakeLists.txt:365 (include)</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">This
              warning is for project developers.=A0 Use -Wno-dev to
              suppress it.</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Python checking for Python version 2.7 or greater</span><o:=
p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Python checking for Python version 2.7 or greater -
              "assert platform.python_version() &gt;=3D '2.7' and
              platform.python_version() &lt; '3.0'" failed</span><o:p></o=
:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Python checking for Mako templates 0.4.2 or greater</span><=
o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Python checking for Mako templates 0.4.2 or greater -
              found</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Python checking for requests 2.0 or greater</span><o:p></o:=
p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Python checking for requests 2.0 or greater - found</span><=
o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Python checking for numpy 1.7 or greater</span><o:p></o:p><=
/p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Python checking for numpy 1.7 or greater - found</span><o:p=
></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Configuring LibUHD support...</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--=A0=A0
              Dependency Boost_FOUND =3D TRUE</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--=A0=A0
              Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D FALSE</span><o:=
p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--=A0=A0
              Dependency HAVE_PYTHON_MODULE_MAKO =3D TRUE</span><o:p></o:=
p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">CMake
              Error at cmake/Modules/UHDComponent.cmake:59 (message):</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0
              Dependencies for required component LibUHD not met.</span><=
o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">Call
              Stack (most recent call first):</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0
              CMakeLists.txt:430 (LIBUHD_REGISTER_COMPONENT)</span><o:p><=
/o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">--
              Configuring incomplete, errors occurred!</span><o:p></o:p><=
/p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">See
              also
              "/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeOu=
tput.log".</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">See
              also
              "/home/thangaraj/workarea/uhd/host/build/CMakeFiles/CMakeEr=
ror.log".</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><b><u><span
                  style=3D"font-size:10.0pt;font-family:&quot;Verdana&quo=
t;,sans-serif">Also,
                  tried executing below commands but got the same above
                  output:</span></u></b><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">thangaraj@KOM1292:~/workarea/uhd/host/build$
              cmake -DPYTHON_EXECUTABLE=3D/usr/bin/python3 ..</span><o:p>=
</o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">thangaraj@KOM1292:~/workarea/uhd/host/build$
              cmake -DPYTHON_EXECUTABLE=3D/usr/bin/python3
              -DRUNTIME_PYTHON_EXECUTABLE=3D/usr/bin/python3 ..</span><o:=
p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">thangaraj@KOM1292:~/workarea/uhd/host/build$
              /usr/bin/cmake ..</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">thangaraj@KOM1292:~/workarea/uhd/host/build$
              PATH=3D/usr/bin:$PATH cmake ..</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">thangaraj@KOM1292:~/workarea/uhd/host/build$
              cmake =96DCMAKE_FIND_ROOT_PATH=3D/usr ..</span><o:p></o:p><=
/p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">PFA
              CMake logfiles.</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">I
              am stumbled with this UHD &amp; GNU installation issue for
              almost a week, it would great if anyone can help me out, I
              would appreciate it and be very thankful!</span><o:p></o:p>=
</p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">PS:
              I am using WSL-Windows Subsytem for Linux (running Ubuntu
              20.04.3 LTS)!</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">Regards,</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">Thangaraj</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;font-family:&quot;Times New
              Roman&quot;,serif;mso-fareast-language:DE"><o:p>=A0</o:p></=
span></p>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:DE">This looks like
            you don't have a Python2.7 install on your system--or it
            cannot be found.=A0 During the build.=A0 What version of UHD =
are
            you trying to build?<br>
            <br>
            Also, in Ubuntu 20.04, if you're just using Gnu Radio and
            not doing RFNOC work, you can just use the pre-packaged
            versions of UHD and Gnu Radio, and use<br>
            =A0 apt-install to install them:<br>
            <br>
            sudo apt install gnuradio<br>
            sudp apt install uhd libuhd <br>
            <br>
            <br>
            <br>
            <o:p></o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------55B0B6064091BC9C9B61F19C--

--===============7891830095368101832==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7891830095368101832==--
