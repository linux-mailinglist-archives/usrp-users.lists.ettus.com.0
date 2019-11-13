Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54855FB4CB
	for <lists+usrp-users@lfdr.de>; Wed, 13 Nov 2019 17:18:08 +0100 (CET)
Received: from [::1] (port=37678 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUvLL-0007Go-8B; Wed, 13 Nov 2019 11:18:07 -0500
Received: from mail-lj1-f169.google.com ([209.85.208.169]:33927)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jlockhartrt@gmail.com>)
 id 1iUvLH-00079C-Al
 for usrp-users@lists.ettus.com; Wed, 13 Nov 2019 11:18:03 -0500
Received: by mail-lj1-f169.google.com with SMTP id 139so3254088ljf.1
 for <usrp-users@lists.ettus.com>; Wed, 13 Nov 2019 08:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j/o7ciChOOb+FI0GnLFjElKor5FMIp/84FZVXEROCjo=;
 b=evKCFFm/ioLy+272W22p9tjkAks0vOZB/f6Cx1C2n3AQXk5LkDxzaVR7XiAaNRCxrA
 JjC8Y1GDR7YSScvvplb31ThfpwUL+7zgmlX/mVTFFFyptBjIUyHb+/F1tbYqhAgnHZKp
 snvoL5kdiN0qZezXkotStG2aUQxKXRm1/vPF69fHDAlTGm5ZczqXvAVU4SDVwclG0e7h
 1YsvWNBC+0ge8GX2iFQpIkToVV2RMCMfv9wroiX6BQJkKK9PAMhqZC4aCy+9EqDe3moI
 7O1cyYK1UAjJ2/mUD0AniMQQyYBPk46gBet1eqSzNUkZg1v2Deefziotjnkmtwtex7vn
 388w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j/o7ciChOOb+FI0GnLFjElKor5FMIp/84FZVXEROCjo=;
 b=rhDFz9VwV7FzZd9+Nz/tAd0NvB7ytW+I8Un3JFWV6JXCNFIZOv20s4cH79G++T2Hl2
 VD7bKeEM0ame0d9rikuUBxPQjhlsy7w27h2AaEdYkFb1Dt4sEsGrs5olhnWPCvfvY8Zq
 MDznbZhdhEhG6xB8zmquLQmfuaU4DCeyUpG5Mv7i+QYSZMIkhOqyjX6RJbh/MiZ3pGjb
 Q8sCWe+rSJ+l88wTgNrp5xlfEW8tHG6dPXxlcNk7ncfhmwLYtTYzTIVu9Ah1orCksnC1
 WIgbPjjoGxNSF5Aq7YgKNKGUJxKD1DhrfgIp+trJoWKm8La1o8KzfIyf9qe7gGoOQ/q8
 dPyQ==
X-Gm-Message-State: APjAAAVsSMy5V6+dNdiqiQxQOQ5jG9m+RYuYzvJY1JrQgbexo9AGUbrj
 fknYvoaww7U+p/qFLdDsuyTdE2m6T9qXOjCPlNg=
X-Google-Smtp-Source: APXvYqx1yG1YDYBxxp16Qz5U0LFOZn/UVspf5cnfTyWwtxNrM477f2bqdN4xEGBx49G/v7YczXKfCWnl9R5GEwdYvKo=
X-Received: by 2002:a2e:8e28:: with SMTP id r8mr3124190ljk.21.1573661841977;
 Wed, 13 Nov 2019 08:17:21 -0800 (PST)
MIME-Version: 1.0
References: <CALY+5sK-1XmS4sSDr5QPDH0JwGGrRLeOKaGMGmW=9ak1ZXEEVw@mail.gmail.com>
 <CAEXYVK6JzhFL=Ax10RMoj0TRxd86yPewRa9HP4zGCvku+r6_9g@mail.gmail.com>
In-Reply-To: <CAEXYVK6JzhFL=Ax10RMoj0TRxd86yPewRa9HP4zGCvku+r6_9g@mail.gmail.com>
Date: Wed, 13 Nov 2019 11:17:11 -0500
Message-ID: <CALY+5sJT1TJTNa0fA2DjgWheg2+G9qOV-6z99bEewDzM8UzaHA@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Subject: Re: [USRP-users] Issues with RFNoC Component Test Bench
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2763194794439767930=="
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

