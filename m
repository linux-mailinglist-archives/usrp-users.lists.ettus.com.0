Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B35596094E
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 13:51:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 377A53855F8
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 07:51:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724759499; bh=zHoMA9CYflI8hJvdfPjPnuOG7wC8khAo9v5c6xs5SpU=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=GZrgNIbcNMCrHmw9M9zRqRAKgfpcH0IPP8G2UG1PhhbTDANFU0QYBD6Nz2/nzovEq
	 GQ8C8cVCsB3lAiIYEYjloL6JSi/2T1nHeDHd7DQDN8KNOBpwmB3y79NSPF0lJUnu11
	 nnA0W20JreRexIOpW2DmQ5A56vy5lYdATZqIG8bhX+5bnXjoOELG3e1brtuMQUxvp5
	 B6TNgGcXtWF8Z4Qx3pgCa7EI4kMC3f8Qn70RkyanmfX1SuDBFJ74moIg8a6R7kVxqj
	 2nmUwBf1lUvu66NdvVeKPYsfyZxFJTInRYZFenE/ywETrlrrRQHSGUwFVbl15nBSRT
	 T6M8CokT2L8og==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2BFD2385584
	for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 07:50:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724759454; bh=E4dYTGBPMyJh/UuhPAO41GQvBOvX/N/l6PMRVnpYpSs=;
	h=Date:To:From:Subject:From;
	b=tbJqqGvlp5zE2xPrOBEztAUYTFWBEDiCByE9unrP3iyRFWOUmvaE3b/MimsuNUEA2
	 DVHuj+YYzgiUFNQ61Nbeg3qwitmuagSJfBj/9WxjhrpFQE+OchI+r7fRHuFyWGwWxt
	 o5AER0Oj9XTXgeU0+Xm3ZGTM3vQXmhhNJKxst/PCD3/jrvhckgdpWv/I7uQqEaHBL+
	 CIbYNJhicyOr9l1A/N/DpvM3dTbtCxBEd+H0oVXObEUEHavhJ9/yrA0Zmd0OtrDc2H
	 JOsf7p8J8kjRzTbuc6pVj2oP/6+FcK+33WVHX4b63HtMOg629MsmZOywgxfhRrsQ4g
	 VFkkX4lmHpDDA==
Date: Tue, 27 Aug 2024 11:50:54 +0000
To: usrp-users@lists.ettus.com
Message-ID: <sZP2Z7YYrX9VMJ3u3xfJw9TYP982cRa4tj2kSFlb0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: CC2XPE56GGRBFAIIB6JHMI7IIWMTS4DN
X-Message-ID-Hash: CC2XPE56GGRBFAIIB6JHMI7IIWMTS4DN
X-MailFrom: mhosein_attar@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Why does the self-calibration utility not work?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CC2XPE56GGRBFAIIB6JHMI7IIWMTS4DN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Hossein  via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mhosein_attar@yahoo.com
Content-Type: multipart/mixed; boundary="===============7259773530661358476=="

This is a multi-part message in MIME format.

--===============7259773530661358476==
Content-Type: multipart/alternative;
 boundary="b1_sZP2Z7YYrX9VMJ3u3xfJw9TYP982cRa4tj2kSFlb0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_sZP2Z7YYrX9VMJ3u3xfJw9TYP982cRa4tj2kSFlb0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I work with a USRP X310 and two CBX-120 daughterboards. I would like to c=
alibrate the daughterboards according to the page https://files.ettus.com=
/manual/page_calibration.html on USRP Hardware Driver (UHD) manual. After=
 applying the utilities for self-calibration, with or without 50 Ohm term=
inators attached to the RF ports, I see no difference with =E2=80=9Cignor=
e-cal-file=E2=80=9D enabled or disabled. I transmitted both a single tone=
 and an OFDM-like waveform at Low-IF mode. There was no difference in ter=
ms of LO leakage or IQ imbalance. I am not sure if I missed something to =
do. Do you have any ideas?

Please let me know if you need any specific information to help me.

Thanks!

--b1_sZP2Z7YYrX9VMJ3u3xfJw9TYP982cRa4tj2kSFlb0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I work with a USRP X310 and two CBX-120 daughterboards. I would like t=
o calibrate the daughterboards according to the page https://files.ettus.=
com/manual/page_calibration.html on USRP Hardware Driver (UHD) manual. Af=
ter applying the utilities for self-calibration, with or without 50 Ohm t=
erminators attached to the RF ports, I see no difference with =E2=80=9Cig=
nore-cal-file=E2=80=9D enabled or disabled. I transmitted both a single t=
one and an OFDM-like waveform at Low-IF mode. There was no difference in =
terms of LO leakage or IQ imbalance. I am not sure if I missed something =
to do. Do you have any ideas?</p><p>Please let me know if you need any sp=
ecific information to help me.</p><p>Thanks!</p>


--b1_sZP2Z7YYrX9VMJ3u3xfJw9TYP982cRa4tj2kSFlb0--

--===============7259773530661358476==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7259773530661358476==--
