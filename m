Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C49B8E585
	for <lists+usrp-users@lfdr.de>; Sun, 21 Sep 2025 22:39:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 62BD2385F0F
	for <lists+usrp-users@lfdr.de>; Sun, 21 Sep 2025 16:38:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758487134; bh=nZuZffV2elGRR2QxaLoNjYfvHbUSt4mq4a78FqKZXZg=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=FLVkLBihpHyIFXmCPe+psemc8By30oPmr+hoorZp7vqfbAXr2tDeTX/fAlJ585MmA
	 O1m4+WQkh/Sj74G8yQ1xhpplheEwDJVaCCbPNklwyTs5FOMvCJ1JXbA2liXVFK652l
	 6CnT2HD0apJ645y6IULHOa93NyyNTgwwR9K6FRUCIEA5Y3NHqPiIXY0fcKAjScMdl5
	 JqI/DbfKNoWaaLDw1lC3sbfQPPudwhc9rRLPbnr4hzLeLKhAsSOioDBNuspuyc0FaT
	 i7pH81fmjdz/8pk3HbYD3GNtb3mlNtKkErTk1DIo+OzTAHDHb70KiWckvLIviHF/q7
	 3+TmRLLzwvbYg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 06403385F0F
	for <usrp-users@lists.ettus.com>; Sun, 21 Sep 2025 16:38:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758487096; bh=HGTrjZEJjEEAkymaRVFGZBKoSXacD3oaY4AuyUAQqjk=;
	h=Date:To:From:Subject:From;
	b=LE3huOCb2d99o03iYRNl7iCy6ADkjl2VHGy4RAZqzOPWxRfZhGDsBHQEI9rf2kEAy
	 970+WMLwmYjDJc8ybBz8BJ3bO4Qd4WV0XbKGrSxeetxxj6WfiRUrlmKvictvagKEv9
	 uvJpq+agdCXdLv93ETcF96pDpVrALG+uIdaquFEpWKoK47hycMmfvjdxNZseRjf7vq
	 e60loW0Dn16wgCbyuVg3czTWBCCToqFg3mC03bjwN2aL/B4srK/SsmDMcmbWe6kThY
	 ht129T/9rro8+cKY5Qy0aWben4rD5gV0MLRZQAhPMq3d59J+d+q1Jso3iZvrcAuC9e
	 l0ZXwcNcJ+gwQ==
Date: Sun, 21 Sep 2025 20:38:16 +0000
To: usrp-users@lists.ettus.com
Message-ID: <G2CLM3AGKKsZMCLh0uW8Rgt6Vp17ZquF4lPzHYBrY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: W2WJ2V5LKUX4PCUFTKIDGFOW2AXKV5SZ
X-Message-ID-Hash: W2WJ2V5LKUX4PCUFTKIDGFOW2AXKV5SZ
X-MailFrom: peter.gu@tum.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Getting Started RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W2WJ2V5LKUX4PCUFTKIDGFOW2AXKV5SZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Peter Gu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: peter.gu@tum.de
Content-Type: multipart/mixed; boundary="===============6135404744729750917=="

This is a multi-part message in MIME format.

--===============6135404744729750917==
Content-Type: multipart/alternative;
 boundary="b1_G2CLM3AGKKsZMCLh0uW8Rgt6Vp17ZquF4lPzHYBrY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_G2CLM3AGKKsZMCLh0uW8Rgt6Vp17ZquF4lPzHYBrY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

to try out RFNoC on my X440 under UHD 4.8 I followed this instruction:

https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0

Building the default FPGA Image via x440_X4_1600_rfnoc_image_core.yml wor=
ks.

But when I try to continue with =E2=80=9CExample: Adding an FFT Block=E2=80=
=9C it doesn=E2=80=99t work anymore.

1\.) Although the tutorial states that =E2=80=9CAll SEPs are automaticall=
y connected to the CHDR crossbar, so this effectively connects the FFT bl=
ock to the crossbar, allowing it to communicate with anything on the RFNo=
C network.=E2=80=9C, I will get an error that it needs an 10x10 matrix fo=
r crossbar_routes. So I fixed this with the following matrix:

crossbar_routes:

\# eth0 eth2 dma ep1 ep3

