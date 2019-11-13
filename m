Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D6FFB458
	for <lists+usrp-users@lfdr.de>; Wed, 13 Nov 2019 16:54:12 +0100 (CET)
Received: from [::1] (port=57512 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUuyA-0004z3-Vt; Wed, 13 Nov 2019 10:54:11 -0500
Received: from mail-lj1-f172.google.com ([209.85.208.172]:34074)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jlockhartrt@gmail.com>)
 id 1iUuy6-0004gg-Uk
 for usrp-users@lists.ettus.com; Wed, 13 Nov 2019 10:54:07 -0500
Received: by mail-lj1-f172.google.com with SMTP id 139so3160340ljf.1
 for <usrp-users@lists.ettus.com>; Wed, 13 Nov 2019 07:53:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=uqQL6X1ob8JlTMEYy8bgLSwIY7YNFdKpQsIsW1mPUKQ=;
 b=Kvfns/6N0mgqYOL4itfrDBLAmyDDu1aDW+xDAkdTfswMAJsAFJjVwte/dM6l6Ceu0Y
 28HpgQfFlEi3+47Q7LNqo5R2RYYWzAna72rJnyNfgu2uATnAaKf2A1EgbbWkWPSBIiwW
 M4wOEG/M2wD9OAYW3CWm5UIT5ykFLlbS5uMrf2a0pMDO4bq4EsKgi7zHJKMwjkHAImet
 CtTEHU0Wg51zMp0Vnk8bZkJW1NacNBdE5lzOkVxqTEfOYOq7RAGCEEWewY8vjV5Jxz6R
 hzsL9vMvqPr5yZY5sCapkhHJOVnznpGndTe6nvTjVeeW8UcNywEONIdczMaIsGLBC9T9
 s4Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=uqQL6X1ob8JlTMEYy8bgLSwIY7YNFdKpQsIsW1mPUKQ=;
 b=eZxt08GeSVak7nBUJxfZJoSW4iOth1lZkKmMF0BDiucFaAFDXlMKQnbWo+zdFQd5v4
 XyAxVSwrzL+H0mp86mLko3pCW2LnQ1p5r5BQnGMpFIITqt7wZUDZh5FF9aTm7I9XYRgH
 phyIOfzXAm01JdOn4Kam0U/5YjKEJnveZgbeHXkDHFhBhtZfX2pY5jKWMPl5C0PWlSWe
 qHisxCkvkEGC04aNV/2FKllRof5zigXW0uCCWdhsyFx3cv8Ik8bLglD/MfpR4m+KWmua
 ZvGJjqYSXccmXhtyTNgdOS85gkqYmM2hzDW4PM5+I/EjNNri+zP9WxFPKNCbJje6MUFu
 xMaA==
X-Gm-Message-State: APjAAAV8IRHGYE+ifkwBf+nTWPI83J7h4YE+fDYNjDBWVOjfR4hIG5zL
 q1rSROcsG8US9JCPZyZybeZ+XoYMj1lTLSc11R8E0j51
X-Google-Smtp-Source: APXvYqz65pmJ9rID7oF9+JXJDDbwZVPE9GtdUaAsOxKxmC/Wgm05wRqCtL88uLQnudtPLphrElishPrJNPK1YeRTpKs=
X-Received: by 2002:a2e:982:: with SMTP id 124mr3259587ljj.48.1573660405435;
 Wed, 13 Nov 2019 07:53:25 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 13 Nov 2019 10:53:14 -0500
Message-ID: <CALY+5sK-1XmS4sSDr5QPDH0JwGGrRLeOKaGMGmW=9ak1ZXEEVw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 support@ettus.com
Subject: [USRP-users] Issues with RFNoC Component Test Bench
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathan Lockhart via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathan Lockhart <jlockhartrt@gmail.com>
Content-Type: multipart/mixed; boundary="===============6512747426567311229=="
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

--===============6512747426567311229==
Content-Type: multipart/alternative; boundary="0000000000007692f605973c5d7e"

--0000000000007692f605973c5d7e
Content-Type: text/plain; charset="UTF-8"

Greetings USRP Users,

I am having another issue with the UHD-3.14 build I can't seem to shake
down. I have been going through this guide on the KB to learn how to use
the rfnocmodtool to build new modules for my E312:

https://kb.ettus.com/Getting_Started_with_RFNoC_Development

Unfortunately, when I get to the point of using the test bench, I get the
following error.

ettus_sdr@ettus-VirtualBox:~/rfnoc/src/rfnoc-tutorial/build$ sudo make
noc_block_gain_tb
[sudo] password for ettus_sdr:
Setting up a 64-bit FPGA build environment for the USRP-X3x0...
- Vivado: Found (/opt/Xilinx/Vivado/2017.4/bin)

Environment successfully initialized.
BUILDER: Checking tools...
* GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)
* Python 2.7.15+
* Vivado v2017.4.1 (64-bit)

