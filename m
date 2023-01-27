Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B27867F10D
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jan 2023 23:18:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A2B7A38445C
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jan 2023 17:18:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674857912; bh=+KuWYdz0H2zWIYplRTuYazG/HzzA2AO1AJeSJSf7A2U=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=oTOJAK8602Ph+pQ2XzZ6YnJU+kKwuYmxLRGR0w3U1Px/TymPKz6he0Lu42EldcGfp
	 gEis5nZLX8PCiS7EbiUhPabP0X3+KiXeG40b9f+s9iZ7LAiAwm53lSucY6cEVRJiN1
	 pRjJvyR7IEbGYfBCx6bxzz1vM++oK6xk4jx+Db9TRELw3LV0vgKwrDCBiKO/csDQPP
	 fM/7AKufk+0rCi3qFFPll0ENxrewc5P/1tdDhXg28hm2PJGy5WG12J6ecR6XcNnee8
	 JF0A19zxNX2aps9QtwUftoTwN7vXIzi33qf0NQ4BfARQRJZbH9N8JvuW+uHjmF+4vO
	 u6JAEP+RGbTGQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5207B384452
	for <usrp-users@lists.ettus.com>; Fri, 27 Jan 2023 17:17:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674857862; bh=wqOvAIe54pDEjFXDMiZv4GhuY0uao7Y593dcUf9LiY4=;
	h=Date:To:From:Subject:From;
	b=Mb55zDN3zB7GuoGlMJqt+Un3J8izFwKOcPMIr4H8lo0GKqibU1uRR65cBStLqM452
	 eRNSa+a4G8mDBJH92FYcuNiRfzzLr/8EkINpr+aNZuqhwOW51HCQvjDgOy3MT33wsB
	 Q4g3B8ppcomUc6Sb7xkAd+U8t6s1lVM6VWazKS8ScDvY4mRaLCU6K1nqTHk0ZOi+JV
	 DuX2tcMdF7ahWdFJWMFNsybgpkIYHWzUafYFIhXiJnDruN8QLtUXFZgmn3gq7QJngj
	 Pwl286yeJgH06zapYYoNlYnqn2vB2R4gnAu6GNhwa3lQDXFJotFRvTd9/DZI/8TNvp
	 dzEhRFHGdQVRw==
Date: Fri, 27 Jan 2023 22:17:42 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <UX8mi9utjbHMzjxx15xWBxXZPMWYdEURx50EsrFtWQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: CEQACLD32WGQ6T3X3GBJMKVLCRZ3JFP5
X-Message-ID-Hash: CEQACLD32WGQ6T3X3GBJMKVLCRZ3JFP5
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error when synthesizing example OOT block : IP "cmplx_mul" is locked
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CEQACLD32WGQ6T3X3GBJMKVLCRZ3JFP5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8574059456592684256=="

This is a multi-part message in MIME format.

--===============8574059456592684256==
Content-Type: multipart/alternative;
 boundary="b1_UX8mi9utjbHMzjxx15xWBxXZPMWYdEURx50EsrFtWQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_UX8mi9utjbHMzjxx15xWBxXZPMWYdEURx50EsrFtWQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I have run into an issue when trying to synthesize the =E2=80=9Cgain=E2=80=
=9D RFNoC as described in the tutorial here https://kb.ettus.com/Getting_=
Started_with_RFNoC_in_UHD_4.0=20

I get an error that the module cmplx mul is locked. I found that in the v=
erilog file =E2=80=9Crfnoc_block_gain.v=E2=80=9D, the module is instantia=
ted there, but I am unsure how I should proceed working around this.

Here is the output of the vivado -version

`Vivado v2021.1_AR76780 (64-bit)`

`SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021`

`IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021`

`Copyright 1986-2021 Xilinx, Inc. All Rights Reserved`

And here is the output of the error

`=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D`

`BUILDER: Building IP cmplx_mul`

`=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D`

`BUILDER: Staging IP in build directory...`

`BUILDER: Reserving IP location: /workarea/uhd/fpga/usrp3/top/n3xx/build-=
ip/xc7z100ffg900-2/cmplx_mul`

`BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...`

`BUILDER: Building IP...`

