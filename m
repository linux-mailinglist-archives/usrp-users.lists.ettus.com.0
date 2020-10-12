Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9D428B07D
	for <lists+usrp-users@lfdr.de>; Mon, 12 Oct 2020 10:43:19 +0200 (CEST)
Received: from [::1] (port=60620 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kRtQL-0000M0-GP; Mon, 12 Oct 2020 04:43:17 -0400
Received: from eu-smtp-delivery-167.mimecast.com ([207.82.80.167]:34813)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384
 (Exim 4.93) (envelope-from <ben.turner@roke.co.uk>)
 id 1kRtQI-0000Fm-1K
 for usrp-users@lists.ettus.com; Mon, 12 Oct 2020 04:43:14 -0400
Received: from UM-EXCAS01.comm.ad.roke.co.uk (salt-ext.roke.co.uk
 [109.207.29.2]) (Using TLS) by relay.mimecast.com with ESMTP id
 uk-mta-268-yU6GlrRpNSSF384HNqB8Iw-1; Mon, 12 Oct 2020 09:42:30 +0100
X-MC-Unique: yU6GlrRpNSSF384HNqB8Iw-1
Received: from UM-EXMBX01.comm.ad.roke.co.uk ([fe80::e026:ba6c:5515:81f7]) by
 UM-EXCAS01.comm.ad.roke.co.uk ([::1]) with mapi id 14.03.0319.002;
 Mon, 12 Oct 2020 09:42:29 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Ettus E320 & PetaLinux
Thread-Index: AdadUBJLAXpbD4KfSVKMvxfFUk4F6wDHb4bAAAFq+TA=
Date: Mon, 12 Oct 2020 08:42:29 +0000
Message-ID: <192EFF47C4A40043AB2651B150E5F75A65514F@UM-EXMBX01.comm.ad.roke.co.uk>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.193.190]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUK67A7 smtp.mailfrom=ben.turner@roke.co.uk
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: roke.co.uk
Content-Language: en-US
Subject: [USRP-users] Ettus E320 & PetaLinux
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
From: "Turner, Ben via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Turner, Ben" <ben.turner@roke.co.uk>
Content-Type: multipart/mixed; boundary="===============4641271990691591144=="
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

--===============4641271990691591144==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_192EFF47C4A40043AB2651B150E5F75A65514FUMEXMBX01commadro_"

--_000_192EFF47C4A40043AB2651B150E5F75A65514FUMEXMBX01commadro_
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am attempting to build PetaLinux targeting the E320. As there is no BSP (=
that I can find) for the E320, I have attempted to generate a hardware desc=
ription file from the Vivado project that can be created from the Ettus FPG=
A github repository<https://github.com/EttusResearch/fpga>.

I successfully created the Vivado project by running make E320_1G GUI=3D1, =
ran synthesis and implementation and then exported the .hdf. I then configu=
red the PetaLinux project:

petalinux-config -get-hw-description=3D<path_to_.hdf>

And attempted to build it:

petalinux-build

It is during this build stage that I get the following error:

NOTE: Executing RunQueue Tasks
ERROR: fsbl-2018.3+gitAUTOINC+56f3da2afb-r0 do_configure: Function failed: =
do_configure (log file is located at /home/devel/Projects/e320/plnx-2018.3-=
e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+=
56f3da2afb-r0/temp/log.do_configure.18082)
ERROR: Logfile of failure stored in: /home/devel/Projects/e320/plnx-2018.3-=
e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+=
56f3da2afb-r0/temp/log.do_configure.18082
Log data follows:
| DEBUG: Executing shell function do_configure
| MISC_ARG is  -yamlconf /home/devel/Projects/e320/plnx-2018.3-e320/build/t=
mp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r=
0/fsbl.yaml
| APP_ARG is  -app "Zynq FSBL"
| Using xsct from: /opt/Xilinx/PetaLinux/2018.3/tools/xsct/SDK/2018.3/bin/x=
sct
| cmd is: xsct -sdx -nodisp /home/devel/Projects/e320/plnx-2018.3-e320/buil=
d/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2af=
b-r0/app.tcl -ws /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/=
plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/build =
-pname fsbl -rp /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/p=
lnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/git -pr=
ocessor ps7_cortexa9_0 -hdf /home/devel/Projects/e320/plnx-2018.3-e320/buil=
d/tmp/deploy/images/plnx-zynq7/Xilinx-plnx-zynq7.hdf -arch 32  -app "Zynq F=
SBL"  -yamlconf /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/p=
lnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/fsbl.ya=
ml
| INFO: [Hsi 55-1698] elapsed time for repository loading 0 seconds
| Opening the hardware design, this may take few seconds.
| expected integer but got ""
| ERROR: [Hsi 55-1545] Problem running tcl command ::sw_scugic_v3_10::gener=
ate : expected integer but got ""
|     while executing
| "format "#define XPAR_FABRIC_%s_%s_INTR %d$uSuffix"  [string toupper $ip_=
name] [string toupper $port_name] $port_intr_id"
|     ("foreach" body line 86)
|     invoked from within
| "foreach periph $periphs {
|
|         # get the gic mode information
|         set scugic_mode [common::get_property CONFIG.C_IRQ_F2P_MODE $peri=
ph]
|
|       ..."
|     (procedure "xdefine_gic_params" line 30)
|     invoked from within
| "xdefine_gic_params $drv_handle"
|     (procedure "::sw_scugic_v3_10::generate" line 10)
|     invoked from within
| "::sw_scugic_v3_10::generate ps7_scugic_0"
| ERROR: [Hsi 55-1442] Error(s) while running TCL procedure generate()
| Failed to generate the platform.
| Reason: Failed to generate the bsp sources for domain.fsbl_domain
|     while executing
| "builtin_platform -generate quick"
|     (procedure "platform" line 221)
|     invoked from within
| "platform generate -quick"
|     invoked from within
| "if { $params(ws) ne "" } {
|              #Local Work Space available
|              if { $params(pname) ne "" } {
|                              # hwpname/bspname is empty then default it t=
o pname+_hwproj/b..."
|     (file "/home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx=
_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/app.tcl" l=
ine 139)
| WARNING: /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_z=
ynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/temp/run.do_=
configure.18082:1 exit 1 from 'xsct -sdx -nodisp /home/devel/Projects/e320/=
plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3=
+gitAUTOINC+56f3da2afb-r0/app.tcl -ws /home/devel/Projects/e320/plnx-2018.3=
-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC=
+56f3da2afb-r0/build -pname fsbl -rp /home/devel/Projects/e320/plnx-2018.3-=
e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+=
56f3da2afb-r0/git -processor ps7_cortexa9_0 -hdf /home/devel/Projects/e320/=
plnx-2018.3-e320/build/tmp/deploy/images/plnx-zynq7/Xilinx-plnx-zynq7.hdf -=
arch 32 -app "Zynq FSBL" -yamlconf /home/devel/Projects/e320/plnx-2018.3-e3=
20/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3+gitAUTOINC+56=
f3da2afb-r0/fsbl.yaml'
| ERROR: Function failed: do_configure (log file is located at /home/devel/=
Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnuea=
bi/fsbl/2018.3+gitAUTOINC+56f3da2afb-r0/temp/log.do_configure.18082)
ERROR: Task (/opt/Xilinx/PetaLinux/2018.3/components/yocto/source/arm/layer=
s/meta-xilinx-tools/recipes-bsp/fsbl/fsbl_git.bb:do_configure) failed with =
exit code '1'
NOTE: Tasks Summary: Attempted 2999 tasks of which 2234 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
  /opt/Xilinx/PetaLinux/2018.3/components/yocto/source/arm/layers/meta-xili=
nx-tools/recipes-bsp/fsbl/fsbl_git.bb:do_configure
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
ERROR: Failed to build project

The build fails when attempting to configure the first stage bootloader.

I have also attempted to create an FSBL directly through the SDK however th=
at gives a very similar error:

9:43:04 INFO  : Registering command handlers for SDK TCF services
09:43:05 INFO  : Launching XSCT server: xsct -n -interactive /home/devel/Pr=
ojects/e320/fsbl-2018.3/temp_xsdb_launch_script.tcl
09:43:10 INFO  : XSCT server has started successfully.
09:43:10 INFO  : Successfully done setting XSCT server connection channel
09:43:11 INFO  : Successfully done setting SDK workspace
09:44:54 INFO  : Project 'fsbl' created. You can now create BSPs and applic=
ation projects targeting this hardware platform.
09:45:21 ERROR : (XSDB Server)ERROR: [Hsi 55-1545] Problem running tcl comm=
and ::sw_scugic_v3_10::generate : expected integer but got ""
    while executing
"format "#define XPAR_FABRIC_%s_%s_INTR %d$uSuffix"  [string toupper $ip_na=
me] [string toupper $port_name] $port_intr_id"
    ("foreach" body line 86)
    invoked from within