****** Vivado v2017.4.1 (64-bit)
  **** SW Build 2117270 on Tue Jan 30 15:31:13 MST 2018
  **** IP Build 2095745 on Tue Jan 30 17:13:15 MST 2018
    ** Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.

source
/home/ettus_sdr/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts/viv_sim_project.tcl
# set simulator       $::env(VIV_SIMULATOR)
# set design_srcs     $::env(VIV_DESIGN_SRCS)
# set sim_srcs        $::env(VIV_SIM_SRCS)
# set inc_srcs        $::env(VIV_INC_SRCS)
# set sim_top         $::env(VIV_SIM_TOP)
# set part_name       $::env(VIV_PART_NAME)
# set sim_runtime     $::env(VIV_SIM_RUNTIME)
# set sim_fast        $::env(VIV_SIM_FAST)
# set vivado_mode     $::env(VIV_MODE)
# set working_dir     [pwd]
# set sim_fileset "sim_1"
# set project_name "[string tolower $simulator]_proj"
# if [info exists ::env(VIV_SIM_COMPLIBDIR) ] {
#     set sim_complibdir  $::env(VIV_SIM_COMPLIBDIR)
#     if [expr [file isdirectory $sim_complibdir] == 0] {
#         set sim_complibdir  ""
#     }
# } else {
#     set sim_complibdir  ""
# }
# if [expr ([string equal $simulator "XSim"] == 0) && ([string length
$sim_complibdir] == 0)] {
#     puts "BUILDER: \[ERROR\]: Could not resolve the location for the
compiled simulation libraries."
#     puts "                  Please build libraries for chosen simulator
and set the env or"
#     puts "                  makefile variable SIM_COMPLIBDIR to point to
the location."
#     exit 1
# }
# puts "BUILDER: Creating Vivado simulation project part $part_name"
BUILDER: Creating Vivado simulation project part xc7k410tffg900-2
# create_project -part $part_name -force $project_name/$project_name
WARNING: [Device 21-436] No parts matched 'xc7k410tffg900-2'
ERROR: [Coretcl 2-106] Specified part could not be found.
INFO: [Common 17-206] Exiting Vivado at Wed Nov 13 10:44:55 2019...
/home/ettus_sdr/rfnoc/src/uhd/fpga-src/usrp3/top/../tools/make/viv_simulator.mak:51:
recipe for target 'xsim' failed
make[4]: *** [xsim] Error 1
CMakeFiles/noc_block_gain_tb.dir/build.make:57: recipe for target
'CMakeFiles/noc_block_gain_tb' failed
make[3]: *** [CMakeFiles/noc_block_gain_tb] Error 2
CMakeFiles/Makefile2:131: recipe for target
'CMakeFiles/noc_block_gain_tb.dir/all' failed
make[2]: *** [CMakeFiles/noc_block_gain_tb.dir/all] Error 2
CMakeFiles/Makefile2:138: recipe for target
'CMakeFiles/noc_block_gain_tb.dir/rule' failed
make[1]: *** [CMakeFiles/noc_block_gain_tb.dir/rule] Error 2
Makefile:201: recipe for target 'noc_block_gain_tb' failed
make: *** [noc_block_gain_tb] Error 2

The tutorial has you build a gain module, and I have verified the code is
copied as they provide it in the guide, with no other extras provided by
the build script being modified.

I also verified that the cmake for the test bench was provided the correct
FPGA source repository and it picked it up in the build phase.

Regards,
Jon

--0000000000007692f605973c5d7e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings USRP Users,<br><div><br></div><div>I am having a=
nother=C2=A0issue=C2=A0with the UHD-3.14 build I can&#39;t seem to shake do=
wn. I have been going through this guide on the KB to learn how to use the =
rfnocmodtool to build new modules for my E312:</div><div><br></div><div><a =
href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Development">https:=
//kb.ettus.com/Getting_Started_with_RFNoC_Development</a>=C2=A0=C2=A0<br></=
div><div><br></div><div>Unfortunately, when I get to the point of using the=
 test bench, I get the following error.</div><div><br></div><div>ettus_sdr@=
ettus-VirtualBox:~/rfnoc/src/rfnoc-tutorial/build$ sudo make noc_block_gain=
_tb<br>[sudo] password for ettus_sdr: <br>Setting up a 64-bit FPGA build en=
vironment for the USRP-X3x0...<br>- Vivado: Found (/opt/Xilinx/Vivado/2017.=
4/bin)<br><br>Environment successfully initialized.<br>BUILDER: Checking to=
ols...<br>* GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)<br>* =
Python 2.7.15+<br>* Vivado v2017.4.1 (64-bit)<br><br>****** Vivado v2017.4.=
1 (64-bit)<br>=C2=A0 **** SW Build 2117270 on Tue Jan 30 15:31:13 MST 2018<=
br>=C2=A0 **** IP Build 2095745 on Tue Jan 30 17:13:15 MST 2018<br>=C2=A0 =
=C2=A0 ** Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.<br><br>sour=
ce /home/ettus_sdr/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts/viv_sim_proje=
ct.tcl<br># set simulator =C2=A0 =C2=A0 =C2=A0 $::env(VIV_SIMULATOR)<br># s=
et design_srcs =C2=A0 =C2=A0 $::env(VIV_DESIGN_SRCS)<br># set sim_srcs =C2=
=A0 =C2=A0 =C2=A0 =C2=A0$::env(VIV_SIM_SRCS)<br># set inc_srcs =C2=A0 =C2=
=A0 =C2=A0 =C2=A0$::env(VIV_INC_SRCS)<br># set sim_top =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 $::env(VIV_SIM_TOP)<br># set part_name =C2=A0 =C2=A0 =C2=A0 $::env(=
VIV_PART_NAME)<br># set sim_runtime =C2=A0 =C2=A0 $::env(VIV_SIM_RUNTIME)<b=
r># set sim_fast =C2=A0 =C2=A0 =C2=A0 =C2=A0$::env(VIV_SIM_FAST)<br># set v=
ivado_mode =C2=A0 =C2=A0 $::env(VIV_MODE)<br># set working_dir =C2=A0 =C2=
=A0 [pwd]<br># set sim_fileset &quot;sim_1&quot;<br># set project_name &quo=
t;[string tolower $simulator]_proj&quot;<br># if [info exists ::env(VIV_SIM=
_COMPLIBDIR) ] {<br># =C2=A0 =C2=A0 set sim_complibdir =C2=A0$::env(VIV_SIM=
_COMPLIBDIR)<br># =C2=A0 =C2=A0 if [expr [file isdirectory $sim_complibdir]=
 =3D=3D 0] {<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 set sim_complibdir =C2=A0&quo=
t;&quot;<br># =C2=A0 =C2=A0 }<br># } else {<br># =C2=A0 =C2=A0 set sim_comp=
libdir =C2=A0&quot;&quot;<br># }<br># if [expr ([string equal $simulator &q=
uot;XSim&quot;] =3D=3D 0) &amp;&amp; ([string length $sim_complibdir] =3D=
=3D 0)] {<br># =C2=A0 =C2=A0 puts &quot;BUILDER: \[ERROR\]: Could not resol=
ve the location for the compiled simulation libraries.&quot;<br># =C2=A0 =
=C2=A0 puts &quot; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Please build libraries for chosen simulator and set the env or&quot;<=
br># =C2=A0 =C2=A0 puts &quot; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0makefile variable SIM_COMPLIBDIR to point to the locati=
on.&quot;<br># =C2=A0 =C2=A0 exit 1<br># }<br># puts &quot;BUILDER: Creatin=
g Vivado simulation project part $part_name&quot;<br>BUILDER: Creating Viva=
do simulation project part xc7k410tffg900-2<br># create_project -part $part=
_name -force $project_name/$project_name<br>WARNING: [Device 21-436] No par=
ts matched &#39;xc7k410tffg900-2&#39;<br>ERROR: [Coretcl 2-106] Specified p=
art could not be found.<br>INFO: [Common 17-206] Exiting Vivado at Wed Nov =
13 10:44:55 2019...<br>/home/ettus_sdr/rfnoc/src/uhd/fpga-src/usrp3/top/../=
tools/make/viv_simulator.mak:51: recipe for target &#39;xsim&#39; failed<br=
>make[4]: *** [xsim] Error 1<br>CMakeFiles/noc_block_gain_tb.dir/build.make=
:57: recipe for target &#39;CMakeFiles/noc_block_gain_tb&#39; failed<br>mak=
e[3]: *** [CMakeFiles/noc_block_gain_tb] Error 2<br>CMakeFiles/Makefile2:13=
1: recipe for target &#39;CMakeFiles/noc_block_gain_tb.dir/all&#39; failed<=
br>make[2]: *** [CMakeFiles/noc_block_gain_tb.dir/all] Error 2<br>CMakeFile=
s/Makefile2:138: recipe for target &#39;CMakeFiles/noc_block_gain_tb.dir/ru=
le&#39; failed<br>make[1]: *** [CMakeFiles/noc_block_gain_tb.dir/rule] Erro=
r 2<br>Makefile:201: recipe for target &#39;noc_block_gain_tb&#39; failed<b=
r>make: *** [noc_block_gain_tb] Error 2<br></div><div><br></div><div>The tu=
torial has you build a gain module, and I have verified the code is copied =
as they provide it in the guide, with no other extras provided by the build=
 script being modified.=C2=A0</div><div><br></div><div>I also verified that=
 the cmake for the test bench was provided the correct FPGA source reposito=
ry and it picked it up in the build phase.=C2=A0</div><div><br></div><div>R=
egards,</div><div>Jon</div></div>

--0000000000007692f605973c5d7e--


--===============6512747426567311229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6512747426567311229==--

