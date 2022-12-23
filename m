Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E14CF6552F7
	for <lists+usrp-users@lfdr.de>; Fri, 23 Dec 2022 17:53:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14C8C383D96
	for <lists+usrp-users@lfdr.de>; Fri, 23 Dec 2022 11:53:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671814411; bh=lslEy5MXE5AvO4LReNLTx76bqiw2guGfiNSSaVoB1DM=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Cmc0jUYpJq1/fVcv7k33Xsq8DlGXrt1UKp+k1uQTJO9/clfy+5Zbg8jaeHIHQcKmj
	 gI+TVuA1N5Qp/oftAwtCV9/xTgA4h5Mpt8SCmy+YH3KDviKWIA6Vf/qf+IXFnPTFq2
	 Y1SGJVMeLqx8i7V8hCXMYyhw820cu11uu3QHMvk7rKoPUK+HBaSHa7T8XEB4eVrRvb
	 0jNJWEWBVfeIt/OIT3qm7FU4d1aupAXeX68oUheV3xmWNd7yMj+iuf6xntmtYcrI+s
	 o4p5G9X5T2NOObOUMERrOd63L5Zho9zYHznUmWNMwP8ubyCl0LyXrWxpBhvZfOY06A
	 Zix6PY6tTly4Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4ADA0383E6F
	for <usrp-users@lists.ettus.com>; Fri, 23 Dec 2022 11:52:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671814321; bh=gzHXxPcKaDGWymCErz3PLybpxjcDaSG7poVVUqvCSw0=;
	h=Date:To:From:Subject:From;
	b=xL8DnrO+rz2L5S3GV32dvspzfKMVXhXK/oA6LegPlSSduX9Wj0coxkSNGZfEcjYPq
	 zkv2dTDCJJVHF6EHPY+3cTq5F6o6sw0L84FDFR+/HFAU3ek2VzxSkWXN6KH6nB4zF5
	 n9N9fWFxrOMBk+rTzCE2Kv4OKEHcJsqwro4og/eSn1Bp4+DFS5j+IuguqYufz/12WC
	 TMh6WcoJinXY8fRBE7W6q3uW9kckbXEL1wIizwmbqRV82ie2KBMxd+175hh8qBj+AV
	 dkAjtwX4GQMo8x3970VcclMqAQmOiZnRvZKl/82Z318CKsVI0BJ9WtWdlLfdEmegc/
	 AH+yq4CRcMgPA==
Date: Fri, 23 Dec 2022 16:52:01 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <Omi09gW5JKVe7e3hox8L6ZGmLqG5ncBurLeKmohk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: DGJBPK6YADKXM2ETKPEVQQ7F5ALJCIDD
X-Message-ID-Hash: DGJBPK6YADKXM2ETKPEVQQ7F5ALJCIDD
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Building x310 FPGA image for UHD 4.3.0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DGJBPK6YADKXM2ETKPEVQQ7F5ALJCIDD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4870239997327755168=="

This is a multi-part message in MIME format.

--===============4870239997327755168==
Content-Type: multipart/alternative;
 boundary="b1_Omi09gW5JKVe7e3hox8L6ZGmLqG5ncBurLeKmohk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Omi09gW5JKVe7e3hox8L6ZGmLqG5ncBurLeKmohk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m trying to build the x310 base image on RHEL9. I keep getting =
build errors, despite the fact that I built UHD 4.2 no problem. The steps=
 I followed:

1. Check out the v4.3.0.0 tag

2. source setupenv.sh --vivado-path=3D/path/to/Xilinx/Vivado/

3. make X310_XG

Did the process for building change? Has anybody else encountered problem=
s?

Here is the error message I=E2=80=99m getting plus some context:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

BUILDER: Building IP axi_hb31

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

BUILDER: Staging IP in build directory...

BUILDER: Reserving IP location: /afs/mitll/usr/ri28856/public/uhd/fpga/us=
rp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31

BUILDER: Retargeting IP to part kintex7/xc7k410t/ffg900/-2...

BUILDER: Building IP...

\[00:00:00\] Executing command: vivado -mode batch -source /afs/mitll/usr=
/ri28856/public/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log axi=
_hb31.log -nojournal

WARNING: \[IP_Flow 19-2162\] IP 'axi_hb31' is locked:

