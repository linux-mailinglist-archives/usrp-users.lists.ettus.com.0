Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D714DA039
	for <lists+usrp-users@lfdr.de>; Tue, 15 Mar 2022 17:38:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21348384CD7
	for <lists+usrp-users@lfdr.de>; Tue, 15 Mar 2022 12:38:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="tWQq3h26";
	dkim-atps=neutral
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 4CAF1384C63
	for <usrp-users@lists.ettus.com>; Tue, 15 Mar 2022 12:37:35 -0400 (EDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-2d07ae0b1c0so209236767b3.2
        for <usrp-users@lists.ettus.com>; Tue, 15 Mar 2022 09:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ITRimwWOkKflX2KB0/nL/CjjhcmosvB1E7yoAxFq76w=;
        b=tWQq3h26HXoDvjWy9w9L8o5TPx5Q3D1uHzil+hgN5URDiUXQs4VZhr91VtR6tt1UYw
         PPIRJFLpjOuAGL5RkJLMNztY6m3h4u0BjobXOhlBwkuteHrTqfbIvDeII7ydcqSEPTZR
         JAq/kaOQr62CvJtT6vWv1fqWNrsHMs5cgeiJqqXhlstoCQ+oCcuCOI6I3yEgZAkNUvJq
         w5u8KmNaitFYQ9mlEkMl5Qa7ITvLtiMgk5zUr7vXdDi5yP/sOhPG+XIoBiMRFb4YYb9i
         /7BUN5XSJv79a09K5U44QywBjXnVif4MvkkXKf8bsYhgmup8WvpI9jBtBAITjxgDWrkU
         fnlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ITRimwWOkKflX2KB0/nL/CjjhcmosvB1E7yoAxFq76w=;
        b=S1qQSydS+94q4CNa48ByOlVBpzfSTM8pTSN3HdCbbX0GY77D3sVPn3sMgVoNmedocz
         mmhpj1YgbFx8VdXlt/Wzy0h26byfKq6K+B5nfZGZo+8zj+2TST0qWnCcPXQzHyWneBB9
         gJM10HEDl5x1xQD4MP2SrlCtbeWuThrYV44qaoTrb0+cK6z1l54OndtLM/LZibEhqShf
         Njdgr5NM/nI5HCbcTqBugB9VEYDwFD6cTqhEN7ANKHvEygjjSvZFlt4sZgME9C2CtMNe
         gtcr8Jn9XyeOcA5xWxxeD5Ic+A64lwJ/UxI19PxWcBcet1v5+Z2VwlYnOOB/5p6oxFaa
         5yhw==
X-Gm-Message-State: AOAM533cMK4v69ifjTTpAb/DrKzGC+1brgfkgaJHY77skCI7AsFFYNHT
	PvHQPtx68ydvti8E7oRv0wm7p5mpvdS8NzTYu9ChZSjcncDwhw==
X-Google-Smtp-Source: ABdhPJxYN85Ntjld/2OzNxnLFKKOzjXF7FRRTHqib1sNwGWBZx8h08LVGd7PubXxA3aphf1U4r5tDV8Hh6OazU+3EZs=
X-Received: by 2002:a81:2555:0:b0:2d0:dc91:5a1c with SMTP id
 l82-20020a812555000000b002d0dc915a1cmr25271149ywl.200.1647362254652; Tue, 15
 Mar 2022 09:37:34 -0700 (PDT)
MIME-Version: 1.0
References: <E1188D158AA7A048AF99B6A05DA3D629DFE93510@SPROMMAIL03.spengtes.space>
In-Reply-To: <E1188D158AA7A048AF99B6A05DA3D629DFE93510@SPROMMAIL03.spengtes.space>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 15 Mar 2022 12:37:24 -0400
Message-ID: <CAFche=iqmSK6eKhqmmqFNV43frpQfMiqPa0hx_6xn4Sjz5220A@mail.gmail.com>
To: "STEFANI, Maurizio (External)" <maurizio.stefani.external@airbus.com>
Message-ID-Hash: P525LYK6MSNQWO33HZSMCEF4Z3GOV4OV
X-Message-ID-Hash: P525LYK6MSNQWO33HZSMCEF4Z3GOV4OV
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: request for ettus x310 build error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P525LYK6MSNQWO33HZSMCEF4Z3GOV4OV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5829018290523375147=="

--===============5829018290523375147==
Content-Type: multipart/alternative; boundary="00000000000001599905da446a66"

--00000000000001599905da446a66
Content-Type: text/plain; charset="UTF-8"

Hi,

It looks like you're using Vivado 2019.2, but 2019.1 is expected. With the
wrong Vivado version, you'll have IP version problems. Make sure you run
"source setupenv.sh" prior to running "make" and make sure it completes
successfully. I also suggest running "make cleanall" to clear out any bad
IP build products from the previous failed runs before building again.

Thanks,

Wade


On Tue, Mar 15, 2022, 12:01 PM STEFANI, Maurizio (External) via USRP-users <
usrp-users@lists.ettus.com> wrote:

> HI,
>
> we have an ETTUS X310, I need to re-build and load the original FPGA,
>
> I loaded from repository the relevant file
>
> The files are in:
>
> /vhd/uhd-master/uhd-master/fpga/usrp3/top/x300
>
> When I run *make*:
>
> *maurizio.stefani@ubuntux:~/prove/uhd/uhd-master/fpga/usrp3/top/x300$
> <maurizio.stefani@ubuntux:~/prove/uhd/uhd-master/fpga/usrp3/top/x300$> make*
>
> *make -f Makefile.x300.inc bin NAME=X300_HG ARCH=kintex7
> PART_ID=xc7k325t/ffg900/-2 BUILD_1G=1 BUILD_10G=1 SFP0_1GBE=1 SFP1_10GBE=1
> X300=1 TOP_MODULE=x300 EXTRA_DEFS="BUILD_1G=1 BUILD_10G=1 SFP0_1GBE=1
> SFP1_10GBE=1  X300=1" DEFAULT_RFNOC_IMAGE_CORE_FILE=x300_rfnoc_image_core.v
> DEFAULT_EDGE_FILE=/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/x300_static_router.hex*
>
> *make[1]: Entering directory
> '/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300'*
>
> *BUILDER: Checking tools...*
>
> ** GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)*
>
> ** Python 3.8.10*
>
> ** Vivado v2019.2 (64-bit)*
>
> *========================================================*
>
> *BUILDER: Building IP ten_gig_eth_pcs_pma*
>
> *========================================================*
>
> *BUILDER: Staging IP in build directory...*
>
> *BUILDER: Reserving IP location:
> /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma*
>
> *BUILDER: Retargeting IP to part kintex7/xc7k325t/ffg900/-2...*
>
> *BUILDER: Building IP...*
>
> *[00:00:00] Executing command: vivado -mode batch -source
> /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/tools/scripts/viv_generate_ip.tcl
> -log ten_gig_eth_pcs_pma.log -nojournal*
>
> *WARNING: [IP_Flow 19-2162] IP 'ten_gig_eth_pcs_pma' is locked:*
>
> *CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
> following file is locked:
> /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci*
>
> *CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the
> following file is locked:
> /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci*
>
> *[00:00:21] Current task: Initialization +++ Current Phase: Starting*
>
> *[00:00:22] Current task: Initialization +++ Current Phase: Finished*
>
> *[00:00:22] Executing Tcl: synth_design -top ten_gig_eth_pcs_pma -part
> xc7k325tffg900-2 -mode out_of_context*
>
> *[00:00:22] Starting Synthesis Command*
>
> *WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
> for Synthesis target. These output products could be required for
> synthesis, please generate the output products using the generate_target or
> synth_ip command before running synth_design.*
>
> *WARNING: [IP_Flow 19-2162] IP 'ten_gig_eth_pcs_pma' is locked:*
>
> *ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources
> specified*
>
> *ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this
> command.*
>
> *ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this
> command.*
>
> *ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this
> command.*
>
> *ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this
> command.*
>
> *ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this
> command.*
>
> *ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this
> command.*
>
> *CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'*
>
> *CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'*
>
> *CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'*
>
> *CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'*
>
> *CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'*
>
> *ERROR: [Vivado 12-398] No designs are open*
>
> *ERROR: [Common 17-69] Command failed: * IP definition '10G Ethernet
> PCS/PMA (10GBASE-R/KR) (6.0)' for IP 'ten_gig_eth_pcs_pma' (customized with
> software release 2019.1) has a different revision in the IP Catalog.*
>
> *[00:00:24] Current task: Synthesis +++ Current Phase: Starting*
>
> *[00:00:24] Current task: Synthesis +++ Current Phase: Finished*
>
> *[00:00:24] Process terminated. Status: Failure*
>
>
>
> *========================================================*
>
> *Warnings:           3*
>
> *Critical Warnings:  7*
>
> *Errors:             9*
>
>
>
> *BUILDER: Releasing IP location:
> /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma*
>
> *make[1]: ***
> [/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/ip/ten_gig_eth_pcs_pma/Makefile.inc:41:
> /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.out]
> Error 1*
>
> *make[1]: Leaving directory
> '/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300'*
>
> *make: *** [Makefile:90: X300_HG] Error 2*
>
>
>
> Could you help us to understand the problem
>
> Thank you
>
> Maurizio Stefani
>
>
> The information in this e-mail is confidential. The contents may not be
> disclosed or used by anyone other than the addressee. Access to this e-mail
> by anyone else is unauthorised.
> If you are not the intended recipient, please notify Airbus immediately
> and delete this e-mail.
> Airbus cannot accept any responsibility for the accuracy or completeness
> of this e-mail as it has been sent over public networks. If you have any
> concerns over the content of this message or its Accuracy or Integrity,
> please contact Airbus immediately.
> All outgoing e-mails from Airbus are checked using regularly updated virus
> scanning software but you should take whatever measures you deem to be
> appropriate to ensure that this message and any attachments are virus free.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000001599905da446a66
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">It looks=
 like you&#39;re using Vivado 2019.2, but 2019.1 is expected. With the wron=
