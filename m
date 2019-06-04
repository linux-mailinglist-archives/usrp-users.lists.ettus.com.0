Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 447093504B
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jun 2019 21:34:05 +0200 (CEST)
Received: from [::1] (port=55724 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYFC7-0001ot-KR; Tue, 04 Jun 2019 15:34:03 -0400
Received: from mail-lj1-f180.google.com ([209.85.208.180]:32793)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <akinsoysal@gmail.com>)
 id 1hYFC3-0001h2-3l
 for usrp-users@lists.ettus.com; Tue, 04 Jun 2019 15:33:59 -0400
Received: by mail-lj1-f180.google.com with SMTP id v29so9577102ljv.0
 for <usrp-users@lists.ettus.com>; Tue, 04 Jun 2019 12:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qXvSrMt0PLxBDXanqgG1s7v07UgzRN5YsW7lTUWEymc=;
 b=TyhhKeQ3GZNmwXkhenN2SuGtI+PsItVUilICrGBBhFzPzVWNQ+qt7Ucf7KfrDrlNOq
 KY0H6tHfqOHia0nfpe42wtQ3stAb+8iOO2rWL3t+txK004AhxIxyfrKxI4YURQ2v8qxn
 VRfGJj1dyVZNJqGs7Mpj1NwgpdLRaVKw2f9tSDIw2i2Z/2m4VxRnY3BLCJq6EdHM4Yxy
 o1Opllvxq3Ngg+rCPyZgjMO/+wyPGAj7Jpayzm4wYXAY4iUKPbHM5alOKveAX2bm/GR/
 LN1FpYg5b+p4DMc7TdC4FEAh3DUgIB6xiPaZkAMpCh2yFbtUeHP/+tGgh4AkeV6k015s
 UD+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qXvSrMt0PLxBDXanqgG1s7v07UgzRN5YsW7lTUWEymc=;
 b=TMXOrVirkmY7bCeVoToIm/0oRG+KYPDM2PK3ky+VjcNTIJrIRovYH3f3le+pYoZs5C
 7l0uxI+t4goGxIc2/RkrXZaaruZpG3EnIVYVhqcVUuzWTmsX0SuGjMppEkEA3bKsXYqz
 WHpwYY+qrTO3GghPbs5pesx8u8FEI6mwHfaDmZJDhod8mD0dQ85CkWo3hf9JpPx71VYk
 er0NJ9lSUbeshZOYgzUmG/dMvZtqRbWloAiljZfpmOC6CtCJcUsF2ArdxC6TCnmQPHXc
 Sz0muHSKhuriohZdDl9Q6ZS47q0fu4ulI2iuzM8ejT85Ndc0OWa9vX3axSIeeKIUUZQZ
 wFWw==
X-Gm-Message-State: APjAAAVsqshWWl1AKUJk3jPgXc/gdePv1zrEvGN1LX1ftDDwl6ayI56b
 pBL7NCaOL271lM8HBaUinoNGp/gpJltkpMiKxpA=
X-Google-Smtp-Source: APXvYqwOKDNX/M6qViyJcirhZWYgqZMQDgedyY9mEMO1pHrKRo6dS7VSb/dtvooNoa+JgcW2FaMcNzKgl98e61AFHoA=
X-Received: by 2002:a2e:2e06:: with SMTP id u6mr15313522lju.54.1559676797672; 
 Tue, 04 Jun 2019 12:33:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzRrg1aWS=EzY-Sz4G8Lt90mZXXtYPVtxXWEWrOmHh-gLffjQ@mail.gmail.com>
 <CAFzRrg0T_6uXrrrq7-OuYm4VhV-=C_HadLpx_CPBtM3yc+p4Gw@mail.gmail.com>
 <CAMBL+k3Q=QJXuPouE+Bi4mz4jgALnNNGOtcru3rfxAWu=eURYg@mail.gmail.com>
In-Reply-To: <CAMBL+k3Q=QJXuPouE+Bi4mz4jgALnNNGOtcru3rfxAWu=eURYg@mail.gmail.com>
Date: Tue, 4 Jun 2019 22:33:03 +0300
Message-ID: <CAFzRrg0qN9iYcAm1YwgRQH8Jf1GPMStXarDwuVp+M-qWr-YwSg@mail.gmail.com>
To: Nicole Bienert <nlbpsu@gmail.com>
Subject: Re: [USRP-users] USRP X310 PCIe connection Driver Problem
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: akin soysal via USRP-users <usrp-users@lists.ettus.com>
Reply-To: akin soysal <akinsoysal@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2468166654244390039=="
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

--===============2468166654244390039==
Content-Type: multipart/alternative; boundary="0000000000007d6145058a848dde"

--0000000000007d6145058a848dde
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks Nicole. We solved the problem by installing centos 7.0. It performs
a lot better with real time constraints.

Ak=C4=B1n

4 Haz 2019 Sal 01:40 tarihinde Nicole Bienert <nlbpsu@gmail.com> =C5=9Funu =
yazd=C4=B1:

> Hi,
>
> I was having the same problem, but I figured it out. Shut everything down=
,
> then turn on the SDR first and the computer second. Next type sudo
> /usr/local/bin/niusrprio_pcie *stop*. Do not type start before using the
> stop command. If you type start then later type stop, it still won't work=
.
> I'm guessing that the computer attempts to connect to the device over PCI=
e
> upon start up, but doesn't do so correctly, so you have to stop that
> process before doing anything else. Don't forget use the stop command whe=
n
> you are done with the USRP, before turning your computer off. Below are t=
he
> commands, and after that is an instruction set for getting everything
> working from scratch.
>
> Here are the commands for what works:
> radioglaciology@radioglaciology-Precision-7730:~$ *sudo
> /usr/local/bin/niusrprio_pcie stop*
> [sudo] password for radioglaciology:
> Stopping: niusrpriorpc
> Unloading: niusrpriok NiRioSrv
>
> radioglaciology@radioglaciology-Precision-7730:~$ *sudo
> /usr/local/bin/niusrprio_pcie start*
> Making sure drivers are up to date...
> Module nikal is up-to-date
> Module nibds is up-to-date
> Module nistreamk is up-to-date
> Module NiRioSrv is up-to-date
> Module niusrpriok is up-to-date
> Loading: NiRioSrv niusrpriok
> Starting: niusrpriorpc
>
> radioglaciology@radioglaciology-Precision-7730:~$ *sudo
> /usr/local/bin/niusrprio_pcie status*
> Modules Loaded: nikal nibds nistreamk NiRioSrv niusrpriok
> Server: niusrpriorpc
>
> radioglaciology@radioglaciology-Precision-7730:~$ *uhd_find_devices*
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.14.1.HEAD-0-g5491b80e
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 318EFCA
>     fpga: HG
>     name:
>     product: X310
>     resource: RIO0
>     type: x300
>
>
> radioglaciology@radioglaciology-Precision-7730:~$ *uhd_usrp_probe*
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.14.1.HEAD-0-g5491b80e
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
> [INFO] [X300] Using LVBITX bitfile /usr/local/share/uhd/images/
> usrp_x310_fpga_HG.lvbitx...
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1296 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1304 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001=
)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001=
)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
>   _____________________________________________________
>  /
> |       Device: X-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: X310
> ****** truncated output*******
>
> Here's what was happening before when things weren't working:
> radioglaciology@radioglaciology-Precision-7730:~$ *uhd_find_devices*
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.14.1.HEAD-0-g5491b80e
> No UHD Devices Found
>
> radioglaciology@radioglaciology-Precision-7730:~$ *sudo
> /usr/local/bin/niusrprio_pcie start*
> Making sure drivers are up to date...
> Module nikal is up-to-date
> Module nibds is up-to-date
> Module nistreamk is up-to-date
> Module NiRioSrv is up-to-date
> Module niusrpriok is up-to-date
> Loading: NiRioSrv niusrpriok
> Starting: niusrpriorpc
>
> radioglaciology@radioglaciology-Precision-7730:~$* sudo
> /usr/local/bin/niusrprio_pcie status*
> Modules Loaded: nikal nibds nistreamk NiRioSrv niusrpriok
> Server: niusrpriorpc
>
> radioglaciology@radioglaciology-Precision-7730:~$ *uhd_find_devices*
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.14.1.HEAD-0-g5491b80e
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial:
>     fpga: HG
>     name:
>     product: X310
>     resource: RIO0
>     type: x300
>
> radioglaciology@radioglaciology-Precision-7730:~$ *uhd_usrp_probe
> --args=3D"resource=3DRIO0"*
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.14.1.HEAD-0-g5491b80e
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
> [INFO] [X300] Using LVBITX bitfile /usr/local/share/uhd/images/
> usrp_x310_fpga_HG.lvbitx...
> Error: RuntimeError: x300_impl: Could not initialize RIO session. Unknown
> error. (Error code -63150)
>
>
> For anyone who navigates to this thread, here are full instructions for
> setting up your computer and connecting to the USRP X310 from scratch on
> Ubuntu:
>
>
>    1.
>
>    Follow the instructions here to download uhd, fpga images, and
>    gnuradio. Follow all the instructions, and install everything.
>    <https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Too=
lchain_(UHD_and_GNU_Radio)_on_Linux>
>    1.
>
>
>       https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_T=
oolchain_(UHD_and_GNU_Radio)_on_Linux
>       2.
>
>    Install the daughterboards in the x310 following the instructions on
>    the link below. Stop after step 11.
>    1.
>
>
>       https://kb.ettus.com/USRP_X_Series_Quick_Start_(Daughterboard_Insta=
llation)
>       3.
>
>    If you version of linux doesn=E2=80=99t have the ifconfig command, get=
 it.
>    1.
>
>       sudo apt install net-tools
>       4.
>
>    Use ifconfig to check the name of your ethernet port. Mine is called
>    eno1, but my other computers are enp0s31f6 and enx00051bb16fc3.
>
> radioglaciology@radioglaciology-Precision-7730:~$ ifconfig
>
> eno1: flags=3D4099<UP,BROADCAST,MULTICAST>  mtu 1500
>
>        ether c8:f7:50:71:9d:e9  txqueuelen 1000 (Ethernet)
>
>        RX packets 0  bytes 0 (0.0 B)
>
>        RX errors 0  dropped 0 overruns 0  frame 0
>
>        TX packets 0  bytes 0 (0.0 B)
>
>        TX errors 0  dropped 0 overruns 0  carrier 0 collisions 0
>
>        device interrupt 16  memory 0xa0400000-a0420000
>
> lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
>
>        inet 127.0.0.1  netmask 255.0.0.0
>
>        inet6 ::1  prefixlen 128  scopeid 0x10<host>
>
>        loop  txqueuelen 1000  (Local Loopback)
>
>        RX packets 3599  bytes 528176 (528.1 KB)
>
>        RX errors 0  dropped 0 overruns 0  frame 0
>
>        TX packets 3599  bytes 528176 (528.1 KB)
>
>        TX errors 0  dropped 0 overruns 0  carrier 0 collisions 0
>
> wlp110s0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>
>        inet 10.34.203.93  netmask 255.255.240.0  broadcast 10.34.207.255
>
>        inet6 fe80::b9f3:8979:f1b1:413  prefixlen 64 scopeid 0x20<link>
>
>        ether a4:fc:77:4e:2b:29  txqueuelen 1000 (Ethernet)
>
>        RX packets 121435  bytes 53465555 (53.4 MB)
>
>        RX errors 0  dropped 0 overruns 0  frame 0
>
>        TX packets 16591  bytes 12636191 (12.6 MB)
>
>        TX errors 0  dropped 0 overruns 0  carrier 0 collisions 0
>
>    1.
>
>    Change your computer=E2=80=99s ethernet ip address so that it is compa=
tible
>    with the default IP address of the x310. The x310=E2=80=99s ip address=
 is
