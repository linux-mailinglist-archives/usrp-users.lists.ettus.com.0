Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FC35F5219
	for <lists+usrp-users@lfdr.de>; Wed,  5 Oct 2022 11:55:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ADD2B380FA5
	for <lists+usrp-users@lfdr.de>; Wed,  5 Oct 2022 05:55:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664963711; bh=GgiJHbsFiBX3eYeCAJrUDS32cWGROC+WL4BUtIirYOE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=en5RXbE9c8SQoFpmcqIuFTDNV5Wo0rEUzdsMcTmgacjANR9qOZR9IRbuhO17gDAh3
	 YLpkpstHnYf3zraCMoypiPcBtgMSJIaKmvMaXH1Qa3AwiULo2GkU7rZV3rDjQsjIHk
	 YYBgK5L+/o3QeHyZxKsrXEZG97hOj0vtqXUKXKneTdmYr3QqhVH2Vt5/aVSVe7zHhF
	 A700rjqTSCoEde4wIIPnjsAjXGUf9g1px3XY5fLVCu2z6DXpTf24AtxGvN1eC8+KSU
	 JLlYO0srOK6qLaRXBL/pA1qm0rlImorADSLA0Fa7v98byLcIlrRvIT/c9U5O22vAko
	 lOyG+dmyS1LDg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A50AE380A55
	for <usrp-users@lists.ettus.com>; Wed,  5 Oct 2022 05:53:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664963611; bh=UeBXJ8yDR1cwrIbq1g2m+phdH6rzSPJJx/rKti4++OM=;
	h=Date:To:From:Subject:From;
	b=QUXd+W6txfuABHdrJqsIzozAz6CnjqgOhrvuPipF/o8fLd8Yzlt0ABAydU22x3cqa
	 eGwDwPC3+/Tw+VYpXxe5OfjglutHPOLxPZRrw1Vi8GTzK9QUa0xZcvHS5A2oWKfYBo
	 cPOJ3iXDJqZ+6FtDO1pOT8LFuycxc8TTjJhpFlBgi9JHI8xiSb58SHgexnpR/czHh3
	 oLYuqRIts+xgXB4sPHRCInvhjKcmD1UjtqBzFayTxvhcvweNJTlvQicbsVfCez/p2k
	 LnWnRS6pwC+ZR7SlIxL58nbEQ5kBE6VSyebiUqTUzTb8AQGwJP1TGmoxjcryOqyqs4
	 G/0OUMQd6y2QA==
Date: Wed, 5 Oct 2022 09:53:31 +0000
To: usrp-users@lists.ettus.com
From: adri96roll@gmail.com
Message-ID: <EbasC4jqL8NsjYCfvd0kGjD4BnqgJ2p9unBBxfQeXXo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 2C6DASS4ZWTJHAHAHFSX5GOFJGNDFSG2
X-Message-ID-Hash: 2C6DASS4ZWTJHAHAHFSX5GOFJGNDFSG2
X-MailFrom: adri96roll@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Synthesis of Xilinx IP in RFNOC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2C6DASS4ZWTJHAHAHFSX5GOFJGNDFSG2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6038000767257687949=="

This is a multi-part message in MIME format.

--===============6038000767257687949==
Content-Type: multipart/alternative;
 boundary="b1_EbasC4jqL8NsjYCfvd0kGjD4BnqgJ2p9unBBxfQeXXo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_EbasC4jqL8NsjYCfvd0kGjD4BnqgJ2p9unBBxfQeXXo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi every one!

I=C2=B4m facing some problems to synthesize a proyect that has a Xilinx I=
P, a FIFO Generator. I=C2=B4ve been following this example but it didnt w=
ork.

https://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-exam=
ple

The synthesis return me this:

'fifo_generator_0' has undefined contents and is considered a black box. =
 The contents of this cell must be defined for opt_design to complete suc=
cessfully.

These are the modifications I have made:

In rfnoc/fpga, i added the folder ip/fifo_generator_0 with the next Makef=
ile.inc

`include $(TOOLS_DIR)/make/viv_ip_builder.mak`

