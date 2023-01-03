Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7925F65C894
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 22:03:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 63CCC384218
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 16:03:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672779835; bh=0Y31ItWSOe3vUJQKYIHTx4XX7LdsBkbtvCp8gSydNLc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=tTNlWzvjq5YncBgdrrzhH7RCzDNh3r0+e+xrGOBjmHsgq/2bCHF8PxCkWI/AcQ3G9
	 mwVi+jm7DrrkWHyr4O0LOMm5IgHuFHK3XgUFhIkjHuSymFpO0K/AvTC/Cy8wROqhfB
	 IQ8gkMthywAc7QI9FuF0rxLxqV9NXyPEPFscqA2NDIC3eJM6srm6xo3QODt7BZKmo0
	 yC77UauFCtwhbptmmfILy+uJ8sMRLkYuvGLVSO9qgX9nlhlV3ziMi4TbrvF8Nodk9a
	 rpCgilQVO2HO66dYWjy5zBhoa+UHi5oOfGysQV3p+lSaLZeqVau3Yfp/CdRAatiyX1
	 fxrQ5LMGG7dIg==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 3F0333841EB
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 16:03:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="y9WzQeSN";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id fy8so13189049ejc.13
        for <usrp-users@lists.ettus.com>; Tue, 03 Jan 2023 13:03:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9dvxSJNLNsvIJRSzYmlRrrz/eh6WojZfMo/xAEPylcw=;
        b=y9WzQeSNCkeesKvGYDZ9XwzWT2ZpWks9fH8dKT14jFeenYDGfQLAEIEMXr4vtqLWA5
         eKqFeuTMePOsZaG0ehyr/QzWw3v82oMw4ZAn797HTcau8jPCIpPqPmv9wczF2hRL3Uet
         CMvEob6mI2Divkj7Nqm/cZyks4CdV18RWKxNwx28bH/L9A3hukLocY2LxUAPYq1Q/ER/
         3ZDKIy+Q88Oe51IAD9eJkKf7QQr8dkr92TIuRy9e6iJy60buxlKhnpFt6sAUYM+T7liA
         MUsAwPSxTg4NXbbtlyNaq2jZFDHBlEiivBvl4ezBtj10dID839O4hv3XS9i18TKht+be
         1lwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9dvxSJNLNsvIJRSzYmlRrrz/eh6WojZfMo/xAEPylcw=;
        b=gGwathRJFArgT+UInJ4UN7g9ILpxoXg5y0tXHoOx2rrL6dLzvU1RTi/jTY5Qxv4mlM
         27ZyrXucI/KoYcfWiKByT+hT6hWkwtKwewqqedf5d7A8CJo6rUpnX+8ymH1Whp9Ipv0l
         12IqLrPTDSc3QSda5oVMOyrC7CxjtcIQ/NafJ6C0HBFL0HQAI9xrXHyCP0UKj0a3168Q
         H6VuDXV/w1YuDY1UM2Oy7Yw2s4Q1qQDxszlm7D4Kr1NJSAfTeAybbdi41idw67XtdRbs
         jMBP3iPbWi1nHZ5ND97MW7bV4wHUamoJO54wcEyT1UjCPVzYGcJM1lAKZF9gAjd5bBFg
         tNQA==
X-Gm-Message-State: AFqh2krGSqEms91y7Ywamp8YImStefQvQjhDorksAMn8tB9IdQ09C/sy
	vaAvh6jjqewP0Cud7K4kv38S19Q2KXxXz87dSoDq5IMfp6HUIO1MVdE=
X-Google-Smtp-Source: AMrXdXsgl3Tnx7MNWHGSn9yInZtCNUzyat8UmSbB9P7RNJccrfJb8jr5UKSwaajlq+lEXD3Ed+kKVU+BkSkn3wvWyuw=
X-Received: by 2002:a17:907:2b11:b0:7c0:eeae:242d with SMTP id
 gc17-20020a1709072b1100b007c0eeae242dmr3119369ejc.672.1672779827971; Tue, 03
 Jan 2023 13:03:47 -0800 (PST)
MIME-Version: 1.0
References: <DAaWB9DenFAL4Y9dwqJeUsx4ay2GGMp0LzcJRWe14@lists.ettus.com>
In-Reply-To: <DAaWB9DenFAL4Y9dwqJeUsx4ay2GGMp0LzcJRWe14@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 3 Jan 2023 15:03:31 -0600
Message-ID: <CAFche=ihtCc50wMyRS0CQd0SECnE_-+Z6N5dkVJVp5a4Hy_26Q@mail.gmail.com>
To: ri28856@mit.edu
Message-ID-Hash: N52TFNKUS2IN3CUKDCXHZGZOTAU6D5SL
X-Message-ID-Hash: N52TFNKUS2IN3CUKDCXHZGZOTAU6D5SL
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building x310 FPGA image for UHD 4.3.0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N52TFNKUS2IN3CUKDCXHZGZOTAU6D5SL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0666072771856188185=="