--===============2763194794439767930==
Content-Type: multipart/alternative; boundary="0000000000001673ed05973cb377"

--0000000000001673ed05973cb377
Content-Type: text/plain; charset="UTF-8"

Greetings Brian,

I had noticed that the script was set to use the X300 after I sent the
email. I switched in the CMakeList.txt file to use the e300 repo, which is
using the Zynq-7020, which is included in the webpack version of Vivado. I
unfortunately got the same error prior to the change, included below.

ettus_sdr@ettus-VirtualBox:~/rfnoc/src/rfnoc-tutorial/build$ make
noc_block_gain_tb
Setting up a 64-bit FPGA build environment for the USRP-E3x0...
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

CRITICAL WARNING: [Common 17-741] No write access right to the local Tcl
store at '/home/ettus_sdr/.Xilinx/Vivado/2017.4/XilinxTclStore'.
XilinxTclStore is reverted to the installation area. If you want to use
local Tcl Store, please change the access right and relaunch Vivado.
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
INFO: [Common 17-206] Exiting Vivado at Wed Nov 13 11:07:09 2019...
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

I am assuming this is the part that needs to be changed:  xc7k410tffg900-2.
I am not seeing where this is declared in the CMakeList.txt file. Do you
know where I would go about changing it in the build scripts?

Regards,
Jon

On Wed, Nov 13, 2019 at 11:12 AM Brian Padalino <bpadalino@gmail.com> wrote:

> On Wed, Nov 13, 2019 at 10:54 AM Jonathan Lockhart via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Greetings USRP Users,
>>
>> I am having another issue with the UHD-3.14 build I can't seem to shake
>> down. I have been going through this guide on the KB to learn how to use
>> the rfnocmodtool to build new modules for my E312:
>>
>> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>>
>> Unfortunately, when I get to the point of using the test bench, I get the
>> following error.
>>
>> ettus_sdr@ettus-VirtualBox:~/rfnoc/src/rfnoc-tutorial/build$ sudo make
>> noc_block_gain_tb
>> [sudo] password for ettus_sdr:
>> Setting up a 64-bit FPGA build environment for the USRP-X3x0...
>> - Vivado: Found (/opt/Xilinx/Vivado/2017.4/bin)
>>
>> Environment successfully initialized.
>> BUILDER: Checking tools...
>> * GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)
>> * Python 2.7.15+
>> * Vivado v2017.4.1 (64-bit)
>>
>> ****** Vivado v2017.4.1 (64-bit)
>>   **** SW Build 2117270 on Tue Jan 30 15:31:13 MST 2018
>>   **** IP Build 2095745 on Tue Jan 30 17:13:15 MST 2018
>>     ** Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
>>
>> source
>> /home/ettus_sdr/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts/viv_sim_project.tcl
>> # set simulator       $::env(VIV_SIMULATOR)
>> # set design_srcs     $::env(VIV_DESIGN_SRCS)
>> # set sim_srcs        $::env(VIV_SIM_SRCS)
>> # set inc_srcs        $::env(VIV_INC_SRCS)
>> # set sim_top         $::env(VIV_SIM_TOP)
>> # set part_name       $::env(VIV_PART_NAME)
>> # set sim_runtime     $::env(VIV_SIM_RUNTIME)
>> # set sim_fast        $::env(VIV_SIM_FAST)
>> # set vivado_mode     $::env(VIV_MODE)
>> # set working_dir     [pwd]
>> # set sim_fileset "sim_1"
>> # set project_name "[string tolower $simulator]_proj"
>> # if [info exists ::env(VIV_SIM_COMPLIBDIR) ] {
>> #     set sim_complibdir  $::env(VIV_SIM_COMPLIBDIR)
>> #     if [expr [file isdirectory $sim_complibdir] == 0] {
>> #         set sim_complibdir  ""
>> #     }
>> # } else {
>> #     set sim_complibdir  ""
>> # }
>> # if [expr ([string equal $simulator "XSim"] == 0) && ([string length
>> $sim_complibdir] == 0)] {
>> #     puts "BUILDER: \[ERROR\]: Could not resolve the location for the
>> compiled simulation libraries."
>> #     puts "                  Please build libraries for chosen simulator
>> and set the env or"
>> #     puts "                  makefile variable SIM_COMPLIBDIR to point
>> to the location."
>> #     exit 1
>> # }
>> # puts "BUILDER: Creating Vivado simulation project part $part_name"
>> BUILDER: Creating Vivado simulation project part xc7k410tffg900-2
>> # create_project -part $part_name -force $project_name/$project_name
>> WARNING: [Device 21-436] No parts matched 'xc7k410tffg900-2'
>> ERROR: [Coretcl 2-106] Specified part could not be found.
>>
>
> It's a silly question, but do you have a license for the kintex 7 410T
> part on that machine?
>
> You can probably get around this by targeting something that is supported
> by the free web pack as long as it's 7-series fabric (zynq 7020 had worked
> for me in the past).
>
> Brian
>

