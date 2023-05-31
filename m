Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D23E7187A6
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 18:42:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7789E38481D
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 12:42:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685551324; bh=GxZga0JYnYg1kdv1u4pxSvhKpprVSCiG80S5NvVoyv8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=JUB5qD7EICI109dZzZgYqNBzjcsAldILbd6AGI4+ojikliDSzYi+bG99+hZDMbJhF
	 zZH8WGswC9UuOxK3J5IFoyKCaMhTeWeAzfle5PZbX97QVTXQbj/s1NCL+N0CNB5w4T
	 LKrcXx7SLikDAJhUthecmWhWwsZqnCPfMRQCoD6j3jrBAUnyRWKOszxBCC8wLlpXDg
	 cQyXioOb9SV5WeO3yZZrMer7VlQK8wDxPmxhVnMvkdqCqGkogllr1v8d7thqBpa+H9
	 OhVxC5y/SjRq+UxsBxu1vHKwu9N+yH9jelW2q23TUyu05By5ydBDoYRnv+M0DfUGTa
	 zWNLi2DDNeBzg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 292E638182D
	for <usrp-users@lists.ettus.com>; Wed, 31 May 2023 12:41:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685551264; bh=7DKPPwO0/8syp+5mnG8d1VFsRyWkVitVtKm6TXeL49I=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=iIHVBFijWRHihLk6MrdOJrUv/7qB/JsoNjE19/iWVrlAaTkAdmxGgIHZF5RTM7tvH
	 24A8jCKQqBDXGUxGV9VzP0IsID4ItdkyRnUmIcI/APZi4fjEy79XtnPRMn1qWzNHtH
	 UtwJgqdcryoQkRQP/v9ZpM/qO/kngqATRdVISi+xol02R3SbEWeRYFNaYOX4iWVVZx
	 nkNM0QrTbGsH7F67tnto0AUuu+i1YJa8Yc3QpixxvehXe9h9tpZehBGcMgu4izqmkv
	 3OWY/G6trFxrhHe5GoUWkb9EISz5GkHPNXMHjdI5ldbCxABGoMg9LxJAibNTaQlJHd
	 gQmFmZVq/qofQ==
Date: Wed, 31 May 2023 16:41:04 +0000
To: usrp-users@lists.ettus.com
From: pistachio6981@gmail.com
Message-ID: <5H6uJpHd7KigIxgJCuF8lXTbAP3YAlXCNEzdoQ58AA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: d46f8616-d334-9eea-0223-d1c66fe3b638@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 6UPFETEKKT2IKEVR3FFLXNF4L6ZME2QH
X-Message-ID-Hash: 6UPFETEKKT2IKEVR3FFLXNF4L6ZME2QH
X-MailFrom: pistachio6981@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 help
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6UPFETEKKT2IKEVR3FFLXNF4L6ZME2QH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6131958623194514654=="

This is a multi-part message in MIME format.

--===============6131958623194514654==
Content-Type: multipart/alternative;
 boundary="b1_5H6uJpHd7KigIxgJCuF8lXTbAP3YAlXCNEzdoQ58AA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_5H6uJpHd7KigIxgJCuF8lXTbAP3YAlXCNEzdoQ58AA
Content-Type: text/plain; charset=us-ascii

the image should be just fine, there are no other devices that are on the same subnet as the sdr interfaces are on. Here are interfaces on the server that is trying to connect to the x410:\
\
ens18: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500

        inet 192.168.0.148  netmask 255.255.255.0  broadcast 192.168.0.255

        inet6 fe80::d75b:dde7:bb0d:bf0e  prefixlen 64  scopeid 0x20<link>

        ether 22:73:df:f4:97:21  txqueuelen 1000  (Ethernet)

        RX packets 1766  bytes 402332 (402.3 KB)

        RX errors 0  dropped 119  overruns 0  frame 0

        TX packets 1444  bytes 2596987 (2.5 MB)

        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