g Vivado version, you&#39;ll have IP version problems. Make sure you run &q=
uot;source setupenv.sh&quot; prior to running &quot;make&quot; and make sur=
e it completes successfully. I also suggest running &quot;make cleanall&quo=
t; to clear out any bad IP build products from the previous failed runs bef=
ore building again.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Than=
ks,</div><div dir=3D"auto"><br></div><div dir=3D"auto">Wade</div><br><br><d=
iv class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Tue, Mar 15, 2022, 12:01 PM STEFANI, Maurizio (External) via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"IT" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_4615194166960950603WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">HI,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">we have an ETTUS X310, I need t=
o re-build and load the original FPGA,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I loaded from repository the re=
levant file<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The files are in:<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">/vhd/uhd-master/uhd-master/fpga=
/usrp3/top/x300<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I run <b><i>make</i></b>:<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><a href=3D"mailto:maurizio.s=
tefani@ubuntux:~/prove/uhd/uhd-master/fpga/usrp3/top/x300$" target=3D"_blan=
k" rel=3D"noreferrer">maurizio.stefani@ubuntux:~/prove/uhd/uhd-master/fpga/=
usrp3/top/x300$</a> make<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">make -f Makefile.x300.inc bi=
n NAME=3DX300_HG ARCH=3Dkintex7 PART_ID=3Dxc7k325t/ffg900/-2 BUILD_1G=3D1 B=
UILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1=C2=A0 X300=3D1 TOP_MODULE=3Dx300 =
EXTRA_DEFS=3D&quot;BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1=
=C2=A0
 X300=3D1&quot; DEFAULT_RFNOC_IMAGE_CORE_FILE=3Dx300_rfnoc_image_core.v DEF=
