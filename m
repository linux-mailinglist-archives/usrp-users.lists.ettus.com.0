Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 909F3779E6E
	for <lists+usrp-users@lfdr.de>; Sat, 12 Aug 2023 11:13:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31DFA383D15
	for <lists+usrp-users@lfdr.de>; Sat, 12 Aug 2023 05:13:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691831611; bh=q1RozonB5SoJ6jhcGDiDYZIK8J12uuzea2zAOVOCvKQ=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xZrx0UO3o+TUC2AvLUb4ILiXpHAIaVpIfXMqOdchgvQR15qBYoFvkKywELEpImYf7
	 ekNzMb3UMuRZEdwEdh5TP6LyQMGqV6qJmwgUHnE5iKyY/GfCXxC9SFVFF295BhMYmT
	 zOg2c4I5eZVPAlWXUIOwmg3sAhxOhotsjn7RvVujXjwLsTtlQTLjHSaIGibYmniVa2
	 wSF1OPrIAIA1T3X82XwVPflVOGzgaqFBLjQU5FBuMPwZhvpok5HyaqdNi64CpFBZSR
	 5TYevF4o3+kDtj7ud0QR9tgK9A7FLGbDgP1etps9JUyrjnmOlX6LTFcNq26lZMw3Yt
	 cVlEXC3eIuGEA==
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	by mm2.emwd.com (Postfix) with ESMTPS id C11B0380C3D
	for <usrp-users@lists.ettus.com>; Sat, 12 Aug 2023 05:13:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oaIpQZKI";
	dkim-atps=neutral
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-487d9017250so116089e0c.0
        for <usrp-users@lists.ettus.com>; Sat, 12 Aug 2023 02:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691831598; x=1692436398;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GL1lrQpY+l9LIFefoW5hUEc9mZURpci6mMiJy3QX3bQ=;
        b=oaIpQZKI7uM40OmKGi2brmORQEuOQGSTYP9vOXkNMeyB8LzbLAPxHLFTKdjun2Bm3B
         e3GrNJMqeL0jHmKjWGK84+kR8T4DHWgcch+97/2vuTatFJ5g6/KMAG8Z9+14RnsJLJx4
         67vKoqhluHJw5z6ocDOtjKbPnja5esdOph6jzymCHV/RrujcCYaYq01Ko3GjesG7gwOM
         8ssceyVIPsXtvBIPCBsQo9bkk9AGCJa9d9ZLi1JOo1aT4AGpIX+2qZZoOrisWFZhm4JQ
         D9AWmCzrZZ44pEv94HLpiK2qvov6cLppSvfuWu0HvgvtUB5ZQsHUIe9oNXwayT8dRCw8
         f5+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691831598; x=1692436398;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GL1lrQpY+l9LIFefoW5hUEc9mZURpci6mMiJy3QX3bQ=;
        b=N+Nwq/G+c3xzZhYQTc/vHmo7A8wn934ebujgy6oCARpvv8ifIe/GPLfI/LQMJap4+V
         fpY603hjFb1Xhma9D6Hbpn/+mP0XEmwCJK9zgsDjhMI/JwKcIyWFIzVBMHxldMbFvbt7
         ubae+f9OHK/GSvd5zjDQ3lKCDWVNBfHq9o4VNSasC+oKDUo2fP4DgzDI2i4OVFO5Zqrl
         tt2d9StNBrx+qAdvw1MGQC5NSwX3GHvDgahQa/lbUSu64QComxWRB7YchHlJhiktY2Nw
         DwopCn61uZfatwh/bTiM82Y1Ro5rNtEaxHvlpgvS0KA9ajQZYFNxQvHb4jxSBMQiQ/Ut
         VaCg==
X-Gm-Message-State: AOJu0YxrTuIGdd9rcut1GirGRLoL+Vmy1DeBc/z9IV4mesjc7g8p5m42
	pYaZpsReqj1Je9DvJHouE5D4Z7w4ph3s4ucQZi0EFsSRWhB6h9x2
X-Google-Smtp-Source: AGHT+IG8X6PfTBi2WhoqyuWA6O5kbYPza42uS8dusnPXpjTh3LmUHR6vSLlps50aJtJmnbBOIt4tPC3m9nI9HkWDcFo=
X-Received: by 2002:a1f:e246:0:b0:47e:8a9:478c with SMTP id
 z67-20020a1fe246000000b0047e08a9478cmr4505594vkg.16.1691831597559; Sat, 12
 Aug 2023 02:13:17 -0700 (PDT)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Sat, 12 Aug 2023 13:43:06 +0430
Message-ID: <CAA=S3Pu3D7FG5tg-4Ag5Q6zzLuy99CN47E7b6cHRqDRF7c8rbg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: GWP4BFS5LFVPAWKSDMPNTT56OMHC5SK2
X-Message-ID-Hash: GWP4BFS5LFVPAWKSDMPNTT56OMHC5SK2
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How can add some verilog dir file to rfnoc block make file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GWP4BFS5LFVPAWKSDMPNTT56OMHC5SK2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3020063638878426306=="

--===============3020063638878426306==
Content-Type: multipart/alternative; boundary="0000000000006475cc0602b63d9a"

--0000000000006475cc0602b63d9a
Content-Type: text/plain; charset="UTF-8"

