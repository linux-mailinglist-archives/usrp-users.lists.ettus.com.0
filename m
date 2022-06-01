Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 203B153AB11
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 18:32:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 178F3383BAF
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 12:32:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654101159; bh=8s6UxT2Qmk6VHfjI4xyxuy6rT36DNWsvtAmOmGpPJTM=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=T7/Q90upSf73f71ijonUHJAs6A2Gmi3xH+PgA6Ilc7RrmfMIqYP5e8U390obRS+H+
	 Wqk1T4P0vBlghJE90lS1NcDwmIVFJX8vyabbtwfl4t/F3+e217y4XaiTi/pZcYH2R9
	 8+IARpH53lAjcCUuseCmViOtLsvrHXD92+BgRkpazahJq5ZrRDG1x9H49lvE4pwAxz
	 Ix7N9ddHzSoX+sbFWPS2pCIn1Qwhkmp7EaodMMEfY9Kd/vd5mZOn9QvrSVtPMHS2EW
	 LstAv4X/MBy0k8Q8DyTJsYExa/2HvpLAhDD3EwzdWImKN7hgUxCb2gG9jOeqQOuFYk
	 LJ3L8CDx0xvKw==
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D64F38462B
	for <usrp-users@lists.ettus.com>; Wed,  1 Jun 2022 12:31:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=umich.edu header.i=@umich.edu header.b="JHKgutQK";
	dkim-atps=neutral
Received: by mail-pf1-f181.google.com with SMTP id b135so2427618pfb.12
        for <usrp-users@lists.ettus.com>; Wed, 01 Jun 2022 09:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umich.edu; s=google-2016-06-03;
        h=mime-version:from:date:message-id:subject:to;
        bh=LYu3pKXjaZk5FNm7qk7Y4C4xbIqpu8JqYACrtN0P8Iw=;
        b=JHKgutQKxtdLN+3qEUUmf8P2W9YiIfKOyJV1FEKl4i5E2bpIdyH76oc83vAYMVAAKC
         4Gx6w9jjKi2ZvlmPh0W48sZ2hTwpKyI8IlM5b6jm5R0EHyOWrraaEtBVWNWvcNxmOPfx
         lKNXVu92YsFAHK4pBxajGX/xCYLXTf6ElMpiuO2ktUDBR2W+y+sT1U9RFY4zRDcLMQbU
         Gzjf9oAhIorg6g9sSnSTm1urPTR44pP18zNQ1mOyxz8cnmNWxaxQO5r2EWaJNlsy2Y6T
         t+ZG/iT9Eo7oxE7LmFQ3PpaOWfJM8qRfiqeDv2LZredzq2cmTPtzzlmRdvkOOoCTrgid
         4q+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=LYu3pKXjaZk5FNm7qk7Y4C4xbIqpu8JqYACrtN0P8Iw=;
        b=oQF8J7vA1KYxNQMlP8L8qggS3l5EVmX+e8X/ykbaNnX6tfMd/iBEJSAyp7sTko7aG8
         PDFJ+QTgITFLS2kiPr/3DJMRdmKbhL5L41OwscdWkdboxjJXieWLaVbQn8vZ4+DI37UV
         ycJNKiju0o155jLlCyM/yaG7WBxuODucr9zk03fHrBShp0fc6AHNbfQyrsq2yfNvyZEy
         n1XMRJCoKgR4asoAy+MkMk5uruEcciNIbhNZp4miZskb8r9cUi9UJBC/UCeZFZMGHM3H
         zAvgDuNceMoHupVNDSPD6sMvO/IRfiYON5wjM+/Eyfp1Y23oDq5vkAYhkn1Q+RhLNSAH
         fgVg==
X-Gm-Message-State: AOAM5320eLkqr24S/pmMa4U+fc3qO6qX4Arq3pNncFhYWTi89tX/iEBZ
	vjBXqCNiQLUbv+gNiD3UxQHH0C5Zel3asibKuj05Pm5gQPoaMA==
X-Google-Smtp-Source: ABdhPJwKjv9yeDkxd63fNKY+aOt/g5HssWTW2gUo3VNAg0UBnua9gGFEtQ59k8AqiQ5crU67zq+mkGwqVWTSDfbz960=
X-Received: by 2002:aa7:814a:0:b0:51b:4937:ef3a with SMTP id
 d10-20020aa7814a000000b0051b4937ef3amr16911305pfn.5.1654101080643; Wed, 01
 Jun 2022 09:31:20 -0700 (PDT)