--===============0666072771856188185==
Content-Type: multipart/alternative; boundary="0000000000006f234705f1626762"

--0000000000006f234705f1626762
Content-Type: text/plain; charset="UTF-8"

You probably need to install Xilinx patch AR76780. See the dependencies
section in the manual for links to the patch:

https://files.ettus.com/manual/md_usrp3_build_instructions.html

UHD has already been updated to give you an error when this patch is not
installed and you try to build the FPGA, but that wasn't fixed until after
4.3 was released.

Wade

On Tue, Jan 3, 2023 at 2:40 PM <ri28856@mit.edu> wrote:

> Here are my next steps:
>
>    1.
>
>    git clone https://github.com/EttusResearch/uhd.git clean_uhd
>    2.
>
>    git checkout v4.3.0.0
>    3.
>
>    source setupenv.sh --vivado-path=/path/to/Xilinx/Vivado/
>    4.
>
>    make cleanall
>    5.
>
>    make X310_XG
>
> I get a very similar error:
>
> ========================================================
>
> BUILDER: Building IP axi_hb31
>
> ========================================================
>
> BUILDER: Staging IP in build directory...
>
> BUILDER: Reserving IP location:
> /afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31
>
> BUILDER: Retargeting IP to part kintex7/xc7k410t/ffg900/-2...
>
> BUILDER: Building IP...
>
> [00:00:00] Executing command: vivado -mode batch -source
> /afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl
> -log axi_hb31.log -nojournal
>
> [00:00:13] Current task: Initialization +++ Current Phase: Starting
>
> WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:
>
> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
> following file is locked:
> /afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xci
>
> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the
> following file is locked:
> /afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xci
>
> [00:00:13] Current task: Initialization +++ Current Phase: Finished
>
> [00:00:13] Executing Tcl: synth_design -top axi_hb31 -part
> xc7k410tffg900-2 -mode out_of_context
>
> [00:00:13] Starting Synthesis Command
>
> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
> for Synthesis target. These output products could be required for
> synthesis, please generate the output products using the generate_target or
> synth_ip command before running synth_design.
>
> WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:
>
> ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources
> specified
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml'
>
> ERROR: [Vivado 12-398] No designs are open
>
> [00:00:14] Current task: Synthesis +++ Current Phase: Starting
>
> [00:00:14] Current task: Synthesis +++ Current Phase: Finished
>
> [00:00:14] Process terminated. Status: Failure
>
> ========================================================
>
> Warnings: 3
>
> Critical Warnings: 7
>
> Errors: 8
>
> BUILDER: Releasing IP location:
> /afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31
>
> make[1]: ***
> [/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/lib/ip/axi_hb31/Makefile.inc:20:
> LIB_IP_AXI_HB31_TRGT] Error 1
>
> make[1]: Leaving directory
> '/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300'
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006f234705f1626762
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You probably need to install Xilinx patch AR76780. Se=
e the dependencies section in the manual for links to the patch:</div><div>=
<br></div><div><a href=3D"https://files.ettus.com/manual/md_usrp3_build_ins=
tructions.html">https://files.ettus.com/manual/md_usrp3_build_instructions.=
html</a></div><div><br></div><div>UHD has already been updated to give you =
an error when this patch is not installed and you try to build the FPGA, bu=
t that wasn&#39;t fixed until after 4.3 was released.<br></div><div><br></d=
iv><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Tue, Jan 3, 2023 at 2:40 PM &lt;<a href=3D"mailto:=
ri28856@mit.edu">ri28856@mit.edu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><p>Here are my next steps:</p><ol><li><p>g=
it clone <a href=3D"https://github.com/EttusResearch/uhd.git" target=3D"_bl=
ank">https://github.com/EttusResearch/uhd.git</a> clean_uhd</p></li><li><p>=
git checkout v4.3.0.0</p></li><li><p>source setupenv.sh --vivado-path=3D/pa=
th/to/Xilinx/Vivado/</p></li><li><p>make cleanall</p></li><li><p>make X310_=
XG</p></li></ol><p>I get a very similar error:</p><p><code>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</code></p><p><code>BUILDER: Building IP axi_hb31</code></p><p><code>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D</code></p><p><code>BUILDER: Staging IP in build directory..=
.</code></p><p><code>BUILDER: Reserving IP location: /afs/mitll/usr/ri28856=
/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31</c=
ode></p><p><code>BUILDER: Retargeting IP to part kintex7/xc7k410t/ffg900/-2=
...</code></p><p><code>BUILDER: Building IP...</code></p><p><code>[00:00:00=
] Executing command: vivado -mode batch -source /afs/mitll/usr/ri28856/publ=
ic/clean_uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log axi_hb31.log=
 -nojournal</code></p><p><code>[00:00:13] Current task: Initialization +++ =
