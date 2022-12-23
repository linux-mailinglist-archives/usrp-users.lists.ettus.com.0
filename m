Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F4F654A6D
	for <lists+usrp-users@lfdr.de>; Fri, 23 Dec 2022 02:13:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3840B383F75
	for <lists+usrp-users@lfdr.de>; Thu, 22 Dec 2022 20:13:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671757982; bh=X6O5TrEsJCxIHOq7m8Cn/Oi4oBi8UkTwQjtzJ8fgbFg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Y2yAP5oqYE1u5wko28C+uyXOkO2WJ1TDOd6xrbDh7Q6qOa1zAD5deGfZQaG9szzST
	 6Rmeacesx3GUY5/weaKlb02fEFFsr/kq7mb30wE4MJ0LlxfuKv2eW2fTM8fdhbTQmf
	 BPHWRRZMMif7NJ0vunHTEJDs8yZI/sJjuHnqmM1HhtPqK6bRMSSveEAalHaRh5q7Lh
	 pRoDp6rt1l3+tJqzt7/oOgMgv5NX8LIyKjg+1h4qBGOLilWvq30qiqBLlTEsUXGNPw
	 M6UquAntZi6iK7NfhW/3mVa11prD/HJ8d80ZQSQjRcQF54Q7+7qmm0ME8HZk6Mj3tl
	 IszSaJu8CR29g==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id BCFEC383AB9
	for <usrp-users@lists.ettus.com>; Thu, 22 Dec 2022 20:11:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=g-ecc-u-tokyo-ac-jp.20210112.gappssmtp.com header.i=@g-ecc-u-tokyo-ac-jp.20210112.gappssmtp.com header.b="vGEgN4Ml";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id vm8so1982968ejc.2
        for <usrp-users@lists.ettus.com>; Thu, 22 Dec 2022 17:11:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=g-ecc-u-tokyo-ac-jp.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nFxCKMDR21wfwyjTIVtmaDZ6oC8vKfup05kAa8x5cEA=;
        b=vGEgN4MlYvD9pvQS6R+E2Xbth8T/xmdqLYOWSL5jkuPI7KbU/fvC7io+HhnLq1Fm5X
         2FsY6n3iHJyu8mTD8MyApHXzeT8ugSjcxYHcAS96FXMN9QHsk4tiU+bbE5q34WbPBw9L
         NkIXnlqquCNrtu7kMoYy9Wv0xZcq4hreWrYaOcoBQa/Rk8+qtcxrqCxMIPxih572X/py
         ptRZ9VajOTXl2pycvIBeQ0vYsUugJh96X0pFZclazH1WafuhsW3m5g7kxWHQYevf6K0i
         Ke+GBcWeWrAg1ZbGPO/6K3zFSJ5T3ail6prk8iJ11xzNzEmZddWIBrsTXPiPFYktUkCI
         ySzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nFxCKMDR21wfwyjTIVtmaDZ6oC8vKfup05kAa8x5cEA=;
        b=tGAWtu2QXKnpVvFHCi6O31lC+LdiLoEjFiFvQyXgjpToGAuH82oUrmU4YEu5PEAY6V
         /ej7jOHP9E8WSLf9EWLVqJ2snrRxv9zUNiHSG3r4oOS/4D4KECtoHyJ3tHjOA5M5LYZd
         NPfH56rcpbnjhDJgz0EAtUZUOHCeq5/wQ4uxpO83nwu4a1kVTqg9ji+ASfkKfyKMYrIa
         kamVHSWZ9P+Z6igeZFfk/n7Au9QleUbQ2orKC0f6eHG1qh4RKGfqfiGVs3kd/qnVyUPH
         N/Mxcp3d0MkJvEGptXXlSxwdIZrB4P+rd9m2KyBiJIWbKE7hpi96mtydLePAthm8iDF3
         7Ltw==
X-Gm-Message-State: AFqh2kqOKGLjqyeKXOhgvTO2p6UslBB6+kZVL7zRyV4OtVeqi5RB9NUc
	88MDlJd3v/EVYaaB2wtvDdJHTubI8H5WNd2BZNmCwfgs4IGkoGfabvc=
X-Google-Smtp-Source: AMrXdXtfsLd9INIWpdZF3kID0SYBkrprfvGfc973SoTWfQfDyrrJxzSQKr+xeJDqfL0W+5YczTEq/QeLeCE2UhUQodQ=
X-Received: by 2002:a17:906:d205:b0:7e2:cae2:9c6a with SMTP id
 w5-20020a170906d20500b007e2cae29c6amr483033ejz.213.1671757903468; Thu, 22 Dec
 2022 17:11:43 -0800 (PST)
