Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B39667E6E
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jan 2023 19:53:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 06E8A384367
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jan 2023 13:53:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673549606; bh=0SULBC9DYSm0Mag6TqJLp6nStLU+v+D0KV8tIEQKd1g=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=yx8lvxi1pg0Xav3DR2ziCxDJD1+6ZpxmA+SYWbQCtrBaAT2xGJbXr7TE4R+pFdtZV
	 ppKqlkDJriGZX9sexyJ1QOp4yXQ5URPb7Z29GFg8IbgZdByTBhGcHX6GBYhl1FdgTE
	 6o8bkpdR2xtLC3Mn5g/BV1zUI1Rv2puYGdjlHr1PUpfyN21OGWvqLF+pvqZGPxRV6q
	 bvfG1LI34QzJpZnxjsJaWNLY/bKkeImsFe9ugzfEGV8wnmWPZk9cRkk7OSN2PX0Fmu
	 9i8iYHKVJtVEYlMZlDT48beGbhLspa/ewVFBDNXoZzf5dd5SMUujbNl3lhokEzOKsu
	 ei9T5WXDiGyPw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E39E384261
	for <usrp-users@lists.ettus.com>; Thu, 12 Jan 2023 13:52:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673549555; bh=0UA7JqWutB2jEGqf1wxcaT5LRJy86nyTV/w1tdVxDuw=;
	h=Date:To:From:Subject:From;
	b=yE3qgVLTq93Sp2jTWPS7EsFHjyqogo+78xC5beGBC0kzCQVJUtD0c8uRJrZqyJ5D3
	 UWZt6Oh8t0nNUpWwPRcNq8h1SXtM1v8DuRqAD+zUaVi4JTrV2zCJ3VpzpfcOmlsX0Z
	 EKOvg2QVCd3VzzDTu+G8zwlEd4lgQ44JovviyUfufiEEvFXp5KjAVEFUGXsPpFdRIA
	 hOm7yYXswthJ7EMtalXepKelWZZIhOEePSCl0ACwJGyn9gSbpfsnPVg3NTcXC+52Ex
	 Cq4Plxy9+TIJUSuPGZgx4K15wXmFo5MwgQ/GgruR0s+tZGRt3SY9KSPAnN2DEHBj5C
	 vSvjuzQbmF/RA==
Date: Thu, 12 Jan 2023 18:52:35 +0000
To: usrp-users@lists.ettus.com
From: mgarrett@garrett-tech.com
Message-ID: <n1I1ogHy1zRX6JWyBvE6qDFAttkfq32EDzPWTwIRTbU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: OFNCYVXOLB4A5WQ243G5A53DILTOFROK
X-Message-ID-Hash: OFNCYVXOLB4A5WQ243G5A53DILTOFROK
X-MailFrom: mgarrett@garrett-tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Update e310, UHD 4.0 Cross compile "How to"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OFNCYVXOLB4A5WQ243G5A53DILTOFROK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5669880018242738917=="

This is a multi-part message in MIME format.

--===============5669880018242738917==
Content-Type: multipart/alternative;
 boundary="b1_n1I1ogHy1zRX6JWyBvE6qDFAttkfq32EDzPWTwIRTbU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_n1I1ogHy1zRX6JWyBvE6qDFAttkfq32EDzPWTwIRTbU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

We would like to move our e310=E2=80=99s to UHD4.0, GNU Radio 3.10 (with =
gr_rfnoc) (moving from 3.15.0 LTS, GNURADIO 3.7). We are having issues cr=
eating an Ubuntu VM development environment.

We have the images for UHD4.1.0.4 , GNU Radio 3.8:

e3xx_e310_sg3_\*_default-v4.1.0.4.zip (\* =3D mender, sdimg, and sources)

We initially followed the 3.15 release 4 instructions which worked for 3.=
15.0 LTS.

Is there a step by step process for this?

Thank you in advance!

--b1_n1I1ogHy1zRX6JWyBvE6qDFAttkfq32EDzPWTwIRTbU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>We would like to move our e310=E2=80=99s to UHD4.0, GNU Radio 3.10 (wi=
th gr_rfnoc) (moving from 3.15.0 LTS, GNURADIO 3.7). We are having issues=
 creating an Ubuntu VM development environment.</p><p>We have the images =
for UHD4.1.0.4 , GNU Radio 3.8:</p><p>e3xx_e310_sg3_*_default-v4.1.0.4.zi=
p (* =3D mender, sdimg, and sources)</p><p>We initially followed the 3.15=
 release 4 instructions which worked for 3.15.0 LTS.</p><p>Is there a ste=
p by step process for this?</p><p>Thank you in advance!</p><p><br></p><p>=
<br></p>


--b1_n1I1ogHy1zRX6JWyBvE6qDFAttkfq32EDzPWTwIRTbU--

--===============5669880018242738917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5669880018242738917==--
