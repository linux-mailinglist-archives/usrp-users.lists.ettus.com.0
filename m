Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B5B53AB4B
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 18:50:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2DC5384690
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 12:50:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654102256; bh=46np/OTlF8D9GbsmZPRct6PPcwz99AFUg6y747KsQe4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=bkq1pmbvEJ5LugqwfkZJ1SLGkZOPYk5SN92QvKEsAzLEBbGcIl38wabwYzAlxDALH
	 PglPgf5+T8Bim7g9gi7h41cZoW/4X1fh5+Uz8fp4y8gXmP954TbwTjMorfp1rW9m3R
	 QIRRhSvGXLlAaV45lKYZliPd9M/pcdN1bUiy2kXj9yGhaj96jjI3M+SY4h5zTILPve
	 AxWo8EtV4glvhbIU73hOb4mf4CA5xCfYWqTkPfE0IYW99SafVzzBfLQDV3p+d9czM4
	 dr3qT5i978Zh6euGl9BsbSaupS5EO2Dzm1TU3nou27wb914/09uOdMrIMG64rw2px8
	 dng+BA4Fx/ZFQ==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A79438422A
	for <usrp-users@lists.ettus.com>; Wed,  1 Jun 2022 12:49:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EidYigIH";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id v5so1853301qvs.10
        for <usrp-users@lists.ettus.com>; Wed, 01 Jun 2022 09:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=2R1tnhSwsaveSRIDWNdB6PSmoFdb/013z4eh6zMDYBE=;
        b=EidYigIHVfQ1QGcD5VPIR6b+NBAqM8HN7eWvhvaiIwEBD3a7zTsdIuiVP43BAgHCCG
         xRgS4uXmj/9JMqOSpFvi+hqZgrKzT/UtcIuSFzxOwOgqxQxIP3gSbFr71wTgoJKtQBHQ
         b2d9UajiS3CVomHdny+4VC8/fvIEHyT0E0LBXWpq8ujMay5NHRThd3l0pJly5zrMeMkd
         WLULs5O9Ujq3CEaGCrFCC74dKdVxK3hGJseq/LpM5K8Pf0zvbNLF7SJYVdS3P4OemxYQ
         sWAq99J28t/TzerB5eL5jJY6wgLc20pr5RtPdqW/wS/6Wa9xe5AToKbEUDxnCRvWyNXM
         IvbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=2R1tnhSwsaveSRIDWNdB6PSmoFdb/013z4eh6zMDYBE=;
        b=pxzNHChYSHiHBPVyyJjfkEZFmg7HLpYdirzB0EM96+uokVEhHhuGAhyTFz5N69EQvD
         LYx2TTHOMhJAj2XfcplOfPKftHDiNI1H06BCeGpfLyd1RajZ8oCfqavIGcIHxwbqHFk0
         2ZM02oxckLPeKAEKzzp7LbYtIngsOLvNHSDopIx6XOn74Gw2JjUj1pB0p+y8rJEWHPWt
         t1mUPkUZaR4N/bfx66ZSUHhDqaYlkk9MNqwG0Lv0MUMJkdH9tsMkaXC/kHmpwYvDSTZs
         C+dBtSxnmB7Ctbg7bu22z8j3swSv/N45vMEj8JVnb9jQG3nv6IBFcP7hA+ZBiXXC/jQi
         OZtg==
X-Gm-Message-State: AOAM531/J4gSiv6sEsP9eG9qYb5T8n2T99IrdhN/c6S0xnUHubBa57Jx
	qwf1y1sNyGVtxHY9wCWrJUswLV9+UPU=
X-Google-Smtp-Source: ABdhPJzJKwMJoBdTgPfwuQ7oanCTFYFGnOctOtpQMFDGcuw8KJMsohgjmlcvpUjOwqYGk9TVkypiQQ==
X-Received: by 2002:a0c:fa81:0:b0:461:e391:820b with SMTP id o1-20020a0cfa81000000b00461e391820bmr55456219qvn.6.1654102181595;
        Wed, 01 Jun 2022 09:49:41 -0700 (PDT)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id y203-20020a3764d4000000b0069fc13ce202sm1519704qkb.51.2022.06.01.09.49.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 09:49:41 -0700 (PDT)
Message-ID: <c2d5fab7-03cf-958a-9896-7487f1e296a2@gmail.com>
Date: Wed, 1 Jun 2022 12:49:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAErymBhzsCT=X3u-=iYf0iqzRgEc5fDtH0v4Ap6e7-EYYrSpmQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAErymBhzsCT=X3u-=iYf0iqzRgEc5fDtH0v4Ap6e7-EYYrSpmQ@mail.gmail.com>
Message-ID-Hash: F7FYOVNQ5AFAKIJ7V45OEAQHLKHVHDRD
X-Message-ID-Hash: F7FYOVNQ5AFAKIJ7V45OEAQHLKHVHDRD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem updating uhd library on Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F7FYOVNQ5AFAKIJ7V45OEAQHLKHVHDRD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2801091076953219178=="

