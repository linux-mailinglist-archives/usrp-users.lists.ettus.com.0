Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 647CC41FA02
	for <lists+usrp-users@lfdr.de>; Sat,  2 Oct 2021 08:04:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 217B83844CE
	for <lists+usrp-users@lfdr.de>; Sat,  2 Oct 2021 02:04:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="JdMXLHiW";
	dkim-atps=neutral
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 93A42383BF3
	for <usrp-users@lists.ettus.com>; Sat,  2 Oct 2021 02:03:38 -0400 (EDT)
Received: by mail-yb1-f180.google.com with SMTP id q189so7010866ybq.1
        for <usrp-users@lists.ettus.com>; Fri, 01 Oct 2021 23:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=oE15J2krzYfICq5A0o3fswIAaVwF0rJRVpYFuUkpb4Y=;
        b=JdMXLHiWp3+jzopziKrkbGdJpdrnlPgwfdmUTyo4Hke4CNL4tdrSSfUzTaNgnwhJ9N
         pTq6TEPra9cOqrpy7FVAbvFitufzVqCo5t1+uMgGBmWbYt7AvMoQdSyS4Veuk+Z7yQrm
         5yasn29B4QS7iGBfofoxraEIUU98Ec26gUoC37hjsv2VXq8q8kbshD0GaXmU/HMNXzBH
         rGm2/tfqLbndJyH2XhoA1L86Dk3bKf/VTfvGwRUTf3RIpb177dGjlKseLh8aLbRehlRI
         1S0J/2gnvD7pB7Dy+SrmKQpAHYxvnTJluN3SRW5ctYamAv3s/zu1AwKHDIUWlm5od64p
         Vl5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=oE15J2krzYfICq5A0o3fswIAaVwF0rJRVpYFuUkpb4Y=;
        b=dhyHcKMIfbls0GZq75c4AJMmiICgyOFFqFRt/mk5uxw8sSj7Kdlnu4Ik1lztkMgnyk
         TH3qvkxOEwmrg2hunAs+g/nCVFi822KR+GHUHDp2F3/cmmIESnm793yZHsh+i3pp5qj4
         dI8WzP2OW/joPgFMnYhogndLEGsUwxcTK0FwQ8LfJL+vsgcf44IKxFEl/RVsOLaU35SY
         Wmw4Eh13Vyj2adBNbZOG2PDz+kmtISTtCfG2AALcqRdgFyiG1FtAyKxfVVvgVvJBwzEV
         TkzIZ7lW+UW23c4p71svuASX1G7eyGLb6r5hev88EExzdcL3L0d1+QkwqQm26w+AY6n8
         vBDQ==
X-Gm-Message-State: AOAM533QW7oN14zRSuBbYCiQnc32bo3RlUuUXYiro28F5vqWLLlIt58r
	Gs79hhX9+3KD9D6YsNVgn68cjMiaCQt0PemBVOw7iPiH3ExAlA==
X-Google-Smtp-Source: ABdhPJxoPMRhkdLKQghIwOsd9k9Kc4rTgH/wwBOMKYLS/2i3BhMZ70KPCJUqLCVWnHNAYx4i+VOHxXJn77WFLatouRI=
X-Received: by 2002:a25:dc87:: with SMTP id y129mr1013418ybe.118.1633154617472;
 Fri, 01 Oct 2021 23:03:37 -0700 (PDT)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Sat, 2 Oct 2021 08:03:26 +0200
Message-ID: <CAKHaR3=_+Pfp1cfCVd7cxhNx9Y6n_wSwMd1d9UFQBAdzkv+kPQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 4CX5JYHAZQLKREOPS7B7X7NVNP4S5IDV
X-Message-ID-Hash: 4CX5JYHAZQLKREOPS7B7X7NVNP4S5IDV
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] issues compiling X410 FPGA
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4CX5JYHAZQLKREOPS7B7X7NVNP4S5IDV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6673487190385300201=="

--===============6673487190385300201==
Content-Type: multipart/alternative; boundary="000000000000d6908705cd58701f"

--000000000000d6908705cd58701f
Content-Type: text/plain; charset="UTF-8"

Hi,
i've been trying to compile X410 with no luck. apparently the issue is with
Vivado installation as it's failing the generation of the DDR4 IP however i
made sure i installed the proper version of it, including patches:

* GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)
* Python 3.8.10
* Vivado v2019.1.1_AR73068 (64-bit)

my machine is running Ubuntu 20.04.1 and is capable of compiling N310
builds successfully.

UHD version is 4.1.0.4 (25d617cad7db69fa04699df5f93ece06b0a61199) however
this issue was happening since 4.1.0.0.

