Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E367A9BDAB7
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2024 01:56:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 57F7E385D43
	for <lists+usrp-users@lfdr.de>; Tue,  5 Nov 2024 19:56:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730854580; bh=fLywVC9juo+ozk3UptAmZFxVHj/llUYC5y9rPLgj6Ns=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vNIt4AhWTrXRDOeb0fJp/L+RBZDPro4FNHh9d6WVIZnp6IBWXAC+VDdVDHgyDf95W
	 2KW04Lxp5J8Jb6soL4Qy++fS1RLqC1UAwUGmYes50E3+0dJ0k2K8z44zm9mrdP2eti
	 k5si2p422e3xC5mALlKiqS0meb8yjx70q4/ai81nvMoyAuD93q6qKILi8qeR3F6kWM
	 1/LOP8W96VYEdNMLzp623rGppiybCRErSH44ss1R+ZVS+AI8r4sxpvq8ATjGkO28d2
	 luuaQZjbilPAc6MpA2ZksxXAajYkglfUAjNO2T4f2Me+N8AZifamUUx5pJMmajV78E
	 4A+YFJ0rwdPGw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8ECCE385CFA
	for <usrp-users@lists.ettus.com>; Tue,  5 Nov 2024 19:55:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730854531; bh=CQEPepfAb4PvAP2F2XD2fbwA3gxud80srzfYHxh4Hz0=;
	h=Date:To:From:Subject:From;
	b=DFnN7gFaYHhBdtsIfD0tAWhXrQ937sOwQlQL3Bca/O9w2py83jsAVrgtlvro//ORJ
	 +STbBzDTRRRasfoxw2Lu8oRpq2gB4ajljzPOpDRpr1dJMLLy4u5+NJXW4IzoXHOlE3
	 9dB0OC3F8Rn1uy0LpjWecPNpXkkf7Ruw/c8Y2MPQfLrtLLWnDTMqWUkZR/xy5wXZ2b
	 PwzUhtZnsmPy56ODbp5baMb2vBjTclyIe2wYHI3HwAs8UL74xp1wuU6qReaq4fsF+i
	 O+wQjQ/nER2Lq4dZ4wCYDTY5De/spxEmjyM+E/FPsoKhmzmftLvI9FlBR46dkDYKwb
	 psOHiT3hoEeVQ==
Date: Wed, 6 Nov 2024 00:55:31 +0000
To: usrp-users@lists.ettus.com
From: mgannet@gmail.com
Message-ID: <evJJismGX8FnN2oBEQQb16M8vEYufO5U0vQHxU0E@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: Q7F4PLPBTWWF4UMVSY4BHPFFUOKHM2YW
X-Message-ID-Hash: Q7F4PLPBTWWF4UMVSY4BHPFFUOKHM2YW
X-MailFrom: mgannet@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Asynchronous IO in RFNOC on x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q7F4PLPBTWWF4UMVSY4BHPFFUOKHM2YW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8408257306632979547=="

This is a multi-part message in MIME format.

--===============8408257306632979547==
Content-Type: multipart/alternative;
 boundary="b1_evJJismGX8FnN2oBEQQb16M8vEYufO5U0vQHxU0E"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_evJJismGX8FnN2oBEQQb16M8vEYufO5U0vQHxU0E
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi everybody!

I=E2=80=99ve written an RFNOC block that assigns the daughterboard rx GPI=
O pins to the tdata signals that are sent to the SEP.  I=E2=80=99m using =
the axis_data protocol and the block is placed statically between the DDC=
 and the SEP.  I use the tvalid and tlast signal from the upstream (DDC) =
block and the tready signal from the downstream (SEP) block.  I brought t=
he GPIO into the block using appropriate YAML files.  Small modification =
outside of RFNOC were required to get the pins to RFNOC (bus_int.v, x300_=
core.v, io_signatures.yml, and x310_bsp.yml).

The x310 is operated at 1 Msps and there are 64 samples per CHDR packet o=
n the axis data bus.  This means that the packet rate on the bus is 1 Msp=
s / 64, or 15.625 kHz.  Period is 64 us.

If I place a signal onto the GPIO pin, everything is fine as long as the =
pulse width is greater than 64 us.   I can run the radio with rx_samples_=
to_file and see the GPIO pins faithfully reproduced in the Ethernet outpu=
t collected on a PC.

At pulse widths less than 64 us, the signal is essentially aliased.  I be=
lieve it=E2=80=99s because I=E2=80=99m using the tvalid, tlast, and tread=
y signals from upstream/downstream blocks with data that=E2=80=99s alread=
y on the axis data plane.  That data bursts through with 64 samples rough=
ly every 64 us and is clocked with a 200 MHz master clock.  I need to clo=
ck in the asynchronous GPIO.

My question:  What is the best way to do this?  Generate my own clock and=
 use a generic FIFO like axi_fifo.v to hold the data until the upstream b=
lock sends its data and the downstream block is ready to receive?

Thank you,

Mark

--b1_evJJismGX8FnN2oBEQQb16M8vEYufO5U0vQHxU0E
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi everybody!</p><p>I=E2=80=99ve written an RFNOC block that assigns the=
 daughterboard rx GPIO pins to the tdata signals that are sent to the SEP. =
 I=E2=80=99m using the axis_data protocol and the block is placed staticall=
y between the DDC and the SEP.  I use the tvalid and tlast signal from the =
upstream (DDC) block and the tready signal from the downstream (SEP) block.=
  I brought the GPIO into the block using appropriate YAML files.  Small mo=
dification outside of RFNOC were required to get the pins to RFNOC (bus_int=
.v, x300_core.v, io_signatures.yml, and x310_bsp.yml).</p><p>The x310 is op=
erated at 1 Msps and there are 64 samples per CHDR packet on the axis data =
bus.  This means that the packet rate on the bus is 1 Msps / 64, or 15.625 =
kHz.  Period is 64 us.</p><p>If I place a signal onto the GPIO pin, everyth=
ing is fine as long as the pulse width is greater than 64 us.   I can run t=
he radio with rx_samples_to_file and see the GPIO pins faithfully reproduce=
d in the Ethernet output collected on a PC.</p><p>At pulse widths less than=
 64 us, the signal is essentially aliased.  I believe it=E2=80=99s because =
I=E2=80=99m using the tvalid, tlast, and tready signals from upstream/downs=
tream blocks with data that=E2=80=99s already on the axis data plane.  That=
 data bursts through with 64 samples roughly every 64 us and is clocked wit=
h a 200 MHz master clock.  I need to clock in the asynchronous GPIO.</p><p>=
My question:  What is the best way to do this?  Generate my own clock and u=
se a generic FIFO like axi_fifo.v to hold the data until the upstream block=
 sends its data and the downstream block is ready to receive?</p><p>Thank y=
ou,</p><p>Mark</p>

--b1_evJJismGX8FnN2oBEQQb16M8vEYufO5U0vQHxU0E--

--===============8408257306632979547==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8408257306632979547==--