`[00:00:00] Executing command: vivado -mode batch -source /workarea/uhd/f=
pga/usrp3/tools/scripts/viv_generate_ip.tcl -log cmplx_mul.log -nojournal=
`

`[00:00:05] Current task: Initialization +++ Current Phase: Starting`

`WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:`

`CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the f=
ollowing file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z1=
00ffg900-2/cmplx_mul/cmplx_mul.xci`

`CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for th=
e following file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc=
7z100ffg900-2/cmplx_mul/cmplx_mul.xci`

`[00:00:05] Current task: Initialization +++ Current Phase: Finished`

`[00:00:05] Executing Tcl: synth_design -top cmplx_mul -part xc7z100ffg90=
0-2 -mode out_of_context`

`[00:00:05] Starting Synthesis Command`

`WARNING: [Vivado_Tcl 4-391] The following IPs are missing output product=
s for Synthesis target. These output products could be required for synth=
esis, please generate the output products using the generate_target or sy=
nth_ip command before running synth_design.`

`WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:`

`ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources s=
pecified`

`ERROR: [Common 17-53] User Exception: No open design. Please open an ela=
borated, synthesized or implemented design before executing this command.=
`

`ERROR: [Common 17-53] User Exception: No open design. Please open an ela=
borated, synthesized or implemented design before executing this command.=
`

`ERROR: [Common 17-53] User Exception: No open design. Please open an ela=
borated, synthesized or implemented design before executing this command.=
`

`ERROR: [Common 17-53] User Exception: No open design. Please open an ela=
borated, synthesized or implemented design before executing this command.=
`

`ERROR: [Common 17-53] User Exception: No open design. Please open an ela=
borated, synthesized or implemented design before executing this command.=
`

`ERROR: [Common 17-53] User Exception: No open design. Please open an ela=
borated, synthesized or implemented design before executing this command.=
`

`CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/work=
area/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul=
.xml'`

`CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/work=
area/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul=
.xml'`

`CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/work=
area/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul=
.xml'`

`CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/work=
area/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul=
.xml'`

`[00:00:06] Current task: Synthesis +++ Current Phase: Starting`

`CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/work=
area/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul=
.xml'`

`ERROR: [Vivado 12-398] No designs are open`

`[00:00:06] Current task: Synthesis +++ Current Phase: Finished`

`[00:00:06] Process terminated. Status: Failure`

`=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D`

`Warnings:           3`

`Critical Warnings:  7`

`Errors:             8`

`BUILDER: Releasing IP location: /workarea/uhd/fpga/usrp3/top/n3xx/build-=
ip/xc7z100ffg900-2/cmplx_mul`

`make[1]: *** [/rfnoc-foo/fpga//ip/cmplx_mul/Makefile.inc:21: LIB_IP_CMPL=
X_MUL_TRGT] Error 1`

`make[1]: Leaving directory '/workarea/uhd/fpga/usrp3/top/n3xx'`

`make: *** [Makefile:90: N3X0_IP] Error 2`

--b1_UX8mi9utjbHMzjxx15xWBxXZPMWYdEURx50EsrFtWQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I have run into an issue when trying to synthesi=
ze the =E2=80=9Cgain=E2=80=9D RFNoC as described in the tutorial here https=
://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0 </p><p><br></p><p>I g=
et an error that the module cmplx mul is locked. I found that in the verilo=
g file =E2=80=9Crfnoc_block_gain.v=E2=80=9D, the module is instantiated the=
re, but I am unsure how I should proceed working around this.</p><p><br></p=
><p>Here is the output of the vivado -version</p><p><code>Vivado v2021.1_AR=
76780 (64-bit)</code></p><p><code>SW Build 3247384 on Thu Jun 10 19:36:07 M=
DT 2021</code></p><p><code>IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021=
</code></p><p><code>Copyright 1986-2021 Xilinx, Inc. All Rights Reserved</c=
ode></p><p>And here is the output of the error</p><p><code>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</code></p><p><code>BUILDER: Building IP cmplx_mul</code></p><p><code>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D</code></p><p><code>BUILDER: Staging IP in build director=
y...</code></p><p><code>BUILDER: Reserving IP location: /workarea/uhd/fpga/=
usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul</code></p><p><code>BUILDE=
R: Retargeting IP to part zynq/xc7z100/ffg900/-2...</code></p><p><code>BUIL=
DER: Building IP...</code></p><p><code>[00:00:00] Executing command: vivado=
 -mode batch -source /workarea/uhd/fpga/usrp3/tools/scripts/viv_generate_ip=
