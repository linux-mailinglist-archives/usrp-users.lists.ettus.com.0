Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF70728E01E
	for <lists+usrp-users@lfdr.de>; Wed, 14 Oct 2020 13:58:06 +0200 (CEST)
Received: from [::1] (port=57418 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kSfPu-0002v6-1z; Wed, 14 Oct 2020 07:58:02 -0400
Received: from mail-ed1-f44.google.com ([209.85.208.44]:39251)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kSfPp-0002qm-Ri
 for usrp-users@lists.ettus.com; Wed, 14 Oct 2020 07:57:58 -0400
Received: by mail-ed1-f44.google.com with SMTP id t21so2819913eds.6
 for <usrp-users@lists.ettus.com>; Wed, 14 Oct 2020 04:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4CyTVX1Za3ysPu3lAPFBL5C1SY//4HQAbWbHB7M5KLc=;
 b=p+DD2NFJmLz10qItyrdyeUCGwC6veQwKkJWYkfDxVuzOj4MR7f/31rYhsw8C7NKvEu
 CMpqEID5s1ywyqR+tvgw1JKOvNG+RUZtaNcL1tF5fW1S0svRnr7V9T/q0JdKykDcq6ed
 yXSnAhoEOsWbrtdpNJ+MmegowBKz08q9oPRyNPvxJZMFBZEaAxLaeW6MhuywgF7TdO6x
 j1YxVirEzN/GsKt6HNB1ga8haDOM86sbb8eesxaQHwIHMH+hgU1Q4P0zQLY2Cdr6KNQh
 6pp81ZCfCd8vGSDoDbw5+3m0ZUHRJ7qLuaszYlQSletgqBWF9kwyQl01UbOcAVXabUQi
 rupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4CyTVX1Za3ysPu3lAPFBL5C1SY//4HQAbWbHB7M5KLc=;
 b=p1iB1JWhsaaG71yCrvsoqmaQKZafhFJhDjUeR0NF6JmmMLBUht2+qxQ+KBT+igf/OP
 Nb+Qd4TnQL+7g6pOKw2l/TSlZgxZ4LCf0rBCRcfUuliOjCjz5Z1SoWh7R3LA+QxkMXeF
 P41Bw8jcef+MM0p1z86fbElbsJ1jLEl7BIJ8S3T86tyvCdIFOnbauvqfCifXPzF0Xt15
 9mmk+eXGO7M2iYozjHRuYjQVodTHEgiIVNzqvxWPKKQHyiD8OXf7b1+Rx0y7S66Jelj8
 KAzPCcawS5ybyXvXsl9h8bP5Df5utZVGYadQkd5bQ4YRHkkIXXtK9JHHTOEWJbZXEDe0
 RIHw==
X-Gm-Message-State: AOAM532k+vEunkUNItpT/DZx8XlFEUIFD8+xPbFAxGDRERzhJwy0PE8+
 WxNxH2H9IYctSiVbx39ykEnhNZmE6Zb2jVDftuJTAz4v
X-Google-Smtp-Source: ABdhPJzly7NN0TgdGyaO0va2IfXp4eKBtK8mB1yWdvi3NDNLIjw1mhOTcCO9UO+QPJ6ow1trB34ztQitEI0lsyH0vFE=
X-Received: by 2002:aa7:c7d9:: with SMTP id o25mr4995616eds.318.1602676636795; 
 Wed, 14 Oct 2020 04:57:16 -0700 (PDT)
MIME-Version: 1.0
References: <192EFF47C4A40043AB2651B150E5F75A65514F@UM-EXMBX01.comm.ad.roke.co.uk>
 <CAFOi1A6EOJknyocd3EgRES-Z-cNTd25OaJW77SK=7i+7j7C3Nw@mail.gmail.com>
 <192EFF47C4A40043AB2651B150E5F75A655702@UM-EXMBX01.comm.ad.roke.co.uk>
In-Reply-To: <192EFF47C4A40043AB2651B150E5F75A655702@UM-EXMBX01.comm.ad.roke.co.uk>
Date: Wed, 14 Oct 2020 13:56:55 +0200
Message-ID: <CAFOi1A4qwAhaTys9AxNSV=fbgYw-WjP3EpcOLe5xGeTjtBMOdA@mail.gmail.com>
To: "Turner, Ben" <ben.turner@roke.co.uk>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Ettus E320 & PetaLinux
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Content-Type: multipart/mixed; boundary="===============1405778524091843149=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1405778524091843149==
Content-Type: multipart/alternative; boundary="000000000000a05d0605b1a03b5c"

--000000000000a05d0605b1a03b5c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ben,

u-boot and kernel builds are part of the filesystem build. You'll want to
build upon our version of the kernel anyway (i.e. include our patches). The
fsbl is exported from Vivado, if you want to change that it's a bit more
effort. I suggest getting familiar with the OE build first. Phil's links
will help.

Cheers,
M

On Tue, 13 Oct 2020, 09:35 Turner, Ben via USRP-users, <
usrp-users@lists.ettus.com> wrote:

> Martin,
>
> Thank you for your reply.
>
> Unfortunately simply modifying the filesystem is not enough - I need to b=
e
> able to customise u-boot and the kernel. As it is a Xilinx based system I
> was under the impression that PetaLinux was the sensible approach and I
> seem to be most of the way there, with the exception being this FSBL erro=
r
> and the generated u-boot not outputting to the serial terminal.
>
> By saying you are unable to help with PetaLinux issues, are you implying
> you are able to help with another mechanism for generating the FSBL, u-bo=
ot
> and kernel? Or are you stating that you flat out refuse to help with issu=
es
> related to generating these binaries?
>
> Regards,
>
> Ben
>
>
>
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> *On Behalf Of *Ma=
rtin
> Braun via USRP-users
> *Sent:* 12 October 2020 09:59
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Ettus E320 & PetaLinux
>
>
>
> Ben,
>
>
>
> we can't provide you with PetaLinux support, but you can rebuild our
> OE-Based filesystems. For novice OpenEmbedded users, we provide a Docker
> image (here's a link from the E320 manual:
> https://github.com/EttusResearch/ettus-docker/blob/master/oe-build/README=
.md),
> and if you're more of an expert, you can go straight to our manifests (
> https://github.com/EttusResearch/oe-manifests) which contain references
> to all the layers used to build our filesystems.
>
>
>
> A bunch of USRP users build custom filesystems (with their own software
> etc.) and use this workflow.
>
>
>
> Cheers,
>
> M
>
>
>
>
>
>
>
> Follow Us: LinkedIn <http://www.linkedin.com/company/roke-manor-research>
> | Twitter <https://twitter.com/rokemanor> | Facebook
> <https://www.facebook.com/rokemanor>
>
> Roke Manor Research Limited, Romsey, Hampshire, SO51 0ZN, United Kingdom.
> Part of the Chemring Group. Registered in England & Wales. Registered No:
> 00267550. The information contained in this e-mail and any attachments is
> proprietary to Roke Manor Research Limited and must not be passed to any
> third party without permission. This communication is for information onl=
y
> and shall not create or change any contractual relationship.
> www.roke.co.uk
> <http://www.roke.co.uk/?utm_source=3DRoke&utm_medium=3DEmail&utm_content=
=3DCompany%20Signature&utm_campaign=3DRoke>
> ------------------------------
>
> On Mon, Oct 12, 2020 at 10:43 AM Turner, Ben via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> I am attempting to build PetaLinux targeting the E320. As there is no BSP
> (that I can find) for the E320, I have attempted to generate a hardware
> description file from the Vivado project that can be created from the Ett=
us
> FPGA github repository <https://github.com/EttusResearch/fpga>.
>
>
>
> I successfully created the Vivado project by running make E320_1G GUI=3D1=
,
> ran synthesis and implementation and then exported the .hdf. I then
> configured the PetaLinux project:
>
>
>
> petalinux-config =E2=80=93get-hw-description=3D<path_to_.hdf>
>
>
>
> And attempted to build it:
>
>
>
> petalinux-build
>
>
>
> It is during this build stage that I get the following error:
>
>
>
> NOTE: Executing RunQueue Tasks
>
> ERROR: fsbl-2018.3+gitAUTOINC+56f3da2afb-r0 do_configure: Function failed=
:
> do_configure (log file is located at
> /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xili=
nx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/temp/log.do_configure=
.18082)
>
> ERROR: Logfile of failure stored in:
> /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xili=
nx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/temp/log.do_configure=
.18082
>
> Log data follows:
>
> | DEBUG: Executing shell function do_configure
>
> | MISC_ARG is  -yamlconf
> /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xili=
nx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/fsbl.yaml
>
> | APP_ARG is  -app "Zynq FSBL"
>
> | Using xsct from:
> /opt/Xilinx/PetaLinux/2018.3/tools/xsct/SDK/2018.3/bin/xsct
>
> | cmd is: xsct -sdx -nodisp
> /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xili=
nx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/app.tcl
> -ws
> /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xili=
nx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/build
> -pname fsbl -rp
> /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xili=
nx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/git
> -processor ps7_cortexa9_0 -hdf
> /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/deploy/images/plnx-z=
ynq7/Xilinx-plnx-zynq7.hdf
> -arch 32  -app "Zynq FSBL"  -yamlconf
> /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xili=
nx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/fsbl.yaml
>
> | INFO: [Hsi 55-1698] elapsed time for repository loading 0 seconds
>
> | Opening the hardware design, this may take few seconds.
>
> | expected integer but got ""
>
> | ERROR: [Hsi 55-1545] Problem running tcl command
> ::sw_scugic_v3_10::generate : expected integer but got ""
>
> |     while executing
>
> | "format "#define XPAR_FABRIC_%s_%s_INTR %d$uSuffix"  [string toupper
> $ip_name] [string toupper $port_name] $port_intr_id"
>
> |     ("foreach" body line 86)
>
> |     invoked from within
>
> | "foreach periph $periphs {
>
> |
>
> |         # get the gic mode information
>
> |         set scugic_mode [common::get_property CONFIG.C_IRQ_F2P_MODE
> $periph]
>
> |
>
> |       ..."
>
> |     (procedure "xdefine_gic_params" line 30)
>
> |     invoked from within
>
> | "xdefine_gic_params $drv_handle"
>
> |     (procedure "::sw_scugic_v3_10::generate" line 10)
>
> |     invoked from within
>
> | "::sw_scugic_v3_10::generate ps7_scugic_0"
>
> | ERROR: [Hsi 55-1442] Error(s) while running TCL procedure generate()
>
> | Failed to generate the platform.
>
> | Reason: Failed to generate the bsp sources for domain.fsbl_domain
>
> |     while executing
>
> | "builtin_platform -generate quick"
>
> |     (procedure "platform" line 221)
>
> |     invoked from within
>
> | "platform generate -quick"
>
> |     invoked from within
>
> | "if { $params(ws) ne "" } {
>
> |              #Local Work Space available
>
> |              if { $params(pname) ne "" } {
>
> |                              # hwpname/bspname is empty then default it
> to pname+_hwproj/b..."
>
> |     (file
> "/home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xil=
inx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/app.tcl"
> line 139)
>
> | WARNING:
> /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xili=
nx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/temp/run.do_configure=
.18082:1
> exit 1 from 'xsct -sdx -nodisp
> /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xili=
nx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/app.tcl
> -ws
> /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xili=
nx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/build
> -pname fsbl -rp
> /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xili=
nx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/git
> -processor ps7_cortexa9_0 -hdf
> /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/deploy/images/plnx-z=
ynq7/Xilinx-plnx-zynq7.hdf
> -arch 32 -app "Zynq FSBL" -yamlconf
> /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xili=
nx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/fsbl.yaml'
>
> | ERROR: Function failed: do_configure (log file is located at
> /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xili=
nx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/temp/log.do_configure=
.18082)
>
> ERROR: Task
> (/opt/Xilinx/PetaLinux/2018.3/components/yocto/source/arm/layers/meta-xil=
inx-tools/recipes-bsp/fsbl/fsbl_git.bb:do_configure)
> failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 2999 tasks of which 2234 didn't need to be
> rerun and 1 failed.
>
>
>
> Summary: 1 task failed:
>
>
> /opt/Xilinx/PetaLinux/2018.3/components/yocto/source/arm/layers/meta-xili=
nx-tools/recipes-bsp/fsbl/fsbl_git.bb:
> do_configure
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> ERROR: Failed to build project
>
>
>
> The build fails when attempting to configure the first stage bootloader.
>
>
>
> I have also attempted to create an FSBL directly through the SDK however
> that gives a very similar error:
>
>
>
> 9:43:04 INFO  : Registering command handlers for SDK TCF services
>
> 09:43:05 INFO  : Launching XSCT server: xsct -n -interactive
> /home/devel/Projects/e320/fsbl-2018.3/temp_xsdb_launch_script.tcl
>
> 09:43:10 INFO  : XSCT server has started successfully.
>
> 09:43:10 INFO  : Successfully done setting XSCT server connection channel
>
> 09:43:11 INFO  : Successfully done setting SDK workspace
>
> 09:44:54 INFO  : Project 'fsbl' created. You can now create BSPs and
> application projects targeting this hardware platform.
>
> 09:45:21 ERROR : (XSDB Server)ERROR: [Hsi 55-1545] Problem running tcl
> command ::sw_scugic_v3_10::generate : expected integer but got ""
>
>     while executing
>
> "format "#define XPAR_FABRIC_%s_%s_INTR %d$uSuffix"  [string toupper
> $ip_name] [string toupper $port_name] $port_intr_id"
>
>     ("foreach" body line 86)
>
>     invoked from within
>
> "foreach periph $periphs {
>
>
>
>         # get the gic mode information
>
>         set scugic_mode [common::get_property CONFIG.C_IRQ_F2P_MODE
> $periph]
>
>
>
>       ..."
>
>     (procedure "xdefine_gic_params" line 30)
>
>     invoked from within
>
> "xdefine_gic_params $drv_handle"
>
>     (procedure "::sw_scugic_v3_10::generate" line 10)
>
>     invoked from within
>
> "::sw_scugic_v3_10::generate ps7_scugic_0"
>
>
>
> 09:45:21 ERROR : (XSDB Server)ERROR: [Hsi 55-1442] Error(s) while running
> TCL procedure generate()
>
>
>
> 09:45:21 ERROR : (XSDB Server)ERROR: [Hsi 55-1450] Error: running
> generate_bsp.
>
>
>
> 09:45:21 ERROR : Error generating bsp sources: Failed in generating sourc=
es
>
>
>
> I have not changed anything in the default vivado project that is
> generated.
>
>
>
> I have circumvented building the FSBL for the time being by disabling it
> in the petalinux-config top level menu, however I would ideally like to b=
e
> able to build it!
>
>
>
> I am very new to FPGA development and this is my first foray into using
> the Xilinx tools and PetaLinux, so any help would be appreciated.
>
>
>
> Thanks,
>
>
>
> Ben
>
> Follow Us: LinkedIn <http://www.linkedin.com/company/roke-manor-research>
> | Twitter <https://twitter.com/rokemanor> | Facebook
> <https://www.facebook.com/rokemanor>
>
> Roke Manor Research Limited, Romsey, Hampshire, SO51 0ZN, United Kingdom.
> Part of the Chemring Group. Registered in England & Wales. Registered No:
> 00267550. The information contained in this e-mail and any attachments is
> proprietary to Roke Manor Research Limited and must not be passed to any
> third party without permission. This communication is for information onl=
y
> and shall not create or change any contractual relationship.
> www.roke.co.uk
> <http://www.roke.co.uk/?utm_source=3DRoke&utm_medium=3DEmail&utm_content=
=3DCompany%20Signature&utm_campaign=3DRoke>
> ------------------------------
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a05d0605b1a03b5c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ben,=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto">u=
-boot and kernel builds are part of the filesystem build. You&#39;ll want t=
o build upon our version of the kernel anyway (i.e. include our patches). T=
he fsbl is exported from Vivado, if you want to change that it&#39;s a bit =
more effort. I suggest getting familiar with the OE build first. Phil&#39;s=
 links will help.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Cheers=