CRITICAL WARNING: \[filemgmt 20-1366\] Unable to reset target(s) for the =
following file is locked: /afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/to=
p/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xci

CRITICAL WARNING: \[filemgmt 20-1365\] Unable to generate target(s) for t=
he following file is locked: /afs/mitll/usr/ri28856/public/uhd/fpga/usrp3=
/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xci

\[00:00:19\] Current task: Initialization +++ Current Phase: Starting

\[00:00:19\] Current task: Initialization +++ Current Phase: Finished

\[00:00:19\] Executing Tcl: synth_design -top axi_hb31 -part xc7k410tffg9=
00-2 -mode out_of_context

\[00:00:19\] Starting Synthesis Command

WARNING: \[Vivado_Tcl 4-391\] The following IPs are missing output produc=
ts for Synthesis target. These output products could be required for synt=
hesis, please generate the output products using the generate_target or s=
ynth_ip command before running synth_design.

WARNING: \[IP_Flow 19-2162\] IP 'axi_hb31' is locked:

ERROR: \[Designutils 20-414\] HRTInvokeSpec : No Verilog or VHDL sources =
specified

ERROR: \[Common 17-53\] User Exception: No open design. Please open an el=
aborated, synthesized or implemented design before executing this command=
.

ERROR: \[Common 17-53\] User Exception: No open design. Please open an el=
aborated, synthesized or implemented design before executing this command=
.

ERROR: \[Common 17-53\] User Exception: No open design. Please open an el=
aborated, synthesized or implemented design before executing this command=
.

ERROR: \[Common 17-53\] User Exception: No open design. Please open an el=
aborated, synthesized or implemented design before executing this command=
.

ERROR: \[Common 17-53\] User Exception: No open design. Please open an el=
aborated, synthesized or implemented design before executing this command=
.

ERROR: \[Common 17-53\] User Exception: No open design. Please open an el=
aborated, synthesized or implemented design before executing this command=
.

CRITICAL WARNING: \[IP_Flow 19-4739\] Writing uncustomized BOM file '/afs=
/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900=
-2/axi_hb31/axi_hb31.xml'

CRITICAL WARNING: \[IP_Flow 19-4739\] Writing uncustomized BOM file '/afs=
/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900=
-2/axi_hb31/axi_hb31.xml'

CRITICAL WARNING: \[IP_Flow 19-4739\] Writing uncustomized BOM file '/afs=
/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900=
-2/axi_hb31/axi_hb31.xml'

CRITICAL WARNING: \[IP_Flow 19-4739\] Writing uncustomized BOM file '/afs=
/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900=
-2/axi_hb31/axi_hb31.xml'

CRITICAL WARNING: \[IP_Flow 19-4739\] Writing uncustomized BOM file '/afs=
/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900=
-2/axi_hb31/axi_hb31.xml'

\[00:00:20\] Current task: Synthesis +++ Current Phase: Starting

ERROR: \[Vivado 12-398\] No designs are open

\[00:00:20\] Current task: Synthesis +++ Current Phase: Finished

\[00:00:20\] Process terminated. Status: Failure

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

Warnings:           3

Critical Warnings:  7

Errors:             8

BUILDER: Releasing IP location: /afs/mitll/usr/ri28856/public/uhd/fpga/us=
rp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31

make\[1\]: \*\*\* \[/afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/lib/ip/a=
xi_hb31/Makefile.inc:20: LIB_IP_AXI_HB31_TRGT\] Error 1

make\[1\]: Leaving directory '/afs/mitll/usr/ri28856/public/uhd/fpga/usrp=
3/top/x300'

make: \*\*\* \[Makefile:80: X310_IP\] Error 2

--b1_Omi09gW5JKVe7e3hox8L6ZGmLqG5ncBurLeKmohk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99m trying to build the x310 base image on RHEL9. I keep getting=
 build errors, despite the fact that I built UHD 4.2 no problem. The steps =
