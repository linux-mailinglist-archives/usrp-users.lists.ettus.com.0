Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ED37F1701
	for <lists+usrp-users@lfdr.de>; Mon, 20 Nov 2023 16:15:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C26B384B68
	for <lists+usrp-users@lfdr.de>; Mon, 20 Nov 2023 10:15:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700493355; bh=PzhzVU1NB6u9FzYzfiVEsA+VpYzbLUFRjYUX4+4MkcY=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=W09rRbxVg9bmZyG4b1NvVeSMzTIWuKFp9+Z5AVg8c3AF8+P9J/esWqVOpbq+BV8Ez
	 AS6hZe8UZM6iBKI9UrK83JqB3TrscGhFh2UA0Vajec+klVanoTtYvISLY391JCOgD6
	 A++Hq7RMhytPrpA8ye4u/jbPeWK6ys3dXtotQXk++ztgVyN3yLMvNaxwcG6wQT5Xfg
	 menWs9Tvzd//ZN3FBHiQzEEiQdwuukpydYCYQdxfGhSNlEl1xchcEKNg1uAN7gLJTR
	 7+3gPNr0DiuD0Lpu9pqFtPGsHI6jxNKtFgiTfkRuBXxHf/cKRB7JpNpU6mS2BZ68f6
	 Oou7gXKA0FzcA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B76E4384673
	for <usrp-users@lists.ettus.com>; Mon, 20 Nov 2023 10:15:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700493341; bh=0YHWBzioOlQgQkH7/NwaQMueF702kP+PS9LWLfOMxiU=;
	h=Date:To:From:Subject:From;
	b=WYJUDvx/UeG8sELS+O1jgKm3sEV0CoztPiq4zwKsaXNt88LmgyPXyTysX3L+r9N3Z
	 p46VNF7OTRXbxZQ6z9uH5gMtgqntmlmbrPZD7UQLSUyYSU8ICEVi6qT3LlXMSQDA9/
	 3Nr0J7e1hxIYlinlOOvdL2ByoZf459bFvPVaZGH349XQ0PN+c8hyCtAbvzQLGtdNRU
	 M6MML9Lqg10iN+oWC/hEUpEq+cqYPOz7975kB/xRH6OMnVDW80VXfoePDDGQreEPJk
	 Ws4sX2WGXVgpROBlfFRfaQK9vtWuLhc9WLlYDVA0uTv205Rqbpr4NRn7DWH/A2h1B+
	 oerIAMYM/6fQQ==
Date: Mon, 20 Nov 2023 15:15:41 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <Advk1c3hcwRTHL5gsaBc2LYSMvjBdEmUnlk6Opa0OI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: N5O77TDWFASJBP6NHETROBVSKSCHCFT2
X-Message-ID-Hash: N5O77TDWFASJBP6NHETROBVSKSCHCFT2
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x410 caught in bootloop, back LED 0,1 are solid green when device is turned off.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N5O77TDWFASJBP6NHETROBVSKSCHCFT2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1993220007822676331=="

This is a multi-part message in MIME format.

--===============1993220007822676331==
Content-Type: multipart/alternative;
 boundary="b1_Advk1c3hcwRTHL5gsaBc2LYSMvjBdEmUnlk6Opa0OI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Advk1c3hcwRTHL5gsaBc2LYSMvjBdEmUnlk6Opa0OI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

After trying to change the bitstream image from CG to X4 using uhd_image_=
loader, I was met with the following error, and then the x410 got caught =
in a bootloop=E2=80=A6

`[ERROR] [UHD] An unexpected exception was caught in a task loop.The task=
 loop will now exit, things may not work.rpc::timeout: Timeout of 10000ms=
 while calling RPC function 'reclaim'`

In the past when this has happened, I reflashed the eMMC and I was able t=
o boot again. However, after reflashing the eMMC this time, I am unable t=
o boot the eMMC.

I noticed that the back panel LEDs, when the device is powered off, curre=
ntly has an Amber light on the PWR led, and a solid green light for LED 0=
 and 1, with LED 2 turned off. Typically, I have noticed when the device =
is powered off that the only LED turned on is the amber PWR light.=20

According to the manual, the LED 0 and LED 1 is the heartbeat and FPGA li=
ght on respectively. My concern is the reason reflashing no longer works =
is because the eMMC/FPGA is not power cycling like it should, so it is pr=
obably never uses the new image I am trying to flash.

Currently, the x410 is plugged in and I have not tried removing the power=
. However, if I remove the power supply, I am afraid I may damage the boa=
rd since I would be pulling power from the FPGA, rather than shutting it =
down properly.=20

Is it safe to remove the power supply? And if not, what should I do?

Thanks,

Joe

--b1_Advk1c3hcwRTHL5gsaBc2LYSMvjBdEmUnlk6Opa0OI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>After trying to change the bitstream image from CG to X4 us=
ing uhd_image_loader, I was met with the following error, and then the x410=
 got caught in a bootloop=E2=80=A6</p><p><code>[ERROR] [UHD] An unexpected =
exception was caught in a task loop.The task loop will now exit, things may=
 not work.rpc::timeout: Timeout of 10000ms while calling RPC function 'recl=
aim'</code></p><p>In the past when this has happened, I reflashed the eMMC =
and I was able to boot again. However, after reflashing the eMMC this time,=
 I am unable to boot the eMMC.</p><p>I noticed that the back panel LEDs, wh=
en the device is powered off, currently has an Amber light on the PWR led, =
and a solid green light for LED 0 and 1, with LED 2 turned off. Typically, =
I have noticed when the device is powered off that the only LED turned on i=
s the amber PWR light. </p><p>According to the manual, the LED 0 and LED 1 =
is the heartbeat and FPGA light on respectively. My concern is the reason r=
eflashing no longer works is because the eMMC/FPGA is not power cycling lik=
e it should, so it is probably never uses the new image I am trying to flas=
h.</p><p>Currently, the x410 is plugged in and I have not tried removing th=
e power. However, if I remove the power supply, I am afraid I may damage th=
e board since I would be pulling power from the FPGA, rather than shutting =
it down properly. </p><p>Is it safe to remove the power supply? And if not,=
 what should I do?</p><p>Thanks,</p><p>Joe</p>

--b1_Advk1c3hcwRTHL5gsaBc2LYSMvjBdEmUnlk6Opa0OI--

--===============1993220007822676331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1993220007822676331==--
