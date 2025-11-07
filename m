Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32670C406FB
	for <lists+usrp-users@lfdr.de>; Fri, 07 Nov 2025 15:52:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3D2C53864A3
	for <lists+usrp-users@lfdr.de>; Fri,  7 Nov 2025 09:52:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1762527149; bh=Hgkojc2B8aqLN4erq+4cTs3zp4R7VzlCIZOFz2z8JBY=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=TZjLDK4njbQriEVrfJ1sRSCUNrB0zAvEu5LdVTMaL7ruM3djzS9LzeJ0AIvoxhWdG
	 DKQGS+zobItvVJ0jV+fqcg6t0N3bwjsvTrb4Hj4UX0LnI5hIfmc5CueiBrhp6Xu+bg
	 QN4LMBkHB9xhll1TBg2LQkmzOPC3g0wtBuO+lG9v9W5uvov2Bkik/Dj1oiJ9ygaiWr
	 ZPN2DOxI1CjX599uaP7KpD9AxTlLdcLI4VsFHU0IvG7ckOpboRhEiXcwycqW4A7ixr
	 hzRQfy4iGRbEPD3t5P9VOnsC/JZj4eOwgd8Mbl9vuv3rvBoJpRjmztaMvij21aABth
	 Ii8OaUcueu1rg==
Received: from lists.ctbirding.org (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D80B938631B
	for <usrp-users@lists.ettus.com>; Fri,  7 Nov 2025 09:51:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1762527081; bh=+Gt6uSS72VmY4rP14YBNobnTd8DbDNpDNLUp2PU7p3s=;
	h=Date:To:From:Subject:From;
	b=VwEtGsws/69/BMvBC8LC4e1Poazvh7KRekfC4T0TuxUqC77deNsQJoJA75odrZEiR
	 wciyaQtEUc9EwwF1UXOmIMTV7Fj0JMDO2IR2R/u/g+xaPEWQpJmjRbXnFU0NschFXw
	 jZYP6a+CieH3PvUkE61c8yveHMDm4b9tnAkmO+P1TAMo9TfBjaO6zi7LKTi32oTt7q
	 gAMFqzRifNe2IXgFIWEFMpsya6B8aifjc2X8cpTxSx1hLl53gdbgS4I4YyWAdESI+6
	 wElvOg5/4EDegq5P1Fgc96g8Xe/ydSaer2aHJUfwaZC0ux4oLrNAsD581k2cHnndXQ
	 JlX5BL+NRO9Nw==
Date: Fri, 7 Nov 2025 14:51:21 +0000
To: usrp-users@lists.ettus.com
From: ryan.a.wolfarth@gmail.com
Message-ID: <Bq69aHbfqUtrQLdcQFgZHu1ID9BJVzX3buMo6gunY@lists.ctbirding.org>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: L4XSNBESSSALPPPY5AFOD4IVZ5GCFBSJ
X-Message-ID-Hash: L4XSNBESSSALPPPY5AFOD4IVZ5GCFBSJ
X-MailFrom: ryan.a.wolfarth@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Deadlock in OOT RFNoC Block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L4XSNBESSSALPPPY5AFOD4IVZ5GCFBSJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6768037072707479731=="

This is a multi-part message in MIME format.

--===============6768037072707479731==
Content-Type: multipart/alternative;
 boundary="b1_Bq69aHbfqUtrQLdcQFgZHu1ID9BJVzX3buMo6gunY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Bq69aHbfqUtrQLdcQFgZHu1ID9BJVzX3buMo6gunY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Greetings,

We=E2=80=99re in the process of troubleshooting a custom RFNoC block for =
the X310. The block takes input from both receive channels, detects speci=
fic emissions, and responds on one or both transmit channels depending on=
 what it receives. The project has latency requirements that preclude us =
from streaming IQ to/from the host, so all the signal processing is done =
in the block.

The host is primarily used to setup the radios and start the stream, but =
we included several registers that can be set by our block controller to =
illicit specific behavior. For troubleshooting purposes, we are attemptin=
g to continuously stream a fixed frequency signal out of a LUT to both tr=
ansmit channels. No streaming occurs when our block is included in the gr=
aph. We confirmed streaming starts if we remove our block and configure t=
he graph as a loopback, so something is deadlocked in the custom block.

Using ChipScope, we see tready is set high at the input of our block=E2=80=
=99s NOC shell, but tready from the NOC shell to our logic is never asser=
ted. We successfully simulated the logic independent of RFNoC, so we thin=
k we=E2=80=99re missing/not doing something specific that the RFNoC archi=
tecture requires. Can anyone help us identify what might be at fault?

Thank you,

Ryan

--b1_Bq69aHbfqUtrQLdcQFgZHu1ID9BJVzX3buMo6gunY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Greetings,</p><p>We=E2=80=99re in the process of troubleshooting a custo=
m RFNoC block for the X310. The block takes input from both receive channel=
s, detects specific emissions, and responds on one or both transmit channel=
s depending on what it receives. The project has latency requirements that =
preclude us from streaming IQ to/from the host, so all the signal processin=
g is done in the block.</p><p>The host is primarily used to setup the radio=
s and start the stream, but we included several registers that can be set b=
y our block controller to illicit specific behavior. For troubleshooting pu=
rposes, we are attempting to continuously stream a fixed frequency signal o=
ut of a LUT to both transmit channels. No streaming occurs when our block i=
s included in the graph. We confirmed streaming starts if we remove our blo=
ck and configure the graph as a loopback, so something is deadlocked in the=
 custom block.</p><p>Using ChipScope, we see tready is set high at the inpu=
t of our block=E2=80=99s NOC shell, but tready from the NOC shell to our lo=
gic is never asserted. We successfully simulated the logic independent of R=
FNoC, so we think we=E2=80=99re missing/not doing something specific that t=
he RFNoC architecture requires. Can anyone help us identify what might be a=
t fault?</p><p>Thank you,</p><p>Ryan</p>

--b1_Bq69aHbfqUtrQLdcQFgZHu1ID9BJVzX3buMo6gunY--

--===============6768037072707479731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6768037072707479731==--
