Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 402B3B1AB20
	for <lists+usrp-users@lfdr.de>; Tue,  5 Aug 2025 00:57:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E57B53860B8
	for <lists+usrp-users@lfdr.de>; Mon,  4 Aug 2025 18:57:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754348259; bh=EhN+NIrnro69zqH/BBOvSkPLmXSxX2+ntV38QCDpbak=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SA3+d4Adgps/Itk5m49+c1F+LTyUzrT3ia6/UeSKJ90Rhn0mWYTXRlx/GtSavoBJx
	 ht72RCHxK4ZpSvsIKyhtSMgIWTzytKrNgutk5+OOLWIyU5p9EaC2AklvIrr/UDC/+4
	 K3lBnccFkCYosoffeHK6Z/1UxAQW+1+vX4k8Mol1HI2wH5DifLTkl2n+VJlENXBYbG
	 x+QMw4zgGDSLLgHvZNTz//arD4ZmQiBIG0ZDP2tl34+Iq5rTs2aeG/jKxl8gt3IE/S
	 DsDYjnnK6c817ABvAOkQ92bz2163GeyTc319gnAs/H1qA1WsC0sXTChMl1Q63AitvT
	 7926VTAzkSUOw==
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 4769E385CD6
	for <usrp-users@lists.ettus.com>; Mon,  4 Aug 2025 18:56:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MdmAuvXz";
	dkim-atps=neutral
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4589b3e3820so49728785e9.3
        for <usrp-users@lists.ettus.com>; Mon, 04 Aug 2025 15:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754348212; x=1754953012; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=afVPYSAp4jvXITfNw4d+0jpoXhpTDXpe7qopZX+qwSA=;
        b=MdmAuvXz6B1JE/MLZ1+i3EnJmU8pPoGQA1zD1HhMoWe99HJMIt1XVWVpbYU4mvcRLb
         pO3pfpGheB/v4C8k4WgYnq/+o72iW7GRvTgCYKqAJdiMEdipED3Q3jWf9MbW8F+d/pUf
         UNn0Oi4SjMrNMB0g8C1D5RIn2gVLxyFYTsaXGyhT7Xb4kSohKPPwesIgugZBtQwwHCy7
         O2ff1ZCJBYmAs05M0Xp3dUdmuofYAderjLSothqVIW3GR2HfvqoL6l/46I2xFwwvhvIW
         DFePMEFS+o+WlgQQgtDzaCBk3pzxUaJ7CzWtOaR8nKK18/sxH7W4SBWALwehW+JdUdso
         OWYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754348212; x=1754953012;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=afVPYSAp4jvXITfNw4d+0jpoXhpTDXpe7qopZX+qwSA=;
        b=R91EJQ0+K4/N0JpEaxRPdlY3HmdvsBBg8yT6RjTd5E1uIJcuGjrTDML4qS7EbNBHFu
         fXu43YvQRVpu/sODUE4xJ/i+huV6YUINS4JDZiZSZ9jNopiY/8nBTayHxn3XNtt6OJkY
         cT+7Iqctrn0W2rGfnr+zyeAzkcXqtWWjX+6ihikjCzn6dln6hoCQb3hdtPgbGq8E+UxY
         DCBMI18zSLgVHs9uF1FytK1qMRzFvH+qfdrbs2GXRl7OJAqEXpumBuNNI7iowC6q0qXT
         yF7mbVtY0loTaD9NmEtc8cmCi6iYTr3KTu8os2sDKKYGo/Bf4FtkF2XuXzYu98ROeQq4
         igqQ==
X-Gm-Message-State: AOJu0YwQUZVvw2DDopkYmEEmubhrghKo1s4RI8gIucN+YPH0vO8cqb4m
	Bt0FKnpCijHBdWDQ6giN2u+U5nfba4I3vwToO9nBM7QmAqzejsg+NF5+Ipqfa9j7VfYk/SNBMUH
	NTMsFqB0waeE6STY2yGOI7b5UCVF/S2mIPXbl
X-Gm-Gg: ASbGncuxMlcDivGF4Wv4UUTMjNYdHVK2OE+wZKNPaHykhsEciAuaebI2a//ZQfGwpMA
	3OPH5pWmPPIn55xtiPR0f1ZBIyR+DjbsriWzk9c0MM9uUsccN9cd55x/GLEBe4+Bl9DvMAE+byR
	YlyM0DWn/A/9xtu5+/kmj9Xcc+w+iYulRdr5nmgQSK1t3H/uON6li13RSIOuydgI776Q/fcPc4I
	Rbx0rC2POpGcdvtTw==
X-Google-Smtp-Source: AGHT+IGGm77C8LwBKSypysnJOxVHZsOhMNf0P2D0+jq7y/8wvqIWcd+yrhb80iXjAbkioigM+YexwWx0bQlYGM+AJOI=
X-Received: by 2002:a05:600c:a0b:b0:456:fd4:5322 with SMTP id
 5b1f17b1804b1-458b69dde9dmr79401315e9.11.1754348211518; Mon, 04 Aug 2025
 15:56:51 -0700 (PDT)
MIME-Version: 1.0
From: David <vitishlsfan21@gmail.com>
Date: Mon, 4 Aug 2025 15:56:40 -0700
X-Gm-Features: Ac12FXx485R_v3XHMFMLv-UU97BSWQH40BsGkc05VW2HXkkgal42My6P4O_l65M
Message-ID: <CAE=q3UN5HH7x1iWbLEGht5TNmFH_WVkBcERWBFsCHWBSQ-y2kA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: UBOOSLFX5UI2NMQZMR3KDHULVDZTR623
X-Message-ID-Hash: UBOOSLFX5UI2NMQZMR3KDHULVDZTR623
X-MailFrom: vitishlsfan21@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Adding Constraints to an RFNoC Block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UBOOSLFX5UI2NMQZMR3KDHULVDZTR623/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4223366928523097112=="

