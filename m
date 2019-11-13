Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B781AFB4E4
	for <lists+usrp-users@lfdr.de>; Wed, 13 Nov 2019 17:22:28 +0100 (CET)
Received: from [::1] (port=39806 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUvPX-0007k4-KG; Wed, 13 Nov 2019 11:22:27 -0500
Received: from mail-ot1-f53.google.com ([209.85.210.53]:45556)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1iUvPT-0007cl-Qr
 for usrp-users@lists.ettus.com; Wed, 13 Nov 2019 11:22:23 -0500
Received: by mail-ot1-f53.google.com with SMTP id r24so2090484otk.12
 for <usrp-users@lists.ettus.com>; Wed, 13 Nov 2019 08:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wpdx3VzcwSPCP3xgQ1bl1t2buctGwMt+ICBF15ZiNcA=;
 b=VkfPq3j62uFmPDWsYmDQWLWPmR5vz5ySfw2CPRkHfH8rliz0XgwG9p+dtHHkfrcaHL
 +t0vE4RRvIaBvcE7wfIBg3dYPKPtBllfVmLaz0nk9pKLR9KDDQpkTlU47EGp7QGXFUU4
 BtSq6nnf+H2P5kdEsxRMRs/HIHt4zLaL8jZjYqTXUtsWrXydDqPmyM6ds7zt7jkM4OnD
 BMpXkS+ZpuWfpAqCWz+c7aRupwDe5rOhe2LVGWHLjrxDnIVJtxcNUYdBzjU9N9p22Boh
 D+Qs/1ealPowp8KjqmFbUHtmZOZ8gYlkDNNTVjt/uPhQUnuyrl7QpPGWPH3sN+1Eg4IG
 8jnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wpdx3VzcwSPCP3xgQ1bl1t2buctGwMt+ICBF15ZiNcA=;
 b=fAzMRlEPGeu2cyW/09cv0FUt7rlBUO8Cg5V1h2zLHWpm9hfZLIxbmX9Ao7kzpFBsNJ
 lJXUIXAXNSf4kEjyGiGkZMcgYSfT94PUXLDXOh/EDvaO/LfPWrm9aHk9NSyJLTNODYEv
 OuKDA51JlHeTPHNEAcfQ4DN4UaUvPwFLXtP5jUSTo7hxWWqnoHVF09lfDJX1+9QgEE7J
 xk9VrK2Kt86Dp6y4FuL+4lydgR1+cRQNb95xIv3mcmwLpCn4sXAdgSQQCBw63UWKimhM
 q+3fItl+wGGKbZJP7JQW4pDjfI+88GLMBmzuogJA7nwIY9OaKkGH4ess/fdX3k8yFy0u
 F8Ew==
X-Gm-Message-State: APjAAAU9UPRJlDj6dULpJojeoiSza/X3ubkdr7n5zBedgVO/M7M7GGgI
 H8iVh2TGxaHy5IorCEYSWZKRUbUm5eFXnXDTyUY=
X-Google-Smtp-Source: APXvYqxP9A2KgNRFy+/wZplQ2sh6oRahV25JwKv6Af2wjqnWWzG7OKzI6lwh4h54+jqJQul7FtMFJFtTntYVhSdhyks=
X-Received: by 2002:a05:6830:11c1:: with SMTP id
 v1mr3524282otq.13.1573662102954; 
 Wed, 13 Nov 2019 08:21:42 -0800 (PST)
MIME-Version: 1.0
References: <CALY+5sK-1XmS4sSDr5QPDH0JwGGrRLeOKaGMGmW=9ak1ZXEEVw@mail.gmail.com>
 <CAEXYVK6JzhFL=Ax10RMoj0TRxd86yPewRa9HP4zGCvku+r6_9g@mail.gmail.com>
 <CALY+5sJT1TJTNa0fA2DjgWheg2+G9qOV-6z99bEewDzM8UzaHA@mail.gmail.com>
In-Reply-To: <CALY+5sJT1TJTNa0fA2DjgWheg2+G9qOV-6z99bEewDzM8UzaHA@mail.gmail.com>
Date: Wed, 13 Nov 2019 11:21:31 -0500
Message-ID: <CAEXYVK4ByHG4D3-5+KnVFU8n+u2vLdj6Y7pu5kNzraJtBpPPRA@mail.gmail.com>
To: Jonathan Lockhart <jlockhartrt@gmail.com>
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2382304919487916067=="
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

--===============2382304919487916067==
Content-Type: multipart/alternative; boundary="000000000000a4a60a05973cc244"

--000000000000a4a60a05973cc244
Content-Type: text/plain; charset="UTF-8"

Hey Jon,

On Wed, Nov 13, 2019 at 11:17 AM Jonathan Lockhart <jlockhartrt@gmail.com>
wrote:

> Greetings Brian,
>
> I had noticed that the script was set to use the X300 after I sent the
> email. I switched in the CMakeList.txt file to use the e300 repo, which is
> using the Zynq-7020, which is included in the webpack version of Vivado. I
> unfortunately got the same error prior to the change, included below.
>
> ettus_sdr@ettus-VirtualBox:~/rfnoc/src/rfnoc-tutorial/build$ make
> noc_block_gain_tb
> Setting up a 64-bit FPGA build environment for the USRP-E3x0...
> - Vivado: Found (/opt/Xilinx/Vivado/2017.4/bin)
>
> Environment successfully initialized.
> BUILDER: Checking tools...
> * GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)
> * Python 2.7.15+
> * Vivado v2017.4.1 (64-bit)
>
> ****** Vivado v2017.4.1 (64-bit)
>   **** SW Build 2117270 on Tue Jan 30 15:31:13 MST 2018
>   **** IP Build 2095745 on Tue Jan 30 17:13:15 MST 2018
>     ** Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
>
> CRITICAL WARNING: [Common 17-741] No write access right to the local Tcl
> store at '/home/ettus_sdr/.Xilinx/Vivado/2017.4/XilinxTclStore'.
> XilinxTclStore is reverted to the installation area. If you want to use
> local Tcl Store, please change the access right and relaunch Vivado.
> source
> /home/ettus_sdr/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts/viv_sim_project.tcl
>