below a dump of the failing bit:

========================================================
BUILDER: Building IP ddr4_64bits
========================================================
BUILDER: Staging IP in build directory...
BUILDER: Reserving IP location:
/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits
BUILDER: Retargeting IP to part zynquplusRFSOC/xczu28dr/ffvg1517/-1/e...
BUILDER: Building IP...
[00:00:00] Executing command: vivado -mode batch -source
/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl
-log ddr4_64bits.log -nojournal
WARNING: [IP_Flow 19-2162] IP 'ddr4_64bits' is locked:
CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
following file is locked:
/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xci
CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the
following file is locked:
/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xci
[00:00:07] Current task: Initialization +++ Current Phase: Starting
[00:00:07] Current task: Initialization +++ Current Phase: Finished
[00:00:07] Executing Tcl: synth_design -top ddr4_64bits -part
xczu28dr-ffvg1517-1-e -mode out_of_context
[00:00:07] Starting Synthesis Command
WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
for Synthesis target. These output products could be required for
synthesis, please generate the output products using the generate_target or
synth_ip command before running synth_design.
WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
for Implementation target. These output products could be required for
synthesis, please generate the output products using the generate_target or
synth_ip command before running synth_design.
WARNING: [IP_Flow 19-2162] IP 'ddr4_64bits' is locked:
ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources
specified
ERROR: [Common 17-53] User Exception: No open design. Please open an
elaborated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an
elaborated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an
elaborated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an
elaborated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an
elaborated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an
elaborated, synthesized or implemented design before executing this command.
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
'/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
'/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
'/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
'/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
'/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
ERROR: [Vivado 12-398] No designs are open
[00:00:07] Current task: Synthesis +++ Current Phase: Starting
[00:00:07] Current task: Synthesis +++ Current Phase: Finished
[00:00:07] Process terminated. Status: Failure

========================================================
Warnings:           4
Critical Warnings:  7
Errors:             8

since it seems the issue is related to locking i tried serveral times
cleaning up the build directory or even making just X410_IP target with no
success.
any hints on what is currently going wrong?
thanks,
Dario Pennisi

--000000000000d6908705cd58701f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr">Hi,<div>i&#39;ve been trying to compile X410 with no luck. appare=
ntly=C2=A0the issue is with Vivado installation as it&#39;s failing the gen=
eration of the DDR4 IP however i made sure i installed the proper version o=
f it, including patches:</div><div><br></div><div>* GNU bash, version 5.0.1=
7(1)-release (x86_64-pc-linux-gnu)</div><div>* Python 3.8.10</div><div>* Vi=
vado v2019.1.1_AR73068 (64-bit)</div><div><br></div><div>my machine is runn=
ing Ubuntu 20.04.1 and is capable of compiling N310 builds successfully.<br=
></div><div><br></div><div>UHD version is 4.1.0.4 (25d617cad7db69fa04699df5=
f93ece06b0a61199) however this issue was happening since 4.1.0.0.</div><div=
><br></div><div>below a dump of the failing bit:</div><div><br></div><div><=
div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D=
"ltr"><font color=3D"#000000" face=3D"Calibri, sans-serif"><span style=3D"f=
ont-size:13.3333px">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></font></div><div dir=3D"ltr"=
><font color=3D"#000000" face=3D"Calibri, sans-serif"><span style=3D"font-s=
ize:13.3333px">BUILDER: Building IP ddr4_64bits</span></font></div><div dir=
=3D"ltr"><font color=3D"#000000" face=3D"Calibri, sans-serif"><span style=
=3D"font-size:13.3333px">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></font></div><div dir=
=3D"ltr"><font color=3D"#000000" face=3D"Calibri, sans-serif"><span style=
=3D"font-size:13.3333px">BUILDER: Staging IP in build directory...</span></=
font></div><div dir=3D"ltr"><font color=3D"#000000" face=3D"Calibri, sans-s=
erif"><span style=3D"font-size:13.3333px">BUILDER: Reserving IP location: /=
home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/x=
czu28drffvg1517-1e/ddr4_64bits</span></font></div><div dir=3D"ltr"><font co=
lor=3D"#000000" face=3D"Calibri, sans-serif"><span style=3D"font-size:13.33=
33px">BUILDER: Retargeting IP to part zynquplusRFSOC/xczu28dr/ffvg1517/-1/e=
...</span></font></div><div dir=3D"ltr"><font color=3D"#000000" face=3D"Cal=
ibri, sans-serif"><span style=3D"font-size:13.3333px">BUILDER: Building IP.=
..</span></font></div><div dir=3D"ltr"><font color=3D"#000000" face=3D"Cali=
bri, sans-serif"><span style=3D"font-size:13.3333px">[00:00:00] Executing c=
ommand: vivado -mode batch -source /home/massimo/workdirs/pdc_demod/work/sr=
c/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log ddr4_64bits.log -no=
journal</span></font></div><div dir=3D"ltr"><font color=3D"#000000" face=3D=
"Calibri, sans-serif"><span style=3D"font-size:13.3333px">WARNING: [IP_Flow=
 19-2162] IP &#39;ddr4_64bits&#39; is locked:</span></font></div><div dir=
