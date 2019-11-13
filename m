Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B0FFB4B1
	for <lists+usrp-users@lfdr.de>; Wed, 13 Nov 2019 17:12:46 +0100 (CET)
Received: from [::1] (port=34980 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUvG9-0006iK-3b; Wed, 13 Nov 2019 11:12:45 -0500
Received: from mail-oi1-f173.google.com ([209.85.167.173]:37021)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1iUvG6-0006Zb-3n
 for usrp-users@lists.ettus.com; Wed, 13 Nov 2019 11:12:42 -0500
Received: by mail-oi1-f173.google.com with SMTP id y194so2282967oie.4
 for <usrp-users@lists.ettus.com>; Wed, 13 Nov 2019 08:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u+IUqPf/uf3sI30XVRXOyNa7f6NIhT3hwtF86L6IZM4=;
 b=j8qGeftXn2VYjUj+3WBxl3VdrlfMGrnH7Ws6nSiFyoPB82C2XtkQrlHVyaVwfSo4bY
 KiGHIgOLM+Eqk72ZSHdX4diA5MTdEYy3ph9ujRk/dFuIDB2E+Z0DEe7QcBd3ZXilhfg4
 9gb2ki5JuzE99r2e6e0jyhjPzq669sz/y3YRjmdZsDbnI/0Y99/78VB9RXLrB+RMegCc
 j5rDIDmZkPAJCL0uG0zQDzgfz3cnOtsiUM3g5aXYR5l0oXyiypBqPvZwlSyO2CJwYJgR
 YVIlUzMiiukbOCg0Ojozm/3rii/xf2Tcmmk6r8vBipb6/MJ4T272b5UXQPu2vIoCkyo+
 9WVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u+IUqPf/uf3sI30XVRXOyNa7f6NIhT3hwtF86L6IZM4=;
 b=FVkbkOctCb2KA+rncAMDnJLPbFRSpdpai0UTPJAAhfmsWZ7QhqfHJ66DPw/7jevcmz
 GRlZKwydFylDRhdyZbDsEsklDVfIhsDGnMPdcugXXTOiK2GPv1Xqmhivmz68/a3Q8R8N
 kGJWawZrQZN0q4KBzG2f+061aXvgJh7OpmLuS0mCTapwbMzqvi+SyttqjG4fnF5wF4X0
 sl/Ib03Cca3jKal0orT7Nh46sHdf2NUspeU+XfNFLFaIOJJ7f1tMJi/3Ok/IRUZzU+Jk
 NJ1Omt/90RrPFb2EO633wOj7vuo5+Gf4wv9SaEjEPU5fOc23gakVTQ3MVsTcEa6d0+RF
 FZXA==
X-Gm-Message-State: APjAAAWa+tGtrrGFdA5Uur7dFPyaZqy1iZoqXPsrQcIXoh64DqFY+FBk
 MCy02Oy5P3G7IFLjLYPcOtcDEBPr7Jg3fFbd3Jk=
X-Google-Smtp-Source: APXvYqxjn7RC6iwhpAcjfKMRljW01U1WlADYq39QRVXq/AUGp5DeCBs5OaK9Nh7nQ9zbJ8aRCQx7Fg+WlYirJpluuOY=
X-Received: by 2002:a05:6808:9bc:: with SMTP id
 e28mr3893540oig.169.1573661521234; 
 Wed, 13 Nov 2019 08:12:01 -0800 (PST)
MIME-Version: 1.0
References: <CALY+5sK-1XmS4sSDr5QPDH0JwGGrRLeOKaGMGmW=9ak1ZXEEVw@mail.gmail.com>
In-Reply-To: <CALY+5sK-1XmS4sSDr5QPDH0JwGGrRLeOKaGMGmW=9ak1ZXEEVw@mail.gmail.com>
Date: Wed, 13 Nov 2019 11:11:49 -0500
Message-ID: <CAEXYVK6JzhFL=Ax10RMoj0TRxd86yPewRa9HP4zGCvku+r6_9g@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4481850481468268068=="
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

--===============4481850481468268068==
Content-Type: multipart/alternative; boundary="000000000000f8563705973c9f1e"

--000000000000f8563705973c9f1e
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 13, 2019 at 10:54 AM Jonathan Lockhart via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Greetings USRP Users,
>
> I am having another issue with the UHD-3.14 build I can't seem to shake
> down. I have been going through this guide on the KB to learn how to use
> the rfnocmodtool to build new modules for my E312:
>
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>
> Unfortunately, when I get to the point of using the test bench, I get the
> following error.
>
> ettus_sdr@ettus-VirtualBox:~/rfnoc/src/rfnoc-tutorial/build$ sudo make
> noc_block_gain_tb
> [sudo] password for ettus_sdr:
> Setting up a 64-bit FPGA build environment for the USRP-X3x0...
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
> source
> /home/ettus_sdr/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts/viv_sim_project.tcl
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
>

It's a silly question, but do you have a license for the kintex 7 410T part
on that machine?

You can probably get around this by targeting something that is supported
by the free web pack as long as it's 7-series fabric (zynq 7020 had worked
for me in the past).

Brian