--0000000000001673ed05973cb377
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings Brian,<div><br></div><div>I had noticed that the=
 script was set to use the X300 after I sent the email. I switched in the C=
MakeList.txt file to use the e300 repo, which is using the Zynq-7020, which=
 is included in the webpack version of Vivado. I unfortunately got the same=
 error prior to the change, included below.=C2=A0</div><div><br></div><div>=
ettus_sdr@ettus-VirtualBox:~/rfnoc/src/rfnoc-tutorial/build$ make noc_block=
_gain_tb<br>Setting up a 64-bit FPGA build environment for the USRP-E3x0...=
<br>- Vivado: Found (/opt/Xilinx/Vivado/2017.4/bin)<br><br>Environment succ=
essfully initialized.<br>BUILDER: Checking tools...<br>* GNU bash, version =
4.4.20(1)-release (x86_64-pc-linux-gnu)<br>* Python 2.7.15+<br>* Vivado v20=
17.4.1 (64-bit)<br><br>****** Vivado v2017.4.1 (64-bit)<br>=C2=A0 **** SW B=
uild 2117270 on Tue Jan 30 15:31:13 MST 2018<br>=C2=A0 **** IP Build 209574=
5 on Tue Jan 30 17:13:15 MST 2018<br>=C2=A0 =C2=A0 ** Copyright 1986-2017 X=
ilinx, Inc. All Rights Reserved.<br><br>CRITICAL WARNING: [Common 17-741] N=
o write access right to the local Tcl store at &#39;/home/ettus_sdr/.Xilinx=
/Vivado/2017.4/XilinxTclStore&#39;. XilinxTclStore is reverted to the insta=
llation area. If you want to use local Tcl Store, please change the access =
right and relaunch Vivado.<br>source /home/ettus_sdr/rfnoc/src/uhd/fpga-src=
/usrp3/tools/scripts/viv_sim_project.tcl<br># set simulator =C2=A0 =C2=A0 =
=C2=A0 $::env(VIV_SIMULATOR)<br># set design_srcs =C2=A0 =C2=A0 $::env(VIV_=
DESIGN_SRCS)<br># set sim_srcs =C2=A0 =C2=A0 =C2=A0 =C2=A0$::env(VIV_SIM_SR=
CS)<br># set inc_srcs =C2=A0 =C2=A0 =C2=A0 =C2=A0$::env(VIV_INC_SRCS)<br># =
set sim_top =C2=A0 =C2=A0 =C2=A0 =C2=A0 $::env(VIV_SIM_TOP)<br># set part_n=
ame =C2=A0 =C2=A0 =C2=A0 $::env(VIV_PART_NAME)<br># set sim_runtime =C2=A0 =
=C2=A0 $::env(VIV_SIM_RUNTIME)<br># set sim_fast =C2=A0 =C2=A0 =C2=A0 =C2=
=A0$::env(VIV_SIM_FAST)<br># set vivado_mode =C2=A0 =C2=A0 $::env(VIV_MODE)=
<br># set working_dir =C2=A0 =C2=A0 [pwd]<br># set sim_fileset &quot;sim_1&=
quot;<br># set project_name &quot;[string tolower $simulator]_proj&quot;<br=
># if [info exists ::env(VIV_SIM_COMPLIBDIR) ] {<br># =C2=A0 =C2=A0 set sim=
_complibdir =C2=A0$::env(VIV_SIM_COMPLIBDIR)<br># =C2=A0 =C2=A0 if [expr [f=
ile isdirectory $sim_complibdir] =3D=3D 0] {<br># =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 set sim_complibdir =C2=A0&quot;&quot;<br># =C2=A0 =C2=A0 }<br># } else =
{<br># =C2=A0 =C2=A0 set sim_complibdir =C2=A0&quot;&quot;<br># }<br># if [=
expr ([string equal $simulator &quot;XSim&quot;] =3D=3D 0) &amp;&amp; ([str=
ing length $sim_complibdir] =3D=3D 0)] {<br># =C2=A0 =C2=A0 puts &quot;BUIL=
DER: \[ERROR\]: Could not resolve the location for the compiled simulation =
libraries.&quot;<br># =C2=A0 =C2=A0 puts &quot; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Please build libraries for chosen simula=
tor and set the env or&quot;<br># =C2=A0 =C2=A0 puts &quot; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0makefile variable SIM_COMPL=
IBDIR to point to the location.&quot;<br># =C2=A0 =C2=A0 exit 1<br># }<br>#=
 puts &quot;BUILDER: Creating Vivado simulation project part $part_name&quo=
t;<br>BUILDER: Creating Vivado simulation project part xc7k410tffg900-2<br>=
# create_project -part $part_name -force $project_name/$project_name<br>WAR=
NING: [Device 21-436] No parts matched &#39;xc7k410tffg900-2&#39;<br>ERROR:=
 [Coretcl 2-106] Specified part could not be found.<br>INFO: [Common 17-206=
] Exiting Vivado at Wed Nov 13 11:07:09 2019...<br>/home/ettus_sdr/rfnoc/sr=
c/uhd/fpga-src/usrp3/top/../tools/make/viv_simulator.mak:51: recipe for tar=
get &#39;xsim&#39; failed<br>make[4]: *** [xsim] Error 1<br>CMakeFiles/noc_=
block_gain_tb.dir/build.make:57: recipe for target &#39;CMakeFiles/noc_bloc=
k_gain_tb&#39; failed<br>make[3]: *** [CMakeFiles/noc_block_gain_tb] Error =
2<br>CMakeFiles/Makefile2:131: recipe for target &#39;CMakeFiles/noc_block_=
gain_tb.dir/all&#39; failed<br>make[2]: *** [CMakeFiles/noc_block_gain_tb.d=
ir/all] Error 2<br>CMakeFiles/Makefile2:138: recipe for target &#39;CMakeFi=
les/noc_block_gain_tb.dir/rule&#39; failed<br>make[1]: *** [CMakeFiles/noc_=
block_gain_tb.dir/rule] Error 2<br>Makefile:201: recipe for target &#39;noc=
_block_gain_tb&#39; failed<br>make: *** [noc_block_gain_tb] Error 2<br></di=
v><div><br></div><div>I am assuming this is the part that needs to be chang=
ed:=C2=A0