=3D"ltr"><font color=3D"#000000" face=3D"Calibri, sans-serif"><span style=
=3D"font-size:13.3333px">CRITICAL WARNING: [filemgmt 20-1366] Unable to res=
et target(s) for the following file is locked: /home/massimo/workdirs/pdc_d=
emod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64b=
its/ddr4_64bits.xci</span></font></div><div dir=3D"ltr"><font color=3D"#000=
000" face=3D"Calibri, sans-serif"><span style=3D"font-size:13.3333px">CRITI=
CAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the follow=
ing file is locked: /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp=
3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xci</span><=
/font></div><div dir=3D"ltr"><font color=3D"#000000" face=3D"Calibri, sans-=
serif"><span style=3D"font-size:13.3333px">[00:00:07] Current task: Initial=
ization +++ Current Phase: Starting</span></font></div><div dir=3D"ltr"><fo=
nt color=3D"#000000" face=3D"Calibri, sans-serif"><span style=3D"font-size:=
13.3333px">[00:00:07] Current task: Initialization +++ Current Phase: Finis=
hed</span></font></div><div dir=3D"ltr"><font color=3D"#000000" face=3D"Cal=
ibri, sans-serif"><span style=3D"font-size:13.3333px">[00:00:07] Executing =
Tcl: synth_design -top ddr4_64bits -part xczu28dr-ffvg1517-1-e -mode out_of=
_context</span></font></div><div dir=3D"ltr"><font color=3D"#000000" face=
=3D"Calibri, sans-serif"><span style=3D"font-size:13.3333px">[00:00:07] Sta=
rting Synthesis Command</span></font></div><div dir=3D"ltr"><font color=3D"=
#000000" face=3D"Calibri, sans-serif"><span style=3D"font-size:13.3333px">W=
ARNING: [Vivado_Tcl 4-391] The following IPs are missing output products fo=
r Synthesis target. These output products could be required for synthesis, =
please generate the output products using the generate_target or synth_ip c=
ommand before running synth_design.</span></font></div><div dir=3D"ltr"><fo=
nt color=3D"#000000" face=3D"Calibri, sans-serif"><span style=3D"font-size:=
13.3333px">WARNING: [Vivado_Tcl 4-391] The following IPs are missing output=
 products for Implementation target. These output products could be require=
d for synthesis, please generate the output products using the generate_tar=
get or synth_ip command before running synth_design.</span></font></div><di=
v dir=3D"ltr"><font color=3D"#000000" face=3D"Calibri, sans-serif"><span st=
yle=3D"font-size:13.3333px">WARNING: [IP_Flow 19-2162] IP &#39;ddr4_64bits&=
#39; is locked:</span></font></div><div dir=3D"ltr"><font color=3D"#000000"=
 face=3D"Calibri, sans-serif"><span style=3D"font-size:13.3333px">ERROR: [D=
esignutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources specified</sp=
an></font></div><div dir=3D"ltr"><font color=3D"#000000" face=3D"Calibri, s=
ans-serif"><span style=3D"font-size:13.3333px">ERROR: [Common 17-53] User E=
xception: No open design. Please open an elaborated, synthesized or impleme=
nted design before executing this command.</span></font></div><div dir=3D"l=
tr"><font color=3D"#000000" face=3D"Calibri, sans-serif"><span style=3D"fon=
t-size:13.3333px">ERROR: [Common 17-53] User Exception: No open design. Ple=
ase open an elaborated, synthesized or implemented design before executing =
this command.</span></font></div><div dir=3D"ltr"><font color=3D"#000000" f=
ace=3D"Calibri, sans-serif"><span style=3D"font-size:13.3333px">ERROR: [Com=
mon 17-53] User Exception: No open design. Please open an elaborated, synth=
esized or implemented design before executing this command.</span></font></=
div><div dir=3D"ltr"><font color=3D"#000000" face=3D"Calibri, sans-serif"><=
span style=3D"font-size:13.3333px">ERROR: [Common 17-53] User Exception: No=
 open design. Please open an elaborated, synthesized or implemented design =
before executing this command.</span></font></div><div dir=3D"ltr"><font co=
lor=3D"#000000" face=3D"Calibri, sans-serif"><span style=3D"font-size:13.33=
33px">ERROR: [Common 17-53] User Exception: No open design. Please open an =
elaborated, synthesized or implemented design before executing this command=
.</span></font></div><div dir=3D"ltr"><font color=3D"#000000" face=3D"Calib=
ri, sans-serif"><span style=3D"font-size:13.3333px">ERROR: [Common 17-53] U=
ser Exception: No open design. Please open an elaborated, synthesized or im=
plemented design before executing this command.</span></font></div><div dir=
=3D"ltr"><font color=3D"#000000" face=3D"Calibri, sans-serif"><span style=
=3D"font-size:13.3333px">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncust=
omized BOM file &#39;/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usr=
p3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml&#39;</=
span></font></div><div dir=3D"ltr"><font color=3D"#000000" face=3D"Calibri,=
 sans-serif"><span style=3D"font-size:13.3333px">CRITICAL WARNING: [IP_Flow=
 19-4739] Writing uncustomized BOM file &#39;/home/massimo/workdirs/pdc_dem=