ens17f0np0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500

        inet 192.168.10.3  netmask 255.255.255.0  broadcast 192.168.10.255

        inet6 fe80::eaeb:d3ff:fe43:3ec8  prefixlen 64  scopeid 0x20<link>

        ether e8:eb:d3:43:3e:c8  txqueuelen 1000  (Ethernet)

        RX packets 0  bytes 0 (0.0 B)

        RX errors 0  dropped 0  overruns 0  frame 0

        TX packets 51  bytes 6608 (6.6 KB)

        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

ens17f1np1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500

        inet 192.168.11.3  netmask 255.255.255.0  broadcast 192.168.11.255

        inet6 fe80::eaeb:d3ff:fe43:3ec9  prefixlen 64  scopeid 0x20<link>

        ether e8:eb:d3:43:3e:c9  txqueuelen 1000  (Ethernet)

        RX packets 0  bytes 0 (0.0 B)

        RX errors 0  dropped 0  overruns 0  frame 0

        TX packets 51  bytes 6617 (6.6 KB)

        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

ens27f0np0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500

        inet 192.168.12.3  netmask 255.255.255.0  broadcast 192.168.12.255

        inet6 fe80::eaeb:d3ff:fe55:dc00  prefixlen 64  scopeid 0x20<link>

        ether e8:eb:d3:55:dc:00  txqueuelen 1000  (Ethernet)

        RX packets 0  bytes 0 (0.0 B)

        RX errors 0  dropped 0  overruns 0  frame 0

        TX packets 51  bytes 6633 (6.6 KB)

        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

ens27f1np1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500

        inet 192.168.13.3  netmask 255.255.255.0  broadcast 192.168.13.255

        inet6 fe80::eaeb:d3ff:fe55:dc01  prefixlen 64  scopeid 0x20<link>

        ether e8:eb:d3:55:dc:01  txqueuelen 1000  (Ethernet)

        RX packets 0  bytes 0 (0.0 B)

        RX errors 0  dropped 0  overruns 0  frame 0

        TX packets 51  bytes 6612 (6.6 KB)

        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0\
\
Here are the interfaces on the x410:\
\
eth0      Link encap:Ethernet  HWaddr 00:80:2F:36:2B:C6  

          inet addr:192.168.0.165  Bcast:192.168.0.255  Mask:255.255.255.0

          inet6 addr: fe80::280:2fff:fe36:2bc6/64 Scope:Link

          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1

          RX packets:4232 errors:0 dropped:988 overruns:0 frame:0

          TX packets:335 errors:0 dropped:0 overruns:0 carrier:0

          collisions:0 txqueuelen:1000 

          RX bytes:440934 (430.5 KiB)  TX bytes:37656 (36.7 KiB)

          Interrupt:19 

int0      Link encap:Ethernet  HWaddr AE:4A:B9:D0:0B:25  

          inet addr:169.254.0.1  Bcast:169.254.0.255  Mask:255.255.255.0

          inet6 addr: fe80::ac4a:b9ff:fed0:b25/64 Scope:Link

          UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1

          RX packets:17079 errors:0 dropped:0 overruns:0 frame:0

          TX packets:17134 errors:0 dropped:0 overruns:0 carrier:0

          collisions:0 txqueuelen:1000 

          RX bytes:1127294 (1.0 MiB)  TX bytes:1136890 (1.0 MiB)

lo        Link encap:Local Loopback  

          inet addr:127.0.0.1  Mask:255.0.0.0

          inet6 addr: ::1/128 Scope:Host

          UP LOOPBACK RUNNING  MTU:65536  Metric:1

          RX packets:973 errors:0 dropped:0 overruns:0 frame:0

          TX packets:973 errors:0 dropped:0 overruns:0 carrier:0

          collisions:0 txqueuelen:1000 

          RX bytes:73015 (71.3 KiB)  TX bytes:73015 (71.3 KiB)

sfp0      Link encap:Ethernet  HWaddr 00:80:2F:36:2B:C7  

          inet addr:192.168.10.2  Bcast:192.168.10.255  Mask:255.255.255.0

          inet6 addr: fe80::280:2fff:fe36:2bc7/64 Scope:Link

          UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1

          RX packets:288 errors:0 dropped:0 overruns:0 frame:0

          TX packets:560 errors:0 dropped:0 overruns:0 carrier:0

          collisions:0 txqueuelen:1000 

          RX bytes:38774 (37.8 KiB)  TX bytes:137733 (134.5 KiB)

