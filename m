Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C953FCA44
	for <lists+usrp-users@lfdr.de>; Thu, 14 Nov 2019 16:51:45 +0100 (CET)
Received: from [::1] (port=40740 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iVHPE-0006ao-V7; Thu, 14 Nov 2019 10:51:36 -0500
Received: from mail-lj1-f174.google.com ([209.85.208.174]:41011)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jlockhartrt@gmail.com>)
 id 1iVHP4-0005yX-5w
 for usrp-users@lists.ettus.com; Thu, 14 Nov 2019 10:51:26 -0500
Received: by mail-lj1-f174.google.com with SMTP id m4so2275032ljj.8
 for <usrp-users@lists.ettus.com>; Thu, 14 Nov 2019 07:51:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xRVz1ZNkws39K0dvvlbgsUuvZMwj4CNayhVCiyOKSU8=;
 b=rLbq4gZDjXedYTrfOXYGPOWAZgHOTiuyX3XVHjHN8wKfd7g4ipBSPks7B5n7bRmtuD
 m+B/ShCK3P3aSEnwxcxXU5Ws8VxeIJ65daWGWIpm0Ur5bD55fiZHCUQS2mnwkZMExcV8
 5tfjrsOUf9tBWICV8szjQNgLfyDyYCiS2iyGXUHhMBTAjPBl3gicN4A5ArmaoLdecNS4
 S5XAPr2HVeiCLUZJwrtYDA4Yo9EbuseFg2SPY/yq+fWhg1K5tTXo7EKwnR+0/NOPEkcx
 vsEnkFywDjII3lTeA3M22aRTxzRIvZgkCZFE9O13i8qasgGDkVOH/zsHaC4uKIUOOrKz
 FZ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xRVz1ZNkws39K0dvvlbgsUuvZMwj4CNayhVCiyOKSU8=;
 b=DqhyMDVZ66WNOnZMwqX893W47YgqwtypNXdE1/r60SHoRVVyEo8Ed3Bh2jABYO8pCE
 5OncOyOBwSb+Mr9vVUEjqdKQU3GXaolg33LcV3RYc8VmW8G5ueyrfoErqtGRj31oC2IP
 PyX7SGRFBZ/M9yaYxoB7deaMZ4nzGva+zzKMHOiiCIaRvj2wB4+HZ2+5HfRJL2kZXGlD
 8pgdD9Uxb3A2pQTvJ4bkZNZFJUPmUDMppPB3w4GaAKP/d3GDuuMSEjNYXY1R/8A+yach
 1cKv0cx7FIj00Bnbf/Aug3ebMRq3zw3CNN+jE6dct/SzCxBGrS8JFgGWqE8wW/L7Qj8K
 KfqQ==
X-Gm-Message-State: APjAAAU5Byvd1fbWKwb3g+r+KaNdRiMnUmkW1jrzeshGGnv+qA7VBuNu
 tfeIHHWulaRRXvnZoUQl1EOHHxvLsS7yUA0p1R4=
X-Google-Smtp-Source: APXvYqy8cyBeWwtq53I+1xBTk4lUn0OqzU0+TrihWJd+uiKHsMuuGckHS0Jg3IZoXvtNoW1yow+jCypfg5FBkRElOKU=
X-Received: by 2002:a05:651c:303:: with SMTP id
 a3mr6776794ljp.55.1573746644903; 
 Thu, 14 Nov 2019 07:50:44 -0800 (PST)
MIME-Version: 1.0
References: <CALY+5sK-1XmS4sSDr5QPDH0JwGGrRLeOKaGMGmW=9ak1ZXEEVw@mail.gmail.com>
 <CAEXYVK6JzhFL=Ax10RMoj0TRxd86yPewRa9HP4zGCvku+r6_9g@mail.gmail.com>
 <CALY+5sJT1TJTNa0fA2DjgWheg2+G9qOV-6z99bEewDzM8UzaHA@mail.gmail.com>
 <CAEXYVK4ByHG4D3-5+KnVFU8n+u2vLdj6Y7pu5kNzraJtBpPPRA@mail.gmail.com>
 <CALY+5sKADMNMSuGdqo6o5hK-20EqW_=+sCz0f0XKbi6LXJpnPA@mail.gmail.com>
