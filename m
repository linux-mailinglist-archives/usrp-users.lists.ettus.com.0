Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C184F4024
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 23:14:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DBE2A384815
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 17:14:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649193262; bh=DqRIl9hsm1M34ACCK+jiDdbgM1L8WPJAknW+FdjlhQE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=POK4BlTSZKu3Tj2pQyl+wmJ7RUCxhu0IyYNk+fiCY214SBZl6lGnP+p1Uq6RFKrak
	 4tbxywTIFvo4W23kMmzUchvGmIBYHTyVTo+ShrLDkRRfs2onDZmGkxnv9BZDGwxzfg
	 ANrJ5lywVrlmCLe1U623gUAuvRmxTh+reKoN6biuUrzm80BmXh44A4IXykA1miKRF/
	 1TOGkV1ixzFO/wvkJBEb9PW2KLm4mYt3Hs8auXw0biFSt2n56nYtIRrsVHULN1QUUP
	 U77JhJDgxwpPROROdSIv6mjr1CBwCEimcyHW+AdSLI7hxrDvMX0hc6RQgZGqsOq0o4
	 i5PpmKGye8gcA==
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 21F47384B1E
	for <usrp-users@lists.ettus.com>; Tue,  5 Apr 2022 17:13:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="dWQFE390";
	dkim-atps=neutral
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-2eafabbc80aso5470557b3.11
        for <usrp-users@lists.ettus.com>; Tue, 05 Apr 2022 14:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rfxMRJ1hrcUpQMpM6pwO4mBs5+/9iGVLzINQoA7lDMU=;
        b=dWQFE390OuNGL3PXActQLCZmFIu3zvnGLZb+3C9hwbvOhxPVNzulhDcd/Y0hTEpCEF
         UxtICwDc3eJeaDcZfgdtnCz8v/5z3ihUiMzwdOifM4hmoSdHAtqRuN4vXiI/HViY1+uU
         HqYh0JXyOjCI92P4JN4teY/g7XZGYlIBlH5m+8xFkA95wo7z6mtPUlm+fTv/CNk/YKV9
         KpQHDQXo3RWF1zv93GzGpxYAYh17AkAUd059oNiXCsfkFyl73z9CyquZD6NtemAUN99Z
         pMeiBBHwY2JdhkPi5K9qyHN2DPh6OQMFPACyLy0bOqVRUKrfNzTdzWvGl9n/ckh+xTes
         YAVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rfxMRJ1hrcUpQMpM6pwO4mBs5+/9iGVLzINQoA7lDMU=;
        b=LYI/EvmTzE8LTgnrvkN3vHaWl0rLdvILk2Nh1EuTbhbqVE3sshNbYUeaoVLxGAfTPk
         2x+lZC3aJUbNxSM/pXcxJZ1nDKVZfnYm4/rryiQmw7m0pzAJ33O7DcQ2AwPCZm3EkUCB
         qfKXGZcsZmfO+D3QYldjrfNIsp7RqNGTtvLqC0jnMybRKyslaxLV8Qtx6Ftpb8wwN8lb
         8RxM/BSHG3TDnfYKMtcFS1DPXkhV+Dwi+EbrMnn34w9wKWtzJ3C45RE1EgfH0wEUCWRY
         p+FitDAd/1hQzrSDbUXcIkxIRPnQKT6mMSaZZFZneTjPyObzjS9xuxbJ8f1sy+V1SeMr
         xVog==
X-Gm-Message-State: AOAM532KsIeSD4lCDiJxEFnpu6KhfYVm+nC+YM0qxSa1LqTf2wLtQZcG
	aAsqstedR03UgYmlXklTkKtqtYcPzbdJu7AY3l3TsNUCRltIQyAs
X-Google-Smtp-Source: ABdhPJzsOneXOP8mJDdEGr+PAGb7s/aNVomqzD7Bs/8Y0I/leWDf7jSntET9Q18L9LldA0ygGPHSd+134O34wHSE6z8=
X-Received: by 2002:a81:2555:0:b0:2d0:dc91:5a1c with SMTP id
 l82-20020a812555000000b002d0dc915a1cmr4662302ywl.200.1649193209416; Tue, 05
 Apr 2022 14:13:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PsyGDRyUyRC_fYYhDXes8p7+z1Qazw7XxWL9_n1UxRUjg@mail.gmail.com>
In-Reply-To: <CAA=S3PsyGDRyUyRC_fYYhDXes8p7+z1Qazw7XxWL9_n1UxRUjg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 5 Apr 2022 16:13:13 -0500
Message-ID: <CAFche=jBDmufx_MdKq2gnREVCx_HkOTpaFHzR7-Gz6oCgFpdow@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: 43A7ZYSUZNU5B4LHN6QQ6AUBNGXMEO3N
X-Message-ID-Hash: 43A7ZYSUZNU5B4LHN6QQ6AUBNGXMEO3N
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: When I run the gain example testbench file I am faced with errors.....
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/43A7ZYSUZNU5B4LHN6QQ6AUBNGXMEO3N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1128084205873436768=="