This seems bad in general.  Maybe because you ran it as sudo before and now
non-sudo?


> # set simulator       $::env(VIV_SIMULATOR)
> # set design_srcs     $::env(VIV_DESIGN_SRCS)
> # set sim_srcs        $::env(VIV_SIM_SRCS)
> # set inc_srcs        $::env(VIV_INC_SRCS)
> # set sim_top         $::env(VIV_SIM_TOP)
> # set part_name       $::env(VIV_PART_NAME)
> # set sim_runtime     $::env(VIV_SIM_RUNTIME)
> # set sim_fast        $::env(VIV_SIM_FAST)
> # set vivado_mode     $::env(VIV_MODE)
> # set working_dir     [pwd]
> # set sim_fileset "sim_1"
> # set project_name "[string tolower $simulator]_proj"
> # if [info exists ::env(VIV_SIM_COMPLIBDIR) ] {
> #     set sim_complibdir  $::env(VIV_SIM_COMPLIBDIR)
> #     if [expr [file isdirectory $sim_complibdir] == 0] {
> #         set sim_complibdir  ""
> #     }
> # } else {
> #     set sim_complibdir  ""
> # }
> # if [expr ([string equal $simulator "XSim"] == 0) && ([string length
> $sim_complibdir] == 0)] {
> #     puts "BUILDER: \[ERROR\]: Could not resolve the location for the
> compiled simulation libraries."
> #     puts "                  Please build libraries for chosen simulator
> and set the env or"
> #     puts "                  makefile variable SIM_COMPLIBDIR to point to
> the location."
> #     exit 1
> # }
> # puts "BUILDER: Creating Vivado simulation project part $part_name"
> BUILDER: Creating Vivado simulation project part xc7k410tffg900-2
> # create_project -part $part_name -force $project_name/$project_name
> WARNING: [Device 21-436] No parts matched 'xc7k410tffg900-2'
> ERROR: [Coretcl 2-106] Specified part could not be found.
> INFO: [Common 17-206] Exiting Vivado at Wed Nov 13 11:07:09 2019...
> /home/ettus_sdr/rfnoc/src/uhd/fpga-src/usrp3/top/../tools/make/viv_simulator.mak:51:
> recipe for target 'xsim' failed
> make[4]: *** [xsim] Error 1
> CMakeFiles/noc_block_gain_tb.dir/build.make:57: recipe for target
> 'CMakeFiles/noc_block_gain_tb' failed
> make[3]: *** [CMakeFiles/noc_block_gain_tb] Error 2
> CMakeFiles/Makefile2:131: recipe for target
> 'CMakeFiles/noc_block_gain_tb.dir/all' failed
> make[2]: *** [CMakeFiles/noc_block_gain_tb.dir/all] Error 2
> CMakeFiles/Makefile2:138: recipe for target
> 'CMakeFiles/noc_block_gain_tb.dir/rule' failed
> make[1]: *** [CMakeFiles/noc_block_gain_tb.dir/rule] Error 2
> Makefile:201: recipe for target 'noc_block_gain_tb' failed
> make: *** [noc_block_gain_tb] Error 2
>
> I am assuming this is the part that needs to be changed:
> xc7k410tffg900-2. I am not seeing where this is declared in the
> CMakeList.txt file. Do you know where I would go about changing it in the
> build scripts?
>

Yeah, change it over.  I use EJ's repository as a good example for lots of
stuff.  Particularly this:


https://github.com/ejk43/rfnoc-ootexample/blob/master/rfnoc/testbenches/noc_block_complextomagphase_tb/Makefile#L14

Just override it in the Makefile like EJ does there.

Let us know how that works out?

Brian

>

--000000000000a4a60a05973cc244
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hey Jon,</div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 13, 2019 at 11:17 AM =
Jonathan Lockhart &lt;<a href=3D"mailto:jlockhartrt@gmail.com">jlockhartrt@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Greetings Brian,<div><br></div><div>I had notic=
ed that the script was set to use the X300 after I sent the email. I switch=
ed in the CMakeList.txt file to use the e300 repo, which is using the Zynq-=
7020, which is included in the webpack version of Vivado. I unfortunately g=
ot the same error prior to the change, included below.=C2=A0</div><div><br>=
</div><div>ettus_sdr@ettus-VirtualBox:~/rfnoc/src/rfnoc-tutorial/build$ mak=
e noc_block_gain_tb<br>Setting up a 64-bit FPGA build environment for the U=
SRP-E3x0...<br>- Vivado: Found (/opt/Xilinx/Vivado/2017.4/bin)<br><br>Envir=
onment successfully initialized.<br>BUILDER: Checking tools...<br>* GNU bas=
h, version 4.4.20(1)-release (x86_64-pc-linux-gnu)<br>* Python 2.7.15+<br>*=
 Vivado v2017.4.1 (64-bit)<br><br>****** Vivado v2017.4.1 (64-bit)<br>=C2=
=A0 **** SW Build 2117270 on Tue Jan 30 15:31:13 MST 2018<br>=C2=A0 **** IP=
 Build 2095745 on Tue Jan 30 17:13:15 MST 2018<br>=C2=A0 =C2=A0 ** Copyrigh=
t 1986-2017 Xilinx, Inc. All Rights Reserved.<br><br>CRITICAL WARNING: [Com=
mon 17-741] No write access right to the local Tcl store at &#39;/home/ettu=
s_sdr/.Xilinx/Vivado/2017.4/XilinxTclStore&#39;. XilinxTclStore is reverted=
 to the installation area. If you want to use local Tcl Store, please chang=
e the access right and relaunch Vivado.<br>source /home/ettus_sdr/rfnoc/src=
/uhd/fpga-src/usrp3/tools/scripts/viv_sim_project.tcl<br></div></div></bloc=
kquote><div><br></div><div>This seems bad in general.=C2=A0 Maybe because y=
ou ran it as sudo before and now non-sudo?</div><div>=C2=A0</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div># set simulat=
or =C2=A0 =C2=A0 =C2=A0 $::env(VIV_SIMULATOR)<br># set design_srcs =C2=A0 =
=C2=A0 $::env(VIV_DESIGN_SRCS)<br># set sim_srcs =C2=A0 =C2=A0 =C2=A0 =C2=
=A0$::env(VIV_SIM_SRCS)<br># set inc_srcs =C2=A0 =C2=A0 =C2=A0 =C2=A0$::env=
(VIV_INC_SRCS)<br># set sim_top =C2=A0 =C2=A0 =C2=A0 =C2=A0 $::env(VIV_SIM_=
TOP)<br># set part_name =C2=A0 =C2=A0 =C2=A0 $::env(VIV_PART_NAME)<br># set=
 sim_runtime =C2=A0 =C2=A0 $::env(VIV_SIM_RUNTIME)<br># set sim_fast =C2=A0=
 =C2=A0 =C2=A0 =C2=A0$::env(VIV_SIM_FAST)<br># set vivado_mode =C2=A0 =C2=
