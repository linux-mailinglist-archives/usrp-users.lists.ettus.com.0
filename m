Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D8590C130
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2024 03:16:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 827233854E3
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 21:16:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718673398; bh=MAcatHFay6u5VwW7gxAc/S/eCPShlskrPaiIkWdWx+Y=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=oNm2sdDLBIPkgfcSi2UwzWQ17CF6SD3Bfbgsr03MYw4o1XlyeQPtPbs31qjX4D5Ch
	 zZXsvDX3QQncKlTN6z4v/fl0WeubuBZhZLa3Uv35EjNOaf4vsB7z4+l6A4pcbYO+H2
	 pQ8eEXPcVrAiVirM+wx1bkhKy0YDPPjhqsrWGnTnOMfbLnWtme2M6+HVhvxoLHL3DO
	 c6LbWmDx6529jcjs4VN3rW4zs7HZG2qqrFsJWWTnPIbz9oOoXVEwJ/i6rE1Bh5DcXP
	 DQ6jzrz2inaSxGdeLtXERPz+y8nqTIfxSBvBIis57EEOzyaTjqfhZHujy/d1vEgDM2
	 1u4RHVjtJQYpw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 59DA13853F2
	for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 21:16:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718673383; bh=4tcCRJ7Bu6Iur+IA41Lj8edPu6I7sekQa1Kpkc0IF38=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ZC+HOtIsJ3LKYFPuMDKmUE5DpJw8aHyHGBG2rciwBhCOwSUW5ynxlpygX7bhq/eNj
	 QXrkCvbWz7vizeNdaUZ2L6H8mOuWp5dSFAjUD5SurmtryOPWC5jfqmHWsEXMXcIQr+
	 17XHa+u8V8cuBrtXgseFjkKwXSG2ZXpGgVSjgdm/PBO7WUZYHcSY4HdIPa02Elww8J
	 LB+fZQ5w1ZZpZ3/a1FQVtsCQk+j77+uBEvhFovIfOgcL8rOQ08v96wOZgobklRzri0
	 jXOxlJJfO/FcaHgZpDPii4OY2JIrTsk6jLfX++rHNwq4NGPUp4DSH5Av/4ofzynaEq
	 YWF2Ye2eZvR1Q==
Date: Tue, 18 Jun 2024 01:16:23 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <a6Wv2vNjKK9miqOQYxIMzCmWBembWN1FXYDSSBVXCU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: Q6aZvIiHC1e0pKN6JDnnyyxSv9h1XRHCo56HqjLmJwY@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: RP2NJKUPIMB6HBZ62M3TPIYYW3UTDTBY
X-Message-ID-Hash: RP2NJKUPIMB6HBZ62M3TPIYYW3UTDTBY
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RP2NJKUPIMB6HBZ62M3TPIYYW3UTDTBY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6670159786449546753=="

This is a multi-part message in MIME format.

--===============6670159786449546753==
Content-Type: multipart/alternative;
 boundary="b1_a6Wv2vNjKK9miqOQYxIMzCmWBembWN1FXYDSSBVXCU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_a6Wv2vNjKK9miqOQYxIMzCmWBembWN1FXYDSSBVXCU
Content-Type: text/plain; charset=us-ascii

I hacked the code to set the DATA_FRAME_MAX_SIZE = 8500, half-way between 8000 and MTU 9000.

Then I made sure to set the send_frame_size=recv_frame_size=8700, which is equal, and over the MAX_SIZE.It still picks 8144.  You can see below.

I added a bunch of debug of the intermediate variables.

 $\~/uhd-4.6.0.0/host/build/examples$ ./tx_samples_c -a "type=x300,addr=192.168.40.2,send_frame_size=8700,recv_frame_size=8700"

```
Creating USRP with args "type=x300,addr=192.168.40.2,send_frame_size=8700,recv_frame_size=8700"...
```

```
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.6.0.0-1-ga9f0b4c7
```

```
[INFO] [X300] X300 initialization sequence...
```

```
[INFO] [X300] user_frame_size.send_frame_size: 8700
```

```
[INFO] [X300] x300::DATA_FRAME_MAX_SIZE: 8500
```

```
[INFO] [X300] std::min(user_frame_size.send_frame_size, x300::DATA_FRAME_MAX_SIZE): 8500
```

```
[INFO] [X300] max_send_frame_size: 8500
```

```
[INFO] [X300] min_recv_frame_size: 8144
```

```
[INFO] [X300] min_send_frame_size: 8144
```

```
[INFO] [X300] Maximum frame size: 8144 bytes.
```

```
[WARNING] [X300] You requested a receive frame size of (8700) but your NIC's max frame size is (8144).Please verify your NIC's MTU setting using 'ip link' or set the recv_frame_size argument appropriately.UHD will use the auto-detected max frame size for this connection.
```

