Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41635467940
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 15:15:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23A49385573
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 09:15:56 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7899B38504B
	for <usrp-users@lists.ettus.com>; Fri,  3 Dec 2021 09:14:54 -0500 (EST)
Date: Fri, 3 Dec 2021 14:14:54 +0000
To: usrp-users@lists.ettus.com
From: iw1fnw@gmail.com
Message-ID: <vP1lc8kicnycCBqlxWVypm6YKXzuMdT32sFghxopl0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: ab9c27dd-963c-c83a-eae3-3afd938c1e08@gmail.com
MIME-Version: 1.0
Message-ID-Hash: QWQC2LRCVOPAG56FZIORDPCIK3KVERTI
X-Message-ID-Hash: QWQC2LRCVOPAG56FZIORDPCIK3KVERTI
X-MailFrom: iw1fnw@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QWQC2LRCVOPAG56FZIORDPCIK3KVERTI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8548203694009873291=="

This is a multi-part message in MIME format.

--===============8548203694009873291==
Content-Type: multipart/alternative;
 boundary="b1_vP1lc8kicnycCBqlxWVypm6YKXzuMdT32sFghxopl0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_vP1lc8kicnycCBqlxWVypm6YKXzuMdT32sFghxopl0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I can try re-programming with new images (if not already done) starting f=
rom Vivado. Is this what you mean?

I tried a flood ping. With up to 6000 bytes packet all is fine. With 7000=
 I start loosing a bit. With 8000 it loose 50%. I=E2=80=99m not sure if t=
his is normal with such long packets.

```
abusso@ttclabsdr:~$ sudo ping -s 6000 192.168.30.2 -f
PING 192.168.30.2 (192.168.30.2) 6000(6028) bytes of data.
.
--- 192.168.30.2 ping statistics ---
147 packets transmitted, 146 received, 0% packet loss, time 2875ms
rtt min/avg/max/mdev =3D 19.729/25.174/27.233/1.240 ms, pipe 2, ipg/ewma =
19.697/24.942 ms

abusso@ttclabsdr:~$ sudo ping -s 7000 192.168.30.2 -f
PING 192.168.30.2 (192.168.30.2) 7000(7028) bytes of data.
.....................
--- 192.168.30.2 ping statistics ---
119 packets transmitted, 98 received, 17% packet loss, time 2235ms
rtt min/avg/max/mdev =3D 22.885/101.313/137.328/24.301 ms, pipe 8, ipg/ew=
ma 18.943/108.385 ms

abusso@ttclabsdr:~$ sudo ping -s 8000 192.168.30.2 -f
PING 192.168.30.2 (192.168.30.2) 8000(8028) bytes of data.
.....................................................................
--- 192.168.30.2 ping statistics ---
138 packets transmitted, 69 received, 50% packet loss, time 1799ms
rtt min/avg/max/mdev =3D 26.077/111.479/130.336/20.520 ms, pipe 10, ipg/e=
wma 13.138/116.295 ms
```

--b1_vP1lc8kicnycCBqlxWVypm6YKXzuMdT32sFghxopl0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I can try re-programming with new images (if not already done) startin=
g from Vivado. Is this what you mean?</p><p>I tried a flood ping. With up=
 to 6000 bytes packet all is fine. With 7000 I start loosing a bit. With =
8000 it loose 50%. I=E2=80=99m not sure if this is normal with such long =
packets.</p><pre><code>abusso@ttclabsdr:~$ sudo ping -s 6000 192.168.30.2=
 -f
PING 192.168.30.2 (192.168.30.2) 6000(6028) bytes of data.
.
--- 192.168.30.2 ping statistics ---
147 packets transmitted, 146 received, 0% packet loss, time 2875ms
rtt min/avg/max/mdev =3D 19.729/25.174/27.233/1.240 ms, pipe 2, ipg/ewma =
19.697/24.942 ms

abusso@ttclabsdr:~$ sudo ping -s 7000 192.168.30.2 -f
PING 192.168.30.2 (192.168.30.2) 7000(7028) bytes of data.
.....................
--- 192.168.30.2 ping statistics ---
119 packets transmitted, 98 received, 17% packet loss, time 2235ms
rtt min/avg/max/mdev =3D 22.885/101.313/137.328/24.301 ms, pipe 8, ipg/ew=
ma 18.943/108.385 ms

abusso@ttclabsdr:~$ sudo ping -s 8000 192.168.30.2 -f
PING 192.168.30.2 (192.168.30.2) 8000(8028) bytes of data.
.....................................................................
--- 192.168.30.2 ping statistics ---
138 packets transmitted, 69 received, 50% packet loss, time 1799ms
rtt min/avg/max/mdev =3D 26.077/111.479/130.336/20.520 ms, pipe 10, ipg/e=
wma 13.138/116.295 ms
<br></code></pre>


--b1_vP1lc8kicnycCBqlxWVypm6YKXzuMdT32sFghxopl0--

--===============8548203694009873291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8548203694009873291==--
