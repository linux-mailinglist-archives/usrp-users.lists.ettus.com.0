Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC1CB2B1BD
	for <lists+usrp-users@lfdr.de>; Mon, 18 Aug 2025 21:35:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C372138619B
	for <lists+usrp-users@lfdr.de>; Mon, 18 Aug 2025 15:35:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755545744; bh=tRggjhzfhz8ZKdD/5WXVhoh9t6funxEzZN+JAZUAJns=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Dx8+COX3qSyw9uLFt45bZ9hHPzpdZTNGnwGM7b+5Tp8J7Avwho+ASiXQGjRy3nNZS
	 +kHKVrxQV/GEHaM79shUkF/NsrF2DyxA/5A70ksAIRD+YDxiQ911E7HJ1jMobEjuxM
	 EzN64VrSIxqvMu9gCzpen7QRaYAlgAv1wG6YQogmRnrgxf+yt+3Kk9fNBHU6xbK5c0
	 UzmbTGaPB8/WErF3eAcLJRRTJLZmMZPHi+uZI8UbrXqkOh6CFVPqJjYcFPFMolj9fU
	 lTr/s5tlktctNnoOQoEJ9HR1PJ8zZeP4cNXvIobseP/2ssx38+5eQ5FXNN/pls57Uc
	 wO3zyOUwsb3/w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F11B38615F
	for <usrp-users@lists.ettus.com>; Mon, 18 Aug 2025 15:35:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755545707; bh=OvVn4FEfoPK8MdDaigFWqsUSpRJ6qbMtVkMjUo8QDrU=;
	h=Date:To:From:Subject:From;
	b=zMfgYHAbLjdCt3MjzuBbp7pqiYUguLoEtO2CEpOasD7g6wgeWHrATmIJZiniY6bL1
	 b9ikRXb9zfGPSkmex2WEdlWha7mwUYrNhT9RxMEOh7krXPbGfUp6BOpv3XorBAJ+So
	 T99TbRgv7laLGCkqTEb1TR5PMN3x6zAfaBk9MsSvL7s9x3r2duSiKVvGWobPdFegJy
	 JM0dxXFYVkjOj8IA/ibNvuHlFngxZKX+0UZCFa+1vdB1+YD/pIR2c++bsoK2PfpRoG
	 +EfN23llYlVGJGGUQ0aWbUdG3tOPglQO7/e3AZ1601zHWM9D+lU6xyDRO/MLfRHbWa
	 5AfQZ8qgDjHmg==
Date: Mon, 18 Aug 2025 19:35:07 +0000
To: usrp-users@lists.ettus.com
From: shapkiquarry@gmail.com
Message-ID: <0EmoKwWUYuRSGxIOrXA4r7H1PtmdM4qyd5U01dyU4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: DTFJR3TZD5HFOQ5CBKSQUSFAIYJNVJVX
X-Message-ID-Hash: DTFJR3TZD5HFOQ5CBKSQUSFAIYJNVJVX
X-MailFrom: shapkiquarry@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Ettus N210 has become unreachable through the network.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DTFJR3TZD5HFOQ5CBKSQUSFAIYJNVJVX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6272864941942715794=="

This is a multi-part message in MIME format.

--===============6272864941942715794==
Content-Type: multipart/alternative;
 boundary="b1_0EmoKwWUYuRSGxIOrXA4r7H1PtmdM4qyd5U01dyU4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_0EmoKwWUYuRSGxIOrXA4r7H1PtmdM4qyd5U01dyU4
Content-Type: text/plain; charset=us-ascii

The Ettus 210 has become unreachable through pings after changing its IP address.   I flashed the EEPROM (as shown below) and then re-powered the radio.   The radio should be reachable this way, but has become bricked.  When the N210 was on a different VLAN, I could ping it just fine, but is now unreachable with this new IP.

What should I try next to fix this N210?  