>    192.168.10.2, and your computer must use the same first 3 numbers
>    (192.168.10.X). Insert your ethernet name as determined from the previ=
ous
>    step.
>    1.
>
>       sudo ifconfig eno1 192.168.10.1 netmask 255.255.255.0 up
>       2.
>
>    Check that the device is connected over ethernet.
>    1.
>
>       ping 192.168.10.2
>       3.
>
>    The FPGA images on the USRP are almost certainly out of date, so you
>    need to update them.
>    1.
>
>       You should have downloaded the FPGA images in step 1, but if not,
>       type: uhd_images_downloader . This will put the FPGA images in the
>       folder /usr/local/share/uhd/images.
>       2.
>
>       Now update the images on the x310 with the command: uhd_image_loade=
r
>       --args=3D"type=3Dx300,addr=3D192.168.10.2,fpga=3DHG"
>       4.
>
>    Restart the USRP, and everything should be working now. Use the
>    following commands to check that it is working:
>    1.
>
>       Check that the device can be detected. uhd_find_devices
>       2.
>
>       The details of your device should appear with this command. It is a
>       good test that everything is working properly if this doesn=E2=80=
=99t throw an
>       error. uhd_usrp_probe
>       3.
>
>       Connect an antenna to RX2 on RFA and check that the USRP can
>       function as a spectrum analyzer: uhd_fft --ant RX2
>       5.
>
>    Once you have verified that the hardware and software are both
>    working, we can proceed to using the PCIe interface. First, download t=
he NI
>    PCIe drivers from here:
>    1.
>
>       http://files.ettus.com/manual/page_ni_rio_kernel.html
>       2.
>
>       Extract the files tar zxf niusrprio-installer-18.0.0.tar.gz
>       3.
>
>       Change to the extracted file=E2=80=99s directory cd niusrprio_insta=
ller
>       4.
>
>       Install ./INSTALL
>
>
> *********Here is where I got it to work from trying things rather than
> following other instructions. I tried a lot of different things, so I=E2=
=80=99m not
> entirely sure, but I think this is what fixed it. See next section for
> other things I tried. ***********
>
>
>    1.
>
>    The PCIe interface/cable cannot be plugged in while either the USRP or
>    host computer are on, so turn both devices off. The order below is
>    important!
>    1.
>
>       Plug in PCIe cable
>       2.
>
>       Turn on SDR
>       3.
>
>       Turn on Computer
>       2.
>
>    Connect over PCIe. You must use the stop command before the start
>    command. It seems that the computer attempts to connect the USRP over =
PCIe
>    when it boots, but does so incorrectly. You have to stop this process
>    before you can start the correct PCIe connection. Use the following
>    commands in this order:
>    1.
>
>       sudo /usr/local/bin/niusrprio_pcie stop
>       2.
>
>       sudo /usr/local/bin/niusrprio_pcie start
>       3.
>
>       sudo /usr/local/bin/niusrprio_pcie status
>       3.
>
>    Check that the usrp can be detected over PCIe. It should say that the
>    resource is RIO0, but if it is something different, adjust that field =
in
>    step 13.
>    1.
>
>       uhd_find_devices
>       4.
>
>    Load the .lvbitx images onto the USRP FPGA. The .lvbitx images are for
>    PCIe connection and the .bit are for other interfaces.
>    1.
>
>       uhd_image_loader --args=3D"type=3Dx300,RESOURCE=3DRIO0,fpga=3DHG"
>       --fpga-path=3D"/usr/local/share/uhd/images/usrp_x310_fpga_HG.lvbitx
>       5.
>
>    You need to restart the SDR for the FPGA image to take effect, but you
>    must always turn off the computer before the SDR and stop the NI PCIe
>    connection, so follow these steps to shut everything down:
>    1.
>
>       Before turning off or disconnecting the USRP, you must always stop
>       the PCIe connection or else the system could become unstable: sudo
>       /usr/local/bin/niusrprio_pcie stop
>       2.
>
>       Turn off the SDR
>       3.
>
>       Turn off your computer
>       6.
>
>    Repeat step 10 and 11 to turn everything on again.
>    7.
>
>    It should work now. This can be tested by repeating step 8.
>
>
> I believe those are the things that made my x310 PCIe connection work, bu=
t
> here are other things I recall trying which may have helped solve the
> problem:
>
>    1.
>
>    I don=E2=80=99t think this should be done, but I ran these lines:
>    1.
>
>       http://files.ettus.com/manual/page_install.html
>       1.
>
>          sudo add-apt-repository ppa:ettusresearch/uhd
>          2.
>
>          sudo apt-get update
>          3.
>
>          sudo apt-get install libuhd-dev libuhd003 uhd-host
>          2.
>
>    Fix gcc?
>    1.
>
>
>       https://stackoverflow.com/questions/48398475/fail-to-install-gcc-4-=
9-in-ubuntu17-04
>
>
> mkdir ~/Downloads/gcc-4.9-deb && cd ~/Downloads/gcc-4.9-deb
>
> wget http://launchpadlibrarian.net/247707088/libmpfr4_3.1.4-1_amd64.deb
>
> wget
> http://launchpadlibrarian.net/253728424/libasan1_4.9.3-13ubuntu2_amd64.de=
b
>
> wget
> http://launchpadlibrarian.net/253728426/libgcc-4.9-dev_4.9.3-13ubuntu2_am=
d64.deb
>
> wget
> http://launchpadlibrarian.net/253728314/gcc-4.9-base_4.9.3-13ubuntu2_amd6=
4.deb
>
> wget
> http://launchpadlibrarian.net/253728399/cpp-4.9_4.9.3-13ubuntu2_amd64.deb
>
> wget
> http://launchpadlibrarian.net/253728404/gcc-4.9_4.9.3-13ubuntu2_amd64.deb
>
> wget
> http://launchpadlibrarian.net/253728432/libstdc++-4.9-dev_4.9.3-13ubuntu2=
_amd64.deb
>
> wget
> http://launchpadlibrarian.net/253728401/g++-4.9_4.9.3-13ubuntu2_amd64.deb
>
> sudo dpkg -i gcc-4.9-base_4.9.3-13ubuntu2_amd64.deb
>
> sudo dpkg -i libmpfr4_3.1.4-1_amd64.deb
>
> sudo dpkg -i libasan1_4.9.3-13ubuntu2_amd64.deb
>
> sudo dpkg -i libgcc-4.9-dev_4.9.3-13ubuntu2_amd64.deb
>
> sudo dpkg -i cpp-4.9_4.9.3-13ubuntu2_amd64.deb
>
> sudo dpkg -i gcc-4.9_4.9.3-13ubuntu2_amd64.deb
>
> sudo dpkg -i libstdc++-4.9-dev_4.9.3-13ubuntu2_amd64.deb
>
> sudo dpkg -i g++-4.9_4.9.3-13ubuntu2_amd64.deb
>
>
> My hardware setup uses a laptop:
> Computer: Dell Precision 7730 (Laptop)
> XEON
> 32GB RAM
> 1TB SSD (EVO 970)
> Internal Intel GPU
> Note that the Dell Precision thunderbolt 3 ports each use 4 PCIe lanes
> (some laptops only use 2 which won't work)
> Connection:
> Thunderbolt 3<->PCIe
>
> https://www.amazon.com/Akitio-Node-Thunderbolt3-Windows-Compatible/dp/B06=
XKKSNTS
> https://www.akitio.com/expansion/node-lite
> Note that only <0.5m thunderbolt 3 cables provide the full BW. I had to
> update the BIOS.
> Ettus PCIe card: https://www.ettus.com/all-products/pcie-kit/
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> On Tue, Mar 5, 2019 at 3:43 AM akin soysal via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> OK, so I did manage to debug it further by setting the
>> ENABLE_EXTENDED_ERROR_INFO flag to true. It seems like the
>> nirio_driver_iface::rio_ioctl function is returning 52003 error.
>>
>> uhd_usrp_probe --args "type=3Dx300,resource=3DRIO0,fpga=3DHG"
>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>> UHD_3.13.1.HEAD-0-gbbce3e45
>> [INFO] [NIRIO] rpc_client stopping...
>> [INFO] [NIRIO] rpc_client stopped.
>> ERROR: The following function call returned status code -52003
>> nirio_driver_iface::rio_ioctl(_device_handle, NIRIO_IOCTL_POST_OPEN,
>> NULL, 0, NULL, 0)
>> /home/ulak/uhd/uhd/host/lib/transport/nirio/niriok_proxy_impl_v1.cpp:438
>> [INFO] [NIRIO] rpc_client stopping...
>> [INFO] [NIRIO] rpc_client stopped.
>> ERROR: The following function call returned status code -52003
>> nirio_driver_iface::rio_ioctl(_device_handle, NIRIO_IOCTL_POST_OPEN,
>> NULL, 0, NULL, 0)
>> /home/ulak/uhd/uhd/host/lib/transport/nirio/niriok_proxy_impl_v1.cpp:438
>> [INFO] [X300] X300 initialization sequence...
>> [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
>> ERROR: The following function call returned status code -52003
>> nirio_driver_iface::rio_ioctl(_device_handle, NIRIO_IOCTL_POST_OPEN,
>> NULL, 0, NULL, 0)
>> /home/ulak/uhd/uhd/host/lib/transport/nirio/niriok_proxy_impl_v1.cpp:438
>> [INFO] [NIRIO] rpc_client stopping...
>> [INFO] [NIRIO] rpc_client stopped.
>> [INFO] [X300] Using LVBITX bitfile /home/ulak/usrp_x310_fpga_HG.lvbitx..=
.
>> ERROR: The following function call returned status code -52003
>> nirio_driver_iface::rio_ioctl(_device_handle, NIRIO_IOCTL_POST_OPEN,
>> NULL, 0, NULL, 0)
>> /home/ulak/uhd/uhd/host/lib/transport/nirio/niriok_proxy_impl_v1.cpp:438
>> [INFO] [NIRIO] rpc_client stopping...
>> [INFO] [NIRIO] rpc_client stopped.
>> ERROR: The following function call returned status code -63150
>> _rpc_client.niusrprio_open_session( _resource_name, bitfile_path,
>> signature, download_fpga)
>> /home/ulak/uhd/uhd/host/lib/transport/nirio/niusrprio_session.cpp:80
>> ERROR: The following function call returned status code -63150
>> mb.rio_fpga_interface->open(lvbitx, dev_addr.has_key("download-fpga"))
>> /home/ulak/uhd/uhd/host/lib/usrp/x300/x300_impl.cpp:609
>> [INFO] [NIRIO] rpc_client stopping...
>> [INFO] [NIRIO] rpc_client stopped.
>> Error: RuntimeError: x300_impl: Could not initialize RIO session. Unknow=
n
>> error. (Error code -63150)
>>
>>
>>
>>
>>
>> On Tue, Mar 5, 2019 at 1:32 PM akin soysal <akinsoysal@gmail.com> wrote:
>>
>>> Dear all,
>>>
>>> I am trying to connect over PCIe to my USRP X310. I have installed the
>>> latest drivers niusrprio-installer-18.0.0.tar.gz and I am starting the
>>> PCIe connection with the following command:
>>>
>>> sudo /usr/local/bin/niusrprio_pcie start
>>> Making sure drivers are up to date...
>>> Module nikal is up-to-date
>>> Module nibds is up-to-date
>>> Module nistreamk is up-to-date
>>> Module NiRioSrv is up-to-date
>>> Module niusrpriok is up-to-date
>>> Loading: NiRioSrv niusrpriok
>>> Starting: niusrpriorpc
>>>
>>> Then I try the uhd_usrp_probe:
>>>
>>> uhd_usrp_probe --args "type=3Dx300,resource=3DRIO0"
>>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>>> UHD_3.13.1.HEAD-0-gbbce3e45
>>> [INFO] [NIRIO] rpc_client stopping...
>>> [INFO] [NIRIO] rpc_client stopped.
>>> [INFO] [NIRIO] rpc_client stopping...
>>> [INFO] [NIRIO] rpc_client stopped.
>>> [INFO] [X300] X300 initialization sequence...
>>> [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
>>> [INFO] [NIRIO] rpc_client stopping...
>>> [INFO] [NIRIO] rpc_client stopped.
>>> [INFO] [X300] Using LVBITX bitfile /usr/local/share/uhd/images/
>>> usrp_x310_fpga_HG.lvbitx...
>>> [INFO] [NIRIO] rpc_client stopping...
>>> [INFO] [NIRIO] rpc_client stopped.
>>> [INFO] [NIRIO] rpc_client stopping...
>>> [INFO] [NIRIO] rpc_client stopped.
>>> Error: RuntimeError: x300_impl: Could not initialize RIO session.
>>> Unknown error. (Error code -63150)
>>>
>>> I have another PC and USRP x310 and this is working fine. I have
>>> followed the exact same steps and there isn't any issue. What could be =
the
>>> problem and how can I debug this further?
>>>
>>> Regards,
>>> Ak=C4=B1n
>>>
>>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000007d6145058a848dde
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">Thanks N=
icole. We solved the problem by installing centos 7.0. It performs a lot be=
tter with real time constraints.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Ak=C4=B1n</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">4 Haz 2019 Sal 01:40 tarihinde Nicole Bienert &lt;=
<a href=3D"mailto:nlbpsu@gmail.com">nlbpsu@gmail.com</a>&gt; =C5=9Funu yazd=
=C4=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr"><div><span style=3D"font-family:arial,sans-serif"><font size=3D"2"=
>Hi, <br></font></span></div><div><span style=3D"font-family:arial,sans-ser=
if"><font size=3D"2"><br></font></span></div><div><span style=3D"font-famil=
y:arial,sans-serif"><font size=3D"2">I
 was having the same problem, but I figured it out. Shut everything=20
down, then turn on the SDR first and the computer second. Next type sudo
 /usr/local/bin/niusrprio_pcie <b>stop</b>. Do not type start before=20
using the stop command. If you type start then later type stop, it still
 won&#39;t work. I&#39;m guessing that the computer attempts to connect to =
the=20
device over PCIe upon start up, but doesn&#39;t do so correctly, so you hav=
e
 to stop that process before doing anything else. Don&#39;t forget use the=
=20
stop command when you are done with the USRP, before turning your=20
computer off. Below are the commands, and after that is an instruction=20
set for getting everything working from scratch. <br></font></span></div><d=
iv><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><br></font=
></span></div><div><span style=3D"font-family:arial,sans-serif"><font size=
=3D"2">Here are the commands for what works:</font></span></div><div style=
=3D"margin-left:40px"><span style=3D"font-family:arial,sans-serif"><font si=
ze=3D"2">radioglaciology@</font></span><span style=3D"font-family:arial,san=
s-serif"><font size=3D"2">radioglaciology-Precision-7730</font></span><span=
 style=3D"font-family:arial,sans-serif"><font size=3D"2">:~$ <b>sudo /usr/l=
ocal/bin/niusrprio_pcie stop</b><br>[sudo] password for radioglaciology: <b=
r>Stopping: niusrpriorpc<br>Unloading: niusrpriok NiRioSrv <br></font></spa=
n></div><div style=3D"margin-left:40px"><span style=3D"font-family:arial,sa=
ns-serif"><font size=3D"2"><br></font></span></div><div style=3D"margin-lef=
t:40px"><span style=3D"font-family:arial,sans-serif"><font size=3D"2">radio=
glaciology@</font></span><span style=3D"font-family:arial,sans-serif"><font=
 size=3D"2">radioglaciology-Precision-7730</font></span><span style=3D"font=
-family:arial,sans-serif"><font size=3D"2">:~$ <b>sudo /usr/local/bin/niusr=
prio_pcie start</b><br>Making sure drivers are up to date...<br>Module nika=
l is up-to-date<br>Module nibds is up-to-date<br>Module nistreamk is up-to-=
date<br>Module NiRioSrv is up-to-date<br>Module niusrpriok is up-to-date<br=
>Loading: NiRioSrv niusrpriok <br>Starting: niusrpriorpc</font></span></div=
><div style=3D"margin-left:40px"><span style=3D"font-family:arial,sans-seri=
f"><font size=3D"2"><br></font></span></div><div style=3D"margin-left:40px"=
><span style=3D"font-family:arial,sans-serif"><font size=3D"2">radioglaciol=
ogy@</font></span><span style=3D"font-family:arial,sans-serif"><font size=
=3D"2">radioglaciology-Precision-7730</font></span><span style=3D"font-fami=
ly:arial,sans-serif"><font size=3D"2">:~$ <b>sudo /usr/local/bin/niusrprio_=
pcie status</b><br>Modules Loaded: nikal nibds nistreamk NiRioSrv niusrprio=
k <br>Server: niusrpriorpc</font></span></div><div style=3D"margin-left:40p=
x"><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><br></font=
></span></div><div style=3D"margin-left:40px"><span style=3D"font-family:ar=
ial,sans-serif"><font size=3D"2">radioglaciology@</font></span><span style=
=3D"font-family:arial,sans-serif"><font size=3D"2">radioglaciology-Precisio=
n-7730</font></span><span style=3D"font-family:arial,sans-serif"><font size=
=3D"2">:~$ <b>uhd_find_devices</b><br>[INFO] [UHD] linux; GNU C++ version 7=
.4.0; Boost_106501; UHD_3.14.1.HEAD-0-g5491b80e<br>------------------------=
------</font></span><span style=3D"font-family:arial,sans-serif"><font size=
=3D"2">--------------------<br>-- UHD Device 0<br>-------------------------=
-----</font></span><span style=3D"font-family:arial,sans-serif"><font size=
=3D"2">--------------------<br>Device Address:<br>=C2=A0 =C2=A0 serial: 318=
EFCA<br>=C2=A0 =C2=A0 fpga: HG<br>=C2=A0 =C2=A0 name: <br>=C2=A0 =C2=A0 pro=
duct: X310<br>=C2=A0 =C2=A0 resource: RIO0<br>=C2=A0 =C2=A0 type: x300<br><=
br><br>radioglaciology@</font></span><span style=3D"font-family:arial,sans-=
serif"><font size=3D"2">radioglaciology-Precision-7730</font></span><span s=
tyle=3D"font-family:arial,sans-serif"><font size=3D"2">:~$ <b>uhd_usrp_prob=
e</b><br>[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.=
1.HEAD-0-g5491b80e<br>[INFO] [X300] X300 initialization sequence...<br>[INF=
O] [X300] Connecting to niusrpriorpc at localhost:5444...<br>[INFO] [X300] =
Using LVBITX bitfile /usr/local/share/uhd/images/</font></span><span style=
=3D"font-family:arial,sans-serif"><font size=3D"2">usrp_x310_fpga_HG.lvbitx=
...<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[INFO] [GPS] Found an inter=
nal GPSDO: LC_XO, Firmware Rev 0.929b<br>[INFO] [0/DmaFIFO_0] Initializing =
block control (NOC ID: 0xF1F0D00000000000)<br>[INFO] [0/DmaFIFO_0] BIST pas=
sed (Throughput: 1296 MB/s)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput=
: 1304 MB/s)<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12=
AD100000000001)<br>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0=
x12AD100000000001)<br>[INFO] [0/DDC_0] Initializing block control (NOC ID: =
0xDDC0000000000000)<br>[INFO] [0/DDC_1] Initializing block control (NOC ID:=
 0xDDC0000000000000)<br>[INFO] [0/DUC_0] Initializing block control (NOC ID=
: 0xD0C0000000000000)<br>[INFO] [0/DUC_1] Initializing block control (NOC I=
D: 0xD0C0000000000000)<br>=C2=A0 ______________________________</font></spa=
n><span style=3D"font-family:arial,sans-serif"><font size=3D"2">___________=
____________<br>=C2=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Device: X-Series Device<b=
r>| =C2=A0 =C2=A0 ______________________________</font></span><span style=
=3D"font-family:arial,sans-serif"><font size=3D"2">_______________________<=
br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: X310<br></fo=
nt></span></div><div style=3D"margin-left:40px"><span style=3D"font-family:=
arial,sans-serif"><font size=3D"2">****** truncated output*******<br></font=
></span></div><span style=3D"font-family:arial,sans-serif"><font size=3D"2"=
><br></font></span><div><span style=3D"font-family:arial,sans-serif"><font =
size=3D"2">Here&#39;s what was happening before when things weren&#39;t wor=
king:<br></font></span></div><div><div style=3D"margin-left:40px"><span sty=
le=3D"font-family:arial,sans-serif"><font size=3D"2">radioglaciology@</font=
></span><span style=3D"font-family:arial,sans-serif"><font size=3D"2">radio=
glaciology-Precision-7730</font></span><span style=3D"font-family:arial,san=
s-serif"><font size=3D"2">:~$ <b>uhd_find_devices</b><br></font></span></di=
v><div style=3D"margin-left:40px"><span style=3D"font-family:arial,sans-ser=
if"><font size=3D"2">[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_10650=
1; UHD_3.14.1.HEAD-0-g5491b80e<br>No UHD Devices Found</font></span></div><=
/div><div style=3D"margin-left:40px"><span style=3D"font-family:arial,sans-=
serif"><font size=3D"2"><br></font></span></div><div style=3D"margin-left:4=
0px"><span style=3D"font-family:arial,sans-serif"><font size=3D"2">radiogla=
ciology@</font></span><span style=3D"font-family:arial,sans-serif"><font si=
ze=3D"2">radioglaciology-Precision-7730</font></span><span style=3D"font-fa=
mily:arial,sans-serif"><font size=3D"2">:~$ <b>sudo /usr/local/bin/niusrpri=
o_pcie start</b><br>Making sure drivers are up to date...<br>Module nikal i=
s up-to-date<br>Module nibds is up-to-date<br>Module nistreamk is up-to-dat=
e<br>Module NiRioSrv is up-to-date<br>Module niusrpriok is up-to-date<br>Lo=
ading: NiRioSrv niusrpriok <br>Starting: niusrpriorpc</font></span></div><d=
iv style=3D"margin-left:40px"><span style=3D"font-family:arial,sans-serif">=
<font size=3D"2"><br></font></span></div><div style=3D"margin-left:40px"><s=
pan style=3D"font-family:arial,sans-serif"><font size=3D"2">radioglaciology=
@</font></span><span style=3D"font-family:arial,sans-serif"><font size=3D"2=
">radioglaciology-Precision-7730</font></span><span style=3D"font-family:ar=
ial,sans-serif"><font size=3D"2">:~$<b> sudo /usr/local/bin/niusrprio_pcie =
status</b><br>Modules Loaded: nikal nibds nistreamk NiRioSrv niusrpriok <br=
>Server: niusrpriorpc</font></span></div><div style=3D"margin-left:40px"><s=
pan style=3D"font-family:arial,sans-serif"><font size=3D"2"><br></font></sp=
an></div><div style=3D"margin-left:40px"><span style=3D"font-family:arial,s=
ans-serif"><font size=3D"2">radioglaciology@</font></span><span style=3D"fo=
nt-family:arial,sans-serif"><font size=3D"2">radioglaciology-Precision-7730=
</font></span><span style=3D"font-family:arial,sans-serif"><font size=3D"2"=
>:~$ <b>uhd_find_devices</b><br>[INFO] [UHD] linux; GNU C++ version 7.4.0; =
Boost_106501; UHD_3.14.1.HEAD-0-g5491b80e<br>------------------------------=
</font></span><span style=3D"font-family:arial,sans-serif"><font size=3D"2"=
>--------------------<br>-- UHD Device 0<br>------------------------------<=
/font></span><span style=3D"font-family:arial,sans-serif"><font size=3D"2">=
--------------------<br>Device Address:<br>=C2=A0 =C2=A0 serial: <br>=C2=A0=
 =C2=A0 fpga: HG<br>=C2=A0 =C2=A0 name: <br>=C2=A0 =C2=A0 product: X310<br>=
=C2=A0 =C2=A0 resource: RIO0<br>=C2=A0 =C2=A0 type: x300</font></span></div=
><div style=3D"margin-left:40px"><span style=3D"font-family:arial,sans-seri=
f"><font size=3D"2"><br></font></span></div><div style=3D"margin-left:40px"=
><span style=3D"font-family:arial,sans-serif"><font size=3D"2">radioglaciol=
ogy@</font></span><span style=3D"font-family:arial,sans-serif"><font size=
=3D"2">radioglaciology-Precision-7730</font></span><span style=3D"font-fami=
ly:arial,sans-serif"><font size=3D"2">:~$ <b>uhd_usrp_probe --args=3D&quot;=
resource=3DRIO0&quot;</b><br>[INFO] [UHD] linux; GNU C++ version 7.4.0; Boo=
st_106501; UHD_3.14.1.HEAD-0-g5491b80e<br>[INFO] [X300] X300 initialization=
 sequence...<br>[INFO] [X300] Connecting to niusrpriorpc at localhost:5444.=
..<br>[INFO] [X300] Using LVBITX bitfile /usr/local/share/uhd/images/</font=
></span><span style=3D"font-family:arial,sans-serif"><font size=3D"2">usrp_=
x310_fpga_HG.lvbitx...<br>Error: RuntimeError: x300_impl: Could not initial=
ize RIO session. Unknown error. (Error code -63150)</font></span></div><div=
 style=3D"margin-left:40px"><span style=3D"font-family:arial,sans-serif"><f=
ont size=3D"2"><br></font></span></div><div style=3D"margin-left:40px"><spa=
n style=3D"font-family:arial,sans-serif"><font size=3D"2"><br></font></span=
></div><div><span style=3D"font-family:arial,sans-serif"><font size=3D"2">F=
or
 anyone who navigates to this thread, here are full instructions for=20
setting up your computer and connecting to the USRP X310 from scratch on
 Ubuntu:</font></span></div><span style=3D"font-family:arial,sans-serif"><f=
ont size=3D"2"><br id=3D"m_-7842221649275728294gmail-docs-internal-guid-323=
ddddd-7fff-45a7-933b-8e73dfa8233e"></font></span><ol style=3D"margin-top:0p=
t;margin-bottom:0pt"><li dir=3D"ltr" style=3D"list-style-type:decimal;color=
:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:normal;=
font-variant:normal;text-decoration:none;vertical-align:baseline;white-spac=
e:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-=
bottom:0pt"><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><=
span style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400=
;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:=
baseline;white-space:pre-wrap">Follow the instructions here to download uhd=
, fpga images, and gnuradio. Follow all the instructions, and install every=
thing.</span><a href=3D"https://kb.ettus.com/Building_and_Installing_the_US=
RP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux" style=3D"text-decora=
tion:none" target=3D"_blank" rel=3D"noreferrer"><span style=3D"color:rgb(0,=
0,0);background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap"> </span></a></font></span></p></li><ol style=3D"margin-top:0pt;margin-=
bottom:0pt"><li dir=3D"ltr" style=3D"list-style-type:lower-alpha;color:rgb(=
0,0,0);background-color:transparent;font-weight:400;font-style:normal;font-=
variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre=
-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-botto=
m:0pt"><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><a hre=
f=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Tool=
chain_(UHD_and_GNU_Radio)_on_Linux" style=3D"text-decoration:none" target=
=3D"_blank" rel=3D"noreferrer"><span style=3D"color:rgb(17,85,204);backgrou=
nd-color:transparent;font-weight:400;font-style:normal;font-variant:normal;=
text-decoration:underline;vertical-align:baseline;white-space:pre-wrap">htt=
ps://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(U=
HD_and_GNU_Radio)_on_Linux</span></a></font></span></p></li></ol><li dir=3D=
"ltr" style=3D"list-style-type:decimal;color:rgb(0,0,0);background-color:tr=
ansparent;font-weight:400;font-style:normal;font-variant:normal;text-decora=
tion:none;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" styl=
e=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font=
-family:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);=
background-color:transparent;font-weight:400;font-style:normal;font-variant=
:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">=
Install the daughterboards in the x310 following the instructions on the li=
nk below. Stop after step 11. </span></font></span></p></li><ol style=3D"ma=
rgin-top:0pt;margin-bottom:0pt"><li dir=3D"ltr" style=3D"list-style-type:lo=
wer-alpha;color:rgb(0,0,0);background-color:transparent;font-weight:400;fon=
t-style:normal;font-variant:normal;text-decoration:none;vertical-align:base=
line;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-=
top:0pt;margin-bottom:0pt"><span style=3D"font-family:arial,sans-serif"><fo=
nt size=3D"2"><a href=3D"https://kb.ettus.com/USRP_X_Series_Quick_Start_(Da=
ughterboard_Installation)" style=3D"text-decoration:none" target=3D"_blank"=
 rel=3D"noreferrer"><span style=3D"color:rgb(17,85,204);background-color:tr=
