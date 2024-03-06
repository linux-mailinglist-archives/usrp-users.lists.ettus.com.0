Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC4D874004
	for <lists+usrp-users@lfdr.de>; Wed,  6 Mar 2024 19:57:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D654384ECE
	for <lists+usrp-users@lfdr.de>; Wed,  6 Mar 2024 13:57:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709751429; bh=wqgS/+s9eaGRaP+vMM5KVTf+JeFxNVbbXn+CYVgCOJk=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vEEIKrMuNeA6r0sDBC4CIgf6E7X7O6ayrZZSV0h0zXNFKNeQBmv/EMfGNGR+UAP06
	 OZBVtEBpnsiB40oVc3gioJ2iSOrUheBbm+khAjfaBoOYlIidCfYIODhZd0hLnQbMDi
	 NbJD/icy4xqt7FEXdhaqvNiYhB3S0bQLdZPwLUP8voLkSKvChN1gl0zxHvNvOPXG1L
	 7UEROQJMkRAhgzcul+n4hhOBye+BMi4hSTsmdU4BYig3Klyx4h+iN0enSHvDK8P57A
	 n9NAnq6zgabgVjC7mdazdi0vgnjapVpyiG/EKuc2/Bo5Rvu800STtxcSfueGhn9fwu
	 pM6tYtMVrnZ6g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DD74F385458
	for <usrp-users@lists.ettus.com>; Wed,  6 Mar 2024 13:56:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709751387; bh=3+iEowIdA5+2v4yUKf55pTHmonV3jg6QnF81lucg0aA=;
	h=Date:To:From:Subject:From;
	b=A0qw2zwAZf4qUcAud0MPmxY5p86d6dw4YEs1EQ1wmTqQ3BUt+wXFc1yIzbqR3UIhl
	 SQAQ6S/iV7IBY5f/TwB4Mb/lNpooAnYzJfc8/+9kOTVKxzNSV5U93FNLoVnsSIF6OU
	 nKL0OtAfe+KLXDHZLqfUCQ37puEWrYUdWDmfPenKMw6l5meufc5vxUeag3ZXxuao+Q
	 RkDe+kT2BK/8w+pIkBlyrYRihxdcVPxgNYZUkzoFROFFj0iGfdM/S/ib/0MXG74fXw
	 3c6x2kjjIzphEwwMe3CcQjEVDqU5e38AMaZRexEoHZ9qAkMQVbRTvHPDJcMN5OVH/O
	 18g0O3zjySq4A==
Date: Wed, 6 Mar 2024 18:56:27 +0000
To: usrp-users@lists.ettus.com
From: yguruprasad@umass.edu
Message-ID: <0QjLtfoB7vJ1n5o4oNhIYFuuPo7Zph9js0YW14Gw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 3WFKX622XEU5QMESXAOLZPFFNBBVPTS4
X-Message-ID-Hash: 3WFKX622XEU5QMESXAOLZPFFNBBVPTS4
X-MailFrom: yguruprasad@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3WFKX622XEU5QMESXAOLZPFFNBBVPTS4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1457797616026065264=="

This is a multi-part message in MIME format.

--===============1457797616026065264==
Content-Type: multipart/alternative;
 boundary="b1_0QjLtfoB7vJ1n5o4oNhIYFuuPo7Zph9js0YW14Gw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_0QjLtfoB7vJ1n5o4oNhIYFuuPo7Zph9js0YW14Gw
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Could some help me if this is working as expected?

\
./bin/txrx_loopback_to_file --tx-args addr=3D192.168.10.2 --rx-args addr=3D=
192.168.10.2 --tx-rate 100e6 --rx-rate 6.5e6 --tx-freq 20e6 --rx-freq 18e6

Creating the transmit usrp device with: addr=3D192.168.10.2...

\[INFO\] \[UHD\] linux; GNU C++ version 8.5.0 20210514 (Red Hat 8.5.0-20); =
Boost_106600; UHD_4.2.0.1-0-g321295fb

\[INFO\] \[X300\] X300 initialization sequence...

\[INFO\] \[X300\] Maximum frame size: 1472 bytes.

\[INFO\] \[GPS\] Found an internal GPSDO: LC_XO, Firmware Rev 1.101

\[INFO\] \[X300\] Radio 1x clock: 200 MHz

