Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EFF817AC2
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 20:13:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CC7FB385507
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 14:13:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702926814; bh=wDyZ+dIXFzC2odSBDKxrk6v/vOa6UEqT+pi+WgGM9ko=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=HltBaALGyIWeSJvUu2VCtuWdS2jxSOCaZjmc0E4ufPfJ7AylDg7gCxTxBMIL2b5oG
	 wO1HAoS4RflhVD5Qv1sdetMP8tP9ReZjmcy6z91cVwM0Cgz6y+HuoBhGLFph6+TF1V
	 LfULvvQ8R++jpNUjJXnfWF24ntt3TCENct7bIS3f8Ut50gm4bHM8J04Zk36g/hXFVd
	 5KrTR9xX63WA8NGbdpKU3Mo4m/1iGHMCb5Ru0ZT0NZap7L6rJhK7LfP9S3UZX2GHFn
	 itx8aZ4DtdGRYAK+4HUb+qSBE2IQozG4QFCiKpiJxL1mRWwCgfZLotWV2MssChrILu
	 MWt6zaYKXr8tQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EAD4738535E
	for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 14:12:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702926775; bh=Cn279tM/r+w5KCshPIgf9lAG+Q5f+1TTyHULfU5le44=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=H/ARUBYN8PQdVpX6bvzFp4MPwmnP/c7w7bqN56XrjLZN8tkp0RoLXCiA+AegC2SVA
	 wRMNNnFUDmqBrYiVtxS6Pe9ybCfEVPA+ahAMR69JyNUHD1JKUjxrQVsInMRhEO+Dd0
	 8r3PmurNG8j9zoAJ2XFG39HTV2oB21JQR21H+H5Iz6/kQeh78/wYD8C++0V9tD2zAv
	 sn8cnlMdPSdeYSEFxSVqSP5PYngsVbpWkx1IJtPEPEdLo5E8UIqabTSf2f7/U/spd/
	 TTTACecjPT4zRjYzjBlkaQoWaEaQkGkrlsbPlTQYFnfMp3i8G8ypVnHmY0dXrETzyy
	 NuYNdrqRPcrQQ==
Date: Mon, 18 Dec 2023 19:12:54 +0000
To: usrp-users@lists.ettus.com
From: engr.muhd.hassan@gmail.com
Message-ID: <3jJQVyb91CYSPn8GBPkmvkJyjsKEJDKpTEPzIqF9hE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: g1X1Ja48omFITs1w8faS1qog6VBnDS86rKh8naY2rs@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: T3GEXFNYVN75DCZNYTA2YGXFPIPA6RUI
X-Message-ID-Hash: T3GEXFNYVN75DCZNYTA2YGXFPIPA6RUI
X-MailFrom: engr.muhd.hassan@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error: RuntimeError: Failure to create rfnoc_graph.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T3GEXFNYVN75DCZNYTA2YGXFPIPA6RUI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0411332759307862857=="

This is a multi-part message in MIME format.

--===============0411332759307862857==
Content-Type: multipart/alternative;
 boundary="b1_3jJQVyb91CYSPn8GBPkmvkJyjsKEJDKpTEPzIqF9hE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3jJQVyb91CYSPn8GBPkmvkJyjsKEJDKpTEPzIqF9hE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear Rob,

I have following bit files generated at the same time.

1. named =E2=80=9Cusrp_e310_sg3_fpga.bit=E2=80=9D. this file is in build =
folder

2. named =E2=80=9Ce31x.bit=E2=80=9D. which is in =E2=80=9Cbuild-E310_SG3=E2=
=80=9D

build-E310_SG3 folder and build folder, both are in e31x folder.

I tried to run both these files and get same error.=20

the commands are. 1. uhd_image_loader --args type=3De3xx,adr=3D192.168.10=
.2 --fpga-path=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-E310_SG3/e31=
x.bit

2. uhd_image_loader --args type=3De3xx,adr=3D192.168.10.2 --fpga-path=3D/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build/usrp_e310_sg3_fpga.bit

--b1_3jJQVyb91CYSPn8GBPkmvkJyjsKEJDKpTEPzIqF9hE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear Rob,</p><p><br></p><p>I have following bit files generated at the=
 same time.</p><ol><li><p>named =E2=80=9Cusrp_e310_sg3_fpga.bit=E2=80=9D.=
 this file is in build folder</p></li><li><p>named =E2=80=9Ce31x.bit=E2=80=
=9D. which is in =E2=80=9Cbuild-E310_SG3=E2=80=9D</p></li></ol><p>build-E=
310_SG3 folder and build folder, both are in e31x folder.</p><p><br></p><=
p>I tried to run both these files and get same error. </p><p>the commands=
 are. 1. uhd_image_loader --args type=3De3xx,adr=3D192.168.10.2 --fpga-pa=
th=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-E310_SG3/e31x.bit</p><p>=
<br></p><ol start=3D"2"><li><p>uhd_image_loader --args type=3De3xx,adr=3D=
192.168.10.2 --fpga-path=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/build/us=
rp_e310_sg3_fpga.bit</p></li></ol>


--b1_3jJQVyb91CYSPn8GBPkmvkJyjsKEJDKpTEPzIqF9hE--

--===============0411332759307862857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0411332759307862857==--
