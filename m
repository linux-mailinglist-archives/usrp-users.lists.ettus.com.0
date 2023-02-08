Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BAC68F19C
	for <lists+usrp-users@lfdr.de>; Wed,  8 Feb 2023 16:07:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B934B383CF0
	for <lists+usrp-users@lfdr.de>; Wed,  8 Feb 2023 10:07:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675868870; bh=cNtZ8/CpVfIA69PybVb+rLuM5lSbs3Ds2h/Iw6S6/mA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=TKM1I74k9b6ZMa78ZvBTTTF//CXM8TJrD7xs7yK/oBmg87V0rWHJ5uVZ2wJWeK5P7
	 EkStG6OYMRNf1tUliusCAmPkRz0rgFhG7FVWlh2BefKowZWAPtc9moIL1E21uzHxcx
	 D9UfYtM/m7mHZs250tron5B1fvcyPZNM5uE9S5/HRI85lRSPGhgC15+07q8FXYcPEP
	 rvKV0TZVJKTeSCKE9DG7QyzGgzcJeS2RpyEKZrwIZ0iFvOSNOz+eMOmVnatku5gGTm
	 0FWy6nny5cOtZBRdi5aU1BCauBi8cJKh48mBOOiaGl5SVm1PQlB/TQ3EK/O9u+B0+8
	 NUFaIgTLukjsQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1207B3818CD
	for <usrp-users@lists.ettus.com>; Wed,  8 Feb 2023 10:06:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675868768; bh=caq8tI9J0+2Gz+s2C1TpcbJ+FBF9e7i7lGPFp+L0m3E=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=y+5atRhMiHJTkrfqGKK2OAPYuFTrCt+QKCpFw9PA9kf1V5pr2959hom4KK4Gt+MNZ
	 mny5qQxn4K1aawOds7/0ZJg0ZYm0X0W+NEnxDvwHTzRz1a0A/ApZt01jmdSNsSjfJC
	 qdOok+ggZFOxvwoLGrjRtETg6Bj0D1ik0Z0CzCZP5w2UYRxex73OQ/CVPkUArit0/V
	 IxvFXdl0dctrSL8NrMMihr/VRr+7MRP5X2bBW4Dw9ZnKV2EejDwhOStqAluj1HRKSq
	 YcUsJRRtw4jgH4iPMrugXd64rasHKQI7BBQ3MnEVJdgX48SXHsea5dWJTHTGlzQpAC
	 pWtK/E+VU6XBw==
Date: Wed, 8 Feb 2023 15:06:08 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <dxHS34DdkMqwH8ux7CNibsv5X43cM5ZB1cBMcDrTg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=iL_=f0R0h_5eEO6rbai1nqOzdOuWzyzeLFSH8XW_uNFg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: QNC4DVTF5OINYNZOX53ZN6RYT7I76OO3
X-Message-ID-Hash: QNC4DVTF5OINYNZOX53ZN6RYT7I76OO3
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Module not found when creating OOT module
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QNC4DVTF5OINYNZOX53ZN6RYT7I76OO3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0346413539346114223=="

This is a multi-part message in MIME format.

--===============0346413539346114223==
Content-Type: multipart/alternative;
 boundary="b1_dxHS34DdkMqwH8ux7CNibsv5X43cM5ZB1cBMcDrTg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_dxHS34DdkMqwH8ux7CNibsv5X43cM5ZB1cBMcDrTg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am currently trying to trace through the makefiles to see what is wrong=
, but it seems it can not find any sources unless explicitly told. I coul=
d go through the process of manually including every file needed, however=
, I feel like this would be inefficient in the long run, so I am still tr=
ying to solve what is causing this.

It seems every module that is needed is in fact added by the builder, but=
 for whatever reason it can not be found.

Here is the updated error report=E2=80=A6

`ERROR: [VRFC 10-2063] Module <synchronizer> not found while processing m=
odule instance <sync_ctrl_i> [ /workarea/uhd/fpga/usrp3/lib/rfnoc/core/ba=
ckend_iface.v:69]`

