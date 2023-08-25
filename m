Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0455A788BFB
	for <lists+usrp-users@lfdr.de>; Fri, 25 Aug 2023 16:53:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17256384D36
	for <lists+usrp-users@lfdr.de>; Fri, 25 Aug 2023 10:53:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692975202; bh=lRmx8C5PikhfILUplQUZvlHT1vSp8EvKWQ4Pk5QIg7E=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=X+i/BPEp8rF5N/21hjSB78W9jGmurW6OczditFzHcB0LbVm4jzA+cTafTO4FiGvGH
	 bhE4xCXUFiZoFLMH/jSnL3WSS8rHriNT3X83Q9Wg89Hz8SUuUs/buuiZnsrIGosJ0x
	 s93T93XelUc+sSA8lZQn1LNpEqdQ5dO9HGjsKjEpoN+M4XDGut3AoUBA9Cslca2XqY
	 6eNpcsKeTxfHkHz4D869p8NvuLvSTF5ONSCG08RqghX32wi9WQMEA0zyS9nkpDijXi
	 wU0nLA1JDo3Hruhsnol9kczacrWezYgeihMQqm4v8Gp7Jh18VNV/KSIyAU32auGTMI
	 Sv/gtEx5hkuvA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC7B1384CE0
	for <usrp-users@lists.ettus.com>; Fri, 25 Aug 2023 10:52:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692975166; bh=FFpxgj/DQpk09oJ5uAC4GgHa+DeCrL6ESEJ9DGVzHJ4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=st6eglXj1aKa96CnkoGDll7tRsbOJVW1dewuGBRRUAB3WdBwQILYjQXXTPY1lBg1U
	 2xiQBEOFoZ8TSfHGP4T6+R3wqxHwi56ygN+UgOdiWjBd1ygcwFmJE10Y9vxeJUpVOV
	 Izhtida/uqLETjtGXXkcJL5eJRcxlNvd6u8jEIFqj7eN7r3/7zxoJE5Xy31X9POH8j
	 k99jPHidCeSlppxU4LaEIsMETXNzhWm39/eNN2nw6paPJ490CS33LoPT6T35BHQXGS
	 qOpUTYw0HOuCwbpIqkyyQsZRosoQsMeXG9EglCijG8dymsimazRZQBlJw7fgYyPTNM
	 3F+544bDapiqw==
Date: Fri, 25 Aug 2023 14:52:46 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <dTYkivvv3oZhwkXL9xtBe8prsYV92bM6YBhcMWU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=jm3ZgLMg8=3Kh8oEuEN4OmE7woeBY4H5-24zHGevg-Og@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: GCZHEMPLI72EJZI4X7VCFBQIFNKK2NBM
X-Message-ID-Hash: GCZHEMPLI72EJZI4X7VCFBQIFNKK2NBM
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 FPGA build failure with UHD-4.4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GCZHEMPLI72EJZI4X7VCFBQIFNKK2NBM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4504203135178556992=="

This is a multi-part message in MIME format.

--===============4504203135178556992==
Content-Type: multipart/alternative;
 boundary="b1_dTYkivvv3oZhwkXL9xtBe8prsYV92bM6YBhcMWU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_dTYkivvv3oZhwkXL9xtBe8prsYV92bM6YBhcMWU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

The undefined **RFNOC_EDGE_TBL_FILE** macro is a typical error when you t=
ry to build a Vivado project generated for X410.

The reason is that the macro is not passed correctly when synthesizing th=
e Vivado project. My workaround was to use synth_design command generated=
 by UHD X410 Makefile. An example:

synth_design -top x4xx -part xczu28dr-ffvg1517-2-e -verilog_define QSFP0_=
0=3D2 -verilog_define QSFP0_1=3D2 -verilog_define QSFP0_2=3D2 -verilog_de=
fine QSFP0_3=3D2 -verilog_define RFBW_200M=3D1 -verilog_define X410=3D1 -=
verilog_define GIT_HASH=3D32'hfbf186b7 -verilog_define RFNOC_EDGE_TBL_FIL=
E=3D/home/user/RFSoC/uhd/fpga/usrp3/top/x400/x410_200_static_router.hex -=
verilog_define RFNOC_IMAGE_CORE_HDR=3Dx410_200_rfnoc_image_core.vh -veril=
og_define UHD_FPGA_DIR=3D/home/user/RFSoC/uhd/fpga/usrp3/top/../.

I don=E2=80=99t remember exactly how I obtained it.

Best Regards,\
Piotr Krysik

--b1_dTYkivvv3oZhwkXL9xtBe8prsYV92bM6YBhcMWU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>The undefined <strong>RFNOC_EDGE_TBL_FILE</strong> macro =
is a typical error when you try to build a Vivado project generated for X=
410.</p><p>The reason is that the macro is not passed correctly when synt=
hesizing the Vivado project. My workaround was to use synth_design comman=
d generated by UHD X410 Makefile. An example:</p><p>synth_design -top x4x=
x -part xczu28dr-ffvg1517-2-e -verilog_define QSFP0_0=3D2 -verilog_define=
 QSFP0_1=3D2 -verilog_define QSFP0_2=3D2 -verilog_define QSFP0_3=3D2 -ver=
ilog_define RFBW_200M=3D1 -verilog_define X410=3D1 -verilog_define GIT_HA=
SH=3D32'hfbf186b7 -verilog_define RFNOC_EDGE_TBL_FILE=3D/home/user/RFSoC/=
uhd/fpga/usrp3/top/x400/x410_200_static_router.hex -verilog_define RFNOC_=
IMAGE_CORE_HDR=3Dx410_200_rfnoc_image_core.vh -verilog_define UHD_FPGA_DI=
R=3D/home/user/RFSoC/uhd/fpga/usrp3/top/../.</p><p>I don=E2=80=99t rememb=
er exactly how I obtained it.</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_dTYkivvv3oZhwkXL9xtBe8prsYV92bM6YBhcMWU--

--===============4504203135178556992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4504203135178556992==--
