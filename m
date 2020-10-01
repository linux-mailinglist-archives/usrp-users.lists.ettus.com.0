Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C64EB28013E
	for <lists+usrp-users@lfdr.de>; Thu,  1 Oct 2020 16:26:38 +0200 (CEST)
Received: from [::1] (port=58038 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNzXZ-0003Vn-Jd; Thu, 01 Oct 2020 10:26:37 -0400
Received: from mail-oi1-f178.google.com ([209.85.167.178]:43611)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kNzXV-0003F8-RL
 for usrp-users@lists.ettus.com; Thu, 01 Oct 2020 10:26:33 -0400
Received: by mail-oi1-f178.google.com with SMTP id i17so5742870oig.10
 for <usrp-users@lists.ettus.com>; Thu, 01 Oct 2020 07:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MhkYpFNjLVetqLPmXuj770LHWM33x+/Yi2r1ItX3kNs=;
 b=KuRvvkVJgA4BdLfs7/qhZKjuTJyRS+/y5SrVF61MoyiDIPEXjUDSTEj9vpPZCUnOxc
 Ngd1J6qkSAaTJHn3Uma0P0EQYtb+RozW77zDYPiJw4OorDw03lKYx2whuouWXY755Gyk
 7QcRaBpXrq2UNUyjiUXg/GRAmI1LoHsyMsdSrgXVYRnU6yETihW7pJRodIHd/qbLOzeV
 WBcyaYOjtqQft9JPdUAdqRcKcJv0fjk6J3WEVzwZ5ZsBFG/Ry8OuWbThCkKLxBU69a80
 wIpuWGeR3vVNvLefsd4//mvagJIOUGBiJcLJUiHJ1PLwbP9rggBkS8d+im1ReBvvZT6p
 fq/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MhkYpFNjLVetqLPmXuj770LHWM33x+/Yi2r1ItX3kNs=;
 b=Z3/LVYIMjWYJDrzlB3KBI4RtPiNMZZNSGewQ2McjF7kudEYMTRY1AwTVxsJ5+eii9H
 wJmK+Z1I0Tewlo3gdZsCF1YSaUpA9gBjRa2u+nxvbidG4Gr5NM5GGWB1HhStivivP0Hx
 yGxF1bnr8AwWLfyz49gAMVOYeEptrzfd8JmT4a85XXaTFSQfv1C+O2BvHVFFiBRjOQN8
 i26GMWNfq4jkfo3ooqdU1ePT3fYM7GO/QWVCPypss2x+JWxHu5gmUbc3eQdzUBxrKy1y
 tHTlf36IwVNTSst4wLBqJBgnFrRulqjY6H2PwKIB0ErN2O1EMO5sANh6U+NRSWCwP03e
 qgag==
X-Gm-Message-State: AOAM532CYxLAtvijlBoBp+Ec6wtxdrZcE6XnVDIseb3TjiFcwOgEO2L0
 ZdpJtd/AwPDVFY4v+rxxqMaYWrkxeIvUGmHsIGzUig==
X-Google-Smtp-Source: ABdhPJwjkNoCJAbiqSzgLmXG3+8wV+860fqDSwq5A6zizciEkhDbzPElQXZjIztz1R+bRIquyV7BfE856dMUteXQ7fo=
X-Received: by 2002:a05:6808:8e5:: with SMTP id d5mr151217oic.33.1601562352999; 
 Thu, 01 Oct 2020 07:25:52 -0700 (PDT)
MIME-Version: 1.0
References: <SN2PR01MB19687AA86F3F0B44B901CB43A8330@SN2PR01MB1968.prod.exchangelabs.com>
 <SN2PR01MB1968049D5333EFD9A2ADE03CA8330@SN2PR01MB1968.prod.exchangelabs.com>
In-Reply-To: <SN2PR01MB1968049D5333EFD9A2ADE03CA8330@SN2PR01MB1968.prod.exchangelabs.com>
Date: Thu, 1 Oct 2020 10:25:42 -0400
Message-ID: <CAB__hTTjay0ypjBpqSqR1GYu1UdADuZg17G1MGdEfrZ7snJXTQ@mail.gmail.com>
To: "Andrews, Mark J." <andrews.250@osu.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] E320 SFP and RJ45 port problems/confusion
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4240197564037525912=="
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

--===============4240197564037525912==
Content-Type: multipart/alternative; boundary="000000000000231d7d05b09ccb2c"

