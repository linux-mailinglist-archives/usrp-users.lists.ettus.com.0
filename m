Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B81D4D9F9E
	for <lists+usrp-users@lfdr.de>; Tue, 15 Mar 2022 17:08:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5B2A385264
	for <lists+usrp-users@lfdr.de>; Tue, 15 Mar 2022 12:08:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qHTHhfjJ";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id AEF4D38503D
	for <USRP-users@lists.ettus.com>; Tue, 15 Mar 2022 12:06:28 -0400 (EDT)
Received: by mail-qv1-f49.google.com with SMTP id eq14so15336514qvb.3
        for <USRP-users@lists.ettus.com>; Tue, 15 Mar 2022 09:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=1BcUZPxzJksiw/MuOWv+QKoAqDClis1kGBYjZqw14vw=;
        b=qHTHhfjJwLFZVToMxBnN+4kgrIT1MKGK2llUum1pOp0xA+zG0l71uwCmpLkzV/72Ez
         SeUAVThPnzAcpefXvTfT9I97YNKdCGmF3+MkKVXwseBKv0ap7645f05NP8MXcQrbb8H+
         GQ00ByR2mEPMlBmfvljgbZLT7REG0YopPxwSCa5et1ERRAeCvZ6cuh9WxHKVM9iRTpNV
         puAZ0YQOovUUuwsnJJebccEhquKuhhTeNM9X+HVlk6rb3ivOHtlBZtXsjLrKyvBGLm9m
         +g1XebXynJXRqLmlN4e1jYuFYeWecVgU0zZ6g/DprjxdlYyyBniSV6RVOvAAx9zu6kIC
         VENQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=1BcUZPxzJksiw/MuOWv+QKoAqDClis1kGBYjZqw14vw=;
        b=DJu/pCXtELOsz50P6/w4vqGyp1CYlgxbdRclrw4w34yoEbxzNHfb3UeoPc0LZfQ+ZJ
         vFNJ2E5fQEiSxc8GoUJ0pmdZ2mcPtI5Hivy1TYYiODQ8cyHfXmF9QboQ32HqQYrZKg3c
         /d/XJuoGWPOg+ASv1wpX5xtJZuswTly2yWHypCeeicurSTrtSBNTV2yNodNu5nl/7pgx
         4B/k/siVfllaHd1Sx+Tnnw3aN+1xIIJ7+9Qxb97Uz0apWqIOM/YjQk422RVCxjxSOwzV
         DbL14pGqh23bdfQDvh0KN8nyruzT7W28g1vdTKJR7eY/3N71X67zEAkX0P0X9JwUbTAc
         Shkg==
X-Gm-Message-State: AOAM530jPnLX5Mo6uW2TIabYHC8fqcCI16bgg9PAG5602DVSaeb6FJNF
	VU+cxDRYbfN1+U0WaOvMtXWngIoWbNI=
X-Google-Smtp-Source: ABdhPJxdqaZx7iG/VPySWy3EY/DlIQ4Y/R+IMu0ybUV+37jyFe4LFtvBrczlzCAWbBNqheyYBkPRbg==
X-Received: by 2002:a05:6214:d47:b0:440:b01f:ff8d with SMTP id 7-20020a0562140d4700b00440b01fff8dmr7900075qvr.23.1647360387777;
        Tue, 15 Mar 2022 09:06:27 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id f7-20020a05622a104700b002d4b318692esm13403387qte.31.2022.03.15.09.06.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Mar 2022 09:06:27 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 15 Mar 2022 12:06:26 -0400
Message-Id: <D861E27F-D366-4C72-AE42-AC7D1ADE4D52@gmail.com>
References: <E1188D158AA7A048AF99B6A05DA3D629DFE93510@SPROMMAIL03.spengtes.space>
In-Reply-To: <E1188D158AA7A048AF99B6A05DA3D629DFE93510@SPROMMAIL03.spengtes.space>
To: "STEFANI, Maurizio (External)" <maurizio.stefani.external@airbus.com>
X-Mailer: iPhone Mail (19D52)
Message-ID-Hash: GLODXZUW4347MEHT6TGCMHYKVTTYFQ4Q
X-Message-ID-Hash: GLODXZUW4347MEHT6TGCMHYKVTTYFQ4Q
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: request for ettus x310 build error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GLODXZUW4347MEHT6TGCMHYKVTTYFQ4Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1669716062342654229=="


--===============1669716062342654229==
Content-Type: multipart/alternative; boundary=Apple-Mail-D7AADF79-4213-4FDE-8F70-B477FFB6412D
Content-Transfer-Encoding: 7bit


