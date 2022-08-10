Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F2258EBD3
	for <lists+usrp-users@lfdr.de>; Wed, 10 Aug 2022 14:15:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C29083810AA
	for <lists+usrp-users@lfdr.de>; Wed, 10 Aug 2022 08:15:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660133727; bh=177UZHePwZiGQ/UD3a3SQaMazY/u/mIv1LToYSTs8yI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eMTNUGIK+tHM1uNQnVl7kUaJk2v2A7lE8d10DrL0i8Cs1bReuWTkkJCLXZ+GR323V
	 qBw55LZEJ9ES0B51kA0pC1OTB3Bu/1dJ+3Curqg5YrK3/QVMw/4+xlx0Wq7RBLrGcc
	 31pg/PpVSA4+1pIuyTg2ksYXU1Ue3q2yKnk61LFf+TxXWm1JLR6qR4iajchQGqL0Vw
	 F25YogJBOdfbObMf6AGx9cUmVycM35HjnaNcv7bA6THdZoLRf+5rgueNV6Ut9z5w/b
	 FRAzhus81LK7CXaX7JYAZ7vitwSLPmaFzm83gtU3CQJFNyuDOkWUiI1SwTV44rM86e
	 o5WlGfts1pTVA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 339E3380FD1
	for <usrp-users@lists.ettus.com>; Wed, 10 Aug 2022 08:14:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660133652; bh=RadIpMAN84Ik/WLHvP+8nxNcBSvvqaZokvDCc/aAqrs=;
	h=Date:To:From:Subject:From;
	b=opOo858j2w7/c7mjRMkC3raNvuVclqjimN1qokxNtSO8eSiR2S0xq5xfRcCPjhvB5
	 s+EfMopT/556tx8ghB8cYiESPT8+xFXF76LwiMl64QYKKcZgNm1uxb1QxOGBHI31sP
	 c0Stofm/hSGNrbsFI84g739PeE+Qs9kvPexTJsMWQRYdxFtzdaTbe36tE9f5t6X3Iu
	 /CYumQc7k6s3PyNTnUYjQlqG/Qiz3eJLaxpjPCY/nYtXQN72KpOSz1qHvk7dr4U261
	 2qiw/OJUU94eqQPohs2Kp7/9T1WOQoit9/GxG6CWIpuu0TShfsb9xHmxoIw54Q9AjM
	 W0/HLA4ddRL/A==
Date: Wed, 10 Aug 2022 12:14:12 +0000
To: usrp-users@lists.ettus.com
From: horvlint@gmail.com
Message-ID: <UKKxAGHthpLRTag9ODf2yNCvnyZf5brQxVBkqbN5tn4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: XKLEMON7U3EGD4X4OZTQFLFIRU6GO75Q
X-Message-ID-Hash: XKLEMON7U3EGD4X4OZTQFLFIRU6GO75Q
X-MailFrom: horvlint@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x310 with WBX-120 LO: unlocked
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XKLEMON7U3EGD4X4OZTQFLFIRU6GO75Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1179872766296816580=="

This is a multi-part message in MIME format.

--===============1179872766296816580==
Content-Type: multipart/alternative;
 boundary="b1_UKKxAGHthpLRTag9ODf2yNCvnyZf5brQxVBkqbN5tn4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_UKKxAGHthpLRTag9ODf2yNCvnyZf5brQxVBkqbN5tn4
Content-Type: text/plain; charset=us-ascii

Hello,

I'm trying to create a simple loopback application (using the same DB for TX and RX) with my X310, but I'm having problems. The setup is an X310 with WBX120 (TX/RX for transmission and RX2 for receiving). I traced the issue back to running the "txrx_loopback_to_file"  uhd example with following parameters:

./txrx_loopback_to_file --tx-rate 1e6 --rx-rate 1e6 --tx-freq 1e9 --rx-freq 1e9

I get the following error:

Creating the transmit usrp device with: ...

