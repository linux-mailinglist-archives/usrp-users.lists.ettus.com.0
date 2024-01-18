Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 745C8831F39
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jan 2024 19:46:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B02A384FD9
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jan 2024 13:46:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705603586; bh=1O/ADLdgwQWsFjQ1LAOp4++FUYOcU5iwi8x28zKfaEo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Yu5gOPtjGtI0evMv7qlsMhr3YurBKWlIlX7OCAHNufd9BlufHWmAzJmLbKDrc2Yk7
	 UoYXf/gs2az0QCRhdV/mPvu2DuKQyjcgID8/y/8mLQS3u5UHVYidldzoKpGOvOVHng
	 HSaRp7kusFWBPvq59vdVbVsCsEwj2GpYG/L8D6i+L8J8Eb5+2/XOaHog3wvrMTvVnF
	 GIV7GXaNNXzazStg56iq7sB5W+D4l4tjuwt3YD0l76xNNOIly9F1MYMy952tqVnemt
	 Jy7LQ5QtwtncZOf1McajsiAOssuaoYTFlSnBK2kzrHKuqupGXcSnZnD5XU+SDpMG1f
	 lNUTDWkRQYq0w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0BD4138517A
	for <usrp-users@lists.ettus.com>; Thu, 18 Jan 2024 13:45:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705603550; bh=TNd02Z4h/8AXaqCSmLjG8w3D29cz96cr8mzQqcLFIiQ=;
	h=Date:To:From:Subject:From;
	b=UZFJKQzppjzmLj0LB+e927dJaFQh6dGmAl+nsOE9se/CX6BILZxpiKvXXPqJ1/8KX
	 xV+xEz3f936wdHuhFK2iI1TYIY2TOE9yNGmMY/IqCKmS3RbYk/Fwb71rts/9/YbZxt
	 vZcNOSUNKoSW+mRrm0suQGvZBqPAYiJTcDymRd41/RbITjlmI2Kk8ySIkYq+gHXMty
	 BFgLplNB/M7uJEgKJYA9XqA75AGRxJCCa1ZBmoCMeKS0EfGJwNKeQWUNg8FNeFLNLk
	 mWDm1wMGv4T8PGvm27DAjS9WTzCAHzbO8nOCg27y2PwPGEHLXyHQqwTvNT+7Dw2UIy
	 v5sF3EVD6f3zA==
Date: Thu, 18 Jan 2024 18:45:50 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <fyCsgGksE2VAhAZhztzCjoXBVTVbOwmq3WsUMZCjEcY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: UH4DUQ5IPM2RYV4LEILNXRPETQHLKJXL
X-Message-ID-Hash: UH4DUQ5IPM2RYV4LEILNXRPETQHLKJXL
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Getting "S" error when using dpdk and replay block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UH4DUQ5IPM2RYV4LEILNXRPETQHLKJXL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7002309140136419147=="

This is a multi-part message in MIME format.

--===============7002309140136419147==
Content-Type: multipart/alternative;
 boundary="b1_fyCsgGksE2VAhAZhztzCjoXBVTVbOwmq3WsUMZCjEcY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_fyCsgGksE2VAhAZhztzCjoXBVTVbOwmq3WsUMZCjEcY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I currently have a custom CG_400 image where I utilize the replay block. =
When I run my application without dpdk on, data is successfully written t=
o the DRAM and played back. However, if I use the same image and same app=
lication, but I turn on DPDK, the application stalls while data is being =
recorded to the replay block, and I get a bunch of =E2=80=9CS=E2=80=9D er=
rors, which I assume implies a =E2=80=9Csystem=E2=80=9D error. How do I g=
o about using dpdk with the replay block.

Thanks

Joe

--b1_fyCsgGksE2VAhAZhztzCjoXBVTVbOwmq3WsUMZCjEcY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I currently have a custom CG_400 image where I utilize th=
e replay block. When I run my application without dpdk on, data is succes=
sfully written to the DRAM and played back. However, if I use the same im=
age and same application, but I turn on DPDK, the application stalls whil=
e data is being recorded to the replay block, and I get a bunch of =E2=80=
=9CS=E2=80=9D errors, which I assume implies a =E2=80=9Csystem=E2=80=9D e=
rror. How do I go about using dpdk with the replay block.</p><p>Thanks</p=
><p>Joe</p>


--b1_fyCsgGksE2VAhAZhztzCjoXBVTVbOwmq3WsUMZCjEcY--

--===============7002309140136419147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7002309140136419147==--