--Apple-Mail-D7AADF79-4213-4FDE-8F70-B477FFB6412D
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

You have presumably spent some time with this document?

https://files.ettus.com/manual/md_usrp3_build_instructions.html



Sent from my iPhone

> On Mar 15, 2022, at 12:00 PM, STEFANI, Maurizio (External) via USRP-users <=
usrp-users@lists.ettus.com> wrote:
>=20
> =EF=BB=BF
> HI,
> we have an ETTUS X310, I need to re-build and load the original FPGA,
> I loaded from repository the relevant file
> The files are in:
> /vhd/uhd-master/uhd-master/fpga/usrp3/top/x300
> When I run make:
> maurizio.stefani@ubuntux:~/prove/uhd/uhd-master/fpga/usrp3/top/x300$ make
> make -f Makefile.x300.inc bin NAME=3DX300_HG ARCH=3Dkintex7 PART_ID=3Dxc7k=
325t/ffg900/-2 BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1  X300=
=3D1 TOP_MODULE=3Dx300 EXTRA_DEFS=3D"BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D=
1 SFP1_10GBE=3D1  X300=3D1" DEFAULT_RFNOC_IMAGE_CORE_FILE=3Dx300_rfnoc_image=
_core.v DEFAULT_EDGE_FILE=3D/home/maurizio.stefani/prove/uhd/uhd-master/fpga=
/usrp3/top/x300/x300_static_router.hex
> make[1]: Entering directory '/home/maurizio.stefani/prove/uhd/uhd-master/f=
pga/usrp3/top/x300'
> BUILDER: Checking tools...
> * GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)
> * Python 3.8.10
> * Vivado v2019.2 (64-bit)
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> BUILDER: Building IP ten_gig_eth_pcs_pma
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> BUILDER: Staging IP in build directory...
> BUILDER: Reserving IP location: /home/maurizio.stefani/prove/uhd/uhd-maste=
r/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma
> BUILDER: Retargeting IP to part kintex7/xc7k325t/ffg900/-2...
> BUILDER: Building IP...
> [00:00:00] Executing command: vivado -mode batch -source /home/maurizio.st=
efani/prove/uhd/uhd-master/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log=
 ten_gig_eth_pcs_pma.log -nojournal
> WARNING: [IP_Flow 19-2162] IP 'ten_gig_eth_pcs_pma' is locked:
> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the fol=
lowing file is locked: /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp=
3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma=
.xci
> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the f=
ollowing file is locked: /home/maurizio.stefani/prove/uhd/uhd-master/fpga/us=
rp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_p=
ma.xci
> [00:00:21] Current task: Initialization +++ Current Phase: Starting
> [00:00:22] Current task: Initialization +++ Current Phase: Finished
> [00:00:22] Executing Tcl: synth_design -top ten_gig_eth_pcs_pma -part xc7k=
325tffg900-2 -mode out_of_context
> [00:00:22] Starting Synthesis Command
> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products f=
or Synthesis target. These output products could be required for synthesis, p=
lease generate the output products using the generate_target or synth_ip com=
mand before running synth_design.
> WARNING: [IP_Flow 19-2162] IP 'ten_gig_eth_pcs_pma' is locked:
> ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources spe=
cified
> ERROR: [Common 17-53] User Exception: No open design. Please open an elabo=
rated, synthesized or implemented design before executing this command.
> ERROR: [Common 17-53] User Exception: No open design. Please open an elabo=
rated, synthesized or implemented design before executing this command.
> ERROR: [Common 17-53] User Exception: No open design. Please open an elabo=
rated, synthesized or implemented design before executing this command.
> ERROR: [Common 17-53] User Exception: No open design. Please open an elabo=
rated, synthesized or implemented design before executing this command.
> ERROR: [Common 17-53] User Exception: No open design. Please open an elabo=
rated, synthesized or implemented design before executing this command.
> ERROR: [Common 17-53] User Exception: No open design. Please open an elabo=
rated, synthesized or implemented design before executing this command.
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/m=
aurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tff=
g900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/m=
aurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tff=
g900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/m=
aurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tff=
g900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/m=
aurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tff=
g900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/m=
aurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tff=
g900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'
> ERROR: [Vivado 12-398] No designs are open
> ERROR: [Common 17-69] Command failed: * IP definition '10G Ethernet PCS/PM=
A (10GBASE-R/KR) (6.0)' for IP 'ten_gig_eth_pcs_pma' (customized with softwa=
re release 2019.1) has a different revision in the IP Catalog.
> [00:00:24] Current task: Synthesis +++ Current Phase: Starting
> [00:00:24] Current task: Synthesis +++ Current Phase: Finished
> [00:00:24] Process terminated. Status: Failure
> =20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> Warnings:           3
> Critical Warnings:  7
> Errors:             9
> =20
> BUILDER: Releasing IP location: /home/maurizio.stefani/prove/uhd/uhd-maste=
r/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma
> make[1]: *** [/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x=
300/ip/ten_gig_eth_pcs_pma/Makefile.inc:41: /home/maurizio.stefani/prove/uhd=
/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pm=
a/ten_gig_eth_pcs_pma.xci.out] Error 1
> make[1]: Leaving directory '/home/maurizio.stefani/prove/uhd/uhd-master/fp=
ga/usrp3/top/x300'
> make: *** [Makefile:90: X300_HG] Error 2
> =20
> Could you help us to understand the problem
> Thank you
> Maurizio Stefani
> =20
> The information in this e-mail is confidential. The contents may not be di=
sclosed or used by anyone other than the addressee. Access to this e-mail by=
 anyone else is unauthorised.