ansparent;font-weight:400;font-style:normal;font-variant:normal;text-decora=
tion:underline;vertical-align:baseline;white-space:pre-wrap">https://kb.ett=
us.com/USRP_X_Series_Quick_Start_(Daughterboard_Installation)</span></a></f=
ont></span></p></li></ol><li dir=3D"ltr" style=3D"list-style-type:decimal;c=
olor:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:nor=
mal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-=
space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt"><span style=3D"font-family:arial,sans-serif"><font size=3D"=
2"><span style=3D"color:rgb(0,0,0);background-color:transparent;font-weight=
:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-al=
ign:baseline;white-space:pre-wrap">If you version of linux doesn=E2=80=99t =
have the ifconfig command, get it.</span></font></span></p></li><ol style=
=3D"margin-top:0pt;margin-bottom:0pt"><li dir=3D"ltr" style=3D"list-style-t=
ype:lower-alpha;color:rgb(0,0,0);background-color:transparent;font-weight:7=
00;font-style:normal;font-variant:normal;text-decoration:none;vertical-alig=
n:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:arial,sans-seri=
f"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transp=
arent;font-weight:700;font-style:normal;font-variant:normal;text-decoration=
:none;vertical-align:baseline;white-space:pre-wrap">sudo apt install net-to=
ols</span></font></span></p></li></ol><li dir=3D"ltr" style=3D"list-style-t=
ype:decimal;color:rgb(0,0,0);background-color:transparent;font-weight:400;f=
ont-style:normal;font-variant:normal;text-decoration:none;vertical-align:ba=
seline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margi=
n-top:0pt;margin-bottom:0pt"><span style=3D"font-family:arial,sans-serif"><=
font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transparen=
t;font-weight:400;font-style:normal;font-variant:normal;text-decoration:non=
e;vertical-align:baseline;white-space:pre-wrap">Use ifconfig to check the n=
ame of your ethernet port. Mine is called eno1, but my other computers are =
enp0s31f6 and enx00051bb16fc3. </span></font></span></p></li></ol><p dir=3D=
"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-lef=
t:72pt"><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><span=
 style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;fon=