I want to use sine ton verilog file in my rfnoc block file, How Can add
sine tone file and ... to my rfnoc block
how can solve my problems? my Verilog file are in this
path uhd-4.1.0.5/fpga/usrp3/lib/rfnoc
Thanks in advance

RROR: [VRFC 10-2063] Module <sine_tone> not found while processing module
instance <sine_tone_i>
[/home/sp/rfnoc-test/rfnoc/fpga/rfnoc_block_gain/correlate.v:132]
ERROR: [VRFC 10-2063] Module <rng> not found while processing module
instance <rng_i>
[/home/sp/rfnoc-test/rfnoc/fpga/rfnoc_block_gain/correlate.v:164]


#-------------------------------------------------
# Top-of-Makefile
#-------------------------------------------------
# Define BASE_DIR to point to the "top" dir. Note:
# UHD_FPGA_DIR must be passed into this Makefile.
ifndef UHD_FPGA_DIR
$(error "UHD_FPGA_DIR is not set! Must point to UHD FPGA repository!")
endif
BASE_DIR = $(UHD_FPGA_DIR)/usrp3/top
# Include viv_sim_preample after defining BASE_DIR
include $(BASE_DIR)/../tools/make/viv_sim_preamble.mak

#-------------------------------------------------
# Design Specific
#-------------------------------------------------
# Include makefiles and sources for the DUT and its
# dependencies.
include $(BASE_DIR)/../lib/rfnoc/core/Makefile.srcs
include $(BASE_DIR)/../lib/rfnoc/utils/Makefile.srcs
include Makefile.srcs

DESIGN_SRCS += $(abspath $(RFNOC_CORE_SRCS) $(RFNOC_UTIL_SRCS)
$(RFNOC_OOT_SRCS)  )

#-------------------------------------------------
# Testbench Specific
#-------------------------------------------------
SIM_TOP = rfnoc_block_gain_tb
SIM_SRCS = $(abspath rfnoc_block_gain_tb.sv)
#-------------------------------------------------
# Bottom-of-Makefile
#-------------------------------------------------
# Include all simulator specific makefiles here
# Each should define a unique target to simulate
# e.g. xsim, vsim, etc and a common "clean" target
include $(BASE_DIR)/../tools/make/viv_simulator.mak

--0000000000006475cc0602b63d9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I want to use sine ton verilog file in my rfnoc block file=
, How Can add sine tone file and ... to my rfnoc block=C2=A0<div>how can so=
lve my problems? my Verilog file are in this path=C2=A0uhd-4.1.0.5/fpga/usr=
p3/lib/rfnoc<br><div>Thanks in advance</div><div><br></div><div>RROR: [VRFC=
 10-2063] Module &lt;sine_tone&gt; not found while processing module instan=
ce &lt;sine_tone_i&gt; [/home/sp/rfnoc-test/rfnoc/fpga/rfnoc_block_gain/cor=
relate.v:132]<br>ERROR: [VRFC 10-2063] Module &lt;rng&gt; not found while p=
rocessing module instance &lt;rng_i&gt; [/home/sp/rfnoc-test/rfnoc/fpga/rfn=
oc_block_gain/correlate.v:164]<br></div><div><br></div><div><br>#----------=
---------------------------------------<br># Top-of-Makefile<br>#----------=
---------------------------------------<br># Define BASE_DIR to point to th=
e &quot;top&quot; dir. Note:<br># UHD_FPGA_DIR must be passed into this Mak=
efile.<br>ifndef UHD_FPGA_DIR<br>$(error &quot;UHD_FPGA_DIR is not set! Mus=
t point to UHD FPGA repository!&quot;)<br>endif<br>BASE_DIR =3D $(UHD_FPGA_=
DIR)/usrp3/top<br># Include viv_sim_preample after defining BASE_DIR<br>inc=
lude $(BASE_DIR)/../tools/make/viv_sim_preamble.mak<br><br>#---------------=
----------------------------------<br># Design Specific<br>#---------------=
----------------------------------<br># Include makefiles and sources for t=
he DUT and its<br># dependencies.<br>include $(BASE_DIR)/../lib/rfnoc/core/=
Makefile.srcs<br>include $(BASE_DIR)/../lib/rfnoc/utils/Makefile.srcs<br>in=
clude Makefile.srcs<br><br>DESIGN_SRCS +=3D $(abspath $(RFNOC_CORE_SRCS) $(=
RFNOC_UTIL_SRCS) $(RFNOC_OOT_SRCS) =C2=A0)<br><br>#------------------------=
-------------------------<br># Testbench Specific<br>#---------------------=
----------------------------<br>SIM_TOP =3D rfnoc_block_gain_tb<br>SIM_SRCS=
 =3D $(abspath <a href=3D"http://rfnoc_block_gain_tb.sv">rfnoc_block_gain_t=
b.sv</a>) <br>#-------------------------------------------------<br># Botto=
m-of-Makefile<br>#-------------------------------------------------<br># In=
clude all simulator specific makefiles here<br># Each should define a uniqu=
e target to simulate<br># e.g. xsim, vsim, etc and a common &quot;clean&quo=
t; target<br>include $(BASE_DIR)/../tools/make/viv_simulator.mak<br></div><=
/div></div>

--0000000000006475cc0602b63d9a--

--===============3020063638878426306==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3020063638878426306==--