,</div><div dir=3D"auto">M</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Tue, 13 Oct 2020, 09:35 Turner, Ben via =
USRP-users, &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">



<div lang=3D"EN-GB" link=3D"blue" vlink=3D"purple"><div class=3D"m_24040501=
02827018304WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;color:black;background:white">Martin,</span><span st=
yle=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;color:bl=
ack"><br>
<br>
<span style=3D"background:white">Thank you for your reply.</span><br>
<br>
<span style=3D"background:white">Unfortunately simply modifying the filesys=
tem is not enough - I need to be able to customise u-boot and the kernel. A=
s it is a Xilinx based system I was under the impression that PetaLinux was=
 the sensible approach and I seem
 to be most of the way there, with the exception being this FSBL error and =
the generated u-boot not outputting to the serial terminal.</span><br>
<br>
<span style=3D"background:white">By saying you are unable to help with Peta=
Linux issues, are you implying you are able to help with another mechanism =
for generating the FSBL, u-boot and kernel? Or are you stating that you fla=
t out refuse to help with issues related
 to generating these binaries?</span><br>
<br>
<span style=3D"background:white">Regards,</span><br>
<br>
<span style=3D"background:white">Ben</span></span><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-=
US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> =
USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" target=
=3D"_blank" rel=3D"noreferrer">usrp-users-bounces@lists.ettus.com</a>&gt;
<b>On Behalf Of </b>Martin Braun via USRP-users<br>
<b>Sent:</b> 12 October 2020 09:59<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Ettus E320 &amp; PetaLinux<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Ben,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">we can&#39;t provide you with PetaLinux support, but=
 you can rebuild our OE-Based filesystems. For novice OpenEmbedded users, w=
