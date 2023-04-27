Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F6C6EFE85
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 02:27:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E9E65384157
	for <lists+usrp-users@lfdr.de>; Wed, 26 Apr 2023 20:27:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682555229; bh=AvO9EeaHJHR0PlXtvfFnT2JRpOK+Wz7gnQ+BywBdQfM=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FjuGPGvi7+5vuiFkyvvWYSP9GgIeU4AZW1GyZNf27u7HQpoEXYIVrBLvtJjlo9pT1
	 yS/snmw59ldrLrMmy9PRSHCqemm3fcNktte0jXmbpfR6Sn+2X7o8q1OXE3phs1No3x
	 J1Zkx7Mgkwgz19KBVSV0lTLREoEe3ECWYDutBQvIQxtXX+vlwEhT464Iom0EIXV3w7
	 yB1jFfU6MkBKCIptL3TFgqpv+FUAeOTUjPLepdfbhHJGmDyFfvk6Tmwo/G812TxEMW
	 iJPkQ2/YymLZDXG2wm5cZ80E9MsBwRXCOpUruQqmfNCtSiZZ36LYD38ym1pUATYpAY
	 RHmaTIyTpNezQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B66E3811B4
	for <usrp-users@lists.ettus.com>; Wed, 26 Apr 2023 20:26:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682555189; bh=wOdtSyLHG8ZFO9Fc8jVt16OCUb01Xi29uOjFplQOPm8=;
	h=Date:To:From:Subject:From;
	b=iB4fAv60/hoL1dhj3BuRYYkRAt6jYXermXmbJuvSLBgqDIc5xnuLx4KkuIHEXsL6X
	 qV9hkut4zP1W494+zwrAVFSGWw9EzADTxid4bCMvTlPz7H5Wt+msZTQaiX/kZ3vezb
	 7fJpCVIs5/xbjyFVrZoO0M28/33aFWVQW8EahVECwfFiMu4XqUiXDGwXk/Q/S6cu6d
	 8c7SS0QVY/TtgYvbYamLWSf36ZYFPxzUowXOR5A+UWw6lQx07QGjup8N2NFYocBhQ1
	 iNBHlZVF75XqjTIWjfzVZ2cQnAtZJpG6XJ7elesBWVHwf0ApZkg6y7DsXCjp1oKeU0
	 ktbmFUGWGoF2w==
Date: Thu, 27 Apr 2023 00:26:29 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <aSrdGeWl9EgGwP9IYIsbo0lWXd5dNgm1hp1oRcaSSA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: YZ7FJWSWYN2KHXGTO6XVJB2FM3STFJDW
X-Message-ID-Hash: YZ7FJWSWYN2KHXGTO6XVJB2FM3STFJDW
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YZ7FJWSWYN2KHXGTO6XVJB2FM3STFJDW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3792612448881924639=="

This is a multi-part message in MIME format.

--===============3792612448881924639==
Content-Type: multipart/alternative;
 boundary="b1_aSrdGeWl9EgGwP9IYIsbo0lWXd5dNgm1hp1oRcaSSA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_aSrdGeWl9EgGwP9IYIsbo0lWXd5dNgm1hp1oRcaSSA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I currently have an issue trying to stream packets through the SFP ports.=
 Currently, when I ssh into the Ettus N321 and use ifconfig, I get the fo=
llowing output