\[INFO\] \[0/KeepOneInN#0\] Setting default MTU forward policy.

Creating the receive usrp device with: addr=3D192.168.10.2...

Using TX Device: Single USRP:

  Device: X-Series Device

  Mboard 0: X310

  RX Channel: 0

    RX DSP: 0

    RX Dboard: A

    RX Subdev: BasicRX (0)

  RX Channel: 1

    RX DSP: 1

    RX Dboard: A

    RX Subdev: BasicRX (1)

  RX Channel: 2

    RX DSP: 2

    RX Dboard: B

    RX Subdev: Unknown (0xffff) - 0

  TX Channel: 0

    TX DSP: 0

    TX Dboard: A

    TX Subdev: BasicTX (0)

  TX Channel: 1

    TX DSP: 1

    TX Dboard: B

    TX Subdev: Unknown (0xffff) - 0

Using RX Device: Single USRP:

  Device: X-Series Device

  Mboard 0: X310

  RX Channel: 0

    RX DSP: 0

    RX Dboard: A

    RX Subdev: BasicRX (0)

  RX Channel: 1

    RX DSP: 1

    RX Dboard: A

    RX Subdev: BasicRX (1)

  RX Channel: 2

    RX DSP: 2

    RX Dboard: B

    RX Subdev: Unknown (0xffff) - 0

  TX Channel: 0

    TX DSP: 0

    TX Dboard: A

    TX Subdev: BasicTX (0)

  TX Channel: 1

    TX DSP: 1

    TX Dboard: B

    TX Subdev: Unknown (0xffff) - 0

Setting TX Rate: 100.000000 Msps...

Actual TX Rate: 100.000000 Msps...

Setting RX Rate: 6.500000 Msps...

\[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user should ex=
pect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 =
will enable 3 halfbands.

decimation =3D dsp_rate/samp_rate -> 31

\[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user should ex=
pect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 =
will enable 3 halfbands.

decimation =3D dsp_rate/samp_rate -> 31

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 6.500 MHz. Actual rate =
is 6.452 MHz

\[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user should ex=
pect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 =
will enable 3 halfbands.

decimation =3D dsp_rate/samp_rate -> 31

\[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user should ex=
pect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 =
will enable 3 halfbands.

decimation =3D dsp_rate/samp_rate -> 31

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 6.500 MHz. Actual rate =
is 6.452 MHz

\[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user should ex=
pect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 =
will enable 3 halfbands.

decimation =3D dsp_rate/samp_rate -> 31

\[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user should ex=
pect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 =
will enable 3 halfbands.

decimation =3D dsp_rate/samp_rate -> 31

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 6.500 MHz. Actual rate =
is 6.452 MHz

Actual RX Rate: 6.451613 Msps...

Setting TX Freq: 20.000000 MHz...

Actual TX Freq: 20.000005 MHz...

Setting RX Freq: 18.000000 MHz...

Actual RX Freq: 17.999995 MHz...

\[WARNING\] \[0/Radio#0\] Attempting to set tick rate to 0. Skipping.

Press Ctrl + C to stop streaming...

Setting device timestamp to 0...

UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUU^CUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU

Done!
--b1_0QjLtfoB7vJ1n5o4oNhIYFuuPo7Zph9js0YW14Gw
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Could some help me if this is working as expected?</p><p><br>./bin/txrx_=
loopback_to_file --tx-args addr=3D192.168.10.2 --rx-args addr=3D192.168.10.=
2 --tx-rate 100e6 --rx-rate 6.5e6 --tx-freq 20e6 --rx-freq 18e6</p><p>Creat=
ing the transmit usrp device with: addr=3D192.168.10.2...</p><p>[INFO] [UHD=
] linux; GNU C++ version 8.5.0 20210514 (Red Hat 8.5.0-20); Boost_106600; U=
HD_4.2.0.1-0-g321295fb</p><p>[INFO] [X300] X300 initialization sequence...<=
/p><p>[INFO] [X300] Maximum frame size: 1472 bytes.</p><p>[INFO] [GPS] Foun=
d an internal GPSDO: LC_XO, Firmware Rev 1.101</p><p>[INFO] [X300] Radio 1x=
 clock: 200 MHz</p><p>[INFO] [0/KeepOneInN#0] Setting default MTU forward p=
olicy.</p><p>Creating the receive usrp device with: addr=3D192.168.10.2...<=
/p><p>Using TX Device: Single USRP:</p><p>  Device: X-Series Device</p><p> =
 Mboard 0: X310</p><p>  RX Channel: 0</p><p>    RX DSP: 0</p><p>    RX Dboa=
rd: A</p><p>    RX Subdev: BasicRX (0)</p><p>  RX Channel: 1</p><p>    RX D=
SP: 1</p><p>    RX Dboard: A</p><p>    RX Subdev: BasicRX (1)</p><p>  RX Ch=
annel: 2</p><p>    RX DSP: 2</p><p>    RX Dboard: B</p><p>    RX Subdev: Un=
known (0xffff) - 0</p><p>  TX Channel: 0</p><p>    TX DSP: 0</p><p>    TX D=
board: A</p><p>    TX Subdev: BasicTX (0)</p><p>  TX Channel: 1</p><p>    T=
X DSP: 1</p><p>    TX Dboard: B</p><p>    TX Subdev: Unknown (0xffff) - 0</=
p><p>Using RX Device: Single USRP:</p><p>  Device: X-Series Device</p><p>  =
Mboard 0: X310</p><p>  RX Channel: 0</p><p>    RX DSP: 0</p><p>    RX Dboar=
d: A</p><p>    RX Subdev: BasicRX (0)</p><p>  RX Channel: 1</p><p>    RX DS=
P: 1</p><p>    RX Dboard: A</p><p>    RX Subdev: BasicRX (1)</p><p>  RX Cha=
nnel: 2</p><p>    RX DSP: 2</p><p>    RX Dboard: B</p><p>    RX Subdev: Unk=
nown (0xffff) - 0</p><p>  TX Channel: 0</p><p>    TX DSP: 0</p><p>    TX Db=
oard: A</p><p>    TX Subdev: BasicTX (0)</p><p>  TX Channel: 1</p><p>    TX=
 DSP: 1</p><p>    TX Dboard: B</p><p>    TX Subdev: Unknown (0xffff) - 0</p=
><p>Setting TX Rate: 100.000000 Msps...</p><p>Actual TX Rate: 100.000000 Ms=
ps...</p><p>Setting RX Rate: 6.500000 Msps...</p><p>[WARNING] [0/DDC#0] The=
 requested decimation is odd; the user should expect passband CIC rolloff.<=
/p><p>Select an even decimation to ensure that a halfband filter is enabled=
.</p><p>Decimations factorable by 4 will enable 2 halfbands, those factorab=
le by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&=
gt; 31</p><p>[WARNING] [0/DDC#0] The requested decimation is odd; the user =
should expect passband CIC rolloff.</p><p>Select an even decimation to ensu=
re that a halfband filter is enabled.</p><p>Decimations factorable by 4 wil=
l enable 2 halfbands, those factorable by 8 will enable 3 halfbands.</p><p>=
decimation =3D dsp_rate/samp_rate -&gt; 31</p><p>[WARNING] [MULTI_USRP] Cou=
ld not set RX rate to 6.500 MHz. Actual rate is 6.452 MHz</p><p>[WARNING] [=
0/DDC#0] The requested decimation is odd; the user should expect passband C=
IC rolloff.</p><p>Select an even decimation to ensure that a halfband filte=
r is enabled.</p><p>Decimations factorable by 4 will enable 2 halfbands, th=
ose factorable by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/=
samp_rate -&gt; 31</p><p>[WARNING] [0/DDC#0] The requested decimation is od=
d; the user should expect passband CIC rolloff.</p><p>Select an even decima=
tion to ensure that a halfband filter is enabled.</p><p>Decimations factora=
ble by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfb=
ands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 31</p><p>[WARNING] [MUL=
TI_USRP] Could not set RX rate to 6.500 MHz. Actual rate is 6.452 MHz</p><p=
>[WARNING] [0/DDC#1] The requested decimation is odd; the user should expec=
t passband CIC rolloff.</p><p>Select an even decimation to ensure that a ha=
lfband filter is enabled.</p><p>Decimations factorable by 4 will enable 2 h=
alfbands, those factorable by 8 will enable 3 halfbands.</p><p>decimation =
=3D dsp_rate/samp_rate -&gt; 31</p><p>[WARNING] [0/DDC#1] The requested dec=
imation is odd; the user should expect passband CIC rolloff.</p><p>Select a=
n even decimation to ensure that a halfband filter is enabled.</p><p>Decima=
tions factorable by 4 will enable 2 halfbands, those factorable by 8 will e=
nable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 31</p><p>[=
WARNING] [MULTI_USRP] Could not set RX rate to 6.500 MHz. Actual rate is 6.=
452 MHz</p><p>Actual RX Rate: 6.451613 Msps...</p><p>Setting TX Freq: 20.00=
0000 MHz...</p><p>Actual TX Freq: 20.000005 MHz...</p><p>Setting RX Freq: 1=
8.000000 MHz...</p><p>Actual RX Freq: 17.999995 MHz...</p><p>[WARNING] [0/R=
adio#0] Attempting to set tick rate to 0. Skipping.</p><p>Press Ctrl + C to=
 stop streaming...</p><p>Setting device timestamp to 0...</p><p>UUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUU^CUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU</p><p>Done!</p>

--b1_0QjLtfoB7vJ1n5o4oNhIYFuuPo7Zph9js0YW14Gw--

--===============1457797616026065264==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1457797616026065264==--