"foreach periph $periphs {

        # get the gic mode information
        set scugic_mode [common::get_property CONFIG.C_IRQ_F2P_MODE $periph=
]

      ..."
    (procedure "xdefine_gic_params" line 30)
    invoked from within
"xdefine_gic_params $drv_handle"
    (procedure "::sw_scugic_v3_10::generate" line 10)
    invoked from within
"::sw_scugic_v3_10::generate ps7_scugic_0"

09:45:21 ERROR : (XSDB Server)ERROR: [Hsi 55-1442] Error(s) while running T=
CL procedure generate()

09:45:21 ERROR : (XSDB Server)ERROR: [Hsi 55-1450] Error: running generate_=
bsp.

09:45:21 ERROR : Error generating bsp sources: Failed in generating sources

I have not changed anything in the default vivado project that is generated=
.

I have circumvented building the FSBL for the time being by disabling it in=
 the petalinux-config top level menu, however I would ideally like to be ab=
le to build it!

I am very new to FPGA development and this is my first foray into using the=
 Xilinx tools and PetaLinux, so any help would be appreciated.

Thanks,

Ben

________________________________________
Roke Manor Research Limited, Romsey, Hampshire, SO51 0ZN, United Kingdom.Pa=
rt of the Chemring Group.=20
Registered in England & Wales. Registered No: 00267550
http://www.roke.co.uk
_______________________________________
The information contained in this e-mail and any attachments is proprietary=
 to Roke Manor Research Limited and=20
must not be passed to any third party without permission. This communicatio=
n is for information only and shall=20
not create or change any contractual relationship.
________________________________________