MIME-Version: 1.0
From: "AERMAN TUERXUN." <armantursun@g.ecc.u-tokyo.ac.jp>
Date: Fri, 23 Dec 2022 10:11:32 +0900
Message-ID: <CAOcHjo+sQE-tDoW-1neDyk8_VsJM3iBvyQvm2penhKiub8+mOg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: K5EPQXF4DWCBGYKIC3G7KTGS5EMWQBPD
X-Message-ID-Hash: K5EPQXF4DWCBGYKIC3G7KTGS5EMWQBPD
X-MailFrom: armantursun@g.ecc.u-tokyo.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] The design did not satisfy timing constraints.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K5EPQXF4DWCBGYKIC3G7KTGS5EMWQBPD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3023831038003154695=="

--===============3023831038003154695==
Content-Type: multipart/alternative; boundary="000000000000fcbc3505f07477c9"

--000000000000fcbc3505f07477c9
Content-Type: text/plain; charset="UTF-8"

Hi,

I am building a custom RFNoC block on USRP X310.
When I was trying to build bitstream, after almost two hours processing, it
gave me the error as below.

Do you have any idea what timing constraints are?
Is that because the custom IP is too large for FPGA?
Thank you!

It started after
[01:58:36] Executing Tcl: write_bitstream -force
/home/xxxxx/uhd/fpga/usrp3/top/x300/build-X310_HG/x300.bit
[01:58:36] Starting Write Bitstream Command
... (omit same CRITICAL WARNING)
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input_[7].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input_[8].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
ERROR: [Builder 0-0] The design did not satisfy timing constraints.
(Implementation outputs were still generated)
ERROR: [Common 17-39] 'send_msg_id' failed due to earlier errors.
[02:00:08] Current task: Write Bitstream +++ Current Phase: Starting
[02:00:08] Current task: Write Bitstream +++ Current Phase: Finished
[02:00:08] Process terminated. Status: Failure

========================================================
Warnings:           1121
Critical Warnings:  113
Errors:             2

make[5]: *** [Makefile.x300.inc:127: bin] Error 1
make[4]: *** [Makefile:85: X310_HG] Error 2

--000000000000fcbc3505f07477c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>I am building a cus=
tom RFNoC block on USRP X310.</div><div>When I was trying to build bitstrea=
m, after almost two hours processing, it gave me the error as below.</div><=
div><br></div><div><div>Do you have any idea what timing constraints are?</=
div><div>Is that because the custom IP is too large for FPGA?</div><div>Tha=
nk you!</div></div><div><br></div><div>It started after <br></div><div>[01:=
58:36] Executing Tcl: write_bitstream -force /home/xxxxx/uhd/fpga/usrp3/top=
/x300/build-X310_HG/x300.bit<br>[01:58:36] Starting Write Bitstream Command=
<br></div><div>... (omit same CRITICAL WARNING)<br></div><div>CRITICAL WARN=
ING: [Timing 38-469] The REFCLK pin of IDELAYCTRL u_ddr3_32bit/u_ddr3_32bit=
_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock period of 4.998 ns (freque=
ncy 200.080 Mhz) but IDELAYE2 u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_a=
xi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes=
_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input=
_[7].iserdes_dq_.idelay_dq.idelaye2 has REFCLK_FREQUENCY of 200.000 Mhz (pe=
riod 5.000 ns). The IDELAYCTRL REFCLK pin frequency must match the IDELAYE2=
 REFCLK_FREQUENCY property.<br>CRITICAL WARNING: [Timing 38-469] The REFCLK=
 pin of IDELAYCTRL u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctr=
l_200 has a clock period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2 u=
_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_dd=
r_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_la=
ne_C.ddr_byte_lane_C/ddr_byte_group_io/input_[8].iserdes_dq_.idelay_dq.idel=
aye2 has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL =
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.<br>=
ERROR: [Builder 0-0] The design did not satisfy timing constraints. (Implem=
entation outputs were still generated)<br>ERROR: [Common 17-39] &#39;send_m=
sg_id&#39; failed due to earlier errors.<br>[02:00:08] Current task: Write =
Bitstream +++ Current Phase: Starting<br>[02:00:08] Current task: Write Bit=
stream +++ Current Phase: Finished<br>[02:00:08] Process terminated. Status=
: Failure<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Warnings: =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1121<br>Critical Warnings: =C2=A0113<br>Errors: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 2<br><br>make[5]: *** [Makefile.x300.inc:127: b=
in] Error 1<br>make[4]: *** [Makefile:85: X310_HG] Error 2</div><div><br></=
div></div>

--000000000000fcbc3505f07477c9--

--===============3023831038003154695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3023831038003154695==--