> $ ./usrp_burn_mb_eeprom --read-all
>
> Creating USRP device from address: 
>
> \[INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.8.0.HEAD-0-g308126a4
>
> \[INFO\] \[USRP2\] Opening a USRP2/N-Series device...
>
> \[INFO\] \[USRP2\] Current recv frame size: 1472 bytes
>
> \[INFO\] \[USRP2\] Current send frame size: 1472 bytes
>
> \[WARNING\] \[UDP\] The send buffer could not be resized sufficiently.
>
> Target sock buff size: 2500000 bytes.
>
> Actual sock buff size: 1048576 bytes.
>
> See the transport application notes on buffer resizing.
>
> Please run: sudo sysctl -w net.core.wmem_max=2500000
>
> \[WARNING\] \[UDP\] The send buffer could not be resized sufficiently.
>
> Target sock buff size: 2500000 bytes.
>
> Actual sock buff size: 1048576 bytes.
>
> See the transport application notes on buffer resizing.
>
> Please run: sudo sysctl -w net.core.wmem_max=2500000
>
> \[WARNING\] \[UDP\] The send buffer could not be resized sufficiently.
>
> Target sock buff size: 2500000 bytes.
>
> Actual sock buff size: 1048576 bytes.
>
> See the transport application notes on buffer resizing.
>
> Please run: sudo sysctl -w net.core.wmem_max=2500000
>
> \[WARNING\] \[UHD\] Unable to set the thread priority. Performance may be negatively affected.
>
> Please see the general application notes in the manual for instructions.
>
> EnvironmentError: OSError: error in pthread_setschedparam
>
> Fetching current settings from EEPROM...
>
>     EEPROM \["hardware"\] is "2577"
>
>     EEPROM \["revision"\] is ""
>
>     EEPROM \["product"\] is ""
>
>     EEPROM \["mac-addr"\] is "00:80:2f:35:33:56"
>
>     EEPROM \["ip-addr"\] is "172.16.0.220"
>
>     EEPROM \["subnet"\] is "255.255.255.0"
>
>     EEPROM \["gateway"\] is "172.16.0.1"
>
>     EEPROM \["gpsdo"\] is "none"
>
>     EEPROM \["serial"\] is "3255BB7"
>
>     EEPROM \["name"\] is ""
>
> Done
>
> $ ping -c 9 172.16.0.220
>
> PING 172.16.0.220 (172.16.0.220) 56(84) bytes of data.
>
> From 172.16.0.88 icmp_seq=1 Destination Host Unreachable
>
> From 172.16.0.88 icmp_seq=2 Destination Host Unreachable
>
> From 172.16.0.88 icmp_seq=3 Destination Host Unreachable
>
> From 172.16.0.88 icmp_seq=4 Destination Host Unreachable
>
> From 172.16.0.88 icmp_seq=5 Destination Host Unreachable
>
> From 172.16.0.88 icmp_seq=6 Destination Host Unreachable
>
> From 172.16.0.88 icmp_seq=7 Destination Host Unreachable
>
> From 172.16.0.88 icmp_seq=8 Destination Host Unreachable
>
> From 172.16.0.88 icmp_seq=9 Destination Host Unreachable
>
> \--- 172.16.0.220 ping statistics ---
>
> 9 packets transmitted, 0 received, +9 errors, 100% packet loss, time 8176ms
>
> pipe 4

Local computer shows,

> $ ip addr show enp3s0
>
> 3: enp3s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
>
>     link/ether 98:b7:85:1e:d0:cf brd ff:ff:ff:ff:ff:ff
>
>     inet 172.16.0.88/24 brd 172.16.0.255 scope global noprefixroute enp3s0
>
>        valid_lft forever preferred_lft forever

--b1_0EmoKwWUYuRSGxIOrXA4r7H1PtmdM4qyd5U01dyU4
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>The Ettus 210 has become unreachable through pings after changing its IP=
 address.   I flashed the EEPROM (as shown below) and then re-powered the r=
adio.   The radio should be reachable this way, but has become bricked.  Wh=
en the N210 was on a different VLAN, I could ping it just fine, but is now =
unreachable with this new IP.</p><p>What should I try next to fix this N210=
?  </p><p><br></p><blockquote><p>$ ./usrp_burn_mb_eeprom --read-all</p><p>C=
reating USRP device from address: </p><p>[INFO] [UHD] linux; GNU C++ versio=
n 9.4.0; Boost_107100; UHD_4.8.0.HEAD-0-g308126a4</p><p>[INFO] [USRP2] Open=
ing a USRP2/N-Series device...</p><p>[INFO] [USRP2] Current recv frame size=
: 1472 bytes</p><p>[INFO] [USRP2] Current send frame size: 1472 bytes</p><p=
>[WARNING] [UDP] The send buffer could not be resized sufficiently.</p><p>T=
arget sock buff size: 2500000 bytes.</p><p>Actual sock buff size: 1048576 b=
ytes.</p><p>See the transport application notes on buffer resizing.</p><p>P=
lease run: sudo sysctl -w net.core.wmem_max=3D2500000</p><p>[WARNING] [UDP]=
 The send buffer could not be resized sufficiently.</p><p>Target sock buff =
size: 2500000 bytes.</p><p>Actual sock buff size: 1048576 bytes.</p><p>See =
the transport application notes on buffer resizing.</p><p>Please run: sudo =
sysctl -w net.core.wmem_max=3D2500000</p><p>[WARNING] [UDP] The send buffer=
 could not be resized sufficiently.</p><p>Target sock buff size: 2500000 by=
tes.</p><p>Actual sock buff size: 1048576 bytes.</p><p>See the transport ap=
plication notes on buffer resizing.</p><p>Please run: sudo sysctl -w net.co=
re.wmem_max=3D2500000</p><p>[WARNING] [UHD] Unable to set the thread priori=
ty. Performance may be negatively affected.</p><p>Please see the general ap=
plication notes in the manual for instructions.</p><p>EnvironmentError: OSE=
rror: error in pthread_setschedparam</p><p>Fetching current settings from E=
EPROM...</p><p>    EEPROM ["hardware"] is "2577"</p><p>    EEPROM ["revisio=
n"] is ""</p><p>    EEPROM ["product"] is ""</p><p>    EEPROM ["mac-addr"] =
is "00:80:2f:35:33:56"</p><p>    EEPROM ["ip-addr"] is "172.16.0.220"</p><p=
>    EEPROM ["subnet"] is "255.255.255.0"</p><p>    EEPROM ["gateway"] is "=
172.16.0.1"</p><p>    EEPROM ["gpsdo"] is "none"</p><p>    EEPROM ["serial"=
] is "3255BB7"</p><p>    EEPROM ["name"] is ""</p><p>Done</p><p>$ ping -c 9=
 172.16.0.220</p><p>PING 172.16.0.220 (172.16.0.220) 56(84) bytes of data.<=
/p><p>From 172.16.0.88 icmp_seq=3D1 Destination Host Unreachable</p><p>From=
 172.16.0.88 icmp_seq=3D2 Destination Host Unreachable</p><p>From 172.16.0.=
88 icmp_seq=3D3 Destination Host Unreachable</p><p>From 172.16.0.88 icmp_se=
q=3D4 Destination Host Unreachable</p><p>From 172.16.0.88 icmp_seq=3D5 Dest=
ination Host Unreachable</p><p>From 172.16.0.88 icmp_seq=3D6 Destination Ho=
st Unreachable</p><p>From 172.16.0.88 icmp_seq=3D7 Destination Host Unreach=
able</p><p>From 172.16.0.88 icmp_seq=3D8 Destination Host Unreachable</p><p=
>From 172.16.0.88 icmp_seq=3D9 Destination Host Unreachable</p><p>--- 172.1=
6.0.220 ping statistics ---</p><p>9 packets transmitted, 0 received, +9 err=
ors, 100% packet loss, time 8176ms</p><p>pipe 4</p></blockquote><p><br></p>=
<p>Local computer shows,</p><p><br></p><blockquote><p>$ ip addr show enp3s0=
</p><p>3: enp3s0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc fq=
_codel state UP group default qlen 1000</p><p>    link/ether 98:b7:85:1e:d0=
:cf brd ff:ff:ff:ff:ff:ff</p><p>    inet 172.16.0.88/24 brd 172.16.0.255 sc=
ope global noprefixroute enp3s0</p><p>       valid_lft forever preferred_lf=
t forever</p></blockquote>

--b1_0EmoKwWUYuRSGxIOrXA4r7H1PtmdM4qyd5U01dyU4--

--===============6272864941942715794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6272864941942715794==--