t-style:normal;font-variant:normal;text-decoration:none;vertical-align:base=
line;white-space:pre-wrap">radioglaciology@radioglaciology-Precision-7730:~=
$ </span><span style=3D"color:rgb(0,0,0);background-color:transparent;font-=
weight:700;font-style:normal;font-variant:normal;text-decoration:none;verti=
cal-align:baseline;white-space:pre-wrap">ifconfig</span></font></span></p><=
p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;ma=
rgin-left:72pt"><span style=3D"font-family:arial,sans-serif"><font size=3D"=
2"><span style=3D"color:rgb(153,0,255);background-color:transparent;font-we=
ight:400;font-style:normal;font-variant:normal;text-decoration:none;vertica=
l-align:baseline;white-space:pre-wrap">eno1</span><span style=3D"color:rgb(=
0,0,0);background-color:transparent;font-weight:400;font-style:normal;font-=
variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre=
-wrap">: flags=3D4099&lt;UP,BROADCAST,MULTICAST&gt; =C2=A0mtu 1500</span></=
font></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-seri=
f"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transp=
arent;font-weight:400;font-style:normal;font-variant:normal;text-decoration=
:none;vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=C2=A0</sp=
an><span style=3D"color:rgb(0,0,0);background-color:transparent;font-weight=
:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-al=
ign:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><span style=3D=
"color:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:n=
ormal;font-variant:normal;text-decoration:none;vertical-align:baseline;whit=
e-space:pre-wrap">ether c8:f7:50:71:9d:e9 =C2=A0txqueuelen 1000  (Ethernet)=
</span></font></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,=
sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-col=
or:transparent;font-weight:400;font-style:normal;font-variant:normal;text-d=
ecoration:none;vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=
=C2=A0</span><span style=3D"color:rgb(0,0,0);background-color:transparent;f=
ont-weight:400;font-style:normal;font-variant:normal;text-decoration:none;v=
ertical-align:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><spa=
n style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;fo=
nt-style:normal;font-variant:normal;text-decoration:none;vertical-align:bas=
eline;white-space:pre-wrap">RX packets 0 =C2=A0bytes 0 (0.0 B)</span></font=
></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-=
bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-serif"><=
font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transparen=
t;font-weight:400;font-style:normal;font-variant:normal;text-decoration:non=
e;vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=C2=A0</span><=
span style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400=
;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:=
baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><span style=3D"col=
or:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:norma=
l;font-variant:normal;text-decoration:none;vertical-align:baseline;white-sp=
ace:pre-wrap">RX errors 0 =C2=A0dropped 0  overruns 0 =C2=A0frame 0</span><=
/font></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-ser=
if"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:trans=
parent;font-weight:400;font-style:normal;font-variant:normal;text-decoratio=
n:none;vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=C2=A0</s=
pan><span style=3D"color:rgb(0,0,0);background-color:transparent;font-weigh=
t:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-a=
lign:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><span style=
=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap">TX packets 0 =C2=A0bytes 0 (0.0 B)</span></font></span=
></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:=
0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-serif"><font si=
ze=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transparent;font-=
weight:400;font-style:normal;font-variant:normal;text-decoration:none;verti=
cal-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=C2=A0</span><span st=
yle=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;font-s=
tyle:normal;font-variant:normal;text-decoration:none;vertical-align:baselin=
e;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><span style=3D"color:rgb(=
0,0,0);background-color:transparent;font-weight:400;font-style:normal;font-=
variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre=
-wrap">TX errors 0 =C2=A0dropped 0 overruns 0 =C2=A0carrier 0  collisions 0=
</span></font></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,=
sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-col=
or:transparent;font-weight:400;font-style:normal;font-variant:normal;text-d=
ecoration:none;vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=
=C2=A0</span><span style=3D"color:rgb(0,0,0);background-color:transparent;f=
ont-weight:400;font-style:normal;font-variant:normal;text-decoration:none;v=
ertical-align:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><spa=
n style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;fo=
nt-style:normal;font-variant:normal;text-decoration:none;vertical-align:bas=
eline;white-space:pre-wrap">device interrupt 16 =C2=A0memory 0xa0400000-a04=
20000 =C2=A0</span></font></span></p><span style=3D"font-family:arial,sans-=
serif"><font size=3D"2"><br></font></span><p dir=3D"ltr" style=3D"line-heig=
ht:1.38;margin-top:0pt;margin-bottom:0pt;margin-left:72pt"><span style=3D"f=
ont-family:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,=
0);background-color:transparent;font-weight:400;font-style:normal;font-vari=
ant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wra=
p">lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt; =C2=A0mtu 65536</span></font><=
/span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bo=
ttom:0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-serif"><fo=
nt size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transparent;=
font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;=
vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=C2=A0</span><sp=
an style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;f=
ont-style:normal;font-variant:normal;text-decoration:none;vertical-align:ba=
seline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><span style=3D"color=
:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:normal;=
font-variant:normal;text-decoration:none;vertical-align:baseline;white-spac=
e:pre-wrap">inet 127.0.0.1 =C2=A0netmask 255.0.0.0</span></font></span></p>=
<p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;m=
argin-left:72pt"><span style=3D"font-family:arial,sans-serif"><font size=3D=
"2"><span style=3D"color:rgb(0,0,0);background-color:transparent;font-weigh=
t:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-a=
lign:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=C2=A0</span><span style=
=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><span style=3D"color:rgb(0,0=
,0);background-color:transparent;font-weight:400;font-style:normal;font-var=
iant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wr=
ap">inet6 ::1 =C2=A0prefixlen 128 =C2=A0scopeid 0x10&lt;host&gt;</span></fo=
nt></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margi=
n-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-serif"=
><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transpar=
ent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:n=
one;vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=C2=A0</span=
><span style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:4=
00;font-style:normal;font-variant:normal;text-decoration:none;vertical-alig=
n:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><span style=3D"c=
olor:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:nor=
mal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-=
space:pre-wrap">loop =C2=A0txqueuelen 1000 =C2=A0(Local Loopback)</span></f=
ont></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;marg=
in-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-serif=
"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transpa=
rent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:=
none;vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=C2=A0</spa=
n><span style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:=
400;font-style:normal;font-variant:normal;text-decoration:none;vertical-ali=
gn:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><span style=3D"=
color:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:no=
rmal;font-variant:normal;text-decoration:none;vertical-align:baseline;white=
-space:pre-wrap">RX packets 3599 =C2=A0bytes 528176 (528.1 KB)</span></font=
></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-=
bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-serif"><=
font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transparen=
t;font-weight:400;font-style:normal;font-variant:normal;text-decoration:non=
e;vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=C2=A0</span><=
span style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400=
;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:=
baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><span style=3D"col=
or:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:norma=
l;font-variant:normal;text-decoration:none;vertical-align:baseline;white-sp=
ace:pre-wrap">RX errors 0 =C2=A0dropped 0  overruns 0 =C2=A0frame 0</span><=
/font></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-ser=
if"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:trans=
parent;font-weight:400;font-style:normal;font-variant:normal;text-decoratio=
n:none;vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=C2=A0</s=
pan><span style=3D"color:rgb(0,0,0);background-color:transparent;font-weigh=
t:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-a=
lign:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><span style=
=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap">TX packets 3599 =C2=A0bytes 528176 (528.1 KB)</span></=
font></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-seri=
f"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transp=
arent;font-weight:400;font-style:normal;font-variant:normal;text-decoration=
:none;vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=C2=A0</sp=
an><span style=3D"color:rgb(0,0,0);background-color:transparent;font-weight=
:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-al=
ign:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><span style=3D=
"color:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:n=
ormal;font-variant:normal;text-decoration:none;vertical-align:baseline;whit=
e-space:pre-wrap">TX errors 0 =C2=A0dropped 0 overruns 0 =C2=A0carrier 0  c=
ollisions 0</span></font></span></p><span style=3D"font-family:arial,sans-s=
erif"><font size=3D"2"><br></font></span><p dir=3D"ltr" style=3D"line-heigh=
t:1.38;margin-top:0pt;margin-bottom:0pt;margin-left:72pt"><span style=3D"fo=
nt-family:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0=
);background-color:transparent;font-weight:400;font-style:normal;font-varia=
nt:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap=
">wlp110s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; =C2=A0mtu 15=
00</span></font></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-=
top:0pt;margin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:aria=
l,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-c=
olor:transparent;font-weight:400;font-style:normal;font-variant:normal;text=
-decoration:none;vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=
=A0=C2=A0</span><span style=3D"color:rgb(0,0,0);background-color:transparen=
t;font-weight:400;font-style:normal;font-variant:normal;text-decoration:non=
e;vertical-align:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><=
span style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400=
;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:=
baseline;white-space:pre-wrap">inet 10.34.203.93 =C2=A0netmask 255.255.240.=
0 =C2=A0broadcast 10.34.207.255</span></font></span></p><p dir=3D"ltr" styl=
e=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left:72pt"><s=
pan style=3D"font-family:arial,sans-serif"><font size=3D"2"><span style=3D"=
color:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:no=
rmal;font-variant:normal;text-decoration:none;vertical-align:baseline;white=
-space:pre-wrap"> =C2=A0=C2=A0=C2=A0</span><span style=3D"color:rgb(0,0,0);=
background-color:transparent;font-weight:400;font-style:normal;font-variant=
:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">=
=C2=A0=C2=A0=C2=A0 </span><span style=3D"color:rgb(0,0,0);background-color:=
transparent;font-weight:400;font-style:normal;font-variant:normal;text-deco=
ration:none;vertical-align:baseline;white-space:pre-wrap">inet6 fe80::b9f3:=
8979:f1b1:413 =C2=A0prefixlen 64  scopeid 0x20&lt;link&gt;</span></font></s=
pan></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bott=
om:0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-serif"><font=
 size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transparent;fo=
nt-weight:400;font-style:normal;font-variant:normal;text-decoration:none;ve=
rtical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=C2=A0</span><span=
 style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;fon=