MIME-Version: 1.0
From: Achilleas Anastasopoulos <anastas@umich.edu>
Date: Wed, 1 Jun 2022 12:31:04 -0400
Message-ID: <CAErymBhzsCT=X3u-=iYf0iqzRgEc5fDtH0v4Ap6e7-EYYrSpmQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 4PJVB6MLVUAHF3OQHDC5WH3JNEB4D4BS
X-Message-ID-Hash: 4PJVB6MLVUAHF3OQHDC5WH3JNEB4D4BS
X-MailFrom: anastas@umich.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problem updating uhd library on Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4PJVB6MLVUAHF3OQHDC5WH3JNEB4D4BS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6116332583662521133=="

--===============6116332583662521133==
Content-Type: multipart/alternative; boundary="00000000000055b0aa05e0656b1f"

--00000000000055b0aa05e0656b1f
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am working with gnuradio and usrps on an ubuntu 20.04

$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 20.04.4 LTS
Release:        20.04
Codename:       focal

I usually update my uhd libraries from ettus binaries as described here:
https://files.ettus.com/manual/page_install.html

$ sudo add-apt-repository ppa:ettusresearch/uhd
$ sudo apt-get update
$ sudo apt-get install libuhd-dev libuhd4.1.0 uhd-host

Then I usually build gnuradio from source (I am currently in v3.8).
I DO NOT install gnuradio from repositories!

Today I tried to update the uhd libraries.
First I cleaned up all previous versions:

$ sudo apt-get remove libuhd-dev libuhd4.1.0 uhd-host
$ sudo apt autoremove
$ ldconfig -p | grep uhd
        libgnuradio-uhd.so.3.8.5git (libc6,x86-64) =>
/usr/local/lib/libgnuradio-uhd.so.3.8.5git
        libgnuradio-uhd.so.3.8.4 (libc6,x86-64) =>
/usr/local/lib/libgnuradio-uhd.so.3.8.4
        libgnuradio-uhd.so.3.8.3git (libc6,x86-64) =>
/usr/local/lib/libgnuradio-uhd.so.3.8.3git
        libgnuradio-uhd.so (libc6,x86-64) =>
/usr/local/lib/libgnuradio-uhd.so

Then I tried to install the uhd libraries:

$ sudo add-apt-repository -y ppa:ettusresearch/uhd
Hit:1 http://dl.google.com/linux/chrome/deb stable InRelease
Hit:2 http://us.archive.ubuntu.com/ubuntu focal InRelease
Hit:3 http://us.archive.ubuntu.com/ubuntu focal-updates InRelease
Hit:4 http://us.archive.ubuntu.com/ubuntu focal-backports InRelease
Hit:5 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal InRelease
Get:6 http://security.ubuntu.com/ubuntu focal-security InRelease [114 kB]
Fetched 114 kB in 1s (118 kB/s)
Reading package lists... Done

$ sudo apt-get update
Hit:1 http://dl.google.com/linux/chrome/deb stable InRelease
Hit:2 http://us.archive.ubuntu.com/ubuntu focal InRelease
Hit:3 http://us.archive.ubuntu.com/ubuntu focal-updates InRelease
Hit:4 http://us.archive.ubuntu.com/ubuntu focal-backports InRelease
Hit:5 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal InRelease
Get:6 http://security.ubuntu.com/ubuntu focal-security InRelease [114 kB]
Fetched 114 kB in 1s (174 kB/s)
Reading package lists... Done

$ sudo apt-get install libuhd4.1.0
Reading package lists... Done
Building dependency tree
Reading state information... Done
Suggested packages:
  gnuradio
The following NEW packages will be installed:
  libuhd4.1.0
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 0 B/3,375 kB of archives.
After this operation, 14.6 MB of additional disk space will be used.
Selecting previously unselected package libuhd4.1.0:amd64.
(Reading database ... 269419 files and directories currently installed.)
Preparing to unpack .../libuhd4.1.0_4.1.0.4-0ubuntu1~focal1_amd64.deb ...
Unpacking libuhd4.1.0:amd64 (4.1.0.4-0ubuntu1~focal1) ...
Setting up libuhd4.1.0:amd64 (4.1.0.4-0ubuntu1~focal1) ...
Processing triggers for libc-bin (2.31-0ubuntu9.9) ...