e provide a Docker image (here&#39;s a link from the E320 manual:
<a href=3D"https://github.com/EttusResearch/ettus-docker/blob/master/oe-bui=
ld/README.md" target=3D"_blank" rel=3D"noreferrer">
https://github.com/EttusResearch/ettus-docker/blob/master/oe-build/README.m=
d</a>), and if you&#39;re more of an expert, you can go straight to our man=
ifests (<a href=3D"https://github.com/EttusResearch/oe-manifests" target=3D=
"_blank" rel=3D"noreferrer">https://github.com/EttusResearch/oe-manifests</=
a>)
 which contain references to all the layers used to build our filesystems.<=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">A bunch of USRP users build custom filesystems (with=
 their own software etc.) and use this workflow.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Cheers,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">M<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>

<p style=3D"margin-top:2em;font-family:arial,sans-serif;font-size:9pt">Foll=
ow Us: <a href=3D"http://www.linkedin.com/company/roke-manor-research" titl=
e=3D"LinkedIn" target=3D"_blank" rel=3D"noreferrer">LinkedIn</a> | <a href=
=3D"https://twitter.com/rokemanor" title=3D"Twitter" target=3D"_blank" rel=
=3D"noreferrer">Twitter</a> | <a href=3D"https://www.facebook.com/rokemanor=
" title=3D"Facebook" target=3D"_blank" rel=3D"noreferrer">Facebook</a></p>