xc7k410tffg900-2. I am not seeing where this is declared in the CMakeList.t=
xt file. Do you know where I would go about changing it in the build script=
s?</div><div><br></div><div>Regards,</div><div>Jon</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 13, 201=
9 at 11:12 AM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpa=
dalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Wed, Nov 13, 2019 at 1=
0:54 AM Jonathan Lockhart via USRP-users &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:=
<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Greetings USRP Users,<br><div><br></div><div>I=
 am having another=C2=A0issue=C2=A0with the UHD-3.14 build I can&#39;t seem=
 to shake down. I have been going through this guide on the KB to learn how=
 to use the rfnocmodtool to build new modules for my E312:</div><div><br></=
div><div><a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Develop=
ment" target=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFNoC_Dev=
elopment</a>=C2=A0=C2=A0<br></div><div><br></div><div>Unfortunately, when I=
 get to the point of using the test bench, I get the following error.</div>=
<div><br></div><div>ettus_sdr@ettus-VirtualBox:~/rfnoc/src/rfnoc-tutorial/b=
uild$ sudo make noc_block_gain_tb<br>[sudo] password for ettus_sdr: <br>Set=
ting up a 64-bit FPGA build environment for the USRP-X3x0...<br>- Vivado: F=
ound (/opt/Xilinx/Vivado/2017.4/bin)<br><br>Environment successfully initia=
lized.<br>BUILDER: Checking tools...<br>* GNU bash, version 4.4.20(1)-relea=
se (x86_64-pc-linux-gnu)<br>* Python 2.7.15+<br>* Vivado v2017.4.1 (64-bit)=
<br><br>****** Vivado v2017.4.1 (64-bit)<br>=C2=A0 **** SW Build 2117270 on=
 Tue Jan 30 15:31:13 MST 2018<br>=C2=A0 **** IP Build 2095745 on Tue Jan 30=
 17:13:15 MST 2018<br>=C2=A0 =C2=A0 ** Copyright 1986-2017 Xilinx, Inc. All=
 Rights Reserved.<br><br>source /home/ettus_sdr/rfnoc/src/uhd/fpga-src/usrp=
