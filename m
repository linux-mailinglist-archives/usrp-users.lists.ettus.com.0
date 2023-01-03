Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4997165C841
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 21:41:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3CF6B3842D9
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 15:41:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672778477; bh=c5MtDzCVdWg43Oey0fjE6KnIApo8I9EWuwoW5sqPyiE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MAJvBBnn4nubcS4BCjbeePB4G5kYkYQ5Irhtjdk2Hwjg6vo+mBADSCttZxcpw5kSz
	 B4+Ivyvin4OdTy2JsGUY6Mxra9Ln3bWI+oVGBKZkqK11OSp5CHGbtE80OSTaSm6jjS
	 8QJWxZ746t4k/hP5g/kjUcxYk3Rl8S/oz7AkqhSUf0cYcdGJAlSNBUhec1zOIcLBPx
	 68pC1+A+cVAOcXcHWh+4uG+5afH2GsTqu1bYcJ68NOBlkYGYW3C439dNF37k+iJVvO
	 hLSLZLVtpmsEMea9IVfnq+faxpnnyMKjE2b0MyeM4g6DRImOl0yQEml5QRx+/vrUVy
	 r9zQ5P5l+YVfg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 880DA384296
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 15:39:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672778399; bh=S6cOD3S7qwvHsWc36EfrCshhN4zJGveZiMxFW0v7FxY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=nTw9NYD51SOVZ3E78tkeLQ1tNr3yrG8p/SPANktkMWyYn8iR+yjKIL+T2srSoUZH7
	 /A2OK8ca7pT2kgqJPhvgXMPSHYSwi7l+mZ6KBmuAnQTfwgGQ3tTZ88410uetrYkwNa
	 cPZrF37sd1hjGknTgxxq0qyTaUFo5SLzTV7PWPJLnK2srKUso79krv9xHKz4FReyie
	 uCZtjHKZ4glNvT5J29bKCBkQGBobt74GLW5Phd1NxLtn2tBCroZ1GTfEVY2Blb6mNm
	 loBx9aUjzgT6Qk/vRD5Y/w8nt8zjBiX/ijJqwq1o4IL5iefw/oQiPUpxw1uaNdD2XT
	 b1LkWOX8Xl41g==
Date: Tue, 3 Jan 2023 20:39:59 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <DAaWB9DenFAL4Y9dwqJeUsx4ay2GGMp0LzcJRWe14@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=jTB7rV4ZwXqkw3GWBFrfD-u5DfMZJvg7twtX9bb0kLHw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: OGBRO2F7RRZ7AC5NIOKQH33TWTI3XBT3
X-Message-ID-Hash: OGBRO2F7RRZ7AC5NIOKQH33TWTI3XBT3
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building x310 FPGA image for UHD 4.3.0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OGBRO2F7RRZ7AC5NIOKQH33TWTI3XBT3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6718864156774537567=="

This is a multi-part message in MIME format.

--===============6718864156774537567==
Content-Type: multipart/alternative;
 boundary="b1_DAaWB9DenFAL4Y9dwqJeUsx4ay2GGMp0LzcJRWe14"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_DAaWB9DenFAL4Y9dwqJeUsx4ay2GGMp0LzcJRWe14
Content-Type: text/plain; charset=us-ascii

Here are my next steps:

1. git clone https://github.com/EttusResearch/uhd.git clean_uhd

2. git checkout v4.3.0.0

3. source setupenv.sh --vivado-path=/path/to/Xilinx/Vivado/

4. make cleanall

5. make X310_XG

I get a very similar error:

`========================================================`

`BUILDER: Building IP axi_hb31`

`========================================================`

`BUILDER: Staging IP in build directory...`

`BUILDER: Reserving IP location: /afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31`

`BUILDER: Retargeting IP to part kintex7/xc7k410t/ffg900/-2...`

`BUILDER: Building IP...`

`[00:00:00] Executing command: vivado -mode batch -source /afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log axi_hb31.log -nojournal`

`[00:00:13] Current task: Initialization +++ Current Phase: Starting`

`WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:`

`CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the following file is locked: /afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xci`

`CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the following file is locked: /afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xci`

`[00:00:13] Current task: Initialization +++ Current Phase: Finished`

`[00:00:13] Executing Tcl: synth_design -top axi_hb31 -part xc7k410tffg900-2 -mode out_of_context`

`[00:00:13] Starting Synthesis Command`

`WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products for Synthesis target. These output products could be required for synthesis, please generate the output products using the generate_target or synth_ip command before running synth_design.`

`WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:`

`ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources specified`

`ERROR: [Common 17-53] User Exception: No open design. Please open an elaborated, synthesized or implemented design before executing this command.`

`ERROR: [Common 17-53] User Exception: No open design. Please open an elaborated, synthesized or implemented design before executing this command.`

`ERROR: [Common 17-53] User Exception: No open design. Please open an elaborated, synthesized or implemented design before executing this command.`

`ERROR: [Common 17-53] User Exception: No open design. Please open an elaborated, synthesized or implemented design before executing this command.`

`ERROR: [Common 17-53] User Exception: No open design. Please open an elaborated, synthesized or implemented design before executing this command.`

`ERROR: [Common 17-53] User Exception: No open design. Please open an elaborated, synthesized or implemented design before executing this command.`

`CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'`

`CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'`

`CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'`

`CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'`

`CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'`

`ERROR: [Vivado 12-398] No designs are open`

`[00:00:14] Current task: Synthesis +++ Current Phase: Starting`

`[00:00:14] Current task: Synthesis +++ Current Phase: Finished`