t-style:normal;font-variant:normal;text-decoration:none;vertical-align:base=
line;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><span style=3D"color:r=
gb(0,0,0);background-color:transparent;font-weight:400;font-style:normal;fo=
nt-variant:normal;text-decoration:none;vertical-align:baseline;white-space:=
pre-wrap">ether a4:fc:77:4e:2b:29 =C2=A0txqueuelen 1000  (Ethernet)</span><=
/font></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-ser=
if"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:trans=
parent;font-weight:400;font-style:normal;font-variant:normal;text-decoratio=
n:none;vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=C2=A0</s=
pan><span style=3D"color:rgb(0,0,0);background-color:transparent;font-weigh=
t:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-a=
lign:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><span style=
=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap">RX packets 121435 =C2=A0bytes 53465555 (53.4 MB)</span=
></font></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;=
margin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-s=
erif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:tra=
nsparent;font-weight:400;font-style:normal;font-variant:normal;text-decorat=
ion:none;vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=C2=A0<=
/span><span style=3D"color:rgb(0,0,0);background-color:transparent;font-wei=
ght:400;font-style:normal;font-variant:normal;text-decoration:none;vertical=
-align:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><span style=
=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap">RX errors 0 =C2=A0dropped 0  overruns 0 =C2=A0frame 0<=
/span></font></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top=
:0pt;margin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,s=
ans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-colo=
r:transparent;font-weight:400;font-style:normal;font-variant:normal;text-de=
coration:none;vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=
=C2=A0</span><span style=3D"color:rgb(0,0,0);background-color:transparent;f=
ont-weight:400;font-style:normal;font-variant:normal;text-decoration:none;v=
ertical-align:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><spa=
n style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;fo=
nt-style:normal;font-variant:normal;text-decoration:none;vertical-align:bas=
eline;white-space:pre-wrap">TX packets 16591 =C2=A0bytes 12636191 (12.6 MB)=
</span></font></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,=
sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-col=
or:transparent;font-weight:400;font-style:normal;font-variant:normal;text-d=
ecoration:none;vertical-align:baseline;white-space:pre-wrap"> =C2=A0=C2=A0=
=C2=A0</span><span style=3D"color:rgb(0,0,0);background-color:transparent;f=
ont-weight:400;font-style:normal;font-variant:normal;text-decoration:none;v=
ertical-align:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0 </span><spa=
n style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;fo=
nt-style:normal;font-variant:normal;text-decoration:none;vertical-align:bas=
eline;white-space:pre-wrap">TX errors 0 =C2=A0dropped 0 overruns 0 =C2=A0ca=
rrier 0  collisions 0</span></font></span></p><ol style=3D"margin-top:0pt;m=
argin-bottom:0pt" start=3D"5"><li dir=3D"ltr" style=3D"list-style-type:deci=
mal;color:rgb(0,0,0);background-color:transparent;font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0p=
t;margin-bottom:0pt"><span style=3D"font-family:arial,sans-serif"><font siz=
e=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transparent;font-w=
eight:400;font-style:normal;font-variant:normal;text-decoration:none;vertic=
al-align:baseline;white-space:pre-wrap">Change your computer=E2=80=99s ethe=
rnet ip address so that it is compatible with the default IP address of the=
 x310. The x310=E2=80=99s ip address is 192.168.10.2, and your computer mus=
t use the same first 3 numbers (192.168.10.X). Insert your ethernet name as=
 determined from the previous step.</span></font></span></p></li><ol style=
=3D"margin-top:0pt;margin-bottom:0pt"><li dir=3D"ltr" style=3D"list-style-t=
ype:lower-alpha;color:rgb(0,0,0);background-color:transparent;font-weight:7=
00;font-style:normal;font-variant:normal;text-decoration:none;vertical-alig=
n:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:arial,sans-seri=
f"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transp=
arent;font-weight:700;font-style:normal;font-variant:normal;text-decoration=
:none;vertical-align:baseline;white-space:pre-wrap">sudo ifconfig </span><s=
pan style=3D"color:rgb(153,0,255);background-color:transparent;font-weight:=
700;font-style:normal;font-variant:normal;text-decoration:none;vertical-ali=
gn:baseline;white-space:pre-wrap">eno1</span><span style=3D"color:rgb(0,0,0=
);background-color:transparent;font-weight:700;font-style:normal;font-varia=
nt:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap=
"> 192.168.10.1 netmask 255.255.255.0 up</span></font></span></p></li></ol>=
<li dir=3D"ltr" style=3D"list-style-type:decimal;color:rgb(0,0,0);backgroun=
d-color:transparent;font-weight:400;font-style:normal;font-variant:normal;t=
ext-decoration:none;vertical-align:baseline;white-space:pre-wrap"><p dir=3D=
"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span sty=
le=3D"font-family:arial,sans-serif"><font size=3D"2"><span style=3D"color:r=
gb(0,0,0);background-color:transparent;font-weight:400;font-style:normal;fo=
nt-variant:normal;text-decoration:none;vertical-align:baseline;white-space:=
pre-wrap">Check that the device is connected over ethernet.</span></font></=
span></p></li><ol style=3D"margin-top:0pt;margin-bottom:0pt"><li dir=3D"ltr=
" style=3D"list-style-type:lower-alpha;color:rgb(0,0,0);background-color:tr=
ansparent;font-weight:700;font-style:normal;font-variant:normal;text-decora=
tion:none;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" styl=
e=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font=
-family:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);=
background-color:transparent;font-weight:700;font-style:normal;font-variant=
:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">=
ping 192.168.10.2</span></font></span></p></li></ol><li dir=3D"ltr" style=
=3D"list-style-type:decimal;color:rgb(0,0,0);background-color:transparent;f=
ont-weight:400;font-style:normal;font-variant:normal;text-decoration:none;v=
ertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-h=
eight:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:ari=
al,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-=
color:transparent;font-weight:400;font-style:normal;font-variant:normal;tex=
t-decoration:none;vertical-align:baseline;white-space:pre-wrap">The FPGA im=
ages on the USRP are almost certainly out of date, so you need to update th=
em. </span></font></span></p></li><ol style=3D"margin-top:0pt;margin-bottom=
:0pt"><li dir=3D"ltr" style=3D"list-style-type:lower-alpha;color:rgb(0,0,0)=
;background-color:transparent;font-weight:400;font-style:normal;font-varian=
t:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"=
><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"=
><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><span style=
=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap">You should have downloaded the FPGA images in step 1, =
but if not, type: </span><span style=3D"color:rgb(0,0,0);background-color:t=
ransparent;font-weight:700;font-style:normal;font-variant:normal;text-decor=
ation:none;vertical-align:baseline;white-space:pre-wrap">uhd_images_downloa=
der </span><span style=3D"color:rgb(0,0,0);background-color:transparent;fon=
t-weight:400;font-style:normal;font-variant:normal;text-decoration:none;ver=
tical-align:baseline;white-space:pre-wrap">. This will put the FPGA images =
in the folder /usr/local/share/uhd/images. </span></font></span></p></li><l=
i dir=3D"ltr" style=3D"list-style-type:lower-alpha;color:rgb(0,0,0);backgro=
und-color:transparent;font-weight:400;font-style:normal;font-variant:normal=
;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-family:arial,sans-serif"><font size=3D"2"><span style=3D"colo=
r:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:normal=
;font-variant:normal;text-decoration:none;vertical-align:baseline;white-spa=
ce:pre-wrap">Now update the images on the x310 with the command: </span><sp=
an style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:700;f=
ont-style:normal;font-variant:normal;text-decoration:none;vertical-align:ba=
seline;white-space:pre-wrap">uhd_image_loader --args=3D&quot;type=3Dx300,ad=
dr=3D192.168.10.2,fpga=3DHG&quot;</span></font></span></p></li></ol><li dir=
=3D"ltr" style=3D"list-style-type:decimal;color:rgb(0,0,0);background-color=
:transparent;font-weight:400;font-style:normal;font-variant:normal;text-dec=
oration:none;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" s=
tyle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"f=
ont-family:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,=
0);background-color:transparent;font-weight:400;font-style:normal;font-vari=
ant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wra=
p">Restart the USRP, and everything should be working now. Use the followin=
g commands to check that it is working:</span></font></span></p></li><ol st=
yle=3D"margin-top:0pt;margin-bottom:0pt"><li dir=3D"ltr" style=3D"list-styl=
e-type:lower-alpha;color:rgb(0,0,0);background-color:transparent;font-weigh=
t:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-a=
lign:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:arial,sans-s=
erif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:tra=
nsparent;font-weight:400;font-style:normal;font-variant:normal;text-decorat=
ion:none;vertical-align:baseline;white-space:pre-wrap">Check that the devic=
e can be detected.</span><span style=3D"color:rgb(0,0,0);background-color:t=
ransparent;font-weight:700;font-style:normal;font-variant:normal;text-decor=
ation:none;vertical-align:baseline;white-space:pre-wrap"> uhd_find_devices =
</span></font></span></p></li><li dir=3D"ltr" style=3D"list-style-type:lowe=
r-alpha;color:rgb(0,0,0);background-color:transparent;font-weight:400;font-=
style:normal;font-variant:normal;text-decoration:none;vertical-align:baseli=
ne;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt"><span style=3D"font-family:arial,sans-serif"><font=
 size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transparent;fo=
nt-weight:400;font-style:normal;font-variant:normal;text-decoration:none;ve=
rtical-align:baseline;white-space:pre-wrap">The details of your device shou=
ld appear with this command. It is a good test that everything is working p=
roperly if this doesn=E2=80=99t throw an error. </span><span style=3D"color=
:rgb(0,0,0);background-color:transparent;font-weight:700;font-style:normal;=
font-variant:normal;text-decoration:none;vertical-align:baseline;white-spac=
e:pre-wrap">uhd_usrp_probe</span></font></span></p></li><li dir=3D"ltr" sty=
le=3D"list-style-type:lower-alpha;color:rgb(0,0,0);background-color:transpa=
rent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:=
none;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-fami=
ly:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);backg=
round-color:transparent;font-weight:400;font-style:normal;font-variant:norm=
al;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">Conne=
ct an antenna to RX2 on RFA and check that the USRP can function as a spect=
rum analyzer: </span><span style=3D"color:rgb(0,0,0);background-color:trans=
parent;font-weight:700;font-style:normal;font-variant:normal;text-decoratio=
n:none;vertical-align:baseline;white-space:pre-wrap">uhd_fft --ant RX2</spa=
n><span style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:=
400;font-style:normal;font-variant:normal;text-decoration:none;vertical-ali=
gn:baseline;white-space:pre-wrap"> </span></font></span></p></li></ol><li d=
ir=3D"ltr" style=3D"list-style-type:decimal;color:rgb(0,0,0);background-col=
or:transparent;font-weight:400;font-style:normal;font-variant:normal;text-d=
ecoration:none;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr"=
 style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D=
"font-family:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,=
0,0);background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap">Once you have verified that the hardware and software are both working=
, we can proceed to using the PCIe interface. First, download the NI PCIe d=
rivers from here:</span></font></span></p></li><ol style=3D"margin-top:0pt;=
margin-bottom:0pt"><li dir=3D"ltr" style=3D"list-style-type:lower-alpha;col=
or:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:norma=
l;font-variant:normal;text-decoration:none;vertical-align:baseline;white-sp=
ace:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margi=
n-bottom:0pt"><span style=3D"font-family:arial,sans-serif"><font size=3D"2"=
><a href=3D"http://files.ettus.com/manual/page_ni_rio_kernel.html" style=3D=
"text-decoration:none" target=3D"_blank" rel=3D"noreferrer"><span style=3D"=
color:rgb(17,85,204);background-color:rgb(249,249,249);font-weight:400;font=
-style:normal;font-variant:normal;text-decoration:underline;vertical-align:=
baseline;white-space:pre-wrap">http://files.ettus.com/manual/page_ni_rio_ke=
rnel.html</span></a></font></span></p></li><li dir=3D"ltr" style=3D"list-st=
yle-type:lower-alpha;color:rgb(0,0,0);background-color:transparent;font-wei=
ght:400;font-style:normal;font-variant:normal;text-decoration:none;vertical=
-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1=
.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:arial,sans=
-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:t=
ransparent;font-weight:400;font-style:normal;font-variant:normal;text-decor=
ation:none;vertical-align:baseline;white-space:pre-wrap">Extract the files =
</span><span style=3D"color:rgb(0,0,0);background-color:transparent;font-we=
ight:700;font-style:normal;font-variant:normal;text-decoration:none;vertica=
l-align:baseline;white-space:pre-wrap">tar zxf niusrprio-installer-18.0.0.t=
ar.gz</span></font></span></p></li><li dir=3D"ltr" style=3D"list-style-type=
:lower-alpha;color:rgb(0,0,0);background-color:transparent;font-weight:400;=
font-style:normal;font-variant:normal;text-decoration:none;vertical-align:b=
aseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;marg=
in-top:0pt;margin-bottom:0pt"><span style=3D"font-family:arial,sans-serif">=
<font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transpare=
nt;font-weight:400;font-style:normal;font-variant:normal;text-decoration:no=
ne;vertical-align:baseline;white-space:pre-wrap">Change to the extracted fi=
le=E2=80=99s directory </span><span style=3D"color:rgb(0,0,0);background-co=
lor:transparent;font-weight:700;font-style:normal;font-variant:normal;text-=
decoration:none;vertical-align:baseline;white-space:pre-wrap">cd niusrprio_=
installer</span></font></span></p></li><li dir=3D"ltr" style=3D"list-style-=
type:lower-alpha;color:rgb(0,0,0);background-color:transparent;font-weight:=
400;font-style:normal;font-variant:normal;text-decoration:none;vertical-ali=
gn:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;=
margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:arial,sans-ser=
if"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:trans=
parent;font-weight:400;font-style:normal;font-variant:normal;text-decoratio=
n:none;vertical-align:baseline;white-space:pre-wrap">Install </span><span s=
tyle=3D"color:rgb(0,0,0);background-color:transparent;font-weight:700;font-=
style:normal;font-variant:normal;text-decoration:none;vertical-align:baseli=
ne;white-space:pre-wrap">./INSTALL</span></font></span></p></li></ol></ol><=
span style=3D"font-family:arial,sans-serif"><font size=3D"2"><br></font></s=
pan><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0=
pt"><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><span sty=
le=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;font-st=
yle:normal;font-variant:normal;text-decoration:none;vertical-align:baseline=
;white-space:pre-wrap">*********Here is where I got it to work from trying =
things rather than following other instructions. I tried a lot of different=
 things, so I=E2=80=99m not entirely sure, but I think this is what fixed i=