3/tools/scripts/viv_sim_project.tcl<br># set simulator =C2=A0 =C2=A0 =C2=A0=
 $::env(VIV_SIMULATOR)<br># set design_srcs =C2=A0 =C2=A0 $::env(VIV_DESIGN=
_SRCS)<br># set sim_srcs =C2=A0 =C2=A0 =C2=A0 =C2=A0$::env(VIV_SIM_SRCS)<br=
># set inc_srcs =C2=A0 =C2=A0 =C2=A0 =C2=A0$::env(VIV_INC_SRCS)<br># set si=
m_top =C2=A0 =C2=A0 =C2=A0 =C2=A0 $::env(VIV_SIM_TOP)<br># set part_name =
=C2=A0 =C2=A0 =C2=A0 $::env(VIV_PART_NAME)<br># set sim_runtime =C2=A0 =C2=
=A0 $::env(VIV_SIM_RUNTIME)<br># set sim_fast =C2=A0 =C2=A0 =C2=A0 =C2=A0$:=
:env(VIV_SIM_FAST)<br># set vivado_mode =C2=A0 =C2=A0 $::env(VIV_MODE)<br>#=
 set working_dir =C2=A0 =C2=A0 [pwd]<br># set sim_fileset &quot;sim_1&quot;=
<br># set project_name &quot;[string tolower $simulator]_proj&quot;<br># if=
 [info exists ::env(VIV_SIM_COMPLIBDIR) ] {<br># =C2=A0 =C2=A0 set sim_comp=
libdir =C2=A0$::env(VIV_SIM_COMPLIBDIR)<br># =C2=A0 =C2=A0 if [expr [file i=
sdirectory $sim_complibdir] =3D=3D 0] {<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 se=
t sim_complibdir =C2=A0&quot;&quot;<br># =C2=A0 =C2=A0 }<br># } else {<br>#=
 =C2=A0 =C2=A0 set sim_complibdir =C2=A0&quot;&quot;<br># }<br># if [expr (=
[string equal $simulator &quot;XSim&quot;] =3D=3D 0) &amp;&amp; ([string le=
ngth $sim_complibdir] =3D=3D 0)] {<br># =C2=A0 =C2=A0 puts &quot;BUILDER: \=
[ERROR\]: Could not resolve the location for the compiled simulation librar=
ies.&quot;<br># =C2=A0 =C2=A0 puts &quot; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Please build libraries for chosen simulator =
and set the env or&quot;<br># =C2=A0 =C2=A0 puts &quot; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0makefile variable SIM_COMPLIBD=
IR to point to the location.&quot;<br># =C2=A0 =C2=A0 exit 1<br># }<br># pu=
ts &quot;BUILDER: Creating Vivado simulation project part $part_name&quot;<=
br>BUILDER: Creating Vivado simulation project part xc7k410tffg900-2<br># c=
reate_project -part $part_name -force $project_name/$project_name<br>WARNIN=
G: [Device 21-436] No parts matched &#39;xc7k410tffg900-2&#39;<br>ERROR: [C=
oretcl 2-106] Specified part could not be found.<br></div></div></blockquot=
e><div><br></div><div>It&#39;s a silly question, but do you have a license =
for the kintex 7 410T part on that machine?</div><div><br></div><div>You ca=
n probably get around this by targeting something that is supported by the =
free web pack as long as it&#39;s 7-series fabric (zynq 7020 had worked for=
 me in the past).</div><div><br></div><div>Brian</div></div></div>
</blockquote></div>

--0000000000001673ed05973cb377--


--===============2763194794439767930==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2763194794439767930==--

