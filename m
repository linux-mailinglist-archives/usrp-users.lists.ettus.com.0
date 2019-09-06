Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B4DAB09C
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 04:29:45 +0200 (CEST)
Received: from [::1] (port=56250 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i640J-0004hw-9q; Thu, 05 Sep 2019 22:29:39 -0400
Received: from mail-io1-f54.google.com ([209.85.166.54]:40659)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <austinadam42@gmail.com>)
 id 1i640F-0004cb-GR
 for usrp-users@lists.ettus.com; Thu, 05 Sep 2019 22:29:35 -0400
Received: by mail-io1-f54.google.com with SMTP id h144so9344488iof.7
 for <usrp-users@lists.ettus.com>; Thu, 05 Sep 2019 19:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=HFvO1YBMq5yjsZHab8sSuXmkAKhMFQXM0n20ZXDmBd4=;
 b=ODZ1mcSgdJQVofVbKHce8VJSFCXPmSwVRQE63hqLtvSlp5bwdmNE47z+VhH2pbFvhD
 hABWPMy+V/OrtsOyj1iNwDXNrbjvbxgXGALvakeIh0ghtGKydwMB3/thLLffc9iBMxVi
 lpKY+wwpmNiwNCeRCGitQF2yKdvo2nrEFpBC8EPOkkHWZCAIfAVHX4xif3AFGowVBTho
 NfBNZ7z/FUDLRN8uBVjeitfHNwVyoMq+LL/HXpf7K7QEk3i5UUo1ZrcyDNzvXveMSk/L
 INsyDipqqriOuTNmTNOqQPXSHBrwX9a/DhE6xlwZSVStddmujubBBNuGDo34hOKGQuLF
 z2Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=HFvO1YBMq5yjsZHab8sSuXmkAKhMFQXM0n20ZXDmBd4=;
 b=sNhYeGiw0B9TJqPiV775TVzKsy7bN7Dkn7WUjNccatJMD5SjEUMg9oz/nsdeqCelEf
 va94zi2gz/u2gP1vRn01MHtAlwAqjQKqF9PFCs3Qfjk3jExI5lu1AS+TylK6GvIP5wOv
 qnGdJ847B5B3u1aYF9eNXnZRijgvUTbmMp6yOCl4mCCLaiZwJKNFcuJM8MIZueSl2N+u
 X9K6DeZ7lfQDoQLqpbKgKU6LZSHJk9w/6y8n572xGaFbSq96WIWXXKbmkVIdJpCI/7V3
 EZvHPXL9bn3WcjaPtYHs0gIi0cpTHzPQXLxpS+K8t5Hu7VXvgJCDhW4y5SroDcHyfA3v
 iPZg==
X-Gm-Message-State: APjAAAU1ZeVrwFd+b1laERbk1N1ZyNiAzoHz2vIymxM/5/hsz9644AWR
 k6285tinbfgbXOzKI0yi2ZLb2k6fl2NQrgmx5Lrnhfbb
X-Google-Smtp-Source: APXvYqzmBoBKXLddfMQsL3oY6vrJ68WpNRXT0euXmtq1bKgyN2CBfDwONBhrQNZSUNYW83YW0uTLk83kEFIKJIrGMKc=
X-Received: by 2002:a6b:c38f:: with SMTP id t137mr2352021iof.137.1567736934343; 
 Thu, 05 Sep 2019 19:28:54 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 5 Sep 2019 19:28:48 -0700
Message-ID: <CAMKs6hekcVsif-U7CR-YORv2-kMDJX-35e==qZT_VskV3PwKWA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP N310 Cannot ping or connect
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
From: Austin Adam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Austin Adam <austinadam42@gmail.com>
Content-Type: multipart/mixed; boundary="===============3079181897166591723=="
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

--===============3079181897166591723==
Content-Type: multipart/alternative; boundary="00000000000012aac70591d93354"

--00000000000012aac70591d93354
Content-Type: text/plain; charset="UTF-8"

I recently had my USRP N310 sent out for repairs to fix one of the SMA
connectors, and when it came back, there was a new SD card in the slot.
When I turned it on after getting it back, I was unable to connect to it
via 'uhd_find_devices'. I figured it was something with the SD card, so I
eventually decided to rewrite the whole thing, in case it needed an update.