sfp0_1    Link encap:Ethernet  HWaddr 00:80:2F:36:2B:C8  

          inet addr:192.168.11.2  Bcast:192.168.11.255  Mask:255.255.255.0

          inet6 addr: fe80::280:2fff:fe36:2bc8/64 Scope:Link

          UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1

          RX packets:335 errors:0 dropped:0 overruns:0 frame:0

          TX packets:94 errors:0 dropped:0 overruns:0 carrier:0

          collisions:0 txqueuelen:1000 

          RX bytes:45298 (44.2 KiB)  TX bytes:14410 (14.0 KiB)

sfp0_2    Link encap:Ethernet  HWaddr 00:80:2F:36:2B:C9  

          inet addr:192.168.12.2  Bcast:192.168.12.255  Mask:255.255.255.0

          inet6 addr: fe80::280:2fff:fe36:2bc9/64 Scope:Link

          UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1

          RX packets:657 errors:0 dropped:0 overruns:0 frame:0

          TX packets:66 errors:0 dropped:0 overruns:0 carrier:0

          collisions:0 txqueuelen:1000 

          RX bytes:162231 (158.4 KiB)  TX bytes:10541 (10.2 KiB)

sfp0_3    Link encap:Ethernet  HWaddr 00:80:2F:36:2B:CA  

          inet addr:192.168.13.2  Bcast:192.168.13.255  Mask:255.255.255.0

          inet6 addr: fe80::280:2fff:fe36:2bca/64 Scope:Link

          UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1

          RX packets:325 errors:0 dropped:0 overruns:0 frame:0

          TX packets:168 errors:0 dropped:0 overruns:0 carrier:0

          collisions:0 txqueuelen:1000 

          RX bytes:41365 (40.3 KiB)  TX bytes:22845 (22.3 KiB)\
\
Maybe we set up our netplan rules wrong, here is an example of what we currently have for one of the interfaces:\
\
network:

  version: 2

  renderer: NetworkManager

  ethernets:

    ens17f0np0:

      dhcp4: no

      dhcp6: no

      addresses: \[192.168.10.3/24\]

      nameservers:

        addresses: \[8.8.8.8,8.8.4.4\]\
\
Thank you so much for your time and help.

--b1_5H6uJpHd7KigIxgJCuF8lXTbAP3YAlXCNEzdoQ58AA
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>the image should be just fine, there are no other devices that are on th=
e same subnet as the sdr interfaces are on. Here are interfaces on the serv=
er that is trying to connect to the x410:<br><br>ens18: flags=3D4163&lt;UP,=
BROADCAST,RUNNING,MULTICAST&gt;  mtu 1500</p><p>        inet 192.168.0.148 =
 netmask 255.255.255.0  broadcast 192.168.0.255</p><p>        inet6 fe80::d=
75b:dde7:bb0d:bf0e  prefixlen 64  scopeid 0x20&lt;link&gt;</p><p>        et=
her 22:73:df:f4:97:21  txqueuelen 1000  (Ethernet)</p><p>        RX packets=
 1766  bytes 402332 (402.3 KB)</p><p>        RX errors 0  dropped 119  over=
runs 0  frame 0</p><p>        TX packets 1444  bytes 2596987 (2.5 MB)</p><p=
>        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0</p><p>e=
ns17f0np0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 1500</p>=
<p>        inet 192.168.10.3  netmask 255.255.255.0  broadcast 192.168.10.2=
55</p><p>        inet6 fe80::eaeb:d3ff:fe43:3ec8  prefixlen 64  scopeid 0x2=
0&lt;link&gt;</p><p>        ether e8:eb:d3:43:3e:c8  txqueuelen 1000  (Ethe=
rnet)</p><p>        RX packets 0  bytes 0 (0.0 B)</p><p>        RX errors 0=
  dropped 0  overruns 0  frame 0</p><p>        TX packets 51  bytes 6608 (6=
.6 KB)</p><p>        TX errors 0  dropped 0 overruns 0  carrier 0  collisio=
ns 0</p><p>ens17f1np1: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  =
mtu 1500</p><p>        inet 192.168.11.3  netmask 255.255.255.0  broadcast =
192.168.11.255</p><p>        inet6 fe80::eaeb:d3ff:fe43:3ec9  prefixlen 64 =
 scopeid 0x20&lt;link&gt;</p><p>        ether e8:eb:d3:43:3e:c9  txqueuelen=
 1000  (Ethernet)</p><p>        RX packets 0  bytes 0 (0.0 B)</p><p>       =
 RX errors 0  dropped 0  overruns 0  frame 0</p><p>        TX packets 51  b=
