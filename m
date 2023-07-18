Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F32997581A1
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jul 2023 18:03:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC840384BBF
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jul 2023 12:03:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689696208; bh=EltkN1mTSUcXrwv84SJtNJKZqnyFLqP2eQRAHoC0qi4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SEPfj1ZbaSIA2zPwrOR1G045brsOEwgGa6CVF5gNssHWbQtwGm6i0eLpMZLJe5XD0
	 05oCSAV7gada9YTeKYRaoJFjKgg8TvBFNCET10dEC1PpNdbpqAFoZvffZuwxDD39/O
	 /wAXaFDmWIXbgGEVA3if5G2DzBnlNNf2orNIayQ0YXTWPSPkL/RjE8iEi5HFJApq42
	 47FPRMb7vYbA3VR/sjkEgdz66u3xZquwfp5VGXm7I42CEL1ioi1Fu+DS6z7P+zMmOJ
	 b7zffsZvlOpbv03Uw1AhHrrFhIqroS93KGkQw6PdzyR7wt5WWfxf+02lsGIfLIKuRy
	 Y5UYr+/1P2jPA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AD8C2384B96
	for <usrp-users@lists.ettus.com>; Tue, 18 Jul 2023 12:02:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689696171; bh=+7hAQCngchwatXBWKy4V0T/mF2vXJDcgKZz5J6jIsm4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=P/90zPo3TlJJLWfGlaUCwiAmkzR2lLfQ5D0qKSd897VfpkZ82FHdDocRZisYV2c5R
	 PfA8fUtWxU8oz9bFJl7ZqFrVTyWpFpyxBXQgDd+mq+pHj645ZNfzXlYMwVGUgXUDH7
	 sSt25i+GWhQGieGoqlDGYlGxIfg/BjO+3l05kftSZB0FUkjLPa9kdX5uD4Pb83e1Zl
	 C7Y2pwPbkQjQIUfEGLDJ25iYf/ceu/GxyWumZt8xwWY99P3uQpD3bbpoVmhjnj9II7
	 yV8Q4jIY26YMJaD57WFfQmGQqtZhplCXbdyFjDRcrKgBRiV5U/xGXoNVljKLKxmEeL
	 8KNcAOMuJaEUQ==
Date: Tue, 18 Jul 2023 16:02:51 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <SEmnvxMEwL7PCTVzaysnK32Ei2RVS1c27JRTtR5E@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAM4xKrrBozzQdoyx9fee=RO8A3p2FN=JOpSGN=LJm3bHb5hcOw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: MYIORMON3O7VKHK5COVUZRVQ6UBGM52U
X-Message-ID-Hash: MYIORMON3O7VKHK5COVUZRVQ6UBGM52U
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: num_recv_frames
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MYIORMON3O7VKHK5COVUZRVQ6UBGM52U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6807836150538545145=="

This is a multi-part message in MIME format.

--===============6807836150538545145==
Content-Type: multipart/alternative;
 boundary="b1_SEmnvxMEwL7PCTVzaysnK32Ei2RVS1c27JRTtR5E"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_SEmnvxMEwL7PCTVzaysnK32Ei2RVS1c27JRTtR5E
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I am trying to understand how the system performs the samples buffering, =
especially in the Rx side. When you say =E2=80=9Call the buffering is don=
e by the socket buffers=E2=80=9D you are talking about he **host=E2=80=99=
s** UDP socket, right ? The =E2=80=9Csocket I/O=E2=80=9D that you are tal=
king about is in the USRP side ? When you say =E2=80=9Cthe socket I/O is =
synchronous=E2=80=9D, does it mean that there is no buffering at all in t=
he FPGA and all the samples of the USRP are constantly being pushed to th=
e host even when I am not calling the =E2=80=9Crecv=E2=80=9D function ?=20

I=E2=80=99m sorry of those are questions with obvious answers. I=E2=80=99=
m asking this because I performed some tests similar to those performed b=
y Rob : I call recv(), I sleep some time and call recv() again. I saw tha=
t even when I sleep several minutes with a sample rate of 4Msps i still h=
ave no buffer overflow.

Thank you very much for your support.

David Fernandes

--b1_SEmnvxMEwL7PCTVzaysnK32Ei2RVS1c27JRTtR5E
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi everyone,</p><p>I am trying to understand how the system performs t=
he samples buffering, especially in the Rx side. When you say =E2=80=9Cal=
l the buffering is done by the socket buffers=E2=80=9D you are talking ab=
out he <strong>host=E2=80=99s</strong> UDP socket, right ? The =E2=80=9Cs=
ocket I/O=E2=80=9D that you are talking about is in the USRP side ? When =
you say =E2=80=9Cthe socket I/O is synchronous=E2=80=9D, does it mean tha=
t there is no buffering at all in the FPGA and all the samples of the USR=
P are constantly being pushed to the host even when I am not calling the =
=E2=80=9Crecv=E2=80=9D function ? </p><p>I=E2=80=99m sorry of those are q=
uestions with obvious answers. I=E2=80=99m asking this because I performe=
d some tests similar to those performed by Rob : I call recv(), I sleep s=
ome time and call recv() again. I saw that even when I sleep several minu=
tes with a sample rate of 4Msps i still have no buffer overflow.</p><p>Th=
ank you very much for your support.</p><p>David Fernandes</p>


--b1_SEmnvxMEwL7PCTVzaysnK32Ei2RVS1c27JRTtR5E--

--===============6807836150538545145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6807836150538545145==--