\[INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.2.0.1-0-g321295fb

\[INFO\] \[X300\] X300 initialization sequence...

\[INFO\] \[X300\] Maximum frame size: 8000 bytes.

\[INFO\] \[X300\] Radio 1x clock: 200 MHz

Creating the receive usrp device with: ...

Using TX Device: Single USRP:

  Device: X-Series Device

  Mboard 0: X310

  RX Channel: 0

    RX DSP: 0

    RX Dboard: A

    RX Subdev: WBX-120 RX+GDB

  RX Channel: 1

    RX DSP: 1

    RX Dboard: B

    RX Subdev: WBX-120 RX+GDB

  TX Channel: 0

    TX DSP: 0

    TX Dboard: A

    TX Subdev: WBX-120 TX+GDB

  TX Channel: 1

    TX DSP: 1

    TX Dboard: B

    TX Subdev: WBX-120 TX+GDB

Using RX Device: Single USRP:

  Device: X-Series Device

  Mboard 0: X310

  RX Channel: 0

    RX DSP: 0

    RX Dboard: A

    RX Subdev: WBX-120 RX+GDB

  RX Channel: 1

    RX DSP: 1

    RX Dboard: B

    RX Subdev: WBX-120 RX+GDB

  TX Channel: 0

    TX DSP: 0

    TX Dboard: A

    TX Subdev: WBX-120 TX+GDB

  TX Channel: 1

    TX DSP: 1

    TX Dboard: B

    TX Subdev: WBX-120 TX+GDB

Setting TX Rate: 1.000000 Msps...

Actual TX Rate: 1.000000 Msps...

Setting RX Rate: 1.000000 Msps...

Actual RX Rate: 1.000000 Msps...

Setting TX Freq: 1000.000000 MHz...

Actual TX Freq: 1000.000000 MHz...

Setting RX Freq: 1000.000000 MHz...

Actual RX Freq: 1000.000000 MHz...

\[WARNING\] \[0/Radio#0\] Attempting to set tick rate to 0. Skipping.

Checking TX: LO: locked ...

Checking RX: LO: unlocked ...

Error: AssertionError: lo_locked.to_bool()

  in _main

  at /home/hp/uhd-4.2/host/examples/txrx_loopback_to_file.cpp:483

I have another WBX120 in slot B which returns with the same error.

However, if I transmit with the one in slot A and receive with the one on slot B (or vice-versa) both TX and RX locks:

./txrx_loopback_to_file --tx-rate 1e6 --rx-rate 1e6 --tx-freq 1e9 --rx-freq 1e9 --tx-subdev A:0 --rx-subdev B:0 --rx-ant RX2

...

\[WARNING\] \[0/Radio#0\] Attempting to set tick rate to 0. Skipping.

Checking TX: LO: locked ...

Checking RX: LO: locked ...

Press Ctrl + C to stop streaming...

Setting device timestamp to 0...

\[WARNING\] \[0/Radio#1\] Attempting to set tick rate to 0. Skipping.

^C

Done!

I also have an SBX for which the test with the same parameters work:

./txrx_loopback_to_file --tx-rate 1e6 --rx-rate 1e6 --tx-freq 1e9 --rx-freq 1e9

\[WARNING\] \[0/Radio#0\] Attempting to set tick rate to 0. Skipping.

Checking TX: LO: locked ...

Checking RX: LO: locked ...

Press Ctrl + C to stop streaming...

Setting device timestamp to 0...

UHD version is: UHD_4.2.0.1-0-g321295fb

Any help to resolve the issue would be appreciated!

Thanks,

Balint

--b1_UKKxAGHthpLRTag9ODf2yNCvnyZf5brQxVBkqbN5tn4
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I'm trying to create a simple loopback application (using t=
he same DB for TX and RX) with my X310, but I'm having problems. The setup =
is an X310 with WBX120 (TX/RX for transmission and RX2 for receiving). I tr=
aced the issue back to running the "txrx_loopback_to_file"  uhd example wit=
h following parameters:</p><p>./txrx_loopback_to_file --tx-rate 1e6 --rx-ra=
te 1e6 --tx-freq 1e9 --rx-freq 1e9</p><p>I get the following error:</p><p>C=
reating the transmit usrp device with: ...</p><p>[INFO] [UHD] linux; GNU C+=
+ version 9.4.0; Boost_107100; UHD_4.2.0.1-0-g321295fb</p><p>[INFO] [X300] =
X300 initialization sequence...</p><p>[INFO] [X300] Maximum frame size: 800=
0 bytes.</p><p>[INFO] [X300] Radio 1x clock: 200 MHz</p><p>Creating the rec=
eive usrp device with: ...</p><p>Using TX Device: Single USRP:</p><p>  Devi=
ce: X-Series Device</p><p>  Mboard 0: X310</p><p>  RX Channel: 0</p><p>    =
RX DSP: 0</p><p>    RX Dboard: A</p><p>    RX Subdev: WBX-120 RX+GDB</p><p>=
  RX Channel: 1</p><p>    RX DSP: 1</p><p>    RX Dboard: B</p><p>    RX Sub=
dev: WBX-120 RX+GDB</p><p>  TX Channel: 0</p><p>    TX DSP: 0</p><p>    TX =
Dboard: A</p><p>    TX Subdev: WBX-120 TX+GDB</p><p>  TX Channel: 1</p><p> =
   TX DSP: 1</p><p>    TX Dboard: B</p><p>    TX Subdev: WBX-120 TX+GDB</p>=
<p>Using RX Device: Single USRP:</p><p>  Device: X-Series Device</p><p>  Mb=
oard 0: X310</p><p>  RX Channel: 0</p><p>    RX DSP: 0</p><p>    RX Dboard:=
 A</p><p>    RX Subdev: WBX-120 RX+GDB</p><p>  RX Channel: 1</p><p>    RX D=
SP: 1</p><p>    RX Dboard: B</p><p>    RX Subdev: WBX-120 RX+GDB</p><p>  TX=
 Channel: 0</p><p>    TX DSP: 0</p><p>    TX Dboard: A</p><p>    TX Subdev:=
 WBX-120 TX+GDB</p><p>  TX Channel: 1</p><p>    TX DSP: 1</p><p>    TX Dboa=
rd: B</p><p>    TX Subdev: WBX-120 TX+GDB</p><p>Setting TX Rate: 1.000000 M=
sps...</p><p>Actual TX Rate: 1.000000 Msps...</p><p>Setting RX Rate: 1.0000=
00 Msps...</p><p>Actual RX Rate: 1.000000 Msps...</p><p>Setting TX Freq: 10=
00.000000 MHz...</p><p>Actual TX Freq: 1000.000000 MHz...</p><p>Setting RX =
Freq: 1000.000000 MHz...</p><p>Actual RX Freq: 1000.000000 MHz...</p><p>[WA=
RNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.</p><p>Checki=
ng TX: LO: locked ...</p><p>Checking RX: LO: unlocked ...</p><p>Error: Asse=
rtionError: lo_locked.to_bool()</p><p>  in _main</p><p>  at /home/hp/uhd-4.=
2/host/examples/txrx_loopback_to_file.cpp:483</p><p>I have another WBX120 i=
n slot B which returns with the same error.</p><p>However, if I transmit wi=
th the one in slot A and receive with the one on slot B (or vice-versa) bot=
h TX and RX locks:</p><p>./txrx_loopback_to_file --tx-rate 1e6 --rx-rate 1e=
6 --tx-freq 1e9 --rx-freq 1e9 --tx-subdev A:0 --rx-subdev B:0 --rx-ant RX2<=
/p><p>...</p><p>[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Ski=
pping.</p><p>Checking TX: LO: locked ...</p><p>Checking RX: LO: locked ...<=
/p><p>Press Ctrl + C to stop streaming...</p><p>Setting device timestamp to=
 0...</p><p>[WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skippin=
g.</p><p>^C</p><p>Done!</p><p>I also have an SBX for which the test with th=
e same parameters work:</p><p>./txrx_loopback_to_file --tx-rate 1e6 --rx-ra=
te 1e6 --tx-freq 1e9 --rx-freq 1e9</p><p>[WARNING] [0/Radio#0] Attempting t=
o set tick rate to 0. Skipping.</p><p>Checking TX: LO: locked ...</p><p>Che=
cking RX: LO: locked ...</p><p>Press Ctrl + C to stop streaming...</p><p>Se=
tting device timestamp to 0...</p><p>UHD version is: UHD_4.2.0.1-0-g321295f=
b</p><p>Any help to resolve the issue would be appreciated!</p><p>Thanks,</=
p><p>Balint</p>

--b1_UKKxAGHthpLRTag9ODf2yNCvnyZf5brQxVBkqbN5tn4--

--===============1179872766296816580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1179872766296816580==--
