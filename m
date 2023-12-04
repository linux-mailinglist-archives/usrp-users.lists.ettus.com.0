Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E0D803558
	for <lists+usrp-users@lfdr.de>; Mon,  4 Dec 2023 14:48:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BF87A384D0F
	for <lists+usrp-users@lfdr.de>; Mon,  4 Dec 2023 08:48:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701697702; bh=hvMPAljpWrslm1rpQCqGqY59C5z0OyHZ4oGC86RkYG4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=qx518EK96y25ptn1jkce5Zrulz59O4TQcy/c5cFRbMGLN25whhGSrJDNogynh63Km
	 x6r2aAVJJbf+fD9oMSBgL9DWPhRcacG5Sr8fsraOFzax/02yo6z552+KBhZn4xDEW7
	 KsuRdgCClPUYl3i4CznoxAIn1DobNSbTbA9tZZCha7qRb7wzF1HERkWM1yD78jGADE
	 mjaw7qhDVSdFcbt2BdWPou9fO2W3ce+GaOf+eazZjjfjc9wLn+zoxyQ/j+SIo2XtcI
	 wysQ1haBSmADGQBdvCjKtZMzs2xaBLBud2qs/NNpxLhuIFkMz9wBUK/Uz3+3CdMLtV
	 YzC+FB+Knxljw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC5CC3830F2
	for <usrp-users@lists.ettus.com>; Mon,  4 Dec 2023 08:47:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701697651; bh=5palhkfcWnylCG9lhiWzCKVV5PM6kFAQeaSyqIx+RiU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=NF/ptWA9QHtGsS9737YWatdibBtSBqcALvm3ZPa7s6wSU9EnhKZ/boTw1zyPnMU7z
	 GizAXPddLYbnuAq59dul9cocNIX333gazHg25l1fP/53k4Hco0PKQ498oUk4tLcKOA
	 iG9/4zrua2CHu4ezo9aC6tl898DJo/kZPa9GU8rYH73CG9JKRW0HGtoHIUQGRN1Z2s
	 eD2OVNZqyUe66rXgl4TopcSeHAyQvDIlLv+riU1qEY8gB39Iezhk/8jCZJwX6mg2Yp
	 B41iVVcVoBrYkywku8+41fj9Nhhox0MSaZUwPJXN9ba87Lxfdv46m4oOWe03KVxWX0
	 JDOq4UanDCjbg==
Date: Mon, 4 Dec 2023 13:47:31 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <4uVmt5iObZFOmwzxogIAD4WNphOveekYOoaBTCapk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 135302A5-7887-412D-A202-59E76EDFE670@gmail.com
MIME-Version: 1.0
Message-ID-Hash: RU2LSDYXTEPXR3E5TXUSWSSPE5FKQWTO
X-Message-ID-Hash: RU2LSDYXTEPXR3E5TXUSWSSPE5FKQWTO
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RU2LSDYXTEPXR3E5TXUSWSSPE5FKQWTO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3438681197346091035=="

This is a multi-part message in MIME format.

--===============3438681197346091035==
Content-Type: multipart/alternative;
 boundary="b1_4uVmt5iObZFOmwzxogIAD4WNphOveekYOoaBTCapk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_4uVmt5iObZFOmwzxogIAD4WNphOveekYOoaBTCapk
Content-Type: text/plain; charset=us-ascii

Output of ifconfig:

**enp1s0f0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9000**

        **inet 192.168.20.2  netmask 255.255.255.0  broadcast 192.168.20.255**

        **inet6 fe80::f19:8894:c467:688d  prefixlen 64  scopeid 0x20<link>**

        **ether f8:f2:1e:41:49:d4  txqueuelen 1000  (Ethernet)**

        **RX packets 6  bytes 1444 (1.4 KB)**

        **RX errors 0  dropped 0  overruns 0  frame 0**

        **TX packets 20  bytes 2675 (2.6 KB)**

        **TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0**

enp1s0f1: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500

        ether f8:f2:1e:41:49:d5  txqueuelen 1000  (Ethernet)

        RX packets 0  bytes 0 (0.0 B)

        RX errors 0  dropped 0  overruns 0  frame 0

        TX packets 0  bytes 0 (0.0 B)

        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enp4s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500

        inet 131.114.52.179  netmask 255.255.252.0  broadcast 131.114.55.255

        inet6 fe80::36ae:b44d:431f:f99  prefixlen 64  scopeid 0x20<link>

        ether 04:d4:c4:a9:ab:b2  txqueuelen 1000  (Ethernet)

        RX packets 2907134  bytes 289367402 (289.3 MB)

        RX errors 0  dropped 0  overruns 0  frame 0

        TX packets 78367  bytes 23270497 (23.2 MB)

        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536

        inet 127.0.0.1  netmask 255.0.0.0

        inet6 ::1  prefixlen 128  scopeid 0x10<host>

        loop  txqueuelen 1000  (Local Loopback)

        RX packets 121516  bytes 2614645259 (2.6 GB)

        RX errors 0  dropped 0  overruns 0  frame 0

        TX packets 121516  bytes 2614645259 (2.6 GB)

        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lxcbr0: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500

        inet 10.0.3.1  netmask 255.255.255.0  broadcast 0.0.0.0

        ether 00:16:3e:00:00:00  txqueuelen 1000  (Ethernet)

        RX packets 0  bytes 0 (0.0 B)

        RX errors 0  dropped 0  overruns 0  frame 0

        TX packets 0  bytes 0 (0.0 B)

        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

