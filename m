Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B374B1D49E
	for <lists+usrp-users@lfdr.de>; Thu,  7 Aug 2025 11:16:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D47DE386115
	for <lists+usrp-users@lfdr.de>; Thu,  7 Aug 2025 05:16:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754558202; bh=B6zgOYB20dr6hyqIvZXgrMWdAF/ZRRvL2JoeiL+qoH8=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=q/+uje+l39rYtdZ2cvrYC8NldcocLzOk/jgVk2x2w7kXtQzf+LJ5AB7LfBAbXx5hO
	 HzWLjcHPCI19QB0eYUkuEOU6WEu4NS0fQj/ato1Ix0mmxj9ZkkUYInHQ4qxYuIz4V3
	 o2Mw/VDqn3rr2WEprgWZdVL88jWmDyNL+QY93XGfwU5Lr7lU+RDwSORGOeqWI7oyB4
	 4pfpcTR6ATMpQtvndJd25afbZfLuHitBwe0khOTEBz6srqiGV0a1p3Uhsdifwh/lAe
	 hHPcO2sFLGm0BURcTT6cnDvSwbm+YAJ/K42sDvPemUMtdsX9DxjRykUVtkSYuo4fsQ
	 fmhJF+U2N+izg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D9688385C6E
	for <usrp-users@lists.ettus.com>; Thu,  7 Aug 2025 05:16:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754558172; bh=YVY4xV1jLkfqDkbdugNWNG4gDHeV26mn64mdHuEw4PI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=SI78KJEuXM4VB5Fg9aZIgU7FtGRMGLKEmal/JDy5VZDaWE2Ogtcrv/c+X+tqiRP1K
	 7rD4Ad4Qwy+jMMiefaqURGMrczm/LRjd2HuE+QfgpV8ZXOMH/zt/0AFGQGr6RUFBYC
	 akvAchPf2Ycf0l4cAJtxP15X21wVXd+ynrKQG/sSYA02e081y6IlNrfmyAS70RZTKU
	 5ozPpH067Bi58Ir/h5im0x1whAjccOj8qtpJ6F1mgF8FK0bczN0UhefBaSUlGEBODK
	 GKP+Wp2Asg70JWXiZJZjiSJyAMWJ6x1eaUk6dWgIBQwYwHcS0FRPr56slI1fqgXp4K
	 o5SNbTrLespCg==
Date: Thu, 7 Aug 2025 09:16:12 +0000
To: usrp-users@lists.ettus.com
Message-ID: <21PpIjJqXU4VMUzg7fgWE0NoQujme7421kTgMZTZSo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAE=q3UN5HH7x1iWbLEGht5TNmFH_WVkBcERWBFsCHWBSQ-y2kA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 4PFHLDWPOGEI6H6MHL6DLW7XKJZQALGB
X-Message-ID-Hash: 4PFHLDWPOGEI6H6MHL6DLW7XKJZQALGB
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding Constraints to an RFNoC Block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4PFHLDWPOGEI6H6MHL6DLW7XKJZQALGB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============2581746282719932385=="

This is a multi-part message in MIME format.

--===============2581746282719932385==
Content-Type: multipart/alternative;
 boundary="b1_21PpIjJqXU4VMUzg7fgWE0NoQujme7421kTgMZTZSo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_21PpIjJqXU4VMUzg7fgWE0NoQujme7421kTgMZTZSo
Content-Type: text/plain; charset=us-ascii

Hi David,\
\
there is an option of adding contraints via the block description yaml file by specifying them in the constraints section.

