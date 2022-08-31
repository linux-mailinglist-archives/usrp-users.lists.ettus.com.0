Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7775A8610
	for <lists+usrp-users@lfdr.de>; Wed, 31 Aug 2022 20:51:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A60BA38616F
	for <lists+usrp-users@lfdr.de>; Wed, 31 Aug 2022 14:51:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1661971902; bh=4P57enF/y72LJG7HCySkMUzpUPnGBhzDGH0CHU3CDgk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=H1c0sQwjcc8cfJAaH2gkcw+ABI1wAkfQIRwjUPNjXktYH+NqRQH2pc9Im+F0Sv/qj
	 nm8VV9rKSzunzNeSrDcNGMsfPkH7XXqGcpkaRKWpEvGO03IUc5R8zp0ukIMxFryK9U
	 Fxb3E4HaQTaiM2rQLfKMKtOYK+QeT0RYX4PTFafNk/3s9a23UwFmqTSN2JHWGaKt3z
	 GDzyd35K/zy7CYvUbBcfwsdwIixTH9PqWTzzbLXkY9hLXkyZhyJBMFKB3OFPxh7cgI
	 1DYpQHHlNsFH37OrVnuVW8JAT7KJnR3VAQLU3W6UfkBKh/9mF3FipOGS5OWT87uI+h
	 Xi/R28vKAdGDw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D9060386162
	for <usrp-users@lists.ettus.com>; Wed, 31 Aug 2022 14:49:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1661971778; bh=2Mgd0z+kTLMwMHkepUmoxuwnYOZYi1ySA5G/hiTdsho=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=CXw36beJkZzjzstJ6/PqE6b+UNEQ2m4vEygtdsnNxdJqYW/Ftf6rzfzNENEAEzvFe
	 IFDXpHcrX+s+7UiSOHRbKI5JMDas7siX+ALwU7pMJKhQ5PEjhboB7wpHUzS6qW4v0b
	 daZcx28N1PLiJWaYVJMbb2wFKgc/eOvLhBguvw58SkLH7ngI2n8vsnAlpGWzafC4EE
	 a+Te1QfIDCfhUEjvbqJcxIfAdMM/qVDHKMOT/DrPmheiVDbwFp8+ZZ2iKY96wJnqP7
	 lWuaw08upq/OltiwZR1KLCoXKSbFxPE7MRBsl/tUJJHJ8ES6oRN8Nu/BlRF8Upp5ca
	 ENT3B7KgdF64A==
Date: Wed, 31 Aug 2022 18:49:38 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <alpN7X6VU8mje4VA8MnFusAzyOE85TuwoNDJDIFBAY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a1b6339b-d333-56a5-178e-f9d99ace7c84@gmail.com
MIME-Version: 1.0
Message-ID-Hash: RVHVK7A6GZHR2NYJNSDTOFQT4UXZVWJB
X-Message-ID-Hash: RVHVK7A6GZHR2NYJNSDTOFQT4UXZVWJB
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: set_command_time() question
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RVHVK7A6GZHR2NYJNSDTOFQT4UXZVWJB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9115061547133733702=="

This is a multi-part message in MIME format.

--===============9115061547133733702==
Content-Type: multipart/alternative;
 boundary="b1_alpN7X6VU8mje4VA8MnFusAzyOE85TuwoNDJDIFBAY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_alpN7X6VU8mje4VA8MnFusAzyOE85TuwoNDJDIFBAY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This is a USRP x310, and I=E2=80=99m issuing a command every \~150 us. I =
increased the size of the timed command FIFO in the FPGA to 64.

Over long periods of time, I have hiccups like shown above on the order o=
f every 20 ms or so. I think what=E2=80=99s happening is I=E2=80=99m not =
quite keeping the USRP queue full when the OS interrupts the thread, but =
I=E2=80=99m having trouble diagnosing. There doesn=E2=80=99t appear to be=
 a back pressure mechanism for timed commands in the same way there is fo=
r the tx_streamer, so I have to track by elapsed time how full I think th=
e USRP queue is.

--b1_alpN7X6VU8mje4VA8MnFusAzyOE85TuwoNDJDIFBAY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>This is a USRP x310, and I=E2=80=99m issuing a command every ~150 us. =
I increased the size of the timed command FIFO in the FPGA to 64.</p><p>O=
ver long periods of time, I have hiccups like shown above on the order of=
 every 20 ms or so. I think what=E2=80=99s happening is I=E2=80=99m not q=
uite keeping the USRP queue full when the OS interrupts the thread, but I=
=E2=80=99m having trouble diagnosing. There doesn=E2=80=99t appear to be =
a back pressure mechanism for timed commands in the same way there is for=
 the tx_streamer, so I have to track by elapsed time how full I think the=
 USRP queue is. </p>


--b1_alpN7X6VU8mje4VA8MnFusAzyOE85TuwoNDJDIFBAY--

--===============9115061547133733702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9115061547133733702==--