```
[WARNING] [X300] You requested a send frame size of (8700) but your NIC's max frame size is (8144).Please verify your NIC's MTU setting using 'ip link' or set the send_frame_size argument appropriately.UHD will use the auto-detected max frame size for this connection.
```

```
[WARNING] [X300] For the 192.168.40.2 connection, UHD recommends a send frame size of at least 8500 for best
```

```
performance, but your configuration will only allow 8144.This may negatively impact your maximum achievable sample rate.
```

```
Check the MTU on the interface and/or the send_frame_size argument.
```

```
[WARNING] [X300] For the 192.168.40.2 connection, UHD recommends a receive frame size of at least 8500 for best
```

```
performance, but your configuration will only allow 8144.This may negatively impact your maximum achievable sample rate.
```

```
Check the MTU on the interface and/or the recv_frame_size argument.
```

```
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
```

```
[INFO] [X300] Radio 1x clock: 200 MHz
```

```
Setting TX Rate: 200000000.000000...
```

```
Actual TX Rate: 200000000.000000...
```

```
Setting TX Gain: 0.000000 db...
```

--b1_a6Wv2vNjKK9miqOQYxIMzCmWBembWN1FXYDSSBVXCU
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>I hacked the code to set the DATA_FRAME_MAX_SIZE =3D 8500, half-way betw=
een 8000 and MTU 9000.</p><p>Then I made sure to set the send_frame_size=3D=
recv_frame_size=3D8700, which is equal, and over the MAX_SIZE.It still pick=
s 8144.  You can see below.</p><p>I added a bunch of debug of the intermedi=
ate variables.</p><p> $~/uhd-4.6.0.0/host/build/examples$ ./tx_samples_c -a=
 "type=3Dx300,addr=3D192.168.40.2,send_frame_size=3D8700,recv_frame_size=3D=
8700"</p><pre><code>Creating USRP with args "type=3Dx300,addr=3D192.168.40.=
2,send_frame_size=3D8700,recv_frame_size=3D8700"...</code></pre><pre><code>=
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.6.0.0-1-ga9f=
0b4c7</code></pre><pre><code>[INFO] [X300] X300 initialization sequence...<=
/code></pre><pre><code>[INFO] [X300] user_frame_size.send_frame_size: 8700<=
/code></pre><pre><code>[INFO] [X300] x300::DATA_FRAME_MAX_SIZE: 8500</code>=
</pre><pre><code>[INFO] [X300] std::min(user_frame_size.send_frame_size, x3=
00::DATA_FRAME_MAX_SIZE): 8500</code></pre><pre><code>[INFO] [X300] max_sen=
d_frame_size: 8500</code></pre><pre><code>[INFO] [X300] min_recv_frame_size=
: 8144</code></pre><pre><code>[INFO] [X300] min_send_frame_size: 8144</code=
></pre><pre><code>[INFO] [X300] Maximum frame size: 8144 bytes.</code></pre=
><pre><code>[WARNING] [X300] You requested a receive frame size of (8700) b=
ut your NIC's max frame size is (8144).Please verify your NIC's MTU setting=
 using 'ip link' or set the recv_frame_size argument appropriately.UHD will=
 use the auto-detected max frame size for this connection.</code></pre><pre=
><code>[WARNING] [X300] You requested a send frame size of (8700) but your =
NIC's max frame size is (8144).Please verify your NIC's MTU setting using '=
ip link' or set the send_frame_size argument appropriately.UHD will use the=
 auto-detected max frame size for this connection.</code></pre><pre><code>[=
WARNING] [X300] For the 192.168.40.2 connection, UHD recommends a send fram=
e size of at least 8500 for best</code></pre><pre><code>performance, but yo=
ur configuration will only allow 8144.This may negatively impact your maxim=
um achievable sample rate.</code></pre><pre><code>Check the MTU on the inte=
rface and/or the send_frame_size argument.</code></pre><pre><code>[WARNING]=
 [X300] For the 192.168.40.2 connection, UHD recommends a receive frame siz=
e of at least 8500 for best</code></pre><pre><code>performance, but your co=
nfiguration will only allow 8144.This may negatively impact your maximum ac=
hievable sample rate.</code></pre><pre><code>Check the MTU on the interface=
 and/or the recv_frame_size argument.</code></pre><pre><code>[INFO] [GPS] F=
ound an internal GPSDO: LC_XO, Firmware Rev 0.929a</code></pre><pre><code>[=
INFO] [X300] Radio 1x clock: 200 MHz</code></pre><pre><code>Setting TX Rate=
: 200000000.000000...</code></pre><pre><code>Actual TX Rate: 200000000.0000=
00...</code></pre><pre><code>Setting TX Gain: 0.000000 db...</code></pre>

--b1_a6Wv2vNjKK9miqOQYxIMzCmWBembWN1FXYDSSBVXCU--

--===============6670159786449546753==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6670159786449546753==--