t. See next section for other things I tried. ***********</span></font></sp=
an></p><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><br></=
font></span><ol style=3D"margin-top:0pt;margin-bottom:0pt" start=3D"10"><li=
 dir=3D"ltr" style=3D"list-style-type:decimal;color:rgb(0,0,0);background-c=
olor:transparent;font-weight:400;font-style:normal;font-variant:normal;text=
-decoration:none;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"lt=
r" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=
=3D"font-family:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb=
(0,0,0);background-color:transparent;font-weight:400;font-style:normal;font=
-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pr=
e-wrap">The PCIe interface/cable cannot be plugged in while either the USRP=
 or host computer are on, so turn both devices off. The order below is impo=
rtant!</span></font></span></p></li><ol style=3D"margin-top:0pt;margin-bott=
om:0pt"><li dir=3D"ltr" style=3D"list-style-type:lower-alpha;color:rgb(0,0,=
0);background-color:transparent;font-weight:400;font-style:normal;font-vari=
ant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wra=
p"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0p=
t"><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><span styl=
e=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;font-sty=
le:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;=
white-space:pre-wrap">Plug in PCIe cable</span></font></span></p></li><li d=
ir=3D"ltr" style=3D"list-style-type:lower-alpha;color:rgb(0,0,0);background=
-color:transparent;font-weight:400;font-style:normal;font-variant:normal;te=
xt-decoration:none;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span styl=
e=3D"font-family:arial,sans-serif"><font size=3D"2"><span style=3D"color:rg=
b(0,0,0);background-color:transparent;font-weight:400;font-style:normal;fon=
t-variant:normal;text-decoration:none;vertical-align:baseline;white-space:p=
re-wrap">Turn on SDR</span></font></span></p></li><li dir=3D"ltr" style=3D"=
list-style-type:lower-alpha;color:rgb(0,0,0);background-color:transparent;f=
ont-weight:400;font-style:normal;font-variant:normal;text-decoration:none;v=
ertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-h=
eight:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:ari=
al,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-=
color:transparent;font-weight:400;font-style:normal;font-variant:normal;tex=
t-decoration:none;vertical-align:baseline;white-space:pre-wrap">Turn on Com=
puter</span></font></span></p></li></ol><li dir=3D"ltr" style=3D"list-style=
-type:decimal;color:rgb(0,0,0);background-color:transparent;font-weight:400=
;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:=
baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;mar=
gin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:arial,sans-serif"=
><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transpar=
ent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:n=
one;vertical-align:baseline;white-space:pre-wrap">Connect over PCIe. You mu=
st use the stop command before the start command. It seems that the compute=
r attempts to connect the USRP over PCIe when it boots, but does so incorre=
ctly. You have to stop this process before you can start the correct PCIe c=
onnection. Use the following commands in this order:</span></font></span></=
p></li><ol style=3D"margin-top:0pt;margin-bottom:0pt"><li dir=3D"ltr" style=
=3D"list-style-type:lower-alpha;color:rgb(0,0,0);background-color:transpare=
nt;font-weight:400;font-style:normal;font-variant:normal;text-decoration:no=
ne;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"li=
ne-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family=
:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);backgro=
und-color:transparent;font-weight:400;font-style:normal;font-variant:normal=
;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"> </span=
><span style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:7=
00;font-style:normal;font-variant:normal;text-decoration:none;vertical-alig=
n:baseline;white-space:pre-wrap">sudo /usr/local/bin/niusrprio_pcie stop</s=
pan></font></span></p></li><li dir=3D"ltr" style=3D"list-style-type:lower-a=
lpha;color:rgb(0,0,0);background-color:transparent;font-weight:400;font-sty=
le:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;=
white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0=
pt;margin-bottom:0pt"><span style=3D"font-family:arial,sans-serif"><font si=
ze=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transparent;font-=
weight:400;font-style:normal;font-variant:normal;text-decoration:none;verti=
cal-align:baseline;white-space:pre-wrap"> </span><span style=3D"color:rgb(0=
,0,0);background-color:transparent;font-weight:700;font-style:normal;font-v=
ariant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-=
wrap">sudo /usr/local/bin/niusrprio_pcie start</span></font></span></p></li=
><li dir=3D"ltr" style=3D"list-style-type:lower-alpha;color:rgb(0,0,0);back=
ground-color:transparent;font-weight:400;font-style:normal;font-variant:nor=
mal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><spa=
n style=3D"font-family:arial,sans-serif"><font size=3D"2"><span style=3D"co=
lor:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:norm=
al;font-variant:normal;text-decoration:none;vertical-align:baseline;white-s=
pace:pre-wrap"> </span><span style=3D"color:rgb(0,0,0);background-color:tra=
nsparent;font-weight:700;font-style:normal;font-variant:normal;text-decorat=
ion:none;vertical-align:baseline;white-space:pre-wrap">sudo /usr/local/bin/=
niusrprio_pcie status</span></font></span></p></li></ol><li dir=3D"ltr" sty=
le=3D"list-style-type:decimal;color:rgb(0,0,0);background-color:transparent=
;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none=
;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line=
-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:a=
rial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);backgroun=
d-color:transparent;font-weight:400;font-style:normal;font-variant:normal;t=
ext-decoration:none;vertical-align:baseline;white-space:pre-wrap">Check tha=
t the usrp can be detected over PCIe. It should say that the resource is RI=
O0, but if it is something different, adjust that field in step 13. </span>=
</font></span></p></li><ol style=3D"margin-top:0pt;margin-bottom:0pt"><li d=
ir=3D"ltr" style=3D"list-style-type:lower-alpha;color:rgb(0,0,0);background=
-color:transparent;font-weight:700;font-style:normal;font-variant:normal;te=
xt-decoration:none;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span styl=
e=3D"font-family:arial,sans-serif"><font size=3D"2"><span style=3D"color:rg=
b(0,0,0);background-color:transparent;font-weight:700;font-style:normal;fon=
t-variant:normal;text-decoration:none;vertical-align:baseline;white-space:p=
re-wrap">uhd_find_devices</span></font></span></p></li></ol><li dir=3D"ltr"=
 style=3D"list-style-type:decimal;color:rgb(0,0,0);background-color:transpa=
rent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:=
none;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-fami=
ly:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);backg=
round-color:transparent;font-weight:400;font-style:normal;font-variant:norm=
al;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">Load =
the .lvbitx images onto the USRP FPGA. The .lvbitx images are for PCIe conn=
ection and the .bit are for other interfaces.</span></font></span></p></li>=
<ol style=3D"margin-top:0pt;margin-bottom:0pt"><li dir=3D"ltr" style=3D"lis=
t-style-type:lower-alpha;color:rgb(0,0,0);background-color:transparent;font=
-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vert=
ical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-heig=
ht:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:arial,=
sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-col=
or:transparent;font-weight:700;font-style:normal;font-variant:normal;text-d=
ecoration:none;vertical-align:baseline;white-space:pre-wrap">uhd_image_load=
er --args=3D&quot;type=3Dx300,RESOURCE=3DRIO0,fpga=3DHG&quot; --fpga-path=
=3D&quot;/usr/local/share/uhd/images/usrp_x310_fpga_HG.lvbitx</span><span s=
tyle=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;font-=
style:normal;font-variant:normal;text-decoration:none;vertical-align:baseli=
ne;white-space:pre-wrap"> </span></font></span></p></li></ol><li dir=3D"ltr=
" style=3D"list-style-type:decimal;color:rgb(0,0,0);background-color:transp=
arent;font-weight:400;font-style:normal;font-variant:normal;text-decoration=
:none;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D=
"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-fam=
ily:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);back=
ground-color:transparent;font-weight:400;font-style:normal;font-variant:nor=
mal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">You =
need to restart the SDR for the FPGA image to take effect, but you must alw=
ays turn off the computer before the SDR and stop the NI PCIe connection, s=
o follow these steps to shut everything down:</span></font></span></p></li>=
<ol style=3D"margin-top:0pt;margin-bottom:0pt"><li dir=3D"ltr" style=3D"lis=
t-style-type:lower-alpha;color:rgb(0,0,0);background-color:transparent;font=
-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vert=
ical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-heig=
ht:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:arial,=
sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-col=
or:transparent;font-weight:400;font-style:normal;font-variant:normal;text-d=
ecoration:none;vertical-align:baseline;white-space:pre-wrap">Before turning=
 off or disconnecting the USRP, you must always stop the PCIe connection or=
 else the system could become unstable: </span><span style=3D"color:rgb(0,0=