`LIB_IP_FIFO_GENERATOR_SRCS =3D $(addprefix $(IP_BUILD_DIR)/fifo_generato=
r_0/, \`

`fifo_generator_0.xci \`

`synth/fifo_generator_0.vhd \`

`)`

`.INTERMEDIATE: LIB_FIFO_GENERATOR_TRGT`

`$(LIB_IP_FIFO_GENERATOR_SRCS): LIB_IP_FIFO_GENERATOR_TRGT`

`	@:`

`LIB_IP_FIFO_GENERATOR_TRGT: $(OOT_FPGA_DIR)/ip/fifo_generator_0/fifo_gen=
erator_0.xci`

`	$(call BUILD_VIVADO_IP,fifo_generator_0,$(ARCH),$(PART_ID),$(OOT_FPGA_D=
IR)/ip,$(IP_BUILD_DIR),0`)

and in the Makefile.src of rfnoc/fpga i added:

`include $(OOT_FPGA_DIR)/ip/fifo_generator_0/Makefile.inc`

`LIB_IP_XCI_SRCS +=3D $(LIB_IP_FIFO_GENERATOR_SRCS)`

In the Makefile of my rfnoc, i added these lines:

`OOT_FPGA_DIR =3D $(dir $(abspath $(firstword $(MAKEFILE_LIST))))/../`

`include $(OOT_FPGA_DIR)/ip/fifo_generator_0/Makefile.inc`

Finally, I have made sure that Makefile.e320.inx had LIB_IP_XCI_SRCS.

How can i solve it?

Kind Regards

Adr=C3=ADan

--b1_EbasC4jqL8NsjYCfvd0kGjD4BnqgJ2p9unBBxfQeXXo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi every one!</p><p><br></p><p>I=C2=B4m facing some problems to synthesi=
ze a proyect that has a Xilinx IP, a FIFO Generator. I=C2=B4ve been followi=
ng this example but it didnt work.</p><p>https://github.com/EttusResearch/u=
hd/tree/master/host/examples/rfnoc-example</p><p>The synthesis return me th=
is:</p><p>'fifo_generator_0' has undefined contents and is considered a bla=
ck box.  The contents of this cell must be defined for opt_design to comple=
te successfully.</p><p><br></p><p>These are the modifications I have made:<=
/p><p>In rfnoc/fpga, i added the folder ip/fifo_generator_0 with the next M=
akefile.inc</p><p><code>include $(TOOLS_DIR)/make/viv_ip_builder.mak</code>=
</p><p><code>LIB_IP_FIFO_GENERATOR_SRCS =3D $(addprefix $(IP_BUILD_DIR)/fif=
o_generator_0/, \</code></p><p><code>fifo_generator_0.xci \</code></p><p><c=
ode>synth/fifo_generator_0.vhd \</code></p><p><code>)</code></p><p><code>.I=
NTERMEDIATE: LIB_FIFO_GENERATOR_TRGT</code></p><p><code>$(LIB_IP_FIFO_GENER=
ATOR_SRCS): LIB_IP_FIFO_GENERATOR_TRGT</code></p><p><code>=09@:</code></p><=
p><code>LIB_IP_FIFO_GENERATOR_TRGT: $(OOT_FPGA_DIR)/ip/fifo_generator_0/fif=
o_generator_0.xci</code></p><p><code>=09$(call BUILD_VIVADO_IP,fifo_generat=
or_0,$(ARCH),$(PART_ID),$(OOT_FPGA_DIR)/ip,$(IP_BUILD_DIR),0</code>)</p><p>=
and in the Makefile.src of rfnoc/fpga i added:</p><p><code>include $(OOT_FP=
GA_DIR)/ip/fifo_generator_0/Makefile.inc</code></p><p><code>LIB_IP_XCI_SRCS=
 +=3D $(LIB_IP_FIFO_GENERATOR_SRCS)</code></p><p>In the Makefile of my rfno=
c, i added these lines:</p><p><code>OOT_FPGA_DIR =3D $(dir $(abspath $(firs=
tword $(MAKEFILE_LIST))))/../</code></p><p><code>include $(OOT_FPGA_DIR)/ip=
/fifo_generator_0/Makefile.inc</code></p><p>Finally, I have made sure that =
Makefile.e320.inx had LIB_IP_XCI_SRCS.</p><p><br></p><p>How can i solve it?=
</p><p><br></p><p>Kind Regards</p><p><br></p><p>Adr=C3=ADan</p><p><br></p><=
p><br></p>

--b1_EbasC4jqL8NsjYCfvd0kGjD4BnqgJ2p9unBBxfQeXXo--

--===============6038000767257687949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6038000767257687949==--