<p style=3D"font-family:arial,sans-serif;font-size:9pt;color:#808080">Roke =
Manor Research Limited, Romsey, Hampshire, SO51 0ZN, United Kingdom. Part o=
f the Chemring Group. Registered in England &amp; Wales. Registered No: 002=
67550. The information contained in this e-mail and any attachments is prop=
rietary to Roke Manor Research Limited and must not be passed to any third =
party without permission. This communication is for information only and sh=
all not create or change any contractual relationship.<br><a href=3D"http:/=
/www.roke.co.uk/?utm_source=3DRoke&amp;utm_medium=3DEmail&amp;utm_content=
=3DCompany%20Signature&amp;utm_campaign=3DRoke" title=3D"Website" target=3D=
"_blank" rel=3D"noreferrer">www.roke.co.uk</a></p>

<hr style=3D"font-family:arial,sans-serif;font-size:9pt">



<div>
<div>
<p class=3D"MsoNormal">On Mon, Oct 12, 2020 at 10:43 AM Turner, Ben via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
 rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u>=
</p>
</div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal">I am attempting to build PetaLinux targeting the E32=
0. As there is no BSP (that I can find) for the E320, I have attempted to g=
enerate a hardware description file from the Vivado
 project that can be created from the <a href=3D"https://github.com/EttusRe=