--000000000000231d7d05b09ccb2c
Content-Type: text/plain; charset="UTF-8"

Hi Andrew,
I'm definitely no expert on networking, but the one thing that caught my
eye in the config below was the "netmask" for the enp30s0 port on the PC.
Why is this 0.0.0.0 instead of 255.255.255.0?
Rob

On Wed, Sep 30, 2020 at 3:00 PM Andrews, Mark J. via USRP-users <
usrp-users@lists.ettus.com> wrote:

>  Hello,
>
> I am getting started with an Ettus E320 on Ubuntu and am having some
> issues communicating over the streaming port that I have been unable to
> solve.  Based on what I'm seeing, I believe it has something to do with my
> PCs network settings because I can communicate with one port at a time
> without any problems.
> My current setup is a PC with one Ethernet connection on the motherboard
> and a separate WiFi PCIe card.  I connected the E320's RJ45 port to my WiFi
> router and the Ethernet connection is connected to the RJ45-to-SFP adapter
> on the E320's SFP+ port.  I am able to ssh into the E320 and run the
> example programs on there, but when I try to run uhd_find_devices or
> uhd_usrp_probe on my PC, there are issues.  I am running UHD 3.15 on both
> my PC and the E320.  I will separate what I think is relevant information
> with lines of equal signs for readability =========
>
> =====================================================================
>
>
> The ifconfig -a info for my PC:
>
>
> ifconfig -a
> enp30s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>         inet 192.168.10.1  netmask 0.0.0.0  broadcast 255.255.255.255
>         inet6 fe80::93f1:af0c:251:4642  prefixlen 64  scopeid 0x20<link>
>         ether b0:6e:bf:c1:18:57  txqueuelen 1000  (Ethernet)
>         RX packets 53  bytes 5865 (5.8 KB)
>         RX errors 0  dropped 0  overruns 0  frame 0
>         TX packets 180  bytes 26338 (26.3 KB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>         device memory 0xf7600000-f761ffff
>
> lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
>         inet 127.0.0.1  netmask 255.0.0.0
>         inet6 ::1  prefixlen 128  scopeid 0x10<host>
>         loop  txqueuelen 1000  (Local Loopback)
>         RX packets 2019  bytes 203709 (203.7 KB)
>         RX errors 0  dropped 0  overruns 0  frame 0
>         TX packets 2019  bytes 203709 (203.7 KB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>
> wlp37s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>         inet 192.168.1.20  netmask 255.255.255.0  broadcast 192.168.1.255
>         inet6 fe80::44e4:2e51:6e8f:9d35  prefixlen 64  scopeid 0x20<link>
>         ether 60:f6:77:96:f6:8b  txqueuelen 1000  (Ethernet)
>         RX packets 111178  bytes 146464516 (146.4 MB)
>         RX errors 0  dropped 0  overruns 0  frame 0
>         TX packets 51515  bytes 21064148 (21.0 MB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>
> ===================================================================
>
> The ifconfig -a on the E320 is:
>
>
> eth0      Link encap:Ethernet  HWaddr 00:80:2F:28:B9:3E
>           inet addr:192.168.1.18  Bcast:192.168.1.255  Mask:255.255.255.0
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:10667 errors:0 dropped:114 overruns:0 frame:0
>           TX packets:3142 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1000
>           RX bytes:14041114 (13.3 MiB)  TX bytes:233123 (227.6 KiB)
>           Interrupt:27 Base address:0xb000
>
> lo        Link encap:Local Loopback
>           inet addr:127.0.0.1  Mask:255.0.0.0
>           UP LOOPBACK RUNNING  MTU:65536  Metric:1
>           RX packets:23 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:23 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1000
>           RX bytes:2337 (2.2 KiB)  TX bytes:2337 (2.2 KiB)
>
> sfp0      Link encap:Ethernet  HWaddr 00:80:2F:28:B9:3F
>           inet addr:192.168.10.2  Bcast:192.168.10.255  Mask:255.255.255.0
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:38 errors:0 dropped:3 overruns:0 frame:0
>           TX packets:51 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1000
>           RX bytes:4118 (4.0 KiB)  TX bytes:5475 (5.3 KiB)
> ==================================================================
>
> If I try to ping the SFP port just using the 'ping' command, it does not
> work
>
> ping -c 4 192.168.10.2
> PING 192.168.10.2 (192.168.10.2) 56(84) bytes of data.
>
> --- 192.168.10.2 ping statistics ---
> 4 packets transmitted, 0 received, 100% packet loss, time 3063ms
>
> ==================================================================
>
> But if I force it to use the hardwaired interface, ping works fine.
>
> ping -I enp30s0 -c 4 192.168.10.2
> PING 192.168.10.2 (192.168.10.2) from 192.168.10.1 enp30s0: 56(84) bytes
> of data.
> 64 bytes from 192.168.10.2: icmp_seq=1 ttl=64 time=1.43 ms
> 64 bytes from 192.168.10.2: icmp_seq=2 ttl=64 time=1.44 ms
> 64 bytes from 192.168.10.2: icmp_seq=3 ttl=64 time=1.42 ms
> 64 bytes from 192.168.10.2: icmp_seq=4 ttl=64 time=0.961 ms
>
> --- 192.168.10.2 ping statistics ---
> 4 packets transmitted, 4 received, 0% packet loss, time 3005ms
> rtt min/avg/max/mdev = 0.961/1.312/1.443/0.203 ms
>
> ====================================================================
> If I run uhd_find_devices, my PC can see the E320, but it is listed as
> "reachable: no".
>
>
> ~$ uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_3.15.0.HEAD-0-gaea0e2de
>
> -- UHD Device 0
>
> Device Address:
>     serial: 31BEE1C
>     claimed: False
>     mgmt_addr: 192.168.1.18
>     product: e320
>     reachable: No
>     type: e3xx
>
> ===========================================================================
> If I run uhd_usrp_probe with "addr=192.168.1.18" it cannot detect a
> transport option
>
>
>  uhd_usrp_probe --args "addr=192.168.1.18"
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=192.168.1.18,type=e3xx,product=e320,serial=31BEE1C,claimed=False,addr=192.168.1.18
> [INFO] [MPM.PeriphManager] init() called with device args
> `mgmt_addr=192.168.1.18,product=e320'.
> [ERROR] [MPMD] Failure during block enumeration: : Could not select a
> transport option! Either a transport hint was not specified or the
> specified hint does not support communication with RFNoC blocks.
> Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()
>
> ===========================================================================
>
> If I run uhd_usrp_probe with "addr=192.168.10.2" it can't find the device:
>
>
> uhd_usrp_probe --args "addr=192.168.10.2"
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_3.15.0.HEAD-0-gaea0e2de
> Error: LookupError: KeyError: No devices found for ----->
> Device Address:
>     addr: 192.168.10.2
>
> ==========================================================================
>
> The uhd_config_info on the  my PC and the E320:
>
>  uhd_config_info --version
> UHD 3.15.0.HEAD-0-gaea0e2de
>
> ssh root@192.168.1.18
> root@ni-e320-31BEE1C:~# uhd_config_info --version
> UHD 3.15.0.0-0-gaea0e2de
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000231d7d05b09ccb2c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Andrew,</div><div>I&#39;m definitely no expert on =
networking, but the one thing that caught my eye in the config below was th=
e &quot;netmask&quot; for the=C2=A0enp30s0 port on the PC. Why is this 0.0.=
0.0 instead of 255.255.255.0?</div><div>Rob</div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 30, 2020 at 3:00 PM =
Andrews, Mark J. via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div>
<div id=3D"gmail-m_7348921206654473100divRplyFwdMsg" dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
=C2=A0Hello, <br>
</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am getting started with an Ettus E320 on Ubuntu and am having some issues=
 communicating over the streaming port that I have been unable to solve.=C2=
=A0 Based on what I&#39;m seeing, I believe it has something to do with my =
PCs network settings because I can communicate
 with one port at a time without any problems.=C2=A0 <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
My current setup is a PC with one Ethernet connection on the motherboard an=
d a separate WiFi PCIe card.=C2=A0 I connected the E320&#39;s RJ45 port to =
my WiFi router and the Ethernet connection is connected to the RJ45-to-SFP =
adapter on the E320&#39;s SFP+ port.=C2=A0 I am able
 to ssh into the E320 and run the example programs on there, but when I try=
 to run uhd_find_devices or uhd_usrp_probe on my PC, there are issues.=C2=
=A0 I am running UHD 3.15 on both my PC and the E320.=C2=A0 I will separate=
 what I think is relevant information with lines
 of equal signs for readability =3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
The ifconfig -a info for my PC:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
ifconfig -a
<div>enp30s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; =C2=A0mtu =
1500</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.10.1 =C2=A0netmask 0.0.0.0 =
=C2=A0broadcast 255.255.255.255</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::93f1:af0c:251:4642 =C2=A0prefi=
xlen 64 =C2=A0scopeid 0x20&lt;link&gt;</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether b0:6e:bf:c1:18:57 =C2=A0txqueuelen 1=
000 =C2=A0(Ethernet)</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 53 =C2=A0bytes 5865 (5.8 KB)</d=
iv>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0 =C2=A0dropped 0 =C2=A0overruns=
 0 =C2=A0frame 0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 180 =C2=A0bytes 26338 (26.3 KB)=
</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overruns 0 =C2=
=A0carrier 0 =C2=A0collisions 0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 device memory 0xf7600000-f761ffff =C2=A0</=
div>
<div><br>
</div>
<div>lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt; =C2=A0mtu 65536</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 127.0.0.1 =C2=A0netmask 255.0.0.0</di=
v>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 ::1 =C2=A0prefixlen 128 =C2=A0scopei=
d 0x10&lt;host&gt;</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 loop =C2=A0txqueuelen 1000 =C2=A0(Local Lo=
opback)</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 2019 =C2=A0bytes 203709 (203.7 =
KB)</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0 =C2=A0dropped 0 =C2=A0overruns=
 0 =C2=A0frame 0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 2019 =C2=A0bytes 203709 (203.7 =
KB)</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overruns 0 =C2=
=A0carrier 0 =C2=A0collisions 0</div>
<div><br>
</div>
<div>wlp37s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; =C2=A0mtu =
1500</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192.168.1.20 =C2=A0netmask 255.255.25=
5.0 =C2=A0broadcast 192.168.1.255</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::44e4:2e51:6e8f:9d35 =C2=A0pref=
ixlen 64 =C2=A0scopeid 0x20&lt;link&gt;</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether 60:f6:77:96:f6:8b =C2=A0txqueuelen 1=
000 =C2=A0(Ethernet)</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 111178 =C2=A0bytes 146464516 (1=
46.4 MB)</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0 =C2=A0dropped 0 =C2=A0overruns=
 0 =C2=A0frame 0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets 51515 =C2=A0bytes 21064148 (21.=
0 MB)</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overruns 0 =C2=
=A0carrier 0 =C2=A0collisions 0</div>
<div><br>
</div>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
The ifconfig -a on the E320 is:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
eth0 =C2=A0 =C2=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr 00:80:2F:28:B9:3E=
 =C2=A0
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:192.168.1.18 =C2=A0Bcast:=
192.168.1.255 =C2=A0Mask:255.255.255.0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP BROADCAST RUNNING MULTICAST =C2=
=A0MTU:1500 =C2=A0Metric:1</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:10667 errors:0 dropped:1=
14 overruns:0 frame:0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:3142 errors:0 dropped:0 =
overruns:0 carrier:0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:1000 </div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:14041114 (13.3 MiB) =C2=A0=
TX bytes:233123 (227.6 KiB)</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Interrupt:27 Base address:0xb000 </=
div>
<div><br>
</div>
<div>lo =C2=A0 =C2=A0 =C2=A0 =C2=A0Link encap:Local Loopback =C2=A0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:127.0.0.1 =C2=A0Mask:255.=
0.0.0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP LOOPBACK RUNNING =C2=A0MTU:65536=
 =C2=A0Metric:1</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:23 errors:0 dropped:0 ov=
erruns:0 frame:0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:23 errors:0 dropped:0 ov=
erruns:0 carrier:0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:1000 </div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:2337 (2.2 KiB) =C2=A0TX by=
tes:2337 (2.2 KiB)</div>
<div><br>
</div>
<div>sfp0 =C2=A0 =C2=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr 00:80:2F:28:=
B9:3F =C2=A0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:192.168.10.2 =C2=A0Bcast:=
192.168.10.255 =C2=A0Mask:255.255.255.0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP BROADCAST RUNNING MULTICAST =C2=
=A0MTU:1500 =C2=A0Metric:1</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:38 errors:0 dropped:3 ov=
erruns:0 frame:0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:51 errors:0 dropped:0 ov=
erruns:0 carrier:0</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:1000 </div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:4118 (4.0 KiB) =C2=A0TX by=
tes:5475 (5.3 KiB)</div>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
If I try to ping the SFP port just using the &#39;ping&#39; command, it doe=
s not work</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
ping -c 4 192.168.10.2
<div>PING 192.168.10.2 (192.168.10.2) 56(84) bytes of data.</div>
<div><br>
</div>
<div>--- 192.168.10.2 ping statistics ---</div>
<div>4 packets transmitted, 0 received, 100% packet loss, time 3063ms</div>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
But if I force it to use the hardwaired interface, ping works fine.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
</div>
ping -I enp30s0 -c 4 192.168.10.2
<div>PING 192.168.10.2 (192.168.10.2) from 192.168.10.1 enp30s0: 56(84) byt=
es of data.</div>
<div>64 bytes from <a href=3D"http://192.168.10.2" target=3D"_blank">192.16=
8.10.2</a>: icmp_seq=3D1 ttl=3D64 time=3D1.43 ms</div>
<div>64 bytes from <a href=3D"http://192.168.10.2" target=3D"_blank">192.16=
8.10.2</a>: icmp_seq=3D2 ttl=3D64 time=3D1.44 ms</div>
<div>64 bytes from <a href=3D"http://192.168.10.2" target=3D"_blank">192.16=
8.10.2</a>: icmp_seq=3D3 ttl=3D64 time=3D1.42 ms</div>
<div>64 bytes from <a href=3D"http://192.168.10.2" target=3D"_blank">192.16=
8.10.2</a>: icmp_seq=3D4 ttl=3D64 time=3D0.961 ms</div>
<div><br>
</div>
<div>--- 192.168.10.2 ping statistics ---</div>
<div>4 packets transmitted, 4 received, 0% packet loss, time 3005ms</div>
<div>rtt min/avg/max/mdev =3D 0.961/1.312/1.443/0.203 ms</div>
<br>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
If I run uhd_find_devices, my PC can see the E320, but it is listed as &quo=
t;reachable: no&quot;.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
~$ uhd_find_devices
<div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.HE=
AD-0-gaea0e2de</div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
-- UHD Device 0
<div><br>
</div>
<div>Device Address:</div>
<div>=C2=A0 =C2=A0 serial: 31BEE1C</div>
<div>=C2=A0 =C2=A0 claimed: False</div>
<div>=C2=A0 =C2=A0 mgmt_addr: 192.168.1.18</div>
<div>=C2=A0 =C2=A0 product: e320</div>
<div>=C2=A0 =C2=A0 reachable: No</div>
<div>=C2=A0 =C2=A0 type: e3xx</div>
<div><br>
</div>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>
If I run uhd_usrp_probe with &quot;addr=3D192.168.1.18&quot; it cannot dete=
ct a transport option<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
=C2=A0uhd_usrp_probe --args &quot;addr=3D192.168.1.18&quot;
<div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.HE=
AD-0-gaea0e2de</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.1.18,type=3De3xx,product=3De320,serial=3D31BEE1C,claimed=3DFals=
e,addr=3D192.168.1.18</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=
=3D192.168.1.18,product=3De320&#39;.</div>
<div>[ERROR] [MPMD] Failure during block enumeration: : Could not select a =
transport option! Either a transport hint was not specified or the specifie=
d hint does not support communication with RFNoC blocks.</div>
<div>Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()</div>
<div><br>
</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>
</div>
<div><br>
</div>
<div>If I run uhd_usrp_probe with &quot;addr=3D192.168.10.2&quot; it can&#3=
9;t find the device:<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>uhd_usrp_probe --args &quot;addr=3D192.168.10.2&quot;
<div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.HE=
AD-0-gaea0e2de</div>
<div>Error: LookupError: KeyError: No devices found for -----&gt;</div>
<div>Device Address:</div>
<div>=C2=A0 =C2=A0 addr: 192.168.10.2</div>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>
</div>
<br>
The uhd_config_info on the=C2=A0 my PC and the E320:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
=C2=A0uhd_config_info --version
<div>UHD 3.15.0.HEAD-0-gaea0e2de</div>
<div><br>
</div>
<div>ssh <a href=3D"mailto:root@192.168.1.18" target=3D"_blank">root@192.16=
8.1.18</a></div>
<div>root@ni-e320-31BEE1C:~# uhd_config_info --version</div>
<div>UHD 3.15.0.0-0-gaea0e2de</div>
<br>
<br>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000231d7d05b09ccb2c--


--===============4240197564037525912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4240197564037525912==--

