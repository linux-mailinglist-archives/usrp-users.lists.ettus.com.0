Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 738FB80F557
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 19:17:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F99538093F
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 13:17:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702405027; bh=xz29lArBZPyR+yP7wf5det1lynll13AqUv88ezaxCoM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LpDVLf3ncZDwnYJEYCtQkisAQ1+F1cUHPPhZZwSnyoFSgVryVXOfuBuxx84FME1q5
	 Yy84W5VIIH43K8l42ljUdcmn7eRPdyK51d8BzFKfoX15kFzw7n7JJEYXicJGUS3fdF
	 iusNiK9a3A6B1HRyTALLpYpXDgwPJhY5roq7woD/sjadAfpT41BDvMol+mRypaSvkD
	 GyqexSbEMXE0d24P8NBvM7o1aeyTCwd/1c5QTI/qXOIe13CpD7+2x9HRqP7rW/3LgC
	 yTnViGezbp3WzI8+KZqqVpI/kaT1/TFmcllFNN1iJNAv003UOZCjO1kW0Sc7yKnb+w
	 9uXYqLS7rt/xw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51464384E02
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 13:14:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702404878; bh=9Re+NzhTeTlKsSq6he7pD/Y7QN7zZLe0wiG6gMFx8as=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=spshJ2DnHlql22VeVhYwrCc9HMAm6/OcnFsju4MIogApRXOqgdF1KwQR3bTL9GY+V
	 ng8KIwcnGJH5+MyKkWLWKWwAGsexbzQ0c0VKjKu1UjjkZUIoZq3BQX9SRgf2BWElQW
	 GHX5QlPlOIkcCK/YzMSIZPBCXL+cNdAL4VbOOqzl7yx90hlrYuZ5BezfGE/fxSy3s5
	 E2jTexEe5G4SMwYt4kYFtCjxepmRISI4FZJ7vYb80zwyf2ZOUoW5WrsJ8YDigemlg/
	 cdfecPmaqqIsVq/eclrXNrBDftg1S8NS05wpgHE+okU+f48Ci7XKm8xjwWjUyvwc9f
	 ZR0EVjpzfgDWg==
Date: Tue, 12 Dec 2023 18:14:38 +0000
To: usrp-users@lists.ettus.com
From: engr.muhd.hassan@gmail.com
Message-ID: <gvp0nSoADAY8jJTzHYmOXbHn844aDf9RcFjUvovoT8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8ddcb8f6-ceda-4759-aba8-0d3c2149c8d9@gmail.com
MIME-Version: 1.0
Message-ID-Hash: DRZ6BXQBBIWUGA6Q2OCLGK3FB7YTHV2I
X-Message-ID-Hash: DRZ6BXQBBIWUGA6Q2OCLGK3FB7YTHV2I
X-MailFrom: engr.muhd.hassan@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: No module named 'uhd'
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DRZ6BXQBBIWUGA6Q2OCLGK3FB7YTHV2I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8369131573300029336=="

This is a multi-part message in MIME format.

--===============8369131573300029336==
Content-Type: multipart/alternative;
 boundary="b1_gvp0nSoADAY8jJTzHYmOXbHn844aDf9RcFjUvovoT8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_gvp0nSoADAY8jJTzHYmOXbHn844aDf9RcFjUvovoT8
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Marcus,=20

Following is the complete terminal output

grcusrp@grcusrp-ThinkPad-T470:\~$ rfnoc_image_builder -y ./e310_rfnoc_image=
_core.yml

Traceback (most recent call last):

  File "/usr/local/bin/rfnoc_image_builder", line 228, in <module>

    sys.exit(main())

  File "/usr/local/bin/rfnoc_image_builder", line 204, in main

    config, source, device, image_core_name, target =3D image_config(args)

  File "/usr/local/bin/rfnoc_image_builder", line 123, in image_config

    config =3D yaml_utils.load_config(args.yaml_config, get_config_path())

  File "/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/yaml_utils.py=
", line 102, in load_config

    with open(config_file) as stream:

FileNotFoundError: \[Errno 2\] No such file or directory: './e310_rfnoc_ima=
ge_core.yml'

grcusrp@grcusrp-ThinkPad-T470:\~$ cd hud

bash: cd: hud: No such file or directory

grcusrp@grcusrp-ThinkPad-T470:\~$ cd uhd

grcusrp@grcusrp-ThinkPad-T470:\~/uhd$ cd fpga

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga$ cd usrp3

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3$ cd top

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3/top$ cd e31x

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3/top/e31x$ rfnoc_image_build=
er -y ./e310_rfnoc_image_core.yml

\[INF\] Using FPGA directory /home/grcusrp/uhd/fpga

\[INF\] Selected device e310

\[INF\] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.

\[INF\] Using e310_bsp.yml from /usr/local/share/uhd/rfnoc/core.

\[INF\] Adding block description from duc.yml (/usr/local/share/uhd/rfnoc/b=
locks).

\[INF\] Adding block description from split_stream.yml (/usr/local/share/uh=
d/rfnoc/blocks).

\[INF\] Adding block description from window.yml (/usr/local/share/uhd/rfno=
c/blocks).

\[INF\] Adding block description from vector_iir.yml (/usr/local/share/uhd/=
rfnoc/blocks).

\[INF\] Adding block description from addsub.yml (/usr/local/share/uhd/rfno=
c/blocks).

\[INF\] Adding block description from logpwr.yml (/usr/local/share/uhd/rfno=
c/blocks).

\[INF\] Adding block description from null_src_sink.yml (/usr/local/share/u=
hd/rfnoc/blocks).

\[INF\] Adding block description from fir_filter.yml (/usr/local/share/uhd/=
rfnoc/blocks).

\[INF\] Adding block description from ddc.yml (/usr/local/share/uhd/rfnoc/b=
locks).

\[INF\] Adding block description from moving_avg.yml (/usr/local/share/uhd/=
rfnoc/blocks).

\[INF\] Adding block description from fft_1x64.yml (/usr/local/share/uhd/rf=
noc/blocks).

\[INF\] Adding block description from keep_one_in_n.yml (/usr/local/share/u=
hd/rfnoc/blocks).

\[INF\] Adding block description from radio.yml (/usr/local/share/uhd/rfnoc=
/blocks).

\[INF\] Adding block description from switchboard.yml (/usr/local/share/uhd=
/rfnoc/blocks).

\[INF\] Adding block description from replay.yml (/usr/local/share/uhd/rfno=
c/blocks).

\[INF\] Adding block description from siggen.yml (/usr/local/share/uhd/rfno=
c/blocks).

\[INF\] Adding block description from axi_ram_fifo.yml (/usr/local/share/uh=
d/rfnoc/blocks).

\[INF\] Adding block description from fosphor.yml (/usr/local/share/uhd/rfn=
oc/blocks).

\[INF\] Plausibility checks on the current configuration

\[INF\] Writing static routing table to /home/grcusrp/uhd/fpga/usrp3/top/e3=
1x/e310_static_router.hex

\[INF\] Writing image core to /home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rf=
noc_image_core.v

\[INF\] Writing image core header to /home/grcusrp/uhd/fpga/usrp3/top/e31x/=
e310_rfnoc_image_core.vh

\[INF\] Launching build with the following settings:

\[INF\]  \* Build Directory: /home/grcusrp/uhd/fpga/usrp3/top/e31x

\[INF\]  \* Target: DRAM=3D1 E310_SG3

\[INF\]  \* Image Core File: /home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfn=
oc_image_core.v

\[INF\]  \* Edge Table File: /home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_sta=
tic_router.hex

Setting up a 64-bit FPGA build environment for the USRP-E31x...

\- Vivado: Found (/tools/Xilinx/Vivado/2021.1/bin)

          Installed version is Vivado v2021.1_AR76780 (64-bit)

Environment successfully initialized.

make -f Makefile.e31x.inc viv_ip    NAME=3DE310_SG3_IP ARCH=3Dzynq PART_ID=
=3Dxc7z020/clg484/-3 E310_SG3=3D1 TOP_MODULE=3De31x EXTRA_DEFS=3D"E310_SG3=
=3D1" DEFAULT_RFNOC_IMAGE_CORE_FILE=3De310_rfnoc_image_core.v DEFAULT_EDGE_=
FILE=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_static_router.hex

make\[1\]: Entering directory '/home/grcusrp/uhd/fpga/usrp3/top/e31x'

BUILDER: Checking tools...

\* GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)

\* Python 3.8.10

\* Vivado v2021.1_AR76780 (64-bit)

IP build for E310_SG3_IP DONE . . .

make\[1\]: Leaving directory '/home/grcusrp/uhd/fpga/usrp3/top/e31x'

make -f Makefile.e31x.inc bin NAME=3DE310_SG3 ARCH=3Dzynq PART_ID=3Dxc7z020=
/clg484/-3  E310_SG3=3D1 ENABLE_DRAM=3D1 TOP_MODULE=3De31x EXTRA_DEFS=3D" E=
310_SG3=3D1 ENABLE_DRAM=3D1" DEFAULT_RFNOC_IMAGE_CORE_FILE=3De310_rfnoc_ima=
ge_core.v DEFAULT_EDGE_FILE=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_st=
atic_router.hex

make\[1\]: Entering directory '/home/grcusrp/uhd/fpga/usrp3/top/e31x'

BUILDER: Checking tools...

\* GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)

\* Python 3.8.10

\* Vivado v2021.1_AR76780 (64-bit)

Could not read parser configuration from: /home/grcusrp/uhd/fpga/usrp3/top/=
e31x/dev_config.json

\[00:00:00\] Executing command: vivado -mode batch -source /home/grcusrp/uh=
d/fpga/usrp3/top/e31x/build_e31x.tcl -log build.log -journal e31x.jou

WARNING: \[filemgmt 56-12\] File '/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/bl=
ocks/rfnoc_block_replay/rfnoc_block_replay_regs.vh' cannot be added to the =
project because it already exists in the project, skipping this file

WARNING: \[filemgmt 56-12\] File '/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/bl=
ocks/rfnoc_block_replay/axis_replay.v' cannot be added to the project becau=
se it already exists in the project, skipping this file

WARNING: \[filemgmt 56-12\] File '/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/bl=
ocks/rfnoc_block_replay/noc_shell_replay.v' cannot be added to the project =
because it already exists in the project, skipping this file

WARNING: \[filemgmt 56-12\] File '/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/bl=
ocks/rfnoc_block_replay/rfnoc_block_replay.v' cannot be added to the projec=
t because it already exists in the project, skipping this file

\[00:00:16\] Current task: Initialization +++ Current Phase: Starting

\[00:00:16\] Current task: Initialization +++ Current Phase: Finished

\[00:00:16\] Executing Tcl: synth_design -top e31x -part xc7z020clg484-3 -v=
erilog_define E310_SG3=3D1 -verilog_define ENABLE_DRAM=3D1 -verilog_define =
GIT_HASH=3D32'hf5fac246 -verilog_define RFNOC_EDGE_TBL_FILE=3D/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/e310_static_router.hex -verilog_define RFNOC_IMAGE=
_CORE_HDR=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.vh =
-verilog_define UHD_FPGA_DIR=3D/home/grcusrp/uhd/fpga/usrp3/top/../..

\[00:00:16\] Starting Synthesis Command

WARNING: \[Synth 8-2507\] parameter declaration becomes local in cam_priori=
ty_encoder with formal parameter declaration list \[/home/grcusrp/uhd/fpga/=
usrp3/lib/control/map/cam_priority_encoder.v:46\]

WARNING: \[Synth 8-2507\] parameter declaration becomes local in cam_priori=
ty_encoder with formal parameter declaration list \[/home/grcusrp/uhd/fpga/=
usrp3/lib/control/map/cam_priority_encoder.v:47\]

WARNING: \[Synth 8-2507\] parameter declaration becomes local in axis_data_=
swap with formal parameter declaration list \[/home/grcusrp/uhd/fpga/usrp3/=
lib/axi/axis_data_swap.v:54\]

WARNING: \[Synth 8-2507\] parameter declaration becomes local in axis_data_=
swap with formal parameter declaration list \[/home/grcusrp/uhd/fpga/usrp3/=
lib/axi/axis_data_swap.v:55\]

WARNING: \[Synth 8-2507\] parameter declaration becomes local in dds_freq_t=
une_duc with formal parameter declaration list \[/home/grcusrp/uhd/fpga/usr=
p3/lib/rfnoc/dds_freq_tune_duc.v:128\]

WARNING: \[Synth 8-2507\] parameter declaration becomes local in axis_ctrl_=
crossbar_2d_mesh with formal parameter declaration list \[/home/grcusrp/uhd=
/fpga/usrp3/lib/rfnoc/crossbar/mesh_node_mapping.vh:7\]

WARNING: \[Synth 8-2507\] parameter declaration becomes local in torus_2d_d=
or_router_single_sw with formal parameter declaration list \[/home/grcusrp/=
uhd/fpga/usrp3/lib/rfnoc/crossbar/mesh_node_mapping.vh:7\]

WARNING: \[Synth 8-2507\] parameter declaration becomes local in mesh_2d_do=
r_router_single_sw with formal parameter declaration list \[/home/grcusrp/u=
hd/fpga/usrp3/lib/rfnoc/crossbar/mesh_node_mapping.vh:7\]

WARNING: \[Synth 8-7071\] port 'CLKFBOUT' of module 'PLLE2_ADV' is unconnec=
ted for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v=
:44\]

WARNING: \[Synth 8-7071\] port 'CLKOUT2' of module 'PLLE2_ADV' is unconnect=
ed for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:=
44\]

WARNING: \[Synth 8-7071\] port 'CLKOUT3' of module 'PLLE2_ADV' is unconnect=
ed for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:=
44\]

WARNING: \[Synth 8-7071\] port 'CLKOUT4' of module 'PLLE2_ADV' is unconnect=
ed for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:=
44\]

WARNING: \[Synth 8-7071\] port 'CLKOUT5' of module 'PLLE2_ADV' is unconnect=
ed for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:=
44\]

WARNING: \[Synth 8-7071\] port 'DO' of module 'PLLE2_ADV' is unconnected fo=
r instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44\]

WARNING: \[Synth 8-7071\] port 'DRDY' of module 'PLLE2_ADV' is unconnected =
for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44\=
]

WARNING: \[Synth 8-7071\] port 'CLKFBIN' of module 'PLLE2_ADV' is unconnect=
ed for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:=
44\]

WARNING: \[Synth 8-7071\] port 'CLKIN2' of module 'PLLE2_ADV' is unconnecte=
d for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:4=
4\]

WARNING: \[Synth 8-7071\] port 'CLKINSEL' of module 'PLLE2_ADV' is unconnec=
ted for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v=
:44\]

WARNING: \[Synth 8-7071\] port 'DADDR' of module 'PLLE2_ADV' is unconnected=
 for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44=
\]

WARNING: \[Synth 8-7071\] port 'DCLK' of module 'PLLE2_ADV' is unconnected =
for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44\=
]

WARNING: \[Synth 8-7071\] port 'DEN' of module 'PLLE2_ADV' is unconnected f=
or instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44\]

WARNING: \[Synth 8-7071\] port 'DI' of module 'PLLE2_ADV' is unconnected fo=
r instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44\]

WARNING: \[Synth 8-7071\] port 'DWE' of module 'PLLE2_ADV' is unconnected f=
or instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44\]

WARNING: \[Synth 8-7023\] instance 'clkgen' of module 'PLLE2_ADV' has 21 co=
nnections declared, but only 6 given \[/home/grcusrp/uhd/fpga/usrp3/top/e31=
x/ppsloop.v:44\]

WARNING: \[Synth 8-7071\] port 'reg_wr_keep' of module 'axil_regport_master=
' is unconnected for instance 'eth_dma_reg_mst_i' \[/home/grcusrp/uhd/fpga/=
usrp3/lib/rfnoc/xport/eth_internal.v:128\]

WARNING: \[Synth 8-7023\] instance 'eth_dma_reg_mst_i' of module 'axil_regp=
ort_master' has 28 connections declared, but only 27 given \[/home/grcusrp/=
uhd/fpga/usrp3/lib/rfnoc/xport/eth_internal.v:128\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst1' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst1' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-693\] zero replication count - replication ignored \[/ho=
me/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:77\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst2' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst2' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst1' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst1' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-693\] zero replication count - replication ignored \[/ho=
me/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:77\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst2' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst2' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst1' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst1' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-693\] zero replication count - replication ignored \[/ho=
me/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:77\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst2' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst2' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst1' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst1' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-693\] zero replication count - replication ignored \[/ho=
me/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:77\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst2' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst2' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst1' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst1' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-693\] zero replication count - replication ignored \[/ho=
me/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:77\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst2' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst2' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-689\] width (32) of port connection 's_axi_awaddr' does =
not match port width (14) of module 'eth_internal' \[/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e31x.v:440\]

WARNING: \[Synth 8-689\] width (32) of port connection 's_axi_araddr' does =
not match port width (14) of module 'eth_internal' \[/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e31x.v:453\]

WARNING: \[Synth 8-7071\] port 'm_axi_awprot' of module 'e31x_ps_bd_auto_cc=
_2' is unconnected for instance 'auto_cc' \[/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:32=
25\]

WARNING: \[Synth 8-7071\] port 'm_axi_wstrb' of module 'e31x_ps_bd_auto_cc_=
2' is unconnected for instance 'auto_cc' \[/home/grcusrp/uhd/fpga/usrp3/top=
/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:322=
5\]

WARNING: \[Synth 8-7071\] port 'm_axi_arprot' of module 'e31x_ps_bd_auto_cc=
_2' is unconnected for instance 'auto_cc' \[/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:32=
25\]

WARNING: \[Synth 8-7023\] instance 'auto_cc' of module 'e31x_ps_bd_auto_cc_=
2' has 42 connections declared, but only 39 given \[/home/grcusrp/uhd/fpga/=
usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps=
_bd.v:3225\]

WARNING: \[Synth 8-7071\] port 'aclk2x' of module 'axi_register_slice_v2_1_=
24_axi_register_slice' is unconnected for instance 'SI_REG' \[/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi=
_inter_2x64_128_bd/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v:4=
392\]

WARNING: \[Synth 8-7023\] instance 'SI_REG' of module 'axi_register_slice_v=
2_1_24_axi_register_slice' has 93 connections declared, but only 92 given \=
[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2=
x64_128_bd/axi_inter_2x64_128_bd/ipshared/6e0d/hdl/axi_protocol_converter_v=
2_1_vl_rfs.v:4392\]

WARNING: \[Synth 8-7071\] port 'aclk2x' of module 'axi_register_slice_v2_1_=
24_axi_register_slice' is unconnected for instance 'MI_REG' \[/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi=
_inter_2x64_128_bd/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v:4=
647\]

WARNING: \[Synth 8-7023\] instance 'MI_REG' of module 'axi_register_slice_v=
2_1_24_axi_register_slice' has 93 connections declared, but only 92 given \=
[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2=
x64_128_bd/axi_inter_2x64_128_bd/ipshared/6e0d/hdl/axi_protocol_converter_v=
2_1_vl_rfs.v:4647\]

WARNING: \[Synth 8-7071\] port 'axi_dma_tstvec' of module 'e31x_ps_bd_axi_d=
ma_eth_internal_0' is unconnected for instance 'axi_dma_eth_internal' \[/ho=
me/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x=
_ps_bd/synth/e31x_ps_bd.v:420\]

WARNING: \[Synth 8-7023\] instance 'axi_dma_eth_internal' of module 'e31x_p=
s_bd_axi_dma_eth_internal_0' has 94 connections declared, but only 93 given=
 \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_b=
d/e31x_ps_bd/synth/e31x_ps_bd.v:420\]

WARNING: \[Synth 8-7071\] port 'M_AXI_GP0_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'M_AXI_GP1_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_GP0_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_GP1_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_ACP_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP0_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP3_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'DMA0_RSTN' of module 'processing_system7_v5=
_5_processing_system7' is unconnected for instance 'inst' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e3=
1x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:8=
28\]

WARNING: \[Synth 8-7071\] port 'DMA1_RSTN' of module 'processing_system7_v5=
_5_processing_system7' is unconnected for instance 'inst' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e3=
1x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:8=
28\]

WARNING: \[Synth 8-7071\] port 'DMA2_RSTN' of module 'processing_system7_v5=
_5_processing_system7' is unconnected for instance 'inst' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e3=
1x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:8=
28\]

WARNING: \[Synth 8-7071\] port 'DMA3_RSTN' of module 'processing_system7_v5=
_5_processing_system7' is unconnected for instance 'inst' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e3=
1x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:8=
28\]

WARNING: \[Synth 8-7023\] instance 'inst' of module 'processing_system7_v5_=
5_processing_system7' has 685 connections declared, but only 672 given \[/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31=
x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_sy=
stem7_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_GP0_BID' of module 'e31x_ps_bd_proces=
sing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_=
ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_GP0_RID' of module 'e31x_ps_bd_proces=
sing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_=
ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_ARREADY' of module 'e31x_ps_bd_pr=
ocessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e=
31x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_RLAST' of module 'e31x_ps_bd_proc=
essing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31=
x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_RVALID' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_RRESP' of module 'e31x_ps_bd_proc=
essing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31=
x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_BID' of module 'e31x_ps_bd_proces=
sing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_=
ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_RID' of module 'e31x_ps_bd_proces=
sing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_=
ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_RDATA' of module 'e31x_ps_bd_proc=
essing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31=
x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_RCOUNT' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_WCOUNT' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_RACOUNT' of module 'e31x_ps_bd_pr=
ocessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e=
31x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_WACOUNT' of module 'e31x_ps_bd_pr=
ocessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e=
31x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_AWREADY' of module 'e31x_ps_bd_pr=
ocessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e=
31x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_BVALID' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_WREADY' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_BRESP' of module 'e31x_ps_bd_proc=
essing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31=
x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_BID' of module 'e31x_ps_bd_proces=
sing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_=
ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_RID' of module 'e31x_ps_bd_proces=
sing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_=
ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_RCOUNT' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_WCOUNT' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_RACOUNT' of module 'e31x_ps_bd_pr=
ocessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e=
31x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_WACOUNT' of module 'e31x_ps_bd_pr=
ocessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e=
31x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7023\] instance 'processing_system7_0' of module 'e31x_p=
s_bd_processing_system7_0_0' has 229 connections declared, but only 206 giv=
en \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps=
_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'mb_reset' of module 'bd_cc08_psr_aclk_0' is=
 unconnected for instance 'psr_aclk' \[/home/grcusrp/uhd/fpga/usrp3/top/e31=
x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_smartconnect=
_dma_0/bd_0/synth/bd_cc08.v:798\]

WARNING: \[Synth 8-7071\] port 'bus_struct_reset' of module 'bd_cc08_psr_ac=
lk_0' is unconnected for instance 'psr_aclk' \[/home/grcusrp/uhd/fpga/usrp3=
/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_smar=
tconnect_dma_0/bd_0/synth/bd_cc08.v:798\]

WARNING: \[Synth 8-7071\] port 'peripheral_reset' of module 'bd_cc08_psr_ac=
lk_0' is unconnected for instance 'psr_aclk' \[/home/grcusrp/uhd/fpga/usrp3=
/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_smar=
tconnect_dma_0/bd_0/synth/bd_cc08.v:798\]

WARNING: \[Synth 8-7071\] port 'peripheral_aresetn' of module 'bd_cc08_psr_=
aclk_0' is unconnected for instance 'psr_aclk' \[/home/grcusrp/uhd/fpga/usr=
p3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_sm=
artconnect_dma_0/bd_0/synth/bd_cc08.v:798\]

WARNING: \[Synth 8-7023\] instance 'psr_aclk' of module 'bd_cc08_psr_aclk_0=
' has 10 connections declared, but only 6 given \[/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_s=
martconnect_dma_0/bd_0/synth/bd_cc08.v:798\]

WARNING: \[Synth 8-7071\] port 'm_axi_awburst' of module 'bd_cc08_s00tr_0' =
is unconnected for instance 's00_transaction_regulator' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x=
_ps_bd_smartconnect_dma_0/bd_0/synth/bd_cc08.v:1706\]

WARNING: \[Synth 8-7071\] port 'm_axi_arburst' of module 'bd_cc08_s00tr_0' =
is unconnected for instance 's00_transaction_regulator' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x=
_ps_bd_smartconnect_dma_0/bd_0/synth/bd_cc08.v:1706\]

WARNING: \[Synth 8-7023\] instance 's00_transaction_regulator' of module 'b=
d_cc08_s00tr_0' has 82 connections declared, but only 80 given \[/home/grcu=
srp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/=
ip/e31x_ps_bd_smartconnect_dma_0/bd_0/synth/bd_cc08.v:1706\]

WARNING: \[Synth 8-6104\] Input port 'PS_CLK' has an internal driver \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/e31x.v:541\]

WARNING: \[Synth 8-6104\] Input port 'PS_PORB' has an internal driver \[/ho=
me/grcusrp/uhd/fpga/usrp3/top/e31x/e31x.v:542\]

WARNING: \[Synth 8-6104\] Input port 'PS_SRSTB' has an internal driver \[/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/e31x.v:543\]

WARNING: \[Synth 8-689\] width (32) of port connection 'm_axi_eth_internal_=
araddr' does not match port width (31) of module 'e31x_ps_bd' \[/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/e31x.v:577\]

WARNING: \[Synth 8-689\] width (32) of port connection 'm_axi_eth_internal_=
awaddr' does not match port width (31) of module 'e31x_ps_bd' \[/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/e31x.v:581\]

WARNING: \[Synth 8-689\] width (1) of port connection 'm_axi_xbar_arprot' d=
oes not match port width (3) of module 'e31x_ps_bd' \[/home/grcusrp/uhd/fpg=
a/usrp3/top/e31x/e31x.v:611\]

WARNING: \[Synth 8-689\] width (1) of port connection 'm_axi_xbar_awprot' d=
oes not match port width (3) of module 'e31x_ps_bd' \[/home/grcusrp/uhd/fpg=
a/usrp3/top/e31x/e31x.v:615\]

WARNING: \[Synth 8-7071\] port 'CE' of module 'BUFR' is unconnected for ins=
tance 'bufr_rx_clk' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_io.v:44\]

WARNING: \[Synth 8-7071\] port 'CLR' of module 'BUFR' is unconnected for in=
stance 'bufr_rx_clk' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_io.v:44\]

WARNING: \[Synth 8-7023\] instance 'bufr_rx_clk' of module 'BUFR' has 4 con=
nections declared, but only 2 given \[/home/grcusrp/uhd/fpga/usrp3/top/e31x=
/e310_io.v:44\]

WARNING: \[Synth 8-7071\] port 'deepsleep' of module 'blk_mem_gen_v8_4_4' i=
s unconnected for instance 'w_buffer' \[/home/grcusrp/uhd/fpga/usrp3/top/e3=
1x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ips=
hared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152\]

WARNING: \[Synth 8-7071\] port 'shutdown' of module 'blk_mem_gen_v8_4_4' is=
 unconnected for instance 'w_buffer' \[/home/grcusrp/uhd/fpga/usrp3/top/e31=
x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipsh=
ared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152\]

WARNING: \[Synth 8-7071\] port 'rsta_busy' of module 'blk_mem_gen_v8_4_4' i=
s unconnected for instance 'w_buffer' \[/home/grcusrp/uhd/fpga/usrp3/top/e3=
1x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ips=
hared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152\]

WARNING: \[Synth 8-7071\] port 'rstb_busy' of module 'blk_mem_gen_v8_4_4' i=
s unconnected for instance 'w_buffer' \[/home/grcusrp/uhd/fpga/usrp3/top/e3=
1x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ips=
hared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152\]

WARNING: \[Synth 8-7023\] instance 'w_buffer' of module 'blk_mem_gen_v8_4_4=
' has 63 connections declared, but only 59 given \[/home/grcusrp/uhd/fpga/u=
srp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64=
_128_bd/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152\]

WARNING: \[Synth 8-7071\] port 'aclk2x' of module 'axi_register_slice_v2_1_=
24_axi_register_slice' is unconnected for instance 's_aw_reg' \[/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/a=
xi_inter_2x64_128_bd/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.=
v:10660\]

WARNING: \[Synth 8-7023\] instance 's_aw_reg' of module 'axi_register_slice=
_v2_1_24_axi_register_slice' has 93 connections declared, but only 92 given=
 \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter=
_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3d13/hdl/axi_dwidth_converter_v=
2_1_vlsyn_rfs.v:10660\]

WARNING: \[Synth 8-7071\] port 'aclk2x' of module 'axi_register_slice_v2_1_=
24_axi_register_slice' is unconnected for instance 'si_register_slice_inst'=
 \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter=
_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3d13/hdl/axi_dwidth_converter_v=
2_1_vlsyn_rfs.v:7379\]

WARNING: \[Synth 8-7023\] instance 'si_register_slice_inst' of module 'axi_=
register_slice_v2_1_24_axi_register_slice' has 93 connections declared, but=
 only 92 given \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg4=
84-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3d13/hdl/axi_dwid=
th_converter_v2_1_vlsyn_rfs.v:7379\]

WARNING: \[Synth 8-7071\] port 'm_axi_awregion' of module 'axi_inter_2x64_1=
28_bd_s00_width_conv_0' is unconnected for instance 's00_width_conv' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_1=
28_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:574\]

WARNING: \[Synth 8-7071\] port 'm_axi_arregion' of module 'axi_inter_2x64_1=
28_bd_s00_width_conv_0' is unconnected for instance 's00_width_conv' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_1=
28_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:574\]

WARNING: \[Synth 8-7023\] instance 's00_width_conv' of module 'axi_inter_2x=
64_128_bd_s00_width_conv_0' has 78 connections declared, but only 76 given =
\[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_=
2x64_128_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:574\]

WARNING: \[Synth 8-7071\] port 'm_axi_awregion' of module 'axi_inter_2x64_1=
28_bd_s01_width_conv_0' is unconnected for instance 's01_width_conv' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_1=
28_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:651\]

WARNING: \[Synth 8-7071\] port 'm_axi_arregion' of module 'axi_inter_2x64_1=
28_bd_s01_width_conv_0' is unconnected for instance 's01_width_conv' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_1=
28_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:651\]

WARNING: \[Synth 8-7023\] instance 's01_width_conv' of module 'axi_inter_2x=
64_128_bd_s01_width_conv_0' has 78 connections declared, but only 76 given =
\[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_=
2x64_128_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:651\]

WARNING: \[Synth 8-7071\] port 'aclk2x' of module 'axi_register_slice_v2_1_=
24_axi_register_slice' is unconnected for instance 'reg_slice_mi' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_=
bd/axi_inter_2x64_128_bd/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v:3122\=
]

WARNING: \[Synth 8-7023\] instance 'reg_slice_mi' of module 'axi_register_s=
lice_v2_1_24_axi_register_slice' has 93 connections declared, but only 92 g=
iven \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_i=
nter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3917/hdl/axi_crossbar_v2_1_=
vl_rfs.v:3122\]

WARNING: \[Synth 8-7071\] port 'aclk2x' of module 'axi_register_slice_v2_1_=
24_axi_register_slice' is unconnected for instance 'reg_slice_mi' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_=
bd/axi_inter_2x64_128_bd/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v:3122\=
]

WARNING: \[Synth 8-7023\] instance 'reg_slice_mi' of module 'axi_register_s=
lice_v2_1_24_axi_register_slice' has 93 connections declared, but only 92 g=
iven \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_i=
nter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3917/hdl/axi_crossbar_v2_1_=
vl_rfs.v:3122\]

WARNING: \[Synth 8-7071\] port 's_axi_bid' of module 'axi_inter_2x64_128_bd=
_xbar_0' is unconnected for instance 'xbar' \[/home/grcusrp/uhd/fpga/usrp3/=
top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_=
bd/synth/axi_inter_2x64_128_bd.v:728\]

WARNING: \[Synth 8-7071\] port 's_axi_rid' of module 'axi_inter_2x64_128_bd=
_xbar_0' is unconnected for instance 'xbar' \[/home/grcusrp/uhd/fpga/usrp3/=
top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_=
bd/synth/axi_inter_2x64_128_bd.v:728\]

WARNING: \[Synth 8-7023\] instance 'xbar' of module 'axi_inter_2x64_128_bd_=
xbar_0' has 78 connections declared, but only 76 given \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inte=
r_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:728\]

WARNING: \[Synth 8-689\] width (12) of port connection 'M00_AXI_arid' does =
not match port width (1) of module 'axi_inter_2x64_128_bd' \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/e31x_dram.v:218\]

WARNING: \[Synth 8-689\] width (12) of port connection 'M00_AXI_awid' does =
not match port width (1) of module 'axi_inter_2x64_128_bd' \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/e31x_dram.v:230\]

WARNING: \[Synth 8-689\] width (12) of port connection 'M00_AXI_bid' does n=
ot match port width (1) of module 'axi_inter_2x64_128_bd' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e31x_dram.v:239\]

WARNING: \[Synth 8-689\] width (12) of port connection 'M00_AXI_rid' does n=
ot match port width (1) of module 'axi_inter_2x64_128_bd' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e31x_dram.v:244\]

WARNING: \[Synth 8-689\] width (64) of port connection 'dram_axi_araddr' do=
es not match port width (58) of module 'e31x_dram' \[/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e31x_core.v:766\]

WARNING: \[Synth 8-689\] width (64) of port connection 'dram_axi_awaddr' do=
es not match port width (58) of module 'e31x_dram' \[/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e31x_core.v:778\]

WARNING: \[Synth 8-7071\] port 'time_increment' of module 'timekeeper' is u=
nconnected for instance 'timekeeper_i' \[/home/grcusrp/uhd/fpga/usrp3/top/e=
31x/e31x_core.v:664\]

WARNING: \[Synth 8-7023\] instance 'timekeeper_i' of module 'timekeeper' ha=
s 15 connections declared, but only 14 given \[/home/grcusrp/uhd/fpga/usrp3=
/top/e31x/e31x_core.v:664\]

WARNING: \[Synth 8-693\] zero replication count - replication ignored \[/ho=
me/grcusrp/uhd/fpga/usrp3/lib/rfnoc/core/chdr_data_swapper.v:189\]

WARNING: \[Synth 8-693\] zero replication count - replication ignored \[/ho=
me/grcusrp/uhd/fpga/usrp3/lib/rfnoc/core/chdr_data_swapper.v:189\]

WARNING: \[Synth 8-689\] width (256) of port connection 'radio_rx_data' doe=
s not match port width (64) of module 'rfnoc_block_radio' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:620\]

WARNING: \[Synth 8-689\] width (8) of port connection 'radio_rx_stb' does n=
ot match port width (2) of module 'rfnoc_block_radio' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:621\]

WARNING: \[Synth 8-689\] width (8) of port connection 'radio_rx_running' do=
es not match port width (2) of module 'rfnoc_block_radio' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:622\]

WARNING: \[Synth 8-689\] width (256) of port connection 'radio_tx_data' doe=
s not match port width (64) of module 'rfnoc_block_radio' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:623\]

WARNING: \[Synth 8-689\] width (8) of port connection 'radio_tx_stb' does n=
ot match port width (2) of module 'rfnoc_block_radio' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:624\]

WARNING: \[Synth 8-689\] width (8) of port connection 'radio_tx_running' do=
es not match port width (2) of module 'rfnoc_block_radio' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:625\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_awid' does not=
 match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e310_rfnoc_image_core.v:719\]

WARNING: \[Synth 8-689\] width (192) of port connection 'm_axi_awaddr' does=
 not match port width (60) of module 'rfnoc_block_replay' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:720\]

WARNING: \[Synth 8-689\] width (32) of port connection 'm_axi_awlen' does n=
ot match port width (16) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:721\]

WARNING: \[Synth 8-689\] width (12) of port connection 'm_axi_awsize' does =
not match port width (6) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:722\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_awburst' does =
not match port width (4) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:723\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_awlock' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:724\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_awcache' does=
 not match port width (8) of module 'rfnoc_block_replay' \[/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:725\]

WARNING: \[Synth 8-689\] width (12) of port connection 'm_axi_awprot' does =
not match port width (6) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:726\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_awqos' does n=
ot match port width (8) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:727\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_awregion' doe=
s not match port width (8) of module 'rfnoc_block_replay' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:728\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_awuser' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:729\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_awvalid' does =
not match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:730\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_awready' does =
not match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:731\]

WARNING: \[Synth 8-689\] width (2048) of port connection 'm_axi_wdata' does=
 not match port width (128) of module 'rfnoc_block_replay' \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:732\]

WARNING: \[Synth 8-689\] width (256) of port connection 'm_axi_wstrb' does =
not match port width (16) of module 'rfnoc_block_replay' \[/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:733\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_wlast' does no=
t match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:734\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_wuser' does no=
t match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:735\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_wvalid' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:736\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_wready' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:737\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_bid' does not =
match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/fpg=
a/usrp3/top/e31x/e310_rfnoc_image_core.v:738\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_bresp' does no=
t match port width (4) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:739\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_buser' does no=
t match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:740\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_bvalid' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:741\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_bready' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:742\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_arid' does not=
 match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e310_rfnoc_image_core.v:743\]

WARNING: \[Synth 8-689\] width (192) of port connection 'm_axi_araddr' does=
 not match port width (60) of module 'rfnoc_block_replay' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:744\]

WARNING: \[Synth 8-689\] width (32) of port connection 'm_axi_arlen' does n=
ot match port width (16) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:745\]

WARNING: \[Synth 8-689\] width (12) of port connection 'm_axi_arsize' does =
not match port width (6) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:746\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_arburst' does =
not match port width (4) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:747\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_arlock' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:748\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_arcache' does=
 not match port width (8) of module 'rfnoc_block_replay' \[/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:749\]

WARNING: \[Synth 8-689\] width (12) of port connection 'm_axi_arprot' does =
not match port width (6) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:750\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_arqos' does n=
ot match port width (8) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:751\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_arregion' doe=
s not match port width (8) of module 'rfnoc_block_replay' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:752\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_aruser' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:753\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_arvalid' does =
not match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:754\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_arready' does =
not match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:755\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_rid' does not =
match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/fpg=
a/usrp3/top/e31x/e310_rfnoc_image_core.v:756\]

WARNING: \[Synth 8-689\] width (2048) of port connection 'm_axi_rdata' does=
 not match port width (128) of module 'rfnoc_block_replay' \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:757\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_rresp' does no=
t match port width (4) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:758\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_rlast' does no=
t match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:759\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_ruser' does no=
t match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:760\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_rvalid' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:761\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_rready' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:762\]

WARNING: \[Synth 8-689\] width (2) of port connection 'radio_rx_running' do=
es not match port width (8) of module 'rfnoc_image_core' \[/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e31x_core.v:839\]

WARNING: \[Synth 8-689\] width (64) of port connection 'radio_tx_data' does=
 not match port width (256) of module 'rfnoc_image_core' \[/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e31x_core.v:841\]

WARNING: \[Synth 8-689\] width (2) of port connection 'radio_tx_running' do=
es not match port width (8) of module 'rfnoc_image_core' \[/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e31x_core.v:842\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_awid' does not=
 match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e31x_core.v:844\]

WARNING: \[Synth 8-689\] width (64) of port connection 'm_axi_awaddr' does =
not match port width (192) of module 'rfnoc_image_core' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e31x_core.v:845\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_awlen' does n=
ot match port width (32) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:846\]

WARNING: \[Synth 8-689\] width (6) of port connection 'm_axi_awsize' does n=
ot match port width (12) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:847\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_awburst' does =
not match port width (8) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:848\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_awlock' does n=
ot match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e31x_core.v:849\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_awcache' does =
not match port width (16) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e31x_core.v:850\]

WARNING: \[Synth 8-689\] width (6) of port connection 'm_axi_awprot' does n=
ot match port width (12) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:851\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_awqos' does no=
t match port width (16) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e31x_core.v:852\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_awregion' does=
 not match port width (16) of module 'rfnoc_image_core' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e31x_core.v:853\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_awvalid' does =
not match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:855\]

WARNING: \[Synth 8-689\] width (128) of port connection 'm_axi_wdata' does =
not match port width (2048) of module 'rfnoc_image_core' \[/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e31x_core.v:857\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_wstrb' does n=
ot match port width (256) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e31x_core.v:858\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_wlast' does no=
t match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fpg=
a/usrp3/top/e31x/e31x_core.v:859\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_wvalid' does n=
ot match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e31x_core.v:861\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_bready' does n=
ot match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e31x_core.v:867\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_arid' does not=
 match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e31x_core.v:868\]

WARNING: \[Synth 8-689\] width (64) of port connection 'm_axi_araddr' does =
not match port width (192) of module 'rfnoc_image_core' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e31x_core.v:869\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_arlen' does n=
ot match port width (32) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:870\]

WARNING: \[Synth 8-689\] width (6) of port connection 'm_axi_arsize' does n=
ot match port width (12) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:871\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_arburst' does =
not match port width (8) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:872\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_arlock' does n=
ot match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e31x_core.v:873\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_arcache' does =
not match port width (16) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e31x_core.v:874\]

WARNING: \[Synth 8-689\] width (6) of port connection 'm_axi_arprot' does n=
ot match port width (12) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:875\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_arqos' does no=
t match port width (16) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e31x_core.v:876\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_arregion' does=
 not match port width (16) of module 'rfnoc_image_core' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e31x_core.v:877\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_arvalid' does =
not match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:879\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_rready' does n=
ot match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e31x_core.v:887\]

WARNING: \[Synth 8-689\] width (32) of port connection 's_axi_awaddr' does =
not match port width (14) of module 'e31x_core' \[/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/e31x.v:893\]

WARNING: \[Synth 8-689\] width (32) of port connection 's_axi_araddr' does =
not match port width (14) of module 'e31x_core' \[/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/e31x.v:906\]

WARNING: \[Synth 8-689\] width (6) of port connection 'occupied' does not m=
atch port width (16) of module 'axi_fifo_bram__parameterized10' \[/home/grc=
usrp/uhd/fpga/usrp3/top/e31x/axi_pmu.v:167\]

WARNING: \[Synth 8-689\] width (6) of port connection 'space' does not matc=
h port width (16) of module 'axi_fifo_bram__parameterized10' \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/axi_pmu.v:168\]

\[00:01:17\] Current task: Synthesis +++ Current Phase: Starting

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'iostandard', beca=
use the property does not exist for objects of type 'pin'. \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e=
31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:405\=
]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PACKAGE_PIN', bec=
ause the property does not exist for objects of type 'pin'. \[/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/=
e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:406=
\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'slew', because th=
e property does not exist for objects of type 'pin'. \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps=
_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:407\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PIO_DIRECTION', b=
ecause the property does not exist for objects of type 'pin'. \[/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/i=
p/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:4=
08\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'iostandard', beca=
use the property does not exist for objects of type 'pin'. \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e=
31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:417\=
]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PACKAGE_PIN', bec=
ause the property does not exist for objects of type 'pin'. \[/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/=
e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:418=
\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'slew', because th=
e property does not exist for objects of type 'pin'. \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps=
_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:419\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PIO_DIRECTION', b=
ecause the property does not exist for objects of type 'pin'. \[/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/i=
p/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:4=
20\]

WARNING: \[Vivado 12-4702\] slew is not a supported property on input port(=
s). Setting is ignored. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc=
7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e3=
1x_ps_bd_processing_system7_0_0.xdc:691\]

WARNING: \[Vivado 12-4702\] slew is not a supported property on input port(=
s). Setting is ignored. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc=
7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e3=
1x_ps_bd_processing_system7_0_0.xdc:694\]

WARNING: \[Vivado 12-4702\] slew is not a supported property on input port(=
s). Setting is ignored. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc=
7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e3=
1x_ps_bd_processing_system7_0_0.xdc:697\]

CRITICAL WARNING: \[Constraints 18-1056\] Clock 'bus_clk' completely overri=
des clock 'clk_fpga_0'.

CRITICAL WARNING: \[Constraints 18-1056\] Clock 'clk40' completely override=
s clock 'clk_fpga_1'.

WARNING: \[Vivado 12-508\] No pins matched 'get_pins -hierarchical -filter =
{NAME =3D\~ \*/synchronizer_false_path/stages\[0\].value_reg\[0\]\[\*\]/S}'=
. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_timing.xdc:141\]

WARNING: \[Project 1-498\] One or more constraints failed evaluation while =
reading constraint file \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_timing=
.xdc\] and the design contains unresolved black boxes. These constraints wi=
ll be read post-synthesis (as long as their source constraint file is marke=
d as used_in_implementation) and should be applied correctly then. You shou=
ld review the constraints listed in the file \[.Xil/e31x_propImpl.xdc\] and=
 check the run log file to verify that these constraints were correctly app=
lied.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[Vivado 12-180\] No cells matched 'get_cells -hier -filter {PRIMI=
TIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBG=
ROUP=3D=3Duram || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. \[/tools/Xilinx/Vivado/20=
21.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl:3\]

WARNING: \[Vivado 12-180\] No cells matched 'get_cells -hier -filter {PRIMI=
TIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBG=
ROUP=3D=3Duram || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. \[/tools/Xilinx/Vivado/20=
21.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl:3\]

WARNING: \[Vivado 12-180\] No cells matched 'get_cells -hier -filter {PRIMI=
TIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBG=
ROUP=3D=3Duram || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. \[/tools/Xilinx/Vivado/20=
21.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl:3\]

WARNING: \[Vivado 12-180\] No cells matched 'get_cells -hier -filter {PRIMI=
TIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBG=
ROUP=3D=3Duram || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. \[/tools/Xilinx/Vivado/20=
21.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl:3\]

WARNING: \[Vivado 12-180\] No cells matched 'get_cells -hier -filter {PRIMI=
TIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBG=
ROUP=3D=3Duram || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. \[/tools/Xilinx/Vivado/20=
21.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl:3\]

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_secti=
on\[0\].impl_srl_i' at clock pin 'rd_clk' is different from the actual cloc=
k period '5.000', this can lead to different synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/ctrlport_endpoint_i/gen_async_fifos.out_fifo_i/fifo_sect=
ion\[0\].impl_srl_i' at clock pin 'wr_clk' is different from the actual clo=
ck period '5.000', this can lead to different synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[0\].chdr_to_axis_data_in_in/flush_2clk_ctr=
l_i/fifo_section\[0\].impl_srl_i' at clock pin 'rd_clk' is different from t=
he actual clock period '5.000', this can lead to different synthesis result=
s.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[0\].chdr_to_axis_data_in_in/gen_async_info=
_fifo.info_fifo_i/fifo_section\[0\].impl_srl_i' at clock pin 'rd_clk' is di=
fferent from the actual clock period '5.000', this can lead to different sy=
nthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[0\].chdr_to_axis_data_in_in/gen_async_info=
_fifo.info_fifo_i/fifo_section\[1\].impl_srl_i' at clock pin 'rd_clk' is di=
fferent from the actual clock period '5.000', this can lead to different sy=
nthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[0\].chdr_to_axis_data_in_in/no_gen_axis_wi=
dth_conv.gen_async_pyld_fifo.pyld_fifo_i/fifo_section\[0\].impl_srl_i' at c=
lock pin 'rd_clk' is different from the actual clock period '5.000', this c=
an lead to different synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[1\].chdr_to_axis_data_in_in/flush_2clk_ctr=
l_i/fifo_section\[0\].impl_srl_i' at clock pin 'rd_clk' is different from t=
he actual clock period '5.000', this can lead to different synthesis result=
s.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[1\].chdr_to_axis_data_in_in/gen_async_info=
_fifo.info_fifo_i/fifo_section\[0\].impl_srl_i' at clock pin 'rd_clk' is di=
fferent from the actual clock period '5.000', this can lead to different sy=
nthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[1\].chdr_to_axis_data_in_in/gen_async_info=
_fifo.info_fifo_i/fifo_section\[1\].impl_srl_i' at clock pin 'rd_clk' is di=
fferent from the actual clock period '5.000', this can lead to different sy=
nthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[1\].chdr_to_axis_data_in_in/no_gen_axis_wi=
dth_conv.gen_async_pyld_fifo.pyld_fifo_i/fifo_section\[0\].impl_srl_i' at c=
lock pin 'rd_clk' is different from the actual clock period '5.000', this c=
an lead to different synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/gen_async_=
info_fifo.pkt_info_fifo/fifo_section\[0\].impl_srl_i' at clock pin 'wr_clk'=
 is different from the actual clock period '5.000', this can lead to differ=
ent synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/gen_async_=
info_fifo.pkt_info_fifo/fifo_section\[1\].impl_srl_i' at clock pin 'wr_clk'=
 is different from the actual clock period '5.000', this can lead to differ=
ent synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/no_gen_axi=
s_width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i' a=
t clock pin 'wr_clk' is different from the actual clock period '5.000', thi=
s can lead to different synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_output_out\[1\].axis_data_to_chdr_out_out/gen_async_=
info_fifo.pkt_info_fifo/fifo_section\[0\].impl_srl_i' at clock pin 'wr_clk'=
 is different from the actual clock period '5.000', this can lead to differ=
ent synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_output_out\[1\].axis_data_to_chdr_out_out/gen_async_=
info_fifo.pkt_info_fifo/fifo_section\[1\].impl_srl_i' at clock pin 'wr_clk'=
 is different from the actual clock period '5.000', this can lead to differ=
ent synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_output_out\[1\].axis_data_to_chdr_out_out/no_gen_axi=
s_width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i' a=
t clock pin 'wr_clk' is different from the actual clock period '5.000', thi=
s can lead to different synthesis results.

\[00:01:58\] Current task: Synthesis +++ Current Phase: Handling Custom Att=
ributes

\[00:03:07\] Current task: Synthesis +++ Current Phase: Loading Part and Ti=
ming Information

\[00:03:07\] Current task: Synthesis +++ Current Phase: RTL Component Stati=
stics

\[00:03:08\] Current task: Synthesis +++ Current Phase: Part Resource Summa=
ry

WARNING: \[Synth 8-7129\] Port rsta in module xpm_memory_base__parameterize=
d5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port regcea in module xpm_memory_base__parameteri=
zed5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port injectsbiterra in module xpm_memory_base__pa=
rameterized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port injectdbiterra in module xpm_memory_base__pa=
rameterized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port clkb in module xpm_memory_base__parameterize=
d5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port regceb in module xpm_memory_base__parameteri=
zed5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port web\[0\] in module xpm_memory_base__paramete=
rized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[69\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[68\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[67\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[66\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[65\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[64\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[63\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[62\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[61\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[60\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[59\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[58\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[57\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[56\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[55\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[54\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[53\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[52\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[51\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[50\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[49\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[48\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[47\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[46\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[45\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[44\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[43\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[42\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[41\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[40\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[39\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[38\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[37\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[36\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[35\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[34\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[33\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[32\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[31\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[30\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[29\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[28\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[27\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[26\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[25\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[24\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[23\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[22\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[21\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[20\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[19\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[18\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[17\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[16\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[15\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[14\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[13\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[12\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[11\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[10\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[9\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[8\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[7\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[6\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[5\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[4\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[3\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[2\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[1\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[0\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port injectsbiterrb in module xpm_memory_base__pa=
rameterized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port injectdbiterrb in module xpm_memory_base__pa=
rameterized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_sc_req\[0\] in module sc_node_v1_0_13_top_=
_parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_sc_info\[0\] in module sc_node_v1_0_13_top=
__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_sc_payld\[0\] in module sc_node_v1_0_13_to=
p__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port m_sc_aclken in module sc_node_v1_0_13_top__p=
arameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port m_axis_arb_tready in module sc_node_v1_0_13_=
top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tvalid in module sc_node_v1_0_13_=
top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[15\] in module sc_node_v1_=
0_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[14\] in module sc_node_v1_=
0_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[13\] in module sc_node_v1_=
0_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[12\] in module sc_node_v1_=
0_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[11\] in module sc_node_v1_=
0_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[10\] in module sc_node_v1_=
0_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[9\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[8\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[7\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[6\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[5\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[4\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[3\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[2\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[1\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-6014\] Unused sequential element ingress_fifo_i/main_fif=
o/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element ingress_fifo_i/main_fif=
o/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element ingress_fifo_i/main_fif=
o/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element ingress_fifo_i/main_fif=
o/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awid\[1\=
] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awid\[0\=
] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awsize\[=
5\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awsize\[=
4\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awsize\[=
3\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awsize\[=
2\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awsize\[=
1\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awsize\[=
0\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awburst\=
[3\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awburst\=
[2\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awburst\=
[1\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awburst\=
[0\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awlock\[=
1\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awlock\[=
0\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[7\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[6\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[5\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[4\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[3\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[2\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[1\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[0\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awprot\[=
5\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awprot\[=
4\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awprot\[=
3\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awprot\[=
2\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awprot\[=
1\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awprot\[=
0\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[7=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[6=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[5=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[4=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[3=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[2=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[1=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[0=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[7\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[6\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[5\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[4\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[3\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[2\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[1\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[0\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awuser\[=
1\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awuser\[=
0\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[1=
5\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[1=
4\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[1=
3\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[1=
2\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[1=
1\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[1=
0\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[9=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[8=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[7=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[6=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[5=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[4=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[3=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[2=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[1=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[0=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wuser\[1=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wuser\[0=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arid\[1\=
] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arid\[0\=
] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arsize\[=
5\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arsize\[=
4\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arsize\[=
3\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arsize\[=
2\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arsize\[=
1\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arsize\[=
0\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arburst\=
[3\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arburst\=
[2\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arburst\=
[1\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arburst\=
[0\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arlock\[=
1\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arlock\[=
0\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[7\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[6\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[5\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[4\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[3\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[2\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[1\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[0\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arprot\[=
5\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arprot\[=
4\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arprot\[=
3\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arprot\[=
2\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arprot\[=
1\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arprot\[=
0\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[7=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[6=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[5=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[4=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[3=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[2=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[1=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[0=
\] driven by constant 0

WARNING: \[Synth 8-6014\] Unused sequential element rec_axi_fifo/fifo_bram/=
ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element play_axi_fifo/fifo_bram=
/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element rec_axi_fifo/fifo_bram/=
ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element play_axi_fifo/fifo_bram=
/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element no_gen_axis_width_conv.=
gen_async_pyld_fifo.pyld_fifo/ext_fifo_i/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element no_gen_axis_width_conv.=
gen_async_pyld_fifo.pyld_fifo/ext_fifo_i/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element gen_ctrl_slave.axis_ctr=
l_slv_i/gate_i/ram_i/impl/ram_reg was removed.

WARNING: \[Synth 8-3936\] Found unconnected internal register 'ctrlport_tim=
er_i/resp_cache_i/o_tdata_reg' and it is trimmed from '34' to '32' bits. \[=
/home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop.v:37\]

WARNING: \[Synth 8-6014\] Unused sequential element gen_axis_width_conv.pyl=
d_fifo_i/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element gen_axis_width_conv.pyl=
d_fifo_i/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element gen_axis_width_conv.pyl=
d_fifo/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element gen_axis_width_conv.pyl=
d_fifo/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element gen_ctrl_slave.slv_fifo=
_i/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element gen_ctrl_slave.axis_ctr=
l_slv_i/gate_i/ram_i/impl/ram_reg was removed.

WARNING: \[Synth 8-3936\] Found unconnected internal register 'dest_mux_i/a=
xi_fifo/fifo_flop2/o_tdata_reg' and it is trimmed from '5' to '4' bits. \[/=
home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop2.v:38\]

WARNING: \[Synth 8-3936\] Found unconnected internal register 'dest_mux_i/a=
xi_fifo/fifo_flop2/o_tdata_reg' and it is trimmed from '5' to '4' bits. \[/=
home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop2.v:38\]

WARNING: \[Synth 8-3936\] Found unconnected internal register 'dest_mux_i/a=
xi_fifo/fifo_flop2/o_tdata_reg' and it is trimmed from '5' to '4' bits. \[/=
home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop2.v:38\]

WARNING: \[Synth 8-3936\] Found unconnected internal register 'dest_mux_i/a=
xi_fifo/fifo_flop2/o_tdata_reg' and it is trimmed from '5' to '4' bits. \[/=
home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop2.v:38\]

WARNING: \[Synth 8-3936\] Found unconnected internal register 'dest_mux_i/a=
xi_fifo/fifo_flop2/o_tdata_reg' and it is trimmed from '5' to '4' bits. \[/=
home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop2.v:38\]

WARNING: \[Synth 8-6014\] Unused sequential element axi_packet_gate_i/ram_i=
/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element axi_packet_gate_i/ram_i=
/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element axi_packet_gate_i/ram_i=
/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element axi_packet_gate_i/ram_i=
/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element axi_packet_gate_i/ram_i=
/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element kv_map_i/map_i/mem_i/im=
pl/ram_reg was removed.

WARNING: \[Synth 8-3936\] Found unconnected internal register 'ppslp/coarse=
_reg' and it is trimmed from '28' to '16' bits. \[/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/ppsloop.v:243\]

WARNING: \[Synth 8-6014\] Unused sequential element cpu_out_gate_i/ram_i/im=
pl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element chdr_user_fifo_i/fifo_b=
ram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element chdr_out_gate_i/ram_i/i=
mpl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element chdr_out_gate_i/addr_fi=
fo_i/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element kv_map_i/mem_i/impl/ram=
_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element eth_adapter_i/cpu_fifo_=
i/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element eth_adapter_i/chdr_fifo=
_i/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element inst_axi_pmu/axi_fifo_s=
hort_inst/ram/impl/ram_reg was removed.

\[00:04:45\] Current task: Synthesis +++ Current Phase: Cross Boundary and =
Area Optimization

\[00:04:51\] Current task: Synthesis +++ Current Phase: Applying XDC Timing=
 Constraints

\[00:05:41\] Current task: Synthesis +++ Current Phase: Timing Optimization

\[00:06:26\] Current task: Synthesis +++ Current Phase: Technology Mapping

\[00:06:26\] Current task: Synthesis +++ Current Phase: IO Insertion

\[00:06:29\] Current task: Synthesis +++ Current Phase: Flattening Before I=
O Insertion

WARNING: \[Synth 8-3295\] tying undriven pin I_AXI_DMA_REG_MODULE/strm_vali=
d_int2_inferred:in0 to constant 0

WARNING: \[Synth 8-3295\] tying undriven pin I_AXI_DMA_REG_MODULE/strm_vali=
d_int_cdc_to_inferred:in0 to constant 0

\[00:06:44\] Current task: Synthesis +++ Current Phase: Final Netlist Clean=
up

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:543=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:555=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:544=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:599=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:544=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:556=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:556=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:583\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:594\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:594\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:594\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:583\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:588\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:588\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:588\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:588\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:588\]

\[00:06:54\] Current task: Synthesis +++ Current Phase: Renaming Generated =
Instances

\[00:07:02\] Current task: Synthesis +++ Current Phase: Rebuilding User Hie=
rarchy

\[00:07:06\] Current task: Synthesis +++ Current Phase: Renaming Generated =
Ports

\[00:07:06\] Current task: Synthesis +++ Current Phase: Handling Custom Att=
ributes

\[00:07:07\] Current task: Synthesis +++ Current Phase: Renaming Generated =
Nets

\[00:07:11\] Current task: Synthesis +++ Current Phase: Writing Synthesis R=
eport

\[00:07:11\] Current task: Synthesis +++ Current Phase: Finished

\[00:07:11\] Translating Synthesized Netlist

CRITICAL WARNING: \[Designutils 20-1280\] Could not find module 'axi_hb31'.=
 The XDC file /home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-=
3/axi_hb31/constraints/fir_compiler_v7_2.xdc will not be read for any cell =
of this module.

CRITICAL WARNING: \[Designutils 20-1280\] Could not find module 'axi_hb47'.=
 The XDC file /home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-=
3/axi_hb47/constraints/fir_compiler_v7_2.xdc will not be read for any cell =
of this module.

WARNING: \[Vivado_Tcl 4-919\] Waiver ID 'CDC-1' -from list should not be em=
pty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_=
ps_bd/e31x_ps_bd/ip/e31x_ps_bd_axi_dma_eth_internal_0/e31x_ps_bd_axi_dma_et=
h_internal_0.xdc:61\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'iostandard', beca=
use the property does not exist for objects of type 'pin'. \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e=
31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:405\=
]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PACKAGE_PIN', bec=
ause the property does not exist for objects of type 'pin'. \[/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/=
e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:406=
\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'slew', because th=
e property does not exist for objects of type 'pin'. \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps=
_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:407\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PIO_DIRECTION', b=
ecause the property does not exist for objects of type 'pin'. \[/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/i=
p/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:4=
08\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'iostandard', beca=
use the property does not exist for objects of type 'pin'. \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e=
31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:417\=
]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PACKAGE_PIN', bec=
ause the property does not exist for objects of type 'pin'. \[/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/=
e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:418=
\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'slew', because th=
e property does not exist for objects of type 'pin'. \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps=
_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:419\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PIO_DIRECTION', b=
ecause the property does not exist for objects of type 'pin'. \[/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/i=
p/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:4=
20\]

WARNING: \[Vivado 12-4702\] slew is not a supported property on input port(=
s). Setting is ignored. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc=
7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e3=
1x_ps_bd_processing_system7_0_0.xdc:691\]

WARNING: \[Vivado 12-4702\] slew is not a supported property on input port(=
s). Setting is ignored. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc=
7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e3=
1x_ps_bd_processing_system7_0_0.xdc:694\]

WARNING: \[Vivado 12-4702\] slew is not a supported property on input port(=
s). Setting is ignored. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc=
7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e3=
1x_ps_bd_processing_system7_0_0.xdc:697\]

CRITICAL WARNING: \[Constraints 18-1055\] Clock 'bus_clk' completely overri=
des clock 'clk_fpga_0', which is referenced by one or more other constraint=
s. Any constraints that refer to the overridden clock will be ignored.

CRITICAL WARNING: \[Constraints 18-1055\] Clock 'clk40' completely override=
s clock 'clk_fpga_1', which is referenced by one or more other constraints.=
 Any constraints that refer to the overridden clock will be ignored.

WARNING: \[Vivado 12-2489\] -input_jitter contains time 1.628100 which will=
 be rounded to 1.628 to ensure it is an integer multiple of 1 picosecond \[=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_timing.xdc:47\]

WARNING: \[Vivado 12-830\] No fanout objects found for 'all_fanout -from \[=
get_ports -scoped_to_current_instance m_axi_aclk\] -flat -endpoints_only -o=
nly_cells'. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-=
3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_4/e31x_ps_bd_auto_cc_4_clocks=
.xdc:17\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-10' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:7\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-11' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:10\=
]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-15' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:13\=
]

WARNING: \[Vivado_Tcl 4-939\] Waiver ID 'LUTAR-1' object list should not be=
 empty (perhaps an invalid wildcard was used or only unsupported objects). =
\[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd=
/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:17\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-10' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:7\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-11' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:10\=
]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-15' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:13\=
]

WARNING: \[Vivado_Tcl 4-939\] Waiver ID 'LUTAR-1' object list should not be=
 empty (perhaps an invalid wildcard was used or only unsupported objects). =
\[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd=
/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:17\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-10' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clocks.xdc:7\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-11' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clocks.xdc:10\=
]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-15' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clocks.xdc:13\=
]

WARNING: \[Vivado_Tcl 4-939\] Waiver ID 'LUTAR-1' object list should not be=
 empty (perhaps an invalid wildcard was used or only unsupported objects). =
\[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd=
/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clocks.xdc:17\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-10' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto_cc_3_clocks.xdc:7\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-11' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto_cc_3_clocks.xdc:10\=
]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-15' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto_cc_3_clocks.xdc:13\=
]

WARNING: \[Vivado_Tcl 4-939\] Waiver ID 'LUTAR-1' object list should not be=
 empty (perhaps an invalid wildcard was used or only unsupported objects). =
\[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd=
/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto_cc_3_clocks.xdc:17\]

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[Vivado_Tcl 4-919\] Waiver ID 'CDC-15' -from list should not be e=
mpty. \[/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handsha=
ke.tcl:30\]

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[Vivado_Tcl 4-919\] Waiver ID 'CDC-15' -from list should not be e=
mpty. \[/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handsha=
ke.tcl:30\]

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[Vivado_Tcl 4-919\] Waiver ID 'CDC-15' -from list should not be e=
mpty. \[/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handsha=
ke.tcl:30\]

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[0\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[10\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[11\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[12\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[13\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[14\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[15\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[16\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[17\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[18\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[19\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[1\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[20\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[21\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[22\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[23\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[24\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[25\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[26\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[27\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[28\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[29\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[2\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[30\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[31\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[3\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[4\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[5\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[6\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[7\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[8\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[9\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[0\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[16\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[17\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[18\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[19\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[1\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[20\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[21\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[22\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[23\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[24\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[25\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[26\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[27\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[28\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[29\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[2\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[30\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[31\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[0\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[10\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[11\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[12\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[13\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[14\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[15\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[16\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[17\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[18\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[19\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[1\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[20\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[21\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[22\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[23\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[24\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[25\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[26\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[27\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[28\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[29\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[2\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[30\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[31\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[3\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[4\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[5\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[6\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[7\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[8\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[9\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[0\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[16\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[17\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[18\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[19\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[1\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[20\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[21\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[22\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[23\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[24\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[25\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[26\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[27\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[28\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[29\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[2\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

\[00:08:33\] Current task: Translating Synthesized Netlist +++ Current Phas=
e: Starting

\[00:08:33\] Current task: Translating Synthesized Netlist +++ Current Phas=
e: Finished

\[00:08:33\] Executing Tcl: report_drc -ruledeck methodology_checks -file /=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-E310_SG3/methodology.rpt

\[00:08:33\] Starting DRC Command

\[00:09:16\] Current task: DRC +++ Current Phase: Starting

\[00:09:17\] Current task: DRC +++ Current Phase: Finished

\[00:09:17\] Executing Tcl: opt_design -directive Default

\[00:09:17\] Starting Logic Optimization Command

\[00:09:17\] Current task: Logic Optimization +++ Current Phase: Starting

\[00:09:17\] Current task: Logic Optimization +++ Current Phase: Finished

\[00:09:17\] Starting DRC Task

\[00:09:18\] Current task: DRC +++ Current Phase: Starting

\[00:09:18\] Current task: DRC +++ Current Phase: Finished

\[00:09:18\] Starting Cache Timing Information Task

\[00:09:26\] Current task: Cache Timing Information +++ Current Phase: Star=
ting

\[00:09:26\] Current task: Cache Timing Information +++ Current Phase: Fini=
shed

\[00:09:26\] Starting Logic Optimization Task

\[00:09:31\] Current task: Logic Optimization +++ Current Phase: Starting

\[00:09:33\] Current task: Logic Optimization +++ Current Phase: 1 Retarget

\[00:09:34\] Current task: Logic Optimization +++ Current Phase: 2 Constant=
 propagation

\[00:09:40\] Current task: Logic Optimization +++ Current Phase: 3 Sweep

\[00:09:42\] Current task: Logic Optimization +++ Current Phase: 4 BUFG opt=
imization

\[00:09:42\] Current task: Logic Optimization +++ Current Phase: 5 Shift Re=
gister Optimization

\[00:09:44\] Current task: Logic Optimization +++ Current Phase: 6 Post Pro=
cessing Netlist

\[00:09:45\] Current task: Logic Optimization +++ Current Phase: Finished

\[00:09:45\] Starting Connectivity Check Task

\[00:09:45\] Current task: Connectivity Check +++ Current Phase: Starting

\[00:09:46\] Current task: Connectivity Check +++ Current Phase: Finished

\[00:09:46\] Starting Power Optimization Task

\[00:10:09\] Current task: Power Optimization +++ Current Phase: Starting

\[00:10:10\] Current task: Power Optimization +++ Current Phase: Finished

\[00:10:10\] Starting PowerOpt Patch Enables Task

\[00:10:10\] Current task: PowerOpt Patch Enables +++ Current Phase: Starti=
ng

\[00:10:11\] Current task: PowerOpt Patch Enables +++ Current Phase: Finish=
ed

\[00:10:11\] Starting Final Cleanup Task

\[00:10:12\] Current task: Final Cleanup +++ Current Phase: Starting

\[00:10:13\] Current task: Final Cleanup +++ Current Phase: Finished

\[00:10:13\] Starting Logic Optimization Task

\[00:10:24\] Current task: Logic Optimization +++ Current Phase: Starting

\[00:10:24\] Current task: Logic Optimization +++ Current Phase: Finished

\[00:10:24\] Starting Netlist Obfuscation Task

\[00:10:24\] Current task: Netlist Obfuscation +++ Current Phase: Starting

\[00:10:24\] Current task: Netlist Obfuscation +++ Current Phase: Finished

\[00:10:24\] Executing Tcl: place_design -directive Default

\[00:10:24\] Starting Placer Command

\[00:10:42\] Current task: Placer +++ Current Phase: Starting

WARNING: \[DRC CHECK-3\] Report rule limit reached: REQP-1839 rule limit re=
ached: 20 violations have been found.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[0\].c=
hdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/r=
am_reg_0 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_radio=
0_0/noc_shell_radio_i/gen_input_in\[0\].chdr_to_axis_data_in_in/gen_axis_wi=
dth_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_0/ENBWREN (net: e31x_core_i=
nst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[0\].chdr_=
to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/enb0)=
 which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_=
0/noc_shell_radio_i/gen_input_in\[0\].chdr_to_axis_data_in_in/gen_axis_widt=
h_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i/U0/inst_fif=
o_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg=
) that has an active asychronous set or reset. This may cause corruption of=
 the memory contents and/or read values when the set/reset is asserted and =
is not analyzed by the default static timing analysis. It is suggested to e=
liminate the use of a set/reset to registers driving this RAMB pin or else =
use a synchronous reset in which the assertion of the reset is timed by def=
ault.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[0\].c=
hdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/r=
am_reg_1 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_radio=
0_0/noc_shell_radio_i/gen_input_in\[0\].chdr_to_axis_data_in_in/gen_axis_wi=
dth_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_1/ENBWREN (net: e31x_core_i=
nst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[0\].chdr_=
to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/enb0)=
 which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_=
0/noc_shell_radio_i/gen_input_in\[0\].chdr_to_axis_data_in_in/gen_axis_widt=
h_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i/U0/inst_fif=
o_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg=
) that has an active asychronous set or reset. This may cause corruption of=
 the memory contents and/or read values when the set/reset is asserted and =
is not analyzed by the default static timing analysis. It is suggested to e=
liminate the use of a set/reset to registers driving this RAMB pin or else =
use a synchronous reset in which the assertion of the reset is timed by def=
ault.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[1\].c=
hdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/r=
am_reg_0 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_radio=
0_0/noc_shell_radio_i/gen_input_in\[1\].chdr_to_axis_data_in_in/gen_axis_wi=
dth_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_0/ENBWREN (net: e31x_core_i=
nst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[1\].chdr_=
to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/enb0)=
 which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_=
0/noc_shell_radio_i/gen_input_in\[1\].chdr_to_axis_data_in_in/gen_axis_widt=
h_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i/U0/inst_fif=
o_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg=
) that has an active asychronous set or reset. This may cause corruption of=
 the memory contents and/or read values when the set/reset is asserted and =
is not analyzed by the default static timing analysis. It is suggested to e=
liminate the use of a set/reset to registers driving this RAMB pin or else =
use a synchronous reset in which the assertion of the reset is timed by def=
ault.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[1\].c=
hdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/r=
am_reg_1 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_radio=
0_0/noc_shell_radio_i/gen_input_in\[1\].chdr_to_axis_data_in_in/gen_axis_wi=
dth_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_1/ENBWREN (net: e31x_core_i=
nst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[1\].chdr_=
to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/enb0)=
 which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_=
0/noc_shell_radio_i/gen_input_in\[1\].chdr_to_axis_data_in_in/gen_axis_widt=
h_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i/U0/inst_fif=
o_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg=
) that has an active asychronous set or reset. This may cause corruption of=
 the memory contents and/or read values when the set/reset is asserted and =
is not analyzed by the default static timing analysis. It is suggested to e=
liminate the use of a set/reset to registers driving this RAMB pin or else =
use a synchronous reset in which the assertion of the reset is timed by def=
ault.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_0 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_0/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_1 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_1/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_2 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_2/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_3 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_3/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_0 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_0/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_1 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_1/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_2 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_2/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_3 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_3/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/gen_replay_blocks\[0\].axis_replay_i=
/play_axi_fifo/fifo_bram/ram/impl/ram_reg has an input control pin e31x_cor=
e_inst/rfnoc_image_core_i/b_replay0_1/gen_replay_blocks\[0\].axis_replay_i/=
play_axi_fifo/fifo_bram/ram/impl/ram_reg/ENARDEN (net: e31x_core_inst/rfnoc=
_image_core_i/b_replay0_1/gen_replay_blocks\[0\].axis_replay_i/play_axi_fif=
o/fifo_bram/ram/impl/enb0) which is driven by a register (e31x_core_inst/rf=
noc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[0\].axis_da=
ta_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fif=
o_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_syn=
c_fifo.gl0.wr/gwas.wsts/ram_full_i_reg) that has an active asychronous set =
or reset. This may cause corruption of the memory contents and/or read valu=
es when the set/reset is asserted and is not analyzed by the default static=
 timing analysis. It is suggested to eliminate the use of a set/reset to re=
gisters driving this RAMB pin or else use a synchronous reset in which the =
assertion of the reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/gen_replay_blocks\[1\].axis_replay_i=
/play_axi_fifo/fifo_bram/ram/impl/ram_reg has an input control pin e31x_cor=
e_inst/rfnoc_image_core_i/b_replay0_1/gen_replay_blocks\[1\].axis_replay_i/=
play_axi_fifo/fifo_bram/ram/impl/ram_reg/ENARDEN (net: e31x_core_inst/rfnoc=
_image_core_i/b_replay0_1/gen_replay_blocks\[1\].axis_replay_i/play_axi_fif=
o/fifo_bram/ram/impl/enb0) which is driven by a register (e31x_core_inst/rf=
noc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[1\].axis_da=
ta_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fif=
o_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_syn=
c_fifo.gl0.wr/gwas.wsts/ram_full_i_reg) that has an active asychronous set =
or reset. This may cause corruption of the memory contents and/or read valu=
es when the set/reset is asserted and is not analyzed by the default static=
 timing analysis. It is suggested to eliminate the use of a set/reset to re=
gisters driving this RAMB pin or else use a synchronous reset in which the =
assertion of the reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[0=
\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyl=
d_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/g=
ntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnati=
vebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.ram/DEVI=
CE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin =
e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output=
_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_f=
ifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/g=
rf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbra=
m.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.r=
am/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR\[10\] =
(net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_=
output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_=
pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfif=
o.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen=
/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_no=
init.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\[4\]) whic=
h is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/no=
c_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_=
width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/i=
nst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d=
1_reg\[4\]) that has an active asychronous set or reset. This may cause cor=
ruption of the memory contents and/or read values when the set/reset is ass=
erted and is not analyzed by the default static timing analysis. It is sugg=
ested to eliminate the use of a set/reset to registers driving this RAMB pi=
n or else use a synchronous reset in which the assertion of the reset is ti=
med by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[0=
\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyl=
d_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/g=
ntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnati=
vebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.ram/DEVI=
CE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin =
e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output=
_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_f=
ifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/g=
rf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbra=
m.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.r=
am/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR\[11\] =
(net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_=
output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_=
pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfif=
o.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen=
/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_no=
init.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\[5\]) whic=
h is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/no=
c_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_=
width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/i=
nst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d=
1_reg\[5\]) that has an active asychronous set or reset. This may cause cor=
ruption of the memory contents and/or read values when the set/reset is ass=
erted and is not analyzed by the default static timing analysis. It is sugg=
ested to eliminate the use of a set/reset to registers driving this RAMB pi=
n or else use a synchronous reset in which the assertion of the reset is ti=
med by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[0=
\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyl=
d_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/g=
ntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnati=
vebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.ram/DEVI=
CE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin =
e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output=
_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_f=
ifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/g=
rf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbra=
m.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.r=
am/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR\[12\] =
(net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_=
output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_=
pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfif=
o.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen=
/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_no=
init.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\[6\]) whic=
h is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/no=
c_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_=
width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/i=
nst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d=
1_reg\[6\]) that has an active asychronous set or reset. This may cause cor=
ruption of the memory contents and/or read values when the set/reset is ass=
erted and is not analyzed by the default static timing analysis. It is sugg=
ested to eliminate the use of a set/reset to registers driving this RAMB pi=
n or else use a synchronous reset in which the assertion of the reset is ti=
med by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[0=
\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyl=
d_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/g=
ntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnati=
vebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.ram/DEVI=
CE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin =
e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output=
_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_f=
ifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/g=
rf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbra=
m.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.r=
am/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR\[13\] =
(net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_=
output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_=
pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfif=
o.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen=
/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_no=
init.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\[7\]) whic=
h is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/no=
c_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_=
width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/i=
nst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d=
1_reg\[7\]) that has an active asychronous set or reset. This may cause cor=
ruption of the memory contents and/or read values when the set/reset is ass=
erted and is not analyzed by the default static timing analysis. It is sugg=
ested to eliminate the use of a set/reset to registers driving this RAMB pi=
n or else use a synchronous reset in which the assertion of the reset is ti=
med by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[0=
\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyl=
d_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/g=
ntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnati=
vebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.ram/DEVI=
CE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin =
e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output=
_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_f=
ifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/g=
rf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbra=
m.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.r=
am/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR\[14\] =
(net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_=
output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_=
pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfif=
o.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen=
/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_no=
init.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\[8\]) whic=
h is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/no=
c_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_=
width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/i=
nst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d=
1_reg\[8\]) that has an active asychronous set or reset. This may cause cor=
ruption of the memory contents and/or read values when the set/reset is ass=
erted and is not analyzed by the default static timing analysis. It is sugg=
ested to eliminate the use of a set/reset to registers driving this RAMB pi=
n or else use a synchronous reset in which the assertion of the reset is ti=
med by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[0=
\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyl=
d_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/g=
ntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnati=
vebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.ram/DEVI=
CE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin =
e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output=
_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_f=
ifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/g=
rf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbra=
m.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.r=
am/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR\[9\] (=
net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_o=
utput_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_p=
yld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo=
.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/=
gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noi=
nit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\[3\]) which=
 is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc=
_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_w=
idth_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/in=
st_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1=
_reg\[3\]) that has an active asychronous set or reset. This may cause corr=
uption of the memory contents and/or read values when the set/reset is asse=
rted and is not analyzed by the default static timing analysis. It is sugge=
sted to eliminate the use of a set/reset to registers driving this RAMB pin=
 or else use a synchronous reset in which the assertion of the reset is tim=
ed by default.

WARNING: \[DRC REQP-1840\] RAMB18 async control check: The RAMB18E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i=
/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg has an input control =
pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport=
_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg/ENBWREN (n=
et: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport=
_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/p_0_in7_out) which=
 is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_=
shell_radio_i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_section\[0=
\].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd=
/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set or =
reset. This may cause corruption of the memory contents and/or read values =
when the set/reset is asserted and is not analyzed by the default static ti=
ming analysis. It is suggested to eliminate the use of a set/reset to regis=
ters driving this RAMB pin or else use a synchronous reset in which the ass=
ertion of the reset is timed by default.

WARNING: \[DRC REQP-1840\] RAMB18 async control check: The RAMB18E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i=
/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg has an input control =
pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport=
_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg/WEBWE\[0\]=
 (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlp=
ort_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/p_0_in7_out) wh=
ich is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/n=
oc_shell_radio_i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_section=
\[0\].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0=
.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set =
or reset. This may cause corruption of the memory contents and/or read valu=
es when the set/reset is asserted and is not analyzed by the default static=
 timing analysis. It is suggested to eliminate the use of a set/reset to re=
gisters driving this RAMB pin or else use a synchronous reset in which the =
assertion of the reset is timed by default.

WARNING: \[DRC REQP-1840\] RAMB18 async control check: The RAMB18E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i=
/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg has an input control =
pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport=
_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg/WEBWE\[1\]=
 (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlp=
ort_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/p_0_in7_out) wh=
ich is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/n=
oc_shell_radio_i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_section=
\[0\].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0=
.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set =
or reset. This may cause corruption of the memory contents and/or read valu=
es when the set/reset is asserted and is not analyzed by the default static=
 timing analysis. It is suggested to eliminate the use of a set/reset to re=
gisters driving this RAMB pin or else use a synchronous reset in which the =
assertion of the reset is timed by default.

WARNING: \[DRC REQP-1840\] RAMB18 async control check: The RAMB18E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i=
/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg has an input control =
pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport=
_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg/WEBWE\[2\]=
 (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlp=
ort_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/p_0_in7_out) wh=
ich is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/n=
oc_shell_radio_i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_section=
\[0\].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0=
.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set =
or reset. This may cause corruption of the memory contents and/or read valu=
es when the set/reset is asserted and is not analyzed by the default static=
 timing analysis. It is suggested to eliminate the use of a set/reset to re=
gisters driving this RAMB pin or else use a synchronous reset in which the =
assertion of the reset is timed by default.

WARNING: \[DRC REQP-1840\] RAMB18 async control check: The RAMB18E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i=
/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg has an input control =
pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport=
_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg/WEBWE\[3\]=
 (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlp=
ort_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/p_0_in7_out) wh=
ich is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/n=
oc_shell_radio_i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_section=
\[0\].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0=
.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set =
or reset. This may cause corruption of the memory contents and/or read valu=
es when the set/reset is asserted and is not analyzed by the default static=
 timing analysis. It is suggested to eliminate the use of a set/reset to re=
gisters driving this RAMB pin or else use a synchronous reset in which the =
assertion of the reset is timed by default.

\[00:10:42\] Starting Placer Task

\[00:10:42\] Current task: Placer +++ Current Phase: Starting

\[00:10:42\] Current task: Placer +++ Current Phase: 1 Placer Initializatio=
n

\[00:10:42\] Current task: Placer +++ Current Phase: 1.1 Placer Initializat=
ion Netlist Sorting

WARNING: \[Place 30-87\] Partially locked IO Bus is found. Following compon=
ents of the IO Bus DB_EXP_1_8V are not locked:  'DB_EXP_1_8V\[30\]'  'DB_EX=
P_1_8V\[29\]'  'DB_EXP_1_8V\[28\]'  'DB_EXP_1_8V\[27\]'  'DB_EXP_1_8V\[26\]=
'  'DB_EXP_1_8V\[25\]'  'DB_EXP_1_8V\[23\]'  'DB_EXP_1_8V\[22\]'  'DB_EXP_1=
_8V\[21\]'  'DB_EXP_1_8V\[20\]'  'DB_EXP_1_8V\[19\]'  'DB_EXP_1_8V\[18\]'  =
'DB_EXP_1_8V\[17\]'  'DB_EXP_1_8V\[16\]'  'DB_EXP_1_8V\[15\]'  'DB_EXP_1_8V=
\[14\]'  'DB_EXP_1_8V\[13\]'  'DB_EXP_1_8V\[12\]'  'DB_EXP_1_8V\[7\]'  'DB_=
EXP_1_8V\[4\]'  'DB_EXP_1_8V\[3\]'  'DB_EXP_1_8V\[2\]'  'DB_EXP_1_8V\[1\]' =
 'DB_EXP_1_8V\[0\]'

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[0\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[10\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[11\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[12\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[13\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[14\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[15\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[16\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[17\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[18\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[19\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[1\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[20\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[21\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[22\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[23\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[24\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[25\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[26\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[27\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[28\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[29\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[2\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[30\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[31\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[3\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[4\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[5\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[6\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[7\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[8\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[9\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[0\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[16\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[17\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[18\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[19\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[1\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[20\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[21\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[22\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[23\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[24\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[25\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[26\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[27\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[28\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[29\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[2\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[30\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[31\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[0\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[10\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[11\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[12\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[13\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[14\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[15\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[16\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[17\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[18\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[19\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[1\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[20\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[21\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[22\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[23\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[24\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[25\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[26\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[27\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[28\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[29\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[2\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[30\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[31\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[3\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[4\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[5\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[6\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[7\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[8\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[9\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[0\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[16\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[17\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[18\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[19\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[1\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[20\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[21\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[22\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[23\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[24\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[25\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[26\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[27\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[28\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[29\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[2\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

WARNING: \[Place 30-568\] A LUT 'e31x_core_inst/tpps_i_2' is driving clock =
pin of 25 registers. This could lead to large hold time violations. First f=
ew involved registers are:

WARNING: \[Place 30-172\] Sub-optimal placement for a clock-capable IO pin =
and PLL pair. This is normally an ERROR but the CLOCK_DEDICATED_ROUTE const=
raint is set to FALSE allowing your design to continue. The use of this ove=
rride is highly discouraged as it may lead to very poor timing results. It =
is recommended that this error condition be corrected in the design.

\[00:10:50\] Current task: Placer +++ Current Phase: 1.2 IO Placement/ Cloc=
k Placement/ Build Placer Device

WARNING: \[Place 30-770\] High register utilization is forcing place_design=
 to place up to 8 registers per slice which may impact placement success an=
d/or routing congestion.

\[00:11:12\] Current task: Placer +++ Current Phase: 1.3 Build Placer Netli=
st Model

\[00:11:13\] Current task: Placer +++ Current Phase: 1.4 Constrain Clocks/M=
acros

\[00:11:13\] Current task: Placer +++ Current Phase: 2 Global Placement

\[00:11:19\] Current task: Placer +++ Current Phase: 2.1 Floorplanning

\[00:11:26\] Current task: Placer +++ Current Phase: 2.2 Update Timing befo=
re SLR Path Opt

\[00:12:22\] Current task: Placer +++ Current Phase: 2.4 Global Placement C=
ore

\[00:12:47\] Current task: Placer +++ Current Phase: 2.4.1 Physical Synthes=
is In Placer

\[00:12:47\] Current task: Placer +++ Current Phase: 3 Detail Placement

\[00:13:03\] Current task: Placer +++ Current Phase: 3.1 Commit Multi Colum=
n Macros

\[00:13:04\] Current task: Placer +++ Current Phase: 3.3 Area Swap Optimiza=
tion

\[00:13:05\] Current task: Placer +++ Current Phase: 3.4 Pipeline Register =
Optimization

\[00:13:13\] Current task: Placer +++ Current Phase: 3.5 Fast Optimization

ERROR: \[Place 30-487\] The packing of instances into the device could not =
be obeyed. There are a total of 13300 slices in the device, of which 9737 s=
lices are available, however, the unplaced instances require 10808 slices. =
Please analyze your design to determine if the number of LUTs, FFs, and/or =
control sets can be reduced.

ERROR: \[Place 30-99\] Placer failed with error: 'Detail Placement failed p=
lease check previous errors for details.'

ERROR: \[Common 17-69\] Command failed: Placer could not place all instance=
s

\[00:13:44\] Current task: Placer +++ Current Phase: 3.6 Small Shape Detail=
 Placement

\[00:13:45\] Current task: Placer +++ Current Phase: Finished

\[00:13:45\] Process terminated. Status: Failure

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

Warnings:           877

Critical Warnings:  122

Errors:             3

make\[1\]: \*\*\* \[Makefile.e31x.inc:121: bin\] Error 1

make\[1\]: Leaving directory '/home/grcusrp/uhd/fpga/usrp3/top/e31x'

make: \*\*\* \[Makefile:80: E310_SG3\] Error 2

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3/top/e31x$=20

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3/top/e31x$ ls

axi_pmu.v       build-E310_SG3_IP  dts                      e310_rfnoc_imag=
e_core.vh   e31x_core.v         e31x_idle.v      e31x.v    Makefile.e31x.in=
c  sim

build           build_e31x.tcl     e310_io.v                e310_rfnoc_imag=
e_core.yml  e31x_dram.v         e31x_pins.xdc    ip        ppsloop.v       =
   spi_slave.v

build-E310_SG3  build-ip           e310_rfnoc_image_core.v  e310_static_rou=
ter.hex     e31x_idle_pins.xdc  e31x_timing.xdc  Makefile  setupenv.sh

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3/top/e31x$ ERROR: \[Place 30=
-487\] The packing of instances into the device could not be obeyed. There =
are a total of 13300 slices in the device, of which 9737 slices are availab=
le, however, the unplaced instances require 10808 slices. Please analyze yo=
ur design to determine if the number of LUTs, FFs, and/or control sets can =
be reduced.

ERROR:: command not found

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3/top/e31x$ ERROR: \[Place 30=
-99\] Placer failed with error: 'Detail Placement failed please check previ=
ous errors for details.'

ERROR:: command not found

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3/top/e31x$ ERROR: \[Common 1=
7-69\] Command failed: Placer could not place all instances

ERROR:: command not found

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3/top/e31x$ \[00:13:44\] Curr=
ent task: Placer +++ Current Phase: 3.6 Small Shape Detail Placement

\[00:13:44\]: command not found

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3/top/e31x$ \[00:13:45\] Curr=
ent task: Placer +++ Current Phase: Finished

\[00:13:45\]: command not found

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3/top/e31x$ \[00:13:45\] Proc=
ess terminated. Status: Failure

\[00:13:45\]: command not found

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3/top/e31x$ cd $home

grcusrp@grcusrp-ThinkPad-T470:\~$ cd /Downloads

bash: cd: /Downloads: No such file or directory

grcusrp@grcusrp-ThinkPad-T470:\~$ cd \\Downloads

grcusrp@grcusrp-ThinkPad-T470:\~/Downloads$ ls

 121-1-322-1-10-20220925.pdf                  Cloudpath-x64.tar.bz2        =
          e3xx_e310_sg3_sdimg_default-v4.4.0.0.zip   LSFR8.py              =
       LSFR_copy-trnasmitter-pulse.grc   Xilinx.bin

 AR76780_Vivado_2021_1_preliminary_rev1      'e310_rfnoc_image_core(1).yml'=
          hackRFtransmit.py                         'LSFR_copy_receiver(1).=
grc'   LSFR.py

 AR76780_Vivado_2021_1_preliminary_rev1.zip   e310_rfnoc_image_core.yml    =
          lesson08alt_hackRFtransmit.grc             LSFR_copy_receiver.grc=
       pulse.py

 Cloudpath-x64                                e3xx_e310_sg3_sdimg_default-v=
4.4.0.0   LSFR1.py                                   LSFR_copy-trnasmitter.=
grc    usrp_e310_fs.sdimg

grcusrp@grcusrp-ThinkPad-T470:\~/Downloads$ rfnoc_image_builder -y ./e310_r=
fnoc_image_core.yml

\[ERR\] FPGA path not found. Specify with --fpga-dir argument.

grcusrp@grcusrp-ThinkPad-T470:\~/Downloads$ cd

grcusrp@grcusrp-ThinkPad-T470:\~$ cd uhd

grcusrp@grcusrp-ThinkPad-T470:\~/uhd$ cd fpga

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga$ cd usrp3

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3$ cd top

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3/top$ cd e31x

grcusrp@grcusrp-ThinkPad-T470:\~/uhd/fpga/usrp3/top/e31x$ rfnoc_image_build=
er -y ./e310_rfnoc_image_core.yml

\[INF\] Using FPGA directory /home/grcusrp/uhd/fpga

\[INF\] Selected device e310

\[INF\] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.

\[INF\] Using e310_bsp.yml from /usr/local/share/uhd/rfnoc/core.

\[INF\] Adding block description from duc.yml (/usr/local/share/uhd/rfnoc/b=
locks).

\[INF\] Adding block description from split_stream.yml (/usr/local/share/uh=
d/rfnoc/blocks).

\[INF\] Adding block description from window.yml (/usr/local/share/uhd/rfno=
c/blocks).

\[INF\] Adding block description from vector_iir.yml (/usr/local/share/uhd/=
rfnoc/blocks).

\[INF\] Adding block description from addsub.yml (/usr/local/share/uhd/rfno=
c/blocks).

\[INF\] Adding block description from logpwr.yml (/usr/local/share/uhd/rfno=
c/blocks).

\[INF\] Adding block description from null_src_sink.yml (/usr/local/share/u=
hd/rfnoc/blocks).

\[INF\] Adding block description from fir_filter.yml (/usr/local/share/uhd/=
rfnoc/blocks).

\[INF\] Adding block description from ddc.yml (/usr/local/share/uhd/rfnoc/b=
locks).

\[INF\] Adding block description from moving_avg.yml (/usr/local/share/uhd/=
rfnoc/blocks).

\[INF\] Adding block description from fft_1x64.yml (/usr/local/share/uhd/rf=
noc/blocks).

\[INF\] Adding block description from keep_one_in_n.yml (/usr/local/share/u=
hd/rfnoc/blocks).

\[INF\] Adding block description from radio.yml (/usr/local/share/uhd/rfnoc=
/blocks).

\[INF\] Adding block description from switchboard.yml (/usr/local/share/uhd=
/rfnoc/blocks).

\[INF\] Adding block description from replay.yml (/usr/local/share/uhd/rfno=
c/blocks).

\[INF\] Adding block description from siggen.yml (/usr/local/share/uhd/rfno=
c/blocks).

\[INF\] Adding block description from axi_ram_fifo.yml (/usr/local/share/uh=
d/rfnoc/blocks).

\[INF\] Adding block description from fosphor.yml (/usr/local/share/uhd/rfn=
oc/blocks).

\[INF\] Plausibility checks on the current configuration

\[INF\] Writing static routing table to /home/grcusrp/uhd/fpga/usrp3/top/e3=
1x/e310_static_router.hex

\[INF\] Writing image core to /home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rf=
noc_image_core.v

\[INF\] Writing image core header to /home/grcusrp/uhd/fpga/usrp3/top/e31x/=
e310_rfnoc_image_core.vh

\[INF\] Launching build with the following settings:

\[INF\]  \* Build Directory: /home/grcusrp/uhd/fpga/usrp3/top/e31x

\[INF\]  \* Target: DRAM=3D1 E310_SG3

\[INF\]  \* Image Core File: /home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfn=
oc_image_core.v

\[INF\]  \* Edge Table File: /home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_sta=
tic_router.hex

Setting up a 64-bit FPGA build environment for the USRP-E31x...

\- Vivado: Found (/tools/Xilinx/Vivado/2021.1/bin)

          Installed version is Vivado v2021.1_AR76780 (64-bit)

Environment successfully initialized.

make -f Makefile.e31x.inc viv_ip    NAME=3DE310_SG3_IP ARCH=3Dzynq PART_ID=
=3Dxc7z020/clg484/-3 E310_SG3=3D1 TOP_MODULE=3De31x EXTRA_DEFS=3D"E310_SG3=
=3D1" DEFAULT_RFNOC_IMAGE_CORE_FILE=3De310_rfnoc_image_core.v DEFAULT_EDGE_=
FILE=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_static_router.hex

make\[1\]: Entering directory '/home/grcusrp/uhd/fpga/usrp3/top/e31x'

BUILDER: Checking tools...

\* GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)

\* Python 3.8.10

\* Vivado v2021.1_AR76780 (64-bit)

IP build for E310_SG3_IP DONE . . .

make\[1\]: Leaving directory '/home/grcusrp/uhd/fpga/usrp3/top/e31x'

make -f Makefile.e31x.inc bin NAME=3DE310_SG3 ARCH=3Dzynq PART_ID=3Dxc7z020=
/clg484/-3  E310_SG3=3D1 ENABLE_DRAM=3D1 TOP_MODULE=3De31x EXTRA_DEFS=3D" E=
310_SG3=3D1 ENABLE_DRAM=3D1" DEFAULT_RFNOC_IMAGE_CORE_FILE=3De310_rfnoc_ima=
ge_core.v DEFAULT_EDGE_FILE=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_st=
atic_router.hex

make\[1\]: Entering directory '/home/grcusrp/uhd/fpga/usrp3/top/e31x'

BUILDER: Checking tools...

\* GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)

\* Python 3.8.10

\* Vivado v2021.1_AR76780 (64-bit)

Could not read parser configuration from: /home/grcusrp/uhd/fpga/usrp3/top/=
e31x/dev_config.json

\[00:00:00\] Executing command: vivado -mode batch -source /home/grcusrp/uh=
d/fpga/usrp3/top/e31x/build_e31x.tcl -log build.log -journal e31x.jou

WARNING: \[filemgmt 56-12\] File '/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/bl=
ocks/rfnoc_block_replay/rfnoc_block_replay_regs.vh' cannot be added to the =
project because it already exists in the project, skipping this file

WARNING: \[filemgmt 56-12\] File '/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/bl=
ocks/rfnoc_block_replay/axis_replay.v' cannot be added to the project becau=
se it already exists in the project, skipping this file

WARNING: \[filemgmt 56-12\] File '/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/bl=
ocks/rfnoc_block_replay/noc_shell_replay.v' cannot be added to the project =
because it already exists in the project, skipping this file

WARNING: \[filemgmt 56-12\] File '/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/bl=
ocks/rfnoc_block_replay/rfnoc_block_replay.v' cannot be added to the projec=
t because it already exists in the project, skipping this file

\[00:00:15\] Current task: Initialization +++ Current Phase: Starting

\[00:00:15\] Current task: Initialization +++ Current Phase: Finished

\[00:00:15\] Executing Tcl: synth_design -top e31x -part xc7z020clg484-3 -v=
erilog_define E310_SG3=3D1 -verilog_define ENABLE_DRAM=3D1 -verilog_define =
GIT_HASH=3D32'hf5fac246 -verilog_define RFNOC_EDGE_TBL_FILE=3D/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/e310_static_router.hex -verilog_define RFNOC_IMAGE=
_CORE_HDR=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.vh =
-verilog_define UHD_FPGA_DIR=3D/home/grcusrp/uhd/fpga/usrp3/top/../..

\[00:00:15\] Starting Synthesis Command

WARNING: \[Synth 8-2507\] parameter declaration becomes local in cam_priori=
ty_encoder with formal parameter declaration list \[/home/grcusrp/uhd/fpga/=
usrp3/lib/control/map/cam_priority_encoder.v:46\]

WARNING: \[Synth 8-2507\] parameter declaration becomes local in cam_priori=
ty_encoder with formal parameter declaration list \[/home/grcusrp/uhd/fpga/=
usrp3/lib/control/map/cam_priority_encoder.v:47\]

WARNING: \[Synth 8-2507\] parameter declaration becomes local in axis_data_=
swap with formal parameter declaration list \[/home/grcusrp/uhd/fpga/usrp3/=
lib/axi/axis_data_swap.v:54\]

WARNING: \[Synth 8-2507\] parameter declaration becomes local in axis_data_=
swap with formal parameter declaration list \[/home/grcusrp/uhd/fpga/usrp3/=
lib/axi/axis_data_swap.v:55\]

WARNING: \[Synth 8-2507\] parameter declaration becomes local in dds_freq_t=
une_duc with formal parameter declaration list \[/home/grcusrp/uhd/fpga/usr=
p3/lib/rfnoc/dds_freq_tune_duc.v:128\]

WARNING: \[Synth 8-2507\] parameter declaration becomes local in axis_ctrl_=
crossbar_2d_mesh with formal parameter declaration list \[/home/grcusrp/uhd=
/fpga/usrp3/lib/rfnoc/crossbar/mesh_node_mapping.vh:7\]

WARNING: \[Synth 8-2507\] parameter declaration becomes local in torus_2d_d=
or_router_single_sw with formal parameter declaration list \[/home/grcusrp/=
uhd/fpga/usrp3/lib/rfnoc/crossbar/mesh_node_mapping.vh:7\]

WARNING: \[Synth 8-2507\] parameter declaration becomes local in mesh_2d_do=
r_router_single_sw with formal parameter declaration list \[/home/grcusrp/u=
hd/fpga/usrp3/lib/rfnoc/crossbar/mesh_node_mapping.vh:7\]

WARNING: \[Synth 8-7071\] port 'CLKFBOUT' of module 'PLLE2_ADV' is unconnec=
ted for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v=
:44\]

WARNING: \[Synth 8-7071\] port 'CLKOUT2' of module 'PLLE2_ADV' is unconnect=
ed for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:=
44\]

WARNING: \[Synth 8-7071\] port 'CLKOUT3' of module 'PLLE2_ADV' is unconnect=
ed for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:=
44\]

WARNING: \[Synth 8-7071\] port 'CLKOUT4' of module 'PLLE2_ADV' is unconnect=
ed for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:=
44\]

WARNING: \[Synth 8-7071\] port 'CLKOUT5' of module 'PLLE2_ADV' is unconnect=
ed for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:=
44\]

WARNING: \[Synth 8-7071\] port 'DO' of module 'PLLE2_ADV' is unconnected fo=
r instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44\]

WARNING: \[Synth 8-7071\] port 'DRDY' of module 'PLLE2_ADV' is unconnected =
for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44\=
]

WARNING: \[Synth 8-7071\] port 'CLKFBIN' of module 'PLLE2_ADV' is unconnect=
ed for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:=
44\]

WARNING: \[Synth 8-7071\] port 'CLKIN2' of module 'PLLE2_ADV' is unconnecte=
d for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:4=
4\]

WARNING: \[Synth 8-7071\] port 'CLKINSEL' of module 'PLLE2_ADV' is unconnec=
ted for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v=
:44\]

WARNING: \[Synth 8-7071\] port 'DADDR' of module 'PLLE2_ADV' is unconnected=
 for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44=
\]

WARNING: \[Synth 8-7071\] port 'DCLK' of module 'PLLE2_ADV' is unconnected =
for instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44\=
]

WARNING: \[Synth 8-7071\] port 'DEN' of module 'PLLE2_ADV' is unconnected f=
or instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44\]

WARNING: \[Synth 8-7071\] port 'DI' of module 'PLLE2_ADV' is unconnected fo=
r instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44\]

WARNING: \[Synth 8-7071\] port 'DWE' of module 'PLLE2_ADV' is unconnected f=
or instance 'clkgen' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44\]

WARNING: \[Synth 8-7023\] instance 'clkgen' of module 'PLLE2_ADV' has 21 co=
nnections declared, but only 6 given \[/home/grcusrp/uhd/fpga/usrp3/top/e31=
x/ppsloop.v:44\]

WARNING: \[Synth 8-7071\] port 'reg_wr_keep' of module 'axil_regport_master=
' is unconnected for instance 'eth_dma_reg_mst_i' \[/home/grcusrp/uhd/fpga/=
usrp3/lib/rfnoc/xport/eth_internal.v:128\]

WARNING: \[Synth 8-7023\] instance 'eth_dma_reg_mst_i' of module 'axil_regp=
ort_master' has 28 connections declared, but only 27 given \[/home/grcusrp/=
uhd/fpga/usrp3/lib/rfnoc/xport/eth_internal.v:128\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst1' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst1' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-693\] zero replication count - replication ignored \[/ho=
me/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:77\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst2' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst2' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst1' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst1' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-693\] zero replication count - replication ignored \[/ho=
me/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:77\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst2' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst2' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst1' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst1' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-693\] zero replication count - replication ignored \[/ho=
me/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:77\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst2' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst2' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst1' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst1' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-693\] zero replication count - replication ignored \[/ho=
me/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:77\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst2' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst2' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst1' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst1' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67\]

WARNING: \[Synth 8-693\] zero replication count - replication ignored \[/ho=
me/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:77\]

WARNING: \[Synth 8-7071\] port 'output_unencoded' of module 'cam_priority_e=
ncoder' is unconnected for instance 'priority_encoder_inst2' \[/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-7023\] instance 'priority_encoder_inst2' of module 'cam_=
priority_encoder' has 4 connections declared, but only 3 given \[/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76\]

WARNING: \[Synth 8-689\] width (32) of port connection 's_axi_awaddr' does =
not match port width (14) of module 'eth_internal' \[/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e31x.v:440\]

WARNING: \[Synth 8-689\] width (32) of port connection 's_axi_araddr' does =
not match port width (14) of module 'eth_internal' \[/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e31x.v:453\]

WARNING: \[Synth 8-7071\] port 'm_axi_awprot' of module 'e31x_ps_bd_auto_cc=
_2' is unconnected for instance 'auto_cc' \[/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:32=
25\]

WARNING: \[Synth 8-7071\] port 'm_axi_wstrb' of module 'e31x_ps_bd_auto_cc_=
2' is unconnected for instance 'auto_cc' \[/home/grcusrp/uhd/fpga/usrp3/top=
/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:322=
5\]

WARNING: \[Synth 8-7071\] port 'm_axi_arprot' of module 'e31x_ps_bd_auto_cc=
_2' is unconnected for instance 'auto_cc' \[/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:32=
25\]

WARNING: \[Synth 8-7023\] instance 'auto_cc' of module 'e31x_ps_bd_auto_cc_=
2' has 42 connections declared, but only 39 given \[/home/grcusrp/uhd/fpga/=
usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps=
_bd.v:3225\]

WARNING: \[Synth 8-7071\] port 'aclk2x' of module 'axi_register_slice_v2_1_=
24_axi_register_slice' is unconnected for instance 'SI_REG' \[/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi=
_inter_2x64_128_bd/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v:4=
392\]

WARNING: \[Synth 8-7023\] instance 'SI_REG' of module 'axi_register_slice_v=
2_1_24_axi_register_slice' has 93 connections declared, but only 92 given \=
[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2=
x64_128_bd/axi_inter_2x64_128_bd/ipshared/6e0d/hdl/axi_protocol_converter_v=
2_1_vl_rfs.v:4392\]

WARNING: \[Synth 8-7071\] port 'aclk2x' of module 'axi_register_slice_v2_1_=
24_axi_register_slice' is unconnected for instance 'MI_REG' \[/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi=
_inter_2x64_128_bd/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v:4=
647\]

WARNING: \[Synth 8-7023\] instance 'MI_REG' of module 'axi_register_slice_v=
2_1_24_axi_register_slice' has 93 connections declared, but only 92 given \=
[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2=
x64_128_bd/axi_inter_2x64_128_bd/ipshared/6e0d/hdl/axi_protocol_converter_v=
2_1_vl_rfs.v:4647\]

WARNING: \[Synth 8-7071\] port 'axi_dma_tstvec' of module 'e31x_ps_bd_axi_d=
ma_eth_internal_0' is unconnected for instance 'axi_dma_eth_internal' \[/ho=
me/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x=
_ps_bd/synth/e31x_ps_bd.v:420\]

WARNING: \[Synth 8-7023\] instance 'axi_dma_eth_internal' of module 'e31x_p=
s_bd_axi_dma_eth_internal_0' has 94 connections declared, but only 93 given=
 \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_b=
d/e31x_ps_bd/synth/e31x_ps_bd.v:420\]

WARNING: \[Synth 8-7071\] port 'M_AXI_GP0_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'M_AXI_GP1_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_GP0_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_GP1_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_ACP_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP0_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP3_ARESETN' of module 'processing_sy=
stem7_v5_5_processing_system7' is unconnected for instance 'inst' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7=
_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'DMA0_RSTN' of module 'processing_system7_v5=
_5_processing_system7' is unconnected for instance 'inst' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e3=
1x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:8=
28\]

WARNING: \[Synth 8-7071\] port 'DMA1_RSTN' of module 'processing_system7_v5=
_5_processing_system7' is unconnected for instance 'inst' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e3=
1x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:8=
28\]

WARNING: \[Synth 8-7071\] port 'DMA2_RSTN' of module 'processing_system7_v5=
_5_processing_system7' is unconnected for instance 'inst' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e3=
1x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:8=
28\]

WARNING: \[Synth 8-7071\] port 'DMA3_RSTN' of module 'processing_system7_v5=
_5_processing_system7' is unconnected for instance 'inst' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e3=
1x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:8=
28\]

WARNING: \[Synth 8-7023\] instance 'inst' of module 'processing_system7_v5_=
5_processing_system7' has 685 connections declared, but only 672 given \[/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31=
x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_sy=
stem7_0_0.v:828\]

WARNING: \[Synth 8-7071\] port 'S_AXI_GP0_BID' of module 'e31x_ps_bd_proces=
sing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_=
ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_GP0_RID' of module 'e31x_ps_bd_proces=
sing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_=
ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_ARREADY' of module 'e31x_ps_bd_pr=
ocessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e=
31x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_RLAST' of module 'e31x_ps_bd_proc=
essing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31=
x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_RVALID' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_RRESP' of module 'e31x_ps_bd_proc=
essing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31=
x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_BID' of module 'e31x_ps_bd_proces=
sing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_=
ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_RID' of module 'e31x_ps_bd_proces=
sing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_=
ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_RDATA' of module 'e31x_ps_bd_proc=
essing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31=
x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_RCOUNT' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_WCOUNT' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_RACOUNT' of module 'e31x_ps_bd_pr=
ocessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e=
31x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP1_WACOUNT' of module 'e31x_ps_bd_pr=
ocessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e=
31x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_AWREADY' of module 'e31x_ps_bd_pr=
ocessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e=
31x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_BVALID' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_WREADY' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_BRESP' of module 'e31x_ps_bd_proc=
essing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31=
x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_BID' of module 'e31x_ps_bd_proces=
sing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_=
ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_RID' of module 'e31x_ps_bd_proces=
sing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_=
ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_RCOUNT' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_WCOUNT' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_RACOUNT' of module 'e31x_ps_bd_pr=
ocessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e=
31x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'S_AXI_HP2_WACOUNT' of module 'e31x_ps_bd_pr=
ocessing_system7_0_0' is unconnected for instance 'processing_system7_0' \[=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e=
31x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7023\] instance 'processing_system7_0' of module 'e31x_p=
s_bd_processing_system7_0_0' has 229 connections declared, but only 206 giv=
en \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps=
_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478\]

WARNING: \[Synth 8-7071\] port 'mb_reset' of module 'bd_cc08_psr_aclk_0' is=
 unconnected for instance 'psr_aclk' \[/home/grcusrp/uhd/fpga/usrp3/top/e31=
x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_smartconnect=
_dma_0/bd_0/synth/bd_cc08.v:798\]

WARNING: \[Synth 8-7071\] port 'bus_struct_reset' of module 'bd_cc08_psr_ac=
lk_0' is unconnected for instance 'psr_aclk' \[/home/grcusrp/uhd/fpga/usrp3=
/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_smar=
tconnect_dma_0/bd_0/synth/bd_cc08.v:798\]

WARNING: \[Synth 8-7071\] port 'peripheral_reset' of module 'bd_cc08_psr_ac=
lk_0' is unconnected for instance 'psr_aclk' \[/home/grcusrp/uhd/fpga/usrp3=
/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_smar=
tconnect_dma_0/bd_0/synth/bd_cc08.v:798\]

WARNING: \[Synth 8-7071\] port 'peripheral_aresetn' of module 'bd_cc08_psr_=
aclk_0' is unconnected for instance 'psr_aclk' \[/home/grcusrp/uhd/fpga/usr=
p3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_sm=
artconnect_dma_0/bd_0/synth/bd_cc08.v:798\]

WARNING: \[Synth 8-7023\] instance 'psr_aclk' of module 'bd_cc08_psr_aclk_0=
' has 10 connections declared, but only 6 given \[/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_s=
martconnect_dma_0/bd_0/synth/bd_cc08.v:798\]

WARNING: \[Synth 8-7071\] port 'm_axi_awburst' of module 'bd_cc08_s00tr_0' =
is unconnected for instance 's00_transaction_regulator' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x=
_ps_bd_smartconnect_dma_0/bd_0/synth/bd_cc08.v:1706\]

WARNING: \[Synth 8-7071\] port 'm_axi_arburst' of module 'bd_cc08_s00tr_0' =
is unconnected for instance 's00_transaction_regulator' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x=
_ps_bd_smartconnect_dma_0/bd_0/synth/bd_cc08.v:1706\]

WARNING: \[Synth 8-7023\] instance 's00_transaction_regulator' of module 'b=
d_cc08_s00tr_0' has 82 connections declared, but only 80 given \[/home/grcu=
srp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/=
ip/e31x_ps_bd_smartconnect_dma_0/bd_0/synth/bd_cc08.v:1706\]

WARNING: \[Synth 8-6104\] Input port 'PS_CLK' has an internal driver \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/e31x.v:541\]

WARNING: \[Synth 8-6104\] Input port 'PS_PORB' has an internal driver \[/ho=
me/grcusrp/uhd/fpga/usrp3/top/e31x/e31x.v:542\]

WARNING: \[Synth 8-6104\] Input port 'PS_SRSTB' has an internal driver \[/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/e31x.v:543\]

WARNING: \[Synth 8-689\] width (32) of port connection 'm_axi_eth_internal_=
araddr' does not match port width (31) of module 'e31x_ps_bd' \[/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/e31x.v:577\]

WARNING: \[Synth 8-689\] width (32) of port connection 'm_axi_eth_internal_=
awaddr' does not match port width (31) of module 'e31x_ps_bd' \[/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/e31x.v:581\]

WARNING: \[Synth 8-689\] width (1) of port connection 'm_axi_xbar_arprot' d=
oes not match port width (3) of module 'e31x_ps_bd' \[/home/grcusrp/uhd/fpg=
a/usrp3/top/e31x/e31x.v:611\]

WARNING: \[Synth 8-689\] width (1) of port connection 'm_axi_xbar_awprot' d=
oes not match port width (3) of module 'e31x_ps_bd' \[/home/grcusrp/uhd/fpg=
a/usrp3/top/e31x/e31x.v:615\]

WARNING: \[Synth 8-7071\] port 'CE' of module 'BUFR' is unconnected for ins=
tance 'bufr_rx_clk' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_io.v:44\]

WARNING: \[Synth 8-7071\] port 'CLR' of module 'BUFR' is unconnected for in=
stance 'bufr_rx_clk' \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_io.v:44\]

WARNING: \[Synth 8-7023\] instance 'bufr_rx_clk' of module 'BUFR' has 4 con=
nections declared, but only 2 given \[/home/grcusrp/uhd/fpga/usrp3/top/e31x=
/e310_io.v:44\]

WARNING: \[Synth 8-7071\] port 'deepsleep' of module 'blk_mem_gen_v8_4_4' i=
s unconnected for instance 'w_buffer' \[/home/grcusrp/uhd/fpga/usrp3/top/e3=
1x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ips=
hared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152\]

WARNING: \[Synth 8-7071\] port 'shutdown' of module 'blk_mem_gen_v8_4_4' is=
 unconnected for instance 'w_buffer' \[/home/grcusrp/uhd/fpga/usrp3/top/e31=
x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipsh=
ared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152\]

WARNING: \[Synth 8-7071\] port 'rsta_busy' of module 'blk_mem_gen_v8_4_4' i=
s unconnected for instance 'w_buffer' \[/home/grcusrp/uhd/fpga/usrp3/top/e3=
1x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ips=
hared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152\]

WARNING: \[Synth 8-7071\] port 'rstb_busy' of module 'blk_mem_gen_v8_4_4' i=
s unconnected for instance 'w_buffer' \[/home/grcusrp/uhd/fpga/usrp3/top/e3=
1x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ips=
hared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152\]

WARNING: \[Synth 8-7023\] instance 'w_buffer' of module 'blk_mem_gen_v8_4_4=
' has 63 connections declared, but only 59 given \[/home/grcusrp/uhd/fpga/u=
srp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64=
_128_bd/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152\]

WARNING: \[Synth 8-7071\] port 'aclk2x' of module 'axi_register_slice_v2_1_=
24_axi_register_slice' is unconnected for instance 's_aw_reg' \[/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/a=
xi_inter_2x64_128_bd/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.=
v:10660\]

WARNING: \[Synth 8-7023\] instance 's_aw_reg' of module 'axi_register_slice=
_v2_1_24_axi_register_slice' has 93 connections declared, but only 92 given=
 \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter=
_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3d13/hdl/axi_dwidth_converter_v=
2_1_vlsyn_rfs.v:10660\]

WARNING: \[Synth 8-7071\] port 'aclk2x' of module 'axi_register_slice_v2_1_=
24_axi_register_slice' is unconnected for instance 'si_register_slice_inst'=
 \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter=
_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3d13/hdl/axi_dwidth_converter_v=
2_1_vlsyn_rfs.v:7379\]

WARNING: \[Synth 8-7023\] instance 'si_register_slice_inst' of module 'axi_=
register_slice_v2_1_24_axi_register_slice' has 93 connections declared, but=
 only 92 given \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg4=
84-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3d13/hdl/axi_dwid=
th_converter_v2_1_vlsyn_rfs.v:7379\]

WARNING: \[Synth 8-7071\] port 'm_axi_awregion' of module 'axi_inter_2x64_1=
28_bd_s00_width_conv_0' is unconnected for instance 's00_width_conv' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_1=
28_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:574\]

WARNING: \[Synth 8-7071\] port 'm_axi_arregion' of module 'axi_inter_2x64_1=
28_bd_s00_width_conv_0' is unconnected for instance 's00_width_conv' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_1=
28_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:574\]

WARNING: \[Synth 8-7023\] instance 's00_width_conv' of module 'axi_inter_2x=
64_128_bd_s00_width_conv_0' has 78 connections declared, but only 76 given =
\[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_=
2x64_128_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:574\]

WARNING: \[Synth 8-7071\] port 'm_axi_awregion' of module 'axi_inter_2x64_1=
28_bd_s01_width_conv_0' is unconnected for instance 's01_width_conv' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_1=
28_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:651\]

WARNING: \[Synth 8-7071\] port 'm_axi_arregion' of module 'axi_inter_2x64_1=
28_bd_s01_width_conv_0' is unconnected for instance 's01_width_conv' \[/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_1=
28_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:651\]

WARNING: \[Synth 8-7023\] instance 's01_width_conv' of module 'axi_inter_2x=
64_128_bd_s01_width_conv_0' has 78 connections declared, but only 76 given =
\[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_=
2x64_128_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:651\]

WARNING: \[Synth 8-7071\] port 'aclk2x' of module 'axi_register_slice_v2_1_=
24_axi_register_slice' is unconnected for instance 'reg_slice_mi' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_=
bd/axi_inter_2x64_128_bd/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v:3122\=
]

WARNING: \[Synth 8-7023\] instance 'reg_slice_mi' of module 'axi_register_s=
lice_v2_1_24_axi_register_slice' has 93 connections declared, but only 92 g=
iven \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_i=
nter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3917/hdl/axi_crossbar_v2_1_=
vl_rfs.v:3122\]

WARNING: \[Synth 8-7071\] port 'aclk2x' of module 'axi_register_slice_v2_1_=
24_axi_register_slice' is unconnected for instance 'reg_slice_mi' \[/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_=
bd/axi_inter_2x64_128_bd/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v:3122\=
]

WARNING: \[Synth 8-7023\] instance 'reg_slice_mi' of module 'axi_register_s=
lice_v2_1_24_axi_register_slice' has 93 connections declared, but only 92 g=
iven \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_i=
nter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3917/hdl/axi_crossbar_v2_1_=
vl_rfs.v:3122\]

WARNING: \[Synth 8-7071\] port 's_axi_bid' of module 'axi_inter_2x64_128_bd=
_xbar_0' is unconnected for instance 'xbar' \[/home/grcusrp/uhd/fpga/usrp3/=
top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_=
bd/synth/axi_inter_2x64_128_bd.v:728\]

WARNING: \[Synth 8-7071\] port 's_axi_rid' of module 'axi_inter_2x64_128_bd=
_xbar_0' is unconnected for instance 'xbar' \[/home/grcusrp/uhd/fpga/usrp3/=
top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_=
bd/synth/axi_inter_2x64_128_bd.v:728\]

WARNING: \[Synth 8-7023\] instance 'xbar' of module 'axi_inter_2x64_128_bd_=
xbar_0' has 78 connections declared, but only 76 given \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inte=
r_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:728\]

WARNING: \[Synth 8-689\] width (12) of port connection 'M00_AXI_arid' does =
not match port width (1) of module 'axi_inter_2x64_128_bd' \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/e31x_dram.v:218\]

WARNING: \[Synth 8-689\] width (12) of port connection 'M00_AXI_awid' does =
not match port width (1) of module 'axi_inter_2x64_128_bd' \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/e31x_dram.v:230\]

WARNING: \[Synth 8-689\] width (12) of port connection 'M00_AXI_bid' does n=
ot match port width (1) of module 'axi_inter_2x64_128_bd' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e31x_dram.v:239\]

WARNING: \[Synth 8-689\] width (12) of port connection 'M00_AXI_rid' does n=
ot match port width (1) of module 'axi_inter_2x64_128_bd' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e31x_dram.v:244\]

WARNING: \[Synth 8-689\] width (64) of port connection 'dram_axi_araddr' do=
es not match port width (58) of module 'e31x_dram' \[/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e31x_core.v:766\]

WARNING: \[Synth 8-689\] width (64) of port connection 'dram_axi_awaddr' do=
es not match port width (58) of module 'e31x_dram' \[/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e31x_core.v:778\]

WARNING: \[Synth 8-7071\] port 'time_increment' of module 'timekeeper' is u=
nconnected for instance 'timekeeper_i' \[/home/grcusrp/uhd/fpga/usrp3/top/e=
31x/e31x_core.v:664\]

WARNING: \[Synth 8-7023\] instance 'timekeeper_i' of module 'timekeeper' ha=
s 15 connections declared, but only 14 given \[/home/grcusrp/uhd/fpga/usrp3=
/top/e31x/e31x_core.v:664\]

WARNING: \[Synth 8-693\] zero replication count - replication ignored \[/ho=
me/grcusrp/uhd/fpga/usrp3/lib/rfnoc/core/chdr_data_swapper.v:189\]

WARNING: \[Synth 8-693\] zero replication count - replication ignored \[/ho=
me/grcusrp/uhd/fpga/usrp3/lib/rfnoc/core/chdr_data_swapper.v:189\]

WARNING: \[Synth 8-689\] width (256) of port connection 'radio_rx_data' doe=
s not match port width (64) of module 'rfnoc_block_radio' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:620\]

WARNING: \[Synth 8-689\] width (8) of port connection 'radio_rx_stb' does n=
ot match port width (2) of module 'rfnoc_block_radio' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:621\]

WARNING: \[Synth 8-689\] width (8) of port connection 'radio_rx_running' do=
es not match port width (2) of module 'rfnoc_block_radio' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:622\]

WARNING: \[Synth 8-689\] width (256) of port connection 'radio_tx_data' doe=
s not match port width (64) of module 'rfnoc_block_radio' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:623\]

WARNING: \[Synth 8-689\] width (8) of port connection 'radio_tx_stb' does n=
ot match port width (2) of module 'rfnoc_block_radio' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:624\]

WARNING: \[Synth 8-689\] width (8) of port connection 'radio_tx_running' do=
es not match port width (2) of module 'rfnoc_block_radio' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:625\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_awid' does not=
 match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e310_rfnoc_image_core.v:719\]

WARNING: \[Synth 8-689\] width (192) of port connection 'm_axi_awaddr' does=
 not match port width (60) of module 'rfnoc_block_replay' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:720\]

WARNING: \[Synth 8-689\] width (32) of port connection 'm_axi_awlen' does n=
ot match port width (16) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:721\]

WARNING: \[Synth 8-689\] width (12) of port connection 'm_axi_awsize' does =
not match port width (6) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:722\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_awburst' does =
not match port width (4) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:723\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_awlock' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:724\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_awcache' does=
 not match port width (8) of module 'rfnoc_block_replay' \[/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:725\]

WARNING: \[Synth 8-689\] width (12) of port connection 'm_axi_awprot' does =
not match port width (6) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:726\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_awqos' does n=
ot match port width (8) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:727\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_awregion' doe=
s not match port width (8) of module 'rfnoc_block_replay' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:728\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_awuser' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:729\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_awvalid' does =
not match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:730\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_awready' does =
not match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:731\]

WARNING: \[Synth 8-689\] width (2048) of port connection 'm_axi_wdata' does=
 not match port width (128) of module 'rfnoc_block_replay' \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:732\]

WARNING: \[Synth 8-689\] width (256) of port connection 'm_axi_wstrb' does =
not match port width (16) of module 'rfnoc_block_replay' \[/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:733\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_wlast' does no=
t match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:734\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_wuser' does no=
t match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:735\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_wvalid' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:736\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_wready' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:737\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_bid' does not =
match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/fpg=
a/usrp3/top/e31x/e310_rfnoc_image_core.v:738\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_bresp' does no=
t match port width (4) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:739\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_buser' does no=
t match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:740\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_bvalid' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:741\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_bready' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:742\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_arid' does not=
 match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e310_rfnoc_image_core.v:743\]

WARNING: \[Synth 8-689\] width (192) of port connection 'm_axi_araddr' does=
 not match port width (60) of module 'rfnoc_block_replay' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:744\]

WARNING: \[Synth 8-689\] width (32) of port connection 'm_axi_arlen' does n=
ot match port width (16) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:745\]

WARNING: \[Synth 8-689\] width (12) of port connection 'm_axi_arsize' does =
not match port width (6) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:746\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_arburst' does =
not match port width (4) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:747\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_arlock' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:748\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_arcache' does=
 not match port width (8) of module 'rfnoc_block_replay' \[/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:749\]

WARNING: \[Synth 8-689\] width (12) of port connection 'm_axi_arprot' does =
not match port width (6) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:750\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_arqos' does n=
ot match port width (8) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:751\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_arregion' doe=
s not match port width (8) of module 'rfnoc_block_replay' \[/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:752\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_aruser' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:753\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_arvalid' does =
not match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:754\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_arready' does =
not match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:755\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_rid' does not =
match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/fpg=
a/usrp3/top/e31x/e310_rfnoc_image_core.v:756\]

WARNING: \[Synth 8-689\] width (2048) of port connection 'm_axi_rdata' does=
 not match port width (128) of module 'rfnoc_block_replay' \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:757\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_rresp' does no=
t match port width (4) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:758\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_rlast' does no=
t match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:759\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_ruser' does no=
t match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.v:760\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_rvalid' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:761\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_rready' does n=
ot match port width (2) of module 'rfnoc_block_replay' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:762\]

WARNING: \[Synth 8-689\] width (2) of port connection 'radio_rx_running' do=
es not match port width (8) of module 'rfnoc_image_core' \[/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e31x_core.v:839\]

WARNING: \[Synth 8-689\] width (64) of port connection 'radio_tx_data' does=
 not match port width (256) of module 'rfnoc_image_core' \[/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e31x_core.v:841\]

WARNING: \[Synth 8-689\] width (2) of port connection 'radio_tx_running' do=
es not match port width (8) of module 'rfnoc_image_core' \[/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e31x_core.v:842\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_awid' does not=
 match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e31x_core.v:844\]

WARNING: \[Synth 8-689\] width (64) of port connection 'm_axi_awaddr' does =
not match port width (192) of module 'rfnoc_image_core' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e31x_core.v:845\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_awlen' does n=
ot match port width (32) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:846\]

WARNING: \[Synth 8-689\] width (6) of port connection 'm_axi_awsize' does n=
ot match port width (12) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:847\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_awburst' does =
not match port width (8) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:848\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_awlock' does n=
ot match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e31x_core.v:849\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_awcache' does =
not match port width (16) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e31x_core.v:850\]

WARNING: \[Synth 8-689\] width (6) of port connection 'm_axi_awprot' does n=
ot match port width (12) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:851\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_awqos' does no=
t match port width (16) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e31x_core.v:852\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_awregion' does=
 not match port width (16) of module 'rfnoc_image_core' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e31x_core.v:853\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_awvalid' does =
not match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:855\]

WARNING: \[Synth 8-689\] width (128) of port connection 'm_axi_wdata' does =
not match port width (2048) of module 'rfnoc_image_core' \[/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e31x_core.v:857\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_wstrb' does n=
ot match port width (256) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e31x_core.v:858\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_wlast' does no=
t match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fpg=
a/usrp3/top/e31x/e31x_core.v:859\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_wvalid' does n=
ot match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e31x_core.v:861\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_bready' does n=
ot match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e31x_core.v:867\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_arid' does not=
 match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e31x_core.v:868\]

WARNING: \[Synth 8-689\] width (64) of port connection 'm_axi_araddr' does =
not match port width (192) of module 'rfnoc_image_core' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e31x_core.v:869\]

WARNING: \[Synth 8-689\] width (16) of port connection 'm_axi_arlen' does n=
ot match port width (32) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:870\]

WARNING: \[Synth 8-689\] width (6) of port connection 'm_axi_arsize' does n=
ot match port width (12) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:871\]

WARNING: \[Synth 8-689\] width (4) of port connection 'm_axi_arburst' does =
not match port width (8) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:872\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_arlock' does n=
ot match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e31x_core.v:873\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_arcache' does =
not match port width (16) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e31x_core.v:874\]

WARNING: \[Synth 8-689\] width (6) of port connection 'm_axi_arprot' does n=
ot match port width (12) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:875\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_arqos' does no=
t match port width (16) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e31x_core.v:876\]

WARNING: \[Synth 8-689\] width (8) of port connection 'm_axi_arregion' does=
 not match port width (16) of module 'rfnoc_image_core' \[/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e31x_core.v:877\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_arvalid' does =
not match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:879\]

WARNING: \[Synth 8-689\] width (2) of port connection 'm_axi_rready' does n=
ot match port width (4) of module 'rfnoc_image_core' \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e31x_core.v:887\]

WARNING: \[Synth 8-689\] width (32) of port connection 's_axi_awaddr' does =
not match port width (14) of module 'e31x_core' \[/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/e31x.v:893\]

WARNING: \[Synth 8-689\] width (32) of port connection 's_axi_araddr' does =
not match port width (14) of module 'e31x_core' \[/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/e31x.v:906\]

WARNING: \[Synth 8-689\] width (6) of port connection 'occupied' does not m=
atch port width (16) of module 'axi_fifo_bram__parameterized10' \[/home/grc=
usrp/uhd/fpga/usrp3/top/e31x/axi_pmu.v:167\]

WARNING: \[Synth 8-689\] width (6) of port connection 'space' does not matc=
h port width (16) of module 'axi_fifo_bram__parameterized10' \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/axi_pmu.v:168\]

\[00:01:14\] Current task: Synthesis +++ Current Phase: Starting

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'iostandard', beca=
use the property does not exist for objects of type 'pin'. \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e=
31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:405\=
]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PACKAGE_PIN', bec=
ause the property does not exist for objects of type 'pin'. \[/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/=
e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:406=
\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'slew', because th=
e property does not exist for objects of type 'pin'. \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps=
_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:407\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PIO_DIRECTION', b=
ecause the property does not exist for objects of type 'pin'. \[/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/i=
p/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:4=
08\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'iostandard', beca=
use the property does not exist for objects of type 'pin'. \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e=
31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:417\=
]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PACKAGE_PIN', bec=
ause the property does not exist for objects of type 'pin'. \[/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/=
e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:418=
\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'slew', because th=
e property does not exist for objects of type 'pin'. \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps=
_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:419\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PIO_DIRECTION', b=
ecause the property does not exist for objects of type 'pin'. \[/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/i=
p/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:4=
20\]

WARNING: \[Vivado 12-4702\] slew is not a supported property on input port(=
s). Setting is ignored. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc=
7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e3=
1x_ps_bd_processing_system7_0_0.xdc:691\]

WARNING: \[Vivado 12-4702\] slew is not a supported property on input port(=
s). Setting is ignored. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc=
7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e3=
1x_ps_bd_processing_system7_0_0.xdc:694\]

WARNING: \[Vivado 12-4702\] slew is not a supported property on input port(=
s). Setting is ignored. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc=
7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e3=
1x_ps_bd_processing_system7_0_0.xdc:697\]

CRITICAL WARNING: \[Constraints 18-1056\] Clock 'bus_clk' completely overri=
des clock 'clk_fpga_0'.

CRITICAL WARNING: \[Constraints 18-1056\] Clock 'clk40' completely override=
s clock 'clk_fpga_1'.

WARNING: \[Vivado 12-508\] No pins matched 'get_pins -hierarchical -filter =
{NAME =3D\~ \*/synchronizer_false_path/stages\[0\].value_reg\[0\]\[\*\]/S}'=
. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_timing.xdc:141\]

WARNING: \[Project 1-498\] One or more constraints failed evaluation while =
reading constraint file \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_timing=
.xdc\] and the design contains unresolved black boxes. These constraints wi=
ll be read post-synthesis (as long as their source constraint file is marke=
d as used_in_implementation) and should be applied correctly then. You shou=
ld review the constraints listed in the file \[.Xil/e31x_propImpl.xdc\] and=
 check the run log file to verify that these constraints were correctly app=
lied.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[Vivado 12-180\] No cells matched 'get_cells -hier -filter {PRIMI=
TIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBG=
ROUP=3D=3Duram || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. \[/tools/Xilinx/Vivado/20=
21.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl:3\]

WARNING: \[Vivado 12-180\] No cells matched 'get_cells -hier -filter {PRIMI=
TIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBG=
ROUP=3D=3Duram || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. \[/tools/Xilinx/Vivado/20=
21.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl:3\]

WARNING: \[Vivado 12-180\] No cells matched 'get_cells -hier -filter {PRIMI=
TIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBG=
ROUP=3D=3Duram || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. \[/tools/Xilinx/Vivado/20=
21.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl:3\]

WARNING: \[Vivado 12-180\] No cells matched 'get_cells -hier -filter {PRIMI=
TIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBG=
ROUP=3D=3Duram || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. \[/tools/Xilinx/Vivado/20=
21.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl:3\]

WARNING: \[Vivado 12-180\] No cells matched 'get_cells -hier -filter {PRIMI=
TIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBG=
ROUP=3D=3Duram || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. \[/tools/Xilinx/Vivado/20=
21.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl:3\]

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_secti=
on\[0\].impl_srl_i' at clock pin 'rd_clk' is different from the actual cloc=
k period '5.000', this can lead to different synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/ctrlport_endpoint_i/gen_async_fifos.out_fifo_i/fifo_sect=
ion\[0\].impl_srl_i' at clock pin 'wr_clk' is different from the actual clo=
ck period '5.000', this can lead to different synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[0\].chdr_to_axis_data_in_in/flush_2clk_ctr=
l_i/fifo_section\[0\].impl_srl_i' at clock pin 'rd_clk' is different from t=
he actual clock period '5.000', this can lead to different synthesis result=
s.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[0\].chdr_to_axis_data_in_in/gen_async_info=
_fifo.info_fifo_i/fifo_section\[0\].impl_srl_i' at clock pin 'rd_clk' is di=
fferent from the actual clock period '5.000', this can lead to different sy=
nthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[0\].chdr_to_axis_data_in_in/gen_async_info=
_fifo.info_fifo_i/fifo_section\[1\].impl_srl_i' at clock pin 'rd_clk' is di=
fferent from the actual clock period '5.000', this can lead to different sy=
nthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[0\].chdr_to_axis_data_in_in/no_gen_axis_wi=
dth_conv.gen_async_pyld_fifo.pyld_fifo_i/fifo_section\[0\].impl_srl_i' at c=
lock pin 'rd_clk' is different from the actual clock period '5.000', this c=
an lead to different synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[1\].chdr_to_axis_data_in_in/flush_2clk_ctr=
l_i/fifo_section\[0\].impl_srl_i' at clock pin 'rd_clk' is different from t=
he actual clock period '5.000', this can lead to different synthesis result=
s.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[1\].chdr_to_axis_data_in_in/gen_async_info=
_fifo.info_fifo_i/fifo_section\[0\].impl_srl_i' at clock pin 'rd_clk' is di=
fferent from the actual clock period '5.000', this can lead to different sy=
nthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[1\].chdr_to_axis_data_in_in/gen_async_info=
_fifo.info_fifo_i/fifo_section\[1\].impl_srl_i' at clock pin 'rd_clk' is di=
fferent from the actual clock period '5.000', this can lead to different sy=
nthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_input_in\[1\].chdr_to_axis_data_in_in/no_gen_axis_wi=
dth_conv.gen_async_pyld_fifo.pyld_fifo_i/fifo_section\[0\].impl_srl_i' at c=
lock pin 'rd_clk' is different from the actual clock period '5.000', this c=
an lead to different synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/gen_async_=
info_fifo.pkt_info_fifo/fifo_section\[0\].impl_srl_i' at clock pin 'wr_clk'=
 is different from the actual clock period '5.000', this can lead to differ=
ent synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/gen_async_=
info_fifo.pkt_info_fifo/fifo_section\[1\].impl_srl_i' at clock pin 'wr_clk'=
 is different from the actual clock period '5.000', this can lead to differ=
ent synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/no_gen_axi=
s_width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i' a=
t clock pin 'wr_clk' is different from the actual clock period '5.000', thi=
s can lead to different synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_output_out\[1\].axis_data_to_chdr_out_out/gen_async_=
info_fifo.pkt_info_fifo/fifo_section\[0\].impl_srl_i' at clock pin 'wr_clk'=
 is different from the actual clock period '5.000', this can lead to differ=
ent synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_output_out\[1\].axis_data_to_chdr_out_out/gen_async_=
info_fifo.pkt_info_fifo/fifo_section\[1\].impl_srl_i' at clock pin 'wr_clk'=
 is different from the actual clock period '5.000', this can lead to differ=
ent synthesis results.

WARNING: \[Timing 38-316\] Clock period '10.000' specified during out-of-co=
ntext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_output_out\[1\].axis_data_to_chdr_out_out/no_gen_axi=
s_width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i' a=
t clock pin 'wr_clk' is different from the actual clock period '5.000', thi=
s can lead to different synthesis results.

\[00:03:00\] Current task: Synthesis +++ Current Phase: Handling Custom Att=
ributes

\[00:03:01\] Current task: Synthesis +++ Current Phase: RTL Component Stati=
stics

\[00:03:01\] Current task: Synthesis +++ Current Phase: Part Resource Summa=
ry

WARNING: \[Synth 8-7129\] Port rsta in module xpm_memory_base__parameterize=
d5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port regcea in module xpm_memory_base__parameteri=
zed5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port injectsbiterra in module xpm_memory_base__pa=
rameterized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port injectdbiterra in module xpm_memory_base__pa=
rameterized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port clkb in module xpm_memory_base__parameterize=
d5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port regceb in module xpm_memory_base__parameteri=
zed5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port web\[0\] in module xpm_memory_base__paramete=
rized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[69\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[68\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[67\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[66\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[65\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[64\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[63\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[62\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[61\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[60\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[59\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[58\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[57\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[56\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[55\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[54\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[53\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[52\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[51\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[50\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[49\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[48\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[47\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[46\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[45\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[44\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[43\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[42\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[41\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[40\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[39\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[38\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[37\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[36\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[35\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[34\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[33\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[32\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[31\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[30\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[29\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[28\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[27\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[26\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[25\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[24\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[23\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[22\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[21\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[20\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[19\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[18\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[17\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[16\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[15\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[14\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[13\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[12\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[11\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[10\] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[9\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[8\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[7\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[6\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[5\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[4\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[3\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[2\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[1\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port dinb\[0\] in module xpm_memory_base__paramet=
erized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port injectsbiterrb in module xpm_memory_base__pa=
rameterized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port injectdbiterrb in module xpm_memory_base__pa=
rameterized5 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_sc_req\[0\] in module sc_node_v1_0_13_top_=
_parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_sc_info\[0\] in module sc_node_v1_0_13_top=
__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_sc_payld\[0\] in module sc_node_v1_0_13_to=
p__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port m_sc_aclken in module sc_node_v1_0_13_top__p=
arameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port m_axis_arb_tready in module sc_node_v1_0_13_=
top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tvalid in module sc_node_v1_0_13_=
top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[15\] in module sc_node_v1_=
0_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[14\] in module sc_node_v1_=
0_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[13\] in module sc_node_v1_=
0_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[12\] in module sc_node_v1_=
0_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[11\] in module sc_node_v1_=
0_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[10\] in module sc_node_v1_=
0_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[9\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[8\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[7\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[6\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[5\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[4\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[3\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[2\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-7129\] Port s_axis_arb_tdata\[1\] in module sc_node_v1_0=
_13_top__parameterized3 is either unconnected or has no load

WARNING: \[Synth 8-6014\] Unused sequential element ingress_fifo_i/main_fif=
o/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element ingress_fifo_i/main_fif=
o/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element ingress_fifo_i/main_fif=
o/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element ingress_fifo_i/main_fif=
o/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awid\[1\=
] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awid\[0\=
] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awsize\[=
5\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awsize\[=
4\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awsize\[=
3\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awsize\[=
2\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awsize\[=
1\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awsize\[=
0\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awburst\=
[3\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awburst\=
[2\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awburst\=
[1\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awburst\=
[0\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awlock\[=
1\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awlock\[=
0\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[7\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[6\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[5\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[4\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[3\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[2\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[1\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awcache\=
[0\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awprot\[=
5\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awprot\[=
4\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awprot\[=
3\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awprot\[=
2\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awprot\[=
1\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awprot\[=
0\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[7=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[6=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[5=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[4=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[3=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[2=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[1=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awqos\[0=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[7\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[6\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[5\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[4\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[3\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[2\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[1\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awregion=
\[0\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awuser\[=
1\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_awuser\[=
0\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[1=
5\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[1=
4\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[1=
3\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[1=
2\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[1=
1\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[1=
0\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[9=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[8=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[7=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[6=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[5=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[4=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[3=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[2=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[1=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wstrb\[0=
\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wuser\[1=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_wuser\[0=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arid\[1\=
] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arid\[0\=
] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arsize\[=
5\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arsize\[=
4\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arsize\[=
3\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arsize\[=
2\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arsize\[=
1\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arsize\[=
0\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arburst\=
[3\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arburst\=
[2\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arburst\=
[1\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arburst\=
[0\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arlock\[=
1\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arlock\[=
0\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[7\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[6\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[5\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[4\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[3\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[2\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[1\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arcache\=
[0\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arprot\[=
5\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arprot\[=
4\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arprot\[=
3\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arprot\[=
2\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arprot\[=
1\] driven by constant 1

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arprot\[=
0\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[7=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[6=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[5=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[4=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[3=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[2=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[1=
\] driven by constant 0

WARNING: \[Synth 8-3917\] design rfnoc_block_replay has port m_axi_arqos\[0=
\] driven by constant 0

WARNING: \[Synth 8-6014\] Unused sequential element rec_axi_fifo/fifo_bram/=
ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element play_axi_fifo/fifo_bram=
/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element rec_axi_fifo/fifo_bram/=
ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element play_axi_fifo/fifo_bram=
/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element no_gen_axis_width_conv.=
gen_async_pyld_fifo.pyld_fifo/ext_fifo_i/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element no_gen_axis_width_conv.=
gen_async_pyld_fifo.pyld_fifo/ext_fifo_i/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element gen_ctrl_slave.axis_ctr=
l_slv_i/gate_i/ram_i/impl/ram_reg was removed.

WARNING: \[Synth 8-3936\] Found unconnected internal register 'ctrlport_tim=
er_i/resp_cache_i/o_tdata_reg' and it is trimmed from '34' to '32' bits. \[=
/home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop.v:37\]

WARNING: \[Synth 8-6014\] Unused sequential element gen_axis_width_conv.pyl=
d_fifo_i/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element gen_axis_width_conv.pyl=
d_fifo_i/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element gen_axis_width_conv.pyl=
d_fifo/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element gen_axis_width_conv.pyl=
d_fifo/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element gen_ctrl_slave.slv_fifo=
_i/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element gen_ctrl_slave.axis_ctr=
l_slv_i/gate_i/ram_i/impl/ram_reg was removed.

WARNING: \[Synth 8-3936\] Found unconnected internal register 'dest_mux_i/a=
xi_fifo/fifo_flop2/o_tdata_reg' and it is trimmed from '5' to '4' bits. \[/=
home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop2.v:38\]

WARNING: \[Synth 8-3936\] Found unconnected internal register 'dest_mux_i/a=
xi_fifo/fifo_flop2/o_tdata_reg' and it is trimmed from '5' to '4' bits. \[/=
home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop2.v:38\]

WARNING: \[Synth 8-3936\] Found unconnected internal register 'dest_mux_i/a=
xi_fifo/fifo_flop2/o_tdata_reg' and it is trimmed from '5' to '4' bits. \[/=
home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop2.v:38\]

WARNING: \[Synth 8-3936\] Found unconnected internal register 'dest_mux_i/a=
xi_fifo/fifo_flop2/o_tdata_reg' and it is trimmed from '5' to '4' bits. \[/=
home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop2.v:38\]

WARNING: \[Synth 8-3936\] Found unconnected internal register 'dest_mux_i/a=
xi_fifo/fifo_flop2/o_tdata_reg' and it is trimmed from '5' to '4' bits. \[/=
home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop2.v:38\]

WARNING: \[Synth 8-6014\] Unused sequential element axi_packet_gate_i/ram_i=
/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element axi_packet_gate_i/ram_i=
/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element axi_packet_gate_i/ram_i=
/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element axi_packet_gate_i/ram_i=
/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element axi_packet_gate_i/ram_i=
/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element kv_map_i/map_i/mem_i/im=
pl/ram_reg was removed.

WARNING: \[Synth 8-3936\] Found unconnected internal register 'ppslp/coarse=
_reg' and it is trimmed from '28' to '16' bits. \[/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/ppsloop.v:243\]

WARNING: \[Synth 8-6014\] Unused sequential element cpu_out_gate_i/ram_i/im=
pl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element chdr_user_fifo_i/fifo_b=
ram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element chdr_out_gate_i/ram_i/i=
mpl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element chdr_out_gate_i/addr_fi=
fo_i/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element kv_map_i/mem_i/impl/ram=
_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element eth_adapter_i/cpu_fifo_=
i/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element eth_adapter_i/chdr_fifo=
_i/fifo_bram/ram/impl/ram_reg was removed.

WARNING: \[Synth 8-6014\] Unused sequential element inst_axi_pmu/axi_fifo_s=
hort_inst/ram/impl/ram_reg was removed.

\[00:04:36\] Current task: Synthesis +++ Current Phase: Cross Boundary and =
Area Optimization

\[00:04:42\] Current task: Synthesis +++ Current Phase: Applying XDC Timing=
 Constraints

\[00:05:26\] Current task: Synthesis +++ Current Phase: Timing Optimization

\[00:06:11\] Current task: Synthesis +++ Current Phase: Technology Mapping

\[00:06:12\] Current task: Synthesis +++ Current Phase: IO Insertion

\[00:06:14\] Current task: Synthesis +++ Current Phase: Flattening Before I=
O Insertion

WARNING: \[Synth 8-3295\] tying undriven pin I_AXI_DMA_REG_MODULE/strm_vali=
d_int2_inferred:in0 to constant 0

WARNING: \[Synth 8-3295\] tying undriven pin I_AXI_DMA_REG_MODULE/strm_vali=
d_int_cdc_to_inferred:in0 to constant 0

\[00:06:28\] Current task: Synthesis +++ Current Phase: Final Netlist Clean=
up

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:543=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:555=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:544=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:599=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:544=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:556=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:556=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:583\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:594\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:594\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:594\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600=
\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:583\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:588\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:588\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:588\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:588\]

WARNING: \[Synth 8-5396\] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net \[/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:588\]

\[00:06:37\] Current task: Synthesis +++ Current Phase: Renaming Generated =
Instances

\[00:06:44\] Current task: Synthesis +++ Current Phase: Rebuilding User Hie=
rarchy

\[00:06:48\] Current task: Synthesis +++ Current Phase: Renaming Generated =
Ports

\[00:06:48\] Current task: Synthesis +++ Current Phase: Handling Custom Att=
ributes

\[00:06:48\] Current task: Synthesis +++ Current Phase: Renaming Generated =
Nets

\[00:06:53\] Current task: Synthesis +++ Current Phase: Writing Synthesis R=
eport

\[00:06:53\] Current task: Synthesis +++ Current Phase: Finished

\[00:06:53\] Translating Synthesized Netlist

CRITICAL WARNING: \[Designutils 20-1280\] Could not find module 'axi_hb31'.=
 The XDC file /home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-=
3/axi_hb31/constraints/fir_compiler_v7_2.xdc will not be read for any cell =
of this module.

CRITICAL WARNING: \[Designutils 20-1280\] Could not find module 'axi_hb47'.=
 The XDC file /home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-=
3/axi_hb47/constraints/fir_compiler_v7_2.xdc will not be read for any cell =
of this module.

WARNING: \[Vivado_Tcl 4-919\] Waiver ID 'CDC-1' -from list should not be em=
pty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_=
ps_bd/e31x_ps_bd/ip/e31x_ps_bd_axi_dma_eth_internal_0/e31x_ps_bd_axi_dma_et=
h_internal_0.xdc:61\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'iostandard', beca=
use the property does not exist for objects of type 'pin'. \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e=
31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:405\=
]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PACKAGE_PIN', bec=
ause the property does not exist for objects of type 'pin'. \[/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/=
e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:406=
\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'slew', because th=
e property does not exist for objects of type 'pin'. \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps=
_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:407\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PIO_DIRECTION', b=
ecause the property does not exist for objects of type 'pin'. \[/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/i=
p/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:4=
08\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'iostandard', beca=
use the property does not exist for objects of type 'pin'. \[/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e=
31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:417\=
]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PACKAGE_PIN', bec=
ause the property does not exist for objects of type 'pin'. \[/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/=
e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:418=
\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'slew', because th=
e property does not exist for objects of type 'pin'. \[/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps=
_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:419\]

CRITICAL WARNING: \[Netlist 29-160\] Cannot set property 'PIO_DIRECTION', b=
ecause the property does not exist for objects of type 'pin'. \[/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/i=
p/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:4=
20\]

WARNING: \[Vivado 12-4702\] slew is not a supported property on input port(=
s). Setting is ignored. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc=
7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e3=
1x_ps_bd_processing_system7_0_0.xdc:691\]

WARNING: \[Vivado 12-4702\] slew is not a supported property on input port(=
s). Setting is ignored. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc=
7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e3=
1x_ps_bd_processing_system7_0_0.xdc:694\]

WARNING: \[Vivado 12-4702\] slew is not a supported property on input port(=
s). Setting is ignored. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc=
7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e3=
1x_ps_bd_processing_system7_0_0.xdc:697\]

CRITICAL WARNING: \[Constraints 18-1055\] Clock 'bus_clk' completely overri=
des clock 'clk_fpga_0', which is referenced by one or more other constraint=
s. Any constraints that refer to the overridden clock will be ignored.

CRITICAL WARNING: \[Constraints 18-1055\] Clock 'clk40' completely override=
s clock 'clk_fpga_1', which is referenced by one or more other constraints.=
 Any constraints that refer to the overridden clock will be ignored.

WARNING: \[Vivado 12-2489\] -input_jitter contains time 1.628100 which will=
 be rounded to 1.628 to ensure it is an integer multiple of 1 picosecond \[=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_timing.xdc:47\]

WARNING: \[Vivado 12-830\] No fanout objects found for 'all_fanout -from \[=
get_ports -scoped_to_current_instance m_axi_aclk\] -flat -endpoints_only -o=
nly_cells'. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-=
3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_4/e31x_ps_bd_auto_cc_4_clocks=
.xdc:17\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-10' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:7\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-11' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:10\=
]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-15' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:13\=
]

WARNING: \[Vivado_Tcl 4-939\] Waiver ID 'LUTAR-1' object list should not be=
 empty (perhaps an invalid wildcard was used or only unsupported objects). =
\[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd=
/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:17\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-10' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:7\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-11' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:10\=
]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-15' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:13\=
]

WARNING: \[Vivado_Tcl 4-939\] Waiver ID 'LUTAR-1' object list should not be=
 empty (perhaps an invalid wildcard was used or only unsupported objects). =
\[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd=
/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:17\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-10' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clocks.xdc:7\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-11' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clocks.xdc:10\=
]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-15' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clocks.xdc:13\=
]

WARNING: \[Vivado_Tcl 4-939\] Waiver ID 'LUTAR-1' object list should not be=
 empty (perhaps an invalid wildcard was used or only unsupported objects). =
\[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd=
/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clocks.xdc:17\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-10' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto_cc_3_clocks.xdc:7\]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-11' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto_cc_3_clocks.xdc:10\=
]

WARNING: \[Vivado_Tcl 4-921\] Waiver ID 'CDC-15' -to list should not be emp=
ty. \[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto_cc_3_clocks.xdc:13\=
]

WARNING: \[Vivado_Tcl 4-939\] Waiver ID 'LUTAR-1' object list should not be=
 empty (perhaps an invalid wildcard was used or only unsupported objects). =
\[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd=
/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto_cc_3_clocks.xdc:17\]

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_GRAY: TCL-1000\] The source and destination clocks are t=
he same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[Vivado_Tcl 4-919\] Waiver ID 'CDC-15' -from list should not be e=
mpty. \[/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handsha=
ke.tcl:30\]

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[Vivado_Tcl 4-919\] Waiver ID 'CDC-15' -from list should not be e=
mpty. \[/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handsha=
ke.tcl:30\]

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[Vivado_Tcl 4-919\] Waiver ID 'CDC-15' -from list should not be e=
mpty. \[/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handsha=
ke.tcl:30\]

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_HANDSHAKE: TCL-1000\] The source and destination clocks =
are the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[XPM_CDC_SINGLE: TCL-1000\] The source and destination clocks are=
 the same.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[0\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[10\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[11\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[12\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[13\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[14\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[15\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[16\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[17\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[18\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[19\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[1\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[20\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[21\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[22\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[23\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[24\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[25\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[26\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[27\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[28\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[29\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[2\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[30\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[31\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[3\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[4\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[5\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[6\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[7\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[8\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[9\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[0\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[16\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[17\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[18\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[19\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[1\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[20\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[21\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[22\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[23\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[24\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[25\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[26\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[27\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[28\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[29\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[2\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[30\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[0\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[31\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[0\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[10\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[11\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[12\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[13\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[14\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[15\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[16\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[17\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[18\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[19\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[1\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[20\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[21\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[22\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[23\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[24\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[25\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[26\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[27\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[28\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[29\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[2\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[30\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[31\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[3\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[4\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[5\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[6\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[7\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[8\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_in_iob_reg\[9\] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[0\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[16\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[17\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[18\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[19\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[1\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[20\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[21\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[22\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[23\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[24\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[25\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[26\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[27\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[28\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[29\] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.

WARNING: \[Constraints 18-5572\] Instance genblk2\[1\].gpio_atr_db_inst/gpi=
o_out_iob_reg\[2\] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.

\[00:08:11\] Current task: Translating Synthesized Netlist +++ Current Phas=
e: Starting

\[00:08:11\] Current task: Translating Synthesized Netlist +++ Current Phas=
e: Finished

\[00:08:11\] Executing Tcl: report_drc -ruledeck methodology_checks -file /=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-E310_SG3/methodology.rpt

\[00:08:11\] Starting DRC Command

\[00:08:53\] Current task: DRC +++ Current Phase: Starting

\[00:08:53\] Current task: DRC +++ Current Phase: Finished

\[00:08:53\] Executing Tcl: opt_design -directive Default

\[00:08:53\] Starting Logic Optimization Command

\[00:08:53\] Current task: Logic Optimization +++ Current Phase: Starting

\[00:08:53\] Current task: Logic Optimization +++ Current Phase: Finished

\[00:08:53\] Starting DRC Task

\[00:08:54\] Current task: DRC +++ Current Phase: Starting

\[00:08:54\] Current task: DRC +++ Current Phase: Finished

\[00:08:54\] Starting Cache Timing Information Task

\[00:09:01\] Current task: Cache Timing Information +++ Current Phase: Star=
ting

\[00:09:02\] Current task: Cache Timing Information +++ Current Phase: Fini=
shed

\[00:09:02\] Starting Logic Optimization Task

\[00:09:06\] Current task: Logic Optimization +++ Current Phase: Starting

\[00:09:09\] Current task: Logic Optimization +++ Current Phase: 1 Retarget

\[00:09:10\] Current task: Logic Optimization +++ Current Phase: 2 Constant=
 propagation

\[00:09:16\] Current task: Logic Optimization +++ Current Phase: 3 Sweep

\[00:09:17\] Current task: Logic Optimization +++ Current Phase: 4 BUFG opt=
imization

\[00:09:18\] Current task: Logic Optimization +++ Current Phase: 5 Shift Re=
gister Optimization

\[00:09:19\] Current task: Logic Optimization +++ Current Phase: 6 Post Pro=
cessing Netlist

\[00:09:20\] Current task: Logic Optimization +++ Current Phase: Finished

\[00:09:20\] Starting Connectivity Check Task

\[00:09:20\] Current task: Connectivity Check +++ Current Phase: Starting

\[00:09:21\] Current task: Connectivity Check +++ Current Phase: Finished

\[00:09:21\] Starting Power Optimization Task

\[00:09:44\] Current task: Power Optimization +++ Current Phase: Starting

\[00:09:44\] Current task: Power Optimization +++ Current Phase: Finished

\[00:09:44\] Starting PowerOpt Patch Enables Task

\[00:09:45\] Current task: PowerOpt Patch Enables +++ Current Phase: Starti=
ng

\[00:09:45\] Current task: PowerOpt Patch Enables +++ Current Phase: Finish=
ed

\[00:09:45\] Starting Final Cleanup Task

\[00:09:47\] Current task: Final Cleanup +++ Current Phase: Starting

\[00:09:47\] Current task: Final Cleanup +++ Current Phase: Finished

\[00:09:47\] Starting Logic Optimization Task

\[00:09:58\] Current task: Logic Optimization +++ Current Phase: Starting

\[00:09:58\] Current task: Logic Optimization +++ Current Phase: Finished

\[00:09:58\] Starting Netlist Obfuscation Task

\[00:09:58\] Current task: Netlist Obfuscation +++ Current Phase: Starting

\[00:09:58\] Current task: Netlist Obfuscation +++ Current Phase: Finished

\[00:09:58\] Executing Tcl: place_design -directive Default

\[00:09:58\] Starting Placer Command

\[00:10:15\] Current task: Placer +++ Current Phase: Starting

WARNING: \[DRC CHECK-3\] Report rule limit reached: REQP-1839 rule limit re=
ached: 20 violations have been found.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[0\].c=
hdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/r=
am_reg_0 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_radio=
0_0/noc_shell_radio_i/gen_input_in\[0\].chdr_to_axis_data_in_in/gen_axis_wi=
dth_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_0/ENBWREN (net: e31x_core_i=
nst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[0\].chdr_=
to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/enb0)=
 which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_=
0/noc_shell_radio_i/gen_input_in\[0\].chdr_to_axis_data_in_in/gen_axis_widt=
h_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i/U0/inst_fif=
o_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg=
) that has an active asychronous set or reset. This may cause corruption of=
 the memory contents and/or read values when the set/reset is asserted and =
is not analyzed by the default static timing analysis. It is suggested to e=
liminate the use of a set/reset to registers driving this RAMB pin or else =
use a synchronous reset in which the assertion of the reset is timed by def=
ault.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[0\].c=
hdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/r=
am_reg_1 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_radio=
0_0/noc_shell_radio_i/gen_input_in\[0\].chdr_to_axis_data_in_in/gen_axis_wi=
dth_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_1/ENBWREN (net: e31x_core_i=
nst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[0\].chdr_=
to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/enb0)=
 which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_=
0/noc_shell_radio_i/gen_input_in\[0\].chdr_to_axis_data_in_in/gen_axis_widt=
h_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i/U0/inst_fif=
o_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg=
) that has an active asychronous set or reset. This may cause corruption of=
 the memory contents and/or read values when the set/reset is asserted and =
is not analyzed by the default static timing analysis. It is suggested to e=
liminate the use of a set/reset to registers driving this RAMB pin or else =
use a synchronous reset in which the assertion of the reset is timed by def=
ault.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[1\].c=
hdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/r=
am_reg_0 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_radio=
0_0/noc_shell_radio_i/gen_input_in\[1\].chdr_to_axis_data_in_in/gen_axis_wi=
dth_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_0/ENBWREN (net: e31x_core_i=
nst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[1\].chdr_=
to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/enb0)=
 which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_=
0/noc_shell_radio_i/gen_input_in\[1\].chdr_to_axis_data_in_in/gen_axis_widt=
h_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i/U0/inst_fif=
o_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg=
) that has an active asychronous set or reset. This may cause corruption of=
 the memory contents and/or read values when the set/reset is asserted and =
is not analyzed by the default static timing analysis. It is suggested to e=
liminate the use of a set/reset to registers driving this RAMB pin or else =
use a synchronous reset in which the assertion of the reset is timed by def=
ault.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[1\].c=
hdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/r=
am_reg_1 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_radio=
0_0/noc_shell_radio_i/gen_input_in\[1\].chdr_to_axis_data_in_in/gen_axis_wi=
dth_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_1/ENBWREN (net: e31x_core_i=
nst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in\[1\].chdr_=
to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/enb0)=
 which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_=
0/noc_shell_radio_i/gen_input_in\[1\].chdr_to_axis_data_in_in/gen_axis_widt=
h_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i/U0/inst_fif=
o_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg=
) that has an active asychronous set or reset. This may cause corruption of=
 the memory contents and/or read values when the set/reset is asserted and =
is not analyzed by the default static timing analysis. It is suggested to e=
liminate the use of a set/reset to registers driving this RAMB pin or else =
use a synchronous reset in which the assertion of the reset is timed by def=
ault.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_0 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_0/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_1 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_1/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_2 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_2/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_3 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_3/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[0\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[0\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_0 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_0/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_1 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_1/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_2 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_2/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/ram_reg_3 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/gen_a=
xis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_3/ENARDEN (net: e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out\[1\]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl=
/E\[0\]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out\[1\].axis_data_to_chdr_out_out/g=
en_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section\[0\].impl_srl_i=
/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.=
rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This m=
ay cause corruption of the memory contents and/or read values when the set/=
reset is asserted and is not analyzed by the default static timing analysis=
. It is suggested to eliminate the use of a set/reset to registers driving =
this RAMB pin or else use a synchronous reset in which the assertion of the=
 reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/gen_replay_blocks\[0\].axis_replay_i=
/play_axi_fifo/fifo_bram/ram/impl/ram_reg has an input control pin e31x_cor=
e_inst/rfnoc_image_core_i/b_replay0_1/gen_replay_blocks\[0\].axis_replay_i/=
play_axi_fifo/fifo_bram/ram/impl/ram_reg/ENARDEN (net: e31x_core_inst/rfnoc=
_image_core_i/b_replay0_1/gen_replay_blocks\[0\].axis_replay_i/play_axi_fif=
o/fifo_bram/ram/impl/enb0) which is driven by a register (e31x_core_inst/rf=
noc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[0\].axis_da=
ta_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fif=
o_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_syn=
c_fifo.gl0.wr/gwas.wsts/ram_full_i_reg) that has an active asychronous set =
or reset. This may cause corruption of the memory contents and/or read valu=
es when the set/reset is asserted and is not analyzed by the default static=
 timing analysis. It is suggested to eliminate the use of a set/reset to re=
gisters driving this RAMB pin or else use a synchronous reset in which the =
assertion of the reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/gen_replay_blocks\[1\].axis_replay_i=
/play_axi_fifo/fifo_bram/ram/impl/ram_reg has an input control pin e31x_cor=
e_inst/rfnoc_image_core_i/b_replay0_1/gen_replay_blocks\[1\].axis_replay_i/=
play_axi_fifo/fifo_bram/ram/impl/ram_reg/ENARDEN (net: e31x_core_inst/rfnoc=
_image_core_i/b_replay0_1/gen_replay_blocks\[1\].axis_replay_i/play_axi_fif=
o/fifo_bram/ram/impl/enb0) which is driven by a register (e31x_core_inst/rf=
noc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[1\].axis_da=
ta_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fif=
o_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_syn=
c_fifo.gl0.wr/gwas.wsts/ram_full_i_reg) that has an active asychronous set =
or reset. This may cause corruption of the memory contents and/or read valu=
es when the set/reset is asserted and is not analyzed by the default static=
 timing analysis. It is suggested to eliminate the use of a set/reset to re=
gisters driving this RAMB pin or else use a synchronous reset in which the =
assertion of the reset is timed by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[0=
\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyl=
d_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/g=
ntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnati=
vebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.ram/DEVI=
CE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin =
e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output=
_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_f=
ifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/g=
rf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbra=
m.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.r=
am/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR\[10\] =
(net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_=
output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_=
pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfif=
o.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen=
/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_no=
init.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\[4\]) whic=
h is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/no=
c_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_=
width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/i=
nst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d=
1_reg\[4\]) that has an active asychronous set or reset. This may cause cor=
ruption of the memory contents and/or read values when the set/reset is ass=
erted and is not analyzed by the default static timing analysis. It is sugg=
ested to eliminate the use of a set/reset to registers driving this RAMB pi=
n or else use a synchronous reset in which the assertion of the reset is ti=
med by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[0=
\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyl=
d_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/g=
ntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnati=
vebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.ram/DEVI=
CE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin =
e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output=
_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_f=
ifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/g=
rf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbra=
m.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.r=
am/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR\[11\] =
(net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_=
output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_=
pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfif=
o.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen=
/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_no=
init.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\[5\]) whic=
h is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/no=
c_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_=
width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/i=
nst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d=
1_reg\[5\]) that has an active asychronous set or reset. This may cause cor=
ruption of the memory contents and/or read values when the set/reset is ass=
erted and is not analyzed by the default static timing analysis. It is sugg=
ested to eliminate the use of a set/reset to registers driving this RAMB pi=
n or else use a synchronous reset in which the assertion of the reset is ti=
med by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[0=
\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyl=
d_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/g=
ntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnati=
vebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.ram/DEVI=
CE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin =
e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output=
_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_f=
ifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/g=
rf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbra=
m.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.r=
am/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR\[12\] =
(net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_=
output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_=
pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfif=
o.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen=
/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_no=
init.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\[6\]) whic=
h is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/no=
c_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_=
width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/i=
nst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d=
1_reg\[6\]) that has an active asychronous set or reset. This may cause cor=
ruption of the memory contents and/or read values when the set/reset is ass=
erted and is not analyzed by the default static timing analysis. It is sugg=
ested to eliminate the use of a set/reset to registers driving this RAMB pi=
n or else use a synchronous reset in which the assertion of the reset is ti=
med by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[0=
\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyl=
d_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/g=
ntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnati=
vebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.ram/DEVI=
CE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin =
e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output=
_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_f=
ifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/g=
rf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbra=
m.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.r=
am/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR\[13\] =
(net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_=
output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_=
pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfif=
o.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen=
/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_no=
init.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\[7\]) whic=
h is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/no=
c_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_=
width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/i=
nst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d=
1_reg\[7\]) that has an active asychronous set or reset. This may cause cor=
ruption of the memory contents and/or read values when the set/reset is ass=
erted and is not analyzed by the default static timing analysis. It is sugg=
ested to eliminate the use of a set/reset to registers driving this RAMB pi=
n or else use a synchronous reset in which the assertion of the reset is ti=
med by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[0=
\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyl=
d_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/g=
ntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnati=
vebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.ram/DEVI=
CE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin =
e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output=
_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_f=
ifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/g=
rf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbra=
m.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.r=
am/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR\[14\] =
(net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_=
output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_=
pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfif=
o.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen=
/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_no=
init.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\[8\]) whic=
h is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/no=
c_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_=
width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/i=
nst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d=
1_reg\[8\]) that has an active asychronous set or reset. This may cause cor=
ruption of the memory contents and/or read values when the set/reset is ass=
erted and is not analyzed by the default static timing analysis. It is sugg=
ested to eliminate the use of a set/reset to registers driving this RAMB pi=
n or else use a synchronous reset in which the assertion of the reset is ti=
med by default.

WARNING: \[DRC REQP-1839\] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out\[0=
\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyl=
d_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/g=
ntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnati=
vebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.ram/DEVI=
CE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin =
e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output=
_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_f=
ifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/g=
rf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbra=
m.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noinit.r=
am/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR\[9\] (=
net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_o=
utput_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_p=
yld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/inst_fifo_gen/gconvfifo=
.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/=
gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop\[0\].ram.r/prim_noi=
nit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\[3\]) which=
 is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc=
_shell_replay_i/gen_output_out\[0\].axis_data_to_chdr_out_out/no_gen_axis_w=
idth_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section\[0\].impl_bram_i/U0/in=
st_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1=
_reg\[3\]) that has an active asychronous set or reset. This may cause corr=
uption of the memory contents and/or read values when the set/reset is asse=
rted and is not analyzed by the default static timing analysis. It is sugge=
sted to eliminate the use of a set/reset to registers driving this RAMB pin=
 or else use a synchronous reset in which the assertion of the reset is tim=
ed by default.

WARNING: \[DRC REQP-1840\] RAMB18 async control check: The RAMB18E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i=
/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg has an input control =
pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport=
_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg/ENBWREN (n=
et: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport=
_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/p_0_in7_out) which=
 is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_=
shell_radio_i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_section\[0=
\].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd=
/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set or =
reset. This may cause corruption of the memory contents and/or read values =
when the set/reset is asserted and is not analyzed by the default static ti=
ming analysis. It is suggested to eliminate the use of a set/reset to regis=
ters driving this RAMB pin or else use a synchronous reset in which the ass=
ertion of the reset is timed by default.

WARNING: \[DRC REQP-1840\] RAMB18 async control check: The RAMB18E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i=
/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg has an input control =
pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport=
_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg/WEBWE\[0\]=
 (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlp=
ort_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/p_0_in7_out) wh=
ich is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/n=
oc_shell_radio_i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_section=
\[0\].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0=
.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set =
or reset. This may cause corruption of the memory contents and/or read valu=
es when the set/reset is asserted and is not analyzed by the default static=
 timing analysis. It is suggested to eliminate the use of a set/reset to re=
gisters driving this RAMB pin or else use a synchronous reset in which the =
assertion of the reset is timed by default.

WARNING: \[DRC REQP-1840\] RAMB18 async control check: The RAMB18E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i=
/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg has an input control =
pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport=
_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg/WEBWE\[1\]=
 (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlp=
ort_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/p_0_in7_out) wh=
ich is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/n=
oc_shell_radio_i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_section=
\[0\].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0=
.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set =
or reset. This may cause corruption of the memory contents and/or read valu=
es when the set/reset is asserted and is not analyzed by the default static=
 timing analysis. It is suggested to eliminate the use of a set/reset to re=
gisters driving this RAMB pin or else use a synchronous reset in which the =
assertion of the reset is timed by default.

WARNING: \[DRC REQP-1840\] RAMB18 async control check: The RAMB18E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i=
/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg has an input control =
pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport=
_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg/WEBWE\[2\]=
 (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlp=
ort_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/p_0_in7_out) wh=
ich is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/n=
oc_shell_radio_i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_section=
\[0\].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0=
.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set =
or reset. This may cause corruption of the memory contents and/or read valu=
es when the set/reset is asserted and is not analyzed by the default static=
 timing analysis. It is suggested to eliminate the use of a set/reset to re=
gisters driving this RAMB pin or else use a synchronous reset in which the =
assertion of the reset is timed by default.

WARNING: \[DRC REQP-1840\] RAMB18 async control check: The RAMB18E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i=
/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg has an input control =
pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport=
_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg/WEBWE\[3\]=
 (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlp=
ort_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/p_0_in7_out) wh=
ich is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/n=
oc_shell_radio_i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_section=
\[0\].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0=
.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set =
or reset. This may cause corruption of the memory contents and/or read valu=
es when the set/reset is asserted and is not analyzed by the default static=
 timing analysis. It is suggested to eliminate the use of a set/reset to re=
gisters driving this RAMB pin or else use a synchronous reset in which the =
assertion of the reset is timed by default.

\[00:10:15\] Starting Placer Task

\[00:10:15\] Current task: Placer +++ Current Phase: Starting

\[00:10:15\] Current task: Placer +++ Current Phase: 1 Placer Initializatio=
n

\[00:10:15\] Current task: Placer +++ Current Phase: 1.1 Placer Initializat=
ion Netlist Sorting

WARNING: \[Place 30-87\] Partially locked IO Bus is found. Following compon=
ents of the IO Bus DB_EXP_1_8V are not locked:  'DB_EXP_1_8V\[30\]'  'DB_EX=
P_1_8V\[29\]'  'DB_EXP_1_8V\[28\]'  'DB_EXP_1_8V\[27\]'  'DB_EXP_1_8V\[26\]=
'  'DB_EXP_1_8V\[25\]'  'DB_EXP_1_8V\[23\]'  'DB_EXP_1_8V\[22\]'  'DB_EXP_1=
_8V\[21\]'  'DB_EXP_1_8V\[20\]'  'DB_EXP_1_8V\[19\]'  'DB_EXP_1_8V\[18\]'  =
'DB_EXP_1_8V\[17\]'  'DB_EXP_1_8V\[16\]'  'DB_EXP_1_8V\[15\]'  'DB_EXP_1_8V=
\[14\]'  'DB_EXP_1_8V\[13\]'  'DB_EXP_1_8V\[12\]'  'DB_EXP_1_8V\[7\]'  'DB_=
EXP_1_8V\[4\]'  'DB_EXP_1_8V\[3\]'  'DB_EXP_1_8V\[2\]'  'DB_EXP_1_8V\[1\]' =
 'DB_EXP_1_8V\[0\]'

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[0\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[10\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[11\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[12\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[13\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[14\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[15\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[16\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[17\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[18\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[19\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[1\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[20\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[21\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[22\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[23\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[24\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[25\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[26\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[27\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[28\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[29\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[2\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[30\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[31\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[3\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[4\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[5\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[6\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[7\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[8\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_in_iob_reg\[9\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[0\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[16\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[17\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[18\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[19\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[1\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[20\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[21\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[22\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[23\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[24\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[25\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[26\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[27\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[28\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[29\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[2\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[30\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
0\].gpio_atr_db_inst/gpio_out_iob_reg\[31\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[0\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[10\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[11\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[12\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[13\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[14\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[15\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[16\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[17\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[18\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[19\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[1\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[20\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[21\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[22\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[23\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[24\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[25\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[26\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[27\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[28\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[29\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[2\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[30\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[31\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[3\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[4\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[5\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[6\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[7\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[8\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_in_iob_reg\[9\]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[0\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[16\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[17\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[18\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[19\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[1\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[20\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[21\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[22\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[23\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[24\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[25\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[26\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[27\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[28\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[29\]'. It has the property IOB=3DTRU=
E, but it is not driving or driven by any IO element.

CRITICAL WARNING: \[Place 30-73\] Invalid constraint on register 'genblk2\[=
1\].gpio_atr_db_inst/gpio_out_iob_reg\[2\]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.

WARNING: \[Place 30-568\] A LUT 'e31x_core_inst/tpps_i_2' is driving clock =
pin of 25 registers. This could lead to large hold time violations. First f=
ew involved registers are:

WARNING: \[Place 30-172\] Sub-optimal placement for a clock-capable IO pin =
and PLL pair. This is normally an ERROR but the CLOCK_DEDICATED_ROUTE const=
raint is set to FALSE allowing your design to continue. The use of this ove=
rride is highly discouraged as it may lead to very poor timing results. It =
is recommended that this error condition be corrected in the design.

\[00:10:22\] Current task: Placer +++ Current Phase: 1.2 IO Placement/ Cloc=
k Placement/ Build Placer Device

WARNING: \[Place 30-770\] High register utilization is forcing place_design=
 to place up to 8 registers per slice which may impact placement success an=
d/or routing congestion.

\[00:10:43\] Current task: Placer +++ Current Phase: 1.3 Build Placer Netli=
st Model

\[00:10:44\] Current task: Placer +++ Current Phase: 1.4 Constrain Clocks/M=
acros

\[00:10:44\] Current task: Placer +++ Current Phase: 2 Global Placement

\[00:10:49\] Current task: Placer +++ Current Phase: 2.1 Floorplanning

\[00:10:55\] Current task: Placer +++ Current Phase: 2.2 Update Timing befo=
re SLR Path Opt

\[00:11:42\] Current task: Placer +++ Current Phase: 2.4 Global Placement C=
ore

\[00:12:05\] Current task: Placer +++ Current Phase: 2.4.1 Physical Synthes=
is In Placer

\[00:12:05\] Current task: Placer +++ Current Phase: 3 Detail Placement

\[00:12:20\] Current task: Placer +++ Current Phase: 3.1 Commit Multi Colum=
n Macros

\[00:12:21\] Current task: Placer +++ Current Phase: 3.3 Area Swap Optimiza=
tion

\[00:12:21\] Current task: Placer +++ Current Phase: 3.4 Pipeline Register =
Optimization

\[00:12:29\] Current task: Placer +++ Current Phase: 3.5 Fast Optimization

ERROR: \[Place 30-487\] The packing of instances into the device could not =
be obeyed. There are a total of 13300 slices in the device, of which 9737 s=
lices are available, however, the unplaced instances require 10808 slices. =
Please analyze your design to determine if the number of LUTs, FFs, and/or =
control sets can be reduced.

ERROR: \[Place 30-99\] Placer failed with error: 'Detail Placement failed p=
lease check previous errors for details.'

ERROR: \[Common 17-69\] Command failed: Placer could not place all instance=
s

\[00:12:59\] Current task: Placer +++ Current Phase: 3.6 Small Shape Detail=
 Placement

\[00:12:59\] Current task: Placer +++ Current Phase: Finished

\[00:12:59\] Process terminated. Status: Failure

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

Warnings:           877

Critical Warnings:  122

Errors:             3

make\[1\]: \*\*\* \[Makefile.e31x.inc:121: bin\] Error 1

make\[1\]: Leaving directory '/home/grcusrp/uhd/fpga/usrp3/top/e31x'

make: \*\*\* \[Makefile:80: E310_SG3\] Error 2
--b1_gvp0nSoADAY8jJTzHYmOXbHn844aDf9RcFjUvovoT8
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus, </p><p><br></p><p>Following is the complete terminal output</=
p><p><br></p><p>grcusrp@grcusrp-ThinkPad-T470:~$ rfnoc_image_builder -y ./e=
310_rfnoc_image_core.yml</p><p>Traceback (most recent call last):</p><p>  F=
ile "/usr/local/bin/rfnoc_image_builder", line 228, in &lt;module&gt;</p><p=
>    sys.exit(main())</p><p>  File "/usr/local/bin/rfnoc_image_builder", li=
ne 204, in main</p><p>    config, source, device, image_core_name, target =
=3D image_config(args)</p><p>  File "/usr/local/bin/rfnoc_image_builder", l=
ine 123, in image_config</p><p>    config =3D yaml_utils.load_config(args.y=
aml_config, get_config_path())</p><p>  File "/usr/local/lib/python3.8/site-=
packages/uhd/imgbuilder/yaml_utils.py", line 102, in load_config</p><p>    =
with open(config_file) as stream:</p><p>FileNotFoundError: [Errno 2] No suc=
h file or directory: './e310_rfnoc_image_core.yml'</p><p>grcusrp@grcusrp-Th=
inkPad-T470:~$ cd hud</p><p>bash: cd: hud: No such file or directory</p><p>=
grcusrp@grcusrp-ThinkPad-T470:~$ cd uhd</p><p>grcusrp@grcusrp-ThinkPad-T470=
:~/uhd$ cd fpga</p><p>grcusrp@grcusrp-ThinkPad-T470:~/uhd/fpga$ cd usrp3</p=
><p>grcusrp@grcusrp-ThinkPad-T470:~/uhd/fpga/usrp3$ cd top</p><p>grcusrp@gr=
cusrp-ThinkPad-T470:~/uhd/fpga/usrp3/top$ cd e31x</p><p>grcusrp@grcusrp-Thi=
nkPad-T470:~/uhd/fpga/usrp3/top/e31x$ rfnoc_image_builder -y ./e310_rfnoc_i=
mage_core.yml</p><p>[INF] Using FPGA directory /home/grcusrp/uhd/fpga</p><p=
>[INF] Selected device e310</p><p>[INF] Using io_signatures.yml from /usr/l=
ocal/share/uhd/rfnoc/core.</p><p>[INF] Using e310_bsp.yml from /usr/local/s=
hare/uhd/rfnoc/core.</p><p>[INF] Adding block description from duc.yml (/us=
r/local/share/uhd/rfnoc/blocks).</p><p>[INF] Adding block description from =
split_stream.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p>[INF] Adding bl=
ock description from window.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p>=
[INF] Adding block description from vector_iir.yml (/usr/local/share/uhd/rf=
noc/blocks).</p><p>[INF] Adding block description from addsub.yml (/usr/loc=
al/share/uhd/rfnoc/blocks).</p><p>[INF] Adding block description from logpw=
r.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p>[INF] Adding block descrip=
tion from null_src_sink.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p>[INF=
] Adding block description from fir_filter.yml (/usr/local/share/uhd/rfnoc/=
blocks).</p><p>[INF] Adding block description from ddc.yml (/usr/local/shar=
e/uhd/rfnoc/blocks).</p><p>[INF] Adding block description from moving_avg.y=
ml (/usr/local/share/uhd/rfnoc/blocks).</p><p>[INF] Adding block descriptio=
n from fft_1x64.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p>[INF] Adding=
 block description from keep_one_in_n.yml (/usr/local/share/uhd/rfnoc/block=
s).</p><p>[INF] Adding block description from radio.yml (/usr/local/share/u=
hd/rfnoc/blocks).</p><p>[INF] Adding block description from switchboard.yml=
 (/usr/local/share/uhd/rfnoc/blocks).</p><p>[INF] Adding block description =
from replay.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p>[INF] Adding blo=
ck description from siggen.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p>[=
INF] Adding block description from axi_ram_fifo.yml (/usr/local/share/uhd/r=
fnoc/blocks).</p><p>[INF] Adding block description from fosphor.yml (/usr/l=
ocal/share/uhd/rfnoc/blocks).</p><p>[INF] Plausibility checks on the curren=
t configuration</p><p>[INF] Writing static routing table to /home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_static_router.hex</p><p>[INF] Writing image cor=
e to /home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v</p><p>[I=
NF] Writing image core header to /home/grcusrp/uhd/fpga/usrp3/top/e31x/e310=
_rfnoc_image_core.vh</p><p>[INF] Launching build with the following setting=
s:</p><p>[INF]  * Build Directory: /home/grcusrp/uhd/fpga/usrp3/top/e31x</p=
><p>[INF]  * Target: DRAM=3D1 E310_SG3</p><p>[INF]  * Image Core File: /hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v</p><p>[INF]  * Ed=
ge Table File: /home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_static_router.hex=
</p><p>Setting up a 64-bit FPGA build environment for the USRP-E31x...</p><=
p>- Vivado: Found (/tools/Xilinx/Vivado/2021.1/bin)</p><p>          Install=
ed version is Vivado v2021.1_AR76780 (64-bit)</p><p>Environment successfull=
y initialized.</p><p>make -f Makefile.e31x.inc viv_ip    NAME=3DE310_SG3_IP=
 ARCH=3Dzynq PART_ID=3Dxc7z020/clg484/-3 E310_SG3=3D1 TOP_MODULE=3De31x EXT=
RA_DEFS=3D"E310_SG3=3D1" DEFAULT_RFNOC_IMAGE_CORE_FILE=3De310_rfnoc_image_c=
ore.v DEFAULT_EDGE_FILE=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_static=
_router.hex</p><p>make[1]: Entering directory '/home/grcusrp/uhd/fpga/usrp3=
/top/e31x'</p><p>BUILDER: Checking tools...</p><p>* GNU bash, version 5.0.1=
7(1)-release (x86_64-pc-linux-gnu)</p><p>* Python 3.8.10</p><p>* Vivado v20=
21.1_AR76780 (64-bit)</p><p>IP build for E310_SG3_IP DONE . . .</p><p>make[=
1]: Leaving directory '/home/grcusrp/uhd/fpga/usrp3/top/e31x'</p><p>make -f=
 Makefile.e31x.inc bin NAME=3DE310_SG3 ARCH=3Dzynq PART_ID=3Dxc7z020/clg484=
/-3  E310_SG3=3D1 ENABLE_DRAM=3D1 TOP_MODULE=3De31x EXTRA_DEFS=3D" E310_SG3=
=3D1 ENABLE_DRAM=3D1" DEFAULT_RFNOC_IMAGE_CORE_FILE=3De310_rfnoc_image_core=
.v DEFAULT_EDGE_FILE=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_static_ro=
uter.hex</p><p>make[1]: Entering directory '/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x'</p><p>BUILDER: Checking tools...</p><p>* GNU bash, version 5.0.17(1=
)-release (x86_64-pc-linux-gnu)</p><p>* Python 3.8.10</p><p>* Vivado v2021.=
1_AR76780 (64-bit)</p><p>Could not read parser configuration from: /home/gr=
cusrp/uhd/fpga/usrp3/top/e31x/dev_config.json</p><p>[00:00:00] Executing co=
mmand: vivado -mode batch -source /home/grcusrp/uhd/fpga/usrp3/top/e31x/bui=
ld_e31x.tcl -log build.log -journal e31x.jou</p><p>WARNING: [filemgmt 56-12=
] File '/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_replay/rf=
noc_block_replay_regs.vh' cannot be added to the project because it already=
 exists in the project, skipping this file</p><p>WARNING: [filemgmt 56-12] =
File '/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_replay/axis=
_replay.v' cannot be added to the project because it already exists in the =
project, skipping this file</p><p>WARNING: [filemgmt 56-12] File '/home/grc=
usrp/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_replay/noc_shell_replay.v'=
 cannot be added to the project because it already exists in the project, s=
kipping this file</p><p>WARNING: [filemgmt 56-12] File '/home/grcusrp/uhd/f=
pga/usrp3/lib/rfnoc/blocks/rfnoc_block_replay/rfnoc_block_replay.v' cannot =
be added to the project because it already exists in the project, skipping =
this file</p><p>[00:00:16] Current task: Initialization +++ Current Phase: =
Starting</p><p>[00:00:16] Current task: Initialization +++ Current Phase: F=
inished</p><p>[00:00:16] Executing Tcl: synth_design -top e31x -part xc7z02=
0clg484-3 -verilog_define E310_SG3=3D1 -verilog_define ENABLE_DRAM=3D1 -ver=
ilog_define GIT_HASH=3D32'hf5fac246 -verilog_define RFNOC_EDGE_TBL_FILE=3D/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_static_router.hex -verilog_define=
 RFNOC_IMAGE_CORE_HDR=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_im=
age_core.vh -verilog_define UHD_FPGA_DIR=3D/home/grcusrp/uhd/fpga/usrp3/top=
/../..</p><p>[00:00:16] Starting Synthesis Command</p><p>WARNING: [Synth 8-=
2507] parameter declaration becomes local in cam_priority_encoder with form=
al parameter declaration list [/home/grcusrp/uhd/fpga/usrp3/lib/control/map=
/cam_priority_encoder.v:46]</p><p>WARNING: [Synth 8-2507] parameter declara=
tion becomes local in cam_priority_encoder with formal parameter declaratio=
n list [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v=
:47]</p><p>WARNING: [Synth 8-2507] parameter declaration becomes local in a=
xis_data_swap with formal parameter declaration list [/home/grcusrp/uhd/fpg=
a/usrp3/lib/axi/axis_data_swap.v:54]</p><p>WARNING: [Synth 8-2507] paramete=
r declaration becomes local in axis_data_swap with formal parameter declara=
tion list [/home/grcusrp/uhd/fpga/usrp3/lib/axi/axis_data_swap.v:55]</p><p>=
WARNING: [Synth 8-2507] parameter declaration becomes local in dds_freq_tun=
e_duc with formal parameter declaration list [/home/grcusrp/uhd/fpga/usrp3/=
lib/rfnoc/dds_freq_tune_duc.v:128]</p><p>WARNING: [Synth 8-2507] parameter =
declaration becomes local in axis_ctrl_crossbar_2d_mesh with formal paramet=
er declaration list [/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/crossbar/mesh_n=
ode_mapping.vh:7]</p><p>WARNING: [Synth 8-2507] parameter declaration becom=
es local in torus_2d_dor_router_single_sw with formal parameter declaration=
 list [/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/crossbar/mesh_node_mapping.vh=
:7]</p><p>WARNING: [Synth 8-2507] parameter declaration becomes local in me=
sh_2d_dor_router_single_sw with formal parameter declaration list [/home/gr=
cusrp/uhd/fpga/usrp3/lib/rfnoc/crossbar/mesh_node_mapping.vh:7]</p><p>WARNI=
NG: [Synth 8-7071] port 'CLKFBOUT' of module 'PLLE2_ADV' is unconnected for=
 instance 'clkgen' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p>=
<p>WARNING: [Synth 8-7071] port 'CLKOUT2' of module 'PLLE2_ADV' is unconnec=
ted for instance 'clkgen' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:=
44]</p><p>WARNING: [Synth 8-7071] port 'CLKOUT3' of module 'PLLE2_ADV' is u=
nconnected for instance 'clkgen' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/pps=
loop.v:44]</p><p>WARNING: [Synth 8-7071] port 'CLKOUT4' of module 'PLLE2_AD=
V' is unconnected for instance 'clkgen' [/home/grcusrp/uhd/fpga/usrp3/top/e=
31x/ppsloop.v:44]</p><p>WARNING: [Synth 8-7071] port 'CLKOUT5' of module 'P=
LLE2_ADV' is unconnected for instance 'clkgen' [/home/grcusrp/uhd/fpga/usrp=
3/top/e31x/ppsloop.v:44]</p><p>WARNING: [Synth 8-7071] port 'DO' of module =
'PLLE2_ADV' is unconnected for instance 'clkgen' [/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/ppsloop.v:44]</p><p>WARNING: [Synth 8-7071] port 'DRDY' of mod=
ule 'PLLE2_ADV' is unconnected for instance 'clkgen' [/home/grcusrp/uhd/fpg=
a/usrp3/top/e31x/ppsloop.v:44]</p><p>WARNING: [Synth 8-7071] port 'CLKFBIN'=
 of module 'PLLE2_ADV' is unconnected for instance 'clkgen' [/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p>WARNING: [Synth 8-7071] port 'C=
LKIN2' of module 'PLLE2_ADV' is unconnected for instance 'clkgen' [/home/gr=
cusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p>WARNING: [Synth 8-7071] p=
ort 'CLKINSEL' of module 'PLLE2_ADV' is unconnected for instance 'clkgen' [=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p>WARNING: [Synth 8=
-7071] port 'DADDR' of module 'PLLE2_ADV' is unconnected for instance 'clkg=
en' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p>WARNING: [Sy=
nth 8-7071] port 'DCLK' of module 'PLLE2_ADV' is unconnected for instance '=
clkgen' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p>WARNING:=
 [Synth 8-7071] port 'DEN' of module 'PLLE2_ADV' is unconnected for instanc=
e 'clkgen' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p>WARNI=
NG: [Synth 8-7071] port 'DI' of module 'PLLE2_ADV' is unconnected for insta=
nce 'clkgen' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p>WAR=
NING: [Synth 8-7071] port 'DWE' of module 'PLLE2_ADV' is unconnected for in=
stance 'clkgen' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p>=
WARNING: [Synth 8-7023] instance 'clkgen' of module 'PLLE2_ADV' has 21 conn=
ections declared, but only 6 given [/home/grcusrp/uhd/fpga/usrp3/top/e31x/p=
psloop.v:44]</p><p>WARNING: [Synth 8-7071] port 'reg_wr_keep' of module 'ax=
il_regport_master' is unconnected for instance 'eth_dma_reg_mst_i' [/home/g=
rcusrp/uhd/fpga/usrp3/lib/rfnoc/xport/eth_internal.v:128]</p><p>WARNING: [S=
ynth 8-7023] instance 'eth_dma_reg_mst_i' of module 'axil_regport_master' h=
as 28 connections declared, but only 27 given [/home/grcusrp/uhd/fpga/usrp3=
/lib/rfnoc/xport/eth_internal.v:128]</p><p>WARNING: [Synth 8-7071] port 'ou=
tput_unencoded' of module 'cam_priority_encoder' is unconnected for instanc=
e 'priority_encoder_inst1' [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/ca=
m_priority_encoder.v:67]</p><p>WARNING: [Synth 8-7023] instance 'priority_e=
ncoder_inst1' of module 'cam_priority_encoder' has 4 connections declared, =
but only 3 given [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority=
_encoder.v:67]</p><p>WARNING: [Synth 8-693] zero replication count - replic=
ation ignored [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_en=
coder.v:77]</p><p>WARNING: [Synth 8-7071] port 'output_unencoded' of module=
 'cam_priority_encoder' is unconnected for instance 'priority_encoder_inst2=
' [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76]<=
/p><p>WARNING: [Synth 8-7023] instance 'priority_encoder_inst2' of module '=
cam_priority_encoder' has 4 connections declared, but only 3 given [/home/g=
rcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76]</p><p>WARN=
ING: [Synth 8-7071] port 'output_unencoded' of module 'cam_priority_encoder=
' is unconnected for instance 'priority_encoder_inst1' [/home/grcusrp/uhd/f=
pga/usrp3/lib/control/map/cam_priority_encoder.v:67]</p><p>WARNING: [Synth =
8-7023] instance 'priority_encoder_inst1' of module 'cam_priority_encoder' =
has 4 connections declared, but only 3 given [/home/grcusrp/uhd/fpga/usrp3/=
lib/control/map/cam_priority_encoder.v:67]</p><p>WARNING: [Synth 8-693] zer=
o replication count - replication ignored [/home/grcusrp/uhd/fpga/usrp3/lib=
/control/map/cam_priority_encoder.v:77]</p><p>WARNING: [Synth 8-7071] port =
'output_unencoded' of module 'cam_priority_encoder' is unconnected for inst=
ance 'priority_encoder_inst2' [/home/grcusrp/uhd/fpga/usrp3/lib/control/map=
/cam_priority_encoder.v:76]</p><p>WARNING: [Synth 8-7023] instance 'priorit=
y_encoder_inst2' of module 'cam_priority_encoder' has 4 connections declare=
d, but only 3 given [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_prior=
ity_encoder.v:76]</p><p>WARNING: [Synth 8-7071] port 'output_unencoded' of =
module 'cam_priority_encoder' is unconnected for instance 'priority_encoder=
_inst1' [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.=
v:67]</p><p>WARNING: [Synth 8-7023] instance 'priority_encoder_inst1' of mo=
dule 'cam_priority_encoder' has 4 connections declared, but only 3 given [/=
home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67]</p><=
p>WARNING: [Synth 8-693] zero replication count - replication ignored [/hom=
e/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:77]</p><p>W=
ARNING: [Synth 8-7071] port 'output_unencoded' of module 'cam_priority_enco=
der' is unconnected for instance 'priority_encoder_inst2' [/home/grcusrp/uh=
d/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76]</p><p>WARNING: [Syn=
th 8-7023] instance 'priority_encoder_inst2' of module 'cam_priority_encode=
r' has 4 connections declared, but only 3 given [/home/grcusrp/uhd/fpga/usr=
p3/lib/control/map/cam_priority_encoder.v:76]</p><p>WARNING: [Synth 8-7071]=
 port 'output_unencoded' of module 'cam_priority_encoder' is unconnected fo=
r instance 'priority_encoder_inst1' [/home/grcusrp/uhd/fpga/usrp3/lib/contr=
ol/map/cam_priority_encoder.v:67]</p><p>WARNING: [Synth 8-7023] instance 'p=
riority_encoder_inst1' of module 'cam_priority_encoder' has 4 connections d=
eclared, but only 3 given [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam=
_priority_encoder.v:67]</p><p>WARNING: [Synth 8-693] zero replication count=
 - replication ignored [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_pr=
iority_encoder.v:77]</p><p>WARNING: [Synth 8-7071] port 'output_unencoded' =
of module 'cam_priority_encoder' is unconnected for instance 'priority_enco=
der_inst2' [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encod=
er.v:76]</p><p>WARNING: [Synth 8-7023] instance 'priority_encoder_inst2' of=
 module 'cam_priority_encoder' has 4 connections declared, but only 3 given=
 [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76]</=
p><p>WARNING: [Synth 8-7071] port 'output_unencoded' of module 'cam_priorit=
y_encoder' is unconnected for instance 'priority_encoder_inst1' [/home/grcu=
srp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67]</p><p>WARNING=
: [Synth 8-7023] instance 'priority_encoder_inst1' of module 'cam_priority_=
encoder' has 4 connections declared, but only 3 given [/home/grcusrp/uhd/fp=
ga/usrp3/lib/control/map/cam_priority_encoder.v:67]</p><p>WARNING: [Synth 8=
-693] zero replication count - replication ignored [/home/grcusrp/uhd/fpga/=
usrp3/lib/control/map/cam_priority_encoder.v:77]</p><p>WARNING: [Synth 8-70=
71] port 'output_unencoded' of module 'cam_priority_encoder' is unconnected=
 for instance 'priority_encoder_inst2' [/home/grcusrp/uhd/fpga/usrp3/lib/co=
ntrol/map/cam_priority_encoder.v:76]</p><p>WARNING: [Synth 8-7023] instance=
 'priority_encoder_inst2' of module 'cam_priority_encoder' has 4 connection=
s declared, but only 3 given [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/=
cam_priority_encoder.v:76]</p><p>WARNING: [Synth 8-689] width (32) of port =
connection 's_axi_awaddr' does not match port width (14) of module 'eth_int=
ernal' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x.v:440]</p><p>WARNING: [S=
ynth 8-689] width (32) of port connection 's_axi_araddr' does not match por=
t width (14) of module 'eth_internal' [/home/grcusrp/uhd/fpga/usrp3/top/e31=
x/e31x.v:453]</p><p>WARNING: [Synth 8-7071] port 'm_axi_awprot' of module '=
e31x_ps_bd_auto_cc_2' is unconnected for instance 'auto_cc' [/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synt=
h/e31x_ps_bd.v:3225]</p><p>WARNING: [Synth 8-7071] port 'm_axi_wstrb' of mo=
dule 'e31x_ps_bd_auto_cc_2' is unconnected for instance 'auto_cc' [/home/gr=
cusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_b=
d/synth/e31x_ps_bd.v:3225]</p><p>WARNING: [Synth 8-7071] port 'm_axi_arprot=
' of module 'e31x_ps_bd_auto_cc_2' is unconnected for instance 'auto_cc' [/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:3225]</p><p>WARNING: [Synth 8-7023] instance 'a=
uto_cc' of module 'e31x_ps_bd_auto_cc_2' has 42 connections declared, but o=
nly 39 given [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-=
3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:3225]</p><p>WARNING: [Synth 8-70=
71] port 'aclk2x' of module 'axi_register_slice_v2_1_24_axi_register_slice'=
 is unconnected for instance 'SI_REG' [/home/grcusrp/uhd/fpga/usrp3/top/e31=
x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipsh=
ared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v:4392]</p><p>WARNING: [Sy=
nth 8-7023] instance 'SI_REG' of module 'axi_register_slice_v2_1_24_axi_reg=
ister_slice' has 93 connections declared, but only 92 given [/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_=
inter_2x64_128_bd/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v:43=
92]</p><p>WARNING: [Synth 8-7071] port 'aclk2x' of module 'axi_register_sli=
ce_v2_1_24_axi_register_slice' is unconnected for instance 'MI_REG' [/home/=
grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128=
_bd/axi_inter_2x64_128_bd/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_=
rfs.v:4647]</p><p>WARNING: [Synth 8-7023] instance 'MI_REG' of module 'axi_=
register_slice_v2_1_24_axi_register_slice' has 93 connections declared, but=
 only 92 given [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg48=
4-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/6e0d/hdl/axi_proto=
col_converter_v2_1_vl_rfs.v:4647]</p><p>WARNING: [Synth 8-7071] port 'axi_d=
ma_tstvec' of module 'e31x_ps_bd_axi_dma_eth_internal_0' is unconnected for=
 instance 'axi_dma_eth_internal' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/bui=
ld-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:420]</p><p>W=
ARNING: [Synth 8-7023] instance 'axi_dma_eth_internal' of module 'e31x_ps_b=
d_axi_dma_eth_internal_0' has 94 connections declared, but only 93 given [/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/synth/e31x_ps_bd.v:420]</p><p>WARNING: [Synth 8-7071] port 'M_AXI_=
GP0_ARESETN' of module 'processing_system7_v5_5_processing_system7' is unco=
nnected for instance 'inst' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip=
/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0=
/synth/e31x_ps_bd_processing_system7_0_0.v:828]</p><p>WARNING: [Synth 8-707=
1] port 'M_AXI_GP1_ARESETN' of module 'processing_system7_v5_5_processing_s=
ystem7' is unconnected for instance 'inst' [/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_process=
ing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:828]</p><p>WARNIN=
G: [Synth 8-7071] port 'S_AXI_GP0_ARESETN' of module 'processing_system7_v5=
_5_processing_system7' is unconnected for instance 'inst' [/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31=
x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:82=
8]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_GP1_ARESETN' of module 'proces=
sing_system7_v5_5_processing_system7' is unconnected for instance 'inst' [/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_s=
ystem7_0_0.v:828]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_ACP_ARESETN' of=
 module 'processing_system7_v5_5_processing_system7' is unconnected for ins=
tance 'inst' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-=
3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_=
bd_processing_system7_0_0.v:828]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_=
HP0_ARESETN' of module 'processing_system7_v5_5_processing_system7' is unco=
nnected for instance 'inst' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip=
/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0=
/synth/e31x_ps_bd_processing_system7_0_0.v:828]</p><p>WARNING: [Synth 8-707=
1] port 'S_AXI_HP1_ARESETN' of module 'processing_system7_v5_5_processing_s=
ystem7' is unconnected for instance 'inst' [/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_process=
ing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:828]</p><p>WARNIN=
G: [Synth 8-7071] port 'S_AXI_HP2_ARESETN' of module 'processing_system7_v5=
_5_processing_system7' is unconnected for instance 'inst' [/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31=
x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:82=
8]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP3_ARESETN' of module 'proces=
sing_system7_v5_5_processing_system7' is unconnected for instance 'inst' [/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_s=
ystem7_0_0.v:828]</p><p>WARNING: [Synth 8-7071] port 'DMA0_RSTN' of module =
'processing_system7_v5_5_processing_system7' is unconnected for instance 'i=
nst' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_proce=
ssing_system7_0_0.v:828]</p><p>WARNING: [Synth 8-7071] port 'DMA1_RSTN' of =
module 'processing_system7_v5_5_processing_system7' is unconnected for inst=
ance 'inst' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3=
/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_b=
d_processing_system7_0_0.v:828]</p><p>WARNING: [Synth 8-7071] port 'DMA2_RS=
TN' of module 'processing_system7_v5_5_processing_system7' is unconnected f=
or instance 'inst' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020c=
lg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e3=
1x_ps_bd_processing_system7_0_0.v:828]</p><p>WARNING: [Synth 8-7071] port '=
DMA3_RSTN' of module 'processing_system7_v5_5_processing_system7' is unconn=
ected for instance 'inst' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/x=
c7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/s=
ynth/e31x_ps_bd_processing_system7_0_0.v:828]</p><p>WARNING: [Synth 8-7023]=
 instance 'inst' of module 'processing_system7_v5_5_processing_system7' has=
 685 connections declared, but only 672 given [/home/grcusrp/uhd/fpga/usrp3=
/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_proc=
essing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:828]</p><p>WAR=
NING: [Synth 8-7071] port 'S_AXI_GP0_BID' of module 'e31x_ps_bd_processing_=
system7_0_0' is unconnected for instance 'processing_system7_0' [/home/grcu=
srp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/=
synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_GP0_RID'=
 of module 'e31x_ps_bd_processing_system7_0_0' is unconnected for instance =
'processing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z=
020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [=
Synth 8-7071] port 'S_AXI_HP1_ARREADY' of module 'e31x_ps_bd_processing_sys=
tem7_0_0' is unconnected for instance 'processing_system7_0' [/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/syn=
th/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP1_RLAST' =
of module 'e31x_ps_bd_processing_system7_0_0' is unconnected for instance '=
processing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z0=
20clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [S=
ynth 8-7071] port 'S_AXI_HP1_RVALID' of module 'e31x_ps_bd_processing_syste=
m7_0_0' is unconnected for instance 'processing_system7_0' [/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth=
/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP1_RRESP' of=
 module 'e31x_ps_bd_processing_system7_0_0' is unconnected for instance 'pr=
ocessing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020=
clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Syn=
th 8-7071] port 'S_AXI_HP1_BID' of module 'e31x_ps_bd_processing_system7_0_=
0' is unconnected for instance 'processing_system7_0' [/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x=
_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP1_RID' of module=
 'e31x_ps_bd_processing_system7_0_0' is unconnected for instance 'processin=
g_system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-=
3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-70=
71] port 'S_AXI_HP1_RDATA' of module 'e31x_ps_bd_processing_system7_0_0' is=
 unconnected for instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_b=
d.v:1478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP1_RCOUNT' of module '=
e31x_ps_bd_processing_system7_0_0' is unconnected for instance 'processing_=
system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/=
e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071=
] port 'S_AXI_HP1_WCOUNT' of module 'e31x_ps_bd_processing_system7_0_0' is =
unconnected for instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/usr=
p3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd=
.v:1478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP1_RACOUNT' of module '=
e31x_ps_bd_processing_system7_0_0' is unconnected for instance 'processing_=
system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/=
e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071=
] port 'S_AXI_HP1_WACOUNT' of module 'e31x_ps_bd_processing_system7_0_0' is=
 unconnected for instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_b=
d.v:1478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP2_AWREADY' of module =
'e31x_ps_bd_processing_system7_0_0' is unconnected for instance 'processing=
_system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3=
/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-707=
1] port 'S_AXI_HP2_BVALID' of module 'e31x_ps_bd_processing_system7_0_0' is=
 unconnected for instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_b=
d.v:1478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP2_WREADY' of module '=
e31x_ps_bd_processing_system7_0_0' is unconnected for instance 'processing_=
system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/=
e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071=
] port 'S_AXI_HP2_BRESP' of module 'e31x_ps_bd_processing_system7_0_0' is u=
nconnected for instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/usrp=
3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.=
v:1478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP2_BID' of module 'e31x_=
ps_bd_processing_system7_0_0' is unconnected for instance 'processing_syste=
m7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_=
ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] por=
t 'S_AXI_HP2_RID' of module 'e31x_ps_bd_processing_system7_0_0' is unconnec=
ted for instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e=
31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]=
</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP2_RCOUNT' of module 'e31x_ps_b=
d_processing_system7_0_0' is unconnected for instance 'processing_system7_0=
' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_b=
d/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] port 'S=
_AXI_HP2_WCOUNT' of module 'e31x_ps_bd_processing_system7_0_0' is unconnect=
ed for instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e3=
1x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]<=
/p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP2_RACOUNT' of module 'e31x_ps_b=
d_processing_system7_0_0' is unconnected for instance 'processing_system7_0=
' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_b=
d/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] port 'S=
_AXI_HP2_WACOUNT' of module 'e31x_ps_bd_processing_system7_0_0' is unconnec=
ted for instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e=
31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]=
</p><p>WARNING: [Synth 8-7023] instance 'processing_system7_0' of module 'e=
31x_ps_bd_processing_system7_0_0' has 229 connections declared, but only 20=
6 given [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31=
x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] p=
ort 'mb_reset' of module 'bd_cc08_psr_aclk_0' is unconnected for instance '=
psr_aclk' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e=
31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_smartconnect_dma_0/bd_0/synth/bd_cc08.v:=
798]</p><p>WARNING: [Synth 8-7071] port 'bus_struct_reset' of module 'bd_cc=
08_psr_aclk_0' is unconnected for instance 'psr_aclk' [/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps=
_bd_smartconnect_dma_0/bd_0/synth/bd_cc08.v:798]</p><p>WARNING: [Synth 8-70=
71] port 'peripheral_reset' of module 'bd_cc08_psr_aclk_0' is unconnected f=
or instance 'psr_aclk' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z=
020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_smartconnect_dma_0/bd_0/syn=
th/bd_cc08.v:798]</p><p>WARNING: [Synth 8-7071] port 'peripheral_aresetn' o=
f module 'bd_cc08_psr_aclk_0' is unconnected for instance 'psr_aclk' [/home=
/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_p=
s_bd/ip/e31x_ps_bd_smartconnect_dma_0/bd_0/synth/bd_cc08.v:798]</p><p>WARNI=
NG: [Synth 8-7023] instance 'psr_aclk' of module 'bd_cc08_psr_aclk_0' has 1=
0 connections declared, but only 6 given [/home/grcusrp/uhd/fpga/usrp3/top/=
e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_smartconn=
ect_dma_0/bd_0/synth/bd_cc08.v:798]</p><p>WARNING: [Synth 8-7071] port 'm_a=
xi_awburst' of module 'bd_cc08_s00tr_0' is unconnected for instance 's00_tr=
ansaction_regulator' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z02=
0clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_smartconnect_dma_0/bd_0/synth=
/bd_cc08.v:1706]</p><p>WARNING: [Synth 8-7071] port 'm_axi_arburst' of modu=
le 'bd_cc08_s00tr_0' is unconnected for instance 's00_transaction_regulator=
' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_b=
d/e31x_ps_bd/ip/e31x_ps_bd_smartconnect_dma_0/bd_0/synth/bd_cc08.v:1706]</p=
><p>WARNING: [Synth 8-7023] instance 's00_transaction_regulator' of module =
'bd_cc08_s00tr_0' has 82 connections declared, but only 80 given [/home/grc=
usrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd=
/ip/e31x_ps_bd_smartconnect_dma_0/bd_0/synth/bd_cc08.v:1706]</p><p>WARNING:=
 [Synth 8-6104] Input port 'PS_CLK' has an internal driver [/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e31x.v:541]</p><p>WARNING: [Synth 8-6104] Input port=
 'PS_PORB' has an internal driver [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e3=
1x.v:542]</p><p>WARNING: [Synth 8-6104] Input port 'PS_SRSTB' has an intern=
al driver [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x.v:543]</p><p>WARNING:=
 [Synth 8-689] width (32) of port connection 'm_axi_eth_internal_araddr' do=
es not match port width (31) of module 'e31x_ps_bd' [/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e31x.v:577]</p><p>WARNING: [Synth 8-689] width (32) of port=
 connection 'm_axi_eth_internal_awaddr' does not match port width (31) of m=
odule 'e31x_ps_bd' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x.v:581]</p><p=
>WARNING: [Synth 8-689] width (1) of port connection 'm_axi_xbar_arprot' do=
es not match port width (3) of module 'e31x_ps_bd' [/home/grcusrp/uhd/fpga/=
usrp3/top/e31x/e31x.v:611]</p><p>WARNING: [Synth 8-689] width (1) of port c=
onnection 'm_axi_xbar_awprot' does not match port width (3) of module 'e31x=
_ps_bd' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x.v:615]</p><p>WARNING: [=
Synth 8-7071] port 'CE' of module 'BUFR' is unconnected for instance 'bufr_=
rx_clk' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_io.v:44]</p><p>WARNING:=
 [Synth 8-7071] port 'CLR' of module 'BUFR' is unconnected for instance 'bu=
fr_rx_clk' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_io.v:44]</p><p>WARNI=
NG: [Synth 8-7023] instance 'bufr_rx_clk' of module 'BUFR' has 4 connection=
s declared, but only 2 given [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_io=
.v:44]</p><p>WARNING: [Synth 8-7071] port 'deepsleep' of module 'blk_mem_ge=
n_v8_4_4' is unconnected for instance 'w_buffer' [/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_=
128_bd/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152]</p><p=
>WARNING: [Synth 8-7071] port 'shutdown' of module 'blk_mem_gen_v8_4_4' is =
unconnected for instance 'w_buffer' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/=
build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshar=
ed/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152]</p><p>WARNING: [Sy=
nth 8-7071] port 'rsta_busy' of module 'blk_mem_gen_v8_4_4' is unconnected =
for instance 'w_buffer' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7=
z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3d13/hdl/=
axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152]</p><p>WARNING: [Synth 8-7071] =
port 'rstb_busy' of module 'blk_mem_gen_v8_4_4' is unconnected for instance=
 'w_buffer' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3=
/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3d13/hdl/axi_dwidth_c=
onverter_v2_1_vlsyn_rfs.v:10152]</p><p>WARNING: [Synth 8-7023] instance 'w_=
buffer' of module 'blk_mem_gen_v8_4_4' has 63 connections declared, but onl=
y 59 given [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/=
axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3d13/hdl/axi_dwidth_co=
nverter_v2_1_vlsyn_rfs.v:10152]</p><p>WARNING: [Synth 8-7071] port 'aclk2x'=
 of module 'axi_register_slice_v2_1_24_axi_register_slice' is unconnected f=
or instance 's_aw_reg' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z=
020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3d13/hdl/a=
xi_dwidth_converter_v2_1_vlsyn_rfs.v:10660]</p><p>WARNING: [Synth 8-7023] i=
nstance 's_aw_reg' of module 'axi_register_slice_v2_1_24_axi_register_slice=
' has 93 connections declared, but only 92 given [/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_=
128_bd/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10660]</p><p=
>WARNING: [Synth 8-7071] port 'aclk2x' of module 'axi_register_slice_v2_1_2=
4_axi_register_slice' is unconnected for instance 'si_register_slice_inst' =
[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2=
x64_128_bd/axi_inter_2x64_128_bd/ipshared/3d13/hdl/axi_dwidth_converter_v2_=
1_vlsyn_rfs.v:7379]</p><p>WARNING: [Synth 8-7023] instance 'si_register_sli=
ce_inst' of module 'axi_register_slice_v2_1_24_axi_register_slice' has 93 c=
onnections declared, but only 92 given [/home/grcusrp/uhd/fpga/usrp3/top/e3=
1x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ips=
hared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:7379]</p><p>WARNING: [=
Synth 8-7071] port 'm_axi_awregion' of module 'axi_inter_2x64_128_bd_s00_wi=
dth_conv_0' is unconnected for instance 's00_width_conv' [/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_int=
er_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:574]</p><p>WARNING: [Synth 8-7=
071] port 'm_axi_arregion' of module 'axi_inter_2x64_128_bd_s00_width_conv_=
0' is unconnected for instance 's00_width_conv' [/home/grcusrp/uhd/fpga/usr=
p3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_1=
28_bd/synth/axi_inter_2x64_128_bd.v:574]</p><p>WARNING: [Synth 8-7023] inst=
ance 's00_width_conv' of module 'axi_inter_2x64_128_bd_s00_width_conv_0' ha=
s 78 connections declared, but only 76 given [/home/grcusrp/uhd/fpga/usrp3/=
top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_=
bd/synth/axi_inter_2x64_128_bd.v:574]</p><p>WARNING: [Synth 8-7071] port 'm=
_axi_awregion' of module 'axi_inter_2x64_128_bd_s01_width_conv_0' is unconn=
ected for instance 's01_width_conv' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/=
build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/synth/=
axi_inter_2x64_128_bd.v:651]</p><p>WARNING: [Synth 8-7071] port 'm_axi_arre=
gion' of module 'axi_inter_2x64_128_bd_s01_width_conv_0' is unconnected for=
 instance 's01_width_conv' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/=
xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/synth/axi_inter=
_2x64_128_bd.v:651]</p><p>WARNING: [Synth 8-7023] instance 's01_width_conv'=
 of module 'axi_inter_2x64_128_bd_s01_width_conv_0' has 78 connections decl=
ared, but only 76 given [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7=
z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x=
64_128_bd.v:651]</p><p>WARNING: [Synth 8-7071] port 'aclk2x' of module 'axi=
_register_slice_v2_1_24_axi_register_slice' is unconnected for instance 're=
g_slice_mi' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3=
/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3917/hdl/axi_crossbar=
_v2_1_vl_rfs.v:3122]</p><p>WARNING: [Synth 8-7023] instance 'reg_slice_mi' =
of module 'axi_register_slice_v2_1_24_axi_register_slice' has 93 connection=
s declared, but only 92 given [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-=
ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/391=
7/hdl/axi_crossbar_v2_1_vl_rfs.v:3122]</p><p>WARNING: [Synth 8-7071] port '=
aclk2x' of module 'axi_register_slice_v2_1_24_axi_register_slice' is unconn=
ected for instance 'reg_slice_mi' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/bu=
ild-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared=
/3917/hdl/axi_crossbar_v2_1_vl_rfs.v:3122]</p><p>WARNING: [Synth 8-7023] in=
stance 'reg_slice_mi' of module 'axi_register_slice_v2_1_24_axi_register_sl=
ice' has 93 connections declared, but only 92 given [/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x=
64_128_bd/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v:3122]</p><p>WARNING:=
 [Synth 8-7071] port 's_axi_bid' of module 'axi_inter_2x64_128_bd_xbar_0' i=
s unconnected for instance 'xbar' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/bu=
ild-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/synth/ax=
i_inter_2x64_128_bd.v:728]</p><p>WARNING: [Synth 8-7071] port 's_axi_rid' o=
f module 'axi_inter_2x64_128_bd_xbar_0' is unconnected for instance 'xbar' =
[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2=
x64_128_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:728]</p><p>W=
ARNING: [Synth 8-7023] instance 'xbar' of module 'axi_inter_2x64_128_bd_xba=
r_0' has 78 connections declared, but only 76 given [/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x=
64_128_bd/synth/axi_inter_2x64_128_bd.v:728]</p><p>WARNING: [Synth 8-689] w=
idth (12) of port connection 'M00_AXI_arid' does not match port width (1) o=
f module 'axi_inter_2x64_128_bd' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31=
x_dram.v:218]</p><p>WARNING: [Synth 8-689] width (12) of port connection 'M=
00_AXI_awid' does not match port width (1) of module 'axi_inter_2x64_128_bd=
' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_dram.v:230]</p><p>WARNING: [S=
ynth 8-689] width (12) of port connection 'M00_AXI_bid' does not match port=
 width (1) of module 'axi_inter_2x64_128_bd' [/home/grcusrp/uhd/fpga/usrp3/=
top/e31x/e31x_dram.v:239]</p><p>WARNING: [Synth 8-689] width (12) of port c=
onnection 'M00_AXI_rid' does not match port width (1) of module 'axi_inter_=
2x64_128_bd' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_dram.v:244]</p><p>=
WARNING: [Synth 8-689] width (64) of port connection 'dram_axi_araddr' does=
 not match port width (58) of module 'e31x_dram' [/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/e31x_core.v:766]</p><p>WARNING: [Synth 8-689] width (64) of po=
rt connection 'dram_axi_awaddr' does not match port width (58) of module 'e=
31x_dram' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:778]</p><p>WAR=
NING: [Synth 8-7071] port 'time_increment' of module 'timekeeper' is unconn=
ected for instance 'timekeeper_i' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e3=
1x_core.v:664]</p><p>WARNING: [Synth 8-7023] instance 'timekeeper_i' of mod=
ule 'timekeeper' has 15 connections declared, but only 14 given [/home/grcu=
srp/uhd/fpga/usrp3/top/e31x/e31x_core.v:664]</p><p>WARNING: [Synth 8-693] z=
ero replication count - replication ignored [/home/grcusrp/uhd/fpga/usrp3/l=
ib/rfnoc/core/chdr_data_swapper.v:189]</p><p>WARNING: [Synth 8-693] zero re=
plication count - replication ignored [/home/grcusrp/uhd/fpga/usrp3/lib/rfn=
oc/core/chdr_data_swapper.v:189]</p><p>WARNING: [Synth 8-689] width (256) o=
f port connection 'radio_rx_data' does not match port width (64) of module =
'rfnoc_block_radio' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image=
_core.v:620]</p><p>WARNING: [Synth 8-689] width (8) of port connection 'rad=
io_rx_stb' does not match port width (2) of module 'rfnoc_block_radio' [/ho=
me/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:621]</p><p>WARNI=
NG: [Synth 8-689] width (8) of port connection 'radio_rx_running' does not =
match port width (2) of module 'rfnoc_block_radio' [/home/grcusrp/uhd/fpga/=
usrp3/top/e31x/e310_rfnoc_image_core.v:622]</p><p>WARNING: [Synth 8-689] wi=
dth (256) of port connection 'radio_tx_data' does not match port width (64)=
 of module 'rfnoc_block_radio' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_=
rfnoc_image_core.v:623]</p><p>WARNING: [Synth 8-689] width (8) of port conn=
ection 'radio_tx_stb' does not match port width (2) of module 'rfnoc_block_=
radio' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:624]<=
/p><p>WARNING: [Synth 8-689] width (8) of port connection 'radio_tx_running=
' does not match port width (2) of module 'rfnoc_block_radio' [/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:625]</p><p>WARNING: [Synt=
h 8-689] width (4) of port connection 'm_axi_awid' does not match port widt=
h (2) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x=
/e310_rfnoc_image_core.v:719]</p><p>WARNING: [Synth 8-689] width (192) of p=
ort connection 'm_axi_awaddr' does not match port width (60) of module 'rfn=
oc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_co=
re.v:720]</p><p>WARNING: [Synth 8-689] width (32) of port connection 'm_axi=
_awlen' does not match port width (16) of module 'rfnoc_block_replay' [/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:721]</p><p>WARNIN=
G: [Synth 8-689] width (12) of port connection 'm_axi_awsize' does not matc=
h port width (6) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usr=
p3/top/e31x/e310_rfnoc_image_core.v:722]</p><p>WARNING: [Synth 8-689] width=
 (8) of port connection 'm_axi_awburst' does not match port width (4) of mo=
dule 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc=
_image_core.v:723]</p><p>WARNING: [Synth 8-689] width (4) of port connectio=
n 'm_axi_awlock' does not match port width (2) of module 'rfnoc_block_repla=
y' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:724]</p><=
p>WARNING: [Synth 8-689] width (16) of port connection 'm_axi_awcache' does=
 not match port width (8) of module 'rfnoc_block_replay' [/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:725]</p><p>WARNING: [Synth 8-6=
89] width (12) of port connection 'm_axi_awprot' does not match port width =
(6) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e=
310_rfnoc_image_core.v:726]</p><p>WARNING: [Synth 8-689] width (16) of port=
 connection 'm_axi_awqos' does not match port width (8) of module 'rfnoc_bl=
ock_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:=
727]</p><p>WARNING: [Synth 8-689] width (16) of port connection 'm_axi_awre=
gion' does not match port width (8) of module 'rfnoc_block_replay' [/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:728]</p><p>WARNING: =
[Synth 8-689] width (4) of port connection 'm_axi_awuser' does not match po=
rt width (2) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/t=
op/e31x/e310_rfnoc_image_core.v:729]</p><p>WARNING: [Synth 8-689] width (4)=
 of port connection 'm_axi_awvalid' does not match port width (2) of module=
 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_ima=
ge_core.v:730]</p><p>WARNING: [Synth 8-689] width (4) of port connection 'm=
_axi_awready' does not match port width (2) of module 'rfnoc_block_replay' =
[/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:731]</p><p>W=
ARNING: [Synth 8-689] width (2048) of port connection 'm_axi_wdata' does no=
t match port width (128) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:732]</p><p>WARNING: [Synth 8-68=
9] width (256) of port connection 'm_axi_wstrb' does not match port width (=
16) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e=
310_rfnoc_image_core.v:733]</p><p>WARNING: [Synth 8-689] width (4) of port =
connection 'm_axi_wlast' does not match port width (2) of module 'rfnoc_blo=
ck_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:7=
34]</p><p>WARNING: [Synth 8-689] width (4) of port connection 'm_axi_wuser'=
 does not match port width (2) of module 'rfnoc_block_replay' [/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:735]</p><p>WARNING: [Synt=
h 8-689] width (4) of port connection 'm_axi_wvalid' does not match port wi=
dth (2) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e3=
1x/e310_rfnoc_image_core.v:736]</p><p>WARNING: [Synth 8-689] width (4) of p=
ort connection 'm_axi_wready' does not match port width (2) of module 'rfno=
c_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_cor=
e.v:737]</p><p>WARNING: [Synth 8-689] width (4) of port connection 'm_axi_b=
id' does not match port width (2) of module 'rfnoc_block_replay' [/home/grc=
usrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:738]</p><p>WARNING: [S=
ynth 8-689] width (8) of port connection 'm_axi_bresp' does not match port =
width (4) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/=
e31x/e310_rfnoc_image_core.v:739]</p><p>WARNING: [Synth 8-689] width (4) of=
 port connection 'm_axi_buser' does not match port width (2) of module 'rfn=
oc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_co=
re.v:740]</p><p>WARNING: [Synth 8-689] width (4) of port connection 'm_axi_=
bvalid' does not match port width (2) of module 'rfnoc_block_replay' [/home=
/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:741]</p><p>WARNING=
: [Synth 8-689] width (4) of port connection 'm_axi_bready' does not match =
port width (2) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3=
/top/e31x/e310_rfnoc_image_core.v:742]</p><p>WARNING: [Synth 8-689] width (=
4) of port connection 'm_axi_arid' does not match port width (2) of module =
'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_imag=
e_core.v:743]</p><p>WARNING: [Synth 8-689] width (192) of port connection '=
m_axi_araddr' does not match port width (60) of module 'rfnoc_block_replay'=
 [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:744]</p><p>=
WARNING: [Synth 8-689] width (32) of port connection 'm_axi_arlen' does not=
 match port width (16) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e310_rfnoc_image_core.v:745]</p><p>WARNING: [Synth 8-689]=
 width (12) of port connection 'm_axi_arsize' does not match port width (6)=
 of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310=
_rfnoc_image_core.v:746]</p><p>WARNING: [Synth 8-689] width (8) of port con=
nection 'm_axi_arburst' does not match port width (4) of module 'rfnoc_bloc=
k_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:74=
7]</p><p>WARNING: [Synth 8-689] width (4) of port connection 'm_axi_arlock'=
 does not match port width (2) of module 'rfnoc_block_replay' [/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:748]</p><p>WARNING: [Synt=
h 8-689] width (16) of port connection 'm_axi_arcache' does not match port =
width (8) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/=
e31x/e310_rfnoc_image_core.v:749]</p><p>WARNING: [Synth 8-689] width (12) o=
f port connection 'm_axi_arprot' does not match port width (6) of module 'r=
fnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_=
core.v:750]</p><p>WARNING: [Synth 8-689] width (16) of port connection 'm_a=
xi_arqos' does not match port width (8) of module 'rfnoc_block_replay' [/ho=
me/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:751]</p><p>WARNI=
NG: [Synth 8-689] width (16) of port connection 'm_axi_arregion' does not m=
atch port width (8) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/=
usrp3/top/e31x/e310_rfnoc_image_core.v:752]</p><p>WARNING: [Synth 8-689] wi=
dth (4) of port connection 'm_axi_aruser' does not match port width (2) of =
module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfn=
oc_image_core.v:753]</p><p>WARNING: [Synth 8-689] width (4) of port connect=
ion 'm_axi_arvalid' does not match port width (2) of module 'rfnoc_block_re=
play' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:754]</=
p><p>WARNING: [Synth 8-689] width (4) of port connection 'm_axi_arready' do=
es not match port width (2) of module 'rfnoc_block_replay' [/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:755]</p><p>WARNING: [Synth 8=
-689] width (4) of port connection 'm_axi_rid' does not match port width (2=
) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31=
0_rfnoc_image_core.v:756]</p><p>WARNING: [Synth 8-689] width (2048) of port=
 connection 'm_axi_rdata' does not match port width (128) of module 'rfnoc_=
block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.=
v:757]</p><p>WARNING: [Synth 8-689] width (8) of port connection 'm_axi_rre=
sp' does not match port width (4) of module 'rfnoc_block_replay' [/home/grc=
usrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:758]</p><p>WARNING: [S=
ynth 8-689] width (4) of port connection 'm_axi_rlast' does not match port =
width (2) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/=
e31x/e310_rfnoc_image_core.v:759]</p><p>WARNING: [Synth 8-689] width (4) of=
 port connection 'm_axi_ruser' does not match port width (2) of module 'rfn=
oc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_co=
re.v:760]</p><p>WARNING: [Synth 8-689] width (4) of port connection 'm_axi_=
rvalid' does not match port width (2) of module 'rfnoc_block_replay' [/home=
/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:761]</p><p>WARNING=
: [Synth 8-689] width (4) of port connection 'm_axi_rready' does not match =
port width (2) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3=
/top/e31x/e310_rfnoc_image_core.v:762]</p><p>WARNING: [Synth 8-689] width (=
2) of port connection 'radio_rx_running' does not match port width (8) of m=
odule 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v=
:839]</p><p>WARNING: [Synth 8-689] width (64) of port connection 'radio_tx_=
data' does not match port width (256) of module 'rfnoc_image_core' [/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:841]</p><p>WARNING: [Synth 8-689=
] width (2) of port connection 'radio_tx_running' does not match port width=
 (8) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e3=
1x_core.v:842]</p><p>WARNING: [Synth 8-689] width (2) of port connection 'm=
_axi_awid' does not match port width (4) of module 'rfnoc_image_core' [/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:844]</p><p>WARNING: [Synth 8-=
689] width (64) of port connection 'm_axi_awaddr' does not match port width=
 (192) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/=
e31x_core.v:845]</p><p>WARNING: [Synth 8-689] width (16) of port connection=
 'm_axi_awlen' does not match port width (32) of module 'rfnoc_image_core' =
[/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:846]</p><p>WARNING: [Syn=
th 8-689] width (6) of port connection 'm_axi_awsize' does not match port w=
idth (12) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e3=
1x/e31x_core.v:847]</p><p>WARNING: [Synth 8-689] width (4) of port connecti=
on 'm_axi_awburst' does not match port width (8) of module 'rfnoc_image_cor=
e' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:848]</p><p>WARNING: [=
Synth 8-689] width (2) of port connection 'm_axi_awlock' does not match por=
t width (4) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/=
e31x/e31x_core.v:849]</p><p>WARNING: [Synth 8-689] width (8) of port connec=
tion 'm_axi_awcache' does not match port width (16) of module 'rfnoc_image_=
core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:850]</p><p>WARNING=
: [Synth 8-689] width (6) of port connection 'm_axi_awprot' does not match =
port width (12) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/=
top/e31x/e31x_core.v:851]</p><p>WARNING: [Synth 8-689] width (8) of port co=
nnection 'm_axi_awqos' does not match port width (16) of module 'rfnoc_imag=
e_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:852]</p><p>WARNI=
NG: [Synth 8-689] width (8) of port connection 'm_axi_awregion' does not ma=
tch port width (16) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/e31x_core.v:853]</p><p>WARNING: [Synth 8-689] width (2) of por=
t connection 'm_axi_awvalid' does not match port width (4) of module 'rfnoc=
_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:855]</p><p>=
WARNING: [Synth 8-689] width (128) of port connection 'm_axi_wdata' does no=
t match port width (2048) of module 'rfnoc_image_core' [/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e31x_core.v:857]</p><p>WARNING: [Synth 8-689] width (16)=
 of port connection 'm_axi_wstrb' does not match port width (256) of module=
 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:858]=
</p><p>WARNING: [Synth 8-689] width (2) of port connection 'm_axi_wlast' do=
es not match port width (4) of module 'rfnoc_image_core' [/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e31x_core.v:859]</p><p>WARNING: [Synth 8-689] width (2=
) of port connection 'm_axi_wvalid' does not match port width (4) of module=
 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:861]=
</p><p>WARNING: [Synth 8-689] width (2) of port connection 'm_axi_bready' d=
oes not match port width (4) of module 'rfnoc_image_core' [/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e31x_core.v:867]</p><p>WARNING: [Synth 8-689] width (=
2) of port connection 'm_axi_arid' does not match port width (4) of module =
'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:868]<=
/p><p>WARNING: [Synth 8-689] width (64) of port connection 'm_axi_araddr' d=
oes not match port width (192) of module 'rfnoc_image_core' [/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/e31x_core.v:869]</p><p>WARNING: [Synth 8-689] width=
 (16) of port connection 'm_axi_arlen' does not match port width (32) of mo=
dule 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:=
870]</p><p>WARNING: [Synth 8-689] width (6) of port connection 'm_axi_arsiz=
e' does not match port width (12) of module 'rfnoc_image_core' [/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/e31x_core.v:871]</p><p>WARNING: [Synth 8-689] wi=
dth (4) of port connection 'm_axi_arburst' does not match port width (8) of=
 module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core=
.v:872]</p><p>WARNING: [Synth 8-689] width (2) of port connection 'm_axi_ar=
lock' does not match port width (4) of module 'rfnoc_image_core' [/home/grc=
usrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:873]</p><p>WARNING: [Synth 8-689] =
width (8) of port connection 'm_axi_arcache' does not match port width (16)=
 of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_c=
ore.v:874]</p><p>WARNING: [Synth 8-689] width (6) of port connection 'm_axi=
_arprot' does not match port width (12) of module 'rfnoc_image_core' [/home=
/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:875]</p><p>WARNING: [Synth 8-6=
89] width (8) of port connection 'm_axi_arqos' does not match port width (1=
6) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x=
_core.v:876]</p><p>WARNING: [Synth 8-689] width (8) of port connection 'm_a=
xi_arregion' does not match port width (16) of module 'rfnoc_image_core' [/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:877]</p><p>WARNING: [Synth=
 8-689] width (2) of port connection 'm_axi_arvalid' does not match port wi=
dth (4) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x=
/e31x_core.v:879]</p><p>WARNING: [Synth 8-689] width (2) of port connection=
 'm_axi_rready' does not match port width (4) of module 'rfnoc_image_core' =
[/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:887]</p><p>WARNING: [Syn=
th 8-689] width (32) of port connection 's_axi_awaddr' does not match port =
width (14) of module 'e31x_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31=
x.v:893]</p><p>WARNING: [Synth 8-689] width (32) of port connection 's_axi_=
araddr' does not match port width (14) of module 'e31x_core' [/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/e31x.v:906]</p><p>WARNING: [Synth 8-689] width (6)=
 of port connection 'occupied' does not match port width (16) of module 'ax=
i_fifo_bram__parameterized10' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/axi_pm=
u.v:167]</p><p>WARNING: [Synth 8-689] width (6) of port connection 'space' =
does not match port width (16) of module 'axi_fifo_bram__parameterized10' [=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/axi_pmu.v:168]</p><p>[00:01:17] Curre=
nt task: Synthesis +++ Current Phase: Starting</p><p>CRITICAL WARNING: [Net=
list 29-160] Cannot set property 'iostandard', because the property does no=
t exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/b=
uild-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_syst=
em7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:405]</p><p>CRITICAL WARNING: =
[Netlist 29-160] Cannot set property 'PACKAGE_PIN', because the property do=
es not exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3/top/e=
31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing=
_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:406]</p><p>CRITICAL WARN=
ING: [Netlist 29-160] Cannot set property 'slew', because the property does=
 not exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3/top/e31=
x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_s=
ystem7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:407]</p><p>CRITICAL WARNIN=
G: [Netlist 29-160] Cannot set property 'PIO_DIRECTION', because the proper=
ty does not exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3/=
top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_proce=
ssing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:408]</p><p>CRITICAL=
 WARNING: [Netlist 29-160] Cannot set property 'iostandard', because the pr=
operty does not exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_p=
rocessing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:417]</p><p>CRIT=
ICAL WARNING: [Netlist 29-160] Cannot set property 'PACKAGE_PIN', because t=
he property does not exist for objects of type 'pin'. [/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps=
_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:418]</p><p=
>CRITICAL WARNING: [Netlist 29-160] Cannot set property 'slew', because the=
 property does not exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_b=
d_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:419]</p><p>C=
RITICAL WARNING: [Netlist 29-160] Cannot set property 'PIO_DIRECTION', beca=
use the property does not exist for objects of type 'pin'. [/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e3=
1x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:420]<=
/p><p>WARNING: [Vivado 12-4702] slew is not a supported property on input p=
ort(s). Setting is ignored. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip=
/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0=
/e31x_ps_bd_processing_system7_0_0.xdc:691]</p><p>WARNING: [Vivado 12-4702]=
 slew is not a supported property on input port(s). Setting is ignored. [/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31=
x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_=
0_0.xdc:694]</p><p>WARNING: [Vivado 12-4702] slew is not a supported proper=
ty on input port(s). Setting is ignored. [/home/grcusrp/uhd/fpga/usrp3/top/=
e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processin=
g_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:697]</p><p>CRITICAL WAR=
NING: [Constraints 18-1056] Clock 'bus_clk' completely overrides clock 'clk=
_fpga_0'.</p><p>CRITICAL WARNING: [Constraints 18-1056] Clock 'clk40' compl=
etely overrides clock 'clk_fpga_1'.</p><p>WARNING: [Vivado 12-508] No pins =
matched 'get_pins -hierarchical -filter {NAME =3D~ */synchronizer_false_pat=
h/stages[0].value_reg[0][*]/S}'. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31=
x_timing.xdc:141]</p><p>WARNING: [Project 1-498] One or more constraints fa=
iled evaluation while reading constraint file [/home/grcusrp/uhd/fpga/usrp3=
/top/e31x/e31x_timing.xdc] and the design contains unresolved black boxes. =
These constraints will be read post-synthesis (as long as their source cons=
traint file is marked as used_in_implementation) and should be applied corr=
ectly then. You should review the constraints listed in the file [.Xil/e31x=
_propImpl.xdc] and check the run log file to verify that these constraints =
were correctly applied.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source =
and destination clocks are the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000=
] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_G=
RAY: TCL-1000] The source and destination clocks are the same.</p><p>WARNIN=
G: [XPM_CDC_GRAY: TCL-1000] The source and destination clocks are the same.=
</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source and destination clocks =
are the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source and destin=
ation clocks are the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The sour=
ce and destination clocks are the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1=
000] The source and destination clocks are the same.</p><p>WARNING: [XPM_CD=
C_GRAY: TCL-1000] The source and destination clocks are the same.</p><p>WAR=
NING: [XPM_CDC_GRAY: TCL-1000] The source and destination clocks are the sa=
me.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination=
 clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The sour=
ce and destination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: =
TCL-1000] The source and destination clocks are the same.</p><p>WARNING: [X=
PM_CDC_HANDSHAKE: TCL-1000] The source and destination clocks are the same.=
</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination cl=
ocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source =
and destination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL=
-1000] The source and destination clocks are the same.</p><p>WARNING: [XPM_=
CDC_HANDSHAKE: TCL-1000] The source and destination clocks are the same.</p=
><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clock=
s are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and=
 destination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-10=
00] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC=
_HANDSHAKE: TCL-1000] The source and destination clocks are the same.</p><p=
>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clocks a=
re the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and de=
stination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000]=
 The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_HA=
NDSHAKE: TCL-1000] The source and destination clocks are the same.</p><p>WA=
RNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clocks are =
the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and desti=
nation clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] Th=
e source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDS=
HAKE: TCL-1000] The source and destination clocks are the same.</p><p>WARNI=
NG: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the sa=
me.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination cl=
ocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and=
 destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000]=
 The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_SI=
NGLE: TCL-1000] The source and destination clocks are the same.</p><p>WARNI=
NG: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the sa=
me.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination cl=
ocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and=
 destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000]=
 The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_SI=
NGLE: TCL-1000] The source and destination clocks are the same.</p><p>WARNI=
NG: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the sa=
me.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination cl=
ocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and=
 destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000]=
 The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_SI=
NGLE: TCL-1000] The source and destination clocks are the same.</p><p>WARNI=
NG: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the sa=
me.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination cl=
ocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and=
 destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000]=
 The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_SI=
NGLE: TCL-1000] The source and destination clocks are the same.</p><p>WARNI=
NG: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the sa=
me.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination cl=
ocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and=
 destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000]=
 The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_SI=
NGLE: TCL-1000] The source and destination clocks are the same.</p><p>WARNI=
NG: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the sa=
me.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination cl=
ocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and=
 destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000]=
 The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_SI=
NGLE: TCL-1000] The source and destination clocks are the same.</p><p>WARNI=
NG: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the sa=
me.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination cl=
ocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and=
 destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000]=
 The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_SI=
NGLE: TCL-1000] The source and destination clocks are the same.</p><p>WARNI=
NG: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the sa=
me.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination cl=
ocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and=
 destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000]=
 The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_SI=
NGLE: TCL-1000] The source and destination clocks are the same.</p><p>WARNI=
NG: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the sa=
me.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination cl=
ocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and=
 destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000]=
 The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_SI=
NGLE: TCL-1000] The source and destination clocks are the same.</p><p>WARNI=
NG: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the sa=
me.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination cl=
ocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and=
 destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000]=
 The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_SI=
NGLE: TCL-1000] The source and destination clocks are the same.</p><p>WARNI=
NG: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the sa=
me.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination cl=
ocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and=
 destination clocks are the same.</p><p>WARNING: [Vivado 12-180] No cells m=
atched 'get_cells -hier -filter {PRIMITIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIV=
E_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBGROUP=3D=3Duram || PRIMITIVE_SUBGROUP=
=3D=3DBRAM}'. [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/tcl/xpm_m=
emory_xdc.tcl:3]</p><p>WARNING: [Vivado 12-180] No cells matched 'get_cells=
 -hier -filter {PRIMITIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Dd=
ram || PRIMITIVE_SUBGROUP=3D=3Duram || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. [/to=
ols/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl:3]</=
p><p>WARNING: [Vivado 12-180] No cells matched 'get_cells -hier -filter {PR=
IMITIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_S=
UBGROUP=3D=3Duram || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. [/tools/Xilinx/Vivado/=
2021.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl:3]</p><p>WARNING: [Viv=
ado 12-180] No cells matched 'get_cells -hier -filter {PRIMITIVE_SUBGROUP=
=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBGROUP=3D=3Dura=
m || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. [/tools/Xilinx/Vivado/2021.1/data/ip/x=
pm/xpm_memory/tcl/xpm_memory_xdc.tcl:3]</p><p>WARNING: [Vivado 12-180] No c=
ells matched 'get_cells -hier -filter {PRIMITIVE_SUBGROUP=3D=3DLUTRAM || PR=
IMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBGROUP=3D=3Duram || PRIMITIVE_SUB=
GROUP=3D=3DBRAM}'. [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/tcl/=
xpm_memory_xdc.tcl:3]</p><p>WARNING: [Timing 38-316] Clock period '10.000' =
specified during out-of-context synthesis of instance 'e31x_core_inst/rfnoc=
_image_core_i/b_replay0_1/noc_shell_replay_i/ctrlport_endpoint_i/gen_async_=
fifos.in_fifo_i/fifo_section[0].impl_srl_i' at clock pin 'rd_clk' is differ=
ent from the actual clock period '5.000', this can lead to different synthe=
sis results.</p><p>WARNING: [Timing 38-316] Clock period '10.000' specified=
 during out-of-context synthesis of instance 'e31x_core_inst/rfnoc_image_co=
re_i/b_replay0_1/noc_shell_replay_i/ctrlport_endpoint_i/gen_async_fifos.out=
_fifo_i/fifo_section[0].impl_srl_i' at clock pin 'wr_clk' is different from=
 the actual clock period '5.000', this can lead to different synthesis resu=
lts.</p><p>WARNING: [Timing 38-316] Clock period '10.000' specified during =
out-of-context synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_r=
eplay0_1/noc_shell_replay_i/gen_input_in[0].chdr_to_axis_data_in_in/flush_2=
clk_ctrl_i/fifo_section[0].impl_srl_i' at clock pin 'rd_clk' is different f=
rom the actual clock period '5.000', this can lead to different synthesis r=
esults.</p><p>WARNING: [Timing 38-316] Clock period '10.000' specified duri=
ng out-of-context synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/=
b_replay0_1/noc_shell_replay_i/gen_input_in[0].chdr_to_axis_data_in_in/gen_=
async_info_fifo.info_fifo_i/fifo_section[0].impl_srl_i' at clock pin 'rd_cl=
k' is different from the actual clock period '5.000', this can lead to diff=
erent synthesis results.</p><p>WARNING: [Timing 38-316] Clock period '10.00=
0' specified during out-of-context synthesis of instance 'e31x_core_inst/rf=
noc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_input_in[0].chdr_to_axi=
s_data_in_in/gen_async_info_fifo.info_fifo_i/fifo_section[1].impl_srl_i' at=
 clock pin 'rd_clk' is different from the actual clock period '5.000', this=
 can lead to different synthesis results.</p><p>WARNING: [Timing 38-316] Cl=
ock period '10.000' specified during out-of-context synthesis of instance '=
e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_input_=
in[0].chdr_to_axis_data_in_in/no_gen_axis_width_conv.gen_async_pyld_fifo.py=
ld_fifo_i/fifo_section[0].impl_srl_i' at clock pin 'rd_clk' is different fr=
om the actual clock period '5.000', this can lead to different synthesis re=
sults.</p><p>WARNING: [Timing 38-316] Clock period '10.000' specified durin=
g out-of-context synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b=
_replay0_1/noc_shell_replay_i/gen_input_in[1].chdr_to_axis_data_in_in/flush=
_2clk_ctrl_i/fifo_section[0].impl_srl_i' at clock pin 'rd_clk' is different=
 from the actual clock period '5.000', this can lead to different synthesis=
 results.</p><p>WARNING: [Timing 38-316] Clock period '10.000' specified du=
ring out-of-context synthesis of instance 'e31x_core_inst/rfnoc_image_core_=
i/b_replay0_1/noc_shell_replay_i/gen_input_in[1].chdr_to_axis_data_in_in/ge=
n_async_info_fifo.info_fifo_i/fifo_section[0].impl_srl_i' at clock pin 'rd_=
clk' is different from the actual clock period '5.000', this can lead to di=
fferent synthesis results.</p><p>WARNING: [Timing 38-316] Clock period '10.=
000' specified during out-of-context synthesis of instance 'e31x_core_inst/=
rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_input_in[1].chdr_to_a=
xis_data_in_in/gen_async_info_fifo.info_fifo_i/fifo_section[1].impl_srl_i' =
at clock pin 'rd_clk' is different from the actual clock period '5.000', th=
is can lead to different synthesis results.</p><p>WARNING: [Timing 38-316] =
Clock period '10.000' specified during out-of-context synthesis of instance=
 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_inpu=
t_in[1].chdr_to_axis_data_in_in/no_gen_axis_width_conv.gen_async_pyld_fifo.=
pyld_fifo_i/fifo_section[0].impl_srl_i' at clock pin 'rd_clk' is different =
from the actual clock period '5.000', this can lead to different synthesis =
results.</p><p>WARNING: [Timing 38-316] Clock period '10.000' specified dur=
ing out-of-context synthesis of instance 'e31x_core_inst/rfnoc_image_core_i=
/b_replay0_1/noc_shell_replay_i/gen_output_out[0].axis_data_to_chdr_out_out=
/gen_async_info_fifo.pkt_info_fifo/fifo_section[0].impl_srl_i' at clock pin=
 'wr_clk' is different from the actual clock period '5.000', this can lead =
to different synthesis results.</p><p>WARNING: [Timing 38-316] Clock period=
 '10.000' specified during out-of-context synthesis of instance 'e31x_core_=
inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0].ax=
is_data_to_chdr_out_out/gen_async_info_fifo.pkt_info_fifo/fifo_section[1].i=
mpl_srl_i' at clock pin 'wr_clk' is different from the actual clock period =
'5.000', this can lead to different synthesis results.</p><p>WARNING: [Timi=
ng 38-316] Clock period '10.000' specified during out-of-context synthesis =
of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay=
_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_a=
sync_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i' at clock pin 'wr_clk'=
 is different from the actual clock period '5.000', this can lead to differ=
ent synthesis results.</p><p>WARNING: [Timing 38-316] Clock period '10.000'=
 specified during out-of-context synthesis of instance 'e31x_core_inst/rfno=
c_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[1].axis_data_t=
o_chdr_out_out/gen_async_info_fifo.pkt_info_fifo/fifo_section[0].impl_srl_i=
' at clock pin 'wr_clk' is different from the actual clock period '5.000', =
this can lead to different synthesis results.</p><p>WARNING: [Timing 38-316=
] Clock period '10.000' specified during out-of-context synthesis of instan=
ce 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_ou=
tput_out[1].axis_data_to_chdr_out_out/gen_async_info_fifo.pkt_info_fifo/fif=
o_section[1].impl_srl_i' at clock pin 'wr_clk' is different from the actual=
 clock period '5.000', this can lead to different synthesis results.</p><p>=
WARNING: [Timing 38-316] Clock period '10.000' specified during out-of-cont=
ext synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/no=
c_shell_replay_i/gen_output_out[1].axis_data_to_chdr_out_out/no_gen_axis_wi=
dth_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i' at cloc=
k pin 'wr_clk' is different from the actual clock period '5.000', this can =
lead to different synthesis results.</p><p>[00:01:58] Current task: Synthes=
is +++ Current Phase: Handling Custom Attributes</p><p>[00:03:07] Current t=
ask: Synthesis +++ Current Phase: Loading Part and Timing Information</p><p=
>[00:03:07] Current task: Synthesis +++ Current Phase: RTL Component Statis=
tics</p><p>[00:03:08] Current task: Synthesis +++ Current Phase: Part Resou=
rce Summary</p><p>WARNING: [Synth 8-7129] Port rsta in module xpm_memory_ba=
se__parameterized5 is either unconnected or has no load</p><p>WARNING: [Syn=
th 8-7129] Port regcea in module xpm_memory_base__parameterized5 is either =
unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port injectsbiterr=
a in module xpm_memory_base__parameterized5 is either unconnected or has no=
 load</p><p>WARNING: [Synth 8-7129] Port injectdbiterra in module xpm_memor=
y_base__parameterized5 is either unconnected or has no load</p><p>WARNING: =
[Synth 8-7129] Port clkb in module xpm_memory_base__parameterized5 is eithe=
r unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port regceb in m=
odule xpm_memory_base__parameterized5 is either unconnected or has no load<=
/p><p>WARNING: [Synth 8-7129] Port web[0] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129]=
 Port dinb[69] in module xpm_memory_base__parameterized5 is either unconnec=
ted or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[68] in module xp=
m_memory_base__parameterized5 is either unconnected or has no load</p><p>WA=
RNING: [Synth 8-7129] Port dinb[67] in module xpm_memory_base__parameterize=
d5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port =
dinb[66] in module xpm_memory_base__parameterized5 is either unconnected or=
 has no load</p><p>WARNING: [Synth 8-7129] Port dinb[65] in module xpm_memo=
ry_base__parameterized5 is either unconnected or has no load</p><p>WARNING:=
 [Synth 8-7129] Port dinb[64] in module xpm_memory_base__parameterized5 is =
either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[6=
3] in module xpm_memory_base__parameterized5 is either unconnected or has n=
o load</p><p>WARNING: [Synth 8-7129] Port dinb[62] in module xpm_memory_bas=
e__parameterized5 is either unconnected or has no load</p><p>WARNING: [Synt=
h 8-7129] Port dinb[61] in module xpm_memory_base__parameterized5 is either=
 unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[60] in =
module xpm_memory_base__parameterized5 is either unconnected or has no load=
</p><p>WARNING: [Synth 8-7129] Port dinb[59] in module xpm_memory_base__par=
ameterized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-71=
29] Port dinb[58] in module xpm_memory_base__parameterized5 is either uncon=
nected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[57] in module=
 xpm_memory_base__parameterized5 is either unconnected or has no load</p><p=
>WARNING: [Synth 8-7129] Port dinb[56] in module xpm_memory_base__parameter=
ized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Po=
rt dinb[55] in module xpm_memory_base__parameterized5 is either unconnected=
 or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[54] in module xpm_m=
emory_base__parameterized5 is either unconnected or has no load</p><p>WARNI=
NG: [Synth 8-7129] Port dinb[53] in module xpm_memory_base__parameterized5 =
is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port din=
b[52] in module xpm_memory_base__parameterized5 is either unconnected or ha=
s no load</p><p>WARNING: [Synth 8-7129] Port dinb[51] in module xpm_memory_=
base__parameterized5 is either unconnected or has no load</p><p>WARNING: [S=
ynth 8-7129] Port dinb[50] in module xpm_memory_base__parameterized5 is eit=
her unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[49] =
in module xpm_memory_base__parameterized5 is either unconnected or has no l=
oad</p><p>WARNING: [Synth 8-7129] Port dinb[48] in module xpm_memory_base__=
parameterized5 is either unconnected or has no load</p><p>WARNING: [Synth 8=
-7129] Port dinb[47] in module xpm_memory_base__parameterized5 is either un=
connected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[46] in mod=
ule xpm_memory_base__parameterized5 is either unconnected or has no load</p=
><p>WARNING: [Synth 8-7129] Port dinb[45] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129]=
 Port dinb[44] in module xpm_memory_base__parameterized5 is either unconnec=
ted or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[43] in module xp=
m_memory_base__parameterized5 is either unconnected or has no load</p><p>WA=
RNING: [Synth 8-7129] Port dinb[42] in module xpm_memory_base__parameterize=
d5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port =
dinb[41] in module xpm_memory_base__parameterized5 is either unconnected or=
 has no load</p><p>WARNING: [Synth 8-7129] Port dinb[40] in module xpm_memo=
ry_base__parameterized5 is either unconnected or has no load</p><p>WARNING:=
 [Synth 8-7129] Port dinb[39] in module xpm_memory_base__parameterized5 is =
either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[3=
8] in module xpm_memory_base__parameterized5 is either unconnected or has n=
o load</p><p>WARNING: [Synth 8-7129] Port dinb[37] in module xpm_memory_bas=
e__parameterized5 is either unconnected or has no load</p><p>WARNING: [Synt=
h 8-7129] Port dinb[36] in module xpm_memory_base__parameterized5 is either=
 unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[35] in =
module xpm_memory_base__parameterized5 is either unconnected or has no load=
</p><p>WARNING: [Synth 8-7129] Port dinb[34] in module xpm_memory_base__par=
ameterized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-71=
29] Port dinb[33] in module xpm_memory_base__parameterized5 is either uncon=
nected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[32] in module=
 xpm_memory_base__parameterized5 is either unconnected or has no load</p><p=
>WARNING: [Synth 8-7129] Port dinb[31] in module xpm_memory_base__parameter=
ized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Po=
rt dinb[30] in module xpm_memory_base__parameterized5 is either unconnected=
 or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[29] in module xpm_m=
emory_base__parameterized5 is either unconnected or has no load</p><p>WARNI=
NG: [Synth 8-7129] Port dinb[28] in module xpm_memory_base__parameterized5 =
is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port din=
b[27] in module xpm_memory_base__parameterized5 is either unconnected or ha=
s no load</p><p>WARNING: [Synth 8-7129] Port dinb[26] in module xpm_memory_=
base__parameterized5 is either unconnected or has no load</p><p>WARNING: [S=
ynth 8-7129] Port dinb[25] in module xpm_memory_base__parameterized5 is eit=
her unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[24] =
in module xpm_memory_base__parameterized5 is either unconnected or has no l=
oad</p><p>WARNING: [Synth 8-7129] Port dinb[23] in module xpm_memory_base__=
parameterized5 is either unconnected or has no load</p><p>WARNING: [Synth 8=
-7129] Port dinb[22] in module xpm_memory_base__parameterized5 is either un=
connected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[21] in mod=
ule xpm_memory_base__parameterized5 is either unconnected or has no load</p=
><p>WARNING: [Synth 8-7129] Port dinb[20] in module xpm_memory_base__parame=
terized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129]=
 Port dinb[19] in module xpm_memory_base__parameterized5 is either unconnec=
ted or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[18] in module xp=
m_memory_base__parameterized5 is either unconnected or has no load</p><p>WA=
RNING: [Synth 8-7129] Port dinb[17] in module xpm_memory_base__parameterize=
d5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port =
dinb[16] in module xpm_memory_base__parameterized5 is either unconnected or=
 has no load</p><p>WARNING: [Synth 8-7129] Port dinb[15] in module xpm_memo=
ry_base__parameterized5 is either unconnected or has no load</p><p>WARNING:=
 [Synth 8-7129] Port dinb[14] in module xpm_memory_base__parameterized5 is =
either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[1=
3] in module xpm_memory_base__parameterized5 is either unconnected or has n=
o load</p><p>WARNING: [Synth 8-7129] Port dinb[12] in module xpm_memory_bas=
e__parameterized5 is either unconnected or has no load</p><p>WARNING: [Synt=
h 8-7129] Port dinb[11] in module xpm_memory_base__parameterized5 is either=
 unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[10] in =
module xpm_memory_base__parameterized5 is either unconnected or has no load=
</p><p>WARNING: [Synth 8-7129] Port dinb[9] in module xpm_memory_base__para=
meterized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-712=
9] Port dinb[8] in module xpm_memory_base__parameterized5 is either unconne=
cted or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[7] in module xp=
m_memory_base__parameterized5 is either unconnected or has no load</p><p>WA=
RNING: [Synth 8-7129] Port dinb[6] in module xpm_memory_base__parameterized=
5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port d=
inb[5] in module xpm_memory_base__parameterized5 is either unconnected or h=
as no load</p><p>WARNING: [Synth 8-7129] Port dinb[4] in module xpm_memory_=
base__parameterized5 is either unconnected or has no load</p><p>WARNING: [S=
ynth 8-7129] Port dinb[3] in module xpm_memory_base__parameterized5 is eith=
er unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[2] in=
 module xpm_memory_base__parameterized5 is either unconnected or has no loa=
d</p><p>WARNING: [Synth 8-7129] Port dinb[1] in module xpm_memory_base__par=
ameterized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-71=
29] Port dinb[0] in module xpm_memory_base__parameterized5 is either unconn=
ected or has no load</p><p>WARNING: [Synth 8-7129] Port injectsbiterrb in m=
odule xpm_memory_base__parameterized5 is either unconnected or has no load<=
/p><p>WARNING: [Synth 8-7129] Port injectdbiterrb in module xpm_memory_base=
__parameterized5 is either unconnected or has no load</p><p>WARNING: [Synth=
 8-7129] Port s_sc_req[0] in module sc_node_v1_0_13_top__parameterized3 is =
either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port s_sc_i=
nfo[0] in module sc_node_v1_0_13_top__parameterized3 is either unconnected =
or has no load</p><p>WARNING: [Synth 8-7129] Port s_sc_payld[0] in module s=
c_node_v1_0_13_top__parameterized3 is either unconnected or has no load</p>=
<p>WARNING: [Synth 8-7129] Port m_sc_aclken in module sc_node_v1_0_13_top__=
parameterized3 is either unconnected or has no load</p><p>WARNING: [Synth 8=
-7129] Port m_axis_arb_tready in module sc_node_v1_0_13_top__parameterized3=
 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port s_=
axis_arb_tvalid in module sc_node_v1_0_13_top__parameterized3 is either unc=
onnected or has no load</p><p>WARNING: [Synth 8-7129] Port s_axis_arb_tdata=
[15] in module sc_node_v1_0_13_top__parameterized3 is either unconnected or=
 has no load</p><p>WARNING: [Synth 8-7129] Port s_axis_arb_tdata[14] in mod=
ule sc_node_v1_0_13_top__parameterized3 is either unconnected or has no loa=
d</p><p>WARNING: [Synth 8-7129] Port s_axis_arb_tdata[13] in module sc_node=
_v1_0_13_top__parameterized3 is either unconnected or has no load</p><p>WAR=
NING: [Synth 8-7129] Port s_axis_arb_tdata[12] in module sc_node_v1_0_13_to=
p__parameterized3 is either unconnected or has no load</p><p>WARNING: [Synt=
h 8-7129] Port s_axis_arb_tdata[11] in module sc_node_v1_0_13_top__paramete=
rized3 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] P=
ort s_axis_arb_tdata[10] in module sc_node_v1_0_13_top__parameterized3 is e=
ither unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port s_axis_=
arb_tdata[9] in module sc_node_v1_0_13_top__parameterized3 is either unconn=
ected or has no load</p><p>WARNING: [Synth 8-7129] Port s_axis_arb_tdata[8]=
 in module sc_node_v1_0_13_top__parameterized3 is either unconnected or has=
 no load</p><p>WARNING: [Synth 8-7129] Port s_axis_arb_tdata[7] in module s=
c_node_v1_0_13_top__parameterized3 is either unconnected or has no load</p>=
<p>WARNING: [Synth 8-7129] Port s_axis_arb_tdata[6] in module sc_node_v1_0_=
13_top__parameterized3 is either unconnected or has no load</p><p>WARNING: =
[Synth 8-7129] Port s_axis_arb_tdata[5] in module sc_node_v1_0_13_top__para=
meterized3 is either unconnected or has no load</p><p>WARNING: [Synth 8-712=
9] Port s_axis_arb_tdata[4] in module sc_node_v1_0_13_top__parameterized3 i=
s either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port s_ax=
is_arb_tdata[3] in module sc_node_v1_0_13_top__parameterized3 is either unc=
onnected or has no load</p><p>WARNING: [Synth 8-7129] Port s_axis_arb_tdata=
[2] in module sc_node_v1_0_13_top__parameterized3 is either unconnected or =
has no load</p><p>WARNING: [Synth 8-7129] Port s_axis_arb_tdata[1] in modul=
e sc_node_v1_0_13_top__parameterized3 is either unconnected or has no load<=
/p><p>WARNING: [Synth 8-6014] Unused sequential element ingress_fifo_i/main=
_fifo/fifo_bram/ram/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014]=
 Unused sequential element ingress_fifo_i/main_fifo/fifo_bram/ram/impl/ram_=
reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential element in=
gress_fifo_i/main_fifo/fifo_bram/ram/impl/ram_reg was removed.</p><p>WARNIN=
G: [Synth 8-6014] Unused sequential element ingress_fifo_i/main_fifo/fifo_b=
ram/ram/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-3917] design rfno=
c_block_replay has port m_axi_awid[1] driven by constant 0</p><p>WARNING: [=
Synth 8-3917] design rfnoc_block_replay has port m_axi_awid[0] driven by co=
nstant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m=
_axi_awsize[5] driven by constant 0</p><p>WARNING: [Synth 8-3917] design rf=
noc_block_replay has port m_axi_awsize[4] driven by constant 1</p><p>WARNIN=
G: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awsize[3] driven=
 by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has =
port m_axi_awsize[2] driven by constant 0</p><p>WARNING: [Synth 8-3917] des=
ign rfnoc_block_replay has port m_axi_awsize[1] driven by constant 1</p><p>=
WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awsize[0] =
driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_repla=
y has port m_axi_awburst[3] driven by constant 0</p><p>WARNING: [Synth 8-39=
17] design rfnoc_block_replay has port m_axi_awburst[2] driven by constant =
1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_aw=
burst[1] driven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_bl=
ock_replay has port m_axi_awburst[0] driven by constant 1</p><p>WARNING: [S=
ynth 8-3917] design rfnoc_block_replay has port m_axi_awlock[1] driven by c=
onstant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port =
m_axi_awlock[0] driven by constant 0</p><p>WARNING: [Synth 8-3917] design r=
fnoc_block_replay has port m_axi_awcache[7] driven by constant 1</p><p>WARN=
ING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awcache[6] dri=
ven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay h=
as port m_axi_awcache[5] driven by constant 1</p><p>WARNING: [Synth 8-3917]=
 design rfnoc_block_replay has port m_axi_awcache[4] driven by constant 1</=
p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awcac=
he[3] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block=
_replay has port m_axi_awcache[2] driven by constant 1</p><p>WARNING: [Synt=
h 8-3917] design rfnoc_block_replay has port m_axi_awcache[1] driven by con=
stant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_=
axi_awcache[0] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rf=
noc_block_replay has port m_axi_awprot[5] driven by constant 0</p><p>WARNIN=
G: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awprot[4] driven=
 by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has =
port m_axi_awprot[3] driven by constant 0</p><p>WARNING: [Synth 8-3917] des=
ign rfnoc_block_replay has port m_axi_awprot[2] driven by constant 0</p><p>=
WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awprot[1] =
driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_repla=
y has port m_axi_awprot[0] driven by constant 0</p><p>WARNING: [Synth 8-391=
7] design rfnoc_block_replay has port m_axi_awqos[7] driven by constant 0</=
p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awqos=
[6] driven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_r=
eplay has port m_axi_awqos[5] driven by constant 0</p><p>WARNING: [Synth 8-=
3917] design rfnoc_block_replay has port m_axi_awqos[4] driven by constant =
0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_aw=
qos[3] driven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_bloc=
k_replay has port m_axi_awqos[2] driven by constant 0</p><p>WARNING: [Synth=
 8-3917] design rfnoc_block_replay has port m_axi_awqos[1] driven by consta=
nt 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi=
_awqos[0] driven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_b=
lock_replay has port m_axi_awregion[7] driven by constant 0</p><p>WARNING: =
[Synth 8-3917] design rfnoc_block_replay has port m_axi_awregion[6] driven =
by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has p=
ort m_axi_awregion[5] driven by constant 0</p><p>WARNING: [Synth 8-3917] de=
sign rfnoc_block_replay has port m_axi_awregion[4] driven by constant 0</p>=
<p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awregio=
n[3] driven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_=
replay has port m_axi_awregion[2] driven by constant 0</p><p>WARNING: [Synt=
h 8-3917] design rfnoc_block_replay has port m_axi_awregion[1] driven by co=
nstant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m=
_axi_awregion[0] driven by constant 0</p><p>WARNING: [Synth 8-3917] design =
rfnoc_block_replay has port m_axi_awuser[1] driven by constant 0</p><p>WARN=
ING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awuser[0] driv=
en by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay ha=
s port m_axi_wstrb[15] driven by constant 1</p><p>WARNING: [Synth 8-3917] d=
esign rfnoc_block_replay has port m_axi_wstrb[14] driven by constant 1</p><=
p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_wstrb[13=
] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_rep=
lay has port m_axi_wstrb[12] driven by constant 1</p><p>WARNING: [Synth 8-3=
917] design rfnoc_block_replay has port m_axi_wstrb[11] driven by constant =
1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_ws=
trb[10] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_blo=
ck_replay has port m_axi_wstrb[9] driven by constant 1</p><p>WARNING: [Synt=
h 8-3917] design rfnoc_block_replay has port m_axi_wstrb[8] driven by const=
ant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_ax=
i_wstrb[7] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_=
block_replay has port m_axi_wstrb[6] driven by constant 1</p><p>WARNING: [S=
ynth 8-3917] design rfnoc_block_replay has port m_axi_wstrb[5] driven by co=
nstant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m=
_axi_wstrb[4] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfn=
oc_block_replay has port m_axi_wstrb[3] driven by constant 1</p><p>WARNING:=
 [Synth 8-3917] design rfnoc_block_replay has port m_axi_wstrb[2] driven by=
 constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has por=
t m_axi_wstrb[1] driven by constant 1</p><p>WARNING: [Synth 8-3917] design =
rfnoc_block_replay has port m_axi_wstrb[0] driven by constant 1</p><p>WARNI=
NG: [Synth 8-3917] design rfnoc_block_replay has port m_axi_wuser[1] driven=
 by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has =
port m_axi_wuser[0] driven by constant 0</p><p>WARNING: [Synth 8-3917] desi=
gn rfnoc_block_replay has port m_axi_arid[1] driven by constant 0</p><p>WAR=
NING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_arid[0] drive=
n by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has=
 port m_axi_arsize[5] driven by constant 0</p><p>WARNING: [Synth 8-3917] de=
sign rfnoc_block_replay has port m_axi_arsize[4] driven by constant 1</p><p=
>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_arsize[3]=
 driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_repl=
ay has port m_axi_arsize[2] driven by constant 0</p><p>WARNING: [Synth 8-39=
17] design rfnoc_block_replay has port m_axi_arsize[1] driven by constant 1=
</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_ars=
ize[0] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_bloc=
k_replay has port m_axi_arburst[3] driven by constant 0</p><p>WARNING: [Syn=
th 8-3917] design rfnoc_block_replay has port m_axi_arburst[2] driven by co=
nstant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m=
_axi_arburst[1] driven by constant 0</p><p>WARNING: [Synth 8-3917] design r=
fnoc_block_replay has port m_axi_arburst[0] driven by constant 1</p><p>WARN=
ING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_arlock[1] driv=
en by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay ha=
s port m_axi_arlock[0] driven by constant 0</p><p>WARNING: [Synth 8-3917] d=
esign rfnoc_block_replay has port m_axi_arcache[7] driven by constant 1</p>=
<p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_arcache=
[6] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_r=
eplay has port m_axi_arcache[5] driven by constant 1</p><p>WARNING: [Synth =
8-3917] design rfnoc_block_replay has port m_axi_arcache[4] driven by const=
ant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_ax=
i_arcache[3] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfno=
c_block_replay has port m_axi_arcache[2] driven by constant 1</p><p>WARNING=
: [Synth 8-3917] design rfnoc_block_replay has port m_axi_arcache[1] driven=
 by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has =
port m_axi_arcache[0] driven by constant 1</p><p>WARNING: [Synth 8-3917] de=
sign rfnoc_block_replay has port m_axi_arprot[5] driven by constant 0</p><p=
>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_arprot[4]=
 driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_repl=
ay has port m_axi_arprot[3] driven by constant 0</p><p>WARNING: [Synth 8-39=
17] design rfnoc_block_replay has port m_axi_arprot[2] driven by constant 0=
</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_arp=
rot[1] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_bloc=
k_replay has port m_axi_arprot[0] driven by constant 0</p><p>WARNING: [Synt=
h 8-3917] design rfnoc_block_replay has port m_axi_arqos[7] driven by const=
ant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_ax=
i_arqos[6] driven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_=
block_replay has port m_axi_arqos[5] driven by constant 0</p><p>WARNING: [S=
ynth 8-3917] design rfnoc_block_replay has port m_axi_arqos[4] driven by co=
nstant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m=
_axi_arqos[3] driven by constant 0</p><p>WARNING: [Synth 8-3917] design rfn=
oc_block_replay has port m_axi_arqos[2] driven by constant 0</p><p>WARNING:=
 [Synth 8-3917] design rfnoc_block_replay has port m_axi_arqos[1] driven by=
 constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has por=
t m_axi_arqos[0] driven by constant 0</p><p>WARNING: [Synth 8-6014] Unused =
sequential element rec_axi_fifo/fifo_bram/ram/impl/ram_reg was removed.</p>=
<p>WARNING: [Synth 8-6014] Unused sequential element play_axi_fifo/fifo_bra=
m/ram/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequen=
tial element rec_axi_fifo/fifo_bram/ram/impl/ram_reg was removed.</p><p>WAR=
NING: [Synth 8-6014] Unused sequential element play_axi_fifo/fifo_bram/ram/=
impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential e=
lement no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/ext_fifo_i/ram/=
impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential e=
lement no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/ext_fifo_i/ram/=
impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential e=
lement gen_ctrl_slave.axis_ctrl_slv_i/gate_i/ram_i/impl/ram_reg was removed=
.</p><p>WARNING: [Synth 8-3936] Found unconnected internal register 'ctrlpo=
rt_timer_i/resp_cache_i/o_tdata_reg' and it is trimmed from '34' to '32' bi=
ts. [/home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop.v:37]</p><p>WARNIN=
G: [Synth 8-6014] Unused sequential element gen_axis_width_conv.pyld_fifo_i=
/fifo_bram/ram/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unus=
ed sequential element gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/ra=
m_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential element =
gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg was removed.</p><p=
>WARNING: [Synth 8-6014] Unused sequential element gen_axis_width_conv.pyld=
_fifo/fifo_bram/ram/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014]=
 Unused sequential element gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram=
_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential element g=
en_ctrl_slave.axis_ctrl_slv_i/gate_i/ram_i/impl/ram_reg was removed.</p><p>=
WARNING: [Synth 8-3936] Found unconnected internal register 'dest_mux_i/axi=
_fifo/fifo_flop2/o_tdata_reg' and it is trimmed from '5' to '4' bits. [/hom=
e/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop2.v:38]</p><p>WARNING: [Synt=
h 8-3936] Found unconnected internal register 'dest_mux_i/axi_fifo/fifo_flo=
p2/o_tdata_reg' and it is trimmed from '5' to '4' bits. [/home/grcusrp/uhd/=
fpga/usrp3/lib/fifo/axi_fifo_flop2.v:38]</p><p>WARNING: [Synth 8-3936] Foun=
d unconnected internal register 'dest_mux_i/axi_fifo/fifo_flop2/o_tdata_reg=
' and it is trimmed from '5' to '4' bits. [/home/grcusrp/uhd/fpga/usrp3/lib=
/fifo/axi_fifo_flop2.v:38]</p><p>WARNING: [Synth 8-3936] Found unconnected =
internal register 'dest_mux_i/axi_fifo/fifo_flop2/o_tdata_reg' and it is tr=
immed from '5' to '4' bits. [/home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo=
_flop2.v:38]</p><p>WARNING: [Synth 8-3936] Found unconnected internal regis=
ter 'dest_mux_i/axi_fifo/fifo_flop2/o_tdata_reg' and it is trimmed from '5'=
 to '4' bits. [/home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop2.v:38]</=
p><p>WARNING: [Synth 8-6014] Unused sequential element axi_packet_gate_i/ra=
m_i/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequenti=
al element axi_packet_gate_i/ram_i/impl/ram_reg was removed.</p><p>WARNING:=
 [Synth 8-6014] Unused sequential element axi_packet_gate_i/ram_i/impl/ram_=
reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential element ax=
i_packet_gate_i/ram_i/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-601=
4] Unused sequential element axi_packet_gate_i/ram_i/impl/ram_reg was remov=
ed.</p><p>WARNING: [Synth 8-6014] Unused sequential element kv_map_i/map_i/=
mem_i/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-3936] Found unconne=
cted internal register 'ppslp/coarse_reg' and it is trimmed from '28' to '1=
6' bits. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:243]</p><p>WARNIN=
G: [Synth 8-6014] Unused sequential element cpu_out_gate_i/ram_i/impl/ram_r=
eg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential element chd=
r_user_fifo_i/fifo_bram/ram/impl/ram_reg was removed.</p><p>WARNING: [Synth=
 8-6014] Unused sequential element chdr_out_gate_i/ram_i/impl/ram_reg was r=
emoved.</p><p>WARNING: [Synth 8-6014] Unused sequential element chdr_out_ga=
te_i/addr_fifo_i/fifo_bram/ram/impl/ram_reg was removed.</p><p>WARNING: [Sy=
nth 8-6014] Unused sequential element kv_map_i/mem_i/impl/ram_reg was remov=
ed.</p><p>WARNING: [Synth 8-6014] Unused sequential element eth_adapter_i/c=
pu_fifo_i/fifo_bram/ram/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6=
014] Unused sequential element eth_adapter_i/chdr_fifo_i/fifo_bram/ram/impl=
/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential eleme=
nt inst_axi_pmu/axi_fifo_short_inst/ram/impl/ram_reg was removed.</p><p>[00=
:04:45] Current task: Synthesis +++ Current Phase: Cross Boundary and Area =
Optimization</p><p>[00:04:51] Current task: Synthesis +++ Current Phase: Ap=
plying XDC Timing Constraints</p><p>[00:05:41] Current task: Synthesis +++ =
Current Phase: Timing Optimization</p><p>[00:06:26] Current task: Synthesis=
 +++ Current Phase: Technology Mapping</p><p>[00:06:26] Current task: Synth=
esis +++ Current Phase: IO Insertion</p><p>[00:06:29] Current task: Synthes=
is +++ Current Phase: Flattening Before IO Insertion</p><p>WARNING: [Synth =
8-3295] tying undriven pin I_AXI_DMA_REG_MODULE/strm_valid_int2_inferred:in=
0 to constant 0</p><p>WARNING: [Synth 8-3295] tying undriven pin I_AXI_DMA_=
REG_MODULE/strm_valid_int_cdc_to_inferred:in0 to constant 0</p><p>[00:06:44=
] Current task: Synthesis +++ Current Phase: Final Netlist Cleanup</p><p>WA=
RNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_deb=
ug/dont_touch) which could create extra logic on its net [/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_int=
er_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:543]</p>=
<p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mar=
k_debug/dont_touch) which could create extra logic on its net [/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:555=
]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (kee=
p/mark_debug/dont_touch) which could create extra logic on its net [/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_=
bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.=
v:544]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute=
 (keep/mark_debug/dont_touch) which could create extra logic on its net [/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64=
_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl=
_rfs.v:599]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attr=
ibute (keep/mark_debug/dont_touch) which could create extra logic on its ne=
t [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter=
_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2=
_1_vl_rfs.v:544]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related=
 attribute (keep/mark_debug/dont_touch) which could create extra logic on i=
ts net [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_=
inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_convert=
er_v2_1_vl_rfs.v:556]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep re=
lated attribute (keep/mark_debug/dont_touch) which could create extra logic=
 on its net [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3=
/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_co=
nverter_v2_1_vl_rfs.v:556]</p><p>WARNING: [Synth 8-5396] Clock pin C has ke=
ep related attribute (keep/mark_debug/dont_touch) which could create extra =
logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_c=
dc.sv:583]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attri=
bute (keep/mark_debug/dont_touch) which could create extra logic on its net=
 [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p=
>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_=
debug/dont_touch) which could create extra logic on its net [/tools/Xilinx/=
Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING: [Synth=
 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_touch=
) which could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/da=
ta/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING: [Synth 8-5396] Clock p=
in C has keep related attribute (keep/mark_debug/dont_touch) which could cr=
eate extra logic on its net [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip=
/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4/=
hdl/axi_clock_converter_v2_1_vl_rfs.v:600]</p><p>WARNING: [Synth 8-5396] Cl=
ock pin C has keep related attribute (keep/mark_debug/dont_touch) which cou=
ld create extra logic on its net [/home/grcusrp/uhd/fpga/usrp3/top/e31x/bui=
ld-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/=
7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600]</p><p>WARNING: [Synth 8-539=
6] Clock pin C has keep related attribute (keep/mark_debug/dont_touch) whic=
h could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/=
xpm/xpm_cdc/hdl/xpm_cdc.sv:594]</p><p>WARNING: [Synth 8-5396] Clock pin C h=
as keep related attribute (keep/mark_debug/dont_touch) which could create e=
xtra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/=
xpm_cdc.sv:221]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related =
attribute (keep/mark_debug/dont_touch) which could create extra logic on it=
s net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]<=
/p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/=
mark_debug/dont_touch) which could create extra logic on its net [/tools/Xi=
linx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING: [=
Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_=
touch) which could create extra logic on its net [/tools/Xilinx/Vivado/2021=
.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Cl=
ock pin C has keep related attribute (keep/mark_debug/dont_touch) which cou=
ld create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/x=
pm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has ke=
ep related attribute (keep/mark_debug/dont_touch) which could create extra =
logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_c=
dc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attri=
bute (keep/mark_debug/dont_touch) which could create extra logic on its net=
 [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p=
>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_=
debug/dont_touch) which could create extra logic on its net [/tools/Xilinx/=
Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth=
 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_touch=
) which could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/da=
ta/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock p=
in C has keep related attribute (keep/mark_debug/dont_touch) which could cr=
eate extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cd=
c/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep re=
lated attribute (keep/mark_debug/dont_touch) which could create extra logic=
 on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv=
:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute =
(keep/mark_debug/dont_touch) which could create extra logic on its net [/to=
ols/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARN=
ING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug=
/dont_touch) which could create extra logic on its net [/tools/Xilinx/Vivad=
o/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-53=
96] Clock pin C has keep related attribute (keep/mark_debug/dont_touch) whi=
ch could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip=
/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C =
has keep related attribute (keep/mark_debug/dont_touch) which could create =
extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl=
/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related=
 attribute (keep/mark_debug/dont_touch) which could create extra logic on i=
ts net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]=
</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep=
/mark_debug/dont_touch) which could create extra logic on its net [/tools/X=
ilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:594]</p><p>WARNING: =
[Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont=
_touch) which could create extra logic on its net [/tools/Xilinx/Vivado/202=
1.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING: [Synth 8-5396] C=
lock pin C has keep related attribute (keep/mark_debug/dont_touch) which co=
uld create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/=
xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING: [Synth 8-5396] Clock pin C has k=
eep related attribute (keep/mark_debug/dont_touch) which could create extra=
 logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_=
cdc.sv:221]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attr=
ibute (keep/mark_debug/dont_touch) which could create extra logic on its ne=
t [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><=
p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net [/tools/Xilinx=
/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synt=
h 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_touc=
h) which could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/d=
ata/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock =
pin C has keep related attribute (keep/mark_debug/dont_touch) which could c=
reate extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_c=
dc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep r=
elated attribute (keep/mark_debug/dont_touch) which could create extra logi=
c on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.s=
v:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute=
 (keep/mark_debug/dont_touch) which could create extra logic on its net [/t=
ools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WAR=
NING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debu=
g/dont_touch) which could create extra logic on its net [/tools/Xilinx/Viva=
do/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5=
396] Clock pin C has keep related attribute (keep/mark_debug/dont_touch) wh=
ich could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/i=
p/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C=
 has keep related attribute (keep/mark_debug/dont_touch) which could create=
 extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hd=
l/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep relate=
d attribute (keep/mark_debug/dont_touch) which could create extra logic on =
its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592=
]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (kee=
p/mark_debug/dont_touch) which could create extra logic on its net [/tools/=
Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING:=
 [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/don=
t_touch) which could create extra logic on its net [/tools/Xilinx/Vivado/20=
21.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] =
Clock pin C has keep related attribute (keep/mark_debug/dont_touch) which c=
ould create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm=
/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has =
keep related attribute (keep/mark_debug/dont_touch) which could create extr=
a logic on its net [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020c=
lg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_c=
lock_converter_v2_1_vl_rfs.v:600]</p><p>WARNING: [Synth 8-5396] Clock pin C=
 has keep related attribute (keep/mark_debug/dont_touch) which could create=
 extra logic on its net [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7=
z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/=
axi_clock_converter_v2_1_vl_rfs.v:600]</p><p>WARNING: [Synth 8-5396] Clock =
pin C has keep related attribute (keep/mark_debug/dont_touch) which could c=
reate extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_c=
dc/hdl/xpm_cdc.sv:594]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep r=
elated attribute (keep/mark_debug/dont_touch) which could create extra logi=
c on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.s=
v:221]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute=
 (keep/mark_debug/dont_touch) which could create extra logic on its net [/t=
ools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WAR=
NING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debu=
g/dont_touch) which could create extra logic on its net [/tools/Xilinx/Viva=
do/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING: [Synth 8-5=
396] Clock pin C has keep related attribute (keep/mark_debug/dont_touch) wh=
ich could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/i=
p/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C=
 has keep related attribute (keep/mark_debug/dont_touch) which could create=
 extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hd=
l/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep relate=
d attribute (keep/mark_debug/dont_touch) which could create extra logic on =
its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592=
]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (kee=
p/mark_debug/dont_touch) which could create extra logic on its net [/tools/=
Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING:=
 [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/don=
t_touch) which could create extra logic on its net [/tools/Xilinx/Vivado/20=
21.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] =
Clock pin C has keep related attribute (keep/mark_debug/dont_touch) which c=
ould create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm=
/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has =
keep related attribute (keep/mark_debug/dont_touch) which could create extr=
a logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm=
_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related att=
ribute (keep/mark_debug/dont_touch) which could create extra logic on its n=
et [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p>=
<p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mar=
k_debug/dont_touch) which could create extra logic on its net [/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Syn=
th 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_tou=
ch) which could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/=
data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock=
 pin C has keep related attribute (keep/mark_debug/dont_touch) which could =
create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_=
cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep =
related attribute (keep/mark_debug/dont_touch) which could create extra log=
ic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.=
sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribut=
e (keep/mark_debug/dont_touch) which could create extra logic on its net [/=
tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WA=
RNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_deb=
ug/dont_touch) which could create extra logic on its net [/tools/Xilinx/Viv=
ado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-=
5396] Clock pin C has keep related attribute (keep/mark_debug/dont_touch) w=
hich could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/=
ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin =
C has keep related attribute (keep/mark_debug/dont_touch) which could creat=
e extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/h=
dl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep relat=
ed attribute (keep/mark_debug/dont_touch) which could create extra logic on=
 its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:59=
2]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (ke=
ep/mark_debug/dont_touch) which could create extra logic on its net [/tools=
/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING=
: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/do=
nt_touch) which could create extra logic on its net [/tools/Xilinx/Vivado/2=
021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396]=
 Clock pin C has keep related attribute (keep/mark_debug/dont_touch) which =
could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xp=
m/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has=
 keep related attribute (keep/mark_debug/dont_touch) which could create ext=
ra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xp=
m_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related at=
tribute (keep/mark_debug/dont_touch) which could create extra logic on its =
net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p=
><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/ma=
rk_debug/dont_touch) which could create extra logic on its net [/tools/Xili=
nx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Sy=
nth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_to=
uch) which could create extra logic on its net [/tools/Xilinx/Vivado/2021.1=
/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Cloc=
k pin C has keep related attribute (keep/mark_debug/dont_touch) which could=
 create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm=
_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep=
 related attribute (keep/mark_debug/dont_touch) which could create extra lo=
gic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc=
.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribu=
te (keep/mark_debug/dont_touch) which could create extra logic on its net [=
/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>W=
ARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_de=
bug/dont_touch) which could create extra logic on its net [/tools/Xilinx/Vi=
vado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8=
-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_touch) =
which could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data=
/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin=
 C has keep related attribute (keep/mark_debug/dont_touch) which could crea=
te extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/=
hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep rela=
ted attribute (keep/mark_debug/dont_touch) which could create extra logic o=
n its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:5=
92]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (k=
eep/mark_debug/dont_touch) which could create extra logic on its net [/tool=
s/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNIN=
G: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/d=
ont_touch) which could create extra logic on its net [/tools/Xilinx/Vivado/=
2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396=
] Clock pin C has keep related attribute (keep/mark_debug/dont_touch) which=
 could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/x=
pm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C ha=
s keep related attribute (keep/mark_debug/dont_touch) which could create ex=
tra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/x=
pm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related a=
ttribute (keep/mark_debug/dont_touch) which could create extra logic on its=
 net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</=
p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/m=
ark_debug/dont_touch) which could create extra logic on its net [/home/grcu=
srp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/=
axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:6=
00]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (k=
eep/mark_debug/dont_touch) which could create extra logic on its net [/home=
/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_12=
8_bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rf=
s.v:600]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribu=
te (keep/mark_debug/dont_touch) which could create extra logic on its net [=
/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:583]</p><p>W=
ARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_de=
bug/dont_touch) which could create extra logic on its net [/tools/Xilinx/Vi=
vado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING: [Synth 8=
-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_touch) =
which could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data=
/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING: [Synth 8-5396] Clock pin=
 C has keep related attribute (keep/mark_debug/dont_touch) which could crea=
te extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/=
hdl/xpm_cdc.sv:221]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep rela=
ted attribute (keep/mark_debug/dont_touch) which could create extra logic o=
n its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:5=
88]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (k=
eep/mark_debug/dont_touch) which could create extra logic on its net [/tool=
s/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:588]</p><p>WARNIN=
G: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/d=
ont_touch) which could create extra logic on its net [/tools/Xilinx/Vivado/=
2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:588]</p><p>WARNING: [Synth 8-5396=
] Clock pin C has keep related attribute (keep/mark_debug/dont_touch) which=
 could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/x=
pm/xpm_cdc/hdl/xpm_cdc.sv:588]</p><p>WARNING: [Synth 8-5396] Clock pin C ha=
s keep related attribute (keep/mark_debug/dont_touch) which could create ex=
tra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/x=
pm_cdc.sv:588]</p><p>[00:06:54] Current task: Synthesis +++ Current Phase: =
Renaming Generated Instances</p><p>[00:07:02] Current task: Synthesis +++ C=
urrent Phase: Rebuilding User Hierarchy</p><p>[00:07:06] Current task: Synt=
hesis +++ Current Phase: Renaming Generated Ports</p><p>[00:07:06] Current =
task: Synthesis +++ Current Phase: Handling Custom Attributes</p><p>[00:07:=
07] Current task: Synthesis +++ Current Phase: Renaming Generated Nets</p><=
p>[00:07:11] Current task: Synthesis +++ Current Phase: Writing Synthesis R=
eport</p><p>[00:07:11] Current task: Synthesis +++ Current Phase: Finished<=
/p><p>[00:07:11] Translating Synthesized Netlist</p><p>CRITICAL WARNING: [D=
esignutils 20-1280] Could not find module 'axi_hb31'. The XDC file /home/gr=
cusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_hb31/constraints=
/fir_compiler_v7_2.xdc will not be read for any cell of this module.</p><p>=
CRITICAL WARNING: [Designutils 20-1280] Could not find module 'axi_hb47'. T=
he XDC file /home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/=
axi_hb47/constraints/fir_compiler_v7_2.xdc will not be read for any cell of=
 this module.</p><p>WARNING: [Vivado_Tcl 4-919] Waiver ID 'CDC-1' -from lis=
t should not be empty. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z=
020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_axi_dma_eth_internal_0/e31x=
_ps_bd_axi_dma_eth_internal_0.xdc:61]</p><p>CRITICAL WARNING: [Netlist 29-1=
60] Cannot set property 'iostandard', because the property does not exist f=
or objects of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/x=
c7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e=
31x_ps_bd_processing_system7_0_0.xdc:405]</p><p>CRITICAL WARNING: [Netlist =
29-160] Cannot set property 'PACKAGE_PIN', because the property does not ex=
ist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build=
-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_=
0_0/e31x_ps_bd_processing_system7_0_0.xdc:406]</p><p>CRITICAL WARNING: [Net=
list 29-160] Cannot set property 'slew', because the property does not exis=
t for objects of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-i=
p/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_=
0/e31x_ps_bd_processing_system7_0_0.xdc:407]</p><p>CRITICAL WARNING: [Netli=
st 29-160] Cannot set property 'PIO_DIRECTION', because the property does n=
ot exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/=
build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_sys=
tem7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:408]</p><p>CRITICAL WARNING:=
 [Netlist 29-160] Cannot set property 'iostandard', because the property do=
es not exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3/top/e=
31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing=
_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:417]</p><p>CRITICAL WARN=
ING: [Netlist 29-160] Cannot set property 'PACKAGE_PIN', because the proper=
ty does not exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3/=
top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_proce=
ssing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:418]</p><p>CRITICAL=
 WARNING: [Netlist 29-160] Cannot set property 'slew', because the property=
 does not exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_process=
ing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:419]</p><p>CRITICAL W=
ARNING: [Netlist 29-160] Cannot set property 'PIO_DIRECTION', because the p=
roperty does not exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/u=
srp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_=
processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:420]</p><p>WAR=
NING: [Vivado 12-4702] slew is not a supported property on input port(s). S=
etting is ignored. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020c=
lg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e31x_ps_=
bd_processing_system7_0_0.xdc:691]</p><p>WARNING: [Vivado 12-4702] slew is =
not a supported property on input port(s). Setting is ignored. [/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/i=
p/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:6=
94]</p><p>WARNING: [Vivado 12-4702] slew is not a supported property on inp=
ut port(s). Setting is ignored. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/buil=
d-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7=
_0_0/e31x_ps_bd_processing_system7_0_0.xdc:697]</p><p>CRITICAL WARNING: [Co=
nstraints 18-1055] Clock 'bus_clk' completely overrides clock 'clk_fpga_0',=
 which is referenced by one or more other constraints. Any constraints that=
 refer to the overridden clock will be ignored.</p><p>CRITICAL WARNING: [Co=
nstraints 18-1055] Clock 'clk40' completely overrides clock 'clk_fpga_1', w=
hich is referenced by one or more other constraints. Any constraints that r=
efer to the overridden clock will be ignored.</p><p>WARNING: [Vivado 12-248=
9] -input_jitter contains time 1.628100 which will be rounded to 1.628 to e=
nsure it is an integer multiple of 1 picosecond [/home/grcusrp/uhd/fpga/usr=
p3/top/e31x/e31x_timing.xdc:47]</p><p>WARNING: [Vivado 12-830] No fanout ob=
jects found for 'all_fanout -from [get_ports -scoped_to_current_instance m_=
axi_aclk] -flat -endpoints_only -only_cells'. [/home/grcusrp/uhd/fpga/usrp3=
/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_auto=
_cc_4/e31x_ps_bd_auto_cc_4_clocks.xdc:17]</p><p>WARNING: [Vivado_Tcl 4-921]=
 Waiver ID 'CDC-10' -to list should not be empty. [/home/grcusrp/uhd/fpga/u=
srp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_=
auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:7]</p><p>WARNING: [Vivado_Tcl 4-9=
21] Waiver ID 'CDC-11' -to list should not be empty. [/home/grcusrp/uhd/fpg=
a/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_=
bd_auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:10]</p><p>WARNING: [Vivado_Tcl=
 4-921] Waiver ID 'CDC-15' -to list should not be empty. [/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x=
_ps_bd_auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:13]</p><p>WARNING: [Vivado=
_Tcl 4-939] Waiver ID 'LUTAR-1' object list should not be empty (perhaps an=
 invalid wildcard was used or only unsupported objects). [/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x=
_ps_bd_auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:17]</p><p>WARNING: [Vivado=
_Tcl 4-921] Waiver ID 'CDC-10' -to list should not be empty. [/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/=
e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:7]</p><p>WARNING: [Viv=
ado_Tcl 4-921] Waiver ID 'CDC-11' -to list should not be empty. [/home/grcu=
srp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/=
ip/e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:10]</p><p>WARNING: =
[Vivado_Tcl 4-921] Waiver ID 'CDC-15' -to list should not be empty. [/home/=
grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps=
_bd/ip/e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:13]</p><p>WARNI=
NG: [Vivado_Tcl 4-939] Waiver ID 'LUTAR-1' object list should not be empty =
(perhaps an invalid wildcard was used or only unsupported objects). [/home/=
grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps=
_bd/ip/e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:17]</p><p>WARNI=
NG: [Vivado_Tcl 4-921] Waiver ID 'CDC-10' -to list should not be empty. [/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31=
x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clocks.xdc:7]</p><p>WA=
RNING: [Vivado_Tcl 4-921] Waiver ID 'CDC-11' -to list should not be empty. =
[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/=
e31x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clocks.xdc:10]</p><=
p>WARNING: [Vivado_Tcl 4-921] Waiver ID 'CDC-15' -to list should not be emp=
ty. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps=
_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clocks.xdc:13]<=
/p><p>WARNING: [Vivado_Tcl 4-939] Waiver ID 'LUTAR-1' object list should no=
t be empty (perhaps an invalid wildcard was used or only unsupported object=
s). [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps=
_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clocks.xdc:17]<=
/p><p>WARNING: [Vivado_Tcl 4-921] Waiver ID 'CDC-10' -to list should not be=
 empty. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31=
x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto_cc_3_clocks.xdc:=
7]</p><p>WARNING: [Vivado_Tcl 4-921] Waiver ID 'CDC-11' -to list should not=
 be empty. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/=
e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto_cc_3_clocks.x=
dc:10]</p><p>WARNING: [Vivado_Tcl 4-921] Waiver ID 'CDC-15' -to list should=
 not be empty. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg48=
4-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto_cc_3_cloc=
ks.xdc:13]</p><p>WARNING: [Vivado_Tcl 4-939] Waiver ID 'LUTAR-1' object lis=
t should not be empty (perhaps an invalid wildcard was used or only unsuppo=
rted objects). [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg48=
4-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto_cc_3_cloc=
ks.xdc:17]</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source and destinati=
on clocks are the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source =
and destination clocks are the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000=
] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_G=
RAY: TCL-1000] The source and destination clocks are the same.</p><p>WARNIN=
G: [XPM_CDC_GRAY: TCL-1000] The source and destination clocks are the same.=
</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source and destination clocks =
are the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source and destin=
ation clocks are the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The sour=
ce and destination clocks are the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1=
000] The source and destination clocks are the same.</p><p>WARNING: [XPM_CD=
C_GRAY: TCL-1000] The source and destination clocks are the same.</p><p>WAR=
NING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clocks are t=
he same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destin=
ation clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The=
 source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSH=
AKE: TCL-1000] The source and destination clocks are the same.</p><p>WARNIN=
G: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clocks are the =
same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destinati=
on clocks are the same.</p><p>WARNING: [Vivado_Tcl 4-919] Waiver ID 'CDC-15=
' -from list should not be empty. [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/=
xpm_cdc/tcl/xpm_cdc_handshake.tcl:30]</p><p>WARNING: [XPM_CDC_HANDSHAKE: TC=
L-1000] The source and destination clocks are the same.</p><p>WARNING: [XPM=
_CDC_HANDSHAKE: TCL-1000] The source and destination clocks are the same.</=
p><p>WARNING: [Vivado_Tcl 4-919] Waiver ID 'CDC-15' -from list should not b=
e empty. [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_hands=
hake.tcl:30]</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and de=
stination clocks are the same.</p><p>WARNING: [Vivado_Tcl 4-919] Waiver ID =
'CDC-15' -from list should not be empty. [/tools/Xilinx/Vivado/2021.1/data/=
ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl:30]</p><p>WARNING: [XPM_CDC_HANDSH=
AKE: TCL-1000] The source and destination clocks are the same.</p><p>WARNIN=
G: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clocks are the =
same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destinati=
on clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The so=
urce and destination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE=
: TCL-1000] The source and destination clocks are the same.</p><p>WARNING: =
[XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clocks are the sam=
e.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination =
clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The sourc=
e and destination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: T=
CL-1000] The source and destination clocks are the same.</p><p>WARNING: [XP=
M_CDC_HANDSHAKE: TCL-1000] The source and destination clocks are the same.<=
/p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clo=
cks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and =
destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] =
The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_SIN=
GLE: TCL-1000] The source and destination clocks are the same.</p><p>WARNIN=
G: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_r=
eg[0] has IOB constraint set, However, the instance does not seem to have v=
alid I/O connection to be placed into I/O. The constraint on the instance w=
ill be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gp=
io_atr_db_inst/gpio_in_iob_reg[10] has IOB constraint set, However, the ins=
tance does not seem to have valid I/O connection to be placed into I/O. The=
 constraint on the instance will be ignored.</p><p>WARNING: [Constraints 18=
-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[11] has IOB con=
straint set, However, the instance does not seem to have valid I/O connecti=
on to be placed into I/O. The constraint on the instance will be ignored.</=
p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gp=
io_in_iob_reg[12] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance g=
enblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[13] has IOB constraint set, Howe=
ver, the instance does not seem to have valid I/O connection to be placed i=
nto I/O. The constraint on the instance will be ignored.</p><p>WARNING: [Co=
nstraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[14]=
 has IOB constraint set, However, the instance does not seem to have valid =
I/O connection to be placed into I/O. The constraint on the instance will b=
e ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_at=
r_db_inst/gpio_in_iob_reg[15] has IOB constraint set, However, the instance=
 does not seem to have valid I/O connection to be placed into I/O. The cons=
traint on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572=
] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[16] has IOB constrai=
nt set, However, the instance does not seem to have valid I/O connection to=
 be placed into I/O. The constraint on the instance will be ignored.</p><p>=
WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in=
_iob_reg[17] has IOB constraint set, However, the instance does not seem to=
 have valid I/O connection to be placed into I/O. The constraint on the ins=
tance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk=
2[0].gpio_atr_db_inst/gpio_in_iob_reg[18] has IOB constraint set, However, =
the instance does not seem to have valid I/O connection to be placed into I=
/O. The constraint on the instance will be ignored.</p><p>WARNING: [Constra=
ints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[19] has =
IOB constraint set, However, the instance does not seem to have valid I/O c=
onnection to be placed into I/O. The constraint on the instance will be ign=
ored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_=
inst/gpio_in_iob_reg[1] has IOB constraint set, However, the instance does =
not seem to have valid I/O connection to be placed into I/O. The constraint=
 on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Inst=
ance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[20] has IOB constraint set=
, However, the instance does not seem to have valid I/O connection to be pl=
aced into I/O. The constraint on the instance will be ignored.</p><p>WARNIN=
G: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_r=
eg[21] has IOB constraint set, However, the instance does not seem to have =
valid I/O connection to be placed into I/O. The constraint on the instance =
will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].g=
pio_atr_db_inst/gpio_in_iob_reg[22] has IOB constraint set, However, the in=
stance does not seem to have valid I/O connection to be placed into I/O. Th=
e constraint on the instance will be ignored.</p><p>WARNING: [Constraints 1=
8-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[23] has IOB co=
nstraint set, However, the instance does not seem to have valid I/O connect=
ion to be placed into I/O. The constraint on the instance will be ignored.<=
/p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/g=
pio_in_iob_reg[24] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance =
genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[25] has IOB constraint set, How=
ever, the instance does not seem to have valid I/O connection to be placed =
into I/O. The constraint on the instance will be ignored.</p><p>WARNING: [C=
onstraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[26=
] has IOB constraint set, However, the instance does not seem to have valid=
 I/O connection to be placed into I/O. The constraint on the instance will =
be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_a=
tr_db_inst/gpio_in_iob_reg[27] has IOB constraint set, However, the instanc=
e does not seem to have valid I/O connection to be placed into I/O. The con=
straint on the instance will be ignored.</p><p>WARNING: [Constraints 18-557=
2] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[28] has IOB constra=
int set, However, the instance does not seem to have valid I/O connection t=
o be placed into I/O. The constraint on the instance will be ignored.</p><p=
>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_i=
n_iob_reg[29] has IOB constraint set, However, the instance does not seem t=
o have valid I/O connection to be placed into I/O. The constraint on the in=
stance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genbl=
k2[0].gpio_atr_db_inst/gpio_in_iob_reg[2] has IOB constraint set, However, =
the instance does not seem to have valid I/O connection to be placed into I=
/O. The constraint on the instance will be ignored.</p><p>WARNING: [Constra=
ints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[30] has =
IOB constraint set, However, the instance does not seem to have valid I/O c=
onnection to be placed into I/O. The constraint on the instance will be ign=
ored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_=
inst/gpio_in_iob_reg[31] has IOB constraint set, However, the instance does=
 not seem to have valid I/O connection to be placed into I/O. The constrain=
t on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Ins=
tance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[3] has IOB constraint set=
, However, the instance does not seem to have valid I/O connection to be pl=
aced into I/O. The constraint on the instance will be ignored.</p><p>WARNIN=
G: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_r=
eg[4] has IOB constraint set, However, the instance does not seem to have v=
alid I/O connection to be placed into I/O. The constraint on the instance w=
ill be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gp=
io_atr_db_inst/gpio_in_iob_reg[5] has IOB constraint set, However, the inst=
ance does not seem to have valid I/O connection to be placed into I/O. The =
constraint on the instance will be ignored.</p><p>WARNING: [Constraints 18-=
5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[6] has IOB const=
raint set, However, the instance does not seem to have valid I/O connection=
 to be placed into I/O. The constraint on the instance will be ignored.</p>=
<p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio=
_in_iob_reg[7] has IOB constraint set, However, the instance does not seem =
to have valid I/O connection to be placed into I/O. The constraint on the i=
nstance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genb=
lk2[0].gpio_atr_db_inst/gpio_in_iob_reg[8] has IOB constraint set, However,=
 the instance does not seem to have valid I/O connection to be placed into =
I/O. The constraint on the instance will be ignored.</p><p>WARNING: [Constr=
aints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[9] has =
IOB constraint set, However, the instance does not seem to have valid I/O c=
onnection to be placed into I/O. The constraint on the instance will be ign=
ored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_=
inst/gpio_out_iob_reg[0] has IOB constraint set, However, the instance does=
 not seem to have valid I/O connection to be placed into I/O. The constrain=
t on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Ins=
tance genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[16] has IOB constraint s=
et, However, the instance does not seem to have valid I/O connection to be =
placed into I/O. The constraint on the instance will be ignored.</p><p>WARN=
ING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_out_io=
b_reg[17] has IOB constraint set, However, the instance does not seem to ha=
ve valid I/O connection to be placed into I/O. The constraint on the instan=
ce will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0=
].gpio_atr_db_inst/gpio_out_iob_reg[18] has IOB constraint set, However, th=
e instance does not seem to have valid I/O connection to be placed into I/O=
. The constraint on the instance will be ignored.</p><p>WARNING: [Constrain=
ts 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[19] has I=
OB constraint set, However, the instance does not seem to have valid I/O co=
nnection to be placed into I/O. The constraint on the instance will be igno=
red.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_i=
nst/gpio_out_iob_reg[1] has IOB constraint set, However, the instance does =
not seem to have valid I/O connection to be placed into I/O. The constraint=
 on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Inst=
ance genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[20] has IOB constraint se=
t, However, the instance does not seem to have valid I/O connection to be p=
laced into I/O. The constraint on the instance will be ignored.</p><p>WARNI=
NG: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_out_iob=
_reg[21] has IOB constraint set, However, the instance does not seem to hav=
e valid I/O connection to be placed into I/O. The constraint on the instanc=
e will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0]=
.gpio_atr_db_inst/gpio_out_iob_reg[22] has IOB constraint set, However, the=
 instance does not seem to have valid I/O connection to be placed into I/O.=
 The constraint on the instance will be ignored.</p><p>WARNING: [Constraint=
s 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[23] has IO=
B constraint set, However, the instance does not seem to have valid I/O con=
nection to be placed into I/O. The constraint on the instance will be ignor=
ed.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_in=
st/gpio_out_iob_reg[24] has IOB constraint set, However, the instance does =
not seem to have valid I/O connection to be placed into I/O. The constraint=
 on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Inst=
ance genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[25] has IOB constraint se=
t, However, the instance does not seem to have valid I/O connection to be p=
laced into I/O. The constraint on the instance will be ignored.</p><p>WARNI=
NG: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_out_iob=
_reg[26] has IOB constraint set, However, the instance does not seem to hav=
e valid I/O connection to be placed into I/O. The constraint on the instanc=
e will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0]=
.gpio_atr_db_inst/gpio_out_iob_reg[27] has IOB constraint set, However, the=
 instance does not seem to have valid I/O connection to be placed into I/O.=
 The constraint on the instance will be ignored.</p><p>WARNING: [Constraint=
s 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[28] has IO=
B constraint set, However, the instance does not seem to have valid I/O con=
nection to be placed into I/O. The constraint on the instance will be ignor=
ed.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_in=
st/gpio_out_iob_reg[29] has IOB constraint set, However, the instance does =
not seem to have valid I/O connection to be placed into I/O. The constraint=
 on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Inst=
ance genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[2] has IOB constraint set=
, However, the instance does not seem to have valid I/O connection to be pl=
aced into I/O. The constraint on the instance will be ignored.</p><p>WARNIN=
G: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_out_iob_=
reg[30] has IOB constraint set, However, the instance does not seem to have=
 valid I/O connection to be placed into I/O. The constraint on the instance=
 will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].=
gpio_atr_db_inst/gpio_out_iob_reg[31] has IOB constraint set, However, the =
instance does not seem to have valid I/O connection to be placed into I/O. =
The constraint on the instance will be ignored.</p><p>WARNING: [Constraints=
 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[0] has IOB c=
onstraint set, However, the instance does not seem to have valid I/O connec=
tion to be placed into I/O. The constraint on the instance will be ignored.=
</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/=
gpio_in_iob_reg[10] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance=
 genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[11] has IOB constraint set, Ho=
wever, the instance does not seem to have valid I/O connection to be placed=
 into I/O. The constraint on the instance will be ignored.</p><p>WARNING: [=
Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[1=
2] has IOB constraint set, However, the instance does not seem to have vali=
d I/O connection to be placed into I/O. The constraint on the instance will=
 be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_=
atr_db_inst/gpio_in_iob_reg[13] has IOB constraint set, However, the instan=
ce does not seem to have valid I/O connection to be placed into I/O. The co=
nstraint on the instance will be ignored.</p><p>WARNING: [Constraints 18-55=
72] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[14] has IOB constr=
aint set, However, the instance does not seem to have valid I/O connection =
to be placed into I/O. The constraint on the instance will be ignored.</p><=
p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_=
in_iob_reg[15] has IOB constraint set, However, the instance does not seem =
to have valid I/O connection to be placed into I/O. The constraint on the i=
nstance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genb=
lk2[1].gpio_atr_db_inst/gpio_in_iob_reg[16] has IOB constraint set, However=
, the instance does not seem to have valid I/O connection to be placed into=
 I/O. The constraint on the instance will be ignored.</p><p>WARNING: [Const=
raints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[17] ha=
s IOB constraint set, However, the instance does not seem to have valid I/O=
 connection to be placed into I/O. The constraint on the instance will be i=
gnored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_d=
b_inst/gpio_in_iob_reg[18] has IOB constraint set, However, the instance do=
es not seem to have valid I/O connection to be placed into I/O. The constra=
int on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] I=
nstance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[19] has IOB constraint =
set, However, the instance does not seem to have valid I/O connection to be=
 placed into I/O. The constraint on the instance will be ignored.</p><p>WAR=
NING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_io=
b_reg[1] has IOB constraint set, However, the instance does not seem to hav=
e valid I/O connection to be placed into I/O. The constraint on the instanc=
e will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1]=
.gpio_atr_db_inst/gpio_in_iob_reg[20] has IOB constraint set, However, the =
instance does not seem to have valid I/O connection to be placed into I/O. =
The constraint on the instance will be ignored.</p><p>WARNING: [Constraints=
 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[21] has IOB =
constraint set, However, the instance does not seem to have valid I/O conne=
ction to be placed into I/O. The constraint on the instance will be ignored=
.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst=
/gpio_in_iob_reg[22] has IOB constraint set, However, the instance does not=
 seem to have valid I/O connection to be placed into I/O. The constraint on=
 the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instanc=
e genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[23] has IOB constraint set, H=
owever, the instance does not seem to have valid I/O connection to be place=
d into I/O. The constraint on the instance will be ignored.</p><p>WARNING: =
[Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[=
24] has IOB constraint set, However, the instance does not seem to have val=
id I/O connection to be placed into I/O. The constraint on the instance wil=
l be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio=
_atr_db_inst/gpio_in_iob_reg[25] has IOB constraint set, However, the insta=
nce does not seem to have valid I/O connection to be placed into I/O. The c=
onstraint on the instance will be ignored.</p><p>WARNING: [Constraints 18-5=
572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[26] has IOB const=
raint set, However, the instance does not seem to have valid I/O connection=
 to be placed into I/O. The constraint on the instance will be ignored.</p>=
<p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio=
_in_iob_reg[27] has IOB constraint set, However, the instance does not seem=
 to have valid I/O connection to be placed into I/O. The constraint on the =
instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance gen=
blk2[1].gpio_atr_db_inst/gpio_in_iob_reg[28] has IOB constraint set, Howeve=
r, the instance does not seem to have valid I/O connection to be placed int=
o I/O. The constraint on the instance will be ignored.</p><p>WARNING: [Cons=
traints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[29] h=
as IOB constraint set, However, the instance does not seem to have valid I/=
O connection to be placed into I/O. The constraint on the instance will be =
ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_=
db_inst/gpio_in_iob_reg[2] has IOB constraint set, However, the instance do=
es not seem to have valid I/O connection to be placed into I/O. The constra=
int on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] I=
nstance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[30] has IOB constraint =
set, However, the instance does not seem to have valid I/O connection to be=
 placed into I/O. The constraint on the instance will be ignored.</p><p>WAR=
NING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_io=
b_reg[31] has IOB constraint set, However, the instance does not seem to ha=
ve valid I/O connection to be placed into I/O. The constraint on the instan=
ce will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1=
].gpio_atr_db_inst/gpio_in_iob_reg[3] has IOB constraint set, However, the =
instance does not seem to have valid I/O connection to be placed into I/O. =
The constraint on the instance will be ignored.</p><p>WARNING: [Constraints=
 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[4] has IOB c=
onstraint set, However, the instance does not seem to have valid I/O connec=
tion to be placed into I/O. The constraint on the instance will be ignored.=
</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/=
gpio_in_iob_reg[5] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance =
genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[6] has IOB constraint set, Howe=
ver, the instance does not seem to have valid I/O connection to be placed i=
nto I/O. The constraint on the instance will be ignored.</p><p>WARNING: [Co=
nstraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[7] =
has IOB constraint set, However, the instance does not seem to have valid I=
/O connection to be placed into I/O. The constraint on the instance will be=
 ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr=
_db_inst/gpio_in_iob_reg[8] has IOB constraint set, However, the instance d=
oes not seem to have valid I/O connection to be placed into I/O. The constr=
aint on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] =
Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[9] has IOB constraint =
set, However, the instance does not seem to have valid I/O connection to be=
 placed into I/O. The constraint on the instance will be ignored.</p><p>WAR=
NING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_out_i=
ob_reg[0] has IOB constraint set, However, the instance does not seem to ha=
ve valid I/O connection to be placed into I/O. The constraint on the instan=
ce will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1=
].gpio_atr_db_inst/gpio_out_iob_reg[16] has IOB constraint set, However, th=
e instance does not seem to have valid I/O connection to be placed into I/O=
. The constraint on the instance will be ignored.</p><p>WARNING: [Constrain=
ts 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[17] has I=
OB constraint set, However, the instance does not seem to have valid I/O co=
nnection to be placed into I/O. The constraint on the instance will be igno=
red.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_i=
nst/gpio_out_iob_reg[18] has IOB constraint set, However, the instance does=
 not seem to have valid I/O connection to be placed into I/O. The constrain=
t on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Ins=
tance genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[19] has IOB constraint s=
et, However, the instance does not seem to have valid I/O connection to be =
placed into I/O. The constraint on the instance will be ignored.</p><p>WARN=
ING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_out_io=
b_reg[1] has IOB constraint set, However, the instance does not seem to hav=
e valid I/O connection to be placed into I/O. The constraint on the instanc=
e will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1]=
.gpio_atr_db_inst/gpio_out_iob_reg[20] has IOB constraint set, However, the=
 instance does not seem to have valid I/O connection to be placed into I/O.=
 The constraint on the instance will be ignored.</p><p>WARNING: [Constraint=
s 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[21] has IO=
B constraint set, However, the instance does not seem to have valid I/O con=
nection to be placed into I/O. The constraint on the instance will be ignor=
ed.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_in=
st/gpio_out_iob_reg[22] has IOB constraint set, However, the instance does =
not seem to have valid I/O connection to be placed into I/O. The constraint=
 on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Inst=
ance genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[23] has IOB constraint se=
t, However, the instance does not seem to have valid I/O connection to be p=
laced into I/O. The constraint on the instance will be ignored.</p><p>WARNI=
NG: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_out_iob=
_reg[24] has IOB constraint set, However, the instance does not seem to hav=
e valid I/O connection to be placed into I/O. The constraint on the instanc=
e will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1]=
.gpio_atr_db_inst/gpio_out_iob_reg[25] has IOB constraint set, However, the=
 instance does not seem to have valid I/O connection to be placed into I/O.=
 The constraint on the instance will be ignored.</p><p>WARNING: [Constraint=
s 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[26] has IO=
B constraint set, However, the instance does not seem to have valid I/O con=
nection to be placed into I/O. The constraint on the instance will be ignor=
ed.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_in=
st/gpio_out_iob_reg[27] has IOB constraint set, However, the instance does =
not seem to have valid I/O connection to be placed into I/O. The constraint=
 on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Inst=
ance genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[28] has IOB constraint se=
t, However, the instance does not seem to have valid I/O connection to be p=
laced into I/O. The constraint on the instance will be ignored.</p><p>WARNI=
NG: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_out_iob=
_reg[29] has IOB constraint set, However, the instance does not seem to hav=
e valid I/O connection to be placed into I/O. The constraint on the instanc=
e will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1]=
.gpio_atr_db_inst/gpio_out_iob_reg[2] has IOB constraint set, However, the =
instance does not seem to have valid I/O connection to be placed into I/O. =
The constraint on the instance will be ignored.</p><p>[00:08:33] Current ta=
sk: Translating Synthesized Netlist +++ Current Phase: Starting</p><p>[00:0=
8:33] Current task: Translating Synthesized Netlist +++ Current Phase: Fini=
shed</p><p>[00:08:33] Executing Tcl: report_drc -ruledeck methodology_check=
s -file /home/grcusrp/uhd/fpga/usrp3/top/e31x/build-E310_SG3/methodology.rp=
t</p><p>[00:08:33] Starting DRC Command</p><p>[00:09:16] Current task: DRC =
+++ Current Phase: Starting</p><p>[00:09:17] Current task: DRC +++ Current =
Phase: Finished</p><p>[00:09:17] Executing Tcl: opt_design -directive Defau=
lt</p><p>[00:09:17] Starting Logic Optimization Command</p><p>[00:09:17] Cu=
rrent task: Logic Optimization +++ Current Phase: Starting</p><p>[00:09:17]=
 Current task: Logic Optimization +++ Current Phase: Finished</p><p>[00:09:=
17] Starting DRC Task</p><p>[00:09:18] Current task: DRC +++ Current Phase:=
 Starting</p><p>[00:09:18] Current task: DRC +++ Current Phase: Finished</p=
><p>[00:09:18] Starting Cache Timing Information Task</p><p>[00:09:26] Curr=
ent task: Cache Timing Information +++ Current Phase: Starting</p><p>[00:09=
:26] Current task: Cache Timing Information +++ Current Phase: Finished</p>=
<p>[00:09:26] Starting Logic Optimization Task</p><p>[00:09:31] Current tas=
k: Logic Optimization +++ Current Phase: Starting</p><p>[00:09:33] Current =
task: Logic Optimization +++ Current Phase: 1 Retarget</p><p>[00:09:34] Cur=
rent task: Logic Optimization +++ Current Phase: 2 Constant propagation</p>=
<p>[00:09:40] Current task: Logic Optimization +++ Current Phase: 3 Sweep</=
p><p>[00:09:42] Current task: Logic Optimization +++ Current Phase: 4 BUFG =
optimization</p><p>[00:09:42] Current task: Logic Optimization +++ Current =
Phase: 5 Shift Register Optimization</p><p>[00:09:44] Current task: Logic O=
ptimization +++ Current Phase: 6 Post Processing Netlist</p><p>[00:09:45] C=
urrent task: Logic Optimization +++ Current Phase: Finished</p><p>[00:09:45=
] Starting Connectivity Check Task</p><p>[00:09:45] Current task: Connectiv=
ity Check +++ Current Phase: Starting</p><p>[00:09:46] Current task: Connec=
tivity Check +++ Current Phase: Finished</p><p>[00:09:46] Starting Power Op=
timization Task</p><p>[00:10:09] Current task: Power Optimization +++ Curre=
nt Phase: Starting</p><p>[00:10:10] Current task: Power Optimization +++ Cu=
rrent Phase: Finished</p><p>[00:10:10] Starting PowerOpt Patch Enables Task=
</p><p>[00:10:10] Current task: PowerOpt Patch Enables +++ Current Phase: S=
tarting</p><p>[00:10:11] Current task: PowerOpt Patch Enables +++ Current P=
hase: Finished</p><p>[00:10:11] Starting Final Cleanup Task</p><p>[00:10:12=
] Current task: Final Cleanup +++ Current Phase: Starting</p><p>[00:10:13] =
Current task: Final Cleanup +++ Current Phase: Finished</p><p>[00:10:13] St=
arting Logic Optimization Task</p><p>[00:10:24] Current task: Logic Optimiz=
ation +++ Current Phase: Starting</p><p>[00:10:24] Current task: Logic Opti=
mization +++ Current Phase: Finished</p><p>[00:10:24] Starting Netlist Obfu=
scation Task</p><p>[00:10:24] Current task: Netlist Obfuscation +++ Current=
 Phase: Starting</p><p>[00:10:24] Current task: Netlist Obfuscation +++ Cur=
rent Phase: Finished</p><p>[00:10:24] Executing Tcl: place_design -directiv=
e Default</p><p>[00:10:24] Starting Placer Command</p><p>[00:10:42] Current=
 task: Placer +++ Current Phase: Starting</p><p>WARNING: [DRC CHECK-3] Repo=
rt rule limit reached: REQP-1839 rule limit reached: 20 violations have bee=
n found.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control check: The RAM=
B36E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_in=
put_in[0].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram=
/ram/impl/ram_reg_0 has an input control pin e31x_core_inst/rfnoc_image_cor=
e_i/b_radio0_0/noc_shell_radio_i/gen_input_in[0].chdr_to_axis_data_in_in/ge=
n_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_0/ENBWREN (net: e3=
1x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in[0=
].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/imp=
l/enb0) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_=
radio0_0/noc_shell_radio_i/gen_input_in[0].chdr_to_axis_data_in_in/gen_axis=
_width_conv.payload_width_conv_i/fifo_i/fifo_section[0].impl_srl_i/U0/inst_=
fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_=
reg) that has an active asychronous set or reset. This may cause corruption=
 of the memory contents and/or read values when the set/reset is asserted a=
nd is not analyzed by the default static timing analysis. It is suggested t=
o eliminate the use of a set/reset to registers driving this RAMB pin or el=
se use a synchronous reset in which the assertion of the reset is timed by =
default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control check: The RAM=
B36E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_in=
put_in[0].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram=
/ram/impl/ram_reg_1 has an input control pin e31x_core_inst/rfnoc_image_cor=
e_i/b_radio0_0/noc_shell_radio_i/gen_input_in[0].chdr_to_axis_data_in_in/ge=
n_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_1/ENBWREN (net: e3=
1x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in[0=
].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/imp=
l/enb0) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_=
radio0_0/noc_shell_radio_i/gen_input_in[0].chdr_to_axis_data_in_in/gen_axis=
_width_conv.payload_width_conv_i/fifo_i/fifo_section[0].impl_srl_i/U0/inst_=
fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_=
reg) that has an active asychronous set or reset. This may cause corruption=
 of the memory contents and/or read values when the set/reset is asserted a=
nd is not analyzed by the default static timing analysis. It is suggested t=
o eliminate the use of a set/reset to registers driving this RAMB pin or el=
se use a synchronous reset in which the assertion of the reset is timed by =
default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control check: The RAM=
B36E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_in=
put_in[1].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram=
/ram/impl/ram_reg_0 has an input control pin e31x_core_inst/rfnoc_image_cor=
e_i/b_radio0_0/noc_shell_radio_i/gen_input_in[1].chdr_to_axis_data_in_in/ge=
n_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_0/ENBWREN (net: e3=
1x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in[1=
].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/imp=
l/enb0) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_=
radio0_0/noc_shell_radio_i/gen_input_in[1].chdr_to_axis_data_in_in/gen_axis=
_width_conv.payload_width_conv_i/fifo_i/fifo_section[0].impl_srl_i/U0/inst_=
fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_=
reg) that has an active asychronous set or reset. This may cause corruption=
 of the memory contents and/or read values when the set/reset is asserted a=
nd is not analyzed by the default static timing analysis. It is suggested t=
o eliminate the use of a set/reset to registers driving this RAMB pin or el=
se use a synchronous reset in which the assertion of the reset is timed by =
default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control check: The RAM=
B36E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_in=
put_in[1].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram=
/ram/impl/ram_reg_1 has an input control pin e31x_core_inst/rfnoc_image_cor=
e_i/b_radio0_0/noc_shell_radio_i/gen_input_in[1].chdr_to_axis_data_in_in/ge=
n_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_1/ENBWREN (net: e3=
1x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in[1=
].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/imp=
l/enb0) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_=
radio0_0/noc_shell_radio_i/gen_input_in[1].chdr_to_axis_data_in_in/gen_axis=
_width_conv.payload_width_conv_i/fifo_i/fifo_section[0].impl_srl_i/U0/inst_=
fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_=
reg) that has an active asychronous set or reset. This may cause corruption=
 of the memory contents and/or read values when the set/reset is asserted a=
nd is not analyzed by the default static timing analysis. It is suggested t=
o eliminate the use of a set/reset to registers driving this RAMB pin or el=
se use a synchronous reset in which the assertion of the reset is timed by =
default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control check: The RAM=
B36E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_ou=
tput_out[0].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_br=
am/ram/impl/ram_reg_0 has an input control pin e31x_core_inst/rfnoc_image_c=
ore_i/b_radio0_0/noc_shell_radio_i/gen_output_out[0].axis_data_to_chdr_out_=
out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_0/ENARDEN (net=
: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output=
_out[0].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/r=
am/impl/E[0]) which is driven by a register (e31x_core_inst/rfnoc_image_cor=
e_i/b_radio0_0/noc_shell_radio_i/gen_output_out[0].axis_data_to_chdr_out_ou=
t/gen_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section[0].impl_srl_=
i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int=
.rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This =
may cause corruption of the memory contents and/or read values when the set=
/reset is asserted and is not analyzed by the default static timing analysi=
s. It is suggested to eliminate the use of a set/reset to registers driving=
 this RAMB pin or else use a synchronous reset in which the assertion of th=
e reset is timed by default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async co=
ntrol check: The RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_=
shell_radio_i/gen_output_out[0].axis_data_to_chdr_out_out/gen_axis_width_co=
nv.pyld_fifo/fifo_bram/ram/impl/ram_reg_1 has an input control pin e31x_cor=
e_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[0].ax=
is_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/ra=
m_reg_1/ENARDEN (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shel=
l_radio_i/gen_output_out[0].axis_data_to_chdr_out_out/gen_axis_width_conv.p=
yld_fifo/fifo_bram/ram/impl/E[0]) which is driven by a register (e31x_core_=
inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[0].axis=
_data_to_chdr_out_out/gen_axis_width_conv.payload_width_conv_i/fifo_i/fifo_=
section[0].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fif=
o.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous=
 set or reset. This may cause corruption of the memory contents and/or read=
 values when the set/reset is asserted and is not analyzed by the default s=
tatic timing analysis. It is suggested to eliminate the use of a set/reset =
to registers driving this RAMB pin or else use a synchronous reset in which=
 the assertion of the reset is timed by default.</p><p>WARNING: [DRC REQP-1=
839] RAMB36 async control check: The RAMB36E1 e31x_core_inst/rfnoc_image_co=
re_i/b_radio0_0/noc_shell_radio_i/gen_output_out[0].axis_data_to_chdr_out_o=
ut/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_2 has an input =
control pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/=
gen_output_out[0].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/f=
ifo_bram/ram/impl/ram_reg_2/ENARDEN (net: e31x_core_inst/rfnoc_image_core_i=
/b_radio0_0/noc_shell_radio_i/gen_output_out[0].axis_data_to_chdr_out_out/g=
en_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/E[0]) which is driven by a =
register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ge=
n_output_out[0].axis_data_to_chdr_out_out/gen_axis_width_conv.payload_width=
_conv_i/fifo_i/fifo_section[0].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf=
.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has a=
n active asychronous set or reset. This may cause corruption of the memory =
contents and/or read values when the set/reset is asserted and is not analy=
zed by the default static timing analysis. It is suggested to eliminate the=
 use of a set/reset to registers driving this RAMB pin or else use a synchr=
onous reset in which the assertion of the reset is timed by default.</p><p>=
WARNING: [DRC REQP-1839] RAMB36 async control check: The RAMB36E1 e31x_core=
_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[0].axi=
s_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram=
_reg_3 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_radio0_=
0/noc_shell_radio_i/gen_output_out[0].axis_data_to_chdr_out_out/gen_axis_wi=
dth_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_3/ENARDEN (net: e31x_core_ins=
t/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[0].axis_da=
ta_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/E[0]) w=
hich is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/=
noc_shell_radio_i/gen_output_out[0].axis_data_to_chdr_out_out/gen_axis_widt=
h_conv.payload_width_conv_i/fifo_i/fifo_section[0].impl_srl_i/U0/inst_fifo_=
gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fw=
ft_i_reg) that has an active asychronous set or reset. This may cause corru=
ption of the memory contents and/or read values when the set/reset is asser=
ted and is not analyzed by the default static timing analysis. It is sugges=
ted to eliminate the use of a set/reset to registers driving this RAMB pin =
or else use a synchronous reset in which the assertion of the reset is time=
d by default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control check: Th=
e RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/g=
en_output_out[1].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fi=
fo_bram/ram/impl/ram_reg_0 has an input control pin e31x_core_inst/rfnoc_im=
age_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[1].axis_data_to_chdr=
_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_0/ENARDEN=
 (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_o=
utput_out[1].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_b=
ram/ram/impl/E[0]) which is driven by a register (e31x_core_inst/rfnoc_imag=
e_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[1].axis_data_to_chdr_o=
ut_out/gen_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section[0].impl=
_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr=
1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. =
This may cause corruption of the memory contents and/or read values when th=
e set/reset is asserted and is not analyzed by the default static timing an=
alysis. It is suggested to eliminate the use of a set/reset to registers dr=
iving this RAMB pin or else use a synchronous reset in which the assertion =
of the reset is timed by default.</p><p>WARNING: [DRC REQP-1839] RAMB36 asy=
nc control check: The RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0=
/noc_shell_radio_i/gen_output_out[1].axis_data_to_chdr_out_out/gen_axis_wid=
th_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_1 has an input control pin e31=
x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[=
1].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/im=
pl/ram_reg_1/ENARDEN (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc=
_shell_radio_i/gen_output_out[1].axis_data_to_chdr_out_out/gen_axis_width_c=
onv.pyld_fifo/fifo_bram/ram/impl/E[0]) which is driven by a register (e31x_=
core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[1]=
.axis_data_to_chdr_out_out/gen_axis_width_conv.payload_width_conv_i/fifo_i/=
fifo_section[0].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_syn=
c_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychr=
onous set or reset. This may cause corruption of the memory contents and/or=
 read values when the set/reset is asserted and is not analyzed by the defa=
ult static timing analysis. It is suggested to eliminate the use of a set/r=
eset to registers driving this RAMB pin or else use a synchronous reset in =
which the assertion of the reset is timed by default.</p><p>WARNING: [DRC R=
EQP-1839] RAMB36 async control check: The RAMB36E1 e31x_core_inst/rfnoc_ima=
ge_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[1].axis_data_to_chdr_=
out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_2 has an i=
nput control pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_rad=
io_i/gen_output_out[1].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_f=
ifo/fifo_bram/ram/impl/ram_reg_2/ENARDEN (net: e31x_core_inst/rfnoc_image_c=
ore_i/b_radio0_0/noc_shell_radio_i/gen_output_out[1].axis_data_to_chdr_out_=
out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/E[0]) which is driven =
by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio=
_i/gen_output_out[1].axis_data_to_chdr_out_out/gen_axis_width_conv.payload_=
width_conv_i/fifo_i/fifo_section[0].impl_srl_i/U0/inst_fifo_gen/gconvfifo.r=
f/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that =
has an active asychronous set or reset. This may cause corruption of the me=
mory contents and/or read values when the set/reset is asserted and is not =
analyzed by the default static timing analysis. It is suggested to eliminat=
e the use of a set/reset to registers driving this RAMB pin or else use a s=
ynchronous reset in which the assertion of the reset is timed by default.</=
p><p>WARNING: [DRC REQP-1839] RAMB36 async control check: The RAMB36E1 e31x=
_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[1=
].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/imp=
l/ram_reg_3 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_ra=
dio0_0/noc_shell_radio_i/gen_output_out[1].axis_data_to_chdr_out_out/gen_ax=
is_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_3/ENARDEN (net: e31x_cor=
e_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[1].ax=
is_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/E[=
0]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radi=
o0_0/noc_shell_radio_i/gen_output_out[1].axis_data_to_chdr_out_out/gen_axis=
_width_conv.payload_width_conv_i/fifo_i/fifo_section[0].impl_srl_i/U0/inst_=
fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/emp=
ty_fwft_i_reg) that has an active asychronous set or reset. This may cause =
corruption of the memory contents and/or read values when the set/reset is =
asserted and is not analyzed by the default static timing analysis. It is s=
uggested to eliminate the use of a set/reset to registers driving this RAMB=
 pin or else use a synchronous reset in which the assertion of the reset is=
 timed by default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control chec=
k: The RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_replay0_1/gen_replay_bl=
ocks[0].axis_replay_i/play_axi_fifo/fifo_bram/ram/impl/ram_reg has an input=
 control pin e31x_core_inst/rfnoc_image_core_i/b_replay0_1/gen_replay_block=
s[0].axis_replay_i/play_axi_fifo/fifo_bram/ram/impl/ram_reg/ENARDEN (net: e=
31x_core_inst/rfnoc_image_core_i/b_replay0_1/gen_replay_blocks[0].axis_repl=
ay_i/play_axi_fifo/fifo_bram/ram/impl/enb0) which is driven by a register (=
e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output=
_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fif=
o.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.r=
f/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg) that has an active asy=
chronous set or reset. This may cause corruption of the memory contents and=
/or read values when the set/reset is asserted and is not analyzed by the d=
efault static timing analysis. It is suggested to eliminate the use of a se=
t/reset to registers driving this RAMB pin or else use a synchronous reset =
in which the assertion of the reset is timed by default.</p><p>WARNING: [DR=
C REQP-1839] RAMB36 async control check: The RAMB36E1 e31x_core_inst/rfnoc_=
image_core_i/b_replay0_1/gen_replay_blocks[1].axis_replay_i/play_axi_fifo/f=
ifo_bram/ram/impl/ram_reg has an input control pin e31x_core_inst/rfnoc_ima=
ge_core_i/b_replay0_1/gen_replay_blocks[1].axis_replay_i/play_axi_fifo/fifo=
_bram/ram/impl/ram_reg/ENARDEN (net: e31x_core_inst/rfnoc_image_core_i/b_re=
play0_1/gen_replay_blocks[1].axis_replay_i/play_axi_fifo/fifo_bram/ram/impl=
/enb0) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_r=
eplay0_1/noc_shell_replay_i/gen_output_out[1].axis_data_to_chdr_out_out/no_=
gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram=
_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/=
ram_full_i_reg) that has an active asychronous set or reset. This may cause=
 corruption of the memory contents and/or read values when the set/reset is=
 asserted and is not analyzed by the default static timing analysis. It is =
suggested to eliminate the use of a set/reset to registers driving this RAM=
B pin or else use a synchronous reset in which the assertion of the reset i=
s timed by default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control che=
ck: The RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_re=
play_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.g=
en_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/g=
convfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_=
mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/pr=
im_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an =
input control pin e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_r=
eplay_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.=
gen_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/=
gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk=
_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/p=
rim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRAR=
DADDR[10] (net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_rep=
lay_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.ge=
n_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gc=
onvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_m=
em_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/pri=
m_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0[4]) wh=
ich is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/=
noc_shell_replay_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_=
width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/ins=
t_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_=
reg[4]) that has an active asychronous set or reset. This may cause corrupt=
ion of the memory contents and/or read values when the set/reset is asserte=
d and is not analyzed by the default static timing analysis. It is suggeste=
d to eliminate the use of a set/reset to registers driving this RAMB pin or=
 else use a synchronous reset in which the assertion of the reset is timed =
by default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control check: The =
RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/g=
en_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async=
_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo=
.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/=
gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noini=
t.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input co=
ntrol pin e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/=
gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_asyn=
c_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfif=
o.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen=
/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noin=
it.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR[11=
] (net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/ge=
n_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_=
pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.=
rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/g=
nbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit=
.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0[5]) which is d=
riven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shel=
l_replay_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_co=
nv.gen_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_g=
en/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[5]) =
that has an active asychronous set or reset. This may cause corruption of t=
he memory contents and/or read values when the set/reset is asserted and is=
 not analyzed by the default static timing analysis. It is suggested to eli=
minate the use of a set/reset to registers driving this RAMB pin or else us=
e a synchronous reset in which the assertion of the reset is timed by defau=
lt.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control check: The RAMB36E1=
 e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_outpu=
t_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fi=
fo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.=
rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.g=
nativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DE=
VICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pi=
n e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_outp=
ut_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_f=
ifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf=
.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.=
gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/D=
EVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR[12] (net: =
e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output=
_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fif=
o.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.r=
f/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gn=
ativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEV=
ICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0[6]) which is driven by=
 a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay=
_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_a=
sync_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconv=
fifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[6]) that has=
 an active asychronous set or reset. This may cause corruption of the memor=
y contents and/or read values when the set/reset is asserted and is not ana=
lyzed by the default static timing analysis. It is suggested to eliminate t=
he use of a set/reset to registers driving this RAMB pin or else use a sync=
hronous reset in which the assertion of the reset is timed by default.</p><=
p>WARNING: [DRC REQP-1839] RAMB36 async control check: The RAMB36E1 e31x_co=
re_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0]=
.axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_=
fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_=
or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebm=
g.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SE=
RIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin e31x_c=
ore_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0=
].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld=
_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv=
_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativeb=
mg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7S=
ERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR[13] (net: e31x_cor=
e_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0].=
axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_f=
ifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_o=
r_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg=
.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SER=
IES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0[7]) which is driven by a regis=
ter (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_o=
utput_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyl=
d_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/=
grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[7]) that has an acti=
ve asychronous set or reset. This may cause corruption of the memory conten=
ts and/or read values when the set/reset is asserted and is not analyzed by=
 the default static timing analysis. It is suggested to eliminate the use o=
f a set/reset to registers driving this RAMB pin or else use a synchronous =
reset in which the assertion of the reset is timed by default.</p><p>WARNIN=
G: [DRC REQP-1839] RAMB36 async control check: The RAMB36E1 e31x_core_inst/=
rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0].axis_da=
ta_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fif=
o_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_=
fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native=
_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_=
BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin e31x_core_inst=
/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0].axis_d=
ata_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fi=
fo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync=
_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.nativ=
e_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO=
_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR[14] (net: e31x_core_inst/r=
fnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0].axis_dat=
a_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fifo=
_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_f=
ifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_=
blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_B=
MM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0[8]) which is driven by a register (e31=
x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_ou=
t[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.p=
yld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/g=
ntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[8]) that has an active asych=
ronous set or reset. This may cause corruption of the memory contents and/o=
r read values when the set/reset is asserted and is not analyzed by the def=
ault static timing analysis. It is suggested to eliminate the use of a set/=
reset to registers driving this RAMB pin or else use a synchronous reset in=
 which the assertion of the reset is timed by default.</p><p>WARNING: [DRC =
REQP-1839] RAMB36 async control check: The RAMB36E1 e31x_core_inst/rfnoc_im=
age_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0].axis_data_to_ch=
dr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_sectio=
n[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem=
/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem=
_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO=
.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin e31x_core_inst/rfnoc_i=
mage_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0].axis_data_to_c=
hdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_secti=
on[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.me=
m/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_me=
m_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INF=
O.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR[9] (net: e31x_core_inst/rfnoc_imag=
e_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0].axis_data_to_chdr=
_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section[=
0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/g=
bm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_g=
en/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.S=
DP.WIDE_PRIM36_NO_ECC.ram_0[3]) which is driven by a register (e31x_core_in=
st/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0].axis=
_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/=
fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sy=
nc_fifo.gl0.rd/rpntr/gc0.count_d1_reg[3]) that has an active asychronous se=
t or reset. This may cause corruption of the memory contents and/or read va=
lues when the set/reset is asserted and is not analyzed by the default stat=
ic timing analysis. It is suggested to eliminate the use of a set/reset to =
registers driving this RAMB pin or else use a synchronous reset in which th=
e assertion of the reset is timed by default.</p><p>WARNING: [DRC REQP-1840=
] RAMB18 async control check: The RAMB18E1 e31x_core_inst/rfnoc_image_core_=
i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen_ctrl_slave.slv_fifo_=
i/fifo_bram/ram/impl/ram_reg has an input control pin e31x_core_inst/rfnoc_=
image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen_ctrl_slav=
e.slv_fifo_i/fifo_bram/ram/impl/ram_reg/ENBWREN (net: e31x_core_inst/rfnoc_=
image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen_ctrl_slav=
e.slv_fifo_i/fifo_bram/ram/impl/p_0_in7_out) which is driven by a register =
(e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_en=
dpoint_i/gen_async_fifos.in_fifo_i/fifo_section[0].impl_srl_i/U0/inst_fifo_=
gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fw=
ft_i_reg) that has an active asychronous set or reset. This may cause corru=
ption of the memory contents and/or read values when the set/reset is asser=
ted and is not analyzed by the default static timing analysis. It is sugges=
ted to eliminate the use of a set/reset to registers driving this RAMB pin =
or else use a synchronous reset in which the assertion of the reset is time=
d by default.</p><p>WARNING: [DRC REQP-1840] RAMB18 async control check: Th=
e RAMB18E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/c=
trlport_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg has=
 an input control pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shel=
l_radio_i/ctrlport_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/=
ram_reg/WEBWE[0] (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_she=
ll_radio_i/ctrlport_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl=
/p_0_in7_out) which is driven by a register (e31x_core_inst/rfnoc_image_cor=
e_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen_async_fifos.in_fif=
o_i/fifo_section[0].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or=
_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active as=
ychronous set or reset. This may cause corruption of the memory contents an=
d/or read values when the set/reset is asserted and is not analyzed by the =
default static timing analysis. It is suggested to eliminate the use of a s=
et/reset to registers driving this RAMB pin or else use a synchronous reset=
 in which the assertion of the reset is timed by default.</p><p>WARNING: [D=
RC REQP-1840] RAMB18 async control check: The RAMB18E1 e31x_core_inst/rfnoc=
_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen_ctrl_sla=
ve.slv_fifo_i/fifo_bram/ram/impl/ram_reg has an input control pin e31x_core=
_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i/g=
en_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg/WEBWE[1] (net: e31x_cor=
e_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i/=
gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/p_0_in7_out) which is driven b=
y a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_=
i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_section[0].impl_srl_i/=
U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.r=
fwft/empty_fwft_i_reg) that has an active asychronous set or reset. This ma=
y cause corruption of the memory contents and/or read values when the set/r=
eset is asserted and is not analyzed by the default static timing analysis.=
 It is suggested to eliminate the use of a set/reset to registers driving t=
his RAMB pin or else use a synchronous reset in which the assertion of the =
reset is timed by default.</p><p>WARNING: [DRC REQP-1840] RAMB18 async cont=
rol check: The RAMB18E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_sh=
ell_radio_i/ctrlport_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/imp=
l/ram_reg has an input control pin e31x_core_inst/rfnoc_image_core_i/b_radi=
o0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_b=
ram/ram/impl/ram_reg/WEBWE[2] (net: e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_=
bram/ram/impl/p_0_in7_out) which is driven by a register (e31x_core_inst/rf=
noc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen_async=
_fifos.in_fifo_i/fifo_section[0].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/g=
rf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has=
 an active asychronous set or reset. This may cause corruption of the memor=
y contents and/or read values when the set/reset is asserted and is not ana=
lyzed by the default static timing analysis. It is suggested to eliminate t=
he use of a set/reset to registers driving this RAMB pin or else use a sync=
hronous reset in which the assertion of the reset is timed by default.</p><=
p>WARNING: [DRC REQP-1840] RAMB18 async control check: The RAMB18E1 e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i=
/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg has an input control =
pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport=
_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg/WEBWE[3] (=
net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlpor=
t_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/p_0_in7_out) whic=
h is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc=
_shell_radio_i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_section[0=
].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/=
gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set or r=
eset. This may cause corruption of the memory contents and/or read values w=
hen the set/reset is asserted and is not analyzed by the default static tim=
ing analysis. It is suggested to eliminate the use of a set/reset to regist=
ers driving this RAMB pin or else use a synchronous reset in which the asse=
rtion of the reset is timed by default.</p><p>[00:10:42] Starting Placer Ta=
sk</p><p>[00:10:42] Current task: Placer +++ Current Phase: Starting</p><p>=
[00:10:42] Current task: Placer +++ Current Phase: 1 Placer Initialization<=
/p><p>[00:10:42] Current task: Placer +++ Current Phase: 1.1 Placer Initial=
ization Netlist Sorting</p><p>WARNING: [Place 30-87] Partially locked IO Bu=
s is found. Following components of the IO Bus DB_EXP_1_8V are not locked: =
 'DB_EXP_1_8V[30]'  'DB_EXP_1_8V[29]'  'DB_EXP_1_8V[28]'  'DB_EXP_1_8V[27]'=
  'DB_EXP_1_8V[26]'  'DB_EXP_1_8V[25]'  'DB_EXP_1_8V[23]'  'DB_EXP_1_8V[22]=
'  'DB_EXP_1_8V[21]'  'DB_EXP_1_8V[20]'  'DB_EXP_1_8V[19]'  'DB_EXP_1_8V[18=
]'  'DB_EXP_1_8V[17]'  'DB_EXP_1_8V[16]'  'DB_EXP_1_8V[15]'  'DB_EXP_1_8V[1=
4]'  'DB_EXP_1_8V[13]'  'DB_EXP_1_8V[12]'  'DB_EXP_1_8V[7]'  'DB_EXP_1_8V[4=
]'  'DB_EXP_1_8V[3]'  'DB_EXP_1_8V[2]'  'DB_EXP_1_8V[1]'  'DB_EXP_1_8V[0]'<=
/p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genbl=
k2[0].gpio_atr_db_inst/gpio_in_iob_reg[0]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.</p><p>CRITICAL WARNING:=
 [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/=
gpio_in_iob_reg[10]'. It has the property IOB=3DTRUE, but it is not driving=
 or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid=
 constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[11]'. =
It has the property IOB=3DTRUE, but it is not driving or driven by any IO e=
lement.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on registe=
r 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[12]'. It has the property IO=
B=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICAL=
 WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr=
_db_inst/gpio_in_iob_reg[13]'. It has the property IOB=3DTRUE, but it is no=
t driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73=
] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_r=
eg[14]'. It has the property IOB=3DTRUE, but it is not driving or driven by=
 any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint o=
n register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[15]'. It has the pr=
operty IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p=
>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0]=
.gpio_atr_db_inst/gpio_in_iob_reg[16]'. It has the property IOB=3DTRUE, but=
 it is not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Pl=
ace 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio=
_in_iob_reg[17]'. It has the property IOB=3DTRUE, but it is not driving or =
driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid con=
straint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[18]'. It h=
as the property IOB=3DTRUE, but it is not driving or driven by any IO eleme=
nt.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'g=
enblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[19]'. It has the property IOB=3D=
TRUE, but it is not driving or driven by any IO element.</p><p>CRITICAL WAR=
NING: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_=
inst/gpio_in_iob_reg[1]'. It has the property IOB=3DTRUE, but it is not dri=
ving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Inv=
alid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[20=
]'. It has the property IOB=3DTRUE, but it is not driving or driven by any =
IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on reg=
ister 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[21]'. It has the propert=
y IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRIT=
ICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio=
_atr_db_inst/gpio_in_iob_reg[22]'. It has the property IOB=3DTRUE, but it i=
s not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 3=
0-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_i=
ob_reg[23]'. It has the property IOB=3DTRUE, but it is not driving or drive=
n by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constrai=
nt on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[24]'. It has th=
e property IOB=3DTRUE, but it is not driving or driven by any IO element.</=
p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk=
2[0].gpio_atr_db_inst/gpio_in_iob_reg[25]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.</p><p>CRITICAL WARNING:=
 [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/=
gpio_in_iob_reg[26]'. It has the property IOB=3DTRUE, but it is not driving=
 or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid=
 constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[27]'. =
It has the property IOB=3DTRUE, but it is not driving or driven by any IO e=
lement.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on registe=
r 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[28]'. It has the property IO=
B=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICAL=
 WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr=
_db_inst/gpio_in_iob_reg[29]'. It has the property IOB=3DTRUE, but it is no=
t driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73=
] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_r=
eg[2]'. It has the property IOB=3DTRUE, but it is not driving or driven by =
any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on=
 register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[30]'. It has the pro=
perty IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>=
CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].=
gpio_atr_db_inst/gpio_in_iob_reg[31]'. It has the property IOB=3DTRUE, but =
it is not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Pla=
ce 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_=
in_iob_reg[3]'. It has the property IOB=3DTRUE, but it is not driving or dr=
iven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid const=
raint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[4]'. It has =
the property IOB=3DTRUE, but it is not driving or driven by any IO element.=
</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genb=
lk2[0].gpio_atr_db_inst/gpio_in_iob_reg[5]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.</p><p>CRITICAL WARNING=
: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst=
/gpio_in_iob_reg[6]'. It has the property IOB=3DTRUE, but it is not driving=
 or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid=
 constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[7]'. I=
t has the property IOB=3DTRUE, but it is not driving or driven by any IO el=
ement.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register=
 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[8]'. It has the property IOB=
=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICAL =
WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_=
db_inst/gpio_in_iob_reg[9]'. It has the property IOB=3DTRUE, but it is not =
driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] =
Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_re=
g[0]'. It has the property IOB=3DTRUE, but it is not driving or driven by a=
ny IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on =
register 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[16]'. It has the pro=
perty IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>=
CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].=
gpio_atr_db_inst/gpio_out_iob_reg[17]'. It has the property IOB=3DTRUE, but=
 it is not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Pl=
ace 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio=
_out_iob_reg[18]'. It has the property IOB=3DTRUE, but it is not driving or=
 driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid co=
nstraint on register 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[19]'. It=
 has the property IOB=3DTRUE, but it is not driving or driven by any IO ele=
ment.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register =
'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[1]'. It has the property IOB=
=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICAL =
WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_=
db_inst/gpio_out_iob_reg[20]'. It has the property IOB=3DTRUE, but it is no=
t driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73=
] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_=
reg[21]'. It has the property IOB=3DTRUE, but it is not driving or driven b=
y any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint =
on register 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[22]'. It has the =
property IOB=3DTRUE, but it is not driving or driven by any IO element.</p>=
<p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[=
0].gpio_atr_db_inst/gpio_out_iob_reg[23]'. It has the property IOB=3DTRUE, =
but it is not driving or driven by any IO element.</p><p>CRITICAL WARNING: =
[Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/g=
pio_out_iob_reg[24]'. It has the property IOB=3DTRUE, but it is not driving=
 or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid=
 constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[25]'.=
 It has the property IOB=3DTRUE, but it is not driving or driven by any IO =
element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on regist=
er 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[26]'. It has the property =
IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITIC=
AL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_a=
tr_db_inst/gpio_out_iob_reg[27]'. It has the property IOB=3DTRUE, but it is=
 not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30=
-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_out_i=
ob_reg[28]'. It has the property IOB=3DTRUE, but it is not driving or drive=
n by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constrai=
nt on register 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[29]'. It has t=
he property IOB=3DTRUE, but it is not driving or driven by any IO element.<=
/p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genbl=
k2[0].gpio_atr_db_inst/gpio_out_iob_reg[2]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.</p><p>CRITICAL WARNING=
: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst=
/gpio_out_iob_reg[30]'. It has the property IOB=3DTRUE, but it is not drivi=
ng or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Inval=
id constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[31]=
'. It has the property IOB=3DTRUE, but it is not driving or driven by any I=
O element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on regi=
ster 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[0]'. It has the property =
IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITIC=
AL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_a=
tr_db_inst/gpio_in_iob_reg[10]'. It has the property IOB=3DTRUE, but it is =
not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-=
73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob=
_reg[11]'. It has the property IOB=3DTRUE, but it is not driving or driven =
by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint=
 on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[12]'. It has the =
property IOB=3DTRUE, but it is not driving or driven by any IO element.</p>=
<p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[=
1].gpio_atr_db_inst/gpio_in_iob_reg[13]'. It has the property IOB=3DTRUE, b=
ut it is not driving or driven by any IO element.</p><p>CRITICAL WARNING: [=
Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gp=
io_in_iob_reg[14]'. It has the property IOB=3DTRUE, but it is not driving o=
r driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid c=
onstraint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[15]'. It=
 has the property IOB=3DTRUE, but it is not driving or driven by any IO ele=
ment.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register =
'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[16]'. It has the property IOB=
=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICAL =
WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_=
db_inst/gpio_in_iob_reg[17]'. It has the property IOB=3DTRUE, but it is not=
 driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73]=
 Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_re=
g[18]'. It has the property IOB=3DTRUE, but it is not driving or driven by =
any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on=
 register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[19]'. It has the pro=
perty IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>=
CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1].=
gpio_atr_db_inst/gpio_in_iob_reg[1]'. It has the property IOB=3DTRUE, but i=
t is not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Plac=
e 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_i=
n_iob_reg[20]'. It has the property IOB=3DTRUE, but it is not driving or dr=
iven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid const=
raint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[21]'. It has=
 the property IOB=3DTRUE, but it is not driving or driven by any IO element=
.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'gen=
blk2[1].gpio_atr_db_inst/gpio_in_iob_reg[22]'. It has the property IOB=3DTR=
UE, but it is not driving or driven by any IO element.</p><p>CRITICAL WARNI=
NG: [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_in=
st/gpio_in_iob_reg[23]'. It has the property IOB=3DTRUE, but it is not driv=
ing or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Inva=
lid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[24]=
'. It has the property IOB=3DTRUE, but it is not driving or driven by any I=
O element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on regi=
ster 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[25]'. It has the property=
 IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITI=
CAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_=
atr_db_inst/gpio_in_iob_reg[26]'. It has the property IOB=3DTRUE, but it is=
 not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30=
-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_io=
b_reg[27]'. It has the property IOB=3DTRUE, but it is not driving or driven=
 by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constrain=
t on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[28]'. It has the=
 property IOB=3DTRUE, but it is not driving or driven by any IO element.</p=
><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2=
[1].gpio_atr_db_inst/gpio_in_iob_reg[29]'. It has the property IOB=3DTRUE, =
but it is not driving or driven by any IO element.</p><p>CRITICAL WARNING: =
[Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/g=
pio_in_iob_reg[2]'. It has the property IOB=3DTRUE, but it is not driving o=
r driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid c=
onstraint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[30]'. It=
 has the property IOB=3DTRUE, but it is not driving or driven by any IO ele=
ment.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register =
'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[31]'. It has the property IOB=
=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICAL =
WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_=
db_inst/gpio_in_iob_reg[3]'. It has the property IOB=3DTRUE, but it is not =
driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] =
Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg=
[4]'. It has the property IOB=3DTRUE, but it is not driving or driven by an=
y IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on r=
egister 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[5]'. It has the proper=
ty IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRI=
TICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1].gpi=
o_atr_db_inst/gpio_in_iob_reg[6]'. It has the property IOB=3DTRUE, but it i=
s not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 3=
0-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_i=
ob_reg[7]'. It has the property IOB=3DTRUE, but it is not driving or driven=
 by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constrain=
t on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[8]'. It has the =
property IOB=3DTRUE, but it is not driving or driven by any IO element.</p>=
<p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[=
1].gpio_atr_db_inst/gpio_in_iob_reg[9]'. It has the property IOB=3DTRUE, bu=
t it is not driving or driven by any IO element.</p><p>CRITICAL WARNING: [P=
lace 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpi=
o_out_iob_reg[0]'. It has the property IOB=3DTRUE, but it is not driving or=
 driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid co=
nstraint on register 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[16]'. It=
 has the property IOB=3DTRUE, but it is not driving or driven by any IO ele=
ment.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register =
'genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[17]'. It has the property IOB=
=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICAL =
WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_=
db_inst/gpio_out_iob_reg[18]'. It has the property IOB=3DTRUE, but it is no=
t driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73=
] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_=
reg[19]'. It has the property IOB=3DTRUE, but it is not driving or driven b=
y any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint =
on register 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[1]'. It has the p=
roperty IOB=3DTRUE, but it is not driving or driven by any IO element.</p><=
p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1=
].gpio_atr_db_inst/gpio_out_iob_reg[20]'. It has the property IOB=3DTRUE, b=
ut it is not driving or driven by any IO element.</p><p>CRITICAL WARNING: [=
Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gp=
io_out_iob_reg[21]'. It has the property IOB=3DTRUE, but it is not driving =
or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid =
constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[22]'. =
It has the property IOB=3DTRUE, but it is not driving or driven by any IO e=
lement.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on registe=
r 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[23]'. It has the property I=
OB=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICA=
L WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_at=
r_db_inst/gpio_out_iob_reg[24]'. It has the property IOB=3DTRUE, but it is =
not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-=
73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_out_io=
b_reg[25]'. It has the property IOB=3DTRUE, but it is not driving or driven=
 by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constrain=
t on register 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[26]'. It has th=
e property IOB=3DTRUE, but it is not driving or driven by any IO element.</=
p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk=
2[1].gpio_atr_db_inst/gpio_out_iob_reg[27]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.</p><p>CRITICAL WARNING=
: [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst=
/gpio_out_iob_reg[28]'. It has the property IOB=3DTRUE, but it is not drivi=
ng or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Inval=
id constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[29]=
'. It has the property IOB=3DTRUE, but it is not driving or driven by any I=
O element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on regi=
ster 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[2]'. It has the property=
 IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>WARNI=
NG: [Place 30-568] A LUT 'e31x_core_inst/tpps_i_2' is driving clock pin of =
25 registers. This could lead to large hold time violations. First few invo=
lved registers are:</p><p>WARNING: [Place 30-172] Sub-optimal placement for=
 a clock-capable IO pin and PLL pair. This is normally an ERROR but the CLO=
CK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to conti=
nue. The use of this override is highly discouraged as it may lead to very =
poor timing results. It is recommended that this error condition be correct=
ed in the design.</p><p>[00:10:50] Current task: Placer +++ Current Phase: =
1.2 IO Placement/ Clock Placement/ Build Placer Device</p><p>WARNING: [Plac=
e 30-770] High register utilization is forcing place_design to place up to =
8 registers per slice which may impact placement success and/or routing con=
gestion.</p><p>[00:11:12] Current task: Placer +++ Current Phase: 1.3 Build=
 Placer Netlist Model</p><p>[00:11:13] Current task: Placer +++ Current Pha=
se: 1.4 Constrain Clocks/Macros</p><p>[00:11:13] Current task: Placer +++ C=
urrent Phase: 2 Global Placement</p><p>[00:11:19] Current task: Placer +++ =
Current Phase: 2.1 Floorplanning</p><p>[00:11:26] Current task: Placer +++ =
Current Phase: 2.2 Update Timing before SLR Path Opt</p><p>[00:12:22] Curre=
nt task: Placer +++ Current Phase: 2.4 Global Placement Core</p><p>[00:12:4=
7] Current task: Placer +++ Current Phase: 2.4.1 Physical Synthesis In Plac=
er</p><p>[00:12:47] Current task: Placer +++ Current Phase: 3 Detail Placem=
ent</p><p>[00:13:03] Current task: Placer +++ Current Phase: 3.1 Commit Mul=
ti Column Macros</p><p>[00:13:04] Current task: Placer +++ Current Phase: 3=
.3 Area Swap Optimization</p><p>[00:13:05] Current task: Placer +++ Current=
 Phase: 3.4 Pipeline Register Optimization</p><p>[00:13:13] Current task: P=
lacer +++ Current Phase: 3.5 Fast Optimization</p><p>ERROR: [Place 30-487] =
The packing of instances into the device could not be obeyed. There are a t=
otal of 13300 slices in the device, of which 9737 slices are available, how=
ever, the unplaced instances require 10808 slices. Please analyze your desi=
gn to determine if the number of LUTs, FFs, and/or control sets can be redu=
ced.</p><p>ERROR: [Place 30-99] Placer failed with error: 'Detail Placement=
 failed please check previous errors for details.'</p><p>ERROR: [Common 17-=
69] Command failed: Placer could not place all instances</p><p>[00:13:44] C=
urrent task: Placer +++ Current Phase: 3.6 Small Shape Detail Placement</p>=
<p>[00:13:45] Current task: Placer +++ Current Phase: Finished</p><p>[00:13=
:45] Process terminated. Status: Failure</p><p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p><p>Wa=
rnings:           877</p><p>Critical Warnings:  122</p><p>Errors:          =
   3</p><p>make[1]: *** [Makefile.e31x.inc:121: bin] Error 1</p><p>make[1]:=
 Leaving directory '/home/grcusrp/uhd/fpga/usrp3/top/e31x'</p><p>make: *** =
[Makefile:80: E310_SG3] Error 2</p><p>grcusrp@grcusrp-ThinkPad-T470:~/uhd/f=
pga/usrp3/top/e31x$ </p><p>grcusrp@grcusrp-ThinkPad-T470:~/uhd/fpga/usrp3/t=
op/e31x$ ls</p><p>axi_pmu.v       build-E310_SG3_IP  dts                   =
   e310_rfnoc_image_core.vh   e31x_core.v         e31x_idle.v      e31x.v  =
  Makefile.e31x.inc  sim</p><p>build           build_e31x.tcl     e310_io.v=
                e310_rfnoc_image_core.yml  e31x_dram.v         e31x_pins.xd=
c    ip        ppsloop.v          spi_slave.v</p><p>build-E310_SG3  build-i=
p           e310_rfnoc_image_core.v  e310_static_router.hex     e31x_idle_p=
ins.xdc  e31x_timing.xdc  Makefile  setupenv.sh</p><p>grcusrp@grcusrp-Think=
Pad-T470:~/uhd/fpga/usrp3/top/e31x$ ERROR: [Place 30-487] The packing of in=
stances into the device could not be obeyed. There are a total of 13300 sli=
ces in the device, of which 9737 slices are available, however, the unplace=
d instances require 10808 slices. Please analyze your design to determine i=
f the number of LUTs, FFs, and/or control sets can be reduced.</p><p>ERROR:=
: command not found</p><p>grcusrp@grcusrp-ThinkPad-T470:~/uhd/fpga/usrp3/to=
p/e31x$ ERROR: [Place 30-99] Placer failed with error: 'Detail Placement fa=
iled please check previous errors for details.'</p><p>ERROR:: command not f=
ound</p><p>grcusrp@grcusrp-ThinkPad-T470:~/uhd/fpga/usrp3/top/e31x$ ERROR: =
[Common 17-69] Command failed: Placer could not place all instances</p><p>E=
RROR:: command not found</p><p>grcusrp@grcusrp-ThinkPad-T470:~/uhd/fpga/usr=
p3/top/e31x$ [00:13:44] Current task: Placer +++ Current Phase: 3.6 Small S=
hape Detail Placement</p><p>[00:13:44]: command not found</p><p>grcusrp@grc=
usrp-ThinkPad-T470:~/uhd/fpga/usrp3/top/e31x$ [00:13:45] Current task: Plac=
er +++ Current Phase: Finished</p><p>[00:13:45]: command not found</p><p>gr=
cusrp@grcusrp-ThinkPad-T470:~/uhd/fpga/usrp3/top/e31x$ [00:13:45] Process t=
erminated. Status: Failure</p><p>[00:13:45]: command not found</p><p>grcusr=
p@grcusrp-ThinkPad-T470:~/uhd/fpga/usrp3/top/e31x$ cd $home</p><p>grcusrp@g=
rcusrp-ThinkPad-T470:~$ cd /Downloads</p><p>bash: cd: /Downloads: No such f=
ile or directory</p><p>grcusrp@grcusrp-ThinkPad-T470:~$ cd \Downloads</p><p=
>grcusrp@grcusrp-ThinkPad-T470:~/Downloads$ ls</p><p> 121-1-322-1-10-202209=
25.pdf                  Cloudpath-x64.tar.bz2                  e3xx_e310_sg=
3_sdimg_default-v4.4.0.0.zip   LSFR8.py                     LSFR_copy-trnas=
mitter-pulse.grc   Xilinx.bin</p><p> AR76780_Vivado_2021_1_preliminary_rev1=
      'e310_rfnoc_image_core(1).yml'          hackRFtransmit.py            =
             'LSFR_copy_receiver(1).grc'   LSFR.py</p><p> AR76780_Vivado_20=
21_1_preliminary_rev1.zip   e310_rfnoc_image_core.yml              lesson08=
alt_hackRFtransmit.grc             LSFR_copy_receiver.grc       pulse.py</p=
><p> Cloudpath-x64                                e3xx_e310_sg3_sdimg_defau=
lt-v4.4.0.0   LSFR1.py                                   LSFR_copy-trnasmit=
ter.grc    usrp_e310_fs.sdimg</p><p>grcusrp@grcusrp-ThinkPad-T470:~/Downloa=
ds$ rfnoc_image_builder -y ./e310_rfnoc_image_core.yml</p><p>[ERR] FPGA pat=
h not found. Specify with --fpga-dir argument.</p><p>grcusrp@grcusrp-ThinkP=
ad-T470:~/Downloads$ cd</p><p>grcusrp@grcusrp-ThinkPad-T470:~$ cd uhd</p><p=
>grcusrp@grcusrp-ThinkPad-T470:~/uhd$ cd fpga</p><p>grcusrp@grcusrp-ThinkPa=
d-T470:~/uhd/fpga$ cd usrp3</p><p>grcusrp@grcusrp-ThinkPad-T470:~/uhd/fpga/=
usrp3$ cd top</p><p>grcusrp@grcusrp-ThinkPad-T470:~/uhd/fpga/usrp3/top$ cd =
e31x</p><p>grcusrp@grcusrp-ThinkPad-T470:~/uhd/fpga/usrp3/top/e31x$ rfnoc_i=
mage_builder -y ./e310_rfnoc_image_core.yml</p><p>[INF] Using FPGA director=
y /home/grcusrp/uhd/fpga</p><p>[INF] Selected device e310</p><p>[INF] Using=
 io_signatures.yml from /usr/local/share/uhd/rfnoc/core.</p><p>[INF] Using =
e310_bsp.yml from /usr/local/share/uhd/rfnoc/core.</p><p>[INF] Adding block=
 description from duc.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p>[INF] =
Adding block description from split_stream.yml (/usr/local/share/uhd/rfnoc/=
blocks).</p><p>[INF] Adding block description from window.yml (/usr/local/s=
hare/uhd/rfnoc/blocks).</p><p>[INF] Adding block description from vector_ii=
r.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p>[INF] Adding block descrip=
tion from addsub.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p>[INF] Addin=
g block description from logpwr.yml (/usr/local/share/uhd/rfnoc/blocks).</p=
><p>[INF] Adding block description from null_src_sink.yml (/usr/local/share=
/uhd/rfnoc/blocks).</p><p>[INF] Adding block description from fir_filter.ym=
l (/usr/local/share/uhd/rfnoc/blocks).</p><p>[INF] Adding block description=
 from ddc.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p>[INF] Adding block=
 description from moving_avg.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p=
>[INF] Adding block description from fft_1x64.yml (/usr/local/share/uhd/rfn=
oc/blocks).</p><p>[INF] Adding block description from keep_one_in_n.yml (/u=
sr/local/share/uhd/rfnoc/blocks).</p><p>[INF] Adding block description from=
 radio.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p>[INF] Adding block de=
scription from switchboard.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p>[=
INF] Adding block description from replay.yml (/usr/local/share/uhd/rfnoc/b=
locks).</p><p>[INF] Adding block description from siggen.yml (/usr/local/sh=
are/uhd/rfnoc/blocks).</p><p>[INF] Adding block description from axi_ram_fi=
fo.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p>[INF] Adding block descri=
ption from fosphor.yml (/usr/local/share/uhd/rfnoc/blocks).</p><p>[INF] Pla=
usibility checks on the current configuration</p><p>[INF] Writing static ro=
uting table to /home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_static_router.hex=
</p><p>[INF] Writing image core to /home/grcusrp/uhd/fpga/usrp3/top/e31x/e3=
10_rfnoc_image_core.v</p><p>[INF] Writing image core header to /home/grcusr=
p/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.vh</p><p>[INF] Launching bu=
ild with the following settings:</p><p>[INF]  * Build Directory: /home/grcu=
srp/uhd/fpga/usrp3/top/e31x</p><p>[INF]  * Target: DRAM=3D1 E310_SG3</p><p>=
[INF]  * Image Core File: /home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_=
image_core.v</p><p>[INF]  * Edge Table File: /home/grcusrp/uhd/fpga/usrp3/t=
op/e31x/e310_static_router.hex</p><p>Setting up a 64-bit FPGA build environ=
ment for the USRP-E31x...</p><p>- Vivado: Found (/tools/Xilinx/Vivado/2021.=
1/bin)</p><p>          Installed version is Vivado v2021.1_AR76780 (64-bit)=
</p><p>Environment successfully initialized.</p><p>make -f Makefile.e31x.in=
c viv_ip    NAME=3DE310_SG3_IP ARCH=3Dzynq PART_ID=3Dxc7z020/clg484/-3 E310=
_SG3=3D1 TOP_MODULE=3De31x EXTRA_DEFS=3D"E310_SG3=3D1" DEFAULT_RFNOC_IMAGE_=
CORE_FILE=3De310_rfnoc_image_core.v DEFAULT_EDGE_FILE=3D/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_static_router.hex</p><p>make[1]: Entering directory=
 '/home/grcusrp/uhd/fpga/usrp3/top/e31x'</p><p>BUILDER: Checking tools...</=
p><p>* GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)</p><p>* Py=
thon 3.8.10</p><p>* Vivado v2021.1_AR76780 (64-bit)</p><p>IP build for E310=
_SG3_IP DONE . . .</p><p>make[1]: Leaving directory '/home/grcusrp/uhd/fpga=
/usrp3/top/e31x'</p><p>make -f Makefile.e31x.inc bin NAME=3DE310_SG3 ARCH=
=3Dzynq PART_ID=3Dxc7z020/clg484/-3  E310_SG3=3D1 ENABLE_DRAM=3D1 TOP_MODUL=
E=3De31x EXTRA_DEFS=3D" E310_SG3=3D1 ENABLE_DRAM=3D1" DEFAULT_RFNOC_IMAGE_C=
ORE_FILE=3De310_rfnoc_image_core.v DEFAULT_EDGE_FILE=3D/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e310_static_router.hex</p><p>make[1]: Entering directory =
'/home/grcusrp/uhd/fpga/usrp3/top/e31x'</p><p>BUILDER: Checking tools...</p=
><p>* GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)</p><p>* Pyt=
hon 3.8.10</p><p>* Vivado v2021.1_AR76780 (64-bit)</p><p>Could not read par=
ser configuration from: /home/grcusrp/uhd/fpga/usrp3/top/e31x/dev_config.js=
on</p><p>[00:00:00] Executing command: vivado -mode batch -source /home/grc=
usrp/uhd/fpga/usrp3/top/e31x/build_e31x.tcl -log build.log -journal e31x.jo=
u</p><p>WARNING: [filemgmt 56-12] File '/home/grcusrp/uhd/fpga/usrp3/lib/rf=
noc/blocks/rfnoc_block_replay/rfnoc_block_replay_regs.vh' cannot be added t=
o the project because it already exists in the project, skipping this file<=
/p><p>WARNING: [filemgmt 56-12] File '/home/grcusrp/uhd/fpga/usrp3/lib/rfno=
c/blocks/rfnoc_block_replay/axis_replay.v' cannot be added to the project b=
ecause it already exists in the project, skipping this file</p><p>WARNING: =
[filemgmt 56-12] File '/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_=
block_replay/noc_shell_replay.v' cannot be added to the project because it =
already exists in the project, skipping this file</p><p>WARNING: [filemgmt =
56-12] File '/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_repl=
ay/rfnoc_block_replay.v' cannot be added to the project because it already =
exists in the project, skipping this file</p><p>[00:00:15] Current task: In=
itialization +++ Current Phase: Starting</p><p>[00:00:15] Current task: Ini=
tialization +++ Current Phase: Finished</p><p>[00:00:15] Executing Tcl: syn=
th_design -top e31x -part xc7z020clg484-3 -verilog_define E310_SG3=3D1 -ver=
ilog_define ENABLE_DRAM=3D1 -verilog_define GIT_HASH=3D32'hf5fac246 -verilo=
g_define RFNOC_EDGE_TBL_FILE=3D/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_s=
tatic_router.hex -verilog_define RFNOC_IMAGE_CORE_HDR=3D/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/e310_rfnoc_image_core.vh -verilog_define UHD_FPGA_DIR=3D=
/home/grcusrp/uhd/fpga/usrp3/top/../..</p><p>[00:00:15] Starting Synthesis =
Command</p><p>WARNING: [Synth 8-2507] parameter declaration becomes local i=
n cam_priority_encoder with formal parameter declaration list [/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:46]</p><p>WARNING: =
[Synth 8-2507] parameter declaration becomes local in cam_priority_encoder =
with formal parameter declaration list [/home/grcusrp/uhd/fpga/usrp3/lib/co=
ntrol/map/cam_priority_encoder.v:47]</p><p>WARNING: [Synth 8-2507] paramete=
r declaration becomes local in axis_data_swap with formal parameter declara=
tion list [/home/grcusrp/uhd/fpga/usrp3/lib/axi/axis_data_swap.v:54]</p><p>=
WARNING: [Synth 8-2507] parameter declaration becomes local in axis_data_sw=
ap with formal parameter declaration list [/home/grcusrp/uhd/fpga/usrp3/lib=
/axi/axis_data_swap.v:55]</p><p>WARNING: [Synth 8-2507] parameter declarati=
on becomes local in dds_freq_tune_duc with formal parameter declaration lis=
t [/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/dds_freq_tune_duc.v:128]</p><p>WA=
RNING: [Synth 8-2507] parameter declaration becomes local in axis_ctrl_cros=
sbar_2d_mesh with formal parameter declaration list [/home/grcusrp/uhd/fpga=
/usrp3/lib/rfnoc/crossbar/mesh_node_mapping.vh:7]</p><p>WARNING: [Synth 8-2=
507] parameter declaration becomes local in torus_2d_dor_router_single_sw w=
ith formal parameter declaration list [/home/grcusrp/uhd/fpga/usrp3/lib/rfn=
oc/crossbar/mesh_node_mapping.vh:7]</p><p>WARNING: [Synth 8-2507] parameter=
 declaration becomes local in mesh_2d_dor_router_single_sw with formal para=
meter declaration list [/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/crossbar/mes=
h_node_mapping.vh:7]</p><p>WARNING: [Synth 8-7071] port 'CLKFBOUT' of modul=
e 'PLLE2_ADV' is unconnected for instance 'clkgen' [/home/grcusrp/uhd/fpga/=
usrp3/top/e31x/ppsloop.v:44]</p><p>WARNING: [Synth 8-7071] port 'CLKOUT2' o=
f module 'PLLE2_ADV' is unconnected for instance 'clkgen' [/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p>WARNING: [Synth 8-7071] port 'CLK=
OUT3' of module 'PLLE2_ADV' is unconnected for instance 'clkgen' [/home/grc=
usrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p>WARNING: [Synth 8-7071] po=
rt 'CLKOUT4' of module 'PLLE2_ADV' is unconnected for instance 'clkgen' [/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p>WARNING: [Synth 8-7=
071] port 'CLKOUT5' of module 'PLLE2_ADV' is unconnected for instance 'clkg=
en' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p>WARNING: [Sy=
nth 8-7071] port 'DO' of module 'PLLE2_ADV' is unconnected for instance 'cl=
kgen' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p>WARNING: [=
Synth 8-7071] port 'DRDY' of module 'PLLE2_ADV' is unconnected for instance=
 'clkgen' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p>WARNIN=
G: [Synth 8-7071] port 'CLKFBIN' of module 'PLLE2_ADV' is unconnected for i=
nstance 'clkgen' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p=
>WARNING: [Synth 8-7071] port 'CLKIN2' of module 'PLLE2_ADV' is unconnected=
 for instance 'clkgen' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]=
</p><p>WARNING: [Synth 8-7071] port 'CLKINSEL' of module 'PLLE2_ADV' is unc=
onnected for instance 'clkgen' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppslo=
op.v:44]</p><p>WARNING: [Synth 8-7071] port 'DADDR' of module 'PLLE2_ADV' i=
s unconnected for instance 'clkgen' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/=
ppsloop.v:44]</p><p>WARNING: [Synth 8-7071] port 'DCLK' of module 'PLLE2_AD=
V' is unconnected for instance 'clkgen' [/home/grcusrp/uhd/fpga/usrp3/top/e=
31x/ppsloop.v:44]</p><p>WARNING: [Synth 8-7071] port 'DEN' of module 'PLLE2=
_ADV' is unconnected for instance 'clkgen' [/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x/ppsloop.v:44]</p><p>WARNING: [Synth 8-7071] port 'DI' of module 'PLL=
E2_ADV' is unconnected for instance 'clkgen' [/home/grcusrp/uhd/fpga/usrp3/=
top/e31x/ppsloop.v:44]</p><p>WARNING: [Synth 8-7071] port 'DWE' of module '=
PLLE2_ADV' is unconnected for instance 'clkgen' [/home/grcusrp/uhd/fpga/usr=
p3/top/e31x/ppsloop.v:44]</p><p>WARNING: [Synth 8-7023] instance 'clkgen' o=
f module 'PLLE2_ADV' has 21 connections declared, but only 6 given [/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:44]</p><p>WARNING: [Synth 8-7071] =
port 'reg_wr_keep' of module 'axil_regport_master' is unconnected for insta=
nce 'eth_dma_reg_mst_i' [/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/xport/eth_i=
nternal.v:128]</p><p>WARNING: [Synth 8-7023] instance 'eth_dma_reg_mst_i' o=
f module 'axil_regport_master' has 28 connections declared, but only 27 giv=
en [/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/xport/eth_internal.v:128]</p><p>=
WARNING: [Synth 8-7071] port 'output_unencoded' of module 'cam_priority_enc=
oder' is unconnected for instance 'priority_encoder_inst1' [/home/grcusrp/u=
hd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67]</p><p>WARNING: [Sy=
nth 8-7023] instance 'priority_encoder_inst1' of module 'cam_priority_encod=
er' has 4 connections declared, but only 3 given [/home/grcusrp/uhd/fpga/us=
rp3/lib/control/map/cam_priority_encoder.v:67]</p><p>WARNING: [Synth 8-693]=
 zero replication count - replication ignored [/home/grcusrp/uhd/fpga/usrp3=
/lib/control/map/cam_priority_encoder.v:77]</p><p>WARNING: [Synth 8-7071] p=
ort 'output_unencoded' of module 'cam_priority_encoder' is unconnected for =
instance 'priority_encoder_inst2' [/home/grcusrp/uhd/fpga/usrp3/lib/control=
/map/cam_priority_encoder.v:76]</p><p>WARNING: [Synth 8-7023] instance 'pri=
ority_encoder_inst2' of module 'cam_priority_encoder' has 4 connections dec=
lared, but only 3 given [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_p=
riority_encoder.v:76]</p><p>WARNING: [Synth 8-7071] port 'output_unencoded'=
 of module 'cam_priority_encoder' is unconnected for instance 'priority_enc=
oder_inst1' [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_enco=
der.v:67]</p><p>WARNING: [Synth 8-7023] instance 'priority_encoder_inst1' o=
f module 'cam_priority_encoder' has 4 connections declared, but only 3 give=
n [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67]<=
/p><p>WARNING: [Synth 8-693] zero replication count - replication ignored [=
/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:77]</p>=
<p>WARNING: [Synth 8-7071] port 'output_unencoded' of module 'cam_priority_=
encoder' is unconnected for instance 'priority_encoder_inst2' [/home/grcusr=
p/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76]</p><p>WARNING: =
[Synth 8-7023] instance 'priority_encoder_inst2' of module 'cam_priority_en=
coder' has 4 connections declared, but only 3 given [/home/grcusrp/uhd/fpga=
/usrp3/lib/control/map/cam_priority_encoder.v:76]</p><p>WARNING: [Synth 8-7=
071] port 'output_unencoded' of module 'cam_priority_encoder' is unconnecte=
d for instance 'priority_encoder_inst1' [/home/grcusrp/uhd/fpga/usrp3/lib/c=
ontrol/map/cam_priority_encoder.v:67]</p><p>WARNING: [Synth 8-7023] instanc=
e 'priority_encoder_inst1' of module 'cam_priority_encoder' has 4 connectio=
ns declared, but only 3 given [/home/grcusrp/uhd/fpga/usrp3/lib/control/map=
/cam_priority_encoder.v:67]</p><p>WARNING: [Synth 8-693] zero replication c=
ount - replication ignored [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/ca=
m_priority_encoder.v:77]</p><p>WARNING: [Synth 8-7071] port 'output_unencod=
ed' of module 'cam_priority_encoder' is unconnected for instance 'priority_=
encoder_inst2' [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_e=
ncoder.v:76]</p><p>WARNING: [Synth 8-7023] instance 'priority_encoder_inst2=
' of module 'cam_priority_encoder' has 4 connections declared, but only 3 g=
iven [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:7=
6]</p><p>WARNING: [Synth 8-7071] port 'output_unencoded' of module 'cam_pri=
ority_encoder' is unconnected for instance 'priority_encoder_inst1' [/home/=
grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67]</p><p>WAR=
NING: [Synth 8-7023] instance 'priority_encoder_inst1' of module 'cam_prior=
ity_encoder' has 4 connections declared, but only 3 given [/home/grcusrp/uh=
d/fpga/usrp3/lib/control/map/cam_priority_encoder.v:67]</p><p>WARNING: [Syn=
th 8-693] zero replication count - replication ignored [/home/grcusrp/uhd/f=
pga/usrp3/lib/control/map/cam_priority_encoder.v:77]</p><p>WARNING: [Synth =
8-7071] port 'output_unencoded' of module 'cam_priority_encoder' is unconne=
cted for instance 'priority_encoder_inst2' [/home/grcusrp/uhd/fpga/usrp3/li=
b/control/map/cam_priority_encoder.v:76]</p><p>WARNING: [Synth 8-7023] inst=
ance 'priority_encoder_inst2' of module 'cam_priority_encoder' has 4 connec=
tions declared, but only 3 given [/home/grcusrp/uhd/fpga/usrp3/lib/control/=
map/cam_priority_encoder.v:76]</p><p>WARNING: [Synth 8-7071] port 'output_u=
nencoded' of module 'cam_priority_encoder' is unconnected for instance 'pri=
ority_encoder_inst1' [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_prio=
rity_encoder.v:67]</p><p>WARNING: [Synth 8-7023] instance 'priority_encoder=
_inst1' of module 'cam_priority_encoder' has 4 connections declared, but on=
ly 3 given [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encod=
er.v:67]</p><p>WARNING: [Synth 8-693] zero replication count - replication =
ignored [/home/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.=
v:77]</p><p>WARNING: [Synth 8-7071] port 'output_unencoded' of module 'cam_=
priority_encoder' is unconnected for instance 'priority_encoder_inst2' [/ho=
me/grcusrp/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76]</p><p>=
WARNING: [Synth 8-7023] instance 'priority_encoder_inst2' of module 'cam_pr=
iority_encoder' has 4 connections declared, but only 3 given [/home/grcusrp=
/uhd/fpga/usrp3/lib/control/map/cam_priority_encoder.v:76]</p><p>WARNING: [=
Synth 8-689] width (32) of port connection 's_axi_awaddr' does not match po=
rt width (14) of module 'eth_internal' [/home/grcusrp/uhd/fpga/usrp3/top/e3=
1x/e31x.v:440]</p><p>WARNING: [Synth 8-689] width (32) of port connection '=
s_axi_araddr' does not match port width (14) of module 'eth_internal' [/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/e31x.v:453]</p><p>WARNING: [Synth 8-7071]=
 port 'm_axi_awprot' of module 'e31x_ps_bd_auto_cc_2' is unconnected for in=
stance 'auto_cc' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg=
484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:3225]</p><p>WARNING: [Synth =
8-7071] port 'm_axi_wstrb' of module 'e31x_ps_bd_auto_cc_2' is unconnected =
for instance 'auto_cc' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z=
020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:3225]</p><p>WARNING: [=
Synth 8-7071] port 'm_axi_arprot' of module 'e31x_ps_bd_auto_cc_2' is uncon=
nected for instance 'auto_cc' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-=
ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:3225]</p><p>WAR=
NING: [Synth 8-7023] instance 'auto_cc' of module 'e31x_ps_bd_auto_cc_2' ha=
s 42 connections declared, but only 39 given [/home/grcusrp/uhd/fpga/usrp3/=
top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:=
3225]</p><p>WARNING: [Synth 8-7071] port 'aclk2x' of module 'axi_register_s=
lice_v2_1_24_axi_register_slice' is unconnected for instance 'SI_REG' [/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_1=
28_bd/axi_inter_2x64_128_bd/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_v=
l_rfs.v:4392]</p><p>WARNING: [Synth 8-7023] instance 'SI_REG' of module 'ax=
i_register_slice_v2_1_24_axi_register_slice' has 93 connections declared, b=
ut only 92 given [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg=
484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/6e0d/hdl/axi_pro=
tocol_converter_v2_1_vl_rfs.v:4392]</p><p>WARNING: [Synth 8-7071] port 'acl=
k2x' of module 'axi_register_slice_v2_1_24_axi_register_slice' is unconnect=
ed for instance 'MI_REG' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc=
7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/6e0d/hdl=
/axi_protocol_converter_v2_1_vl_rfs.v:4647]</p><p>WARNING: [Synth 8-7023] i=
nstance 'MI_REG' of module 'axi_register_slice_v2_1_24_axi_register_slice' =
has 93 connections declared, but only 92 given [/home/grcusrp/uhd/fpga/usrp=
3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_12=
8_bd/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v:4647]</p><p>WAR=
NING: [Synth 8-7071] port 'axi_dma_tstvec' of module 'e31x_ps_bd_axi_dma_et=
h_internal_0' is unconnected for instance 'axi_dma_eth_internal' [/home/grc=
usrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd=
/synth/e31x_ps_bd.v:420]</p><p>WARNING: [Synth 8-7023] instance 'axi_dma_et=
h_internal' of module 'e31x_ps_bd_axi_dma_eth_internal_0' has 94 connection=
s declared, but only 93 given [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-=
ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:420]</p><p>WARN=
ING: [Synth 8-7071] port 'M_AXI_GP0_ARESETN' of module 'processing_system7_=
v5_5_processing_system7' is unconnected for instance 'inst' [/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e=
31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:=
828]</p><p>WARNING: [Synth 8-7071] port 'M_AXI_GP1_ARESETN' of module 'proc=
essing_system7_v5_5_processing_system7' is unconnected for instance 'inst' =
[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/=
e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing=
_system7_0_0.v:828]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_GP0_ARESETN' =
of module 'processing_system7_v5_5_processing_system7' is unconnected for i=
nstance 'inst' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg48=
4-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_p=
s_bd_processing_system7_0_0.v:828]</p><p>WARNING: [Synth 8-7071] port 'S_AX=
I_GP1_ARESETN' of module 'processing_system7_v5_5_processing_system7' is un=
connected for instance 'inst' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-=
ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0=
_0/synth/e31x_ps_bd_processing_system7_0_0.v:828]</p><p>WARNING: [Synth 8-7=
071] port 'S_AXI_ACP_ARESETN' of module 'processing_system7_v5_5_processing=
_system7' is unconnected for instance 'inst' [/home/grcusrp/uhd/fpga/usrp3/=
top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_proce=
ssing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:828]</p><p>WARN=
ING: [Synth 8-7071] port 'S_AXI_HP0_ARESETN' of module 'processing_system7_=
v5_5_processing_system7' is unconnected for instance 'inst' [/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e=
31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:=
828]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP1_ARESETN' of module 'proc=
essing_system7_v5_5_processing_system7' is unconnected for instance 'inst' =
[/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/=
e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing=
_system7_0_0.v:828]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP2_ARESETN' =
of module 'processing_system7_v5_5_processing_system7' is unconnected for i=
nstance 'inst' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg48=
4-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_p=
s_bd_processing_system7_0_0.v:828]</p><p>WARNING: [Synth 8-7071] port 'S_AX=
I_HP3_ARESETN' of module 'processing_system7_v5_5_processing_system7' is un=
connected for instance 'inst' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-=
ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0=
_0/synth/e31x_ps_bd_processing_system7_0_0.v:828]</p><p>WARNING: [Synth 8-7=
071] port 'DMA0_RSTN' of module 'processing_system7_v5_5_processing_system7=
' is unconnected for instance 'inst' [/home/grcusrp/uhd/fpga/usrp3/top/e31x=
/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_sy=
stem7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:828]</p><p>WARNING: [Sy=
nth 8-7071] port 'DMA1_RSTN' of module 'processing_system7_v5_5_processing_=
system7' is unconnected for instance 'inst' [/home/grcusrp/uhd/fpga/usrp3/t=
op/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_proces=
sing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:828]</p><p>WARNI=
NG: [Synth 8-7071] port 'DMA2_RSTN' of module 'processing_system7_v5_5_proc=
essing_system7' is unconnected for instance 'inst' [/home/grcusrp/uhd/fpga/=
usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd=
_processing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:828]</p><=
p>WARNING: [Synth 8-7071] port 'DMA3_RSTN' of module 'processing_system7_v5=
_5_processing_system7' is unconnected for instance 'inst' [/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31=
x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_processing_system7_0_0.v:82=
8]</p><p>WARNING: [Synth 8-7023] instance 'inst' of module 'processing_syst=
em7_v5_5_processing_system7' has 685 connections declared, but only 672 giv=
en [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_=
bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/synth/e31x_ps_bd_process=
ing_system7_0_0.v:828]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_GP0_BID' o=
f module 'e31x_ps_bd_processing_system7_0_0' is unconnected for instance 'p=
rocessing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z02=
0clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Sy=
nth 8-7071] port 'S_AXI_GP0_RID' of module 'e31x_ps_bd_processing_system7_0=
_0' is unconnected for instance 'processing_system7_0' [/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31=
x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP1_ARREADY' of m=
odule 'e31x_ps_bd_processing_system7_0_0' is unconnected for instance 'proc=
essing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020cl=
g484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth=
 8-7071] port 'S_AXI_HP1_RLAST' of module 'e31x_ps_bd_processing_system7_0_=
0' is unconnected for instance 'processing_system7_0' [/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x=
_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP1_RVALID' of mod=
ule 'e31x_ps_bd_processing_system7_0_0' is unconnected for instance 'proces=
sing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg4=
84-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8=
-7071] port 'S_AXI_HP1_RRESP' of module 'e31x_ps_bd_processing_system7_0_0'=
 is unconnected for instance 'processing_system7_0' [/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_p=
s_bd.v:1478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP1_BID' of module '=
e31x_ps_bd_processing_system7_0_0' is unconnected for instance 'processing_=
system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/=
e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071=
] port 'S_AXI_HP1_RID' of module 'e31x_ps_bd_processing_system7_0_0' is unc=
onnected for instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/=
top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:=
1478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP1_RDATA' of module 'e31x_=
ps_bd_processing_system7_0_0' is unconnected for instance 'processing_syste=
m7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_=
ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] por=
t 'S_AXI_HP1_RCOUNT' of module 'e31x_ps_bd_processing_system7_0_0' is uncon=
nected for instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:14=
78]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP1_WCOUNT' of module 'e31x_p=
s_bd_processing_system7_0_0' is unconnected for instance 'processing_system=
7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_p=
s_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] port=
 'S_AXI_HP1_RACOUNT' of module 'e31x_ps_bd_processing_system7_0_0' is uncon=
nected for instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:14=
78]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP1_WACOUNT' of module 'e31x_=
ps_bd_processing_system7_0_0' is unconnected for instance 'processing_syste=
m7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_=
ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] por=
t 'S_AXI_HP2_AWREADY' of module 'e31x_ps_bd_processing_system7_0_0' is unco=
nnected for instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/t=
op/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1=
478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP2_BVALID' of module 'e31x_=
ps_bd_processing_system7_0_0' is unconnected for instance 'processing_syste=
m7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_=
ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] por=
t 'S_AXI_HP2_WREADY' of module 'e31x_ps_bd_processing_system7_0_0' is uncon=
nected for instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:14=
78]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP2_BRESP' of module 'e31x_ps=
_bd_processing_system7_0_0' is unconnected for instance 'processing_system7=
_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps=
_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] port =
'S_AXI_HP2_BID' of module 'e31x_ps_bd_processing_system7_0_0' is unconnecte=
d for instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31=
x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</=
p><p>WARNING: [Synth 8-7071] port 'S_AXI_HP2_RID' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' [/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31=
x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_=
HP2_RCOUNT' of module 'e31x_ps_bd_processing_system7_0_0' is unconnected fo=
r instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/bu=
ild-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p=
>WARNING: [Synth 8-7071] port 'S_AXI_HP2_WCOUNT' of module 'e31x_ps_bd_proc=
essing_system7_0_0' is unconnected for instance 'processing_system7_0' [/ho=
me/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x=
_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7071] port 'S_AXI_H=
P2_RACOUNT' of module 'e31x_ps_bd_processing_system7_0_0' is unconnected fo=
r instance 'processing_system7_0' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/bu=
ild-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p=
>WARNING: [Synth 8-7071] port 'S_AXI_HP2_WACOUNT' of module 'e31x_ps_bd_pro=
cessing_system7_0_0' is unconnected for instance 'processing_system7_0' [/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31=
x_ps_bd/synth/e31x_ps_bd.v:1478]</p><p>WARNING: [Synth 8-7023] instance 'pr=
ocessing_system7_0' of module 'e31x_ps_bd_processing_system7_0_0' has 229 c=
onnections declared, but only 206 given [/home/grcusrp/uhd/fpga/usrp3/top/e=
31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/synth/e31x_ps_bd.v:1478]=
</p><p>WARNING: [Synth 8-7071] port 'mb_reset' of module 'bd_cc08_psr_aclk_=
0' is unconnected for instance 'psr_aclk' [/home/grcusrp/uhd/fpga/usrp3/top=
/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_smartcon=
nect_dma_0/bd_0/synth/bd_cc08.v:798]</p><p>WARNING: [Synth 8-7071] port 'bu=
s_struct_reset' of module 'bd_cc08_psr_aclk_0' is unconnected for instance =
'psr_aclk' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/=
e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_smartconnect_dma_0/bd_0/synth/bd_cc08.v=
:798]</p><p>WARNING: [Synth 8-7071] port 'peripheral_reset' of module 'bd_c=
c08_psr_aclk_0' is unconnected for instance 'psr_aclk' [/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_p=
s_bd_smartconnect_dma_0/bd_0/synth/bd_cc08.v:798]</p><p>WARNING: [Synth 8-7=
071] port 'peripheral_aresetn' of module 'bd_cc08_psr_aclk_0' is unconnecte=
d for instance 'psr_aclk' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/x=
c7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_smartconnect_dma_0/bd_0/=
synth/bd_cc08.v:798]</p><p>WARNING: [Synth 8-7023] instance 'psr_aclk' of m=
odule 'bd_cc08_psr_aclk_0' has 10 connections declared, but only 6 given [/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/ip/e31x_ps_bd_smartconnect_dma_0/bd_0/synth/bd_cc08.v:798]</p><p>W=
ARNING: [Synth 8-7071] port 'm_axi_awburst' of module 'bd_cc08_s00tr_0' is =
unconnected for instance 's00_transaction_regulator' [/home/grcusrp/uhd/fpg=
a/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_=
bd_smartconnect_dma_0/bd_0/synth/bd_cc08.v:1706]</p><p>WARNING: [Synth 8-70=
71] port 'm_axi_arburst' of module 'bd_cc08_s00tr_0' is unconnected for ins=
tance 's00_transaction_regulator' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/bu=
ild-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_smartconnect_dma=
_0/bd_0/synth/bd_cc08.v:1706]</p><p>WARNING: [Synth 8-7023] instance 's00_t=
ransaction_regulator' of module 'bd_cc08_s00tr_0' has 82 connections declar=
ed, but only 80 given [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z0=
20clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_smartconnect_dma_0/bd_0/synt=
h/bd_cc08.v:1706]</p><p>WARNING: [Synth 8-6104] Input port 'PS_CLK' has an =
internal driver [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x.v:541]</p><p>WA=
RNING: [Synth 8-6104] Input port 'PS_PORB' has an internal driver [/home/gr=
cusrp/uhd/fpga/usrp3/top/e31x/e31x.v:542]</p><p>WARNING: [Synth 8-6104] Inp=
ut port 'PS_SRSTB' has an internal driver [/home/grcusrp/uhd/fpga/usrp3/top=
/e31x/e31x.v:543]</p><p>WARNING: [Synth 8-689] width (32) of port connectio=
n 'm_axi_eth_internal_araddr' does not match port width (31) of module 'e31=
x_ps_bd' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x.v:577]</p><p>WARNING: =
[Synth 8-689] width (32) of port connection 'm_axi_eth_internal_awaddr' doe=
s not match port width (31) of module 'e31x_ps_bd' [/home/grcusrp/uhd/fpga/=
usrp3/top/e31x/e31x.v:581]</p><p>WARNING: [Synth 8-689] width (1) of port c=
onnection 'm_axi_xbar_arprot' does not match port width (3) of module 'e31x=
_ps_bd' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x.v:611]</p><p>WARNING: [=
Synth 8-689] width (1) of port connection 'm_axi_xbar_awprot' does not matc=
h port width (3) of module 'e31x_ps_bd' [/home/grcusrp/uhd/fpga/usrp3/top/e=
31x/e31x.v:615]</p><p>WARNING: [Synth 8-7071] port 'CE' of module 'BUFR' is=
 unconnected for instance 'bufr_rx_clk' [/home/grcusrp/uhd/fpga/usrp3/top/e=
31x/e310_io.v:44]</p><p>WARNING: [Synth 8-7071] port 'CLR' of module 'BUFR'=
 is unconnected for instance 'bufr_rx_clk' [/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x/e310_io.v:44]</p><p>WARNING: [Synth 8-7023] instance 'bufr_rx_clk' o=
f module 'BUFR' has 4 connections declared, but only 2 given [/home/grcusrp=
/uhd/fpga/usrp3/top/e31x/e310_io.v:44]</p><p>WARNING: [Synth 8-7071] port '=
deepsleep' of module 'blk_mem_gen_v8_4_4' is unconnected for instance 'w_bu=
ffer' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_i=
nter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3d13/hdl/axi_dwidth_convert=
er_v2_1_vlsyn_rfs.v:10152]</p><p>WARNING: [Synth 8-7071] port 'shutdown' of=
 module 'blk_mem_gen_v8_4_4' is unconnected for instance 'w_buffer' [/home/=
grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128=
_bd/axi_inter_2x64_128_bd/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn=
_rfs.v:10152]</p><p>WARNING: [Synth 8-7071] port 'rsta_busy' of module 'blk=
_mem_gen_v8_4_4' is unconnected for instance 'w_buffer' [/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inte=
r_2x64_128_bd/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152=
]</p><p>WARNING: [Synth 8-7071] port 'rstb_busy' of module 'blk_mem_gen_v8_=
4_4' is unconnected for instance 'w_buffer' [/home/grcusrp/uhd/fpga/usrp3/t=
op/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_b=
d/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152]</p><p>WARN=
ING: [Synth 8-7023] instance 'w_buffer' of module 'blk_mem_gen_v8_4_4' has =
63 connections declared, but only 59 given [/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd=
/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10152]</p><p>WARNI=
NG: [Synth 8-7071] port 'aclk2x' of module 'axi_register_slice_v2_1_24_axi_=
register_slice' is unconnected for instance 's_aw_reg' [/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter=
_2x64_128_bd/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:10660]=
</p><p>WARNING: [Synth 8-7023] instance 's_aw_reg' of module 'axi_register_=
slice_v2_1_24_axi_register_slice' has 93 connections declared, but only 92 =
given [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_i=
nter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3d13/hdl/axi_dwidth_convert=
er_v2_1_vlsyn_rfs.v:10660]</p><p>WARNING: [Synth 8-7071] port 'aclk2x' of m=
odule 'axi_register_slice_v2_1_24_axi_register_slice' is unconnected for in=
stance 'si_register_slice_inst' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/buil=
d-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3=
d13/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v:7379]</p><p>WARNING: [Synth 8=
-7023] instance 'si_register_slice_inst' of module 'axi_register_slice_v2_1=
_24_axi_register_slice' has 93 connections declared, but only 92 given [/ho=
me/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_=
128_bd/axi_inter_2x64_128_bd/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vl=
syn_rfs.v:7379]</p><p>WARNING: [Synth 8-7071] port 'm_axi_awregion' of modu=
le 'axi_inter_2x64_128_bd_s00_width_conv_0' is unconnected for instance 's0=
0_width_conv' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484=
-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.=
v:574]</p><p>WARNING: [Synth 8-7071] port 'm_axi_arregion' of module 'axi_i=
nter_2x64_128_bd_s00_width_conv_0' is unconnected for instance 's00_width_c=
onv' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_in=
ter_2x64_128_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:574]</p=
><p>WARNING: [Synth 8-7023] instance 's00_width_conv' of module 'axi_inter_=
2x64_128_bd_s00_width_conv_0' has 78 connections declared, but only 76 give=
n [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter=
_2x64_128_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:574]</p><p=
>WARNING: [Synth 8-7071] port 'm_axi_awregion' of module 'axi_inter_2x64_12=
8_bd_s01_width_conv_0' is unconnected for instance 's01_width_conv' [/home/=
grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128=
_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:651]</p><p>WARNING:=
 [Synth 8-7071] port 'm_axi_arregion' of module 'axi_inter_2x64_128_bd_s01_=
width_conv_0' is unconnected for instance 's01_width_conv' [/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_i=
nter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:651]</p><p>WARNING: [Synth 8=
-7023] instance 's01_width_conv' of module 'axi_inter_2x64_128_bd_s01_width=
_conv_0' has 78 connections declared, but only 76 given [/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inte=
r_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:651]</p><p>WARNING: [Synth 8-70=
71] port 'aclk2x' of module 'axi_register_slice_v2_1_24_axi_register_slice'=
 is unconnected for instance 'reg_slice_mi' [/home/grcusrp/uhd/fpga/usrp3/t=
op/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_b=
d/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v:3122]</p><p>WARNING: [Synth =
8-7023] instance 'reg_slice_mi' of module 'axi_register_slice_v2_1_24_axi_r=
egister_slice' has 93 connections declared, but only 92 given [/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/ax=
i_inter_2x64_128_bd/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v:3122]</p><=
p>WARNING: [Synth 8-7071] port 'aclk2x' of module 'axi_register_slice_v2_1_=
24_axi_register_slice' is unconnected for instance 'reg_slice_mi' [/home/gr=
cusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_b=
d/axi_inter_2x64_128_bd/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v:3122]<=
/p><p>WARNING: [Synth 8-7023] instance 'reg_slice_mi' of module 'axi_regist=
er_slice_v2_1_24_axi_register_slice' has 93 connections declared, but only =
92 given [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/ax=
i_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/3917/hdl/axi_crossbar_v2=
_1_vl_rfs.v:3122]</p><p>WARNING: [Synth 8-7071] port 's_axi_bid' of module =
'axi_inter_2x64_128_bd_xbar_0' is unconnected for instance 'xbar' [/home/gr=
cusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_b=
d/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:728]</p><p>WARNING: [=
Synth 8-7071] port 's_axi_rid' of module 'axi_inter_2x64_128_bd_xbar_0' is =
unconnected for instance 'xbar' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/buil=
d-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/synth/axi_=
inter_2x64_128_bd.v:728]</p><p>WARNING: [Synth 8-7023] instance 'xbar' of m=
odule 'axi_inter_2x64_128_bd_xbar_0' has 78 connections declared, but only =
76 given [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/ax=
i_inter_2x64_128_bd/axi_inter_2x64_128_bd/synth/axi_inter_2x64_128_bd.v:728=
]</p><p>WARNING: [Synth 8-689] width (12) of port connection 'M00_AXI_arid'=
 does not match port width (1) of module 'axi_inter_2x64_128_bd' [/home/grc=
usrp/uhd/fpga/usrp3/top/e31x/e31x_dram.v:218]</p><p>WARNING: [Synth 8-689] =
width (12) of port connection 'M00_AXI_awid' does not match port width (1) =
of module 'axi_inter_2x64_128_bd' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e3=
1x_dram.v:230]</p><p>WARNING: [Synth 8-689] width (12) of port connection '=
M00_AXI_bid' does not match port width (1) of module 'axi_inter_2x64_128_bd=
' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_dram.v:239]</p><p>WARNING: [S=
ynth 8-689] width (12) of port connection 'M00_AXI_rid' does not match port=
 width (1) of module 'axi_inter_2x64_128_bd' [/home/grcusrp/uhd/fpga/usrp3/=
top/e31x/e31x_dram.v:244]</p><p>WARNING: [Synth 8-689] width (64) of port c=
onnection 'dram_axi_araddr' does not match port width (58) of module 'e31x_=
dram' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:766]</p><p>WARNING=
: [Synth 8-689] width (64) of port connection 'dram_axi_awaddr' does not ma=
tch port width (58) of module 'e31x_dram' [/home/grcusrp/uhd/fpga/usrp3/top=
/e31x/e31x_core.v:778]</p><p>WARNING: [Synth 8-7071] port 'time_increment' =
of module 'timekeeper' is unconnected for instance 'timekeeper_i' [/home/gr=
cusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:664]</p><p>WARNING: [Synth 8-7023=
] instance 'timekeeper_i' of module 'timekeeper' has 15 connections declare=
d, but only 14 given [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:664=
]</p><p>WARNING: [Synth 8-693] zero replication count - replication ignored=
 [/home/grcusrp/uhd/fpga/usrp3/lib/rfnoc/core/chdr_data_swapper.v:189]</p><=
p>WARNING: [Synth 8-693] zero replication count - replication ignored [/hom=
e/grcusrp/uhd/fpga/usrp3/lib/rfnoc/core/chdr_data_swapper.v:189]</p><p>WARN=
ING: [Synth 8-689] width (256) of port connection 'radio_rx_data' does not =
match port width (64) of module 'rfnoc_block_radio' [/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e310_rfnoc_image_core.v:620]</p><p>WARNING: [Synth 8-689] w=
idth (8) of port connection 'radio_rx_stb' does not match port width (2) of=
 module 'rfnoc_block_radio' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfn=
oc_image_core.v:621]</p><p>WARNING: [Synth 8-689] width (8) of port connect=
ion 'radio_rx_running' does not match port width (2) of module 'rfnoc_block=
_radio' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:622]=
</p><p>WARNING: [Synth 8-689] width (256) of port connection 'radio_tx_data=
' does not match port width (64) of module 'rfnoc_block_radio' [/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:623]</p><p>WARNING: [Syn=
th 8-689] width (8) of port connection 'radio_tx_stb' does not match port w=
idth (2) of module 'rfnoc_block_radio' [/home/grcusrp/uhd/fpga/usrp3/top/e3=
1x/e310_rfnoc_image_core.v:624]</p><p>WARNING: [Synth 8-689] width (8) of p=
ort connection 'radio_tx_running' does not match port width (2) of module '=
rfnoc_block_radio' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_=
core.v:625]</p><p>WARNING: [Synth 8-689] width (4) of port connection 'm_ax=
i_awid' does not match port width (2) of module 'rfnoc_block_replay' [/home=
/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:719]</p><p>WARNING=
: [Synth 8-689] width (192) of port connection 'm_axi_awaddr' does not matc=
h port width (60) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/e310_rfnoc_image_core.v:720]</p><p>WARNING: [Synth 8-689] widt=
h (32) of port connection 'm_axi_awlen' does not match port width (16) of m=
odule 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfno=
c_image_core.v:721]</p><p>WARNING: [Synth 8-689] width (12) of port connect=
ion 'm_axi_awsize' does not match port width (6) of module 'rfnoc_block_rep=
lay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:722]</p=
><p>WARNING: [Synth 8-689] width (8) of port connection 'm_axi_awburst' doe=
s not match port width (4) of module 'rfnoc_block_replay' [/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:723]</p><p>WARNING: [Synth 8-=
689] width (4) of port connection 'm_axi_awlock' does not match port width =
(2) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e=
310_rfnoc_image_core.v:724]</p><p>WARNING: [Synth 8-689] width (16) of port=
 connection 'm_axi_awcache' does not match port width (8) of module 'rfnoc_=
block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.=
v:725]</p><p>WARNING: [Synth 8-689] width (12) of port connection 'm_axi_aw=
prot' does not match port width (6) of module 'rfnoc_block_replay' [/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:726]</p><p>WARNING: =
[Synth 8-689] width (16) of port connection 'm_axi_awqos' does not match po=
rt width (8) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/t=
op/e31x/e310_rfnoc_image_core.v:727]</p><p>WARNING: [Synth 8-689] width (16=
) of port connection 'm_axi_awregion' does not match port width (8) of modu=
le 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_i=
mage_core.v:728]</p><p>WARNING: [Synth 8-689] width (4) of port connection =
'm_axi_awuser' does not match port width (2) of module 'rfnoc_block_replay'=
 [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:729]</p><p>=
WARNING: [Synth 8-689] width (4) of port connection 'm_axi_awvalid' does no=
t match port width (2) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fp=
ga/usrp3/top/e31x/e310_rfnoc_image_core.v:730]</p><p>WARNING: [Synth 8-689]=
 width (4) of port connection 'm_axi_awready' does not match port width (2)=
 of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310=
_rfnoc_image_core.v:731]</p><p>WARNING: [Synth 8-689] width (2048) of port =
connection 'm_axi_wdata' does not match port width (128) of module 'rfnoc_b=
lock_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v=
:732]</p><p>WARNING: [Synth 8-689] width (256) of port connection 'm_axi_ws=
trb' does not match port width (16) of module 'rfnoc_block_replay' [/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:733]</p><p>WARNING: =
[Synth 8-689] width (4) of port connection 'm_axi_wlast' does not match por=
t width (2) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x/e310_rfnoc_image_core.v:734]</p><p>WARNING: [Synth 8-689] width (4) =
of port connection 'm_axi_wuser' does not match port width (2) of module 'r=
fnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_=
core.v:735]</p><p>WARNING: [Synth 8-689] width (4) of port connection 'm_ax=
i_wvalid' does not match port width (2) of module 'rfnoc_block_replay' [/ho=
me/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:736]</p><p>WARNI=
NG: [Synth 8-689] width (4) of port connection 'm_axi_wready' does not matc=
h port width (2) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usr=
p3/top/e31x/e310_rfnoc_image_core.v:737]</p><p>WARNING: [Synth 8-689] width=
 (4) of port connection 'm_axi_bid' does not match port width (2) of module=
 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_ima=
ge_core.v:738]</p><p>WARNING: [Synth 8-689] width (8) of port connection 'm=
_axi_bresp' does not match port width (4) of module 'rfnoc_block_replay' [/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:739]</p><p>WAR=
NING: [Synth 8-689] width (4) of port connection 'm_axi_buser' does not mat=
ch port width (2) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/e310_rfnoc_image_core.v:740]</p><p>WARNING: [Synth 8-689] widt=
h (4) of port connection 'm_axi_bvalid' does not match port width (2) of mo=
dule 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc=
_image_core.v:741]</p><p>WARNING: [Synth 8-689] width (4) of port connectio=
n 'm_axi_bready' does not match port width (2) of module 'rfnoc_block_repla=
y' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:742]</p><=
p>WARNING: [Synth 8-689] width (4) of port connection 'm_axi_arid' does not=
 match port width (2) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpg=
a/usrp3/top/e31x/e310_rfnoc_image_core.v:743]</p><p>WARNING: [Synth 8-689] =
width (192) of port connection 'm_axi_araddr' does not match port width (60=
) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31=
0_rfnoc_image_core.v:744]</p><p>WARNING: [Synth 8-689] width (32) of port c=
onnection 'm_axi_arlen' does not match port width (16) of module 'rfnoc_blo=
ck_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:7=
45]</p><p>WARNING: [Synth 8-689] width (12) of port connection 'm_axi_arsiz=
e' does not match port width (6) of module 'rfnoc_block_replay' [/home/grcu=
srp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:746]</p><p>WARNING: [Sy=
nth 8-689] width (8) of port connection 'm_axi_arburst' does not match port=
 width (4) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top=
/e31x/e310_rfnoc_image_core.v:747]</p><p>WARNING: [Synth 8-689] width (4) o=
f port connection 'm_axi_arlock' does not match port width (2) of module 'r=
fnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_=
core.v:748]</p><p>WARNING: [Synth 8-689] width (16) of port connection 'm_a=
xi_arcache' does not match port width (8) of module 'rfnoc_block_replay' [/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:749]</p><p>WAR=
NING: [Synth 8-689] width (12) of port connection 'm_axi_arprot' does not m=
atch port width (6) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/=
usrp3/top/e31x/e310_rfnoc_image_core.v:750]</p><p>WARNING: [Synth 8-689] wi=
dth (16) of port connection 'm_axi_arqos' does not match port width (8) of =
module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfn=
oc_image_core.v:751]</p><p>WARNING: [Synth 8-689] width (16) of port connec=
tion 'm_axi_arregion' does not match port width (8) of module 'rfnoc_block_=
replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:752]=
</p><p>WARNING: [Synth 8-689] width (4) of port connection 'm_axi_aruser' d=
oes not match port width (2) of module 'rfnoc_block_replay' [/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:753]</p><p>WARNING: [Synth =
8-689] width (4) of port connection 'm_axi_arvalid' does not match port wid=
th (2) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31=
x/e310_rfnoc_image_core.v:754]</p><p>WARNING: [Synth 8-689] width (4) of po=
rt connection 'm_axi_arready' does not match port width (2) of module 'rfno=
c_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_cor=
e.v:755]</p><p>WARNING: [Synth 8-689] width (4) of port connection 'm_axi_r=
id' does not match port width (2) of module 'rfnoc_block_replay' [/home/grc=
usrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:756]</p><p>WARNING: [S=
ynth 8-689] width (2048) of port connection 'm_axi_rdata' does not match po=
rt width (128) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3=
/top/e31x/e310_rfnoc_image_core.v:757]</p><p>WARNING: [Synth 8-689] width (=
8) of port connection 'm_axi_rresp' does not match port width (4) of module=
 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_ima=
ge_core.v:758]</p><p>WARNING: [Synth 8-689] width (4) of port connection 'm=
_axi_rlast' does not match port width (2) of module 'rfnoc_block_replay' [/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:759]</p><p>WAR=
NING: [Synth 8-689] width (4) of port connection 'm_axi_ruser' does not mat=
ch port width (2) of module 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/us=
rp3/top/e31x/e310_rfnoc_image_core.v:760]</p><p>WARNING: [Synth 8-689] widt=
h (4) of port connection 'm_axi_rvalid' does not match port width (2) of mo=
dule 'rfnoc_block_replay' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc=
_image_core.v:761]</p><p>WARNING: [Synth 8-689] width (4) of port connectio=
n 'm_axi_rready' does not match port width (2) of module 'rfnoc_block_repla=
y' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e310_rfnoc_image_core.v:762]</p><=
p>WARNING: [Synth 8-689] width (2) of port connection 'radio_rx_running' do=
es not match port width (8) of module 'rfnoc_image_core' [/home/grcusrp/uhd=
/fpga/usrp3/top/e31x/e31x_core.v:839]</p><p>WARNING: [Synth 8-689] width (6=
4) of port connection 'radio_tx_data' does not match port width (256) of mo=
dule 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:=
841]</p><p>WARNING: [Synth 8-689] width (2) of port connection 'radio_tx_ru=
nning' does not match port width (8) of module 'rfnoc_image_core' [/home/gr=
cusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:842]</p><p>WARNING: [Synth 8-689]=
 width (2) of port connection 'm_axi_awid' does not match port width (4) of=
 module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core=
.v:844]</p><p>WARNING: [Synth 8-689] width (64) of port connection 'm_axi_a=
waddr' does not match port width (192) of module 'rfnoc_image_core' [/home/=
grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:845]</p><p>WARNING: [Synth 8-68=
9] width (16) of port connection 'm_axi_awlen' does not match port width (3=
2) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x=
_core.v:846]</p><p>WARNING: [Synth 8-689] width (6) of port connection 'm_a=
xi_awsize' does not match port width (12) of module 'rfnoc_image_core' [/ho=
me/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:847]</p><p>WARNING: [Synth 8=
-689] width (4) of port connection 'm_axi_awburst' does not match port widt=
h (8) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e=
31x_core.v:848]</p><p>WARNING: [Synth 8-689] width (2) of port connection '=
m_axi_awlock' does not match port width (4) of module 'rfnoc_image_core' [/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:849]</p><p>WARNING: [Synth=
 8-689] width (8) of port connection 'm_axi_awcache' does not match port wi=
dth (16) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31=
x/e31x_core.v:850]</p><p>WARNING: [Synth 8-689] width (6) of port connectio=
n 'm_axi_awprot' does not match port width (12) of module 'rfnoc_image_core=
' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:851]</p><p>WARNING: [S=
ynth 8-689] width (8) of port connection 'm_axi_awqos' does not match port =
width (16) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e=
31x/e31x_core.v:852]</p><p>WARNING: [Synth 8-689] width (8) of port connect=
ion 'm_axi_awregion' does not match port width (16) of module 'rfnoc_image_=
core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:853]</p><p>WARNING=
: [Synth 8-689] width (2) of port connection 'm_axi_awvalid' does not match=
 port width (4) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/=
top/e31x/e31x_core.v:855]</p><p>WARNING: [Synth 8-689] width (128) of port =
connection 'm_axi_wdata' does not match port width (2048) of module 'rfnoc_=
image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:857]</p><p>W=
ARNING: [Synth 8-689] width (16) of port connection 'm_axi_wstrb' does not =
match port width (256) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e31x_core.v:858]</p><p>WARNING: [Synth 8-689] width (2) of =
port connection 'm_axi_wlast' does not match port width (4) of module 'rfno=
c_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:859]</p><p=
>WARNING: [Synth 8-689] width (2) of port connection 'm_axi_wvalid' does no=
t match port width (4) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga=
/usrp3/top/e31x/e31x_core.v:861]</p><p>WARNING: [Synth 8-689] width (2) of =
port connection 'm_axi_bready' does not match port width (4) of module 'rfn=
oc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:867]</p><=
p>WARNING: [Synth 8-689] width (2) of port connection 'm_axi_arid' does not=
 match port width (4) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/=
usrp3/top/e31x/e31x_core.v:868]</p><p>WARNING: [Synth 8-689] width (64) of =
port connection 'm_axi_araddr' does not match port width (192) of module 'r=
fnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:869]</p=
><p>WARNING: [Synth 8-689] width (16) of port connection 'm_axi_arlen' does=
 not match port width (32) of module 'rfnoc_image_core' [/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/e31x_core.v:870]</p><p>WARNING: [Synth 8-689] width (6)=
 of port connection 'm_axi_arsize' does not match port width (12) of module=
 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:871]=
</p><p>WARNING: [Synth 8-689] width (4) of port connection 'm_axi_arburst' =
does not match port width (8) of module 'rfnoc_image_core' [/home/grcusrp/u=
hd/fpga/usrp3/top/e31x/e31x_core.v:872]</p><p>WARNING: [Synth 8-689] width =
(2) of port connection 'm_axi_arlock' does not match port width (4) of modu=
le 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:87=
3]</p><p>WARNING: [Synth 8-689] width (8) of port connection 'm_axi_arcache=
' does not match port width (16) of module 'rfnoc_image_core' [/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/e31x_core.v:874]</p><p>WARNING: [Synth 8-689] wid=
th (6) of port connection 'm_axi_arprot' does not match port width (12) of =
module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.=
v:875]</p><p>WARNING: [Synth 8-689] width (8) of port connection 'm_axi_arq=
os' does not match port width (16) of module 'rfnoc_image_core' [/home/grcu=
srp/uhd/fpga/usrp3/top/e31x/e31x_core.v:876]</p><p>WARNING: [Synth 8-689] w=
idth (8) of port connection 'm_axi_arregion' does not match port width (16)=
 of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_c=
ore.v:877]</p><p>WARNING: [Synth 8-689] width (2) of port connection 'm_axi=
_arvalid' does not match port width (4) of module 'rfnoc_image_core' [/home=
/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_core.v:879]</p><p>WARNING: [Synth 8-6=
89] width (2) of port connection 'm_axi_rready' does not match port width (=
4) of module 'rfnoc_image_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x=
_core.v:887]</p><p>WARNING: [Synth 8-689] width (32) of port connection 's_=
axi_awaddr' does not match port width (14) of module 'e31x_core' [/home/grc=
usrp/uhd/fpga/usrp3/top/e31x/e31x.v:893]</p><p>WARNING: [Synth 8-689] width=
 (32) of port connection 's_axi_araddr' does not match port width (14) of m=
odule 'e31x_core' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x.v:906]</p><p>=
WARNING: [Synth 8-689] width (6) of port connection 'occupied' does not mat=
ch port width (16) of module 'axi_fifo_bram__parameterized10' [/home/grcusr=
p/uhd/fpga/usrp3/top/e31x/axi_pmu.v:167]</p><p>WARNING: [Synth 8-689] width=
 (6) of port connection 'space' does not match port width (16) of module 'a=
xi_fifo_bram__parameterized10' [/home/grcusrp/uhd/fpga/usrp3/top/e31x/axi_p=
mu.v:168]</p><p>[00:01:14] Current task: Synthesis +++ Current Phase: Start=
ing</p><p>CRITICAL WARNING: [Netlist 29-160] Cannot set property 'iostandar=
d', because the property does not exist for objects of type 'pin'. [/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.x=
dc:405]</p><p>CRITICAL WARNING: [Netlist 29-160] Cannot set property 'PACKA=
GE_PIN', because the property does not exist for objects of type 'pin'. [/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31=
x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_=
0_0.xdc:406]</p><p>CRITICAL WARNING: [Netlist 29-160] Cannot set property '=
slew', because the property does not exist for objects of type 'pin'. [/hom=
e/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_=
ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_=
0.xdc:407]</p><p>CRITICAL WARNING: [Netlist 29-160] Cannot set property 'PI=
O_DIRECTION', because the property does not exist for objects of type 'pin'=
. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_b=
d/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_sys=
tem7_0_0.xdc:408]</p><p>CRITICAL WARNING: [Netlist 29-160] Cannot set prope=
rty 'iostandard', because the property does not exist for objects of type '=
pin'. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_=
ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing=
_system7_0_0.xdc:417]</p><p>CRITICAL WARNING: [Netlist 29-160] Cannot set p=
roperty 'PACKAGE_PIN', because the property does not exist for objects of t=
ype 'pin'. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/=
e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_proce=
ssing_system7_0_0.xdc:418]</p><p>CRITICAL WARNING: [Netlist 29-160] Cannot =
set property 'slew', because the property does not exist for objects of typ=
e 'pin'. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e3=
1x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_process=
ing_system7_0_0.xdc:419]</p><p>CRITICAL WARNING: [Netlist 29-160] Cannot se=
t property 'PIO_DIRECTION', because the property does not exist for objects=
 of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg4=
84-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_=
processing_system7_0_0.xdc:420]</p><p>WARNING: [Vivado 12-4702] slew is not=
 a supported property on input port(s). Setting is ignored. [/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e=
31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:691]=
</p><p>WARNING: [Vivado 12-4702] slew is not a supported property on input =
port(s). Setting is ignored. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-i=
p/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_=
0/e31x_ps_bd_processing_system7_0_0.xdc:694]</p><p>WARNING: [Vivado 12-4702=
] slew is not a supported property on input port(s). Setting is ignored. [/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7=
_0_0.xdc:697]</p><p>CRITICAL WARNING: [Constraints 18-1056] Clock 'bus_clk'=
 completely overrides clock 'clk_fpga_0'.</p><p>CRITICAL WARNING: [Constrai=
nts 18-1056] Clock 'clk40' completely overrides clock 'clk_fpga_1'.</p><p>W=
ARNING: [Vivado 12-508] No pins matched 'get_pins -hierarchical -filter {NA=
ME =3D~ */synchronizer_false_path/stages[0].value_reg[0][*]/S}'. [/home/grc=
usrp/uhd/fpga/usrp3/top/e31x/e31x_timing.xdc:141]</p><p>WARNING: [Project 1=
-498] One or more constraints failed evaluation while reading constraint fi=
le [/home/grcusrp/uhd/fpga/usrp3/top/e31x/e31x_timing.xdc] and the design c=
ontains unresolved black boxes. These constraints will be read post-synthes=
is (as long as their source constraint file is marked as used_in_implementa=
tion) and should be applied correctly then. You should review the constrain=
ts listed in the file [.Xil/e31x_propImpl.xdc] and check the run log file t=
o verify that these constraints were correctly applied.</p><p>WARNING: [XPM=
_CDC_GRAY: TCL-1000] The source and destination clocks are the same.</p><p>=
WARNING: [XPM_CDC_GRAY: TCL-1000] The source and destination clocks are the=
 same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source and destination c=
locks are the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source and =
destination clocks are the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] Th=
e source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_GRAY:=
 TCL-1000] The source and destination clocks are the same.</p><p>WARNING: [=
XPM_CDC_GRAY: TCL-1000] The source and destination clocks are the same.</p>=
<p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source and destination clocks are =
the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source and destinatio=
n clocks are the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source a=
nd destination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-=
1000] The source and destination clocks are the same.</p><p>WARNING: [XPM_C=
DC_HANDSHAKE: TCL-1000] The source and destination clocks are the same.</p>=
<p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clocks=
 are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and =
destination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-100=
0] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_=
HANDSHAKE: TCL-1000] The source and destination clocks are the same.</p><p>=
WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clocks ar=
e the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and des=
tination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] =
The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_HAN=
DSHAKE: TCL-1000] The source and destination clocks are the same.</p><p>WAR=
NING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clocks are t=
he same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destin=
ation clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The=
 source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSH=
AKE: TCL-1000] The source and destination clocks are the same.</p><p>WARNIN=
G: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clocks are the =
same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destinati=
on clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The so=
urce and destination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE=
: TCL-1000] The source and destination clocks are the same.</p><p>WARNING: =
[XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clocks are the sam=
e.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination =
clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source a=
nd destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-100=
0] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_=
SINGLE: TCL-1000] The source and destination clocks are the same.</p><p>WAR=
NING: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the =
same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination =
clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source a=
nd destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-100=
0] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_=
SINGLE: TCL-1000] The source and destination clocks are the same.</p><p>WAR=
NING: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the =
same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination =
clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source a=
nd destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-100=
0] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_=
SINGLE: TCL-1000] The source and destination clocks are the same.</p><p>WAR=
NING: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the =
same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination =
clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source a=
nd destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-100=
0] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_=
SINGLE: TCL-1000] The source and destination clocks are the same.</p><p>WAR=
NING: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the =
same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination =
clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source a=
nd destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-100=
0] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_=
SINGLE: TCL-1000] The source and destination clocks are the same.</p><p>WAR=
NING: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the =
same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination =
clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source a=
nd destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-100=
0] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_=
SINGLE: TCL-1000] The source and destination clocks are the same.</p><p>WAR=
NING: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the =
same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination =
clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source a=
nd destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-100=
0] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_=
SINGLE: TCL-1000] The source and destination clocks are the same.</p><p>WAR=
NING: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the =
same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination =
clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source a=
nd destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-100=
0] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_=
SINGLE: TCL-1000] The source and destination clocks are the same.</p><p>WAR=
NING: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the =
same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination =
clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source a=
nd destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-100=
0] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_=
SINGLE: TCL-1000] The source and destination clocks are the same.</p><p>WAR=
NING: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the =
same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination =
clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source a=
nd destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-100=
0] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_=
SINGLE: TCL-1000] The source and destination clocks are the same.</p><p>WAR=
NING: [XPM_CDC_SINGLE: TCL-1000] The source and destination clocks are the =
same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source and destination =
clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The source a=
nd destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-100=
0] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_=
SINGLE: TCL-1000] The source and destination clocks are the same.</p><p>WAR=
NING: [Vivado 12-180] No cells matched 'get_cells -hier -filter {PRIMITIVE_=
SUBGROUP=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBGROUP=
=3D=3Duram || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. [/tools/Xilinx/Vivado/2021.1/=
data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl:3]</p><p>WARNING: [Vivado 12-=
180] No cells matched 'get_cells -hier -filter {PRIMITIVE_SUBGROUP=3D=3DLUT=
RAM || PRIMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBGROUP=3D=3Duram || PRIM=
ITIVE_SUBGROUP=3D=3DBRAM}'. [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_me=
mory/tcl/xpm_memory_xdc.tcl:3]</p><p>WARNING: [Vivado 12-180] No cells matc=
hed 'get_cells -hier -filter {PRIMITIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIVE_S=
UBGROUP=3D=3Ddram || PRIMITIVE_SUBGROUP=3D=3Duram || PRIMITIVE_SUBGROUP=3D=
=3DBRAM}'. [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/tcl/xpm_memo=
ry_xdc.tcl:3]</p><p>WARNING: [Vivado 12-180] No cells matched 'get_cells -h=
ier -filter {PRIMITIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Ddram=
 || PRIMITIVE_SUBGROUP=3D=3Duram || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. [/tools=
/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl:3]</p><=
p>WARNING: [Vivado 12-180] No cells matched 'get_cells -hier -filter {PRIMI=
TIVE_SUBGROUP=3D=3DLUTRAM || PRIMITIVE_SUBGROUP=3D=3Ddram || PRIMITIVE_SUBG=
ROUP=3D=3Duram || PRIMITIVE_SUBGROUP=3D=3DBRAM}'. [/tools/Xilinx/Vivado/202=
1.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl:3]</p><p>WARNING: [Timing=
 38-316] Clock period '10.000' specified during out-of-context synthesis of=
 instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i=
/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_section[0].impl_srl_i' =
at clock pin 'rd_clk' is different from the actual clock period '5.000', th=
is can lead to different synthesis results.</p><p>WARNING: [Timing 38-316] =
Clock period '10.000' specified during out-of-context synthesis of instance=
 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/ctrlport=
_endpoint_i/gen_async_fifos.out_fifo_i/fifo_section[0].impl_srl_i' at clock=
 pin 'wr_clk' is different from the actual clock period '5.000', this can l=
ead to different synthesis results.</p><p>WARNING: [Timing 38-316] Clock pe=
riod '10.000' specified during out-of-context synthesis of instance 'e31x_c=
ore_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_input_in[0].=
chdr_to_axis_data_in_in/flush_2clk_ctrl_i/fifo_section[0].impl_srl_i' at cl=
ock pin 'rd_clk' is different from the actual clock period '5.000', this ca=
n lead to different synthesis results.</p><p>WARNING: [Timing 38-316] Clock=
 period '10.000' specified during out-of-context synthesis of instance 'e31=
x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_input_in[=
0].chdr_to_axis_data_in_in/gen_async_info_fifo.info_fifo_i/fifo_section[0].=
impl_srl_i' at clock pin 'rd_clk' is different from the actual clock period=
 '5.000', this can lead to different synthesis results.</p><p>WARNING: [Tim=
ing 38-316] Clock period '10.000' specified during out-of-context synthesis=
 of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_repla=
y_i/gen_input_in[0].chdr_to_axis_data_in_in/gen_async_info_fifo.info_fifo_i=
/fifo_section[1].impl_srl_i' at clock pin 'rd_clk' is different from the ac=
tual clock period '5.000', this can lead to different synthesis results.</p=
><p>WARNING: [Timing 38-316] Clock period '10.000' specified during out-of-=
context synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_=
1/noc_shell_replay_i/gen_input_in[0].chdr_to_axis_data_in_in/no_gen_axis_wi=
dth_conv.gen_async_pyld_fifo.pyld_fifo_i/fifo_section[0].impl_srl_i' at clo=
ck pin 'rd_clk' is different from the actual clock period '5.000', this can=
 lead to different synthesis results.</p><p>WARNING: [Timing 38-316] Clock =
period '10.000' specified during out-of-context synthesis of instance 'e31x=
_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_input_in[1=
].chdr_to_axis_data_in_in/flush_2clk_ctrl_i/fifo_section[0].impl_srl_i' at =
clock pin 'rd_clk' is different from the actual clock period '5.000', this =
can lead to different synthesis results.</p><p>WARNING: [Timing 38-316] Clo=
ck period '10.000' specified during out-of-context synthesis of instance 'e=
31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_input_i=
n[1].chdr_to_axis_data_in_in/gen_async_info_fifo.info_fifo_i/fifo_section[0=
].impl_srl_i' at clock pin 'rd_clk' is different from the actual clock peri=
od '5.000', this can lead to different synthesis results.</p><p>WARNING: [T=
iming 38-316] Clock period '10.000' specified during out-of-context synthes=
is of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_rep=
lay_i/gen_input_in[1].chdr_to_axis_data_in_in/gen_async_info_fifo.info_fifo=
_i/fifo_section[1].impl_srl_i' at clock pin 'rd_clk' is different from the =
actual clock period '5.000', this can lead to different synthesis results.<=
/p><p>WARNING: [Timing 38-316] Clock period '10.000' specified during out-o=
f-context synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay=
0_1/noc_shell_replay_i/gen_input_in[1].chdr_to_axis_data_in_in/no_gen_axis_=
width_conv.gen_async_pyld_fifo.pyld_fifo_i/fifo_section[0].impl_srl_i' at c=
lock pin 'rd_clk' is different from the actual clock period '5.000', this c=
an lead to different synthesis results.</p><p>WARNING: [Timing 38-316] Cloc=
k period '10.000' specified during out-of-context synthesis of instance 'e3=
1x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_o=
ut[0].axis_data_to_chdr_out_out/gen_async_info_fifo.pkt_info_fifo/fifo_sect=
ion[0].impl_srl_i' at clock pin 'wr_clk' is different from the actual clock=
 period '5.000', this can lead to different synthesis results.</p><p>WARNIN=
G: [Timing 38-316] Clock period '10.000' specified during out-of-context sy=
nthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shel=
l_replay_i/gen_output_out[0].axis_data_to_chdr_out_out/gen_async_info_fifo.=
pkt_info_fifo/fifo_section[1].impl_srl_i' at clock pin 'wr_clk' is differen=
t from the actual clock period '5.000', this can lead to different synthesi=
s results.</p><p>WARNING: [Timing 38-316] Clock period '10.000' specified d=
uring out-of-context synthesis of instance 'e31x_core_inst/rfnoc_image_core=
_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0].axis_data_to_chdr_out_o=
ut/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section[0].imp=
l_bram_i' at clock pin 'wr_clk' is different from the actual clock period '=
5.000', this can lead to different synthesis results.</p><p>WARNING: [Timin=
g 38-316] Clock period '10.000' specified during out-of-context synthesis o=
f instance 'e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_=
i/gen_output_out[1].axis_data_to_chdr_out_out/gen_async_info_fifo.pkt_info_=
fifo/fifo_section[0].impl_srl_i' at clock pin 'wr_clk' is different from th=
e actual clock period '5.000', this can lead to different synthesis results=
.</p><p>WARNING: [Timing 38-316] Clock period '10.000' specified during out=
-of-context synthesis of instance 'e31x_core_inst/rfnoc_image_core_i/b_repl=
ay0_1/noc_shell_replay_i/gen_output_out[1].axis_data_to_chdr_out_out/gen_as=
ync_info_fifo.pkt_info_fifo/fifo_section[1].impl_srl_i' at clock pin 'wr_cl=
k' is different from the actual clock period '5.000', this can lead to diff=
erent synthesis results.</p><p>WARNING: [Timing 38-316] Clock period '10.00=
0' specified during out-of-context synthesis of instance 'e31x_core_inst/rf=
noc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[1].axis_data=
_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_=
section[0].impl_bram_i' at clock pin 'wr_clk' is different from the actual =
clock period '5.000', this can lead to different synthesis results.</p><p>[=
00:03:00] Current task: Synthesis +++ Current Phase: Handling Custom Attrib=
utes</p><p>[00:03:01] Current task: Synthesis +++ Current Phase: RTL Compon=
ent Statistics</p><p>[00:03:01] Current task: Synthesis +++ Current Phase: =
Part Resource Summary</p><p>WARNING: [Synth 8-7129] Port rsta in module xpm=
_memory_base__parameterized5 is either unconnected or has no load</p><p>WAR=
NING: [Synth 8-7129] Port regcea in module xpm_memory_base__parameterized5 =
is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port inj=
ectsbiterra in module xpm_memory_base__parameterized5 is either unconnected=
 or has no load</p><p>WARNING: [Synth 8-7129] Port injectdbiterra in module=
 xpm_memory_base__parameterized5 is either unconnected or has no load</p><p=
>WARNING: [Synth 8-7129] Port clkb in module xpm_memory_base__parameterized=
5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port r=
egceb in module xpm_memory_base__parameterized5 is either unconnected or ha=
s no load</p><p>WARNING: [Synth 8-7129] Port web[0] in module xpm_memory_ba=
se__parameterized5 is either unconnected or has no load</p><p>WARNING: [Syn=
th 8-7129] Port dinb[69] in module xpm_memory_base__parameterized5 is eithe=
r unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[68] in=
 module xpm_memory_base__parameterized5 is either unconnected or has no loa=
d</p><p>WARNING: [Synth 8-7129] Port dinb[67] in module xpm_memory_base__pa=
rameterized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7=
129] Port dinb[66] in module xpm_memory_base__parameterized5 is either unco=
nnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[65] in modul=
e xpm_memory_base__parameterized5 is either unconnected or has no load</p><=
p>WARNING: [Synth 8-7129] Port dinb[64] in module xpm_memory_base__paramete=
rized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] P=
ort dinb[63] in module xpm_memory_base__parameterized5 is either unconnecte=
d or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[62] in module xpm_=
memory_base__parameterized5 is either unconnected or has no load</p><p>WARN=
ING: [Synth 8-7129] Port dinb[61] in module xpm_memory_base__parameterized5=
 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port di=
nb[60] in module xpm_memory_base__parameterized5 is either unconnected or h=
as no load</p><p>WARNING: [Synth 8-7129] Port dinb[59] in module xpm_memory=
_base__parameterized5 is either unconnected or has no load</p><p>WARNING: [=
Synth 8-7129] Port dinb[58] in module xpm_memory_base__parameterized5 is ei=
ther unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[57]=
 in module xpm_memory_base__parameterized5 is either unconnected or has no =
load</p><p>WARNING: [Synth 8-7129] Port dinb[56] in module xpm_memory_base_=
_parameterized5 is either unconnected or has no load</p><p>WARNING: [Synth =
8-7129] Port dinb[55] in module xpm_memory_base__parameterized5 is either u=
nconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[54] in mo=
dule xpm_memory_base__parameterized5 is either unconnected or has no load</=
p><p>WARNING: [Synth 8-7129] Port dinb[53] in module xpm_memory_base__param=
eterized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129=
] Port dinb[52] in module xpm_memory_base__parameterized5 is either unconne=
cted or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[51] in module x=
pm_memory_base__parameterized5 is either unconnected or has no load</p><p>W=
ARNING: [Synth 8-7129] Port dinb[50] in module xpm_memory_base__parameteriz=
ed5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port=
 dinb[49] in module xpm_memory_base__parameterized5 is either unconnected o=
r has no load</p><p>WARNING: [Synth 8-7129] Port dinb[48] in module xpm_mem=
ory_base__parameterized5 is either unconnected or has no load</p><p>WARNING=
: [Synth 8-7129] Port dinb[47] in module xpm_memory_base__parameterized5 is=
 either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[=
46] in module xpm_memory_base__parameterized5 is either unconnected or has =
no load</p><p>WARNING: [Synth 8-7129] Port dinb[45] in module xpm_memory_ba=
se__parameterized5 is either unconnected or has no load</p><p>WARNING: [Syn=
th 8-7129] Port dinb[44] in module xpm_memory_base__parameterized5 is eithe=
r unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[43] in=
 module xpm_memory_base__parameterized5 is either unconnected or has no loa=
d</p><p>WARNING: [Synth 8-7129] Port dinb[42] in module xpm_memory_base__pa=
rameterized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7=
129] Port dinb[41] in module xpm_memory_base__parameterized5 is either unco=
nnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[40] in modul=
e xpm_memory_base__parameterized5 is either unconnected or has no load</p><=
p>WARNING: [Synth 8-7129] Port dinb[39] in module xpm_memory_base__paramete=
rized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] P=
ort dinb[38] in module xpm_memory_base__parameterized5 is either unconnecte=
d or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[37] in module xpm_=
memory_base__parameterized5 is either unconnected or has no load</p><p>WARN=
ING: [Synth 8-7129] Port dinb[36] in module xpm_memory_base__parameterized5=
 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port di=
nb[35] in module xpm_memory_base__parameterized5 is either unconnected or h=
as no load</p><p>WARNING: [Synth 8-7129] Port dinb[34] in module xpm_memory=
_base__parameterized5 is either unconnected or has no load</p><p>WARNING: [=
Synth 8-7129] Port dinb[33] in module xpm_memory_base__parameterized5 is ei=
ther unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[32]=
 in module xpm_memory_base__parameterized5 is either unconnected or has no =
load</p><p>WARNING: [Synth 8-7129] Port dinb[31] in module xpm_memory_base_=
_parameterized5 is either unconnected or has no load</p><p>WARNING: [Synth =
8-7129] Port dinb[30] in module xpm_memory_base__parameterized5 is either u=
nconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[29] in mo=
dule xpm_memory_base__parameterized5 is either unconnected or has no load</=
p><p>WARNING: [Synth 8-7129] Port dinb[28] in module xpm_memory_base__param=
eterized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129=
] Port dinb[27] in module xpm_memory_base__parameterized5 is either unconne=
cted or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[26] in module x=
pm_memory_base__parameterized5 is either unconnected or has no load</p><p>W=
ARNING: [Synth 8-7129] Port dinb[25] in module xpm_memory_base__parameteriz=
ed5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port=
 dinb[24] in module xpm_memory_base__parameterized5 is either unconnected o=
r has no load</p><p>WARNING: [Synth 8-7129] Port dinb[23] in module xpm_mem=
ory_base__parameterized5 is either unconnected or has no load</p><p>WARNING=
: [Synth 8-7129] Port dinb[22] in module xpm_memory_base__parameterized5 is=
 either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[=
21] in module xpm_memory_base__parameterized5 is either unconnected or has =
no load</p><p>WARNING: [Synth 8-7129] Port dinb[20] in module xpm_memory_ba=
se__parameterized5 is either unconnected or has no load</p><p>WARNING: [Syn=
th 8-7129] Port dinb[19] in module xpm_memory_base__parameterized5 is eithe=
r unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[18] in=
 module xpm_memory_base__parameterized5 is either unconnected or has no loa=
d</p><p>WARNING: [Synth 8-7129] Port dinb[17] in module xpm_memory_base__pa=
rameterized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7=
129] Port dinb[16] in module xpm_memory_base__parameterized5 is either unco=
nnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[15] in modul=
e xpm_memory_base__parameterized5 is either unconnected or has no load</p><=
p>WARNING: [Synth 8-7129] Port dinb[14] in module xpm_memory_base__paramete=
rized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] P=
ort dinb[13] in module xpm_memory_base__parameterized5 is either unconnecte=
d or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[12] in module xpm_=
memory_base__parameterized5 is either unconnected or has no load</p><p>WARN=
ING: [Synth 8-7129] Port dinb[11] in module xpm_memory_base__parameterized5=
 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port di=
nb[10] in module xpm_memory_base__parameterized5 is either unconnected or h=
as no load</p><p>WARNING: [Synth 8-7129] Port dinb[9] in module xpm_memory_=
base__parameterized5 is either unconnected or has no load</p><p>WARNING: [S=
ynth 8-7129] Port dinb[8] in module xpm_memory_base__parameterized5 is eith=
er unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[7] in=
 module xpm_memory_base__parameterized5 is either unconnected or has no loa=
d</p><p>WARNING: [Synth 8-7129] Port dinb[6] in module xpm_memory_base__par=
ameterized5 is either unconnected or has no load</p><p>WARNING: [Synth 8-71=
29] Port dinb[5] in module xpm_memory_base__parameterized5 is either unconn=
ected or has no load</p><p>WARNING: [Synth 8-7129] Port dinb[4] in module x=
pm_memory_base__parameterized5 is either unconnected or has no load</p><p>W=
ARNING: [Synth 8-7129] Port dinb[3] in module xpm_memory_base__parameterize=
d5 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port =
dinb[2] in module xpm_memory_base__parameterized5 is either unconnected or =
has no load</p><p>WARNING: [Synth 8-7129] Port dinb[1] in module xpm_memory=
_base__parameterized5 is either unconnected or has no load</p><p>WARNING: [=
Synth 8-7129] Port dinb[0] in module xpm_memory_base__parameterized5 is eit=
her unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port injectsbi=
terrb in module xpm_memory_base__parameterized5 is either unconnected or ha=
s no load</p><p>WARNING: [Synth 8-7129] Port injectdbiterrb in module xpm_m=
emory_base__parameterized5 is either unconnected or has no load</p><p>WARNI=
NG: [Synth 8-7129] Port s_sc_req[0] in module sc_node_v1_0_13_top__paramete=
rized3 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] P=
ort s_sc_info[0] in module sc_node_v1_0_13_top__parameterized3 is either un=
connected or has no load</p><p>WARNING: [Synth 8-7129] Port s_sc_payld[0] i=
n module sc_node_v1_0_13_top__parameterized3 is either unconnected or has n=
o load</p><p>WARNING: [Synth 8-7129] Port m_sc_aclken in module sc_node_v1_=
0_13_top__parameterized3 is either unconnected or has no load</p><p>WARNING=
: [Synth 8-7129] Port m_axis_arb_tready in module sc_node_v1_0_13_top__para=
meterized3 is either unconnected or has no load</p><p>WARNING: [Synth 8-712=
9] Port s_axis_arb_tvalid in module sc_node_v1_0_13_top__parameterized3 is =
either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port s_axis=
_arb_tdata[15] in module sc_node_v1_0_13_top__parameterized3 is either unco=
nnected or has no load</p><p>WARNING: [Synth 8-7129] Port s_axis_arb_tdata[=
14] in module sc_node_v1_0_13_top__parameterized3 is either unconnected or =
has no load</p><p>WARNING: [Synth 8-7129] Port s_axis_arb_tdata[13] in modu=
le sc_node_v1_0_13_top__parameterized3 is either unconnected or has no load=
</p><p>WARNING: [Synth 8-7129] Port s_axis_arb_tdata[12] in module sc_node_=
v1_0_13_top__parameterized3 is either unconnected or has no load</p><p>WARN=
ING: [Synth 8-7129] Port s_axis_arb_tdata[11] in module sc_node_v1_0_13_top=
__parameterized3 is either unconnected or has no load</p><p>WARNING: [Synth=
 8-7129] Port s_axis_arb_tdata[10] in module sc_node_v1_0_13_top__parameter=
ized3 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Po=
rt s_axis_arb_tdata[9] in module sc_node_v1_0_13_top__parameterized3 is eit=
her unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port s_axis_ar=
b_tdata[8] in module sc_node_v1_0_13_top__parameterized3 is either unconnec=
ted or has no load</p><p>WARNING: [Synth 8-7129] Port s_axis_arb_tdata[7] i=
n module sc_node_v1_0_13_top__parameterized3 is either unconnected or has n=
o load</p><p>WARNING: [Synth 8-7129] Port s_axis_arb_tdata[6] in module sc_=
node_v1_0_13_top__parameterized3 is either unconnected or has no load</p><p=
>WARNING: [Synth 8-7129] Port s_axis_arb_tdata[5] in module sc_node_v1_0_13=
_top__parameterized3 is either unconnected or has no load</p><p>WARNING: [S=
ynth 8-7129] Port s_axis_arb_tdata[4] in module sc_node_v1_0_13_top__parame=
terized3 is either unconnected or has no load</p><p>WARNING: [Synth 8-7129]=
 Port s_axis_arb_tdata[3] in module sc_node_v1_0_13_top__parameterized3 is =
either unconnected or has no load</p><p>WARNING: [Synth 8-7129] Port s_axis=
_arb_tdata[2] in module sc_node_v1_0_13_top__parameterized3 is either uncon=
nected or has no load</p><p>WARNING: [Synth 8-7129] Port s_axis_arb_tdata[1=
] in module sc_node_v1_0_13_top__parameterized3 is either unconnected or ha=
s no load</p><p>WARNING: [Synth 8-6014] Unused sequential element ingress_f=
ifo_i/main_fifo/fifo_bram/ram/impl/ram_reg was removed.</p><p>WARNING: [Syn=
th 8-6014] Unused sequential element ingress_fifo_i/main_fifo/fifo_bram/ram=
/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential =
element ingress_fifo_i/main_fifo/fifo_bram/ram/impl/ram_reg was removed.</p=
><p>WARNING: [Synth 8-6014] Unused sequential element ingress_fifo_i/main_f=
ifo/fifo_bram/ram/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-3917] d=
esign rfnoc_block_replay has port m_axi_awid[1] driven by constant 0</p><p>=
WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awid[0] dr=
iven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay =
has port m_axi_awsize[5] driven by constant 0</p><p>WARNING: [Synth 8-3917]=
 design rfnoc_block_replay has port m_axi_awsize[4] driven by constant 1</p=
><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awsize=
[3] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_r=
eplay has port m_axi_awsize[2] driven by constant 0</p><p>WARNING: [Synth 8=
-3917] design rfnoc_block_replay has port m_axi_awsize[1] driven by constan=
t 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_=
awsize[0] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_b=
lock_replay has port m_axi_awburst[3] driven by constant 0</p><p>WARNING: [=
Synth 8-3917] design rfnoc_block_replay has port m_axi_awburst[2] driven by=
 constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has por=
t m_axi_awburst[1] driven by constant 0</p><p>WARNING: [Synth 8-3917] desig=
n rfnoc_block_replay has port m_axi_awburst[0] driven by constant 1</p><p>W=
ARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awlock[1] d=
riven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay=
 has port m_axi_awlock[0] driven by constant 0</p><p>WARNING: [Synth 8-3917=
] design rfnoc_block_replay has port m_axi_awcache[7] driven by constant 1<=
/p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awca=
che[6] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_bloc=
k_replay has port m_axi_awcache[5] driven by constant 1</p><p>WARNING: [Syn=
th 8-3917] design rfnoc_block_replay has port m_axi_awcache[4] driven by co=
nstant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m=
_axi_awcache[3] driven by constant 1</p><p>WARNING: [Synth 8-3917] design r=
fnoc_block_replay has port m_axi_awcache[2] driven by constant 1</p><p>WARN=
ING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awcache[1] dri=
ven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay h=
as port m_axi_awcache[0] driven by constant 1</p><p>WARNING: [Synth 8-3917]=
 design rfnoc_block_replay has port m_axi_awprot[5] driven by constant 0</p=
><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awprot=
[4] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_r=
eplay has port m_axi_awprot[3] driven by constant 0</p><p>WARNING: [Synth 8=
-3917] design rfnoc_block_replay has port m_axi_awprot[2] driven by constan=
t 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_=
awprot[1] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_b=
lock_replay has port m_axi_awprot[0] driven by constant 0</p><p>WARNING: [S=
ynth 8-3917] design rfnoc_block_replay has port m_axi_awqos[7] driven by co=
nstant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m=
_axi_awqos[6] driven by constant 0</p><p>WARNING: [Synth 8-3917] design rfn=
oc_block_replay has port m_axi_awqos[5] driven by constant 0</p><p>WARNING:=
 [Synth 8-3917] design rfnoc_block_replay has port m_axi_awqos[4] driven by=
 constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has por=
t m_axi_awqos[3] driven by constant 0</p><p>WARNING: [Synth 8-3917] design =
rfnoc_block_replay has port m_axi_awqos[2] driven by constant 0</p><p>WARNI=
NG: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awqos[1] driven=
 by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has =
port m_axi_awqos[0] driven by constant 0</p><p>WARNING: [Synth 8-3917] desi=
gn rfnoc_block_replay has port m_axi_awregion[7] driven by constant 0</p><p=
>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awregion[=
6] driven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_re=
play has port m_axi_awregion[5] driven by constant 0</p><p>WARNING: [Synth =
8-3917] design rfnoc_block_replay has port m_axi_awregion[4] driven by cons=
tant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_a=
xi_awregion[3] driven by constant 0</p><p>WARNING: [Synth 8-3917] design rf=
noc_block_replay has port m_axi_awregion[2] driven by constant 0</p><p>WARN=
ING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awregion[1] dr=
iven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay =
has port m_axi_awregion[0] driven by constant 0</p><p>WARNING: [Synth 8-391=
7] design rfnoc_block_replay has port m_axi_awuser[1] driven by constant 0<=
/p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_awus=
er[0] driven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block=
_replay has port m_axi_wstrb[15] driven by constant 1</p><p>WARNING: [Synth=
 8-3917] design rfnoc_block_replay has port m_axi_wstrb[14] driven by const=
ant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_ax=
i_wstrb[13] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc=
_block_replay has port m_axi_wstrb[12] driven by constant 1</p><p>WARNING: =
[Synth 8-3917] design rfnoc_block_replay has port m_axi_wstrb[11] driven by=
 constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has por=
t m_axi_wstrb[10] driven by constant 1</p><p>WARNING: [Synth 8-3917] design=
 rfnoc_block_replay has port m_axi_wstrb[9] driven by constant 1</p><p>WARN=
ING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_wstrb[8] drive=
n by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has=
 port m_axi_wstrb[7] driven by constant 1</p><p>WARNING: [Synth 8-3917] des=
ign rfnoc_block_replay has port m_axi_wstrb[6] driven by constant 1</p><p>W=
ARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_wstrb[5] dr=
iven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay =
has port m_axi_wstrb[4] driven by constant 1</p><p>WARNING: [Synth 8-3917] =
design rfnoc_block_replay has port m_axi_wstrb[3] driven by constant 1</p><=
p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_wstrb[2]=
 driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_repl=
ay has port m_axi_wstrb[1] driven by constant 1</p><p>WARNING: [Synth 8-391=
7] design rfnoc_block_replay has port m_axi_wstrb[0] driven by constant 1</=
p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_wuser=
[1] driven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_r=
eplay has port m_axi_wuser[0] driven by constant 0</p><p>WARNING: [Synth 8-=
3917] design rfnoc_block_replay has port m_axi_arid[1] driven by constant 0=
</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_ari=
d[0] driven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_=
replay has port m_axi_arsize[5] driven by constant 0</p><p>WARNING: [Synth =
8-3917] design rfnoc_block_replay has port m_axi_arsize[4] driven by consta=
nt 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi=
_arsize[3] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_=
block_replay has port m_axi_arsize[2] driven by constant 0</p><p>WARNING: [=
Synth 8-3917] design rfnoc_block_replay has port m_axi_arsize[1] driven by =
constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port=
 m_axi_arsize[0] driven by constant 1</p><p>WARNING: [Synth 8-3917] design =
rfnoc_block_replay has port m_axi_arburst[3] driven by constant 0</p><p>WAR=
NING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_arburst[2] dr=
iven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay =
has port m_axi_arburst[1] driven by constant 0</p><p>WARNING: [Synth 8-3917=
] design rfnoc_block_replay has port m_axi_arburst[0] driven by constant 1<=
/p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_arlo=
ck[1] driven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block=
_replay has port m_axi_arlock[0] driven by constant 0</p><p>WARNING: [Synth=
 8-3917] design rfnoc_block_replay has port m_axi_arcache[7] driven by cons=
tant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_a=
xi_arcache[6] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfn=
oc_block_replay has port m_axi_arcache[5] driven by constant 1</p><p>WARNIN=
G: [Synth 8-3917] design rfnoc_block_replay has port m_axi_arcache[4] drive=
n by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has=
 port m_axi_arcache[3] driven by constant 1</p><p>WARNING: [Synth 8-3917] d=
esign rfnoc_block_replay has port m_axi_arcache[2] driven by constant 1</p>=
<p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_arcache=
[1] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_block_r=
eplay has port m_axi_arcache[0] driven by constant 1</p><p>WARNING: [Synth =
8-3917] design rfnoc_block_replay has port m_axi_arprot[5] driven by consta=
nt 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi=
_arprot[4] driven by constant 1</p><p>WARNING: [Synth 8-3917] design rfnoc_=
block_replay has port m_axi_arprot[3] driven by constant 0</p><p>WARNING: [=
Synth 8-3917] design rfnoc_block_replay has port m_axi_arprot[2] driven by =
constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port=
 m_axi_arprot[1] driven by constant 1</p><p>WARNING: [Synth 8-3917] design =
rfnoc_block_replay has port m_axi_arprot[0] driven by constant 0</p><p>WARN=
ING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_arqos[7] drive=
n by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay has=
 port m_axi_arqos[6] driven by constant 0</p><p>WARNING: [Synth 8-3917] des=
ign rfnoc_block_replay has port m_axi_arqos[5] driven by constant 0</p><p>W=
ARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_arqos[4] dr=
iven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_replay =
has port m_axi_arqos[3] driven by constant 0</p><p>WARNING: [Synth 8-3917] =
design rfnoc_block_replay has port m_axi_arqos[2] driven by constant 0</p><=
p>WARNING: [Synth 8-3917] design rfnoc_block_replay has port m_axi_arqos[1]=
 driven by constant 0</p><p>WARNING: [Synth 8-3917] design rfnoc_block_repl=
ay has port m_axi_arqos[0] driven by constant 0</p><p>WARNING: [Synth 8-601=
4] Unused sequential element rec_axi_fifo/fifo_bram/ram/impl/ram_reg was re=
moved.</p><p>WARNING: [Synth 8-6014] Unused sequential element play_axi_fif=
o/fifo_bram/ram/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unu=
sed sequential element rec_axi_fifo/fifo_bram/ram/impl/ram_reg was removed.=
</p><p>WARNING: [Synth 8-6014] Unused sequential element play_axi_fifo/fifo=
_bram/ram/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused se=
quential element no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/ext_f=
ifo_i/ram/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused se=
quential element no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/ext_f=
ifo_i/ram/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused se=
quential element gen_ctrl_slave.axis_ctrl_slv_i/gate_i/ram_i/impl/ram_reg w=
as removed.</p><p>WARNING: [Synth 8-3936] Found unconnected internal regist=
er 'ctrlport_timer_i/resp_cache_i/o_tdata_reg' and it is trimmed from '34' =
to '32' bits. [/home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop.v:37]</p=
><p>WARNING: [Synth 8-6014] Unused sequential element gen_axis_width_conv.p=
yld_fifo_i/fifo_bram/ram/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-=
6014] Unused sequential element gen_axis_width_conv.pyld_fifo_i/fifo_bram/r=
am/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequentia=
l element gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg was remo=
ved.</p><p>WARNING: [Synth 8-6014] Unused sequential element gen_axis_width=
_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg was removed.</p><p>WARNING: [Syn=
th 8-6014] Unused sequential element gen_ctrl_slave.slv_fifo_i/fifo_bram/ra=
m/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential=
 element gen_ctrl_slave.axis_ctrl_slv_i/gate_i/ram_i/impl/ram_reg was remov=
ed.</p><p>WARNING: [Synth 8-3936] Found unconnected internal register 'dest=
_mux_i/axi_fifo/fifo_flop2/o_tdata_reg' and it is trimmed from '5' to '4' b=
its. [/home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop2.v:38]</p><p>WARN=
ING: [Synth 8-3936] Found unconnected internal register 'dest_mux_i/axi_fif=
o/fifo_flop2/o_tdata_reg' and it is trimmed from '5' to '4' bits. [/home/gr=
cusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flop2.v:38]</p><p>WARNING: [Synth 8-=
3936] Found unconnected internal register 'dest_mux_i/axi_fifo/fifo_flop2/o=
_tdata_reg' and it is trimmed from '5' to '4' bits. [/home/grcusrp/uhd/fpga=
/usrp3/lib/fifo/axi_fifo_flop2.v:38]</p><p>WARNING: [Synth 8-3936] Found un=
connected internal register 'dest_mux_i/axi_fifo/fifo_flop2/o_tdata_reg' an=
d it is trimmed from '5' to '4' bits. [/home/grcusrp/uhd/fpga/usrp3/lib/fif=
o/axi_fifo_flop2.v:38]</p><p>WARNING: [Synth 8-3936] Found unconnected inte=
rnal register 'dest_mux_i/axi_fifo/fifo_flop2/o_tdata_reg' and it is trimme=
d from '5' to '4' bits. [/home/grcusrp/uhd/fpga/usrp3/lib/fifo/axi_fifo_flo=
p2.v:38]</p><p>WARNING: [Synth 8-6014] Unused sequential element axi_packet=
_gate_i/ram_i/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unuse=
d sequential element axi_packet_gate_i/ram_i/impl/ram_reg was removed.</p><=
p>WARNING: [Synth 8-6014] Unused sequential element axi_packet_gate_i/ram_i=
/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential =
element axi_packet_gate_i/ram_i/impl/ram_reg was removed.</p><p>WARNING: [S=
ynth 8-6014] Unused sequential element axi_packet_gate_i/ram_i/impl/ram_reg=
 was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential element kv_ma=
p_i/map_i/mem_i/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-3936] Fou=
nd unconnected internal register 'ppslp/coarse_reg' and it is trimmed from =
'28' to '16' bits. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/ppsloop.v:243]</p=
><p>WARNING: [Synth 8-6014] Unused sequential element cpu_out_gate_i/ram_i/=
impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential e=
lement chdr_user_fifo_i/fifo_bram/ram/impl/ram_reg was removed.</p><p>WARNI=
NG: [Synth 8-6014] Unused sequential element chdr_out_gate_i/ram_i/impl/ram=
_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential element c=
hdr_out_gate_i/addr_fifo_i/fifo_bram/ram/impl/ram_reg was removed.</p><p>WA=
RNING: [Synth 8-6014] Unused sequential element kv_map_i/mem_i/impl/ram_reg=
 was removed.</p><p>WARNING: [Synth 8-6014] Unused sequential element eth_a=
dapter_i/cpu_fifo_i/fifo_bram/ram/impl/ram_reg was removed.</p><p>WARNING: =
[Synth 8-6014] Unused sequential element eth_adapter_i/chdr_fifo_i/fifo_bra=
m/ram/impl/ram_reg was removed.</p><p>WARNING: [Synth 8-6014] Unused sequen=
tial element inst_axi_pmu/axi_fifo_short_inst/ram/impl/ram_reg was removed.=
</p><p>[00:04:36] Current task: Synthesis +++ Current Phase: Cross Boundary=
 and Area Optimization</p><p>[00:04:42] Current task: Synthesis +++ Current=
 Phase: Applying XDC Timing Constraints</p><p>[00:05:26] Current task: Synt=
hesis +++ Current Phase: Timing Optimization</p><p>[00:06:11] Current task:=
 Synthesis +++ Current Phase: Technology Mapping</p><p>[00:06:12] Current t=
ask: Synthesis +++ Current Phase: IO Insertion</p><p>[00:06:14] Current tas=
k: Synthesis +++ Current Phase: Flattening Before IO Insertion</p><p>WARNIN=
G: [Synth 8-3295] tying undriven pin I_AXI_DMA_REG_MODULE/strm_valid_int2_i=
nferred:in0 to constant 0</p><p>WARNING: [Synth 8-3295] tying undriven pin =
I_AXI_DMA_REG_MODULE/strm_valid_int_cdc_to_inferred:in0 to constant 0</p><p=
>[00:06:28] Current task: Synthesis +++ Current Phase: Final Netlist Cleanu=
p</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (kee=
p/mark_debug/dont_touch) which could create extra logic on its net [/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_=
bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.=
v:543]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute=
 (keep/mark_debug/dont_touch) which could create extra logic on its net [/h=
ome/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64=
_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl=
_rfs.v:555]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attr=
ibute (keep/mark_debug/dont_touch) which could create extra logic on its ne=
t [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter=
_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2=
_1_vl_rfs.v:544]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related=
 attribute (keep/mark_debug/dont_touch) which could create extra logic on i=
ts net [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_=
inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_convert=
er_v2_1_vl_rfs.v:599]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep re=
lated attribute (keep/mark_debug/dont_touch) which could create extra logic=
 on its net [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3=
/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_co=
nverter_v2_1_vl_rfs.v:544]</p><p>WARNING: [Synth 8-5396] Clock pin C has ke=
ep related attribute (keep/mark_debug/dont_touch) which could create extra =
logic on its net [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg=
484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clo=
ck_converter_v2_1_vl_rfs.v:556]</p><p>WARNING: [Synth 8-5396] Clock pin C h=
as keep related attribute (keep/mark_debug/dont_touch) which could create e=
xtra logic on its net [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z0=
20clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/ax=
i_clock_converter_v2_1_vl_rfs.v:556]</p><p>WARNING: [Synth 8-5396] Clock pi=
n C has keep related attribute (keep/mark_debug/dont_touch) which could cre=
ate extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc=
/hdl/xpm_cdc.sv:583]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep rel=
ated attribute (keep/mark_debug/dont_touch) which could create extra logic =
on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:=
221]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (=
keep/mark_debug/dont_touch) which could create extra logic on its net [/too=
ls/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNI=
NG: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/=
dont_touch) which could create extra logic on its net [/tools/Xilinx/Vivado=
/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING: [Synth 8-539=
6] Clock pin C has keep related attribute (keep/mark_debug/dont_touch) whic=
h could create extra logic on its net [/home/grcusrp/uhd/fpga/usrp3/top/e31=
x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipsh=
ared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600]</p><p>WARNING: [Synth =
8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_touch)=
 which could create extra logic on its net [/home/grcusrp/uhd/fpga/usrp3/to=
p/e31x/build-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd=
/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600]</p><p>WARNING: [S=
ynth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_t=
ouch) which could create extra logic on its net [/tools/Xilinx/Vivado/2021.=
1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:594]</p><p>WARNING: [Synth 8-5396] Clo=
ck pin C has keep related attribute (keep/mark_debug/dont_touch) which coul=
d create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xp=
m_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING: [Synth 8-5396] Clock pin C has kee=
p related attribute (keep/mark_debug/dont_touch) which could create extra l=
ogic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cd=
c.sv:221]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attrib=
ute (keep/mark_debug/dont_touch) which could create extra logic on its net =
[/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>=
WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_d=
ebug/dont_touch) which could create extra logic on its net [/tools/Xilinx/V=
ivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth =
8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_touch)=
 which could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/dat=
a/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pi=
n C has keep related attribute (keep/mark_debug/dont_touch) which could cre=
ate extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc=
/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep rel=
ated attribute (keep/mark_debug/dont_touch) which could create extra logic =
on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:=
592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (=
keep/mark_debug/dont_touch) which could create extra logic on its net [/too=
ls/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNI=
NG: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/=
dont_touch) which could create extra logic on its net [/tools/Xilinx/Vivado=
/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-539=
6] Clock pin C has keep related attribute (keep/mark_debug/dont_touch) whic=
h could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/=
xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C h=
as keep related attribute (keep/mark_debug/dont_touch) which could create e=
xtra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/=
xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related =
attribute (keep/mark_debug/dont_touch) which could create extra logic on it=
s net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]<=
/p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/=
mark_debug/dont_touch) which could create extra logic on its net [/tools/Xi=
linx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [=
Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_=
touch) which could create extra logic on its net [/tools/Xilinx/Vivado/2021=
.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Cl=
ock pin C has keep related attribute (keep/mark_debug/dont_touch) which cou=
ld create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/x=
pm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has ke=
ep related attribute (keep/mark_debug/dont_touch) which could create extra =
logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_c=
dc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attri=
bute (keep/mark_debug/dont_touch) which could create extra logic on its net=
 [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:594]</p><p=
>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_=
debug/dont_touch) which could create extra logic on its net [/tools/Xilinx/=
Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING: [Synth=
 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_touch=
) which could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/da=
ta/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING: [Synth 8-5396] Clock p=
in C has keep related attribute (keep/mark_debug/dont_touch) which could cr=
eate extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cd=
c/hdl/xpm_cdc.sv:221]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep re=
lated attribute (keep/mark_debug/dont_touch) which could create extra logic=
 on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv=
:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute =
(keep/mark_debug/dont_touch) which could create extra logic on its net [/to=
ols/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARN=
ING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug=
/dont_touch) which could create extra logic on its net [/tools/Xilinx/Vivad=
o/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-53=
96] Clock pin C has keep related attribute (keep/mark_debug/dont_touch) whi=
ch could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip=
/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C =
has keep related attribute (keep/mark_debug/dont_touch) which could create =
extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl=
/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related=
 attribute (keep/mark_debug/dont_touch) which could create extra logic on i=
ts net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]=
</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep=
/mark_debug/dont_touch) which could create extra logic on its net [/tools/X=
ilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: =
[Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont=
_touch) which could create extra logic on its net [/tools/Xilinx/Vivado/202=
1.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] C=
lock pin C has keep related attribute (keep/mark_debug/dont_touch) which co=
uld create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/=
xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has k=
eep related attribute (keep/mark_debug/dont_touch) which could create extra=
 logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_=
cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attr=
ibute (keep/mark_debug/dont_touch) which could create extra logic on its ne=
t [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><=
p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net [/tools/Xilinx=
/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synt=
h 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_touc=
h) which could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/d=
ata/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock =
pin C has keep related attribute (keep/mark_debug/dont_touch) which could c=
reate extra logic on its net [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-i=
p/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4=
/hdl/axi_clock_converter_v2_1_vl_rfs.v:600]</p><p>WARNING: [Synth 8-5396] C=
lock pin C has keep related attribute (keep/mark_debug/dont_touch) which co=
uld create extra logic on its net [/home/grcusrp/uhd/fpga/usrp3/top/e31x/bu=
ild-ip/xc7z020clg484-3/axi_inter_2x64_128_bd/axi_inter_2x64_128_bd/ipshared=
/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v:600]</p><p>WARNING: [Synth 8-53=
96] Clock pin C has keep related attribute (keep/mark_debug/dont_touch) whi=
ch could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip=
/xpm/xpm_cdc/hdl/xpm_cdc.sv:594]</p><p>WARNING: [Synth 8-5396] Clock pin C =
has keep related attribute (keep/mark_debug/dont_touch) which could create =
extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl=
/xpm_cdc.sv:221]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related=
 attribute (keep/mark_debug/dont_touch) which could create extra logic on i=
ts net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]=
</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep=
/mark_debug/dont_touch) which could create extra logic on its net [/tools/X=
ilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING: =
[Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont=
_touch) which could create extra logic on its net [/tools/Xilinx/Vivado/202=
1.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] C=
lock pin C has keep related attribute (keep/mark_debug/dont_touch) which co=
uld create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/=
xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has k=
eep related attribute (keep/mark_debug/dont_touch) which could create extra=
 logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_=
cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attr=
ibute (keep/mark_debug/dont_touch) which could create extra logic on its ne=
t [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><=
p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark=
_debug/dont_touch) which could create extra logic on its net [/tools/Xilinx=
/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synt=
h 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_touc=
h) which could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/d=
ata/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock =
pin C has keep related attribute (keep/mark_debug/dont_touch) which could c=
reate extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_c=
dc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep r=
elated attribute (keep/mark_debug/dont_touch) which could create extra logi=
c on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.s=
v:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute=
 (keep/mark_debug/dont_touch) which could create extra logic on its net [/t=
ools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WAR=
NING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debu=
g/dont_touch) which could create extra logic on its net [/tools/Xilinx/Viva=
do/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5=
396] Clock pin C has keep related attribute (keep/mark_debug/dont_touch) wh=
ich could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/i=
p/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C=
 has keep related attribute (keep/mark_debug/dont_touch) which could create=
 extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hd=
l/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep relate=
d attribute (keep/mark_debug/dont_touch) which could create extra logic on =
its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592=
]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (kee=
p/mark_debug/dont_touch) which could create extra logic on its net [/tools/=
Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING:=
 [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/don=
t_touch) which could create extra logic on its net [/tools/Xilinx/Vivado/20=
21.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] =
Clock pin C has keep related attribute (keep/mark_debug/dont_touch) which c=
ould create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm=
/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has =
keep related attribute (keep/mark_debug/dont_touch) which could create extr=
a logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm=
_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related att=
ribute (keep/mark_debug/dont_touch) which could create extra logic on its n=
et [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p>=
<p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mar=
k_debug/dont_touch) which could create extra logic on its net [/tools/Xilin=
x/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Syn=
th 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_tou=
ch) which could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/=
data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock=
 pin C has keep related attribute (keep/mark_debug/dont_touch) which could =
create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_=
cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep =
related attribute (keep/mark_debug/dont_touch) which could create extra log=
ic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.=
sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribut=
e (keep/mark_debug/dont_touch) which could create extra logic on its net [/=
tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WA=
RNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_deb=
ug/dont_touch) which could create extra logic on its net [/tools/Xilinx/Viv=
ado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-=
5396] Clock pin C has keep related attribute (keep/mark_debug/dont_touch) w=
hich could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/=
ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin =
C has keep related attribute (keep/mark_debug/dont_touch) which could creat=
e extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/h=
dl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep relat=
ed attribute (keep/mark_debug/dont_touch) which could create extra logic on=
 its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:59=
2]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (ke=
ep/mark_debug/dont_touch) which could create extra logic on its net [/tools=
/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING=
: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/do=
nt_touch) which could create extra logic on its net [/tools/Xilinx/Vivado/2=
021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396]=
 Clock pin C has keep related attribute (keep/mark_debug/dont_touch) which =
could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xp=
m/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has=
 keep related attribute (keep/mark_debug/dont_touch) which could create ext=
ra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xp=
m_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related at=
tribute (keep/mark_debug/dont_touch) which could create extra logic on its =
net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p=
><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/ma=
rk_debug/dont_touch) which could create extra logic on its net [/tools/Xili=
nx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Sy=
nth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_to=
uch) which could create extra logic on its net [/tools/Xilinx/Vivado/2021.1=
/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Cloc=
k pin C has keep related attribute (keep/mark_debug/dont_touch) which could=
 create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm=
_cdc/hdl/xpm_cdc.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep=
 related attribute (keep/mark_debug/dont_touch) which could create extra lo=
gic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc=
.sv:592]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribu=
te (keep/mark_debug/dont_touch) which could create extra logic on its net [=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_inter_2x=
64_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_v2_1_=
vl_rfs.v:600]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related at=
tribute (keep/mark_debug/dont_touch) which could create extra logic on its =
net [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_int=
er_2x64_128_bd/axi_inter_2x64_128_bd/ipshared/7ee4/hdl/axi_clock_converter_=
v2_1_vl_rfs.v:600]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep relat=
ed attribute (keep/mark_debug/dont_touch) which could create extra logic on=
 its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:58=
3]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (ke=
ep/mark_debug/dont_touch) which could create extra logic on its net [/tools=
/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING=
: [Synth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/do=
nt_touch) which could create extra logic on its net [/tools/Xilinx/Vivado/2=
021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING: [Synth 8-5396]=
 Clock pin C has keep related attribute (keep/mark_debug/dont_touch) which =
could create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xp=
m/xpm_cdc/hdl/xpm_cdc.sv:221]</p><p>WARNING: [Synth 8-5396] Clock pin C has=
 keep related attribute (keep/mark_debug/dont_touch) which could create ext=
ra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xp=
m_cdc.sv:588]</p><p>WARNING: [Synth 8-5396] Clock pin C has keep related at=
tribute (keep/mark_debug/dont_touch) which could create extra logic on its =
net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:588]</p=
><p>WARNING: [Synth 8-5396] Clock pin C has keep related attribute (keep/ma=
rk_debug/dont_touch) which could create extra logic on its net [/tools/Xili=
nx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:588]</p><p>WARNING: [Sy=
nth 8-5396] Clock pin C has keep related attribute (keep/mark_debug/dont_to=
uch) which could create extra logic on its net [/tools/Xilinx/Vivado/2021.1=
/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv:588]</p><p>WARNING: [Synth 8-5396] Cloc=
k pin C has keep related attribute (keep/mark_debug/dont_touch) which could=
 create extra logic on its net [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm=
_cdc/hdl/xpm_cdc.sv:588]</p><p>[00:06:37] Current task: Synthesis +++ Curre=
nt Phase: Renaming Generated Instances</p><p>[00:06:44] Current task: Synth=
esis +++ Current Phase: Rebuilding User Hierarchy</p><p>[00:06:48] Current =
task: Synthesis +++ Current Phase: Renaming Generated Ports</p><p>[00:06:48=
] Current task: Synthesis +++ Current Phase: Handling Custom Attributes</p>=
<p>[00:06:48] Current task: Synthesis +++ Current Phase: Renaming Generated=
 Nets</p><p>[00:06:53] Current task: Synthesis +++ Current Phase: Writing S=
ynthesis Report</p><p>[00:06:53] Current task: Synthesis +++ Current Phase:=
 Finished</p><p>[00:06:53] Translating Synthesized Netlist</p><p>CRITICAL W=
ARNING: [Designutils 20-1280] Could not find module 'axi_hb31'. The XDC fil=
e /home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/axi_hb31/c=
onstraints/fir_compiler_v7_2.xdc will not be read for any cell of this modu=
le.</p><p>CRITICAL WARNING: [Designutils 20-1280] Could not find module 'ax=
i_hb47'. The XDC file /home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z02=
0clg484-3/axi_hb47/constraints/fir_compiler_v7_2.xdc will not be read for a=
ny cell of this module.</p><p>WARNING: [Vivado_Tcl 4-919] Waiver ID 'CDC-1'=
 -from list should not be empty. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/bui=
ld-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_axi_dma_eth_inter=
nal_0/e31x_ps_bd_axi_dma_eth_internal_0.xdc:61]</p><p>CRITICAL WARNING: [Ne=
tlist 29-160] Cannot set property 'iostandard', because the property does n=
ot exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/=
build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_sys=
tem7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:405]</p><p>CRITICAL WARNING:=
 [Netlist 29-160] Cannot set property 'PACKAGE_PIN', because the property d=
oes not exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3/top/=
e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processin=
g_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:406]</p><p>CRITICAL WAR=
NING: [Netlist 29-160] Cannot set property 'slew', because the property doe=
s not exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3/top/e3=
1x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_=
system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:407]</p><p>CRITICAL WARNI=
NG: [Netlist 29-160] Cannot set property 'PIO_DIRECTION', because the prope=
rty does not exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/usrp3=
/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_proc=
essing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:408]</p><p>CRITICA=
L WARNING: [Netlist 29-160] Cannot set property 'iostandard', because the p=
roperty does not exist for objects of type 'pin'. [/home/grcusrp/uhd/fpga/u=
srp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_=
processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:417]</p><p>CRI=
TICAL WARNING: [Netlist 29-160] Cannot set property 'PACKAGE_PIN', because =
the property does not exist for objects of type 'pin'. [/home/grcusrp/uhd/f=
pga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_p=
s_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:418]</p><=
p>CRITICAL WARNING: [Netlist 29-160] Cannot set property 'slew', because th=
e property does not exist for objects of type 'pin'. [/home/grcusrp/uhd/fpg=
a/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_=
bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:419]</p><p>=
CRITICAL WARNING: [Netlist 29-160] Cannot set property 'PIO_DIRECTION', bec=
ause the property does not exist for objects of type 'pin'. [/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e=
31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:420]=
</p><p>WARNING: [Vivado 12-4702] slew is not a supported property on input =
port(s). Setting is ignored. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-i=
p/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processing_system7_0_=
0/e31x_ps_bd_processing_system7_0_0.xdc:691]</p><p>WARNING: [Vivado 12-4702=
] slew is not a supported property on input port(s). Setting is ignored. [/=
home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e3=
1x_ps_bd/ip/e31x_ps_bd_processing_system7_0_0/e31x_ps_bd_processing_system7=
_0_0.xdc:694]</p><p>WARNING: [Vivado 12-4702] slew is not a supported prope=
rty on input port(s). Setting is ignored. [/home/grcusrp/uhd/fpga/usrp3/top=
/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_processi=
ng_system7_0_0/e31x_ps_bd_processing_system7_0_0.xdc:697]</p><p>CRITICAL WA=
RNING: [Constraints 18-1055] Clock 'bus_clk' completely overrides clock 'cl=
k_fpga_0', which is referenced by one or more other constraints. Any constr=
aints that refer to the overridden clock will be ignored.</p><p>CRITICAL WA=
RNING: [Constraints 18-1055] Clock 'clk40' completely overrides clock 'clk_=
fpga_1', which is referenced by one or more other constraints. Any constrai=
nts that refer to the overridden clock will be ignored.</p><p>WARNING: [Viv=
ado 12-2489] -input_jitter contains time 1.628100 which will be rounded to =
1.628 to ensure it is an integer multiple of 1 picosecond [/home/grcusrp/uh=
d/fpga/usrp3/top/e31x/e31x_timing.xdc:47]</p><p>WARNING: [Vivado 12-830] No=
 fanout objects found for 'all_fanout -from [get_ports -scoped_to_current_i=
nstance m_axi_aclk] -flat -endpoints_only -only_cells'. [/home/grcusrp/uhd/=
fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_=
ps_bd_auto_cc_4/e31x_ps_bd_auto_cc_4_clocks.xdc:17]</p><p>WARNING: [Vivado_=
Tcl 4-921] Waiver ID 'CDC-10' -to list should not be empty. [/home/grcusrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e=
31x_ps_bd_auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:7]</p><p>WARNING: [Viva=
do_Tcl 4-921] Waiver ID 'CDC-11' -to list should not be empty. [/home/grcus=
rp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_bd/i=
p/e31x_ps_bd_auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:10]</p><p>WARNING: [=
Vivado_Tcl 4-921] Waiver ID 'CDC-15' -to list should not be empty. [/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:13]</p><p>WARNIN=
G: [Vivado_Tcl 4-939] Waiver ID 'LUTAR-1' object list should not be empty (=
perhaps an invalid wildcard was used or only unsupported objects). [/home/g=
rcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x_ps_=
bd/ip/e31x_ps_bd_auto_cc_0/e31x_ps_bd_auto_cc_0_clocks.xdc:17]</p><p>WARNIN=
G: [Vivado_Tcl 4-921] Waiver ID 'CDC-10' -to list should not be empty. [/ho=
me/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e31x=
_ps_bd/ip/e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:7]</p><p>WAR=
NING: [Vivado_Tcl 4-921] Waiver ID 'CDC-11' -to list should not be empty. [=
/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_bd/e=
31x_ps_bd/ip/e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:10]</p><p=
>WARNING: [Vivado_Tcl 4-921] Waiver ID 'CDC-15' -to list should not be empt=
y. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_=
bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:13]</=
p><p>WARNING: [Vivado_Tcl 4-939] Waiver ID 'LUTAR-1' object list should not=
 be empty (perhaps an invalid wildcard was used or only unsupported objects=
). [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x_ps_=
bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_1/e31x_ps_bd_auto_cc_1_clocks.xdc:17]</=
p><p>WARNING: [Vivado_Tcl 4-921] Waiver ID 'CDC-10' -to list should not be =
empty. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e31x=
_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clocks.xdc:7=
]</p><p>WARNING: [Vivado_Tcl 4-921] Waiver ID 'CDC-11' -to list should not =
be empty. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/e=
31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clocks.xd=
c:10]</p><p>WARNING: [Vivado_Tcl 4-921] Waiver ID 'CDC-15' -to list should =
not be empty. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484=
-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clock=
s.xdc:13]</p><p>WARNING: [Vivado_Tcl 4-939] Waiver ID 'LUTAR-1' object list=
 should not be empty (perhaps an invalid wildcard was used or only unsuppor=
ted objects). [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484=
-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_2/e31x_ps_bd_auto_cc_2_clock=
s.xdc:17]</p><p>WARNING: [Vivado_Tcl 4-921] Waiver ID 'CDC-10' -to list sho=
uld not be empty. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020cl=
g484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto_cc_3_c=
locks.xdc:7]</p><p>WARNING: [Vivado_Tcl 4-921] Waiver ID 'CDC-11' -to list =
should not be empty. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z02=
0clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto_cc_=
3_clocks.xdc:10]</p><p>WARNING: [Vivado_Tcl 4-921] Waiver ID 'CDC-15' -to l=
ist should not be empty. [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc=
7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto=
_cc_3_clocks.xdc:13]</p><p>WARNING: [Vivado_Tcl 4-939] Waiver ID 'LUTAR-1' =
object list should not be empty (perhaps an invalid wildcard was used or on=
ly unsupported objects). [/home/grcusrp/uhd/fpga/usrp3/top/e31x/build-ip/xc=
7z020clg484-3/e31x_ps_bd/e31x_ps_bd/ip/e31x_ps_bd_auto_cc_3/e31x_ps_bd_auto=
_cc_3_clocks.xdc:17]</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source and=
 destination clocks are the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] T=
he source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_GRAY=
: TCL-1000] The source and destination clocks are the same.</p><p>WARNING: =
[XPM_CDC_GRAY: TCL-1000] The source and destination clocks are the same.</p=
><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source and destination clocks are=
 the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source and destinati=
on clocks are the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000] The source =
and destination clocks are the same.</p><p>WARNING: [XPM_CDC_GRAY: TCL-1000=
] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_G=
RAY: TCL-1000] The source and destination clocks are the same.</p><p>WARNIN=
G: [XPM_CDC_GRAY: TCL-1000] The source and destination clocks are the same.=
</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination cl=
ocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source =
and destination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL=
-1000] The source and destination clocks are the same.</p><p>WARNING: [XPM_=
CDC_HANDSHAKE: TCL-1000] The source and destination clocks are the same.</p=
><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clock=
s are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and=
 destination clocks are the same.</p><p>WARNING: [Vivado_Tcl 4-919] Waiver =
ID 'CDC-15' -from list should not be empty. [/tools/Xilinx/Vivado/2021.1/da=
ta/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl:30]</p><p>WARNING: [XPM_CDC_HAN=
DSHAKE: TCL-1000] The source and destination clocks are the same.</p><p>WAR=
NING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clocks are t=
he same.</p><p>WARNING: [Vivado_Tcl 4-919] Waiver ID 'CDC-15' -from list sh=
ould not be empty. [/tools/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/tcl/xpm=
_cdc_handshake.tcl:30]</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The sou=
rce and destination clocks are the same.</p><p>WARNING: [Vivado_Tcl 4-919] =
Waiver ID 'CDC-15' -from list should not be empty. [/tools/Xilinx/Vivado/20=
21.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_handshake.tcl:30]</p><p>WARNING: [XPM_=
CDC_HANDSHAKE: TCL-1000] The source and destination clocks are the same.</p=
><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clock=
s are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and=
 destination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-10=
00] The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC=
_HANDSHAKE: TCL-1000] The source and destination clocks are the same.</p><p=
>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clocks a=
re the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and de=
stination clocks are the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000]=
 The source and destination clocks are the same.</p><p>WARNING: [XPM_CDC_HA=
NDSHAKE: TCL-1000] The source and destination clocks are the same.</p><p>WA=
RNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and destination clocks are =
the same.</p><p>WARNING: [XPM_CDC_HANDSHAKE: TCL-1000] The source and desti=
nation clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: TCL-1000] The s=
ource and destination clocks are the same.</p><p>WARNING: [XPM_CDC_SINGLE: =
TCL-1000] The source and destination clocks are the same.</p><p>WARNING: [X=
PM_CDC_SINGLE: TCL-1000] The source and destination clocks are the same.</p=
><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpi=
o_in_iob_reg[0] has IOB constraint set, However, the instance does not seem=
 to have valid I/O connection to be placed into I/O. The constraint on the =
instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance gen=
blk2[0].gpio_atr_db_inst/gpio_in_iob_reg[10] has IOB constraint set, Howeve=
r, the instance does not seem to have valid I/O connection to be placed int=
o I/O. The constraint on the instance will be ignored.</p><p>WARNING: [Cons=
traints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[11] h=
as IOB constraint set, However, the instance does not seem to have valid I/=
O connection to be placed into I/O. The constraint on the instance will be =
ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_=
db_inst/gpio_in_iob_reg[12] has IOB constraint set, However, the instance d=
oes not seem to have valid I/O connection to be placed into I/O. The constr=
aint on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] =
Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[13] has IOB constraint=
 set, However, the instance does not seem to have valid I/O connection to b=
e placed into I/O. The constraint on the instance will be ignored.</p><p>WA=
RNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_i=
ob_reg[14] has IOB constraint set, However, the instance does not seem to h=
ave valid I/O connection to be placed into I/O. The constraint on the insta=
nce will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[=
0].gpio_atr_db_inst/gpio_in_iob_reg[15] has IOB constraint set, However, th=
e instance does not seem to have valid I/O connection to be placed into I/O=
. The constraint on the instance will be ignored.</p><p>WARNING: [Constrain=
ts 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[16] has IO=
B constraint set, However, the instance does not seem to have valid I/O con=
nection to be placed into I/O. The constraint on the instance will be ignor=
ed.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_in=
st/gpio_in_iob_reg[17] has IOB constraint set, However, the instance does n=
ot seem to have valid I/O connection to be placed into I/O. The constraint =
on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Insta=
nce genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[18] has IOB constraint set,=
 However, the instance does not seem to have valid I/O connection to be pla=
ced into I/O. The constraint on the instance will be ignored.</p><p>WARNING=
: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_re=
g[19] has IOB constraint set, However, the instance does not seem to have v=
alid I/O connection to be placed into I/O. The constraint on the instance w=
ill be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gp=
io_atr_db_inst/gpio_in_iob_reg[1] has IOB constraint set, However, the inst=
ance does not seem to have valid I/O connection to be placed into I/O. The =
constraint on the instance will be ignored.</p><p>WARNING: [Constraints 18-=
5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[20] has IOB cons=
traint set, However, the instance does not seem to have valid I/O connectio=
n to be placed into I/O. The constraint on the instance will be ignored.</p=
><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpi=
o_in_iob_reg[21] has IOB constraint set, However, the instance does not see=
m to have valid I/O connection to be placed into I/O. The constraint on the=
 instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance ge=
nblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[22] has IOB constraint set, Howev=
er, the instance does not seem to have valid I/O connection to be placed in=
to I/O. The constraint on the instance will be ignored.</p><p>WARNING: [Con=
straints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[23] =
has IOB constraint set, However, the instance does not seem to have valid I=
/O connection to be placed into I/O. The constraint on the instance will be=
 ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr=
_db_inst/gpio_in_iob_reg[24] has IOB constraint set, However, the instance =
does not seem to have valid I/O connection to be placed into I/O. The const=
raint on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572]=
 Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[25] has IOB constrain=
t set, However, the instance does not seem to have valid I/O connection to =
be placed into I/O. The constraint on the instance will be ignored.</p><p>W=
ARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_=
iob_reg[26] has IOB constraint set, However, the instance does not seem to =
have valid I/O connection to be placed into I/O. The constraint on the inst=
ance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2=
[0].gpio_atr_db_inst/gpio_in_iob_reg[27] has IOB constraint set, However, t=
he instance does not seem to have valid I/O connection to be placed into I/=
O. The constraint on the instance will be ignored.</p><p>WARNING: [Constrai=
nts 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[28] has I=
OB constraint set, However, the instance does not seem to have valid I/O co=
nnection to be placed into I/O. The constraint on the instance will be igno=
red.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_i=
nst/gpio_in_iob_reg[29] has IOB constraint set, However, the instance does =
not seem to have valid I/O connection to be placed into I/O. The constraint=
 on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Inst=
ance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[2] has IOB constraint set,=
 However, the instance does not seem to have valid I/O connection to be pla=
ced into I/O. The constraint on the instance will be ignored.</p><p>WARNING=
: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_re=
g[30] has IOB constraint set, However, the instance does not seem to have v=
alid I/O connection to be placed into I/O. The constraint on the instance w=
ill be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gp=
io_atr_db_inst/gpio_in_iob_reg[31] has IOB constraint set, However, the ins=
tance does not seem to have valid I/O connection to be placed into I/O. The=
 constraint on the instance will be ignored.</p><p>WARNING: [Constraints 18=
-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[3] has IOB cons=
traint set, However, the instance does not seem to have valid I/O connectio=
n to be placed into I/O. The constraint on the instance will be ignored.</p=
><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpi=
o_in_iob_reg[4] has IOB constraint set, However, the instance does not seem=
 to have valid I/O connection to be placed into I/O. The constraint on the =
instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance gen=
blk2[0].gpio_atr_db_inst/gpio_in_iob_reg[5] has IOB constraint set, However=
, the instance does not seem to have valid I/O connection to be placed into=
 I/O. The constraint on the instance will be ignored.</p><p>WARNING: [Const=
raints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[6] has=
 IOB constraint set, However, the instance does not seem to have valid I/O =
connection to be placed into I/O. The constraint on the instance will be ig=
nored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db=
_inst/gpio_in_iob_reg[7] has IOB constraint set, However, the instance does=
 not seem to have valid I/O connection to be placed into I/O. The constrain=
t on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Ins=
tance genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[8] has IOB constraint set=
, However, the instance does not seem to have valid I/O connection to be pl=
aced into I/O. The constraint on the instance will be ignored.</p><p>WARNIN=
G: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_in_iob_r=
eg[9] has IOB constraint set, However, the instance does not seem to have v=
alid I/O connection to be placed into I/O. The constraint on the instance w=
ill be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gp=
io_atr_db_inst/gpio_out_iob_reg[0] has IOB constraint set, However, the ins=
tance does not seem to have valid I/O connection to be placed into I/O. The=
 constraint on the instance will be ignored.</p><p>WARNING: [Constraints 18=
-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[16] has IOB co=
nstraint set, However, the instance does not seem to have valid I/O connect=
ion to be placed into I/O. The constraint on the instance will be ignored.<=
/p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/g=
pio_out_iob_reg[17] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance=
 genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[18] has IOB constraint set, H=
owever, the instance does not seem to have valid I/O connection to be place=
d into I/O. The constraint on the instance will be ignored.</p><p>WARNING: =
[Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg=
[19] has IOB constraint set, However, the instance does not seem to have va=
lid I/O connection to be placed into I/O. The constraint on the instance wi=
ll be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpi=
o_atr_db_inst/gpio_out_iob_reg[1] has IOB constraint set, However, the inst=
ance does not seem to have valid I/O connection to be placed into I/O. The =
constraint on the instance will be ignored.</p><p>WARNING: [Constraints 18-=
5572] Instance genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[20] has IOB con=
straint set, However, the instance does not seem to have valid I/O connecti=
on to be placed into I/O. The constraint on the instance will be ignored.</=
p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gp=
io_out_iob_reg[21] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance =
genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[22] has IOB constraint set, Ho=
wever, the instance does not seem to have valid I/O connection to be placed=
 into I/O. The constraint on the instance will be ignored.</p><p>WARNING: [=
Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[=
23] has IOB constraint set, However, the instance does not seem to have val=
id I/O connection to be placed into I/O. The constraint on the instance wil=
l be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio=
_atr_db_inst/gpio_out_iob_reg[24] has IOB constraint set, However, the inst=
ance does not seem to have valid I/O connection to be placed into I/O. The =
constraint on the instance will be ignored.</p><p>WARNING: [Constraints 18-=
5572] Instance genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[25] has IOB con=
straint set, However, the instance does not seem to have valid I/O connecti=
on to be placed into I/O. The constraint on the instance will be ignored.</=
p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gp=
io_out_iob_reg[26] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance =
genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[27] has IOB constraint set, Ho=
wever, the instance does not seem to have valid I/O connection to be placed=
 into I/O. The constraint on the instance will be ignored.</p><p>WARNING: [=
Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[=
28] has IOB constraint set, However, the instance does not seem to have val=
id I/O connection to be placed into I/O. The constraint on the instance wil=
l be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio=
_atr_db_inst/gpio_out_iob_reg[29] has IOB constraint set, However, the inst=
ance does not seem to have valid I/O connection to be placed into I/O. The =
constraint on the instance will be ignored.</p><p>WARNING: [Constraints 18-=
5572] Instance genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[2] has IOB cons=
traint set, However, the instance does not seem to have valid I/O connectio=
n to be placed into I/O. The constraint on the instance will be ignored.</p=
><p>WARNING: [Constraints 18-5572] Instance genblk2[0].gpio_atr_db_inst/gpi=
o_out_iob_reg[30] has IOB constraint set, However, the instance does not se=
em to have valid I/O connection to be placed into I/O. The constraint on th=
e instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance g=
enblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[31] has IOB constraint set, How=
ever, the instance does not seem to have valid I/O connection to be placed =
into I/O. The constraint on the instance will be ignored.</p><p>WARNING: [C=
onstraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[0]=
 has IOB constraint set, However, the instance does not seem to have valid =
I/O connection to be placed into I/O. The constraint on the instance will b=
e ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_at=
r_db_inst/gpio_in_iob_reg[10] has IOB constraint set, However, the instance=
 does not seem to have valid I/O connection to be placed into I/O. The cons=
traint on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572=
] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[11] has IOB constrai=
nt set, However, the instance does not seem to have valid I/O connection to=
 be placed into I/O. The constraint on the instance will be ignored.</p><p>=
WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in=
_iob_reg[12] has IOB constraint set, However, the instance does not seem to=
 have valid I/O connection to be placed into I/O. The constraint on the ins=
tance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk=
2[1].gpio_atr_db_inst/gpio_in_iob_reg[13] has IOB constraint set, However, =
the instance does not seem to have valid I/O connection to be placed into I=
/O. The constraint on the instance will be ignored.</p><p>WARNING: [Constra=
ints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[14] has =
IOB constraint set, However, the instance does not seem to have valid I/O c=
onnection to be placed into I/O. The constraint on the instance will be ign=
ored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_=
inst/gpio_in_iob_reg[15] has IOB constraint set, However, the instance does=
 not seem to have valid I/O connection to be placed into I/O. The constrain=
t on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Ins=
tance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[16] has IOB constraint se=
t, However, the instance does not seem to have valid I/O connection to be p=
laced into I/O. The constraint on the instance will be ignored.</p><p>WARNI=
NG: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_=
reg[17] has IOB constraint set, However, the instance does not seem to have=
 valid I/O connection to be placed into I/O. The constraint on the instance=
 will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].=
gpio_atr_db_inst/gpio_in_iob_reg[18] has IOB constraint set, However, the i=
nstance does not seem to have valid I/O connection to be placed into I/O. T=
he constraint on the instance will be ignored.</p><p>WARNING: [Constraints =
18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[19] has IOB c=
onstraint set, However, the instance does not seem to have valid I/O connec=
tion to be placed into I/O. The constraint on the instance will be ignored.=
</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/=
gpio_in_iob_reg[1] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance =
genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[20] has IOB constraint set, How=
ever, the instance does not seem to have valid I/O connection to be placed =
into I/O. The constraint on the instance will be ignored.</p><p>WARNING: [C=
onstraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[21=
] has IOB constraint set, However, the instance does not seem to have valid=
 I/O connection to be placed into I/O. The constraint on the instance will =
be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_a=
tr_db_inst/gpio_in_iob_reg[22] has IOB constraint set, However, the instanc=
e does not seem to have valid I/O connection to be placed into I/O. The con=
straint on the instance will be ignored.</p><p>WARNING: [Constraints 18-557=
2] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[23] has IOB constra=
int set, However, the instance does not seem to have valid I/O connection t=
o be placed into I/O. The constraint on the instance will be ignored.</p><p=
>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_i=
n_iob_reg[24] has IOB constraint set, However, the instance does not seem t=
o have valid I/O connection to be placed into I/O. The constraint on the in=
stance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genbl=
k2[1].gpio_atr_db_inst/gpio_in_iob_reg[25] has IOB constraint set, However,=
 the instance does not seem to have valid I/O connection to be placed into =
I/O. The constraint on the instance will be ignored.</p><p>WARNING: [Constr=
aints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[26] has=
 IOB constraint set, However, the instance does not seem to have valid I/O =
connection to be placed into I/O. The constraint on the instance will be ig=
nored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db=
_inst/gpio_in_iob_reg[27] has IOB constraint set, However, the instance doe=
s not seem to have valid I/O connection to be placed into I/O. The constrai=
nt on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] In=
stance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[28] has IOB constraint s=
et, However, the instance does not seem to have valid I/O connection to be =
placed into I/O. The constraint on the instance will be ignored.</p><p>WARN=
ING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob=
_reg[29] has IOB constraint set, However, the instance does not seem to hav=
e valid I/O connection to be placed into I/O. The constraint on the instanc=
e will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1]=
.gpio_atr_db_inst/gpio_in_iob_reg[2] has IOB constraint set, However, the i=
nstance does not seem to have valid I/O connection to be placed into I/O. T=
he constraint on the instance will be ignored.</p><p>WARNING: [Constraints =
18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[30] has IOB c=
onstraint set, However, the instance does not seem to have valid I/O connec=
tion to be placed into I/O. The constraint on the instance will be ignored.=
</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/=
gpio_in_iob_reg[31] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance=
 genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[3] has IOB constraint set, How=
ever, the instance does not seem to have valid I/O connection to be placed =
into I/O. The constraint on the instance will be ignored.</p><p>WARNING: [C=
onstraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[4]=
 has IOB constraint set, However, the instance does not seem to have valid =
I/O connection to be placed into I/O. The constraint on the instance will b=
e ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_at=
r_db_inst/gpio_in_iob_reg[5] has IOB constraint set, However, the instance =
does not seem to have valid I/O connection to be placed into I/O. The const=
raint on the instance will be ignored.</p><p>WARNING: [Constraints 18-5572]=
 Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[6] has IOB constraint=
 set, However, the instance does not seem to have valid I/O connection to b=
e placed into I/O. The constraint on the instance will be ignored.</p><p>WA=
RNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_i=
ob_reg[7] has IOB constraint set, However, the instance does not seem to ha=
ve valid I/O connection to be placed into I/O. The constraint on the instan=
ce will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1=
].gpio_atr_db_inst/gpio_in_iob_reg[8] has IOB constraint set, However, the =
instance does not seem to have valid I/O connection to be placed into I/O. =
The constraint on the instance will be ignored.</p><p>WARNING: [Constraints=
 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[9] has IOB c=
onstraint set, However, the instance does not seem to have valid I/O connec=
tion to be placed into I/O. The constraint on the instance will be ignored.=
</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/=
gpio_out_iob_reg[0] has IOB constraint set, However, the instance does not =
seem to have valid I/O connection to be placed into I/O. The constraint on =
the instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance=
 genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[16] has IOB constraint set, H=
owever, the instance does not seem to have valid I/O connection to be place=
d into I/O. The constraint on the instance will be ignored.</p><p>WARNING: =
[Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg=
[17] has IOB constraint set, However, the instance does not seem to have va=
lid I/O connection to be placed into I/O. The constraint on the instance wi=
ll be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpi=
o_atr_db_inst/gpio_out_iob_reg[18] has IOB constraint set, However, the ins=
tance does not seem to have valid I/O connection to be placed into I/O. The=
 constraint on the instance will be ignored.</p><p>WARNING: [Constraints 18=
-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[19] has IOB co=
nstraint set, However, the instance does not seem to have valid I/O connect=
ion to be placed into I/O. The constraint on the instance will be ignored.<=
/p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/g=
pio_out_iob_reg[1] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance =
genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[20] has IOB constraint set, Ho=
wever, the instance does not seem to have valid I/O connection to be placed=
 into I/O. The constraint on the instance will be ignored.</p><p>WARNING: [=
Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[=
21] has IOB constraint set, However, the instance does not seem to have val=
id I/O connection to be placed into I/O. The constraint on the instance wil=
l be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio=
_atr_db_inst/gpio_out_iob_reg[22] has IOB constraint set, However, the inst=
ance does not seem to have valid I/O connection to be placed into I/O. The =
constraint on the instance will be ignored.</p><p>WARNING: [Constraints 18-=
5572] Instance genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[23] has IOB con=
straint set, However, the instance does not seem to have valid I/O connecti=
on to be placed into I/O. The constraint on the instance will be ignored.</=
p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gp=
io_out_iob_reg[24] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance =
genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[25] has IOB constraint set, Ho=
wever, the instance does not seem to have valid I/O connection to be placed=
 into I/O. The constraint on the instance will be ignored.</p><p>WARNING: [=
Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[=
26] has IOB constraint set, However, the instance does not seem to have val=
id I/O connection to be placed into I/O. The constraint on the instance wil=
l be ignored.</p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio=
_atr_db_inst/gpio_out_iob_reg[27] has IOB constraint set, However, the inst=
ance does not seem to have valid I/O connection to be placed into I/O. The =
constraint on the instance will be ignored.</p><p>WARNING: [Constraints 18-=
5572] Instance genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[28] has IOB con=
straint set, However, the instance does not seem to have valid I/O connecti=
on to be placed into I/O. The constraint on the instance will be ignored.</=
p><p>WARNING: [Constraints 18-5572] Instance genblk2[1].gpio_atr_db_inst/gp=
io_out_iob_reg[29] has IOB constraint set, However, the instance does not s=
eem to have valid I/O connection to be placed into I/O. The constraint on t=
he instance will be ignored.</p><p>WARNING: [Constraints 18-5572] Instance =
genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[2] has IOB constraint set, How=
ever, the instance does not seem to have valid I/O connection to be placed =
into I/O. The constraint on the instance will be ignored.</p><p>[00:08:11] =
Current task: Translating Synthesized Netlist +++ Current Phase: Starting</=
p><p>[00:08:11] Current task: Translating Synthesized Netlist +++ Current P=
hase: Finished</p><p>[00:08:11] Executing Tcl: report_drc -ruledeck methodo=
logy_checks -file /home/grcusrp/uhd/fpga/usrp3/top/e31x/build-E310_SG3/meth=
odology.rpt</p><p>[00:08:11] Starting DRC Command</p><p>[00:08:53] Current =
task: DRC +++ Current Phase: Starting</p><p>[00:08:53] Current task: DRC ++=
+ Current Phase: Finished</p><p>[00:08:53] Executing Tcl: opt_design -direc=
tive Default</p><p>[00:08:53] Starting Logic Optimization Command</p><p>[00=
:08:53] Current task: Logic Optimization +++ Current Phase: Starting</p><p>=
[00:08:53] Current task: Logic Optimization +++ Current Phase: Finished</p>=
<p>[00:08:53] Starting DRC Task</p><p>[00:08:54] Current task: DRC +++ Curr=
ent Phase: Starting</p><p>[00:08:54] Current task: DRC +++ Current Phase: F=
inished</p><p>[00:08:54] Starting Cache Timing Information Task</p><p>[00:0=
9:01] Current task: Cache Timing Information +++ Current Phase: Starting</p=
><p>[00:09:02] Current task: Cache Timing Information +++ Current Phase: Fi=
nished</p><p>[00:09:02] Starting Logic Optimization Task</p><p>[00:09:06] C=
urrent task: Logic Optimization +++ Current Phase: Starting</p><p>[00:09:09=
] Current task: Logic Optimization +++ Current Phase: 1 Retarget</p><p>[00:=
09:10] Current task: Logic Optimization +++ Current Phase: 2 Constant propa=
gation</p><p>[00:09:16] Current task: Logic Optimization +++ Current Phase:=
 3 Sweep</p><p>[00:09:17] Current task: Logic Optimization +++ Current Phas=
e: 4 BUFG optimization</p><p>[00:09:18] Current task: Logic Optimization ++=
+ Current Phase: 5 Shift Register Optimization</p><p>[00:09:19] Current tas=
k: Logic Optimization +++ Current Phase: 6 Post Processing Netlist</p><p>[0=
0:09:20] Current task: Logic Optimization +++ Current Phase: Finished</p><p=
>[00:09:20] Starting Connectivity Check Task</p><p>[00:09:20] Current task:=
 Connectivity Check +++ Current Phase: Starting</p><p>[00:09:21] Current ta=
sk: Connectivity Check +++ Current Phase: Finished</p><p>[00:09:21] Startin=
g Power Optimization Task</p><p>[00:09:44] Current task: Power Optimization=
 +++ Current Phase: Starting</p><p>[00:09:44] Current task: Power Optimizat=
ion +++ Current Phase: Finished</p><p>[00:09:44] Starting PowerOpt Patch En=
ables Task</p><p>[00:09:45] Current task: PowerOpt Patch Enables +++ Curren=
t Phase: Starting</p><p>[00:09:45] Current task: PowerOpt Patch Enables +++=
 Current Phase: Finished</p><p>[00:09:45] Starting Final Cleanup Task</p><p=
>[00:09:47] Current task: Final Cleanup +++ Current Phase: Starting</p><p>[=
00:09:47] Current task: Final Cleanup +++ Current Phase: Finished</p><p>[00=
:09:47] Starting Logic Optimization Task</p><p>[00:09:58] Current task: Log=
ic Optimization +++ Current Phase: Starting</p><p>[00:09:58] Current task: =
Logic Optimization +++ Current Phase: Finished</p><p>[00:09:58] Starting Ne=
tlist Obfuscation Task</p><p>[00:09:58] Current task: Netlist Obfuscation +=
++ Current Phase: Starting</p><p>[00:09:58] Current task: Netlist Obfuscati=
on +++ Current Phase: Finished</p><p>[00:09:58] Executing Tcl: place_design=
 -directive Default</p><p>[00:09:58] Starting Placer Command</p><p>[00:10:1=
5] Current task: Placer +++ Current Phase: Starting</p><p>WARNING: [DRC CHE=
CK-3] Report rule limit reached: REQP-1839 rule limit reached: 20 violation=
s have been found.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control chec=
k: The RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radi=
o_i/gen_input_in[0].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i=
/fifo_bram/ram/impl/ram_reg_0 has an input control pin e31x_core_inst/rfnoc=
_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in[0].chdr_to_axis_dat=
a_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_0/ENBWRE=
N (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_=
input_in[0].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_br=
am/ram/impl/enb0) which is driven by a register (e31x_core_inst/rfnoc_image=
_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in[0].chdr_to_axis_data_in_i=
n/gen_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section[0].impl_srl_=
i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/r=
am_full_i_reg) that has an active asychronous set or reset. This may cause =
corruption of the memory contents and/or read values when the set/reset is =
asserted and is not analyzed by the default static timing analysis. It is s=
uggested to eliminate the use of a set/reset to registers driving this RAMB=
 pin or else use a synchronous reset in which the assertion of the reset is=
 timed by default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control chec=
k: The RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radi=
o_i/gen_input_in[0].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i=
/fifo_bram/ram/impl/ram_reg_1 has an input control pin e31x_core_inst/rfnoc=
_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in[0].chdr_to_axis_dat=
a_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_1/ENBWRE=
N (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_=
input_in[0].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_br=
am/ram/impl/enb0) which is driven by a register (e31x_core_inst/rfnoc_image=
_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in[0].chdr_to_axis_data_in_i=
n/gen_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section[0].impl_srl_=
i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/r=
am_full_i_reg) that has an active asychronous set or reset. This may cause =
corruption of the memory contents and/or read values when the set/reset is =
asserted and is not analyzed by the default static timing analysis. It is s=
uggested to eliminate the use of a set/reset to registers driving this RAMB=
 pin or else use a synchronous reset in which the assertion of the reset is=
 timed by default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control chec=
k: The RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radi=
o_i/gen_input_in[1].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i=
/fifo_bram/ram/impl/ram_reg_0 has an input control pin e31x_core_inst/rfnoc=
_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in[1].chdr_to_axis_dat=
a_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_0/ENBWRE=
N (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_=
input_in[1].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_br=
am/ram/impl/enb0) which is driven by a register (e31x_core_inst/rfnoc_image=
_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in[1].chdr_to_axis_data_in_i=
n/gen_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section[0].impl_srl_=
i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/r=
am_full_i_reg) that has an active asychronous set or reset. This may cause =
corruption of the memory contents and/or read values when the set/reset is =
asserted and is not analyzed by the default static timing analysis. It is s=
uggested to eliminate the use of a set/reset to registers driving this RAMB=
 pin or else use a synchronous reset in which the assertion of the reset is=
 timed by default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control chec=
k: The RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radi=
o_i/gen_input_in[1].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i=
/fifo_bram/ram/impl/ram_reg_1 has an input control pin e31x_core_inst/rfnoc=
_image_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in[1].chdr_to_axis_dat=
a_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_bram/ram/impl/ram_reg_1/ENBWRE=
N (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_=
input_in[1].chdr_to_axis_data_in_in/gen_axis_width_conv.pyld_fifo_i/fifo_br=
am/ram/impl/enb0) which is driven by a register (e31x_core_inst/rfnoc_image=
_core_i/b_radio0_0/noc_shell_radio_i/gen_input_in[1].chdr_to_axis_data_in_i=
n/gen_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section[0].impl_srl_=
i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/r=
am_full_i_reg) that has an active asychronous set or reset. This may cause =
corruption of the memory contents and/or read values when the set/reset is =
asserted and is not analyzed by the default static timing analysis. It is s=
uggested to eliminate the use of a set/reset to registers driving this RAMB=
 pin or else use a synchronous reset in which the assertion of the reset is=
 timed by default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control chec=
k: The RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radi=
o_i/gen_output_out[0].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fi=
fo/fifo_bram/ram/impl/ram_reg_0 has an input control pin e31x_core_inst/rfn=
oc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[0].axis_data_to=
_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_0/EN=
ARDEN (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/=
gen_output_out[0].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/f=
ifo_bram/ram/impl/E[0]) which is driven by a register (e31x_core_inst/rfnoc=
_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[0].axis_data_to_c=
hdr_out_out/gen_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section[0]=
.impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/g=
r1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set or re=
set. This may cause corruption of the memory contents and/or read values wh=
en the set/reset is asserted and is not analyzed by the default static timi=
ng analysis. It is suggested to eliminate the use of a set/reset to registe=
rs driving this RAMB pin or else use a synchronous reset in which the asser=
tion of the reset is timed by default.</p><p>WARNING: [DRC REQP-1839] RAMB3=
6 async control check: The RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_rad=
io0_0/noc_shell_radio_i/gen_output_out[0].axis_data_to_chdr_out_out/gen_axi=
s_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_1 has an input control pi=
n e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output=
_out[0].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/r=
am/impl/ram_reg_1/ENARDEN (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_=
0/noc_shell_radio_i/gen_output_out[0].axis_data_to_chdr_out_out/gen_axis_wi=
dth_conv.pyld_fifo/fifo_bram/ram/impl/E[0]) which is driven by a register (=
e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_o=
ut[0].axis_data_to_chdr_out_out/gen_axis_width_conv.payload_width_conv_i/fi=
fo_i/fifo_section[0].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_o=
r_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active a=
sychronous set or reset. This may cause corruption of the memory contents a=
nd/or read values when the set/reset is asserted and is not analyzed by the=
 default static timing analysis. It is suggested to eliminate the use of a =
set/reset to registers driving this RAMB pin or else use a synchronous rese=
t in which the assertion of the reset is timed by default.</p><p>WARNING: [=
DRC REQP-1839] RAMB36 async control check: The RAMB36E1 e31x_core_inst/rfno=
c_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[0].axis_data_to_=
chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_2 has=
 an input control pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shel=
l_radio_i/gen_output_out[0].axis_data_to_chdr_out_out/gen_axis_width_conv.p=
yld_fifo/fifo_bram/ram/impl/ram_reg_2/ENARDEN (net: e31x_core_inst/rfnoc_im=
age_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[0].axis_data_to_chdr=
_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/E[0]) which is dr=
iven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_=
radio_i/gen_output_out[0].axis_data_to_chdr_out_out/gen_axis_width_conv.pay=
load_width_conv_i/fifo_i/fifo_section[0].impl_srl_i/U0/inst_fifo_gen/gconvf=
ifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) =
that has an active asychronous set or reset. This may cause corruption of t=
he memory contents and/or read values when the set/reset is asserted and is=
 not analyzed by the default static timing analysis. It is suggested to eli=
minate the use of a set/reset to registers driving this RAMB pin or else us=
e a synchronous reset in which the assertion of the reset is timed by defau=
lt.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control check: The RAMB36E1=
 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_=
out[0].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ra=
m/impl/ram_reg_3 has an input control pin e31x_core_inst/rfnoc_image_core_i=
/b_radio0_0/noc_shell_radio_i/gen_output_out[0].axis_data_to_chdr_out_out/g=
en_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_3/ENARDEN (net: e31=
x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[=
0].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/im=
pl/E[0]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b=
_radio0_0/noc_shell_radio_i/gen_output_out[0].axis_data_to_chdr_out_out/gen=
_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section[0].impl_srl_i/U0/=
inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwf=
t/empty_fwft_i_reg) that has an active asychronous set or reset. This may c=
ause corruption of the memory contents and/or read values when the set/rese=
t is asserted and is not analyzed by the default static timing analysis. It=
 is suggested to eliminate the use of a set/reset to registers driving this=
 RAMB pin or else use a synchronous reset in which the assertion of the res=
et is timed by default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control=
 check: The RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell=
_radio_i/gen_output_out[1].axis_data_to_chdr_out_out/gen_axis_width_conv.py=
ld_fifo/fifo_bram/ram/impl/ram_reg_0 has an input control pin e31x_core_ins=
t/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[1].axis_da=
ta_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg=
_0/ENARDEN (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_rad=
io_i/gen_output_out[1].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_f=
ifo/fifo_bram/ram/impl/E[0]) which is driven by a register (e31x_core_inst/=
rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[1].axis_data=
_to_chdr_out_out/gen_axis_width_conv.payload_width_conv_i/fifo_i/fifo_secti=
on[0].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0=
.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set =
or reset. This may cause corruption of the memory contents and/or read valu=
es when the set/reset is asserted and is not analyzed by the default static=
 timing analysis. It is suggested to eliminate the use of a set/reset to re=
gisters driving this RAMB pin or else use a synchronous reset in which the =
assertion of the reset is timed by default.</p><p>WARNING: [DRC REQP-1839] =
RAMB36 async control check: The RAMB36E1 e31x_core_inst/rfnoc_image_core_i/=
b_radio0_0/noc_shell_radio_i/gen_output_out[1].axis_data_to_chdr_out_out/ge=
n_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_1 has an input contr=
ol pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_o=
utput_out[1].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_b=
ram/ram/impl/ram_reg_1/ENARDEN (net: e31x_core_inst/rfnoc_image_core_i/b_ra=
dio0_0/noc_shell_radio_i/gen_output_out[1].axis_data_to_chdr_out_out/gen_ax=
is_width_conv.pyld_fifo/fifo_bram/ram/impl/E[0]) which is driven by a regis=
ter (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_out=
put_out[1].axis_data_to_chdr_out_out/gen_axis_width_conv.payload_width_conv=
_i/fifo_i/fifo_section[0].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/g=
ntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an act=
ive asychronous set or reset. This may cause corruption of the memory conte=
nts and/or read values when the set/reset is asserted and is not analyzed b=
y the default static timing analysis. It is suggested to eliminate the use =
of a set/reset to registers driving this RAMB pin or else use a synchronous=
 reset in which the assertion of the reset is timed by default.</p><p>WARNI=
NG: [DRC REQP-1839] RAMB36 async control check: The RAMB36E1 e31x_core_inst=
/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[1].axis_dat=
a_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_=
2 has an input control pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc=
_shell_radio_i/gen_output_out[1].axis_data_to_chdr_out_out/gen_axis_width_c=
onv.pyld_fifo/fifo_bram/ram/impl/ram_reg_2/ENARDEN (net: e31x_core_inst/rfn=
oc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output_out[1].axis_data_to=
_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/E[0]) which =
is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_s=
hell_radio_i/gen_output_out[1].axis_data_to_chdr_out_out/gen_axis_width_con=
v.payload_width_conv_i/fifo_i/fifo_section[0].impl_srl_i/U0/inst_fifo_gen/g=
convfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_=
reg) that has an active asychronous set or reset. This may cause corruption=
 of the memory contents and/or read values when the set/reset is asserted a=
nd is not analyzed by the default static timing analysis. It is suggested t=
o eliminate the use of a set/reset to registers driving this RAMB pin or el=
se use a synchronous reset in which the assertion of the reset is timed by =
default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control check: The RAM=
B36E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_ou=
tput_out[1].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_br=
am/ram/impl/ram_reg_3 has an input control pin e31x_core_inst/rfnoc_image_c=
ore_i/b_radio0_0/noc_shell_radio_i/gen_output_out[1].axis_data_to_chdr_out_=
out/gen_axis_width_conv.pyld_fifo/fifo_bram/ram/impl/ram_reg_3/ENARDEN (net=
: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/gen_output=
_out[1].axis_data_to_chdr_out_out/gen_axis_width_conv.pyld_fifo/fifo_bram/r=
am/impl/E[0]) which is driven by a register (e31x_core_inst/rfnoc_image_cor=
e_i/b_radio0_0/noc_shell_radio_i/gen_output_out[1].axis_data_to_chdr_out_ou=
t/gen_axis_width_conv.payload_width_conv_i/fifo_i/fifo_section[0].impl_srl_=
i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int=
.rfwft/empty_fwft_i_reg) that has an active asychronous set or reset. This =
may cause corruption of the memory contents and/or read values when the set=
/reset is asserted and is not analyzed by the default static timing analysi=
s. It is suggested to eliminate the use of a set/reset to registers driving=
 this RAMB pin or else use a synchronous reset in which the assertion of th=
e reset is timed by default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async co=
ntrol check: The RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_replay0_1/gen=
_replay_blocks[0].axis_replay_i/play_axi_fifo/fifo_bram/ram/impl/ram_reg ha=
s an input control pin e31x_core_inst/rfnoc_image_core_i/b_replay0_1/gen_re=
play_blocks[0].axis_replay_i/play_axi_fifo/fifo_bram/ram/impl/ram_reg/ENARD=
EN (net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/gen_replay_blocks[0]=
.axis_replay_i/play_axi_fifo/fifo_bram/ram/impl/enb0) which is driven by a =
register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/=
gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_asyn=
c_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfif=
o.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg) that has an =
active asychronous set or reset. This may cause corruption of the memory co=
ntents and/or read values when the set/reset is asserted and is not analyze=
d by the default static timing analysis. It is suggested to eliminate the u=
se of a set/reset to registers driving this RAMB pin or else use a synchron=
ous reset in which the assertion of the reset is timed by default.</p><p>WA=
RNING: [DRC REQP-1839] RAMB36 async control check: The RAMB36E1 e31x_core_i=
nst/rfnoc_image_core_i/b_replay0_1/gen_replay_blocks[1].axis_replay_i/play_=
axi_fifo/fifo_bram/ram/impl/ram_reg has an input control pin e31x_core_inst=
/rfnoc_image_core_i/b_replay0_1/gen_replay_blocks[1].axis_replay_i/play_axi=
_fifo/fifo_bram/ram/impl/ram_reg/ENARDEN (net: e31x_core_inst/rfnoc_image_c=
ore_i/b_replay0_1/gen_replay_blocks[1].axis_replay_i/play_axi_fifo/fifo_bra=
m/ram/impl/enb0) which is driven by a register (e31x_core_inst/rfnoc_image_=
core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[1].axis_data_to_chdr_o=
ut_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section[0]=
.impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/=
gwas.wsts/ram_full_i_reg) that has an active asychronous set or reset. This=
 may cause corruption of the memory contents and/or read values when the se=
t/reset is asserted and is not analyzed by the default static timing analys=
is. It is suggested to eliminate the use of a set/reset to registers drivin=
g this RAMB pin or else use a synchronous reset in which the assertion of t=
he reset is timed by default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async c=
ontrol check: The RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_replay0_1/no=
c_shell_replay_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_wi=
dth_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_=
fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg=
/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0=
].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.r=
am has an input control pin e31x_core_inst/rfnoc_image_core_i/b_replay0_1/n=
oc_shell_replay_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_w=
idth_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst=
_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bm=
g/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[=
0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.=
ram/ADDRARDADDR[10] (net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc=
_shell_replay_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_wid=
th_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_f=
ifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/=
inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0]=
.ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ra=
m_0[4]) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_=
replay0_1/noc_shell_replay_i/gen_output_out[0].axis_data_to_chdr_out_out/no=
_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bra=
m_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0=
.count_d1_reg[4]) that has an active asychronous set or reset. This may cau=
se corruption of the memory contents and/or read values when the set/reset =
is asserted and is not analyzed by the default static timing analysis. It i=
s suggested to eliminate the use of a set/reset to registers driving this R=
AMB pin or else use a synchronous reset in which the assertion of the reset=
 is timed by default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control c=
heck: The RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_=
replay_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv=
.gen_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen=
/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_bl=
k_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/=
prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has a=
n input control pin e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell=
_replay_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_con=
v.gen_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_ge=
n/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_b=
lk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r=
/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDR=
ARDADDR[11] (net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_r=
eplay_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.=
gen_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/=
gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk=
_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/p=
rim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0[5]) =
which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_=
1/noc_shell_replay_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axi=
s_width_conv.gen_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/i=
nst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d=
1_reg[5]) that has an active asychronous set or reset. This may cause corru=
ption of the memory contents and/or read values when the set/reset is asser=
ted and is not analyzed by the default static timing analysis. It is sugges=
ted to eliminate the use of a set/reset to registers driving this RAMB pin =
or else use a synchronous reset in which the assertion of the reset is time=
d by default.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control check: Th=
e RAMB36E1 e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i=
/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_asy=
nc_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfi=
fo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_ge=
n/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noi=
nit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input =
control pin e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_=
i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_as=
ync_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvf=
ifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_g=
en/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_no=
init.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR[=
12] (net: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/=
gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_asyn=
c_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfif=
o.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen=
/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noin=
it.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0[6]) which is=
 driven by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_sh=
ell_replay_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_=
conv.gen_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo=
_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[6]=
) that has an active asychronous set or reset. This may cause corruption of=
 the memory contents and/or read values when the set/reset is asserted and =
is not analyzed by the default static timing analysis. It is suggested to e=
liminate the use of a set/reset to registers driving this RAMB pin or else =
use a synchronous reset in which the assertion of the reset is timed by def=
ault.</p><p>WARNING: [DRC REQP-1839] RAMB36 async control check: The RAMB36=
E1 e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_out=
put_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_=
fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/gr=
f.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram=
.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/=
DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control =
pin e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_ou=
tput_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld=
_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/g=
rf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbra=
m.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram=
/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR[13] (net=
: e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_outp=
ut_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_f=
ifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf=
.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.=
gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/D=
EVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0[7]) which is driven =
by a register (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_repl=
ay_i/gen_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen=
_async_pyld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gco=
nvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[7]) that h=
as an active asychronous set or reset. This may cause corruption of the mem=
ory contents and/or read values when the set/reset is asserted and is not a=
nalyzed by the default static timing analysis. It is suggested to eliminate=
 the use of a set/reset to registers driving this RAMB pin or else use a sy=
nchronous reset in which the assertion of the reset is timed by default.</p=
><p>WARNING: [DRC REQP-1839] RAMB36 async control check: The RAMB36E1 e31x_=
core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[=
0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyl=
d_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gnt=
v_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnative=
bmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7=
SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin e31x=
_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out=
[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.py=
ld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gn=
tv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativ=
ebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_=
7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR[14] (net: e31x_c=
ore_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0=
].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld=
_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv=
_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativeb=
mg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7S=
ERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0[8]) which is driven by a reg=
ister (e31x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen=
_output_out[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_p=
yld_fifo.pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.r=
f/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[8]) that has an ac=
tive asychronous set or reset. This may cause corruption of the memory cont=
ents and/or read values when the set/reset is asserted and is not analyzed =
by the default static timing analysis. It is suggested to eliminate the use=
 of a set/reset to registers driving this RAMB pin or else use a synchronou=
s reset in which the assertion of the reset is timed by default.</p><p>WARN=
ING: [DRC REQP-1839] RAMB36 async control check: The RAMB36E1 e31x_core_ins=
t/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0].axis_=
data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/f=
ifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_syn=
c_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.nati=
ve_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.N=
O_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram has an input control pin e31x_core_in=
st/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0].axis=
_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/=
fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sy=
nc_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.nat=
ive_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.=
NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram/ADDRARDADDR[9] (net: e31x_core_inst/=
rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_out[0].axis_da=
ta_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.pyld_fifo/fif=
o_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_=
fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native=
_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_=
BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0[3]) which is driven by a register (e3=
1x_core_inst/rfnoc_image_core_i/b_replay0_1/noc_shell_replay_i/gen_output_o=
ut[0].axis_data_to_chdr_out_out/no_gen_axis_width_conv.gen_async_pyld_fifo.=
pyld_fifo/fifo_section[0].impl_bram_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/=
gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[3]) that has an active asyc=
hronous set or reset. This may cause corruption of the memory contents and/=
or read values when the set/reset is asserted and is not analyzed by the de=
fault static timing analysis. It is suggested to eliminate the use of a set=
/reset to registers driving this RAMB pin or else use a synchronous reset i=
n which the assertion of the reset is timed by default.</p><p>WARNING: [DRC=
 REQP-1840] RAMB18 async control check: The RAMB18E1 e31x_core_inst/rfnoc_i=
mage_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen_ctrl_slave=
.slv_fifo_i/fifo_bram/ram/impl/ram_reg has an input control pin e31x_core_i=
nst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen=
_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg/ENBWREN (net: e31x_core_i=
nst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen=
_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/p_0_in7_out) which is driven by a=
 register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/c=
trlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_section[0].impl_srl_i/U0/=
inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwf=
t/empty_fwft_i_reg) that has an active asychronous set or reset. This may c=
ause corruption of the memory contents and/or read values when the set/rese=
t is asserted and is not analyzed by the default static timing analysis. It=
 is suggested to eliminate the use of a set/reset to registers driving this=
 RAMB pin or else use a synchronous reset in which the assertion of the res=
et is timed by default.</p><p>WARNING: [DRC REQP-1840] RAMB18 async control=
 check: The RAMB18E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell=
_radio_i/ctrlport_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/r=
am_reg has an input control pin e31x_core_inst/rfnoc_image_core_i/b_radio0_=
0/noc_shell_radio_i/ctrlport_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram=
/ram/impl/ram_reg/WEBWE[0] (net: e31x_core_inst/rfnoc_image_core_i/b_radio0=
_0/noc_shell_radio_i/ctrlport_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bra=
m/ram/impl/p_0_in7_out) which is driven by a register (e31x_core_inst/rfnoc=
_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen_async_fi=
fos.in_fifo_i/fifo_section[0].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.=
rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an=
 active asychronous set or reset. This may cause corruption of the memory c=
ontents and/or read values when the set/reset is asserted and is not analyz=
ed by the default static timing analysis. It is suggested to eliminate the =
use of a set/reset to registers driving this RAMB pin or else use a synchro=
nous reset in which the assertion of the reset is timed by default.</p><p>W=
ARNING: [DRC REQP-1840] RAMB18 async control check: The RAMB18E1 e31x_core_=
inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i/ge=
n_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg has an input control pin=
 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_en=
dpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg/WEBWE[1] (net=
: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_e=
ndpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/p_0_in7_out) which i=
s driven by a register (e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_sh=
ell_radio_i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo_section[0].i=
mpl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1=
.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronous set or rese=
t. This may cause corruption of the memory contents and/or read values when=
 the set/reset is asserted and is not analyzed by the default static timing=
 analysis. It is suggested to eliminate the use of a set/reset to registers=
 driving this RAMB pin or else use a synchronous reset in which the asserti=
on of the reset is timed by default.</p><p>WARNING: [DRC REQP-1840] RAMB18 =
async control check: The RAMB18E1 e31x_core_inst/rfnoc_image_core_i/b_radio=
0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_br=
am/ram/impl/ram_reg has an input control pin e31x_core_inst/rfnoc_image_cor=
e_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen_ctrl_slave.slv_fif=
o_i/fifo_bram/ram/impl/ram_reg/WEBWE[2] (net: e31x_core_inst/rfnoc_image_co=
re_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen_ctrl_slave.slv_fi=
fo_i/fifo_bram/ram/impl/p_0_in7_out) which is driven by a register (e31x_co=
re_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_endpoint_i=
/gen_async_fifos.in_fifo_i/fifo_section[0].impl_srl_i/U0/inst_fifo_gen/gcon=
vfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg=
) that has an active asychronous set or reset. This may cause corruption of=
 the memory contents and/or read values when the set/reset is asserted and =
is not analyzed by the default static timing analysis. It is suggested to e=
liminate the use of a set/reset to registers driving this RAMB pin or else =
use a synchronous reset in which the assertion of the reset is timed by def=
ault.</p><p>WARNING: [DRC REQP-1840] RAMB18 async control check: The RAMB18=
E1 e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_i/ctrlport_=
endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg has an inpu=
t control pin e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio_=
i/ctrlport_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/ram_reg/=
WEBWE[3] (net: e31x_core_inst/rfnoc_image_core_i/b_radio0_0/noc_shell_radio=
_i/ctrlport_endpoint_i/gen_ctrl_slave.slv_fifo_i/fifo_bram/ram/impl/p_0_in7=
_out) which is driven by a register (e31x_core_inst/rfnoc_image_core_i/b_ra=
dio0_0/noc_shell_radio_i/ctrlport_endpoint_i/gen_async_fifos.in_fifo_i/fifo=
_section[0].impl_srl_i/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fi=
fo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg) that has an active asychronou=
s set or reset. This may cause corruption of the memory contents and/or rea=
d values when the set/reset is asserted and is not analyzed by the default =
static timing analysis. It is suggested to eliminate the use of a set/reset=
 to registers driving this RAMB pin or else use a synchronous reset in whic=
h the assertion of the reset is timed by default.</p><p>[00:10:15] Starting=
 Placer Task</p><p>[00:10:15] Current task: Placer +++ Current Phase: Start=
ing</p><p>[00:10:15] Current task: Placer +++ Current Phase: 1 Placer Initi=
alization</p><p>[00:10:15] Current task: Placer +++ Current Phase: 1.1 Plac=
er Initialization Netlist Sorting</p><p>WARNING: [Place 30-87] Partially lo=
cked IO Bus is found. Following components of the IO Bus DB_EXP_1_8V are no=
t locked:  'DB_EXP_1_8V[30]'  'DB_EXP_1_8V[29]'  'DB_EXP_1_8V[28]'  'DB_EXP=
_1_8V[27]'  'DB_EXP_1_8V[26]'  'DB_EXP_1_8V[25]'  'DB_EXP_1_8V[23]'  'DB_EX=
P_1_8V[22]'  'DB_EXP_1_8V[21]'  'DB_EXP_1_8V[20]'  'DB_EXP_1_8V[19]'  'DB_E=
XP_1_8V[18]'  'DB_EXP_1_8V[17]'  'DB_EXP_1_8V[16]'  'DB_EXP_1_8V[15]'  'DB_=
EXP_1_8V[14]'  'DB_EXP_1_8V[13]'  'DB_EXP_1_8V[12]'  'DB_EXP_1_8V[7]'  'DB_=
EXP_1_8V[4]'  'DB_EXP_1_8V[3]'  'DB_EXP_1_8V[2]'  'DB_EXP_1_8V[1]'  'DB_EXP=
_1_8V[0]'</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on regis=
ter 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[0]'. It has the property I=
OB=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICA=
L WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_at=
r_db_inst/gpio_in_iob_reg[10]'. It has the property IOB=3DTRUE, but it is n=
ot driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-7=
3] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_=
reg[11]'. It has the property IOB=3DTRUE, but it is not driving or driven b=
y any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint =
on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[12]'. It has the p=
roperty IOB=3DTRUE, but it is not driving or driven by any IO element.</p><=
p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0=
].gpio_atr_db_inst/gpio_in_iob_reg[13]'. It has the property IOB=3DTRUE, bu=
t it is not driving or driven by any IO element.</p><p>CRITICAL WARNING: [P=
lace 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpi=
o_in_iob_reg[14]'. It has the property IOB=3DTRUE, but it is not driving or=
 driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid co=
nstraint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[15]'. It =
has the property IOB=3DTRUE, but it is not driving or driven by any IO elem=
ent.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register '=
genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[16]'. It has the property IOB=
=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICAL =
WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_=
db_inst/gpio_in_iob_reg[17]'. It has the property IOB=3DTRUE, but it is not=
 driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73]=
 Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_re=
g[18]'. It has the property IOB=3DTRUE, but it is not driving or driven by =
any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on=
 register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[19]'. It has the pro=
perty IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>=
CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].=
gpio_atr_db_inst/gpio_in_iob_reg[1]'. It has the property IOB=3DTRUE, but i=
t is not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Plac=
e 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_i=
n_iob_reg[20]'. It has the property IOB=3DTRUE, but it is not driving or dr=
iven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid const=
raint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[21]'. It has=
 the property IOB=3DTRUE, but it is not driving or driven by any IO element=
.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'gen=
blk2[0].gpio_atr_db_inst/gpio_in_iob_reg[22]'. It has the property IOB=3DTR=
UE, but it is not driving or driven by any IO element.</p><p>CRITICAL WARNI=
NG: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_in=
st/gpio_in_iob_reg[23]'. It has the property IOB=3DTRUE, but it is not driv=
ing or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Inva=
lid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[24]=
'. It has the property IOB=3DTRUE, but it is not driving or driven by any I=
O element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on regi=
ster 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[25]'. It has the property=
 IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITI=
CAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_=
atr_db_inst/gpio_in_iob_reg[26]'. It has the property IOB=3DTRUE, but it is=
 not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30=
-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_io=
b_reg[27]'. It has the property IOB=3DTRUE, but it is not driving or driven=
 by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constrain=
t on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[28]'. It has the=
 property IOB=3DTRUE, but it is not driving or driven by any IO element.</p=
><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2=
[0].gpio_atr_db_inst/gpio_in_iob_reg[29]'. It has the property IOB=3DTRUE, =
but it is not driving or driven by any IO element.</p><p>CRITICAL WARNING: =
[Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/g=
pio_in_iob_reg[2]'. It has the property IOB=3DTRUE, but it is not driving o=
r driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid c=
onstraint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[30]'. It=
 has the property IOB=3DTRUE, but it is not driving or driven by any IO ele=
ment.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register =
'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[31]'. It has the property IOB=
=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICAL =
WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_=
db_inst/gpio_in_iob_reg[3]'. It has the property IOB=3DTRUE, but it is not =
driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] =
Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg=
[4]'. It has the property IOB=3DTRUE, but it is not driving or driven by an=
y IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on r=
egister 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[5]'. It has the proper=
ty IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRI=
TICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].gpi=
o_atr_db_inst/gpio_in_iob_reg[6]'. It has the property IOB=3DTRUE, but it i=
s not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 3=
0-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_in_i=
ob_reg[7]'. It has the property IOB=3DTRUE, but it is not driving or driven=
 by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constrain=
t on register 'genblk2[0].gpio_atr_db_inst/gpio_in_iob_reg[8]'. It has the =
property IOB=3DTRUE, but it is not driving or driven by any IO element.</p>=
<p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[=
0].gpio_atr_db_inst/gpio_in_iob_reg[9]'. It has the property IOB=3DTRUE, bu=
t it is not driving or driven by any IO element.</p><p>CRITICAL WARNING: [P=
lace 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpi=
o_out_iob_reg[0]'. It has the property IOB=3DTRUE, but it is not driving or=
 driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid co=
nstraint on register 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[16]'. It=
 has the property IOB=3DTRUE, but it is not driving or driven by any IO ele=
ment.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register =
'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[17]'. It has the property IOB=
=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICAL =
WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_=
db_inst/gpio_out_iob_reg[18]'. It has the property IOB=3DTRUE, but it is no=
t driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73=
] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_=
reg[19]'. It has the property IOB=3DTRUE, but it is not driving or driven b=
y any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint =
on register 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[1]'. It has the p=
roperty IOB=3DTRUE, but it is not driving or driven by any IO element.</p><=
p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0=
].gpio_atr_db_inst/gpio_out_iob_reg[20]'. It has the property IOB=3DTRUE, b=
ut it is not driving or driven by any IO element.</p><p>CRITICAL WARNING: [=
Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gp=
io_out_iob_reg[21]'. It has the property IOB=3DTRUE, but it is not driving =
or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid =
constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[22]'. =
It has the property IOB=3DTRUE, but it is not driving or driven by any IO e=
lement.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on registe=
r 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[23]'. It has the property I=
OB=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICA=
L WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_at=
r_db_inst/gpio_out_iob_reg[24]'. It has the property IOB=3DTRUE, but it is =
not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-=
73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_out_io=
b_reg[25]'. It has the property IOB=3DTRUE, but it is not driving or driven=
 by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constrain=
t on register 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[26]'. It has th=
e property IOB=3DTRUE, but it is not driving or driven by any IO element.</=
p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk=
2[0].gpio_atr_db_inst/gpio_out_iob_reg[27]'. It has the property IOB=3DTRUE=
, but it is not driving or driven by any IO element.</p><p>CRITICAL WARNING=
: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst=
/gpio_out_iob_reg[28]'. It has the property IOB=3DTRUE, but it is not drivi=
ng or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Inval=
id constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[29]=
'. It has the property IOB=3DTRUE, but it is not driving or driven by any I=
O element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on regi=
ster 'genblk2[0].gpio_atr_db_inst/gpio_out_iob_reg[2]'. It has the property=
 IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITI=
CAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[0].gpio_=
atr_db_inst/gpio_out_iob_reg[30]'. It has the property IOB=3DTRUE, but it i=
s not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 3=
0-73] Invalid constraint on register 'genblk2[0].gpio_atr_db_inst/gpio_out_=
iob_reg[31]'. It has the property IOB=3DTRUE, but it is not driving or driv=
en by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constra=
int on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[0]'. It has th=
e property IOB=3DTRUE, but it is not driving or driven by any IO element.</=
p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk=
2[1].gpio_atr_db_inst/gpio_in_iob_reg[10]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.</p><p>CRITICAL WARNING:=
 [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/=
gpio_in_iob_reg[11]'. It has the property IOB=3DTRUE, but it is not driving=
 or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid=
 constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[12]'. =
It has the property IOB=3DTRUE, but it is not driving or driven by any IO e=
lement.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on registe=
r 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[13]'. It has the property IO=
B=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICAL=
 WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr=
_db_inst/gpio_in_iob_reg[14]'. It has the property IOB=3DTRUE, but it is no=
t driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73=
] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_r=
eg[15]'. It has the property IOB=3DTRUE, but it is not driving or driven by=
 any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint o=
n register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[16]'. It has the pr=
operty IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p=
>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1]=
.gpio_atr_db_inst/gpio_in_iob_reg[17]'. It has the property IOB=3DTRUE, but=
 it is not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Pl=
ace 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio=
_in_iob_reg[18]'. It has the property IOB=3DTRUE, but it is not driving or =
driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid con=
straint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[19]'. It h=
as the property IOB=3DTRUE, but it is not driving or driven by any IO eleme=
nt.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'g=
enblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[1]'. It has the property IOB=3DT=
RUE, but it is not driving or driven by any IO element.</p><p>CRITICAL WARN=
ING: [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_i=
nst/gpio_in_iob_reg[20]'. It has the property IOB=3DTRUE, but it is not dri=
ving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Inv=
alid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[21=
]'. It has the property IOB=3DTRUE, but it is not driving or driven by any =
IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on reg=
ister 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[22]'. It has the propert=
y IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRIT=
ICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1].gpio=
_atr_db_inst/gpio_in_iob_reg[23]'. It has the property IOB=3DTRUE, but it i=
s not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 3=
0-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_i=
ob_reg[24]'. It has the property IOB=3DTRUE, but it is not driving or drive=
n by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constrai=
nt on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[25]'. It has th=
e property IOB=3DTRUE, but it is not driving or driven by any IO element.</=
p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk=
2[1].gpio_atr_db_inst/gpio_in_iob_reg[26]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.</p><p>CRITICAL WARNING:=
 [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/=
gpio_in_iob_reg[27]'. It has the property IOB=3DTRUE, but it is not driving=
 or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid=
 constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[28]'. =
It has the property IOB=3DTRUE, but it is not driving or driven by any IO e=
lement.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on registe=
r 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[29]'. It has the property IO=
B=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICAL=
 WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr=
_db_inst/gpio_in_iob_reg[2]'. It has the property IOB=3DTRUE, but it is not=
 driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73]=
 Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_re=
g[30]'. It has the property IOB=3DTRUE, but it is not driving or driven by =
any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on=
 register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[31]'. It has the pro=
perty IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>=
CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1].=
gpio_atr_db_inst/gpio_in_iob_reg[3]'. It has the property IOB=3DTRUE, but i=
t is not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Plac=
e 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_i=
n_iob_reg[4]'. It has the property IOB=3DTRUE, but it is not driving or dri=
ven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constr=
aint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[5]'. It has t=
he property IOB=3DTRUE, but it is not driving or driven by any IO element.<=
/p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genbl=
k2[1].gpio_atr_db_inst/gpio_in_iob_reg[6]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.</p><p>CRITICAL WARNING:=
 [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/=
gpio_in_iob_reg[7]'. It has the property IOB=3DTRUE, but it is not driving =
or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid =
constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[8]'. It=
 has the property IOB=3DTRUE, but it is not driving or driven by any IO ele=
ment.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register =
'genblk2[1].gpio_atr_db_inst/gpio_in_iob_reg[9]'. It has the property IOB=
=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICAL =
WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_=
db_inst/gpio_out_iob_reg[0]'. It has the property IOB=3DTRUE, but it is not=
 driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73]=
 Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_r=
eg[16]'. It has the property IOB=3DTRUE, but it is not driving or driven by=
 any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint o=
n register 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[17]'. It has the p=
roperty IOB=3DTRUE, but it is not driving or driven by any IO element.</p><=
p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1=
].gpio_atr_db_inst/gpio_out_iob_reg[18]'. It has the property IOB=3DTRUE, b=
ut it is not driving or driven by any IO element.</p><p>CRITICAL WARNING: [=
Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gp=
io_out_iob_reg[19]'. It has the property IOB=3DTRUE, but it is not driving =
or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid =
constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[1]'. I=
t has the property IOB=3DTRUE, but it is not driving or driven by any IO el=
ement.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register=
 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[20]'. It has the property IO=
B=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITICAL=
 WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr=
_db_inst/gpio_out_iob_reg[21]'. It has the property IOB=3DTRUE, but it is n=
ot driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-7=
3] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_out_iob=
_reg[22]'. It has the property IOB=3DTRUE, but it is not driving or driven =
by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint=
 on register 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[23]'. It has the=
 property IOB=3DTRUE, but it is not driving or driven by any IO element.</p=
><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2=
[1].gpio_atr_db_inst/gpio_out_iob_reg[24]'. It has the property IOB=3DTRUE,=
 but it is not driving or driven by any IO element.</p><p>CRITICAL WARNING:=
 [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/=
gpio_out_iob_reg[25]'. It has the property IOB=3DTRUE, but it is not drivin=
g or driven by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invali=
d constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[26]'=
. It has the property IOB=3DTRUE, but it is not driving or driven by any IO=
 element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constraint on regis=
ter 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[27]'. It has the property=
 IOB=3DTRUE, but it is not driving or driven by any IO element.</p><p>CRITI=
CAL WARNING: [Place 30-73] Invalid constraint on register 'genblk2[1].gpio_=
atr_db_inst/gpio_out_iob_reg[28]'. It has the property IOB=3DTRUE, but it i=
s not driving or driven by any IO element.</p><p>CRITICAL WARNING: [Place 3=
0-73] Invalid constraint on register 'genblk2[1].gpio_atr_db_inst/gpio_out_=
iob_reg[29]'. It has the property IOB=3DTRUE, but it is not driving or driv=
en by any IO element.</p><p>CRITICAL WARNING: [Place 30-73] Invalid constra=
int on register 'genblk2[1].gpio_atr_db_inst/gpio_out_iob_reg[2]'. It has t=
he property IOB=3DTRUE, but it is not driving or driven by any IO element.<=
/p><p>WARNING: [Place 30-568] A LUT 'e31x_core_inst/tpps_i_2' is driving cl=
ock pin of 25 registers. This could lead to large hold time violations. Fir=
st few involved registers are:</p><p>WARNING: [Place 30-172] Sub-optimal pl=
acement for a clock-capable IO pin and PLL pair. This is normally an ERROR =
but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your desi=
gn to continue. The use of this override is highly discouraged as it may le=
ad to very poor timing results. It is recommended that this error condition=
 be corrected in the design.</p><p>[00:10:22] Current task: Placer +++ Curr=
ent Phase: 1.2 IO Placement/ Clock Placement/ Build Placer Device</p><p>WAR=
NING: [Place 30-770] High register utilization is forcing place_design to p=
lace up to 8 registers per slice which may impact placement success and/or =
routing congestion.</p><p>[00:10:43] Current task: Placer +++ Current Phase=
: 1.3 Build Placer Netlist Model</p><p>[00:10:44] Current task: Placer +++ =
Current Phase: 1.4 Constrain Clocks/Macros</p><p>[00:10:44] Current task: P=
lacer +++ Current Phase: 2 Global Placement</p><p>[00:10:49] Current task: =
Placer +++ Current Phase: 2.1 Floorplanning</p><p>[00:10:55] Current task: =
Placer +++ Current Phase: 2.2 Update Timing before SLR Path Opt</p><p>[00:1=
1:42] Current task: Placer +++ Current Phase: 2.4 Global Placement Core</p>=
<p>[00:12:05] Current task: Placer +++ Current Phase: 2.4.1 Physical Synthe=
sis In Placer</p><p>[00:12:05] Current task: Placer +++ Current Phase: 3 De=
tail Placement</p><p>[00:12:20] Current task: Placer +++ Current Phase: 3.1=
 Commit Multi Column Macros</p><p>[00:12:21] Current task: Placer +++ Curre=
nt Phase: 3.3 Area Swap Optimization</p><p>[00:12:21] Current task: Placer =
+++ Current Phase: 3.4 Pipeline Register Optimization</p><p>[00:12:29] Curr=
ent task: Placer +++ Current Phase: 3.5 Fast Optimization</p><p>ERROR: [Pla=
ce 30-487] The packing of instances into the device could not be obeyed. Th=
ere are a total of 13300 slices in the device, of which 9737 slices are ava=
ilable, however, the unplaced instances require 10808 slices. Please analyz=
e your design to determine if the number of LUTs, FFs, and/or control sets =
can be reduced.</p><p>ERROR: [Place 30-99] Placer failed with error: 'Detai=
l Placement failed please check previous errors for details.'</p><p>ERROR: =
[Common 17-69] Command failed: Placer could not place all instances</p><p>[=
00:12:59] Current task: Placer +++ Current Phase: 3.6 Small Shape Detail Pl=
acement</p><p>[00:12:59] Current task: Placer +++ Current Phase: Finished</=
p><p>[00:12:59] Process terminated. Status: Failure</p><p>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</p><p>Warnings:           877</p><p>Critical Warnings:  122</p><p>Error=
s:             3</p><p>make[1]: *** [Makefile.e31x.inc:121: bin] Error 1</p=
><p>make[1]: Leaving directory '/home/grcusrp/uhd/fpga/usrp3/top/e31x'</p><=
p>make: *** [Makefile:80: E310_SG3] Error 2</p>

--b1_gvp0nSoADAY8jJTzHYmOXbHn844aDf9RcFjUvovoT8--

--===============8369131573300029336==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8369131573300029336==--
