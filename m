Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2808187EB64
	for <lists+usrp-users@lfdr.de>; Mon, 18 Mar 2024 15:48:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2663C385376
	for <lists+usrp-users@lfdr.de>; Mon, 18 Mar 2024 10:48:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710773337; bh=FcGeSKcczEBKY+MPI18fu8L2V7hG81Kx+q9z5zWadNw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Bl2V0DdLVsBBNiM9JZwuuhtWDvITBeSX0FLdj4zOPw1Fe6jUa294ImoefOd2+OTQ7
	 CWVWZVvU98de2BigYCL/r/8wL/vGPAkx9yHxuKYz1Y7OkMI+X24AEl8W/WDWxj4y0x
	 p4PrbJmoSJbC26vJu8Er3Z2ov1xQk4b9DyGdGsXvXyoGA/DrJ1Z91J3/AcCJcPjBtm
	 zVjq13trHIK9jBBbqZX1WbFOkfvLGKjVBUWzG2Wql2qeWmX/1xhbb3kw7xERuLWNue
	 yuJ6MEEywwvuLN020QtuEtiGlyKGPMEcG9bT+A8SmVFUQjPIMj+wu/NjuoeehmdjNi
	 ejVXLXaRHS8eg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD34038532B
	for <usrp-users@lists.ettus.com>; Mon, 18 Mar 2024 10:48:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710773300; bh=pHvl0YoAcZ7XgeCAwNyR90v6a2mU5HSZ9pSAQ0jWcMo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ronrFfWv0sjVKn+QsU1e9Ooqq1Gcs6/8oCBNNIIWgZRfySaWcJVpZxAkPx2rkp/Aj
	 Lx8mqTapKUN4sKJt5ZNHPRNy09vnRhrykoJ7YOXgMuRQpA0WrqZVSh0dI5jFmnlBo3
	 w/W9ZrokhsGGCITG6HURuCJzML0C8r5Mom/EGujOkj6yEix88kDc9+kdCCQ+0kOvwC
	 5ZVxfUmlOAUX9JrvNCBm6vCbeH0+oM+Ks7WBRwSMH5Iw3mv/OezDBpWWiJnoCVDcLB
	 WZK/Vl5MDNDQPxjooepofrqTvZ0eazjWC62UxnjnoQ5/+meJ0zIM+XFJxyGP2joJEn
	 6NVDArsgRJAUQ==
Date: Mon, 18 Mar 2024 14:48:20 +0000
To: usrp-users@lists.ettus.com
From: a.lapini@ifac.cnr.it
Message-ID: <30V0zXNQWpRnVb6jq1bxCrf85h4pl97tIlYaK1V0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: gDl51suQwnMbsbrRcQHMmd2UQ8OtkbgQsdMTWS3DE@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: TSB26RAH7PJRZ2PHKLF4BLFCAX5P7QYR
X-Message-ID-Hash: TSB26RAH7PJRZ2PHKLF4BLFCAX5P7QYR
X-MailFrom: a.lapini@ifac.cnr.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Python API for timed GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TSB26RAH7PJRZ2PHKLF4BLFCAX5P7QYR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0392086816847375875=="

This is a multi-part message in MIME format.

--===============0392086816847375875==
Content-Type: multipart/alternative;
 boundary="b1_30V0zXNQWpRnVb6jq1bxCrf85h4pl97tIlYaK1V0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_30V0zXNQWpRnVb6jq1bxCrf85h4pl97tIlYaK1V0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

After spending some time, I arrived at the following conclusions (thanks =
also to Jonathon Pendlum):

a) =E2=80=9Cset_command_time()=E2=80=9D and =E2=80=9Cclear_command_time()=
=E2=80=9D are available in Python API of UHD 4.6, also for RFNOC interfac=
e.

b) The non-intuitive part is that, given the following sequence of comman=
ds:

    1) radio_control_block.set_command_time(radio_control_block.get_time_=
now() + 10, 0)

    2) COMMAND_A

    3) radio_control_block.clear_command_time(0)

    4) COMMAND_B

will make COMMAND_A to be executed after 10 seconds and COMMAND_B just af=
ter COMMAND_A. The Radio block (and all RFNoC blocks in general) has only=
 one command FIFO. When a timed command is sent, it is put in the block's=
 command FIFO and all subsequent commands (timed or untimed) will be bloc=
ked by that timed command. In this sense, "clear_command_time()" has no e=
ffect.

I hope this will be useful for other users.

--b1_30V0zXNQWpRnVb6jq1bxCrf85h4pl97tIlYaK1V0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>After spending some time, I arrived at the following conclusions (than=
ks also to Jonathon Pendlum):</p><p>a) =E2=80=9Cset_command_time()=E2=80=9D=
 and =E2=80=9Cclear_command_time()=E2=80=9D are available in Python API o=
f UHD 4.6, also for RFNOC interface.</p><p>b) The non-intuitive part is t=
hat, given the following sequence of commands:</p><p>    1) radio_control=
_block.set_command_time(radio_control_block.get_time_now() + 10, 0)</p><p=
>    2) COMMAND_A</p><p>    3) radio_control_block.clear_command_time(0)<=
/p><p>    4) COMMAND_B</p><p>will make COMMAND_A to be executed after 10 =
seconds and COMMAND_B just after COMMAND_A. The Radio block (and all RFNo=
C blocks in general) has only one command FIFO. When a timed command is s=
ent, it is put in the block's command FIFO and all subsequent commands (t=
imed or untimed) will be blocked by that timed command. In this sense, "c=
lear_command_time()" has no effect.</p><p>I hope this will be useful for =
other users.</p><p><br></p>


--b1_30V0zXNQWpRnVb6jq1bxCrf85h4pl97tIlYaK1V0--

--===============0392086816847375875==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0392086816847375875==--
