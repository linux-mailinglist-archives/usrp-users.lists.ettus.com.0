Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A18B528B0FF
	for <lists+usrp-users@lfdr.de>; Mon, 12 Oct 2020 10:59:39 +0200 (CEST)
Received: from [::1] (port=60734 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kRtgA-000136-3w; Mon, 12 Oct 2020 04:59:38 -0400
Received: from mail-ej1-f44.google.com ([209.85.218.44]:38782)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kRtg5-0000tz-VE
 for usrp-users@lists.ettus.com; Mon, 12 Oct 2020 04:59:34 -0400
Received: by mail-ej1-f44.google.com with SMTP id ce10so22129694ejc.5
 for <usrp-users@lists.ettus.com>; Mon, 12 Oct 2020 01:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=lGWIyN0ZaMsdBlppPWAuCWzK3J0vVyw2hQM5U2SVU/E=;
 b=1fdUDD5cqYgC1Bl1YHqhypmkDakUpilC15lCMQ6k6MMBW2zyDaLNBnLZn7NBKzDI1y
 fxUM2FdqxU4aNKaBKJGJU+A6tDsJNfW0qzyWhJF+dwRqruTQtnkhNl/7nGhq50HNz8gC
 Fb8+lRNeSmAiErm3vM1fbw9XZjT8BeAbkvPEXyMwXCQvm3inLt4w7wJzB6tEg8AhGj/U
 UbnH/Kw3QpeeA3jcdggzMOc9jaGfa2lTVfRwEZGN2Rbi6x1M6E436zxaOaCO8T6wUezT
 JZGMXTX6Xlz1hcqd4/76Ig9XHAkcCjc0s6WHTKKIy19+ovArD1q8FuxemqvAFiOmzJSj
 9+6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=lGWIyN0ZaMsdBlppPWAuCWzK3J0vVyw2hQM5U2SVU/E=;
 b=qN5OI6zSHpMcaPVm0ZL8LxT9ZrzXi7k1zRyPN9WVvQj65Djuin3bQWzyWgLgAlfOlm
 HZK72M3SWUEs95zukb2GRrOFAeFaMRJADQ9jtqUntVSj6J3dQf/EyFhelt5OudNJZyQl
 CppZshrVw0YAqe0aRTHWOV3j+6E5qxJicmqqbwmVP4WQl1+nFzEBX8HfNHILaydaCMu6
 aIA1LYj+L7gMN4X89d1irjGjEdxZawzA8Df3plD0LhprGuywZ+mC/0lLGAzqps57Ll9F
 E66LCaJuQGo0cFKeSuVhZwjGSc9rFzdODQ5VXLvJRPhByf0Gk8fRcA+SuxLWAncqvxjp
 nkmQ==
X-Gm-Message-State: AOAM530B5DS8KoDvixLrp/eZmbTHjlkEtig2GDI/N2MKLcnWKJ22eStU
 d/bxkvTAHDl5a41m1gIb5nc4QDHRi8FExLXPEiZlbT2dkTYxry/6
X-Google-Smtp-Source: ABdhPJxNQyu7YINsvyPUBI2YuNQLsRkTlhzHHJY+73kMGQD6g3PnkxDECUk/PXz03CBUbp3Zk4J07EcBkZvoOzYk0F8=
X-Received: by 2002:a17:906:af10:: with SMTP id
 lx16mr27328102ejb.400.1602493132487; 
 Mon, 12 Oct 2020 01:58:52 -0700 (PDT)
MIME-Version: 1.0
References: <192EFF47C4A40043AB2651B150E5F75A65514F@UM-EXMBX01.comm.ad.roke.co.uk>
In-Reply-To: <192EFF47C4A40043AB2651B150E5F75A65514F@UM-EXMBX01.comm.ad.roke.co.uk>
Date: Mon, 12 Oct 2020 10:58:41 +0200
Message-ID: <CAFOi1A6EOJknyocd3EgRES-Z-cNTd25OaJW77SK=7i+7j7C3Nw@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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
Content-Type: multipart/mixed; boundary="===============1022504042444346748=="
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

--===============1022504042444346748==
Content-Type: multipart/alternative; boundary="000000000000ead4ab05b17581cf"

--000000000000ead4ab05b17581cf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ben,

we can't provide you with PetaLinux support, but you can rebuild our
OE-Based filesystems. For novice OpenEmbedded users, we provide a Docker
image (here's a link from the E320 manual:
https://github.com/EttusResearch/ettus-docker/blob/master/oe-build/README.m=
d),
and if you're more of an expert, you can go straight to our manifests (
https://github.com/EttusResearch/oe-manifests) which contain references to
all the layers used to build our filesystems.

A bunch of USRP users build custom filesystems (with their own software
etc.) and use this workflow.

Cheers,
M



On Mon, Oct 12, 2020 at 10:43 AM Turner, Ben via USRP-users <
usrp-users@lists.ettus.com> wrote:

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
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ead4ab05b17581cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ben,</div><div><br></div><div>we can&#39;t provide yo=
u with PetaLinux support, but you can rebuild our OE-Based filesystems. For=
 novice OpenEmbedded users, we provide a Docker image (here&#39;s a link fr=
om the E320 manual: <a href=3D"https://github.com/EttusResearch/ettus-docke=
r/blob/master/oe-build/README.md">https://github.com/EttusResearch/ettus-do=
cker/blob/master/oe-build/README.md</a>), and if you&#39;re more of an expe=
rt, you can go straight to our manifests (<a href=3D"https://github.com/Ett=
usResearch/oe-manifests">https://github.com/EttusResearch/oe-manifests</a>)=
 which contain references to all the layers used to build our filesystems.<=
/div><div><br></div><div>A bunch of USRP users build custom filesystems (wi=
th their own software etc.) and use this workflow.<br></div><div><br></div>=
<div>Cheers,</div><div>M<br></div><div><br></div><div><br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct=
 12, 2020 at 10:43 AM Turner, Ben via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">



<div lang=3D"EN-GB"><div class=3D"gmail-m_-9166247943712573179WordSection1"=
>
<p class=3D"MsoNormal">I am attempting to build PetaLinux targeting the E32=
0. As there is no BSP (that I can find) for the E320, I have attempted to g=
enerate a hardware description file from the Vivado project that can be cre=
ated from the
<a href=3D"https://github.com/EttusResearch/fpga" target=3D"_blank">Ettus F=
PGA github repository</a>.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">I </span>succes=
sfully created the Vivado project<span style=3D"color:rgb(31,73,125)">
</span>by running make E320_1G GUI=3D1, ran synthesis and implementation an=
d then exported the .hdf. I then configured the PetaLinux project:<u></u><u=
></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">petalinux-config =E2=80=93get-hw-description=3D&lt;p=
ath_to_.hdf&gt;<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">And attempted to build it:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">petalinux-build<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">It is during this build stage that I get the followi=
ng error:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
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
<p class=3D"MsoNormal">| <u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # =
get the gic mode information<u></u><u></u></p>
<p class=3D"MsoNormal">|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 se=
t scugic_mode [common::get_property CONFIG.C_IRQ_F2P_MODE $periph]<u></u><u=
></u></p>
<p class=3D"MsoNormal">| <u></u><u></u></p>
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
3da2afb-r0/temp/run.do_configure.18082:1 exit 1 from &#39;xsct -sdx -nodisp=
 /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilin=
x-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/app.tcl
 -ws /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-x=
ilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/build -pname fsbl =
-rp /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xi=
linx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/git
 -processor ps7_cortexa9_0 -hdf /home/devel/Projects/e320/plnx-2018.3-e320/=
build/tmp/deploy/images/plnx-zynq7/Xilinx-plnx-zynq7.hdf -arch 32 -app &quo=
t;Zynq FSBL&quot; -yamlconf /home/devel/Projects/e320/plnx-2018.3-e320/buil=
d/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2af=
b-r0/fsbl.yaml&#39;<u></u><u></u></p>
<p class=3D"MsoNormal">| ERROR: Function failed: do_configure (log file is =
located at /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_z=
ynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/temp/log.do_=
configure.18082)<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: Task (/opt/Xilinx/PetaLinux/2018.3/components=
/yocto/source/arm/layers/meta-xilinx-tools/recipes-bsp/fsbl/fsbl_git.bb:do_=
configure) failed with exit code &#39;1&#39;<u></u><u></u></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 2999 tasks of which 2=
234 didn&#39;t need to be rerun and 1 failed.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Summary: 1 task failed:<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 /opt/Xilinx/PetaLinux/2018.3/components/yocto=
/source/arm/layers/meta-xilinx-tools/recipes-bsp/fsbl/fsbl_git.bb:do_config=
ure<u></u><u></u></p>
<p class=3D"MsoNormal">Summary: There was 1 ERROR message shown, returning =
a non-zero exit code.<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: Failed to build project<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The build fails when attempting to configure the fir=
st stage bootloader.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have also attempted to create an FSBL directly thr=
ough the SDK however that gives a very similar error:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
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
workspace=C2=A0 <u></u>
<u></u></p>
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
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # get the=
 gic mode information<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 set scugi=
c_mode [common::get_property CONFIG.C_IRQ_F2P_MODE $periph]<u></u><u></u></=
p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
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
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">09:45:21 ERROR : (XSDB Server)ERROR: [Hsi 55-1442] E=
rror(s) while running TCL procedure generate()<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">09:45:21 ERROR : (XSDB Server)ERROR: [Hsi 55-1450] E=
rror: running generate_bsp.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">09:45:21 ERROR : Error generating bsp sources: Faile=
d in generating sources<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have not changed anything in the default vivado pr=
oject that is generated.<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal">I have circumvented building the FSBL for the time b=
eing by disabling it in the petalinux-config top level menu, however I woul=
d ideally like to be able to build it!<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am very new to FPGA development and this is my fir=
st foray into using the Xilinx tools and PetaLinux, so any help would be ap=
preciated.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Ben<u></u><u></u></p>
</div>

<p style=3D"margin-top:2em;font-family:arial,sans-serif;font-size:9pt">Foll=
ow Us: <a href=3D"http://www.linkedin.com/company/roke-manor-research" titl=
e=3D"LinkedIn" target=3D"_blank">LinkedIn</a> | <a href=3D"https://twitter.=
com/rokemanor" title=3D"Twitter" target=3D"_blank">Twitter</a> | <a href=3D=
"https://www.facebook.com/rokemanor" title=3D"Facebook" target=3D"_blank">F=
acebook</a></p>

<p style=3D"font-family:arial,sans-serif;font-size:9pt;color:rgb(128,128,12=
8)">Roke Manor Research Limited, Romsey, Hampshire, SO51 0ZN, United Kingdo=
m. Part of the Chemring Group. Registered in England &amp; Wales. Registere=
d No: 00267550. The information contained in this e-mail and any attachment=
s is proprietary to Roke Manor Research Limited and must not be passed to a=
ny third party without permission. This communication is for information on=
ly and shall not create or change any contractual relationship.<br><a href=
=3D"http://www.roke.co.uk/?utm_source=3DRoke&amp;utm_medium=3DEmail&amp;utm=
_content=3DCompany%20Signature&amp;utm_campaign=3DRoke" title=3D"Website" t=
arget=3D"_blank">www.roke.co.uk</a></p>

<hr style=3D"font-family:arial,sans-serif;font-size:9pt">



</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ead4ab05b17581cf--


--===============1022504042444346748==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1022504042444346748==--