That still did not fix the issue, and after trying just about everything,
and following every possible tutorial on the ettus docs, and checking the
forums, I have decided to ask you guys for help.

Below you can find all the information about the UHD versions and the
ifconfigs... hopefully that is enough to spark some ideas!

The USRP can find itself on localhost as you can see here:











*root@ni-n3xx-3177E63:~# uhd_find_devices[INFO] [UHD] linux; GNU C++
version 7.3.0; Boost_106600;
UHD_3.14.0.0-0-g6875d061----------------------------------------------------
UHD Device 0--------------------------------------------------Device
Address:    serial: 3177E63    claimed: False    mgmt_addr: 127.0.0.1
product: n310    type: n3xx*

But when I run the command from the host machine, this is what I get:



*admin@PC:~$ uhd_find_devices[INFO] [UHD] linux; GNU C++ version 8.3.0;
Boost_106700; UHD_3.14.0.HEAD-0-g6875d061No UHD Devices Found*

*Here is ifconfig from the USRP:*































*root@ni-n3xx-3177E63:~# ifconfigeth0      Link encap:Ethernet  HWaddr
00:80:2F:24:01:14          UP BROADCAST MULTICAST  MTU:1500  Metric:1
    RX packets:0 errors:0 dropped:0 overruns:0 frame:0          TX
packets:0 errors:0 dropped:0 overruns:0 carrier:0          collisions:0
txqueuelen:1000          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
Interrupt:27 Base address:0xb000lo        Link encap:Local Loopback
  inet addr:127.0.0.1  Mask:255.0.0.0          UP LOOPBACK RUNNING
 MTU:65536  Metric:1          RX packets:89 errors:0 dropped:0 overruns:0
frame:0          TX packets:89 errors:0 dropped:0 overruns:0 carrier:0
    collisions:0 txqueuelen:1000          RX bytes:7480 (7.3 KiB)  TX
bytes:7480 (7.3 KiB)sfp0      Link encap:Ethernet  HWaddr
00:80:2F:24:01:15          inet addr:192.168.10.2  Bcast:192.168.10.255
 Mask:255.255.255.0          UP BROADCAST RUNNING MULTICAST  MTU:8000
 Metric:1          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
    TX packets:14 errors:0 dropped:0 overruns:0 carrier:0
collisions:0 txqueuelen:1000          RX bytes:0 (0.0 B)  TX bytes:2577
(2.5 KiB)sfp1      Link encap:Ethernet  HWaddr 00:80:2F:24:01:16
UP BROADCAST MULTICAST  MTU:8000  Metric:1          RX packets:0 errors:0
dropped:0 overruns:0 frame:0          TX packets:1 errors:0 dropped:0
overruns:0 carrier:0          collisions:0 txqueuelen:1000          RX
bytes:0 (0.0 B)  TX bytes:62 (62.0 B)*



*And here is ifconfig from the host machine:*


























*ugikie@Austin-Blade:~$ ifconfigenx70886b87f283:
flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 8000        inet
192.168.10.1  netmask 255.255.255.0  broadcast 192.168.10.255        inet6
fe80::73b:c879:60cf:8127  prefixlen 64  scopeid 0x20<link>        ether
70:88:6b:87:f2:83  txqueuelen 1000  (Ethernet)        RX packets 0  bytes 0
(0.0 B)        RX errors 0  dropped 0  overruns 0  frame 0        TX
packets 46  bytes 4966 (4.9 KB)        TX errors 0  dropped 0 overruns 0
 carrier 0  collisions 0lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
inet 127.0.0.1  netmask 255.0.0.0        inet6 ::1  prefixlen 128  scopeid
0x10<host>        loop  txqueuelen 1000  (Local Loopback)        RX packets
5037  bytes 466961 (466.9 KB)        RX errors 0  dropped 0  overruns 0
 frame 0        TX packets 5037  bytes 466961 (466.9 KB)        TX errors 0
 dropped 0 overruns 0  carrier 0  collisions 0wlp59s0:
flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500        inet
172.28.229.114  netmask 255.255.240.0  broadcast 172.28.239.255
inet6 fe80::c9b4:5623:34c4:ae56  prefixlen 64  scopeid 0x20<link>
ether 9c:b6:d0:18:53:3f  txqueuelen 1000  (Ethernet)        RX packets
110339  bytes 123997000 (123.9 MB)        RX errors 0  dropped 0  overruns
0  frame 0        TX packets 47191  bytes 11048840 (11.0 MB)        TX
errors 0  dropped 0 overruns 0  carrier 0  collisions 0*

I tried broadcast pinging 192.168.10.255  and 192.168.10.2 from the host
but didn't get a response from the N310 or anything for that matter.

I hope someone out there can help me out! Thank you in advance :)

Best,
Austin

--00000000000012aac70591d93354
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I recently had my USRP N310 sent out for repairs to fix on=
e of the SMA connectors, and when it came back, there was a new SD card in =
the slot. When I turned it on after getting it back, I was unable to connec=
t to it via &#39;uhd_find_devices&#39;. I figured it was something=C2=A0wit=
h the SD card, so I eventually decided to rewrite=C2=A0the whole thing, in =
case it needed an update.<div><br></div><div>That still did not fix the iss=
ue, and after trying just about everything, and following every possible tu=
torial on the ettus docs, and checking the forums, I have decided to ask yo=
u guys for help.</div><div><br></div><div>Below you can find all the inform=
ation about the UHD versions and the ifconfigs... hopefully that is enough =
to spark some ideas!</div><div><br></div><div>The USRP can find itself=C2=
=A0on localhost as you can see here:</div><div><br></div><div><div><i>root@=
ni-n3xx-3177E63:~# uhd_find_devices<br>[INFO] [UHD] linux; GNU C++ version =
7.3.0; Boost_106600; UHD_3.14.0.0-0-g6875d061<br>--------------------------=
------------------------<br>-- UHD Device 0<br>----------------------------=
----------------------<br>Device Address:<br>=C2=A0 =C2=A0 serial: 3177E63<=
br>=C2=A0 =C2=A0 claimed: False<br>=C2=A0 =C2=A0 mgmt_addr: 127.0.0.1<br>=
=C2=A0 =C2=A0 product: n310<br>=C2=A0 =C2=A0 type: n3xx</i><br></div><div><=
br></div><div>But when I run the command from the host machine, this is wha=
t I get:</div><div><i><br>admin@PC:~$ uhd_find_devices<br>[INFO] [UHD] linu=
x; GNU C++ version 8.3.0; Boost_106700; UHD_3.14.0.HEAD-0-g6875d061<br>No U=
HD Devices Found</i></div></div><div><i><br></i></div><div><b>Here is ifcon=
fig from the USRP:</b></div><div><b><br></b></div><div><font color=3D"#0000=
00"><i style=3D"">root@ni-n3xx-3177E63:~# ifconfig<br>eth0 =C2=A0 =C2=A0 =
=C2=A0Link encap:Ethernet =C2=A0HWaddr 00:80:2F:24:01:14<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 UP BROADCAST MULTICAST =C2=A0MTU:1500 =C2=A0Metric:1<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:0 errors:0 dropped:0 overru=
ns:0 frame:0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:0 errors:0 dr=
opped:0 overruns:0 carrier:0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisio=
ns:0 txqueuelen:1000<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:0 (0.0 =
B) =C2=A0TX bytes:0 (0.0 B)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Interrupt=
:27 Base address:0xb000<br><br>lo =C2=A0 =C2=A0 =C2=A0 =C2=A0Link encap:Loc=
al Loopback<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:127.0.0.1 =C2=
=A0Mask:255.0.0.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP LOOPBACK RUNNING=
 =C2=A0MTU:65536 =C2=A0Metric:1<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX pa=