--_000_192EFF47C4A40043AB2651B150E5F75A65514FUMEXMBX01commadro_
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
=09{font-family:"Cambria Math";
=09panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
=09{font-family:Calibri;
=09panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
=09{margin:0cm;
=09margin-bottom:.0001pt;
=09font-size:11.0pt;
=09font-family:"Calibri",sans-serif;
=09mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
=09{mso-style-priority:99;
=09color:#0563C1;
=09text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
=09{mso-style-priority:99;
=09color:#954F72;
=09text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
=09{mso-style-name:msonormal;
=09mso-margin-top-alt:auto;
=09margin-right:0cm;
=09mso-margin-bottom-alt:auto;
=09margin-left:0cm;
=09font-size:12.0pt;
=09font-family:"Times New Roman",serif;}
span.EmailStyle18
=09{mso-style-type:personal;
=09font-family:"Calibri",sans-serif;
=09color:windowtext;}
span.EmailStyle19
=09{mso-style-type:personal;
=09font-family:"Calibri",sans-serif;
=09color:#1F497D;}
span.EmailStyle20
=09{mso-style-type:personal;
=09font-family:"Calibri",sans-serif;
=09color:#1F497D;}
span.EmailStyle21
=09{mso-style-type:personal;
=09font-family:"Calibri",sans-serif;
=09color:#1F497D;}
span.EmailStyle22
=09{mso-style-type:personal-reply;
=09font-family:"Calibri",sans-serif;
=09color:#1F497D;}
.MsoChpDefault
=09{mso-style-type:export-only;
=09font-size:10.0pt;}
@page WordSection1
=09{size:612.0pt 792.0pt;
=09margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
=09{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head><body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72"><div class=
=3D"WordSection1">
<p class=3D"MsoNormal">I am attempting to build PetaLinux targeting the E32=
0. As there is no BSP (that I can find) for the E320, I have attempted to g=
enerate a hardware description file from the Vivado project that can be cre=
ated from the
<a href=3D"https://github.com/EttusResearch/fpga">Ettus FPGA github reposit=
ory</a>.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I </span>successfully =
created the Vivado project<span style=3D"color:#1F497D">
</span>by running make E320_1G GUI=3D1, ran synthesis and implementation an=
d then exported the .hdf. I then configured the PetaLinux project:<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">petalinux-config &#8211;get-hw-description=3D&lt;pat=
h_to_.hdf&gt;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">And attempted to build it:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">petalinux-build<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It is during this build stage that I get the followi=
ng error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">NOTE: Executing RunQueue Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: fsbl-2018.3&#43;gitAUTOINC&#43;56f3da2afb-r0 =
do_configure: Function failed: do_configure (log file is located at /home/d=
evel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-=
gnueabi/fsbl/2018.3&#43;gitAUTOINC&#43;56f3da2afb-r0/temp/log.do_configure.=
18082)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /home/devel/Pro=
jects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/=
fsbl/2018.3&#43;gitAUTOINC&#43;56f3da2afb-r0/temp/log.do_configure.18082<o:=
p></o:p></p>
<p class=3D"MsoNormal">Log data follows:<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing shell function do_configure<o:p><=
/o:p></p>
<p class=3D"MsoNormal">| MISC_ARG is&nbsp; -yamlconf /home/devel/Projects/e=
320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/20=
18.3&#43;gitAUTOINC&#43;56f3da2afb-r0/fsbl.yaml<o:p></o:p></p>
<p class=3D"MsoNormal">| APP_ARG is&nbsp; -app &quot;Zynq FSBL&quot;<o:p></=
o:p></p>
<p class=3D"MsoNormal">| Using xsct from: /opt/Xilinx/PetaLinux/2018.3/tool=
s/xsct/SDK/2018.3/bin/xsct<o:p></o:p></p>
<p class=3D"MsoNormal">| cmd is: xsct -sdx -nodisp /home/devel/Projects/e32=
0/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018=
.3&#43;gitAUTOINC&#43;56f3da2afb-r0/app.tcl -ws /home/devel/Projects/e320/p=
lnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3&=
#43;gitAUTOINC&#43;56f3da2afb-r0/build
 -pname fsbl -rp /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/=
plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3&#43;gitAUTOINC&#43;56f3da2afb-r=
0/git -processor ps7_cortexa9_0 -hdf /home/devel/Projects/e320/plnx-2018.3-=
e320/build/tmp/deploy/images/plnx-zynq7/Xilinx-plnx-zynq7.hdf
 -arch 32&nbsp; -app &quot;Zynq FSBL&quot;&nbsp; -yamlconf /home/devel/Proj=
ects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/f=
sbl/2018.3&#43;gitAUTOINC&#43;56f3da2afb-r0/fsbl.yaml<o:p></o:p></p>
<p class=3D"MsoNormal">| INFO: [Hsi 55-1698] elapsed time for repository lo=
ading 0 seconds<o:p></o:p></p>
<p class=3D"MsoNormal">| Opening the hardware design, this may take few sec=
onds.<o:p></o:p></p>
<p class=3D"MsoNormal">| expected integer but got &quot;&quot;<o:p></o:p></=
p>
<p class=3D"MsoNormal">| ERROR: [Hsi 55-1545] Problem running tcl command :=
:sw_scugic_v3_10::generate : expected integer but got &quot;&quot;<o:p></o:=
p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; while executing<o:p></o:p>=
</p>
<p class=3D"MsoNormal">| &quot;format &quot;#define XPAR_FABRIC_%s_%s_INTR =
%d$uSuffix&quot;&nbsp; [string toupper $ip_name] [string toupper $port_name=
] $port_intr_id&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; (&quot;foreach&quot; body =
line 86)<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; invoked from within<o:p></=
o:p></p>
<p class=3D"MsoNormal">| &quot;foreach periph $periphs {<o:p></o:p></p>
<p class=3D"MsoNormal">| <o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # =
get the gic mode information<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; se=
t scugic_mode [common::get_property CONFIG.C_IRQ_F2P_MODE $periph]<o:p></o:=
p></p>
<p class=3D"MsoNormal">| <o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ...&quot;<o:p>=
</o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; (procedure &quot;xdefine_g=
ic_params&quot; line 30)<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; invoked from within<o:p></=
o:p></p>
<p class=3D"MsoNormal">| &quot;xdefine_gic_params $drv_handle&quot;<o:p></o=
:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; (procedure &quot;::sw_scug=
ic_v3_10::generate&quot; line 10)<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; invoked from within<o:p></=
o:p></p>
<p class=3D"MsoNormal">| &quot;::sw_scugic_v3_10::generate ps7_scugic_0&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal">| ERROR: [Hsi 55-1442] Error(s) while running TCL pr=
ocedure generate()<o:p></o:p></p>
<p class=3D"MsoNormal">| Failed to generate the platform.<o:p></o:p></p>
<p class=3D"MsoNormal">| Reason: Failed to generate the bsp sources for dom=
ain.fsbl_domain<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; while executing<o:p></o:p>=
</p>
<p class=3D"MsoNormal">| &quot;builtin_platform -generate quick&quot;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; (procedure &quot;platform&=
quot; line 221)<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; invoked from within<o:p></=
o:p></p>
<p class=3D"MsoNormal">| &quot;platform generate -quick&quot;<o:p></o:p></p=
>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; invoked from within<o:p></=
o:p></p>
<p class=3D"MsoNormal">| &quot;if { $params(ws) ne &quot;&quot; } {<o:p></o=
:p></p>
<p class=3D"MsoNormal">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; #Local Work Space available<o:p></o:p></p>
<p class=3D"MsoNormal">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; if { $params(pname) ne &quot;&quot; } {<o:p></o:p></=
p>
<p class=3D"MsoNormal">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # hwpname/bspname is empty then=
 default it to pname&#43;_hwproj/b...&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; (file &quot;/home/devel/Pr=
ojects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi=
/fsbl/2018.3&#43;gitAUTOINC&#43;56f3da2afb-r0/app.tcl&quot; line 139)<o:p><=
/o:p></p>
<p class=3D"MsoNormal">| WARNING: /home/devel/Projects/e320/plnx-2018.3-e32=
0/build/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3&#43;gitAUTOINC=
&#43;56f3da2afb-r0/temp/run.do_configure.18082:1 exit 1 from 'xsct -sdx -no=
disp /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-x=
ilinx-linux-gnueabi/fsbl/2018.3&#43;gitAUTOINC&#43;56f3da2afb-r0/app.tcl
 -ws /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_zynq7-x=
ilinx-linux-gnueabi/fsbl/2018.3&#43;gitAUTOINC&#43;56f3da2afb-r0/build -pna=
me fsbl -rp /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_=
zynq7-xilinx-linux-gnueabi/fsbl/2018.3&#43;gitAUTOINC&#43;56f3da2afb-r0/git
 -processor ps7_cortexa9_0 -hdf /home/devel/Projects/e320/plnx-2018.3-e320/=
build/tmp/deploy/images/plnx-zynq7/Xilinx-plnx-zynq7.hdf -arch 32 -app &quo=
t;Zynq FSBL&quot; -yamlconf /home/devel/Projects/e320/plnx-2018.3-e320/buil=
d/tmp/work/plnx_zynq7-xilinx-linux-gnueabi/fsbl/2018.3&#43;gitAUTOINC&#43;5=
6f3da2afb-r0/fsbl.yaml'<o:p></o:p></p>
<p class=3D"MsoNormal">| ERROR: Function failed: do_configure (log file is =
located at /home/devel/Projects/e320/plnx-2018.3-e320/build/tmp/work/plnx_z=
ynq7-xilinx-linux-gnueabi/fsbl/2018.3&#43;gitAUTOINC&#43;56f3da2afb-r0/temp=
/log.do_configure.18082)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task (/opt/Xilinx/PetaLinux/2018.3/components=
/yocto/source/arm/layers/meta-xilinx-tools/recipes-bsp/fsbl/fsbl_git.bb:do_=
configure) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 2999 tasks of which 2=
234 didn't need to be rerun and 1 failed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: 1 task failed:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; /opt/Xilinx/PetaLinux/2018.3/components/yocto=
/source/arm/layers/meta-xilinx-tools/recipes-bsp/fsbl/fsbl_git.bb:do_config=
ure<o:p></o:p></p>
<p class=3D"MsoNormal">Summary: There was 1 ERROR message shown, returning =
a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Failed to build project<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The build fails when attempting to configure the fir=
st stage bootloader.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have also attempted to create an FSBL directly thr=
ough the SDK however that gives a very similar error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">9:43:04 INFO&nbsp; : Registering command handlers fo=
r SDK TCF services<o:p></o:p></p>
<p class=3D"MsoNormal">09:43:05 INFO &nbsp;: Launching XSCT server: xsct -n=
 -interactive /home/devel/Projects/e320/fsbl-2018.3/temp_xsdb_launch_script=
.tcl<o:p></o:p></p>
<p class=3D"MsoNormal">09:43:10 INFO&nbsp; : XSCT server has started succes=
sfully.<o:p></o:p></p>
<p class=3D"MsoNormal">09:43:10 INFO&nbsp; : Successfully done setting XSCT=
 server connection channel&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal">09:43:11 INFO&nbsp; : Successfully done setting SDK =
workspace&nbsp; <o:p>
</o:p></p>
<p class=3D"MsoNormal">09:44:54 INFO&nbsp; : Project 'fsbl' created. You ca=
n now create BSPs and application projects targeting this hardware platform=
.<o:p></o:p></p>
<p class=3D"MsoNormal">09:45:21 ERROR : (XSDB Server)ERROR: [Hsi 55-1545] P=
roblem running tcl command ::sw_scugic_v3_10::generate : expected integer b=
ut got &quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; while executing<o:p></o:p></p>
<p class=3D"MsoNormal">&quot;format &quot;#define XPAR_FABRIC_%s_%s_INTR %d=
$uSuffix&quot;&nbsp; [string toupper $ip_name] [string toupper $port_name] =
$port_intr_id&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (&quot;foreach&quot; body line 86=
)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; invoked from within<o:p></o:p></p=
>
<p class=3D"MsoNormal">&quot;foreach periph $periphs {<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # get the=
 gic mode information<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; set scugi=
c_mode [common::get_property CONFIG.C_IRQ_F2P_MODE $periph]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ...&quot;<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (procedure &quot;xdefine_gic_para=
ms&quot; line 30)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; invoked from within<o:p></o:p></p=
>
<p class=3D"MsoNormal">&quot;xdefine_gic_params $drv_handle&quot;<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (procedure &quot;::sw_scugic_v3_1=
0::generate&quot; line 10)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; invoked from within<o:p></o:p></p=
>
<p class=3D"MsoNormal">&quot;::sw_scugic_v3_10::generate ps7_scugic_0&quot;=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">09:45:21 ERROR : (XSDB Server)ERROR: [Hsi 55-1442] E=
rror(s) while running TCL procedure generate()<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">09:45:21 ERROR : (XSDB Server)ERROR: [Hsi 55-1450] E=
rror: running generate_bsp.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">09:45:21 ERROR : Error generating bsp sources: Faile=
d in generating sources<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have not changed anything in the default vivado pr=
oject that is generated.<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal">I have circumvented building the FSBL for the time b=
eing by disabling it in the petalinux-config top level menu, however I woul=
d ideally like to be able to build it!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am very new to FPGA development and this is my fir=
st foray into using the Xilinx tools and PetaLinux, so any help would be ap=
preciated.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ben<o:p></o:p></p>
</div>

<p style=3D"margin-top:2em;font-family:arial,sans-serif;font-size:9pt">Foll=
ow Us: <a href=3D"http://www.linkedin.com/company/roke-manor-research" titl=
e=3D"LinkedIn" target=3D"_blank">LinkedIn</a> | <a href=3D"https://twitter.=
com/rokemanor" title=3D"Twitter" target=3D"_blank">Twitter</a> | <a href=3D=
"https://www.facebook.com/rokemanor" title=3D"Facebook" target=3D"_blank">F=
acebook</a></p>

<p style=3D"font-family:arial,sans-serif;font-size:9pt; color:#808080">Roke=
 Manor Research Limited, Romsey, Hampshire, SO51 0ZN, United Kingdom. Part =
of the Chemring Group. Registered in England &amp; Wales. Registered No: 00=
267550. The information contained in this e-mail and any attachments is pro=
prietary to Roke Manor Research Limited and must not be passed to any third=
 party without permission. This communication is for information only and s=
hall not create or change any contractual relationship.<br><a href=3D"http:=
//www.roke.co.uk/?utm_source=3DRoke&amp;utm_medium=3DEmail&amp;utm_content=
=3DCompany%20Signature&amp;utm_campaign=3DRoke" title=3D"Website" target=3D=
"_blank">www.roke.co.uk</a></p>

<hr style=3D"font-family:arial,sans-serif;font-size:9pt">



</body></html>

--_000_192EFF47C4A40043AB2651B150E5F75A65514FUMEXMBX01commadro_--



--===============4641271990691591144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4641271990691591144==--