--000000000000f8563705973c9f1e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Nov 13, 2019 at 10:54 AM Jonathan=
 Lockhart via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Greet=
ings USRP Users,<br><div><br></div><div>I am having another=C2=A0issue=C2=
=A0with the UHD-3.14 build I can&#39;t seem to shake down. I have been goin=
g through this guide on the KB to learn how to use the rfnocmodtool to buil=
d new modules for my E312:</div><div><br></div><div><a href=3D"https://kb.e=
ttus.com/Getting_Started_with_RFNoC_Development" target=3D"_blank">https://=
kb.ettus.com/Getting_Started_with_RFNoC_Development</a>=C2=A0=C2=A0<br></di=
v><div><br></div><div>Unfortunately, when I get to the point of using the t=
est bench, I get the following error.</div><div><br></div><div>ettus_sdr@et=
tus-VirtualBox:~/rfnoc/src/rfnoc-tutorial/build$ sudo make noc_block_gain_t=
b<br>[sudo] password for ettus_sdr: <br>Setting up a 64-bit FPGA build envi=
ronment for the USRP-X3x0...<br>- Vivado: Found (/opt/Xilinx/Vivado/2017.4/=
bin)<br><br>Environment successfully initialized.<br>BUILDER: Checking tool=
s...<br>* GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)<br>* Py=
thon 2.7.15+<br>* Vivado v2017.4.1 (64-bit)<br><br>****** Vivado v2017.4.1 =
(64-bit)<br>=C2=A0 **** SW Build 2117270 on Tue Jan 30 15:31:13 MST 2018<br=
>=C2=A0 **** IP Build 2095745 on Tue Jan 30 17:13:15 MST 2018<br>=C2=A0 =C2=
=A0 ** Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.<br><br>source =
/home/ettus_sdr/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts/viv_sim_project.=
tcl<br># set simulator =C2=A0 =C2=A0 =C2=A0 $::env(VIV_SIMULATOR)<br># set =
design_srcs =C2=A0 =C2=A0 $::env(VIV_DESIGN_SRCS)<br># set sim_srcs =C2=A0 =
=C2=A0 =C2=A0 =C2=A0$::env(VIV_SIM_SRCS)<br># set inc_srcs =C2=A0 =C2=A0 =
=C2=A0 =C2=A0$::env(VIV_INC_SRCS)<br># set sim_top =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 $::env(VIV_SIM_TOP)<br># set part_name =C2=A0 =C2=A0 =C2=A0 $::env(VIV_=
PART_NAME)<br># set sim_runtime =C2=A0 =C2=A0 $::env(VIV_SIM_RUNTIME)<br># =
set sim_fast =C2=A0 =C2=A0 =C2=A0 =C2=A0$::env(VIV_SIM_FAST)<br># set vivad=
o_mode =C2=A0 =C2=A0 $::env(VIV_MODE)<br># set working_dir =C2=A0 =C2=A0 [p=
wd]<br># set sim_fileset &quot;sim_1&quot;<br># set project_name &quot;[str=
ing tolower $simulator]_proj&quot;<br># if [info exists ::env(VIV_SIM_COMPL=
IBDIR) ] {<br># =C2=A0 =C2=A0 set sim_complibdir =C2=A0$::env(VIV_SIM_COMPL=
IBDIR)<br># =C2=A0 =C2=A0 if [expr [file isdirectory $sim_complibdir] =3D=
=3D 0] {<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 set sim_complibdir =C2=A0&quot;&q=
uot;<br># =C2=A0 =C2=A0 }<br># } else {<br># =C2=A0 =C2=A0 set sim_complibd=
ir =C2=A0&quot;&quot;<br># }<br># if [expr ([string equal $simulator &quot;=
XSim&quot;] =3D=3D 0) &amp;&amp; ([string length $sim_complibdir] =3D=3D 0)=
] {<br># =C2=A0 =C2=A0 puts &quot;BUILDER: \[ERROR\]: Could not resolve the=
 location for the compiled simulation libraries.&quot;<br># =C2=A0 =C2=A0 p=
uts &quot; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Pl=
ease build libraries for chosen simulator and set the env or&quot;<br># =C2=
=A0 =C2=A0 puts &quot; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0makefile variable SIM_COMPLIBDIR to point to the location.&quot;<=
br># =C2=A0 =C2=A0 exit 1<br># }<br># puts &quot;BUILDER: Creating Vivado s=
imulation project part $part_name&quot;<br>BUILDER: Creating Vivado simulat=
ion project part xc7k410tffg900-2<br># create_project -part $part_name -for=
ce $project_name/$project_name<br>WARNING: [Device 21-436] No parts matched=
 &#39;xc7k410tffg900-2&#39;<br>ERROR: [Coretcl 2-106] Specified part could =
not be found.<br></div></div></blockquote><div><br></div><div>It&#39;s a si=
lly question, but do you have a license for the kintex 7 410T part on that =
machine?</div><div><br></div><div>You can probably get around this by targe=
ting something that is supported by the free web pack as long as it&#39;s 7=
-series fabric (zynq 7020 had worked for me in the past).</div><div><br></d=
iv><div>Brian</div></div></div>

--000000000000f8563705973c9f1e--


--===============4481850481468268068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4481850481468268068==--