AULT_EDGE_FILE=3D/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top=
/x300/x300_static_router.hex<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">make[1]: Entering directory =
&#39;/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300&#39;<u=
></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Checking tools...<u=
></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">* GNU bash, version 5.0.17(1=
)-release (x86_64-pc-linux-gnu)<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">* Python 3.8.10<u></u><u></u=
></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">* Vivado v2019.2 (64-bit)<u>=
</u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<u></u><u=
></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Building IP ten_gig=
_eth_pcs_pma<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<u></u><u=
></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Staging IP in build=
 directory...<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Reserving IP locati=
on: /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-i=
p/xc7k325tffg900-2/ten_gig_eth_pcs_pma<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Retargeting IP to p=
art kintex7/xc7k325t/ffg900/-2...<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Building IP...<u></=
u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:00] Executing command=
: vivado -mode batch -source /home/maurizio.stefani/prove/uhd/uhd-master/fp=
ga/usrp3/tools/scripts/viv_generate_ip.tcl -log ten_gig_eth_pcs_pma.log -no=
journal<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">WARNING: [IP_Flow 19-2162] I=
P &#39;ten_gig_eth_pcs_pma&#39; is locked:<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [filemgmt =
20-1366] Unable to reset target(s) for the following file is locked: /home/=
maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325t=
ffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci<u></u><u></u></span></=
i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [filemgmt =
20-1365] Unable to generate target(s) for the following file is locked: /ho=
me/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k3=
25tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci<u></u><u></u></span=
></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:21] Current task: Ini=
tialization +++ Current Phase: Starting<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:22] Current task: Ini=
tialization +++ Current Phase: Finished<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:22] Executing Tcl: sy=
nth_design -top ten_gig_eth_pcs_pma -part xc7k325tffg900-2 -mode out_of_con=
text<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:22] Starting Synthesi=
s Command<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">WARNING: [Vivado_Tcl 4-391] =
The following IPs are missing output products for Synthesis target. These o=
utput products could be required for synthesis, please generate the output =
products using the generate_target or
 synth_ip command before running synth_design.<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">WARNING: [IP_Flow 19-2162] I=
