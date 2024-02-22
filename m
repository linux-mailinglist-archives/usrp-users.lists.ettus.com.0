Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1463860365
	for <lists+usrp-users@lfdr.de>; Thu, 22 Feb 2024 21:01:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E081384A48
	for <lists+usrp-users@lfdr.de>; Thu, 22 Feb 2024 15:01:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708632112; bh=wWZTvFqiJBSy9y4tuub0/TKgQnOgL8t9HmzYKFIuQK0=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dEAkTkW4zjydrAyZHkHzHSeM4jVlVHyhGCnUIRllJ7v1TPEcgtZFLxHUwFshp4cp+
	 FZqVuBsxgcwfIuLAbiKdCl8+qC1eXarn6dKBirvKYco+Uv0Nnm1MbftSwtOFNQ+z5o
	 jKNvqX3C0i/PSL8A0zr/QiMs1qMvVHxOFzmc9+2fh+K/KVHEUKI0y66XSXKHmTcplQ
	 p/K8AGrlXR/XvjwqTJL1XYWTvJ1zWJ+v3RQ2ecOcPqGFqfh3WQFfF0GeKhRbKKRnED
	 ov/6w6t/sgeePO/EbXjY6xjg9QhSZYKZJlHq2txPpKdhKndR4syUKNmHU2oU3tOI8a
	 WFXiE4haE3WIA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 187A2384A18
	for <usrp-users@lists.ettus.com>; Thu, 22 Feb 2024 15:01:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708632094; bh=NdReluq4Bfox6eZoRTPSt5tlRuFD3BQGpCCz6X81mdE=;
	h=Date:To:From:Subject:From;
	b=KRV2vThmBi3oUEDZPvQ+fApxYs0e2QyYxWgjulV3GG1VQxO4NFgWQdasPvCieMo9M
	 k4/EVwZX5pGLNzz53h2irVfRr0B1RmyV0xIaFNspheD/XMGHpR9qfAx/30ZPuhtYMR
	 C8K6vXO6PkHWPsZqTsFdLIlvUv5OBrzPh5bE6ZfAN4IjlB6gBgg3OoASWPTuSFJ2+b
	 OPNP0/+7ckIgGNpEcAeYR7AgzRTt6FjKTlrAH9CFNEIC8LvTlUTAUQYdqiMu9/86Hb
	 XIMtfdVj4ZMpULNAeAqQy9Qc/hYOQFsgm9mRRFqj5cfY/3WJTJrlIO2C/kTPZEGShv
	 gqtp8UhsoXTNA==
Date: Thu, 22 Feb 2024 20:01:34 +0000
To: usrp-users@lists.ettus.com
From: yguruprasad@umass.edu
Message-ID: <dc4RBex73kHOWDTF6WJbKQT3WQ5m2wMRf7FoMY9qBM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: SW3ZDDYBMMEJCTWXHUXFXW7ZOKCG2TLQ
X-Message-ID-Hash: SW3ZDDYBMMEJCTWXHUXFXW7ZOKCG2TLQ
X-MailFrom: yguruprasad@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Getting started with RFNoc block (adding an additional RFnoc block )
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SW3ZDDYBMMEJCTWXHUXFXW7ZOKCG2TLQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3109928281814906915=="

This is a multi-part message in MIME format.

--===============3109928281814906915==
Content-Type: multipart/alternative;
 boundary="b1_dc4RBex73kHOWDTF6WJbKQT3WQ5m2wMRf7FoMY9qBM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_dc4RBex73kHOWDTF6WJbKQT3WQ5m2wMRf7FoMY9qBM
Content-Type: text/plain; charset=us-ascii

CRITICAL WARNING: \[Route 35-39\] The design did not meet timing requirements. Please run report_timing_summary for detailed reports.

\[01:09:55\] Current task: Routing +++ Current Phase: 22 Post Router Timing

\[01:09:55\] Current task: Routing +++ Current Phase: Finished

\[01:09:55\] Executing Tcl: phys_opt_design -directive Explore

\[01:09:55\] Starting Physical Synthesis Command

\[01:10:32\] Current task: Physical Synthesis +++ Current Phase: Starting

\[01:10:32\] Starting Physical Synthesis Task

\[01:10:32\] Current task: Physical Synthesis +++ Current Phase: Starting

\[01:12:11\] Current task: Physical Synthesis +++ Current Phase: 1 Physical Synthesis Initialization

CRITICAL WARNING: \[Timing 38-469\] The REFCLK pin of IDELAYCTRL u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2 u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input_\[2\].iserdes_dq_.idelay_dq.idelaye2 has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.

--b1_dc4RBex73kHOWDTF6WJbKQT3WQ5m2wMRf7FoMY9qBM
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>CRITICAL WARNING: [Route 35-39] The design did not meet timing requireme=
nts. Please run report_timing_summary for detailed reports.</p><p>[01:09:55=
] Current task: Routing +++ Current Phase: 22 Post Router Timing</p><p>[01:=
09:55] Current task: Routing +++ Current Phase: Finished</p><p>[01:09:55] E=
xecuting Tcl: phys_opt_design -directive Explore</p><p>[01:09:55] Starting =
Physical Synthesis Command</p><p>[01:10:32] Current task: Physical Synthesi=
s +++ Current Phase: Starting</p><p>[01:10:32] Starting Physical Synthesis =
Task</p><p>[01:10:32] Current task: Physical Synthesis +++ Current Phase: S=
tarting</p><p>[01:12:11] Current task: Physical Synthesis +++ Current Phase=
: 1 Physical Synthesis Initialization</p><p>CRITICAL WARNING: [Timing 38-46=
9] The REFCLK pin of IDELAYCTRL u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctr=
l/u_idelayctrl_200 has a clock period of 4.998 ns (frequency 200.080 Mhz) b=
ut IDELAYE2 u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_=
phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lane=
s/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input_[2].iserdes_dq_.i=
delay_dq.idelaye2 has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). Th=
e IDELAYCTRL REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY =
property.</p>

--b1_dc4RBex73kHOWDTF6WJbKQT3WQ5m2wMRf7FoMY9qBM--

--===============3109928281814906915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3109928281814906915==--
