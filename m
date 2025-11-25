Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5C5C82EB5
	for <lists+usrp-users@lfdr.de>; Tue, 25 Nov 2025 01:19:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD70D385A97
	for <lists+usrp-users@lfdr.de>; Mon, 24 Nov 2025 19:19:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1764029980; bh=aVLSl6DbNag3zVdVmZQpsFZ6mgB+rkgomSoKh0rN/Ek=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=NtP7me0Pk2bWNuwhZbgbXH5A+6mZccCSUdzGN+J8UzpeLRKgKqK3cgc9bx48fr8TG
	 GOs7IvetGj1zw5qRKjLfwWx+bXCrztxViB/Hukxq6yWLNAlG//pyYLEPfm3pBAwGkT
	 lW983732gr7X6SvDkUXsYf7l64WH4uS7L0YDwTsaFgN7oc9kwB4E1WiQzmO1OfntRn
	 Rv2OepzMEM3ViRhWPufX1YEtE6pfVMU/OCUce378LSFZXHzKoPSIykzkYrtLihuYCn
	 TboBpIuueKuUXrsepENQkt1JXGXXibP/IklaMCgnVHDTDNFShbfPMPq6nySf7cM2S/
	 pkUcXzSgAfp1A==
Received: from lists.ctbirding.org (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D68B385DBE
	for <usrp-users@lists.ettus.com>; Mon, 24 Nov 2025 19:18:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1764029919; bh=DgCtBtmWn0YQLH9xrOHYYtPXNnr2tLI8mZ2ICbheDn4=;
	h=Date:To:From:Subject:From;
	b=YZdh3gNawsFHHHX3sLj94CY14Ou1hjh9qF/Lf5kIafNsKQtOlU454cj8RPvIVuwJV
	 y7nlYn2Wa2V6mSDjYRnycPfa9o8cuDSCPx/k5QAaFq2y0vi18ooF654ttuFIlRF3FB
	 idOpzK6M9jZMuO9+DyY823+G7TqiUC2IHX1KBETwWB8Ps+vDIIEZkjI0hmXLUtnL8C
	 ivA3/Jy2VpFH1/amZuGRkCYUcu+5zG1FfM9ao2QCfa4KWCNJqM+IX1GtS3GIY/Bkkg
	 H6iINVEt5BIacPwqD0ztqzHfakIW2to2NX/Iw/JgJ+kIjwmEna8Kjf2FdfLuRS/S92
	 iXSa16+bhL2zg==
Date: Tue, 25 Nov 2025 00:18:39 +0000
To: usrp-users@lists.ettus.com
Message-ID: <hQ5iWOOzBvApP4hZgEsLArBaGfDjwmhOMQC5j3EA@lists.ctbirding.org>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: CSE2XWMISJPGYT4L7LPGM6P376XA7XAL
X-Message-ID-Hash: CSE2XWMISJPGYT4L7LPGM6P376XA7XAL
X-MailFrom: peter.gu@tum.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] IP locked in UHD 4.9
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CSE2XWMISJPGYT4L7LPGM6P376XA7XAL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Peter Gu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: peter.gu@tum.de
Content-Type: multipart/mixed; boundary="===============5302830913367559576=="

This is a multi-part message in MIME format.

--===============5302830913367559576==
Content-Type: multipart/alternative;
 boundary="b1_hQ5iWOOzBvApP4hZgEsLArBaGfDjwmhOMQC5j3EA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_hQ5iWOOzBvApP4hZgEsLArBaGfDjwmhOMQC5j3EA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear RFNoC community,

during the integration of my custom OOT module on UHD 4.9 for the USRP X4=
40 I am facing an issue:=20

To start the whole process, I cloned \[1\] and added my own module with r=
fnoc_modtool, which worked. Then I added the IP core as .xci file into /r=
fnoc/fpga/oot-blocks/ip/Demodulat_ip_0=C2=A0and icores/x440_X4_400_rfnoc_=
image_core_demodchest.yml=C2=A0

I created the folder /build and executed make, sudo make install and make=
 x440_X4_400_rfnoc_image_core_demodchest as explained in \[2\].=C2=A0

As soon as the IP generation starts, I face the following issue:

```
WARNING: [IP_Flow 19-2162] IP 'Demodulat_ip_0' is locked:
```