,0);background-color:transparent;font-weight:700;font-style:normal;font-var=
iant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wr=
ap">sudo /usr/local/bin/niusrprio_pcie stop</span></font></span></p></li><l=
i dir=3D"ltr" style=3D"list-style-type:lower-alpha;color:rgb(0,0,0);backgro=
und-color:transparent;font-weight:400;font-style:normal;font-variant:normal=
;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-family:arial,sans-serif"><font size=3D"2"><span style=3D"colo=
r:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:normal=
;font-variant:normal;text-decoration:none;vertical-align:baseline;white-spa=
ce:pre-wrap">Turn off the SDR</span></font></span></p></li><li dir=3D"ltr" =
style=3D"list-style-type:lower-alpha;color:rgb(0,0,0);background-color:tran=
sparent;font-weight:400;font-style:normal;font-variant:normal;text-decorati=
on:none;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-=
family:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);b=
ackground-color:transparent;font-weight:400;font-style:normal;font-variant:=
normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">T=
urn off your computer</span></font></span></p></li></ol><li dir=3D"ltr" sty=
le=3D"list-style-type:decimal;color:rgb(0,0,0);background-color:transparent=
;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none=
;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line=
-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:a=
rial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);backgroun=
d-color:transparent;font-weight:400;font-style:normal;font-variant:normal;t=
ext-decoration:none;vertical-align:baseline;white-space:pre-wrap">Repeat st=
ep 10 and 11 to turn everything on again.</span></font></span></p></li><li =
dir=3D"ltr" style=3D"list-style-type:decimal;color:rgb(0,0,0);background-co=
lor:transparent;font-weight:400;font-style:normal;font-variant:normal;text-=
decoration:none;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr=
" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=
=3D"font-family:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb=
(0,0,0);background-color:transparent;font-weight:400;font-style:normal;font=
-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pr=
e-wrap">It should work now. This can be tested by repeating step 8.</span><=
/font></span></p></li></ol><span style=3D"font-family:arial,sans-serif"><fo=
nt size=3D"2"><br></font></span><p dir=3D"ltr" style=3D"line-height:1.38;ma=
rgin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:arial,sans-serif=
"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transpa=
rent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:=
none;vertical-align:baseline;white-space:pre-wrap">I believe those are the =
things that made my x310 PCIe connection work, but here are other things I =
recall trying which may have helped solve the problem:</span></font></span>=
</p><ol style=3D"margin-top:0pt;margin-bottom:0pt"><li dir=3D"ltr" style=3D=
"list-style-type:decimal;color:rgb(0,0,0);background-color:transparent;font=
-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vert=
ical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-heig=
ht:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:arial,=
sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-col=
or:transparent;font-weight:400;font-style:normal;font-variant:normal;text-d=
ecoration:none;vertical-align:baseline;white-space:pre-wrap">I don=E2=80=99=
t think this should be done, but I ran these lines:</span></font></span></p=
></li><ol style=3D"margin-top:0pt;margin-bottom:0pt"><li dir=3D"ltr" style=
=3D"list-style-type:lower-alpha;color:rgb(0,0,0);background-color:transpare=
nt;font-weight:400;font-style:normal;font-variant:normal;text-decoration:no=
ne;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"li=
ne-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family=
:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);backgro=
und-color:transparent;font-weight:400;font-style:normal;font-variant:normal=
;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"><a href=
=3D"http://files.ettus.com/manual/page_install.html" target=3D"_blank" rel=
=3D"noreferrer">http://files.ettus.com/manual/page_install.html</a></span><=
/font></span></p></li><ol style=3D"margin-top:0pt;margin-bottom:0pt"><li di=
r=3D"ltr" style=3D"list-style-type:lower-roman;color:rgb(0,0,0);background-=
color:transparent;font-weight:400;font-style:normal;font-variant:normal;tex=
t-decoration:none;vertical-align:baseline;white-space:pre-wrap"><p dir=3D"l=
tr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=
=3D"font-family:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb=
(0,0,0);background-color:transparent;font-weight:400;font-style:normal;font=
-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pr=
e-wrap">sudo add-apt-repository ppa:ettusresearch/uhd</span></font></span><=
/p></li><li dir=3D"ltr" style=3D"list-style-type:lower-roman;color:rgb(0,0,=
0);background-color:transparent;font-weight:400;font-style:normal;font-vari=
ant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wra=
p"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0p=
t"><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><span styl=
e=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;font-sty=
le:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;=
white-space:pre-wrap">sudo apt-get update</span></font></span></p></li><li =
dir=3D"ltr" style=3D"list-style-type:lower-roman;color:rgb(0,0,0);backgroun=
d-color:transparent;font-weight:400;font-style:normal;font-variant:normal;t=
ext-decoration:none;vertical-align:baseline;white-space:pre-wrap"><p dir=3D=
"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span sty=
le=3D"font-family:arial,sans-serif"><font size=3D"2"><span style=3D"color:r=
gb(0,0,0);background-color:transparent;font-weight:400;font-style:normal;fo=
nt-variant:normal;text-decoration:none;vertical-align:baseline;white-space:=
pre-wrap">sudo apt-get install libuhd-dev libuhd003 uhd-host</span></font><=
/span></p></li></ol></ol><li dir=3D"ltr" style=3D"list-style-type:decimal;c=
olor:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:nor=
mal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-=
space:pre-wrap"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt"><span style=3D"font-family:arial,sans-serif"><font size=3D"=
2"><span style=3D"color:rgb(0,0,0);background-color:transparent;font-weight=
:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-al=
ign:baseline;white-space:pre-wrap">Fix gcc? </span></font></span></p></li><=
ol style=3D"margin-top:0pt;margin-bottom:0pt"><li dir=3D"ltr" style=3D"list=
-style-type:lower-alpha;color:rgb(0,0,0);background-color:transparent;font-=
weight:400;font-style:normal;font-variant:normal;text-decoration:none;verti=
cal-align:baseline;white-space:pre-wrap"><p dir=3D"ltr" style=3D"line-heigh=
t:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:arial,s=
ans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-colo=
r:transparent;font-weight:400;font-style:normal;font-variant:normal;text-de=
coration:none;vertical-align:baseline;white-space:pre-wrap"><a href=3D"http=
s://stackoverflow.com/questions/48398475/fail-to-install-gcc-4-9-in-ubuntu1=
7-04" target=3D"_blank" rel=3D"noreferrer">https://stackoverflow.com/questi=
ons/48398475/fail-to-install-gcc-4-9-in-ubuntu17-04</a></span></font></span=
></p></li></ol></ol><span style=3D"font-family:arial,sans-serif"><font size=
=3D"2"><br></font></span><p dir=3D"ltr" style=3D"line-height:1.38;margin-to=
p:0pt;margin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,=
sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-col=
or:transparent;font-weight:400;font-style:normal;font-variant:normal;text-d=
ecoration:none;vertical-align:baseline;white-space:pre-wrap">mkdir ~/Downlo=
ads/gcc-4.9-deb &amp;&amp; cd ~/Downloads/gcc-4.9-deb</span></font></span><=
/p><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><br></font=
></span><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bott=
om:0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-serif"><font=
 size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transparent;fo=