Now I am trying to install the "uhd-host" library:

$ sudo apt-get install uhd-host
Reading package lists... Done
Building dependency tree
Reading state information... Done

*The following additional packages will be installed:  libuhd4.2.0
python3-ruamel.yaml*
Suggested packages:
  gnuradio
The following NEW packages will be installed:
  libuhd4.2.0 python3-ruamel.yaml uhd-host
0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.
Need to get 0 B/7,502 kB of archives.
After this operation, 41.0 MB of additional disk space will be used.
Do you want to continue? [Y/n]


*******I do not understand why it asks to install also the
libuhd4.2.0 library.
If I do that, then I get the following errors:

 Y
Selecting previously unselected package libuhd4.2.0:amd64.
(Reading database ... 269464 files and directories currently installed.)
Preparing to unpack .../libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64.deb ...
Unpacking libuhd4.2.0:amd64 (4.2.0.0-0ubuntu1~focal1) ...
dpkg: error processing archive
/var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64.deb
(--unpack):
 trying to overwrite '/usr/share/uhd/cal/cal_metadata.fbs', which is also
in package libuhd4.1.0:amd64 4.1.0.4-0ubuntu1~focal1
Selecting previously unselected package python3-ruamel.yaml.
Preparing to unpack .../python3-ruamel.yaml_0.15.89-3build1_amd64.deb ...
Unpacking python3-ruamel.yaml (0.15.89-3build1) ...
Selecting previously unselected package uhd-host.
Preparing to unpack .../uhd-host_4.2.0.0-0ubuntu1~focal1_amd64.deb ...
Unpacking uhd-host (4.2.0.0-0ubuntu1~focal1) ...
Errors were encountered while processing:
 /var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64.deb
E: Sub-process /usr/bin/dpkg returned an error code (1)


Alternatively if I try to remove "libuhd4.1.0" and install the latest
"libuhd4.2.0"

$ sudo apt remove libuhd4.1.0
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following packages will be REMOVED:
  libuhd4.1.0
0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
After this operation, 14.6 MB disk space will be freed.
Do you want to continue? [Y/n] Y
(Reading database ... 269464 files and directories currently installed.)
Removing libuhd4.1.0:amd64 (4.1.0.4-0ubuntu1~focal1) ...
dpkg: warning: while removing libuhd4.1.0:amd64, directory '/usr/share/uhd'
not empty so not removed
Processing triggers for libc-bin (2.31-0ubuntu9.9) ...

$ sudo apt autoremove

$ sudo apt install libuhd4.2.0
Reading package lists... Done
Building dependency tree
Reading state information... Done
Suggested packages:
  gnuradio
The following NEW packages will be installed:
  libuhd4.2.0
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 0 B/3,453 kB of archives.
After this operation, 15.0 MB of additional disk space will be used.
(Reading database ... 269419 files and directories currently installed.)
Preparing to unpack .../libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64.deb ...
Unpacking libuhd4.2.0:amd64 (4.2.0.0-0ubuntu1~focal1) ...
Setting up libuhd4.2.0:amd64 (4.2.0.0-0ubuntu1~focal1) ...
Processing triggers for libc-bin (2.31-0ubuntu9.9) ...

Now I can easily install the "uhd-host" library

$ sudo apt install uhd-host
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following additional packages will be installed:
  python3-ruamel.yaml
Suggested packages:
  gnuradio
The following NEW packages will be installed:
  python3-ruamel.yaml uhd-host
0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
Need to get 0 B/4,049 kB of archives.
After this operation, 26.0 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Selecting previously unselected package python3-ruamel.yaml.
(Reading database ... 269460 files and directories currently installed.)
Preparing to unpack .../python3-ruamel.yaml_0.15.89-3build1_amd64.deb ...
Unpacking python3-ruamel.yaml (0.15.89-3build1) ...
Selecting previously unselected package uhd-host.
Preparing to unpack .../uhd-host_4.2.0.0-0ubuntu1~focal1_amd64.deb ...
Unpacking uhd-host (4.2.0.0-0ubuntu1~focal1) ...
Setting up python3-ruamel.yaml (0.15.89-3build1) ...
Setting up uhd-host (4.2.0.0-0ubuntu1~focal1) ...
sysctl: cannot open "/etc/sysctl.d/uhd-usrp2.conf": No such file or
directory
Warning: Could not update sysctl settings for network devices.
Processing triggers for man-db (2.9.1-1) ...