ytes 6617 (6.6 KB)</p><p>        TX errors 0  dropped 0 overruns 0  carrier=
 0  collisions 0</p><p>ens27f0np0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MUL=
TICAST&gt;  mtu 1500</p><p>        inet 192.168.12.3  netmask 255.255.255.0=
  broadcast 192.168.12.255</p><p>        inet6 fe80::eaeb:d3ff:fe55:dc00  p=
refixlen 64  scopeid 0x20&lt;link&gt;</p><p>        ether e8:eb:d3:55:dc:00=
  txqueuelen 1000  (Ethernet)</p><p>        RX packets 0  bytes 0 (0.0 B)</=
p><p>        RX errors 0  dropped 0  overruns 0  frame 0</p><p>        TX p=
ackets 51  bytes 6633 (6.6 KB)</p><p>        TX errors 0  dropped 0 overrun=
s 0  carrier 0  collisions 0</p><p>ens27f1np1: flags=3D4163&lt;UP,BROADCAST=
,RUNNING,MULTICAST&gt;  mtu 1500</p><p>        inet 192.168.13.3  netmask 2=
55.255.255.0  broadcast 192.168.13.255</p><p>        inet6 fe80::eaeb:d3ff:=
fe55:dc01  prefixlen 64  scopeid 0x20&lt;link&gt;</p><p>        ether e8:eb=
:d3:55:dc:01  txqueuelen 1000  (Ethernet)</p><p>        RX packets 0  bytes=
 0 (0.0 B)</p><p>        RX errors 0  dropped 0  overruns 0  frame 0</p><p>=
        TX packets 51  bytes 6612 (6.6 KB)</p><p>        TX errors 0  dropp=
ed 0 overruns 0  carrier 0  collisions 0<br><br>Here are the interfaces on =
the x410:<br><br>eth0      Link encap:Ethernet  HWaddr 00:80:2F:36:2B:C6  <=
/p><p>          inet addr:192.168.0.165  Bcast:192.168.0.255  Mask:255.255.=
255.0</p><p>          inet6 addr: fe80::280:2fff:fe36:2bc6/64 Scope:Link</p=
><p>          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1</p><p>    =
      RX packets:4232 errors:0 dropped:988 overruns:0 frame:0</p><p>       =
   TX packets:335 errors:0 dropped:0 overruns:0 carrier:0</p><p>          c=
ollisions:0 txqueuelen:1000 </p><p>          RX bytes:440934 (430.5 KiB)  T=
X bytes:37656 (36.7 KiB)</p><p>          Interrupt:19 </p><p>int0      Link=
 encap:Ethernet  HWaddr AE:4A:B9:D0:0B:25  </p><p>          inet addr:169.2=
54.0.1  Bcast:169.254.0.255  Mask:255.255.255.0</p><p>          inet6 addr:=
 fe80::ac4a:b9ff:fed0:b25/64 Scope:Link</p><p>          UP BROADCAST RUNNIN=
G MULTICAST  MTU:9000  Metric:1</p><p>          RX packets:17079 errors:0 d=
ropped:0 overruns:0 frame:0</p><p>          TX packets:17134 errors:0 dropp=
ed:0 overruns:0 carrier:0</p><p>          collisions:0 txqueuelen:1000 </p>=
<p>          RX bytes:1127294 (1.0 MiB)  TX bytes:1136890 (1.0 MiB)</p><p>l=
o        Link encap:Local Loopback  </p><p>          inet addr:127.0.0.1  M=
ask:255.0.0.0</p><p>          inet6 addr: ::1/128 Scope:Host</p><p>        =
  UP LOOPBACK RUNNING  MTU:65536  Metric:1</p><p>          RX packets:973 e=
