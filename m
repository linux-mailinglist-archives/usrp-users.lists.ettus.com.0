Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3B8135763
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2020 11:50:01 +0100 (CET)
Received: from [::1] (port=55116 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipVO0-0001oG-KG; Thu, 09 Jan 2020 05:49:56 -0500
Received: from mx1.hrz.uni-dortmund.de ([129.217.128.51]:61254
 helo=unimail.uni-dortmund.de)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <felix.greiwe@tu-dortmund.de>)
 id 1ipVNw-0001ey-4x
 for usrp-users@lists.ettus.com; Thu, 09 Jan 2020 05:49:52 -0500
Received: from webmail.tu-dortmund.de (webmail.tu-dortmund.de [129.217.131.82])
 (authenticated bits=0)
 by unimail.uni-dortmund.de (8.16.0.41/8.16.0.41) with ESMTPSA id
 009AnAjc021484
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 9 Jan 2020 11:49:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tu-dortmund.de;
 s=unimail; t=1578566950;
 bh=+4IePwIe448J8bcVmHHLbOeMzG1t6fG76BsPZrkhhJg=;
 h=In-Reply-To:References:Date:Subject:From:To:Cc:Reply-To;
 b=mcJthM23MRdNOsDikiC250EB0nqRP5YOREjp2+Rg+Td/8ZZvaOxp/2cGtQ4XCbdb9
 GMeqOL4YCK3d1LMgY2u1Qsl45ANFv0FKVVdUNrwsoyNV0p5Hm9E6rmfWMrFvOdiOpz
 p+lI0ZTHG6ishAMIqXBqTMK3qJwTLDI+3MkAWSBU=
Received: from 129.217.182.203 (SquirrelMail authenticated user smfegrei)
 by webmail.tu-dortmund.de with HTTP; Thu, 9 Jan 2020 11:49:10 +0100
Message-ID: <97546e4fd51b795393d1018052820570.squirrel@webmail.tu-dortmund.de>
In-Reply-To: <CAEXYVK6F2+h4XCCXDoihoQUi6arcutbPy5_YXi=y4ebYcKozww@mail.gmail.com>
References: <0f08a6b07438bf71916006244562092c.squirrel@webmail.tu-dortmund.de>
 <640c149702f53cfe43d71b5da2255278.squirrel@webmail.tu-dortmund.de>
 <CADRnH22jhRo3s-=URkd-bgtCHoqVAP3CzV2XGgtkbO21h2f=6Q@mail.gmail.com>
 <f579952b4ad7fb3a6457224d49fc6af6.squirrel@webmail.tu-dortmund.de>
 <CAEXYVK6F2+h4XCCXDoihoQUi6arcutbPy5_YXi=y4ebYcKozww@mail.gmail.com>
Date: Thu, 9 Jan 2020 11:49:10 +0100
To: "Brian Padalino" <bpadalino@gmail.com>
User-Agent: SquirrelMail/1.4.23 [SVN]
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Subject: Re: [USRP-users] Building RFNoC Image with OOT Module on X310 -
 Module not found
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Felix Greiwe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: felix.greiwe@tu-dortmund.de
Cc: Usrp Liste <usrp-users@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Hi Brian,

thank you for the answer, with your help I was able to successfully build
an Image! One last question: Do I need to worry about all those critical
warnings that popped up during the build? Seems like a lot to me.

Example:

CRITICAL WARNING: [Vivado 12-1790] Evaluation License Warning: This design
contains one or more evaluation cores that will cease to function after a
certain period of time. This design should NOT be used in production
systems.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/input_[1].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/input_[0].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/input_[2].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/input_[3].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/input_[4].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/input_[2].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/input_[5].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/input_[6].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/input_[7].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/input_[1].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/input_[3].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/input_[4].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/input_[5].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/input_[6].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/input_[7].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/input_[8].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input_[2].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input_[1].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input_[3].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input_[4].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input_[5].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input_[6].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
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
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/ddr_byte_group_io/input_[2].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/ddr_byte_group_io/input_[1].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/ddr_byte_group_io/input_[3].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/ddr_byte_group_io/input_[4].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/ddr_byte_group_io/input_[5].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/ddr_byte_group_io/input_[6].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/ddr_byte_group_io/input_[7].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a clock
period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/ddr_byte_group_io/input_[8].iserdes_dq_.idelay_dq.idelaye2
has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.










Thank you and best regards, Felix