> eth0      Link encap:Ethernet  HWaddr 00:80:2F:35:25:BE =20
>
>           inet addr:192.168.1.151  Bcast:192.168.1.255  Mask:255.255.25=
5.0
>
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>
>           RX packets:108385 errors:211 dropped:0 overruns:96 frame:115
>
>           TX packets:92510 errors:0 dropped:0 overruns:0 carrier:0
>
>           collisions:0 txqueuelen:1000=20
>
>           RX bytes:57550685 (54.8 MiB)  TX bytes:25439541 (24.2 MiB)
>
>           Interrupt:27 Base address:0xb000=20
>
> int0      Link encap:Ethernet  HWaddr 6E:C0:18:F0:B5:B5 =20
>
>           inet addr:169.254.0.1  Bcast:169.254.0.255  Mask:255.255.255.=
0
>
>           UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1
>
>           RX packets:5342 errors:0 dropped:0 overruns:0 frame:0
>
>           TX packets:1797 errors:0 dropped:0 overruns:0 carrier:0
>
>           collisions:0 txqueuelen:1000=20
>
>           RX bytes:5608732 (5.3 MiB)  TX bytes:123539 (120.6 KiB)
>
> lo        Link encap:Local Loopback =20
>
>           inet addr:127.0.0.1  Mask:255.0.0.0
>
>           UP LOOPBACK RUNNING  MTU:65536  Metric:1
>
>           RX packets:116 errors:0 dropped:0 overruns:0 frame:0
>
>           TX packets:116 errors:0 dropped:0 overruns:0 carrier:0
>
>           collisions:0 txqueuelen:1000=20
>
>           RX bytes:10067 (9.8 KiB)  TX bytes:10067 (9.8 KiB)
>
> sfp0      Link encap:Ethernet  HWaddr 00:80:2F:35:25:BF =20
>
>           inet addr:192.168.10.2  Bcast:192.168.10.255  Mask:255.255.25=
5.0
>
>           UP BROADCAST MULTICAST  MTU:9000  Metric:1
>
>           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>
>           TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
>
>           collisions:0 txqueuelen:1000=20
>
>           RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
>
> sfp1      Link encap:Ethernet  HWaddr 00:80:2F:35:25:C0 =20
>
>           inet addr:192.168.20.2  Bcast:192.168.20.255  Mask:255.255.25=
5.0
>
>           UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1
>
>           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>
>           TX packets:28 errors:0 dropped:0 overruns:0 carrier:0
>
>           collisions:0 txqueuelen:1000=20
>
>           RX bytes:0 (0.0 B)  TX bytes:5252 (5.1 KiB)

However, when I try to stream through the address port, either sfp0 or sf=
p1, I get the following timeout error

> \[ERROR\] \[RFNOC::MGMT\] EnvironmentError: IOError: Timed out getting =
recv buff for management transaction
>
> \[ERROR\] \[RFNOC::GRAPH\] IO Error during GSM initialization. Environm=
entError: IOError: Timed out getting recv buff for management transaction
>
> \[ERROR\] \[RFNOC::GRAPH\] Caught exception while initializing graph: E=
nvironmentError: IOError: Timed out getting recv buff for management tran=
saction

I have double checked my host computer configuration and it appears again=
 that I am using the correct configuration.=20

When I use =E2=80=9Cuhd_find_devices"=E2=80=9C, it appears the address us=
ed for data is the same that is used for management, even though my guess=
 is the argument =E2=80=9Caddr=E2=80=9D should be either =E2=80=9C192.168=
.10.2=E2=80=9D or =E2=80=9C192.168.20.2=E2=80=9D. I believe this is proba=
bly related to the error I am receiving, however, I am unsure how to proc=
eed from here. The output of uhd_find_devices is as follows=E2=80=A6

> --------------------------------------------------
>
> \-- UHD Device 0
>
> \--------------------------------------------------
>
> Device Address:
>
>     serial: 3255102
>
>     addr: 192.168.1.151
>
>     claimed: False
>
>     fpga: HG
>
>     mgmt_addr: 192.168.1.151
>
>     name: ni-n3xx-3255102
>
>     product: n320
>
>     type: n3xx

Thanks

Joe

--b1_aSrdGeWl9EgGwP9IYIsbo0lWXd5dNgm1hp1oRcaSSA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I currently have an issue trying to stream packets through =
the SFP ports. Currently, when I ssh into the Ettus N321 and use ifconfig, =
I get the following output</p><blockquote><p>eth0      Link encap:Ethernet =
 HWaddr 00:80:2F:35:25:BE  </p><p>          inet addr:192.168.1.151  Bcast:=
192.168.1.255  Mask:255.255.255.0</p><p>          UP BROADCAST RUNNING MULT=
ICAST  MTU:1500  Metric:1</p><p>          RX packets:108385 errors:211 drop=
ped:0 overruns:96 frame:115</p><p>          TX packets:92510 errors:0 dropp=
ed:0 overruns:0 carrier:0</p><p>          collisions:0 txqueuelen:1000 </p>=
<p>          RX bytes:57550685 (54.8 MiB)  TX bytes:25439541 (24.2 MiB)</p>=
<p>          Interrupt:27 Base address:0xb000 </p><p><br></p><p><br></p><p>=
int0      Link encap:Ethernet  HWaddr 6E:C0:18:F0:B5:B5  </p><p>          i=
net addr:169.254.0.1  Bcast:169.254.0.255  Mask:255.255.255.0</p><p>       =
   UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1</p><p>          RX pa=