rrors:0 dropped:0 overruns:0 frame:0</p><p>          TX packets:973 errors:=
0 dropped:0 overruns:0 carrier:0</p><p>          collisions:0 txqueuelen:10=
00 </p><p>          RX bytes:73015 (71.3 KiB)  TX bytes:73015 (71.3 KiB)</p=
><p>sfp0      Link encap:Ethernet  HWaddr 00:80:2F:36:2B:C7  </p><p>       =
   inet addr:192.168.10.2  Bcast:192.168.10.255  Mask:255.255.255.0</p><p> =
         inet6 addr: fe80::280:2fff:fe36:2bc7/64 Scope:Link</p><p>         =
 UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1</p><p>          RX pack=
ets:288 errors:0 dropped:0 overruns:0 frame:0</p><p>          TX packets:56=
0 errors:0 dropped:0 overruns:0 carrier:0</p><p>          collisions:0 txqu=
euelen:1000 </p><p>          RX bytes:38774 (37.8 KiB)  TX bytes:137733 (13=
4.5 KiB)</p><p>sfp0_1    Link encap:Ethernet  HWaddr 00:80:2F:36:2B:C8  </p=
><p>          inet addr:192.168.11.2  Bcast:192.168.11.255  Mask:255.255.25=
5.0</p><p>          inet6 addr: fe80::280:2fff:fe36:2bc8/64 Scope:Link</p><=
p>          UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1</p><p>      =
    RX packets:335 errors:0 dropped:0 overruns:0 frame:0</p><p>          TX=
 packets:94 errors:0 dropped:0 overruns:0 carrier:0</p><p>          collisi=
ons:0 txqueuelen:1000 </p><p>          RX bytes:45298 (44.2 KiB)  TX bytes:=
14410 (14.0 KiB)</p><p>sfp0_2    Link encap:Ethernet  HWaddr 00:80:2F:36:2B=
:C9  </p><p>          inet addr:192.168.12.2  Bcast:192.168.12.255  Mask:25=
5.255.255.0</p><p>          inet6 addr: fe80::280:2fff:fe36:2bc9/64 Scope:L=
ink</p><p>          UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1</p><=
p>          RX packets:657 errors:0 dropped:0 overruns:0 frame:0</p><p>    =
      TX packets:66 errors:0 dropped:0 overruns:0 carrier:0</p><p>         =
 collisions:0 txqueuelen:1000 </p><p>          RX bytes:162231 (158.4 KiB) =
 TX bytes:10541 (10.2 KiB)</p><p>sfp0_3    Link encap:Ethernet  HWaddr 00:8=
0:2F:36:2B:CA  </p><p>          inet addr:192.168.13.2  Bcast:192.168.13.25=
5  Mask:255.255.255.0</p><p>          inet6 addr: fe80::280:2fff:fe36:2bca/=
64 Scope:Link</p><p>          UP BROADCAST RUNNING MULTICAST  MTU:9000  Met=
ric:1</p><p>          RX packets:325 errors:0 dropped:0 overruns:0 frame:0<=
/p><p>          TX packets:168 errors:0 dropped:0 overruns:0 carrier:0</p><=
p>          collisions:0 txqueuelen:1000 </p><p>          RX bytes:41365 (4=
0.3 KiB)  TX bytes:22845 (22.3 KiB)<br><br>Maybe we set up our netplan rule=
s wrong, here is an example of what we currently have for one of the interf=
aces:<br><br>network:</p><p>  version: 2</p><p>  renderer: NetworkManager</=
p><p>  ethernets:</p><p>    ens17f0np0:</p><p>      dhcp4: no</p><p>      d=
hcp6: no</p><p>      addresses: [192.168.10.3/24]</p><p>      nameservers:<=
/p><p>        addresses: [8.8.8.8,8.8.4.4]<br><br>Thank you so much for you=
r time and help.</p>

--b1_5H6uJpHd7KigIxgJCuF8lXTbAP3YAlXCNEzdoQ58AA--

--===============6131958623194514654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6131958623194514654==--