I check that everything works with uhd:

$ uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
UHD_4.2.0.0-0ubuntu1~focal1
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 315C6B2
    addr: 192.168.40.2
    fpga: HG
    name:
    product: X310
    type: x300

BUT, when I try to install the "libuhd-dev" library I get the following
which
I suspect wants to install the entire gnuradio system from the repository,
which as I said in the beginning I do not want, since I am usually building
it from source.

$ sudo apt-get install libuhd-dev
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following additional packages will be installed:
  freeglut3 gnuradio gnuradio-dev libgnuradio-analog3.8.1
libgnuradio-audio3.8.1 libgnuradio-blocks3.8.1
  libgnuradio-channels3.8.1 libgnuradio-digital3.8.1 libgnuradio-dtv3.8.1
libgnuradio-fec3.8.1
  libgnuradio-fft3.8.1 libgnuradio-filter3.8.1 libgnuradio-pmt3.8.1
libgnuradio-qtgui3.8.1
  libgnuradio-runtime3.8.1 libgnuradio-trellis3.8.1 libgnuradio-uhd3.8.1
libgnuradio-video-sdl3.8.1
  libgnuradio-vocoder3.8.1 libgnuradio-wavelet3.8.1 libgnuradio-zeromq3.8.1
libjs-jquery-ui librtlsdr0
  libuhd3.15.0 libvolk2-bin libvolk2-dev libvolk2.2 python-matplotlib-data
python3-cycler python3-kiwisolver
  python3-matplotlib python3-networkx python3-opengl python3-pyqt5.qtopengl
python3-pyqtgraph rtl-sdr
Suggested packages:
  gr-fosphor gr-osmosdr libjs-jquery-ui-docs uhd-doc libvolk2-doc
python-cycler-doc dvipng ffmpeg inkscape
  ipython3 python-matplotlib-doc python3-cairocffi python3-gobject
python3-nose python3-tornado
  texlive-extra-utils texlive-latex-extra ttf-staypuft python-networkx-doc
python3-gdal python3-pygraphviz
  | python3-pydot libgle3 python-pyqtgraph-doc
Recommended packages:
  python3-qwt-qt5
The following NEW packages will be installed:
  freeglut3 gnuradio gnuradio-dev libgnuradio-analog3.8.1
libgnuradio-audio3.8.1 libgnuradio-blocks3.8.1
  libgnuradio-channels3.8.1 libgnuradio-digital3.8.1 libgnuradio-dtv3.8.1
libgnuradio-fec3.8.1
  libgnuradio-fft3.8.1 libgnuradio-filter3.8.1 libgnuradio-pmt3.8.1
libgnuradio-qtgui3.8.1
  libgnuradio-runtime3.8.1 libgnuradio-trellis3.8.1 libgnuradio-uhd3.8.1
libgnuradio-video-sdl3.8.1
  libgnuradio-vocoder3.8.1 libgnuradio-wavelet3.8.1 libgnuradio-zeromq3.8.1
libjs-jquery-ui librtlsdr0
  libuhd-dev libuhd3.15.0 libvolk2-bin libvolk2-dev libvolk2.2
python-matplotlib-data python3-cycler
  python3-kiwisolver python3-matplotlib python3-networkx python3-opengl
python3-pyqt5.qtopengl
  python3-pyqtgraph rtl-sdr
0 upgraded, 37 newly installed, 0 to remove and 0 not upgraded.
Need to get 138 MB of archives.
After this operation, 493 MB of additional disk space will be used.
Do you want to continue? [Y/n]


Can anyone help with this?
I want to just update my uhd to the latest version from ETTUS repositories
and then build gnuradio from source as I used to do.

thanks in advance,
Achilleas

--00000000000055b0aa05e0656b1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I am working with gnuradio and =
usrps on an ubuntu 20.04=C2=A0=C2=A0<br><br>$ lsb_release -a<br>No LSB modu=
les are available.<br>Distributor ID: Ubuntu<br>Description: =C2=A0 =C2=A0U=
buntu 20.04.4 LTS<br>Release: =C2=A0 =C2=A0 =C2=A0 =C2=A020.04<br>Codename:=
 =C2=A0 =C2=A0 =C2=A0 focal<br><br>I usually update my uhd libraries from e=