For OOT blocks, you can find an example here on how this could be done:\
[Aurora OOT block description file](https://github.com/EttusResearch/rfnoc-oot-blocks/blob/main/rfnoc/blocks/aurora.yml#L54)\
\
Hope this helps.\
\
Regards,\
Niels

---

\
David wrote:

> Hello all,
>
> I would like to be able to add constraints to a custom block in a
> repeatable way. For some of my blocks that exist on different FPGA images,
> this is required. By constraint, I really mean a false path set in an XDC
> file.
>
> What I have done is a brute force method where I set a false path in
> timing.xdc to a single register in my block, using an absolute path to the
> register. The problem with this is it's only valid for that specific image
> and image structure.
>
> I would like to add the constraints to a "block.xdc" file in the custom
> block directory, and add the file to the Makefile.srcs. However, when
> looking at the Makefile.x300.inc file, line 96 states:
>
> # The XDC files must be read in a specific order, motherboard (TOP_SRCS)
>
> first
>
> # and then SFP (SFP_SERDES_SRCS) and DRAM (DRAM_SRCS).
>
> DESIGN_SRCS = $(abspath $(FIFO_SRCS) \
> $(CONTROL_LIB_SRCS) $(SDR_LIB_SRCS) $(SERDES_SRCS) \
> $(SIMPLE_GEMAC_SRCS) $(TIMING_SRCS) $(COREGEN_DSP_SRCS) \
> $(UDP_SRCS) $(EXTRAM_SRCS) \
> $(ZPU_CORE_SRCS) $(WISHBONE_SRCS) \
> $(IOPORT2_SRCS) \
> $(PACKET_PROC_SRCS) $(DSP_SRCS) \
> $(AXI_SRCS) $(AXI4S_SV_SRCS) $(CAP_GEN_GENERIC_SRCS) $(IP_XCI_SRCS)
> $(BD_SRCS) \
> $(LIB_IP_XCI_SRCS) \
> $(RFNOC_FRAMEWORK_SRCS) $(RFNOC_SRCS) $(RFNOC_OOT_SRCS) \
> $(RFNOC_XPORT_SV_SRCS) \
> $(RFNOC_IMAGE_CORE_SRCS) \
> $(TOP_SRCS) $(SFP_SERDES_SRCS) $(DRAM_SRCS) \
> )
>
> I take the "specific order" to mean that I must add the clock after the
> $(DRAM_SRCS).
>
> In my block Makefile.srcs, I am planning on making an RFNOC_OOT_TIMING_SRCS
> variable, and then adding it after DRAM_SRCS.
>
> Is this the correct method, or is there another method that I should follow?
>
> Thanks,
>
> David

--b1_21PpIjJqXU4VMUzg7fgWE0NoQujme7421kTgMZTZSo
Content-Type: text/html; charset=us-ascii

<p>Hi David,<br><br>there is an option of adding contraints via the block description yaml file by specifying them in the constraints section.</p><p>For OOT blocks, you can find an example here on how this could be done:<br><a href="https://github.com/EttusResearch/rfnoc-oot-blocks/blob/main/rfnoc/blocks/aurora.yml#L54" title="">Aurora OOT block description file</a><br><br>Hope this helps.<br><br>Regards,<br>Niels<br><br></p><div contenteditable="false"><hr></div><p><br>David wrote:</p><blockquote><p>Hello all,</p><p>I would like to be able to add constraints to a custom block in a
repeatable way. For some of my blocks that exist on different FPGA images,
this is required. By constraint, I really mean a false path set in an XDC
file.</p><p>What I have done is a brute force method where I set a false path in
timing.xdc to a single register in my block, using an absolute path to the
register. The problem with this is it's only valid for that specific image
and image structure.</p><p>I would like to add the constraints to a "block.xdc" file in the custom
block directory, and add the file to the Makefile.srcs. However, when
looking at the Makefile.x300.inc file, line 96 states:</p><h1>The XDC files must be read in a specific order, motherboard (TOP_SRCS)</h1><p>first</p><h1>and then SFP (SFP_SERDES_SRCS) and DRAM (DRAM_SRCS).</h1><p>DESIGN_SRCS = $(abspath $(FIFO_SRCS) <br>$(CONTROL_LIB_SRCS) $(SDR_LIB_SRCS) $(SERDES_SRCS) <br>$(SIMPLE_GEMAC_SRCS) $(TIMING_SRCS) $(COREGEN_DSP_SRCS) <br>$(UDP_SRCS) $(EXTRAM_SRCS) <br>$(ZPU_CORE_SRCS) $(WISHBONE_SRCS) <br>$(IOPORT2_SRCS) <br>$(PACKET_PROC_SRCS) $(DSP_SRCS) <br>$(AXI_SRCS) $(AXI4S_SV_SRCS) $(CAP_GEN_GENERIC_SRCS) $(IP_XCI_SRCS)
$(BD_SRCS) <br>$(LIB_IP_XCI_SRCS) <br>$(RFNOC_FRAMEWORK_SRCS) $(RFNOC_SRCS) $(RFNOC_OOT_SRCS) <br>$(RFNOC_XPORT_SV_SRCS) <br>$(RFNOC_IMAGE_CORE_SRCS) <br>$(TOP_SRCS) $(SFP_SERDES_SRCS) $(DRAM_SRCS) <br>)</p><p>I take the "specific order" to mean that I must add the clock after the
$(DRAM_SRCS).</p><p>In my block Makefile.srcs, I am planning on making an RFNOC_OOT_TIMING_SRCS
variable, and then adding it after DRAM_SRCS.</p><p>Is this the correct method, or is there another method that I should follow?</p><p>Thanks,</p><p>David</p></blockquote><p><br><br><br></p>


--b1_21PpIjJqXU4VMUzg7fgWE0NoQujme7421kTgMZTZSo--

--===============2581746282719932385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2581746282719932385==--
