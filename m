Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D0E68014D
	for <lists+usrp-users@lfdr.de>; Sun, 29 Jan 2023 21:14:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E22D3384175
	for <lists+usrp-users@lfdr.de>; Sun, 29 Jan 2023 15:14:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675023263; bh=S967d/+HhyEy0RpZVVlvePv2WNBZoayqVtqYHlCm6WM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=aBXjXW9UpHJh70ybolirxnW8QNkHHGZKOP79SXBHbfbOMHzpmC4+WJfPI3juOaayx
	 lLkGUyudL0KMF+N1cjyBlF/V3nN4w8vVk2oTjjvz+XiEfgodKo0m0BxB15Mi/piUX2
	 0SDyueomQ4TT0sAzOiTVQ3JPHP7xPLouLxwVRXsudYgkoqne0LHfy3sXEKVeeFMNgS
	 fQgo16BoOjaITFwr7BvNuoLrzbp/o2pZEWdEK+4Ouvqs39Ui0r4AzZeCKubdCSWPmm
	 foBTWfwPfiQGKW7+xSelOooIJdssTOdfFLnnrnDPYkhzEd+ke6UfHb8uKyW8VAByWM
	 Z/shj2xn5xRvg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34330383D44
	for <usrp-users@lists.ettus.com>; Sun, 29 Jan 2023 15:13:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675023183; bh=w3shRAug7WIILwKuHdilveQC96++Q8+yBMpmU6DdUc4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Wr87wzl6MvmJAQzGAKeIb0mGRUOmXW7ZUmgKgB4bxI7+wtFrCTs94HSx+K071HiQ2
	 +0If7ZknOvq1isdizZKzvhQhJjK9cm+fFVTXER43ovHP4ir3xPA+56kzxDxvmIOzWt
	 I5WvMjzz7rDRsPZpvpj3UWeVyn7d5k4hDci0DzQLpi1+Lt4McgD7uhw2MgYNQvOjeG
	 fethkIfCyvw2cqUZnLav8s4MX/SVMSeXjI3a7Hv2YTa856vfATHVtX+IYeR0J55FPc
	 0ZyilC02Apcr+2AOHREj9cUa4Qk1wVukPXdJxvvN3OUcFb4oSvtlnA44xGqcRBWkFS
	 j2DNQaa92NGxw==
Date: Sun, 29 Jan 2023 20:13:03 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <SfaKs3CAXqAEDcdoS5AkglQpAhLYuAxZoNK4AVqoD0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: UX8mi9utjbHMzjxx15xWBxXZPMWYdEURx50EsrFtWQ@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: GCF7CV7DATGJM5HRZYZSM5Y3UREEW7X6
X-Message-ID-Hash: GCF7CV7DATGJM5HRZYZSM5Y3UREEW7X6
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when synthesizing example OOT block : IP "cmplx_mul" is locked
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GCF7CV7DATGJM5HRZYZSM5Y3UREEW7X6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9009363416985098443=="

This is a multi-part message in MIME format.

--===============9009363416985098443==
Content-Type: multipart/alternative;
 boundary="b1_SfaKs3CAXqAEDcdoS5AkglQpAhLYuAxZoNK4AVqoD0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_SfaKs3CAXqAEDcdoS5AkglQpAhLYuAxZoNK4AVqoD0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

jmaloyan@umass.edu wrote:

> Hello,
>
> I have run into an issue when trying to synthesize the =E2=80=9Cgain=E2=
=80=9D RFNoC as described in the tutorial here https://kb.ettus.com/Getti=
ng_Started_with_RFNoC_in_UHD_4.0
>
> I get an error that the module cmplx mul is locked. I found that in the=
 verilog file =E2=80=9Crfnoc_block_gain.v=E2=80=9D, the module is instant=
iated there, but I am unsure how I should proceed working around this.
>
> Here is the output of the vivado -version
>
> `Vivado v2021.1_AR76780 (64-bit)`
>
> `SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021`
>
> `IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021`
>
> `Copyright 1986-2021 Xilinx, Inc. All Rights Reserved`
>
> And here is the output of the error
>
> `=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D`
>
> `BUILDER: Building IP cmplx_mul`
>
> `=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D`
>
> `BUILDER: Staging IP in build directory...`
>
> `BUILDER: Reserving IP location: /workarea/uhd/fpga/usrp3/top/n3xx/buil=
d-ip/xc7z100ffg900-2/cmplx_mul`
>
> `BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...`
>
> `BUILDER: Building IP...`
>
> `[00:00:00] Executing command: vivado -mode batch -source /workarea/uhd=
/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log cmplx_mul.log -nojourn=
al`
>
> `[00:00:05] Current task: Initialization +++ Current Phase: Starting`
>
> `WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:`
>
> `CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the=
 following file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7=
z100ffg900-2/cmplx_mul/cmplx_mul.xci`
>
> `CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for =
the following file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/=
xc7z100ffg900-2/cmplx_mul/cmplx_mul.xci`
>
> `[00:00:05] Current task: Initialization +++ Current Phase: Finished`
>
> `[00:00:05] Executing Tcl: synth_design -top cmplx_mul -part xc7z100ffg=
900-2 -mode out_of_context`
>
> `[00:00:05] Starting Synthesis Command`
>
> `WARNING: [Vivado_Tcl 4-391] The following IPs are missing output produ=
cts for Synthesis target. These output products could be required for syn=
thesis, please generate the output products using the generate_target or =
synth_ip command before running synth_design.`
>
> `WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:`
>
> `ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources=
 specified`
