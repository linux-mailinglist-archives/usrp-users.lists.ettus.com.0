Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5516687E2
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 00:35:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D8E66384381
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jan 2023 18:35:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673566547; bh=iLO1xDu03PqP+YfT3V6+UFRosf2cJrbVI7eUPs9uNIM=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RYKx91VOPCUrwQazvdXa+WJYY5cffkmJNYeym1oyG8QZ+dmHRVgiaFAfzSUr5KH3U
	 lJOxYGcnjagkpMBPCLHHjVCBL3QfbEMji8i9wfHpMbGyfyndpegOFNenJrS6ZmJWYe
	 CqVPvaMv3++JCjqsOXGdYQGrXKdLbBh2U9zcfzCUJb46wlMEI8hpy1yG1+kV1+OFqN
	 BFiM6JUKxHXa9bantaTJPrxx2Gs5vZZO8HD9vhNNCCeZA4W9VF5LfBu4J09+hqXf8/
	 NmR5+glPcY5+AkdAs1BubLeFsXfw7s3Tr7Xj0eAomEE5V7xSM1APSP83SXCm9ro+zN
	 dyLoHzhN8Pc5A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3D8738430E
	for <usrp-users@lists.ettus.com>; Thu, 12 Jan 2023 18:34:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673566495; bh=QDPc2Jp3OdT7upc9UU7EYJP/VUWryR9YFveiGvLGylQ=;
	h=Date:To:From:Subject:From;
	b=RiGR+xyy1XNhUYh9o+xWEdWIw9rvRfOVC0oYffYJgewZ3ZuQPedVCBZAwHbbzRE5Y
	 yH4LwCbwSAOMuiIf5yQ17IfX4dMdvdQjKKf9R3nNl0eslzhTX48xgJVY/HY0EtAlId
	 dq12vWFG0q4Zl09w5aDgy1My9K24113TzreofmwoKpL87FLrRZ5oHr0lvg48aVfIvF
	 nzo2o5UrCXHA9QDTCX9bH9NynBUtUmWOh7VrKtgQRT9JiOVGOLswoEbadfclN/u4zl
	 A/IecRLYeAFJ4xecs+7GDTKdvAUJQ5GrNB0uwwgjA2+1K5KozgruhhFtrKlLQUJ8H1
	 WHKDK/15AFSug==
Date: Thu, 12 Jan 2023 23:34:55 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <vLpO2LEYROh6p036tvvwp84QfDVQ37rLpafUZzjg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: CKW2L2PN65Q7XCF4GNAMMV6QR5U7JVYR
X-Message-ID-Hash: CKW2L2PN65Q7XCF4GNAMMV6QR5U7JVYR
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Starting FPGA development on Ettus N321
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CKW2L2PN65Q7XCF4GNAMMV6QR5U7JVYR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2293780989484242641=="

This is a multi-part message in MIME format.

--===============2293780989484242641==
Content-Type: multipart/alternative;
 boundary="b1_vLpO2LEYROh6p036tvvwp84QfDVQ37rLpafUZzjg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_vLpO2LEYROh6p036tvvwp84QfDVQ37rLpafUZzjg
Content-Type: text/plain; charset=us-ascii

Hello,

I am trying to create a Vivado environment for the ettus 321, however, I am running into issues.

I navigated to uhd/fpga/usrp3/top/n3xx where there is a makefile which I assume creates the environment in Vivado. I run the makefile, but I end up with the error. It was successfully synthesized some of the netlists, but it fails on hb47_1to2, and I am not left with a vivado project I can open. I have pasted the error below. I am using Ubuntu 20.04, UHD 4.3.0, Vivado 2021.1

Thanks

Joe

=======================================================

BUILDER: Building IP hb47_1to2

========================================================

BUILDER: Staging IP in build directory...

BUILDER: Reserving IP location: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2

BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...

BUILDER: Building IP...

\[00:00:00\] Executing command: vivado -mode batch -source workarea/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log hb47_1to2.log -nojournal

\[00:00:05\] Current task: Initialization +++ Current Phase: Starting

