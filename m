Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A939B4FD5
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 17:54:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C700386628
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 12:54:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730220854; bh=1Q9O8JqWCm13mXI/y8bgAWo2QmLqxZzEiNlpuoAjxVQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=aQmnmgZeE2+SvBzZjTaQyjqWIyvl2yl1YLE4rOJ4Ukw5P+4X4SubUfGUePXnvWWoI
	 VRRZ7Z7cBQvGwDOJ38IWmAiejby8C1C01JdRyV3xr7EE4KIN1/6wC7bkF3Li/VnwC7
	 lKb2pZ8h2peZJoCzZlQpie/F0suRN52Qj1rZJ8HDhhXvtBLsuVKl0KsadAqOZ5mwk3
	 a2FcUVT/vsqlc5KJp5Ewq8jMIINPCTJO7J1+UQrs01jgXfJHgn0mIHFcXnHaFqdBID
	 jLGgNj586zm4QSoA3HOyADwmQqiKwR1+6o8hYBNzfc59tReYxo1n4sUTGIB8/KXL0g
	 SRKqmiMONfP/w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3C61386537
	for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 12:53:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730220838; bh=WS/GWfm3L03RqtK9oGrj3Y5FIEVhW80aB0uGiPjfC/8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=yEwW8PkVGpnNriRUaKQEOzNVljNqI4iQoN/VZCh13W3XQJP9xjroOwa6e6o0zNX0A
	 lvSwojqn10pridR4w0HBHZB8PaG/7wsbfcqjr/K0h1nl3kLdehHZEt5oOmaqeQRxOM
	 wRUH4emRSdCVPa+n0pSF4YwZoOP+tb1hYwEU7cqBsW/zJ/wcGMvPxFLeYe3lXeeBPQ
	 7/ik9a4BrK27oyht4zRamiHKIOHrwQUVnjYWl59o/nmTosiWYJAeaeGhWmY4UJnmPe
	 Iu+vfHCf8+dhiVOCGP/bBGaNDxLMCyaW9MtLCLFKKJL19DmbA75/EThe0euaIkTpn7
	 zrPwx1JZe803A==
Date: Tue, 29 Oct 2024 16:53:58 +0000
To: usrp-users@lists.ettus.com
From: pigatoimdeafrancesco@gmail.com
Message-ID: <EfceFaSLRFGqSGfKIJIoR3tT8vhVBER7s6VvawGn70@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: b0f4b0ae-8e7d-457f-8606-bc7818c1714e@gmail.com
MIME-Version: 1.0
Message-ID-Hash: JSXDTW65BYL66IF5RT24433NVVEI5PQS
X-Message-ID-Hash: JSXDTW65BYL66IF5RT24433NVVEI5PQS
X-MailFrom: pigatoimdeafrancesco@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error: RuntimeError: Failure to create rfnoc_graph on USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JSXDTW65BYL66IF5RT24433NVVEI5PQS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6863004522141779781=="

This is a multi-part message in MIME format.

--===============6863004522141779781==
Content-Type: multipart/alternative;
 boundary="b1_EfceFaSLRFGqSGfKIJIoR3tT8vhVBER7s6VvawGn70"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_EfceFaSLRFGqSGfKIJIoR3tT8vhVBER7s6VvawGn70
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Yes, both SFP+ ports are connected to the host.=20

Host side, the ip addresses are:

`enp3s0f0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9000`

`        inet 192.168.20.1  netmask 255.255.255.0  broadcast 0.0.0.0`

`        ether 7c:c2:55:7b:35:7e  txqueuelen 1000  (Ethernet)`

`        RX packets 4616  bytes 432264 (432.2 KB)`

`        RX errors 0  dropped 90  overruns 0  frame 0`

`        TX packets 2518  bytes 1371160 (1.3 MB)`

`        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0`

`enp3s0f1: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9000`

`        inet 192.168.10.1  netmask 255.255.255.0  broadcast 0.0.0.0`

`        ether 7c:c2:55:7b:35:7f  txqueuelen 1000  (Ethernet)`

`        RX packets 1226  bytes 945608 (945.6 KB)`

`        RX errors 0  dropped 198  overruns 0  frame 0`

`        TX packets 15263  bytes 18973321 (18.9 MB)`

`        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0`

whereas N310 the interfaces are:=20

`sfp0      Link encap:Ethernet  HWaddr 00:80:2F:34:A1:BD`

`          inet addr:192.168.10.2  Bcast:192.168.10.255  Mask:255.255.255=
.0`

`          UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1`

`          RX packets:3403 errors:0 dropped:0 overruns:0 frame:0`

`          TX packets:1079 errors:0 dropped:0 overruns:0 carrier:0`