nt-weight:400;font-style:normal;font-variant:normal;text-decoration:none;ve=
rtical-align:baseline;white-space:pre-wrap">wget <a href=3D"http://launchpa=
dlibrarian.net/247707088/libmpfr4_3.1.4-1_amd64.deb" target=3D"_blank" rel=
=3D"noreferrer">http://launchpadlibrarian.net/247707088/libmpfr4_3.1.4-1_am=
d64.deb</a></span></font></span></p><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt;margin-left:72pt"><span style=3D"font-fa=
mily:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);bac=
kground-color:transparent;font-weight:400;font-style:normal;font-variant:no=
rmal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">wge=
t <a href=3D"http://launchpadlibrarian.net/253728424/libasan1_4.9.3-13ubunt=
u2_amd64.deb" target=3D"_blank" rel=3D"noreferrer">http://launchpadlibraria=
n.net/253728424/libasan1_4.9.3-13ubuntu2_amd64.deb</a></span></font></span>=
</p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0=
pt;margin-left:72pt"><span style=3D"font-family:arial,sans-serif"><font siz=
e=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transparent;font-w=
eight:400;font-style:normal;font-variant:normal;text-decoration:none;vertic=
al-align:baseline;white-space:pre-wrap">wget <a href=3D"http://launchpadlib=
rarian.net/253728426/libgcc-4.9-dev_4.9.3-13ubuntu2_amd64.deb" target=3D"_b=
lank" rel=3D"noreferrer">http://launchpadlibrarian.net/253728426/libgcc-4.9=
-dev_4.9.3-13ubuntu2_amd64.deb</a></span></font></span></p><p dir=3D"ltr" s=
tyle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left:72pt"=
><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><span style=
=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;font-styl=
e:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;w=
hite-space:pre-wrap">wget <a href=3D"http://launchpadlibrarian.net/25372831=
4/gcc-4.9-base_4.9.3-13ubuntu2_amd64.deb" target=3D"_blank" rel=3D"noreferr=
er">http://launchpadlibrarian.net/253728314/gcc-4.9-base_4.9.3-13ubuntu2_am=
d64.deb</a></span></font></span></p><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt;margin-left:72pt"><span style=3D"font-fa=
mily:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);bac=
kground-color:transparent;font-weight:400;font-style:normal;font-variant:no=
rmal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">wge=
t <a href=3D"http://launchpadlibrarian.net/253728399/cpp-4.9_4.9.3-13ubuntu=
2_amd64.deb" target=3D"_blank" rel=3D"noreferrer">http://launchpadlibrarian=
.net/253728399/cpp-4.9_4.9.3-13ubuntu2_amd64.deb</a></span></font></span></=
p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt=
;margin-left:72pt"><span style=3D"font-family:arial,sans-serif"><font size=
=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transparent;font-we=
ight:400;font-style:normal;font-variant:normal;text-decoration:none;vertica=
l-align:baseline;white-space:pre-wrap">wget <a href=3D"http://launchpadlibr=
arian.net/253728404/gcc-4.9_4.9.3-13ubuntu2_amd64.deb" target=3D"_blank" re=
l=3D"noreferrer">http://launchpadlibrarian.net/253728404/gcc-4.9_4.9.3-13ub=
untu2_amd64.deb</a></span></font></span></p><p dir=3D"ltr" style=3D"line-he=
ight:1.38;margin-top:0pt;margin-bottom:0pt;margin-left:72pt"><span style=3D=
"font-family:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,=
0,0);background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap">wget <a href=3D"http://launchpadlibrarian.net/253728432/libstdc++-4.9-=
dev_4.9.3-13ubuntu2_amd64.deb" target=3D"_blank" rel=3D"noreferrer">http://=
launchpadlibrarian.net/253728432/libstdc++-4.9-dev_4.9.3-13ubuntu2_amd64.de=
b</a></span></font></span></p><p dir=3D"ltr" style=3D"line-height:1.38;marg=
in-top:0pt;margin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:a=
rial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);backgroun=
d-color:transparent;font-weight:400;font-style:normal;font-variant:normal;t=
ext-decoration:none;vertical-align:baseline;white-space:pre-wrap">wget <a h=
ref=3D"http://launchpadlibrarian.net/253728401/g++-4.9_4.9.3-13ubuntu2_amd6=
4.deb" target=3D"_blank" rel=3D"noreferrer">http://launchpadlibrarian.net/2=
53728401/g++-4.9_4.9.3-13ubuntu2_amd64.deb</a></span></font></span></p><spa=
n style=3D"font-family:arial,sans-serif"><font size=3D"2"><br></font></span=
><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;=
margin-left:72pt"><span style=3D"font-family:arial,sans-serif"><font size=
=3D"2"><span style=3D"color:rgb(0,0,0);background-color:transparent;font-we=
ight:400;font-style:normal;font-variant:normal;text-decoration:none;vertica=
l-align:baseline;white-space:pre-wrap">sudo dpkg -i gcc-4.9-base_4.9.3-13ub=
untu2_amd64.deb</span></font></span></p><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt;margin-left:72pt"><span style=3D"fon=
t-family:arial,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0)=
;background-color:transparent;font-weight:400;font-style:normal;font-varian=
t:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"=
>sudo dpkg -i libmpfr4_3.1.4-1_amd64.deb</span></font></span></p><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left=
:72pt"><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><span =
style=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;font=
-style:normal;font-variant:normal;text-decoration:none;vertical-align:basel=
ine;white-space:pre-wrap">sudo dpkg -i libasan1_4.9.3-13ubuntu2_amd64.deb</=
span></font></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:=
0pt;margin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,sa=
ns-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color=
:transparent;font-weight:400;font-style:normal;font-variant:normal;text-dec=
oration:none;vertical-align:baseline;white-space:pre-wrap">sudo dpkg -i lib=
gcc-4.9-dev_4.9.3-13ubuntu2_amd64.deb</span></font></span></p><p dir=3D"ltr=
" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left:72=
pt"><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><span sty=
le=3D"color:rgb(0,0,0);background-color:transparent;font-weight:400;font-st=
yle:normal;font-variant:normal;text-decoration:none;vertical-align:baseline=
;white-space:pre-wrap">sudo dpkg -i cpp-4.9_4.9.3-13ubuntu2_amd64.deb</span=
></font></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;=
margin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-s=
erif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:tra=
nsparent;font-weight:400;font-style:normal;font-variant:normal;text-decorat=
ion:none;vertical-align:baseline;white-space:pre-wrap">sudo dpkg -i gcc-4.9=
_4.9.3-13ubuntu2_amd64.deb</span></font></span></p><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left:72pt"><span s=
tyle=3D"font-family:arial,sans-serif"><font size=3D"2"><span style=3D"color=
:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:normal;=
font-variant:normal;text-decoration:none;vertical-align:baseline;white-spac=
e:pre-wrap">sudo dpkg -i libstdc++-4.9-dev_4.9.3-13ubuntu2_amd64.deb</span>=
</font></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt;margin-left:72pt"><span style=3D"font-family:arial,sans-se=
rif"><font size=3D"2"><span style=3D"color:rgb(0,0,0);background-color:tran=
sparent;font-weight:400;font-style:normal;font-variant:normal;text-decorati=
on:none;vertical-align:baseline;white-space:pre-wrap">sudo dpkg -i g++-4.9_=
4.9.3-13ubuntu2_amd64.deb</span></font></span></p><span style=3D"font-famil=
y:arial,sans-serif"><font size=3D"2"><br></font></span><div><span style=3D"=
font-family:arial,sans-serif"><font size=3D"2"><br></font></span></div><div=
><span style=3D"font-family:arial,sans-serif"><font size=3D"2">My hardware =
setup uses a laptop:</font></span></div><div style=3D"margin-left:40px"><sp=
an style=3D"font-family:arial,sans-serif"><font size=3D"2">Computer: Dell P=
recision 7730 (Laptop)<br></font></span></div><div style=3D"margin-left:80p=
x"><span style=3D"font-family:arial,sans-serif"><font size=3D"2">XEON</font=
></span></div><div style=3D"margin-left:80px"><span style=3D"font-family:ar=
ial,sans-serif"><font size=3D"2">32GB RAM</font></span></div><div style=3D"=
margin-left:80px"><span style=3D"font-family:arial,sans-serif"><font size=
=3D"2">1TB SSD (EVO 970)</font></span></div><div style=3D"margin-left:80px"=
><span style=3D"font-family:arial,sans-serif"><font size=3D"2">Internal Int=
el GPU</font></span></div><div style=3D"margin-left:80px"><span style=3D"fo=
nt-family:arial,sans-serif"><font size=3D"2">Note that the Dell Precision t=
hunderbolt 3 ports each use 4 PCIe lanes (some laptops only use 2 which won=
&#39;t work)<br></font></span></div><div style=3D"margin-left:40px"><span s=
tyle=3D"font-family:arial,sans-serif"><font size=3D"2">Connection:</font></=
span></div><div style=3D"margin-left:80px"><span style=3D"font-family:arial=
,sans-serif"><font size=3D"2">Thunderbolt 3&lt;-&gt;PCIe</font></span></div=
><div style=3D"margin-left:120px"><span style=3D"font-family:arial,sans-ser=
if"><font size=3D"2"><a href=3D"https://www.amazon.com/Akitio-Node-Thunderb=
olt3-Windows-Compatible/dp/B06XKKSNTS" target=3D"_blank" rel=3D"noreferrer"=
>https://www.amazon.com/Akitio-Node-Thunderbolt3-Windows-Compatible/dp/B06X=
KKSNTS</a></font></span></div><div style=3D"margin-left:120px"><span style=
=3D"font-family:arial,sans-serif"><font size=3D"2"><a href=3D"https://www.a=
kitio.com/expansion/node-lite" target=3D"_blank" rel=3D"noreferrer">https:/=
/www.akitio.com/expansion/node-lite</a></font></span></div><div style=3D"ma=
rgin-left:120px"><span style=3D"font-family:arial,sans-serif"><font size=3D=
"2">Note that only &lt;0.5m thunderbolt 3 cables provide the full BW. I had=
 to update the BIOS.<br></font></span></div><div style=3D"margin-left:80px"=
><span style=3D"font-family:arial,sans-serif"><font size=3D"2">Ettus PCIe c=
ard: <a href=3D"https://www.ettus.com/all-products/pcie-kit/" target=3D"_bl=
ank" rel=3D"noreferrer">https://www.ettus.com/all-products/pcie-kit/</a></f=
ont></span></div></div><div><span style=3D"font-family:arial,sans-serif"><f=
ont size=3D"2"><br></font></span></div><div><span style=3D"font-family:aria=
l,sans-serif"><font size=3D"2"><br></font></span></div><div><span style=3D"=
font-family:arial,sans-serif"><font size=3D"2"><br></font></span></div><div=
><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><br></font><=
/span></div><div><span style=3D"font-family:arial,sans-serif"><font size=3D=
"2"><br></font></span></div><div><span style=3D"font-family:arial,sans-seri=
f"><font size=3D"2"><br></font></span></div><div><span style=3D"font-family=
:arial,sans-serif"><font size=3D"2"><br></font></span></div><div><span styl=
e=3D"font-family:arial,sans-serif"><font size=3D"2"><br></font></span></div=
><div><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><br></f=
ont></span></div><div><span style=3D"font-family:arial,sans-serif"><font si=
ze=3D"2"><br></font></span></div><div><span style=3D"font-family:arial,sans=
-serif"><font size=3D"2"><br></font></span></div><div><span style=3D"font-f=
amily:arial,sans-serif"><font size=3D"2"><br></font></span></div><div><span=
 style=3D"font-family:arial,sans-serif"><font size=3D"2"><br></font></span>=
</div><div><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><b=
r></font></span></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr"><span style=3D"font-family:arial,sans-serif"><font size=3D"2">O=
n Tue, Mar 5, 2019 at 3:43 AM akin soysal via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></font></span></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"font-family:aria=
l,sans-serif"><font size=3D"2">OK,
 so I did manage to debug it further by setting the=20
ENABLE_EXTENDED_ERROR_INFO flag to true. It seems like the=20
nirio_driver_iface::rio_ioctl function is returning 52003 error.</font></sp=
an></div><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><br>=
</font></span></div><div dir=3D"ltr"><span style=3D"font-family:arial,sans-=
serif"><font size=3D"2">uhd_usrp_probe --args &quot;type=3Dx300,resource=3D=
RIO0,fpga=3D</font></span><span style=3D"font-family:arial,sans-serif"><fon=
t size=3D"2">HG&quot;<br>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609=
; Boost_105800; UHD_3.13.1.HEAD-0-gbbce3e45<br>[INFO] [NIRIO] rpc_client st=
opping...<br>[INFO] [NIRIO] rpc_client stopped.<br>ERROR: The following fun=
ction call returned status code -52003<br>nirio_driver_iface::rio_ioctl(</f=
ont></span><span style=3D"font-family:arial,sans-serif"><font size=3D"2">_d=
evice_handle, NIRIO_IOCTL_POST_OPEN, NULL, 0, NULL, 0)<br>/home/ulak/uhd/uh=
d/host/lib/</font></span><span style=3D"font-family:arial,sans-serif"><font=
 size=3D"2">transport/nirio/niriok_proxy_</font></span><span style=3D"font-=
family:arial,sans-serif"><font size=3D"2">impl_v1.cpp:438<br>[INFO] [NIRIO]=
 rpc_client stopping...<br>[INFO] [NIRIO] rpc_client stopped.<br>ERROR: The=
 following function call returned status code -52003<br>nirio_driver_iface:=
:rio_ioctl(</font></span><span style=3D"font-family:arial,sans-serif"><font=
 size=3D"2">_device_handle, NIRIO_IOCTL_POST_OPEN, NULL, 0, NULL, 0)<br>/ho=
me/ulak/uhd/uhd/host/lib/</font></span><span style=3D"font-family:arial,san=
s-serif"><font size=3D"2">transport/nirio/niriok_proxy_</font></span><span =
style=3D"font-family:arial,sans-serif"><font size=3D"2">impl_v1.cpp:438<br>=
[INFO] [X300] X300 initialization sequence...<br>[INFO] [X300] Connecting t=
o niusrpriorpc at localhost:5444...<br>ERROR: The following function call r=
eturned status code -52003<br>nirio_driver_iface::rio_ioctl(</font></span><=
span style=3D"font-family:arial,sans-serif"><font size=3D"2">_device_handle=
, NIRIO_IOCTL_POST_OPEN, NULL, 0, NULL, 0)<br>/home/ulak/uhd/uhd/host/lib/<=
/font></span><span style=3D"font-family:arial,sans-serif"><font size=3D"2">=
transport/nirio/niriok_proxy_</font></span><span style=3D"font-family:arial=
,sans-serif"><font size=3D"2">impl_v1.cpp:438<br>[INFO] [NIRIO] rpc_client =
stopping...<br>[INFO] [NIRIO] rpc_client stopped.<br>[INFO] [X300] Using LV=
BITX bitfile /home/ulak/usrp_x310_fpga_HG.</font></span><span style=3D"font=
-family:arial,sans-serif"><font size=3D"2">lvbitx...<br>ERROR: The followin=
g function call returned status code -52003<br>nirio_driver_iface::rio_ioct=
l(</font></span><span style=3D"font-family:arial,sans-serif"><font size=3D"=
2">_device_handle, NIRIO_IOCTL_POST_OPEN, NULL, 0, NULL, 0)<br>/home/ulak/u=
hd/uhd/host/lib/</font></span><span style=3D"font-family:arial,sans-serif">=
<font size=3D"2">transport/nirio/niriok_proxy_</font></span><span style=3D"=
font-family:arial,sans-serif"><font size=3D"2">impl_v1.cpp:438<br>[INFO] [N=
IRIO] rpc_client stopping...<br>[INFO] [NIRIO] rpc_client stopped.<br>ERROR=
: The following function call returned status code -63150<br>_rpc_client.ni=
usrprio_open_</font></span><span style=3D"font-family:arial,sans-serif"><fo=
nt size=3D"2">session( _resource_name, bitfile_path, signature, download_fp=
ga)<br>/home/ulak/uhd/uhd/host/lib/</font></span><span style=3D"font-family=
:arial,sans-serif"><font size=3D"2">transport/nirio/niusrprio_</font></span=
><span style=3D"font-family:arial,sans-serif"><font size=3D"2">session.cpp:=
80<br>ERROR: The following function call returned status code -63150<br>mb.=
rio_fpga_interface-&gt;open(</font></span><span style=3D"font-family:arial,=
sans-serif"><font size=3D"2">lvbitx, dev_addr.has_key(&quot;download-</font=
></span><span style=3D"font-family:arial,sans-serif"><font size=3D"2">fpga&=
quot;))<br>/home/ulak/uhd/uhd/host/lib/</font></span><span style=3D"font-fa=
mily:arial,sans-serif"><font size=3D"2">usrp/x300/x300_impl.cpp:609<br>[INF=
O] [NIRIO] rpc_client stopping...<br>[INFO] [NIRIO] rpc_client stopped.<br>=
Error: RuntimeError: x300_impl: Could not initialize RIO session. Unknown e=
rror. (Error code -63150)<br><br></font></span><div dir=3D"ltr"><span style=
=3D"font-family:arial,sans-serif"><font size=3D"2"><br></font></span></div>=
<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif"><font size=3D=
"2"><br></font></span></div><div dir=3D"ltr"><span style=3D"font-family:ari=
al,sans-serif"><font size=3D"2"><br></font></span></div></div></div></div><=
/div><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><br></fo=
nt></span><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
<span style=3D"font-family:arial,sans-serif"><font size=3D"2">On Tue, Mar 5=
, 2019 at 1:32 PM akin soysal &lt;<a href=3D"mailto:akinsoysal@gmail.com" t=
arget=3D"_blank" rel=3D"noreferrer">akinsoysal@gmail.com</a>&gt; wrote:<br>=
</font></span></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><span s=
tyle=3D"font-family:arial,sans-serif"><font size=3D"2">Dear all,</font></sp=
an></div><div><span style=3D"font-family:arial,sans-serif"><font size=3D"2"=
><br></font></span></div><div><span style=3D"font-family:arial,sans-serif">=
<font size=3D"2">I am trying to connect over PCIe to my USRP X310. I have i=
nstalled the latest drivers niusrprio-installer-18.0.0.</font></span><span =
style=3D"font-family:arial,sans-serif"><font size=3D"2">tar.gz and I am sta=
rting the PCIe connection with the following command:</font></span></div><d=
iv><span style=3D"font-family:arial,sans-serif"><font size=3D"2"><br></font=
></span></div><div><span style=3D"font-family:arial,sans-serif"><font size=
=3D"2">sudo /usr/local/bin/niusrprio_pcie start<br>Making sure drivers are =
up to date...<br>Module nikal is up-to-date<br>Module nibds is up-to-date<b=
r>Module nistreamk is up-to-date<br>Module NiRioSrv is up-to-date<br>Module=
 niusrpriok is up-to-date<br>Loading: NiRioSrv niusrpriok <br>Starting: niu=
srpriorpc</font></span></div><div><span style=3D"font-family:arial,sans-ser=
if"><font size=3D"2"><br></font></span></div><div><span style=3D"font-famil=
y:arial,sans-serif"><font size=3D"2">Then I try the uhd_usrp_probe:</font><=
/span></div><div><span style=3D"font-family:arial,sans-serif"><font size=3D=
"2"><br></font></span></div><div><span style=3D"font-family:arial,sans-seri=
f"><font size=3D"2">uhd_usrp_probe --args &quot;type=3Dx300,resource=3DRIO0=
&quot;<br>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;=
 UHD_3.13.1.HEAD-0-gbbce3e45<br>[INFO] [NIRIO] rpc_client stopping...<br>[I=
NFO] [NIRIO] rpc_client stopped.<br>[INFO] [NIRIO] rpc_client stopping...<b=
r>[INFO] [NIRIO] rpc_client stopped.<br>[INFO] [X300] X300 initialization s=
equence...<br>[INFO] [X300] Connecting to niusrpriorpc at localhost:5444...=
<br>[INFO] [NIRIO] rpc_client stopping...<br>[INFO] [NIRIO] rpc_client stop=
ped.<br>[INFO] [X300] Using LVBITX bitfile /usr/local/share/uhd/images/</fo=
nt></span><span style=3D"font-family:arial,sans-serif"><font size=3D"2">usr=
p_x310_fpga_HG.lvbitx...<br>[INFO] [NIRIO] rpc_client stopping...<br>[INFO]=
 [NIRIO] rpc_client stopped.<br>[INFO] [NIRIO] rpc_client stopping...<br>[I=
NFO] [NIRIO] rpc_client stopped.<br>Error: RuntimeError: x300_impl: Could n=
ot initialize RIO session. Unknown error. (Error code -63150)<br></font></s=
pan></div><div><span style=3D"font-family:arial,sans-serif"><font size=3D"2=
"><br></font></span></div><div><span style=3D"font-family:arial,sans-serif"=
><font size=3D"2">I
 have another PC and USRP x310 and this is working fine. I have followed
 the exact same steps and there isn&#39;t any issue. What could be the=20
problem and how can I debug this further?</font></span></div><div><span sty=
le=3D"font-family:arial,sans-serif"><font size=3D"2"><br></font></span></di=
v><div><span style=3D"font-family:arial,sans-serif"><font size=3D"2">Regard=
s,</font></span></div><div><span style=3D"font-family:arial,sans-serif"><fo=
nt size=3D"2">Ak=C4=B1n<br></font></span></div><div><span style=3D"font-fam=
ily:arial,sans-serif"><font size=3D"2"><br></font></span></div></div></div>=
</div></div>
</blockquote></div><span style=3D"font-family:arial,sans-serif"><font size=
=3D"2">
______________________________</font></span><span style=3D"font-family:aria=
l,sans-serif"><font size=3D"2">_________________<br>
USRP-users mailing list<br></font></span>
<span style=3D"font-family:arial,sans-serif"><font size=3D"2"><a href=3D"ma=
ilto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">USRP-=
users@lists.ettus.com</a><br></font></span>
<span style=3D"font-family:arial,sans-serif"><font size=3D"2"><a href=3D"ht=
tp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" rel=3D"no=
referrer noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br></font></span>
</blockquote></div>
</div>
</blockquote></div>

--0000000000007d6145058a848dde--


--===============2468166654244390039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2468166654244390039==--