> If you are not the intended recipient, please notify Airbus immediately an=
d delete this e-mail.
> Airbus cannot accept any responsibility for the accuracy or completeness o=
f this e-mail as it has been sent over public networks. If you have any conc=
erns over the content of this message or its Accuracy or Integrity, please c=
ontact Airbus immediately.
> All outgoing e-mails from Airbus are checked using regularly updated virus=
 scanning software but you should take whatever measures you deem to be appr=
opriate to ensure that this message and any attachments are virus free. ____=
___________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-D7AADF79-4213-4FDE-8F70-B477FFB6412D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">You have presumably spent some time with th=
is document?<div><br></div><div><a href=3D"https://files.ettus.com/manual/md=
_usrp3_build_instructions.html">https://files.ettus.com/manual/md_usrp3_buil=
d_instructions.html</a></div><div><br></div><div><br><br><div dir=3D"ltr">Se=
nt from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Mar=
 15, 2022, at 12:00 PM, STEFANI, Maurizio (External) via USRP-users &lt;usrp=
-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=
=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 2.0cm 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">HI,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">we have an ETTUS X310, I need to=
 re-build and load the original FPGA,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I loaded from repository the rel=
evant file<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The files are in:<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">/vhd/uhd-master/uhd-master/fpga/=
usrp3/top/x300<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I run <b><i>make</i></b>:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><a href=3D"mailto:maurizio.st=
efani@ubuntux:~/prove/uhd/uhd-master/fpga/usrp3/top/x300$">maurizio.stefani@=
ubuntux:~/prove/uhd/uhd-master/fpga/usrp3/top/x300$</a> make<o:p></o:p></spa=
n></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">make -f Makefile.x300.inc bin=
 NAME=3DX300_HG ARCH=3Dkintex7 PART_ID=3Dxc7k325t/ffg900/-2 BUILD_1G=3D1 BUI=
LD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1&nbsp; X300=3D1 TOP_MODULE=3Dx300 EXT=
RA_DEFS=3D"BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1&nbsp;
 X300=3D1" DEFAULT_RFNOC_IMAGE_CORE_FILE=3Dx300_rfnoc_image_core.v DEFAULT_E=
DGE_FILE=3D/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/x=
300_static_router.hex<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">make[1]: Entering directory '=
/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300'<o:p></o:p><=
/span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Checking tools...<o:=
p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">* GNU bash, version 5.0.17(1)=
-release (x86_64-pc-linux-gnu)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">* Python 3.8.10<o:p></o:p></s=
pan></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">* Vivado v2019.2 (64-bit)<o:p=
></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></spa=
n></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Building IP ten_gig_=
eth_pcs_pma<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></spa=
n></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Staging IP in build d=
irectory...<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Reserving IP locatio=
n: /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/=
xc7k325tffg900-2/ten_gig_eth_pcs_pma<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Retargeting IP to pa=
rt kintex7/xc7k325t/ffg900/-2...<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Building IP...<o:p><=
/o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:00] Executing command:=
 vivado -mode batch -source /home/maurizio.stefani/prove/uhd/uhd-master/fpga=