.tcl -log cmplx_mul.log -nojournal</code></p><p><code>[00:00:05] Current ta=
sk: Initialization +++ Current Phase: Starting</code></p><p><code>WARNING: =
[IP_Flow 19-2162] IP 'cmplx_mul' is locked:</code></p><p><code>CRITICAL WAR=
NING: [filemgmt 20-1366] Unable to reset target(s) for the following file i=
s locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_=
mul/cmplx_mul.xci</code></p><p><code>CRITICAL WARNING: [filemgmt 20-1365] U=
nable to generate target(s) for the following file is locked: /workarea/uhd=
/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xci</code=
></p><p><code>[00:00:05] Current task: Initialization +++ Current Phase: Fi=
nished</code></p><p><code>[00:00:05] Executing Tcl: synth_design -top cmplx=
_mul -part xc7z100ffg900-2 -mode out_of_context</code></p><p><code>[00:00:0=
5] Starting Synthesis Command</code></p><p><code>WARNING: [Vivado_Tcl 4-391=
] The following IPs are missing output products for Synthesis target. These=
 output products could be required for synthesis, please generate the outpu=
t products using the generate_target or synth_ip command before running syn=
th_design.</code></p><p><code>WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is =
locked:</code></p><p><code>ERROR: [Designutils 20-414] HRTInvokeSpec : No V=
erilog or VHDL sources specified</code></p><p><code>ERROR: [Common 17-53] U=
ser Exception: No open design. Please open an elaborated, synthesized or im=
plemented design before executing this command.</code></p><p><code>ERROR: [=
Common 17-53] User Exception: No open design. Please open an elaborated, sy=
nthesized or implemented design before executing this command.</code></p><p=
><code>ERROR: [Common 17-53] User Exception: No open design. Please open an=
 elaborated, synthesized or implemented design before executing this comman=
d.</code></p><p><code>ERROR: [Common 17-53] User Exception: No open design.=
 Please open an elaborated, synthesized or implemented design before execut=
ing this command.</code></p><p><code>ERROR: [Common 17-53] User Exception: =
No open design. Please open an elaborated, synthesized or implemented desig=
n before executing this command.</code></p><p><code>ERROR: [Common 17-53] U=
ser Exception: No open design. Please open an elaborated, synthesized or im=
plemented design before executing this command.</code></p><p><code>CRITICAL=
 WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workarea/uhd/fp=
ga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'</code><=
/p><p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM fi=
le '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cm=
plx_mul.xml'</code></p><p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing=
 uncustomized BOM file '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100f=
fg900-2/cmplx_mul/cmplx_mul.xml'</code></p><p><code>CRITICAL WARNING: [IP_F=
low 19-4739] Writing uncustomized BOM file '/workarea/uhd/fpga/usrp3/top/n3=
xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'</code></p><p><code>[00=
:00:06] Current task: Synthesis +++ Current Phase: Starting</code></p><p><c=
ode>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/wor=
karea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.=
xml'</code></p><p><code>ERROR: [Vivado 12-398] No designs are open</code></=
p><p><code>[00:00:06] Current task: Synthesis +++ Current Phase: Finished</=
code></p><p><code>[00:00:06] Process terminated. Status: Failure</code></p>=
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p><p><code>Warnings:           3</code>=
</p><p><code>Critical Warnings:  7</code></p><p><code>Errors:             8=
</code></p><p><code>BUILDER: Releasing IP location: /workarea/uhd/fpga/usrp=
3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul</code></p><p><code>make[1]: *=
** [/rfnoc-foo/fpga//ip/cmplx_mul/Makefile.inc:21: LIB_IP_CMPLX_MUL_TRGT] E=
rror 1</code></p><p><code>make[1]: Leaving directory '/workarea/uhd/fpga/us=
rp3/top/n3xx'</code></p><p><code>make: *** [Makefile:90: N3X0_IP] Error 2</=
code></p>

--b1_UX8mi9utjbHMzjxx15xWBxXZPMWYdEURx50EsrFtWQ--

--===============8574059456592684256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8574059456592684256==--