WARNING: \[IP_Flow 19-2162\] IP 'hb47_1to2' is locked:

CRITICAL WARNING: \[filemgmt 20-1366\] Unable to reset target(s) for the following file is locked: workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xci

CRITICAL WARNING: \[filemgmt 20-1365\] Unable to generate target(s) for the following file is locked: workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xci

\[00:00:05\] Current task: Initialization +++ Current Phase: Finished

\[00:00:05\] Executing Tcl: synth_design -top hb47_1to2 -part xc7z100ffg900-2 -mode out_of_context

\[00:00:05\] Starting Synthesis Command

WARNING: \[Vivado_Tcl 4-391\] The following IPs are missing output products for Synthesis target. These output products could be required for synthesis, please generate the output products using the generate_target or synth_ip command before running synth_design.

WARNING: \[IP_Flow 19-2162\] IP 'hb47_1to2' is locked:

\[00:00:06\] Current task: Synthesis +++ Current Phase: Starting

ERROR: \[Designutils 20-414\] HRTInvokeSpec : No Verilog or VHDL sources specified

ERROR: \[Common 17-53\] User Exception: No open design. Please open an elaborated, synthesized or implemented design before executing this command.

ERROR: \[Common 17-53\] User Exception: No open design. Please open an elaborated, synthesized or implemented design before executing this command.

ERROR: \[Common 17-53\] User Exception: No open design. Please open an elaborated, synthesized or implemented design before executing this command.

ERROR: \[Common 17-53\] User Exception: No open design. Please open an elaborated, synthesized or implemented design before executing this command.

ERROR: \[Common 17-53\] User Exception: No open design. Please open an elaborated, synthesized or implemented design before executing this command.

ERROR: \[Common 17-53\] User Exception: No open design. Please open an elaborated, synthesized or implemented design before executing this command.

CRITICAL WARNING: \[IP_Flow 19-4739\] Writing uncustomized BOM file '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xml'

CRITICAL WARNING: \[IP_Flow 19-4739\] Writing uncustomized BOM file '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xml'

CRITICAL WARNING: \[IP_Flow 19-4739\] Writing uncustomized BOM file '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xml'

CRITICAL WARNING: \[IP_Flow 19-4739\] Writing uncustomized BOM file '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xml'

CRITICAL WARNING: \[IP_Flow 19-4739\] Writing uncustomized BOM file '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xml'

ERROR: \[Vivado 12-398\] No designs are open

\[00:00:06\] Current task: Synthesis +++ Current Phase: Finished

\[00:00:06\] Process terminated. Status: Failure

========================================================

Warnings:           3

Critical Warnings:  7

Errors:             8

BUILDER: Releasing IP location: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2

make\[1\]: \*\*\* \[workarea/uhd/fpga/usrp3/top/n3xx/ip/hb47_1to2/Makefile.inc:19: IP_HB47_1TO2_TRGT\] Error 1

make\[1\]: Leaving directory '/workarea/uhd/fpga/usrp3/top/n3xx'

make: \*\*\* \[Makefile:90: N3X0_IP\] Error 2

--b1_vLpO2LEYROh6p036tvvwp84QfDVQ37rLpafUZzjg
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I am trying to create a Vivado environment for t=
he ettus 321, however, I am running into issues.</p><p>I navigated to uhd/f=
pga/usrp3/top/n3xx where there is a makefile which I assume creates the env=
ironment in Vivado. I run the makefile, but I end up with the error. It was=
 successfully synthesized some of the netlists, but it fails on hb47_1to2, =
and I am not left with a vivado project I can open. I have pasted the error=
 below. I am using Ubuntu 20.04, UHD 4.3.0, Vivado 2021.1</p><p>Thanks</p><=
p>Joe</p><p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</p><p>BUILDER: Building IP hb47_1to2</p><p>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D</p><p>BUILDER: Staging IP in build directory...</p><p>BUILD=
ER: Reserving IP location: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z1=
00ffg900-2/hb47_1to2</p><p>BUILDER: Retargeting IP to part zynq/xc7z100/ffg=
900/-2...</p><p>BUILDER: Building IP...</p><p>[00:00:00] Executing command:=
 vivado -mode batch -source workarea/uhd/fpga/usrp3/tools/scripts/viv_gener=
