Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A9F65C1F5
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 15:30:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23F6A383F60
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 09:30:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672756221; bh=joODBOZU/ggCBO5NJYgv3cMCJrvW5GpfZ8t7UQ3878Q=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0EPDduPZXJpB6mlpGDgzIydeDS89hROJTMkqHCW/2l9MMpNwmizeysbhPq3fCGPrO
	 My+a7Wx24eknCVK3Ea8tX3J4jGXP+lcPCCazBHhnh6Lg7Nk2nfxTOqmNqS4otmj+kQ
	 cNfONVPer4ZMnMi/enJ3EloFglboWK+YMK1qE02tcSfm+Vxytx+yQQ0xDC/b3UEPn1
	 gjDfo/EpVnMhV+tpn/+lt6tRe9HOFP1lHssMH52MDQ8A7MY4s1fT1oBk17sUgSGETi
	 rNVwhPJ3Zt0l/AE2IcyD7ag/XFgii17wbI8PK9j8s1bv//pHGM0SuAQetBlmJMmseE
	 aBLmMxD/WFPWQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9C47F38407D
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 09:29:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672756163; bh=g6m6JgQfvJ8j4l0UuzwmjqKKGj4GLuzoSYk0g26N+ms=;
	h=Date:To:From:Subject:From;
	b=yKIM5evyCt8VtkMbpVd3U+tcbl4qfl14oItNdPIFSoz4WqoNs0jDA0AqY+fOeAYD9
	 bt6UYrGPoS8iZQDBFuKphUD5dx//4S529Pxo1faWjbhmZYwOln3NYpvHUsGiVV8WhU
	 pS+P5pBFyCgctaZtqn7+hF8VNHWctAkHCANVWX8G1MMbdECVb3fcz0jh4iM7kC1Na1
	 M48Q/ydBf3cdwcOeHJo1MEnsGhk0AaJW493h9OxNL91pDV5hJj0Hyy7Svlf3O2nOvb
	 R6X76chpXODVObd2/pqEceG0U63rUOjNkY4/caGCruEBgBDpLMedpoB4P/e/DEBys/
	 IwOA0+uP7y3fg==
Date: Tue, 3 Jan 2023 14:29:23 +0000
To: usrp-users@lists.ettus.com
From: henry.powell.xx@gmail.com
Message-ID: <Tw8IjE6vV1f8jS724ptiIK8G4uU8WZ9RNGKr4RLzWDQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: E5ZRJTYCKJDNOPZQTXWBDYHU4GX7II4F
X-Message-ID-Hash: E5ZRJTYCKJDNOPZQTXWBDYHU4GX7II4F
X-MailFrom: henry.powell.xx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RX Channel out of range
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E5ZRJTYCKJDNOPZQTXWBDYHU4GX7II4F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6337198059465189399=="

This is a multi-part message in MIME format.

--===============6337198059465189399==
Content-Type: multipart/alternative;
 boundary="b1_Tw8IjE6vV1f8jS724ptiIK8G4uU8WZ9RNGKr4RLzWDQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Tw8IjE6vV1f8jS724ptiIK8G4uU8WZ9RNGKr4RLzWDQ
Content-Type: text/plain; charset=us-ascii

Hello,

I am writing this code from terminal:

*benchmark_rate --rx_rate 10e6 --tx_rate 10e6*

and the output is:

*\[INFO\] \[UHD\] Win32; Microsoft Visual C++ version 14.1; Boost_107000; UHD_4.2.0.0-release
\[00:00:00.000100\] Creating the usrp device with: ...
\[INFO\] \[B200\] Detected Device: B200
\[INFO\] \[B200\] Operating over USB 3.
\[INFO\] \[B200\] Initialize CODEC control...
\[INFO\] \[B200\] Initialize Radio control...
\[INFO\] \[B200\] Performing register loopback test...
\[INFO\] \[B200\] Register loopback test passed
\[INFO\] \[B200\] Setting master clock rate selection to 'automatic'.
\[INFO\] \[B200\] Asking for clock rate 16.000000 MHz...
\[INFO\] \[B200\] Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
  Device: B-Series Device
  Mboard 0: B200
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: FE-RX1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: FE-TX1

Error: LookupError: IndexError: multi_usrp: RX channel 2106923663889 out of range for configured RX frontends*

I tried to enter channels manual but outcomes is same

--b1_Tw8IjE6vV1f8jS724ptiIK8G4uU8WZ9RNGKr4RLzWDQ
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>I am writing this code from terminal:</p><p><em>benchmark_rate --rx_rate 10e6 --tx_rate 10e6</em>

and the output is:

<em>[INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000; UHD_4.2.0.0-release
[00:00:00.000100] Creating the usrp device with: ...
[INFO] [B200] Detected Device: B200
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz...
[INFO] [B200] Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
  Device: B-Series Device
  Mboard 0: B200
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: FE-RX1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: FE-TX1

Error: LookupError: IndexError: multi_usrp: RX channel 2106923663889 out of range for configured RX frontends</em></p><p>I tried to enter channels manual but outcomes is same</p>


--b1_Tw8IjE6vV1f8jS724ptiIK8G4uU8WZ9RNGKr4RLzWDQ--

--===============6337198059465189399==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6337198059465189399==--