ttus binaries as described here:<br><a href=3D"https://files.ettus.com/manu=
al/page_install.html">https://files.ettus.com/manual/page_install.html</a><=
br><br>$ sudo add-apt-repository ppa:ettusresearch/uhd<br>$ sudo apt-get up=
date<br>$ sudo apt-get install libuhd-dev libuhd4.1.0 uhd-host<br><div><br>=
</div><div>Then I usually=C2=A0build gnuradio from source (I am currently i=
n v3.8).</div><div>I DO NOT install gnuradio from repositories!</div><div><=
br></div><div>Today I tried to update the uhd libraries.</div><div>First I =
cleaned up all previous versions:</div><div><br></div><div>$ sudo apt-get r=
emove libuhd-dev libuhd4.1.0 uhd-host<br>$ sudo apt autoremove</div><div>$ =
ldconfig -p | grep uhd</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 libgnuradio-uh=
d.so.3.8.5git (libc6,x86-64) =3D&gt; /usr/local/lib/libgnuradio-uhd.so.3.8.=
5git<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 libgnuradio-uhd.so.3.8.4 (libc6,x86-64)=
 =3D&gt; /usr/local/lib/libgnuradio-uhd.so.3.8.4<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 libgnuradio-uhd.so.3.8.3git (libc6,x86-64) =3D&gt; /usr/local/lib/li=
bgnuradio-uhd.so.3.8.3git<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 libgnuradio-uhd.so=
 (libc6,x86-64) =3D&gt; /usr/local/lib/libgnuradio-uhd.so<br><br>Then I tri=
ed to install the uhd libraries:<br><br></div><div>$ sudo add-apt-repositor=
y -y ppa:ettusresearch/uhd<br>Hit:1 <a href=3D"http://dl.google.com/linux/c=
hrome/deb">http://dl.google.com/linux/chrome/deb</a> stable InRelease<br>Hi=
t:2 <a href=3D"http://us.archive.ubuntu.com/ubuntu">http://us.archive.ubunt=
u.com/ubuntu</a> focal InRelease<br>Hit:3 <a href=3D"http://us.archive.ubun=
tu.com/ubuntu">http://us.archive.ubuntu.com/ubuntu</a> focal-updates InRele=
ase<br>Hit:4 <a href=3D"http://us.archive.ubuntu.com/ubuntu">http://us.arch=
ive.ubuntu.com/ubuntu</a> focal-backports InRelease<br>Hit:5 <a href=3D"htt=
p://ppa.launchpad.net/ettusresearch/uhd/ubuntu">http://ppa.launchpad.net/et=
tusresearch/uhd/ubuntu</a> focal InRelease<br>Get:6 <a href=3D"http://secur=
ity.ubuntu.com/ubuntu">http://security.ubuntu.com/ubuntu</a> focal-security=
 InRelease [114 kB]<br>Fetched 114 kB in 1s (118 kB/s)<br>Reading package l=
ists... Done<br></div><div><br></div><div>$ sudo apt-get update<br>Hit:1 <a=
 href=3D"http://dl.google.com/linux/chrome/deb">http://dl.google.com/linux/=
