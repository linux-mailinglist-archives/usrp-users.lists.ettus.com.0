Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D154679F6
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 16:05:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F23593858BB
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 10:05:41 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C649385563
	for <usrp-users@lists.ettus.com>; Fri,  3 Dec 2021 10:02:48 -0500 (EST)
Date: Fri, 3 Dec 2021 15:02:48 +0000
To: usrp-users@lists.ettus.com
From: iw1fnw@gmail.com
Message-ID: <9dQokdxM5v15U6XVvLmuzBGPbKx9xoKp64CaPmcKTPA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 0a5ac639-1c91-72a2-a104-8f17288c27e1@gmail.com
MIME-Version: 1.0
Message-ID-Hash: URC5L4JJE2TKYXOY3FZCEGNRS34KHZLN
X-Message-ID-Hash: URC5L4JJE2TKYXOY3FZCEGNRS34KHZLN
X-MailFrom: iw1fnw@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/URC5L4JJE2TKYXOY3FZCEGNRS34KHZLN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5476317647208552707=="

This is a multi-part message in MIME format.

--===============5476317647208552707==
Content-Type: multipart/alternative;
 boundary="b1_9dQokdxM5v15U6XVvLmuzBGPbKx9xoKp64CaPmcKTPA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_9dQokdxM5v15U6XVvLmuzBGPbKx9xoKp64CaPmcKTPA
Content-Type: text/plain; charset=us-ascii

The NIC is an Intel X710 Dual Port 10Gb Direct Attach, SFP+,PCIe. MTU is now 9000. I tried now with 1500, but still same error. I still have to check with new image, if any.

```
abusso@ttclabsdr:~$ ifconfig
eno1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.181.165.152  netmask 255.255.252.0  broadcast 10.181.167.255
        inet6 fe80::a6bb:6dff:feae:de8  prefixlen 64  scopeid 0x20<link>
        ether a4:bb:6d:ae:0d:e8  txqueuelen 1000  (Ethernet)
        RX packets 543759  bytes 60330968 (60.3 MB)
        RX errors 0  dropped 8713  overruns 0  frame 0
        TX packets 24251  bytes 13359677 (13.3 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 16  memory 0x92f00000-92f20000

enp4s0f0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.30.1  netmask 255.255.255.0  broadcast 192.168.30.255
        inet6 fe80::faf2:1eff:fe98:e70  prefixlen 64  scopeid 0x20<link>
        ether f8:f2:1e:98:0e:70  txqueuelen 1000  (Ethernet)
        RX packets 2493  bytes 3406398 (3.4 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2662  bytes 4716866 (4.7 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enp4s0f1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.40.1  netmask 255.255.255.0  broadcast 192.168.40.255
        inet6 fe80::faf2:1eff:fe98:e71  prefixlen 64  scopeid 0x20<link>
        ether f8:f2:1e:98:0e:71  txqueuelen 1000  (Ethernet)
        RX packets 305761  bytes 76146924 (76.1 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 24113  bytes 38423211 (38.4 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enx0050b661c3db: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.100.1  netmask 255.255.255.0  broadcast 192.168.100.255
        inet6 fe80::250:b6ff:fe61:c3db  prefixlen 64  scopeid 0x20<link>
        ether 00:50:b6:61:c3:db  txqueuelen 1000  (Ethernet)
        RX packets 8896  bytes 585296 (585.2 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 310  bytes 38402 (38.4 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 7296  bytes 23262505 (23.2 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 7296  bytes 23262505 (23.2 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

abusso@ttclabsdr:~$ uhd_image_loader --args "type=x300,addr=192.168.30.2"
linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown

Unit: USRP X310 (31D7872, 192.168.30.2)
FPGA Image: /usr/share/uhd/images/usrp_x310_fpga_XG.bit
failed.
Error: RuntimeError: Device reported an error during initialization.
abusso@ttclabsdr:~$
```

--b1_9dQokdxM5v15U6XVvLmuzBGPbKx9xoKp64CaPmcKTPA
Content-Type: text/html; charset=us-ascii

<p>The NIC is an Intel X710 Dual Port 10Gb Direct Attach, SFP+,PCIe. MTU is now 9000. I tried now with 1500, but still same error. I still have to check with new image, if any.</p><pre><code>abusso@ttclabsdr:~$ ifconfig
eno1: flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 1500
        inet 10.181.165.152  netmask 255.255.252.0  broadcast 10.181.167.255
        inet6 fe80::a6bb:6dff:feae:de8  prefixlen 64  scopeid 0x20&lt;link&gt;
        ether a4:bb:6d:ae:0d:e8  txqueuelen 1000  (Ethernet)
        RX packets 543759  bytes 60330968 (60.3 MB)
        RX errors 0  dropped 8713  overruns 0  frame 0
        TX packets 24251  bytes 13359677 (13.3 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 16  memory 0x92f00000-92f20000

enp4s0f0: flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 1500
        inet 192.168.30.1  netmask 255.255.255.0  broadcast 192.168.30.255
        inet6 fe80::faf2:1eff:fe98:e70  prefixlen 64  scopeid 0x20&lt;link&gt;
        ether f8:f2:1e:98:0e:70  txqueuelen 1000  (Ethernet)
        RX packets 2493  bytes 3406398 (3.4 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2662  bytes 4716866 (4.7 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enp4s0f1: flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 1500
        inet 192.168.40.1  netmask 255.255.255.0  broadcast 192.168.40.255
        inet6 fe80::faf2:1eff:fe98:e71  prefixlen 64  scopeid 0x20&lt;link&gt;
        ether f8:f2:1e:98:0e:71  txqueuelen 1000  (Ethernet)
        RX packets 305761  bytes 76146924 (76.1 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 24113  bytes 38423211 (38.4 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enx0050b661c3db: flags=4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 1500
        inet 192.168.100.1  netmask 255.255.255.0  broadcast 192.168.100.255
        inet6 fe80::250:b6ff:fe61:c3db  prefixlen 64  scopeid 0x20&lt;link&gt;
        ether 00:50:b6:61:c3:db  txqueuelen 1000  (Ethernet)
        RX packets 8896  bytes 585296 (585.2 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 310  bytes 38402 (38.4 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73&lt;UP,LOOPBACK,RUNNING&gt;  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10&lt;host&gt;
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 7296  bytes 23262505 (23.2 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 7296  bytes 23262505 (23.2 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

abusso@ttclabsdr:~$ uhd_image_loader --args "type=x300,addr=192.168.30.2"
linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown

Unit: USRP X310 (31D7872, 192.168.30.2)
FPGA Image: /usr/share/uhd/images/usrp_x310_fpga_XG.bit
failed.
Error: RuntimeError: Device reported an error during initialization.
abusso@ttclabsdr:~$</code></pre>


--b1_9dQokdxM5v15U6XVvLmuzBGPbKx9xoKp64CaPmcKTPA--

--===============5476317647208552707==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5476317647208552707==--