> On Wed, Jan 8, 2020 at 8:00 AM Felix Greiwe via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi EJ,
>>
>> thank you for your answer! To make my error more traceable, I created a
>> new OOT Module and added the default gain block from rfnoc getting
>> started.
>>
>> I also took your advice and looked at the uhd_image_builder.py script. I
>> noticed very strange behaviour, because my print statements suggested,
>> that the script did not include my makefile.srcs because it first edited
>> the path
>>
>> /home/lskt/rfnoc/src/rfnoc-blocks_lskt/ to
>> /home/lskt/rfnoc/src/rfnoc-blocks_lskt/rfnoc and a bit later to
>> /home/lskt/rfnoc/src/rfnoc-blocks_lskt/rfnoc/rfnoc/fpga-src/ .
>>
>> As you can see two rfnoc's here hence it did not find the makefile.src
>> in
>> ..../fpga-src. The changes (marked with fgr) in the create_oot_include
>> here seem to resolve the issue, hopefully helpful for other people too
>> and
>> maybe even a major bug?:
>>
>> def create_oot_include(device, include_dirs):
>>     """
>>     Create the include file for OOT RFNoC sources
>>     """
>>     oot_dir_list = []
>>     target_dir = device_dict(device.lower())
>>     dest_srcs_file = os.path.join(get_scriptpath(), '..', '..', 'top',\
>>             target_dir, 'Makefile.OOT.inc')
>>     incfile = open(dest_srcs_file, 'w')
>>     incfile.write(OOT_SRCS_FILE_HDR)
>>     if include_dirs is not None:
>>         for dirs in include_dirs:
>>             currpath = os.path.abspath(str(dirs))
>>             if os.path.isdir(currpath) & (os.path.basename(currpath) ==
>> "rfnoc"):
>>                 # Case 1: Pointed directly to rfnoc directory
>>                 oot_path = currpath
>>             elif os.path.isdir(os.path.join(currpath, 'rfnoc')):
>>                 # Case 2: Pointed to top level rfnoc module directory
>>                 oot_path = os.path.join(currpath, 'rfnoc')
>>             elif os.path.isfile(os.path.join(currpath, 'Makefile.inc')):
>>                 # Case 3: Pointed to a random directory with a
>> Makefile.inc
>>                 oot_path = currpath
>>             else:
>>                 print('No RFNoC module found at ' +
>> os.path.abspath(currpath))
>>                 continue
>>             if oot_path not in oot_dir_list:
>>                 oot_dir_list.append(oot_path)
>>                 named_path = os.path.join('$(BASE_DIR)',
>> get_relative_path(get_basedir(), oot_path))
>>                 incfile.write(OOT_DIR_TMPL.format(oot_dir=named_path))
>>                 if os.path.isfile(os.path.join(oot_path,
>> 'Makefile.inc')):
>>                     # Check for Makefile.inc
>>                     incfile.write(OOT_INC_TMPL)
>>                 elif os.path.isfile(os.path.join(oot_path, 'rfnoc',
>> 'Makefile.inc')):
>>                     # Check for Makefile.inc
>>                     incfile.write(OOT_INC_TMPL)
>>                 #elif os.path.isfile(os.path.join(oot_path, 'rfnoc',
>> 'fpga-src', 'Makefile.srcs')): # Original
>>                 elif os.path.isfile(os.path.join(oot_path, 'fpga-src',
>> 'Makefile.srcs')): # Anders fgr
>>                     # Legacy: Check for fpga-src/Makefile.srcs
>>                     # Read, then append to file
>>                     # curr_srcs = open(os.path.join(oot_path, 'rfnoc',
>> 'fpga-src', 'Makefile.srcs'), 'r').read() # Original
>>                     curr_srcs = open(os.path.join(oot_path, 'fpga-src',
>> 'Makefile.srcs'), 'r').read() # Anders fgr
>>                     # curr_srcs = curr_srcs.replace('SOURCES_PATH',
>> os.path.join(oot_path, 'rfnoc', 'fpga-src', '')) #
>> Original
>>                     curr_srcs = curr_srcs.replace('SOURCES_PATH',
>> os.path.join(oot_path, 'fpga-src', '')) # Anders fgr
>>                     print('Searching for Makefile.srcs: ' + curr_srcs)
>> #fgr
>>                     incfile.write(OOT_SRCS_TMPL.format(sources=curr_srcs))
>>                 else:
>>                     print('No valid makefile found at ' +
>> os.path.abspath(currpath))
>>                     continue
>>
>> However 30 minutes later in the build I got the next errror and again
>> have
>> no idea what to do. My command was:
>>
>> ./uhd_image_builder.py gain ddc fft -I
>> /home/lskt/rfnoc/src/rfnoc-blocks_lskt/ -d x310 -t X310_RFNOC_HG -m 6
>> --fill-with-fifos
>>
>> Using Vivado 2018.3 and UHD 3.15.0.0-124-geb448043
>>
>>
>> Erros are:
>>
>> ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_clk_gen/inst/CLK_OUT4
>> has multiple drivers: radio_clk_gen/inst/clkout1_buf/O, and
>> bus_clk_gen/inst/clkout4_buf/O.
>> ERROR: [DRC MDRV-1] Multiple Driver Nets: Net
>> radio_reset_sync/reset_double_sync/synchronizer_false_path/value[9]_9
>> has
>> multiple drivers:
>>
>> ce_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q,
>> and
>>
>> radio_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q.
>> ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not run.
>> ERROR: [Common 17-39] 'opt_design' failed due to earlier errors.
>> [00:24:46] Current task: DRC +++ Current Phase: Starting
>> [00:24:46] Current task: DRC +++ Current Phase: Finished
>> [00:24:46] Process terminated. Status: Failure
>>
>> ========================================================
>> Warnings:           1304
>> Critical Warnings:  40
>> Errors:             4
>>
>> Makefile.x300.inc:106: recipe for target 'bin' failed
>> make[1]: *** [bin] Error 1
>> make[1]: Verzeichnis ?/home/lskt/rfnoc/src/uhd-fpga/usrp3/top/x300? wird
>> verlassen
>> Makefile:112: recipe for target 'X310_RFNOC_HG' failed
>> make: *** [X310_RFNOC_HG] Error 2
>>
>>
>> Again, I would be very thankful for any advice, I refuse to give up :D
>>
>
> This was recently shown to be a reassignment of the ce_clk and ce_rst
> signals.  In your rfnoc_ce_auto_inst generated file, remove the lines that
> say:
>
>   wire ce_clk = radio_clk;
>   wire ce_rst = radio_rst;
>
> Then try to rebuild.
>
> You can remove those lines from being regenerated every time here:
>
>
> https://github.com/EttusResearch/fpga/blob/fde2a94eb7231af859653db8caaf777ae2b66199/usrp3/tools/scripts/uhd_image_builder.py#L44
>
> Brian
>



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