/usrp3/tools/scripts/viv_generate_ip.tcl -log ten_gig_eth_pcs_pma.log -nojou=
rnal<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">WARNING: [IP_Flow 19-2162] IP=
 'ten_gig_eth_pcs_pma' is locked:<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [filemgmt 2=
0-1366] Unable to reset target(s) for the following file is locked: /home/ma=
urizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg=
900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [filemgmt 2=
0-1365] Unable to generate target(s) for the following file is locked: /home=
/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325t=
ffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci<o:p></o:p></span></i></=
p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:21] Current task: Init=
ialization +++ Current Phase: Starting<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:22] Current task: Init=
ialization +++ Current Phase: Finished<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:22] Executing Tcl: syn=
th_design -top ten_gig_eth_pcs_pma -part xc7k325tffg900-2 -mode out_of_conte=
xt<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:22] Starting Synthesis=
 Command<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">WARNING: [Vivado_Tcl 4-391] T=
he following IPs are missing output products for Synthesis target. These out=
put products could be required for synthesis, please generate the output pro=
ducts using the generate_target or
 synth_ip command before running synth_design.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">WARNING: [IP_Flow 19-2162] IP=
 'ten_gig_eth_pcs_pma' is locked:<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Designutils 20-414] H=
RTInvokeSpec : No Verilog or VHDL sources specified<o:p></o:p></span></i></p=
>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User Ex=
ception: No open design. Please open an elaborated, synthesized or implement=
ed design before executing this command.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User Ex=
ception: No open design. Please open an elaborated, synthesized or implement=
ed design before executing this command.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User Ex=
ception: No open design. Please open an elaborated, synthesized or implement=
ed design before executing this command.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User Ex=
ception: No open design. Please open an elaborated, synthesized or implement=
ed design before executing this command.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User Ex=
ception: No open design. Please open an elaborated, synthesized or implement=
ed design before executing this command.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User Ex=
ception: No open design. Please open an elaborated, synthesized or implement=
ed design before executing this command.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [IP_Flow 19=
-4739] Writing uncustomized BOM file '/home/maurizio.stefani/prove/uhd/uhd-m=
aster/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_=
gig_eth_pcs_pma.xml'<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [IP_Flow 19=
-4739] Writing uncustomized BOM file '/home/maurizio.stefani/prove/uhd/uhd-m=
aster/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_=
gig_eth_pcs_pma.xml'<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [IP_Flow 19=
-4739] Writing uncustomized BOM file '/home/maurizio.stefani/prove/uhd/uhd-m=
aster/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_=
gig_eth_pcs_pma.xml'<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [IP_Flow 19=
-4739] Writing uncustomized BOM file '/home/maurizio.stefani/prove/uhd/uhd-m=
aster/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_=
gig_eth_pcs_pma.xml'<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [IP_Flow 19=
-4739] Writing uncustomized BOM file '/home/maurizio.stefani/prove/uhd/uhd-m=
aster/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_=
gig_eth_pcs_pma.xml'<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Vivado 12-398] No des=
igns are open<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-69] Command=
 failed: * IP definition '10G Ethernet PCS/PMA (10GBASE-R/KR) (6.0)' for IP '=
ten_gig_eth_pcs_pma' (customized with software release 2019.1) has a differe=
nt revision in the IP Catalog.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:24] Current task: Synt=
hesis +++ Current Phase: Starting<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:24] Current task: Synt=
hesis +++ Current Phase: Finished<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:24] Process terminated=
. Status: Failure<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></i><=
/p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></spa=
n></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Warnings:&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Critical Warnings:&nbsp; 7<o:=
p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Errors:&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9<o:p></o:p></span></i></=
p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></i><=
/p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Releasing IP locatio=
n: /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/=
xc7k325tffg900-2/ten_gig_eth_pcs_pma<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">make[1]: *** [/home/maurizio.=
stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/ip/ten_gig_eth_pcs_pma/Make=
file.inc:41: /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300=
/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.out]
 Error 1<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">make[1]: Leaving directory '/=
home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300'<o:p></o:p></=
span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">make: *** [Makefile:90: X300_=
HG] Error 2<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></i><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Could you help us to understand t=
he problem<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Maurizio Stefani<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<font style=3D"font-size: 9px;">The information in this e-mail is confidenti=
al. The contents may not be disclosed or used by anyone other than the addre=
ssee. Access to this e-mail by anyone else is unauthorised.<br>If you are no=
t the intended recipient, please notify Airbus immediately and delete this e=
-mail.<br>Airbus cannot accept any responsibility for the accuracy or comple=
teness of this e-mail as it has been sent over public networks. If you have a=
ny concerns over the content of this message or its Accuracy or Integrity, p=
lease contact Airbus immediately.<br>All outgoing e-mails from Airbus are ch=
ecked using regularly updated virus scanning software but you should take wh=
atever measures you deem to be appropriate to ensure that this message and a=
ny attachments are virus free.</font>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-D7AADF79-4213-4FDE-8F70-B477FFB6412D--

--===============1669716062342654229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1669716062342654229==--
