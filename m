Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1B16A4608
	for <lists+usrp-users@lfdr.de>; Mon, 27 Feb 2023 16:27:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49ABF383E8A
	for <lists+usrp-users@lfdr.de>; Mon, 27 Feb 2023 10:27:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677511640; bh=qgElIw3Mwf5TRpId4sxpk5/EQrWIi1ZGhI6UgDjcIzc=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=iND854NE2SZlTy5sQ+YmK5MiIeMgVfoiVYBXWVepw7WaHYgSrByMJtp6xDwlZ+X+e
	 l1F3MdQqjsWFEHQg8xXJ44JEJR8vHL9NzdA5FdpPA0TodiNvbHSbzSVIUWJWwyT2BG
	 k+q8Cfj6aIJRXK30j7ygIw4OYiBOjIcT35Ao60pagq2VGateJpbnlP56xs7gpVKlFI
	 fPqN2oe5DMwp9dW5QkF8fwZGHh7WZ63RN4M6PhGjQx2+TMrtkEaSH4KyuictpPgWIn
	 HKAZsB/Hitutl+wF5j7Miv4QISYsOLwelpm6rsIKm0HgAsk8qL16Ql7hiX87S3vaFF
	 4AdGFoXW2gJBw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC499381941
	for <usrp-users@lists.ettus.com>; Mon, 27 Feb 2023 10:27:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677511634; bh=zX/MJ0CUsVYFkGSb9aPIcN8+2IJ348E7a0BZKukjov0=;
	h=Date:To:From:Subject:From;
	b=yilGTOWsBdavitvCnIkc7sWNIjuX3V0gvAQdZCdgkehnHzKqhJu1SI+/uCMOzOyT6
	 gwejbgETKDEOOENpWE8epulwpaoCFBVLFKaHv24C3NFPpnSN8sZ0WRO46Dd8LWuaMy
	 MK05QUpllXp81xl18yBOStcnTwbj2LqhX4BvoVrrPBTVrj1yNSkyfA+qCiq/6fpK0t
	 53Kmf6ozATwPMU8Fkb53hfb88BrOmB1IA5lIhsFmfW0HrzOoJmj6i4mw9XYAxktxkx
	 FqzNRcg9ePNeIX3Vd8qJF5M11yfGvLMsn32amcYq9Rxepk7klfsdfpp1s4weDrQLeO
	 Rj6DAH4QZ91LQ==
Date: Mon, 27 Feb 2023 15:27:13 +0000
To: usrp-users@lists.ettus.com
Message-ID: <MqC4BLtZgDcOzjpDrUE56nHdZbyKf2mGgBvViB85Es@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: E3ZLMVCA5ESYYYQXFZVUNVJXUWMUDAXV
X-Message-ID-Hash: E3ZLMVCA5ESYYYQXFZVUNVJXUWMUDAXV
X-MailFrom: oiu13q2t5pibtq1@proton.me
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210: Receive Signales Sent by another
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E3ZLMVCA5ESYYYQXFZVUNVJXUWMUDAXV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: oiu13q2t5pibtq1--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: oiu13q2t5pibtq1@proton.me
Content-Type: multipart/mixed; boundary="===============9062612140771633277=="

This is a multi-part message in MIME format.

--===============9062612140771633277==
Content-Type: multipart/alternative;
 boundary="b1_MqC4BLtZgDcOzjpDrUE56nHdZbyKf2mGgBvViB85Es"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_MqC4BLtZgDcOzjpDrUE56nHdZbyKf2mGgBvViB85Es
Content-Type: text/plain; charset=us-ascii

I have 2 B210 with VERT2450s (i.e. 2.4/5 GHz antennae) and compiled uhd from source

`[INFO] [UHD] linux; Clang version 14.0.0 ; Boost_107400; UHD_4.4.0.0-0-g5fac246b`

Following the USRP Guide https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio, I checked:

`/usr/lib/uhd/examples/benchmark_rate --rx_rate 10e6 --tx_rate 10e6`

on both SDRs

which yielded

`Num received samples:     100243473`

`  Num dropped samples:      0`

`  Num overruns detected:    0`

`  Num transmitted samples:  100064040`

Now I tried to receive signals generated the other via

SDR1: RX:

`/usr/lib/uhd/examples/rx_ascii_art_dft --freq 4996e6 --rate 5e6 --gain 20 --bw 5e6 --ref-lvl -30`

SDR2: TX:

`/usr/lib/uhd/examples/tx_waveforms --freq 4996e6 --rate 5e6 --gain 10`

I would expect a peak somewhere around 4996 MHz; I only see noise which is not affected by the `tx_waveforms `call

The SDRs are in the same room.

The TX LED is red, the RX2 LED is green, indicating that they are indeed sending and receiving

Am I missing something important here?!

How can I solve that basic task?

--b1_MqC4BLtZgDcOzjpDrUE56nHdZbyKf2mGgBvViB85Es
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>I have 2 B210 with VERT2450s (i.e. 2.4/5 GHz antennae) and compiled uhd =
from source</p><p><code>[INFO] [UHD] linux; Clang version 14.0.0 ; Boost_10=
7400; UHD_4.4.0.0-0-g5fac246b</code></p><p>Following the USRP Guide https:/=
/kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio, =
I checked:</p><p><code>/usr/lib/uhd/examples/benchmark_rate --rx_rate 10e6 =
--tx_rate 10e6</code></p><p>on both SDRs</p><p>which yielded</p><p><code>Nu=
m received samples:     100243473</code></p><p><code>  Num dropped samples:=
      0</code></p><p><code>  Num overruns detected:    0</code></p><p><code=
>  Num transmitted samples:  100064040</code></p><p><br></p><p>Now I tried =
to receive signals generated the other via</p><p>SDR1: RX:</p><p class=3D""=
><code>/usr/lib/uhd/examples/rx_ascii_art_dft --freq 4996e6 --rate 5e6 --ga=
in 20 --bw 5e6 --ref-lvl -30</code></p><p>SDR2: TX:</p><p><code>/usr/lib/uh=
d/examples/tx_waveforms --freq 4996e6 --rate 5e6 --gain 10</code></p><p><br=
></p><p>I would expect a peak somewhere around 4996 MHz; I only see noise w=
hich is not affected by the <code>tx_waveforms </code>call</p><p>The SDRs a=
re in the same room.</p><p>The TX LED is red, the RX2 LED is green, indicat=
ing that they are indeed sending and receiving</p><p><br></p><p>Am I missin=
g something important here?!</p><p><br></p><p>How can I solve that basic ta=
sk?</p>

--b1_MqC4BLtZgDcOzjpDrUE56nHdZbyKf2mGgBvViB85Es--

--===============9062612140771633277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9062612140771633277==--