ate_ip.tcl -log hb47_1to2.log -nojournal</p><p>[00:00:05] Current task: Ini=
tialization +++ Current Phase: Starting</p><p>WARNING: [IP_Flow 19-2162] IP=
 'hb47_1to2' is locked:</p><p>CRITICAL WARNING: [filemgmt 20-1366] Unable t=
o reset target(s) for the following file is locked: workarea/uhd/fpga/usrp3=
/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xci</p><p>CRITICAL W=
ARNING: [filemgmt 20-1365] Unable to generate target(s) for the following f=
ile is locked: workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb=
47_1to2/hb47_1to2.xci</p><p>[00:00:05] Current task: Initialization +++ Cur=
rent Phase: Finished</p><p>[00:00:05] Executing Tcl: synth_design -top hb47=
_1to2 -part xc7z100ffg900-2 -mode out_of_context</p><p>[00:00:05] Starting =
Synthesis Command</p><p>WARNING: [Vivado_Tcl 4-391] The following IPs are m=
issing output products for Synthesis target. These output products could be=
 required for synthesis, please generate the output products using the gene=
rate_target or synth_ip command before running synth_design.</p><p>WARNING:=
 [IP_Flow 19-2162] IP 'hb47_1to2' is locked:</p><p>[00:00:06] Current task:=
 Synthesis +++ Current Phase: Starting</p><p>ERROR: [Designutils 20-414] HR=
TInvokeSpec : No Verilog or VHDL sources specified</p><p>ERROR: [Common 17-=
53] User Exception: No open design. Please open an elaborated, synthesized =
or implemented design before executing this command.</p><p>ERROR: [Common 1=
7-53] User Exception: No open design. Please open an elaborated, synthesize=
d or implemented design before executing this command.</p><p>ERROR: [Common=
 17-53] User Exception: No open design. Please open an elaborated, synthesi=
zed or implemented design before executing this command.</p><p>ERROR: [Comm=
on 17-53] User Exception: No open design. Please open an elaborated, synthe=
sized or implemented design before executing this command.</p><p>ERROR: [Co=
mmon 17-53] User Exception: No open design. Please open an elaborated, synt=
hesized or implemented design before executing this command.</p><p>ERROR: [=
Common 17-53] User Exception: No open design. Please open an elaborated, sy=
nthesized or implemented design before executing this command.</p><p>CRITIC=
AL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workarea/uhd/=
fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xml'</p><p=
>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workar=
ea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xml=
'</p><p>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '=
/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1=
to2.xml'</p><p>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM=
 file '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2=
/hb47_1to2.xml'</p><p>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomi=
zed BOM file '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb=
47_1to2/hb47_1to2.xml'</p><p>ERROR: [Vivado 12-398] No designs are open</p>=
<p>[00:00:06] Current task: Synthesis +++ Current Phase: Finished</p><p>[00=
:00:06] Process terminated. Status: Failure</p><p>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p><p=
>Warnings:           3</p><p>Critical Warnings:  7</p><p>Errors:           =
  8</p><p>BUILDER: Releasing IP location: /workarea/uhd/fpga/usrp3/top/n3xx=
/build-ip/xc7z100ffg900-2/hb47_1to2</p><p>make[1]: *** [workarea/uhd/fpga/u=
srp3/top/n3xx/ip/hb47_1to2/Makefile.inc:19: IP_HB47_1TO2_TRGT] Error 1</p><=
p>make[1]: Leaving directory '/workarea/uhd/fpga/usrp3/top/n3xx'</p><p>make=
: *** [Makefile:90: N3X0_IP] Error 2</p>

--b1_vLpO2LEYROh6p036tvvwp84QfDVQ37rLpafUZzjg--

--===============2293780989484242641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2293780989484242641==--