ckets:89 errors:0 dropped:0 overruns:0 frame:0<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 TX packets:89 errors:0 dropped:0 overruns:0 carrier:0<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:1000<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 RX bytes:7480 (7.3 KiB) =C2=A0TX bytes:7480 (7.3 KiB)<=
br><br>sfp0 =C2=A0 =C2=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr 00:80:2F:2=
4:01:15<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:192.168.10.2 =C2=A0=
Bcast:192.168.10.255 =C2=A0Mask:255.255.255.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 UP BROADCAST RUNNING MULTICAST =C2=A0MTU:8000 =C2=A0Metric:1<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:0 errors:0 dropped:0 overruns=
:0 frame:0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:14 errors:0 dro=
pped:0 overruns:0 carrier:0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collision=
s:0 txqueuelen:1000<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:0 (0.0 B=
) =C2=A0TX bytes:2577 (2.5 KiB)<br><br>sfp1 =C2=A0 =C2=A0 =C2=A0Link encap:=
Ethernet =C2=A0HWaddr 00:80:2F:24:01:16<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 UP BROADCAST MULTICAST =C2=A0MTU:8000 =C2=A0Metric:1<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 RX packets:0 errors:0 dropped:0 overruns:0 frame:0<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:1 errors:0 dropped:0 overruns=
:0 carrier:0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:=
1000<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:0 (0.0 B) =C2=A0TX byte=
s:62 (62.0 B)</i>=C2=A0</font>=C2=A0<br></div><div><br></div><div><b>And he=
re is ifconfig from the host machine:<br><br></b></div><div><div><i>ugikie@=
Austin-Blade:~$ ifconfig<br>enx70886b87f283: flags=3D4163&lt;UP,BROADCAST,R=
UNNING,MULTICAST&gt; =C2=A0mtu 8000<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 192=
.168.10.1 =C2=A0netmask 255.255.255.0 =C2=A0broadcast 192.168.10.255<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe80::73b:c879:60cf:8127 =C2=A0prefixlen 64 =
=C2=A0scopeid 0x20&lt;link&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether 70:88:6=
b:87:f2:83 =C2=A0txqueuelen 1000 =C2=A0(Ethernet)<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 RX packets 0 =C2=A0bytes 0 (0.0 B)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX=
 errors 0 =C2=A0dropped 0 =C2=A0overruns 0 =C2=A0frame 0<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 TX packets 46 =C2=A0bytes 4966 (4.9 KB)<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 TX errors 0 =C2=A0dropped 0 overruns 0 =C2=A0carrier 0 =C2=A0col=
lisions 0<br><br>lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt; =C2=A0mtu 65536<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 127.0.0.1 =C2=A0netmask 255.0.0.0<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 ::1 =C2=A0prefixlen 128 =C2=A0scopeid 0x1=
0&lt;host&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 loop =C2=A0txqueuelen 1000 =C2=
=A0(Local Loopback)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 5037 =C2=A0by=
tes 466961 (466.9 KB)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0 =C2=A0drop=
ped 0 =C2=A0overruns 0 =C2=A0frame 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX pack=
ets 5037 =C2=A0bytes 466961 (466.9 KB)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX er=
rors 0 =C2=A0dropped 0 overruns 0 =C2=A0carrier 0 =C2=A0collisions 0<br><br=
>wlp59s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; =C2=A0mtu 1500=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet 172.28.229.114 =C2=A0netmask 255.255.2=
40.0 =C2=A0broadcast 172.28.239.255<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 fe=
80::c9b4:5623:34c4:ae56 =C2=A0prefixlen 64 =C2=A0scopeid 0x20&lt;link&gt;<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ether 9c:b6:d0:18:53:3f =C2=A0txqueuelen 1000=
 =C2=A0(Ethernet)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets 110339 =C2=A0by=
tes 123997000 (123.9 MB)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX errors 0 =C2=A0d=
ropped 0 =C2=A0overruns 0 =C2=A0frame 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 TX p=
ackets 47191 =C2=A0bytes 11048840 (11.0 MB)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
TX errors 0 =C2=A0dropped 0 overruns 0 =C2=A0carrier 0 =C2=A0collisions 0</=
i><br></div><div><br></div><div>I tried broadcast pinging 192.168.10.255=C2=
=A0 and 192.168.10.2 from the host but didn&#39;t get a response from the N=
310 or anything for that matter.</div><div><br></div><div>I hope someone ou=
t there can help me out! Thank you in advance :)</div><div><br></div><div>B=
est,</div><div>Austin</div><div><br></div></div></div>

--00000000000012aac70591d93354--


--===============3079181897166591723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3079181897166591723==--