P &#39;ten_gig_eth_pcs_pma&#39; is locked:<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Designutils 20-414] =
HRTInvokeSpec : No Verilog or VHDL sources specified<u></u><u></u></span></=
i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User E=
xception: No open design. Please open an elaborated, synthesized or impleme=
nted design before executing this command.<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User E=
xception: No open design. Please open an elaborated, synthesized or impleme=
nted design before executing this command.<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User E=
xception: No open design. Please open an elaborated, synthesized or impleme=
nted design before executing this command.<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User E=
xception: No open design. Please open an elaborated, synthesized or impleme=
nted design before executing this command.<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User E=
xception: No open design. Please open an elaborated, synthesized or impleme=
nted design before executing this command.<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User E=
xception: No open design. Please open an elaborated, synthesized or impleme=
nted design before executing this command.<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [IP_Flow 1=
9-4739] Writing uncustomized BOM file &#39;/home/maurizio.stefani/prove/uhd=
/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_p=
ma/ten_gig_eth_pcs_pma.xml&#39;<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [IP_Flow 1=
9-4739] Writing uncustomized BOM file &#39;/home/maurizio.stefani/prove/uhd=
/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_p=
ma/ten_gig_eth_pcs_pma.xml&#39;<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [IP_Flow 1=
9-4739] Writing uncustomized BOM file &#39;/home/maurizio.stefani/prove/uhd=
/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_p=
ma/ten_gig_eth_pcs_pma.xml&#39;<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [IP_Flow 1=
9-4739] Writing uncustomized BOM file &#39;/home/maurizio.stefani/prove/uhd=
/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_p=
ma/ten_gig_eth_pcs_pma.xml&#39;<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [IP_Flow 1=
9-4739] Writing uncustomized BOM file &#39;/home/maurizio.stefani/prove/uhd=
/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_p=
ma/ten_gig_eth_pcs_pma.xml&#39;<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Vivado 12-398] No de=
signs are open<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-69] Comman=
d failed: * IP definition &#39;10G Ethernet PCS/PMA (10GBASE-R/KR) (6.0)&#3=
9; for IP &#39;ten_gig_eth_pcs_pma&#39; (customized with software release 2=
019.1) has a different revision in the IP Catalog.<u></u><u></u></span></i>=
</p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:24] Current task: Syn=
thesis +++ Current Phase: Starting<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:24] Current task: Syn=
thesis +++ Current Phase: Finished<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:24] Process terminate=
d. Status: Failure<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span><=
/i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<u></u><u=
></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Warnings:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Critical Warnings:=C2=A0 7<u=
></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Errors:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 9<u></u><u></u></span><=
/i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span><=
/i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Releasing IP locati=
on: /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-i=
p/xc7k325tffg900-2/ten_gig_eth_pcs_pma<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">make[1]: *** [/home/maurizio=
.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/ip/ten_gig_eth_pcs_pma/Ma=
kefile.inc:41: /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x=
300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.o=
ut]
 Error 1<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">make[1]: Leaving directory &=
#39;/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300&#39;<u>=
</u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">make: *** [Makefile:90: X300=
_HG] Error 2<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span><=
/i></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Could you help us to understand=
 the problem<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Maurizio Stefani<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<font style=3D"font-size:9px">The information in this e-mail is confidentia=
l. The contents may not be disclosed or used by anyone other than the addre=
ssee. Access to this e-mail by anyone else is unauthorised.<br>If you are n=
ot the intended recipient, please notify Airbus immediately and delete this=
 e-mail.<br>Airbus cannot accept any responsibility for the accuracy or com=
pleteness of this e-mail as it has been sent over public networks. If you h=
ave any concerns over the content of this message or its Accuracy or Integr=
ity, please contact Airbus immediately.<br>All outgoing e-mails from Airbus=
 are checked using regularly updated virus scanning software but you should=
 take whatever measures you deem to be appropriate to ensure that this mess=
age and any attachments are virus free.</font></div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div>

--00000000000001599905da446a66--

--===============5829018290523375147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5829018290523375147==--
