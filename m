Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDCC7EB86B
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 22:18:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DAE11384921
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 16:18:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699996732; bh=acOnmX+/XksZ32omlra/cTc/Hoblg8zYefo09MAuGJU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RMbRSiE+VmN8OofhzTpSZiUzjjg8Fgj7NFseRJiN1dg2XXlpPCcCoqJvWgiAb4Qyu
	 BuEY7Rj/qS55+70yHwjVxu0pfR4u4zXVsJL7/no0kkDRt2Yq8kt+HX0yTvhcmjRVPu
	 RdaQ/lx3I87pHbd/pV2HzkucYXLa43M0JquXrYndIyqYLTqV5PCAMBjofak0BnubCg
	 9BxEkbvbfdi52ExLRg3kOmOlcyctYYdrY/CeZevt0Auqy8BoxRjC37cxUUwYOQBZv2
	 Ro1g9ZRWZ/lCPktEL+N91AQPBHbkmgRpN+qOQlFi2IejAYeIksBJxEMbS2YPx3+Lbj
	 0DJFH8kzRhdlw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C3A4383B63
	for <usrp-users@lists.ettus.com>; Tue, 14 Nov 2023 16:18:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699996694; bh=npsElKmJsES4XQE801fQ11ESN2i/kKHTl+oqYJXntUM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=hDjFSnKxL/Av8gTF356bfQfQvAC/5kRc2bVSr+tk4BzeDAjKAHyoJoSlyOmwNi+S/
	 xsL/TmIq9jXIHUOjqb+ghKYj0p3m9xeILaovjxLZt5XVH1y3AWHTPFvmunayV3j1om
	 QGZ8eaPCkk3L1Ho+2E1Z937z7HC7R25btvso1kEzBo0IzMd0Njx5koXZtOPzEzF1T1
	 tyO4FirpXrEo8mfrcH6O/Z6T2JHmV68pHQsADboJie91D7xPIEfctdRHNE1ejYRXP2
	 SUioyWEniU08XPVxFgldqYQ7YDh4iqzpsPbeqrTbTrk5E8xRf9NwQIBp2lhmdZSWmM
	 rXKgZF2VsqsIg==
Date: Tue, 14 Nov 2023 21:18:14 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <m4SWDApUBCV2XwU6iTEKN5bOyjY7vLPmbciLI4bJb44@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8bT31hH6EcNx7Ht8eBdazGg65oh0gGQLBhAt7ZdGM@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: YQAKQR63Z7JXXD3WOXAIWGEY4CASUHVO
X-Message-ID-Hash: YQAKQR63Z7JXXD3WOXAIWGEY4CASUHVO
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 stuck in reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YQAKQR63Z7JXXD3WOXAIWGEY4CASUHVO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6272028836859583504=="

This is a multi-part message in MIME format.

--===============6272028836859583504==
Content-Type: multipart/alternative;
 boundary="b1_m4SWDApUBCV2XwU6iTEKN5bOyjY7vLPmbciLI4bJb44"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_m4SWDApUBCV2XwU6iTEKN5bOyjY7vLPmbciLI4bJb44
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

After reflashing the eMMC, boot is no longer on loop, and I am able to lo=
g in via Console JTAG. However, I cant seem to ssh into the device of eth=
ernet or SFP.

I get the following error in boot=E2=80=A6

\[FAILED\] Failed to start File System Check on Root Device.

See 'systemctl status systemd-fsck-root.service' for details.

I am currently trying to flash the x410 with the default x410 FPGA image,=
 but the host computer can not detect uhd devices currently.

--b1_m4SWDApUBCV2XwU6iTEKN5bOyjY7vLPmbciLI4bJb44
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>After reflashing the eMMC, boot is no longer on loop, and I am able to=
 log in via Console JTAG. However, I cant seem to ssh into the device of =
ethernet or SFP.</p><p>I get the following error in boot=E2=80=A6</p><p>[=
FAILED] Failed to start File System Check on Root Device.</p><p>See 'syst=
emctl status systemd-fsck-root.service' for details.</p><p>I am currently=
 trying to flash the x410 with the default x410 FPGA image, but the host =
computer can not detect uhd devices currently.</p>


--b1_m4SWDApUBCV2XwU6iTEKN5bOyjY7vLPmbciLI4bJb44--

--===============6272028836859583504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6272028836859583504==--