chrome/deb</a> stable InRelease<br>Hit:2 <a href=3D"http://us.archive.ubunt=
u.com/ubuntu">http://us.archive.ubuntu.com/ubuntu</a> focal InRelease<br>Hi=
t:3 <a href=3D"http://us.archive.ubuntu.com/ubuntu">http://us.archive.ubunt=
u.com/ubuntu</a> focal-updates InRelease<br>Hit:4 <a href=3D"http://us.arch=
ive.ubuntu.com/ubuntu">http://us.archive.ubuntu.com/ubuntu</a> focal-backpo=
rts InRelease<br>Hit:5 <a href=3D"http://ppa.launchpad.net/ettusresearch/uh=
d/ubuntu">http://ppa.launchpad.net/ettusresearch/uhd/ubuntu</a> focal InRel=
ease<br>Get:6 <a href=3D"http://security.ubuntu.com/ubuntu">http://security=
.ubuntu.com/ubuntu</a> focal-security InRelease [114 kB]<br>Fetched 114 kB =
in 1s (174 kB/s)<br>Reading package lists... Done<br><br>$ sudo apt-get ins=
tall libuhd4.1.0<br>Reading package lists... Done<br>Building dependency tr=
ee<br>Reading state information... Done<br>Suggested packages:<br>=C2=A0 gn=
uradio<br>The following NEW packages will be installed:<br>=C2=A0 libuhd4.1=
.0<br>0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.<br>Nee=
d to get 0 B/3,375 kB of archives.<br>After this operation, 14.6 MB of addi=
tional disk space will be used.<br>Selecting previously unselected package =
libuhd4.1.0:amd64.<br>(Reading database ... 269419 files and directories cu=
rrently installed.)<br>Preparing to unpack .../libuhd4.1.0_4.1.0.4-0ubuntu1=
~focal1_amd64.deb ...<br>Unpacking libuhd4.1.0:amd64 (4.1.0.4-0ubuntu1~foca=
l1) ...<br>Setting up libuhd4.1.0:amd64 (4.1.0.4-0ubuntu1~focal1) ...<br>Pr=
ocessing triggers for libc-bin (2.31-0ubuntu9.9) ...<br></div><div><br></di=
v><div>Now I am trying to install the &quot;uhd-host&quot; library:</div><d=
iv><br></div><div>$ sudo apt-get install uhd-host<br>Reading package lists.=
.. Done<br>Building dependency tree<br>Reading state information... Done<br=
><b>The following additional packages will be installed:<br>=C2=A0 libuhd4.=
2.0 python3-ruamel.yaml</b><br>Suggested packages:<br>=C2=A0 gnuradio<br>Th=
e following NEW packages will be installed:<br>=C2=A0 libuhd4.2.0 python3-r=
uamel.yaml uhd-host<br>0 upgraded, 3 newly installed, 0 to remove and 0 not=
 upgraded.<br>Need to get 0 B/7,502 kB of archives.<br>After this operation=
, 41.0 MB of additional disk space will be used.<br>Do you want to continue=
? [Y/n]<br></div><div><br></div><div><br></div><div>*******I do not underst=
and why it asks to install also the libuhd4.2.0=C2=A0library.</div><div>If =
I do that, then I get the following errors:</div><div><br></div><div>=C2=A0=
Y<br>Selecting previously unselected package libuhd4.2.0:amd64.<br>(Reading=
 database ... 269464 files and directories currently installed.)<br>Prepari=
ng to unpack .../libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64.deb ...<br>Unpac=
king libuhd4.2.0:amd64 (4.2.0.0-0ubuntu1~focal1) ...<br>dpkg: error process=
ing archive /var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd=
64.deb (--unpack):<br>=C2=A0trying to overwrite &#39;/usr/share/uhd/cal/cal=
_metadata.fbs&#39;, which is also in package libuhd4.1.0:amd64 4.1.0.4-0ubu=
ntu1~focal1<br>Selecting previously unselected package python3-ruamel.yaml.=
<br>Preparing to unpack .../python3-ruamel.yaml_0.15.89-3build1_amd64.deb .=
..<br>Unpacking python3-ruamel.yaml (0.15.89-3build1) ...<br>Selecting prev=
iously unselected package uhd-host.<br>Preparing to unpack .../uhd-host_4.2=
.0.0-0ubuntu1~focal1_amd64.deb ...<br>Unpacking uhd-host (4.2.0.0-0ubuntu1~=
focal1) ...<br>Errors were encountered while processing:<br>=C2=A0/var/cach=
e/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64.deb<br>E: Sub-proc=
ess /usr/bin/dpkg returned an error code (1)<br></div><div><br></div><div><=
br></div><div>Alternatively if I try to remove &quot;libuhd4.1.0&quot; and =
install the latest &quot;libuhd4.2.0&quot;</div><div><br></div><div>$ sudo =
apt remove libuhd4.1.0<br>Reading package lists... Done<br>Building depende=
ncy tree<br>Reading state information... Done<br>The following packages wil=
l be REMOVED:<br>=C2=A0 libuhd4.1.0<br>0 upgraded, 0 newly installed, 1 to =
remove and 0 not upgraded.<br>After this operation, 14.6 MB disk space will=
 be freed.<br>Do you want to continue? [Y/n] Y<br>(Reading database ... 269=
464 files and directories currently installed.)<br>Removing libuhd4.1.0:amd=
64 (4.1.0.4-0ubuntu1~focal1) ...<br>dpkg: warning: while removing libuhd4.1=
.0:amd64, directory &#39;/usr/share/uhd&#39; not empty so not removed<br>Pr=
ocessing triggers for libc-bin (2.31-0ubuntu9.9) ...<br></div><div><br></di=
v><div>$ sudo apt autoremove</div><div><br></div><div>$ sudo apt install li=
buhd4.2.0<br>Reading package lists... Done<br>Building dependency tree<br>R=
eading state information... Done<br>Suggested packages:<br>=C2=A0 gnuradio<=
br>The following NEW packages will be installed:<br>=C2=A0 libuhd4.2.0<br>0=
 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.<br>Need to ge=