```
CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the fo=
llowing file is locked: /home/peter/git/rfnoc-oot-blocks/build/build-ip/x=
czu28drffvg1517-2e/Demodulat_ip_0/Demodulat_ip_0.xci
```

```
CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the=
 following file is locked: /home/peter/git/rfnoc-oot-blocks/build/build-i=
p/xczu28drffvg1517-2e/Demodulat_ip_0/Demodulat_ip_0.xci
```

```
[00:00:04] Current task: Initialization +++ Current Phase: Finished
```

```
[00:00:04] Executing Tcl: synth_design -top Demodulat_ip_0 -part xczu28dr=
-ffvg1517-2-e -mode out_of_context
```

```
[00:00:04] Starting Synthesis Command
```

```
WARNING: [IP_Flow 19-2162] IP 'Demodulat_ip_0' is locked:
```

```
ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources sp=
ecified
```

```
ERROR: [Common 17-53] User Exception: No open design. Please open an elab=
orated, synthesized or implemented design before executing this command.
```

```
ERROR: [Common 17-53] User Exception: No open design. Please open an elab=
orated, synthesized or implemented design before executing this command.
```

```
ERROR: [Common 17-53] User Exception: No open design. Please open an elab=
orated, synthesized or implemented design before executing this command.
```

```
ERROR: [Common 17-53] User Exception: No open design. Please open an elab=
orated, synthesized or implemented design before executing this command.
```

```
ERROR: [Common 17-53] User Exception: No open design. Please open an elab=
orated, synthesized or implemented design before executing this command.
```

```
ERROR: [Common 17-53] User Exception: No open design. Please open an elab=
orated, synthesized or implemented design before executing this command.
```

```
[00:00:05] Current task: Synthesis +++ Current Phase: Starting
```

```
ERROR: [Vivado 12-398] No designs are open
```

```
[00:00:05] Current task: Synthesis +++ Current Phase: Finished
```

```
[00:00:05] Process terminated. Status: Failure
```

```
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
```

```
Warnings:           2
```

```
Critical Warnings:  2
```

Errors:             8  =20

I am aware of the FAQ \[3\] - however if I run=C2=A0*source setupenv.sh*=C2=
=A0I will get:

```
Setting up a 64-bit FPGA build environment for the USRP-X4xx...
```

```
- Vivado: Found (/tools/Xilinx/Vivado/2021.1/bin)
```

```
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Installed version =
is Vivado v2021.1_AR76780 (64-bit)
```

```
Environment successfully initialized.
```

=C2=A0

In the .xci file of the IP core in l. 64, it says: "RUNTIME_PARAM.SWVERSI=
ON">2021.1_AR76780 =20

It seems, that the issue doesn=E2=80=99t come from a Vivado version misma=
tch.=20