`ERROR: [VRFC 10-2063] Module <pulse_synchronizer> not found while proces=
sing module instance <soft_ctrl_rst_sync_i> [ /workarea/uhd/fpga/usrp3/li=
b/rfnoc/core/backend_iface.v:81]`

`ERROR: [VRFC 10-2063] Module <pulse_stretch_min> not found while process=
ing module instance <soft_ctrl_rst_stretch_i> [ /workarea/uhd/fpga/usrp3/=
lib/rfnoc/core/backend_iface.v:91]`

`ERROR: [VRFC 10-2063] Module <ctrlport_endpoint> not found while process=
ing module instance <ctrlport_endpoint_i> [ /workarea/uhd/OOTs/rfnoc-trig=
ger/fpga/rfnoc_block_trigger/noc_shell_trigger.v:173]`

`ERROR: [VRFC 10-2063] Module <ctrlport_to_settings_bus> not found while =
processing module instance <ctrlport_to_settings_bus_i> [ /workarea/uhd/O=
OTs/rfnoc-trigger/fpga/rfnoc_block_trigger/rfnoc_block_trigger.v:200]`

`ERROR: [XSIM 43-3322] Static elaboration of top level Verilog design uni=
t(s) in library work failed.`

`INFO: [USF-XSim-69] 'elaborate' step finished in '1' seconds`

`INFO: [USF-XSim-99] Step results log file:' /workarea/uhd/OOTs/rfnoc-tri=
gger/fpga/rfnoc_block_trigger/xsim_proj/xsim_proj.sim/sim_1/behav/xsim/el=
aborate.log'`

`ERROR: [USF-XSim-62] 'elaborate' step failed with error(s). Please check=
 the Tcl console output or ' /workarea/uhd/OOTs/rfnoc-trigger/fpga/rfnoc_=
block_trigger/xsim_proj/xsim_proj.sim/sim_1/behav/xsim/elaborate.log' fil=
e for more information.`

`ERROR: [Vivado 12-4473] Detected error while running simulation. Please =
correct the issue and retry this operation.`

`launch_simulation: Time (s): cpu =3D 00:00:05 ; elapsed =3D 00:00:05 . M=
emory (MB): peak =3D 2495.422 ; gain =3D 0.152 ; free physical =3D 12659 =
; free virtual =3D 26860`

`ERROR: [Common 17-39] 'launch_simulation' failed due to earlier errors.`

And here is the modules I have manually include(so far),

Inside rfnoc_block_trigger_tb.sv, I put the following include statements,

`` `include "  /workarea/uhd/OOTs/rfnoc-trigger/fpga/rfnoc_block_trigger/=
rfnoc_block_trigger.v" ``

``   `include "  /workarea/uhd/OOTs/rfnoc-trigger/fpga/rfnoc_block_trigge=
r/noc_shell_trigger.v" ``

``   `include "  /workarea/uhd/fpga/usrp3/lib/axi4s_sv/AxiStreamIf.sv" ``

``   `include "  /workarea/uhd/fpga/usrp3/sim/rfnoc/sim_clock_gen.sv" ``

inside noc_shell_trigger.v, I put the following include statements