od/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bit=
s/ddr4_64bits.xml&#39;</span></font></div><div dir=3D"ltr"><font color=3D"#=
000000" face=3D"Calibri, sans-serif"><span style=3D"font-size:13.3333px">CR=
ITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file &#39;/home/=
massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28=
drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml&#39;</span></font></div><div dir=
=3D"ltr"><font color=3D"#000000" face=3D"Calibri, sans-serif"><span style=
=3D"font-size:13.3333px">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncust=
omized BOM file &#39;/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usr=
p3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml&#39;</=
span></font></div><div dir=3D"ltr"><font color=3D"#000000" face=3D"Calibri,=
 sans-serif"><span style=3D"font-size:13.3333px">CRITICAL WARNING: [IP_Flow=
 19-4739] Writing uncustomized BOM file &#39;/home/massimo/workdirs/pdc_dem=
od/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bit=
s/ddr4_64bits.xml&#39;</span></font></div><div dir=3D"ltr"><font color=3D"#=
000000" face=3D"Calibri, sans-serif"><span style=3D"font-size:13.3333px">ER=
ROR: [Vivado 12-398] No designs are open</span></font></div><div dir=3D"ltr=
"><font color=3D"#000000" face=3D"Calibri, sans-serif"><span style=3D"font-=
size:13.3333px">[00:00:07] Current task: Synthesis +++ Current Phase: Start=
ing</span></font></div><div dir=3D"ltr"><font color=3D"#000000" face=3D"Cal=
ibri, sans-serif"><span style=3D"font-size:13.3333px">[00:00:07] Current ta=
sk: Synthesis +++ Current Phase: Finished</span></font></div><div dir=3D"lt=
r"><font color=3D"#000000" face=3D"Calibri, sans-serif"><span style=3D"font=
-size:13.3333px">[00:00:07] Process terminated. Status: Failure</span></fon=
t></div><div dir=3D"ltr"><font color=3D"#000000" face=3D"Calibri, sans-seri=
f"><span style=3D"font-size:13.3333px"><br></span></font></div><div dir=3D"=
ltr"><font color=3D"#000000" face=3D"Calibri, sans-serif"><span style=3D"fo=
nt-size:13.3333px">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></font></div><div dir=3D"ltr"=
><font color=3D"#000000" face=3D"Calibri, sans-serif"><span style=3D"font-s=
ize:13.3333px">Warnings:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04</span></=
font></div><div dir=3D"ltr"><font color=3D"#000000" face=3D"Calibri, sans-s=
erif"><span style=3D"font-size:13.3333px">Critical Warnings:=C2=A0 7</span>=
</font></div><div dir=3D"ltr"><font color=3D"#000000" face=3D"Calibri, sans=
-serif"><span style=3D"font-size:13.3333px">Errors:=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A08</span></font></div><div style=3D"color:rgb(0,0,0)=
;font-family:Calibri,sans-serif;font-size:13.3333px"><br></div><div style=
=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px">si=
nce it seems the issue is related to locking i tried serveral times cleanin=
g up the build directory or even making just X410_IP target with no success=
.=C2=A0</div><div style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;=
font-size:13.3333px">any hints on what is currently going wrong?</div><div =
style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333p=
x">thanks,</div></div><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font=
-family:Calibri,sans-serif;font-size:13.3333px">Dario Pennisi</span><br sty=
le=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px">=
<br></div></div></div></div></div></div></div></div></div>

--000000000000d6908705cd58701f--

--===============6673487190385300201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6673487190385300201==--