t 0 B/3,453 kB of archives.<br>After this operation, 15.0 MB of additional =
disk space will be used.<br>(Reading database ... 269419 files and director=
ies currently installed.)<br>Preparing to unpack .../libuhd4.2.0_4.2.0.0-0u=
buntu1~focal1_amd64.deb ...<br>Unpacking libuhd4.2.0:amd64 (4.2.0.0-0ubuntu=
1~focal1) ...<br>Setting up libuhd4.2.0:amd64 (4.2.0.0-0ubuntu1~focal1) ...=
<br>Processing triggers for libc-bin (2.31-0ubuntu9.9) ...<br></div><div><b=
r></div><div>Now I can easily=C2=A0install the &quot;uhd-host&quot; library=
</div><div><br></div><div>$ sudo apt install uhd-host<br>Reading package li=
sts... Done<br>Building dependency tree<br>Reading state information... Don=
e<br>The following additional packages will be installed:<br>=C2=A0 python3=
-ruamel.yaml<br>Suggested packages:<br>=C2=A0 gnuradio<br>The following NEW=
 packages will be installed:<br>=C2=A0 python3-ruamel.yaml uhd-host<br>0 up=
graded, 2 newly installed, 0 to remove and 0 not upgraded.<br>Need to get 0=
 B/4,049 kB of archives.<br>After this operation, 26.0 MB of additional dis=
k space will be used.<br>Do you want to continue? [Y/n] Y<br>Selecting prev=
iously unselected package python3-ruamel.yaml.<br>(Reading database ... 269=
460 files and directories currently installed.)<br>Preparing to unpack .../=
python3-ruamel.yaml_0.15.89-3build1_amd64.deb ...<br>Unpacking python3-ruam=
el.yaml (0.15.89-3build1) ...<br>Selecting previously unselected package uh=
d-host.<br>Preparing to unpack .../uhd-host_4.2.0.0-0ubuntu1~focal1_amd64.d=
eb ...<br>Unpacking uhd-host (4.2.0.0-0ubuntu1~focal1) ...<br>Setting up py=
thon3-ruamel.yaml (0.15.89-3build1) ...<br>Setting up uhd-host (4.2.0.0-0ub=
untu1~focal1) ...<br>sysctl: cannot open &quot;/etc/sysctl.d/uhd-usrp2.conf=
&quot;: No such file or directory<br>Warning: Could not update sysctl setti=
ngs for network devices.<br>Processing triggers for man-db (2.9.1-1) ...<br=
></div><div><br></div><div>I check that everything works with uhd:</div><di=
v><br></div><div>$ uhd_find_devices<br>[INFO] [UHD] linux; GNU C++ version =
9.4.0; Boost_107100; UHD_4.2.0.0-0ubuntu1~focal1<br>-----------------------=
---------------------------<br>-- UHD Device 0<br>-------------------------=
-------------------------<br>Device Address:<br>=C2=A0 =C2=A0 serial: 315C6=
B2<br>=C2=A0 =C2=A0 addr: 192.168.40.2<br>=C2=A0 =C2=A0 fpga: HG<br>=C2=A0 =
=C2=A0 name:<br>=C2=A0 =C2=A0 product: X310<br>=C2=A0 =C2=A0 type: x300<br>=
</div><div><br></div><div>BUT, when I try to install the &quot;libuhd-dev&q=
uot; library I get the following which=C2=A0</div><div>I suspect wants to i=
nstall the entire gnuradio system from the repository, which as I said in t=
he beginning=C2=A0I do not want, since I=C2=A0am usually building it from s=
ource.</div><div><br></div><div>$ sudo apt-get install libuhd-dev<br>Readin=
g package lists... Done<br>Building dependency tree<br>Reading state inform=
ation... Done<br>The following additional packages will be installed:<br>=
=C2=A0 freeglut3 gnuradio gnuradio-dev libgnuradio-analog3.8.1 libgnuradio-=
audio3.8.1 libgnuradio-blocks3.8.1<br>=C2=A0 libgnuradio-channels3.8.1 libg=
nuradio-digital3.8.1 libgnuradio-dtv3.8.1 libgnuradio-fec3.8.1<br>=C2=A0 li=
bgnuradio-fft3.8.1 libgnuradio-filter3.8.1 libgnuradio-pmt3.8.1 libgnuradio=
-qtgui3.8.1<br>=C2=A0 libgnuradio-runtime3.8.1 libgnuradio-trellis3.8.1 lib=
gnuradio-uhd3.8.1 libgnuradio-video-sdl3.8.1<br>=C2=A0 libgnuradio-vocoder3=
.8.1 libgnuradio-wavelet3.8.1 libgnuradio-zeromq3.8.1 libjs-jquery-ui librt=
lsdr0<br>=C2=A0 libuhd3.15.0 libvolk2-bin libvolk2-dev libvolk2.2 python-ma=
tplotlib-data python3-cycler python3-kiwisolver<br>=C2=A0 python3-matplotli=
b python3-networkx python3-opengl python3-pyqt5.qtopengl python3-pyqtgraph =
rtl-sdr<br>Suggested packages:<br>=C2=A0 gr-fosphor gr-osmosdr libjs-jquery=
-ui-docs uhd-doc libvolk2-doc python-cycler-doc dvipng ffmpeg inkscape<br>=
=C2=A0 ipython3 python-matplotlib-doc python3-cairocffi python3-gobject pyt=
hon3-nose python3-tornado<br>=C2=A0 texlive-extra-utils texlive-latex-extra=
 ttf-staypuft python-networkx-doc python3-gdal python3-pygraphviz<br>=C2=A0=
 | python3-pydot libgle3 python-pyqtgraph-doc<br>Recommended packages:<br>=