\# eth1 eth3 ep0 ep2

 - \[ 1, 0, 0, 0, 0, 1, 1, 1, 1, 1 \] # eth0 (QSFP Port 0, Lane 0)

 - \[ 0, 1, 0, 0, 0, 1, 1, 1, 1, 1 \] # eth1 (QSFP Port 0, Lane 1)

 - \[ 0, 0, 1, 0, 0, 1, 1, 1, 1, 1 \] # eth2 (QSFP Port 0, Lane 2)

 - \[ 0, 0, 0, 1, 0, 1, 1, 1, 1, 1 \] # eth3 (QSFP Port 0, Lane 3)

 - \[ 0, 0, 0, 0, 1, 1, 1, 1, 1, 1 \] # dma

 - \[ 1, 1, 1, 1, 1, 0, 0, 1, 1, 1 \] # ep0 (radio0.0)

 - \[ 1, 1, 1, 1, 1, 0, 0, 1, 1, 1 \] # ep1 (radio1.0)

 - \[ 1, 1, 1, 1, 1, 1, 1, 0, 0, 0 \] # ep2 (replay0.0)

 - \[ 1, 1, 1, 1, 1, 1, 1, 0, 0, 0 \] # ep3 (replay1.0)

 - \[ 1, 1, 1, 1, 1, 1, 1, 0, 0, 0 \] # ep3 (fft)

2) The image build fails after roughly 7 hours, with the error:=20

CRITICAL WARNING: \[Route 35-39\] The design did not meet timing requirem=
ents. Please run report_timing_summary for detailed reports.

Do you know where I did a mistake in understanding the tutorial?

Thanks!

--b1_G2CLM3AGKKsZMCLh0uW8Rgt6Vp17ZquF4lPzHYBrY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>to try out RFNoC on my X440 under UHD 4.8 I followed this i=
nstruction:</p><p>https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.=
0</p><p>Building the default FPGA Image via x440_X4_1600_rfnoc_image_core.y=
ml works.</p><p>But when I try to continue with =E2=80=9CExample: Adding an=
 FFT Block=E2=80=9C it doesn=E2=80=99t work anymore.</p><p>1.) Although the=
 tutorial states that =E2=80=9CAll SEPs are automatically connected to the =
CHDR crossbar, so this effectively connects the FFT block to the crossbar, =
allowing it to communicate with anything on the RFNoC network.=E2=80=9C, I =
will get an error that it needs an 10x10 matrix for crossbar_routes. So I f=
ixed this with the following matrix:</p><p>crossbar_routes:</p><p># eth0 et=
h2 dma ep1 ep3</p><p># eth1 eth3 ep0 ep2</p><p> - [ 1, 0, 0, 0, 0, 1, 1, 1,=
 1, 1 ] # eth0 (QSFP Port 0, Lane 0)</p><p> - [ 0, 1, 0, 0, 0, 1, 1, 1, 1, =
1 ] # eth1 (QSFP Port 0, Lane 1)</p><p> - [ 0, 0, 1, 0, 0, 1, 1, 1, 1, 1 ] =
# eth2 (QSFP Port 0, Lane 2)</p><p> - [ 0, 0, 0, 1, 0, 1, 1, 1, 1, 1 ] # et=
h3 (QSFP Port 0, Lane 3)</p><p> - [ 0, 0, 0, 0, 1, 1, 1, 1, 1, 1 ] # dma</p=
><p> - [ 1, 1, 1, 1, 1, 0, 0, 1, 1, 1 ] # ep0 (radio0.0)</p><p> - [ 1, 1, 1=
, 1, 1, 0, 0, 1, 1, 1 ] # ep1 (radio1.0)</p><p> - [ 1, 1, 1, 1, 1, 1, 1, 0,=
 0, 0 ] # ep2 (replay0.0)</p><p> - [ 1, 1, 1, 1, 1, 1, 1, 0, 0, 0 ] # ep3 (=
replay1.0)</p><p> - [ 1, 1, 1, 1, 1, 1, 1, 0, 0, 0 ] # ep3 (fft)</p><p><br>=
</p><p>2) The image build fails after roughly 7 hours, with the error: </p>=
<p>CRITICAL WARNING: [Route 35-39] The design did not meet timing requireme=
nts. Please run report_timing_summary for detailed reports.</p><p><br></p><=
p>Do you know where I did a mistake in understanding the tutorial?</p><p><b=
r></p><p>Thanks!</p>

--b1_G2CLM3AGKKsZMCLh0uW8Rgt6Vp17ZquF4lPzHYBrY--

--===============6135404744729750917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6135404744729750917==--