`          collisions:0 txqueuelen:1000`

`          RX bytes:869430 (849.0 KiB)  TX bytes:62857 (61.3 KiB)`

`sfp1      Link encap:Ethernet  HWaddr 00:80:2F:34:A1:BE`

`          inet addr:192.168.20.2  Bcast:192.168.20.255  Mask:255.255.255=
.0`

`          UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1`

`          RX packets:3775 errors:0 dropped:0 overruns:0 frame:0`

`          TX packets:403 errors:0 dropped:0 overruns:0 carrier:0`

`          collisions:0 txqueuelen:1000`

`          RX bytes:338406 (330.4 KiB)  TX bytes:603205 (589.0 KiB)`

Both 192.168.20.2 and 192.168.10.2 can be pinged correctly.

=E2=80=9Cudpv=E2=80=9C protocol was a typo of mine. The output of cmd `$s=
udo firewall-cmd --list-ports` is:

`49152/udp`

--b1_EfceFaSLRFGqSGfKIJIoR3tT8vhVBER7s6VvawGn70
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Yes, both SFP+ ports are connected to the host. </p><p>Host side, the ip=
 addresses are:</p><p><br></p><p><code>enp3s0f0: flags=3D4163&lt;UP,BROADCA=
ST,RUNNING,MULTICAST&gt;  mtu 9000</code></p><p><code>        inet 192.168.=
20.1  netmask 255.255.255.0  broadcast 0.0.0.0</code></p><p><code>        e=
ther 7c:c2:55:7b:35:7e  txqueuelen 1000  (Ethernet)</code></p><p><code>    =
    RX packets 4616  bytes 432264 (432.2 KB)</code></p><p><code>        RX =
errors 0  dropped 90  overruns 0  frame 0</code></p><p><code>        TX pac=
kets 2518  bytes 1371160 (1.3 MB)</code></p><p><code>        TX errors 0  d=
ropped 0 overruns 0  carrier 0  collisions 0</code></p><p><br></p><p><code>=
enp3s0f1: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 9000</cod=
e></p><p><code>        inet 192.168.10.1  netmask 255.255.255.0  broadcast =
0.0.0.0</code></p><p><code>        ether 7c:c2:55:7b:35:7f  txqueuelen 1000=
  (Ethernet)</code></p><p><code>        RX packets 1226  bytes 945608 (945.=
6 KB)</code></p><p><code>        RX errors 0  dropped 198  overruns 0  fram=
e 0</code></p><p><code>        TX packets 15263  bytes 18973321 (18.9 MB)</=
code></p><p><code>        TX errors 0  dropped 0 overruns 0  carrier 0  col=
lisions 0</code></p><p><br></p><p>whereas N310 the interfaces are: </p><p><=
br></p><p><code>sfp0      Link encap:Ethernet  HWaddr 00:80:2F:34:A1:BD</co=
de></p><p><code>          inet addr:192.168.10.2  Bcast:192.168.10.255  Mas=
k:255.255.255.0</code></p><p><code>          UP BROADCAST RUNNING MULTICAST=
  MTU:9000  Metric:1</code></p><p><code>          RX packets:3403 errors:0 =
dropped:0 overruns:0 frame:0</code></p><p><code>          TX packets:1079 e=
rrors:0 dropped:0 overruns:0 carrier:0</code></p><p><code>          collisi=
ons:0 txqueuelen:1000</code></p><p><code>          RX bytes:869430 (849.0 K=
iB)  TX bytes:62857 (61.3 KiB)</code></p><p><code>sfp1      Link encap:Ethe=
rnet  HWaddr 00:80:2F:34:A1:BE</code></p><p><code>          inet addr:192.1=
68.20.2  Bcast:192.168.20.255  Mask:255.255.255.0</code></p><p><code>      =
    UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1</code></p><p><code> =
         RX packets:3775 errors:0 dropped:0 overruns:0 frame:0</code></p><p=
><code>          TX packets:403 errors:0 dropped:0 overruns:0 carrier:0</co=
de></p><p><code>          collisions:0 txqueuelen:1000</code></p><p><code> =
         RX bytes:338406 (330.4 KiB)  TX bytes:603205 (589.0 KiB)</code></p=
><p>Both 192.168.20.2 and 192.168.10.2 can be pinged correctly.</p><p><br><=
/p><p>=E2=80=9Cudpv=E2=80=9C protocol was a typo of mine. The output of cmd=
 <code>$sudo firewall-cmd --list-ports</code> is:</p><p><code>49152/udp</co=
de></p><p><br></p>

--b1_EfceFaSLRFGqSGfKIJIoR3tT8vhVBER7s6VvawGn70--

--===============6863004522141779781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6863004522141779781==--