Current Phase: Starting</code></p><p><code>WARNING: [IP_Flow 19-2162] IP &#=
39;axi_hb31&#39; is locked:</code></p><p><code>CRITICAL WARNING: [filemgmt =
20-1366] Unable to reset target(s) for the following file is locked: /afs/m=
itll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg9=
00-2/axi_hb31/axi_hb31.xci</code></p><p><code>CRITICAL WARNING: [filemgmt 2=
0-1365] Unable to generate target(s) for the following file is locked: /afs=
/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tff=
g900-2/axi_hb31/axi_hb31.xci</code></p><p><code>[00:00:13] Current task: In=
itialization +++ Current Phase: Finished</code></p><p><code>[00:00:13] Exec=
uting Tcl: synth_design -top axi_hb31 -part xc7k410tffg900-2 -mode out_of_c=
ontext</code></p><p><code>[00:00:13] Starting Synthesis Command</code></p><=
p><code>WARNING: [Vivado_Tcl 4-391] The following IPs are missing output pr=
oducts for Synthesis target. These output products could be required for sy=
nthesis, please generate the output products using the generate_target or s=
ynth_ip command before running synth_design.</code></p><p><code>WARNING: [I=
P_Flow 19-2162] IP &#39;axi_hb31&#39; is locked:</code></p><p><code>ERROR: =
[Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources specified</=
code></p><p><code>ERROR: [Common 17-53] User Exception: No open design. Ple=
ase open an elaborated, synthesized or implemented design before executing =
this command.</code></p><p><code>ERROR: [Common 17-53] User Exception: No o=
pen design. Please open an elaborated, synthesized or implemented design be=
fore executing this command.</code></p><p><code>ERROR: [Common 17-53] User =
Exception: No open design. Please open an elaborated, synthesized or implem=
ented design before executing this command.</code></p><p><code>ERROR: [Comm=
on 17-53] User Exception: No open design. Please open an elaborated, synthe=
sized or implemented design before executing this command.</code></p><p><co=
de>ERROR: [Common 17-53] User Exception: No open design. Please open an ela=
borated, synthesized or implemented design before executing this command.</=
code></p><p><code>ERROR: [Common 17-53] User Exception: No open design. Ple=
ase open an elaborated, synthesized or implemented design before executing =
this command.</code></p><p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writin=
g uncustomized BOM file &#39;/afs/mitll/usr/ri28856/public/clean_uhd/fpga/u=
srp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml&#39;</code></=
p><p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM fil=
e &#39;/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip=
/xc7k410tffg900-2/axi_hb31/axi_hb31.xml&#39;</code></p><p><code>CRITICAL WA=
RNING: [IP_Flow 19-4739] Writing uncustomized BOM file &#39;/afs/mitll/usr/=
ri28856/public/clean_uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_=
hb31/axi_hb31.xml&#39;</code></p><p><code>CRITICAL WARNING: [IP_Flow 19-473=
9] Writing uncustomized BOM file &#39;/afs/mitll/usr/ri28856/public/clean_u=
hd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml&#39;=
</code></p><p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomize=
d BOM file &#39;/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/top/x300=
/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml&#39;</code></p><p><code>ER=
ROR: [Vivado 12-398] No designs are open</code></p><p><code>[00:00:14] Curr=
ent task: Synthesis +++ Current Phase: Starting</code></p><p><code>[00:00:1=
4] Current task: Synthesis +++ Current Phase: Finished</code></p><p><code>[=
00:00:14] Process terminated. Status: Failure</code></p><p><code>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D</code></p><p><code>Warnings:           3</code></p><p><code>Criti=
cal Warnings:  7</code></p><p><code>Errors:             8</code></p><p><cod=
e>BUILDER: Releasing IP location: /afs/mitll/usr/ri28856/public/clean_uhd/f=
pga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31</code></p><p><code>ma=
ke[1]: *** [/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usrp3/lib/ip/axi_h=
b31/Makefile.inc:20: LIB_IP_AXI_HB31_TRGT] Error 1</code></p><p><code>make[=
1]: Leaving directory &#39;/afs/mitll/usr/ri28856/public/clean_uhd/fpga/usr=
p3/top/x300&#39;</code></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006f234705f1626762--

--===============0666072771856188185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0666072771856188185==--
