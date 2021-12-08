Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A86F46CED3
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 09:26:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54270384B6A
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 03:26:05 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5A5EA384498
	for <usrp-users@lists.ettus.com>; Wed,  8 Dec 2021 03:25:05 -0500 (EST)
Date: Wed, 8 Dec 2021 08:25:05 +0000
To: usrp-users@lists.ettus.com
From: iw1fnw@gmail.com
Message-ID: <lvDxsv6xHvBWycLv842HNnvkLtZ1quZiZqPIa60E@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: c4114f08-b872-2d5f-8ea4-fbd972ad94d6@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 3XTTPK2Q73FZQ7YVKSDTZAVYKKMD6U5Z
X-Message-ID-Hash: 3XTTPK2Q73FZQ7YVKSDTZAVYKKMD6U5Z
X-MailFrom: iw1fnw@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3XTTPK2Q73FZQ7YVKSDTZAVYKKMD6U5Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5667957942899897689=="

This is a multi-part message in MIME format.

--===============5667957942899897689==
Content-Type: multipart/alternative;
 boundary="b1_lvDxsv6xHvBWycLv842HNnvkLtZ1quZiZqPIa60E"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_lvDxsv6xHvBWycLv842HNnvkLtZ1quZiZqPIa60E
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I did some more experiments, but without results=E2=80=A6

Just to answer your last, the USRP is connected directly to the NIC (no s=
witches).

```
abusso@ttclabsdr:~$ sudo ethtool enp4s0f0
Settings for enp4s0f0:
        Supported ports: [ FIBRE ]
        Supported link modes:   10000baseT/Full
        Supported pause frame use: Symmetric Receive-only
        Supports auto-negotiation: No
        Supported FEC modes: Not reported
        Advertised link modes:  10000baseT/Full
        Advertised pause frame use: No
        Advertised auto-negotiation: No
        Advertised FEC modes: Not reported
        Speed: 10000Mb/s
        Duplex: Full
        Port: Direct Attach Copper
        PHYAD: 0
        Transceiver: internal
        Auto-negotiation: off
        Supports Wake-on: g
        Wake-on: g
        Current message level: 0x00000007 (7)
                               drv probe link
        Link detected: yes
```

Since there are two 10GBit connections, I tried the programming using one=
 or the other, but result is the same. So, I do not think it is a problem=
 of cable or SFP+ adapter.

I checked with wireshark what is going on, and the result is that there i=
s an exchange of 72 UDP packets of short length (16 bytes) from PC to USR=
P, each followed by a reply of 16 bytes, and the communication terminates=
 with a longer one from PC (272 bytes) followed by 4 bytes reply from USR=
P. So, it seems not much data is transferred and the real image transfer =
never starts.

The packets are not all the same, so something seems going on, but I have=
 the impression that the last one creates some problems. For the first 72=
, the answer is quite immediate (20-30us), but the last reply from USRP t=
akes almost 1 second.=20

If needed, I can attach the wireshark extrack.

```
```

--b1_lvDxsv6xHvBWycLv842HNnvkLtZ1quZiZqPIa60E
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I did some more experiments, but without results=E2=80=A6</p><p>Just t=
o answer your last, the USRP is connected directly to the NIC (no switche=
s).</p><pre><code>abusso@ttclabsdr:~$ sudo ethtool enp4s0f0
Settings for enp4s0f0:
        Supported ports: [ FIBRE ]
        Supported link modes:   10000baseT/Full
        Supported pause frame use: Symmetric Receive-only
        Supports auto-negotiation: No
        Supported FEC modes: Not reported
        Advertised link modes:  10000baseT/Full
        Advertised pause frame use: No
        Advertised auto-negotiation: No
        Advertised FEC modes: Not reported
        Speed: 10000Mb/s
        Duplex: Full
        Port: Direct Attach Copper
        PHYAD: 0
        Transceiver: internal
        Auto-negotiation: off
        Supports Wake-on: g
        Wake-on: g
        Current message level: 0x00000007 (7)
                               drv probe link
        Link detected: yes
<br></code></pre><p>Since there are two 10GBit connections, I tried the p=
rogramming using one or the other, but result is the same. So, I do not t=
hink it is a problem of cable or SFP+ adapter.</p><p>I checked with wires=
hark what is going on, and the result is that there is an exchange of 72 =
UDP packets of short length (16 bytes) from PC to USRP, each followed by =
a reply of 16 bytes, and the communication terminates with a longer one f=
rom PC (272 bytes) followed by 4 bytes reply from USRP. So, it seems not =
much data is transferred and the real image transfer never starts.</p><p>=
The packets are not all the same, so something seems going on, but I have=
 the impression that the last one creates some problems. For the first 72=
, the answer is quite immediate (20-30us), but the last reply from USRP t=
akes almost 1 second. </p><p>If needed, I can attach the wireshark extrac=
k.</p><pre><code><br></code></pre><p><br></p>


--b1_lvDxsv6xHvBWycLv842HNnvkLtZ1quZiZqPIa60E--

--===============5667957942899897689==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5667957942899897689==--
