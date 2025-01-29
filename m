Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D581A21B0C
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2025 11:39:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D206386317
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2025 05:39:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738147178; bh=x4d5k1/uRzLVxHISvLmdfmapNCDEZTRsj8Hrh+zt8HQ=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zwp/FuGnuHf+Fw02EpuDvxOThGiMs5PGzBhJ+hrscq19ZWhqBvA63JWFDqq4ugScE
	 KcanqTi6bEjA1tL+ZUcFbUqVXCMS1RaMUu1tAPiiMJQHALfpN1a37rBxQBNwn59/Fk
	 gEAZt0xzcFqLn4GgeDH+/d6IgZaRJ13mxJkCXpBZZobgzIS/kcNwg9pL2JcUORTzC5
	 zByv4q0+vxToObsDFknfbjwqhPn9v/C1QgaTRKMW9uH/l8RR0fE6dHSnX4jtS4qtyI
	 6rkQjPGt6kAatvKAKAcoYmp4lKXW+b+I4X2h2QMjJPAiJq0Fit3wwaOR8ExLKPIVbB
	 PiPT81j185Mfw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E9BBE3862BC
	for <usrp-users@lists.ettus.com>; Wed, 29 Jan 2025 05:38:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738147135; bh=ljRdlkQj9SeDs86pEgKCiYiev5eBA1A8TZnVENlgnuI=;
	h=Date:To:From:Subject:From;
	b=cmuaEbOb7dnUQf8ox0SL2hVSTq8seWZOPTjXI8nHSo5EmEnyzYfQM0qEQrsMmegDM
	 819vTmFRwgPAwxbbErEt7HyUHdurBaQx8bACtR/aRwcm8gnCa2A1b5xZAcseJrEZLX
	 VEHgOCW+YrU+RSiJca76wZlg8IEl5DV9G2iRYPea//rVp33caGKQSdDt66c/Zi6ddW
	 LX5w9WvJ1mIMkiLhRnxWZv09hrgYDbp7+1zcoWobd1N7Uaj1a+SgIpQNOhQJgbaWQD
	 4xSkXwVbit/OYewEIzkHItaNWg3C+R1GSTDblSbqa+1QZxcllG9UaSyyJ3y3KRGYCX
	 U0dPZ/BLO149A==
Date: Wed, 29 Jan 2025 10:38:55 +0000
To: usrp-users@lists.ettus.com
From: emanuele.tolomei@intecs.it
Message-ID: <fy220HtF1Z9J0Agb4DIDk8EJjMylmZ5eS0arkLyBgAc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: IGSFO44U2JMQAGM6LUNIFWQKJ4PUE5CN
X-Message-ID-Hash: IGSFO44U2JMQAGM6LUNIFWQKJ4PUE5CN
X-MailFrom: emanuele.tolomei@intecs.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Max input power without damaging B200-mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IGSFO44U2JMQAGM6LUNIFWQKJ4PUE5CN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1221349393388847759=="

This is a multi-part message in MIME format.

--===============1221349393388847759==
Content-Type: multipart/alternative;
 boundary="b1_fy220HtF1Z9J0Agb4DIDk8EJjMylmZ5eS0arkLyBgAc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_fy220HtF1Z9J0Agb4DIDk8EJjMylmZ5eS0arkLyBgAc
Content-Type: text/plain; charset=us-ascii

Hi, I have a B200 mini that I use for monitoring purposes, and I need to install it near an RF transmitter. I'm concerned about the maximum input power the board can handle before it gets damaged.

I understand that the B200 mini has a +0 dBm input power limit. However, does this limit apply only when the SDR is actively receiving samples, or is it also relevant when the board is inactive (i.e., not tuned to a specific frequency and not receiving samples)?

The reason I ask is that I could disable the B200 mini's reception while the RF transmitter is active, as it doesn't transmit signals continuously.

Thank you

Emanuele

--b1_fy220HtF1Z9J0Agb4DIDk8EJjMylmZ5eS0arkLyBgAc
Content-Type: text/html; charset=us-ascii

<p>Hi, I have a B200 mini that I use for monitoring purposes, and I need to install it near an RF transmitter. I'm concerned about the maximum input power the board can handle before it gets damaged.</p><p>I understand that the B200 mini has a +0 dBm input power limit. However, does this limit apply only when the SDR is actively receiving samples, or is it also relevant when the board is inactive (i.e., not tuned to a specific frequency and not receiving samples)?</p><p>The reason I ask is that I could disable the B200 mini's reception while the RF transmitter is active, as it doesn't transmit signals continuously.</p><p>Thank you</p><p>Emanuele</p><p><br></p>


--b1_fy220HtF1Z9J0Agb4DIDk8EJjMylmZ5eS0arkLyBgAc--

--===============1221349393388847759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1221349393388847759==--