`[00:00:14] Process terminated. Status: Failure`

`========================================================`

`Warnings:           3`

`Critical Warnings:  7`

`Errors:             8`

`BUILDER: Releasing IP location: /afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31`

`make[1]: *** [/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/lib/ip/axi_hb31/Makefile.inc:20: LIB_IP_AXI_HB31_TRGT] Error 1`

`make[1]: Leaving directory '/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300'`

--b1_DAaWB9DenFAL4Y9dwqJeUsx4ay2GGMp0LzcJRWe14
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Here are my next steps:</p><ol><li><p>git clone https://github.com/Ettus=
Research/uhd.git clean_uhd</p></li><li><p>git checkout v4.3.0.0</p></li><li=
><p>source setupenv.sh --vivado-path=3D/path/to/Xilinx/Vivado/</p></li><li>=
<p>make cleanall</p></li><li><p>make X310_XG</p></li></ol><p>I get a very s=
imilar error:</p><p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p><p><code>BUILDER: B=
uilding IP axi_hb31</code></p><p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p><p><cod=
e>BUILDER: Staging IP in build directory...</code></p><p><code>BUILDER: Res=
erving IP location: /afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/=
x300/build-ip/xc7k410tffg900-2/axi_hb31</code></p><p><code>BUILDER: Retarge=
ting IP to part kintex7/xc7k410t/ffg900/-2...</code></p><p><code>BUILDER: B=
uilding IP...</code></p><p><code>[00:00:00] Executing command: vivado -mode=
 batch -source /afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/tools/scr=
ipts/viv_generate_ip.tcl -log axi_hb31.log -nojournal</code></p><p><code>[0=
0:00:13] Current task: Initialization +++ Current Phase: Starting</code></p=
><p><code>WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:</code></p><p>=
<code>CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for th=
e following file is locked: /afs/mitll/usr/ri28856/public/clean_uhd/fpga/us=
rp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xci</code></p><p><=
code>CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for =
the following file is locked: /afs/mitll/usr/ri28856/public/clean_uhd/fpga/=
usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xci</code></p><p=
><code>[00:00:13] Current task: Initialization +++ Current Phase: Finished<=
/code></p><p><code>[00:00:13] Executing Tcl: synth_design -top axi_hb31 -pa=
rt xc7k410tffg900-2 -mode out_of_context</code></p><p><code>[00:00:13] Star=
ting Synthesis Command</code></p><p><code>WARNING: [Vivado_Tcl 4-391] The f=
ollowing IPs are missing output products for Synthesis target. These output=
 products could be required for synthesis, please generate the output produ=
cts using the generate_target or synth_ip command before running synth_desi=
gn.</code></p><p><code>WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:<=
/code></p><p><code>ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog o=
r VHDL sources specified</code></p><p><code>ERROR: [Common 17-53] User Exce=
ption: No open design. Please open an elaborated, synthesized or implemente=
d design before executing this command.</code></p><p><code>ERROR: [Common 1=
7-53] User Exception: No open design. Please open an elaborated, synthesize=
d or implemented design before executing this command.</code></p><p><code>E=
RROR: [Common 17-53] User Exception: No open design. Please open an elabora=
ted, synthesized or implemented design before executing this command.</code=
></p><p><code>ERROR: [Common 17-53] User Exception: No open design. Please =
open an elaborated, synthesized or implemented design before executing this=
 command.</code></p><p><code>ERROR: [Common 17-53] User Exception: No open =
design. Please open an elaborated, synthesized or implemented design before=
 executing this command.</code></p><p><code>ERROR: [Common 17-53] User Exce=
ption: No open design. Please open an elaborated, synthesized or implemente=
d design before executing this command.</code></p><p><code>CRITICAL WARNING=
: [IP_Flow 19-4739] Writing uncustomized BOM file '/afs/mitll/usr/ri28856/p=
ublic/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_=
hb31.xml'</code></p><p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing un=
customized BOM file '/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top=
/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'</code></p><p><code>C=
RITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/afs/mitl=
l/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-=
2/axi_hb31/axi_hb31.xml'</code></p><p><code>CRITICAL WARNING: [IP_Flow 19-4=
739] Writing uncustomized BOM file '/afs/mitll/usr/ri28856/public/clean_uhd=
/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'</code=
></p><p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM =
file '/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/=
xc7k410tffg900-2/axi_hb31/axi_hb31.xml'</code></p><p><code>ERROR: [Vivado 1=
2-398] No designs are open</code></p><p><code>[00:00:14] Current task: Synt=
hesis +++ Current Phase: Starting</code></p><p><code>[00:00:14] Current tas=
k: Synthesis +++ Current Phase: Finished</code></p><p><code>[00:00:14] Proc=
ess terminated. Status: Failure</code></p><p><code>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code=
></p><p><code>Warnings:           3</code></p><p><code>Critical Warnings:  =
7</code></p><p><code>Errors:             8</code></p><p><code>BUILDER: Rele=
asing IP location: /afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x=
300/build-ip/xc7k410tffg900-2/axi_hb31</code></p><p><code>make[1]: *** [/af=
s/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/lib/ip/axi_hb31/Makefile.in=
c:20: LIB_IP_AXI_HB31_TRGT] Error 1</code></p><p><code>make[1]: Leaving dir=
ectory '/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300'</code>=
</p>

--b1_DAaWB9DenFAL4Y9dwqJeUsx4ay2GGMp0LzcJRWe14--

--===============6718864156774537567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6718864156774537567==--