=A0 $::env(VIV_MODE)<br># set working_dir =C2=A0 =C2=A0 [pwd]<br># set sim_=
fileset &quot;sim_1&quot;<br># set project_name &quot;[string tolower $simu=
lator]_proj&quot;<br># if [info exists ::env(VIV_SIM_COMPLIBDIR) ] {<br># =
=C2=A0 =C2=A0 set sim_complibdir =C2=A0$::env(VIV_SIM_COMPLIBDIR)<br># =C2=
=A0 =C2=A0 if [expr [file isdirectory $sim_complibdir] =3D=3D 0] {<br># =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 set sim_complibdir =C2=A0&quot;&quot;<br># =C2=A0 =
=C2=A0 }<br># } else {<br># =C2=A0 =C2=A0 set sim_complibdir =C2=A0&quot;&q=
uot;<br># }<br># if [expr ([string equal $simulator &quot;XSim&quot;] =3D=
=3D 0) &amp;&amp; ([string length $sim_complibdir] =3D=3D 0)] {<br># =C2=A0=
 =C2=A0 puts &quot;BUILDER: \[ERROR\]: Could not resolve the location for t=
he compiled simulation libraries.&quot;<br># =C2=A0 =C2=A0 puts &quot; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Please build lib=
raries for chosen simulator and set the env or&quot;<br># =C2=A0 =C2=A0 put=
s &quot; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0make=
file variable SIM_COMPLIBDIR to point to the location.&quot;<br># =C2=A0 =
=C2=A0 exit 1<br># }<br># puts &quot;BUILDER: Creating Vivado simulation pr=
oject part $part_name&quot;<br>BUILDER: Creating Vivado simulation project =
part xc7k410tffg900-2<br># create_project -part $part_name -force $project_=
name/$project_name<br>WARNING: [Device 21-436] No parts matched &#39;xc7k41=
0tffg900-2&#39;<br>ERROR: [Coretcl 2-106] Specified part could not be found=
.<br>INFO: [Common 17-206] Exiting Vivado at Wed Nov 13 11:07:09 2019...<br=
>/home/ettus_sdr/rfnoc/src/uhd/fpga-src/usrp3/top/../tools/make/viv_simulat=
or.mak:51: recipe for target &#39;xsim&#39; failed<br>make[4]: *** [xsim] E=
rror 1<br>CMakeFiles/noc_block_gain_tb.dir/build.make:57: recipe for target=
 &#39;CMakeFiles/noc_block_gain_tb&#39; failed<br>make[3]: *** [CMakeFiles/=
noc_block_gain_tb] Error 2<br>CMakeFiles/Makefile2:131: recipe for target &=
#39;CMakeFiles/noc_block_gain_tb.dir/all&#39; failed<br>make[2]: *** [CMake=
Files/noc_block_gain_tb.dir/all] Error 2<br>CMakeFiles/Makefile2:138: recip=
e for target &#39;CMakeFiles/noc_block_gain_tb.dir/rule&#39; failed<br>make=
[1]: *** [CMakeFiles/noc_block_gain_tb.dir/rule] Error 2<br>Makefile:201: r=
ecipe for target &#39;noc_block_gain_tb&#39; failed<br>make: *** [noc_block=
_gain_tb] Error 2<br></div><div><br></div><div>I am assuming this is the pa=
rt that needs to be changed:=C2=A0

xc7k410tffg900-2. I am not seeing where this is declared in the CMakeList.t=
xt file. Do you know where I would go about changing it in the build script=
s?</div></div></blockquote><div><br></div><div>Yeah, change it over.=C2=A0 =
I use EJ&#39;s repository as a good example for lots of stuff.=C2=A0 Partic=
ularly this:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://github=
.com/ejk43/rfnoc-ootexample/blob/master/rfnoc/testbenches/noc_block_complex=
tomagphase_tb/Makefile#L14">https://github.com/ejk43/rfnoc-ootexample/blob/=
master/rfnoc/testbenches/noc_block_complextomagphase_tb/Makefile#L14</a></d=
iv><div><br></div><div>Just override it in the Makefile like EJ does there.=
</div><div><br></div><div>Let us know how that works out?</div><div><br></d=
iv><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>

--000000000000a4a60a05973cc244--


--===============2382304919487916067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2382304919487916067==--