--===============4223366928523097112==
Content-Type: multipart/alternative; boundary="000000000000f5c15b063b9205bb"

--000000000000f5c15b063b9205bb
Content-Type: text/plain; charset="UTF-8"

Hello all,

I would like to be able to add constraints to a custom block in a
repeatable way. For some of my blocks that exist on different FPGA images,
this is required. By constraint, I really mean a false path set in an XDC
file.

What I have done is a brute force method where I set a false path in
timing.xdc to a single register in my block, using an absolute path to the
register. The problem with this is it's only valid for that specific image
and image structure.

I would like to add the constraints to a "block.xdc" file in the custom
block directory, and add the file to the Makefile.srcs. However, when
looking at the Makefile.x300.inc file, line 96 states:

# The XDC files must be read in a specific order, motherboard (TOP_SRCS)
first
# and then SFP (SFP_SERDES_SRCS) and DRAM (DRAM_SRCS).
DESIGN_SRCS = $(abspath $(FIFO_SRCS) \
$(CONTROL_LIB_SRCS) $(SDR_LIB_SRCS) $(SERDES_SRCS) \
$(SIMPLE_GEMAC_SRCS) $(TIMING_SRCS) $(COREGEN_DSP_SRCS) \
$(UDP_SRCS) $(EXTRAM_SRCS) \
$(ZPU_CORE_SRCS) $(WISHBONE_SRCS) \
$(IOPORT2_SRCS) \
$(PACKET_PROC_SRCS) $(DSP_SRCS) \
$(AXI_SRCS) $(AXI4S_SV_SRCS) $(CAP_GEN_GENERIC_SRCS) $(IP_XCI_SRCS)
$(BD_SRCS) \
$(LIB_IP_XCI_SRCS) \
$(RFNOC_FRAMEWORK_SRCS) $(RFNOC_SRCS) $(RFNOC_OOT_SRCS) \
$(RFNOC_XPORT_SV_SRCS) \
$(RFNOC_IMAGE_CORE_SRCS) \
$(TOP_SRCS) $(SFP_SERDES_SRCS) $(DRAM_SRCS) \
)

I take the "specific order" to mean that I must add the clock after the
$(DRAM_SRCS).

In my block Makefile.srcs, I am planning on making an RFNOC_OOT_TIMING_SRCS
variable, and then adding it after DRAM_SRCS.

Is this the correct method, or is there another method that I should follow?

Thanks,

David

--000000000000f5c15b063b9205bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I would like to b=
e able to add constraints to a custom block in a repeatable way. For some o=
f my blocks that exist on different FPGA images, this is required. By const=
raint, I really mean a false path set in an XDC file.</div><div><br></div><=
div>What I have done is a brute force method where I set a false path in ti=
ming.xdc to a single register in my block, using an absolute path to the re=
gister. The problem with this is it&#39;s only valid for that specific imag=
e and image structure.</div><div><br></div><div>I would like to add the con=
straints to a &quot;block.xdc&quot; file in the custom block directory, and=
 add the file to the Makefile.srcs. However, when looking at the Makefile.x=
300.inc file, line 96 states:</div><div><br></div><div># The XDC files must=
 be read in a specific order, motherboard (TOP_SRCS) first<br># and then SF=
P (SFP_SERDES_SRCS) and DRAM (DRAM_SRCS).<br>DESIGN_SRCS =3D $(abspath $(FI=
FO_SRCS) \<br>$(CONTROL_LIB_SRCS) $(SDR_LIB_SRCS) $(SERDES_SRCS) \<br>$(SIM=
PLE_GEMAC_SRCS) $(TIMING_SRCS) $(COREGEN_DSP_SRCS) \<br>$(UDP_SRCS) $(EXTRA=
M_SRCS) \<br>$(ZPU_CORE_SRCS) $(WISHBONE_SRCS) \<br>$(IOPORT2_SRCS) \<br>$(=
PACKET_PROC_SRCS) $(DSP_SRCS) \<br>$(AXI_SRCS) $(AXI4S_SV_SRCS) $(CAP_GEN_G=
ENERIC_SRCS) $(IP_XCI_SRCS) $(BD_SRCS) \<br>$(LIB_IP_XCI_SRCS) \<br>$(RFNOC=
_FRAMEWORK_SRCS) $(RFNOC_SRCS) $(RFNOC_OOT_SRCS) \<br>$(RFNOC_XPORT_SV_SRCS=
) \<br>$(RFNOC_IMAGE_CORE_SRCS) \<br>$(TOP_SRCS) $(SFP_SERDES_SRCS) $(DRAM_=
SRCS) \<br>)</div><div><br></div><div>I take the &quot;specific order&quot;=
 to mean that I must add the clock after the $(DRAM_SRCS).=C2=A0</div><div>=
<br></div><div>In my block Makefile.srcs, I am planning on making an RFNOC_=
OOT_TIMING_SRCS variable, and then adding it after DRAM_SRCS.</div><div><br=
></div><div>Is this the correct method, or is there another method that I s=
hould follow?</div><div><br></div><div>Thanks,</div><div><br></div><div>Dav=
id</div></div>

--000000000000f5c15b063b9205bb--

--===============4223366928523097112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4223366928523097112==--
