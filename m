Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCD07C5A74
	for <lists+usrp-users@lfdr.de>; Wed, 11 Oct 2023 19:45:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE7AE3857EE
	for <lists+usrp-users@lfdr.de>; Wed, 11 Oct 2023 13:45:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697046311; bh=JcS3eOD+gglzDCPEFW9nmTqOzzDQCio+TTKDiqrCetE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dboNut4VJIfBEHj8cwa9Xo5g3iqAd0vCGK26frF/Uky8yXL9JDZdVOA5jSxdBzv2c
	 3tCQCamQn73Oob0bt5Wij09/mBKgaE1k+4vK4e3arIUcaSYtMiyrhAGhXFAV0BkM8X
	 XbW3lJl5GCvHvfFg6gXzLsdHzeyjiJOG+G+T1Yi7YX78xxRuSvpCmNsKqj/pdrT66g
	 hNIV13B6QMjHZ3O4OYxX7MPK1m69PRzLEwzorngene1vY6LD7Yk6Dz25qLNPzqDnze
	 Ro+dRrSsrhf80V0hrhkFGh49sk/ZgNbqwTyWr1OT+HvcxrgpIWNzBImA1yvyLkpEMy
	 ObHHzCwPCyIEQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 65DF33857DD
	for <usrp-users@lists.ettus.com>; Wed, 11 Oct 2023 13:44:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697046272; bh=/JxqSVjiIq7wsQXlcchrfIDlbX88x+KCsd4g+BIFZ30=;
	h=Date:To:From:Subject:From;
	b=yXLVDcaI38lq+ZpaGhSSjWw4laymGogz3poX3IZgCrRMr4ov+WRvi4Bqf2Wzt3hZ2
	 nJGtfDov13KX4ZZ0zuDqYGdrX0TJejBfjPXmFZzqP805I4ka6b3lky/Y7d4RGm/y6k
	 U6sIRgWxtpH+iRHYmXcK2eMiURCVcNuYNpclBDm32hVgkS+AqByfow5jd0R9IB5Hc/
	 RBIXrhWsLGVeJRnHyZJ6z7n4LjQNEiWC53APmxEb6l/NxJWQNTOA6caoeVcVyegtkt
	 f/U5m7tZOuNZC5tA2Dwq337JPK8ud8tRYeN2sX8B3UYQIvGULb3XyoThZUMvSBPPAH
	 Y5JydnfyWnrGw==
Date: Wed, 11 Oct 2023 17:44:32 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <vZiBmPMo79Ph2R3WakX09IPaCQzZeHtIUSBls0IcQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: UUQUNLODQKK2XBVBD45FLR4557TNTRSI
X-Message-ID-Hash: UUQUNLODQKK2XBVBD45FLR4557TNTRSI
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Hijacking MPM and calling function from MPM
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UUQUNLODQKK2XBVBD45FLR4557TNTRSI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7440677546671184118=="

This is a multi-part message in MIME format.

--===============7440677546671184118==
Content-Type: multipart/alternative;
 boundary="b1_vZiBmPMo79Ph2R3WakX09IPaCQzZeHtIUSBls0IcQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_vZiBmPMo79Ph2R3WakX09IPaCQzZeHtIUSBls0IcQ
Content-Type: text/plain; charset=us-ascii

Hello,

I am currently working on trying to print the calibration coefficients of the RFDC after calibration of the x410. Similar to calling get_cal_coefs from the mpm_shell.

My plan is to hijack the MPM shell within my current acquisition script, then execute the get_cal_coefs function. However, I am unable to locate where the token is. How do I retrieve the token after initializing the x410.

Thanks,

Joe

--b1_vZiBmPMo79Ph2R3WakX09IPaCQzZeHtIUSBls0IcQ
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>I am currently working on trying to print the calibration coefficients of the RFDC after calibration of the x410. Similar to calling get_cal_coefs from the mpm_shell.</p><p><br></p><p>My plan is to hijack the MPM shell within my current acquisition script, then execute the get_cal_coefs function. However, I am unable to locate where the token is. How do I retrieve the token after initializing the x410.</p><p>Thanks,</p><p>Joe</p>


--b1_vZiBmPMo79Ph2R3WakX09IPaCQzZeHtIUSBls0IcQ--

--===============7440677546671184118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7440677546671184118==--