This is a multi-part message in MIME format.
--===============2801091076953219178==
Content-Type: multipart/alternative;
 boundary="------------FHU5GrmCMYqd0qwlJwDJqF09"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FHU5GrmCMYqd0qwlJwDJqF09
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-06-01 12:31, Achilleas Anastasopoulos wrote:
> Hi all,
>
> I am working with gnuradio and usrps on an ubuntu 20.04
>
> $ lsb_release -a
> No LSB modules are available.
> Distributor ID: Ubuntu
> Description: =C2=A0 =C2=A0Ubuntu 20.04.4 LTS
> Release: =C2=A0 =C2=A0 =C2=A0 =C2=A020.04
> Codename: =C2=A0 =C2=A0 =C2=A0 focal
>
> I usually update my uhd libraries from ettus binaries as described here=
:
> https://files.ettus.com/manual/page_install.html
>
> $ sudo add-apt-repository ppa:ettusresearch/uhd
> $ sudo apt-get update
> $ sudo apt-get install libuhd-dev libuhd4.1.0 uhd-host
>
> Then I usually=C2=A0build gnuradio from source (I am currently in v3.8)=
.
> I DO NOT install gnuradio from repositories!
>
> Today I tried to update the uhd libraries.
> First I cleaned up all previous versions:
>
> $ sudo apt-get remove libuhd-dev libuhd4.1.0 uhd-host
> $ sudo apt autoremove
> $ ldconfig -p | grep uhd
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 libgnuradio-uhd.so.3.8.5git (libc6,x86-64) =
=3D>=20
> /usr/local/lib/libgnuradio-uhd.so.3.8.5git
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 libgnuradio-uhd.so.3.8.4 (libc6,x86-64) =3D=
>=20
> /usr/local/lib/libgnuradio-uhd.so.3.8.4
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 libgnuradio-uhd.so.3.8.3git (libc6,x86-64) =
=3D>=20
> /usr/local/lib/libgnuradio-uhd.so.3.8.3git
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 libgnuradio-uhd.so (libc6,x86-64) =3D>=20
> /usr/local/lib/libgnuradio-uhd.so
>
> Then I tried to install the uhd libraries:
>
> $ sudo add-apt-repository -y ppa:ettusresearch/uhd
> Hit:1 http://dl.google.com/linux/chrome/deb stable InRelease
> Hit:2 http://us.archive.ubuntu.com/ubuntu focal InRelease
> Hit:3 http://us.archive.ubuntu.com/ubuntu focal-updates InRelease
> Hit:4 http://us.archive.ubuntu.com/ubuntu focal-backports InRelease
> Hit:5 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal InRelease
> Get:6 http://security.ubuntu.com/ubuntu focal-security InRelease [114 k=
B]
> Fetched 114 kB in 1s (118 kB/s)
> Reading package lists... Done
>
> $ sudo apt-get update
> Hit:1 http://dl.google.com/linux/chrome/deb stable InRelease
> Hit:2 http://us.archive.ubuntu.com/ubuntu focal InRelease
> Hit:3 http://us.archive.ubuntu.com/ubuntu focal-updates InRelease
> Hit:4 http://us.archive.ubuntu.com/ubuntu focal-backports InRelease
> Hit:5 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal InRelease
> Get:6 http://security.ubuntu.com/ubuntu focal-security InRelease [114 k=
B]
> Fetched 114 kB in 1s (174 kB/s)
> Reading package lists... Done
>
> $ sudo apt-get install libuhd4.1.0
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> Suggested packages:
> =C2=A0 gnuradio
> The following NEW packages will be installed:
> =C2=A0 libuhd4.1.0
> 0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
> Need to get 0 B/3,375 kB of archives.
> After this operation, 14.6 MB of additional disk space will be used.
> Selecting previously unselected package libuhd4.1.0:amd64.
> (Reading database ... 269419 files and directories currently installed.=
)
> Preparing to unpack .../libuhd4.1.0_4.1.0.4-0ubuntu1~focal1_amd64.deb .=
..
> Unpacking libuhd4.1.0:amd64 (4.1.0.4-0ubuntu1~focal1) ...
> Setting up libuhd4.1.0:amd64 (4.1.0.4-0ubuntu1~focal1) ...
> Processing triggers for libc-bin (2.31-0ubuntu9.9) ...
>
> Now I am trying to install the "uhd-host" library:
>
> $ sudo apt-get install uhd-host
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> *The following additional packages will be installed:
> =C2=A0 libuhd4.2.0 python3-ruamel.yaml*
> Suggested packages:
> =C2=A0 gnuradio
> The following NEW packages will be installed:
> =C2=A0 libuhd4.2.0 python3-ruamel.yaml uhd-host
> 0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.
> Need to get 0 B/7,502 kB of archives.
> After this operation, 41.0 MB of additional disk space will be used.
> Do you want to continue? [Y/n]
>
>
> *******I do not understand why it asks to install also the=20
> libuhd4.2.0=C2=A0library.
> If I do that, then I get the following errors:
>
> =C2=A0Y
> Selecting previously unselected package libuhd4.2.0:amd64.
> (Reading database ... 269464 files and directories currently installed.=
)
> Preparing to unpack .../libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64.deb .=
..
> Unpacking libuhd4.2.0:amd64 (4.2.0.0-0ubuntu1~focal1) ...
> dpkg: error processing archive=20
> /var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64.deb=20
> (--unpack):
> =C2=A0trying to overwrite '/usr/share/uhd/cal/cal_metadata.fbs', which =
is=20
> also in package libuhd4.1.0:amd64 4.1.0.4-0ubuntu1~focal1
> Selecting previously unselected package python3-ruamel.yaml.
> Preparing to unpack .../python3-ruamel.yaml_0.15.89-3build1_amd64.deb .=
..
> Unpacking python3-ruamel.yaml (0.15.89-3build1) ...
> Selecting previously unselected package uhd-host.
> Preparing to unpack .../uhd-host_4.2.0.0-0ubuntu1~focal1_amd64.deb ...
> Unpacking uhd-host (4.2.0.0-0ubuntu1~focal1) ...
> Errors were encountered while processing:
> =C2=A0/var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64=
.deb
> E: Sub-process /usr/bin/dpkg returned an error code (1)
>
>
> Alternatively if I try to remove "libuhd4.1.0" and install the latest=20
> "libuhd4.2.0"
>
> $ sudo apt remove libuhd4.1.0
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> The following packages will be REMOVED:
> =C2=A0 libuhd4.1.0
> 0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
> After this operation, 14.6 MB disk space will be freed.
> Do you want to continue? [Y/n] Y
> (Reading database ... 269464 files and directories currently installed.=
)
> Removing libuhd4.1.0:amd64 (4.1.0.4-0ubuntu1~focal1) ...
> dpkg: warning: while removing libuhd4.1.0:amd64, directory=20
> '/usr/share/uhd' not empty so not removed
> Processing triggers for libc-bin (2.31-0ubuntu9.9) ...
>
> $ sudo apt autoremove
>
> $ sudo apt install libuhd4.2.0
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> Suggested packages:
> =C2=A0 gnuradio
> The following NEW packages will be installed:
> =C2=A0 libuhd4.2.0
> 0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
> Need to get 0 B/3,453 kB of archives.
> After this operation, 15.0 MB of additional disk space will be used.
> (Reading database ... 269419 files and directories currently installed.=
)
> Preparing to unpack .../libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64.deb .=
..
> Unpacking libuhd4.2.0:amd64 (4.2.0.0-0ubuntu1~focal1) ...
> Setting up libuhd4.2.0:amd64 (4.2.0.0-0ubuntu1~focal1) ...
> Processing triggers for libc-bin (2.31-0ubuntu9.9) ...
>
> Now I can easily=C2=A0install the "uhd-host" library
>
> $ sudo apt install uhd-host
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> The following additional packages will be installed:
> =C2=A0 python3-ruamel.yaml
> Suggested packages:
> =C2=A0 gnuradio
> The following NEW packages will be installed:
> =C2=A0 python3-ruamel.yaml uhd-host
> 0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
> Need to get 0 B/4,049 kB of archives.
> After this operation, 26.0 MB of additional disk space will be used.
> Do you want to continue? [Y/n] Y
> Selecting previously unselected package python3-ruamel.yaml.
> (Reading database ... 269460 files and directories currently installed.=
)
> Preparing to unpack .../python3-ruamel.yaml_0.15.89-3build1_amd64.deb .=
..
> Unpacking python3-ruamel.yaml (0.15.89-3build1) ...
> Selecting previously unselected package uhd-host.
> Preparing to unpack .../uhd-host_4.2.0.0-0ubuntu1~focal1_amd64.deb ...
> Unpacking uhd-host (4.2.0.0-0ubuntu1~focal1) ...
> Setting up python3-ruamel.yaml (0.15.89-3build1) ...
> Setting up uhd-host (4.2.0.0-0ubuntu1~focal1) ...
> sysctl: cannot open "/etc/sysctl.d/uhd-usrp2.conf": No such file or=20
> directory
> Warning: Could not update sysctl settings for network devices.
> Processing triggers for man-db (2.9.1-1) ...
>
> I check that everything works with uhd:
>
> $ uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;=20
> UHD_4.2.0.0-0ubuntu1~focal1
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
> =C2=A0 =C2=A0 serial: 315C6B2
> =C2=A0 =C2=A0 addr: 192.168.40.2
> =C2=A0 =C2=A0 fpga: HG
> =C2=A0 =C2=A0 name:
> =C2=A0 =C2=A0 product: X310
> =C2=A0 =C2=A0 type: x300
>
> BUT, when I try to install the "libuhd-dev" library I get the=20
> following which
> I suspect wants to install the entire gnuradio system from the=20
> repository, which as I said in the beginning=C2=A0I do not want, since =
I=C2=A0am=20
> usually building it from source.
>
> $ sudo apt-get install libuhd-dev
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> The following additional packages will be installed:
> =C2=A0 freeglut3 gnuradio gnuradio-dev libgnuradio-analog3.8.1=20
> libgnuradio-audio3.8.1 libgnuradio-blocks3.8.1
> =C2=A0 libgnuradio-channels3.8.1 libgnuradio-digital3.8.1=20
> libgnuradio-dtv3.8.1 libgnuradio-fec3.8.1
> =C2=A0 libgnuradio-fft3.8.1 libgnuradio-filter3.8.1 libgnuradio-pmt3.8.=
1=20
> libgnuradio-qtgui3.8.1
> =C2=A0 libgnuradio-runtime3.8.1 libgnuradio-trellis3.8.1=20
> libgnuradio-uhd3.8.1 libgnuradio-video-sdl3.8.1
> =C2=A0 libgnuradio-vocoder3.8.1 libgnuradio-wavelet3.8.1=20
> libgnuradio-zeromq3.8.1 libjs-jquery-ui librtlsdr0
> =C2=A0 libuhd3.15.0 libvolk2-bin libvolk2-dev libvolk2.2=20
> python-matplotlib-data python3-cycler python3-kiwisolver
> =C2=A0 python3-matplotlib python3-networkx python3-opengl=20
> python3-pyqt5.qtopengl python3-pyqtgraph rtl-sdr
> Suggested packages:
> =C2=A0 gr-fosphor gr-osmosdr libjs-jquery-ui-docs uhd-doc libvolk2-doc=20
> python-cycler-doc dvipng ffmpeg inkscape
> =C2=A0 ipython3 python-matplotlib-doc python3-cairocffi python3-gobject=
=20
> python3-nose python3-tornado
> =C2=A0 texlive-extra-utils texlive-latex-extra ttf-staypuft=20
> python-networkx-doc python3-gdal python3-pygraphviz
> =C2=A0 | python3-pydot libgle3 python-pyqtgraph-doc
> Recommended packages:
> =C2=A0 python3-qwt-qt5
> The following NEW packages will be installed:
> =C2=A0 freeglut3 gnuradio gnuradio-dev libgnuradio-analog3.8.1=20
> libgnuradio-audio3.8.1 libgnuradio-blocks3.8.1
> =C2=A0 libgnuradio-channels3.8.1 libgnuradio-digital3.8.1=20
> libgnuradio-dtv3.8.1 libgnuradio-fec3.8.1
> =C2=A0 libgnuradio-fft3.8.1 libgnuradio-filter3.8.1 libgnuradio-pmt3.8.=
1=20
> libgnuradio-qtgui3.8.1
> =C2=A0 libgnuradio-runtime3.8.1 libgnuradio-trellis3.8.1=20
> libgnuradio-uhd3.8.1 libgnuradio-video-sdl3.8.1
> =C2=A0 libgnuradio-vocoder3.8.1 libgnuradio-wavelet3.8.1=20
> libgnuradio-zeromq3.8.1 libjs-jquery-ui librtlsdr0
> =C2=A0 libuhd-dev libuhd3.15.0 libvolk2-bin libvolk2-dev libvolk2.2=20
> python-matplotlib-data python3-cycler
> =C2=A0 python3-kiwisolver python3-matplotlib python3-networkx=20
> python3-opengl python3-pyqt5.qtopengl
> =C2=A0 python3-pyqtgraph rtl-sdr
> 0 upgraded, 37 newly installed, 0 to remove and 0 not upgraded.
> Need to get 138 MB of archives.
> After this operation, 493 MB of additional disk space will be used.
> Do you want to continue? [Y/n]
>
>
> Can anyone help with this?
> I want to just update my uhd to the latest version from ETTUS=20
> repositories and then build gnuradio from source as I used to do.
>
> thanks in advance,
> Achilleas
YOu could perhaps just install the .deb file from here:

https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+packages?field.=
name_filter=3Duhd&field.status_filter=3Dpublished&field.series_filter=3D


I guess APT is satisfying your request from the main repo in preference=20
to the PPA.=C2=A0=C2=A0=C2=A0 Not sure why, but installing the .deb direc=
tly might help?


--------------FHU5GrmCMYqd0qwlJwDJqF09
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-06-01 12:31, Achilleas
      Anastasopoulos wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAErymBhzsCT=3DX3u-=3DiYf0iqzRgEc5fDtH0v4Ap6e7-EYYrSpmQ@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi all,
        <div><br>
        </div>
        <div>I am working with gnuradio and usrps on an ubuntu 20.04=C2=A0=
=C2=A0<br>
          <br>
          $ lsb_release -a<br>
          No LSB modules are available.<br>
          Distributor ID: Ubuntu<br>
          Description: =C2=A0 =C2=A0Ubuntu 20.04.4 LTS<br>
          Release: =C2=A0 =C2=A0 =C2=A0 =C2=A020.04<br>
          Codename: =C2=A0 =C2=A0 =C2=A0 focal<br>
          <br>
          I usually update my uhd libraries from ettus binaries as
          described here:<br>
          <a href=3D"https://files.ettus.com/manual/page_install.html"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://files.ettus.com/manual/page_install.html</a><br>
          <br>
          $ sudo add-apt-repository ppa:ettusresearch/uhd<br>
          $ sudo apt-get update<br>
          $ sudo apt-get install libuhd-dev libuhd4.1.0 uhd-host<br>
          <div><br>
          </div>
          <div>Then I usually=C2=A0build gnuradio from source (I am curre=
ntly
            in v3.8).</div>
          <div>I DO NOT install gnuradio from repositories!</div>
          <div><br>
          </div>
          <div>Today I tried to update the uhd libraries.</div>
          <div>First I cleaned up all previous versions:</div>
          <div><br>
          </div>
          <div>$ sudo apt-get remove libuhd-dev libuhd4.1.0 uhd-host<br>
            $ sudo apt autoremove</div>
          <div>$ ldconfig -p | grep uhd</div>
          <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 libgnuradio-uhd.so.3.8.5git (l=
ibc6,x86-64) =3D&gt;
            /usr/local/lib/libgnuradio-uhd.so.3.8.5git<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 libgnuradio-uhd.so.3.8.4 (libc6,x=
86-64) =3D&gt;
            /usr/local/lib/libgnuradio-uhd.so.3.8.4<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 libgnuradio-uhd.so.3.8.3git (libc=
6,x86-64) =3D&gt;
            /usr/local/lib/libgnuradio-uhd.so.3.8.3git<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 libgnuradio-uhd.so (libc6,x86-64)=
 =3D&gt;
            /usr/local/lib/libgnuradio-uhd.so<br>
            <br>
            Then I tried to install the uhd libraries:<br>
            <br>
          </div>
          <div>$ sudo add-apt-repository -y ppa:ettusresearch/uhd<br>
            Hit:1 <a href=3D"http://dl.google.com/linux/chrome/deb"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tp://dl.google.com/linux/chrome/deb</a>
            stable InRelease<br>
            Hit:2 <a href=3D"http://us.archive.ubuntu.com/ubuntu"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tp://us.archive.ubuntu.com/ubuntu</a>
            focal InRelease<br>
            Hit:3 <a href=3D"http://us.archive.ubuntu.com/ubuntu"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tp://us.archive.ubuntu.com/ubuntu</a>
            focal-updates InRelease<br>
            Hit:4 <a href=3D"http://us.archive.ubuntu.com/ubuntu"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tp://us.archive.ubuntu.com/ubuntu</a>
            focal-backports InRelease<br>
            Hit:5 <a
              href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubuntu"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tp://ppa.launchpad.net/ettusresearch/uhd/ubuntu</a>
            focal InRelease<br>
            Get:6 <a href=3D"http://security.ubuntu.com/ubuntu"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tp://security.ubuntu.com/ubuntu</a>
            focal-security InRelease [114 kB]<br>
            Fetched 114 kB in 1s (118 kB/s)<br>
            Reading package lists... Done<br>
          </div>
          <div><br>
          </div>
          <div>$ sudo apt-get update<br>
            Hit:1 <a href=3D"http://dl.google.com/linux/chrome/deb"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tp://dl.google.com/linux/chrome/deb</a>
            stable InRelease<br>
            Hit:2 <a href=3D"http://us.archive.ubuntu.com/ubuntu"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tp://us.archive.ubuntu.com/ubuntu</a>
            focal InRelease<br>
            Hit:3 <a href=3D"http://us.archive.ubuntu.com/ubuntu"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tp://us.archive.ubuntu.com/ubuntu</a>
            focal-updates InRelease<br>
            Hit:4 <a href=3D"http://us.archive.ubuntu.com/ubuntu"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tp://us.archive.ubuntu.com/ubuntu</a>
            focal-backports InRelease<br>
            Hit:5 <a
              href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubuntu"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tp://ppa.launchpad.net/ettusresearch/uhd/ubuntu</a>
            focal InRelease<br>
            Get:6 <a href=3D"http://security.ubuntu.com/ubuntu"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tp://security.ubuntu.com/ubuntu</a>
            focal-security InRelease [114 kB]<br>
            Fetched 114 kB in 1s (174 kB/s)<br>
            Reading package lists... Done<br>
            <br>
            $ sudo apt-get install libuhd4.1.0<br>
            Reading package lists... Done<br>
            Building dependency tree<br>
            Reading state information... Done<br>
            Suggested packages:<br>
            =C2=A0 gnuradio<br>
            The following NEW packages will be installed:<br>
            =C2=A0 libuhd4.1.0<br>
            0 upgraded, 1 newly installed, 0 to remove and 0 not
            upgraded.<br>
            Need to get 0 B/3,375 kB of archives.<br>
            After this operation, 14.6 MB of additional disk space will
            be used.<br>
            Selecting previously unselected package libuhd4.1.0:amd64.<br=