Output of uhd_config_info --version

UHD 4.0.0.0-240-gb38c9d83

--b1_4uVmt5iObZFOmwzxogIAD4WNphOveekYOoaBTCapk
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Output of ifconfig:</p><p><strong>enp1s0f0: flags=3D4163&lt;UP,BROADCAST=
,RUNNING,MULTICAST&gt;  mtu 9000</strong></p><p><strong>        inet 192.16=
8.20.2  netmask 255.255.255.0  broadcast 192.168.20.255</strong></p><p><str=
ong>        inet6 fe80::f19:8894:c467:688d  prefixlen 64  scopeid 0x20&lt;l=
ink&gt;</strong></p><p><strong>        ether f8:f2:1e:41:49:d4  txqueuelen =
1000  (Ethernet)</strong></p><p><strong>        RX packets 6  bytes 1444 (1=
.4 KB)</strong></p><p><strong>        RX errors 0  dropped 0  overruns 0  f=
rame 0</strong></p><p><strong>        TX packets 20  bytes 2675 (2.6 KB)</s=
trong></p><p><strong>        TX errors 0  dropped 0 overruns 0  carrier 0  =
collisions 0</strong></p><p>enp1s0f1: flags=3D4099&lt;UP,BROADCAST,MULTICAS=
T&gt;  mtu 1500</p><p>        ether f8:f2:1e:41:49:d5  txqueuelen 1000  (Et=
hernet)</p><p>        RX packets 0  bytes 0 (0.0 B)</p><p>        RX errors=
 0  dropped 0  overruns 0  frame 0</p><p>        TX packets 0  bytes 0 (0.0=
 B)</p><p>        TX errors 0  dropped 0 overruns 0  carrier 0  collisions =
0</p><p>enp4s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;  mtu 150=
0</p><p>        inet 131.114.52.179  netmask 255.255.252.0  broadcast 131.1=
14.55.255</p><p>        inet6 fe80::36ae:b44d:431f:f99  prefixlen 64  scope=
id 0x20&lt;link&gt;</p><p>        ether 04:d4:c4:a9:ab:b2  txqueuelen 1000 =
 (Ethernet)</p><p>        RX packets 2907134  bytes 289367402 (289.3 MB)</p=
><p>        RX errors 0  dropped 0  overruns 0  frame 0</p><p>        TX pa=
ckets 78367  bytes 23270497 (23.2 MB)</p><p>        TX errors 0  dropped 0 =
overruns 0  carrier 0  collisions 0</p><p>lo: flags=3D73&lt;UP,LOOPBACK,RUN=
NING&gt;  mtu 65536</p><p>        inet 127.0.0.1  netmask 255.0.0.0</p><p> =
       inet6 ::1  prefixlen 128  scopeid 0x10&lt;host&gt;</p><p>        loo=
p  txqueuelen 1000  (Local Loopback)</p><p>        RX packets 121516  bytes=
 2614645259 (2.6 GB)</p><p>        RX errors 0  dropped 0  overruns 0  fram=
e 0</p><p>        TX packets 121516  bytes 2614645259 (2.6 GB)</p><p>      =
  TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0</p><p>lxcbr0: =
flags=3D4099&lt;UP,BROADCAST,MULTICAST&gt;  mtu 1500</p><p>        inet 10.=
0.3.1  netmask 255.255.255.0  broadcast 0.0.0.0</p><p>        ether 00:16:3=
e:00:00:00  txqueuelen 1000  (Ethernet)</p><p>        RX packets 0  bytes 0=
 (0.0 B)</p><p>        RX errors 0  dropped 0  overruns 0  frame 0</p><p>  =
      TX packets 0  bytes 0 (0.0 B)</p><p>        TX errors 0  dropped 0 ov=
erruns 0  carrier 0  collisions 0</p><p><br></p><p>Output of uhd_config_inf=
o --version</p><p>UHD 4.0.0.0-240-gb38c9d83</p>

--b1_4uVmt5iObZFOmwzxogIAD4WNphOveekYOoaBTCapk--

--===============3438681197346091035==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3438681197346091035==--