I=E2=80=99ve uploaded the code to [https://github.com/gu-peter/rfnoc-oot-=
blocks](https://github.com/gu-peter/rfnoc-oot-blocks "repository")

It would be wonderful if someone can give me a hint! E.g. if its rather a=
 RFNoC or a Xilinx issue.

Best regards,

Peter

---

\[1\] https://github.com/EttusResearch/rfnoc-oot-blocks

\[2\] https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Example:=
_Adding_an_FFT_Block

\[3\] https://kb.ettus.com/RFNoC_Frequently_Asked_Questions

--b1_hQ5iWOOzBvApP4hZgEsLArBaGfDjwmhOMQC5j3EA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear RFNoC community,</p><p>during the integration of my custom OOT modu=
le on UHD 4.9 for the USRP X440 I am facing an issue: </p><p>To start the w=
hole process, I cloned [1] and added my own module with rfnoc_modtool, whic=
h worked. Then I added the IP core as .xci file into /rfnoc/fpga/oot-blocks=
/ip/Demodulat_ip_0&nbsp;and icores/x440_X4_400_rfnoc_image_core_demodchest.=
yml&nbsp;</p><p>I created the folder /build and executed make, sudo make in=
stall and make x440_X4_400_rfnoc_image_core_demodchest as explained in [2].=
&nbsp;</p><p>As soon as the IP generation starts, I face the following issu=
e:</p><pre><code>WARNING: [IP_Flow 19-2162] IP 'Demodulat_ip_0' is locked:<=
/code></pre><pre><code>CRITICAL WARNING: [filemgmt 20-1366] Unable to reset=
 target(s) for the following file is locked: /home/peter/git/rfnoc-oot-bloc=
ks/build/build-ip/xczu28drffvg1517-2e/Demodulat_ip_0/Demodulat_ip_0.xci</co=
de></pre><pre><code>CRITICAL WARNING: [filemgmt 20-1365] Unable to generate=
 target(s) for the following file is locked: /home/peter/git/rfnoc-oot-bloc=
ks/build/build-ip/xczu28drffvg1517-2e/Demodulat_ip_0/Demodulat_ip_0.xci</co=
de></pre><pre><code>[00:00:04] Current task: Initialization +++ Current Pha=
se: Finished</code></pre><pre><code>[00:00:04] Executing Tcl: synth_design =
-top Demodulat_ip_0 -part xczu28dr-ffvg1517-2-e -mode out_of_context</code>=
</pre><pre><code>[00:00:04] Starting Synthesis Command</code></pre><pre><co=
de>WARNING: [IP_Flow 19-2162] IP 'Demodulat_ip_0' is locked:</code></pre><p=
re><code>ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sou=
rces specified</code></pre><pre><code>ERROR: [Common 17-53] User Exception:=
 No open design. Please open an elaborated, synthesized or implemented desi=
gn before executing this command.</code></pre><pre><code>ERROR: [Common 17-=
53] User Exception: No open design. Please open an elaborated, synthesized =
or implemented design before executing this command.</code></pre><pre><code=
>ERROR: [Common 17-53] User Exception: No open design. Please open an elabo=
rated, synthesized or implemented design before executing this command.</co=
de></pre><pre><code>ERROR: [Common 17-53] User Exception: No open design. P=
lease open an elaborated, synthesized or implemented design before executin=
g this command.</code></pre><pre><code>ERROR: [Common 17-53] User Exception=
: No open design. Please open an elaborated, synthesized or implemented des=
ign before executing this command.</code></pre><pre><code>ERROR: [Common 17=
-53] User Exception: No open design. Please open an elaborated, synthesized=
 or implemented design before executing this command.</code></pre><pre><cod=
e>[00:00:05] Current task: Synthesis +++ Current Phase: Starting</code></pr=
e><pre><code>ERROR: [Vivado 12-398] No designs are open</code></pre><pre><c=
ode>[00:00:05] Current task: Synthesis +++ Current Phase: Finished</code></=
pre><pre><code>[00:00:05] Process terminated. Status: Failure</code></pre><=
pre><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></pre><pre><code>Warnings:           2=
</code></pre><pre><code>Critical Warnings:  2</code></pre><p>Errors:       =
      8   </p><p><br></p><p>I am aware of the FAQ [3] - however if I run&nb=
sp;<em>source setupenv.sh</em>&nbsp;I will get:</p><pre><code>Setting up a =
64-bit FPGA build environment for the USRP-X4xx...</code></pre><pre><code>-=
 Vivado: Found (/tools/Xilinx/Vivado/2021.1/bin)</code></pre><pre><code>&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Installed version is Vi=
vado v2021.1_AR76780 (64-bit)</code></pre><pre><code>Environment successful=
ly initialized.</code></pre><p>&nbsp;</p><p>In the .xci file of the IP core=
 in l. 64, it says: "RUNTIME_PARAM.SWVERSION"&gt;2021.1_AR76780  </p><p>It =
seems, that the issue doesn=E2=80=99t come from a Vivado version mismatch. =
</p><p>I=E2=80=99ve uploaded the code to <a href=3D"https://github.com/gu-p=
eter/rfnoc-oot-blocks" title=3D"repository">https://github.com/gu-peter/rfn=
oc-oot-blocks</a></p><p><br></p><p>It would be wonderful if someone can giv=
e me a hint! E.g. if its rather a RFNoC or a Xilinx issue.</p><p><br></p><p=
>Best regards,</p><p>Peter</p><div contenteditable=3D"false"><hr></div><p>[=
1] https://github.com/EttusResearch/rfnoc-oot-blocks</p><p>[2] https://kb.e=
ttus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Example:_Adding_an_FFT_Block=
</p><p>[3] https://kb.ettus.com/RFNoC_Frequently_Asked_Questions</p>

--b1_hQ5iWOOzBvApP4hZgEsLArBaGfDjwmhOMQC5j3EA--

--===============5302830913367559576==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5302830913367559576==--