>
> `ERROR: [Common 17-53] User Exception: No open design. Please open an e=
laborated, synthesized or implemented design before executing this comman=
d.`
>
> `ERROR: [Common 17-53] User Exception: No open design. Please open an e=
laborated, synthesized or implemented design before executing this comman=
d.`
>
> `ERROR: [Common 17-53] User Exception: No open design. Please open an e=
laborated, synthesized or implemented design before executing this comman=
d.`
>
> `ERROR: [Common 17-53] User Exception: No open design. Please open an e=
laborated, synthesized or implemented design before executing this comman=
d.`
>
> `ERROR: [Common 17-53] User Exception: No open design. Please open an e=
laborated, synthesized or implemented design before executing this comman=
d.`
>
> `ERROR: [Common 17-53] User Exception: No open design. Please open an e=
laborated, synthesized or implemented design before executing this comman=
d.`
>
> `CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/wo=
rkarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_m=
ul.xml'`
>
> `CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/wo=
rkarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_m=
ul.xml'`
>
> `CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/wo=
rkarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_m=
ul.xml'`
>
> `CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/wo=
rkarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_m=
ul.xml'`
>
> `[00:00:06] Current task: Synthesis +++ Current Phase: Starting`
>
> `CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/wo=
rkarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_m=
ul.xml'`
>
> `ERROR: [Vivado 12-398] No designs are open`
>
> `[00:00:06] Current task: Synthesis +++ Current Phase: Finished`
>
> `[00:00:06] Process terminated. Status: Failure`
>
> `=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D`
>
> `Warnings:           3`
>
> `Critical Warnings:  7`
>
> `Errors:             8`
>
> `BUILDER: Releasing IP location: /workarea/uhd/fpga/usrp3/top/n3xx/buil=
d-ip/xc7z100ffg900-2/cmplx_mul`
>
> `make[1]: *** [/rfnoc-foo/fpga//ip/cmplx_mul/Makefile.inc:21: LIB_IP_CM=
PLX_MUL_TRGT] Error 1`
>
> `make[1]: Leaving directory '/workarea/uhd/fpga/usrp3/top/n3xx'`
>
> `make: *** [Makefile:90: N3X0_IP] Error 2`

Hello,

There was issue with =E2=80=98`cmplx_mul`=E2=80=98 configuration not bein=
g updated after migration of UHD to Vivado 2021.1 from Vivado 2019.1.\
This is the case for UHD-4.3 release and the issue was fixed in master br=
anch.

For more details look here: https://github.com/EttusResearch/uhd/issues/6=
35

Best Regards,\
Piotr Krysik

--b1_SfaKs3CAXqAEDcdoS5AkglQpAhLYuAxZoNK4AVqoD0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>jmaloyan@umass.edu wrote:</p><blockquote><p>Hello,</p><p>I have run into=
 an issue when trying to synthesize the =E2=80=9Cgain=E2=80=9D RFNoC as des=
cribed in the tutorial here https://kb.ettus.com/Getting_Started_with_RFNoC=
_in_UHD_4.0</p><p>I get an error that the module cmplx mul is locked. I fou=
nd that in the verilog file =E2=80=9Crfnoc_block_gain.v=E2=80=9D, the modul=
e is instantiated there, but I am unsure how I should proceed working aroun=
d this.</p><p>Here is the output of the vivado -version</p><p><code>Vivado =
v2021.1_AR76780 (64-bit)</code></p><p><code>SW Build 3247384 on Thu Jun 10 =
19:36:07 MDT 2021</code></p><p><code>IP Build 3246043 on Fri Jun 11 00:30:3=
5 MDT 2021</code></p><p><code>Copyright 1986-2021 Xilinx, Inc. All Rights R=
eserved</code></p><p>And here is the output of the error</p><p><code>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D</code></p><p><code>BUILDER: Building IP cmplx_mul</code></p><p=
><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p><p><code>BUILDER: Staging IP in build=
 directory...</code></p><p><code>BUILDER: Reserving IP location: /workarea/=
uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul</code></p><p><co=
de>BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...</code></p><p><=
code>BUILDER: Building IP...</code></p><p><code>[00:00:00] Executing comman=
d: vivado -mode batch -source /workarea/uhd/fpga/usrp3/tools/scripts/viv_ge=
nerate_ip.tcl -log cmplx_mul.log -nojournal</code></p><p><code>[00:00:05] C=
urrent task: Initialization +++ Current Phase: Starting</code></p><p><code>=
WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:</code></p><p><code>CRI=
TICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the followi=
ng file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900=
-2/cmplx_mul/cmplx_mul.xci</code></p><p><code>CRITICAL WARNING: [filemgmt 2=
0-1365] Unable to generate target(s) for the following file is locked: /wor=
karea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.=
xci</code></p><p><code>[00:00:05] Current task: Initialization +++ Current =
Phase: Finished</code></p><p><code>[00:00:05] Executing Tcl: synth_design -=
top cmplx_mul -part xc7z100ffg900-2 -mode out_of_context</code></p><p><code=
>[00:00:05] Starting Synthesis Command</code></p><p><code>WARNING: [Vivado_=
Tcl 4-391] The following IPs are missing output products for Synthesis targ=
et. These output products could be required for synthesis, please generate =
the output products using the generate_target or synth_ip command before ru=
nning synth_design.</code></p><p><code>WARNING: [IP_Flow 19-2162] IP 'cmplx=
_mul' is locked:</code></p><p><code>ERROR: [Designutils 20-414] HRTInvokeSp=
ec : No Verilog or VHDL sources specified</code></p><p><code>ERROR: [Common=
 17-53] User Exception: No open design. Please open an elaborated, synthesi=
zed or implemented design before executing this command.</code></p><p><code=
>ERROR: [Common 17-53] User Exception: No open design. Please open an elabo=
rated, synthesized or implemented design before executing this command.</co=
de></p><p><code>ERROR: [Common 17-53] User Exception: No open design. Pleas=
e open an elaborated, synthesized or implemented design before executing th=
is command.</code></p><p><code>ERROR: [Common 17-53] User Exception: No ope=
n design. Please open an elaborated, synthesized or implemented design befo=
re executing this command.</code></p><p><code>ERROR: [Common 17-53] User Ex=
ception: No open design. Please open an elaborated, synthesized or implemen=
ted design before executing this command.</code></p><p><code>ERROR: [Common=
 17-53] User Exception: No open design. Please open an elaborated, synthesi=
zed or implemented design before executing this command.</code></p><p><code=
>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workar=
ea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml=
'</code></p><p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomiz=
ed BOM file '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmp=
lx_mul/cmplx_mul.xml'</code></p><p><code>CRITICAL WARNING: [IP_Flow 19-4739=
] Writing uncustomized BOM file '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip=
/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'</code></p><p><code>CRITICAL WARNI=
NG: [IP_Flow 19-4739] Writing uncustomized BOM file '/workarea/uhd/fpga/usr=
p3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'</code></p><p>=
<code>[00:00:06] Current task: Synthesis +++ Current Phase: Starting</code>=
</p><p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM f=
ile '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/c=
mplx_mul.xml'</code></p><p><code>ERROR: [Vivado 12-398] No designs are open=
</code></p><p><code>[00:00:06] Current task: Synthesis +++ Current Phase: F=
inished</code></p><p><code>[00:00:06] Process terminated. Status: Failure</=
code></p><p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p><p><code>Warnings:          =
 3</code></p><p><code>Critical Warnings:  7</code></p><p><code>Errors:     =
        8</code></p><p><code>BUILDER: Releasing IP location: /workarea/uhd/=
fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul</code></p><p><code>m=
ake[1]: *** [/rfnoc-foo/fpga//ip/cmplx_mul/Makefile.inc:21: LIB_IP_CMPLX_MU=
L_TRGT] Error 1</code></p><p><code>make[1]: Leaving directory '/workarea/uh=
d/fpga/usrp3/top/n3xx'</code></p><p><code>make: *** [Makefile:90: N3X0_IP] =
Error 2</code></p></blockquote><p>Hello,</p><p>There was issue with =
=E2=80=98<code>cmplx_mul</code>=E2=80=98 configuration not being updated af=
ter migration of UHD to Vivado 2021.1 from Vivado 2019.1.<br>This is the ca=
se for UHD-4.3 release and the issue was fixed in master branch.</p><p>For =
more details look here: https://github.com/EttusResearch/uhd/issues/635</p>=
<p>Best Regards,<br>Piotr Krysik</p>

--b1_SfaKs3CAXqAEDcdoS5AkglQpAhLYuAxZoNK4AVqoD0--

--===============9009363416985098443==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9009363416985098443==--