ckets:5342 errors:0 dropped:0 overruns:0 frame:0</p><p>          TX packets=
:1797 errors:0 dropped:0 overruns:0 carrier:0</p><p>          collisions:0 =
txqueuelen:1000 </p><p>          RX bytes:5608732 (5.3 MiB)  TX bytes:12353=
9 (120.6 KiB)</p><p>lo        Link encap:Local Loopback  </p><p>          i=
net addr:127.0.0.1  Mask:255.0.0.0</p><p>          UP LOOPBACK RUNNING  MTU=
:65536  Metric:1</p><p>          RX packets:116 errors:0 dropped:0 overruns=
:0 frame:0</p><p>          TX packets:116 errors:0 dropped:0 overruns:0 car=
rier:0</p><p>          collisions:0 txqueuelen:1000 </p><p>          RX byt=
es:10067 (9.8 KiB)  TX bytes:10067 (9.8 KiB)</p><p>sfp0      Link encap:Eth=
ernet  HWaddr 00:80:2F:35:25:BF  </p><p>          inet addr:192.168.10.2  B=
cast:192.168.10.255  Mask:255.255.255.0</p><p>          UP BROADCAST MULTIC=
AST  MTU:9000  Metric:1</p><p>          RX packets:0 errors:0 dropped:0 ove=
rruns:0 frame:0</p><p>          TX packets:0 errors:0 dropped:0 overruns:0 =
carrier:0</p><p>          collisions:0 txqueuelen:1000 </p><p>          RX =
bytes:0 (0.0 B)  TX bytes:0 (0.0 B)</p><p>sfp1      Link encap:Ethernet  HW=
addr 00:80:2F:35:25:C0  </p><p>          inet addr:192.168.20.2  Bcast:192.=
168.20.255  Mask:255.255.255.0</p><p>          UP BROADCAST RUNNING MULTICA=
ST  MTU:9000  Metric:1</p><p>          RX packets:0 errors:0 dropped:0 over=
runs:0 frame:0</p><p>          TX packets:28 errors:0 dropped:0 overruns:0 =
carrier:0</p><p>          collisions:0 txqueuelen:1000 </p><p>          RX =
bytes:0 (0.0 B)  TX bytes:5252 (5.1 KiB)</p></blockquote><p>However, when I=
 try to stream through the address port, either sfp0 or sfp1, I get the fol=
lowing timeout error</p><blockquote><p>[ERROR] [RFNOC::MGMT] EnvironmentErr=
or: IOError: Timed out getting recv buff for management transaction</p><p>[=
ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentError:=
 IOError: Timed out getting recv buff for management transaction</p><p>[ERR=
OR] [RFNOC::GRAPH] Caught exception while initializing graph: EnvironmentEr=
ror: IOError: Timed out getting recv buff for management transaction</p></b=
lockquote><p>I have double checked my host computer configuration and it ap=
pears again that I am using the correct configuration. </p><p>When I use =
=E2=80=9Cuhd_find_devices"=E2=80=9C, it appears the address used for data i=
s the same that is used for management, even though my guess is the argumen=
t =E2=80=9Caddr=E2=80=9D should be either =E2=80=9C192.168.10.2=E2=80=9D or=
 =E2=80=9C192.168.20.2=E2=80=9D. I believe this is probably related to the =
error I am receiving, however, I am unsure how to proceed from here. The ou=
tput of uhd_find_devices is as follows=E2=80=A6</p><blockquote><p>---------=
-----------------------------------------</p><p>-- UHD Device 0</p><p>-----=
---------------------------------------------</p><p>Device Address:</p><p> =
   serial: 3255102</p><p>    addr: 192.168.1.151</p><p>    claimed: False</=
p><p>    fpga: HG</p><p>    mgmt_addr: 192.168.1.151</p><p>    name: ni-n3x=
x-3255102</p><p>    product: n320</p><p>    type: n3xx</p></blockquote><p>T=
hanks</p><p>Joe</p>

--b1_aSrdGeWl9EgGwP9IYIsbo0lWXd5dNgm1hp1oRcaSSA--

--===============3792612448881924639==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3792612448881924639==--
