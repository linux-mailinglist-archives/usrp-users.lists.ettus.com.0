Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAD1A35307
	for <lists+usrp-users@lfdr.de>; Fri, 14 Feb 2025 01:38:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 856FC386089
	for <lists+usrp-users@lfdr.de>; Thu, 13 Feb 2025 19:38:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739493498; bh=C5kqBOFbjcsV5jeGQ8W/uEnuSGFiJWLnC6msVdbE/QY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=N1vsIneou1RJW0Kh965fVszYzYiRTSLn57+38U8BHT91rPPRroKydQ3I2a9MA1YZ9
	 N2v8kqPjJJf+qnUU0NvJ8tQKgiE+bvn0nHGubEqIkESqsI0Th6xe6I1PoD/TO9SIAX
	 aJt2rFAZvDAfQjlUNreyCzSQ4n4GHQDfTSc0WdB12JPTy6bw0S1IvTc///YUxDic3Y
	 Y5lT7b+XDFhzeZtYjO43maIffHjzbZejsmb+Nn6f4EkD46EhpZELlCf5reriqkmHM9
	 jxUjUIOHbBENDvUfciEbYc9KVd4jcp3Locj2s2uDRPO/6YjKw1Y/cANf3ytltXmTKI
	 j14rqb5+8jPhQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3393D385ED6
	for <usrp-users@lists.ettus.com>; Thu, 13 Feb 2025 19:37:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739493463; bh=z+Ki+MmvAQaPJ6vo0sNEwDrVme1SVe8dthcnz24QWNo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=wyiiMPU4m/5WX5EGLEyZhfYI3oGHISGX/ZP32FXbE/9MIwjNDFgatbtsjUqWOAORh
	 OuZie2FeCuwBTvUfQywY54DSbm/cdel96vgD1Mc5GjzugQq/OI3xR0K7NRdG9xUfbd
	 4HwpAm53vHgQ4CB2HTlK1L3nZazeqyIIT1P/rGkaS3JO6pcllKTLTe2gATxdS0CaXs
	 fquwOE6NASdXwmhVd7BdLZm7czSzrS9Qa85PF8LNI7Vhj7vZO+9L08BgS2+qi0MS3r
	 bJiPzxfp30ZIW+I7uaKvN1sDrauCCgP0vb90HDg26x096miMHBFlWGaXEIsQV8DEZY
	 5621JGAgiPOsg==
Date: Fri, 14 Feb 2025 00:37:43 +0000
To: usrp-users@lists.ettus.com
From: dhpanchaai@gmail.com
Message-ID: <j3sSdw4i4MYWjBkne9fCIr3I21OA4IvuSeD9FjaZ1G4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: d2eZcwxcAynWrQ9mqE0j6G7NNDCqHn18ElPGqsyoNTU@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 3YELILG5QZFS3GZC6KV5IDEXKEP5YNZ4
X-Message-ID-Hash: 3YELILG5QZFS3GZC6KV5IDEXKEP5YNZ4
X-MailFrom: dhpanchaai@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Build custom fpga image for x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3YELILG5QZFS3GZC6KV5IDEXKEP5YNZ4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6198590943363460231=="

This is a multi-part message in MIME format.

--===============6198590943363460231==
Content-Type: multipart/alternative;
 boundary="b1_j3sSdw4i4MYWjBkne9fCIr3I21OA4IvuSeD9FjaZ1G4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_j3sSdw4i4MYWjBkne9fCIr3I21OA4IvuSeD9FjaZ1G4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi, thanks for the reply. I=E2=80=99m using UHD 4.7. I ran the following =
and it worked fine:\
\
$ source ../setupenv.sh  --vivado-path=3D/opt/tools/Xilinx/Vivado/

Setting up a 64-bit FPGA build environment for the USRP-X4xx...