=C2=A0 python3-qwt-qt5<br>The following NEW packages will be installed:<br>=
=C2=A0 freeglut3 gnuradio gnuradio-dev libgnuradio-analog3.8.1 libgnuradio-=
audio3.8.1 libgnuradio-blocks3.8.1<br>=C2=A0 libgnuradio-channels3.8.1 libg=
nuradio-digital3.8.1 libgnuradio-dtv3.8.1 libgnuradio-fec3.8.1<br>=C2=A0 li=
bgnuradio-fft3.8.1 libgnuradio-filter3.8.1 libgnuradio-pmt3.8.1 libgnuradio=
-qtgui3.8.1<br>=C2=A0 libgnuradio-runtime3.8.1 libgnuradio-trellis3.8.1 lib=
gnuradio-uhd3.8.1 libgnuradio-video-sdl3.8.1<br>=C2=A0 libgnuradio-vocoder3=
.8.1 libgnuradio-wavelet3.8.1 libgnuradio-zeromq3.8.1 libjs-jquery-ui librt=
lsdr0<br>=C2=A0 libuhd-dev libuhd3.15.0 libvolk2-bin libvolk2-dev libvolk2.=
2 python-matplotlib-data python3-cycler<br>=C2=A0 python3-kiwisolver python=
3-matplotlib python3-networkx python3-opengl python3-pyqt5.qtopengl<br>=C2=
=A0 python3-pyqtgraph rtl-sdr<br>0 upgraded, 37 newly installed, 0 to remov=
e and 0 not upgraded.<br>Need to get 138 MB of archives.<br>After this oper=
ation, 493 MB of additional disk space will be used.<br>Do you want to cont=
inue? [Y/n]<br></div><div><br><br>Can anyone help with this?</div><div>I wa=
nt to just update my uhd to the latest version from ETTUS repositories and =
then build gnuradio from source as I used to do.</div><div><br></div><div>t=
hanks in advance,</div><div>Achilleas<br><br><br><br><br><br><br></div><div=
><br></div><div><br></div><div><br></div><div><br></div><div><br></div><div=
><br></div></div></div>

--00000000000055b0aa05e0656b1f--

--===============6116332583662521133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6116332583662521133==--