>
            (Reading database ... 269419 files and directories currently
            installed.)<br>
            Preparing to unpack
            .../libuhd4.1.0_4.1.0.4-0ubuntu1~focal1_amd64.deb ...<br>
            Unpacking libuhd4.1.0:amd64 (4.1.0.4-0ubuntu1~focal1) ...<br>
            Setting up libuhd4.1.0:amd64 (4.1.0.4-0ubuntu1~focal1) ...<br=
>
            Processing triggers for libc-bin (2.31-0ubuntu9.9) ...<br>
          </div>
          <div><br>
          </div>
          <div>Now I am trying to install the "uhd-host" library:</div>
          <div><br>
          </div>
          <div>$ sudo apt-get install uhd-host<br>
            Reading package lists... Done<br>
            Building dependency tree<br>
            Reading state information... Done<br>
            <b>The following additional packages will be installed:<br>
              =C2=A0 libuhd4.2.0 python3-ruamel.yaml</b><br>
            Suggested packages:<br>
            =C2=A0 gnuradio<br>
            The following NEW packages will be installed:<br>
            =C2=A0 libuhd4.2.0 python3-ruamel.yaml uhd-host<br>
            0 upgraded, 3 newly installed, 0 to remove and 0 not
            upgraded.<br>
            Need to get 0 B/7,502 kB of archives.<br>
            After this operation, 41.0 MB of additional disk space will
            be used.<br>
            Do you want to continue? [Y/n]<br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>*******I do not understand why it asks to install also
            the libuhd4.2.0=C2=A0library.</div>
          <div>If I do that, then I get the following errors:</div>
          <div><br>
          </div>
          <div>=C2=A0Y<br>
            Selecting previously unselected package libuhd4.2.0:amd64.<br=