`` `include "  /workarea/uhd/fpga/usrp3/lib/rfnoc/core/backend_iface.v" `=
`

I have checked for typos, and I have found none.

--b1_dxHS34DdkMqwH8ux7CNibsv5X43cM5ZB1cBMcDrTg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I am currently trying to trace through the makefiles to see what is wron=
g, but it seems it can not find any sources unless explicitly told. I could=
 go through the process of manually including every file needed, however, I=
 feel like this would be inefficient in the long run, so I am still trying =
to solve what is causing this.</p><p>It seems every module that is needed i=
s in fact added by the builder, but for whatever reason it can not be found=
.</p><p>Here is the updated error report=E2=80=A6</p><p><code>ERROR: [VRFC =
10-2063] Module &lt;synchronizer&gt; not found while processing module inst=
ance &lt;sync_ctrl_i&gt; [ /workarea/uhd/fpga/usrp3/lib/rfnoc/core/backend_=
iface.v:69]</code></p><p><code>ERROR: [VRFC 10-2063] Module &lt;pulse_synch=
ronizer&gt; not found while processing module instance &lt;soft_ctrl_rst_sy=
nc_i&gt; [ /workarea/uhd/fpga/usrp3/lib/rfnoc/core/backend_iface.v:81]</cod=
e></p><p><code>ERROR: [VRFC 10-2063] Module &lt;pulse_stretch_min&gt; not f=
ound while processing module instance &lt;soft_ctrl_rst_stretch_i&gt; [ /wo=
rkarea/uhd/fpga/usrp3/lib/rfnoc/core/backend_iface.v:91]</code></p><p><code=
>ERROR: [VRFC 10-2063] Module &lt;ctrlport_endpoint&gt; not found while pro=
cessing module instance &lt;ctrlport_endpoint_i&gt; [ /workarea/uhd/OOTs/rf=
noc-trigger/fpga/rfnoc_block_trigger/noc_shell_trigger.v:173]</code></p><p>=
<code>ERROR: [VRFC 10-2063] Module &lt;ctrlport_to_settings_bus&gt; not fou=
nd while processing module instance &lt;ctrlport_to_settings_bus_i&gt; [ /w=
orkarea/uhd/OOTs/rfnoc-trigger/fpga/rfnoc_block_trigger/rfnoc_block_trigger=
.v:200]</code></p><p><code>ERROR: [XSIM 43-3322] Static elaboration of top =
level Verilog design unit(s) in library work failed.</code></p><p><code>INF=
O: [USF-XSim-69] 'elaborate' step finished in '1' seconds</code></p><p><cod=
e>INFO: [USF-XSim-99] Step results log file:' /workarea/uhd/OOTs/rfnoc-trig=
ger/fpga/rfnoc_block_trigger/xsim_proj/xsim_proj.sim/sim_1/behav/xsim/elabo=
rate.log'</code></p><p><code>ERROR: [USF-XSim-62] 'elaborate' step failed w=
ith error(s). Please check the Tcl console output or ' /workarea/uhd/OOTs/r=
fnoc-trigger/fpga/rfnoc_block_trigger/xsim_proj/xsim_proj.sim/sim_1/behav/x=
sim/elaborate.log' file for more information.</code></p><p><code>ERROR: [Vi=
vado 12-4473] Detected error while running simulation. Please correct the i=
ssue and retry this operation.</code></p><p><code>launch_simulation: Time (=
s): cpu =3D 00:00:05 ; elapsed =3D 00:00:05 . Memory (MB): peak =3D 2495.42=
2 ; gain =3D 0.152 ; free physical =3D 12659 ; free virtual =3D 26860</code=
></p><p><code>ERROR: [Common 17-39] 'launch_simulation' failed due to earli=
er errors.</code></p><p>And here is the modules I have manually include(so =
far),</p><p>Inside rfnoc_block_trigger_tb.sv, I put the following include s=
tatements,</p><p><code>`include "  /workarea/uhd/OOTs/rfnoc-trigger/fpga/rf=
noc_block_trigger/rfnoc_block_trigger.v"</code></p><p><code>  `include "  /=
workarea/uhd/OOTs/rfnoc-trigger/fpga/rfnoc_block_trigger/noc_shell_trigger.=
v"</code></p><p><code>  `include "  /workarea/uhd/fpga/usrp3/lib/axi4s_sv/A=
xiStreamIf.sv"</code></p><p><code>  `include "  /workarea/uhd/fpga/usrp3/si=
m/rfnoc/sim_clock_gen.sv"</code></p><p>inside noc_shell_trigger.v, I put th=
e following include statements</p><p><code>`include "  /workarea/uhd/fpga/u=
srp3/lib/rfnoc/core/backend_iface.v"</code></p><p>I have checked for typos,=
 and I have found none. </p>

--b1_dxHS34DdkMqwH8ux7CNibsv5X43cM5ZB1cBMcDrTg--

--===============0346413539346114223==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0346413539346114223==--