search/fpga" target=3D"_blank" rel=3D"noreferrer">
Ettus FPGA github repository</a>.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">I
</span>successfully created the Vivado project<span style=3D"color:#1f497d"=
> </span>
by running make E320_1G GUI=3D1, ran synthesis and implementation and then =
exported the .hdf. I then configured the PetaLinux project:<u></u><u></u></=
p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">petalinux-config =E2=80=93get-hw-description=3D&lt;p=
ath_to_.hdf&gt;<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">And attempted to build it:<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">petalinux-build<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">It is during this build stage that I get the followi=
ng error:<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">NOTE: Executing RunQueue Tasks<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: fsbl-2018.3+gitAUTOINC+56f3da2afb-r0 do_confi=
gure: Function failed: do_configure (log file is located at /home/devel/Pro=
jects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/=
fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/temp/log.do_configure.18082)<u></u><u>=
</u></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /home/devel/Pro=
jects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/=
fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/temp/log.do_configure.18082<u></u><u><=
/u></p>
<p class=3D"MsoNormal">Log data follows:<u></u><u></u></p>
<p class=3D"MsoNormal">| DEBUG: Executing shell function do_configure<u></u=
><u></u></p>
<p class=3D"MsoNormal">| MISC_ARG is=C2=A0 -yamlconf /home/devel/Projects/e=
320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/20=
18.3+gitAUTOINC+56f3da2afb-r0/fsbl.yaml<u></u><u></u></p>
<p class=3D"MsoNormal">| APP_ARG is=C2=A0 -app &quot;Zynq FSBL&quot;<u></u>=
<u></u></p>
<p class=3D"MsoNormal">| Using xsct from: /opt/Xilinx/PetaLinux/2018.3/tool=
s/xsct/SDK/2018.3/bin/xsct<u></u><u></u></p>
<p class=3D"MsoNormal">| cmd is: xsct -sdx -nodisp /home/devel/Projects/e32=
0/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018=
.3+gitAUTOINC+56f3da2afb-r0/app.tcl -ws /home/devel/Projects/e320/plnx-2018=
.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOI=
NC+56f3da2afb-r0/build
 -pname fsbl -rp /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/=
plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/git -p=
rocessor ps7_cortexa9_0 -hdf /home/devel/Projects/e320/plnx-2018.3-e320/bui=
ld/tmp/deploy/images/plnx-zynq7/Xilinx-plnx-zynq7.hdf
 -arch 32=C2=A0 -app &quot;Zynq FSBL&quot;=C2=A0 -yamlconf /home/devel/Proj=
ects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/f=
sbl/2018.3+gitAUTOINC+56f3da2afb-r0/fsbl.yaml<u></u><u></u></p>
<p class=3D"MsoNormal">| INFO: [Hsi 55-1698] elapsed time for repository lo=
ading 0 seconds<u></u><u></u></p>
<p class=3D"MsoNormal">| Opening the hardware design, this may take few sec=
onds.<u></u><u></u></p>
<p class=3D"MsoNormal">| expected integer but got &quot;&quot;<u></u><u></u=
></p>
<p class=3D"MsoNormal">| ERROR: [Hsi 55-1545] Problem running tcl command :=
:sw_scugic_v3_10::generate : expected integer but got &quot;&quot;<u></u><u=
></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0 while executing<u></u><u><=
/u></p>
<p class=3D"MsoNormal">| &quot;format &quot;#define XPAR_FABRIC_%s_%s_INTR =
%d$uSuffix&quot;=C2=A0 [string toupper $ip_name] [string toupper $port_name=
] $port_intr_id&quot;<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0 (&quot;foreach&quot; body =
line 86)<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0 invoked from within<u></u>=
<u></u></p>
<p class=3D"MsoNormal">| &quot;foreach periph $periphs {<u></u><u></u></p>
<p class=3D"MsoNormal">|
<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # =
get the gic mode information<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 se=
t scugic_mode [common::get_property CONFIG.C_IRQ_F2P_MODE $periph]<u></u><u=
></u></p>
<p class=3D"MsoNormal">|
<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ...&quot;<u></=
u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0 (procedure &quot;xdefine_g=
ic_params&quot; line 30)<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0 invoked from within<u></u>=
<u></u></p>
<p class=3D"MsoNormal">| &quot;xdefine_gic_params $drv_handle&quot;<u></u><=
u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0 (procedure &quot;::sw_scug=
ic_v3_10::generate&quot; line 10)<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0 invoked from within<u></u>=
<u></u></p>
<p class=3D"MsoNormal">| &quot;::sw_scugic_v3_10::generate ps7_scugic_0&quo=
t;<u></u><u></u></p>
<p class=3D"MsoNormal">| ERROR: [Hsi 55-1442] Error(s) while running TCL pr=
ocedure generate()<u></u><u></u></p>
<p class=3D"MsoNormal">| Failed to generate the platform.<u></u><u></u></p>
<p class=3D"MsoNormal">| Reason: Failed to generate the bsp sources for dom=
ain.fsbl_domain<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0 while executing<u></u><u><=
/u></p>
<p class=3D"MsoNormal">| &quot;builtin_platform -generate quick&quot;<u></u=
><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0 (procedure &quot;platform&=
quot; line 221)<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0 invoked from within<u></u>=
<u></u></p>
<p class=3D"MsoNormal">| &quot;platform generate -quick&quot;<u></u><u></u>=
</p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0 invoked from within<u></u>=
<u></u></p>
<p class=3D"MsoNormal">| &quot;if { $params(ws) ne &quot;&quot; } {<u></u><=
u></u></p>
<p class=3D"MsoNormal">| =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 #Local Work Space available<u></u><u></u></p>
<p class=3D"MsoNormal">| =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 if { $params(pname) ne &quot;&quot; } {<u></u><u><=
/u></p>
<p class=3D"MsoNormal">| =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # hwpname/bspname is empty th=
en default it to pname+_hwproj/b...&quot;<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0 (file &quot;/home/devel/Pr=
ojects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi=
/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/app.tcl&quot; line 139)<u></u><u></u>=
</p>
<p class=3D"MsoNormal">| WARNING: /home/devel/Projects/e320/plnx-2018.3-e32=
0/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f=
3da2afb-r0/temp/run.do_configure.18082:1 exit 1 from
 &#39;xsct -sdx -nodisp /home/devel/Projects/e320/plnx-2018.3-e320/build/tm=
p/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0=
/app.tcl -ws /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx=
_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/build
 -pname fsbl -rp /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/=
plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/git -p=
rocessor ps7_cortexa9_0 -hdf /home/devel/Projects/e320/plnx-2018.3-e320/bui=
ld/tmp/deploy/images/plnx-zynq7/Xilinx-plnx-zynq7.hdf
 -arch 32 -app &quot;Zynq FSBL&quot; -yamlconf /home/devel/Projects/e320/pl=
nx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+g=
itAUTOINC+56f3da2afb-r0/fsbl.yaml&#39;<u></u><u></u></p>
<p class=3D"MsoNormal">| ERROR: Function failed: do_configure (log file is =
located at /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_z=
ynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/temp/log.do_=
configure.18082)<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: Task (/opt/Xilinx/PetaLinux/2018.3/components=
/yocto/source/arm/layers/meta-xilinx-tools/recipes-bsp/fsbl/fsbl_git.bb:do_=
configure) failed with exit code &#39;1&#39;<u></u><u></u></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 2999 tasks of which 2=
234 didn&#39;t need to be rerun and 1 failed.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Summary: 1 task failed:<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 /opt/Xilinx/PetaLinux/2018.3/components/yocto=
/source/arm/layers/meta-xilinx-tools/recipes-bsp/fsbl/fsbl_git.bb:do_config=
ure<u></u><u></u></p>
<p class=3D"MsoNormal">Summary: There was 1 ERROR message shown, returning =
a non-zero exit code.<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: Failed to build project<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">The build fails when attempting to configure the fir=
st stage bootloader.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I have also attempted to create an FSBL directly thr=
ough the SDK however that gives a very similar error:<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">9:43:04 INFO=C2=A0 : Registering command handlers fo=
r SDK TCF services<u></u><u></u></p>
<p class=3D"MsoNormal">09:43:05 INFO =C2=A0: Launching XSCT server: xsct -n=
 -interactive /home/devel/Projects/e320/fsbl-2018.3/temp_xsdb_launch_script=
.tcl<u></u><u></u></p>
<p class=3D"MsoNormal">09:43:10 INFO=C2=A0 : XSCT server has started succes=
sfully.<u></u><u></u></p>
<p class=3D"MsoNormal">09:43:10 INFO=C2=A0 : Successfully done setting XSCT=
 server connection channel=C2=A0
<u></u><u></u></p>
<p class=3D"MsoNormal">09:43:11 INFO=C2=A0 : Successfully done setting SDK =
workspace=C2=A0
<u></u><u></u></p>
<p class=3D"MsoNormal">09:44:54 INFO=C2=A0 : Project &#39;fsbl&#39; created=
. You can now create BSPs and application projects targeting this hardware =
platform.<u></u><u></u></p>
<p class=3D"MsoNormal">09:45:21 ERROR : (XSDB Server)ERROR: [Hsi 55-1545] P=
roblem running tcl command ::sw_scugic_v3_10::generate : expected integer b=
ut got &quot;&quot;<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 while executing<u></u><u></u></p>
<p class=3D"MsoNormal">&quot;format &quot;#define XPAR_FABRIC_%s_%s_INTR %d=
$uSuffix&quot;=C2=A0 [string toupper $ip_name] [string toupper $port_name] =
$port_intr_id&quot;<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 (&quot;foreach&quot; body line 86=
)<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 invoked from within<u></u><u></u>=
</p>
<p class=3D"MsoNormal">&quot;foreach periph $periphs {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # get the=
 gic mode information<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 set scugi=
c_mode [common::get_property CONFIG.C_IRQ_F2P_MODE $periph]<u></u><u></u></=
p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ...&quot;<u></u><u></=
u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 (procedure &quot;xdefine_gic_para=
ms&quot; line 30)<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 invoked from within<u></u><u></u>=
</p>
<p class=3D"MsoNormal">&quot;xdefine_gic_params $drv_handle&quot;<u></u><u>=
</u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 (procedure &quot;::sw_scugic_v3_1=
0::generate&quot; line 10)<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 invoked from within<u></u><u></u>=
</p>
<p class=3D"MsoNormal">&quot;::sw_scugic_v3_10::generate ps7_scugic_0&quot;=
<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">09:45:21 ERROR : (XSDB Server)ERROR: [Hsi 55-1442] E=
rror(s) while running TCL procedure generate()<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">09:45:21 ERROR : (XSDB Server)ERROR: [Hsi 55-1450] E=
rror: running generate_bsp.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">09:45:21 ERROR : Error generating bsp sources: Faile=
d in generating sources<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I have not changed anything in the default vivado pr=
oject that is generated.<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">=C2=A0</span><u></u><u=
></u></p>
<p class=3D"MsoNormal">I have circumvented building the FSBL for the time b=
eing by disabling it in the petalinux-config top level menu, however I woul=
d ideally like to be able to build it!<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I am very new to FPGA development and this is my fir=
st foray into using the Xilinx tools and PetaLinux, so any help would be ap=
preciated.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Ben<u></u><u></u></p>
</div>
<p style=3D"margin-top:24.0pt"><span style=3D"font-size:9.0pt;font-family:&=
quot;Arial&quot;,sans-serif">Follow Us:
<a href=3D"http://www.linkedin.com/company/roke-manor-research" title=3D"Li=
nkedIn" target=3D"_blank" rel=3D"noreferrer">
LinkedIn</a> | <a href=3D"https://twitter.com/rokemanor" title=3D"Twitter" =
target=3D"_blank" rel=3D"noreferrer">
Twitter</a> | <a href=3D"https://www.facebook.com/rokemanor" title=3D"Faceb=
ook" target=3D"_blank" rel=3D"noreferrer">
Facebook</a><u></u><u></u></span></p>
<p><span style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;=
color:gray">Roke Manor Research Limited, Romsey, Hampshire, SO51 0ZN, Unite=
d Kingdom. Part of the Chemring Group. Registered in England &amp; Wales. R=
egistered No: 00267550. The information contained
 in this e-mail and any attachments is proprietary to Roke Manor Research L=
imited and must not be passed to any third party without permission. This c=
ommunication is for information only and shall not create or change any con=
tractual relationship.<br>
<a href=3D"http://www.roke.co.uk/?utm_source=3DRoke&amp;utm_medium=3DEmail&=
amp;utm_content=3DCompany%20Signature&amp;utm_campaign=3DRoke" title=3D"Web=
site" target=3D"_blank" rel=3D"noreferrer">www.roke.co.uk</a><u></u><u></u>=
</span></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"3" width=3D"100%" align=3D"center">
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank" rel=3D"noreferrer">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
</div>




</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a05d0605b1a03b5c--


--===============1405778524091843149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1405778524091843149==--