>
            (Reading database ... 269464 files and directories currently
            installed.)<br>
            Preparing to unpack
            .../libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64.deb ...<br>
            Unpacking libuhd4.2.0:amd64 (4.2.0.0-0ubuntu1~focal1) ...<br>
            dpkg: error processing archive
            /var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_a=
md64.deb
            (--unpack):<br>
            =C2=A0trying to overwrite '/usr/share/uhd/cal/cal_metadata.fb=
s',
            which is also in package libuhd4.1.0:amd64
            4.1.0.4-0ubuntu1~focal1<br>
            Selecting previously unselected package python3-ruamel.yaml.<=
br>
            Preparing to unpack
            .../python3-ruamel.yaml_0.15.89-3build1_amd64.deb ...<br>
            Unpacking python3-ruamel.yaml (0.15.89-3build1) ...<br>
            Selecting previously unselected package uhd-host.<br>
            Preparing to unpack
            .../uhd-host_4.2.0.0-0ubuntu1~focal1_amd64.deb ...<br>
            Unpacking uhd-host (4.2.0.0-0ubuntu1~focal1) ...<br>
            Errors were encountered while processing:<br>
=C2=A0/var/cache/apt/archives/libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64.d=
eb<br>
            E: Sub-process /usr/bin/dpkg returned an error code (1)<br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>Alternatively if I try to remove "libuhd4.1.0" and
            install the latest "libuhd4.2.0"</div>
          <div><br>
          </div>
          <div>$ sudo apt remove libuhd4.1.0<br>
            Reading package lists... Done<br>
            Building dependency tree<br>
            Reading state information... Done<br>
            The following packages will be REMOVED:<br>
            =C2=A0 libuhd4.1.0<br>
            0 upgraded, 0 newly installed, 1 to remove and 0 not
            upgraded.<br>
            After this operation, 14.6 MB disk space will be freed.<br>
            Do you want to continue? [Y/n] Y<br>
            (Reading database ... 269464 files and directories currently
            installed.)<br>
            Removing libuhd4.1.0:amd64 (4.1.0.4-0ubuntu1~focal1) ...<br>
            dpkg: warning: while removing libuhd4.1.0:amd64, directory
            '/usr/share/uhd' not empty so not removed<br>
            Processing triggers for libc-bin (2.31-0ubuntu9.9) ...<br>
          </div>
          <div><br>
          </div>
          <div>$ sudo apt autoremove</div>
          <div><br>
          </div>
          <div>$ sudo apt install libuhd4.2.0<br>
            Reading package lists... Done<br>
            Building dependency tree<br>
            Reading state information... Done<br>
            Suggested packages:<br>
            =C2=A0 gnuradio<br>
            The following NEW packages will be installed:<br>
            =C2=A0 libuhd4.2.0<br>
            0 upgraded, 1 newly installed, 0 to remove and 0 not
            upgraded.<br>
            Need to get 0 B/3,453 kB of archives.<br>
            After this operation, 15.0 MB of additional disk space will
            be used.<br>
            (Reading database ... 269419 files and directories currently
            installed.)<br>
            Preparing to unpack
            .../libuhd4.2.0_4.2.0.0-0ubuntu1~focal1_amd64.deb ...<br>
            Unpacking libuhd4.2.0:amd64 (4.2.0.0-0ubuntu1~focal1) ...<br>
            Setting up libuhd4.2.0:amd64 (4.2.0.0-0ubuntu1~focal1) ...<br=