I followed:</p><ol><li><p>Check out the v4.3.0.0 tag</p></li><li><p>source =
setupenv.sh --vivado-path=3D/path/to/Xilinx/Vivado/</p></li><li><p>make X31=
0_XG</p></li></ol><p>Did the process for building change? Has anybody else =
encountered problems?</p><p>Here is the error message I=E2=80=99m getting p=
lus some context:</p><p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p><p>BUILDER: Building IP axi_h=
b31</p><p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p><p>BUILDER: Staging IP in build directory=
...</p><p>BUILDER: Reserving IP location: /afs/mitll/usr/ri28856/public/uhd=
/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31</p><p>BUILDER: Reta=
rgeting IP to part kintex7/xc7k410t/ffg900/-2...</p><p>BUILDER: Building IP=
...</p><p>[00:00:00] Executing command: vivado -mode batch -source /afs/mit=
ll/usr/ri28856/public/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log=
 axi_hb31.log -nojournal</p><p>WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is =
locked:</p><p>CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s=
) for the following file is locked: /afs/mitll/usr/ri28856/public/uhd/fpga/=
usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xci</p><p>CRITIC=
AL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the followi=
ng file is locked: /afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/bu=
ild-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xci</p><p>[00:00:19] Current task=
: Initialization +++ Current Phase: Starting</p><p>[00:00:19] Current task:=
 Initialization +++ Current Phase: Finished</p><p>[00:00:19] Executing Tcl:=
 synth_design -top axi_hb31 -part xc7k410tffg900-2 -mode out_of_context</p>=
<p>[00:00:19] Starting Synthesis Command</p><p>WARNING: [Vivado_Tcl 4-391] =
The following IPs are missing output products for Synthesis target. These o=
utput products could be required for synthesis, please generate the output =
products using the generate_target or synth_ip command before running synth=
_design.</p><p>WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:</p><p>ER=
ROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources specif=
ied</p><p>ERROR: [Common 17-53] User Exception: No open design. Please open=
 an elaborated, synthesized or implemented design before executing this com=
mand.</p><p>ERROR: [Common 17-53] User Exception: No open design. Please op=
en an elaborated, synthesized or implemented design before executing this c=
ommand.</p><p>ERROR: [Common 17-53] User Exception: No open design. Please =
open an elaborated, synthesized or implemented design before executing this=
 command.</p><p>ERROR: [Common 17-53] User Exception: No open design. Pleas=
e open an elaborated, synthesized or implemented design before executing th=
is command.</p><p>ERROR: [Common 17-53] User Exception: No open design. Ple=
ase open an elaborated, synthesized or implemented design before executing =
this command.</p><p>ERROR: [Common 17-53] User Exception: No open design. P=
lease open an elaborated, synthesized or implemented design before executin=
g this command.</p><p>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomi=
zed BOM file '/afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-i=
p/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'</p><p>CRITICAL WARNING: [IP_Flow =
19-4739] Writing uncustomized BOM file '/afs/mitll/usr/ri28856/public/uhd/f=
pga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'</p><p>C=
RITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/afs/mitl=
l/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_=
hb31/axi_hb31.xml'</p><p>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncust=
omized BOM file '/afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/buil=
d-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'</p><p>CRITICAL WARNING: [IP_Fl=
ow 19-4739] Writing uncustomized BOM file '/afs/mitll/usr/ri28856/public/uh=
d/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'</p><=
p>[00:00:20] Current task: Synthesis +++ Current Phase: Starting</p><p>ERRO=
R: [Vivado 12-398] No designs are open</p><p>[00:00:20] Current task: Synth=
esis +++ Current Phase: Finished</p><p>[00:00:20] Process terminated. Statu=
s: Failure</p><p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p><p>Warnings:           3</p><p>Crit=
ical Warnings:  7</p><p>Errors:             8</p><p>BUILDER: Releasing IP l=
ocation: /afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7=
k410tffg900-2/axi_hb31</p><p>make[1]: *** [/afs/mitll/usr/ri28856/public/uh=
d/fpga/usrp3/lib/ip/axi_hb31/Makefile.inc:20: LIB_IP_AXI_HB31_TRGT] Error 1=
</p><p>make[1]: Leaving directory '/afs/mitll/usr/ri28856/public/uhd/fpga/u=
srp3/top/x300'</p><p>make: *** [Makefile:80: X310_IP] Error 2</p>

--b1_Omi09gW5JKVe7e3hox8L6ZGmLqG5ncBurLeKmohk--

--===============4870239997327755168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4870239997327755168==--