\- Vivado: Found (/opt/tools/Xilinx/Vivado//2021.1/bin)

          Installed version is Vivado v2021.1_AR76780 (64-bit)

Environment successfully initialized.\
\
However, from there, I ran rfsoc_image_builder:\
\
\
$ rfnoc_image_builder -y x410_CG_400_rfnoc_image_core.yml -t x410_CG_400 =
--vivado-path /opt/tools/Xilinx/Vivado/

Using FPGA directory /home/computer/uhd/fpga

Selected device: x410

Launching build with the following settings:

 \* FPGA Directory: /home/computer/uhd/fpga/usrp3/top/x400

 \* Build Artifacts Directory: /home/computer/uhd/fpga/usrp3/top/x400/bui=
ld-usrp_x410_fpga_CG_400

 \* Build Output Directory: /home/computer/uhd/fpga/usrp3/top/x400/build

 \* Build IP Directory: /home/computer/uhd/fpga/usrp3/top/x400/build-ip

Executing the following command: /bin/bash -c ". ./setupenv.sh --vivado-p=
ath=3D/opt/tools/Xilinx/Vivado/ && make x410_CG_400 BUILD_DIR=3D/home/com=
puter/uhd/fpga/usrp3/top/x400/build-usrp_x410_fpga_CG_400 IMAGE_CORE_NAME=
=3Dusrp_x410_fpga_CG_400"

Setting up a 64-bit FPGA build environment for the USRP-X4xx...

\- Vivado: Found (/opt/tools/Xilinx/Vivado//2021.1/bin)

          Installed version is Vivado v2021.1_AR76780 (64-bit)

Environment successfully initialized.

make: \*\*\* No rule to make target 'x410_CG_400'.  Stop.\
\
I=E2=80=99m guessing its supposed to make the .bit file but not able to. =
I also tried running the Makefile.inc in the build folder (make -f Makefi=
le.inc)\
$ make -f Makefile.inc=20

make: \*\*\* No targets.  Stop.\
\
This is what it looks like:\
LIB_DIR :=3D $(HOME)/uhd/fpga/usrp3/lib

include $(LIB_DIR)/rfnoc/blocks/rfnoc_block_radio/Makefile.srcs

include $(LIB_DIR)/hwutils/Makefile.srcs

include $(LIB_DIR)/rfnoc/transport_adapters/rfnoc_ta_x4xx_eth/Makefile.sr=
cs

include $(LIB_DIR)/rfnoc/transport_adapters/rfnoc_ta_chdr_dma/Makefile.sr=
cs

RFNOC_XDC_SRCS =3D \\

constraints/pins/qsfp0_0.xdc \\

constraints/pins/qsfp0_1.xdc \\

constraints/pins/qsfp0_2.xdc \\

constraints/pins/qsfp0_3.xdc \\

constraints/pins/qsfp1_0.xdc \\

constraints/pins/qsfp1_1.xdc \\

constraints/pins/qsfp1_2.xdc \\

constraints/pins/qsfp1_3.xdc \\

RFNOC_IMAGE_CORE_SRCS +=3D $(abspath \\

$(BUILD_DIR)/rfnoc_image_core.sv \\

$(RFNOC_CORE_HEADERS) \\

$(RFNOC_BLOCK_RADIO_SRCS) \\

$(HWUTILS_SRCS) \\

$(RFNOC_TA_X4XX_ETH_SRCS) \\

$(RFNOC_TA_CHDR_DMA_SRCS) \\

)

RFNOC_IMAGE_CORE_DEFS =3D RF_BW=3D400 RF_CORE_400M=3D1 DRAM_BANKS=3D0 DRA=
M_CH=3D0 DRAM_W=3D64 QSFP0_0=3D5 QSFP0_1=3D0 QSFP0_2=3D0 QSFP0_3=3D0 QSFP=
1_0=3D5 QSFP1_1=3D0 QSFP1_2=3D0 QSFP1_3=3D0\
\
\
Any idea what the issue is?

--b1_j3sSdw4i4MYWjBkne9fCIr3I21OA4IvuSeD9FjaZ1G4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi, thanks for the reply. I=E2=80=99m using UHD 4.7. I ran the following=
 and it worked fine:<br><br>$ source ../setupenv.sh  --vivado-path=3D/opt/t=
ools/Xilinx/Vivado/</p><p>Setting up a 64-bit FPGA build environment for th=
e USRP-X4xx...</p><p>- Vivado: Found (/opt/tools/Xilinx/Vivado//2021.1/bin)=
</p><p>          Installed version is Vivado v2021.1_AR76780 (64-bit)</p><p=
>Environment successfully initialized.<br><br>However, from there, I ran rf=
soc_image_builder:<br><br><br>$ rfnoc_image_builder -y x410_CG_400_rfnoc_im=
age_core.yml -t x410_CG_400 --vivado-path /opt/tools/Xilinx/Vivado/</p><p>U=
sing FPGA directory /home/computer/uhd/fpga</p><p>Selected device: x410</p>=
<p>Launching build with the following settings:</p><p> * FPGA Directory: /h=
ome/computer/uhd/fpga/usrp3/top/x400</p><p> * Build Artifacts Directory: /h=
ome/computer/uhd/fpga/usrp3/top/x400/build-usrp_x410_fpga_CG_400</p><p> * B=
uild Output Directory: /home/computer/uhd/fpga/usrp3/top/x400/build</p><p> =
* Build IP Directory: /home/computer/uhd/fpga/usrp3/top/x400/build-ip</p><p=
>Executing the following command: /bin/bash -c ". ./setupenv.sh --vivado-pa=
th=3D/opt/tools/Xilinx/Vivado/ &amp;&amp; make x410_CG_400 BUILD_DIR=3D/hom=
e/computer/uhd/fpga/usrp3/top/x400/build-usrp_x410_fpga_CG_400 IMAGE_CORE_N=
AME=3Dusrp_x410_fpga_CG_400"</p><p>Setting up a 64-bit FPGA build environme=
nt for the USRP-X4xx...</p><p>- Vivado: Found (/opt/tools/Xilinx/Vivado//20=
21.1/bin)</p><p>          Installed version is Vivado v2021.1_AR76780 (64-b=
it)</p><p>Environment successfully initialized.</p><p>make: *** No rule to =
make target 'x410_CG_400'.  Stop.<br><br>I=E2=80=99m guessing its supposed =
to make the .bit file but not able to. I also tried running the Makefile.in=
c in the build folder (make -f Makefile.inc)<br>$ make -f Makefile.inc </p>=
<p>make: *** No targets.  Stop.<br><br>This is what it looks like:<br>LIB_D=
IR :=3D $(HOME)/uhd/fpga/usrp3/lib</p><p>include $(LIB_DIR)/rfnoc/blocks/rf=
noc_block_radio/Makefile.srcs</p><p>include $(LIB_DIR)/hwutils/Makefile.src=
s</p><p>include $(LIB_DIR)/rfnoc/transport_adapters/rfnoc_ta_x4xx_eth/Makef=
ile.srcs</p><p>include $(LIB_DIR)/rfnoc/transport_adapters/rfnoc_ta_chdr_dm=
a/Makefile.srcs</p><p>RFNOC_XDC_SRCS =3D \</p><p>constraints/pins/qsfp0_0.x=
dc \</p><p>constraints/pins/qsfp0_1.xdc \</p><p>constraints/pins/qsfp0_2.xd=
c \</p><p>constraints/pins/qsfp0_3.xdc \</p><p>constraints/pins/qsfp1_0.xdc=
 \</p><p>constraints/pins/qsfp1_1.xdc \</p><p>constraints/pins/qsfp1_2.xdc =
\</p><p>constraints/pins/qsfp1_3.xdc \</p><p>RFNOC_IMAGE_CORE_SRCS +=3D $(a=
bspath \</p><p>$(BUILD_DIR)/rfnoc_image_core.sv \</p><p>$(RFNOC_CORE_HEADER=
S) \</p><p>$(RFNOC_BLOCK_RADIO_SRCS) \</p><p>$(HWUTILS_SRCS) \</p><p>$(RFNO=
C_TA_X4XX_ETH_SRCS) \</p><p>$(RFNOC_TA_CHDR_DMA_SRCS) \</p><p>)</p><p>RFNOC=
_IMAGE_CORE_DEFS =3D RF_BW=3D400 RF_CORE_400M=3D1 DRAM_BANKS=3D0 DRAM_CH=3D=
0 DRAM_W=3D64 QSFP0_0=3D5 QSFP0_1=3D0 QSFP0_2=3D0 QSFP0_3=3D0 QSFP1_0=3D5 Q=
SFP1_1=3D0 QSFP1_2=3D0 QSFP1_3=3D0<br><br><br>Any idea what the issue is?<b=
r><br></p>

--b1_j3sSdw4i4MYWjBkne9fCIr3I21OA4IvuSeD9FjaZ1G4--

--===============6198590943363460231==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6198590943363460231==--