--===============1128084205873436768==
Content-Type: multipart/alternative; boundary="00000000000069e67105dbeeb73b"

--00000000000069e67105dbeeb73b
Content-Type: text/plain; charset="UTF-8"

The unmodified gain example should work, so I assume you modified it or are
trying your own version. I suggest you look at the example to see what you
did differently.

https://github.com/EttusResearch/uhddev/tree/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain

The simulator is the tool designed for debugging issues with code. So you
might look into the Xilinx documentation on how to use the simulator. The
UHD manual has instructions on how to run testbenches and load the
simulation in the Vivado GUI.

My guess is that you have a signal that's not connected correctly, like a
clock or reset.

Wade

On Tue, Apr 5, 2022 at 12:42 AM sp h <stackprogramer@gmail.com> wrote:

> When I run the gain example testbench file I am faced with errors.....How
> can I solve this?
>
>
> Vivado Simulator does not support tracing of System Verilog Dynamic Type
> object.
> ========================================================
> TESTBENCH STARTED: rfnoc_block_gain_tb
> ========================================================
> [TEST CASE   1] (t =         0 ns) BEGIN: Flush block then reset it...
>
> *Fatal: Timeout: Test "Flush block then reset it" time limit exceeded*Time:
> 10 us  Iteration: 0  Process:
> /PkgTestExec/TestExec::start_timeout/Block260_9/timeout  File:
> /home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/sim/rfnoc/PkgTestExec.sv
> $finish called at time : 10 us : File
> "/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/sim/rfnoc/PkgTestExec.sv" Line
> 235
> INFO: [USF-XSim-96] XSim completed. Design snapshot
> 'rfnoc_block_gain_tb_behav' loaded.
> INFO: [USF-XSim-97] XSim simulation ran for 1000000000us
> launch_simulation: Time (s): cpu = 00:00:21 ; elapsed = 00:00:33 . Memory
> (MB): peak = 1462.531 ; gain = 80.324 ; free physical = 285 ; free virtual
> = 9898
> # if { [info exists ::env(VIV_SYNTH_TOP)] } {
> #    puts "BUILDER: Synthesizing"
> #    # Synthesize requested modules
> #    foreach synth_top "$::env(VIV_SYNTH_TOP)" {
> #       set_property top $synth_top [current_fileset]
> #       synth_design -mode out_of_context
> #       # Perform a simple regex-based search for all clock signals and
> constrain
> #       # them to 500 MHz for the timing report.
> #       set clk_regexp "(?i)^(?!.*en.*).*(clk|clock).*"
> #       foreach clk_inst [get_ports -regexp $clk_regexp] {
> #          create_clock -name $clk_inst -period 2.0 [get_ports $clk_inst]
> #       }
> #       report_utilization -no_primitives -file
> ${working_dir}/${synth_top}_synth.rpt
> #       report_timing_summary -setup -max_paths 3 -unique_pins -no_header
> -append -file ${working_dir}/${synth_top}_synth.rpt
> #       write_checkpoint -force ${working_dir}/${synth_top}_synth.dcp
> #    }
> # } else {
> #    puts "BUILDER: Skipping resource report because VIV_SYNTH_TOP is not
> set"
> # }
> BUILDER: Synthesizing
> # if [string equal $vivado_mode "batch"] {
> #     puts "BUILDER: Closing project"
> #     close_project
> # } else {
> #     puts "BUILDER: In GUI mode. Leaving project open."
> # }
> BUILDER: Closing project
> INFO: [Common 17-206] Exiting Vivado at Thu Feb 10 10:02:45 2022...
> make[4]: warning:  Clock skew detected.  Your build may be incomplete.
> make[3]: warning:  Clock skew detected.  Your build may be incomplete.
> Built target rfnoc_block_gain_tb
> make[2]: warning:  Clock skew detected.  Your build may be incomplete.
> make[1]: warning:  Clock skew detected.  Your build may be incomplete.
> make: warning:  Clock skew detected.  Your build may be incomplete.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000069e67105dbeeb73b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The unmodified gain example should work, so I assume =
you modified it or are trying your own version. I suggest you look at the e=
xample to see what you did differently.</div><div><br></div><div><a href=3D=
"https://github.com/EttusResearch/uhddev/tree/master/host/examples/rfnoc-ex=
ample/fpga/rfnoc_block_gain">https://github.com/EttusResearch/uhddev/tree/m=
aster/host/examples/rfnoc-example/fpga/rfnoc_block_gain</a></div><div><br><=
/div><div>The simulator is the tool designed for debugging issues with code=
. So you might look into the Xilinx documentation on how to use the simulat=
or. The UHD manual has instructions on how to run testbenches and load the =
simulation in the Vivado GUI.</div><div><br></div><div>My guess is that you=
 have a signal that&#39;s not connected correctly, like a clock or reset. <=