>
            Processing triggers for libc-bin (2.31-0ubuntu9.9) ...<br>
          </div>
          <div><br>
          </div>
          <div>Now I can easily=C2=A0install the "uhd-host" library</div>
          <div><br>
          </div>
          <div>$ sudo apt install uhd-host<br>
            Reading package lists... Done<br>
            Building dependency tree<br>
            Reading state information... Done<br>
            The following additional packages will be installed:<br>
            =C2=A0 python3-ruamel.yaml<br>
            Suggested packages:<br>
            =C2=A0 gnuradio<br>
            The following NEW packages will be installed:<br>
            =C2=A0 python3-ruamel.yaml uhd-host<br>
            0 upgraded, 2 newly installed, 0 to remove and 0 not
            upgraded.<br>
            Need to get 0 B/4,049 kB of archives.<br>
            After this operation, 26.0 MB of additional disk space will
            be used.<br>
            Do you want to continue? [Y/n] Y<br>
            Selecting previously unselected package python3-ruamel.yaml.<=
br>
            (Reading database ... 269460 files and directories currently
            installed.)<br>
            Preparing to unpack
            .../python3-ruamel.yaml_0.15.89-3build1_amd64.deb ...<br>
            Unpacking python3-ruamel.yaml (0.15.89-3build1) ...<br>
            Selecting previously unselected package uhd-host.<br>
            Preparing to unpack
            .../uhd-host_4.2.0.0-0ubuntu1~focal1_amd64.deb ...<br>
            Unpacking uhd-host (4.2.0.0-0ubuntu1~focal1) ...<br>
            Setting up python3-ruamel.yaml (0.15.89-3build1) ...<br>
            Setting up uhd-host (4.2.0.0-0ubuntu1~focal1) ...<br>
            sysctl: cannot open "/etc/sysctl.d/uhd-usrp2.conf": No such
            file or directory<br>
            Warning: Could not update sysctl settings for network
            devices.<br>
            Processing triggers for man-db (2.9.1-1) ...<br>
          </div>
          <div><br>
          </div>
          <div>I check that everything works with uhd:</div>
          <div><br>
          </div>
          <div>$ uhd_find_devices<br>
            [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
            UHD_4.2.0.0-0ubuntu1~focal1<br>
            --------------------------------------------------<br>
            -- UHD Device 0<br>
            --------------------------------------------------<br>
            Device Address:<br>
            =C2=A0 =C2=A0 serial: 315C6B2<br>
            =C2=A0 =C2=A0 addr: 192.168.40.2<br>
            =C2=A0 =C2=A0 fpga: HG<br>
            =C2=A0 =C2=A0 name:<br>
            =C2=A0 =C2=A0 product: X310<br>
            =C2=A0 =C2=A0 type: x300<br>
          </div>
          <div><br>
          </div>
          <div>BUT, when I try to install the "libuhd-dev" library I get
            the following which=C2=A0</div>
          <div>I suspect wants to install the entire gnuradio system
            from the repository, which as I said in the beginning=C2=A0I =
do
            not want, since I=C2=A0am usually building it from source.</d=
iv>
          <div><br>
          </div>
          <div>$ sudo apt-get install libuhd-dev<br>
            Reading package lists... Done<br>
            Building dependency tree<br>
            Reading state information... Done<br>
            The following additional packages will be installed:<br>
            =C2=A0 freeglut3 gnuradio gnuradio-dev libgnuradio-analog3.8.=
1
            libgnuradio-audio3.8.1 libgnuradio-blocks3.8.1<br>
            =C2=A0 libgnuradio-channels3.8.1 libgnuradio-digital3.8.1
            libgnuradio-dtv3.8.1 libgnuradio-fec3.8.1<br>
            =C2=A0 libgnuradio-fft3.8.1 libgnuradio-filter3.8.1
            libgnuradio-pmt3.8.1 libgnuradio-qtgui3.8.1<br>
            =C2=A0 libgnuradio-runtime3.8.1 libgnuradio-trellis3.8.1
            libgnuradio-uhd3.8.1 libgnuradio-video-sdl3.8.1<br>
            =C2=A0 libgnuradio-vocoder3.8.1 libgnuradio-wavelet3.8.1
            libgnuradio-zeromq3.8.1 libjs-jquery-ui librtlsdr0<br>
            =C2=A0 libuhd3.15.0 libvolk2-bin libvolk2-dev libvolk2.2
            python-matplotlib-data python3-cycler python3-kiwisolver<br>
            =C2=A0 python3-matplotlib python3-networkx python3-opengl
            python3-pyqt5.qtopengl python3-pyqtgraph rtl-sdr<br>
            Suggested packages:<br>
            =C2=A0 gr-fosphor gr-osmosdr libjs-jquery-ui-docs uhd-doc
            libvolk2-doc python-cycler-doc dvipng ffmpeg inkscape<br>
            =C2=A0 ipython3 python-matplotlib-doc python3-cairocffi
            python3-gobject python3-nose python3-tornado<br>
            =C2=A0 texlive-extra-utils texlive-latex-extra ttf-staypuft
            python-networkx-doc python3-gdal python3-pygraphviz<br>
            =C2=A0 | python3-pydot libgle3 python-pyqtgraph-doc<br>
            Recommended packages:<br>
            =C2=A0 python3-qwt-qt5<br>
            The following NEW packages will be installed:<br>
            =C2=A0 freeglut3 gnuradio gnuradio-dev libgnuradio-analog3.8.=
1
            libgnuradio-audio3.8.1 libgnuradio-blocks3.8.1<br>
            =C2=A0 libgnuradio-channels3.8.1 libgnuradio-digital3.8.1
            libgnuradio-dtv3.8.1 libgnuradio-fec3.8.1<br>
            =C2=A0 libgnuradio-fft3.8.1 libgnuradio-filter3.8.1
            libgnuradio-pmt3.8.1 libgnuradio-qtgui3.8.1<br>
            =C2=A0 libgnuradio-runtime3.8.1 libgnuradio-trellis3.8.1
            libgnuradio-uhd3.8.1 libgnuradio-video-sdl3.8.1<br>
            =C2=A0 libgnuradio-vocoder3.8.1 libgnuradio-wavelet3.8.1
            libgnuradio-zeromq3.8.1 libjs-jquery-ui librtlsdr0<br>
            =C2=A0 libuhd-dev libuhd3.15.0 libvolk2-bin libvolk2-dev
            libvolk2.2 python-matplotlib-data python3-cycler<br>
            =C2=A0 python3-kiwisolver python3-matplotlib python3-networkx
            python3-opengl python3-pyqt5.qtopengl<br>
            =C2=A0 python3-pyqtgraph rtl-sdr<br>
            0 upgraded, 37 newly installed, 0 to remove and 0 not
            upgraded.<br>
            Need to get 138 MB of archives.<br>
            After this operation, 493 MB of additional disk space will
            be used.<br>
            Do you want to continue? [Y/n]<br>
          </div>
          <div><br>
            <br>
            Can anyone help with this?</div>
          <div>I want to just update my uhd to the latest version from
            ETTUS repositories and then build gnuradio from source as I
            used to do.</div>
          <div><br>
          </div>
          <div>thanks in advance,</div>
          <div>Achilleas<br>
          </div>
        </div>
      </div>
    </blockquote>
    YOu could perhaps just install the .deb file from here:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://launchpad.net/~ettusre=
search/+archive/ubuntu/uhd/+packages?field.name_filter=3Duhd&amp;field.st=
atus_filter=3Dpublished&amp;field.series_filter=3D">https://launchpad.net=
/~ettusresearch/+archive/ubuntu/uhd/+packages?field.name_filter=3Duhd&amp=
;field.status_filter=3Dpublished&amp;field.series_filter=3D</a><br>
    <br>
    <br>
    I guess APT is satisfying your request from the main repo in
    preference to the PPA.=C2=A0=C2=A0=C2=A0 Not sure why, but installing=
 the .deb
    directly might help?<br>
    <br>
    <br>
  </body>
</html>

--------------FHU5GrmCMYqd0qwlJwDJqF09--

--===============2801091076953219178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2801091076953219178==--