In-Reply-To: <CALY+5sKADMNMSuGdqo6o5hK-20EqW_=+sCz0f0XKbi6LXJpnPA@mail.gmail.com>
Date: Thu, 14 Nov 2019 10:48:08 -0500
Message-ID: <CALY+5s+_-tWDg3XN5UpTvmYVFQ2Uy+zXK7tjyQ3DkCte89NQ7w@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7737526980362278665=="
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

--===============7737526980362278665==
Content-Type: multipart/alternative; boundary="000000000000bc6d3205975071db"

--000000000000bc6d3205975071db
Content-Type: text/plain; charset="UTF-8"

Greetings Brian,

I was having some issues with the build process, as the build script
couldn't find the gain.v block file even though I was pointing the script
to it. I saw that ejk github has some .inc files, so I added those and it
seemed to clear up the issue. *crosses fingers* The bit file was building
when I left for word this morning.

Regards,
Jon

On Wed, Nov 13, 2019 at 12:32 PM Jonathan Lockhart <jlockhartrt@gmail.com>
wrote:

> Greetings Brian,
>
> Thanks for the link. Yeah my Vivado always complains about the tcl cache
> being unavailable unless I run as sudo. I think its b/c I installed it with
> sudo, as otherwise it wouldn't make the /opt/Xilinx directory. It seems to
> work either way regardless if it uses the official tcl cache or a local one.
>
> Anyways, that example worked out great. Now the sim could find the FPGA
> repo and it tested on the 7020. I making a note of that so I can be sure to
> incorporate those changes in the future for other blocks will build.
>
> Regards,
> Jon
>
> On Wed, Nov 13, 2019 at 11:21 AM Brian Padalino <bpadalino@gmail.com>
> wrote:
>
>> Hey Jon,
>>
>> On Wed, Nov 13, 2019 at 11:17 AM Jonathan Lockhart <jlockhartrt@gmail.com>
>> wrote:
>>
>>> Greetings Brian,
>>>
>>> I had noticed that the script was set to use the X300 after I sent the
>>> email. I switched in the CMakeList.txt file to use the e300 repo, which is
>>> using the Zynq-7020, which is included in the webpack version of Vivado. I
>>> unfortunately got the same error prior to the change, included below.
>>>
>>> ettus_sdr@ettus-VirtualBox:~/rfnoc/src/rfnoc-tutorial/build$ make
>>> noc_block_gain_tb
>>> Setting up a 64-bit FPGA build environment for the USRP-E3x0...
>>> - Vivado: Found (/opt/Xilinx/Vivado/2017.4/bin)
>>>
>>> Environment successfully initialized.
>>> BUILDER: Checking tools...
>>> * GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)
>>> * Python 2.7.15+
>>> * Vivado v2017.4.1 (64-bit)
>>>
>>> ****** Vivado v2017.4.1 (64-bit)
>>>   **** SW Build 2117270 on Tue Jan 30 15:31:13 MST 2018
>>>   **** IP Build 2095745 on Tue Jan 30 17:13:15 MST 2018
>>>     ** Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
>>>
>>> CRITICAL WARNING: [Common 17-741] No write access right to the local Tcl
>>> store at '/home/ettus_sdr/.Xilinx/Vivado/2017.4/XilinxTclStore'.
>>> XilinxTclStore is reverted to the installation area. If you want to use
>>> local Tcl Store, please change the access right and relaunch Vivado.
>>> source
>>> /home/ettus_sdr/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts/viv_sim_project.tcl
>>>
>>
>> This seems bad in general.  Maybe because you ran it as sudo before and
>> now non-sudo?
>>
>>
>>> # set simulator       $::env(VIV_SIMULATOR)
>>> # set design_srcs     $::env(VIV_DESIGN_SRCS)
>>> # set sim_srcs        $::env(VIV_SIM_SRCS)
>>> # set inc_srcs        $::env(VIV_INC_SRCS)
>>> # set sim_top         $::env(VIV_SIM_TOP)
>>> # set part_name       $::env(VIV_PART_NAME)
>>> # set sim_runtime     $::env(VIV_SIM_RUNTIME)
>>> # set sim_fast        $::env(VIV_SIM_FAST)
>>> # set vivado_mode     $::env(VIV_MODE)
>>> # set working_dir     [pwd]
>>> # set sim_fileset "sim_1"
>>> # set project_name "[string tolower $simulator]_proj"
>>> # if [info exists ::env(VIV_SIM_COMPLIBDIR) ] {
>>> #     set sim_complibdir  $::env(VIV_SIM_COMPLIBDIR)
>>> #     if [expr [file isdirectory $sim_complibdir] == 0] {
>>> #         set sim_complibdir  ""
>>> #     }
>>> # } else {
>>> #     set sim_complibdir  ""
>>> # }
>>> # if [expr ([string equal $simulator "XSim"] == 0) && ([string length
>>> $sim_complibdir] == 0)] {
>>> #     puts "BUILDER: \[ERROR\]: Could not resolve the location for the
>>> compiled simulation libraries."
>>> #     puts "                  Please build libraries for chosen
>>> simulator and set the env or"
>>> #     puts "                  makefile variable SIM_COMPLIBDIR to point
>>> to the location."
>>> #     exit 1
>>> # }
>>> # puts "BUILDER: Creating Vivado simulation project part $part_name"
>>> BUILDER: Creating Vivado simulation project part xc7k410tffg900-2
>>> # create_project -part $part_name -force $project_name/$project_name
>>> WARNING: [Device 21-436] No parts matched 'xc7k410tffg900-2'
>>> ERROR: [Coretcl 2-106] Specified part could not be found.
>>> INFO: [Common 17-206] Exiting Vivado at Wed Nov 13 11:07:09 2019...
>>> /home/ettus_sdr/rfnoc/src/uhd/fpga-src/usrp3/top/../tools/make/viv_simulator.mak:51:
>>> recipe for target 'xsim' failed
>>> make[4]: *** [xsim] Error 1
>>> CMakeFiles/noc_block_gain_tb.dir/build.make:57: recipe for target
>>> 'CMakeFiles/noc_block_gain_tb' failed
>>> make[3]: *** [CMakeFiles/noc_block_gain_tb] Error 2
>>> CMakeFiles/Makefile2:131: recipe for target
>>> 'CMakeFiles/noc_block_gain_tb.dir/all' failed
>>> make[2]: *** [CMakeFiles/noc_block_gain_tb.dir/all] Error 2
>>> CMakeFiles/Makefile2:138: recipe for target
>>> 'CMakeFiles/noc_block_gain_tb.dir/rule' failed
>>> make[1]: *** [CMakeFiles/noc_block_gain_tb.dir/rule] Error 2
>>> Makefile:201: recipe for target 'noc_block_gain_tb' failed
>>> make: *** [noc_block_gain_tb] Error 2
>>>
>>> I am assuming this is the part that needs to be changed:
>>> xc7k410tffg900-2. I am not seeing where this is declared in the
>>> CMakeList.txt file. Do you know where I would go about changing it in the
>>> build scripts?
>>>
>>
>> Yeah, change it over.  I use EJ's repository as a good example for lots
>> of stuff.  Particularly this:
>>
>>
>> https://github.com/ejk43/rfnoc-ootexample/blob/master/rfnoc/testbenches/noc_block_complextomagphase_tb/Makefile#L14
>>
>> Just override it in the Makefile like EJ does there.
>>
>> Let us know how that works out?
>>
>> Brian
>>
>>>

--000000000000bc6d3205975071db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Greetings Brian,</div><div><br></div><div>I was havin=
g some issues with the build process, as the build script couldn&#39;t find=
 the gain.v block file even though I was pointing the script to it. I saw t=
hat ejk github has some .inc files, so I added those and it seemed to clear=
 up the issue. *crosses fingers* The bit file was building when I left for =
word this morning. <br></div><div><br></div><div>Regards,</div><div>Jon<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, Nov 13, 2019 at 12:32 PM Jonathan Lockhart &lt;<a href=3D"mai=
lto:jlockhartrt@gmail.com">jlockhartrt@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Greetings =
Brian,<div><br></div><div>Thanks for the link. Yeah my Vivado always compla=
ins about the tcl cache being unavailable unless I run as sudo. I think its=
 b/c I installed it with sudo, as otherwise it wouldn&#39;t make the /opt/X=
ilinx directory. It seems to work either way regardless if it uses the offi=
cial tcl cache or a local one.</div><div><br></div><div>Anyways, that examp=
le worked out great. Now the sim could find the FPGA repo and it tested on =
the 7020. I making a note of that so I can be sure to incorporate=C2=A0thos=
e changes in the future for other blocks will build.=C2=A0</div><div><br></=
div><div>Regards,<br>Jon</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Nov 13, 2019 at 11:21 AM Brian Padali=
no &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank">bpadalino@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hey Jon,</div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 13, 2019 at 1=
1:17 AM Jonathan Lockhart &lt;<a href=3D"mailto:jlockhartrt@gmail.com" targ=
et=3D"_blank">jlockhartrt@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Greetings Brian,<div><b=
r></div><div>I had noticed that the script was set to use the X300 after I =
sent the email. I switched in the CMakeList.txt file to use the e300 repo, =
which is using the Zynq-7020, which is included in the webpack version of V=
ivado. I unfortunately got the same error prior to the change, included bel=
ow.=C2=A0</div><div><br></div><div>ettus_sdr@ettus-VirtualBox:~/rfnoc/src/r=
fnoc-tutorial/build$ make noc_block_gain_tb<br>Setting up a 64-bit FPGA bui=
ld environment for the USRP-E3x0...<br>- Vivado: Found (/opt/Xilinx/Vivado/=
2017.4/bin)<br><br>Environment successfully initialized.<br>BUILDER: Checki=
ng tools...<br>* GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)<=
br>* Python 2.7.15+<br>* Vivado v2017.4.1 (64-bit)<br><br>****** Vivado v20=
17.4.1 (64-bit)<br>=C2=A0 **** SW Build 2117270 on Tue Jan 30 15:31:13 MST =
2018<br>=C2=A0 **** IP Build 2095745 on Tue Jan 30 17:13:15 MST 2018<br>=C2=
=A0 =C2=A0 ** Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.<br><br>=
CRITICAL WARNING: [Common 17-741] No write access right to the local Tcl st=
ore at &#39;/home/ettus_sdr/.Xilinx/Vivado/2017.4/XilinxTclStore&#39;. Xili=
nxTclStore is reverted to the installation area. If you want to use local T=
cl Store, please change the access right and relaunch Vivado.<br>source /ho=
me/ettus_sdr/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts/viv_sim_project.tcl=
<br></div></div></blockquote><div><br></div><div>This seems bad in general.=
=C2=A0 Maybe because you ran it as sudo before and now non-sudo?</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div># set simulator =C2=A0 =C2=A0 =C2=A0 $::env(VIV_SIMULATOR)<br># se=
t design_srcs =C2=A0 =C2=A0 $::env(VIV_DESIGN_SRCS)<br># set sim_srcs =C2=
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
13 11:07:09 2019...<br>/home/ettus_sdr/rfnoc/src/uhd/fpga-src/usrp3/top/../=
tools/make/viv_simulator.mak:51: recipe for target &#39;xsim&#39; failed<br=
>make[4]: *** [xsim] Error 1<br>CMakeFiles/noc_block_gain_tb.dir/build.make=
:57: recipe for target &#39;CMakeFiles/noc_block_gain_tb&#39; failed<br>mak=
e[3]: *** [CMakeFiles/noc_block_gain_tb] Error 2<br>CMakeFiles/Makefile2:13=
1: recipe for target &#39;CMakeFiles/noc_block_gain_tb.dir/all&#39; failed<=
br>make[2]: *** [CMakeFiles/noc_block_gain_tb.dir/all] Error 2<br>CMakeFile=
s/Makefile2:138: recipe for target &#39;CMakeFiles/noc_block_gain_tb.dir/ru=
le&#39; failed<br>make[1]: *** [CMakeFiles/noc_block_gain_tb.dir/rule] Erro=
r 2<br>Makefile:201: recipe for target &#39;noc_block_gain_tb&#39; failed<b=
r>make: *** [noc_block_gain_tb] Error 2<br></div><div><br></div><div>I am a=
ssuming this is the part that needs to be changed:=C2=A0

xc7k410tffg900-2. I am not seeing where this is declared in the CMakeList.t=
xt file. Do you know where I would go about changing it in the build script=
s?</div></div></blockquote><div><br></div><div>Yeah, change it over.=C2=A0 =
I use EJ&#39;s repository as a good example for lots of stuff.=C2=A0 Partic=
ularly this:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://github=
.com/ejk43/rfnoc-ootexample/blob/master/rfnoc/testbenches/noc_block_complex=
tomagphase_tb/Makefile#L14" target=3D"_blank">https://github.com/ejk43/rfno=
c-ootexample/blob/master/rfnoc/testbenches/noc_block_complextomagphase_tb/M=
akefile#L14</a></div><div><br></div><div>Just override it in the Makefile l=
ike EJ does there.</div><div><br></div><div>Let us know how that works out?=
</div><div><br></div><div>Brian</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--000000000000bc6d3205975071db--


--===============7737526980362278665==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7737526980362278665==--