br></div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 5, 2022 at 12:42 AM =
sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr">When I run the=C2=A0gain example testbench file I am=C2=
=A0faced with errors.....How can I solve this?<br><div><br></div><div><br><=
/div><div>Vivado Simulator does not support tracing of System Verilog Dynam=
ic Type object.<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>TESTBENCH STARTED: rfnoc_block_g=
ain_tb<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>[TEST CASE =C2=A0 1] (t =3D =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 0 ns) BEGIN: Flush block then reset it...<br><b>Fatal: Timeo=
ut: Test &quot;Flush block then reset it&quot; time limit exceeded<br></b>T=
ime: 10 us =C2=A0Iteration: 0 =C2=A0Process: /PkgTestExec/TestExec::start_t=
imeout/Block260_9/timeout =C2=A0File: /home/sp/Documents/uhd-4.1.0.5/fpga/u=
srp3/sim/rfnoc/PkgTestExec.sv<br>$finish called at time : 10 us : File &quo=
t;/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/sim/rfnoc/PkgTestExec.sv&quot; =
Line 235<br>INFO: [USF-XSim-96] XSim completed. Design snapshot &#39;rfnoc_=
block_gain_tb_behav&#39; loaded.<br>INFO: [USF-XSim-97] XSim simulation ran=
 for 1000000000us<br>launch_simulation: Time (s): cpu =3D 00:00:21 ; elapse=
d =3D 00:00:33 . Memory (MB): peak =3D 1462.531 ; gain =3D 80.324 ; free ph=
ysical =3D 285 ; free virtual =3D 9898<br># if { [info exists ::env(VIV_SYN=
TH_TOP)] } {<br># =C2=A0 =C2=A0puts &quot;BUILDER: Synthesizing&quot;<br># =
=C2=A0 =C2=A0# Synthesize requested modules<br># =C2=A0 =C2=A0foreach synth=
_top &quot;$::env(VIV_SYNTH_TOP)&quot; {<br># =C2=A0 =C2=A0 =C2=A0 set_prop=
erty top $synth_top [current_fileset]<br># =C2=A0 =C2=A0 =C2=A0 synth_desig=
n -mode out_of_context<br># =C2=A0 =C2=A0 =C2=A0 # Perform a simple regex-b=
ased search for all clock signals and constrain<br># =C2=A0 =C2=A0 =C2=A0 #=
 them to 500 MHz for the timing report.<br># =C2=A0 =C2=A0 =C2=A0 set clk_r=
egexp &quot;(?i)^(?!.*en.*).*(clk|clock).*&quot;<br># =C2=A0 =C2=A0 =C2=A0 =
foreach clk_inst [get_ports -regexp $clk_regexp] {<br># =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0create_clock -name $clk_inst -period 2.0 [get_ports $clk_i=
nst]<br># =C2=A0 =C2=A0 =C2=A0 }<br># =C2=A0 =C2=A0 =C2=A0 report_utilizati=
on -no_primitives -file ${working_dir}/${synth_top}_synth.rpt<br># =C2=A0 =
=C2=A0 =C2=A0 report_timing_summary -setup -max_paths 3 -unique_pins -no_he=
ader -append -file ${working_dir}/${synth_top}_synth.rpt<br># =C2=A0 =C2=A0=
 =C2=A0 write_checkpoint -force ${working_dir}/${synth_top}_synth.dcp<br># =
=C2=A0 =C2=A0}<br># } else {<br># =C2=A0 =C2=A0puts &quot;BUILDER: Skipping=
 resource report because VIV_SYNTH_TOP is not set&quot;<br># }<br>BUILDER: =
Synthesizing<br># if [string equal $vivado_mode &quot;batch&quot;] {<br># =
=C2=A0 =C2=A0 puts &quot;BUILDER: Closing project&quot;<br># =C2=A0 =C2=A0 =
close_project<br># } else {<br># =C2=A0 =C2=A0 puts &quot;BUILDER: In GUI m=
ode. Leaving project open.&quot;<br># }<br>BUILDER: Closing project<br>INFO=
: [Common 17-206] Exiting Vivado at Thu Feb 10 10:02:45 2022...<br>make[4]:=
 warning: =C2=A0Clock skew detected.=C2=A0 Your build may be incomplete.<br=
>make[3]: warning: =C2=A0Clock skew detected.=C2=A0 Your build may be incom=
plete.<br>Built target rfnoc_block_gain_tb<br>make[2]: warning: =C2=A0Clock=
 skew detected.=C2=A0 Your build may be incomplete.<br>make[1]: warning: =
=C2=A0Clock skew detected.=C2=A0 Your build may be incomplete.<br>make: war=
ning: =C2=A0Clock skew detected.=C2=A0 Your build may be incomplete.<br></d=
iv></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000069e67105dbeeb73b--

--===============1128084205873436768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1128084205873436768==--
